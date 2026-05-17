class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in 0..<9 {
            if !isValidRow(board[i]) {
                return false
            }
        }

        for j in 0..<9 {
            if !isValidColumn(board, j) {
                return false
            }
        }

        for r in stride(from: 0, to: 9, by: 3) {
            for c in stride(from: 0, to: 9, by: 3) {
                if !isValidBox(board, r, c) {
                    return false
                }
            }
        }

        return true
    }

    func isValidRow(_ row: [Character]) -> Bool {
        var seenChars: [Bool] = Array(repeating: false, count: 9)
        for char in row {
            if let val = char.wholeNumberValue {
                if val > 0 {
                    if seenChars[val - 1] == true {
                        return false
                    }
                    seenChars[val - 1] = true
                }
            }
        }
        return true
    }
    func isValidColumn(_ board: [[Character]], _ col: Int) -> Bool {
        var seen = Array(repeating: false, count: 9)

        for row in 0..<9 {
            let char = board[row][col]
            if let val = char.wholeNumberValue {
                if val > 0 {
                    if seen[val - 1] {
                        return false
                    }
                    seen[val - 1] = true
                }
            }
        }
        return true
    }
    func isValidBox(_ board: [[Character]], _ startRow: Int, _ startCol: Int) -> Bool {
        var seen = Array(repeating: false, count: 9)

        for r in 0..<3 {
            for c in 0..<3 {
                let char = board[startRow + r][startCol + c]
                if let val = char.wholeNumberValue {
                    if val > 0 {
                        if seen[val - 1] {
                            return false
                        }
                        seen[val - 1] = true
                    }
                }
            }
        }
        return true
    }
}
