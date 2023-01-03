use mac;

delimiter //
create procedure sp_RequestSong  (
in tenbai1 char(30),
in tacgia char(20),
in theloai char(20) ) 
	begin
		declare mabh1 char(10) default null;
        declare reqid1 char(10) default null;
		set reqid1 = (select reqid from requestsong where tenbai1 = tenbaihat); #nếu tồn tại bài hát thì gán, không thì tạo mới
        if (not exists(select * from requestsong where reqid1 = reqid)) then
			set mabh1 = (select mabh from baihat where tenbai1 = tenbaihat); #nếu tồn tại bài hát thì gán, không thì tạo mới
			if (not exists(select * from baihat where mabh1 = mabh)) then
				set mabh1 = concat('BH',convert(substr((SELECT Mabh FROM baihat ORDER BY mabh DESC  LIMIT 1),3,7) + 1,char));
				insert into baihat values(mabh1, tenbai1,tacgia ,theloai);
			end if;
			set reqid1 = concat('WH',convert(substr((SELECT reqid FROM requestsong ORDER BY reqid DESC  LIMIT 1),3,7) + 1,char));
			insert into requestsong values(reqid1,mabh1, tenbai1,tacgia ,theloai);
        end if;
	end//
delimiter ;

call sp_RequestSong('fgh','Namg','trfh');