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

Question: Notice that there is a maximum speed-up factor, but not necessarily using the most threads. Make a guess (i.e., write a short paragraph) as to why you think more threads aren’t necessary better. Here’s a hint: think about a group of people waiting to go through a turnstile (like at BART or Disney World). Are more people able to go through it just because there are more people?

Answer: I think that more threads aren't neccessarily better because the system has a limited amount of resources it can use for those threads, meaning there is a limit to how fast it can go. If there are more threads, then there are also probably more resources that need to be used in order to have the threads running, which would also impact the speed. My guess is that the more threads there are, the weaker each one is since the resources need to be shared across all of them.
