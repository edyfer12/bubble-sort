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
    arr = [6, 5, 3, 1, 8, 7, 4, 2]
    #Declare a sentinel variable, allSwapped and set to false
    allSwapped = false

    #Set a infinite loop until all elements in the array are sorted in ascending order
    until allSwapped == true do   
         #Declare a variable called swapped and set to true
        swapped = true
        #Declare and set variable counter to 1
        counter = 1
        #Loop from 1 to the last index of the array to compare between two values
        while counter < arr.length do
            #If the left element is greater than the right element, swap the values
            if arr[counter - 1] > arr[counter]
                swapped  = false
                swap(arr, counter)
            end
            #Otherwise, keep iterating
            counter += 1
        end
        #If all values are sorted in ascending order end the infinite loop
        if swapped == true
            allSwapped = true
        end
    end
    #Return the array
    arr.inspect

#Invoke the bubble sort method that returns the array sorted and display to the user

