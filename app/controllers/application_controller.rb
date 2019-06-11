class ApplicationController < ActionController::Base


	def search
		@posts = Post.search(params[:search])
	end	
	
end

