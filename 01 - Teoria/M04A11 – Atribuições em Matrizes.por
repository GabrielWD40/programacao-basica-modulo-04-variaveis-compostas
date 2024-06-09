programa
{
	inclua biblioteca  Util --> U 
	funcao inicio()
	{
		//delcaração das variáveis que vamos utilizaar: 
		inteiro  valor [3][3]
		
		//codificação do nosso o software: 
		escreva("1º matriz: \n\n")
		/*EXIBIÇÃO DO PREENCHIMENTO DOS ÍNDICES DA MATRIZ COM 10:*/
		para(inteiro linhas = 0; linhas < U.numero_linhas(valor); linhas ++){
			para(inteiro colunas = 0; colunas < U.numero_colunas(valor); colunas ++){
				valor [linhas] [colunas] = 10
			}
		} 
		//exibição: 
		para(inteiro linhas = 0; linhas < U.numero_linhas(valor); linhas ++){
			para(inteiro colunas = 0; colunas < U.numero_colunas(valor); colunas ++){
				escreva(valor[linhas][colunas] + " | " )
				U.aguarde(500)	
			}escreva("\n") // quebra de linha pra dar o desenho certeiro da matriz (só estética)
		}escreva("\n\n")




		escreva("\n2º matriz: \n\n")
		/*EXIBIÇÃO DO PREENCHIMENTO DOS ÍNDICES DA MATRIZ COM NÚMEROS SORTEADOS:*/
		para(inteiro linhas = 0; linhas < U.numero_linhas(valor); linhas ++){
			para(inteiro colunas = 0; colunas < U.numero_colunas(valor); colunas ++){
				//momento que o índice recebe uma valor sorteado	
				valor[linhas][colunas] = sorteia(1,10)
			}
		}
		//exibição:
		para(inteiro linhas = 0; linhas < U.numero_linhas(valor); linhas ++){
			para(inteiro colunas = 0; colunas < U.numero_colunas(valor); colunas ++){
				escreva(valor[linhas] [colunas] + " | ")
				U.aguarde(500)
			}escreva("\n") //quebra de linha pra deixar bonitinho
		}escreva("\n\n")

		
		escreva("3º Matriz: \n\n")
		/*EXIBIÇÃO DO PREENCHIMENTO DOS ÍNDICES DA MATRIZ COM NÚMEROS ESCOLHIDOS PELO USUÁRIO:*/
		para(inteiro linhas = 0; linhas < U.numero_linhas(valor); linhas ++){
			para(inteiro coluna = 0; coluna < U.numero_colunas(valor); coluna ++){
				escreva("Digite um valor para [" + linhas + "] [" + coluna + "]: ")
				leia(valor[linhas][coluna])	
			}
		}escreva("\n\n")
		para(inteiro linhas = 0; linhas < U.numero_linhas(valor); linhas ++){
			para(inteiro colunas = 0; colunas < U.numero_colunas(valor); colunas ++ ){
				escreva( valor [linhas][colunas] + " | ")
				U.aguarde(500)
			}escreva("\n") //queba de linha da matrzi pra deixar bonitinho e fazer o desenho estético
		}escreva("\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 7, 11, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */