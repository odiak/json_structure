module JsonStructure
  class Boolean
    def ===(value)
      value == true || value == false
    end
  end
end
