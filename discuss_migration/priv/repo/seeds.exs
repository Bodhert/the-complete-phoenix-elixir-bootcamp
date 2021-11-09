for title <- ["Home Improvement", "Power Tools", "Gardening", "Books"] do
  {:ok, _} = DiscussMigration.Catalog.create_category(%{title: title})
end
# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DiscussMigration.Repo.insert!(%DiscussMigration.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
