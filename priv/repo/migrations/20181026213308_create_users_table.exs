defmodule DispordApi.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :username, :string
      add :email, :string, null: false
      add :password, :string, null: true
      add :reset_password_token, :string, null: true
      add :setup_password_token, :string, null: true
      add :email_verified, :boolean, default: false

      timestamps()
    end

    create unique_index(:users, [:email])
    create unique_index(:users, [:username])
  end
end
