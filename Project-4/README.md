# Part 1: iota GPU and CPU Comparisons

## iota.gpu Results (CUDA)
|Vector<br>Length|Wall Clock<br>Time|User Time|System Time|
|:--:|--:|--:|--:|
|10| 0.30| 0.02| 0.28|
|100| 0.21| 0.00| 0.20|
|1000| 0.21| 0.00| 0.20|
|10000| 0.22| 0.01| 0.21|
|100000| 0.21| 0.01| 0.19|
|1000000| 0.22| 0.01| 0.20|
|5000000| 0.26| 0.01| 0.23|
|100000000| 0.84| 0.17| 0.67|
|500000000| 3.40| 0.79| 2.60|
|1000000000| 6.86| 1.55| 5.30|
|5000000000|36.13| 7.26|28.87|

## iota.cpu Results
|Vector<br>Length|Wall Clock<br>Time|User Time|System Time|
|:--:|--:|--:|--:|
|10| 0.00| 0.00| 0.00|
|100| 0.00| 0.00| 0.00|
|1000| 0.00| 0.00| 0.00|
|10000| 0.00| 0.00| 0.00|
|100000| 0.00| 0.00| 0.00|
|1000000| 0.00| 0.00| 0.00|
|5000000| 0.02| 0.00| 0.02|
|100000000| 0.55| 0.08| 0.47|
|500000000| 2.70| 0.42| 2.28|
|1000000000| 5.49| 0.85| 4.63|
|5000000000|34.28| 6.01|28.26|

**Question: Are the results what you expected? Speculate as to why it looks like CUDA isn’t a great solution for this problem.**
The results are not what I expected. I thought that CUDA would make it faster. The reason CUDA might not be a good solution for this problem might because there might be more work in setting things up for the GPU. In class, we learned that the memory in a discrete GPU has to be managed explicitly and that we need a staging buffer to send or receive data to the GPU's memory because it can't be written or read to directly. Setting these things up probably takes some time and since our program seems to be small, CUDA does not help increase the speed.

# Part 2: Julia Set Results
The Julia set below uses the starting point $z = (-0.4, 0.6)$, $ll = ()$, and $ur = ()$.
![Julia Set](<julia.png>)

