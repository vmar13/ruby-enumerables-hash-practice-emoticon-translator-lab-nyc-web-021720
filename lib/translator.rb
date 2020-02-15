require "yaml"
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = {}
  hash["get_meaning"] = {}
  hash["get_emoticon"] = {}
  # binding.pry 
  emoticons.each do |meaning, emoticon_array|
    hash["get_meaning"][emoticon_array[1]] = meaning
    hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
  end 
  hash 
end


# emoticons.each do |japanese_emoticon,meaning|
#         if result['get_meaning'] then
#           expect(result['get_meaning'][japanese_emoticon]).to eq(meaning)
#         else
#           expect(result[:get_meaning][japanese_emoticon]).to eq(meaning)
#         end
#       end
#     end



def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end