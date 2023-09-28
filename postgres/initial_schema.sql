--- Creating tables

CREATE TABLE public.country(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(500) NOT NULL
);

CREATE TABLE public.state(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    country_id INTEGER NOT NULL
);

CREATE TABLE public.city(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    state_id INTEGER NOT NULL
);

CREATE TABLE public.province(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    city_id INTEGER NOT NULL
);

CREATE TABLE public.neighborhood(
    id SERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    city_id INTEGER NOT NULL,
    province_id INTEGER NOT NULL
);

--- ######################

--- Inserting fixtures

COPY public.country(id, name)
    FROM '/fixtures/country.csv'
    DELIMITER ';' csv header;

COPY public.state(id, name, country_id)
    FROM '/fixtures/state.csv'
    DELIMITER ';' csv header;

COPY public.city(id, name, state_id)
    FROM '/fixtures/city.csv'
    DELIMITER ';' csv header;

COPY public.province(id, name, city_id)
    FROM '/fixtures/province.csv'
    DELIMITER ';' csv header;

COPY public.neighborhood(id, name, province_id, city_id)
    FROM '/fixtures/neighborhood.csv'
    DELIMITER ';' csv header;

--- ######################