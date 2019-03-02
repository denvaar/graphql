defmodule GraphqlServerWeb.Resolvers.Accounts do
  def find_user(_parent, %{id: id}, _resolution) do
    case GraphqlServer.Accounts.find_user(id) do
      nil ->
        {:error, "User id #{id} not found"}
      user ->
        {:ok, user}
    end
  end
end
