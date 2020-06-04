require 'diary_book'

describe DiaryBook do
  it 'Should have a DiaryBook class' do
    expect(DiaryBook).to respond_to(:new)
  end

  it 'Should respond to being called with a single argument' do
    expect(DiaryBook).to receive(:add).with('an argument')
    DiaryBook.add('an argument')
  end
end