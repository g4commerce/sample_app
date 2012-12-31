module UsersHelper
	# Returns Gravatar for the given user (http://www.gravatar.com)
	def gravatar_for(user, options = { size: 50 })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?r=g&s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
