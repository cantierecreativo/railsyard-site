Railsyard::Backend.define_editor_for Post do
  label :title
  image :cover

  list do
    field :published_at do
      format_as { |date| I18n.l(date, format: :short) }
    end
  end

  edit do
    field :title
    field :string
    image :cover
    field :content, as: :wysihtml5
    field :published_at
  end
end
