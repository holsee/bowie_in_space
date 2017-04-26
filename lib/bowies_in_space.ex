defmodule BowiesInSpace.API do
  use GenServer

  @server __MODULE__

  # Public API

  def start_link() do
    GenServer.start_link(@server, [], name: @server)
  end

  def get() do
    GenServer.call(@server, :get)
  end

  # Callbacks

  def handle_call(:get, _from, state) do
    # TODO: call API
    {:reply, :not_implement, state}
  end

end
