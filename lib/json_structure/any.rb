module JsonStructure
  class Any < Type
    def ===(_value)
      true
    end
  end
end
