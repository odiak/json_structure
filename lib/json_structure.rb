require 'json_structure/type'
require 'json_structure/object'
require 'json_structure/array'
require 'json_structure/number'
require 'json_structure/string'
require 'json_structure/null'
require 'json_structure/any_of'
require 'json_structure/value'

module JsonStructure
  def self.build(&block)
    Builder.new.instance_eval(&block)
  end

  class Builder
    [
      Type,
      Object_,
      Array,
      Number,
      Integer,
      Float,
      String,
      Null,
      AnyOf,
    ].each do |klass|
      method = klass.name
        .gsub(/([a-z])([A-Z])/, '\1_\2')
        .gsub(/_+$/, '')
        .downcase

      define_method(method) do |*args|
        klass.new(*args)
      end
    end
  end
end