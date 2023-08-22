javascript: apex.server.process('GET_MODAL_URL', {x01: "#ID#"}, {     dataType:'text',     success:function(pUrl) {         eval(pUrl)     } });
