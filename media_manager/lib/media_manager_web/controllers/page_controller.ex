defmodule MediaManagerWeb.PageController do
  use MediaManagerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
