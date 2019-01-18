defmodule CuartoRey.Repo do
  use Ecto.Repo,
    otp_app: :cuarto_rey,
    adapter: Ecto.Adapters.Postgres
end
