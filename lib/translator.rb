# require modules here
require 'yaml'
require 'pry'


def load_library
  # code goes here
  emojis = "YAML".load_file('./lib/emoticons.yml')
  
  emoji_lib = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  emoji.each do |meaning,value|
    english = value[0]
    japanese = value[1]
    emoji_lib['get_meaning'][japanese]=meaning
    emoji_lib['get_emoticon'][english]=japanese
  end
  emoji_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end