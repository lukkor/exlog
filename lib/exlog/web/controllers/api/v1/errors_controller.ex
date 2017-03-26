defmodule Exlog.Web.Api.V1.ErrorsController do
  use Exlog.Web, :controller

  def index(conn, _params) do
    json conn, %{ id: "1-hello" }
  end
end
