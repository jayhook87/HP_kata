require './harry_potter_books.rb'

describe HPBooks do
  it 'one copy of a book is 8 dollars' do
    expect(subject.buy_books(1,0,0,0,0)).to eq 8
  end

  it 'two copies of one book is 16 dollars' do
    expect(subject.buy_books(2,0,0,0,0)).to eq 16
  end

  it 'gives a 5% discount for a set of 2' do
  expect(subject.buy_books(1,1,0,0,0)).to eq 15.2
  end

  it 'gives a 10% discount for a set of 3' do
    expect(subject.buy_books(1,1,1,0,0)).to eq 21.6
  end

  it 'gives a 20% discount for a set of 4' do
    expect(subject.buy_books(1,1,1,1,0)).to eq 25.6
  end

  it 'gives a 25% discount for a set of 5' do
    expect(subject.buy_books(1,1,1,1,1)).to eq 30
  end

  it 'gives a 25% discount for a set of 5 and then an additional 10% for a set of 3' do
    expect(subject.buy_books(2,1,2,1,2)).to eq 51.6
  end

  it 'gives a 25% discount for a set of 5 and then an additional 10% for a set of 3 then full cost for 1' do
    expect(subject.buy_books(2,1,2,1,3)).to eq 59.6
  end

  end
