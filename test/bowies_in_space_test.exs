defmodule BowiesInSpaceTest do
  use ExUnit.Case
  doctest BowiesInSpace

  test "" do
    BowiesInSpace.start_link(BowiesInSpaceTest.API,
                             BowiesInSpaceTest.View)

    BowiesInSpace.who_in_space

  end
end

defmodule BowiesInSpaceTest.API do

  def get do
    [%{"craft" => "ISS", "name" => "Oleg Novitskiy"},
     %{"craft" => "ISS", "name" => "Thomas Pesquet"},
     %{"craft" => "ISS", "name" => "Peggy Whitson"},
     %{"craft" => "ISS", "name" => "Fyodor Yurchikhin"},
     %{"craft" => "ISS", "name" => "Jack Fischer"}]
  end

end

defmodule BowiesInSpaceTest.View do

  def show(Text) do
    # TODO: something that allows us to verify correct output...
    Text
  end

end
