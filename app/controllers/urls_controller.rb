class UrlsController < ApplicationController

	def index
		@address = Url.new
	end

	def preview
	end

	def create
		@address = Url.new_random(params[:link])
		redirect_to :show
	end

	def show
	end



end
