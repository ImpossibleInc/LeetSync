class Solution:
    def increasingTriplet(self, nums: List[int]) -> bool:
        #O(n) runtime
        #O(1) storage
        first = second = float('inf')
        for num in nums:
            if num <= first:
                first = num
            elif num <= second:
                second = num
            else:
                return True
        return False


        #O(n^3) runtime
        #O(1) storage
        i = 0
        j = 0
        k = 0
        loop = 0
        number = loop + 1
        number2 = number + 1
        print("nums:", nums)
        print("nums len:", len(nums))
        for items in range(len(nums)-2):
            print("loop :", loop)
            print("number :", number)
            print("number2 :", number2)
            i = nums[loop]
            print("i :",i)
            for x in range(len(nums) - loop - 1):
                j = nums[number]
                print("j :",j)
                print("number :", number)
                if i < j:
                    for y in range(len(nums) - loop - 2):
                        k = nums[number2]
                        print("k :",k)
                        print("number2 :", number2)
                        if j < k:
                            return True
                        else:
                            number2 += 1
                            print()
                    number2 = number + 1
                else:
                    number += 1
                    print()
                number = loop + 1
            loop += 1 
        return False
        