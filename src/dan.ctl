b $6000 UDG DE
b $606E UDG DF
b $60DC UDG E0
b $6149 UDG E1
b $61B6 UDG E2
b $6224 UDG E3
b $6292 Graphic IDs for safe blowing graphics
b $62A2 Frames until the safe door should be removed
c $62A3 Blow the safe up
g $62D6 Dan's current working graphic
w $632A Dan's graphic addresses
D $632A Used by the routine at #R$D1CE. Each sprite is 3 pixels wide and 28 lines long.
b $633A Dan right 1
b $638E Dan right 2
b $63E2 Dan right 3
b $6436 Dan right 4
b $648A Dan left 1
b $64DE Dan left 2
b $6532 Dan left 3
b $6586 Dan left 4
w $65DA Food graphic offsets
D $65DA Used by the routine at #R$DCE8
b $65EA Food attribute tags
D $65EA Used by the routine at #R$DCCC. When Dan walks over an attribute for the relevant food item, it is picked up.
b $65F2 Food 0 - Egg
b $6606 Food 4 - Cake
b $662C Food 3 - Cheese
b $667F Food 5 - Ice cream
b $66B7 Food 7 - Soup
b $66EB Food 6 - Cup of tea
b $670F Food 2 - Fruit bowl
b $6747 Food 1 - Martini
b $677F Character set (6-high)
B $677F,$11A,6
b $6899 Raft graphics
D $6899 Used by the routine at #R$D9EC
w $6919 Pitch frequences for musical notes
b $6985 River graphics
b $69E6 Room data offsets
B $69E6,$240,$C*$30
D $69E6 Used by the routine at #R$CBBD
b $6C26 Attributes marking walls
D $6C26 Used by the routine at #R$CBBD
D $6C26 Each data set is 8 bytes long. The choice is stored in bits 6+7 of offset 4 in the current room's store
w $6C46 UDG offsets
D $6C46 Used by the routines at #R$ED00 and #R$F3D3
b $6E0E "Blown the safe door" tune
b $6E5F Room 00
b $6E90 Room 01
b $6EDC Room 02
b $6F34 Room 03
b $6F77 Room 04
b $6FC6 Room 05
b $702A Room 06
b $7094 Room 07
b $70B9 Room 08
b $710E Room 09
b $7190 Room 0A
b $71F4 Room 0B
b $7252 Room 0C
b $72E9 Room 0D
b $7362 Room 0E
b $7402 Room 0F
b $7472 Room 10
b $74E5 Room 11
b $7531 Room 12
b $75A7 Room 13
b $7626 Room 14
b $76A2 Room 15
b $7733 Room 16
b $77CD Room 17
b $782E Room 18
b $78C5 Room 19
b $78F6 Room 1A
b $795D Room 1B
b $7A18 Room 1C
b $7A46 Room 1D
b $7AC8 Room 1E
b $7B3E Room 1F
b $7B93 Room 20
b $7C45 Room 21
b $7C6D Room 22
b $7CBF Room 23
b $7D50 Room 24
b $7DDB Room 25
b $7E63 Room 26
b $7EC7 Room 27
b $7F3D Room 28
b $7F89 Room 29
b $7F96 Room 2A
b $8030 Room 2B
b $80AC Room 2C
b $80D7 Room 2D
b $8135 Room 2E
b $8175 Room 2F
b $81D0 UDG DD
b $81DB UDG 2E
b $81EF UDG 95
b $8203 UDG 82
b $820E UDG 83
b $8219 UDG 84
b $822D UDG 85
b $8249 UDG 86
b $825D UDG 87
b $8279 UDG 88
b $82B1 UDG 89
b $82BC UDG 8A
b $82C7 UDG 8B
b $82E3 UDG 8C
b $82FF UDG 8D
b $8323 UDG 8E
b $8347 UDG 8F
b $8363 UDG 90
b $836E UDG 91
b $8392 UDG 92
b $828D UDG 93
b $839D UDG 19
b $83C9 UDG 13
b $83DD UDG 3C
b $8421 UDG 3D
b $8435 UDG 3E
b $845B UDG 3F
b $8481 UDG 40
b $848C UDG 41
b $8497 UDG 43
b $84BB UDG 44
b $84D7 UDG 45
b $84F3 UDG 46
b $84FE UDG 47
b $8509 UDG 48
b $851D UDG 49
b $8555 UDG 4A
b $8571 UDG 4B
b $85B5 UDG 4C
b $85D1 UDG 4D
b $8605 UDG 4E
b $8629 UDG 4F
b $864D UDG 50
b $8661 UDG 51
b $868D UDG 52
b $86B1 UDG 94
b $86D5 UDG 53
b $86E9 UDG 54
b $86F4 UDG 55
b $86FF UDG 56
b $8713 UDG 57
b $871E UDG 58
b $8729 UDG 59
b $8734 UDG 5A
b $873F UDG 5B
b $874A UDG 5C
b $876E UDG 5D
b $8782 UDG 5F
b $878D UDG 60
b $8798 UDG 61
b $87A3 UDG AA
b $87AE UDG A9
b $87E6 UDG AC
b $881E UDG AB
b $8852 UDG 5E
b $8886 UDG B5
b $88CA UDG B6
b $88D5 UDG BF
b $8943 UDG C1
b $8969 UDG C4
b $89B3 UDG CE
b $89C7 UDG CB
b $89ED UDG CC
b $8A01 UDG CD
b $8A15 UDG 99
b $8A20 UDG 9A
b $8A34 UDG 9B
b $8A50 UDG 9C
b $8A76 UDG 9D
b $8A8A UDG 9E
b $8A95 UDG 10
b $8AD9 UDG 11
b $8B2C UDG 00
b $8B48 UDG 01
b $8BEC UDG 04
b $8C1B UDG 02
b $8C53 UDG 03
b $8C87 UDG 05
b $8CA4 UDG 06
b $8CB8 UDG 07
b $8CC3 UDG 08
b $8CCE UDG 09
b $8CEA UDG 0A
b $8DCA UDG 15
b $8D0E UDG 0B
b $8D32 UDG 0C
b $8D46 UDG 0D
b $8D51 UDG 0E
b $8D5C UDG 12
b $8E5E UDG 17
b $8EC2 UDG 18
b $8F15 UDG 1A
b $8F20 UDG 1B
b $8F34 UDG 1C
b $8F48 UDG 1D
b $8F53 UDG 1E
b $8F77 UDG 1F
b $8F8B UDG 20
b $8FA7 UDG 21
b $8FFB UDG 22
b $9047 UDG 23
b $905B UDG 24
b $907F UDG 25
b $908A UDG 26
b $9095 UDG 27
b $90A0 UDG 28
b $90B4 UDG 29
b $90BF UDG 2A
b $90E3 UDG 2B
b $90F7 UDG 2C
b $910B UDG 2D
b $919F UDG AD
b $91C3 UDG AE
b $91D7 UDG AF
b $925B UDG 0F
b $9278 UDG B0
b $928C UDG B1
b $92A0 UDG B2
b $92B4 UDG B7
b $938E UDG B8 - Blizten on "game over" 1
b $93E1 UDG B9 - Blizten on "game over" 2
b $9434 UDG BA - Blizten on "game over" 3
b $9487 UDG BB - Blizten on "game over" 4
b $9492 UDG BC
b $949D UDG BD
b $94A8 UDG BE
b $94B3 UDG D1
b $94BE UDG D2
b $9502 UDG D3
b $9536 UDG D0
b $954A UDG CF
b $9582 UDG C6
b $95A6 UDG C7
b $95CA UDG D5
b $95F0 UDG D6
b $9634 UDG D7
b $9648 UDG D8
b $965C UDG D9
b $9694 UDG DA
b $96CC UDG DB
b $96F0 UDG C9
b $970D UDG DC
b $9745 UDG CA
b $9750 UDG C8
b $977F UDG B3
b $97A3 UDG 62
b $97B7 UDG 63
b $97CB UDG 64
b $97DF UDG 96
b $97F3 UDG 65
b $97FE UDG 66
b $9809 UDG 67
b $9814 UDG 68
b $981F UDG 69
b $9873 UDG 6A
b $9899 UDG 6B
b $98AD UDG 6C
b $98C1 UDG 6D
b $98D5 UDG 6E
b $98FB UDG 6F
b $9906 UDG 70
b $991A UDG 71
b $9925 UDG 72
b $9930 UDG 73
b $993B UDG 74
b $9946 UDG 75
b $9951 UDG 76
b $995C UDG 77
b $9967 UDG 78
b $9972 UDG 7B
b $9986 UDG 7C
b $99AA UDG 7D
b $99CE UDG 7E
b $99D9 UDG 7F
b $99E4 UDG 80
b $99EF UDG 81
b $99FA UDG 16
b $9AB0 UDG 9F
b $9AC4 UDG 2F
b $9AD8 UDG 30
b $9AEC UDG 31
b $9B24 UDG 32
b $9B2F UDG 33
b $9C09 UDG 34
b $9C14 UDG 35
b $9C1F UDG 36
b $9C53 UDG 37
b $9C67 UDG 38
b $9C83 UDG 39
b $9CA7 Room moving objects 00
b $9CED Room moving objects 01
b $9D23 Room moving objects 02
b $9D61 Room moving objects 03
b $9DB7 Room moving objects 04
b $9DF5 Room moving objects 05
b $9E2B Room moving objects 06
b $9E79 Room moving objects 07
b $9EBF Room moving objects 08
b $9EF5 Room moving objects 09
b $9F3B Room moving objects 0A
b $9F81 Room moving objects 0B
b $9FCF Room moving objects 0C
b $A0D0 Room moving objects 0D
b $A053 Room moving objects 0E
b $A0A1 Room moving objects 0F
b $A0DF Room moving objects 10
b $A12D Room moving objects 11
b $A16B Room moving objects 12
b $A1A9 Room moving objects 13
b $A1F7 Room moving objects 14
b $A22D Room moving objects 15
b $A273 Room moving objects 16
b $A2B9 Room moving objects 17
b $A307 Room moving objects 18
b $A345 Room moving objects 19
b $A39B Room moving objects 1A
b $A3E9 Room moving objects 1B
b $A437 Room moving objects 1C
b $A48D Room moving objects 1D
b $A4E3 Room moving objects 1E
b $A531 Room moving objects 1F
b $A577 Room moving objects 20
b $A5B5 Room moving objects 21
b $A5F3 Room moving objects 22
b $A641 Room moving objects 23
b $A697 Room moving objects 24
b $A6D5 Room moving objects 25
b $A71B Room moving objects 26
b $A761 Room moving objects 27
b $A79F Room moving objects 28
b $A7ED Room moving objects 29
b $A82B Room moving objects 2A
b $A871 Room moving objects 2B
b $A8B7 Room moving objects 2C
b $A8FD Room moving objects 2D
b $A93B Room moving objects 2E
b $A989 Room moving objects 2F
b $A9CF UDG D4
b $A9F5 UDG 3A
b $AA87 UDG 3B
b $AA92 UDG 14
b $AB26 UDG 97
b $AB8A UDG 98
b $ABAE UDG A0
b $ABE2 UDG A1
b $ABF6 UDG A2
b $AC12 UDG A3
b $AC36 UDG A4
b $AC4A UDG A5
b $AC5E UDG A6
b $ACAA UDG A7
b $ACB5 UDG A8
b $ACC0 UDG 7A
b $ACCB UDG 79
b $AD81 UDG C0
b $ADE5 UDG C2
w $AE60 Moving sprite offsets
D $AE60 Used by the routine at #R$D669
b $AEDA Sprite 38 - Pelican
b $AF9B Sprite 36 - Pair of forks
b $AFDC Sprite 15 - Dr Blitzen
b $B03D Sprite 04 - Helicopter
b $B09E Sprite 08 - Centipede
b $B0FF Sprite 01 - Neptune
b $B160 Sprite 05 - Oscilloscope
b $B1A1 Sprite 06 - Flying lightbulb
b $B202 Sprite 07 - Waiter
b $B263 Sprite 0A - Spark
b $B2A4 Sprite OB - Squid
b $B305 Sprite 12 - Flying saucer
b $B346 Sprite 00 - Waiter on unicycle
b $B407 Sprite OD - Gryoscope
b $B488 Sprite OC - Battery terminals
b $B509 Sprite 13 - Big face
b $B54A Sprite 14 - Bug eyed monster (3 wide)
b $B5AB Sprite 16 - Guy on hovercraft
b $B66C Sprite 17 - Fuse wire
b $B6ED Sprite 1F - Semaphore flag
b $B76E Sprite 25 - Dragonfly
b $B7EF Sprite OE - Deep sea diver
b $B850 Sprite 2D
b $B8B1 Sprite 2E
b $B8F2 Sprite 30
b $B933 Sprite 33
b $B9F4 Sprite 3A
b $BA75 Sprite 2B
b $BAC7 Sprite 37
b $BAA6 Sprite 39
b $BB08 Sprite 35
b $BB49 Sprite 34
b $BBAA Sprite 31
b $BBEB Sprite 2F
b $BC2C Sprite 1E
b $BC8D Sprite 1D
b $BD0E Sprite 1C
b $BD4F Sprite 1B
b $BDE0 Sprite 19
b $BE21 Sprite 18
b $BE82 Sprite 24
b $BF43 Sprite OF
b $BFC4 Sprite 11
b $C085 Sprite 10
b $C106 Sprite 1A
b $C127 Sprite 09
b $C168 Sprite 02
b $C1C9 Sprite 03
b $C24A Sprite 20
b $C2DB Sprite 22
b $C31C Sprite 21
b $C3DD Sprite 26
b $C43E Sprite 23
b $C49F Sprite 27
b $C500 Sprite 29
b $C541 Sprite 3B
b $C5D2 Sprite 3C
b $C693 Sprite 28
b $C6D4 Sprite 2A
b $C735 Sprite 2C - Donna
b $C796 Sprite 32
c $C800 Main entry point
N $C80A Main loop starts here
N $C83A Pause the game if "P" was pressed
N $C858 Abort the game if "Q" was pressed
g $C866 Current score
g $C86B Amount pending to add onto the current score
g $C86C Number of lives
g $C86D Current energy (0-8)
g $C86E Current energy (duplicate?)
g $C86F Number of frames until one energy bar lost
g $C870 Number of frames until it's time to increment the score
g $C872 Dan's Y co-ordinate
g $C873 Dan's X co-ordinate
g $C874 Various flags
D $C874 If bit 0 is set, Dan is jumping
D $C874 If bit 5 is set, Dan is safe; if reset, he has touched a moving object and will lose a life
D $C874 If bit 7 is set, Dan is above water; if reset, he has fallen in the river
g $C875 Current animation frame
D $C875 0-3 = left, 4-7 = right
g $C876 Height (in lines) fallen by
g $C877 Height for the next jump
D $C877 This is normally $0B, but can be increased when on a trampoline
g $C878 Number of dynamite sticks collected
g $C879 Height when landing on a trampoline without jumping
g $C87A Lift flags
g $C87B Lift flags
D $C87B If bit 2 is set, Dan is standing on the lift
g $C87C Current lift y co-ordinate
g $C87D Room the lift is in
g $C87E Various flags
D $C87E If bit 0 is set, the safe is still locked
D $C87E If bit 1 is set, Dan has got the plans
D $C87E If bit 5 if set, Dan has got an aerosol and has brief immunity
D $C87E If bit 6 is set, Dan has got an oxygen tank and can survive drowning
D $C87E If bit 7 is reset, Dan has got the plans and is in the blimp
g $C87F Set bit 7 if a laser is firing
g $C880 Frames left in the "touched moving object" sequence
c $C881 Start the game
b $C8D2 Default values for game status buffers
b $C8ED Attributes for energy bar
b $C8F5 Attributes for lives
c $C8FF Put Dan in the correct place when entering a room
g $C925 Current high score
c $C92A Update the main status area
N $C984 Increase the score by 1
b $CA1E "Good luck!"
b $CA2B Attributes for intro screen
b $CA3D Moving object data for intro screen
D $CA3D Used by the routine at #R$CA5B
c $CA5B Display the intro screen and wait for the game to start
c $CB8D Turn a flashing option on the intro screen off
c $CB9C Set the zero flag if ENTER or the fire button was pressed
c $CBBD Switch to a new room
R $CBBD A New room
c $CC36 Draw the river
g $CC5E Current animation frame for the river (1-3)
D $CC5E Used by the routine at #R$CC5F
c $CC5F Animate the river
c $CC89 Move the lift
c $CD24 Redraw the lift
R $CD24 DE New lift position
c $CD5C Update lift's attributes
R $CD5C DE New lift position
b $CD7E Lift graphic
b $CD84 Lift graphic
c $CD8A Something bad has happened - set the "lose a life" flag
c $CD9A Run a frame in the "lose a life" sequence
c $CDD3 Display the "game over" sequence
b $CE53 Screens visited message
D $CE53 "00 SCREENS VISITED"
D $CE53 The numerical value at CE55 / CE56 is updated by the routine at #R$CBBD
b $CE68 Dr Blitzen on "game over" screen, shooting Dan
D $CE68 Used by the routine at #R$CDD3
b $CE72 Data for laser fired by Dr Blitzen on "game over" screen
D $CE72 Used by the routine at #R$CDD3
c $CE76 Draw extra objects in the safe room if relevant
b $CEA4 Room for action 1
w $CEA5 Pointer to action 1
b $CEA7 Room for action 2
w $CEA8 Pointer to action 2
b $CEAA Room for action 3
w $CEAB Pointer for action 3
c $CEAD Perform special actions
b $CEC4 Rainbow lift data in room 23
b $CECC Rainbow lift data in room 1D
b $CED4 Rainbow lift data in room 1B
c $CEDC Special actions on room 23
c $CEE1 Special actions on room 1D
g $CEE6 Current attribute to set on a rainbow lift
D $CCE6 Used be the routine at #R$CEF0
g $CEE7 Set bit 7 to make rainbow lift active and pull up Dan
D $CCE7 Used be the routine at #R$CEF0
g $CEE8 Current screen position to set a rainbow lift colour
D $CCE8 Used be the routine at #R$CEF0
g $CEEA Current height of rainbow lift
D $CEEA Used be the routine at #R$CEF0
g $CEEC Trigger positions for rainbow lifts
D $CCEC Used be the routine at #R$CEF0
c $CEF0 Move the rainbow lifts
c $CF77 Special actions on room 1B (safe room)
g $CFC9 Attribute marking the food item in this room
g $CFCA Current room
g $CFCB Current note to play while moving through the air
b $CFCC Attributes marking floors (global)
g $CFD1 Attributes marking floors (custom)
g $CFD3 Attributes marking walls
c $CFD9 Update Dan's status and check for movement
N $D038 Move right
N $D03E Move left
N $D044 Jump
N $D04B Jump right
N $D05B Jump left
N $D076 No action
c $D079 Increase the height fallen and adjust position
c $D08A Move Dan up a rainbow lift
c $D0DC Adjust height while on a trampoline
c $D123 Make Dan jump
c $D16F Move Dan on the lift
c $D1B2 Check if the lift has reached the top or bottom
b $D1CD Command flags
D $D1CD Set bit 7 to gain an extra life
D $D1CD Set bit 6 to lose a life
c $D1CE Draw Dan and do any collision detection
N $D25C Dan has hit a moving object
c $D2F0 Bounce off a trampoline
c $D378 Print the display area
b $D3AC UDGs for display area
b $D3D4 Text for display area
D $D3D4 "ENERGY" / "SC0RE:" / "HI:"
c $D3EC Move Dan left
c $D4AF Pause
R $D4AF BC Length to pause
c $D4B5 Move Dan right
c $D550 Copy Dan's sprite back to the working graphic buffer
R $D550 DE Current co-ordinates of Dan
R $D550 HL Pointer to working graphic buffer
c $D567 Move Dan upwards while jumping
c $D607 Fall through the air, moving onto one screen down if necessary
c $D61E Fall through the air one frame
c $D655 Copy a sprite to a working buffer
R $D655 DE Co-ordinates of the sprite
R $D655 HL Address to copy to
c $D669 Convert a sprite ID to its graphic address
R $D669 A The sprite ID
R $D669 DE On exit, holds a pointer to the graphic
g $D675 Length (in bytes) of one frame of the currently processing sprite
c $D677 Copy a sprite's data to a graphic buffer
R $D677 DE The sprite data
R $D677 HL The buffer to copy the data to
g $D6BB
g $D6BC Current frame number for the vertical sprite being drawn
D $D6BC Used by the routine at #R$D7E7
w $D6BD Pointer to current vertical sprite being drawn
D $D6BD Used by the routine at #R$D7E7
c $D6BF Move vertical objects in the room
R $D6BF A Flags for the object
R $D6BF IY Pointer to the room's sprite table
g $D72E
g $D72F Current frame number for the vertical sprite being drawn
w $D730 Pointer to current horizontal sprite being drawn
c $D732 Move horizontal objects in the room
R $D732 A Flags for the object
R $D732 IY Pointer to the room's sprite table
c $D7A2 Colour in a sprite vertically
R $D7A2 IY Pointer to the sprite attribute data
c $D7B7 Draw a horizontally moving sprite
R $D7B7 E The nth sprite to draw
c $D7D6 Colour in a sprite horizontally
R $D7D6 IY pointer to sprite attribute data
c $D7E7 Draw a vertically moving sprite
R $D7E7 DE Position to draw the sprite
w $D813 Offset for current moving object table
c $D815 Copy a sprite's graphic into a working buffer
R $D815 HL Buffer to copy the sprite to
R $D815 DE Address of the sprite's graphic data
R $D815 BC Location of the sprite
c $D895 Respond to Dan moving
c $D951 Move into a new 8x8 cell
c $D9A7 Set the zero flag if D equals E
c $D9AA Set the zero flag if B or C equals E
c $D9B0 Reverse direction of a horizontally moving sprite
g $D9E8 x co-ordinate of the raft
g $D9E9 Animation frame of the raft (0-3)
g $D9EA Current room the raft is in
c $D9EC Update the raft
N $DA3E The raft is in the current room, so draw it
b $DA87 Current type of tune being played
b $DA88 Current note in a tune being played
b $DA8A Current state of playing a sound (used by #R$DA8D)
D $DA8A If bit 0 is not set, play a tune instead
D $DA8A If bit 1 is not set, the "lose a life" effect should be played instead
w $DA8B Next action to take during playing a sound (used by #R$DA8D)
c $DA8D Play a note or a sound effect
c $DA9E Play a sound
c $DAB2 Beep
R $DAB2 B Frequency
R $DAB2 DE Length
c $DAE5 Start the "lose a life" sound effect
c $DAFA Pause for one second
c $DB01 Select a sound effect to play
R $DB01 A Type of sound effect
c $DB0B Select a tune to play
R $DB0B HL Pointer to the tune data
c $DB17 Play a note of a tune
c $DB38 Return with the carry flag set if Dan has moved over a glowing item
R $DB38 DE Current co-ordinates.
b $DB52 Redefine keys confirmation text
D $DB52 "GO AHEAD"
b $DB5D Redefine keys instructions attributes
c $DB63 Display the redefine keys instructions
c $DB83 Draw a horizontally moving sprite
c $DB9B Clear area after a horizontal sprite has moved
c $DBB8 Picked up food
R $DBB8 Pointer to current room data
D $DBB8 Each item of food scores (ID + 1) * 5 points
g $DBED Height (in lines) of Dan above the river waterline
c $DBEE Dan has fallen in the river
N $DC41 Dan has drowned. Game over.
N $DC45 Dan is submerged; display the "air bubble" graphic while drowning
b $DC69 List of Dan's frames that mark the lift as moving
b $DC6D List of Dan's frames that mark the lift as stopped
c $DC71 Check if Dan is standing by the lift
c $DCC1 Draw a food item
R $DCC1 IX Pointer to room data
c $DCE8 Convert a food item ID to its graphic address
R $DCE8 R A ID of the food item
R $DCE8 HL On return, holds the address for the graphic data
b $DCF5 Set bit 0 to denote items are only being drawn for instructions
c $DCF6 Display instructions
N $DCFB Page 1
N $DD13 Page 2
N $DD2B Page 3
N $DD56 Page 4
c $DD8D Wait for the user to press ENTER, then fire a laser ray
c $DDE0 Display a message and beep
R $DDE0 HL Pointer to message graphic data
c $DDF4 Picked up the plans
c $DE0B Picked up an oxygen tank
c $DE1B Picked up a credit card
c $DE28 Picked up an aerosol
b $DE51 Time left for the aerosol to run
c $DE52 Update "aerosol immunity" if it is still active
b $DE7F Dynamite graphic in status area
c $DE87 Picked up a special item (test tube or dynamite)
R $DE87 IX Pointer to current room data
g $DED8 Moving graphics buffer 0
D $DED8 Used by the routine at #R$D677
g $DFCA Moving graphics buffer 1
D $DFCA Used by the routine at #R$D677
g $E0BC Moving graphics buffer 2
D $E0BC Used by the routine at #R$D815
g $E2FE Moving graphics buffer 3
D $E2FE Used by the routine at #R$D815
g $E540 Count of moving objects in the room
D $E540 These are set up in the routine at #R$E544 and accessed in the routine at #R$E592
c $E544 Display moving objects
R $E544 IY Pointer to moving object data
c $E592 Draw a moving object
R $E592 IY Pointer to moving object data
c $E5E8 See if Dan is in the blimp with the plans, and if so, launch it
c $E62F Display the winning game text
c $E644 Launch the blimp
g $E662 Current colour sequence for this room's teleporter
c $E663 Update any teleporter in this room
N $E679 This room has a teleporter, update it
N $E6C6 The teleporter has flashed and Dan is standing under it
g $E6D9 Tick counters for lasers.
D $E6D9 This counter increments by 1 for every run round the main loop. When it reaches $80, the laser fires.
g $E6DA Current colour to draw the laser bolt with
g $E6DB Current width of the laser
c $E6DC See if there is a laser in this room, and if so, update it
c $E6F6 Update any lasers in the room
R $E6F6 IY Pointer to laser data
D $E702 Time to fire the laser
c $E76C Clear a section of laser when it is retreating
c $E775 Play a laser sound effect
c $E782 Move the laser bolt one frame
R $E782 IY Current room data
N $E7D7 Pause for a short interval. This entry point is also used by the routine at #R$E6DC.
i $E7E2
g $E800 Current border colour
c $E801 Clear the screen
c $E820 Clear the screen to cyan ink / black paper
c $E84E Draw a UDG
R $E84E HL Pointer to data containing information about what to draw and where.
c $E87A Copy a graphic onto screen
R $E87A HL Address of the graphic
R $E87A DE Co-ordinates to place the graphic
R $E87A B Width
R $E87A C Height
c $E897 Remove an object from screen
R $E897 DE Position of the object
R $E897 BC Size of the object
c $E8BA Fill a number of lines with an attribute
R $E8BA A Attribute to fill in
R $E8BA DE co-ordinate to start
R $E8BA B Number of columns to fill
R $E8BA C Number of lines to fill
c $E8D2 Convert a room co-ordinate to a screen address rounded to the nearest 8x8 cell
R $E8D2 DE On entry, holds the x and y co-ordinates. On return, holds the attribute address.
c $E8E3 Convert a room co-ordinate to an attribute address
R $E8E3 DE On entry, holds the x and y co-ordinates. On return, holds the attribute address.
c $E8F1 Convert a room co-ordinate to a screen address
R $E8F1 DE On entry, holds the x and y co-ordinates. On return, holds the screen address.
c $E909 Convert a screen address to an attribute address
R $E909 DE On entry, holds the screen address. On return, holds the attribute address
c $E916 Launch the blimp having got the plans
c $E93F Toggle the colours on any test tubes or dynamite so they glow
R $E93F IX Pointer to the current room's static object data
c $E96B Draw a moving sprite
R $E96B DE Position to drawn the sprite
R $E96B HL Pointer to the current sprite data
R $E96B B Number of frames for the sprite
R $E96B IY Pointer to current room data
w $E9BA Current input routine
c $E9BC Execute the current input routine
R $E9BC C On return holds the appropriate action : 0 - jump right, 1 - move right, 2 - jump left, 3 - move left, 4 - jump, 5 - no action
c $E9C0 Kempston joystick input routine
R $E9C0 C On return holds the appropriate action : 0 - jump right, 1 - move right, 2 - jump left, 3 - move left, 4 - jump, 5 - no action
c $E9DB Sinclair joystick input routine
R $E9DB C On return holds the appropriate action : 0 - jump right, 1 - move right, 2 - jump left, 3 - move left, 4 - jump, 5 - no action
c $E9F8 Split a byte in two parts
R $E9F8 A The byte to convert
R $E9F8 B On return, holds the lowest 4 bits
R $E9F8 C On return, holds the highest 4 bits
w $EA05 Arrangement / sequence of theme tune parts
b $EA29 Theme tune 1
b $EA6A Theme tune 2
b $EAAB Theme tune 3
b $EACC Theme tune 4
b $EAED Theme tune 5
b $EB2E Theme tune 6
b $EB57 Theme tune 7
b $EB70 Theme tune 8
b $EB89 Graphics for the plans
b $EBDC Graphics for the safe door
c $ECA4 Flash the teleporter
R $ECA4 IY Pointer to current teleporter's data
b $ECBD Laser graphics
c $ECDD Advance the laser by one frame
R $ECDD HL Current screen position of laser
R $ECDD DE Current laser bolt graphic
R $ECDD A Colour to draw the laser with
c $ECF4 Change colour of the laser being drawn across screen
R $ECF4 HL Pointer to entry containing current laser colour
c $ED00 Print a set of UDGs
R $ED00 HL Pointer of UDGs to print, terminated with FF
b $EDA1 Current colour to set for the next letter on the main title
D $EDA1 Used by the routine at #R$EDA2
c $EDA2 Rotate the colours on the title screen's main message
b $EDBC List of teleporters
B $EDBC,$3C,$06*$0A
D $EDBC Used by the routine at #R$E663
D $EDBC Format is room number, position (2 bytes), new room, new Y position, new X position
b $EDF8 Data for lasers
D $EDF8 Used by the routine at #R$E6DC
D $EDF8 Format is room number, position (2 bytes), width
B $EDF8,$3C,$04*$0F
b $EE34 "Life lost" sound effect data
b $EE46 "Picked up food" tune
b $EE63 "Drowned" tune
b $EE88 "Life lost" tune
b $EE8B "Picked up dynamite" tune
b $EEBD "Picked up test tube" tune
c $EEF1 Print a string at a location
R $EEF1 HL Pointer to a buffer containing x,y,string
b $EF48 Counter to make glowing objects alternate between colour and black
b $EF49 UDG - Dynamite
b $EF5C Current attribute for dynamite
b $EF5D UDG - Test tube
b $EF70 Current attribute for test tube
b $EF71 List of attributes for each state of a glowing object
D $EF71 Used by the routine at #R$EF7C
w $EF7A Pointer to current attribute state of glowing objects
D $EF7A Used by the routine at #R$EF7C
c $EF7C Draw any glowing objects (dynamite or test tubes)
b $EFBC Intro screen UDGs
g $F020 Current animation index for Dan dying
D $F020 Used by the routine at #R$F021
c $F021 Animate Dan dying having been shot on the "game over" screen
w $F052 Dan dying offsets
b $F064 Dan dying 1
b $F096 Dan dying 2
b $F0C8 Dan dying 3
b $F0FA Dan dying 4
b $F12C Dan dying 5
b $F176 Dan dying 6
b $F1C0 Dan dying 7
b $F20A Dan dying 8
b $F23C Dan dying 9
g $F26E Key for left
g $F26F Key for right
g $F270 Key for jump
c $F271 Keyboard input routine
R $F271 C On return holds the appropriate action : 0 - jump right, 1 - move right, 2 - jump left, 3 - move left, 4 - jump, 5 - no action
b $F2A5 "LEFT"
b $F2AD "RIGHT"
b $F2B6 "JUMP"
c $F2BE Redfine keys
c $F2F4 Clear the screen and wait for all keys to be released
c $F300 Wait for a key to be pressed
R $F300 D Returns the key value
c $F30A Check all keys and return the first one found pressed
R $F30A D Returns the key value, or FF if nothing pressed
c $F345 Initialize game data and make all objects visible
b $F3A0 Bitmask for what objects to select in initialisation
D $F3A0 Used by the routines in #R$F345 and #R$F3A4
w $F3A2 Pointer to object data in current room being looked at
D $F3A2 Used by the routine in #R$F345
c $F3A4 Put special objects randomly in a room
c $F3D3 Convert a UDG ID to the address of its data
R $F3D3 A UDG ID to look up
R $F3D3 HL On return, points to the UDG data
c $F3E0 Given a room number, return the location of a bank card
R $F3E0 A Room number
R $F3D0 DE On return, holds the location to drawn the bank card
c $F3EC Draw any bank cards in the room
b $F410 Bank card locations
D $F410 Used by the routine at #R$F3E0
c $F470 Fill lines with an attribute using data
R $F470 HL pointer to data containing what to draw and where
b $F485 Dan drowning graphic
b $F505 Screen positions for instructions page 3 UDGs
b $F51A Screen positions for instructions page 4 UDGs
b $F525 Instructions page 1 attributes
b $F562 Instructions page 2 attributes
b $F577 Instructions page 3 attributes
b $F587 Instructions page 4 attributes
b $F592 Instructions page 4 UDGs to add
b $F59C Data for laser on start and instructions page
b $F5A0 Instructions page 1 end message
N $F5A2 "N0 CHANCE!"
b $F5AD Instructions page 2 end message
N $F5AF "THAT MEANS DAN CAN'T SWIM"
b $F5C9 Instructions page 3 end message
N $F5CB "EAT THAT!"
b $F5D5 Instructions page 4 end message
N $F5D7 "GET THAT LIFE!"
b $F5E6 UDG C5
b $F6AA UDG 42
b $F72E UDG B4
b $F7ED UDG C3
b $F8C7 Instructions page 1 text
b $FB66 Instructions page 2 text
b $FCAA Instructions page 3 text
b $FD1D Instructions page 4 text
b $FD93 Redefine keys instructions text
b $FE2B Picked up oxygen tank tune
b $FE45 Picked up bank card tune
b $FE65 Picked up aerosol tune
b $FE71 Fought moving object while aerosol active tune
b $FE77 Game won text
D $FE77 Used by the routine at #R$E62F
i $FF11 End
