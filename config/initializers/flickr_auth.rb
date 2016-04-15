Rails.application.config.middleware.use OmniAuth::Builder do
  provider :flickr, ENV['FLICKR_ID'], ENV['FLICKR_SECRET'], scope: 'read'
end
