from pwn import *
import re
import collections
elf = ELF('./chals')
# print("main =", hex(elf.symbols['main']))
# print("{:<12s} {:<8s} {:<8s}".format("Func", "GOT", "Address"))
idx = []
lst = []
value = []
got_dict = {}
for g in elf.got:
   if "code_" in g:
      match = re.search(r'\d+', g)
      if (match):
         num = match.group()
         got_dict[num] = elf.got[g]
      # lst.append(hex(elf.got[g]))
      # print("{:<12s} {:<8x} {:<8x}".format(g, elf.got[g], elf.symbols[g]))
od = collections.OrderedDict(sorted(got_dict.items()))
print(od)


