defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello
      :world

  """
  def create_deck do
    values = ["ace", "two", "three", "four", "five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    for suit <- suits do
      suit
    end
  end

  def shuffle(deck)do
    deck
    |> Enum.shuffle
  end

  def contains?(deck, card) do
    deck
    |> Enum.member?(card)
  end
end
