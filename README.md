# php-antlr-playground

## Progress
- [ ] Lists
- [ ] Headers
- [ ] Tasks
- [ ] Tables

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

# h1
# h2
## h2
### h3
#### h4
##### h5
###### h6
* list
* * list2

code `text`


# PHP Testing
```
antlr -Dlanguage=PHP antlr/*.g4 -package Ferror\\Antlr
php public/index.php tests/content/header.md
```
