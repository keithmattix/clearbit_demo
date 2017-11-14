defmodule ClearbitDemoWeb.PageController do
  use ClearbitDemoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def clearbit_search(conn, %{"email" => email}) do
    person = ExClearbit.person(email)
    render conn, "person.json", person: person
  end
end
