class Sums

  def sum_pairs(array:, integer:)
    counter = 0

    # Loop through array yielding element
    # increment counter if the array includes target minus element

    while (element = array.pop) do
      counter += 1 if array.include?(integer - element)
    end

    counter

  end

end

# Example:
sums = Sums.new
sums.sum_pairs(array: [1, 1, 10, 32, 41], integer: 42)