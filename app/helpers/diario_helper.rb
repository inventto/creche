module DiarioHelper
  def ideize(string)
    string.downcase.remover_acentos.gsub(/ - | /,"_")
  end
  def unideize string
    string.tr("_"," ").camelcase
  end
end
