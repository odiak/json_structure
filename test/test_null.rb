require 'minitest_helper'

describe JsonStructure::Null do
  it do
    js = build { null }

    assert js === nil
    refute js === 'foo'
  end
end
