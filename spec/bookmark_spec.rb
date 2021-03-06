# frozen_string_literal: true

require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns an list of web addresses' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES
      ('http://www.makersacademy.com'),('http://www.destroyallsoftware.com'),
      ('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include 'http://www.makersacademy.com'
      expect(bookmarks).to include 'http://www.destroyallsoftware.com'
      expect(bookmarks).to include 'http://www.google.com'
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://testbookmark.com')

      expect(Bookmark.all).to include 'http://testbookmark.com'
    end
  end
end
