module JsonStructure
  class AnyOf < Type
    def initialize(*types)
      @types = types
    end

    def ===(value)
      @types.any? { |type| type === value }
    end

    def |(type)
      AnyOf.new(*(@types + [type]))
    end
  end
end
