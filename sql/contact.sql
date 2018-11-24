--Contact table creation
CREATE TABLE contact (
  contact_id NUMBER primary key,
  name varchar2(45) NOT NULL,
  email varchar2(45) NOT NULL,
  address varchar2(45) NOT NULL,
  telephone varchar2(45) NOT NULL
);
--Auto sequence for contact_id
Create sequence contact_sequence start with 1 increment by 1;
--trigger to auto insert contact_id
create trigger trg_contact_id before insert on contact for each row
begin
    select contact_sequence.nextval
    into :new.contact_id
    from dual;
end;

commit;