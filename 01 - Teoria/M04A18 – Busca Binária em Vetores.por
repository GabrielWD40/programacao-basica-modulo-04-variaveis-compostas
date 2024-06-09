programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{	//Declaração das variáveis que vamos utilizar: 
		inteiro vetor[10], 			// Vetor de 10 posiões teste
		contador_do_sorteio = 0, 	// Usada para alimentar o contador do sorteio não repetido.
		auxiliar_de_ordenacao, 		// Variável auxiliar para ordenação de valores em vetores.
		chave = 0, 				// Valor que será usado para fazer a busca binária pelo usuário.
		aux_inicial, 				// Variável que será usada para o valor inicial de busca binária.
		aux_mediana = 0,	 		// Variável que será usada para o valor mediano de busca binária.
		aux_final					// Variável que será usada para o valor final de busca binária.
		logico achei_repetido = falso // Variável de controle para valores repetidos.
		logico encontrei_a_chave	     // Variável de apoio na varredura da chave dentro do vetor.
		
		//Codificação do nosso software	
		//início do sorteio de números:
		enquanto(contador_do_sorteio < U.numero_elementos(vetor)){
			vetor[contador_do_sorteio] = sorteia(1,10)
			achei_repetido = falso
	
			//início de looping de verificação de repetidos:
			para(inteiro varredura_dos_repetidos = 0; varredura_dos_repetidos < contador_do_sorteio; varredura_dos_repetidos ++){
				//estrutura condicional de verificação dos iguais:
				se(vetor[varredura_dos_repetidos] == vetor[contador_do_sorteio]){
					achei_repetido = verdadeiro
					pare	
				}
			}
			//condição para quando não houver repetidos
			se(nao achei_repetido){
				escreva(vetor[contador_do_sorteio] + " → ")
				contador_do_sorteio ++	
			}
			
		}//fim do looping de sorteio

		//início da ordenação de valores de dentro dos vetores: 
		para(inteiro primeiro_ponteiro = 0; primeiro_ponteiro < U.numero_elementos(vetor) - 1; primeiro_ponteiro ++ ){
			para(inteiro segundo_ponteiro = primeiro_ponteiro + 1; segundo_ponteiro < U.numero_elementos(vetor); segundo_ponteiro ++){
				//início da estrutura condicional para avaliar a ordenação e valores uns maiores que outros:
				se(vetor[primeiro_ponteiro] > vetor[segundo_ponteiro] ){
					auxiliar_de_ordenacao = vetor[primeiro_ponteiro]
					vetor[primeiro_ponteiro] = vetor[segundo_ponteiro]
					vetor[segundo_ponteiro] = auxiliar_de_ordenacao				
				}
			}
		}//fim do 'para' de ordenação do looping de ordenação.


		//exibição do vetor: 
				//condição para quando a chave for maior que o meio:
				se(chave > vetor[aux_mediana]){
					aux_inicial = aux_mediana + 1 
				}senao{
					//condição para quando a chave for menor que a mediana:
					aux_final = aux_mediana - 1
				}
			}
		}//fim do looping 'enquanto' de verificação de chave!
		
		//exibição de resultados ao usuário:
		se(nao encontrei_a_chave){//caso não encontremos a chave
			escreva("\nNão encontrei a chave '" + chave + "' no vetor.\n\n")
		}senao{
			escreva("\nEncontrei a chave '" + chave + "' na posição" + aux_mediana + "\n\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */