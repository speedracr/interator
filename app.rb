require 'sinatra'
require 'sinatra/reloader'
require_relative './helpers'


get "/" do
  puts "<h1>Hello world!</h1>"
end

get "/calculate" do
  calculatemonths(2011,9,2100,2)
  erb :content
end