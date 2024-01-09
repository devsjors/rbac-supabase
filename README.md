# Implementing Role-Based Access Control (RBAC) in Supabase

This repository includes the code demonstrating the implementation of a straightforward Role-Based Access Control system in Supabase.

## Features

- 🔒 RBAC schema
- 🌐 RLS policies
- 🧪 Testing seeder
- 🚀 Insomnia file to test endpoints

## Getting started

To run this application locally, you need to be able to run Supabase on your machine and clone this repository.

### Running Supabase locally

Install the CLI with [Homebrew](https://brew.sh/):

```
brew install supabase/tap/supabase
```

The Supabase CLI uses Docker containers to manage the local development stack. To get started,

- [Docker Desktop](https://docs.docker.com/desktop/)

### Cloning this repository

```
git clone git@github.com:devsjors/rbac-supabase.git
```

### Start the application

Now, to start the application, run:

```
supabase start
```

## Insomnia endpoints

To facilitate database querying and testing, I've assembled an [Insomnia](https://insomnia.rest/download) Collection containing all the necessary endpoints. You can access this collection in the `insomnia-endpoints-collection.json` file.

## Available commands

Running commands with supabase `supabase [command]`
| Command | Description |
|-----------|:-------------|
| `start` | Start containers for Supabase local development |
| `status` | Show status of local Supabase containers |
| `stop` | Stop all local Supabase containers |
| `db reset`| Resets the local database to current migrations |
