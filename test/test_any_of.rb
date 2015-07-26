require 'minitest_helper'

describe JsonStructure::AnyOf do
  it do
    js = build { any_of(integer, string(max_length: 5), null) }

    assert js === 12223
    assert js === 'foo'
    assert js === nil

    refute js === 9.1
    refute js === 'fooooo'
    refute js === [1]
  end
end
