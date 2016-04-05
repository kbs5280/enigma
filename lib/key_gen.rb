require 'pry'

class KeyGen
  attr_reader :rand_num

  def initialize
    @rand_num = random_number
  end

  def random_number
    rand.to_s[2..6].split('')
  end

  def key_a
    @rand_num[0..1].join.to_i

  end

  def key_b
    @rand_num[1..2].join.to_i
  end

  def key_c
    @rand_num[2..3].join.to_i
  end

  def key_d
    @rand_num[3..4].join.to_i
  end

end

gen = KeyGen.new
p gen.rand_num
p gen.key_a
p gen.key_b
p gen.key_c
p gen.key_d
