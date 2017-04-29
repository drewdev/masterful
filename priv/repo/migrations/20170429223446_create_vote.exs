defmodule Masterful.Repo.Migrations.CreateVote do
  use Ecto.Migration

  def change do
    create table(:votes) do
      add :topic_id, references(:topics, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:votes, [:topic_id])
    create index(:votes, [:user_id])

  end
end
