#Define a method that will sort the array via bubble sort and return a new array
    require 'pry-byebug'
    binding.pry
        #Define a method that is used for swapping two values
    def swap(arr, counter)
        tmp = arr[counter - 1]
        arr[counter - 1] = arr[counter]
        arr[counter] = tmp
        return arr
    end
def bubble_sort(arr)
    #Declare a sentinel variable, allSwapped and set to false
    allSwapped = false

    #Set a infinite loop until all elements in the array are sorted in ascending order
    until allSwapped == true do   
        #Set allSwapped to true
        allSwapped = true
        #Declare and set variable counter to 1
        counter = 1
        #Loop from 1 to the last index of the array to compare between two values
        while counter < arr.length do
            #If the left element is greater than the right element, swap the values
            if arr[counter - 1] > arr[counter]
                allSwapped  = false
                swap(arr, counter)
            end
            #Otherwise, keep iterating
            counter += 1
        end
    end
    #Return the array
    arr.inspect
end

#Invoke the bubble sort method that returns the array sorted and display to the user
puts bubble_sort([4,3,78,2,0,2])
