# Comments

* 'Bin packing' é um problema bem definido. Acho que usar o termo no título pode passar uma mensagem errada.
* No lugar de packs, talvez seja melhor chamar de bins, bags, task bags, ou algum outro termo que passe a ideia mais claramente
* Algoritmo 1 - linha 3 não está claro o que é lower bound
* Domínios de inputs e outputs poderiam estar mais claros. Se necessário, é possível cortar um pouco do texto de explicação se o algoritmo estiver bastante claro
* Algoritmo 1 - linha 7 sum(P) talvez poderia ser uma função load(P)?
* Para os símbolos de comunicação, deve ser possível adicionar um texto sobre a seta para deixar mais claro o que está acontecendo.
* Algoritmo 2 - linha 3 em que ordem packs são selecionados?
* Algoritmo 3 - linha 4 pode ser duas linhas sem problemas
* Em geral pessoal assume log como log base 2. Não vale a pena se preocupar com o detalhe de qual a base do logaritmo porque tudo se comporta no mesmo estilo.
* Não fica claro no texto o que o t maiúsculo significa nas análises.
* É bom manter todas equações numeradas, mesmo que o número da equação não seja referenciado no momento
 
# Comentários Alexandre

## Introduction


### Parágrafo 1
Não acho que ele faz uma boa introdução. Sugeri um outro comentado logo abaixo no .tex. O primeiro parágrafo deve falar sobre uma coisa apenas, preferencialmente sobre o estado das coisa hoje.

### Parágrafo 2
Embora importante salientar a comunicação e a relação dela com escalabilidade, esse parágrafo ou não pertence a introdução ou deve vir depois. Recomendo falar no segundo parágrafo sobre o problema e apenas o problema. No caso, um parágrafo para mostrar por que, ao aumentar o tamanho do ambiente, você diminui a efetividade de balanceadores genéricos e/ou ignorantes sobre comunicação.

### Parágrafo 3
O objetivo deste capítulo é salientar que existe um momento em que escalonadores distribuídos tornam-se melhores do que os centralizados. Faltou um "por quê" que existe a necessidade de transicionar para estratégias distrbuídas. Este é um ótimo candidato para ser o segundo parágrafo, pois ele sai do estado da arte do parágrafo 1 e lança o leitor para a nossa área.

### Parágrafo 4
Pode-se tira-lo completamente e nada se perde no texto. Transforme-o em uma ideia ou frase e escreva-a em partes nos outros parágrafos. NP-hard pode ser colocado no parágrafo 1 ou no 2 (atual 3), por exemplo.

### Parágrafo 5
Este é o parágrafo mais importante da introdução. É onde deve-se justificar o trabalho e liga-lo com o estado da arte. Exponha melhor o por que da importancia do trabalho usando os outros parágrados para que você possa usar TODO este parágrafo para delinear sucintamente onde os trabalhos relacionados pararam, que é o seu ponto de partida. ex.: (grapevine) estratégias distribuidas do estado da arte geram alto nros de msgs trocadas pelos chares gera atrasos no tempo de decisão e nossos resultados mostram que é capaz de ganhar x% de performance cortando essas mensagens.

### Parágrafo 6
Este é o segundo parágrafo mais importante e deve ser o último mesmo. Note que você já fala de coisas que deveria ter falado no parágrafo anterior como "...attempts to minimize the communication during the remapping process...". Em geral, este está bom.
  * A parte que você botou em todo "our result shows that", você pode colocar no parágrafo dos trabalhos relacionados como forma de crítica ou falhas dos trabalhos passados para ganhar espaço.

## Related Work

  * Há pouco que eu possa comentar aqui. De maneira geral, os trabalhos estão sendo todos citados como avanços positivos. Deve-se citar o limite de aplicabilidade desses avanços. Do contrário, a motivação do nosso trabalho não é vislumbrada facilmente.

## Task Packing Approach

### Parágrafo 1
Está incompleto, falta um final para ele. A última frase não parece pertencer à introdução da seção mas sim ao segundo parágrafo. Da mesma forma, as primeiras frases do segundo parágrafo parecem pertencer a primeira. Escrevi uma alternativa de apresentar esta seção comentado abaixo dela no tex.

## Analysis of the Algorithm
Achei mais fácil de entender esta seção do que a seção do algoritmo, talvez pois esta está mais organizada e mais abstrata em termos de analisar blocos de código.

## Implementation
Necessário. Esclarecedor. Sucinto. Somente precisa de uma polida para não se repetir muito em palavras próximas.

## Performance Evaluation
Figure 4 e 5 não explicadas. Acredito que tenha um erro na figura 4 na legenda do eixo-x. Este representa o tamanho da plataforma e não o rescheduling period