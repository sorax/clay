# clay

## Setup on macOS using Homebrew

```bash
# Install Command Line Tools (CLT)
$ xcode-select --install

# Install Homebrew
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Elixir
$ brew install elixir

# Install PostgreSQL
$ brew install postgres

# Autostart PostgreSQL
$ brew services start postgres

# Create default user
$ createuser -d postgres
```

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
