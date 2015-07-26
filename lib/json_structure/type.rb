module JsonStructure
  class Type
    def initialize(cond)
      @cond = cond
    end

    def ===(value)
      !!(@cond && @cond.call(value))
    end

    def |(type)
      AnyOf.new(self, type)
    end
  end
end
