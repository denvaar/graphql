defmodule GraphqlServer.Content.Post do
  use Ecto.Schema
  import Ecto.Changeset


  schema "posts" do
    field :body, :string
    field :title, :string
    field :published_at, :utc_datetime

    belongs_to :user, GraphqlServer.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :user_id, :published_at])
    |> validate_required([:title, :body])
  end
end
