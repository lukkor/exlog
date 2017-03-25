defmodule Exlog.PageController do
  use Exlog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
