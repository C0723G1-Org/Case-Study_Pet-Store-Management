drop database if exists quan_ly_nhan_su;
create database if not exists quan_ly_nhan_su;
use quan_ly_nhan_su;

create table bac_luong(
id_bac_luong int primary key auto_increment,
he_so_luong int not null, 
phu_cap int not null
);

create table chuc_vu(
id_chuc_vu int primary key auto_increment,
ten_chuc_vu varchar(50) not null
);

create table tai_khoan(
id_tai_khoan int primary key auto_increment,
ten_tai_khoan varchar(50) unique not null,
mat_khau varchar(100) not null,
role_tai_khoan varchar(50) not null
);

create table hop_dong(
id_hop_dong int primary key auto_increment,
ma_hop_dong varchar(50) unique not null,
ngay_bat_dau varchar(50) not null,
ngay_ket_thuc varchar(50)
);

create table suat_day(
id_suat_day int primary key auto_increment,
ten_suat_day varchar(50) not null 
);

create table lop_hoc(
id_lop_hoc int primary key auto_increment,
ten_lop_hoc varchar(50)
);

create table phong_hoc(
id_phong_hoc int primary key auto_increment,
ten_phong_hoc varchar(100)
);

create table lop_hoc_phong_hoc(
id_lop_hoc_phong_hoc int primary key auto_increment,
id_lop_hoc int,
id_phong_hoc int,
foreign key (id_lop_hoc) references lop_hoc(id_lop_hoc),
foreign key (id_phong_hoc) references phong_hoc(id_phong_hoc)
);


create table giang_vien(
 id_giang_vien int primary key auto_increment,
 ma_giang_vien varchar(50) not null unique,
 ho_ten varchar(100) not null,
 ngay_sinh varchar(50) not null,
 que_quan varchar(50) not null,
 gioi_tinh bit not null,
 so_dien_thoai varchar(50) not null,
 cccd varchar(20) unique not null,
 trang_thai varchar(100) not null, -- dang lam viec hoac da thoi viec
 luong_co_ban int not null,
 he_so_canh_bao int not null,
 id_bac_luong int,
 id_tai_khoan int,
 id_hop_dong int,
 foreign key (id_bac_luong) references bac_luong(id_bac_luong),
 foreign key (id_tai_khoan) references tai_khoan(id_tai_khoan),
 foreign key (id_hop_dong) references hop_dong(id_hop_dong)
);

create table giang_vien_chuc_vu (
    id_giang_vien_chuc_vu int primary key auto_increment,
    id_giang_vien int,
    id_chuc_vu int,
    foreign key (id_giang_vien)
        references giang_vien (id_giang_vien),
    foreign key (id_chuc_vu)
        references chuc_vu (id_chuc_vu)
);

create table giang_vien_lop_hoc(
id_giang_vien_lop_hoc int primary key auto_increment,
id_giang_vien int,
id_lop_hoc int,
foreign key (id_giang_vien) references giang_vien(id_giang_vien),
foreign key (id_lop_hoc) references lop_hoc(id_lop_hoc)
);

create table lich_day(
id_lich_day int primary key auto_increment,
id_suat_day int,
id_giang_vien_lop_hoc int,
id_lop_hoc_phong_hoc int,
foreign key (id_suat_day) references suat_day(id_suat_day),
foreign key (id_giang_vien_lop_hoc) references giang_vien_lop_hoc(id_giang_vien_lop_hoc),
foreign key (id_lop_hoc_phong_hoc) references lop_hoc_phong_hoc(id_lop_hoc_phong_hoc)
);





