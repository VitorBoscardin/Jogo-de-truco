programa {
  inclua biblioteca Util --> u
  cadeia baralho[40]
  cadeia cartasjogador1, cartasjogador2
  inteiro aux, aux2, pontosjogador1 = 0, pontosjogador2 = 0, rodada
  inteiro valorcartas[40]
  
  funcao inicio() {

       //Inicia o vetor baralho
    baralho[0] = "1 de Espada" // 40 pontos
    baralho[1] = "1 de Paus" // 39 pontos
    baralho[2] = "7 de Espada" // 38 pontos
    baralho[3] = "7 de Ouro" // 37 pontos 
    baralho[4] = "3 de Paus" // 37 pontos
    baralho[5] = "3 de Espada" //  37 pontos
    baralho[6] = "3 de Ouro" // 37 pontos
    baralho[7] = "3 de Copa" // 37 pontos
    baralho[8] = "2 de Paus" // 36 pontos
    baralho[9] = "2 de Espada" // 36 pontos
    baralho[10] = "2 de Ouro" // 36 pontos
    baralho[11] = "2 de Copa" // 36 pontos
    baralho[12] = "1 de Copa" // 35 pontos
    baralho[13] = "1 de Ouro" // 35 pontos
    baralho[14] = "13 de Paus" // 34 pontos
    baralho[15] = "13 de Espada" // 34 pontos
    baralho[16] = "13 de Ouro" // 34 pontos
    baralho[17] = "13 de Copa"  // 34 pontos
    baralho[18] = "12 de Paus" // 33 pontos
    baralho[19] = "12 de Espada" // 33 pontos
    baralho[20] = "12 de Ouro" // 33 pontos
    baralho[21] = "12 de Copa" // 33 pontos
    baralho[22] = "11 de Paus" // 32 pontos
    baralho[23] = "11 de Espada" // 32 pontos
    baralho[24] = "11 de Ouro" // 32 pontos
    baralho[25] = "11 de Copa" // 32 pontos
    baralho[26] = "7 de Paus" // 31 pontos
    baralho[27] = "7 de Copa" // 31 pontos
    baralho[28] = "6 de Paus" // 30 pontos
    baralho[29] = "6 de Espada" // 30 pontos
    baralho[30] = "6 de e Ouro" // 30 pontos
    baralho[31] = "6 de Copa" // 30 pontos
    baralho[32] = "5 de Paus" // 29 pontos
    baralho[33] = "5 de Espada" // 29 pontos
    baralho[34] = "5 de Ouro" // 29 pontos
    baralho[35] = "5 de Copa" // 29 pontos
    baralho[36] = "4 de Paus" // 28 pontos
    baralho[37] = "4 de Espada" // 28 pontos
    baralho[38] = "4 de Ouro" // 28 pontos
    baralho[39] = "4 de Copa" // 28 pontos

    //Atribui valores ao baralho

    valorcartas[0] = 40 
    valorcartas[1] = 39 
    valorcartas[2] = 38 
    valorcartas[3] = 37 
    valorcartas[4] = 37
    valorcartas[5] = 37
    valorcartas[6] = 37
    valorcartas[7] = 37
    valorcartas[8] = 36
    valorcartas[9] = 36
    valorcartas[10] = 36
    valorcartas[11] = 36
    valorcartas[12] = 35
    valorcartas[13] = 35
    valorcartas[14] = 34
    valorcartas[15] = 34
    valorcartas[16] = 34
    valorcartas[17] = 34
    valorcartas[18] = 33
    valorcartas[19] = 33
    valorcartas[20] = 33
    valorcartas[21] = 33
    valorcartas[22] = 32
    valorcartas[23] = 32
    valorcartas[24] = 32
    valorcartas[25] = 32
    valorcartas[26] = 31
    valorcartas[27] = 31
    valorcartas[28] = 30
    valorcartas[29] = 30
    valorcartas[30] = 30
    valorcartas[31] = 30
    valorcartas[32] = 29
    valorcartas[33] = 29
    valorcartas[34] = 29
    valorcartas[35] = 29
    valorcartas[36] = 28
    valorcartas[37] = 28
    valorcartas[38] = 28
    valorcartas[39] = 28

    //Inicia o menu do jogo de truco 

    menu()
    
  }
  //Função responsavel pelo menu inicial

  funcao menu() {
    inteiro opcao, opcao2
    inteiro escolherjogadores
    cadeia jogador1, jogador2

    enquanto(opcao != 2) {
      escreva("\nBem-Vindo ao jogo de Truco!\nEscolha qual a ação que você deseja abaixo:\n\n[1] - Iniciar jogo de truco\n[2] - Sair do jogo de truco\n\n")
      leia(opcao)

      escolha(opcao) {
        caso 1:
          cartasjogo()
        pare
      }
    }
  }
   //Função para sortear 3 cartas por rodada aos 2 jogadores
  funcao cartasjogo() {
    
    para (inteiro i = 0; i < 3; i++) {
      inteiro maojogo = u.sorteia(0, 39)
      baralho[maojogo] = cartasjogador1
    }
    para (inteiro j = 0; j < 3; j++) {
      inteiro maojogo = u.sorteia(0, 39)
      baralho[maojogo] = cartasjogador2
    }
    
  }
}