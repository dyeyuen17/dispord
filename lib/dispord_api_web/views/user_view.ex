defmodule DispordApiWeb.UserView do
  use DispordApiWeb, :view

  def render("show.json", %{users: users}) do
    %{data: render_many(users, __MODULE__, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      email: user.email,
      username: user.username,
      setup_password_token: user.setup_password_token,
      reset_password_token: user.reset_password_token,
      email_verified: user.email.verified,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end
end
