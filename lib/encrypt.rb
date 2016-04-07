require 'pry'
require_relative 'offset_gen'
require_relative 'key_gen'


class Encrypt
  attr_reader :message,
              :key,
              :offset,
              :encrypted_message

  def initialize(message)
    @message = message.downcase
    @key = KeyGen.new
    @offset = OffsetGen.new
    @encrypted_message = ""
  end

  CHAR_MAP = ["a","b","c","c","d","e","f","g","h","i","j","k","l","m","n",
              "o","p","q","r","s","t","u","v","w","x","y","z",
              "0","1","2","3","4","5","6","7","8","9"," ",".",","]

  def rotation_a
     @offset.offset_a + @key.key_a
  end

  def rotation_b
     @offset.offset_b + @key.key_b
  end

  def rotation_c
     @offset.offset_c + @key.key_c
  end

  def rotation_d
     @offset.offset_d + @key.key_a
  end

  def string
    @message.chars
  end

  def string_index
    string.map { |letter| CHAR_MAP.index(letter) }
  end


end
