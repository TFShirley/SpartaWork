class Sandwich

  attr_accessor :id, :title, :description

  def self.open_connection
    PG.connect( dbname: "sandwich")
  end

  # Index page - get all the data
  def self.all
    conn = self.open_connection

    sql = "SELECT * FROM sandwich ORDER BY title"

    results = conn.exec(sql)
    # PG.connect( dbname: "sandwich").exec("SELECT id, title, description FROM sandwich ORDER BY id")

    results.map do |result|
      self.hydrate result
    end
  end

  # SHOW + Edit - Find one piece of data
  def self.find sandwich_id
    conn = self.open_connection

    sql = "SELECT * FROM sandwich WHERE id=#{sandwich_id}  LIMIT 1"

    result = conn.exec(sql)

    sandwich = self.hydrate result[0]
  end

  # save + update data entry
  def save
    conn = Sandwich.open_connection

    if (self.id)
      # update
      sql = "UPDATE sandwich SET title='#{self.title}', description='#{self.description}' WHERE id = #{self.id}"
    else
      # add
      sql = "INSERT INTO sandwich (title, description) VALUES ('#{self.title}','#{self.description}')"
    end

    conn.exec(sql)

  end

  # delete data entry
  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM sandwich WHERE id = #{id}"

    conn.exec(sql)
  end

  def self.hydrate data
    sandwich = Sandwich.new

    sandwich.id = data['id']
    sandwich.title = data['title']
    sandwich.description = data['description']

    sandwich

  end

end
