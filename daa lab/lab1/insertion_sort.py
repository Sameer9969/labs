arr = [int(x) for x in input("enter arr seprated with space : ").split(" ")]
j = 1

for j in range (len(arr)):
    key = arr[j]
    i = j-1

    while i>=0 and arr[i]>key:
        arr[i+1] = arr[i]
        i-=1
    arr[i+1] = key

print("sorted arr is : ", arr)

