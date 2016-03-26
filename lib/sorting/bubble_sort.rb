module Algorithms
  module Sorting
    class Bubble
      def self.perform(array)
        raise DataError if array.nil? || array.empty?

        loop do
          changed = false

          (array.size-1).times do |i|
            if array[i] > array[i+1]
              array[i], array[i+1] = array[i+1], array[i]
              changed = true
            end
          end

          break unless changed
        end

        array
      end
    end
  end
end
