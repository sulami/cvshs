module Main where

fb :: Integer -> String
fb n | n `mod` 15 == 0 = "FizzBuzz"
     | n `mod`  5 == 0 = "Buzz"
     | n `mod`  3 == 0 = "Fizz"
     |       otherwise = show n

main = print $ map fb [1..1000000]

