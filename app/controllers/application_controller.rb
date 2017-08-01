class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      locale = cookies[:educator_locale].to_sym
    else
      locale = I18n.default_locale
      cookies.permanent[:educator_locale] = locale
    end
    I18n.locale = locale
  end

  def set_locale
    Rails.logger.info "Locale: #{request.location.country_code}"
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      locale = cookies[:educator_locale].to_sym
    else
      begin
        country_code = request.location.country_code
        if country_code
          country_code = country_code.downcase.to_sym
          locale = country_code.eql?(:id) ? :id : :en
        else
          locale = I18n.default_locale # use default locale if cannot retrieve this info
        end
      rescue
        locale = I18n.default_locale
      ensure
        cookies.permanent[:educator_locale] = locale
      end
    end
    I18n.locale = locale
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
