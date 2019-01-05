c $FE1F Build up a hash value from the screen memory
R $FE1F A On exit, holds the computed hash value
c $FE31 Build up a hash value from game memory
R $FE31 A On exit, holds the computed hash value
b $FE43
c $FE45 Main loader
c $FE79 Unused code
c $FEAB Load a block with leading tone
c $FEFA Load a block forwards
c $FF2A Load a block backwards
c $FF4E Get a byte from tape
c $FF52 Get tape signal
c $FF70 Main decrypter
c $FFD4 Decrypt a data block using bit shifting
R $FFD4 HL Start address
R $FFD4 BC Length
c $FFDE Decrypt a data block using bit twiddling
R $FFDE HL Start address
R $FFDE BC Length
R $FFDE D Initial salt
i $FFE8