INSERT INTO school (name, country, capacity)
VALUES
('Beauxbatons Academy of Magic', 'France', 550),
('Castelobruxo', 'Brazil', 380),
('Durmstrang Institute', 'Sweden', 570),
('Hogwarts School of Witchcraft and Wizardry', 'United Kingdom', 450),
('Ilvermorny School of Witchcraft and Wizardry', 'USA', 300),
('Koldovstoretz', 'Russia', 125),
('Mahoutokoro School of Magic', 'Japan', 700),
('Uagadou School of Magic', 'Uganda', 350);

UPDATE school SET country = 'Sweden' WHERE name = 'Durmstrang Institute';

UPDATE school SET capacity = 700 WHERE name = 'Mahoutokoro School of Magic';

DELETE FROM school WHERE name LIKE '%Magic%';

SELECT * FROM school;