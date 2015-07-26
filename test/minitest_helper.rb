$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'json_structure'

require 'minitest/autorun'
require 'minitest/spec'

module JSHelper
  def build(&block)
    JsonStructure.build(&block)
  end
end

class Minitest::Spec
  include JSHelper
end
