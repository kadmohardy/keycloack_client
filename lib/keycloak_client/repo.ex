defmodule KeycloakClient.Repo do
  use Ecto.Repo,
    otp_app: :keycloak_client,
    adapter: Ecto.Adapters.Postgres
end
