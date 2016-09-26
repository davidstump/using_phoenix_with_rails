class PostsController < ApplicationController
  include ReverseProxy::Controller
  before_filter :proxy_to_phoenix

  def index
  end

  def show
  end
end
