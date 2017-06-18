compileRules = g++ -std=c++11 -Wall -pedantic
libraries = -lncurses
objFileList = main.o game.o I.o J.o L.o O.o piece.o S.o T.o Z.o 

tetris: $(objFileList)
	$(compileRules) $(objFileList) $(libraries) -o tetris

main.o: main.cpp
	$(compileRules) -c main.cpp $(libraries)

game.o: game.cpp game.h 
	$(compileRules) -c game.cpp $(libraries)

I.o: I.cpp I.h 
	$(compileRules) -c I.cpp $(libraries)

J.o: J.cpp J.h 
	$(compileRules) -c J.cpp $(libraries)

L.o: L.cpp L.h 
	$(compileRules) -c L.cpp $(libraries)

O.o: O.cpp O.h 
	$(compileRules) -c O.cpp $(libraries)

piece.o: piece.cpp piece.h 
	$(compileRules) -c piece.cpp $(libraries)

S.o: S.cpp S.h 
	$(compileRules) -c S.cpp $(libraries)

T.o: T.cpp T.h 
	$(compileRules) -c T.cpp $(libraries)

Z.o: Z.cpp Z.h 
	$(compileRules) -c Z.cpp $(libraries)

clean:
	rm *.o

