# ---
# Excerpted from "Programming Ecto",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/wmecto for more book information.
# ---
# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
import Config

config :my_study, MyStudy.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  adapter: Ecto.Adapters.Postgres,
  # username: your_username,
  # password: your_password,
  database: "my_study_test",
  hostname: "localhost"
