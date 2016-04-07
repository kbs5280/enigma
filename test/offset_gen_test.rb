gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_gen'
require 'pry'

class OffsetGenTest < Minitest::Test

  def setup
    @gen = OffsetGen.new
  end

  def test_it_is_is_a_Fixnum
    assert_equal Fixnum, @gen.offset_a.class
    assert_equal Fixnum, @gen.offset_b.class
    assert_equal Fixnum, @gen.offset_c.class
    assert_equal Fixnum, @gen.offset_d.class
  end

  def test_it_is_positive
    refute @gen.offset_a < 0
    refute @gen.offset_b < 0
    refute @gen.offset_c < 0
    refute @gen.offset_d < 0
  end

end
