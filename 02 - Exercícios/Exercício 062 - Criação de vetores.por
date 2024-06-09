programa
{	/*Exercício 62 - Leitura de vários vetores

	Esse algoritmo deve ser capaz de criar três vetores com 6 índices cada, os campos são:
	  -> Nome
	  -> Gênero
	  -> Salário
	  
	  Um vetor deve ser lido em seguida do outro e depois, você deve limpar a tela e mostrar tudo em forma tabular.*/
	
	inclua biblioteca Util --> U
	inclua biblioteca Tipos --> T
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Texto --> Txt
	funcao inicio()
	{
		//declaração das variáveis que vamos utilizar:
		cadeia nomes [6], teclado
		caracter genero [6]
		real salario [6]
		logico erro_detectado = falso //variável de controle dos laços para quando o usuário fizer cagadas
		const cadeia identacao = "    "

		//codificação do nosso software:
		
		//Leitura dos nomes do Vetor: 
		para(inteiro contador = 0; contador < U.numero_elementos(nomes); contador ++){
			
			escreva("\n   ======= CADASTRO " + contador + " ======= " )
			
			//Looping de verificação de VALIDADE DO NOME:
			faca{
				escreva("\nNome: ")
				leia(teclado)

				//início da VALIDAÇAÕ DO NOME:
				se(T.cadeia_e_inteiro(teclado, 10) ou T.cadeia_e_real(teclado)){
					escreva("Dado inválido! Digite um nome válido e não números.\n")
					erro_detectado = verdadeiro	
				}senao se(Txt.numero_caracteres(teclado) < 3){
					escreva("Dado inválido! Digite um nome com mais de duas letras.\n")
					erro_detectado = verdadeiro
				}senao{
					//condição para quando o usupario digitar tudo certinho:
					nomes[contador] = teclado
					erro_detectado = falso
				}			
			}enquanto(erro_detectado == verdadeiro)


			//Looping de verificação de VALIDADE DO GÊNERO:
			faca{
				escreva("Gênero [M / F]: ")
				leia(teclado)

				//início da VALIDAÇÃO do GÊNERO DIGITADO:
				se(nao(T.cadeia_e_caracter(teclado))){
					escreva("Dado inválido! Digite 'M' para Masculino e 'F' para feminino!\n\n")
					erro_detectado = verdadeiro
				}senao se(T.cadeia_e_real(teclado) ou T.cadeia_e_inteiro(teclado, 10)){
					escreva("Dado inválido! Digite 'M' para Masculino e 'F' para feminino!\n\n")
					erro_detectado = verdadeiro
				}senao se(T.cadeia_para_caracter(Txt.caixa_alta(teclado)) != 'M' e T.cadeia_para_caracter(Txt.caixa_alta(teclado)) != 'F'){
					escreva("Dado inválido! Digite 'M' para Masculino e 'F' para feminino!\n\n")
					erro_detectado = verdadeiro
				}senao{
					genero[contador] = T.cadeia_para_caracter(Txt.caixa_alta(teclado))
					erro_detectado = falso
				}
			}enquanto(erro_detectado == verdadeiro)


			//Looping de verificação de VALIDADE DO SALÁRIO:
		 	faca{
		 		escreva("Informe o salário R$: ")
		 		leia(teclado)
		 		
		 		//INÍCIO DA VALIDAÇÃO DO SALÁRIO:
		 		
		 		//não pode ser letra, nem caracter especial
		 		//não pode ser negativo
		 		se(nao(T.cadeia_e_real(teclado)) e nao(T.cadeia_e_inteiro(teclado, 10))){
		 			escreva("Dado inválido! Digite apenas números!\n\n")
		 			erro_detectado = verdadeiro
		 		}senao se(T.cadeia_e_caracter(teclado)){
		 			escreva("Dado inválido! Digite apenas números!\n\n")
		 			erro_detectado = verdadeiro	
		 		}senao{
		 			salario[contador] = T.cadeia_para_real(teclado)
		 			erro_detectado = falso
		 		}
		 	}enquanto(erro_detectado == verdadeiro)		
		}
	
		//exibição de resultados ao usuário:
		limpa()
		U.aguarde(1500)

		escreva("		LISTAGEM COMPLETA		\n")
		escreva("--------------------------------------------\n")
		escreva("NOME\t\t\tGENERO\tSALÁRIO\n")
		escreva("--------------------------------------------\n")
		//exibição dos vetores com nomes, gêneros e salários
		para(inteiro posicao = 0 ; posicao <U.numero_elementos(nomes); posicao++){
		escreva(nomes[posicao])
		U.aguarde(300)
		    //linha que faz a identação do código:
		escreva(Txt.preencher_a_esquerda(' ', 20, identacao))
		escreva(genero[posicao])
		U.aguarde(300)
			//linha que faz a identação do código:
		escreva(Txt.preencher_a_esquerda(' ', 5, identacao))
		escreva(Mat.arredondar(salario[posicao], 2))
		U.aguarde(300)
			//quebra de linha:
		escreva("\n")		
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */