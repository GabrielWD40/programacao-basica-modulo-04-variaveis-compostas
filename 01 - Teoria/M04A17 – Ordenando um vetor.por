programa
{
	inclua biblioteca Util --> U
	funcao inicio()
	{
		//declaração das variáveis utilizadas:
		inteiro vetor[10], auxiliar = 0, contador_sorteio = 0
		logico achei_repetido = falso

		//codificação do nosso software:
		escreva("Os números sorteados foram: \n")

		//início da estrutura de sorteio de valores aleatórios para preencher o vetor:
		enquanto(contador_sorteio < U.numero_elementos(vetor)){
			//vetor recendo um valor
			vetor[contador_sorteio] = sorteia(1,10)
			achei_repetido = falso

			//looping verificação de duplicidades através de um looping:
			para(inteiro posicao_verificacao = 0; posicao_verificacao != contador_sorteio; posicao_verificacao ++){
				//estrutura condicional para a varrer o vetor a procura de duplicação:
				se(vetor[contador_sorteio] == vetor[posicao_verificacao]){
					achei_repetido = verdadeiro
					pare // comando de quebra para fazer o programa inciar o looping de sorteio novamente
				}
			}
			
			//condição para quando não há sorteios repetidos:
			se(nao achei_repetido ){
				escreva(vetor[contador_sorteio] + " → ")
				//U.aguarde(300)
				contador_sorteio ++
			}
		}escreva("fim!\n\n")//fim do looping 'enquanto', de geração de valores.


		//início da ordenação dos vetores:
		escreva("Organizando os valores sorteados em ordem crescente: \n")
		para(inteiro apontador_primario = 0; apontador_primario < U.numero_elementos(vetor); apontador_primario ++){
			para(inteiro apontador_secundario = apontador_primario + 1; apontador_secundario < U.numero_elementos(vetor); apontador_secundario ++){
			//Lembre-se: O valor do segundo contador sempre vai ser primairo + 1, pois assim ele vai varrer todo o vetor corretamente	
				//estrutura condicional para verificação da ordem:
				se(vetor[apontador_primario] > vetor[apontador_secundario]){
					auxiliar = vetor[apontador_primario] 
					vetor[apontador_primario] = vetor[apontador_secundario]
					vetor[apontador_secundario] = auxiliar
				}
			}escreva(vetor[apontador_primario] + " → ") //fim do segundo laço de 'para'	
		}escreva("fim\n\n")


		/* CÓDIFO DO GUANABARA, PARA ESTUDO
		para(inteiro p = 0; p < U.numero_elementos(vetor) - 1; p ++){
			para(inteiro s =  1; s < U.numero_elementos(vetor); s++){
				se(vetor[p] > vetor[s]){
					auxiliar = vetor[p]
					vetor[p] = vetor[s]
					vetor[s] = auxiliar
				}
			}
		}

		para(inteiro posicao = 0; posicao < U.numero_elementos(vetor); posicao ++){
			escreva(vetor[posicao] + " → ")
		}*/
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1490; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 7, 10, 5}-{auxiliar, 7, 21, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */