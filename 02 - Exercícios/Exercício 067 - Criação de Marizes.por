programa
{	/*Exercício 67 - Média dos valores com dados

	Esse algoritmo deve ser capaz de gerar uma matriz 5x5 e fazer a média dos valores sorteados
	Depois disso, vamos informar quais valores da segunda linha são acima da média
	e quantas vezes surgiram valores acima da média
	
	Outra coisa, na terceira coluna vamos fazer o contrário da segunda, vamos anotar
	valores abaixo da média e quantas ocorrências*/
	
	inclua biblioteca Util --> U
	inclua biblioteca Matematica --> Mat
	funcao inicio()
	{	
		//declaração das variáveis que vamos utilizar:
		inteiro matriz [5][5], ocorrencia = 0
		real media = 0.0

		//codificação do nosso software
		escreva("\nGerando uma matriz 5x5:\n\n")
		escreva("===================================================\n")
		//geração da matriz:
		para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
			para(inteiro coluna =0; coluna < U.numero_colunas(matriz); coluna++){
				matriz[linha][coluna] = sorteia(0,10)
				escreva("\t" + matriz[linha][coluna])
				media += matriz[linha][coluna]
			}
			escreva("\n")
		}

		//Apresentação de resultados ao usuário:
		escreva("===================================================\n")
		media = media / (U.numero_linhas(matriz) * U.numero_colunas(matriz))
		escreva("Média dos valores sorteados: " + Mat.arredondar(media, 2))
		escreva("\n===================================================\n")

		//para de percurso para pegar os valores acima da média da 2º linha:
		para(inteiro linha = 1; linha < 2; linha ++){
			escreva("Os valores acima da média são: \n")
			para(inteiro coluna = 0; coluna < U.numero_colunas(matriz); coluna ++){
				se(matriz[linha][coluna] >= media){
					escreva("\n[" + linha + "][" + coluna + "] = "+ matriz[linha][coluna])
					ocorrencia += 1
					U.aguarde(500)	
				}
			}
			escreva("\n\nTotal de ocorrências: " + ocorrencia)
			escreva("\n===================================================\n")
		}

		//para de percurso para capturar valores abaixo da média na terceira coluna:
		para(inteiro coluna = 2; coluna < 3; coluna ++){
			ocorrencia = 0
			para(inteiro linha = 0; linha < U.numero_linhas(matriz); linha ++){
				se(matriz[linha][coluna] <= media){
					escreva("\n[" + linha + "][" + coluna + "] = " + matriz[linha][coluna])
					ocorrencia += 1
					U.aguarde(300)
				}
			}
			escreva("\n\nTotal de ocorrências: " + ocorrencia)
		}escreva("\n===================================================\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */