programa
{
	
	funcao inicio()
	{
		inteiro idade [4]
		idade [0] = 11
		idade [1] = 40
		idade [2] = 31
		idade [3] = 22

		//isso é quando você já sabe todos os valores.
		inteiro idade2 [5] = {20, 21, 27, 55, 77} 

		//exemplificando com a estrutura para preenchido automaticamente
		inteiro idade3 [4] 
		para (inteiro c = 0; c < 4; c++){
			idade3 [c] = sorteia(1 , 10) 
			//aqui sorteamos 4 números entre 0 e 10. 
		}
		
		//exemplificando como preencher em looping manual um vetor.
		inteiro idade4 [4]
		para (inteiro c = 0; c < 4; c++){
			escreva("Digite um valor: ")
			leia(idade4[c])
		}

	   	//mostrando os números na tela
	   	para (inteiro pos = 0; pos < 4; pos ++){
			escreva(idade4[pos], " → ")
		}
		escreva("\nfim!") 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 717; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade4, 23, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */