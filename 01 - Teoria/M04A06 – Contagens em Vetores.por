programa
{
	inclua biblioteca Util --> U	
	funcao inicio()
	{
		//Declaração das variáveis que vamos utilizar:
		inteiro Vetor[9]
		inteiro chave, tot = 0

		//codificação do nosso software:
		para(inteiro pos = 0; pos < U.numero_elementos(Vetor); pos ++){
			Vetor[pos] = sorteia(1,10)
		}
		
		//exibição dos resultados ao usuário:
		escreva("\nOs valores sorteados foram: ")
		para(inteiro pos = 0; pos < U.numero_elementos(Vetor); pos ++){
			escreva(Vetor[pos] + " → ")
			U.aguarde(400)
		}escreva("fim\n\n")

		//Procurando valores dentro do Vetor:
		escreva("Você está procurando por qual valor? ")
		leia(chave)
		
		escreva("Procurando pela chave " + chave + "...\n")
		para(inteiro pos = 0; pos < U.numero_elementos(Vetor); pos ++){
			//verificação de chave dentro do Vetor
			se(chave == Vetor[pos]){
				tot ++
				escreva("\nEu encontrei a chave " + chave + " na posição " + pos)	
			}
		}U.aguarde(1500)
		
		se(tot > 0){
			se(tot == 1){
				escreva("\nO valor (" + chave + ") está contido 1 vez dentro do vetor.\n\n")
			}senao{
				escreva("O valor (" + chave + " se reperte " + tot + " dentro do Vetor\n\n")
			}
		}senao{
			escreva("\nO valor " + chave + " não foi encontrado!\n\n")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 880; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */