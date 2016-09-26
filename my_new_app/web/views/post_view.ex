defmodule MyNewApp.PostView do
  use MyNewApp.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, MyNewApp.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, MyNewApp.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      author: post.author,
      body: post.body}
  end
end
