programa
{
	/* EXERCÍCIO 55:
	
	Esse algoritmo deve ser capaz de preencher automaticamente um vetor de 10 índices.
	O índice número 0 deve começar com o valor 3 e a partir daí, ir sendo o dobro do valor anterior.

	Exemplo:   3   →   6   →   12   →   24   →   48...
	         ind0     ind1    ind2     ind3     ind4   	*/
	
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar: 
		inteiro Vetor [10]
		
		//codificação do nosso software:
		para (inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			//
			se(contador==0){
				Vetor[contador]= 3
			}senao{
				//alimentador dos índices do vetor
				Vetor[contador]= (Vetor[contador - 1])*2
			}	
		}

		//apresentação dos números armazenados:
		escreva("\nO vetor foi preenchido com os valores: \n")
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			escreva(contador,":{", Vetor[contador], "} ")
			U.aguarde(500)
		}

		escreva("\n\n")


		/*A forma convencional que você estava fazendo era:
		para (inteiro contador = 0; contador < 10; contador ++)
		
		a forma mais fácil e eficiente é :
		
		para (inteiro contador = 0; contador < U.tamanho_elemento(Vetor); contador ++)*/

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 884; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */