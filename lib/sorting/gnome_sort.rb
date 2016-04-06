module Algorithms
  module Sorting
    class Gnome
      def perform(array)
        raise DataError if array.nil? || array.empty?

        i = 1
        while i < array.size
          if i == 0 || array[i - 1] <= array[i]
            i += 1
          else
            temp = array[i]
            array[i] = array[i - 1]
            array[i - 1] = temp
            i -= 1
          end
        end

        array
      end
    end
  end
end
