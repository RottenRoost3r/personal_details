require 'sinatra'

get '/' do
  erb :pg1
end

post '/name' do
  puts params
  first_name = params[:first_name]
  last_name = params[:last_name]
  redirect '/pg2?first_name=' + first_name + '&last_name=' + last_name
end

get '/pg2' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  puts "in pg2 params is #{params}"
  erb :pg2, locals: {first_name: first_name, last_name: last_name}
end