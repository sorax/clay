defmodule ClayWeb.ListLiveTest do
  use ClayWeb.FeatureCase, async: true

  test "unauthenticated conn has no access", %{conn: conn} do
    conn
    |> visit(~p"/medien")
    |> assert_path(~p"/sign-in")
  end

  describe "authenticated conn can access routes" do
    setup :register_and_log_in_user

    test "lists all lists", %{conn: conn} do
      conn
      |> visit(~p"/medien")
      |> assert_has("title", text: "Medien Listen | hausgedacht")

      #       |> assert_has("h1", text: "Kurse")
      #       |> assert_has("#courses", text: Integer.to_string(course.id))
    end
  end
end
