require 'minitest_helper'

describe JsonStructure::Object_ do
  describe 'not specifying object structure' do
    it do
      js = build { object }

      assert js === {'abc' => 'xyz'}

      refute js === ['a', 12]
    end
  end

  describe 'specifying object structure' do
    it do
      js = build {
        object(
          foo: string,
          bar: number,
        )
      }

      assert js === {
        'foo' => 'abc',
        'bar' => 12221,
      }

      refute js === {
        'foo' => [1, 2, 3],
        'bar' => 122,
      }
    end
  end
end
