json.array!(@articles) do |article|
  json.extract! article, :id, :body, :title, :source_url, :slug, :author_id
  json.url article_url(article, format: :json)
end
