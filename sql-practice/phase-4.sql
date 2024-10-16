-- Give "Red" the cat one of every toy the other cats have
-- Your code here
-- Not no need for a values where there is an nested insert statement,

insert into
    toys (name, cat_id)
select distinct
    toys.name,
    red_cat.cat_id
from toys, (
        select cats.id AS cat_id
        from cats
        where
            cats.name = 'Red'
    ) as red_cat
where
    toys.cat_id != red_cat.cat_id;

-- Query spoiled cats reporting the most spoiled first
-- Your code here
SELECT *
from toys
where
    toys.cat_id = (
        select cats.id
        from cats
        where
            cats.name = 'Red'
    );
