defmodule ClearbitDemoWeb.Router do
  use ClearbitDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    # plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ClearbitDemoWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    post "/clearbit_search", PageController, :clearbit_search
  end

  # Other scopes may use custom stacks.
  # scope "/api", ClearbitDemoWeb do
  #   pipe_through :api
  # end
end
