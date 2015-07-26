require 'minitest_helper'

describe 'string type' do
  describe 'without options' do
    it do
      js = build { string }

      assert js === 'strrrr'

      refute js === 1222
    end
  end

  describe 'with :max_length option' do
    it do
      js = build { string(max_length: 5) }

      assert js === 'abcde'

      refute js === 'foooooooo'
    end
  end

  describe 'with :min_length option' do
    it do
      js = build { string(min_length: 4) }

      assert js === 'foobar'

      refute js === 'a'
    end
  end

  describe 'with :pattern option' do
    it do
      js = build { string(pattern: /\A(?:\d+-)*\d+\z/) }

      assert js === '8302-1111'

      refute js === 'foobar'
    end
  end
end
