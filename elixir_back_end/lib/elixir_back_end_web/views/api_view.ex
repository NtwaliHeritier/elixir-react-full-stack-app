defmodule ElixirBackEndWeb.ApiView do
    use ElixirBackEndWeb, :view
    alias __MODULE__

    def render("show.json", %{photos: photos}) do
        %{data: render_many(photos, ApiView, "photo.json")}
    end

    def render("photo.json", %{api: photo}) do
        %{
            title: photo["title"],
            thumbnailUrl: photo["thumbnailUrl"]
        }
    end
end