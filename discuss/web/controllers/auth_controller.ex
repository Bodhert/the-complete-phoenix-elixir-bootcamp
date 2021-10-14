defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  plug Ueberauth

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do
    %{"provider" => provider} = params
    user_params = %{token: auth.credentials.token, email: auth.info.email, provider: provider}
    IO.inspect(user_params, label: "user_params")
    IO.inspect(auth, label: "+++auth++")
    IO.inspect(provider, label: "+++params++")
  end
end
