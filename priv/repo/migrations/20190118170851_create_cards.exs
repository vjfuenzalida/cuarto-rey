defmodule CuartoRey.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :number, :integer
      add :name, :string
      add :action_id, references(:actions, on_delete: :nothing)

      timestamps()
    end

    create index(:cards, [:action_id])
  end
end
