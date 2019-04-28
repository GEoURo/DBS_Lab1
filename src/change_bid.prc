create or replace procedure change_bid(old_id in char, new_id in char) 
is
begin
  execute immediate 'alter table Borrow drop constraint book_ID_FK';
  update book set id = new_id where id = old_id;
  update borrow set book_id = new_id where book_id = old_id;
  execute immediate 'alter table Borrow add constraint book_ID_FK Foreign key(book_ID) references Book(ID)';
end change_bid;
/
