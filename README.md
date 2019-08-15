# sato-server

"sato" visualizes each other's effort as a point.
This is a server-side application.

## APIs

This application provides API.
The API usage is:

```url
http://your-host/api/v1/any-apis
```

### authentication

Authentication using a token.
References: [devise token auth](https://github.com/lynndylanhurley/devise_token_auth)

- sign up
- sign in
- sign out
- edit
- password edit
- password reset

### points

- history
  - all
    - from-to
  - user
    - from-to
    - from
    - to
- user
  - points
- send

### users

- profile
  - points
    - from-to
    - from
    - to
  - name
  - mail
  - image
