class Document < ActiveRecord::Base
  validates :name, :description, presence: true
  belongs_to :user
  has_attached_file :file
  validates_attachment_content_type :file, :content_type => ["application/pdf"]
end
