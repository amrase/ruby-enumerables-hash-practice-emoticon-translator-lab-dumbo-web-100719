# require modules here
require 'yaml'
require 'pry'


def load_library(file_path)
  # code goes here
  file=File.read(file_path)
  library= YAML.load(file)
  
  result = {'get_meaning' => {} , 'get_emoticon' => {}}
  library.each do |meaning,emoticons|
    result['get_meaning'][emoticons[1]] = meaning
    result['get_emoticon'][emoticons[0]] = emoticons[1]
  
  end
  result
end

def get_japanese_emoticon(file_path="./lab/emoticons.yml",emoticon)
  # code goes here
  library = load_library(file_path)
  if library["get_emoticon"].include?(emoticon) 
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  emoji = emoticons.find {|name, faces| faces[1] == emoticon }
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[0]
end