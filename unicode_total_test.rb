Test.describe("Basic tests") do
Test.it("Should work with Single Letters") do
Test.assert_equals(uni_total("a"), 97)
Test.assert_equals(uni_total("b"), 98)
Test.assert_equals(uni_total("c"), 99)
end
Test.it("no chars should return zero") do
Test.assert_equals(uni_total(""), 0)
end
Test.it("should work with multiple letters") do
Test.assert_equals(uni_total("aaa"), 291)
Test.assert_equals(uni_total("abc"), 294)
end
Test.it("should work with sentences and spaces") do
Test.assert_equals(uni_total("Mary Had A Little Lamb"),1873)
Test.assert_equals(uni_total("Mary had a little lamb"),2001)
Test.assert_equals(uni_total("CodeWars rocks"),1370)
Test.assert_equals(uni_total("And so does Strive"),1661)
end
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(s) s.split("").reduce(0){|a,b| a+b.ord} end
base="abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789"

40.times do
  s=(0..randint(1,35)).map{base[randint(0,base.length-1)]}.join
  Test.it("Testing for #{s}") do
  Test.assert_equals(uni_total(s),sol(s),"It should work for random inputs too")
  end
end
end
