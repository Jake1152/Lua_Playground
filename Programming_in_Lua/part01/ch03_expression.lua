-- # 3.3 logical
print(4 and 5)
print(nil and 13)
print(false and 13)
print(4 or 5)
print(false or 5)

-- same
x = 42
y = 48
v = 1
x = x or v
if not x then x = v end

max = (x > y) and x or y
print("max: ", max)
print("nil: ", nil)
print("not nil: ", not nil)  -- TODO: 왜 nil은 false가 아니면서 not nil은 true인가?
print("not 0: ", not 0)
print("not not 1: ", not not 1)
print("not not nil: ", not not nil)

-- # 3.4 concat