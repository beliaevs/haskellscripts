import Data.List ( foldl' )
import System.Environment ( getArgs )

main :: IO ()
main = do
    args <- getArgs
    case args of
        [filename] -> 
            do
                contents <- readFile filename
                let (summa, m) = sumAndMax . map readInt . words $ contents
                putStrLn ("sum = " ++ show summa ++ ", max = " ++ show m)
        _ -> putStrLn "Usage: Read.exe [filename]"


sumAndMax :: [Int] -> (Int, Int)
sumAndMax = 
    let 
        sm (n1, m1) k = (n1 + k, max m1 k) 
    in  foldl' sm (0, 0) 


readInt :: String -> Int
readInt = read
