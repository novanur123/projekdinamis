<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>login</title>
    <link rel="stylesheet" href="login.css" />
  </head>

  <body>
    <div class="container">
      <div class="form-box">
        <h1 class="form-title">Login Here</h1>
        <form action="" method="get">
          <div class="form-group">
            <label for="username">Username</label>
            <input
              type="text"
              name="username"
              id="username"
              class="form-control"
            />
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input
              type="password"
              name="password"
              id="password"
              class="form-control"
            />
          </div>
          <button
            class="btn"
            onclick="document.location.replace('./')"
            type="button"
          >
            Login
          </button>
        </form>
      </div>
    </div>
  </body>
</html>
