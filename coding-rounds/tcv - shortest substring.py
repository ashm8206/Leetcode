# status - Correct answer but TLE. Optimize!
def smallest_substr(str):
    length = len(str)
    min = length
    for i in range(0, length - 1):
        j = i
        while j <= length:
            if set(str[i:j]) == set(str):
                if len(str[i:j]) < min:
                    min = len(str[i:j])
            j += 1
    return min

# smallest_substr('abaacbab') #3
# smallest_substr('bcaacbc')  #3
# smallest_substr('aabaaccbcbcca')  #4
smallest_substr('bbcbbdbccccabbbbd')  #7