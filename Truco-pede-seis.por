programa {
  //DECLARAÇÃO DE VARIAVEIS

  inclua biblioteca Util --> u
  cadeia cartap1[3], cartap2[3]
  cadeia cartas[40]={"1 de Ouro","2 de Ouro","3 de Ouro","4 de Ouro","5 de Ouro","6 de Ouro","7 de Ouro","11 de Ouro","12 de Ouro","13 de Ouro","1 de Espada","2 de Espada","3 de Espada","4 de Espada","5 de Espada","6 de Espada","7 de Espada","11 de Espada","12 de Espada","13 de Espada","1 de Paus","2 de Paus","3 de Paus","4 de Paus","5 de Paus","6 de Paus","7 de Paus","11 de Paus","12 de Paus","13 de Paus","1 de Copa","2 de Copa","3 de Copa","4 de Copa","5 de Copa","6 de Copa","7 de Copa","11 de Copa","12 de Copa","13 de Copa"}
  inteiro valorcartas[40] = {35,36,37,28,29,30,37,32,33,34,39,36,37,28,29,30,31,32,33,34,39,36,37,28,29,30,31,32,33,34,35,36,37,28,29,30,31,32,33,34}
  inteiro pcarta1[3], pcartas2[3]
  inteiro opcao
  inteiro aux = 0 
  cadeia cartamesa1
  cadeia cartamesa2
  logico aux2
  inteiro pontomao1 = 0, pontos1 = 0
  inteiro pontomao2 = 0, pontos2 = 0
  inteiro numerorodada
  inteiro numeromao
  
  //CHAMA A FUNÇÃO MENU

  funcao inicio() {
    menu()
  }
  //FUNÇÃO RESPONSAVEL PELO MENU

  funcao menu(){
    enquanto (opcao != 2){
    escreva("\nBem-vindo ao Truco pede seis!\n\nPara começar selecione o que deseja fazer:\n\n[1] - Iniciar truco pede seis\n\n[2] - Sair do truco pede seis\n\n") 
      leia(opcao)
      escolha(opcao){
        caso 1:
          iniciarjogo()
          pare
        caso 2:
          escreva("Volte sempre!\n")
          pare
      }
    }
  }

  //FUNÇÃO DE SORTEIO DE CARTAS JOGADOR 1 E 2
  funcao mao_cartas(){
    inteiro aux = 0

    //SORTEIA AS CARTAS DO JOGADOR 1

    para(inteiro i = 0; i < 3; i ++){
      aux = u.sorteia(0,39)
      cartap1[i] = cartas[aux]
      pcarta1[i] = valorcartas[aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        cartap1[i] = cartas[aux]
        pcarta1[i] = valorcartas[aux]
      }
    }

    //SORTEIA AS CARTAS DO JOGADOR 2

    para(inteiro i = 0; i < 3; i++){
      aux = u.sorteia(0,39)
      cartap2[i] = cartas[aux]
      pcartas2[i] = valorcartas [aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        cartap2[i] = cartas[aux]
        pcartas2[i] = valorcartas[aux]
      }
    }
    escreva(cartap1,"\n")
    escreva(cartap2, "\n")
  }

  //FUNÇÃO DAS CARTAS JOGADOR 1

  funcao cartasjogador1(){
    escreva("Jogador 1: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(cartap1[i],"\n")
    }
  }

  //FUNÇÃO QUE MOSTRA O VENCEDOR DO JOGO (GANHA AS RODADA)

  funcao vencedorjogo(){
    se(numerorodada == 3){
      se(pontos1 > pontos2){
        pontomao1 ++
      }
      senao se(pontos1 < pontos2){
        pontomao2 ++
      }
      pontos1 = 0
      pontos2 = 0
      numerorodada = 0
    }
  }

  //FUNÇÃO QUE MOSTRA O VENCEDOR DA RODADA (GANHA A MÃO)

  funcao vencedordarodada(){
    para(inteiro i = 0; i < 3; i++){
      se(pcarta1[i] > pcartas2[i]){
        pontos1++
        pare
      }
      senao se(pcarta1[i] < pcartas2[i]){
        pontos2++
        pare
      }
      senao se(pcarta1[i] == pcartas2[i]){
        pare
      }
    }
  }

  //FUNÇÃO DAS CARTAS DO JOGADOR 2

  funcao cartasjogador2(){
    escreva("Jogador 2: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(cartap2[i],"\n")
    }
  }

  //FUNÇÃO PRO JOGADOR 2 JOGAR UMA CARTA
  funcao jogadap2(){
    escreva("\nQual carta deseja jogar? \n\n")
    leia(cartamesa2)
    aux2 = falso

    para(inteiro i = 0; i < 3; i++){
      se(cartamesa2 == cartap2[i]){
        cartap2[i] = "Carta jogada, PEDE SEIS CORNO!"
        aux2 = verdadeiro
        pare
      }
    }
    se(aux2 == falso){
      escreva ("Carta invalida, refassa sua jogada\n")
    }
  }

  //FUNÇÃO PRO JOGADOR 1 JOGAR UMA CARTA

  funcao jogadap1(){
    escreva("\nQual carta deseja jogar? \n\n")
    leia(cartamesa1)
    aux2 = falso

    para(inteiro i = 0; i < 3; i++){
      se(cartamesa1 == cartap1[i]){
        cartap1[i] = "Carta jogada, PEDE SEIS CORNO!"
        aux2 = verdadeiro
        pare
      }
    }
    se(aux2 == falso){
      escreva ("Carta invalida, selecione novamente sua jogada! \n")
    }
  }

  //FUNÇÃO RESPONSAVEL PELO JOGO, MOSTRA PONTOS E RODADAS GANHAS
  funcao iniciarjogo(){
    para (numeromao = 0; numeromao < 12; numeromao++){
      mao_cartas()
      para (numerorodada = 0; numerorodada < 3; numerorodada++){
        cartamesa1 = ""
        limpa()
        escreva("Pontos da rodada [Jogador 1]: ", pontos1,"\n\n")
        escreva("Pontos da rodada [jogador 2]: ", pontos2,"\n\n")
        escreva("Rodadas ganhas [Jogador 1]: ", pontomao1,"\n\n")
        escreva("Rodadas ganhas [Jogador 2]: ", pontomao2,"\n\n")
        aux2 = falso
        enquanto(aux2 == falso){
          cartasjogador1()
          jogadap1()
        }
        cartamesa2 = ""
        limpa()
        escreva("Pontos da rodada [Jogador 1]: ", pontos1,"\n\n")
        escreva("Pontos da rodada [jogador 2]: ", pontos2,"\n\n")
        escreva("Rodadas ganhas [Jogador 1]: ", pontomao1,"\n\n")
        escreva("Rodadas ganhas [Jogador 2]: ", pontomao2,"\n\n")
        aux2 = falso
        faca{
          cartasjogador2()
          jogadap2()
        }enquanto(aux2 == falso)
          vencedordarodada()
      }
      vencedorjogo()
    }
  }
}