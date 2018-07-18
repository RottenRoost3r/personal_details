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
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  puts "#{params} fav nums is"
  erb :favnums, locals: {first_name: first_name, last_name: last_name, street: street, city: city, state: state, zip: zip}
end

post '/favnums' do
  puts "#{params} is params in favnums"
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  num1 = params[:num1]
  num2 = params[:num2]
  num3 = params[:num3]
  redirect '/last_page?first_name=' + first_name + '&last_name=' + last_name + '&street=' + street + '&city=' + city + '&state=' + state + '&zip=' + zip + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3
end

get '/last_page' do
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  num1 = params[:num1]
  num2 = params[:num2]
  num3 = params[:num3]
  puts "#{params} results is "
  erb :last_page, locals: {first_name: first_name, last_name: last_name, street: street, city: city, state: state, zip: zip, num1: num1, num2: num2, num3: num3}
end

post '/last_page' do 
  puts "#{params} is params in last page"
  first_name = params[:first_name]
  last_name = params[:last_name]
  street = params[:street]
  city = params[:city]
  state = params[:state]
  zip = params[:zip]
  num1 = params[:num1]
  num2 = params[:num2]
  num3 = params[:num3]
end