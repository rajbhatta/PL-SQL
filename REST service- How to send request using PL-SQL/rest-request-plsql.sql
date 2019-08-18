create or replace PACKAGE BODY DB_test.package_test AS

PROCEDURE SENDUSER_TO_SERVER(name in VARCHAR2
                              ,address in VARCHAR2
                              ,phone in NUMBER) IS

req utl_http.req;
res utl_http.resp;
buffer varchar2(4000);
url varchar2(4000);
v_name varchar2(4000);
v_address varchar2(4000);
v_phone NUMBER;
v_requestbody VARCHAR2(5000);

BEGIN

url varchar2(4000) := 'http://localhost:8080/springapp/takeuser';
v_name := 'Raj Bhatta';
v_address := '10644 105 St, Edmonton';
v_phone := 4379832323;

v_requestbody varchar2(4000) := '{"name":"'||v_name||'", "address":"'||v_address||'", "phone":'||v_phone||'}';

req := utl_http.begin_request(url, 'POST',' HTTP/1.1');
utl_http.set_header(req, 'user-agent', 'mozilla/4.0');
utl_http.set_header(req, 'content-type', 'application/json');
utl_http.set_header(req, 'Content-Length', length(v_requestbody));

utl_http.write_text(req, content);
res := utl_http.get_response(req);
-- process the response from the HTTP call
begin
  loop
    utl_http.read_line(res, buffer);
    dbms_output.put_line(buffer);
  end loop;
  utl_http.end_response(res);
exception
  when utl_http.end_of_body
  then
    utl_http.end_response(res);


END SENDUSER_TO_SERVER;
END package_test;
