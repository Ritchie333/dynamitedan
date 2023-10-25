#!/usr/bin/env python3

import html

import skoolkit.graphics
from skoolkit.graphics import Frame, Udg
from skoolkit.skoolhtml import HtmlWriter

class DanHtmlWriter(HtmlWriter):

    repeat_attr = 0

    def print_room( self, cwd, udg_ptr, fName ):
    
        repeat_right = int( 0xfe )
        repeat_up = int( 0xfd )
        repeat_right_up = int( 0xfc )
        repeat_left_up = int( 0xfb )

        bg = self.make_background()

        while self.snapshot[ udg_ptr ] != 0xff:
            y = self.snapshot[ udg_ptr ]
            x = self.snapshot[ udg_ptr + 1 ]
            id = self.snapshot[ udg_ptr + 2 ]
            repeat = self.snapshot[ udg_ptr + 3 ]
            if( repeat >= repeat_left_up and repeat <= repeat_right ):
                every = self.snapshot[ udg_ptr + 4 ]
                length = self.snapshot[ udg_ptr + 5 ]
                udg_ptr = udg_ptr + 6
                if repeat_right == repeat:
                    for j in range( 0, length ):
                        nx = x + every * j
                        self.overlay_udgs_by_id( bg, nx, y, id )
                if repeat_up == repeat:
                    for j in range( 0, 0 - length, -1 ):
                        ny = y + every * j
                        self.overlay_udgs_by_id( bg, x, ny, id )
                if repeat_right_up == repeat:
                    for j in range( 0, length ):
                        nx = x + every * j
                        ny = y + every * j
                        self.overlay_udgs_by_id( bg, nx, ny, id )     
                if repeat_left_up == repeat:
                    for j in range( 0, 0 - length, -1 ):
                        nx = x - every * j
                        ny = y + every * j
                        self.overlay_udgs_by_id( bg, nx, ny, id )
                 
            else:
                self.overlay_udgs_by_id( bg, x, y, id )
                udg_ptr = udg_ptr + 3
        frame = Frame( bg, 2 )
        return self.handle_image( frame, fName, cwd )

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

    def print_graphic( self, cwd, addr, nFrames, fName ):
        fByte = self.snapshot[ addr ]
        width = fByte & 3
        depth = ( fByte & 12 ) >> 2
        size = 8 * depth * width
        frames = []
        for i in range( 0, nFrames ):
            scrAddr = addr + 1 + ( i * size )
            udgs = []
            for y in range( 0, depth ):
                udgLine = []
                for x in range( 0, width ):
                    lineAddr = y * 8 * width + x + scrAddr
                    data = []
                    for i in range( 0, 8 ):
                        cellAddr = lineAddr + width * i
                        data.append( self.snapshot[ cellAddr ] )
                    udgLine.append( Udg( 7, data ) )
                udgs.append( udgLine )
            frames.append( Frame( udgs, 3 ) )
        return self.handle_image( frames, fName, cwd )    
            
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
        