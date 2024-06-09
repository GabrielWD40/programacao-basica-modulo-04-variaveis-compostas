programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		
		logico achei = falso  
		inteiro vetor[10]=  {1, 2, 3, 4, 5, 6, 7 , 8 , 9 , 10}
		inteiro aux_inicial = 0
		inteiro aux_final = U.numero_elementos(vetor)
		inteiro aux_mediana = 0
		inteiro chave
	
	
		escreva("\nQual número você procura? ")
		leia (chave)
	
		
		enquanto(aux_inicial <= aux_final){
					aux_mediana = (aux_inicial + aux_final) / 2
				
					//condição de igualdade:
					se(vetor[aux_mediana] == chave){
						achei = verdadeiro 
						pare
					}senao{
					// condição se a chave for maior que a variável mediana:
						se(chave > vetor[aux_mediana]){
							aux_inicial = aux_mediana + 1 
						}senao{
							aux_final = aux_mediana - 1
						}
				
					}		
			}

		se(achei){
			escreva("encontrei a chave na posição " + aux_mediana)
		}senao{
			escreva("Não achei nada!")
		}
	

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */