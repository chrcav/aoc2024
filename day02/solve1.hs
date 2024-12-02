
import Prelude
import Data.List

isAscending :: [Int] -> Bool
isAscending (x:[]) = True
isAscending (x:xs) = if x > head xs && (x - head xs) <= 3 then isAscending xs else False

isDescending :: [Int] -> Bool
isDescending (x:[]) = True
isDescending (x:xs) = if x < head xs && (head xs - x) <= 3 then isDescending xs else False

isSafe :: [Int] -> Bool
isSafe [] = False
isSafe (x:[]) = False
isSafe l = isAscending l || isDescending l

main :: IO ()
main = interact $ show . length . filter isSafe . map (map read . words) . lines


