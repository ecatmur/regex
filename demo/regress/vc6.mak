
# very basic makefile for regression tests
#
# Visual C++ 6
#
CFLAGS= -O2 -GX -GR -I..\..\..\..\

LFLAGS= -link /LIBPATH:..\..\lib\vc6 user32.lib

all :: r1.exe r2.exe r3.exe r4.exe r5.exe r6.exe r1m.exe r2m.exe r3m.exe r4m.exe r5m.exe r6m.exe r1l.exe r2l.exe r3l.exe r4l.exe r5l.exe r6l.exe r1d.exe r2d.exe r3d.exe r4d.exe r5d.exe r6d.exe r1md.exe r2md.exe r3md.exe r4md.exe r5md.exe r6md.exe r1lmd.exe r2lmd.exe r3lmd.exe r4lmd.exe r5lmd.exe r6lmd.exe
	echo testing static single threaded version....
	r1 tests.txt test1252.txt
	r2 tests.txt
	r3 tests.txt
	r4 tests.txt test1252.txt
	r5 tests.txt
	r6 tests.txt
	echo testing static multi-threaded version....
	r1m tests.txt test1252.txt
	r2m tests.txt
	r3m tests.txt
	r4m tests.txt test1252.txt
	r5m tests.txt
	r6m tests.txt
	echo testing DLL version....
	r1l tests.txt test1252.txt
	r2l tests.txt
	r3l tests.txt
	r4l tests.txt test1252.txt
	r5l tests.txt
	r6l tests.txt
	echo testing static single threaded debug version....
	r1d tests.txt test1252.txt
	r2d tests.txt
	r3d tests.txt
	r4d tests.txt test1252.txt
	r5d tests.txt
	r6d tests.txt
	echo testing static multi-threaded debug version....
	r1md tests.txt test1252.txt
	r2md tests.txt
	r3md tests.txt
	r4md tests.txt test1252.txt
	r5md tests.txt
	r6md tests.txt
	echo testing dll debug version....
	r1lmd tests.txt test1252.txt
	r2lmd tests.txt
	r3lmd tests.txt
	r4lmd tests.txt test1252.txt
	r5lmd tests.txt
	r6lmd tests.txt


r1.exe : r1.cpp
	cl /ML $(CFLAGS) r1.cpp $(LFLAGS)

r2.exe : r2.cpp
	cl /ML $(CFLAGS) r2.cpp $(LFLAGS)

r3.exe : r3.cpp
	cl /ML $(CFLAGS) r3.cpp $(LFLAGS)

r4.exe : r4.cpp
	cl /ML $(CFLAGS) r4.cpp $(LFLAGS)

r5.exe : r5.cpp
	cl /ML $(CFLAGS) r5.cpp $(LFLAGS)

r6.exe : r6.cpp
	cl /ML $(CFLAGS) r6.cpp $(LFLAGS)
	

r1m.exe : r1.cpp
	cl /MT /D_MT -o r1m.exe $(CFLAGS) r1.cpp $(LFLAGS)

r2m.exe : r2.cpp
	cl /MT /D_MT $(CFLAGS) -o r2m.exe r2.cpp $(LFLAGS)

r3m.exe : r3.cpp
	cl /MT /D_MT $(CFLAGS) -o r3m.exe r3.cpp $(LFLAGS)

r4m.exe : r4.cpp
	cl /MT /D_MT $(CFLAGS) -o r4m.exe r4.cpp $(LFLAGS)

r5m.exe : r5.cpp
	cl /MT /D_MT $(CFLAGS) -o r5m.exe r5.cpp $(LFLAGS)

r6m.exe : r6.cpp
	cl /MT /D_MT $(CFLAGS) -o r6m.exe r6.cpp $(LFLAGS)


r1l.exe : r1.cpp
	cl /MD /D_MT /D_DLL $(CFLAGS) -o r1l.exe r1.cpp $(LFLAGS)

r2l.exe : r2.cpp
	cl /MD /D_MT /D_DLL $(CFLAGS) -o r2l.exe r2.cpp $(LFLAGS)

r3l.exe : r3.cpp
	cl /MD /D_MT /D_DLL $(CFLAGS) -o r3l.exe r3.cpp $(LFLAGS)

r4l.exe : r4.cpp
	cl /MD /D_MT /D_DLL $(CFLAGS) -o r4l.exe r4.cpp $(LFLAGS)

r5l.exe : r5.cpp
	cl /MD /D_MT /D_DLL $(CFLAGS) -o r5l.exe r5.cpp $(LFLAGS)

r6l.exe : r6.cpp
	cl /MD /D_MT /D_DLL $(CFLAGS) -o r6l.exe r6.cpp $(LFLAGS)


r1d.exe : r1.cpp
	cl /MLd $(CFLAGS) -o r1d.exe r1.cpp $(LFLAGS)

r2d.exe : r2.cpp
	cl /MLd $(CFLAGS) -o r2d.exe r2.cpp $(LFLAGS)

r3d.exe : r3.cpp
	cl /MLd $(CFLAGS) -o r3d.exe r3.cpp $(LFLAGS)

r4d.exe : r4.cpp
	cl /MLd $(CFLAGS) -o r4d.exe r4.cpp $(LFLAGS)

r5d.exe : r5.cpp
	cl /MLd $(CFLAGS) -o r5d.exe r5.cpp $(LFLAGS)

r6d.exe : r6.cpp
	cl /MLd $(CFLAGS) -o r6d.exe r6.cpp $(LFLAGS)


r1md.exe : r1.cpp
	cl /MTd /D_MT $(CFLAGS) -o r1md.exe r1.cpp $(LFLAGS)

r2md.exe : r2.cpp
	cl /MTd /D_MT $(CFLAGS) -o r2md.exe r2.cpp $(LFLAGS)

r3md.exe : r3.cpp
	cl /MTd /D_MT $(CFLAGS) -o r3md.exe r3.cpp $(LFLAGS)

r4md.exe : r4.cpp
	cl /MTd /D_MT $(CFLAGS) -o r4md.exe r4.cpp $(LFLAGS)

r5md.exe : r5.cpp
	cl /MTd /D_MT $(CFLAGS) -o r5md.exe r5.cpp $(LFLAGS)

r6md.exe : r6.cpp
	cl /MTd /D_MT $(CFLAGS) -o r6md.exe r6.cpp $(LFLAGS)


r1lmd.exe : r1.cpp
	cl /MDd /D_MT /D_DLL $(CFLAGS) -o r1lmd.exe r1.cpp $(LFLAGS)

r2lmd.exe : r2.cpp
	cl /MDd /D_MT /D_DLL $(CFLAGS) -o r2lmd.exe r2.cpp $(LFLAGS)

r3lmd.exe : r3.cpp
	cl /MDd /D_MT /D_DLL $(CFLAGS) -o r3lmd.exe r3.cpp $(LFLAGS)

r4lmd.exe : r4.cpp
	cl /MDd /D_MT /D_DLL $(CFLAGS) -o r4lmd.exe r4.cpp $(LFLAGS)

r5lmd.exe : r5.cpp
	cl /MDd /D_MT /D_DLL $(CFLAGS) -o r5lmd.exe r5.cpp $(LFLAGS)

r6lmd.exe : r6.cpp
	cl /MDd /D_MT /D_DLL $(CFLAGS) -o r6lmd.exe r6.cpp $(LFLAGS)






