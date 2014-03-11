import numpy as np
from matplotlib import pyplot as plt
x = np.linspace(0, np.pi*2, 257)[:-1]
nums = ((np.sin(x)+1)*255.0/2.0).astype(int)
plt.plot(x,nums)
plt.show()
data = [ "h, ".join(map(lambda x: '0'+hex(x)[2:-1],seg))+"h\n" for seg in np.split(nums,32) ]
plt.plot(x, [int("0x"+num.strip()[1:-1],16) for num in (",".join(data)).split(",")])
plt.show()
print ".db "+".db ".join(data)
