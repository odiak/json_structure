require 'minitest_helper'

describe JsonStructure::Any do
  it do
    js = build { any }

    assert js === {'a' => 1}
    assert js === ['x', 12]
    assert js === 2.1
    assert js === 111
    assert js === 'foobar'
    assert js === true
    assert js === false
    assert js === nil
  end
end
