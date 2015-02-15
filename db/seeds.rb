# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Document.delete_all

Document.create([{ name: 'doc1', description: 'A first test document', filename: 'testfilename.txt', filesize: 12, filetype: 'txt', created_at: '2014-11-23 11:43:00 UTC', owner: 1}])
Document.create([{ name: 'doc2', description: 'A second test document', filename: 'testfilename2.txt', filesize: 13, filetype: 'txt', created_at: '2014-11-23 11:11:00 UTC', owner: 1}])
Document.create([{ name: 'doc1', description: 'this is a first document', filename: 'testfilename3.txt', filesize: 14, filetype: 'txt', created_at: '2014-11-23 11:34:00 UTC', owner: 1, :file => File.new("#{Rails.root}/db/seed_docs/doc1.pdf")}])
Document.create([{ name: 'doc2', description: 'this is second doc', filename: 'testfilename3.txt', filesize: 14, filetype: 'txt', created_at: '2014-11-23 11:34:00 UTC', owner: 1, :file => File.new("#{Rails.root}/db/seed_docs/doc2.pdf")}])
Document.create([{ name: 'doc3', description: 'this is a third one', filename: 'testfilename3.txt', filesize: 14, filetype: 'txt', created_at: '2014-11-23 11:34:00 UTC', owner: 1, :file => File.new("#{Rails.root}/db/seed_docs/doc1.pdf")}])

User.delete_all

User.create([{ name: 'alice', password_digest: BCrypt::Password.create('secret') }])
User.create([{ name: 'bob', password_digest: BCrypt::Password.create('secret') }])
User.create([{ name: 'dave', password_digest: BCrypt::Password.create('secret') }])

