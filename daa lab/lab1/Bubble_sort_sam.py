arr = [int(x) for x in input("enter arr seprated by space: ").split()]
for i in range (len(arr)):
    flg = 0 
    for j in range (0,len(arr)-i-1):
        if arr[j]> arr[j+1]:
            arr[j], arr[j+1] = arr[j+1],arr[j]
            flg = 1
    if flg == 0:
        break

print(arr)
