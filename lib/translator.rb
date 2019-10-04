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

def get_japanese_emoticon(file_path,emoticon)
  # code goes here
  library = File.read(file_path)
  emoji= library.values.find {|faces| faces[0] == emoticon}
  emoji == nil "Sorry, that emoji was not found!" : emoticon[0]
end

def get_english_meaning
  # code goes here
end