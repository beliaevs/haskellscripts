import Data.List

main :: IO ()
main = do
   contents <- readFile "test.txt";
   print . sumAndMax . map readInt . words $ contents


sumAndMax :: [Int] -> (Int, Int)
sumAndMax = let 
    sm (n1, m1) k = (n1 + k, max m1 k) 
            in foldl' sm (0, 0) 


readInt :: String -> Int
readInt = read
