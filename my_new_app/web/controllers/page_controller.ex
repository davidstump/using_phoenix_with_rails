defmodule MyNewApp.PageController do
  use MyNewApp.Web, :controller

  def index(conn, params) do
    json conn, Stuff.perform
  end
end
