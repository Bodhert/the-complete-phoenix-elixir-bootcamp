defmodule Cards do
  @moduledoc """
    Provide methods for creating and handling a deck of cards
  """

  @doc """

  Return a list of strings representing the playing cards


  """
  def create_deck do
    values = ["ace", "two", "three", "four", "five", "six"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck)do
    deck
    |> Enum.shuffle
  end

  @doc """
  Determines whether a Deck contains a Given card
  ### Examples
      iex> deck = Cards.create_deck
      iex> Cards.contains?(deck, "ace of Spades")
      true
  """

  def contains?(deck, card) do
    deck
    |> Enum.member?(card)
  end

  @doc """
    Divides a deck into a hand and the remainder of the deck the `hand_size`
    indicades how many cards should be in hand

  ## Examples

      iex> deck = Cards.create_deck
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
      ["ace of Spades"]

  """


  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary =:erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} ->
        :erlang.binary_to_term(binary)
      {:error, :enoent} -> "FILE DOES NOT EXIST"
    end
  end

  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end

end
