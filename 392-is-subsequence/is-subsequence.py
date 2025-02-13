class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        slice(s)
        slice(t)
        i = 0
        if len(s) == 0:
            return True
        for char in t:
            if s[i] == char:
                i += 1
                print("i value:", i)    
            if i == len(s):
                return True
            print()
        return False
        