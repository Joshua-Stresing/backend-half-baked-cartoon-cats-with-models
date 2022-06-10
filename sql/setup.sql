-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP table if exists cats;

CREATE table cats (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    year INT NOT NULL,
    url VARCHAR NOT NULL,
    lives INT NOT NULL,
    is_sidekick BOOLEAN
);

INSERT INTO cats (name, type, year, url, lives, is_sidekick) VALUES ('Felix', 'Tuxedo', 1892, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Felix_the_cat.svg/200px-Felix_the_cat.svg.png', 3, 'false'), 

('Garfield', 'Orange Tabby', 1978, 'https://static.wikia.nocookie.net/garfield/images/9/9f/GarfieldCharacter.jpg', 7, 'false'), 

('Duchess', 'Angora', 1970, 'https://static.wikia.nocookie.net/disney/images/e/eb/Profile_-_Duchess.jpeg', 9, 'false'), 

('Stimpy', 'Stimpy', 1990, 'https://static.wikia.nocookie.net/renandstimpy/images/c/c1/Ren-stimpy-25-anniversar-hp2.png', 1, 'true'), 

('Sylvester', 'Tuxedo', 1945, 'https://static.wikia.nocookie.net/charactercommunity/images/7/73/SylvesterDance.png', 1, 'true'), 

('Tigger', 'Tiger', 1928, 'https://www.pinclipart.com/picdir/big/150-1504133_tigger-tigger-cartoon-me-clipart-png-image-download.png', 8, 'false'), 

('Hello Kitty', 'Angora', 1974, 'https://cdn.shopify.com/s/files/1/0054/4371/5170/products/FiGPiN_360HelloKittySANRIOPIN.png?v=1627413934', 9, 'false'),

('Hobbes', 'Tiger', 1985, 'https://sketchok.com/images/articles/01-cartoons/000-va/102/10.jpg', 6, 'true');

