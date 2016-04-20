require 'flickraw'

module WelcomeHelper
  FlickRaw.api_key       = ENV['FLICKR_ID']
  FlickRaw.shared_secret = ENV['FLICKR_SECRET']

  args               = {}
  args[:safe_search] = 2
  args[:text]        = "pies OR pi"
  pie_search         = flickr.photos.search(args)
  pie_ids            = pie_search.map { |p| p.id }
  pie_info           = pie_ids.map { |p| flickr.photos.getInfo(:photo_id => "#{p}")}
  pie_urls           = pie_info.map {|p| FlickRaw.url_s(p)}

  # info = flickr.photos.getInfo(:photo_id => "3839885270")
  # FlickRaw.url_b(info) # => "https://farm3.static.flickr.com/2485/3839885270_6fb8b54e06_b.jpg"
end
