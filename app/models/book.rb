class Book < ActiveRecord::Base
  attr_accessible :author, :title, :cover, :isbn
  mount_uploader :cover, CoverUploader
end
