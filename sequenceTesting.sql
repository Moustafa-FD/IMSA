-- Create a sequence
-- Insert Sample Data
-- Update a Table with it

create sequence autoFillPrimaryKey
start with 1
increment by 1
nocache;

update Tournament 
set tournament_id = autoFillPrimaryKey.nextVal;

SELECT autoFillPrimaryKey.currVal FROM DUAL;

declare
    defaultIndexNumber NUMBER := autoFillPrimaryKey.currVal;
    maxIndexNumber NUMBER := 11;
begin
    dbms_output.put_line('blabla' || defaultIndexNumber);
    IF (defaultIndexNumber > maxIndexNumber) THEN
        dbms_output.put_line('haha i got more than the index');
    END IF;
end;

SELECT * FROM Tournament;

