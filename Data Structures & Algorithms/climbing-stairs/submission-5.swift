class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 { return n }
        var a = 1
        var b = 2
        var c = 0
        for _ in 3...n {
            c = a + b
            a = b
            b = c
        }
        return c
    }

    func helper(_ n: Int, _ memo: inout [Int]) -> Int {
        if n <= 1 {
            return 1
        }
        if memo[n] != -1 {
            return memo[n]
        }
        memo[n] = helper(n - 1, &memo) + helper(n - 2, &memo)
        return memo[n]
    }
}
