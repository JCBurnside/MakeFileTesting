SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:src/%.cpp=obj/%.o)
DEPS = $(OBJECTS:%.o=%.d)
default:build
.PHONY: clean
clean:
	-rm obj/* bin/*

run:build
	bin/AOC2018

obj/:
	mkdir -p $@

bin/:
	mkdir -p $@

print:
	echo $(OBJECTS)
	echo $(SOURCES)

rebuild:clean build
ifneq ($(MAKECMDGOALS), clean)
sinclude $(DEPS)
endif
build: $(OBJECTS) bin/
	g++ -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion  -o bin/AOC2018 $(OBJECTS)

obj/%.o:src/%.cpp
	g++ -MMD -MP -Wall -Wextra -pedantic-errors -Wconversion -Wsign-conversion -o $@ -c $< -I ./inc