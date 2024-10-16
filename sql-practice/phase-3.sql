-- Find the name of the cats co-owned by both George Beatty and Melynda Abshire
-- Your code here

SELECT cats.name
from cats
where
    id in (
        select cat_owners.owner_id
        from cat_owners
            join owners on owners.id = cat_owners.owner_id
        where (
                first_name = 'George'
                and last_name = 'Beatty'
            )
        union
        select cat_owners.owner_id
        from cat_owners
            join owners on owners.id = cat_owners.owner_id
        where (
                first_name = 'Melynda'
                and last_name = 'Abshire'
            )
    );
