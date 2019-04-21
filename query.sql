/*1*/
select ID, address from reader 
       where name = 'Rose';

/*2*/
select b.name, c.borrow_date from reader a, book b, borrow c
       where a.id = c.reader_id and b.id = c.book_id and a.name = 'Rose';

/*3*/
select name from(
        select name, id from reader where
        id not in(select distinct reader_ID from borrow)
        );

/*4*/
select name, price from book where author = 'Ullman';

/*5*/
select b.id, b.name from reader a, book b, borrow c
       where a.id = c.reader_id and b.id = c.book_id 
       and c.return_date IS NULL and a.name = '李林';
       
/*6*/
select a.name from reader a, borrow c 
       where a.id = c.reader_id
       group by a.id, a.name having COUNT(*)>3;

/*7*/
select a.name, a.id from reader a
       where NOT EXISTS(
             select * from reader a1, borrow c1 
             where a1.id = c1.reader_id and a1.name = '李林' 
             and EXISTS(
                 select * from reader a2, borrow c2 where
                 a2.id = c2.reader_id and c1.book_id = c2.book_id and a.id = a2.id
                 )
             );
             
/*8*/
select name, id from book where name like '%Oracle%';

/*9*/
Drop View borrow_info;

create view borrow_info(rid, rname, bid, bname, borrow_date)
as select  a.id, a.name, b.id, b.name, c.borrow_date
from reader a, book b, borrow c
where a.id = c.reader_id and b.id = c.book_id;

select rname, borrow_num 
from(
       select rname, rid, count(*) as borrow_num
       from borrow_info
       where borrow_date > to_date('2018-1-1', 'YYYY-MM-DD')
       group by rname, rid
    );
              
