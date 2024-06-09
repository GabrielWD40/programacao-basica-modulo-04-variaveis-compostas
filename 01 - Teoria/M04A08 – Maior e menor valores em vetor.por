programa
{

	inclua biblioteca Util --> U
	funcao inicio()
	{
		//delcaração de variáveis que vamos utilizar:
		inteiro Vetor [10], maior = 0, menor = 0
		
		//codificação e exemplificação do nosso software:
		
		//preenchimento do vetor
		para(inteiro posicao = 0; posicao < U.numero_elementos(Vetor); posicao ++){
			Vetor[posicao] = sorteia (1,5)
		}

		//exibindo os valores dentro dos vetores:
		escreva("\n\nO vetor gerado foi: ")
		para(inteiro posicao = 0; posicao < U.numero_elementos(Vetor); posicao++){
			escreva(Vetor[posicao] + " → ")
			U.aguarde(200)	
		}escreva("fim!")

		//verificação do maior valor dentro do vetor
		para(inteiro posicao = 0; posicao < U.numero_elementos(Vetor); posicao++){
			se(posicao == 0){
				maior = Vetor[posicao]
				menor = Vetor[posicao]	
			}senao{
				//verificando o maior depois do primeiro laço
				se(Vetor[posicao] > maior){
					maior = Vetor[posicao]
				}
				//Verificando o menor depois do primeiro laço
				se(Vetor[posicao] < menor){
					menor = Vetor[posicao]
				}
			}
		}

		//apresentação de resultados ao usuário:
		
			//exibindo o maior valor:
		escreva("\n\nO maior valor sorteado foi " + maior)
			//mostrando as posições que o maior aparece:
		para(inteiro posicao = 0; posicao < U.numero_elementos(Vetor); posicao ++){
			se(Vetor[posicao] == maior){
				escreva("\n    Encontrei o valor " + maior + " na posição " + posicao)
			}
		}

			//exibindo o menor valor:
		escreva("\n\nO menor valor sorteado foi " + menor)
			//Mostrando as posições que o menor aparece:
		para(inteiro posicao = 0; posicao < U.numero_elementos(Vetor); posicao ++){
			se(Vetor[posicao] == menor){
				escreva("\n    Eu encontrei o valor " + menor + " na posição " + posicao)
			}
		}escreva("\n\n")	 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1756; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */