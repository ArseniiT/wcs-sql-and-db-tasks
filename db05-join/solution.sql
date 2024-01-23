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


-- make 3 requests using JOIN
-- 1. Retourne les noms, prénoms, rôle et équipe de tous les joueurs, classés dans l’ordre alphabétique par équipe, puis par rôle dans l’équipe, puis par nom de famille, puis par prénom.
-- 2. Retourne uniquement les prénoms et noms des joueurs ayant le rôle de seeker (attrapeur), classés par ordre alphabétique de nom puis prénom
-- 3. Retourne la liste de tous les sorciers qui ne pratiquent pas le quidditch.

-- 1.
SELECT
    w.firstname,
    w.lastname,
    p.role,
    t.name
FROM
    player p
INNER JOIN wizard w ON
    p.wizard_id = w.id
INNER JOIN team t ON
    p.team_id = t.id
ORDER BY
    t.name,
    p.role,
    w.lastname,
    w.firstname;

-- 2.
SELECT
    w.firstname,
    w.lastname
FROM
    player p
INNER JOIN wizard w ON
    p.wizard_id = w.id
WHERE
    p.role = 'seeker'
ORDER BY
    w.lastname,
    w.firstname;

-- 3.
SELECT
    w.firstname,
    w.lastname
FROM
    wizard w
LEFT JOIN player p ON
    w.id = p.wizard_id
WHERE
    p.wizard_id IS NULL;
