--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types numeric,
    distance_from_earth integer
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
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    has_life boolean,
    planet_id integer
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_types numeric,
    name character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'comet1', 1);
INSERT INTO public.comet VALUES (2, 'comet2', 2);
INSERT INTO public.comet VALUES (3, 'comet3', 3);
INSERT INTO public.comet VALUES (4, 'comet4', 4);
INSERT INTO public.comet VALUES (5, 'comet5', 5);
INSERT INTO public.comet VALUES (6, 'comet6', 6);
INSERT INTO public.comet VALUES (7, 'comet7', 7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', ' its mw', true, false, 5, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'pilky way', 'its me', true, false, 6, 2, 30);
INSERT INTO public.galaxy VALUES (3, 'silky way', 'its me', true, false, 6, 2, 40);
INSERT INTO public.galaxy VALUES (4, 'ailky way', 'hi', true, true, 7, 3, 50);
INSERT INTO public.galaxy VALUES (5, 'bilky way', 'hello', false, true, 56, 45, 2);
INSERT INTO public.galaxy VALUES (6, 'cilky way', 'darling', false, true, 56, 78, 4);
INSERT INTO public.galaxy VALUES (7, 'dilky way', 'marling', true, false, 4, 5, 6);
INSERT INTO public.galaxy VALUES (9, 'iilky way', 'its me', true, false, 6, 2, 40);
INSERT INTO public.galaxy VALUES (10, 'hilky way', 'hi', true, true, 7, 3, 50);
INSERT INTO public.galaxy VALUES (11, 'gilky way', 'hello', false, true, 56, 45, 2);
INSERT INTO public.galaxy VALUES (12, 'filky way', 'farling', false, true, 56, 78, 4);
INSERT INTO public.galaxy VALUES (13, 'eilky way', 'marling', true, false, 4, 5, 6);
INSERT INTO public.galaxy VALUES (14, 'oilky way', 'its me', true, false, 6, 2, 40);
INSERT INTO public.galaxy VALUES (15, 'nilky way', 'hi', true, true, 7, 3, 50);
INSERT INTO public.galaxy VALUES (16, 'lilky way', 'hello', false, true, 56, 45, 2);
INSERT INTO public.galaxy VALUES (17, 'kilky way', 'farling', false, true, 56, 78, 4);
INSERT INTO public.galaxy VALUES (18, 'jilky way', 'marling', true, false, 4, 5, 6);
INSERT INTO public.galaxy VALUES (19, 'ulky way', 'its me', true, false, 6, 2, 40);
INSERT INTO public.galaxy VALUES (20, 'nilty way', 'hi', true, true, 7, 3, 50);
INSERT INTO public.galaxy VALUES (21, 'liy way', 'hello', false, true, 56, 45, 2);
INSERT INTO public.galaxy VALUES (22, 'rilky way', 'farling', false, true, 56, 78, 4);
INSERT INTO public.galaxy VALUES (23, 'qilky way', 'marling', true, false, 4, 5, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 3, true, false, 1);
INSERT INTO public.moon VALUES (8, 'moon2', 2, 4, true, false, 8);
INSERT INTO public.moon VALUES (10, 'moon10', 1, 3, true, false, 10);
INSERT INTO public.moon VALUES (9, 'moon9', 2, 4, true, false, 9);
INSERT INTO public.moon VALUES (11, 'moon11', 2, 4, false, true, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 3, 5, true, false, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 3, 5, true, false, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 6, 7, true, false, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 3, 6, true, true, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 3, 7, false, false, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 45, 78, true, false, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 34, 23, false, true, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 23, 4, true, false, 19);
INSERT INTO public.moon VALUES (22, 'moon22', 34, 56, true, false, 22);
INSERT INTO public.moon VALUES (21, 'moon21', 34, 67, true, false, 21);
INSERT INTO public.moon VALUES (23, 'moon23', 45, 78, true, false, 23);
INSERT INTO public.moon VALUES (24, 'moon24', 34, 23, false, true, 24);
INSERT INTO public.moon VALUES (25, 'moon25', 23, 4, true, false, 25);
INSERT INTO public.moon VALUES (26, 'moon26', 34, 56, true, false, 26);
INSERT INTO public.moon VALUES (27, 'moon27', 34, 67, true, false, 27);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (8, true, false, 12, 2, 3, 'planet8', 8);
INSERT INTO public.planet VALUES (9, false, false, 23, 23, 45, 'planet9', 9);
INSERT INTO public.planet VALUES (10, true, false, 23, 56, 34, 'planet10', 10);
INSERT INTO public.planet VALUES (14, true, false, 30, 2, 12, 'planet14', 14);
INSERT INTO public.planet VALUES (13, true, false, 12, 2, 3, 'planet13', 13);
INSERT INTO public.planet VALUES (12, false, false, 23, 23, 45, 'planet12', 12);
INSERT INTO public.planet VALUES (11, true, false, 23, 56, 34, 'planet11', 11);
INSERT INTO public.planet VALUES (18, true, false, 30, 2, 12, 'planet18', 18);
INSERT INTO public.planet VALUES (17, true, false, 12, 2, 3, 'planet17', 17);
INSERT INTO public.planet VALUES (16, false, false, 23, 23, 45, 'planet16', 16);
INSERT INTO public.planet VALUES (15, true, false, 23, 56, 34, 'planet15', 15);
INSERT INTO public.planet VALUES (19, true, false, 30, 2, 12, 'planet19', 19);
INSERT INTO public.planet VALUES (21, true, false, 12, 4, 3, 'planet21', 21);
INSERT INTO public.planet VALUES (24, true, false, 30, 2, 12, 'planet24', 24);
INSERT INTO public.planet VALUES (23, true, false, 12, 2, 3, 'planet23', 23);
INSERT INTO public.planet VALUES (22, false, false, 23, 23, 45, 'planet22', 22);
INSERT INTO public.planet VALUES (1, true, false, 23, 56, 34, 'planet1', 1);
INSERT INTO public.planet VALUES (27, true, false, 12, 2, 3, 'planet27', 27);
INSERT INTO public.planet VALUES (26, false, false, 23, 23, 45, 'planet26', 26);
INSERT INTO public.planet VALUES (25, true, false, 23, 56, 34, 'planet25', 25);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'stars', 30, 20, 1);
INSERT INTO public.star VALUES (8, 'star2', 'maalathi', 40, 30, 2);
INSERT INTO public.star VALUES (9, 'star3', 'kavya', 50, 40, 3);
INSERT INTO public.star VALUES (10, 'star4', 'swarnaramana', 60, 50, 4);
INSERT INTO public.star VALUES (11, 'star5', 'ram', 67, 23, 5);
INSERT INTO public.star VALUES (12, 'star6', 'sam', 56, 34, 2);
INSERT INTO public.star VALUES (13, 'star7', 'maalathi', 40, 30, 2);
INSERT INTO public.star VALUES (14, 'star8', 'kavya', 50, 40, 3);
INSERT INTO public.star VALUES (15, 'star9', 'swarnaramana', 60, 50, 4);
INSERT INTO public.star VALUES (16, 'star10', 'ram', 67, 23, 5);
INSERT INTO public.star VALUES (17, 'star11', 'sam', 56, 34, 2);
INSERT INTO public.star VALUES (18, 'star16', 'maalathi', 40, 30, 16);
INSERT INTO public.star VALUES (19, 'star15', 'kavya', 50, 40, 15);
INSERT INTO public.star VALUES (20, 'star14', 'swarnaramana', 60, 50, 14);
INSERT INTO public.star VALUES (21, 'star13', 'ram', 67, 23, 13);
INSERT INTO public.star VALUES (22, 'star12', 'sam', 56, 34, 12);
INSERT INTO public.star VALUES (23, 'star19', 'maalathi', 40, 30, 19);
INSERT INTO public.star VALUES (24, 'star18', 'kavya', 50, 40, 18);
INSERT INTO public.star VALUES (25, 'star17', 'swarnaramana', 60, 50, 17);
INSERT INTO public.star VALUES (26, 'star20', 'ram', 67, 23, 20);
INSERT INTO public.star VALUES (27, 'star21', 'sam', 56, 34, 21);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 23, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 2, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 27, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- PostgreSQL database dump completed.
--

