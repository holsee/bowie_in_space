defmodule BowiesInSpace.API do
  use GenServer

  @server __MODULE__
  @url "http://api.open-notify.org/astros.json"

  # Public API

  def start_link() do
    GenServer.start_link(@server, [], name: @server)
  end

  def get() do
    GenServer.call(@server, :get)
  end

  # Callbacks

  def handle_call(:get, _from, state) do
     response = HTTPoison.get!(@url).body |> Poison.decode!
     people = response["people"]
     {:reply, people, state}
  end

end


