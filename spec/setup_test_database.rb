# frozen_string_literal: true

require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_test')

  connection.exec('TRUNCATE users, peeps, replies;')
end
