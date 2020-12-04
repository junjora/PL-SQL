DECLARE
v_resp_code_p number;
v_resp_p      clob;
v_url         varchar2(2000);
v_body        varchar2(2000) default null;
v_type        varchar2(50) default 'GET';
v_resp_code_n number;
v_resp_n      clob;
v_url_st      varchar2(155) default 'openapi';
v_url_zapros  varchar2(200);

--
var1 number(10);
var2 number(10);

BEGIN
  
     FOR rec1 in (SELECT ff.* FROM egor_kropotov.samolet ff WHERE ff.col1 NOT IN (0)) LOOP -- проверка условий
        FOR rec2 in (
                     SELECT t1.*
                     FROM table1 t1
                     LEFT JOIN table2 t2 ON (t1.col1 = t2.col2)
                     LEFT JOIN table3 ON (t2.col2=t3.col13)
                    )LOOP
            --проверка условий
            IF (t1.col1 IN () OR t1.col1 in ())THEN
              insert into egor_kropotov.viborka()
              values ();
            ELSE
              insert into egor_kropotov.viborka()
              values ();
            END IF;
            commit;
        
        END LOOP;
     END LOOP;
      
     FOR rec3 in (
                  select sv.* from egor_kropotov.viborka sv
                  where 1=1
                  and exists(select * from table4 t4 where t4.col4=sv.col and t4.col5=sv.col2)
                 ) LOOP
       IF (rec3.status=1) THEN
         CASE
           WHEN rec3.col1=123 THEN
                var1:=rec3.col2;
                var2:=rec3.col3;
                v_body:='{"key1":var1,"key2":var2,"key3":'||rec3.col1||',"key4":'||rec3.col3||',"key5":"Text \n\nTest '||'\'||chr(34)||'Text'||'\'||chr(34)||' Text '||rec3.col6||'. \nText \n\nText."}';

           WHEN rec3.col1 IN () and rec3.col4 IN ()THEN
                var1:=rec3.col2;
                var2:=rec3.col3;
                v_body:='{"key1":var1,"key2":var2,"key3":'||rec3.col1||',"key4":'||rec3.col3||',"key5":"Text \n\nTest '||'\'||chr(34)||'Text'||'\'||chr(34)||' Text '||rec3.col6||'. \nText \n\nText."}';
        
           WHEN rec3.col3 in () and rec3.col4 in () THEN
                var1:=rec3.col2;
                var2:=rec3.col3;
                v_body:='{"key1":var1,"key2":var2,"key3":'||rec3.col1||',"key4":'||rec3.col3||',"key5":"Text \n\nTest '||'\'||chr(34)||'Text'||'\'||chr(34)||' Text '||rec3.col6||'. \nText \n\nText."}';
                                
           WHEN rec3.col6d in () and rec3.col8 in () THEN
                var1:=rec3.col2;
                var2:=rec3.col3;
                v_body:='{"key1":var1,"key2":var2,"key3":'||rec3.col1||',"key4":'||rec3.col3||',"key5":"Text \n\nTest '||'\'||chr(34)||'Text'||'\'||chr(34)||' Text '||rec3.col6||'. \nText \n\nText."}';
           END CASE;
                 BEGIN 
                          v_url_zapros := '';
                          v_url := v_url_st || v_url_zapros;
                          v_type:='POST';
                          oapi(p1 => v_url,
                               p2 => v_body,
                               p3 => v_type,
                               p4 => 'json',
                               p5 => 'json',
                               p6 => v_resp_n,
                               p7 => v_resp_code_n,
                               p8 => 1); 
                 END;
        ELSE
         BEGIN 
                    v_body:='{"key1":123,"key2":123,"key3":'||rec3.col1||',"key4":'||rec3.col3||',"key5":"Text \n\nTest '||'\'||chr(34)||'Text'||'\'||chr(34)||' Text '||rec3.col6||'. \nText \n\nText."}';
                    v_url_zapros := '';
                    v_url := v_url_st || v_url_zapros;
                    v_type:='POST';
                    oapi(p1 => v_url,
                         p2 => v_body,
                         p3 => v_type,
                         p4 => 'json',
                         p5 => 'json',
                         p6 => v_resp_n,
                         p7 => v_resp_code_n,
                         p8 => 1);                                     
         END;
       END IF;  
         INSERT INTO egor_kropotov.logs()
         VALUE ();
         COMMIT;
     END LOOP;
END;
