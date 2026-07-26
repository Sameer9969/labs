from arrFunctions import *

n = int(input("enter the array size : "))
arr = []
for i in range(n):
    arr.append(input(int(i)))
for j in range(n):
    key = arr[j]
    i = j-1
    
    while i>=0 and arr[i]>key:
        arr[i+1] = arr[i]
        i-=1
    arr[i+1] = key
print("sorted array : ",arr)