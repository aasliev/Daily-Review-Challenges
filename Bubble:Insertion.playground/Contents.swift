import UIKit

/*
 Quick review of Bubble and Insertion Sort.
 Create a random array of integers, of size 100.
 and sort them using Bubble and Insertion functions
 */

//print("check")
func printArray(arr: [Int], size: Int){
    for i in arr{
        print(i, separator: " ", terminator: " ")
    }
}



/*
 Bubble Sort goes through the whole list and compares each element

 Time Complexity --
 Worst Case: O(n^2)
 Average Case: O(n^2)
 Best Case: O(n)
 Space Complexity -- O(1)
 */
func bubbleSort(arr: inout[Int], size: Int){
    for i in 0...size - 2{
        for j in 0...size - (i + 2){
            if (arr[j] > arr[j+1]){
                arr.swapAt(j, j+1)
            }
        }
    }
}


/*
 take key = A[j], and go throug sorted sub-array of A[0] - A[j-1]
 and insert it in the right position
 
 Time Complexity --
 Worst Case: O(n^2)
 Average Case: O(n^2)
 Best Case: O(n)
 Space Complexity -- O(1)
 */

func insertionSort( arr: inout [Int], size: Int){
    //print("inside insertion: ")
    for i in 1...size-1{
        
        //print(i)
        let key = arr[i]
        var j = i - 1
        while j>=0 && arr[j]>key {
            arr[j+1] = arr[j]
            j = j - 1
        }
        arr[j+1] = key
    }
    
}


var arr = [4,36,5,3,2,45,6,7,8,9,76,7,5,4,3,1]

let n = arr.count
print("Before Sort: ")
printArray(arr: arr, size: n)

//insertionSort(arr: &arr, size: n)
bubbleSort(arr: &arr, size: n)
print("\nAfter Sorting:")
printArray(arr: arr, size: n)
