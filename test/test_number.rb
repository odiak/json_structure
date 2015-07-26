require 'minitest_helper'

describe JsonStructure::Number do
  describe 'without options' do
    it do
      js = build { number }

      assert js === -100
      assert js === 0.99

      refute js === [128]
    end
  end

  describe 'with :max option' do
    it do
      js = build { number(max: 100) }

      assert js === -100.11
      assert js === 100

      refute js === 321
    end
  end

  describe 'with :min option' do
    it do
      js = build { number(min: 18) }

      assert js === 20
      assert js === 18.0

      refute js === 12
    end
  end
end
