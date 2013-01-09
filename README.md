#Mokka Developers
_simply where developers put mokkai_

###Clone the project

This project uses RVM to manage gems. so create a gemset named `mokka_developers`

```ruby
rvm gemset create mokka_developers
cd into/the/project
bundle install
```

Database file is renamed and ignored from git by default. So, to get database
working, copy `config/dummy_database.yml` to `config/database.yml` and update
your database passwords

```sh
cp config/dummy_database.yml config/database.yml
```

Now open database.yml to update your database credentials
