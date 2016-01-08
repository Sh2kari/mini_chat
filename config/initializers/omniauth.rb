Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'],
           scope: 'public_profile', display: 'page', image_size: 'square'

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'], image_size: 'normal'
end
