use mac;

insert into baihat values('BH1',N'Bên Trên Tầng Lầu',N'Tăng Duy Tân','Nhạc Trẻ');
insert into baihat values('BH2',N'Diễm Xưa',N'Lệ Quyên','Nhạc Trữ Tình');
insert into baihat values('BH3',N'Bài Này Chill Phết',N'Đen Vâu','Nhạc Rap');
insert into baihat values('BH4',N'Một Đêm Say',N'Thịnh Suy','Nhạc Indie');
insert into baihat values('BH5',N'Tình Đắng Như Ly Cafe',N'MCK','Nhạc Rap');
insert into baihat values('BH6',N'Mascara',N'Chillies','Nhạc Indie');
insert into baihat values('BH7',N'Sao Cũng Được',N'Binz','Nhạc Rap');


-- insert into users values('', 'username1','password1',N'Nguyễn Văn A','aaa@gmail.com','2002-12-19','2022-11-28',0);
-- insert into users values('', 'username2','password2',N'Trần Thị B','bbb@gmail.com','2002-12-14','2022-12-1',0);
-- insert into users values('', 'username3','password3',N'Phạm Văn C','ccc@gmail.com','2002-12-19','2022-10-20',0);
insert into users(username,pass,hoten,email,ntnsinh,ngaytg,adminacc,onl,ban)
values ('username1','password1',N'Nguyễn Văn A','aaa@gmail.com','2002-12-19','2022-11-28',0,0,0);
insert into users(username,pass,hoten,email,ntnsinh,ngaytg,adminacc,onl,ban)
values ('username2','password2',N'Trần Thị B','bbb@gmail.com','2002-12-14','2022-12-1',0,0,0);
insert into users(username,pass,hoten,email,ntnsinh,ngaytg,adminacc,onl,ban)
values ('username3','password3',N'Phạm Văn C','ccc@gmail.com','2002-12-19','2022-10-20',0,0,0);

insert into post values('Po1','BH1','1','2022-12-25','0','0','Nguyễn Văn A',1,'chord');
insert into post values('Po2','BH2','1','2022-12-25','0','0','Nguyễn Văn A',1,'chord');
insert into post values('Po3','BH3','2','2022-12-25','0','0','Trần Thị B',1,'chord');
insert into post values('Po4','BH4','2','2022-12-25','0','0','Trần Thị B',1,'chord');
insert into post values('Po5','BH5','3','2022-12-25','0','0','Phạm Văn C',1,'chord');
insert into post values('Po6','BH6','3','2022-12-25','0','0','Phạm Văn C',1,'chord');
insert into post values('Po7','BH7','3','2022-12-25','0','0','Phạm Văn C',1,'chord');


insert into post_chord values('Po1',
N'Em ơi đừng [Em]khóc bóng tối trước mắt sẽ bắt em [Bm]đi
Em ơi đừng [Am]lo em ơi đừng cho tương lai vụt [B7]tắt.
Sâu trong màu [Em]mắt có chút tiếc nuối phút cuối chỉ [Bm]vì
Em đâu hề [Am]sai em đâu thể mãi để trái tim [B7]đau
 
Không còn [Em]tương lai, em cũng chẳng còn [Bm]thương ai.
Sau bao niêm [Am]đau em mong rằng con tim em dừng [B7]lại.
Nỗi nhớ này [Em]lâu phai, nhốt em trong 1 [Bm]lâu đài,
Lâu đài của [Am]những cơn đau bất [B7]tận
 
Vì sao em phải [Em]khóc? Có đáng để buồn [Bm]đâu
Tình yêu như cơn [Am]lốc thoáng phút chốc lướt qua thật [B7]mau.
Vì sao em phải [Em]khóc? Có đáng để buồn [Bm]đâu
Rượu kề môi em [Am]nốc, thoáng phút chốc đã vơi u [B7]sầu
 
Verse 2:
[Em]Buông bàn tay để chấm hết, [Bm]tất cả thứ làm em buồn,
[Am]bao gồm cả cuộc đời của [B7]em.
[Em]Em à cho dù có khóc, [Bm]cũng sẽ đến ngày phải quên,
[Am]thiên đường vẫn chờ ngày em [B7]đến');

insert into post_chord values('Po2',
N'Mưa vẫn mưa bay trên tầng tháp [Am]cổ
Dài tay em [C]mấy thuở mắt xanh [Dm]xao 
[E7]Nghe lá thu [Am]mưa reo mòn gót [E7]nhỏ
Đường dài hun hút cho mắt thêm [C]sâu. [E7]
 
Mưa vẫn hay mưa trên hàng lá [Am]nhỏ
Buổi chiều ngồi [C]ngóng những chuyến mưa [Dm]qua 
[E7]Trên bước chân [Am]em âm thầm lá [E7]đổ
Chợt hồn xanh buốt cho mình xót [Am]xa.
 
ĐK:
Chiều này còn [Dm]mưa sao em không lại
Nhớ [Am]mãi trong cơn đau vùi
Làm sao có [Dm]nhau hằn lên nỗi [E7]đau
Bước [Dm]chân em xin về [E7]mau.
 
Mưa vẫn hay mưa cho đời biển [Am]động
Làm sao em [C]nhớ những vết chim [Dm]di 
[E7]Xin hãy cho [Am]mưa qua miền đất [E7]rộng
Để người phiêu lãng quên mình lãng [Am]du.
 
Mưa vẫn hay mưa cho đời biển [Am]động
Làm sao em [C]biết bia đá không [Dm]đau 
[E7]Xin hãy cho [Am]mưa qua miền đất [E7]rộng
Ngày sau sỏi đá cũng cần có [Am]nhau.');

insert into post_chord values('Po3',
N'[Dm]I just wanna [G]chill  with you [Am]tonight [Em]
[Dm]And all the [G]sorrow left [Am]behind uh oh[Em]
Sometimes I [Dm]feel lost in the [G]crowd 
Life is [Am]full of ups and [Em]downs 
But [Dm]it’s alright, I [G]feel peaceful [Am]inside [Em]
 
 
Em [Dm]dạo này ổn không? Còn đi [G]làm ở công ty cũ
[Am]Còn đi sớm về hôm nhưng mà đồng [Em]lương vẫn không khi đủ
[Dm]Đồng nghiệp của Em thế nào? Trong thang [G]máy có chào với nhau
[Am]Có nói qua nói lại, và những [Em]cuộc họp có đào bới nhau
[Dm]Sếp của Em thế nào, dễ tính [G]hay thường gắt gỏng
[Am]Anh ta có thương nhân viên hay [Em]thường buông lời sắc mỏng
[Dm]Em còn thiếu ngủ, trong những [G]lần phải chạy deadline
[Am]Em quên ăn quên uống, quên cả [Em]việc chải lại tóc tai
[Dm]Những đôi giày cao gót chắc [G]còn làm đau Em
[Am]Tiền bao nhiêu cho đủ, ai biết [Em]ngày sau Em?
[Dm]Mắt Em còn mỏi không 8 tiếng [G]nhìn màn hình
[Am]Những tối đi về đơn độc Em thấy [Em]lòng mình lặng thinh
[Dm]Và đừng để đời chỉ là những chuỗi [G]ngày được chấm công
[Am]Miệng cười như nắng hạ, nhưng trong [Em]lòng thì chớm đông
[Dm]Nếu mà mệt quá, giữa thành [G]phố sống chồng lên nhau
[Am]Cùng lắm thì mình về quê, mình nuôi [Em]cá và trồng thêm rau
 
 
[Dm]Trời thả vạt nắng khiến đám [G]tóc Em hoe vàng
Chiều [Am]nay đi giữa thành phố [Em]Em bỗng thấy sao mơ màng
[Dm]Tìm cho mình một không gian, [G]bật bài nhạc làm Em chill
[Am]Tâm hồn Em, [Em]phiêu dạt theo áng mây bên trời
 
[Dm]Anh dạo này cũng bận nhiều, [G]và cũng có thêm nhiều đêm diễn
[Am]Âm nhạc mở lối cuộc đời Anh, như là [Em]ngọn hải đăng ở trên biển
[Dm]Anh được gặp những người nổi tiếng, [G]trước giờ chỉ thấy trên tivi
[Am]Gặp H\'Hen Niê hoa hậu, gặp cả [Em]Sơn Tùng M-TP
[Dm]Đi hát vui lắm em, vì đồng [G]âm của Anh họ rất tuyệt
[Am]Bọn Anh hát cùng nhau, khiến cho thanh [Em]xuân này như bất diệt
[Dm]Anh thấy mình không cô đơn, không áp [G]lực nào buộc chân Anh
[Am]Nhiều khi Anh lên sân khấu mà dưới khán [Em]giả họ thuộc hơn Anh
[Dm]Anh cũng có những hợp đồng, những điều [G]khoản mà Anh phải dần quen
[Am]Anh cũng cần tiền, những dự [Em]án họ nói họ cần Đen
[Dm]Và những con số, nặng tới [G]mức đủ sức làm choáng mình
[Am]Nhưng em yên tâm, Anh bán chất [Em]xám chứ chưa từng bán mình
[Dm]Nhưng cũng có lúc mọi thứ không như [G]là những gì ta muốn
[Am]Thế giới này vận hành theo cái [Em]cách luôn ghì ta xuống
[Dm]Nhưng mà mộng mơ Anh nhiều như [G]niêu cơm của Thạch Sanh
[Am]Ai muốn lấy cứ lấy, không thể [Em]nào mà sạch banh
 
[Dm]Trời thả vạt nắng khiến đám [G]tóc Em hoe vàng
Chiều [Am]nay đi giữa thành phố [Em]Em bỗng thấy sao mơ màng
[Dm]Tìm cho mình một không gian, [G]bật bài nhạc làm Em chill
[Am]Tâm hồn Em, [Em]phiêu dạt theo áng mây bên trời
 
 
[Dm]Mình sướng hơn những người giàu nhỉ
[G]Vầng trán mình chưa hề nhàu nhĩ
[Am]Dù chênh vênh như là cầu khỉ
[Em]Đời sóng gió mình là tàu thuỷ
[Dm]Vì một ngày còn sống, [G]là một ngày đắm say
[Am]Ngày đẹp trời nhất, là [Em]ngày mình còn nắm tay
[Dm]Mình sẽ không ngã, vì [G]mình ngã họ hả hê
[Am]Biển người cũng là biển, cho [Em]tụi mình tắm thoả thuê
[Dm]Chúng ta sẽ không, là [G]một ai trông giống họ
[Am]Sẽ không rỗng tuếch, như [Em]một cái chai trong đống lọ
[Dm]Sáng chúng ta làm, vì tờ [G]bạc nhiều màu trong ví
[Am]Đêm về ta chill, riêng [Em]mình một bầu không khí
[Dm]Vì tim ta còn trẻ, dù [G]thân xác ta sẽ già
[Am]Nhưng mà ta không ủ rũ, như [Em]là mấy con sẻ già
[Dm]Chúng ta có những chiều vàng, [G]dắt tay nhau lên đồi xa
[Am]Nắng khoác lên mình lớp áo, [Em]nheo mắt lại nhìn trời hoa
[Dm]Và những đêm đen huyền dịu, [G]cho tiếng lòng thêm dõng dạc
[Am]Ta thấy nhau bằng tâm hồn, [Em]không cần nhìn bằng võng mạc
[Dm]Ta sẽ cố để có được những thứ [G]mà ta chờ mong
[Am]Dưới ngọn đồi, căn nhà nhỏ, [Em]nhìn ra bờ sông
[Dm]Vì anh chưa từng mơ ngày nào [G]đó mình trở thành siêu sao
[Am]Từ ngày thơ bé anh đã [Em]muốn trở thành chưởng môn phái Tiêu Dao
 
[Dm]Em ơi vui cười lên vì đời [G]này ai không âu lo
[Am]Thôi băn khoăn ngày mai mệt nhoài [Em]hệt như con sâu đo
[Dm]Em đi ra ngoài kia tìm về vài [G]chai strongbow oh
[Am]Đêm nay em cần chill, việc này [Em]để cho Đen Vâu lo !');

insert into post_chord values('Po4',
N'
Verse 1 :
Khi đôi môi em còn [G] đỏ mọng, em muốn nói “em [Em]yêu anh” ? 
Khi men còn trong [C]hơi thở, lại gần hôn anh [G]đi. 
Khi con tim không còn trên[G] đầu, khi hai má em hây hây[Em] 
Em nói em say tiếng[C] đàn, vậy lại gần hôn anh đi. [G]
 
Chorus :
Lại gần hôn[G] anh, anh sẽ để em mặt trời[Em] 
Lại gần hôn[C] anh, hay em để anh chơi vơi[G] 
Giờ còn đôi ta[G], kia là núi đây là nhà [Em]
Giờ còn đôi[C] ta, em có muốn đi thật[G] xa? 
 
Verse 2 :
Ta chỉ sống một lần trên [G]đời, suy nghĩ lắm chi em[Em] ơi… 
Bao nhiêu yêu thương[C] trên đời, là vị ngọt trên[G] đôi môi 
 
Chorus :
Lại gần hôn[G] anh, anh sẽ để em mặt trời[Em] 
Lại gần hôn[C] anh, hay em để anh chơi vơi[G] 
Giờ còn đôi ta[G], kia là núi đây là nhà [Em]
Giờ còn đôi[C] ta, em có muốn đi thật[G] xa? 
 
Outro :
Khi đôi môi em còn đỏ[G] mọng, khi anh nói “ anh yêu em “ [Em]
Khi anh ta còn[C] say giấc nồng, lại gần hôn [G]anh đi…. ');

insert into post_chord values('Po5',
N'- Ngơ:
Thì [Dm7]ra tương tư là thế này 
[G7]24/7 
[Cmaj7]Nghĩ đến em 
[Cadd9]Nghĩ đến em
Thả [Dm7]mây trôi qua từng kẽ tay
[G7]Cho làn khói này khẽ bay
Chìm [Cmaj7]sâu vào giai điệu êm [Cadd9]ái
 
- Nân:
[Dm7]Yêu rồi, thương rồi, [G7]mê rồi 
Sao chẳng [Cmaj7]nói ra [Cadd9]
Từng lời [Dm7]hát em viết tặng [G7]anh 
Giờ bay về [Cmaj7]đâu xa... [Cadd9]
[Dm7]Sao băng trôi qua [G7]tình ta bao la 
[Cmaj7]Chiếc hôn [Cadd9]đầu ! 
Để rồi [Dm7]mai ngồi đây tàn [G7]thuốc nhìn ta 
Mà [Cmaj7]ngóng trông [Cadd9]
 
- Ngơ:
[Dm7]Thích rồi, yêu rồi [G7]mỗi tội là anh không nói
Rất [Cmaj7]muốn em là của riêng mình 
Nhưng mà [Cadd9]anh lại sợ không nổi
Cho [Dm7]dù tim anh không đổi 
thì em [G7]vẫn thương người ta hơn
Mặc [Cmaj7]kệ cho khóe mắt ướt, son [Cadd9]môi kìa giờ đã sờn 
Trái tim [Dm7]anh hỏng lâu rồii !
Dù có [G7]vỡ nữa cũng không sao
Điện [Cmaj7]thoại lăn lóc trên bàn,
 bỗng hiện [Cadd9]lên vài dòng thông báo
[Dm7]Vẫn như mọi ngày thôi, em [G7]rủ mình đi cafe
[Cmaj7]Lòng anh chợt bồi hồi.... À hóa [Cadd9]ra tình yêu là thế
[Dm7]Đời vốn là hơi khó, em bây [G7]giờ như hoa có chủ
[Cmaj7]Gửi lời vào hơi gió, đêm [Cadd9]nay anh hơi khó ngủ
Tâm [Dm7]hồn bỏ mặc cây bút
 trời Hà [G7]Nội mưa ngâu lâu tạnh
Đôi [Cmaj7]mắt vẫn lờ Facebook, chỉ [Cadd9]chờ một dầu màu xanh
 
- Nân:
[Dm7]Yêu rồi, thương rồi, [G7]mê rồi 
Sao chẳng [Cmaj7]nói ra [Cadd9]
Từng lời [Dm7]hát em viết tặng [G7]anh 
Giờ bay về [Cmaj7]đâu xa... [Cadd9]
[Dm7]Sao băng trôi qua [G7]tình ta bao la 
[Cmaj7]Chiếc hôn [Cadd9]đầu ! 
Để rồi [Dm7]mai ngồi đây tàn [G7]thuốc nhìn ta 
Mà [Cmaj7]ngóng trông [Cadd9]
Thì ra yêu là [Dm7]thế ! [G7] [Cmaj7]
Tình [Cadd9]đắng như ly cà [Dm7]phê [G7] [Cmaj7] [Cadd9]
 
Ngơ
Thì [Dm7]ra tương tư là thế này
[G7]24/7
[Cmaj7]Nghĩ đến em 
[Cadd9]Nghĩ đến em
Thả [Dm7]mây trôi qua từng kẽ tay
[G7]Cho làn khói này khẽ bay
Chìm [Cmaj7]sâu vào giai điệu êm ái [Cadd9]
...yêu là [Dm7]thế [G7] [Cmaj7] [Cadd9]');

insert into post_chord values('Po6',
N'Ver 1:
câu tạm biệt em [D]nói trên môi, 
Anh biết đây là đêm [F#m]cuối bên nhau mà thôi 
Nhìn lại từng khoảnh [Bm]khắc từng tồn tại 
[A]Ta từng khờ dại [G]
 
Mắt em nhòa đi [D]mascara 
Em trách anh không đi [F#m]đến nơi gọi là nhà 
Dù vạn ngày cũng [Bm]chẳng để lại gì 
[A]Tim mình thầm thì [G]
 
 
Chorus:
Mình còn lại gì ngoài cuộc gọi [D]hai giờ đêm 
Mình còn lại gì ngoài ngày dường [F#m]như dài thêm 
Nụ cười mà ta vô tình [Bm]bỏ lại
Trên môi em sớm [A]mai 
Dù xa [G]khuất 
 
Mình còn lại gì ngoài ngàn lời [D]yêu đã trao
Mình còn lại gì ngoài tình đã [F#m]phai từ hôm nào 
Lại một ngày trôi đi về [Bm]mây ngàn 
Em đi cùng đêm [A]tàn 
Mờ sương [G]khói 
 
[D] [F#m] [Bm] [A] [G] 
 
Ver 2:
Câu tạm biệt em [D]nói trên môi, 
Anh biết đây là đêm [F#m]cuối say mà thôi 
Nhìn lại từng khoảnh [Bm]khắc từng tồn tại 
Ta từng khờ [A]dại [G] 
 
Mắt em nhòa đi [D]mascara 
Em trách anh không đi [F#m]đến nơi gọi là nhà 
Dù vạn ngày cũng [Bm]chẳng để lại gì 
[A]Tim mình thầm thì [G]
 
Chorus: x 3
Mình còn lại gì ngoài cuộc gọi [D]hai giờ đêm 
Mình còn lại gì ngoài ngày dường [F#m]như dài thêm 
Nụ cười mà ta vô tình [Bm]bỏ lại
Trên môi em sớm [A]mai 
Dù xa [G]khuất 
 
Mình còn lại gì ngoài ngàn lời [D]yêu đã trao
Mình còn lại gì ngoài tình đã [F#m]phai từ hôm nào 
Lại một ngày trôi đi về [Bm]mây ngàn 
Em đi cùng đêm [A]tàn 
Mờ sương [G]khói 
 
Câu tạm biệt em [D]nói trên môi, 
Anh biết đây là đêm [F#m]cuối say mà thôi 
Nhìn lại từng khoảnh [Bm]khắc từng tồn tại 
Ta từng khờ [A]dại [G] ');

insert into post_chord values('Po7',
N'[G]Anh ca không hay, anh đàn nghe cũng dỡ 
Quang Lê nói như vậy
Nhưng vẫn [Am]hát cho em, hát thật lòng nghe cũng đỡ 
Hát cho em, cả [C]bầu trời 
hy vọng, đã vài lần a tưởng vỡ
Bất kể khi [Em]nào em muốn về, cửa trái tim a vẫn mở 
Người ta [G]nói người con gái đi bên cạnh 
Là món trang sức quý nhất
[Am]Thế nên anh lấp lánh ( Đôi tay )
Nhưng vẫn [C] ko thể nào bằng mắt em 
Có lẽ điều tệ nhất là mất em
Nhưng mà [Em]anh sẽ ko ngu ngốc vậy 
Ít nhất là ngay trong lúc này.
Cổ [G] áo anh luôn nghe mùi thuốc lá 
Hòa với một chút mùi nước hoa
Đôi [Am] khi là dấu môi em trên đó 
Đôi khi là hương tóc em tối qua
Em [C] thường nói anh ơi đi chậm lại 
Khi ngang qua con đường nhỏ có hoa
Để [Em] tay anh siết em ôm chặt lại 
Sài Gòn này như chỉ có ta...
 
Verse:
Anh có thể [G]chờ em từ sáng đến tối
Chỉ để thấy em trong bộ [Am]đồ anh yêu
Có em ngồi [C]phía sau 
Đi đâu cũng được [Em]
 
Em không cần [G]mang son môi mỗi khi gặp anh
Năm phút sau son sẽ [Am]mờ ngay thôi
Vì em thích anh hôn [C]lên môi
Yeah lên đâu cũng được [Em]
 
Em không phải [G]mang makeup từ sáng đến tối
Anh trót yêu luôn mộc [Am]mạc nơi em
Em vẫn lung linh [C]khi cần
Yeah em sao cũng đẹp [Em]
Em [G] nói em không thích người vô tâm
Nhưng anh sao cũng được
 
Là con [Am] gái ai không muốn được quan tâm
Nhưng anh sao cũng được
Vì nếu thương [C] em anh sẽ không làm em đau
Và nếu em khóc sẽ không làm anh lo
Và nếu phải [Em] đi em sẽ không quay trở lại
Và nếu em là yên bình anh sẽ chẳng cần đi đâu
 
[G] Yeah, anh thích điều đó
Anh vẫn đang say em có biết điều đó
Oh, [Am] sorry nãy giờ em nói gì
Sorry nãy giờ không để ý
Vì anh... [C] mãi nhìn em đôi mắt huyền
Cả cái cách em nhìn anh rất hiền
Khi [Em] cười làm rớt tim anh
Khi buồn còn vẫn long lanh
Rồi [G]mai này ta già đi
Em muốn trước sân [Am]nhà đầy hoa
Anh nói em còn [C]bên anh
Thì anh sao cũng được [Em] ');

insert into Playlist values('Pl1','1','Chill','2022-12-29');
insert into Playlist values('Pl2','1','Nhạc xưa','2022-12-29');
insert into Playlist values('Pl3','3','hehe','2022-12-29');

insert into Gom values('Pl1','BH5');
insert into Gom values('Pl1','BH7');
insert into Gom values('Pl2','BH2');
insert into Gom values('Pl3','BH4');
insert into Gom values('Pl3','BH5');
insert into Gom values('Pl3','BH6');
insert into Gom values('Pl3','BH7');

call sp_ThemPost('Một Đêm Say','Thịnh Suy','Nhạc Indie',2,'video','','Hướng dẫn Guitar MỘT ĐÊM SAY','Hướng dẫn đàn Guitar cho người mới 1 bài hát hot trend');
update post_video
set ANH = 'img/video-tutorials-avt/MDS.png'
where mapost = 'Po8';

call sp_ThemPost('Muộn Rồi Mà Sao Còn','Sơn Tùng MTP','Nhạc Trẻ',2,'video','','Muộn Rồi Mà Sao Còn - Sơn Tùng MTP - Guitar  ','Guitar hướng dẫn ');
update post_video
set ANH = 'img/video-tutorials-avt/MRMSC.png'
where mapost = 'Po9';

call sp_ThemPost('Bên Trên Tầng Lầu','Tăng Duy Tân','Nhạc Trẻ',2,'video','','Bên Trên Tầng Lầu - Guitar hướng dẫn','abcccc');
update post_video
set ANH = 'img/video-tutorials-avt/BTTL.png'
where mapost = 'Po10';

call sp_ThemPost('Vì Anh Đâu Có Biết','Madihu ft Vũ','Nhạc Indie',2,'video','','[Guitar] Hướng dẫn: Vì anh đâu có biết - Madihu ft Vũ','ANH EM NHỚ SUBSCRIBE KÊNH CỦA MÌNH ĐỂ XEM NGAY CÁC VIDEO MỚI NHẤT');
update post_video
set ANH = 'img/video-tutorials-avt/VADCB.png'
where mapost = 'Po11';

-- -----------------------------

call sp_ThemPost('Bên Trên Tầng Lầu','Tăng Duy Tân','Nhạc Trẻ',2,'video','','Bên Trên Tầng Lầu - Guitar hướng dẫn','abcccc');
update post_video
set ANH = 'img/video-tutorials-avt/BTTL.png', THELOAIVIDEO = 1
where mapost = 'Po12';

call sp_ThemPost('Ngủ Một Mình','HIEUTHUHAI','Nhạc Trẻ',1,'video','','NGỦ MỘT MÌNH -  hieuthuhai (Cover)','bài mới của háithuhiêu');
update post_video
set ANH = 'img/video-tutorials-avt/NMM.png', THELOAIVIDEO = 1
where mapost = 'Po13';

call sp_ThemPost('Vài Câu Nói Có Khiến Người Thay Đổi','GreyD ft. Tlinh','Nhạc Trẻ',3,'video','','[Hướng dẫn Guitar cực dễ!!!] vaicaunoicokhiennguoithaydoi - GreyD ft. Tlinh','...');
update post_video
set ANH = 'img/video-tutorials-avt/VCNCKNTD.png', THELOAIVIDEO = 1
where mapost = 'Po14';

call sp_ThemPost('Waitting For You','MONO','Nhạc Trẻ',1,'video','','Waiting For You - MONO - Guitar hướng dẫn','MONOMONO');
update post_video
set ANH = 'img/video-tutorials-avt/WFY.png', THELOAIVIDEO = 1
where mapost = 'Po15';

