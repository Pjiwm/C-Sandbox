output: main.o file_reader.o linked_list.o solutions.o day1.o day2.o day3.o day4.o day5.o day6.o day7.o
	gcc -g main.o file_reader.o linked_list.o day1.o day2.o day3.o day4.o day5.o day6.o day7.o -o output

main.o: main.c
	gcc -c main.c

# solutions
solutions.o: solutions/solutions.h

day1.o: solutions/day1.c
	gcc -c solutions/day1.c

day2.o: solutions/day2.c
	gcc -c solutions/day2.c

day3.o: solutions/day3.c
	gcc -c solutions/day3.c

day4.o: solutions/day4.c
	gcc -c solutions/day4.c

day5.o: solutions/day5.c
	gcc -c solutions/day5.c

day6.o: solutions/day6.c
	gcc -c solutions/day6.c

day7.o: solutions/day7.c
	gcc -c solutions/day7.c

# helpers
file_reader.o: helpers/file_reader.c helpers/file_reader.h
	gcc -c helpers/file_reader.c

linked_list.o: helpers/linked_list.c helpers/linked_list.h
	gcc -c helpers/linked_list.c

clean:
	rm *.o output debug