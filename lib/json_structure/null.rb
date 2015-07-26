module JsonStructure
  class Null < Type
    def ===(value)
      value.nil?
    end
  end
end
