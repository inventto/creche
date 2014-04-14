require 'test_helper'

class DiarioTest < ActiveSupport::TestCase
   test "cria um diario verdadeiro" do
     assert_difference "Diario.count" do
       Aluno.first!.hoje! "higiene", "urinou", "sim"
     end
   end
   test "nao cria  se faltar informacoes" do
     assert_no_difference "Diario.count" do
       Aluno.first!.hoje! "", "", ""
     end
  end
end
