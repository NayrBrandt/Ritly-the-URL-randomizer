class UrlsController < ApplicationController
	before_filter :signed_in_user, only: [:create, :new, :edit, :update]

	def index
		@shorten = Url.new
	end

	def original
		checkit = params[:id]
		sendto = Url.find(checkit)
		redirect_to "http://#{sendto.link}"
	end

	def create
		new_link = params.require(:url).permit(:link)
		
		if (Url.find_by new_link)["link"] == new_link["link"]
			@shorten = Url.find_by new_link
		else 
			new_link["random_string"] = SecureRandom.urlsafe_base64(6)
			@shorten = Url.create(new_link)
		end
		render :show
	end

	def show
	end

end
