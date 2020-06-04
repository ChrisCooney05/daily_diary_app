require 'pg'

class DiaryBook

  def self.add(entry)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'diary_entries_test')
    else
      connection = PG.connect(dbname: 'diary_entries')
    end

    connection.exec("INSERT INTO diary (entry) VALUES ('#{entry}');")
  end

end