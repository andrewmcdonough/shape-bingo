#require File.dirname(__FILE__) + "/lib/main"
set :app_file, File.expand_path(File.dirname(__FILE__) + '/bingo.rb')
set :public,   File.expand_path(File.dirname(__FILE__) + '/lib/public')
set :views,    File.expand_path(File.dirname(__FILE__) + '/lib/views')
set :env,      :production
disable :run, :reload
set :app_file, File.expand_path(File.dirname(__FILE__) + '/bingo.rb')
run Sinatra::Application
