programa
{	/*Exercício 58 - Vetor com fibonacci*/
	
	inclua biblioteca Util --> U					
	funcao inicio()
	{
		//declaração das variáveis que vamos utilziar:
		inteiro Vetor[15]

		//codificação do nosso software:
		escreva("\nOs 15 primeiros termos da sequência de Fibonacci são: \n")

		//início da construção de Fibonacci:
		Vetor[0] = 0
		Vetor[1] = 1 
		para(inteiro contador = 2; contador < U.numero_elementos(Vetor); contador ++){
			Vetor[contador] = (Vetor [contador - 1]) + (Vetor [contador - 2])
		}escreva("\n")

		//apresentação do Fibonacci ao usuário:
		para (inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			escreva("[" + Vetor[contador] + "]  ")
			U.aguarde(400)
		}escreva("\n")

		//lembre-se de sempre usar o tamanho de elemento ao invés de usar números NOS PERCURSOS.
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 691; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Vetor, 8, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */