module JsonStructure
  class Value
    def initialize(*values)
      @values = values
    end

    def ===(value)
      @values.include?(value)
    end
  end
end
