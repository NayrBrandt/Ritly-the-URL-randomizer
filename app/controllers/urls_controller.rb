class UrlsController < ApplicationController

	def index
		@address = Url.new
	end

	def preview
	end

	def create
		new_link = params.require(:url).permit(:link)
		new_link["random_string"] = SecureRandom.urlsafe_base64(6)
		@address = Url.create(new_link)
		render :show
		
	end

	def show
	end



end
