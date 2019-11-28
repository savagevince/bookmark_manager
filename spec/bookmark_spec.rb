require './lib/bookmark'

describe Bookmark do
  it 'returns an list of web addresses' do
  expect(Bookmark.all).to include "http://www.google.com"

  end
end
