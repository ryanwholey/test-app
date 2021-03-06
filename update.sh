 cat > app/public/index.html <<EOF
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/skeleton/2.0.4/skeleton.min.css" integrity="sha512-EZLkOqwILORob+p0BXZc+Vm3RgJBOe1Iq/0fiI7r/wJgzOFZMlsqTa29UEl6v6U6gsV4uIpsNZoV32YZqrCRCQ==" crossorigin="anonymous" />
  </head>
  <body style="padding: 0; margin: 0;">
    <div class="section hero" style="background: lightgrey;">
      <div class="container">
        <div class="row">
          <div class="column">
            <h4 class="hero-heading" style="padding-top: 20px;">Test App</h4>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="column">
            <h2 class="section" style="padding-top: 20px; display: flex; justify-content: center;">$@</h2>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
EOF

git add .
git commit -am "$(echo $@)"
git push

