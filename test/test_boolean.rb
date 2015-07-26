require 'minitest_helper'

describe JsonStructure::Boolean do
  it do
    js = build { boolean }

    assert js === true
    assert js === false

    refute js === 122
    refute js === nil
  end
end
