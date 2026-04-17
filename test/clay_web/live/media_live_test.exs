defmodule ClayWeb.MediaLiveTest do
  use ClayWeb.FeatureCase, async: true

  alias Ash.Error.Invalid
  alias Ash.Error.Query.NotFound
  alias Clay.Media

  test "unauthenticated conn has no access", %{conn: conn} do
    conn
    |> visit(~p"/medien")
    |> assert_path(~p"/sign-in")
  end

  describe "authenticated conn can access routes" do
    setup :register_and_log_in_user

    test "lists all lists", %{conn: conn, user: user} do
      list = Media.create_list!(%{title: "Lorem Ipsum"}, actor: user)

      conn
      |> visit(~p"/medien")
      |> assert_has("title", text: "Medienlisten | hausgedacht")
      |> assert_has("h1", text: "Medienlisten")
      |> assert_has("#lists", text: list.title)
    end

    test "create new list", %{conn: conn} do
      conn
      |> visit(~p"/medien")
      |> click_link("Neu")
      |> assert_path(~p"/medien/neu")
      |> assert_has("title", text: "Liste hinzufügen | hausgedacht")
      |> assert_has("h1", text: "Liste hinzufügen")
      |> fill_in("Titel", with: "Dolor Sit")
      |> click_button("Speichern")
      |> assert_path(~p"/medien")
      |> assert_has("#flash-group", text: "List created successfully")
      |> assert_has("#lists td", text: "Dolor Sit")
    end

    test "edit an existing list", %{conn: conn, user: user} do
      list = Media.create_list!(%{title: "Lorem Ipsum"}, actor: user)

      conn
      |> visit(~p"/medien")
      |> click_link("#lists-#{list.id} a[title='Bearbeiten']", "")
      |> assert_path(~p"/medien/#{list}/bearbeiten")
      |> assert_has("title", text: "Liste bearbeiten | hausgedacht")
      |> assert_has("h1", text: "Liste bearbeiten")
      |> fill_in("Titel", with: "Dolor Sit")
      |> click_button("Speichern")
      |> assert_path(~p"/medien")
      |> assert_has("#flash-group", text: "List updated successfully")
      |> assert_has("#lists-#{list.id}", text: "Dolor Sit")
    end

    test "delete a list listing", %{conn: conn, user: user} do
      list = Media.create_list!(%{title: "Lorem Ipsum"}, actor: user)

      conn
      |> visit(~p"/medien")
      |> assert_has("#lists-#{list.id}", text: "Lorem Ipsum")
      |> click_link("#lists-#{list.id} a[title='Löschen']", "")
      |> refute_has("#lists-#{list.id}")

      assert {:error, %Invalid{errors: [error]}} = Media.get_list_by_id(list.id, actor: user)
      assert %NotFound{resource: Media.List} = error
    end

    test "show list", %{conn: conn, user: user} do
      list = Media.create_list!(%{title: "Lorem Ipsum"}, actor: user)

      conn
      |> visit(~p"/medien")
      |> click_link("#lists-#{list.id} td a", "Anzeigen")
    end
  end
end
