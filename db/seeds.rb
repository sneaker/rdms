# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
alice = User.create([{ id: 1, name: 'alice', password_digest: BCrypt::Password.create('secret') }])
bob = User.create([{ id: 2, name: 'bob', password_digest: BCrypt::Password.create('secret') }])
dave = User.create([{ id: 3, name: 'dave', password_digest: BCrypt::Password.create('secret') }])

Document.delete_all

Document.create([{ name: 'doc1', description: 'this is a first document', filename: 'testfilename3.txt', filesize: 14, filetype: 'txt', created_at: '2014-11-23 11:34:00 UTC', user_id: 1, :file => File.new("#{Rails.root}/db/seed_docs/doc1.pdf")}])
Document.create([{ name: 'doc2', description: 'this is second doc', filename: 'testfilename3.txt', filesize: 14, filetype: 'txt', created_at: '2014-11-23 11:34:00 UTC', user_id: 2, :file => File.new("#{Rails.root}/db/seed_docs/doc2.pdf")}])
Document.create([{ name: 'doc3', description: 'this is a third one', filename: 'testfilename3.txt', filesize: 14, filetype: 'txt', created_at: '2014-11-23 11:34:00 UTC', user_id: 3, :file => File.new("#{Rails.root}/db/seed_docs/doc1.pdf")}])


