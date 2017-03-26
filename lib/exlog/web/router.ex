defmodule Exlog.Web.Router do
  use Exlog.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Exlog.Web.Api, as: :api do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      resources "/errors", ErrorsController, only: [:index]
    end
  end

  scope "/", Exlog.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
end
