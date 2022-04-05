# BackendApp

## Development

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install npm dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Production and deployment

  1. Set up environment variables for production

    * Copy the `prod.env.sample` and rename it to `prod.env`, change the value in the .env file then run `source ./prod.env`

  2. Deploy

    * Install all the dependencies with `mix deps.get --only prod`
    * Complie files with `mix compile`
    * Compile assets with `mix assets.deploy`
    * Custom tasks such as: migrate databases with `mix ecto.migrate`
    * Run server `mix phx.server`
    * The final result should be at [http://yourdomain.com](http://yourdomain.com)

## APIs

