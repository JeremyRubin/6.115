import numpy as np
print ".db "+".db ".join([ "h, ".join(map(lambda x: hex(x)[2:-1],seg))+"h\n" for seg in np.split((np.sin(np.linspace(0,np.pi*2,257))[:-1]+1)*255//2, 32)])


