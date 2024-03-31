# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Company.create(name: 'KPMG')
Company.create(name: 'PwC')

User.create(email: 'accountant@kpmg.com', password: 'password', company: Company.first)
User.create(email: 'manager@kpmg.com', password: 'password', company: Company.first)
User.create(email: 'eavesdropper@pwc.com', password: 'password', company: Company.last)

Quote.create(name: 'First quote', company: Company.first)
Quote.create(name: 'Second quote', company: Company.first)
Quote.create(name: 'Third quote', company: Company.first)

LineItemDate.create(quote: Quote.first, date: Date.current)
LineItemDate.create(quote: Quote.first, date: Date.current + 1.week)
