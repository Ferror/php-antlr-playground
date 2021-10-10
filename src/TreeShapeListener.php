<?php
declare(strict_types=1);

namespace Ferror\PHP;

use Antlr\Antlr4\Runtime\ParserRuleContext;
use Antlr\Antlr4\Runtime\Tree\ErrorNode;
use Antlr\Antlr4\Runtime\Tree\ParseTreeListener;
use Antlr\Antlr4\Runtime\Tree\TerminalNode;

final class TreeShapeListener implements ParseTreeListener
{
    public function visitTerminal(TerminalNode $node): void
    {
    }

    public function visitErrorNode(ErrorNode $node): void
    {
    }

    public function exitEveryRule(ParserRuleContext $ctx): void
    {
    }

    public function enterEveryRule(ParserRuleContext $ctx): void
    {
        echo $ctx->getText() . PHP_EOL;
    }
}
