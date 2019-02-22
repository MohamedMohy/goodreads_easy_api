module Goodreads
  module Books

    def get_review_for_book_by_title(title)
      info[:path] = '/book/title.xml'
      info[:data] = { key: info[:key], title: title }
      uri = build_uri(info)
      call(uri)
    end

    def get_review_for_book_by_author_and_title(author, title)
      info[:path] = '/book/title.xml'
      info[:data] = { key: info[:key], title: title, author: author }
      uri = build_uri(info)
      call(uri)
    end

    def get_reviews_for_given_isbns(isbns)
      info[:path] = '/book/review_counts.json'
      info[:data] = { key: info[:key], isbns: isbns }
      uri = build_uri(info)
      call(uri)
    end

    def get_review_for_book_given_goodreads_book_id(id)
      info[:path] = '/book/show/' + id.to_s + '.xml'
      info[:data] = { key: info[:key] }
      uri = build_uri(info)
      call(uri)
    end

    def get_user_review_for_given_book(user_id, book_id)
      info[:path] = '/review/show_by_user_and_book.xml'
      info[:data] = { key: info[:key], book_id: book_id, user_id: user_id }
      uri = build_uri(info)
      call(uri)
    end

    def find_book_by_title_author_isbn(query)
      query = query.gsub(' ', '+')
      info[:path] = '/search/index.xml'
      info[:data] = { key: info[:key], q: query }
      uri = build_uri(info)
      call(uri)
    end
  end
end
