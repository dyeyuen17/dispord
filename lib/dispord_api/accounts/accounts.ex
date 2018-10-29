defmodule DispordApi.Accounts do
  alias DispordApi.Accounts.User

  def create_user(attrs) do
    %User{}
    |> User.registration_changeset(attrs)
    |> Repo.insert()
  end

end
