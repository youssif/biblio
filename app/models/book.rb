class Book < ActiveRecord::Base
  attr_accessible :author, :title, :cover, :isbn
  mount_uploader :cover, CoverUploader
  belongs_to :users

  after_create :fetch_info

  def fetch_info
    @client = Goodreads.new(:api_key => 'pmws8njcRAMez3fttw0MA')
    book_info = @client.book_by_isbn(isbn)
  end
  
end
