programa
{
	/*Esse algoritmo deve ser capaz de ler 6 nomes e colocá-los dentro de um vetor.
	Depois isso, você precisará fazer 3 análises: 
		---> Listar os nomes com menos de 5 letras e as posições deles.
		---> Verificação e exibição dos nomes que começam com uma vogal
		---> Verificação  e exibição dos nomes que possuem alguma letra S */
	
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> Txt
	inclua biblioteca Tipos --> T
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		inteiro menos_de_5_letras = 0, nomes_vogais_inicio = 0, tot_nomes_cs = 0
		cadeia nomes [6]
		cadeia teclado

		//codificação do nosso software:
		para(inteiro contador = 0; contador < U.numero_elementos(nomes); contador ++){

			/*condição para quando um engraçadinho digita coisas nada a ver:
			   --> Regra pra mais de três letras
			   --> Regra para não poder ser caracter
			   --> O nome não pode ser número, nem nada de números (ok) */
			faca{
				escreva("Nome para a posição [" + contador + "]: ")
				leia(teclado)
			}enquanto((T.cadeia_e_inteiro(teclado, 10) ou (T.cadeia_e_real(teclado))) ou T.cadeia_e_caracter(teclado) ou Txt.numero_caracteres(teclado) < 3)

			//quando o vetor recebe o valor do teclado:
			nomes[contador] = teclado

			
			//exibição do total de números cadastrados
			se(U.numero_elementos(nomes) - contador == 1){
				escreva("\n      ***" + (contador + 1) + " NOMES CADASTRADOS ***")
			}
		}

		

		//exibição de resultados na tela do usuário:
		escreva("\n\nAnalisando resultados\n")
		U.aguarde(1500)

		//verificação de nomes com menos de 5 letras
		escreva("\nNomes com menos de 5 letras:")
		para(inteiro posicao = 0; posicao < U.numero_elementos(nomes); posicao ++){
			//condição de verificação
			se(Txt.numero_caracteres(nomes[posicao]) <= 5 ){
				escreva("\n	["+ posicao + "] = " + nomes[posicao])
				menos_de_5_letras ++
				U.aguarde(400)
			}
		}escreva("\n\nTOTAL  --> " + menos_de_5_letras)
		escreva("\n=================================================\n")

		//verificação de nomes que começam com uma vogal:
		escreva("\nNomes que começam com uma vogal:")
		para(inteiro posicao = 0 ; posicao < U.numero_elementos(nomes); posicao ++ ){
			//regra e condição para começar com Vogal:
			se(Txt.caixa_alta(Txt.extrair_subtexto(nomes[posicao],0,1)) == "A" ou Txt.caixa_alta(Txt.extrair_subtexto(nomes[posicao],0,1)) == "E" ou Txt.caixa_alta(Txt.extrair_subtexto(nomes[posicao],0,1)) == "I" ou Txt.caixa_alta(Txt.extrair_subtexto(nomes[posicao],0,1)) == "O" ou Txt.caixa_alta(Txt.extrair_subtexto(nomes[posicao],0,1)) =="U" ){
				escreva("\n	[" + posicao + "] = " + nomes[posicao])	
				nomes_vogais_inicio ++	
				U.aguarde(400)
			}
		}escreva("\n\nTOTAL --> " + nomes_vogais_inicio)
		escreva("\n=================================================\n")

		//Verificação dos nomes que possuem a Letra S:
		escreva("\nNomes que possuem a letra S: ")
		para(inteiro posicao = 0; posicao < U.numero_elementos(nomes); posicao ++){
			//regra pra quando o nome começa com S	
			
			//vai fazer um laço  que varre a String
			para(inteiro verificador = 0; verificador < Txt.numero_caracteres(nomes[posicao]); verificador ++){
				//estrutura de verificação se a String possui a letra S
				se(Txt.obter_caracter(Txt.caixa_alta(nomes[posicao]), verificador) == 'S'){
					escreva("\n	[" + posicao + "] = " + nomes[posicao])
					tot_nomes_cs ++
					pare
					/*coloquei esse pare porque quando ele quer saber se tem S, e não quantos tem,
					baseado nisso, ele quebra o laço e verifica o outro índice do vetor 
					Se ele tem S, ótimo! Se não tem, foda-se e pula pro próximo*/ 
				}
			}
		}escreva("\n\nTotal --> " + tot_nomes_cs + "\n\n")
		escreva("=================================================\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3023; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */