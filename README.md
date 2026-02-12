# segmented_sieve
A segmented prime sieve - very fast!
## How fast?
Here's the results of running this on my StrixHalo Framework Desktop:

```
tliston@framework:~/Research/segmented_sieve$ ./segmented_sieve 1000000000
Creating 32 threads...
Time = 0.01285 seconds
Total primes: 50,847,534 in 1,000,000,000
tliston@framework:~/Research/segmented_sieve$ ./segmented_sieve 10000000000
Creating 32 threads...
Time = 0.12978 seconds
Total primes: 455,052,511 in 10,000,000,000
tliston@framework:~/Research/segmented_sieve$ ./segmented_sieve 100000000000
Creating 32 threads...
Time = 1.45310 seconds
Total primes: 4,118,054,813 in 100,000,000,000
tliston@framework:~/Research/segmented_sieve$ ./segmented_sieve 1000000000000
Creating 32 threads...
Time = 25.84702 seconds
Total primes: 37,607,912,018 in 1,000,000,000,000
tliston@framework:~/Research/segmented_sieve$
```
Yes, it *did* find all of the primes less than 1 TRILLION in just over 25 seconds.

I'm pretty impressed... Just sayin'...
