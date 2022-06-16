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
-- Name: extras; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extras (
    extras_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer,
    planet_id integer,
    name character varying(40) DEFAULT 'hi'::character varying NOT NULL
);


ALTER TABLE public.extras OWNER TO freecodecamp;

--
-- Name: extras_extras_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extras_extras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extras_extras_id_seq OWNER TO freecodecamp;

--
-- Name: extras_extras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extras_extras_id_seq OWNED BY public.extras.extras_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_size integer,
    galaxy_height integer,
    hi integer
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
    name character varying(40) NOT NULL,
    planet_id integer,
    hii integer,
    hiii integer,
    hiiii integer
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
    moon_count numeric,
    nickname text,
    alive boolean,
    star_id integer
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
    name character varying(40) NOT NULL,
    light boolean,
    galaxy_id integer,
    hi integer
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
-- Name: extras extras_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras ALTER COLUMN extras_id SET DEFAULT nextval('public.extras_extras_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extras; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extras VALUES (1, 1, 2, 3, 'hi');
INSERT INTO public.extras VALUES (2, 2, 3, 4, 'hi');
INSERT INTO public.extras VALUES (3, 3, 4, 5, 'hi');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'horizon', 12, 45, NULL);
INSERT INTO public.galaxy VALUES (2, 'veritas', 23, 23, NULL);
INSERT INTO public.galaxy VALUES (3, 'iavo', 46, 78, NULL);
INSERT INTO public.galaxy VALUES (4, 'yeros', 22, 43, NULL);
INSERT INTO public.galaxy VALUES (5, 'eurodit', 66, 89, NULL);
INSERT INTO public.galaxy VALUES (6, 'lorita', 43, 12, NULL);
INSERT INTO public.galaxy VALUES (7, 'olar', 90, 56, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'genesis', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'exodus', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'leviticus', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'deuteronomy', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'judges', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'joshua', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, '1 Samuel', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, '2 Samuel', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, '1 Kings', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, '2 Kings', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, '1 Chronicles', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, '2 Chronicles', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Ezra', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Nehemiah', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Esther', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Job', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Matthew', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Mark', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Luke', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'John', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Acts', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Romans', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Galatians', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, '1 Chorinthians', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, '2 Chorinthians', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Phillipians', 1, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'genesis', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'exodus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'leviticus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'deuteronomy', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'judges', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'joshua', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'love', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'joy', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'peace', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'faithfulness', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'self control', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'hope', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'menlo', true, 1, NULL);
INSERT INTO public.star VALUES (2, 'osogbo', false, 2, NULL);
INSERT INTO public.star VALUES (3, 'ede', true, 3, NULL);
INSERT INTO public.star VALUES (4, 'iwo', true, 4, NULL);
INSERT INTO public.star VALUES (5, 'ejigbo', true, 5, NULL);
INSERT INTO public.star VALUES (6, 'lagos', false, 6, NULL);


--
-- Name: extras_extras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extras_extras_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extras extras_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (extras_id);


--
-- Name: extras extras_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


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

