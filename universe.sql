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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    weight_in_ton integer,
    cost_to_visit numeric(5,2),
    description text,
    has_life boolean,
    advanced_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    weight_in_ton integer,
    cost_to_visit numeric(5,2),
    description text,
    has_life boolean,
    planet_id integer,
    advanced_life boolean
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
-- Name: ocean; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ocean (
    ocean_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    weight integer,
    description text,
    has_life boolean,
    advance_life boolean
);


ALTER TABLE public.ocean OWNER TO freecodecamp;

--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ocean_ocean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ocean_ocean_id_seq OWNER TO freecodecamp;

--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ocean_ocean_id_seq OWNED BY public.ocean.ocean_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    weight_in_ton integer,
    cost_to_visit numeric(5,2),
    description text,
    has_life boolean,
    star_id integer,
    advanced_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    weight_in_ton integer,
    cost_to_visit numeric(5,2),
    description text,
    has_life boolean,
    galaxy_id integer,
    advanced_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: ocean ocean_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean ALTER COLUMN ocean_id SET DEFAULT nextval('public.ocean_ocean_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'via', 120, 220, 210.53, 'blue', true, true);
INSERT INTO public.galaxy VALUES (8, 'andromeda', 120, 220, 210.53, 'red', true, true);
INSERT INTO public.galaxy VALUES (9, 'andromeda', 120, 220, 210.53, 'green', true, true);
INSERT INTO public.galaxy VALUES (10, 'andromeda', 120, 220, 210.53, 'silver', true, true);
INSERT INTO public.galaxy VALUES (11, 'andromeda', 120, 220, 210.53, 'black', true, true);
INSERT INTO public.galaxy VALUES (12, 'andromeda', 120, 220, 210.53, 'orange', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europe', 120, 220, 210.53, 'gravity plus', true, 1, true);
INSERT INTO public.moon VALUES (2, 'Europe', 120, 220, 210.53, 'gravity zero', true, 1, true);
INSERT INTO public.moon VALUES (3, 'Europe', 120, 220, 210.53, 'ice', true, 1, true);
INSERT INTO public.moon VALUES (4, 'Europe', 120, 220, 210.53, 'drone', true, 1, true);
INSERT INTO public.moon VALUES (5, 'Europe', 120, 220, 210.53, 'star of death', true, 1, true);
INSERT INTO public.moon VALUES (6, 'Europe', 120, 220, 210.53, 'star moon', true, 1, true);
INSERT INTO public.moon VALUES (7, 'Europe', 120, 220, 210.53, 'red', true, 1, true);
INSERT INTO public.moon VALUES (8, 'Europe', 120, 220, 210.53, 'blue', true, 1, true);
INSERT INTO public.moon VALUES (9, 'Europe', 120, 220, 210.53, 'green', true, 1, true);
INSERT INTO public.moon VALUES (10, 'Europe', 120, 220, 210.53, 'yellow', true, 1, true);
INSERT INTO public.moon VALUES (11, 'Europe', 120, 220, 210.53, 'orange', true, 1, true);
INSERT INTO public.moon VALUES (12, 'Europe', 120, 220, 210.53, 'silver', true, 1, true);
INSERT INTO public.moon VALUES (13, 'Europe', 120, 220, 210.53, 'black', true, 1, true);
INSERT INTO public.moon VALUES (14, 'Europe', 120, 220, 210.53, 'transformers', true, 1, true);
INSERT INTO public.moon VALUES (15, 'Europe', 120, 220, 210.53, 'amazing', true, 1, true);
INSERT INTO public.moon VALUES (16, 'Europe', 120, 220, 210.53, 'awesome', true, 1, true);
INSERT INTO public.moon VALUES (17, 'Europe', 120, 220, 210.53, 'filled for human', true, 1, true);
INSERT INTO public.moon VALUES (18, 'Europe', 120, 220, 210.53, 'great of sun sister', true, 1, true);
INSERT INTO public.moon VALUES (19, 'Europe', 120, 220, 210.53, 'smaller moon', true, 1, true);
INSERT INTO public.moon VALUES (20, 'Europe', 120, 220, 210.53, 'red moon', true, 1, true);


--
-- Data for Name: ocean; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ocean VALUES (1, 'atlantic', 1000, 25, 'blue', true, true);
INSERT INTO public.ocean VALUES (2, 'atlantic', 1000, 25, 'green', true, true);
INSERT INTO public.ocean VALUES (3, 'atlantic', 1000, 25, 'red', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'andromeda', 120, 220, 210.53, 'yellow', true, 1, true);
INSERT INTO public.planet VALUES (2, 'andromeda', 120, 220, 210.53, 'red', true, 1, true);
INSERT INTO public.planet VALUES (4, 'earth', 120, 220, 210.53, 'blue', true, 1, true);
INSERT INTO public.planet VALUES (5, 'earth', 120, 220, 210.53, 'silver', true, 1, true);
INSERT INTO public.planet VALUES (6, 'earth', 120, 220, 210.53, 'orange', true, 1, true);
INSERT INTO public.planet VALUES (8, 'earth', 120, 220, 210.53, 'green', true, 1, true);
INSERT INTO public.planet VALUES (9, 'earth', 120, 220, 210.53, 'water', true, 1, true);
INSERT INTO public.planet VALUES (10, 'earth', 120, 220, 210.53, 'stone red', true, 1, true);
INSERT INTO public.planet VALUES (11, 'earth', 120, 220, 210.53, 'stone blue', true, 1, true);
INSERT INTO public.planet VALUES (12, 'earth', 120, 220, 210.53, 'stone green', true, 1, true);
INSERT INTO public.planet VALUES (13, 'earth', 120, 220, 210.53, 'gravity zero', true, 1, true);
INSERT INTO public.planet VALUES (14, 'earth', 120, 220, 210.53, 'gravity plus', true, 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'andromeda', 120, 220, 210.53, 'orange', true, 1, true);
INSERT INTO public.star VALUES (2, 'andromeda', 120, 220, 210.53, 'blue', true, 1, true);
INSERT INTO public.star VALUES (3, 'andromeda', 120, 220, 210.53, 'green', true, 1, true);
INSERT INTO public.star VALUES (4, 'andromeda', 120, 220, 210.53, 'red', true, 1, true);
INSERT INTO public.star VALUES (6, 'andromeda', 120, 220, 210.53, 'light', true, 1, true);
INSERT INTO public.star VALUES (7, 'andromeda', 120, 220, 210.53, 'yellow', true, 1, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: ocean_ocean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ocean_ocean_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: ocean ocean_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean
    ADD CONSTRAINT ocean_description_key UNIQUE (description);


--
-- Name: ocean ocean_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ocean
    ADD CONSTRAINT ocean_pkey PRIMARY KEY (ocean_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

