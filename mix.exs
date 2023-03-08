defmodule MyStudy.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_study,
      version: "0.1.0",
      elixir: "~> 1.14",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      alias: aliases()
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MyStudy.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:postgrex, ">= 0.0.0"},
      {:ecto_sql, ">= 0.0.0"},
      {:jason, ">= 0.0.0"},
      {:jet_ext, github: "Byzanteam/jet-ext", branch: "main"},
      {:absinthe, ">= 0.0.0"},
      {:absinthe_plug, ">= 0.0.0"},
      {:absinthe_relay, ">= 0.0.0"},
      {:mimic, ">= 0.0.0", only: :test, runtime: false},
      {:phoenix, ">= 0.0.0"},
      {:plug_cowboy, ">= 0.0.0"},
      {:credo, only: [:dev, :test], runtime: false},
      {:dialyxir, only: [:dev], runtime: false}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
