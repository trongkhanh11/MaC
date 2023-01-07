use mac;

delimiter //
create 
-- drop
procedure sp_ThemPost (
in tenbh1 char(50), 
in casy1 char (20),
in theloai1 char(20),
in id1 int,
in loai1 char(10),
in chord1 text,
in tenvideo1 varchar(255),
in describe1 text) 
	begin
		declare mapost1 char(10) default null; 
        declare mabh1 char(10) default null;
        declare nguoidang1 char(20) default null;
        
        set mabh1 = (select mabh from baihat where tenbh1 = tenbaihat); #nếu tồn tại bài hát thì gán, không thì tạo mới
        if (not exists(select * from baihat where mabh1 = mabh)) then
			set mabh1 = concat('BH',convert(substr((SELECT Mabh FROM baihat ORDER BY CHAR_LENGTH(mabh) DESC, mabh DESC  LIMIT 1),3,7) + 1,char));
			insert into baihat values(mabh1, tenbh1, casy1, theloai1);
        end if;
        set mapost1 = concat('Po',convert(substr((SELECT Mapost FROM post ORDER BY CHAR_LENGTH(mapost) DESC, mapost DESC LIMIT 1),3,7) + 1,char));
        set nguoidang1 = (select hoten from users where id1 = id);
        
        insert into post values(mapost1, mabh1, id1, curdate(), 0, 0, nguoidang1, 0,loai1);
        
		if (loai1 = 'chord') then    # thêm vào loại chord hoặc video
			insert into post_chord values(mapost1,chord1);
		else
			insert into post_video values(mapost1,tenvideo1,describe1,0,'');
		end if;
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_Chord (
in mapost1 char(10)) 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select p.*,pc.CHORD,bh.TENBAIHAT,bh.CASY,bh.THELOAI from post p, post_chord pc, baihat bh 
								where p.mapost = mapost1 and p.mapost = pc.mapost and p.mabh = bh.mabh;
	end//
delimiter ;

delimiter //
create 
-- drop
procedure sp_TaoPlaylist (
in id1 int,
in tenpp1 char(30)) 
	begin
		declare mapp1 char(10);
		if (not exists (select * from playlist)) then
			insert into playlist values('Pl1', id1, tenpp1, curdate() );
		else
			set mapp1 = concat('Pl',convert(substr((SELECT Maplaylist FROM playlist ORDER BY CHAR_LENGTH(maplaylist) DESC, maplaylist DESC  LIMIT 1),3,7) + 1,char));
			insert into playlist values(mapp1, id1, tenpp1, now() );
		end if;
    end//
delimiter ;

delimiter //
create 
-- drop 
procedure sp_ThemBH_Playlist (
in mapost1 char(10),
in mapp1 char(10)) 
	begin
		declare mabh1 char(10) default null;
        set mabh1 = (select mabh from post where mapost = mapost1);
        insert into gom values(mapp1, mabh1);
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_All_Playlist () 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select pl.*, u.HOTEN from playlist pl, users u 
								where u.id = pl.id
                                order by tgdang desc;
    
	end//
delimiter ;


delimiter //
create 
#drop
procedure sp_One_Playlist (
in mapl char(10)) 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select bh.*,pl.ID,u.HOTEN,pl.TENPLAYLIST from baihat bh, playlist pl, gom g, users u 
								where pl.maplaylist = mapl and g.maplaylist = pl.maplaylist 
                                and g.mabh = bh.mabh and u.id = pl.id;
                                      
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_Search (
in tenbh varchar(50)) 
	begin
    if (tenbh = null) then set tenbh='';
    end if;
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select p.*,bh.CASY,bh.THELOAI,bh.TENBAIHAT from post p, baihat bh
								where p.mabh = bh.mabh and bh.tenbaihat like concat(concat('%',tenbh),'%'); 
                                      
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_myPlaylist (
in id1 int) 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select p.*,u.HOTEN from playlist p, users u where p.id = id1 and u.id = id1 ;
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_videotype0 () 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select pv.*,p.NGUOIDANG from post_video pv, post p
								where pv.theloaivideo = 0 and p.mapost = pv.mapost;
	end//
delimiter ;

delimiter //
create 
#drop
procedure sp_videotype1 () 
	begin
    DROP TEMPORARY TABLE IF EXISTS temp;
	CREATE TEMPORARY TABLE temp select pv.*,p.NGUOIDANG from post_video pv, post p
								where pv.theloaivideo = 1 and p.mapost = pv.mapost;
	end//
delimiter ;

select * from post_video
