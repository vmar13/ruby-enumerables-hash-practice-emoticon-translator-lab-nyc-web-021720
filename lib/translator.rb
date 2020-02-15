require "yaml"
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = {}
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  emoticons.each do |meaning, emoticon_array|
    hash["get_meaning"][emoticon_array[1]] = meaning
    hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
    binding.pry 
  end 
  hash 
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  hash["get_emoticon"][emoticon_array]
end

  #returns the Japanese equivalent of an English grinning (FAILED - 3)
  # returns the Japanese equivalent of an English happy (FAILED - 4)
  # returns the Japanese equivalent of an English sad (FAILED - 5)
  # returns an apology message if the argument is not a known emoticon

# def get_english_meaning
#   # code goes here
# end