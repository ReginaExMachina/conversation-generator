helpers do 
	def current_user
		if session[:user_id]
			User.find(session[:user_id])
		end
	end
end

############################################################

# MAIN PAGE

# Make @convo or @starter variable and method for this

get '/' do
	erb(:index)
end

############################################################

# LOGIN/LOGOUT ACTIONS

get '/login' do
	erb(:login)
end

post '/login' do
	redirect(to('/'))
end

############################################################

# SIGNUP ACTIONS

get '/signup' do
	erb(:signup)
end

post '/signup' do
	redirect(to('/'))
end

############################################################

# COMMENTS


############################################################

# MISC

get '/about' do
	# This is pure html, so is there a better way to render?
	erb(:about)
end


# Makes header redirect to index

get '/index' do
	redirect(to('/'))
end