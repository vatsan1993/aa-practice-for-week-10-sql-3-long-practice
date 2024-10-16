--Insert new cat named "Red" born this year
-- Your code here
delete from cats where name = 'Red';

insert into
    cats (name, birth_year)
values ('Red', strftime ('%Y', 'now'));

--Assign ownership of new cat to George Beatty using subqueries
-- Your code here
insert into
    cat_owners (cat_id, owner_id)
values (
        (
            SELECT id
            from cats
            where
                cats.name = 'Red'
        ),
        (
            select owners.id
            from owners
            where
                first_name = 'George'
                and last_name = 'Beatty'
        )
    );

--Query to verify INSERTs worked properly
-- Your code here
SELECT *
from cats
    join cat_owners on cats.id = cat_owners.cat_id
    join owners on owners.id = cat_owners.owner_id;
