class Document < ActiveRecord::Base
  validates :name, :description, :filename, :filetype, presence: true
  validates :filesize, numericality: { greater_then_or_equal_to: 0 }
end
