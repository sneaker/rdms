require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  fixtures :documents

  test 'document information must not be empty' do
    document = Document.new
    assert document.invalid?
    assert document.errors[:name].any?
    assert document.errors[:description].any?
  end

  test 'document file size must not be negative' do
    doc = Document.new
    doc.filesize = -1
    assert doc.invalid?
  end

  test 'document with basic information passes' do
    doc = documents(:rechnung)
    assert doc.valid?
  end
end
