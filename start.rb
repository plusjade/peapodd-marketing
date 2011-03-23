require 'rubygems'
require 'sinatra'
require 'erb'
require 'net/http'
require 'uri'
require 'json'

  
get "/" do
  @meta   = ''
  @title  = "home"
  @content = erb :home
  erb :template
end


get '/privacy_policy' do
  @meta   = ''
  @title  = 'Privacy Policy'
  @content = erb :privacy_policy
  erb :template
end   

not_found do
  @meta   = '404 Not Found'
  @title  = '404 Not Found!'
  @content = erb :error_404
  erb :template
end