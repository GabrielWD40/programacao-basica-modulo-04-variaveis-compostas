programa
{
	
	inclua biblioteca Util --> U
	inclua biblioteca Tipos --> T
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//Declaração das variáveis que vamos utilizar:
		inteiro Vetor[9], chave, soma_das_chaves = 0, soma_total = 0
		real media
		
		//codificação do nosso software:

		//gera os números dos vetores:
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			Vetor[contador] = sorteia(1, 10)
		}

		//mostra os números sorteados:
		escreva("\nNúmeros sorteados: ")
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			escreva(Vetor[contador] + " ")
			U.aguarde(200)
		}

		//contadores em Vetores:
		escreva("\n\nQuer somar acima de quais valores? ")
		leia(chave)

		//início da estrutura de percurso e totalizadores
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			se(Vetor[contador] >= chave){
				soma_das_chaves += Vetor[contador]
			}
			//somando todos os valores
			soma_total += Vetor[contador]
		}
		
		//Apresentação de resultados ao usuário:
		escreva("\nA soma total é dos números acima de " + chave + " é = " + soma_das_chaves)
		escreva("\nA soma total de todos os valores é = " + soma_total)
		
		//convertendo um inteiro para real para poder calcular a média:
		media = T.inteiro_para_real(soma_total)/ U.numero_elementos(Vetor)
		escreva("\nA média de todos os valores do Vetor é = " + mat.arredondar(media, 2))
		
		//mostrando os valores acima da média
		escreva("\nOs valores acima da média são: ")
		//início da estrutura de percurso de valores acima da média
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			se(Vetor[contador] >= media){
				escreva(Vetor[contador] + " → ")
				U.aguarde(300)
			}
		}escreva("fim!\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1714; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */