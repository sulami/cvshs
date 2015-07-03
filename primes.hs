module Main where

divisors :: Integer -> [Integer]
divisors 0 = []
divisors n = [x | x <- [2..(n `div` 2)], n `mod` x == 0]

primes :: [Integer]
primes = [x | x <- [1..20000], [] == divisors x]

main = print primes

