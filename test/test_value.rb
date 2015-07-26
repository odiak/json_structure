require 'minitest_helper'

describe JsonStructure::Value do
  it do
    js = build { value('none', 'null', 'nil') }

    assert js === 'none'
    assert js === 'null'
    assert js === 'nil'

    refute js === 'niiiil'
    refute js === [99, 98, 97]
  end
end
