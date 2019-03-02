defmodule GraphqlServerWeb.Resolvers.Content do
  def list_posts(_parent, _args, _resolution) do
    {:ok, GraphqlServer.Content.list_posts()}
  end
end
