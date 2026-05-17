class Solution:
    def maxArea(self, heights: List[int]) -> int:
        i = 0
        j = len(heights) - 1

        maxArea = 0
        while i < j:
            width = j - i
            height = min(heights[i], heights[j])
            maxArea = max(maxArea, width * height)

            if heights[i] <= heights[j]:
                i += 1
            else:
                j -= 1
        return maxArea