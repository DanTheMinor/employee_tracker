
rake db:create
rake db:create_migration NAME=create_employees
rake db:create_migration NAME=create_divisions
rake db:create_migration NAME=remove_name_from_divisions
rake db:create_migration NAME=add_section_to_divisions
rake db:migrate
rake db:test:prepare
