-- # 3.3 logical
-- print("4 and 5 : ", 4 and 5)
-- print("nil and 13 : ", nil and 13)
-- print("false and 13 : ", false and 13)
-- print("4 or 5 : ", 4 or 5)
-- print("false or 5 : ", false or 5)

-- -- same
-- x = 42
-- y = 48
-- v = 1
-- x = x or v
-- if not x then x = v end

-- max = (x > y) and x or y
-- print("max : ", max)
-- print("nil : ", nil)
-- print("not nil : ", not nil)  -- TODO: 왜 nil은 false가 아니면서 not nil은 true인가?
-- print("not 0 : ", not 0)
-- print("not not 1 : ", not not 1)
-- print("not not nil : ", not not nil)
-- print("\n\n")

-- # 3.4 concat
-- print('"Hello " .. "World" : ', "Hello " .. "World")
-- print("0 .. 1 : ", 0 .. 1)
-- print("000 .. 01 : ", 000 .. 01)

-- a = "Hello"
-- print('a .. " World" : ', a .. " World")
-- print("a : ", a)


-- # 3.5 length operator
--[[
길이연산자는 문자열과 테이블에 쓰임
문자열에 쓰이는 경우 문자열이 몇 바이트인지, 반환한다.
테이블에 쓰는 경우에는 순열의 길이를 반환한다.
--]]
print_table = function(tbl)
    for i, v in ipairs(tbl) do
      print("v : ", v)
    end
  end

a = {
    1, 2, 3, 4, 5
}
print_table(a)
print("a[#a] : ", a[#a])
a[#a] = nil
v = 42
a[#a + 1] = v

print_table(a)


--[[
루아에서 리스트가 실제로는 테이블이다
리스트에 nil로 비어있는 경우 예상하지 못한 결과를 낸다.
리스트로 정의된 순열에만 유효하다.
순열은 연속된 숫자 키 집합으로 구성된 테이블이다. (값이 nil인 키는 실제로 테이블에 없는 것이다.)

특히, 숫자로된 키가 없는 테이블은 길이가 0인 순열이다.
--]]

a = {}
a[1] = 1
a[2] = nil
a[3] = 1
a[4] = 1
print("#a : ", #a)

a = {}
a[1] = 1
a[10000] = 1
print("#a : ", #a)

a = {}
a[1] = 1
a[10000] = nil
print("#a : ", #a)


a = {10, 20, 30, nil, nil}
print("#a : ", #a)


a = {10, 20, 30, nil, nil, 60}
print("#a : ", #a)


a = {10, 20, 30, nil, nil, 60, nil}
print("#a : ", #a)

a = {10, 20, 30, nil, nil, 60, nil, 80}
print("#a : ", #a)