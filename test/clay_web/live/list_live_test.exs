defmodule ClayWeb.ListLiveTest do
  use ClayWeb.ConnCase

  import Phoenix.LiveViewTest
  import Clay.AccountsFixtures
  import Clay.MediaFixtures

  @create_attrs %{title: "some title"}
  @update_attrs %{title: "some updated title"}
  @invalid_attrs %{title: nil}

  defp create_list(_) do
    list = list_fixture()
    %{list: list}
  end

  defp log_in(%{conn: conn}) do
    user = user_fixture()
    %{conn: log_in_user(conn, user)}
  end

  describe "Index" do
    setup [:create_list, :log_in]

    test "lists all lists", %{conn: conn, list: list} do
      {:ok, _index_live, html} = live(conn, ~p"/buecher")

      assert html =~ "Bücherlisten"
      assert html =~ list.title
    end

    test "saves new list", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("a[title=New]") |> render_click() =~
               "Neue Liste"

      assert_patch(index_live, ~p"/buecher/new")

      assert index_live
             |> form("#list-form", list: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#list-form", list: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher")

      html = render(index_live)
      assert html =~ "Liste erstellt"
      assert html =~ "some title"
    end

    test "updates list in listing", %{conn: conn, list: list} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("#lists-#{list.id} a[title=Edit]") |> render_click() =~
               "Liste bearbeiten"

      assert_patch(index_live, ~p"/buecher/#{list}/edit")

      assert index_live
             |> form("#list-form", list: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#list-form", list: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher")

      html = render(index_live)
      assert html =~ "Liste aktualisiert"
      assert html =~ "some updated title"
    end

    test "deletes list in listing", %{conn: conn, list: list} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("#lists-#{list.id} a[title=Delete]") |> render_click()
      refute has_element?(index_live, "#lists-#{list.id}")
    end
  end
end
