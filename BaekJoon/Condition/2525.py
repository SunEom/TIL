import sys


h, m = map(int, sys.stdin.readline().split())

m += int(sys.stdin.readline())

h += m//60
h %= 24
m %= 60

print(f"{h} {m}")