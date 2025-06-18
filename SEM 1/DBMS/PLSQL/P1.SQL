create or replace trigger UP_trig BEFORE DELETE OR INSERT OR UPDATE ON  emp_tab
begin
if  (to_char(sysdate,'day') in ('sun','mon')) or (to_char(sysdate ,'hh:mi') not between  '08:30' and '18:30')  then
RAISE_APPLICATION_ERROR(-20500,'TABLE IS SECURED');
END IF;
END;
