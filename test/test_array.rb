require 'minitest_helper'

describe JsonStructure::Array do
  describe 'not specifying element type' do
    it do
      js = build { array }

      assert js === [1, 3.14, {'a' => 12}]

      refute js === {'name' => 'Tom'}
    end
  end

  describe 'specifying element type' do
    it do
      js = build { array(string) }

      assert js === ['foo', 'bar', '']

      refute js === ['str', 'but', 99]
    end
  end

  describe 'specifying pretty complex element type' do
    it do
      js = build {
        array(
          string(max_length: 10) | object(name: string)
        )
      }

      assert js === ['foooo', {'name' => 'baaaar'}, 'oops']

      refute js === ['wow', '0123456789abcdef', {'id' => 2221}]
    end
  end
end
