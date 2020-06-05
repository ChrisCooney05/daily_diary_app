require 'pg'

p 'Cleaning up test database...'

def clear_db
  con = PG.connect(dbname: 'diary_entries_test')
  con.exec('TRUNCATE TABLE diary;')
end