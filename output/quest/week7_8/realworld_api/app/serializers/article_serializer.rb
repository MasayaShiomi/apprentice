class ArticleSerializer < ActiveModel::Serializer
  attributes :slug, :title, :description, :body, :createdAt, :updatedAt

  def createdAt
    object.created_at
  end

  def updatedAt
    object.updated_at
  end
end
