module JsonStructure
  class Number < Type
    def initialize(min: nil, max: nil)
      @min = min
      @max = max
    end

    def ===(value)
      return false unless value.is_a?(::Integer) || value.is_a?(::Float)

      return false if @min && value < @min
      return false if @max && value > @max
      true
    end
  end

  class Integer < Number
    def ===(value)
      return false unless value.is_a?(::Integer)
      super
    end
  end
end
