defmodule MyStudy.Repo do
  use Ecto.Repo,
    otp_app: :my_study,
    adapter: Ecto.Adapters.Postgres
end
