defmodule DiscussMigration.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DiscussMigration.Blog` context.
  """

  @doc """
  Generate a topic.
  """
  def topic_fixture(attrs \\ %{}) do
    {:ok, topic} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> DiscussMigration.Blog.create_topic()

    topic
  end
end
