# php-antlr-playground

## Progress
- [ ] Lists
- [ ] Headers
- [ ] Tasks
- [ ] Tables
- [ ] Text

# Java Testing

## Console
```
antlr Markdown.g4
javac -classpath /usr/local/opt/antlr/antlr-4.9.2-complete.jar Markdown*.java
grun Markdown markdown -tree
```

## GUI
```
antlr Markdown.g4
javac -classpath /usr/local/opt/antlr/antlr-4.9.2-complete.jar Markdown*.java
grun Markdown markdown -gui
```

# PHP Testing
```
antlr -Dlanguage=PHP antlr/Markdown.g4 -package Ferror\\Antlr
php public/index.php tests/content/README.md
```
