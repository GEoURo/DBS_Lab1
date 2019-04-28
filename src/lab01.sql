drop table borrow;
drop table book;
drop table reader;

create table book(
       ID     char(8) constraint book_PK Primary Key,
       name   varchar2(10) not null,
       author varchar2(10),
       price  float,
       status int default 0
       );

create table reader(
       ID     char(8) constraint reader_PK Primary Key,
       name   varchar2(10),
       age    int,
       address varchar2(20)
       );

create table borrow(
       book_ID        char(8),
       reader_ID      char(8),
       borrow_date    date,
       return_date    date,
       constraint book_ID_FK foreign key(book_ID) references book(ID) on delete cascade,
       constraint reader_ID_FK foreign key(reader_ID) references reader(ID) on delete cascade,
       constraint borrow_PK Primary Key(book_ID, reader_ID)
       );
