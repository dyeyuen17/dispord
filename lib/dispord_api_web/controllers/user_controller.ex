defmodule DispordApiWeb.UserController do
	use DispordApiWeb, :controller
  alias DispordApi.Accounts

  def create(conn, %{"user" => user_params}) do
    case Accounts.create_user(user_params) do
      {:ok, user} ->
        conn
        |> put_status(:created)
        |> render("show.json", user: user)
    end
  end
end
