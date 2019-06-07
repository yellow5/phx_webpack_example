defmodule PhxWebpackExampleWeb.PageController do
  use PhxWebpackExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
