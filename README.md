# get_file_system

This  gem is used for find the directories , sub directories and files of the given path. 
And it show give size of each directory and file in bytes.

Include the gem in your Gemfile of Rails App or just do 

  gem install get_file_system 

In irb or in rails console just require it 

  require 'get_file_system'
  FileSystem.get_file_system('/path_of_your_directory')
  
