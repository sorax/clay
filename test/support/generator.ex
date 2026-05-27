defmodule Clay.Generator do
  @moduledoc false

  use Ash.Generator

  def user(opts \\ []) do
    {:ok, hashed} = AshAuthentication.BcryptProvider.hash("password")

    seed_generator(
      %Clay.Accounts.User{
        email: sequence(:user_email, &"user-#{&1}@example.com"),
        hashed_password: hashed
      },
      overrides: opts
    )
  end

  def credential(opts \\ []) do
    %{
      service: :stadtbibliothek_rostock,
      username: Faker.Internet.user_name(),
      password: Faker.String.base64()
    }
    |> Map.merge(Map.new(opts))
  end

  def list(actor, opts \\ []) do
    changeset_generator(
      Clay.Media.List,
      :create,
      actor: actor,
      defaults: [
        title: StreamData.repeatedly(&Faker.Lorem.sentence/0),
        credentials: []
      ],
      overrides: opts
    )
  end

  def book(list, actor, opts \\ []) do
    changeset_generator(
      Clay.Media.Book,
      :create,
      actor: actor,
      defaults: [
        list_id: list.id,
        title: StreamData.repeatedly(&Faker.Lorem.sentence/0),
        author: StreamData.repeatedly(&Faker.Person.name/0),
        series: StreamData.repeatedly(&Faker.Lorem.word/0),
        episode: StreamData.integer(1..20),
        read: StreamData.boolean()
      ],
      overrides: opts
    )
  end
end
