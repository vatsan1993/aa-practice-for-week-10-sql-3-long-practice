-- Using subqueries, find the names of the cats whose owners are either George Beatty or Melynda Abshire
-- Your code here

-- SELECT DISTINCT
--     cats.name
-- FROM cats
--     JOIN cat_owners ON cats.id = cat_owners.cat_id
--     JOIN owners ON owners.id = cat_owners.owner_id
-- WHERE (
--         owners.first_name = 'George'
--         AND owners.last_name = 'Beatty'
--     )
--     OR (
--         owners.first_name = 'Melynda'
--         AND owners.last_name = 'Abshire'
--     );

SELECT cats.name
from cats
where
    cats.id in (
        select cat_owners.cat_id
        from cat_owners
            join owners on owners.id = cat_owners.owner_id
        where (
                first_name = 'George'
                and last_name = 'Beatty'
            )
            or (
                first_name = 'Melynda'
                and last_name = 'Abshire'
            )
    );
