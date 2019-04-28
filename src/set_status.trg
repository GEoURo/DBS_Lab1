create or replace trigger SetStatus
  After Insert OR Update 
  on Borrow
  for each row
  
begin
  If :new.return_date IS NULL Then
     Update Book Set status = 1 where ID = :new.book_ID;
  Else
     Update Book Set status = 0 where ID = :new.book_ID;
  end if;
  
end;
/
