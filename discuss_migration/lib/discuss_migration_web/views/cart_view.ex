defmodule DiscussMigrationWeb.CartView do
  use DiscussMigrationWeb, :view
  alias DiscussMigration.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val,2)}"

end
