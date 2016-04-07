require 'pry'

class OffsetGen

  def initialize
    date = (Time.now.strftime("%d%m%y")).to_i
    date_squared = (date ** 2).to_s.split('')
    @last_four = date_squared[-4..-1]
  end

  binding.pry
  def offset_a
    @last_four[0].to_i
  end

  def offset_b
    date = (Time.now.strftime("%d%m%y")).to_i
    date_squared = (date ** 2).to_s.split('')
    last_four = date_squared[-4..-1]
    last_four[1].to_i
  end

  def offset_c
    date = (Time.now.strftime("%d%m%y")).to_i
    date_squared = (date ** 2).to_s.split('')
    last_four = date_squared[-4..-1]
    last_four[2].to_i
  end

  def offset_d
    date = (Time.now.strftime("%d%m%y")).to_i
    date_squared = (date ** 2).to_s.split('')
    last_four = date_squared[-4..-1]
    last_four[-1].to_i
  end
end

offset_c = OffsetGen.new.offset_c
puts offset_c
