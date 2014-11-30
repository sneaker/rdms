class Document < ActiveRecord::Base
  validates :name, :description, :filename, :filetype, presence: true
  validates :filesize, numericality: { greater_than_or_equal_to: 0 }
  has_attached_file :file
  validates_attachment_content_type :file, :content_type => ["application/pdf"]
end
