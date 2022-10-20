def bem_vindo
puts "Bem vidno ao cookbook, sua rede social de receitas"
end

def menu
    puts '1 - Cadastrar nova receita'
    puts '2 - Ver receitas cadastradas'
    puts '3 - Sair'
    puts
    print 'Escolha uma opção: '
    return gets.to_i()
end

def inserir_receita
    puts "Digite o nome da receita"
    nome = gets.chomp
    puts "Digite o tipo da receita"
    tipo = gets.chomp

    puts

    return {nome: nome, tipo: tipo }
end

def imprimir_receita(r)
    puts "Receitas Cadastradas"
    r.each do |receita|
    puts "Nome da receita: #{receita[:nome]}  -  Tipo da receita: #{receita[:tipo]}" 
    end
    puts
end

bem_vindo

receitas = []

opcao = menu()
puts

while opcao != 3 do
    if opcao == 1
    r   eceitas << inserir_receita
    elsif opcao == 2
        imprimir_receita(receitas)
    else
        puts 'Opçao invalida'
        puts
    end
    
    opcao = menu()
    puts
end

#for receita in receitas do
#    puts "Receita #{receita} cadastrada com sucesso!"
#end

#receitas.each do |receita|
#    puts receita
#end
puts 'Obrigado por usar o cookbook! até logo!'

