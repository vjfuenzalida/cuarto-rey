defmodule CuartoRey.Repo.Migrations.CreateActions do
  use Ecto.Migration

  def change do
    create table(:actions) do
      add :type, :string
      add :description, :string

      timestamps()
    end

  end
end
