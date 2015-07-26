require 'minitest_helper'

describe JsonStructure do
  it 'has a version number' do
    refute_nil ::JsonStructure::VERSION
  end
end
