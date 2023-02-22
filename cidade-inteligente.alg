Algoritmo "Cidade Inteligente"

 //Aluno: Joao Henrique Morales Assis
 //Atividade Avaliativa 3
 //Disciplina: Logica de Programacao e Algoritimos
 //Local e data: Londrina, 18 de Novembro de 2022
 //Instituicao de Ensino: Unifil


Var


   opcao: inteiro
   run: logico
   totCarro: inteiro
   totDisc: inteiro
   totBus: inteiro
   total: real
   vlrdosEstornado: real
   numIsentos: inteiro
   prosseguir: caracter

Procedimento menuPrincipal()
inicio
   escreval( "***********************************************************" )
   escreval("##***-* Seja bem vindo a Plataforma aerea Stop-Car *-* * **##")
   escreval( "***********************************************************" )
   escreval( "***********************************************************" )
   escreval("#***Escolha a opcao desejada *#")
   escreval( "***********************************************************" )
   escreval( "***********************************************************" )
   escreval(" * - 1. Cadastrar o modelo de veiculo desejado.")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval(" * - 2. Veja quantos veiculos estao estacionados agora.")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval(" * - 3. Efetuar a cobranca.")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval(" * - 4. Para realizar retornos na sua fatura de energia eletrica")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval(" * - 5. Para encerrar o Sistema.")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval("*************************************************************")
Fimprocedimento

Procedimento menuDosVeiculos()
inicio
   escreval("Menu de Veículos")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval("*************************************************************")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval("- 1- Carro (",totCarro, " )")
   escreval("*************************************************************")
   escreval("- 2- Moto (",totDisc, " )")
   escreval("*************************************************************")
   escreval("- 3- Camionete (",totBus, " )")
   escreval("*************************************************************")
   escreval("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval("*************************************************************")
Fimprocedimento

procedimento prosseguir()
var

   sim: inteiro

inicio

   escreva("Para prosseguir tecle 1:")
   leia(sim)
fimprocedimento

procedimento cadastrarVeiculo()
var
   veiculo: inteiro
inicio
   limpatela()
   menuDosVeiculos()
   escreva("Digite a opcao desejada:")
   leia(veiculo)
   escreval("segue abaixo as opcoes")
   escolha(veiculo)
   caso(1)
      totCarro:= totCarro + 1
      escreval("O Cadastro do carro foi realizado com sucesso")
   caso(2)
      totMoto:= totDisc + 1
      escreval("O Cadastro da moto foi realizado com sucesso")
   caso(3)
      totCamionete:= totBus + 1
      escreval("O Cadastro da camionete foi realizado com sucesso")
   outrocaso
      cadastrarVeiculo()
      limpatela()
   fimescolha
fimprocedimento

procedimento cobranca()
var
   tempoCobrar: real
   tipoVeiculo: inteiro
   totalPagar: real
   pagamento: real
   seTempo: logico
   run: logico
   temVeiculo: logico
   sim: inteiro
inicio
   run:= verdadeiro
   enquanto run faca

      limpatela()
      escreval("Este e o menu de cobranca, para seguir digite a opcao desejada")
      escreval("***********************************")
      menuDosVeiculos()
      escreva("Digite o numero de uma das opcoes desejadas abaixo:")
      leia(tipoVeiculo)

      escolha(tipoVeiculo)
      caso(1)
         se(totCarro = 0)entao
            limpatela()
            escreval("Nao ha carros estacionados no momento,")
            escreval("caso necessite realizar a cobranca, retorne ao menu")
            escreval("principal e selecione a opcao de cadastramento")
            temVeiculo:= falso
         senao
            temVeiculo:= verdadeiro
         fimse
         run:= falso
      caso(2)
         se(totDisc = 0)entao
            limpatela()
            escreval("Nao ha motos estacionados no momento,")
            escreval("caso necessite realizar a cobranca, retorne ao menu")
            escreval("principal e selecione a opcao de cadastramento")
            temVeiculo:= falso
         senao
            temVeiculo:= verdadeiro
         fimse
         run:= falso
      caso(3)
         se(totBus = 0)entao
            limpatela()
            escreval("Nao ha camionete estacionados no momento,")
            escreval("caso necessite realizar a cobranca, retorne ao menu")
            escreval("principal e selecione a opcao de cadastramento")
            temVeiculo:= falso
         senao
            temVeiculo:= verdadeiro
         fimse
         run:= falso
      outrocaso
         run:= verdadeiro
      fimescolha

   fimenquanto

   se(temVeiculo)entao
      escreval("-------------------------------")
      tempoCobrar:= calculaMinutos()
      totalPagar := calculaTotalPagar(tempoCobrar)

      escreval( "********************************************" )
      escreval("*-*EFETUAR O PAGAMENTO*-*")
      escreval( "********************************************" )
      escreval( "********************************************" )
      escreval(" Valor a ser pago R$", totalPagar)
      escreval( "********************************************" )
      escreval( "********************************************" )
      escreva(" Digite o valor do pagamento: R$" )
      se nao(totalPagar = 0)entao
         leia(pagamento)
      senao
         escreval("0")
      fimse
      se(pagamento < totalPagar)entao
         enquanto pagamento < totalPagar faca
            escreval("************* A-T-E-N-C-A-O-****************************")
            escreval("O valor do pagamento nao pode ser inferior ao valor devido")
            escreval("************* A-T-E-N-C-A-O-****************************")
            escreva("O total pago foi: R$")
            leia(pagamento)
         fimenquanto
      fimse
      escreval("Troco: R$", (pagamento-totalPagar))
      escreval("-/-/-/-/-/-/-/-/-/-/-/-/-/")
      escreva("Deseja fazer a confirmacao?: ")
      leia(sim)

      se(sim = "1")entao
         total := total + totalPagar
         removerVeiculo(tipoVeiculo)
         se(totalPagar = 0)entao
            numIsentos:= numIsentos + 1
         fimse
      fimse
   senao
      prosseguir()
   fimse
fimprocedimento

procedimento qtdVeiculos()
inicio
   limpatela()
   escreval(" Número  de veiculos estacionados ")
   escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
   escreval(" -------------------------")
   escreval(" Número de Carros Voador:", totCarro)
   escreval(" -------------------------")
   escreval(" Número de Disco Voador Conversivel:",totDisc)
   escreval(" -------------------------")
   escreval(" Número de Onibus Voador:",totBus)
   escreval(" -------------------------")
   escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-")
   prosseguir()
fimprocedimento

procedimento retornar()
var

   sim: caracter
   valorCobrado: real
   valorCorreto: real
   valorEstornado: real
   total: real
   totalEstornado: real
   
inicio
   limpatela()
   escreval("Menu de retornos na fatura de energia eletrica")
   escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreva("Por gentileza, coloque o valor que foi cobrado:  R$")
   leia(valorCobrado)
   escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreva("Agora, coloque o valor correto a ser cobrado:  R$")
   leia(valorCorreto)
   valorEstornado:= valorCobrado - valorCorreto
   escreval("O valor a ser retornado na sua fatura e de: R$",valorEstornado)
   escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-")
   escreval("Deseja fazer a confirmacao? ")
   leia(sim)
   se(sim = "s")entao
      total:= total - valorEstornado
      totalEstornado:= totalEstornado + valorEstornado
      escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
      escreval("***O VALOR CREDITADO A FATURA: R$",valorEstornado)
      escreval("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-**-*-*-*-*-*-*")
      prosseguir()
   fimse

fimprocedimento

procedimento removerVeiculo(tipoVeiculo: inteiro)
inicio

   escolha(tipoVeiculo)
   caso(1)
      totCarro:= totCarro - 1
   caso(2)
      totDisc:= totDisc - 1
   caso(3)
      totBus:= totBus - 1
   fimescolha

fimprocedimento

funcao calculaTotalPagar(tempoPagar: real): real
inicio

   se(tempoPagar < 15)entao
      retorne 0
   fimse

   se(tempoPagar < 60) e (tempoPagar > 15)entao
      retorne 1.5
   fimse

   se(tempoPagar > 60)entao
      tempoPagar:= tempoPagar - 61
      tempoPagar:= int(tempoPagar / 60) + 1
      retorne 1.5 + tempoPagar
   fimse

fimfuncao

funcao calculaMinutos():inteiro
var

   hora, minutos, resultado, horaChegada: inteiro
   minutoChegada, horaSaida, minutoSaida: inteiro
   run: logico

inicio
   run:= verdadeiro
   limpatela()
   escreval("******************************************")
   escreval("*********CALCULO DE MINUTOS***************")
   escreval("******************************************")
   enquanto run faca
      escreva("Coloque a hora de chegada (no formato 24 hrs) : ")
      leia(horaChegada)
      se(horaChegada < 8) ou (horaChegada >= 18)entao
         escreval("-------------------ATENCAO--------------------------")
         escreval("-------------Horario invalido-----------------------")
         escreval("-----Estacionamento Fechado no horario indicado-----")
      senao
         run:= falso
      fimse
   fimenquanto

   run:= verdadeiro
   enquanto run faca
      escreva("Agora informe o minuto de chegada: ")
      leia(minutoChegada)
      se(minutoChegada < 0) ou (minutoChegada >= 60)entao
         escreval("-------------------------------")
         escreval("Entrada Inválida")
         escreval("-------------------------------")
      senao
         run:= falso
      fimse
   fimenquanto

   escreval("-------------------------------")

   run:= verdadeiro
   enquanto run faca
      escreva("Coloque a hora de saida (no formato 24 hrs) : ")
      leia(horaSaida)
      se(horaSaida < 0) ou (horaSaida >= 24) ou (horaSaida < horaChegada)entao
         escreval("-------------------------------")
         escreval("Entrada Inválida")
         escreval("A hora de saída deve estar no formato 24h e não pode ser menor que a hora de chegada")
         escreval("-------------------------------")
      senao
         run:= falso
      fimse
   fimenquanto

   run:= verdadeiro
   enquanto run faca
      escreva("Agora informe o minuto da saida: ")
      leia(minutoSaida)
      se(minutoSaida < 0) ou (minutoSaida >= 60)entao
         escreval("-------------------------------")
         escreval("Entrada Inválida")
         escreval("-------------------------------")
      senao
         run:= falso
      fimse
   fimenquanto
   limpatela()
   escreval("TOTAL DE MINUTOS")
   escreval("-------------------------------")

   escreval("Hora chegada:", horaChegada,":", minutoChegada)
   escreval("Hora saida:", horaSaida,":", minutoSaida)

   hora:= horaSaida - horaChegada
   minutos:= minutoSaida - minutoChegada
   resultado:= hora * 60 + minutos

   escreval("-------------------------------")
   escreval("Total de minutos: ", resultado, "min")
   prosseguir()
   retorne resultado
   limpatela()
fimfuncao

Inicio
   run:= verdadeiro
   enquanto run faca
      menuPrincipal()
      escreva("Escolha uma opção:")
      leia(opcao)


      escolha(opcao)

      caso(1)
         cadastrarVeiculo()
      caso(2)
         qtdVeiculos()
      caso(3)
         cobranca()
      caso(4)
         retornar()
      caso(5)
         run := falso
      outrocaso

      fimescolha
      limpatela()
   fimenquanto
Fimalgoritmo
