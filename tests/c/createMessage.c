typedef int message;

extern message createMessage(const char*, int);
extern void equals(int, int);

int onCreation()
{
  const char * s = "\x00\x61\x73\x6d\x01\x00\x00\x00";
  message m = createMessage(s, 8);
  equals(m, 1);
}
