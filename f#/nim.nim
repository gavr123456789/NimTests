# let first100Squares = [for x in 1..100 -> x * x]
# for x in first100Squares do printf "%d, " x

import sequtils


const first100Squares = (1..100).mapIt(it * it)
echo first100Squares