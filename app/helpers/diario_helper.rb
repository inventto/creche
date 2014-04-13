module DiarioHelper
  def ideize(string)
    string.downcase.remover_acentos.gsub(/ - | /,"_")
  end
end
