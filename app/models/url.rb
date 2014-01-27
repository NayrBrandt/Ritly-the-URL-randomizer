class Url < ActiveRecord::Base

	def self.new_random user_link
		Url.create(user_link, randomize)
		
	end

	def self.randomize
		SecureRandom.urlsafe_base64(6)
	end

end
