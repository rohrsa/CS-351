# Results

## hash-00
| Optimization | Real Time | User Time | System Time | Memory (KB) | Throughput |
| --- | --- | --- | --- | --- | --- |
| none | 351.48 | 341.74 | 6.03 | 2900 | 2845.11 |
| -02 | 338.28 | 331.36 | 4.55 | 2884 | 2956.13 |
| -02 and -funroll-loops | 335.70 | 329.78 | 4.16 | 2888 | 2978.85 |
| -03 and -funroll-loops | 335.45 | 329.51 | 4.16 | 2880 | 2981.07 |

## hash-01
| Optimization | Real Time | User Time | System Time | Memory (KB) | Throughput | Improvement Over hash-00 |
| --- | --- | --- | --- | --- | --- | --- |
| none | 18.99 | 16.41 | 1.65 | 2900 | 52659.29 | 18.50 |
| -02 | 9.78 | 7.01 | 1.61 | 2880 | 102249.48 | 34.58 |
| -02 and -funroll-loops | 8.25 | 6.88 | 1.30 | 3456 | 121212.12 | 40.69 |
| -03 and -funroll-loops | 8.03 | 6.85 | 1.10 | 2880 | 124533 | 41.77 |

## hash-02
| Optimization | Real Time | User Time | System Time | Memory (KB) | Throughput | Improvement Over hash-00 |
| --- | --- | --- | --- | --- | --- | --- |
| none | 20.06 | 14.80 | 2.72 | 2884 | 49850.44 | 17.52 |
| -02 | 7.97 | 6.81 | 1.07 | 2896 | 125470.51 | 42.44 |
| -02 and -funroll-loops | 7.90 | 6.79 | 1.05 | 2880 | 126582.27 | 42.49 |
| -03 and -funroll-loops | 7.90 | 6.75 | 1.06 | 2880 | 126582.27 | 42.46 |

## hash-03
| Optimization | Real Time | User Time | System Time | Memory (KB) | Throughput | Improvement Over hash-00 |
| --- | --- | --- | --- | --- | --- | --- |
| none | 17.02 | 15.22 | 1.26 | 2880 | 58754.40 | 20.65 |
| -02 | 8.22 | 6.84 | 1.29 | 2896 | 121654.50 | 41.15 |
| -02 and -funroll-loops | 8.21 | 6.86 | 1.26 | 3464 | 121802.67 | 40.88 |
| -03 and -funroll-loops | 8.22 | 6.77 | 1.36 | 2888 | 121654.50 | 40.80 |

## hash-04
| Optimization | Real Time | User Time | System Time | Memory (KB) | Throughput | Improvement Over hash-00 |
| --- | --- | --- | --- | --- | --- | --- |
| none | 14.60 | 13.83 | 0.62 | 5012360 | 68493.15 | 24.07 |
| -02 | 7.25 | 6.63 | 0.53 | 5012376 | 137931.03 | 46.65 |
| -02 and -funroll-loops | 7.13 | 6.59 | 0.47 | 5012368 | 140252.45 | 47.08 |
| -03 and -funroll-loops | 7.18 | 6.63 | 0.46 | 5012368 | 139275.76 | 46.72 |

# Questions
**1. What operation do you think accounts for most of hash-00's runtime?**\
I think that the operation of converting each data item from ASCII to binary is what accounts for most of hash-00's runtime,
along with the fact that it does it one at a time.
   
**2. hash-01 and hash-02 both dynamically allocate memory for each hash computation.  Is there much difference time-wise between their two allocation methods?**\
There does not seem to be much difference time-wise between the two allocation methods for hash-01 and hash-02. Without optimization, hash-01 is only a few seconds faster than hash-02, whereas with optimization, hash-02 is a bit faster, but not by that much. 
   
**3. hash-03 avoids the allocation by using a fixed-size array.  Is there an appreciable speed difference?**\
There is not an appreciable speed difference. The times are all very close to each other, especially with the optimization options.
   
**4. Why is hash-04's memory usage so much larger than any of the other versions?  Hint: recall when we discussed how the operating system reads a file and makes it available to an application.  Specifically, the O/S will transfer data from disk to its own memory, and then copy from there into buffers provided by the application.  In the memory map case, the O/S is merely sharing the copy of the file's data that is in its (the O/S's) memory, and not making an additional copy from its memory into memory only in the application.**\
hash-04's memory usage is much larger than any of the other programs because it memory maps the entire file to the program's address space instead of having the data in the O/S's memory and then copying parts of it into the program from there. 
   
**5. What other compiler options did you try, and did they help at all?**\
I tried the options -02, -02 with -funroll-loops, and -03 with -funroll-loops. They all helped cut down the base runtime to around half for most of the programs, except for hash-00, which was reduced by around 15 seconds. The options -02 with -funroll-loops and -03 with -funroll-loops had very similar times compared to the rest and were the fastest overall. 
