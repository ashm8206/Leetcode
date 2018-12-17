# pre-requisite: Both arrays are sorted, given
import statistics
# A = [2, 3]
A = [1, 2, 3] 
B = [7, 8, 9, 10, 11]
len_A = len(A)
len_B = len(B)

# step 1: consider A to always have the smaller array. If not, swap -- nay not be required in new algo. Check
if len_B < len_A:
    temp = A
    A = B
    B = temp

# step 2: find both medians
median_A = statistics.median(A)
median_B = statistics.median(B)
# not needed (just kept to show that this can be done in constant time if library usage discouraged): 
# if len_A % 2 != 0:
#     median_A = A[len_A / 2]
# else:
#     median_A = (A[(len_A / 2) - 1] + A[len_A / 2]) / 2.0

# if len_B % 2 != 0:
#     median_B = B[len_B / 2]
# else:
#     median_B = (B[(len_B / 2) - 1] + B[len_B / 2]) / 2.0

# step 3: figure out where the median of one array cuts the other to find offset -- places by which the median position of larger array will shift
# if median_A > median_B, find max(a) such that a < median_B
# so basically create: a, median_B, median_A

C = A + B
print(C)
print(statistics.median(C))