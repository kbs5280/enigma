require 'pry'
require_relative 'offset_gen'
require_relative 'key_gen'


class Encrypt
  attr_reader :message,
              :key,
              :offset

  def initialize(message)
    @message = message.downcase
    @key = KeyGen.new
    @offset = OffsetGen.new
    #@encrypted_message = ""
  end

  binding.pry

  CHAR_SET = ["a","b","c","c","d","e","f","g","h","i","j","k","l","m","n",
              "o","p","q","r","s","t","u","v","w","x","y","z",
              "0","1","2","3","4","5","6","7","8","9"," ",".",","]

  def string
    @message.downcase.chars
  end

  def rotate_a
     @offset.offset_a + @key.key_a
  end

  def rotate_b
     @offset.offset_b + @key.key_b
  end

  def rotate_c
     @offset.offset_c + @key.key_c
  end

  def rotate_d
     @offset.offset_d + @key.key_a
  end

  # def the_swap(string)
  #   string.each_slice(4) do |slice|
  #     binding.pry
  #     index_a = CHAR_SET[slice[0]].index
  #     index_b = CHAR_SET[slice[1]].index
  #     index_c = CHAR_SET[slice[2]].index
  #     index_d = CHAR_SET[slice[3]].index
  #
  #     rotated_a = CHAR_SET.rotate(rotate_a)
  #     rotated_b = CHAR_SET.rotate(rotate_b)
  #     rotated_c = CHAR_SET.rotate(rotate_c)
  #     rotated_d = CHAR_SET.rotate(rotate_d)
  #
  #     new_a = rotated_a[index_a]
  #     @encrypted_message += new_a
  #     new_b = rotated_b[index_b]
  #     @encrypted_message += new_b
  #     new_c = rotated_c[index_c]
  #     @encrypted_message += new_c
  #     new_d = rotated_d[index_d]
  #     @encrypted_message += new_d
  #   end
  # end
  #


end

encrypt = Encrypt.new("Here's a MESSAGE")
puts encrypt.message
