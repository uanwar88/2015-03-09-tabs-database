DATABASE = SQLite3::Database.new("/Users/usman/Code/2015-03-09-tabs-database/database/products.db")

DATABASE.execute("CREATE TABLE IF NOT EXISTS products (id INTEGER PRIMARY KEY, name TEXT, general_info TEXT, technical_specs TEXT,
                                location TEXT)")

DATABASE.results_as_hash = true
