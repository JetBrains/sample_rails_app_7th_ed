# Ruby on Rails Tutorial sample application

This is a fork of the [*Ruby on Rails Tutorial*](http://www.railstutorial.org/) application by Michael Hartl.
We created this project to help you try RubyMine features.
To get started with the app, follow the [step-by-step tutorial](https://www.jetbrains.com/help/ruby/get-started.html)
or check out our [YouTube channel](https://www.youtube.com/playlist?list=PLQ176FUIyIUanO72dRf6lOefKIznviKKJ).

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems. You can clone the repo as follows:

```
git clone https://github.com/JetBrains/sample_rails_app_7th_ed 
cd sample_rails_app_7th_ed/
docker compose up --detach
docker compose exec web rake db:setup
```

Add Docker Compose Ruby SDK in RubyMine settings:
1. Go to `Preferences | Languages & Frameworks | Ruby SDK and Gems`.
2. Select `+` -> `Remote Interpreter or Version Manager...`
3. At `Docker Compose` tab select `web` as `Service`
4. Press `OK`
5. Select added SDK in `Ruby SDK and Gems` and press `OK`

Go to a test file in RubyMine and click the green arrow to run a test.

## Rake Tasks

Open `Tools > Run Rake Task...` to access the Rake tasks.

### Update the Database

If the database is ever out-of-date, run the database migration Rake task from the Rake task list.

```
rake db:migrate
```

### Run tests

To try all the tests, run the `test` Rake task.

```
rake test
```
