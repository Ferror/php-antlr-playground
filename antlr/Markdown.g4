grammar Markdown;

markdown: line+ EOF;

line: (header | m_list | text)+ NEWLINE;

header: ('#' text | '##' text | '###' text | '####' text | '#####' text | '######' text)+;
m_list: ('*' text | '* *' text)+;
text: (WORD | WHITESPACE | code | bold | italic | strike)+;

code: '`' (WORD | WHITESPACE)+ '`'+;
bold: '**' (WORD | WHITESPACE)+ '**'+;
italic: '*' (WORD | WHITESPACE)+ '*'+;
strike: '~~' (WORD | WHITESPACE)+ '~~'+;

WHITESPACE: (' ' | '\t')+;
WORD: [a-zA-Z0-9]+;
NEWLINE: ('\r' ? '\n' | '\r')+;
