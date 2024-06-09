programa
{
	/*Exercício 63: 
	    -> Você deve gerar dois vetores de 6 índices, um que abriga nomes e idades
	    -> Depois disso, você terá de calcular a média das idades informadas e quem está acima da média
	    -> Para finalizar você deve registrar qual a maior idade informada e quais pessoas a possuem.
	*/


	inclua biblioteca Util --> U
	inclua biblioteca Tipos --> T
	inclua biblioteca Texto --> Txt
	inclua biblioteca Matematica --> Mat
	funcao inicio()
	{	
		//declaração das variáveis que vamos utilizar:
		inteiro idade [6], maior_idade = 0
		cadeia nomes[6], teclado
		real media_idades = 0.0

		//codificação do nosso software:
		
		//estrutura de percurso que lê os vetores
		para(inteiro contador = 0; contador < U.numero_elementos(idade); contador ++){
			//capturando o nome da pessoa e fazendo a validação desse nome:
			faca{
				escreva("\nNome da pessoa [" + contador +"]: ")
				leia(teclado)
				se((T.cadeia_e_inteiro(teclado, 10) ou T.cadeia_e_real(teclado) ou Txt.numero_caracteres(teclado) < 3)){
					escreva("Dado inválido! Tente novamente.\nDigite apenas letras, com mais de 3 caracteres!\n")	
				}
			}enquanto(T.cadeia_e_inteiro(teclado, 10) ou T.cadeia_e_real(teclado) ou Txt.numero_caracteres(teclado) < 3)
			//alimentando o vetor de nomes:
			nomes[contador] = teclado
			
			//capturando a idade do usuário informado e fazendo a validação dessa idade:
			faca{
				escreva("Idade de " + nomes[contador] + ":  ")
				leia(teclado)
				//regrinha pra orientar o usuário quando ele digitar burrice:
				se(nao(T.cadeia_e_inteiro(teclado, 10)) ou T.cadeia_para_inteiro(teclado, 10) < 1){
					escreva("Dado inválido! Digite números inteiros > 0.\n")
				}
			}enquanto(nao(T.cadeia_e_inteiro(teclado, 10)) ou T.cadeia_para_inteiro(teclado, 10) < 1)
 			//alimentando o vetor de idades e a soma de todas as idades:
 			idade[contador] = T.cadeia_para_inteiro(teclado, 10)
 			media_idades += T.inteiro_para_real(idade[contador])

			//capturando a maior idade digitada
			se(contador == 0){
				maior_idade = idade[contador]
			}senao{
				se(idade[contador] > maior_idade){
					maior_idade = idade[contador]
				}
			}
		}

		//Apresentação de resultados ao usuário:
		limpa()
		media_idades = media_idades / U.numero_elementos(nomes)
		escreva("\nA média de idades é " + Mat.arredondar(media_idades, 0))
		escreva("\nPessoas acima da média: \n")

		//estrutura de percurso mostrando quem está acima da média:
		para(inteiro contador = 0; contador < U.numero_elementos(nomes); contador ++){
			se(idade[contador] >= media_idades){
				escreva("    --> "+nomes[contador] + " (" + idade[contador] + " anos)\n")
			}
		}escreva("------------------------------------------------\n")

		//exibição da maior idade do grupo e quem a possui:
		escreva("Maior idade do grupo: " + maior_idade)
		escreva("\nQuem tem a maior idade: ")
		para(inteiro contador = 0; contador < U.numero_elementos(nomes); contador ++){
			se(idade[contador] == maior_idade){
				escreva("\n    -> " + nomes[contador])		
			}
		}escreva("------------------------------------------------\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2590; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */