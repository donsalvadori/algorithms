# // binary search:


#     // Let min = 0 and max = n-1.
#     // Compute guess as the average of max and min, rounded down (so that it is an integer).
#     // If array[guess] equals target, then stop. You found it! Return guess.
#     // If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
#     // Otherwise, the guess was too high. Set max = guess - 1.
#     // Go back to step 2.


#     // Let min = 0 and max = n-1.
#     // If max < min, then stop: target is not present in array. Return -1.
#     // Compute guess as the average of max and min, rounded down (so that it is an integer).
#     // If array[guess] equals target, then stop. You found it! Return guess.
#     // If the guess was too low, that is, array[guess] < target, then set min = guess + 1.
#     // Otherwise, the guess was too high. Set max = guess - 1.
#     // Go back to step 2.


def biSearch(array, target)
  min = 0
  max = (array.length) -1

  while (min <= max)
    guess = ((max + min)/2).round
    if (array[guess] == target)
      return guess
    elsif (array[guess] < target)
      min = guess + 1
    else
      max = guess -1
    end
  end
  return -1
end

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 
        41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]


result = biSearch(primes, 73)

puts "found prime at index #{result}"







