# Used by "mix format"
[
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  import_deps: [:ecto, :ecto_sql, :absinthe, :phoenix],
  locals_without_parens: [schema_type: 1],
  subdirectories: ["priv/*/migrations"]
]
