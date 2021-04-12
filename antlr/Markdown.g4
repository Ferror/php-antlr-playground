grammar Markdown;
//r: '# ' CONTENT;
//CONTENT: [a-z0-9]+;
//WS : [ \t\r\n]+ -> skip;

//TEXT: [\ta-zA-Z0-9]+;
//HEADER: ^[#][ ]+[ a-zA-Z0-9]+;
markdown: line+ EOF;

line: IDENTIFIER TEXT NEWLINE;

IDENTIFIER: (HEADER | LIST)+;

HEADER: ('#' | '##' | '###')+;
LIST: ('*')+;

WHITESPACE: (' ' | '\t')+;

TEXT: (WORD | INLINE_CODE)+;

WORD: [a-zA-Z0-9 ]+;

//^[`][a-z\s]+[`]
INLINE_CODE: '`' WORD '`'+;

NEWLINE: ('\r' ? '\n' | '\r')+;
