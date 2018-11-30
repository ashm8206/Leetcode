# Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring (i.e., “waterbottle” is a rotation of “erbottlewat”).

class solution():
    def check_string_rotation(self, s1, s2):
        return True

obj = solution()
obj.check_string_rotation("waterbottle", "erbottlewat")    # True
obj.check_string_rotation("waterbottle", "rbottlewat")     # False
obj.check_string_rotation("waterbottle", "rbottlewat")     # False
obj.check_string_rotation("aabc", "aabc")     # True
obj.check_string_rotation("abAc", "abac")     # False
obj.check_string_rotation("abac", "aabc")     # False
obj.check_string_rotation("kklmo", "klmo")     # False
obj.check_string_rotation("kkkk", "kkkk")     # True
obj.check_string_rotation("akkb", "bakk")     # True