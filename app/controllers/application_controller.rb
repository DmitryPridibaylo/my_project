class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  protected
  def authenticate_maglev_editor(site)
    http_basic_authenticate_or_request_with(
      name: "editor",
      password: "editor",
      )
  end
end
