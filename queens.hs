safe p n = all not [ check (i,j) (1 + length p, n)
         | (i,j) <- zip [1..] p]

check (i, j) (m, n) = j == n || (i + j == m + n) || (i - j == m - n)

queens 0 = [[]]
queens m = [ p ++ [n]
           | p <- queens (m-1), n <- [1..8], safe p n ]