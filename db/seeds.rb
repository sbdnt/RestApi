# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Create api sample data
alice = User.create(name: 'Alice')

alice.accounts.create(
	name: "A銀行",
  balance: 20000
)

alice.accounts.create(
	name: "C信用金庫",
  balance: 120000
)

alice.accounts.create(
	name: "Bカード",
  balance: 200
)




