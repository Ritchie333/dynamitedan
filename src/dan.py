#!/usr/bin/env python3

import html

import skoolkit.graphics
from skoolkit.graphics import Frame, Udg
from skoolkit.skoolhtml import HtmlWriter

class DanHtmlWriter(HtmlWriter):

    repeat_attr = 0

    def print_full_room( self, cwd, addr, fName ):
        bg = self.make_background()
        udg_ptr = self.get_ptr( addr )
        self.get_room( udg_ptr, bg )
        
        spr_ptr = self.get_ptr( addr + 7 )
        self.get_sprites( spr_ptr, bg )

        self.print_food( addr, bg )
        self.print_test_tube( addr, bg )
        self.print_dynamite( addr, bg )

        if( addr < 0x6A46 ):
            self.print_river( bg )

        frame = Frame( bg, 1 )
        return self.handle_image( frame, fName, cwd )

    def print_test_tube( self, addr, bg ):
        y = self.snapshot[ addr + 2 ]
        x = self.snapshot[ addr + 3 ]
        udg_addr = 0xef5d
        depth = self.snapshot[ udg_addr + 1 ]
        udgs = self.build_udgs( udg_addr )
        ny = y - ( depth - 1 )
        skoolkit.graphics.overlay_udgs( bg, udgs, x * 8, ny * 8, 0, lambda bg, fg : 6 )

    def print_dynamite( self, addr, bg ):
        y = self.snapshot[ addr + 9 ]
        x = self.snapshot[ addr + 10 ]
        udg_addr = 0xef49
        udgs = self.build_udgs( udg_addr )
        skoolkit.graphics.overlay_udgs( bg, udgs, x * 8, y * 8, 0, lambda bg, fg : 2 )

    def print_food( self, addr, bg ):
        base = 0x65da
        id = self.snapshot[ addr + 4 ] & 7
        udg_addr = self.get_ref( base, id )
        depth = self.snapshot[ udg_addr + 1 ]
        udgs = self.build_udgs( udg_addr )
        y = self.snapshot[ addr + 5 ]
        x = self.snapshot[ addr + 6 ]
        ny = y - ( depth - 1 )
        skoolkit.graphics.overlay_udgs( bg, udgs, x * 8, ny * 8, 0, lambda bg, fg : fg )

    def print_river( self, bg ):
        udgs = []
        base = 0x6985
        for i in range( 0, 12 ):
            addr = i * 8 + base
            data = []
            for j in range( 0, 8 ):
               data.append( self.snapshot[ addr + j ] )
            udgs.append( Udg( 0x4f, data ) )
        skoolkit.graphics.overlay_udgs( bg, [udgs], 0, 184, 0, lambda bg, fg : fg )
        skoolkit.graphics.overlay_udgs( bg, [udgs], 96, 184, 0, lambda bg, fg : fg )
        skoolkit.graphics.overlay_udgs( bg, [udgs], 192, 184, 0, lambda bg, fg : fg )

    def print_room( self, cwd, udg_ptr, fName ):
        bg = self.make_background()

        self.get_room( udg_ptr, bg )
        frame = Frame( bg, 2 )
        return self.handle_image( frame, fName, cwd )

    def get_room( self, udg_ptr, bg ):
        repeat_right = int( 0xfe )
        repeat_up = int( 0xfd )
        repeat_right_down = int( 0xfc )
        repeat_right_up = int( 0xfb )

        while self.snapshot[ udg_ptr ] != 0xff:
            y = self.snapshot[ udg_ptr ]
            x = self.snapshot[ udg_ptr + 1 ]
            id = self.snapshot[ udg_ptr + 2 ]
            repeat = self.snapshot[ udg_ptr + 3 ]
            if( repeat >= repeat_right_up and repeat <= repeat_right ):
                every = self.snapshot[ udg_ptr + 4 ]
                length = self.snapshot[ udg_ptr + 5 ]
                udg_ptr = udg_ptr + 6
                nx = x
                ny = y
                for j in range( 0, length ):
                    if repeat_right == repeat:
                        nx = x + every * j  
                    if repeat_up == repeat:
                        ny = y - every * j         
                    if repeat_right_down == repeat:
                        nx = x + every * j
                        ny = y + j  
                    if repeat_right_up == repeat:
                        nx = x + every * j
                        ny = y - j
                    self.overlay_udgs_by_id( bg, nx, ny, id )
            else:
                self.overlay_udgs_by_id( bg, x, y, id )
                udg_ptr = udg_ptr + 3
        return bg

    def overlay_udgs_by_id( self, bg, x, y, id ):
        # Note that single UDGs are drawn in reverse depth!
        width, depth = self.get_udg_width_and_height_by_id( id )
        ny = y - ( depth - 1 )
        rattr = lambda bg, fg : fg
        rbyte = lambda bg, fg, mask : fg
        skoolkit.graphics.overlay_udgs( bg, self.get_udg_by_id( id ), x * 8, ny * 8, 0, rattr, rbyte )

    def get_udg_width_and_height_by_id( self, id ):
        udg_addr = self.get_ptr( self.get_udg_addr( id ) )
        width = self.snapshot[ udg_addr ]
        depth = self.snapshot[ udg_addr + 1 ]
        return width, depth

    def get_udg_by_id( self, id ):
        udg_addr = self.get_ptr( self.get_udg_addr( id ) )
        udgs = self.build_udgs( udg_addr )
        return udgs

    def get_udg_addr( self, id ):
        base = 0x6c46
        addr = base + 2 * id
        return addr

    def make_background( self ):
        udgs = []
        for y in range( 0, 24 ):
            nextUdgs = []
            for x in range( 0, 32 ):
                nextUdgs.append( Udg( 0, [ 0, 0, 0, 0, 0, 0, 0, 0]))
            udgs.append( nextUdgs )
        return udgs                

    def print_udg( self, cwd, addr, fName ):
        udgs = self.build_udgs( addr )
        frame = Frame( udgs, 2 )
        return self.handle_image( frame, fName, cwd )

    def build_udgs( self, addr ):
        width = self.snapshot[ addr ]
        depth = self.snapshot[ addr + 1 ]
        udgs = []
        self.repeat_attr = 0
        for y in range( depth -1, -1, -1 ) :
            nextUdgs = []
            for x in range( 0, width ) :
                nextUdgs.append( self.build_udg( addr, depth, width, x, y ) )
            udgs.insert( 0, nextUdgs )
        return udgs

    def build_udg( self, addr, depth, width, x, y ):
        scrAddr = addr + x + 2 + ( ( depth - y - 1 ) * 8 * width )
        attrAdr = addr + x + 2 + ( width * depth * 8 ) + ( ( depth - y - 1 ) * width )
        if self.repeat_attr != 0:
            attr = self.repeat_attr
        else:
            attr = self.snapshot[ attrAdr ]
            if( 0 == attr ):
                self.repeat_attr = self.snapshot[ attrAdr + 1 ]
                attr = self.repeat_attr
        data = []
        for i in range( 0, 8 ):
            data.append( self.snapshot[ scrAddr + width * i ] )
        return Udg( attr, data )

    def print_sprites( self, cwd, addr, fName ):
        bg = self.make_background()
        self.get_sprites( addr, bg )
        frame = Frame( bg, 2 )
        return self.handle_image( frame, fName, cwd )

    def get_sprites( self, addr, bg ):
        ids = []
        for i in range( 0, 4 ):
            id = self.snapshot[ addr + i ]
            ids.append( self.get_sprite_addr( id ) )
        id_totals = []
        id_totals.append( self.snapshot[ addr + 4 ] >> 4 )
        id_totals.append( self.snapshot[ addr + 4 ] & 0xf )
        id_totals.append( self.snapshot[ addr + 5 ] >> 4 )
        id_totals.append( self.snapshot[ addr + 5 ] & 0xf)
        cur_addr = addr + 6
        for i in range( 0, 4 ):
            for j in range( 0, id_totals[ i ] ):
                x = self.snapshot[ cur_addr + 1 ]
                y = self.snapshot[ cur_addr + 0 ]
                attr = self.snapshot[ cur_addr + 5 ]
                udgs = self.get_graphic( ids[ i ], 0, attr )
                skoolkit.graphics.overlay_udgs( bg, udgs, x * 8, y * 8, 0, lambda bg, fg : attr )
                cur_addr = cur_addr + 8
        return bg

    def get_sprite_addr( self, id ):
        base = 0xae60
        ptr = id * 2 + base
        addr = self.get_ptr( ptr )
        return addr

    def print_graphic( self, cwd, addr, nFrames, fName ):
        frames = []
        for i in range( 0, nFrames ):
            udgs = self.get_graphic( addr, i, 7 )
            frames.append( Frame( udgs, 3 ) )
        return self.handle_image( frames, fName, cwd )
    
    def get_graphic( self, addr, nFrame, attr ):
        fByte = self.snapshot[ addr ]
        width = fByte & 3
        depth = ( fByte & 12 ) >> 2
        size = 8 * depth * width
        scrAddr = addr + 1 + ( nFrame * size )
        udgs = []
        for y in range( 0, depth ):
            udgLine = []
            for x in range( 0, width ):
                lineAddr = y * 8 * width + x + scrAddr
                data = []
                for i in range( 0, 8 ):
                    cellAddr = lineAddr + width * i
                    data.append( self.snapshot[ cellAddr ] )
                udgLine.append( Udg( attr, data ) )
            udgs.append( udgLine )
        return udgs
            
    def print_dan( self, cwd, addr, reverse, fName ):
        frames = []
        if( reverse ):
            self.iterate_on_frames( addr, frames, range( 3, -1, -1 ) )
        else :
            self.iterate_on_frames( addr, frames, range( 0, 4 ) )
        return self.handle_image( frames, fName, cwd )
    
    def iterate_on_frames( self, addr, frames, it ):
        for f in it:
            frames.append( self.print_dan_frame( addr, f ) )

    def print_dan_frame( self, addr, f ):
        udgs = []
        baseAddr = ( f * 84 ) + addr
        for y in range( 0, 4 ):
            udgLine = []
            for x in range( 0, 3 ):
                data = []
                for i in range( 0, 8 ):
                    if( y == 3 and i > 3 ):
                        data.append( 0 )
                    else:
                        cellAddr = baseAddr + ( y * 24 ) + x + ( i * 3 )
                        data.append( self.snapshot[ cellAddr ] )
                udgLine.append( Udg( 5, data ) )
            udgs.append( udgLine )
        return Frame( udgs, 3 )
    
    def print_char( self, cwd, char, fName ):
        return self.handle_image( Frame( [[ Udg( 7, self.get_char( char ) )]], 2), fName, cwd )
    
    def print_string( self, cwd, addr, fName ):
        udgs = []
        addr = addr + 2
        char = self.snapshot[ addr ]
        debug = False
        while char != 0xFF and char != 0xFE:
            udgs.append( Udg( 7, self.get_char( char ) ) )
            addr = addr + 1
            char = self.snapshot[ addr ]
        return self.handle_image( Frame( [ udgs ], 3), fName, cwd )

    def print_multi_string( self, cwd, addr, i, fName ):
        udgs = []
        if i == 0:
            return self.print_string( cwd, addr, fName )
        n = 0
        char = self.snapshot[ addr ]
        while char != 0xFF:
            addr = addr + 1
            if char == 0xFE:
                n = n + 1
                if n == i:
                    break
            char = self.snapshot[ addr ]
        return self.print_string( cwd, addr, fName )
        

    def get_char( self, char ):
        base = 0x677F
        udg_data = []
        for i in range( 0, 8 ):
            if i > 5:
                udg_data.append( 0 )
            else :
                addr = base + ( char * 6 ) + i
                udg_data.append( self.snapshot[ addr ] )
        return udg_data
    
    def print_udg_html( self, cwd, addr ):
        base = 0x6c46
        for i in range( 0, 228 ):
            print( f'[UDGs:UDG {i:X}]')
            print( f'#HTML(#R${self.get_ref(base,i):X}<br/><img src="images/UDG_{i:X}.png" />)')
            print()

        base = 0xae60
        for i in range( 0, 61 ):
            print( f'[Sprites:Sprite {i:X}]')
            print( f'#HTML(#R${self.get_ref(base,i):X}<br/><img src="images/Sprite_{i:X}.png" />)')
            print()

    def get_ptr( self, addr ):
        lo = self.snapshot[ addr ]
        hi = self.snapshot[ addr + 1 ]
        ref = hi * 0x100 + lo
        return ref

    def get_ref( self, base, i ):
        return self.get_ptr( base + ( 2 * i ) )
        