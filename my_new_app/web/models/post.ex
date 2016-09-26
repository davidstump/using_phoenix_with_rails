defmodule MyNewApp.Post do
  use MyNewApp.Web, :model

  schema "posts" do
    field :title, :string
    field :author, :string
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :author, :body])
    |> validate_required([:title, :author, :body])
  end
end
