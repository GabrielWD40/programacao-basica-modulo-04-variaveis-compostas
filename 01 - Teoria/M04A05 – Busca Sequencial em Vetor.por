programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro num[8] = {2, 5, 7, 3, 2, 9, 4, 2}
		inteiro chave
		logico achei = falso
		
		//codificação do nosso software:
		escreva("\nQual é a chave? ")
		leia(chave)

		//início da busca sequencial dentro do Vetor
		para(inteiro pos = 0; pos < U.numero_elementos(num); pos++){
			se(chave == num[pos]){
				escreva("Encontrei a chave na posição " + pos)
				achei = verdadeiro
			}
		}//fim da estrutura de looping

		//mensagem de retorno quando nós não achamos a chave dentro do Vetor.
		se(nao achei){
			escreva("\nInfelizmente, eu não encontrei o valor da chave (" + chave + ") no Vetor!\n\n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 613; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {achei, 9, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */