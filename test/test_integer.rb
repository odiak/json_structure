require 'minitest_helper'

describe JsonStructure::Integer do
  it do
    js = build { integer(min: 0, max:10) }

    assert js === 0
    assert js === 10

    refute js === 'str'
    refute js === 0.5
    refute js === 10.5
  end
end
