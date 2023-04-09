def add_headingzero(data):
    length = len(data)
    if (length < 16):
        num = 16 - length
        data = '0' * num + data
    return data


can = "7ffe94f852c0"
print(type(can))
can = add_headingzero(can)
print(can)

# print(f'rbp_val:{rbp_val}')
# buf = r.recvuntil(b'rbp_add:')
# rbp_add = r.recvuntil(b'\n', drop=True)
# print(f'rbp_add:{rbp_add}')
# buf = r.recvuntil(b'ret_val:')
# ret_val = r.recvuntil(b'\n', drop=True)
# print(f'ret_val:{ret_val}')
# buf = r.recvuntil(b'ret_add:')
# ret_add = r.recvuntil(b'\n', drop=True)
# print(f'ret_add:{ret_add}')
# buf = r.recvuntil(b'can_val:')
# can_val = r.recvuntil(b'\n', drop=True)
# print(f'can_val:{can_val}')
# buf = r.recvuntil(b'can_add:')
# can_add = r.recvuntil(b'\n', drop=True)
# print(f'can_add:{can_add}')