defmodule DispordApi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "users" do
    field :email, :string
    field :username, :string
    field :password, :string
    field :setup_password_token, :string
    field :reset_password_token, :string
    field :email_verified, :boolean, default: false

    timestamps()
  end

  def registration_changeset(user, attrs) do
    user
    |> cast(attrs, [:email])
    |> validate_required([:email])
    |> unique_constraint(:email)
    |> generate_setup_token(:setup_password_token)
  end

  defp generate_setup_token(changeset, field) do
    token = binary_part(Base.url_encode64(:crypto.strong_rand_bytes(50)), 0, 50)
    change(changeset, %{field => token})
  end
end
