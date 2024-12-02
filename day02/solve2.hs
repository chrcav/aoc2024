
import Prelude
import Data.List

isDescending :: [Int] -> [Int] -> Int -> Bool
isDescending _ _ 2 = False
isDescending (x:[]) _ cnt = cnt <= 1
isDescending (x:xs) [] cnt = if x > head xs && (x - head xs) <= 3 then isDescending xs [x] cnt else isDescending xs [] (cnt+1) || isDescending (x: tail xs) [] (cnt+1)
isDescending (x:xs) prev cnt = if x > head xs && (x - head xs) <= 3 then isDescending xs (x:prev) cnt else isDescending (head prev:xs) prev (cnt+1) || isDescending (x: tail xs) prev (cnt+1)

isAscending :: [Int] -> [Int] -> Int -> Bool
isAscending _ _ 2 = False
isAscending (x:[]) _ cnt = cnt <= 1
isAscending (x:xs) [] cnt = if x < head xs && (head xs - x) <= 3 then isAscending xs [x] cnt else isAscending xs [] (cnt+1) || isAscending (x: tail xs) [] (cnt+1)
isAscending (x:xs) prev cnt = if x < head xs && (head xs - x) <= 3 then isAscending xs (x:prev) cnt else isAscending (head prev:xs) prev (cnt+1) || isAscending (x: tail xs) prev (cnt+1)

isSafe :: [Int] -> Bool
isSafe [] = False
isSafe (x:[]) = True
isSafe l = isAscending l [] 0 || isDescending l [] 0

main :: IO ()
main = interact $ show . length . filter isSafe . map (map read . words) . lines


