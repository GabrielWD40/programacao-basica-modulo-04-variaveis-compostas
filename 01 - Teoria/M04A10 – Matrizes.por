programa
{
	//exemplos de criação de matrizes:

	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração de variáveis que vamos utilizar
		inteiro variavel_simples //variável simples
		inteiro vetor [5] // Vetor com 6 posições 
		inteiro matriz [3][2] // matriz com 3 LINHAS e 2 COLUNAS
		
		/*LEMBRE-SE QUE A CONTAGEM DOS ÍNDICES DAS VARIÁVEIS COMPOSTAS COMEÇAM EM 0*/

	
		//Codificação do nosso software:		
		escreva("\nAtribuindo valores às variáveis:\n")
		variavel_simples = 5

		//preenchimento do vetor:
		para(inteiro contador = 0; contador < U.numero_elementos(vetor); contador ++){
			vetor[contador] = contador
		}

		//preenchimento manual das matrizes (3*2):
		matriz [0][0] = 5
		matriz [0][1] = 10
		matriz [1][0] = 15
		matriz [1][1] = 20
		matriz [2][0] = 25
		matriz [2][1] = 30

		//exibição dos resultados para melhor didática:
		escreva("Variável simples: " + variavel_simples)
		
		escreva("\nVetor: ")
		para(inteiro contador = 0; contador < U.numero_elementos(vetor); contador ++){
			escreva(vetor[contador])
		}escreva("\n")

		escreva("\nMatrizes: \n")
		para(inteiro n_linhas = 0; n_linhas < U.numero_linhas(matriz); n_linhas ++){
			para(inteiro n_colunas = 0; n_colunas < U.numero_colunas(matriz); n_colunas ++){
				escreva(matriz[n_linhas][n_colunas] + " | " )
			}
			escreva("\n")
		}
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 929; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */