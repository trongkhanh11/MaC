use mac ;

delimiter //
create 
#drop
procedure sp_alluser() 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select u.USERNAME,u.HOTEN,u.EMAIL,u.NTNSINH,u.BAN from  users u 
    
                                order by NGAYTG desc;
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_allpost() 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select bh.TENBAIHAT,bh.CASY,bh.THELOAI,p.LOAI,p.RATINGSUM,p.NGUOIDANG from  post p,baihat bh
								where p.mabh = bh.mabh
                                order by p.NGAYDANG desc;
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_allactiveuser() 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select u.USERNAME,u.HOTEN,u.EMAIL,u.NTNSINH,u.BAN 
								from  users u 
								where u.ONL=1
                                order by NGAYTG desc;
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_banuser(
in ban1 bool,
in username1 char(20)
) 
	begin
		UPDATE Users 
		SET  ban = ban1
		WHERE   username = username1;
     #end if;
	end//
delimiter ;

call sp_banuser(1,'username1');


delimiter //
create 
#drop
procedure sp_deletepost(
in tenbaihat1  char(30),
in casy1   char(20) 
) 
	begin
     declare mabh1 char(10) default null;
     declare mapost1 char(10) default null;
     set mabh1 = (select mabh from baihat where tenbaihat1 = tenbaihat and casy1 = casy);
     set mapost1 = (select mapost from post where mabh1 = mabh);
     

     delete from post_chord
     where mapost = mapost1;
     delete from post_video
     where mapost = mapost1;
	 delete from post
     where mapost = mapost1;
     delete from requestsong
     where mabh = mabh1;
     delete from gom
     where mabh = mabh1;
	 delete from baihat
     where mabh = mabh1;

	end//
delimiter ;

call sp_deletepost(N'Sao Cũng Được',N'Binz');
