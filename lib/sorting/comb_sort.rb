module Algorithms
  module Sorting
    class Comb
      def perform(array)
        raise DataError if array.nil? || array.empty?

        gap = n = array.size
        swapped = true
        while gap > 1 || swapped
          gap = (gap / 1.247330950103979).to_i if gap > 1
          swapped, i = false, 0
          while i + gap < n
            if array[i] > array[i + gap]
              tmp = array[i]
              array[i] = array[i + gap]
              array[i + gap] = tmp
              swapped = true
            end

            i += 1
          end
        end

        array
      end
    end
  end
end
