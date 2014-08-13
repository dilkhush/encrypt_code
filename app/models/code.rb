require 'matrix'
class Code
  attr_accessor :message, :keys, :message_size
  def initialize(message, keys, message_size)
    @message, @keys, @message_size = message, keys, message_size
  end

  def get_encrypt_message
    return self.message if self.keys == 0
    encrypt_data
  end

  def encrypt_data
    columns = []
    row, count, max_row = 0, 1,self.keys
    self.message_size.times{|col|
      column = Array.new(self.keys)
      column[row] = self.message[col]
      columns << column
      row += count
      count = update_counter(row, count)
    }
    matrix = Matrix.columns(columns)
    matrix.to_a.flatten.compact * ""
  end

  def update_counter(row, count)
    if row == self.keys-1
      count = -1
    elsif row == 0
      count = 1
    end
    count
  end
end
