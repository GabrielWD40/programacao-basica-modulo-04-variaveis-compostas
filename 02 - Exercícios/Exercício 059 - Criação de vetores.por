programa
{
	/*Esse algoritmo deve ser capaz de gerar um vetor com 6 posições que lerá 6 notas de alunos
	Após isso, você terá de calcular a média das notas digitadas e mostrar o nome dos alunos acima da média.*/
	
	inclua biblioteca Util --> U
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Tipos --> T
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		real notas [6], media = 0
		cadeia teclado

		//codificação do nosso software
		escreva("\n=============================================")
		escreva("\n	    NOTAS ACADÊMICAS")
		escreva("\n=============================================\n\n")

		//leituras de notas dos vetores:
		para(inteiro contador = 0; contador < U.numero_elementos(notas); contador ++){
			
			//verificação pro idiota que digitar letras de propósito:
			faca{
				escreva("    Digite a " + (contador + 1) + "ª nota: ")
				leia(teclado)
			}enquanto(nao(T.cadeia_e_real(teclado)) e (nao(T.cadeia_e_inteiro(teclado, 10))) ou (T.cadeia_para_real(teclado) > 10) ou (T.cadeia_para_real(teclado) < 0))

			//armazenamento das informações no vetor quando o cara digita tudo certo.
			notas[contador] = T.cadeia_para_real(teclado)
			media += notas[contador]
			
		}//cálculo de média ↓
		media = Mat.arredondar(media / U.numero_elementos(notas),2)
		escreva("\n=============================================\n")

		//apresentação de resultados ao usuário:
		escreva("\nA média das " + U.numero_elementos(notas) + " notas digitadas foram: " + media)
		escreva("\nOs alunos que ficaram acima da média foram: \n")
		
		//estrutura de percurso para verificar alunos acima da média:
		para(inteiro posicao = 0; posicao < U.numero_elementos(notas); posicao ++){
			//início da verificação dos alunos acima da média:
			se(notas[posicao] > media){
				escreva(posicao + " | ")
			}
		}escreva("\n\n=============================================\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 820; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */