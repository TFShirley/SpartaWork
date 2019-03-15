class Sandwich

  attr_accessor :id, :title, :description

  def self.open_connection
    PG.connect( dbname: "sandwich")
  end

  def self.all
    con = self.open_connection

    sql = "SELECT id, title, description FROM sandwich ORDER BY id"

    results = con.exec(sql)

    sandwiches = results.map do |item|
      self.hydrate item
    end

    sandwiches
  end

  # SHOW + EDIT ~ Find one piece of data
  def self.find sandwich_id
    con = self.open_connection

    sql = "SELECT id, title, description FROM sandwich WHERE id=#{sandwich_id}"

    result = con.exec(sql)

    sandwich = self.hydrate result[0]
  end

  # save + update data entry
  def save
    con = Sandwich.open_connection

    if (self.id)
      # update
      sql = "UPDATE sandwich SET title='#{self.title}', description='#{self.description}' WHERE id = #{self.id}"
    else
      # add
      sql = "INSERT INTO sandwich (title, description) VALUES ('#{self.title}','#{self.description}')"
    end


    con.exec(sql)

  end

  # delete data entry
  def self.destroy id
    con = self.open_connection

    sql = "DELETE FROM sandwich WHERE id = #{id}"

    con.exec(sql)
  end

  def self.hydrate sandwich_data
    sandwich = Sandwich.new

    sandwich.id = sandwich_data['id']
    sandwich.title = sandwich_data['title']
    sandwich.description = sandwich_data['description']
    sandwich
  end

end
