### h_트리거 >>> trigger_practice_answer ###

--- 기존 트리거 삭제
drop trigger if exists after_player_delete;

--- 트리거 생성
delimiter $$
create trigger after_player_deleyte
		after delete
	on players
    for each row
begin
		insert into player_delete_logs (player_name, deleted_time)
	values (OLD.name, now());
end $$
delimiter ;

-- 기존 트리거 삭제
drop trigger if exists after_player_position_update;

delimiter $$
create trigger after_player_update
		after update
    on players
    for each row
begin
		if OLD.position != NEW.position then
			insert into plater_position_logs (player_name, old_position, new_position, changed_time)
		values (NEW.name, OLD.positon, NEW.position, now());
        end if;
end $$
delimiter ;

-- temas 테이블에 player_count 컬럼 추가
ALTER TABLE temas ADD COLUMN player_conut INT DEFAULT 0;







