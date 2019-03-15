class Sandwich

  attr_accessor :id, :title, :description

  def self.open_connection
    PG.connect( dbname: "sandwich")
  end


  def self.all
    conn = self.open_connection

    sql = "SELECT id, title, description FROM sandwich ORDER BY id"
    # Connect to the database and execute this sql query
    results = conn.exec(sql)
    # Take the weird result from the query and sort it out
    sandwiches = results.map do |item|
      self.hydrate item
    end
  # Finally return
  sandwiches
  end

  # SHOW + EDIT
  def self.find sandwich_id
    conn = self.open_connection
    sql = "SELECT * FROM sandwich WHERE id=#{sandwich_id}"
    result = conn.exec(sql)

    sandwich = self.hydrate result[0]
  end

  # ADD + UPDATE
  def save
    conn = Sandwich.open_connection

    if (self.id)
      # UPDATE
      sql = "UPDATE sandwich SET title='#{self.title}', description='#{self.description}' WHERE id=#{self.id}"
    else
      # ADD
      sql = "INSERT INTO sandwich (title, description) VALUES ('#{self.title}','#{self.description}')"
    end
    conn.execute(sql)
  end

  # DELETE
  def self.destroy id
    conn = self.open_connection
    sql = "DELETE FROM sandwich WHERE id=#{id}"
    conn.exec(sql)
  end


  def self.hydrate sandwich_data
    sandwich = Sandwich.new

    sandwich.id = sandwich_data['id']
    sandwich.title = sandwich_data['title']
    sandwich.description = sandwich_data['description']

    sandwich
  end

end
