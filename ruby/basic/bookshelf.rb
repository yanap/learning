# coding: utf-8

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end

class BookShelf
  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end

  def search(keyword)
    result = search_by_title_or_author(keyword)

    if result.size == 0
      return '検索結果は0件です'
    else
      return <<-EOF
#{result.size}件ヒットしました
#{result.map{|r| "#{r.title}: #{r.author}著" }.join("\n")}
      EOF
    end
  end

  private
  def search_by_title_or_author(keyword)
    result = @books.select do |book|
      book.title =~ /#{keyword}/
    end
    result += @books.select do |book|
      book.author =~ /#{keyword}/
    end
  end
end
