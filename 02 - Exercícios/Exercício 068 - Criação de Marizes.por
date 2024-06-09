programa
{
	/*Você deve fazer um amatriz 4x4 que será capaz de gerar um jogo de campo minado.
	O usuário terá de infomrar a linha e a coluna que ele quer ver, tipo batalha naval.
	Se tiver bomba, ele perde o jogo, senão, ele ganha! 
	
	Além disso, quando o usuário informar valores errados das linhas e colunas, o programa 
	deverá se capaz de rejeitar essa entrada e pedir o dado novamente.
	
	Você também deve contar o número de tentativas dele, que vão até 3 caso ele não erre nada.

	Cada ponto vale por 2
	
	*/

	inclua biblioteca Util --> U
	inclua biblioteca Tipos --> T
	funcao inicio()
	{	
		//declaração das variáveis que vamos utilizar:
		caracter campo_minado[4][4] //matriz 4x4 para o campo minado
		inteiro qntd_de_bombas = 0 
		
		inteiro Ls = 0 //,s = linha sorteada
		inteiro Cs = 0 //Cs = Coluna sorteada

		//codificação do nosso software:
		escreva("============================================\n")
		escreva("\t\tCAMPO MINADO!\n")
		escreva("============================================\n")

		//preenchimento do campo_minado com valores não explisovos: 
		para(inteiro linha = 0; linha < U.numero_linhas(campo_minado); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(campo_minado); coluna ++){
				campo_minado[linha][coluna] = '-'
				escreva("\t ? ")
			}
			escreva("\n")
		}

		//Preenchimento das bombas:
		enquanto(qntd_de_bombas < 5){
			//aqui eu sorteio um número aleatório para a posição da linha
			Ls = sorteia(0 , U.numero_linhas(campo_minado)-1) //o -1 é por conta do índice inicar em 0 

			//aqui eu sorteio um número aleatório para a posição da coluna:
			Cs = sorteia(0 , U.numero_colunas(campo_minado)-1) //o -1 é por conta do índice inicar em 0

			se(campo_minado[Ls][Cs] == '-'){
				campo_minado[Ls][Cs] = 'O'
				qntd_de_bombas ++	
			}
		}

		//capturando os palpites do usuário: 
		inteiro tentativas = 0 //quantidade de tentativas do jogador
		inteiro soma_pontos = 0 //acumulador de pontos do usuário

		inteiro Le = 0 //Linha escolhida pelo usuário.
		inteiro Ce = 0 //Coluna escolhida pelo usuário.
		cadeia teclado //variável de verificação e controle dos loopings 

		//looping de processamento de dados coletados do usuário:
		enquanto(verdadeiro ){
			escreva("\n--------------------------------------------\n")
			escreva("Faça a sua jogada! (Tentativa: " + tentativas + ")")
			
			//lopping de verificação para o valor da linha digitada:
			enquanto(verdadeiro){
				escreva("\nDigite uma linha: ")
				leia(teclado)
				
				//validação do número digitado
				se(nao(T.cadeia_e_inteiro(teclado,10))){
					escreva("\nentrada de dados inválida!")
				}senao{
					//condição quando o usuário digitar um número negativo ou maior que a quantidade de linhas:
					se((T.cadeia_para_inteiro(teclado,10) < 0) ou (T.cadeia_para_inteiro(teclado,10) > U.numero_linhas(campo_minado) - 1)){
						escreva("\nEntrada de dados inválida!")
						escreva("\nO valor tem que estar entre 0 e " + (U.numero_linhas(campo_minado) - 1) + ".\n")		
					}senao{
						Le = T.cadeia_para_inteiro(teclado, 10)
						pare //condição de quebra desse looping
					}
				}
			}
			
			//lopping de verificação para o valor da coluna digitada:
			enquanto(verdadeiro){
				escreva("\nDigite uma coluna: ")
				leia(teclado)
				
				//validação do número digitado
				se(nao(T.cadeia_e_inteiro(teclado,10))){
					escreva("\nentrada de dados inválida!")
				}senao{
					//condição quando o usuário digitar um número negativo ou maior que a quantidade de linhas:
					se((T.cadeia_para_inteiro(teclado,10) < 0) ou (T.cadeia_para_inteiro(teclado,10) > U.numero_colunas(campo_minado) - 1)){
						escreva("\nEntrada de dados inválida!")
						escreva("\nO valor tem que estar entre 0 e " + (U.numero_colunas(campo_minado) - 1) + ".\n")		
					}senao{
						Ce = T.cadeia_para_inteiro(teclado, 10)
						pare //condição de quebra desse looping
					}
				}
			}
	
			//verificação da escolha do usuário: 
			//Condição para quando o usuário digitar um palpite onde não há bombas
			se(campo_minado[Le][Ce] == '-'){
				campo_minado[Le][Ce] = 'V'

				//Para de percurso de matriz:
				para(inteiro linha = 0; linha < U.numero_linhas(campo_minado); linha ++){
					para(inteiro coluna = 0; coluna < U.numero_colunas(campo_minado); coluna ++){
						
						//exibiçao das posições embaralhadas
						se(campo_minado[linha][coluna] != 'V'){
							escreva("\t ? ")
						}senao{
							escreva("\t V ")
						}
					}
					escreva("\n")
				}
				
				//aviso de acerto ao usuário:
				soma_pontos += 2
				tentativas ++
				escreva("\n--> Tiro certo! Parabéns.\n")
				escreva("Total de pontos: " + soma_pontos)

				//mensagem para quando o usuário ganhar o jogo
				se(tentativas == 3){
					escreva("\n============================================\n")
					escreva("\t\tGAME OVER!\n")
					escreva("============================================\n")
					
					para(inteiro linha = 0; linha < U.numero_linhas(campo_minado); linha ++){
						para(inteiro coluna = 0; coluna < U.numero_colunas(campo_minado); coluna ++){
							escreva("\t " + campo_minado[linha][coluna] + " ")
						}
						escreva("\n")
					}

					escreva("\nVocê ganhou!!")
					escreva("\nVocê fez " + soma_pontos + " pontos em " + tentativas + "tentativas!")
					pare	
				}
			}senao{
				//condição pra quando digitarem a mesma coisa:
				se(campo_minado[Le][Ce] == 'V'){
					escreva("\nVocê ja fez essa jogada! Não Pode repetir.\n")
				}senao{
					//condição para quando o usuário perder
					campo_minado[Le][Ce] = '*'
					escreva("============================================\n")
					escreva("\t\tGAME OVER!\n")
					escreva("============================================\n")

					//mostrando onde o usuário acertou a bomba e onde as outras estavam:
					para(inteiro linha = 0; linha < U.numero_linhas(campo_minado); linha ++){
						para(inteiro coluna = 0; coluna < U.numero_colunas(campo_minado); coluna ++){
							escreva("\t " + campo_minado[linha][coluna] + " ")
						}
						escreva("\n")
					}

					escreva("\n--------------------------------------------")
					escreva("\nVocê não ganhou! :/")
					escreva("\nVocê fez " + soma_pontos + " pontos em " + tentativas + " tentativas!\n\n" )
					pare
				}
			}
		}//Fim do looping de tentativas
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 676; 
 * @DOBRAMENTO-CODIGO = [41, 68, 88, 113, 149];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {campo_minado, 21, 11, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */