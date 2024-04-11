program: lex.yy.c parser.tab.c
	gcc -o program lex.yy.c parser.tab.c -lfl -ly

lex.yy.c: scanner.l
	flex scanner.l

parser.tab.c: parser.y
	bison -d parser.y

clean:
	rm -f program lex.yy.c parser.tab.c parser.tab.h
