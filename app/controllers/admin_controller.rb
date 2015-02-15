class AdminController < ApplicationController
  def index
    @total_documents = Document.count
  end
end
