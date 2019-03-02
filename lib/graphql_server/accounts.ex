defmodule GraphqlServer.Accounts do
  alias GraphqlServer.Repo
  alias GraphqlServer.Accounts.User

  def find_user(user_id) do
    Repo.get(User, user_id)
  end
end
