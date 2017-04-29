defmodule Masterful.PageController do
  use Masterful.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
