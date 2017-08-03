defmodule ExAmpleCell.Web.PageController do
  use ExAmpleCell.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
