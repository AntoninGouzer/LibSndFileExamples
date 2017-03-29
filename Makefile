FLAGS=-O2

# uncomment the following line to compile using OpenMP
#FLAGS=-fopenmp -O2

adrinas: *.c *.h
	${CC} ${FLAGS} -o sndfile-to-text sndfile-to-text.c -lsndfile -lm

test:
	./sndfile-to-text.c example.wav
	@echo
	@echo Test successful!

clean:
	rm -f sndfile-to-text
