insert into borrow values('00000001', '0002', to_date('2019-3-20', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2019-4-17', 'YYYY-MM-DD')
       where book_id = '00000001' and reader_id = '0002' and borrow_date = to_date('2019-3-20', 'YYYY-MM-DD');

insert into borrow values('00000001', '0001', to_date('2019-4-19', 'YYYY-MM-DD'),NULL);

insert into borrow values('00000002', '0001', to_date('2019-1-10', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2019-3-8', 'YYYY-MM-DD')
       where book_id = '00000002' and reader_id = '0002' and borrow_date = to_date('2019-1-10', 'YYYY-MM-DD');

insert into borrow values('00000002', '0002', to_date('2019-3-19', 'YYYY-MM-DD'),NULL);

insert into borrow values('00000003', '0001', to_date('2017-12-20', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2018-2-17', 'YYYY-MM-DD')
       where book_id = '00000003' and reader_id = '0001' and borrow_date = to_date('2017-12-20', 'YYYY-MM-DD');

insert into borrow values('00000004', '0001', to_date('2017-3-20', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2017-4-14', 'YYYY-MM-DD')
       where book_id = '00000004' and reader_id = '0001' and borrow_date = to_date('2017-3-20', 'YYYY-MM-DD');

insert into borrow values('00000005', '0002', to_date('2018-2-26', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2018-7-17', 'YYYY-MM-DD')
       where book_id = '00000005' and reader_id = '0002' and borrow_date = to_date('2018-2-26', 'YYYY-MM-DD');

insert into borrow values('00000005', '0005', to_date('2019-4-1', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2019-4-19', 'YYYY-MM-DD')
       where book_id = '00000005' and reader_id = '0005' and borrow_date = to_date('2019-4-1', 'YYYY-MM-DD');

insert into borrow values('00000005', '0006', to_date('2019-2-12', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2019-3-15', 'YYYY-MM-DD')
       where book_id = '00000005' and reader_id = '0006' and borrow_date = to_date('2019-2-12', 'YYYY-MM-DD');

insert into borrow values('00000006', '0005', to_date('2016-3-20', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2016-6-18', 'YYYY-MM-DD')
       where book_id = '00000006' and reader_id = '0005' and borrow_date = to_date('2016-3-20', 'YYYY-MM-DD');

insert into borrow values('00000007', '0008', to_date('2017-12-25', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2018-1-31', 'YYYY-MM-DD')
       where book_id = '00000007' and reader_id = '0008' and borrow_date = to_date('2017-12-25', 'YYYY-MM-DD');

insert into borrow values('00000009', '0006', to_date('2017-12-31', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2018-2-1', 'YYYY-MM-DD')
       where book_id = '00000009' and reader_id = '0006' and borrow_date = to_date('2017-12-31', 'YYYY-MM-DD');

insert into borrow values('00000010', '0005', to_date('2018-9-10', 'YYYY-MM-DD'),NULL);
update borrow set return_date = to_date('2018-11-13', 'YYYY-MM-DD')
       where book_id = '00000010' and reader_id = '0005' and borrow_date = to_date('2018-9-10', 'YYYY-MM-DD');

