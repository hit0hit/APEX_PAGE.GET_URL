javascript: apex.server.process('GET_MODAL_URL', {x01: "#ID#"}, {     dataType:'text',     success:function(pUrl) {         eval(pUrl)     } });

javascript: const inputText = '#MESSAGE#'; const cleanedText = inputText.replace(/<br\s*\/?>/g, '').replace(/:/g, '>').replace(/,/g, '<'); apex.server.process('GET_MODAL_URL', {x01: "#ID#", x02: cleanedText }, {     dataType: 'text',     success: function(pUrl) {         eval(pUrl);     } });
