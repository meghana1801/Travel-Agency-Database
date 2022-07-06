--QUERIES

-- list customer IDs whose trip includes only one city
select distinct c.c_id--,count(l.l_name) cnt
from customer c,reservation r,reservation_hotel rh, hotel h,"location" l
where c.c_id=r.r_customer and r.r_id=rh.r_reservation and rh.r_hotel=h.h_id and h.h_location=l.l_id
group by c.c_id
having count(l.l_name)=1;


-- list customer IDs whose trip includes more than one city
select distinct c.c_id,count(l.l_name) cnt
from customer c,reservation r,reservation_hotel rh, hotel h,"location" l
where c.c_id=r.r_customer and r.r_id=rh.r_reservation and rh.r_hotel=h.h_id and h.h_location=l.l_id
group by c.c_id
having count(l.l_name)!=1;


--list customer ids that only booked rooms with rating less than 3
select c.c_id from customer c where c.c_id not in
(select distinct c.c_id --,count(h.h_id)
from customer c,reservation r,reservation_hotel rh, hotel h,"location" l
where c.c_id=r.r_customer and r.r_id=rh.r_reservation and rh.r_hotel=h.h_id and h.h_location=l.l_id and h.h_rating>3
group by c.c_id)


--List all overbooked hotels with their occupancy and number of booked rooms
select h.h_id,h.h_occupancy,sum(rh.r_rooms) as booked_rooms
from customer c,reservation r,reservation_hotel rh, hotel h,"location" l
where c.c_id=r.r_customer and r.r_id=rh.r_reservation and rh.r_hotel=h.h_id and h.h_location=l.l_id
group by h.h_id,h.h_occupancy
having sum(rh.r_rooms)>h.h_occupancy


--number of people checked into a hotel between 10th and 20th January
select count(*)
from reservation_hotel rh
where rh.r_cidate BETWEEN '10-01-2022' and '20-01-2022' or rh.r_codate BETWEEN '10-01-2022' and '20-01-2022'


--give a rounded integer value of the average people in a group
select round(avg(cnt)) avg_people_in_group from
(select count(*)+1 cnt
from customer c, companion co
where co.co_customer=c.c_id
group by c.c_id);


--list all locations with the number of people visiting them in descending order
drop view group_count;
create view group_count as
select c.c_id c_id,count(*)+1 cnt
from customer c, companion co
where co.co_customer=c.c_id
group by c.c_id;
select l.l_id,l.l_name, sum(cnt)
from group_count gc,customer c,companion co,reservation r,reservation_hotel rh, hotel h,"location" l
where gc.c_id=c.c_id and c.c_id=r.r_customer and r.r_id=rh.r_reservation and rh.r_hotel=h.h_id and h.h_location=l.l_id 
group by l.l_id,l.l_name
order by sum(cnt) desc;
