# Todo

A minimal Rails to-do list. Tasks have a required title and a completed flag that defaults to false. The app is the standard Rails scaffold: list, show, create, edit, and delete, plus a "Mark done" button. There is no authentication.

## Requirements

- Ruby 3.2.3 (see `.ruby-version`)
- Rails 8.1
- SQLite 3

## Setup

```bash
bin/setup --skip-server
```

That installs gems and prepares the database. To do the same steps yourself:

```bash
bundle install
bin/rails db:prepare
```

## Run the app

```bash
bin/rails server
```

Open http://localhost:3000. The root path is the task list.

## Tests

```bash
bin/rails test
bin/rails test:system
```

`bin/rails test` runs model and request tests. `bin/rails test:system` runs the browser tests.
