class PhoenixController < ApplicationController
  include ReverseProxy::Controller

  def index
    reverse_proxy "http://localhost:4000", path: "/" do |config|
      config.on_missing do |code, response|
        redirect_to root_url and return
      end

      config.on_complete do |code, response|
        @message = response.body
      end
    end

    headers["Content-Type"] = "text/html"
  end
end
