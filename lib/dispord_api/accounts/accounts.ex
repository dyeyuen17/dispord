defmodule DispordApi.Accounts do
  alias DispordApi.Accounts.User
  alias DispordApi.Repo

  def create_user(attrs) do
    %User{}
    |> User.registration_changeset(attrs)
    |> Repo.insert()
  end

end
