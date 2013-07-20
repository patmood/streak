Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['STREAK_CONSUMER_KEY'], ENV['STREAK_CONSUMER_SECRET']
end