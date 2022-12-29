module ServerHelper
  def set_params
    @number = params[:number].to_i
    @string = params[:string_array]
    @array = @string.split.map!(&:to_i)
    @result_array = []
    @hash = []
  end

  def squares
    @array.each_with_index do |n, i|
      next unless Math.sqrt(n).to_r.denominator == 1

      temp_array = @array.slice(i, @array.size - i)
      res = temp_array.take_while { |temp| Math.sqrt(temp).to_r.denominator == 1 }
      @result_array.push(res)
    end
  end

  def make_hash
    @result_array.each.each_with_index do |n,i|
      @hash << [['index', i], ['value', n.join(',')]].to_h
    end
    @hash
  end
end
