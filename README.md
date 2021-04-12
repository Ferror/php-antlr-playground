# php-antlr-playground

# Java Testing
```
antlr Markdown.g4
javac -classpath /usr/local/opt/antlr/antlr-4.9.2-complete.jar Markdown*.java
grun Markdown markdown -tree
```

# PHP Testing
```
antlr -Dlanguage=PHP antlr/*.g4 -package Ferror\\Antlr
php public/index.php tests/content/header.md
```
