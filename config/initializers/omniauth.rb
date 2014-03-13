OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['facebook_consumer_key'], ENV['facebook_consumer_secret']
	provider :google_oauth2, ENV['google_consumer_key'], ENV['google_consumer_secret']
	provider :linkedin, ENV['linkedin_consumer_key'], ENV['linkedin_consumer_secret']
	provider :twitter, ENV['twitter_consumer_key'], ENV['twitter_consumer_secret']
	provider :github, ENV['github_consumer_key'], ENV['github_consumer_secret']
end
