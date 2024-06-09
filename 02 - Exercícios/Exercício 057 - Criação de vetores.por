programa
{	/*Exercício 57 - Sorteio de valores nos vetores
	Um vetor de 10 posições deve ser preenchido com valores sorteados aleatoriamente
	depois você deve mostrar a sequência em ordem de sorteioe depois, do último sorteado ao primeiro
	
	Exemplo: a sequencia de dorterio ficou 1, 2 e 3, você mostrará 3, 2, 1.*/
	
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro Vetor[10]

		//codificação do nosso software:
		escreva("\n *** Sorteio de valores automaticamente *** \n\n")
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			Vetor[contador] = sorteia(1,10)
		}

		//exibindo as sequências de sorteio ao usuário:
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor) ;contador ++){
			escreva(contador + ":{" , Vetor[contador] , "} | ")
		}

		//Sequência invertida:
		escreva("\n\nMostrando a ordem invertida: \n\n")
		para(inteiro contador = U.numero_elementos(Vetor) - 1;  contador >= 0; contador --){
			escreva(contador + ":{" , Vetor[contador] , "} | ")
		}escreva("\n\n")

		//lembre-se de sempre usar o tamanho de elemento ao invés de usar números NOS PERCURSOS.
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */