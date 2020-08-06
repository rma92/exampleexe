TARGETNAME=example.exe

SOURCES= \
  example.c


TARGETLIBS= \
  user32.lib \
  kernel32.lib 

ENTRY=_start

main: $(SOURCES)
  cl /nologo -GS- /Os $(SOURCES) /c /Fomain.obj
  link -nodefaultlib main.obj $(TARGETLIBS) /ENTRY:$(ENTRY) /subsystem:windows /align:128 /filealign:128 /OUT:$(TARGETNAME)

clean:
  del main.obj
  del example.exe

