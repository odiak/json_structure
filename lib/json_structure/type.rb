module JsonStructure
  class Type
    def ===(*)
      false
    end

    def |(type)
      AnyOf.new(self, type)
    end
  end
end
