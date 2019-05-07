puts = "Informe o nome do usuario."
usuario = gets

loop do
    puts "Se deseja adicionar um contato >>> Digite 1"
    puts "Se deseja ver seus contato     >>> Digite 2"
    #puts "Se deseja encerrar             >>> Digite 0"
    acao = gets.to_i
    
    #break if acao == 0

    #DEFINE UMA ARRAY
    agenda = []
    if acao == 1
        #DEFINE UMA HASH
        ctt = {}
        puts ""
        puts "====================================================================================="
        puts "Informe o nome do contato"
        ctt[:nome] = gets
        puts "Informe o telefone do contato"
        ctt[:tel] = gets
        puts "====================================================================================="    
        
        agenda << ctt
    
    
    elsif acao == 2
        agenda.each do |ctt|          #Le cada item da array
            puts "====================================================================================="
            puts "NOME: #{ctt[:nome]}, TELEFONE: #{ctt[:tel]}"
        end
    

    else acao != 1 || acao != 2
        next
        
    end
    

end