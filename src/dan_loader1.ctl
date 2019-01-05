t $5CD0 Message
b $5D3F BASIC
D $5D3F The listing says : 
D $5D3F 10 CLEAR 60000: POKE 23693,0: POKE 23624,0: POKE 23697,0: CLS: POKE 23659,2: FOR N=30 TO 36: BEEP .075,N: NEXT N: RANDOMIZE USR 24050: RANDOMIZE USR 0
D $5D3F Using the internal values, the listing should say :
D $5D3F 10 CLEAR 59999: POKE 23693,0: POKE 23624,0: POKE 23697,0: CLS: POKE 23659,0: FOR N=30 TO 36: BEEP .075,N: NEXT N: RANDOMIZE USR 24146: RANDOMIZE USR 0
i $5DEB
w $5DF2
c $5E00 Load the second block
c $5E12 Clear memory and set up data to load the second block
b $5E4E
c $5E52 BASIC entry point
b $5E71
c $5E77 Decrypt a data block (second run)
R $5E77 HL Start address
R $5E77 B Length
w $5E93 Stack values
D $5E93 These values are important for the loading system to work
i $5EA1
c $9C40 Second block entry point
i $9C63
