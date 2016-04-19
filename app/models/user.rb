class User < ActiveRecord::Base
  def self.find_or_create_from_auth(oauth_data)
    user = User.find_or_create_by(provider: oauth_data.provider, uid: oauth_data.uid)

    user.username        = oauth_data.info.nickname
    user.access_token    = oauth_data.credentials.token
    user.access_secret   = oauth_data.credentials.secret
    user.save

    user
  end
end
