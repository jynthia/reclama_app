# Caverna Labs test application

This is a toy application that mimics the workings of a feedback inbox. This was created with the sole purpose of demonstrating my skills and abilities as a newbie Rails developer.

## License


## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```