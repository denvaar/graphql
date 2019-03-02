defmodule GraphqlServer.Content do
  alias GraphqlServer.Repo
  alias GraphqlServer.Content.Post

  def list_posts(), do: Repo.all(Post)
end
