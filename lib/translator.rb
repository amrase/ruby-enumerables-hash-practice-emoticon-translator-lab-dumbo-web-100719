# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  # code goes here
  file=File.read(file_path)
  emoticons = YAML.load(file)
  
  library = {'get_meaning' => {} , 'get_emoticon' => {}}
  librart.each do |meaning,value|
  
  
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end