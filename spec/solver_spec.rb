require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'testing factorial method' do
    it 'factorial returns factorial of the N' do
      expect(@solver.factorial(6)).to eq(720)
    end

    it 'should return 1 if the parameter is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should raise error if the given number is negative' do
      expect { @solver.factorial(-1) }.to raise_error('Negative number entered')
    end
  end

  context 'testing reverse method' do
    it 'should reverse a given string' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it 'should reverse 123456 to 654321' do
      expect(@solver.reverse('123456')).to eq('654321')
    end

    it 'should reverse 12_34-56 to 65-43_21' do
      expect(@solver.reverse('12_34-56')).to eq('65-43_21')
    end
  end
end
