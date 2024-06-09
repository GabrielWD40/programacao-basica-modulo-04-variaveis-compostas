programa
{
	/*EXERCÍCIO 066: 
		Faça uma matriz 3x3 que leia os valores do teclado. Faça aquela verificação se a éssoa digitou só números.
		Depois disso, mostra a matriz gerada e procure pelo maior valor informado.

		Ao encontrar o maior valor digitado, informe as posições que ele apareceu.	
	*/
	
	inclua biblioteca Tipos --> T
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		cadeia teclado
		inteiro matriz[3][3], maior_valor = 0
		
		//codificação do nosso software:
		escreva("\nDigite números inteiros para a matriz abaixo:\n")

		//início do preenchimento da matriz: 
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){

				//verificação do que o usuário digitou:
				faca{
					escreva("Digite um valor para a posição [" + linha + "]" + "[" + coluna + "]: " )
					leia(teclado)
					//orientações ao usuário engraçadinho que digita errado de propósito
					se(nao(T.cadeia_e_inteiro(teclado, 10))){
						escreva("\nDigite apenas números inteiros! Ex: 1, 2, 3...\n")	
					}
				}enquanto(nao(T.cadeia_e_inteiro(teclado, 10)))

				//após a verificação, a matriz recebe o valor:
				matriz[linha][coluna] = T.cadeia_para_inteiro(teclado, 10)
			}
		}

		//apresentação de resultados ao usuário:
		escreva("\n=======================================\n")
		escreva("Procurando pelo maior valor da matriz:\n")
		maior_valor = matriz[0][0]
		//inicío da estrutura de percurso mostrando a matriz e o maior valor.
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				escreva(matriz[linha][coluna])
				//capturando o maior valor após o primeiro looping
				se(matriz[linha][coluna] > maior_valor){
					maior_valor = matriz[linha][coluna]
				}
				se (coluna == U.numero_colunas(matriz) -1){
					escreva(" ... ")	
				}senao{
					escreva(" --> ")
				}
			}
			U.aguarde(500)
			escreva("\n")
		}
		escreva("=======================================\n")
		escreva("Maior valor encontrado: " + maior_valor)
		escreva("\n=======================================\n")

		//estrutura de percurso para exibir as posições do maior valor: 
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				//condição de verificação:
				se(matriz[linha][coluna] == maior_valor){
					escreva("[" + linha + "][" + coluna + "] → ")
				}
			}
		}escreva("Fim!!\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1569; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */