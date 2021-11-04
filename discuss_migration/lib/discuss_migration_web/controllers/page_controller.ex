defmodule DiscussMigrationWeb.PageController do
  use DiscussMigrationWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
