class WelcomeController < ApplicationController
  def landing
    @pies = pie_urls
  end
end
