defmodule MyStudy.RepoCase do
  use ExUnit.CaseTemplate
  
  using do
    quote do
      alias MyStudy.Repo
      
      import Ecto
      import Ecto.Query
      import MyStudy.RepoCase
    
    # and any other stuff
    end
  end
  
  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(MyStudy.Repo)
    
    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(MyStudy.Repo, {:shared, self()})
    end
    
    :ok
  end
end
