
import Prelude
import Data.List


pairFromLine :: [String] -> [Int]
pairFromLine (x : xs) = map read [x, head xs]

calc :: Int -> [Int] -> Int
calc x rh = x * (length $ filter (\v -> v == x) rh)

calc1 :: [[Int]] -> [Int]
calc1 (x:xs) = map (\v -> calc v $ head xs) x

main :: IO ()
main = interact $ show . sum . calc1 . transpose . map (pairFromLine . words) . lines


