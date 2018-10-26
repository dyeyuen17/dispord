defmodule DispordApiWeb.Router do
  use DispordApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DispordApiWeb do
    pipe_through :api
  end
end
