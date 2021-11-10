defmodule DiscussMigrationWeb.CartController do
  use DiscussMigrationWeb, :controller
  alias DiscussMigration.ShoppingCart

  def show(conn, _params) do
    render(conn, "show.html", changeset: ShoppingCart.change_cart(conn.assigns.cart))
  end

  def update(conn, %{"cart" => cart_params}) do
    case ShoppingCart.update_cart(conn.assigns.cart, cart_params) do
      {:ok, cart} ->
        redirect(conn, to: Routes.cart_path(conn, :show))

      {:error, _changeset} ->
        conn
        |> put_flash(:error, "there was an error updating tour car")
        |> redirect(to: Routes.cart_path(conn, :show))
    end
  end
end
