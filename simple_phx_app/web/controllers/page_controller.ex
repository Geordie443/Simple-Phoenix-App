defmodule SimplePhxApp.PageController do
  use SimplePhxApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
