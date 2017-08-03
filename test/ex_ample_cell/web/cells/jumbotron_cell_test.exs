defmodule ExAmpleCell.Web.JumbotronCellTest do
  use ExAmpleCell.Web.ConnCase
  import ExCell.View
  alias ExAmpleCell.Web.JumbotronCell

  test "it renders the Jumbtron with a custom name" do
    assert cell_to_string(JumbotronCell, name: "ExCell") =~ "Welcome to ExCell"
  end
end
