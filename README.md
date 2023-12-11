# APEX_PAGE.GET_URL
 apex.server.process: Para realizar uma solicitação assíncrona ao servidor. Aqui está uma explicação:
 ```
apex.server.process('GET_MODAL_URL', {x01: "#ID#"}, {
    dataType: 'text',
    success: function(pUrl) {
        eval(pUrl);
    }
});

```
1: apex.server.process: Inicia um processo no servidor Oracle APEX.<br>
2: 'GET_MODAL_URL': O nome do processo que está sendo chamado.<br>
3: {x01: "#ID#"}: Os parâmetros passados para o processo. Parece que #ID# é um marcador de posição que será substituído dinamicamente.<br>
4: {dataType: 'text'}: Define o tipo de dados esperado na resposta como texto.<br>
5: success: function(pUrl) {...}: Uma função a ser executada se a solicitação for bem-sucedida. Parece que a URL é passada como texto.<br>
6: eval(pUrl): Avalia o texto da URL como código JavaScript, o que pode iniciar alguma ação ou manipulação com base na URL recebida.<br>
<br>
Essencialmente, esse código serve para fazer uma solicitação ao servidor (processo GET_MODAL_URL), passar um parâmetro (#ID#), receber uma URL como resposta e então avaliar e executar essa URL como código JavaScript. O propósito exato dependeria do que está sendo feito no processo GET_MODAL_URL e como a URL resultante está sendo utilizada no código JavaScript.

# APEX_UTIL.PREPARE_URL<br>
Esse código Apex parece estar construindo uma URL usando a função APEX_UTIL.PREPARE_URL e a instrução htp.p para redirecionar o usuário para uma página no Oracle APEX (Application Express). Vamos analisar isso em partes:
```
htp.p(APEX_UTIL.PREPARE_URL(p_url => 'f?p=' || :APP_ID || ':18:'|| :APP_SESSION
||'::::P18_ID_CLIENTE,P18_SEQ:' || :P2_ID_CLIENTE ||','|| :P2_NOME_CLIENTE));

```
1. APEX_UTIL.PREPARE_URL: Essa função é utilizada para construir URLs de maneira segura no Oracle APEX.<br>
2. 'f?p=' || :APP_ID || ':18:'|| :APP_SESSION ||'::::P18_ID_CLIENTE,P18_SEQ:' || :P2_ID_CLIENTE ||','|| :P2_NOME_CLIENTE: Aqui, a URL está sendo construída concatenando vários parâmetros. Parece que está redirecionando para a página 18 (:18:) e está passando os valores de P18_ID_CLIENTE e P18_SEQ como parâmetros, juntamente com os valores de P2_ID_CLIENTE e P2_NOME_CLIENTE.<br>
3. htp.p: Esta é uma função do Oracle APEX utilizada para imprimir (exibir) o conteúdo HTML gerado dinamicamente.

# APEX_PAGE.GET_URL
1. APEX_PAGE.GET_URL: Essa função do Oracle APEX gera uma URL para uma página específica com base nos parâmetros fornecidos. Neste caso, está gerando uma URL para a página 18, com os valores dos itens P18_ID_CLIENTE e P18_SEQ sendo especificados.
```
APEX_PAGE.GET_URL (
   p_page   => 18,
   p_items  => 'P18_ID_CLIENTE,P18_SEQ',
   p_values => ':P2_ID_CLIENTE,:P2_NOME_CLIENTE' ) f_url_1

```
O resultado dessa parte será uma URL que pode ser usada para redirecionar o usuário para a página 18, passando os valores dos itens mencionados.

2. APEX_UTIL.PREPARE_URL: Esta função também é do Oracle APEX e é utilizada para construir URLs de forma segura. Neste caso, ela está sendo utilizada para preparar uma URL diretamente, sem a necessidade de especificar os parâmetros da página.
```
APEX_UTIL.PREPARE_URL('f?p=&APP_ID.:18:&APP_SESSION.::::P1_X,P1_Y:somevalue,othervalue')

```
Aqui, está gerando uma URL para a página 18, utilizando diretamente valores como &APP_ID., &APP_SESSION., P1_X, P1_Y, somevalue, e othervalue.
