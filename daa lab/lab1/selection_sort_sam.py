arr = [int(x) for x in input("enter arr seprated by space: ").split()]
for k in range (0,len(arr)-1):
    min = arr[k]
    loc = k
    for j in range(k+1,len(arr)):
        if min > arr[j]:
            min = arr[j]
            loc= j
    arr[k], arr[loc] = arr[loc],arr[k]

print("sorted arr is : ",arr)