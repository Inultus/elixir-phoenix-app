defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

#    cards = for suit <- suits do
#              for value <- values do
#                "#{value} of #{suit}"
#              end
#          end
#    List.flatten(cards)

    for suit <- suits, value <- values do
            "#{value} of #{suit}"
    end
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

end
