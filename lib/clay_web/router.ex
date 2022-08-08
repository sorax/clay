defmodule ClayWeb.Router do
  use ClayWeb, :router

  import Phoenix.LiveDashboard.Router
  import ClayWeb.UserAuth
  import ClayWeb.UserAccess

  alias Plugs.Redirect

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {ClayWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
    plug ClayWeb.Plugs.Log
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug ClayWeb.Plugs.Log
  end

  scope "/", ClayWeb, host: "sorax.net" do
    pipe_through :browser

    # get "/", Redirect, host: "https://hausgedacht.de"
    get "/*ignore", Redirect, host: "https://hausgedacht.de"
  end

  scope "/", ClayWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/impressum", PageController, :imprint
    get "/datenschutz", PageController, :privacy

    live "/claudia", BlogLive.List, :claudia

    live "/games/eyeballpaul", GameLive.Eyeballpaul, :index
    live "/games/spacegame", GameLive.Spacegame, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ClayWeb do
  #   pipe_through :api
  # end

  # Admin-only section
  scope "/", ClayWeb do
    pipe_through [:browser, :require_admin]

    live "/files/list", FileLive.List, :index
    live "/files/upload", FileLive.Upload, :index

    live "/requests", RequestLive.Index, :index

    live "/posts", PostLive.Index, :index
    live "/posts/new", PostLive.Index, :new
    live "/posts/:id/edit", PostLive.Index, :edit

    live "/posts/:id", PostLive.Show, :show
    live "/posts/:id/show/edit", PostLive.Show, :edit

    # Enable LiveDashboard
    live_dashboard "/dashboard", metrics: Telemetry
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end

  ## Authentication routes

  scope "/", ClayWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    get "/users/register", UserRegistrationController, :new
    post "/users/register", UserRegistrationController, :create
    get "/users/log_in", UserSessionController, :new
    post "/users/log_in", UserSessionController, :create
    get "/users/reset_password", UserResetPasswordController, :new
    post "/users/reset_password", UserResetPasswordController, :create
    get "/users/reset_password/:token", UserResetPasswordController, :edit
    put "/users/reset_password/:token", UserResetPasswordController, :update
  end

  scope "/", ClayWeb do
    pipe_through [:browser, :require_authenticated_user]

    get "/users/settings", UserSettingsController, :edit
    put "/users/settings", UserSettingsController, :update
    get "/users/settings/confirm_email/:token", UserSettingsController, :confirm_email
  end

  scope "/", ClayWeb do
    pipe_through [:browser]

    delete "/users/log_out", UserSessionController, :delete
    get "/users/confirm", UserConfirmationController, :new
    post "/users/confirm", UserConfirmationController, :create
    get "/users/confirm/:token", UserConfirmationController, :edit
    post "/users/confirm/:token", UserConfirmationController, :update
  end
end
