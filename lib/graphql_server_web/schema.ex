defmodule GraphqlServerWeb.Schema do
  use Absinthe.Schema
  import_types GraphqlServerWeb.Schema.ContentTypes
  import_types GraphqlServerWeb.Schema.AccountTypes
  import_types Absinthe.Type.Custom

  alias GraphqlServerWeb.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve &Resolvers.Content.list_posts/3
    end

    @desc "Get a user"
    field :user, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.Accounts.find_user/3
    end
  end
end
