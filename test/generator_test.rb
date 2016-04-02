gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/generator'

class GeneratorTest < Minitest::Test

  def test_it_starts
    generator = Generator.new
  end




end
