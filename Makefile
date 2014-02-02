all: 	index.html

index.html:  source.html
	cat source.html \
		| sed -e "s/^[ \t]*//g" \
		| sed -e ":a;N;$!ba;s/\n//g" \
		| tr -d "\n" \
		> index.html

clean:
	rm -f index.html

re: 	clean all
