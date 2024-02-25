require 'rake'

desc 'Executar Cucumber com tags'
task :cucumber do
  tags = ENV['TAGS'] || '' # Obtém as tags da variável de ambiente TAGS
  puts "Executando o Cucumber com as tags: #{tags}"

  # Comando para executar o Cucumber com as tags fornecidas
  sh "cucumber --tags '#{tags}'"
end