 cat > app/public/index.html <<EOF
<!DOCTYPE html>
<html>
  <head></head>
  <body>
    <h1>$@</h1>
  </body>
</html>
EOF

git add .
git commit -am "Update"
git push

