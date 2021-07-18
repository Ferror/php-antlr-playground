grammar Markdown;
//r: '# ' CONTENT;
//CONTENT: [a-z0-9]+;
//WS : [ \t\r\n]+ -> skip;

//TEXT: [\ta-zA-Z0-9]+;
//HEADER: ^[#][ ]+[ a-zA-Z0-9]+;
markdown: line+ EOF;

line: (IDENTIFIER | text)+ NEWLINE;

IDENTIFIER: (HEADER | LIST)+;

HEADER: ('#' WHITESPACE | '##' | '###' | '####' | '#####' | '######')+;
LIST: ('*' WHITESPACE | '* *')+;


WHITESPACE: (' ' | '\t')+;

text: (WORD | WHITESPACE | code | bold | italic | strike)+;

WORD: [a-zA-Z0-9]+;

//^[`][a-z\s]+[`]
code: '`' (WORD | WHITESPACE)+ '`'+;
bold: '**' (WORD | WHITESPACE)+ '**'+;
italic: '*' (WORD | WHITESPACE)+ '*'+;
strike: '~~' (WORD | WHITESPACE)+ '~~'+;

NEWLINE: ('\r' ? '\n' | '\r')+;
