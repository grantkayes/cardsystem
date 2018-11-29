require_relative "rubyexample.rb"

describe Card do
	it 'initializes correctly' do
	  card = Card.new(15.00, 3500, "John", "Doe")
	  expect(card.getApr).to eq(15.00)
	  expect(card.getCreditLimit).to eq(3500)
	  expect(card.getFirstName).to eq("John")
	  expect(card.getLastName).to eq("Doe")
	end
end
