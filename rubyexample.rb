class Card
	#creates new account with card
	def initialize(apr, creditLimit, firstName, lastName)
		@firstName = firstName
		@lastName = lastName
		@apr = apr
		@creditLimit = creditLimit
		@cardBalance = 0
		@cardCharges = Hash.new
	end

	def getApr
		return @apr
	end

	def getCreditLimit
		return @creditLimit
	end

	def getFirstName
		return @firstName
	end

	def getLastName
		return @lastName
	end
end

def createAccount
	#creates new card
	firstName = ""
	lastName = ""
	apr = 0.00
	creditLimit = 0

	puts "Creating account.."
	puts "What is the first name of the account holder?"
	firstName = gets.strip

	puts "What is the last name of the account holder?"
	lastName = gets.strip

	puts "What is the APR for this new account?"
	puts "Note: please enter in format XX.XX"
	apr = gets.strip.to_f

	puts "What is the credit limit for this new account?"
	puts "Note: please enter an integer and refrain from using $ symbol"
	creditLimit = gets

	newAccount = Card.new(apr, creditLimit, firstName, lastName)
	
end

puts "Welcome to Card System, would you like to make an account (y/n)?"
selection = gets.strip
if selection == 'y' or selection == 'Y'
	createAccount
end





