htp.p(APEX_UTIL.PREPARE_URL(p_url => 'f?p=' || :APP_ID || ':18:'|| :APP_SESSION
||'::::P18_ID_CLIENTE,P18_SEQ:' || :P2_ID_CLIENTE ||','|| :P2_NOME_CLIENTE));


/////////////////////////
SELECT APEX_PAGE.GET_URL (
            p_page   => 18,
            p_items  => 'P18_ID_CLIENTE,P18_SEQ',
            p_values => ':P2_ID_CLIENTE,:P2_NOME_CLIENTE' ) f_url_1,
         APEX_UTIL.PREPARE_URL('f?p=&APP_ID.:18:&APP_SESSION.::::P1_X,P1_Y:somevalue,othervalue')
     FROM DUAL
////////////////////////////////////////

apex_page.get_url(p_page => '80', p_items => 'P80_ID_GIRO', p_values => E.ID_ESTOQUE)) as url
