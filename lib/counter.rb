require 'pg'

class Counter
  def count
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'count_manager_test')
    else
      connection = PG.connect(dbname: 'count_manager')
    end

    result = connection.exec("SELECT * FROM counter WHERE id=1;")
    result[0]['count'].to_i
  end

  def increment
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'count_manager_test')
    else
      connection = PG.connect(dbname: 'count_manager')
    end

    read_count = count
    result = connection.exec("UPDATE counter SET count = '#{read_count + 1}' WHERE id=1;")
  end

  def self.instance
    @counter ||= Counter.new
  end
end
