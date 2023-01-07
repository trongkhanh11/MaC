/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     30/12/2022 3:59:39 CH                        */
/*==============================================================*/

create 
-- drop
database mac;
use mac;

/*==============================================================*/
/* Table: BAIHAT                                                */
/*==============================================================*/
create table BAIHAT
(
   MABH                 char(10) not null  comment '',
   TENBAIHAT            char(30)  comment '',
   CASY                 char(20)  comment '',
   THELOAI              char(20)  comment '',
   primary key (MABH)
);

/*==============================================================*/
/* Table: COMMENTS                                              */
/*==============================================================*/
create table COMMENTS
(
   MACMT                char(10) not null  comment '',
   MAPOST               char(10) not null  comment '',
   ID                   int not null comment '',
   CMT                  text  comment '',
   NGAYDANG             date  comment '',
   primary key (MACMT)
);

/*==============================================================*/
/* Table: GOM                                                   */
/*==============================================================*/
create table GOM
(
   MAPLAYLIST           char(10) not null  comment '',
   MABH                 char(10) not null  comment '',
   primary key (MAPLAYLIST, MABH)
);

/*==============================================================*/
/* Table: PLAYLIST                                              */
/*==============================================================*/
create table PLAYLIST
(
   MAPLAYLIST           char(10) not null  comment '',
   ID                   int not null  comment '',
   TENPLAYLIST          char(30)  comment '',
   TGDANG               datetime  comment '',
   primary key (MAPLAYLIST)
);

/*==============================================================*/
/* Table: POST                                                  */
/*==============================================================*/
create table POST
(
   MAPOST               char(10) not null  comment '',
   MABH                 char(10) not null  comment '',
   ID                   int not null  comment '',
   NGAYDANG             date  comment '',
   RATINGSUM            int  comment '',
   SLCMT                int  comment '',
   NGUOIDANG            char(20)  comment '',
   DUOCDUYET            bool  comment '',
   LOAI					char(10) comment'',
   primary key (MAPOST)
);

/*==============================================================*/
/* Table: POST_CHORD                                            */
/*==============================================================*/
create table POST_CHORD
(
   MAPOST               char(10) not null  comment '',
   CHORD                text  comment ''
);

/*==============================================================*/
/* Table: POST_VIDEO                                            */
/*==============================================================*/
create table POST_VIDEO
(
   MAPOST               char(10) not null  comment '',
   TENVIDEO				varchar(255) comment '',
   `DESCRIBDE`			text comment'',
   THELOAIVIDEO			int comment'',
   ANH					varchar(255) comment''
);

/*==============================================================*/
/* Table: RATING                                                */
/*==============================================================*/
create table RATING
(
   ID                   int not null  comment '',
   MAPOST               char(10) not null  comment '',
   RATING               int  comment ''
);

/*==============================================================*/
/* Table: REQUESTSONG                                           */
/*==============================================================*/
create table REQUESTSONG
(
   REQID                char(10) not null  comment '',
   MABH                 char(10) not null  comment '',
   TENBAIHAT            char(30)  comment '',
   TACGIA               char(20)  comment '',
   THELOAI              char(20)  comment '',
   primary key (REQID)
);

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table USERS
(
   ID                   int not null auto_increment comment '',
   USERNAME            char(20)  comment '',
   PASS                 varchar(255)  comment '',
   HOTEN                char(50)  comment '',
   EMAIL                varchar(50)  comment '',
   NTNSINH              date  comment '',
   NGAYTG               date  comment '',
   ADMINACC             bool  comment '',
   ONL					bool  comment '',
   BAN					bool  comment '',
   primary key (ID)
);

alter table COMMENTS add constraint FK_COMMENTS_CHO_POST foreign key (MAPOST)
      references POST (MAPOST) on delete restrict on update restrict;

alter table COMMENTS add constraint FK_COMMENTS_GUI_USERS foreign key (ID)
      references USERS (ID) on delete restrict on update restrict;

alter table GOM add constraint FK_GOM_GOM_PLAYLIST foreign key (MAPLAYLIST)
      references PLAYLIST (MAPLAYLIST) on delete restrict on update restrict;

alter table GOM add constraint FK_GOM_GOM2_BAIHAT foreign key (MABH)
      references BAIHAT (MABH) on delete restrict on update restrict;

alter table PLAYLIST add constraint FK_PLAYLIST_DO_USERS foreign key (ID)
      references USERS (ID) on delete restrict on update restrict;

alter table POST add constraint FK_POST_DO1_USERS foreign key (ID)
      references USERS (ID) on delete restrict on update restrict;

alter table POST add constraint FK_POST_THUOC_BAIHAT foreign key (MABH)
      references BAIHAT (MABH) on delete restrict on update restrict;

alter table POST_CHORD add constraint FK_POST_CHO_LA2_POST foreign key (MAPOST)
      references POST (MAPOST) on delete restrict on update restrict;

alter table POST_VIDEO add constraint FK_POST_VID_LA4_POST foreign key (MAPOST)
      references POST (MAPOST) on delete restrict on update restrict;

alter table RATING add constraint FK_RATING_CHO2_POST foreign key (MAPOST)
      references POST (MAPOST) on delete restrict on update restrict;

alter table RATING add constraint FK_RATING_GUI2_USERS foreign key (ID)
      references USERS (ID) on delete restrict on update restrict;

alter table REQUESTSONG add constraint FK_REQUESTS_YEU_CAU2_BAIHAT foreign key (MABH)
      references BAIHAT (MABH) on delete restrict on update restrict;

