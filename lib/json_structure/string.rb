module JsonStructure
  class String < Type
    def initialize(min_length: nil, max_length: nil, pattern: nil)
      @min_length = min_length
      @max_length = max_length
      @pattern = pattern
    end

    def ===(value)
      return false unless value.is_a?(::String)

      return false unless @min_length && value.size < @min_length
      return false unless @max_length && value.size > @max_length
      return false unless @pattern && pattern =~ value
      true
    end
  end
end
