module JsonStructure
  class Object_ < Type
    def initialize(hash = nil)
      @hash = hash && hash.each_with_object({}) do |(key, value), new_hash|
        new_hash[key.to_s] = value
      end
    end

    def ===(value)
      return false unless value.is_a?(Hash)

      if @hash
        return @hash.all? do |key, type|
          type === value[key]
        end
      end

      true
    end
  end
end
