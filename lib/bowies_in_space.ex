defmodule BowiesInSpace do
  use GenServer

  @server __MODULE__

  # Public API

  def start_link() do
    GenServer.start_link(@server, [], name: @server)
  end

  def who_in_space do
    GenServer.cast(@server, :who_in_space?)
  end

  # Callbacks

  def handle_cast(:who_in_space?, state) do
    BowiesInSpace.API.get
    |> Enum.map(&print/1)
    {:noreply, state}
  end

  defp print(%{"craft" => craft, "name" => name}) do
    IO.puts("#{craft}\t| #{name}")
  end

end
