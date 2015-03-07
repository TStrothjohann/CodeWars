require 'kata'

describe ("Kata") do

    
    l1= [1, 4, 8, 7, 3, 15]
    l2= [1, -2, 3, 0, -6, 1]
    l3= [20, -13, 40]
    l4= [1, 2, 3, 4, 1, 0]
    l5= [10, 5, 2, 3, 7, 5]
    l6= [4, -2, 3, 3, 4]
    l7= [0, 2, 0]
    l8= [5, 9, 13, -3]
 

  it('Basic: should sum numbers in an array')do
    
    expect(sum_pairs(l1, 8)).to eq([1, 7])
  end

  it('Negatives:')do
   expect(sum_pairs(l2, -6)).to eq([0, -6])
  end

  it 'No Match' do
    expect(sum_pairs(l3, -7)).to eq(nil)
  end

  it 'First Match From Left' do
    expect(sum_pairs(l4, 2)).to eq([1, 1])
  end

  it 'First Match From Left REDUX!' do
   expect(sum_pairs(l5, 10)).to eq([3, 7])
  end

  it 'Duplicates' do
    expect(sum_pairs(l6, 8)).to eq([4, 4])
  end

  it 'Zeroes' do
    expect(sum_pairs(l7, 0)).to eq([0, 0])
  end

  it 'Subtraction' do
    expect(sum_pairs(l8, 10)).to eq([13, -3])
  end
  
end



# , " ["+l2.join(", ")+"] should return [0, -6] for sum = -6")
# , ": ["+l3.join(", ")+"] should return nil for sum = -7")
# expect(sum_pairs(l4, 2) == [1, 1], ": ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
# expect(sum_pairs(l5, 10) == [3, 7], ": ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
# expect(sum_pairs(l6, 8) == [4, 4], ": ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
# expect(sum_pairs(l7, 0) == [0, 0], ": ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
# expect(sum_pairs(l8, 10) == [13, -3], ": ["+l8.join(", ")+"] should return [13, -3] for sum = 10")