class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        freqs = dict()
        res = 0
        l = 0

        for r in range(len(s)):
            val = freqs.get(s[r], 0)
            freqs[s[r]] = val + 1
            maxFreq = max(freqs.values())
            currLen = r - l + 1
            if currLen - maxFreq > k:
                freqs[s[l]] -= 1
                l += 1
            res = max(res, r - l + 1)

        return res
        