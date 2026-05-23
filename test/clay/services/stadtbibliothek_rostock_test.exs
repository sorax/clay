defmodule Clay.Services.StadtbibliothekRostockTest do
  use Clay.DataCase, async: true

  alias Clay.Media.Credential
  alias Clay.Services

  describe "stadtbibliothek_rostock" do
    # test "a" do
    #   Req.Test.stub(
    #     Clay.Stub.StadtbibliothekRostock,
    #     &Req.Test.transport_error(&1, :econnrefused)
    #   )

    #   response = Services.fetch_loans()

    #   assert {:error, "Request failed", %Req.TransportError{reason: :econnrefused}} = response
    # end

    test "fetch loans returns list of loans" do
      Req.Test.stub(Clay.Stub.StadtbibliothekRostock, Clay.StadtbibliothekRostockPlug)

      credential = %Credential{username: "user", password: "pass"}

      assert [{:ok, loan} | _] = Services.fetch_loans(credential)

      assert %{
               author: "Habschick, Anja",
               author_link: author_link,
               series: "Lucy Longfinger – einfach unfassbar!",
               series_link: series_link,
               episode: "1",
               title: "Gefährliche Geburtstagsgrüße"
             } = loan

      assert author_link =~
               "/Mediensuche/Einfache-Suche?query=SC%7cAuthor%7cAnd%7c3%7cHabschick%2c+Anja&focusModule=extendedsearchmodule"

      assert series_link =~
               "/Mediensuche/Einfache-Suche?query=SC%7cSeriesTitle%7cAnd%7c2%7cLucy+Longfinger+%e2%80%93+einfach+unfassbar!&focusModule=extendedsearchmodule"
    end
  end
end
