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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (10, 2018, 'Final', 4, 2, 84, 86);
INSERT INTO public.games VALUES (11, 2018, 'Third Place', 2, 0, 88, 90);
INSERT INTO public.games VALUES (12, 2018, 'Semi-Final', 2, 1, 86, 90);
INSERT INTO public.games VALUES (13, 2018, 'Semi-Final', 1, 0, 84, 88);
INSERT INTO public.games VALUES (14, 2018, 'Quarter-Final', 3, 2, 86, 97);
INSERT INTO public.games VALUES (15, 2018, 'Quarter-Final', 2, 0, 90, 100);
INSERT INTO public.games VALUES (16, 2018, 'Quarter-Final', 2, 1, 88, 103);
INSERT INTO public.games VALUES (17, 2018, 'Quarter-Final', 2, 0, 84, 106);
INSERT INTO public.games VALUES (18, 2018, 'Eighth-Final', 2, 1, 90, 109);
INSERT INTO public.games VALUES (19, 2018, 'Eighth-Final', 1, 0, 100, 112);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 3, 2, 88, 115);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 2, 0, 103, 118);
INSERT INTO public.games VALUES (22, 2018, 'Eighth-Final', 2, 1, 86, 121);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 2, 1, 97, 124);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 2, 1, 106, 127);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 4, 3, 84, 130);
INSERT INTO public.games VALUES (26, 2014, 'Final', 1, 0, 132, 130);
INSERT INTO public.games VALUES (27, 2014, 'Third Place', 3, 0, 135, 103);
INSERT INTO public.games VALUES (28, 2014, 'Semi-Final', 1, 0, 130, 135);
INSERT INTO public.games VALUES (29, 2014, 'Semi-Final', 7, 1, 132, 103);
INSERT INTO public.games VALUES (30, 2014, 'Quarter-Final', 1, 0, 135, 143);
INSERT INTO public.games VALUES (31, 2014, 'Quarter-Final', 1, 0, 130, 88);
INSERT INTO public.games VALUES (32, 2014, 'Quarter-Final', 2, 1, 103, 109);
INSERT INTO public.games VALUES (33, 2014, 'Quarter-Final', 1, 0, 132, 84);
INSERT INTO public.games VALUES (34, 2014, 'Eighth-Final', 2, 1, 103, 152);
INSERT INTO public.games VALUES (35, 2014, 'Eighth-Final', 2, 0, 109, 106);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 2, 0, 84, 157);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 2, 1, 132, 160);
INSERT INTO public.games VALUES (38, 2014, 'Eighth-Final', 2, 1, 135, 118);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 2, 1, 143, 165);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 1, 0, 130, 112);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 2, 1, 88, 170);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (84, 'France');
INSERT INTO public.teams VALUES (86, 'Croatia');
INSERT INTO public.teams VALUES (88, 'Belgium');
INSERT INTO public.teams VALUES (90, 'England');
INSERT INTO public.teams VALUES (97, 'Russia');
INSERT INTO public.teams VALUES (100, 'Sweden');
INSERT INTO public.teams VALUES (103, 'Brazil');
INSERT INTO public.teams VALUES (106, 'Uruguay');
INSERT INTO public.teams VALUES (109, 'Colombia');
INSERT INTO public.teams VALUES (112, 'Switzerland');
INSERT INTO public.teams VALUES (115, 'Japan');
INSERT INTO public.teams VALUES (118, 'Mexico');
INSERT INTO public.teams VALUES (121, 'Denmark');
INSERT INTO public.teams VALUES (124, 'Spain');
INSERT INTO public.teams VALUES (127, 'Portugal');
INSERT INTO public.teams VALUES (130, 'Argentina');
INSERT INTO public.teams VALUES (132, 'Germany');
INSERT INTO public.teams VALUES (135, 'Netherlands');
INSERT INTO public.teams VALUES (143, 'Costa Rica');
INSERT INTO public.teams VALUES (152, 'Chile');
INSERT INTO public.teams VALUES (157, 'Nigeria');
INSERT INTO public.teams VALUES (160, 'Algeria');
INSERT INTO public.teams VALUES (165, 'Greece');
INSERT INTO public.teams VALUES (170, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 41, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 171, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

