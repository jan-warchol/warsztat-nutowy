

def strRange(x):
   b = x - (x - 1) % 4
   return str(b) + '-' + str(b+3)

def numToLetter(x):
   return chr(ord('A')+x-1)
