n = int(input("enter the size of array"))
arr = []
for i in range(n):
    arr.append(int(input(f"enter element {i}: ")))

for k in range(n - 1):
    min_value = arr[k]
    loc = k
    for j in range(k + 1, n):
        if arr[j] < min_value:
            min_value = arr[j]
            loc = j
    arr[k], arr[loc] = arr[loc], arr[k]

print("sorted :", arr)


