#Mokka Developers
_simply where developers put mokkai_

###Setting up for Development

- Fork the repository and clone your copy to your machine
- Create a new topic branch `git checkout -b new-feature-or-bugfix`
- Work on the topic-branch, when you're done make a commit and push it to github
- Now you should see a pull-request button on github, submit a pull request

This project uses RVM to manage gems. so create a gemset named `mokka_developers`

```ruby
rvm gemset create mokka_developers
cd into/the/project
bundle install
```

Database file is renamed and ignored from git by default. So, to get database
working, copy `config/dummy_database.yml` to `config/database.yml` by doing

```sh
cp config/dummy_database.yml config/database.yml
```

Now open `config/database.yml` to update your database credentials
