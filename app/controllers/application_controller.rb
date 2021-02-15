class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = :fr
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

end
