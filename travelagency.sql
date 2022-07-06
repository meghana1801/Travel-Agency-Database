create table customer(
    c_id number primary key,
    c_fname varchar(50),
    c_lname varchar(50),
    c_age number,
    c_sex varchar(10),
    c_ph_number varchar(20),
    c_email varchar(50)
);

insert into customer values(10001,'DIVYA','JOSHI',29,'FEMALE','9345678190','dj@gmail.com');
insert into customer values(10002,'VED','DIXIT',25,'MALE','9879278190','vd@gmail.com');
insert into customer values(10003,'KRISH','AGARWAL',27,'MALE','6745678190','ka@gmail.com');
insert into customer values(10004,'ANISHA','BAID',19,'FEMALE','7845678190','db@gmail.com');
insert into customer values(10005,'NIRAV','NUNE',20,'MALE','7653478190','nn@gmail.com');
insert into customer values(10006,'SIRI','SOLA',28,'FEMALE','9897678190','ss@gmail.com');
insert into customer values(10007,'THANUJA','VARNAM',22,'FEMALE','9366678190','tv@gmail.com');
insert into customer values(10008,'VIKRAM','JAIN',23,'MALE','7892378190','vj@gmail.com');
insert into customer values(10009,'SHIVANI','RAJPUT',21,'FEMALE','7895678190','sr@gmail.com');
insert into customer values(10010,'SREYA','GOPU',26,'FEMALE','8901238190','sg@gmail.com');


create table companion(
    co_id number primary key,
    co_name varchar(50),
    co_sex varchar(20),
    co_age number,
    co_customer number,
    foreign key (co_customer) references customer
--   co_customer number references customer(c_id)
);

insert into companion values(10011,'VIDYA','FEMALE',26,10001);
insert into companion values(10012,'VANSH','MALE',25,10003);
insert into companion values(10013,'VATSAL','MALE',27,10002);
insert into companion values(10014,'HASVIKA','FEMALE',19,10004);
insert into companion values(10015,'SUJEETH','MALE',22,10006);
insert into companion values(10016,'NAMRATH','MALE',28,10005);
insert into companion values(10017,'JATIN','MALE',23,10007);
insert into companion values(10018,'DEETYA','FEMALE',29,10008);
insert into companion values(10019,'PRANAY','MALE',21,10010);
insert into companion values(10020,'VIRAT','MALE',20,10009);
insert into companion values(10021,'KSHITIJ','MALE',25,10009);
insert into companion values(10023,'KAVYA','FEMALE',23,10008);
insert into companion values(10024,'ADITHYA','MALE',25,10007);
insert into companion values(10025,'SAKSHI','FEMALE',19,10007);
insert into companion values(10026,'PRANAV','MALE',20,10006);
insert into companion values(10027,'CHARAN','MALE',22,10006);
insert into companion values(10028,'AKSHAT','MALE',23,10004);
insert into companion values(10029,'DEEKSHA','FEMALE',27,10004);
insert into companion values(10030,'PRAMUKH','MALE',20,10005);
insert into companion values(10031,'ARJUN','MALE',24,10006);
insert into companion values(10032,'AKSHAY','MALE',27,10005);
insert into companion values(10022,'POOJA','FEMALE',22,10009);
insert into companion values(10033,'SHRADDA','FEMALE',26,10001);
insert into companion values(10034,'LIKITH','MALE',25,10003);
insert into companion values(10035,'ARYAN','MALE',27,10002);
insert into companion values(10036,'SNIKKI','FEMALE',19,10004);
insert into companion values(10037,'DAKSH','MALE',22,10006);
insert into companion values(10038,'SOHAN','MALE',28,10005);
insert into companion values(10040,'VIMAL','MALE',23,10007);
insert into companion values(10041,'CHARVI','FEMALE',29,10008);
insert into companion values(10042,'SALEEM','MALE',21,10010);
insert into companion values(10043,'AYAAN','MALE',20,10009);
insert into companion values(10044,'AAKASH','MALE',25,10009);


create table "location"(
    l_id number primary key,
    l_name varchar(50),
    l_type varchar(50),
    l_rating number(2,1)
);

insert into "location" values (897801,'Munnar' , 'Hill Station' ,  4.2);
insert into "location" values (897802, 'Kochi', 'Port', 3.9);
insert into "location" values (897803, 'Alappuzha', 'Backwaters' , 3.8);
insert into "location" values (897806, 'Alleppey', 'Beach' , 2.7);

insert into "location" values (897804, 'Warangal' , 'Historic' , 3.9);
insert into "location" values (897805, 'Hyderabad', 'City', 3.4);

insert into "location" values (897808, 'Ooty', 'Hill Station', 2.1);
insert into "location" values (897809, 'Chennai', 'City', 3.6);
insert into "location" values (897813, 'Nainital', 'Hill Station', 4.2);
insert into "location" values (897814, 'Rishikesh', 'Pilgrim Site', 3.9);
insert into "location" values (897816, 'Kedarnath', 'Pilgrim Site' , 3.6);

insert into "location" values (897810, 'Jaisalmer', 'Desert' , 4.6);
insert into "location" values (897811, 'Chittorgarh', 'Fort', 2.8);
insert into "location" values (897812, 'Jaipur', 'City', 3.6);

insert into "location" values (897815, 'Goa', 'Beach', 3.8);
insert into "location" values (897819, 'Andaman Isands', 'Islands', 4.3);


create table l_attractions(
    loc_id number,
    l_atrr varchar(200),
    foreign key(loc_id) references "location"(l_id)
);

insert into l_attractions values(897801, 'Attukal Waterfalls');
insert into l_attractions values(897801, 'Pothamedu View Point');
insert into l_attractions values(897802, 'LuLu Mall ');
insert into l_attractions values(897802, 'Kerala Folklore Museum');
insert into l_attractions values(897802, 'Chottanikkara Temple');
insert into l_attractions values(897803, 'Kuttanad');
insert into l_attractions values(897803, 'Alappuzha backwaters');
insert into l_attractions values(897806, 'Alleppey HouseBoat');
insert into l_attractions values(897806, 'Pathiramanal');
insert into l_attractions values(897806, 'Vembanad Lake');
insert into l_attractions values(897804, 'Laknavaram Cheruvu');
insert into l_attractions values(897804, 'Bhadrakali Temple');
insert into l_attractions values(897805, 'Hussain Sagar Lake');
insert into l_attractions values(897805, 'Chowmahalla Palace');
insert into l_attractions values(897805, 'Qutub Shahi Tombs');
insert into l_attractions values(897808, 'Doddabetta Peak');
insert into l_attractions values(897808, 'Kalhatty Waterfalls');
insert into l_attractions values(897809, 'Kapaleeshwarar Temple');
insert into l_attractions values(897813, 'Tiffin Top');
insert into l_attractions values(897813, 'Snow View Point');
insert into l_attractions values(897814, 'Triveni Ghat');
insert into l_attractions values(897814, 'Kunjapuri Devi Temple');
insert into l_attractions values(897816, 'Ukhimath');
insert into l_attractions values(897816, 'Gauri Kund');
insert into l_attractions values(897810, 'Jaisalmer Fort ');
insert into l_attractions values(897811, 'Jaisalmer Fort ');
insert into l_attractions values(897811, 'Fateh Prakash Palace');
insert into l_attractions values(897812, 'Bassi Wildlife Sanctuary');
insert into l_attractions values(897815, 'Calangute Beach');
insert into l_attractions values(897815, 'Dudhsagar Falls');
insert into l_attractions values(897819, 'Makruzz');
insert into l_attractions values(897819, 'Jolly Buoy');
insert into l_attractions values(897819, 'Radhanagar Beach');


create table hotel(
    h_id number primary key,
    h_name  varchar(50),
    h_address varchar(200),
    h_price decimal,
    h_occupancy number,
    h_rating  number(2,1),
    h_location number,
    foreign key(h_location) references "location"(l_id)
);

insert into hotel values (5699, 'Hotel La Sagrita', 'Silent Valley Road, Near, NH-49, Munnar', 3500, 30, 3.8, 897801);
insert into hotel values (5701, 'Sagar Residency', 'Chithirapuram,Munnar,Idukki District', 3000, 30, 2.8, 897801);
insert into hotel values (5703, 'The Emerald,', 'Sahodaran Ayappan Road, Elamkulam Junction', 4000, 30, 4.2, 897802);
insert into hotel values (5704, 'Rutt Deen Hotel', 'Infopark Road, Kakkanad, Kochi', 4000, 30, 3.4, 897802);
insert into hotel values (5705, 'Hotel Lindsay', '1/55, Malampuzha south, Palakkad, Palakkad', 4500, 30, 3.78, 897803);
insert into hotel values (5706, 'Orchid Park Plaza', '12/600, Hotel Cnanakya, Arumugnan Garden, Cnandranagar', 4200, 30,3.9, 897803);
insert into hotel values (5711, 'Rainforest retreat', '1, Oyitty Road, Near Railway Station, Palayam', 4200, 30, 3.6, 897806);
insert into hotel values (5708, 'The Broadview Hotel', '6-3-563/2nd Floor/A Erranmanzil Colony, Somajiguda, Banjara Hills, Hyderabad', 3780, 30, 3.5, 897804);
insert into hotel values (5709, 'Mayfair Hotel', 'CC5X+H48, Sri Ram Nagar Colony, Banjara Hills', 3890, 30, 3.3, 897805);
insert into hotel values (5710, 'Crown Towers', 'XJQ2+745, MG Rd, opp Indian Oil Petrol Bunk, Pochamma Maidan, Venu Rao Colony, Sherpura', 4130, 30, 4.2, 897805);
insert into hotel values (5715, 'Cura Hospitality', 'XJQ2+745, MG Rd, opp Indian Oil Petrol Bunk, Pochamma Maidan, Venu Rao Colony, Sherpura', 4200, 30, 3.8, 897808);
insert into hotel values (5716, 'Hotel Joy Stick', 'Door 72H. 5h Cross, Arni House Rd, near Hotel The Abode, Ooty', 4350, 30, 3.6, 897808);
insert into hotel values (5717, 'Royal Palm', '115, Sir Theagaraya Rd, Parthasarathi Puram, T. Nagar, Chennai', 3650, 30, 2.6, 897809);
insert into hotel values (5707, 'LMB Hotel', '124, 1, Jawaharlal Nehru Rd, Poomagal Nagar, Guindy, Chennai', 3200, 30, 3.4, 897809);
insert into hotel values (5724, 'Proximity Apartments', 'Ramniwas,52 Haiz Warton Compound,Rajbhawan, road, Tallital, Nainital', 3550, 30, 2.9, 897813);
insert into hotel values (5725, 'Greenlane Suites', 'Shesdhara, Laxman Jhula Rd, Tapovan, Rishikesh', 4500, 30, 3.1, 897814);
insert into hotel values (5726, 'The Better Inn', '49PV+Q6W, Shivpuri, Rishikesh-Badrinath Highway, Rishikesh', 5300, 30, 3.2, 897814);
insert into hotel values (5728, 'Breeze Blows Hotel', 'Kedarnath Rd, Guptkashi', 2300, 30,4.8, 897816);
insert into hotel values (5712, 'All Stars Inn', 'Near Temple, Kedarnath', 3750, 30, 3.7, 897816);
insert into hotel values (5718, 'Seagull Hotel', '1-C V Singh Colony, opp. District Collectrate, near Hanuman Circle, Jaisalmer,', 2500, 30, 3.9, 897810);
insert into hotel values (5719, 'Ocean Breeze Hotel', 'Barmer Road, NH15, opposite Maheshwari Hospital, Jaisalmer', 1800, 30, 3.5, 897810);
insert into hotel values (5720, 'City Lodge', 'Near Fort 1st Gate, Shiv Road', 1950, 30, 3.8, 897811);
insert into hotel values (5721, 'Pinnacle Lodge', 'AC-4-C, Gayatri Marg, Sawai Jai Singh Hwy, Bani Park, Jaipur', 2400, 30, 2.6, 897812);
insert into hotel values (5723, 'Heartland Hotel', '315, Survey No 18/4 Bamon Vaddo, Candolim, Goa', 3120, 30, 2.1, 897815);
insert into hotel values (5713, 'Spa Paws Hotel', 'Opp Taj Holiday Village, Candolim, Goa', 3500, 30, 4.1, 897815);
insert into hotel values (5714, 'Gourmet Stay', 'Fort Aguada Road, Candolim Beach Rd, Candolim, Goa', 4150, 30, 4.3, 897815);
insert into hotel values (5722, 'Hot Springs Hotel', '10 MD Lane, Foreshore Road, Haddo, Port Blair, Andaman and Nicobar Islands', 3180, 30, 4.8, 897809);
insert into hotel values (5727, 'Juhu Plaza', 'Ram Nagar Beach, Neil Island, Ram Nagar, Andaman and Nicobar Islands', 5100, 30, 4.5, 897809);


create table agent(
    a_id number primary key,
    a_fname varchar(50),
    a_lname varchar(50),
    a_age number,
    a_joindate date,
    a_salary decimal,
    a_ph_number varchar(20),
    a_email varchar(50),
    a_commission decimal,
    a_rating number(2,1)
);

insert into agent values(1234,'DIVISHA','EMMADI',23,'27 MAY 2007',50000,'7894768799','de@gmail.com',60,3.5);
insert into agent values(1235,'ANMOL','BANSAL',22,'28 APRIL 2002',75000,'8784768799','ab@gmail.com',40,4.5);
insert into agent values(1236,'NAKSH','JOSHI',20,'2 JANUARY 2010',25000,'6542768799','nj@gmail.com',50,2.5);
insert into agent values(1237,'ABHIMANYU','BIRLA',29,'8 MARCH 2015',60000,'7894177890','abb@gmail.com',20,3.8);
insert into agent values(1238,'KOUSHIK','KOLLU',28,'18 JANUARY 2003',80000,'7176768799','kk@gmail.com',30,3.9);
insert into agent values(1239,'RACHANA','GADDAM',25,'27 MAY 2007',150000,'9224768799','rg@gmail.com',70,4.5);
insert into agent values(1240,'AASHRITHA','RAVULA',24,'16 APRIL 2017',70000,'6894768799','ar@gmail.com',25,4);
insert into agent values(1241,'ANJALI','SHARMA',27,'28 FEBRUARY 2014',35000,'9465768799','as@gmail.com',15,2.2);
insert into agent values(1242,'SHIV','SOMISETTY',22,'19 JUNE 2016',65000,'6785465799','ss@gmail.com',20,4.2);
insert into agent values(1243,'KARTHIK','VEDIRE',21,'20 JULY 2018',75000,'8764768799','kv@gmail.com',40,3.5);



create table reservation(
    r_id number primary key,
    r_advance decimal,
    r_due decimal,
    r_bdate date,--booking date
    r_status varchar(50),
    r_agent_rating number(2,1),
    r_customer number,
    r_agent number,
    foreign key (r_customer) references customer,
    foreign key (r_agent) references agent
);

insert into reservation values(50023,10000,20000,'22 MAY 2022','SUCCESS',4.2,10001,1235);
insert into reservation values(50024,5000,30000,'27 APRIL 2022','IN PROGRESS',2.2,10003,1236);
insert into reservation values(30045,10000,25000,'25 MARCH 2022','SUCCESS',3.4,10002,1239);
insert into reservation values(50034,20000,40000,'12 AUGUST 2021','WAITING LIST',4.1,10005,1240);
insert into reservation values(50123,15000,50000,'2 JULY 2022','SUCCESS',3.9,10004,1242);
insert into reservation values(50243,10000,20000,'19 MARCH 2021','IN PROGRESS',4.1,10007,1243);
insert into reservation values(62313,10000,25000,'20 JANUARY 2022','CANCEL',2.5,10006,1234);
insert into reservation values(78913,15000,40000,'17 MAY 2022','SUCCESS',4.5,10008,1236);
insert into reservation values(23563,12000,50000,'21 JUNE 2022','SUCCESS',3.2,10009,1238);
insert into reservation values(52673,20000,60000,'22 DECEMBER 2021','SUCCESS',3.8,10010,1241);


create table reservation_hotel(
    r_reservation number,
    r_cidate date,--check in date
    r_codate date,--check out date
    r_hotel number,
    r_loc_rating number(2,1),
    r_hotel_rating number(2,1),
    r_rooms number,
    foreign key (r_hotel) references hotel,
    foreign key (r_reservation) references reservation
);

insert into reservation_hotel values(50023,'22 MARCH 2022','28 MARCH 2022',5699,4.2,3.5,20);
insert into reservation_hotel values(50023,'8 MARCH 2022','18 MARCH 2022',5701,4.1,3.8,50);
insert into reservation_hotel values(50024,'18 FEB 2022','10 MARCH 2022',5703,2.8,3.5,50);
insert into reservation_hotel values(50024,'18 JANUARY 2022','28 JANUARY 2022',5704,2.2,3.8,40);
insert into reservation_hotel values(30045,'7 APRIL 2022','8 APRIL 2022',5715,3.2,3.5,60);
insert into reservation_hotel values(30045,'18 APRIL 2022','20 APRIL 2022',5717,3.2,4.5,50);
insert into reservation_hotel values(30045,'7 JUNE 2022','14 JUNE 2022',5728,3.2,3.5,60);
insert into reservation_hotel values(50034,'12 MARCH 2022','13 MARCH 2022',5712,4.2,3.5,80);
insert into reservation_hotel values(50034,'2 JANUARY 2022','14 JANUARY 2022',5726,3.8,4.5,40);
insert into reservation_hotel values(50034,'14 FEBRUARY 2022','20 FEBRUARY 2022',5724,4.2,3.5,20);
insert into reservation_hotel values(50123,'7 MARCH 2022','8 MARCH 2022',5724,3.4,3.5,70);
insert into reservation_hotel values(50243,'9 MARCH 2022','10 MARCH 2022',5724,3.1,3.5,60);
insert into reservation_hotel values(62313,'12 MARCH 2022','16 MARCH 2022',5724,1.2,3.5,40);
insert into reservation_hotel values(78913,'24 FEBRUARY 2022','28 FEBRUARY 2022',5721,3.2,4.5,40);
insert into reservation_hotel values(23563,'12 MARCH 2022','15 MARCH 2022',5723,3.2,3.1,40);
insert into reservation_hotel values(52673,'1 MAY 2022','16 MAY 2022',5727,2.1,3.8,20);
