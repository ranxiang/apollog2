atom_feed :language => 'zh-CN' do |feed|
  articles = @articles.limit(10).order('updated_at DESC')
  feed.title 'Apollog2'
  feed.updated articles.first.updated_at unless articles.empty?

  articles.each do |article|
    feed.entry(article) do |entry|
      entry.url article_url(article)
      entry.title article.title
      entry.content(markdown(article.body), :type => 'html')

      # the strftime is needed to work with Google Reader.
      entry.updated(article.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ"))

      entry.author do |author|
        author.name("admin")
      end
    end
  end
end
