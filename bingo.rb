require 'rubygems'
require 'sinatra'

get '/' do
  @shapes = %w(square triangle rectangle circle hexagon pentagon cuboid cube cone cylinder sphere)
  @shapes = @shapes.sort {|a,b| rand <=> rand}
  erb :index
end
