module JsonStructure
  class Array < Type
    def initialize(elem_type = nil)
      @elem_type = elem_type
    end

    def ===(value)
      return false unless value.is_a?(::Array)

      if @elem_type
        return value.all? { |v| @elem_type === v }
      end

      true
    end
  end
end
