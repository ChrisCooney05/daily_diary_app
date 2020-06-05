require 'diary_book'

describe DiaryBook do
  it 'Should have a DiaryBook class' do
    expect(DiaryBook).to respond_to(:new)
  end

  it 'Should respond to being called with a single argument' do
    expect(DiaryBook).to receive(:add).with('an argument', 'a title')
    DiaryBook.add('an argument', 'a title')
  end

  describe '.get/.add' do
    it 'Should add an entry to the database and display a title on main index' do
      DiaryBook.add('test diary entry', 'title')
      DiaryBook.add('test diary entry2', 'title2')
      DiaryBook.add('test diary entry3', 'title3')
      diary_entry = DiaryBook.get
      expect(diary_entry.first.title).to eq ('title')
      expect(diary_entry.length).to eq (3)
    end
  end
end
