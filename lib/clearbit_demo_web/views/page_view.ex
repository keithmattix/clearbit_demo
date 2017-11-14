defmodule ClearbitDemoWeb.PageView do
  use ClearbitDemoWeb, :view
  require IEx

  def render("person.json", %{person: person}) do
    person |> Map.from_struct
  end

  def csrf_token(conn) do
    Plug.Conn.get_session(conn, :_csrf_token)
  end
end
