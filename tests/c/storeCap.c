typedef int cap;
typedef int message;

extern cap loadMessageCap(message, int index);
extern void storeCap(int, cap);

cap capA = 0;
cap capB = 0;

void onCreation(message m)
{
  const cap p = loadMessageCap(m, 0);
  storeCap(1, p);
}
