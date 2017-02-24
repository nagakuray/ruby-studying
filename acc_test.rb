# class AccTest
#   def pub
#     puts "pub is public method"
#   end
#
#   public :pub
#
#   def priv
#     puts "priv is private method"
#   end
#
#   private :priv
#
# end
#
# acc = AccTest.new
# acc.pub
# acc.priv

class AccTest
  public
    def pub
      puts "pub is a public merhod."
    end


  private
    def priv
      puts "priv is private method."
    end

end
