require './lib/bookmark'

describe Bookmark do
  it 'returns an array of web addresses' do
  expect(Bookmark.all).to eq ["http://www.github.com", "http://bbc.co.uk", "http://www.makersacademy.com"]
  end
end
