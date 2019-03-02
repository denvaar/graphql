defmodule GraphqlServerWeb.Router do
  use GraphqlServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: GraphqlServerWeb.Schema,
      json_codec: Jason

    forward "/", Absinthe.Plug,
      schema: GraphqlServerWeb.Schema, json_codec: Jason
  end
end
