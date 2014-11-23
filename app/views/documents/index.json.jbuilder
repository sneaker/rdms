json.array!(@documents) do |document|
  json.extract! document, :id, :name, :description, :filename, :type, :size, :created_at, :owner
  json.url document_url(document, format: :json)
end
