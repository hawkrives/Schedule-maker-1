genetic.out: genetic.cpp
	$(CXX) -O3 --std=c++11 $< -o $@

.PHONY: clean bench format

format:
	clang-format -i *.cpp

bench: genetic.out
	hyperfine --warmup 3 ./genetic.out

clean:
	rm -f *.out
