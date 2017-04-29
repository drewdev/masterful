defmodule Masterful.Vote do
  use Masterful.Web, :model

  schema "votes" do
    belongs_to :topic, Masterful.Topic
    belongs_to :user, Masterful.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [])
    |> validate_required([])
  end
end
