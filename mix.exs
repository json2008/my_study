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
      aliases: aliases(),
      dialyzer: [
        plt_add_apps: [:ex_unit, :mix]
        # ignore_warnings: "config/dialyzer.ignore"
        # plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
      ]
    ]
  end

  # Specifies which paths to compile per environment.
  # directories to find source files. Defaults to ["lib"].
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
      {:absinthe_plug, ">= 0.0.0"},
      {:absinthe_relay, ">= 0.0.0"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.2", only: [:dev, :test], runtime: false},
      {:ecto_sql, "~> 3.9"},
      {:jet_ext, github: "Byzanteam/jet-ext", branch: "main"},
      {:mimic, ">= 0.0.0", only: :test, runtime: false},
      {:phoenix, "~> 1.7"},
      {:plug_cowboy, "~> 2.6"},
      {:postgrex, ">= 0.0.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"]
      # test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
