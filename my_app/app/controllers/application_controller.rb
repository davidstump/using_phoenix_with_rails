class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def proxy_to_phoenix
    reverse_proxy "http://localhost:4000" do |config|
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
  end
end
