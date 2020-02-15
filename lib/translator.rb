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
  end 
  hash 
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  emoticon_hash["get_emoticon"][emoticon]
  if emoticon_hash["get_emoticon"][emoticon].nil?
    "Sorry, that emoticon was not found"
  end 
end

  #returns the Japanese equivalent of an English grinning (FAILED - 3)
  # returns the Japanese equivalent of an English happy (FAILED - 4)
  # returns the Japanese equivalent of an English sad (FAILED - 5)
  # returns an apology message if the argument is not a known emoticon

# def get_english_meaning
#   # code goes here
# end