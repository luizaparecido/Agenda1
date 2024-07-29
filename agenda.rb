#adicionar, remover Contado
#contato: nome, telefone
#poderemos ver todos contatos ou somente um contato

#noobcode

@agenda = [
  {nome: "Luiz", telefone: "912345678"},
  {nome: "João", telefone: "987654321"}
]

def todos_contatos
  @agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
  end
    puts "-------------------"
end

def adicionar_contato
  puts "Digite o nome do contato"
  nome = gets.chomp
  puts "Digite o telefone do contato"
  telefone = gets.chomp
  @agenda << {nome: nome, telefone: telefone}
end

loop do

puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
  codigo = gets.chomp.to_i

  case
  when codigo == 0
    puts "até mais"
    break
  when codigo == 1
    todos_contatos
  when codigo == 2
    adicionar_contato
  end
end
