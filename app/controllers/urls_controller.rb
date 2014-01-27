class UrlsController < ApplicationController

	def index
	end

	def preview
	end

	def new
		@link = Url.new
	end

	def create
		new_url = params.require(:link).permit(:address, URL.randomize)
		new_link = URL.create(new_url)
		redirect_to :show
	end

	



end
