programa
{	/*Exercício 56 - Vetor com contagem de 5
	Esse software deverá ser capaz de gerar um vetor com 10 posições.
	Depois, você deverá capturar o valor inicial escolhido pelo usuário e somar 5 em 5
	Exemplo: número digitado = 6
	6+5=11, 11+5=16.....*/

	inclua biblioteca Tipos --> T
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		cadeia teclado
		inteiro Vetor[10]

		//codificação do nosso software:s
		faca{//regrinha de looping pra quem digitar errado.
			escreva("\nDigite um número inteiro qualquer: ")
			leia(teclado)
		}enquanto(nao(T.cadeia_e_inteiro(teclado, 10)))
		
		//início da estrutura de percurso:
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			//condição para quando o loopping começa:
			se(contador == 0){
				Vetor[contador] = T.cadeia_para_inteiro(teclado, 10)
			}senao{
				Vetor[contador] = (Vetor[contador - 1])+5
			}
		}

		//apresentação de resultados ao usuário:
		para(inteiro contador = 0; contador < U.numero_elementos(Vetor); contador ++){
			escreva(contador + ":[" , Vetor[contador] , "] | ")
			U.aguarde(400)
		}escreva("\n\n")//quebra de linha pra deixar bonito!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 952; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {teclado, 13, 9, 7}-{Vetor, 14, 10, 5}-{contador, 23, 15, 8}-{contador, 33, 15, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */