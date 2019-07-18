require_relative '../lib/fizzbuzz'

describe 'fizzbuzz' do

  test_case = 1..10

    test_case.each do |value|

      condition = (value % 3 == 0 && value % 5 == 0)

      it 'multiple of 3&5', :if => condition do
        expect(fizzbuzz(value)).to eq 'fizzbuzz'
      end

      condition = (value % 3 == 0 && value % 5 != 0)

      it 'multiple of 3', :if => condition do
        expect(fizzbuzz(value)).to eq 'fizz'
      end

      condition = (value % 3 != 0 && value % 5 == 0)

      it 'multiple of 5', :if => condition do
        expect(fizzbuzz(value)).to eq 'buzz'
      end

      condition = (value % 3 != 0 && value % 5 != 0)

      it 'others', :if => condition do
        expect(fizzbuzz(value)).to eq value
      end


    end
end
