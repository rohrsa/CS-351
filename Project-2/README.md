# Results
|Thread<br>Count|Wall Clock<br>Time|User Time|System Time|Speedup|
|:--:|--:|--:|--:|:--:|
|1|14.58|13.93| 0.49|1.00|
|2| 7.85|14.50| 0.62| 1.86|
|3| 5.73|15.48| 0.67| 2.54|
|4| 4.55|15.68| 0.87| 3.20|
|5| 3.83|16.00| 0.96| 3.81|
|6| 3.37|16.32| 1.09| 4.33|
|7| 3.00|16.34| 1.21| 4.86|
|8| 2.78|16.67| 1.35| 5.24|
|16| 2.08|18.45| 3.20| 7.01|
|24| 1.95|18.62| 6.84| 7.48|
|32| 1.98|18.21|12.48| 7.36|
|40| 1.90|19.02|14.04| 7.67|
|48| 1.95|18.04|18.62| 7.48|
|56| 1.95|17.49|18.80| 7.48|
|64| 2.00|17.82|16.84| 7.29|
|72| 2.00|18.20|15.72| 7.29|
|80| 2.00|17.79|17.52| 7.29|


![Speedup Graph](<Speedup Graph.png>)


**Timing Results from timed.cpp:**

main program 0.048732523 s

results output 4.97e-07 s

main program 7.331906097 s

# Questions

**1. Notice that there is a maximum speed-up factor, but not necessarily using the most threads. Make a guess (i.e., write a short paragraph) as to why you think more threads aren’t necessary better. Here’s a hint: think about a group of people waiting to go through a turnstile (like at BART or Disney World). Are more people able to go through it just because there are more people?**

I think that more threads aren't neccessarily better because the system has a limited amount of resources it can use for those threads, meaning there is a limit to how fast it can go. If there are more threads, then there are also probably more resources that need to be used in order to have the threads running, which would also impact the speed. My guess is that the more threads there are, the weaker each one is since the resources need to be shared across all of them.


**2. Do you think it’s possible to get “perfect scaling” — meaning that the (1-p) terms is zero?**

If the 1 - p term is 0, that means that p would need to be equal to 1, which would mean that the entire program is parallelized and that there is no serial code. I think that this might not be possible because there is probably some serial code in every program.


**3. For your own timings, compute your expected speed-up for 16 cores.**

Determine serial code (s):

$$ s = \frac{0.049 + 0.000000497}{7.332} = 0.007 $$

Determine parallel code (p): 

$$ p = 1 - s = 0.993 $$

Use Amdahl’s law, $speedup = \frac{1}{1 - p + \frac{p}{n}}$, where p is the parallel code and n is the number of cores:

$$ speedup = \frac{1}{1 - 0.993 + \frac{0.993}{16}} = 14.480 $$

The expected speed-up for 16 cores is 14.480, or the program should go about 14 times as fast.


**4. In reviewing the graph of speed-ups to number of threads, note that we get pretty linear (when you plot the dots, they’re pretty close to being a line) speed-up. What’s the slope of that line? (Pick two values, like for one and seven threads, and do the rise-over-run thing you learned in Algebra). Does that linear trend continue as we add more threads? What do you think causes the curve to “flatten out” when we use large thread counts?**

For 1 and 7 threads, the slope is 0.643. As more threads are added, the slope gets closer to being a horizontal line. For example, the slope for 16 and 80 threads is 0.004. The reason the line flattens out when large thread counts are used might be because the computer doesn't have the capability to run all of the threads at once at full speed, meaning there is a point where no matter how many more threads you run, it will not get significantly faster.  
