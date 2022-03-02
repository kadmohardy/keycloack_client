defmodule KeycloakClientWeb.AuthController do
  use KeycloakClientWeb, :controller

  def login(conn, _) do
    redirect(conn, external: Keycloak.authorize_url!())
  end

  def callback(conn, %{"code" => code}) do
    %{token: token} = Keycloak.get_token!(code: code)

    conn
    |> put_session(:token, token)
    |> redirect(to: "/manage")
  end
end
