-- clear wizard table
TRUNCATE TABLE `wizard`;

-- drop columns in wizard table
ALTER TABLE
    wizard
DROP COLUMN birthday,
DROP COLUMN birth_place,
DROP COLUMN biography,
DROP COLUMN is_muggle;

-- create team table
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
);

-- create player table
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
    `id` int NOT NULL AUTO_INCREMENT,
    `wizard_id` int NOT NULL,
    `team_id` int NOT NULL,
    `role` varchar(50) NOT NULL,
    `enrollment_date` Date,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`wizard_id`) REFERENCES `wizard`(`id`),
    FOREIGN KEY (`team_id`) REFERENCES `team`(`id`)
);


-- insert test data in team table and player table


-- make 3 requests
-- 1. Retourne le nom des équipes et le nombre de joueurs par équipe, le tout classé par nombre de joueurs par équipe,
--      de la plus nombreuse à la moins nombreuse.
-- 2. Retourne uniquement les noms des équipes complètes (ayant 14 joueurs ou plus, c’est-à- dire 7 joueurs et
--      7 remplaçants minimum), classés par ordre alphabétique.
-- 3. L’entraîneur des Gryffindor est superstitieux, son jour préféré est le lundi.
--      Retourne la liste des joueurs de son équipe qui ont été enrôlés un lundi (il souhaite les faire jouer en priorité),
--      et classe les résultats par date d’enrôlement chronologique.

-- 1.
SELECT
    t.name,
    COUNT(p.id) AS number_of_players
FROM
    team t
INNER JOIN player p ON
    t.id = p.team_id
GROUP BY
    t.name
ORDER BY
    number_of_players DESC;

-- 2.
SELECT
    t.name
FROM
    team t
INNER JOIN player p ON
    t.id = p.team_id
GROUP BY
    t.name
HAVING
    COUNT(p.id) >= 14
ORDER BY
    t.name;

-- 3.
SELECT
    w.firstname,
    w.lastname,
    t.name as team_name,
    p.enrollment_date,
    DAYNAME(p.enrollment_date) as dayname
FROM
    player p
INNER JOIN wizard w ON
    p.wizard_id = w.id
INNER JOIN team t ON
    p.team_id = t.id
WHERE
    t.name = 'Gryffindor'
    AND DAYNAME(p.enrollment_date) = 'Monday'
ORDER BY
    p.enrollment_date;
