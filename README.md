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
6:eval(pUrl): Avalia o texto da URL como código JavaScript, o que pode iniciar alguma ação ou manipulação com base na URL recebida.<br>
<br>
Essencialmente, esse código serve para fazer uma solicitação ao servidor (processo GET_MODAL_URL), passar um parâmetro (#ID#), receber uma URL como resposta e então avaliar e executar essa URL como código JavaScript. O propósito exato dependeria do que está sendo feito no processo GET_MODAL_URL e como a URL resultante está sendo utilizada no código JavaScript.
