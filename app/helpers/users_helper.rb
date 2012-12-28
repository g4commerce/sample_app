module UsersHelper
	# Returns Gravatar for the given user (http://www.gravatar.com)
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?r=g"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
