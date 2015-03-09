class Product
  attr_accessor :name, :general_info, :technical_specs, :location

  def initialize(options)
    @id = options["id"]
    @name = options["name"]
    @general_info = options["general_info"]
    @technical_specs = options["technical_specs"]
    @location = options["location"]
  end

  def insert
    DATABASE.execute("INSERT INTO products (name, general_info, technical_specs, location)
    VALUES ('#{@name}', '#{@general_info}', '#{@technical_specs}', '#{@location}')")
    @id = DATABASE.last_insert_row_id
  end

  def update
    DATABASE.execute("UPDATE products SET name = '#{@name}', general_info = '#{@general_info}', technical_specs = '#{@technical_specs}',
     location = '#{@location}' WHERE id = #{@id}")
   end

   def self.fetch_all
     DATABASE.execute("SELECT * FROM products")
   end

   def self.find(id)
     result = DATABASE.execute("SELECT * FROM products WHERE id = #{id}");

     if result.length >= 1
       self.new(result[0])
     end
   end
 end
