class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        i = 0
        j = 0
        print(nums)
        while j <= (len(nums) - 1):
            if nums[i] == 0:
                if j < (len(nums) - 1) and nums[j] == 0:
                    j += 1
                seek = nums[j]
                nums[i] = nums[j]
                nums[j] -= nums[j]
            if nums[i] != 0:
                i += 1
            j += 1
        """
        Do not return anything, modify nums in-place instead.
        """
        