# Longest Word Game

> Archived Rails learning exercise. This is not a featured portfolio project or a production service.

The app generates ten letters, accepts a word, checks whether its letters fit the grid, and asks the external Wagon Dictionary endpoint whether the word exists. The two routes are `/new` and `/score`.

## What is actually implemented

- Rails 7 controller and two server-rendered views
- repeated-letter validation against the generated grid
- external dictionary lookup through `Net::HTTP`

## Known limits

- the controller test is only the generated placeholder; the game behaviour is not covered by automated tests
- the dictionary dependency may be unavailable and has no timeout or fallback
- there is no persistence, authentication or deployment configuration

## Local setup

Requires Ruby 3.1.2 and Bundler 2.3.7.

```bash
bundle install
bin/rails server
```

Open `http://localhost:3000/new`.

Current selected work is listed at [coder058.github.io/profile](https://coder058.github.io/profile/).
