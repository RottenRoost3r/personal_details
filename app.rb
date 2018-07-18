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

post '/address' do
  puts "#{params} is params in post adress"
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  redirect '/favnums?first_name=' + first_name + '&last_name=' + last_name + '&street=' + street + '&city=' + city + '&state=' + state + '&zip=' + zip
end

get '/favnums' do
  puts "#{params} fav nums is"
  
end