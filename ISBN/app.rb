require 'sinatra'
require_relative 'isbn_new.rb' 

get '/' do
	
	erb:isbn_input

end

post '/isbn_num' do
	 num = params['isbn']
	 @result =  results(num)
	 erb:isbn_num
end

# get '/show_isbn' do
# 	erb:show_isbn
# 	result
# end


	

