require 'sinatra'
require 'sinatra/reloader'
require_relative './helpers'


get "/" do
  calculatemonths(2011,9,2100,2)
  erb :content
end