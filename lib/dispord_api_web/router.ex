defmodule DispordApiWeb.Router do
  use DispordApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DispordApiWeb do
    pipe_through :api

    resources "/users", UserController
    resources "/conversations", ConversationController
  end
end
