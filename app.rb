require 'sinatra'

class HiSinatra < Sinatra::Base
	get '/' do 
		"Hi Sinatra!"
	end

	get '/asdfasdf' do
		"Hello World!"
	end

	get '/:age' do
		"Hi, I'm #{params[:age]} years old"
	end

end
