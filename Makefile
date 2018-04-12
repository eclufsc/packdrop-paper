TARGET=root.tex

pdf:
	latexmk $(TARGET) -silent -pdf

clean:
	latexmk -c $(TARGET)

