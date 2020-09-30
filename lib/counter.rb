require 'pg'

class Counter

  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end

  def count
    connection = PG.connect(dbname: 'count_manager')
    result = connection.exec("SELECT * FROM counter WHERE id=1;")
    result[0]['count'].to_i
  end

  def self.instance
    @counter ||= Counter.new
  end
end
