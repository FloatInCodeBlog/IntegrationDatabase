CREATE SCHEMA shop AUTHORIZATION admin_user;

CREATE TABLE shop.users (
    id character varying(20) NOT NULL,
    CONSTRAINT users_un UNIQUE (id),
    CONSTRAINT users_pk PRIMARY KEY (id)
);

/*--------------------------------*/
CREATE TABLE shop.groups (
    id SERIAL PRIMARY KEY,
    name character varying(20) NOT NULL,
    CONSTRAINT groups_un UNIQUE (id),
    user_id character varying(20) NOT NULL REFERENCES shop.users (id)
);

/*--------------------------------*/
CREATE TABLE shop.vehicles (
    id SERIAL PRIMARY KEY,
    name character varying(20) NOT NULL,
    CONSTRAINT vehicles_un UNIQUE (id)
);
