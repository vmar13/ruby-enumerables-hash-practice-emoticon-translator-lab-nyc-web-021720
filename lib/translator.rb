require "yaml"
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = {}
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  binding.pry 
  # emoticons.each do |
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end