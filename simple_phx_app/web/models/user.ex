defmodule SimplePhxApp.User do
  use SimplePhxApp.Web, :model

  schema "users" do
    has_many(:cars, SimplePhxApp.Car)
    field(:name, :string)
    field(:email, :string)

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :email])
    |> validate_required([:name, :email])
  end
end
