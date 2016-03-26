module Algorithms
  class DataError < RuntimeError
    def message
      'Some thing is wrong with your data'
    end
  end
end