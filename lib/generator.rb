require 'pry'

class Generator

  def intialize(key = nil, date = nil)
    @key = key
    @date = date
  end

  def key
    rand_num = rand.to_s[2..6].split('')
  end

  def rotation


  end

  def date
    date = (Time.now.strftime("%d%m%y")).to_i
    date_squared = (date ** 2).to_s.split('')
    last_four = date_squared[-4..-1]
  end

end

gen = Generator.new
puts gen.key
