# 1. Create Model

# rails g model Model_name attribute1:datatype attribute2:datatype
# rails d model Model_name --> Undo rails g model command

# 2. Modify existing DB table

# rails g migration actionColumnToTableName attribute:datatype
  # rails db:rollback --> Remove from schema the latest migration
  # rails db:migrate:status --> Shows the status of your schema vs your migration files

# 3. validations + test
    # test in rails console or rails c
    # rails c --sandbox for playground
# 4. seeds

# Routes
