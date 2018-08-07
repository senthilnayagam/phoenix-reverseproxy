defmodule PhoenixReverseproxy.PageController do
  use PhoenixReverseproxy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
