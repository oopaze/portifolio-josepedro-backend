--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: core_imagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_imagem (
    id bigint NOT NULL,
    foto character varying(100) NOT NULL,
    tipo character varying(20)
);


ALTER TABLE public.core_imagem OWNER TO postgres;

--
-- Name: core_imagem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_imagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_imagem_id_seq OWNER TO postgres;

--
-- Name: core_imagem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_imagem_id_seq OWNED BY public.core_imagem.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: home_carrossel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_carrossel (
    id bigint NOT NULL,
    carrossel_1_id bigint NOT NULL,
    carrossel_2_id bigint,
    carrossel_3_id bigint,
    carrossel_4_id bigint,
    carrossel_5_id bigint
);


ALTER TABLE public.home_carrossel OWNER TO postgres;

--
-- Name: home_carrossel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_carrossel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_carrossel_id_seq OWNER TO postgres;

--
-- Name: home_carrossel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_carrossel_id_seq OWNED BY public.home_carrossel.id;


--
-- Name: home_home; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_home (
    id bigint NOT NULL,
    profile_resumo text NOT NULL,
    carrossel_id bigint NOT NULL,
    contato_image_id bigint NOT NULL,
    profile_foto_id bigint NOT NULL,
    instagram_feels_id bigint NOT NULL,
    frase_img_id bigint
);


ALTER TABLE public.home_home OWNER TO postgres;

--
-- Name: home_home_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_home_id_seq OWNER TO postgres;

--
-- Name: home_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_home_id_seq OWNED BY public.home_home.id;


--
-- Name: home_home_momentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_home_momentos (
    id bigint NOT NULL,
    home_id bigint NOT NULL,
    momento_id bigint NOT NULL
);


ALTER TABLE public.home_home_momentos OWNER TO postgres;

--
-- Name: home_home_momentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_home_momentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_home_momentos_id_seq OWNER TO postgres;

--
-- Name: home_home_momentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_home_momentos_id_seq OWNED BY public.home_home_momentos.id;


--
-- Name: home_home_pacotes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_home_pacotes (
    id bigint NOT NULL,
    home_id bigint NOT NULL,
    pacote_id bigint NOT NULL
);


ALTER TABLE public.home_home_pacotes OWNER TO postgres;

--
-- Name: home_home_pacotes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_home_pacotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_home_pacotes_id_seq OWNER TO postgres;

--
-- Name: home_home_pacotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_home_pacotes_id_seq OWNED BY public.home_home_pacotes.id;


--
-- Name: home_instagramfeel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_instagramfeel (
    id bigint NOT NULL,
    instagram_1_id bigint NOT NULL,
    instagram_2_id bigint NOT NULL,
    instagram_3_id bigint NOT NULL,
    instagram_4_id bigint NOT NULL
);


ALTER TABLE public.home_instagramfeel OWNER TO postgres;

--
-- Name: home_instagramfeel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_instagramfeel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_instagramfeel_id_seq OWNER TO postgres;

--
-- Name: home_instagramfeel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_instagramfeel_id_seq OWNED BY public.home_instagramfeel.id;


--
-- Name: home_momento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_momento (
    id bigint NOT NULL,
    momento_1_id bigint NOT NULL,
    momento_2_id bigint NOT NULL,
    momento_3_id bigint NOT NULL,
    momento_4_id bigint NOT NULL
);


ALTER TABLE public.home_momento OWNER TO postgres;

--
-- Name: home_momento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_momento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_momento_id_seq OWNER TO postgres;

--
-- Name: home_momento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_momento_id_seq OWNED BY public.home_momento.id;


--
-- Name: home_pacote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_pacote (
    id bigint NOT NULL,
    titulo character varying(100) NOT NULL,
    imagem_fundo_id bigint NOT NULL
);


ALTER TABLE public.home_pacote OWNER TO postgres;

--
-- Name: home_pacote_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_pacote_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_pacote_id_seq OWNER TO postgres;

--
-- Name: home_pacote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_pacote_id_seq OWNED BY public.home_pacote.id;


--
-- Name: user_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150),
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL
);


ALTER TABLE public.user_user OWNER TO postgres;

--
-- Name: user_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_user_groups OWNER TO postgres;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_groups_id_seq OWNER TO postgres;

--
-- Name: user_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_groups_id_seq OWNED BY public.user_user_groups.id;


--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_id_seq OWNED BY public.user_user.id;


--
-- Name: user_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_user_permissions OWNER TO postgres;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_user_permissions_id_seq OWNED BY public.user_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: core_imagem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_imagem ALTER COLUMN id SET DEFAULT nextval('public.core_imagem_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_carrossel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel ALTER COLUMN id SET DEFAULT nextval('public.home_carrossel_id_seq'::regclass);


--
-- Name: home_home id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home ALTER COLUMN id SET DEFAULT nextval('public.home_home_id_seq'::regclass);


--
-- Name: home_home_momentos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_momentos ALTER COLUMN id SET DEFAULT nextval('public.home_home_momentos_id_seq'::regclass);


--
-- Name: home_home_pacotes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_pacotes ALTER COLUMN id SET DEFAULT nextval('public.home_home_pacotes_id_seq'::regclass);


--
-- Name: home_instagramfeel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_instagramfeel ALTER COLUMN id SET DEFAULT nextval('public.home_instagramfeel_id_seq'::regclass);


--
-- Name: home_momento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_momento ALTER COLUMN id SET DEFAULT nextval('public.home_momento_id_seq'::regclass);


--
-- Name: home_pacote id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pacote ALTER COLUMN id SET DEFAULT nextval('public.home_pacote_id_seq'::regclass);


--
-- Name: user_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user ALTER COLUMN id SET DEFAULT nextval('public.user_user_id_seq'::regclass);


--
-- Name: user_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_user_groups_id_seq'::regclass);


--
-- Name: user_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add carrossel	7	add_carrossel
26	Can change carrossel	7	change_carrossel
27	Can delete carrossel	7	delete_carrossel
28	Can view carrossel	7	view_carrossel
29	Can add pacote	8	add_pacote
30	Can change pacote	8	change_pacote
31	Can delete pacote	8	delete_pacote
32	Can view pacote	8	view_pacote
33	Can add momento	9	add_momento
34	Can change momento	9	change_momento
35	Can delete momento	9	delete_momento
36	Can view momento	9	view_momento
37	Can add home	10	add_home
38	Can change home	10	change_home
39	Can delete home	10	delete_home
40	Can view home	10	view_home
41	Can add instagram feel	11	add_instagramfeel
42	Can change instagram feel	11	change_instagramfeel
43	Can delete instagram feel	11	delete_instagramfeel
44	Can view instagram feel	11	view_instagramfeel
45	Can add imagem	12	add_imagem
46	Can change imagem	12	change_imagem
47	Can delete imagem	12	delete_imagem
48	Can view imagem	12	view_imagem
\.


--
-- Data for Name: core_imagem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_imagem (id, foto, tipo) FROM stdin;
2	imagens/default_carrossel_1.jpg	\N
3	imagens/default_carrossel_2.jpg	\N
4	imagens/default_carrossel_3.jpg	\N
5	imagens/default_carrossel_4.jpg	\N
6	imagens/default_carrossel_5.jpg	\N
7	imagens/default_momento_1.jpg	\N
8	imagens/default_momento_2.jpg	\N
9	imagens/default_momento_3.jpg	\N
10	imagens/default_momento_4.jpg	\N
17	imagens/profile.jpg	\N
19	imagens/default_frase.png	\N
14	imagens/default_casamento.png	\N
15	imagens/default_estudio.png	\N
16	imagens/default_gestante.png	\N
1	imagens/IMG_6992_1.png	\N
11	imagens/default_instagram_1.png	\N
12	imagens/default_instagram_2.png	\N
13	imagens/default_instagram_4.png	\N
18	imagens/default_instagram_3_Q6jk1fM.png	\N
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-11-02 17:05:26.551683-03	1	contato.jpg	1	[{"added": {}}]	12	1
2	2021-11-02 17:05:43.576513-03	2	default_carrossel_1.jpg	1	[{"added": {}}]	12	1
3	2021-11-02 17:05:47.269318-03	3	default_carrossel_2.jpg	1	[{"added": {}}]	12	1
4	2021-11-02 17:05:54.300986-03	4	default_carrossel_3.jpg	1	[{"added": {}}]	12	1
5	2021-11-02 17:05:57.324788-03	5	default_carrossel_4.jpg	1	[{"added": {}}]	12	1
6	2021-11-02 17:06:00.612771-03	6	default_carrossel_5.jpg	1	[{"added": {}}]	12	1
7	2021-11-02 17:06:04.22443-03	7	default_momento_1.jpg	1	[{"added": {}}]	12	1
8	2021-11-02 17:06:07.491788-03	8	default_momento_2.jpg	1	[{"added": {}}]	12	1
9	2021-11-02 17:06:10.87916-03	9	default_momento_3.jpg	1	[{"added": {}}]	12	1
10	2021-11-02 17:06:13.763006-03	10	default_momento_4.jpg	1	[{"added": {}}]	12	1
11	2021-11-02 17:06:17.147001-03	11	instagram_1.jpg	1	[{"added": {}}]	12	1
12	2021-11-02 17:06:21.376103-03	12	instagram_2.jpg	1	[{"added": {}}]	12	1
13	2021-11-02 17:06:24.096154-03	13	instagram_4.jpg	1	[{"added": {}}]	12	1
14	2021-11-02 17:06:27.141593-03	14	pacote_casamento.jpg	1	[{"added": {}}]	12	1
15	2021-11-02 17:06:30.356493-03	15	pacote_estudio.jpg	1	[{"added": {}}]	12	1
16	2021-11-02 17:06:33.059695-03	16	pacote_gestante.jpg	1	[{"added": {}}]	12	1
17	2021-11-02 17:06:40.114393-03	17	profile.jpg	1	[{"added": {}}]	12	1
18	2021-11-02 17:07:24.216224-03	1	Carrossel 1	1	[{"added": {}}]	7	1
19	2021-11-02 17:07:52.948076-03	18	instagram_3.jpg	1	[{"added": {}}]	12	1
20	2021-11-02 17:08:04.034599-03	1	InstagramFeel object (1)	1	[{"added": {}}]	11	1
21	2021-11-02 17:08:16.687801-03	1	Momento 1	1	[{"added": {}}]	9	1
22	2021-11-02 17:08:35.67459-03	1	Pacote Estúdio	1	[{"added": {}}]	8	1
23	2021-11-02 17:08:44.725395-03	2	Pacote Casamento	1	[{"added": {}}]	8	1
24	2021-11-02 17:08:49.984502-03	1	Pacote Estúdio	2	[{"changed": {"fields": ["Imagem fundo"]}}]	8	1
25	2021-11-02 17:08:57.842203-03	3	Pacote Gestante	1	[{"added": {}}]	8	1
26	2021-11-02 17:09:55.573097-03	1	Home object (1)	1	[{"added": {}}]	10	1
27	2021-11-02 20:05:41.702528-03	19	default_frase.png	1	[{"added": {}}]	12	1
28	2021-11-02 20:15:08.77104-03	1	Home object (1)	2	[{"changed": {"fields": ["Frase img"]}}]	10	1
29	2021-11-02 23:10:45.316873-03	14	default_casamento.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
30	2021-11-02 23:10:53.883788-03	15	default_estudio.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
31	2021-11-02 23:10:59.534194-03	16	default_gestante.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
32	2021-11-03 00:20:53.138165-03	1	IMG_6992_1.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
33	2021-11-03 01:39:38.468413-03	11	default_instagram_1.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
34	2021-11-03 01:39:46.192995-03	12	default_instagram_2.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
35	2021-11-03 01:39:56.650254-03	18	default_instagram_3.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
36	2021-11-03 01:40:06.087097-03	13	default_instagram_4.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
37	2021-11-03 01:40:52.693034-03	18	default_instagram_3_Q6jk1fM.png	2	[{"changed": {"fields": ["Foto"]}}]	12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	user	user
7	home	carrossel
8	home	pacote
9	home	momento
10	home	home
11	home	instagramfeel
12	core	imagem
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-11-02 16:56:54.671598-03
2	contenttypes	0002_remove_content_type_name	2021-11-02 16:56:54.682154-03
3	auth	0001_initial	2021-11-02 16:56:54.741482-03
4	auth	0002_alter_permission_name_max_length	2021-11-02 16:56:54.751772-03
5	auth	0003_alter_user_email_max_length	2021-11-02 16:56:54.762201-03
6	auth	0004_alter_user_username_opts	2021-11-02 16:56:54.773071-03
7	auth	0005_alter_user_last_login_null	2021-11-02 16:56:54.782871-03
8	auth	0006_require_contenttypes_0002	2021-11-02 16:56:54.786825-03
9	auth	0007_alter_validators_add_error_messages	2021-11-02 16:56:54.797607-03
10	auth	0008_alter_user_username_max_length	2021-11-02 16:56:54.808804-03
11	auth	0009_alter_user_last_name_max_length	2021-11-02 16:56:54.823931-03
12	auth	0010_alter_group_name_max_length	2021-11-02 16:56:54.834832-03
13	auth	0011_update_proxy_permissions	2021-11-02 16:56:54.843223-03
14	auth	0012_alter_user_first_name_max_length	2021-11-02 16:56:54.851066-03
15	user	0001_initial	2021-11-02 16:56:54.898977-03
16	admin	0001_initial	2021-11-02 16:56:54.928065-03
17	admin	0002_logentry_remove_auto_add	2021-11-02 16:56:54.942873-03
18	admin	0003_logentry_add_action_flag_choices	2021-11-02 16:56:54.956202-03
19	core	0001_initial	2021-11-02 16:56:54.963628-03
20	core	0002_alter_imagem_foto	2021-11-02 16:56:54.969433-03
21	home	0001_initial	2021-11-02 16:56:55.091169-03
22	home	0002_auto_20211023_1811	2021-11-02 16:56:55.315133-03
23	home	0003_alter_home_instagram_feels	2021-11-02 16:56:55.33423-03
24	sessions	0001_initial	2021-11-02 16:56:55.350071-03
25	user	0002_alter_user_username	2021-11-02 16:56:55.364591-03
26	core	0003_imagem_tipo	2021-11-02 20:14:43.51605-03
27	home	0004_home_frase_img	2021-11-02 20:14:43.539339-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
r5fotvssq8hml66z8wwlvjf1orxjvcwu	.eJxVjEEOgjAQRe_StWk6Qhnq0j1nINPOjEVNSSisjHdXEha6_e-9_zIjbWsetyrLOLG5GDCn3y1SekjZAd-p3Gab5rIuU7S7Yg9a7TCzPK-H-3eQqeZvLa7tVZGEIjdBAkDoKDGjomDXACiQgvaux3R2SggiKURqpPXoPZv3BwzqOM8:1mhzzA:juFzyU9b8RxgSm1NO4BvHmjYgZAKxNbop9IFFq3ceNo	2021-11-16 17:02:20.840671-03
\.


--
-- Data for Name: home_carrossel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_carrossel (id, carrossel_1_id, carrossel_2_id, carrossel_3_id, carrossel_4_id, carrossel_5_id) FROM stdin;
1	2	3	4	5	6
\.


--
-- Data for Name: home_home; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_home (id, profile_resumo, carrossel_id, contato_image_id, profile_foto_id, instagram_feels_id, frase_img_id) FROM stdin;
1	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.	1	1	17	1	19
\.


--
-- Data for Name: home_home_momentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_home_momentos (id, home_id, momento_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: home_home_pacotes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_home_pacotes (id, home_id, pacote_id) FROM stdin;
1	1	1
2	1	2
3	1	3
\.


--
-- Data for Name: home_instagramfeel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_instagramfeel (id, instagram_1_id, instagram_2_id, instagram_3_id, instagram_4_id) FROM stdin;
1	11	12	18	13
\.


--
-- Data for Name: home_momento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_momento (id, momento_1_id, momento_2_id, momento_3_id, momento_4_id) FROM stdin;
1	7	8	9	10
\.


--
-- Data for Name: home_pacote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_pacote (id, titulo, imagem_fundo_id) FROM stdin;
2	Casamento	14
1	Estúdio	15
3	Gestante	16
\.


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, email) FROM stdin;
1	pbkdf2_sha256$260000$Ehoi3mBy3GJ31DGCUzhlNM$jNueDxN3o81EbkPVIzYwBzSSzqkxodRYsoBXk9/ClNU=	2021-11-02 17:02:20.836763-03	t	oopaze	José	Pedro	t	t	2021-11-02 17:02:07.385879-03	oopaze@oopaze.com
\.


--
-- Data for Name: user_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: user_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: core_imagem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_imagem_id_seq', 19, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 37, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: home_carrossel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_carrossel_id_seq', 1, true);


--
-- Name: home_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_home_id_seq', 1, true);


--
-- Name: home_home_momentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_home_momentos_id_seq', 1, true);


--
-- Name: home_home_pacotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_home_pacotes_id_seq', 3, true);


--
-- Name: home_instagramfeel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_instagramfeel_id_seq', 1, true);


--
-- Name: home_momento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_momento_id_seq', 1, true);


--
-- Name: home_pacote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_pacote_id_seq', 3, true);


--
-- Name: user_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_groups_id_seq', 1, false);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);


--
-- Name: user_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: core_imagem core_imagem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_imagem
    ADD CONSTRAINT core_imagem_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_carrossel home_carrossel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel
    ADD CONSTRAINT home_carrossel_pkey PRIMARY KEY (id);


--
-- Name: home_home_momentos home_home_momentos_home_id_momento_id_0b8e0150_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_momentos
    ADD CONSTRAINT home_home_momentos_home_id_momento_id_0b8e0150_uniq UNIQUE (home_id, momento_id);


--
-- Name: home_home_momentos home_home_momentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_momentos
    ADD CONSTRAINT home_home_momentos_pkey PRIMARY KEY (id);


--
-- Name: home_home_pacotes home_home_pacotes_home_id_pacote_id_835f3a61_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_pacotes
    ADD CONSTRAINT home_home_pacotes_home_id_pacote_id_835f3a61_uniq UNIQUE (home_id, pacote_id);


--
-- Name: home_home_pacotes home_home_pacotes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_pacotes
    ADD CONSTRAINT home_home_pacotes_pkey PRIMARY KEY (id);


--
-- Name: home_home home_home_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_pkey PRIMARY KEY (id);


--
-- Name: home_instagramfeel home_instagramfeel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_instagramfeel
    ADD CONSTRAINT home_instagramfeel_pkey PRIMARY KEY (id);


--
-- Name: home_momento home_momento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_momento
    ADD CONSTRAINT home_momento_pkey PRIMARY KEY (id);


--
-- Name: home_pacote home_pacote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pacote
    ADD CONSTRAINT home_pacote_pkey PRIMARY KEY (id);


--
-- Name: user_user user_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_email_key UNIQUE (email);


--
-- Name: user_user_groups user_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_pkey PRIMARY KEY (id);


--
-- Name: user_user_groups user_user_groups_user_id_group_id_bb60391f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_group_id_bb60391f_uniq UNIQUE (user_id, group_id);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_carrossel_carrossel_1_id_45f93ef9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_carrossel_carrossel_1_id_45f93ef9 ON public.home_carrossel USING btree (carrossel_1_id);


--
-- Name: home_carrossel_carrossel_2_id_b342e3b1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_carrossel_carrossel_2_id_b342e3b1 ON public.home_carrossel USING btree (carrossel_2_id);


--
-- Name: home_carrossel_carrossel_3_id_6590a711; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_carrossel_carrossel_3_id_6590a711 ON public.home_carrossel USING btree (carrossel_3_id);


--
-- Name: home_carrossel_carrossel_4_id_3507a5b6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_carrossel_carrossel_4_id_3507a5b6 ON public.home_carrossel USING btree (carrossel_4_id);


--
-- Name: home_carrossel_carrossel_5_id_7321dffd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_carrossel_carrossel_5_id_7321dffd ON public.home_carrossel USING btree (carrossel_5_id);


--
-- Name: home_home_carrossel_id_fa636080; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_carrossel_id_fa636080 ON public.home_home USING btree (carrossel_id);


--
-- Name: home_home_contato_image_id_2fd84d94; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_contato_image_id_2fd84d94 ON public.home_home USING btree (contato_image_id);


--
-- Name: home_home_frase_img_id_e60c73cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_frase_img_id_e60c73cc ON public.home_home USING btree (frase_img_id);


--
-- Name: home_home_instagram_feels_id_cd3c8267; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_instagram_feels_id_cd3c8267 ON public.home_home USING btree (instagram_feels_id);


--
-- Name: home_home_momentos_home_id_3e085da0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_momentos_home_id_3e085da0 ON public.home_home_momentos USING btree (home_id);


--
-- Name: home_home_momentos_momento_id_c1f49c93; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_momentos_momento_id_c1f49c93 ON public.home_home_momentos USING btree (momento_id);


--
-- Name: home_home_pacotes_home_id_9aa9b601; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_pacotes_home_id_9aa9b601 ON public.home_home_pacotes USING btree (home_id);


--
-- Name: home_home_pacotes_pacote_id_0d903d65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_pacotes_pacote_id_0d903d65 ON public.home_home_pacotes USING btree (pacote_id);


--
-- Name: home_home_profile_foto_id_05f6a92a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_home_profile_foto_id_05f6a92a ON public.home_home USING btree (profile_foto_id);


--
-- Name: home_instagramfeel_instagram_1_id_e59efddc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_instagramfeel_instagram_1_id_e59efddc ON public.home_instagramfeel USING btree (instagram_1_id);


--
-- Name: home_instagramfeel_instagram_2_id_49c1555e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_instagramfeel_instagram_2_id_49c1555e ON public.home_instagramfeel USING btree (instagram_2_id);


--
-- Name: home_instagramfeel_instagram_3_id_2d0cd6c7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_instagramfeel_instagram_3_id_2d0cd6c7 ON public.home_instagramfeel USING btree (instagram_3_id);


--
-- Name: home_instagramfeel_instagram_4_id_942b1cfe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_instagramfeel_instagram_4_id_942b1cfe ON public.home_instagramfeel USING btree (instagram_4_id);


--
-- Name: home_momento_momento_1_id_27b0ce75; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_momento_momento_1_id_27b0ce75 ON public.home_momento USING btree (momento_1_id);


--
-- Name: home_momento_momento_2_id_c4d45492; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_momento_momento_2_id_c4d45492 ON public.home_momento USING btree (momento_2_id);


--
-- Name: home_momento_momento_3_id_6ada5d6d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_momento_momento_3_id_6ada5d6d ON public.home_momento USING btree (momento_3_id);


--
-- Name: home_momento_momento_4_id_128d5ac2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_momento_momento_4_id_128d5ac2 ON public.home_momento USING btree (momento_4_id);


--
-- Name: home_pacote_imagem_fundo_id_db0d3671; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_pacote_imagem_fundo_id_db0d3671 ON public.home_pacote USING btree (imagem_fundo_id);


--
-- Name: user_user_email_1c6f3d1a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_email_1c6f3d1a_like ON public.user_user USING btree (email varchar_pattern_ops);


--
-- Name: user_user_groups_group_id_c57f13c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_groups_group_id_c57f13c0 ON public.user_user_groups USING btree (group_id);


--
-- Name: user_user_groups_user_id_13f9a20d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_groups_user_id_13f9a20d ON public.user_user_groups USING btree (user_id);


--
-- Name: user_user_user_permissions_permission_id_ce49d4de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_user_permissions_permission_id_ce49d4de ON public.user_user_user_permissions USING btree (permission_id);


--
-- Name: user_user_user_permissions_user_id_31782f58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_user_permissions_user_id_31782f58 ON public.user_user_user_permissions USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_carrossel home_carrossel_carrossel_1_id_45f93ef9_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel
    ADD CONSTRAINT home_carrossel_carrossel_1_id_45f93ef9_fk_core_imagem_id FOREIGN KEY (carrossel_1_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_carrossel home_carrossel_carrossel_2_id_b342e3b1_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel
    ADD CONSTRAINT home_carrossel_carrossel_2_id_b342e3b1_fk_core_imagem_id FOREIGN KEY (carrossel_2_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_carrossel home_carrossel_carrossel_3_id_6590a711_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel
    ADD CONSTRAINT home_carrossel_carrossel_3_id_6590a711_fk_core_imagem_id FOREIGN KEY (carrossel_3_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_carrossel home_carrossel_carrossel_4_id_3507a5b6_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel
    ADD CONSTRAINT home_carrossel_carrossel_4_id_3507a5b6_fk_core_imagem_id FOREIGN KEY (carrossel_4_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_carrossel home_carrossel_carrossel_5_id_7321dffd_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_carrossel
    ADD CONSTRAINT home_carrossel_carrossel_5_id_7321dffd_fk_core_imagem_id FOREIGN KEY (carrossel_5_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home home_home_carrossel_id_fa636080_fk_home_carrossel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_carrossel_id_fa636080_fk_home_carrossel_id FOREIGN KEY (carrossel_id) REFERENCES public.home_carrossel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home home_home_contato_image_id_2fd84d94_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_contato_image_id_2fd84d94_fk_core_imagem_id FOREIGN KEY (contato_image_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home home_home_frase_img_id_e60c73cc_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_frase_img_id_e60c73cc_fk_core_imagem_id FOREIGN KEY (frase_img_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home home_home_instagram_feels_id_cd3c8267_fk_home_instagramfeel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_instagram_feels_id_cd3c8267_fk_home_instagramfeel_id FOREIGN KEY (instagram_feels_id) REFERENCES public.home_instagramfeel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home_momentos home_home_momentos_home_id_3e085da0_fk_home_home_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_momentos
    ADD CONSTRAINT home_home_momentos_home_id_3e085da0_fk_home_home_id FOREIGN KEY (home_id) REFERENCES public.home_home(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home_momentos home_home_momentos_momento_id_c1f49c93_fk_home_momento_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_momentos
    ADD CONSTRAINT home_home_momentos_momento_id_c1f49c93_fk_home_momento_id FOREIGN KEY (momento_id) REFERENCES public.home_momento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home_pacotes home_home_pacotes_home_id_9aa9b601_fk_home_home_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_pacotes
    ADD CONSTRAINT home_home_pacotes_home_id_9aa9b601_fk_home_home_id FOREIGN KEY (home_id) REFERENCES public.home_home(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home_pacotes home_home_pacotes_pacote_id_0d903d65_fk_home_pacote_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home_pacotes
    ADD CONSTRAINT home_home_pacotes_pacote_id_0d903d65_fk_home_pacote_id FOREIGN KEY (pacote_id) REFERENCES public.home_pacote(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_home home_home_profile_foto_id_05f6a92a_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_home
    ADD CONSTRAINT home_home_profile_foto_id_05f6a92a_fk_core_imagem_id FOREIGN KEY (profile_foto_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_instagramfeel home_instagramfeel_instagram_1_id_e59efddc_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_instagramfeel
    ADD CONSTRAINT home_instagramfeel_instagram_1_id_e59efddc_fk_core_imagem_id FOREIGN KEY (instagram_1_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_instagramfeel home_instagramfeel_instagram_2_id_49c1555e_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_instagramfeel
    ADD CONSTRAINT home_instagramfeel_instagram_2_id_49c1555e_fk_core_imagem_id FOREIGN KEY (instagram_2_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_instagramfeel home_instagramfeel_instagram_3_id_2d0cd6c7_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_instagramfeel
    ADD CONSTRAINT home_instagramfeel_instagram_3_id_2d0cd6c7_fk_core_imagem_id FOREIGN KEY (instagram_3_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_instagramfeel home_instagramfeel_instagram_4_id_942b1cfe_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_instagramfeel
    ADD CONSTRAINT home_instagramfeel_instagram_4_id_942b1cfe_fk_core_imagem_id FOREIGN KEY (instagram_4_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_momento home_momento_momento_1_id_27b0ce75_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_momento
    ADD CONSTRAINT home_momento_momento_1_id_27b0ce75_fk_core_imagem_id FOREIGN KEY (momento_1_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_momento home_momento_momento_2_id_c4d45492_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_momento
    ADD CONSTRAINT home_momento_momento_2_id_c4d45492_fk_core_imagem_id FOREIGN KEY (momento_2_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_momento home_momento_momento_3_id_6ada5d6d_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_momento
    ADD CONSTRAINT home_momento_momento_3_id_6ada5d6d_fk_core_imagem_id FOREIGN KEY (momento_3_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_momento home_momento_momento_4_id_128d5ac2_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_momento
    ADD CONSTRAINT home_momento_momento_4_id_128d5ac2_fk_core_imagem_id FOREIGN KEY (momento_4_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_pacote home_pacote_imagem_fundo_id_db0d3671_fk_core_imagem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_pacote
    ADD CONSTRAINT home_pacote_imagem_fundo_id_db0d3671_fk_core_imagem_id FOREIGN KEY (imagem_fundo_id) REFERENCES public.core_imagem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_group_id_c57f13c0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_group_id_c57f13c0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_groups user_user_groups_user_id_13f9a20d_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_groups
    ADD CONSTRAINT user_user_groups_user_id_13f9a20d_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permi_permission_id_ce49d4de_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permi_permission_id_ce49d4de_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_user_permissions user_user_user_permissions_user_id_31782f58_fk_user_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_user_permissions
    ADD CONSTRAINT user_user_user_permissions_user_id_31782f58_fk_user_user_id FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

