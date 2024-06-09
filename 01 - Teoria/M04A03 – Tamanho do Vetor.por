programa
{
	
	inclua biblioteca Util --> u
	funcao inicio()
	{
		//declaração de variáveis:
		inteiro idade [8]

		//codificação do nosso software:
		/* 	Método antigo:
		 *  		para(inteiro contador = 0; contador < 8; contador ++)
		 *  	repare que ali nós colocamos manualmente o número	
		 *  		
		 *  Novo método que nunca falha, e que é menos trabalhoso:
			para(inteiro contador = 0; contador < u.numero_elementos(idade); contador ++)
		
		    Repare que ali nós colocamos que tudo se repita até que o contador seja menor que o tamanho máximo do vetor. */
		para(inteiro contador = 0; contador < u.numero_elementos(idade); contador ++){
			//preenchimento automático dos índices dos vetores:
			idade[contador]= sorteia(1,10)	
		}

		//apresentação de dados ao usuário:
		escreva("\nOs números digitados foram: ")
		para(inteiro contador = 0; contador < u.numero_elementos(idade); contador ++){
			escreva(idade[contador], " → ")
			u.aguarde(500)
		}

		//quebra de linha pra deixar tudo bonito
		escreva("fim!\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */