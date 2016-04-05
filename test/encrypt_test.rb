gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/Encrypt'
require 'pry'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new("This is a message")
  end

  def test_it_can_be_initialized_with_a_message
    message = "this is a message"
    assert_equal message, @encrypt.message
  end

  def test_it_takes_and_breaks_up_the_string
    assert_equal ["t", "h", "i", "s", " ", "i", "s", " ", "a", " ", "m", "e", "s", "s", "a", "g", "e"], @encrypt.string
  end

  def test_one_letter
    skip
    string = "a"
  end
end
