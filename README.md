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
```

To configure project with Docker Ruby SDK do following
1. Build Docker image by running following command
```
docker build -t=sra7 .
```
2. Add Docker Ruby SDK in RubyMine settings.
   1. Go to `Preferences | Languages & Frameworks | Ruby SDK and Gems`.
   2. Select `+` -> `Remote Interpreter or Version Manager...`
   3. At `Docker` tab select `sra7` as `Image name`
   4. Press `OK`
   5. Select added SDK in `Ruby SDK and Gems` and press `OK`

Next, migrate the database:

```
rake db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
rake test
```

If the test suite passes, you’ll be ready to seed the database with sample users and run the app in a local server:

```
rake db:seed
```
```
rails server
```