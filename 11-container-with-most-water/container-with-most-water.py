class Solution:
    def maxArea(self, height: List[int]) -> int:
        #Optimized. Runs in O(n)
        left, right = 0, len(height) - 1
        max_area = 0
        while left < right:
            width = right - left
            current_height = min(height[left], height[right])
            max_area = max(max_area, width * current_height)
            if height[left] < height[right]:
                left += 1
            else:
                right -= 1
        return max_area

        #brute force $$O(n^2)$$ I'm pretty sure. Wont run because it takes too long
        distance = 0
        recursion = 1
        max_area = 0
        for x in range(len(height) - 1):
            for y in range(len(height) - recursion):
                distance += 1
                end = height[y + recursion]
                if end <= height[x]:
                    max_water_level = end
                else:
                    max_water_level = height[x]
                if max_area < distance * max_water_level:
                    max_area = distance * max_water_level
            distance = 0
            recursion += 1
        return(max_area)