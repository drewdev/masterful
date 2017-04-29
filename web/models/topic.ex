defmodule Masterful.Topic do
  use Masterful.Web, :model

  schema "topics" do
    field :title, :string
    field :description, :string
    belongs_to :user, Masterful.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title, :description])
  end
end
