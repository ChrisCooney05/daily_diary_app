require 'pg'

class DiaryBook

  attr_reader :title

  def initialize(title)
    @title = title
  end

  def self.add(entry, title)
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect(dbname: 'diary_entries_test')
    else
      con = PG.connect(dbname: 'diary_entries')
    end
    con.exec("INSERT INTO diary (entry, title) VALUES ('#{entry}', '#{title}');")
  end

  def self.get
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect(dbname: 'diary_entries_test')
    else
      con = PG.connect(dbname: 'diary_entries')
    end
    result = con.exec("SELECT * FROM diary")
    result.map do |entry|
      DiaryBook.new(entry['title'])
    end
  end

end