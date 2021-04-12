<?php
require \dirname(__DIR__).'/vendor/autoload.php';

use Antlr\Antlr4\Runtime\CommonTokenStream;
use Antlr\Antlr4\Runtime\Error\Listeners\DiagnosticErrorListener;
use Antlr\Antlr4\Runtime\InputStream;
use Antlr\Antlr4\Runtime\Tree\ParseTreeWalker;
use Ferror\Antlr\MarkdownLexer;
use Ferror\Antlr\MarkdownParser;
use Ferror\PHP\TreeShapeListener;

$input = InputStream::fromPath($argv[1]);
$lexer = new MarkdownLexer($input);
$tokens = new CommonTokenStream($lexer);
$parser = new MarkdownParser($tokens);
$parser->addErrorListener(new DiagnosticErrorListener());
$parser->setBuildParseTree(true);
$tree = $parser->markdown();

ParseTreeWalker::default()->walk(new TreeShapeListener(), $tree);
