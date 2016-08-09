Test.describe("Basic tests") do
Test.assert_equals(divisible_by([1,2,3,4,5,6], 2), [2,4,6])
Test.assert_equals(divisible_by([1,2,3,4,5,6], 3), [3,6])
Test.assert_equals(divisible_by([0,1,2,3,4,5,6], 4), [0,4])
Test.assert_equals(divisible_by([0,1,2,3,4,5,6,7,8,9,10], 1),[0,1,2,3,4,5,6,7,8,9,10])
Test.assert_equals(divisible_by([0,1,2,3,4,5,6,7,8,9,10], 17),[0])
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def divisible_sol(ns, d)
  ns.select{|n| n%d==0}
end

40.times do
  ns,d=[],randint(1,20)
  randint(1,15).times do
    ns+=[randint(1,40)]
  end
  Test.it("Testing for divisible_by(#{ns}, #{d})") do
  Test.assert_equals(divisible_by(ns,d),divisible_sol(ns,d),"It should work for random inputs too")
  end
end
end
