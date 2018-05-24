defmodule SimplePhxApp.Car do
  use SimplePhxApp.Web, :model

  schema "cars" do
    belongs_to(:user, SimplePhxApp.User)
    field(:name, :string)
    field(:year, :integer)

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :year])
    |> validate_required([:name, :year])
  end
end
