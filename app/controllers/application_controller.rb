class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  protected
  def authenticate_maglev_editor(site)
    http_basic_authenticate_or_request_with(
      name: ENV.fetch('MAGLEV_EDITOR_USERNAME'),
      password: ENV.fetch('MAGLEV_EDITOR_PASSWORD'),
      )
  end
end
