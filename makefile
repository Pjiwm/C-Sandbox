
output: main.o file_reader.o solutions.o day1.o day3.o day4.o
	gcc main.o file_reader.o day1.o day3.o day4.o -o output

main.o: main.c
	gcc -c main.c

# solutions
solutions.o: solutions/solutions.h

day1.o: solutions/day1.c
	gcc -c solutions/day1.c

day3.o: solutions/day3.c #solutions/day3.h
	gcc -c solutions/day3.c

day4.o: solutions/day4.c #solutions/day4.h
	gcc -c solutions/day4.c

# helpers
file_reader.o: helpers/file_reader.c helpers/file_reader.h
	gcc -c helpers/file_reader.c

clean:
	rm *.o output