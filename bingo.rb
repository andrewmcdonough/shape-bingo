#require 'rubygems'
require 'sinatra'

get '/' do
  @shapes = %w(square triangle rectangle circle hexagon pentagon cuboid cube cone cylinder sphere)
  @shapes = @shapes.sort {|a,b| rand <=> rand}
  erb :index
end

get '/2d' do
  @shapes = %w(square triangle rectangle circle hexagon pentagon)
  @shapes = @shapes.sort {|a,b| rand <=> rand}
  erb :index
end

get '/:shape' do
  @shapes = Array.new(6,params[:shape])
  erb :index
end




