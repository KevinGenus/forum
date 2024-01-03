defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Dorthy", email: "dorthy@thewiz.com"},
      %{id: 2, name: "ScareCrow", email: "sc@thewiz.com"},
      %{id: 3, name: "Tin-Man", email: "tin.man@thewiz.com"},
      %{id: 4, name: "Lion", email: "thebig_l@thewiz.com"}
    ]

    json(conn, %{users: users})
  end
end
