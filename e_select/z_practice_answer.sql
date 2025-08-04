### c_select 폴더 >>> z_practice_answer 파일 ###

USE `korea_db`;

# 1)
select
	name, contact, grade
from
	`members`;

# 2)
select
	name, grade, area_code
from
	`members`
where
	area_code = 'seoul' ;

# 3)
select name, join_date, grade from members
where
	grade not in('Gold', 'Platinum', 'Diamond');

select name, joi_date, grade from members
where
	grade not in('Gold', 'Platinum', 'Diamond');

# 4)
select name, join_date from members
where
	year(join_date) = 2023;
    
# 5)
select name, join_date from members
where
	points >= 100;
    
# 6)
select name, join_date from members
where
	gender = 'Male' and grade in ('gold', 'platinum', 'diamond');
    
# 7)
select
	member_id, max(purchases_date) as last_purchase_date
    
      
    
    
    
