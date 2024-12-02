
import Prelude
import Data.List


pairFromLine :: [String] -> [Int]
pairFromLine (x : xs) = map read [x, head xs]

main :: IO ()
main = interact $ show . sum . map (abs . (foldr (-) 0)) . transpose . map sort . transpose . map (pairFromLine . words) . lines


