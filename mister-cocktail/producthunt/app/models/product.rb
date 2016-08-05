class Product < ActiveRecord::Base
  has_attachments :photos
end
