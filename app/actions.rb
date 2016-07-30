helpers do 
	def current_user
		if session[:user_id]
			User.find(session[:user_id])
		end
	end
end

############################################################

# MAIN PAGE

# Make @convo variable and method for this
get '/' do
	erb(:index)
end

############################################################

# LOGIN/LOGOUT ACTIONS