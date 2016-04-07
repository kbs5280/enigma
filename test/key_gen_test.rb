gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_gen'
require 'pry'

class KeyGenTest < Minitest::Test

  def setup
    @gen = KeyGen.new
  end

  def test_if_it_has_5_digits
    assert_equal 5, @gen.random_number.length

  end

  def test_it_is_is_a_Fixnum
    assert_equal Fixnum, @gen.key_a.class
    assert_equal Fixnum, @gen.key_b.class
    assert_equal Fixnum, @gen.key_c.class
    assert_equal Fixnum, @gen.key_d.class
  end

  def test_it_is_positive
    refute @gen.key_a < 0
    refute @gen.key_b < 0
    refute @gen.key_c < 0
    refute @gen.key_d < 0

  end

end
