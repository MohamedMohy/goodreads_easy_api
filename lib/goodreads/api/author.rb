require_relative 'handler'
module Goodreads
  module Author
    def get_author_info_by_id(id)
      info[:path] = '/author/show/' + id.to_s
      info[:data] = { key: info[:key] }
      uri = build_uri(info)
      call(uri)
    end

    def paginate_into_author_books_by_id(id)
      info[:path] = '/author/list/' + id.to_s
      info[:data] = { key: info[:key] }
      uri = build_uri(info)
      call(uri)
    end

    def find_author_by_name(name)
      name = name.gsub(' ', '+')
      info[:path] = '/api/author_url/' + name
      info[:data] = { key: info[:key] }
      uri = build_uri(info)
      call(uri)
    end

    def get_all_series_by_an_author(id)
      info[:path] = '/series/list/' + id.to_s + '.xml'
      info[:data] = { key: info[:key] }
      uri = build_uri(info)
      call(uri)
    end
  end
end
