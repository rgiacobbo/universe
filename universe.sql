--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cometa; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cometa (
    cometa_id integer NOT NULL,
    name character varying(255) NOT NULL,
    planet_id integer,
    description text,
    age integer,
    has_life boolean
);


ALTER TABLE public.cometa OWNER TO freecodecamp;

--
-- Name: cometa_cometa_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cometa_cometa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cometa_cometa_id_seq OWNER TO freecodecamp;

--
-- Name: cometa_cometa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cometa_cometa_id_seq OWNED BY public.cometa.cometa_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance integer,
    age integer NOT NULL,
    galaxy_type text,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text,
    has_life boolean,
    planet_id integer,
    descripton text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    habitable boolean,
    star_id integer,
    planet_type text,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance integer,
    temperature numeric(2,2),
    visible boolean,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: cometa cometa_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa ALTER COLUMN cometa_id SET DEFAULT nextval('public.cometa_cometa_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Data for Name: cometa; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cometa VALUES (1, 'Ba', 1, 'Cometa', 23, true);
INSERT INTO public.cometa VALUES (2, 'Ba2', 2, 'Cometa', 23, true);
INSERT INTO public.cometa VALUES (3, 'Ba3', 3, 'Cometa', 23, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'BIG', 1000, 12, 'A BRABA', 'Nosso lar', true);
INSERT INTO public.galaxy VALUES (2, 'BIG', 1000, 12, 'A BRABA', 'Nosso lar', true);
INSERT INTO public.galaxy VALUES (3, 'BIG', 1000, 12, 'A BRABA', 'Nosso lar', true);
INSERT INTO public.galaxy VALUES (4, 'BIG', 1000, 12, 'A BRABA', 'Nosso lar', true);
INSERT INTO public.galaxy VALUES (5, 'BIG', 1000, 12, 'A BRABA', 'Nosso lar', true);
INSERT INTO public.galaxy VALUES (6, 'BIG', 1000, 12, 'A BRABA', 'Nosso lar', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 1234, 'Nossa', false, 1, 'branca');
INSERT INTO public.moon VALUES (2, 'Lua1', 1234, 'Nossa', false, 2, 'branca');
INSERT INTO public.moon VALUES (3, 'Lua3', 1234, 'Nossa', false, 3, 'branca');
INSERT INTO public.moon VALUES (4, 'Lua4', 1234, 'Nossa', false, 4, 'branca');
INSERT INTO public.moon VALUES (5, 'Lua5', 1234, 'Nossa', false, 5, 'branca');
INSERT INTO public.moon VALUES (6, 'Lua6', 1234, 'Nossa', false, 6, 'branca');
INSERT INTO public.moon VALUES (7, 'Lua7', 1234, 'Nossa', false, 7, 'branca');
INSERT INTO public.moon VALUES (8, 'Lua8', 1234, 'Nossa', false, 8, 'branca');
INSERT INTO public.moon VALUES (9, 'Lua9', 1234, 'Nossa', false, 9, 'branca');
INSERT INTO public.moon VALUES (10, 'Lua10', 1234, 'Nossa', false, 10, 'branca');
INSERT INTO public.moon VALUES (11, 'Lua11', 1234, 'Nossa', false, 11, 'branca');
INSERT INTO public.moon VALUES (12, 'Lua12', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (13, 'Lua13', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (14, 'Lua14', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (15, 'Lua15', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (16, 'Lua16', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (17, 'Lua17', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (18, 'Lua18', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (19, 'Lua19', 1234, 'Nossa', false, 12, 'branca');
INSERT INTO public.moon VALUES (20, 'Lua20', 1234, 'Nossa', false, 12, 'branca');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', false, 1, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (2, 'Terra', false, 2, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (3, 'Terra', false, 3, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (4, 'Terra', false, 4, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (5, 'Terra', false, 5, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (6, 'Terra', false, 6, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (7, 'Terra', false, 6, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (8, 'Terra', false, 6, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (9, 'Terra', false, 6, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (10, 'Terra', false, 6, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (11, 'Terra', false, 6, 'Lar', 'AQUI SE vive');
INSERT INTO public.planet VALUES (12, 'Terra', false, 6, 'Lar', 'AQUI SE vive');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 10, 0.22, true, 1, 'Nosso Sol');
INSERT INTO public.star VALUES (2, 'Sol', 10, 0.22, true, 2, 'Nosso Sol');
INSERT INTO public.star VALUES (3, 'Sol', 10, 0.22, true, 3, 'Nosso Sol');
INSERT INTO public.star VALUES (4, 'Sol', 10, 0.22, true, 4, 'Nosso Sol');
INSERT INTO public.star VALUES (5, 'Sol', 10, 0.22, true, 5, 'Nosso Sol');
INSERT INTO public.star VALUES (6, 'Sol', 10, 0.22, true, 6, 'Nosso Sol');


--
-- Name: cometa_cometa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cometa_cometa_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: cometa cometa_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa
    ADD CONSTRAINT cometa_pkey PRIMARY KEY (cometa_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: cometa name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: cometa cometa_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometa
    ADD CONSTRAINT cometa_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

