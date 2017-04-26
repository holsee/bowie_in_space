defmodule BowiesInSpace.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(BowiesInSpace, [BowiesInSpace.API]),
      worker(BowiesInSpace.API, []),
    ]

    opts = [strategy: :one_for_one,
            name: BowiesInSpace.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
