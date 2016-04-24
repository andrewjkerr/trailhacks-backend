# trailhacks-backend

The API for our Trailhacks 2016 hack.

## Defaults

- Ruby 2.3.0
- Rails Edge
- Postgres
- Puma

## API Tutorial

Trailhacks team read here! It's CRUD and follows your general API design guidelines so it should be fairly intuitive. Look at the `app/serializers` directory for what is returned.

### Creating a user
POST to `/users` with email and password. Will receive user info back with auth token.

### Authenticating as a user
POST to `/users/authenticate` with email and password. Will receive user info back with auth token.

### Verifying user identity on _all_ requests
Use `auth_token` as a _parameter_. Can change to header if easier for y'all - just let me know.
