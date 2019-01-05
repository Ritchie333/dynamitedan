c $5E52 BASIC entry point
i $5E71
c $5E76 Decrypt a data block (first run)
R $5E76 Start of the block
D $5E76 This entry point is used by the routine at #R$5E52
D $5E76 The length is taken as the top value on the stack
i $5E90
w $5E93 Stack values
D $5E93 These values are important for the loading system to work
i $5EAD