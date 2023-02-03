--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-02-03 09:59:47

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

DROP DATABASE cd01;
--
-- TOC entry 3185 (class 1262 OID 16385)
-- Name: cd01; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cd01 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect cd01

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

--
-- TOC entry 8 (class 2615 OID 68666)
-- Name: ejemplo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ejemplo;


--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 220 (class 1259 OID 68667)
-- Name: candidate; Type: TABLE; Schema: ejemplo; Owner: -
--

CREATE TABLE ejemplo.candidate (
    id bigint,
    name character varying(20)
);


--
-- TOC entry 219 (class 1259 OID 19063)
-- Name: comentario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comentario (
    comentario_id integer NOT NULL,
    contenido_id integer,
    usuario_id integer,
    descripcion character varying(500) NOT NULL,
    fecha date NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 19061)
-- Name: comentario_comentario_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comentario_comentario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 218
-- Name: comentario_comentario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comentario_comentario_id_seq OWNED BY public.comentario.comentario_id;


--
-- TOC entry 199 (class 1259 OID 17340)
-- Name: contenido; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contenido (
    contenido_id integer NOT NULL,
    contenido_genero_id integer,
    contenido_tipo_contenido_id integer,
    contenido_titulo character varying(100) NOT NULL,
    contenido_sinopsis character varying(500) NOT NULL,
    contenido_duracion integer,
    contenido_puntuacion numeric(4,2) NOT NULL,
    contenido_fecha_estreno date NOT NULL,
    contenido_capitulos integer,
    contenido_foto character varying(255) NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 17338)
-- Name: contenido_contenido_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contenido_contenido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 198
-- Name: contenido_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contenido_contenido_id_seq OWNED BY public.contenido.contenido_id;


--
-- TOC entry 213 (class 1259 OID 18125)
-- Name: contenido_reparto_rol; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contenido_reparto_rol (
    contenido_reparto_rol_id integer NOT NULL,
    reparto_id integer,
    usuario_id integer,
    rol_id integer,
    contenido_id integer NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 18123)
-- Name: contenido_reparto_rol_contenido_reparto_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contenido_reparto_rol_contenido_reparto_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 212
-- Name: contenido_reparto_rol_contenido_reparto_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contenido_reparto_rol_contenido_reparto_rol_id_seq OWNED BY public.contenido_reparto_rol.contenido_reparto_rol_id;


--
-- TOC entry 215 (class 1259 OID 18859)
-- Name: contenido_usuario_administracion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contenido_usuario_administracion (
    administracion_id integer NOT NULL,
    contenido_id integer,
    usuario_id integer,
    fecha date NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 18857)
-- Name: contenido_usuario_administracion_administracion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contenido_usuario_administracion_administracion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 214
-- Name: contenido_usuario_administracion_administracion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contenido_usuario_administracion_administracion_id_seq OWNED BY public.contenido_usuario_administracion.administracion_id;


--
-- TOC entry 217 (class 1259 OID 19040)
-- Name: contenido_usuario_estado; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contenido_usuario_estado (
    contenido_usuario_estado_id integer NOT NULL,
    contenido_id integer,
    usuario_id integer,
    estado_id integer
);


--
-- TOC entry 216 (class 1259 OID 19038)
-- Name: contenido_usuario_estado_contenido_usuario_estado_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contenido_usuario_estado_contenido_usuario_estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 216
-- Name: contenido_usuario_estado_contenido_usuario_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contenido_usuario_estado_contenido_usuario_estado_id_seq OWNED BY public.contenido_usuario_estado.contenido_usuario_estado_id;


--
-- TOC entry 197 (class 1259 OID 16688)
-- Name: estado; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.estado (
    estado_id integer NOT NULL,
    estado_nombre character varying(50) NOT NULL
);


--
-- TOC entry 241 (class 1259 OID 70790)
-- Name: genero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genero (
    genero_id integer NOT NULL,
    genero_nombre character varying(50) NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 70788)
-- Name: genero_genero_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genero_genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 240
-- Name: genero_genero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genero_genero_id_seq OWNED BY public.genero.genero_id;


--
-- TOC entry 209 (class 1259 OID 17409)
-- Name: historico_modificacion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.historico_modificacion (
    historico_modificacion_id integer NOT NULL,
    noticia_id integer,
    usuario_id integer,
    fecha date NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 17407)
-- Name: historico_modificacion_historico_modificacion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.historico_modificacion_historico_modificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 208
-- Name: historico_modificacion_historico_modificacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.historico_modificacion_historico_modificacion_id_seq OWNED BY public.historico_modificacion.historico_modificacion_id;


--
-- TOC entry 203 (class 1259 OID 17373)
-- Name: noticia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.noticia (
    noticia_id integer NOT NULL,
    noticia_usuario_id integer NOT NULL,
    noticia_descripcion character varying(5000) NOT NULL,
    noticia_fecha_alta date NOT NULL,
    noticia_fecha_modificacion date,
    noticia_titulo character varying(500)
);


--
-- TOC entry 202 (class 1259 OID 17371)
-- Name: noticia_noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.noticia_noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 202
-- Name: noticia_noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.noticia_noticia_id_seq OWNED BY public.noticia.noticia_id;


--
-- TOC entry 205 (class 1259 OID 17390)
-- Name: permiso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permiso (
    permiso_id integer NOT NULL,
    permiso_funcion character varying(50) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 17388)
-- Name: permiso_permiso_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.permiso_permiso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 204
-- Name: permiso_permiso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.permiso_permiso_id_seq OWNED BY public.permiso.permiso_id;


--
-- TOC entry 211 (class 1259 OID 17560)
-- Name: permiso_usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permiso_usuario (
    permiso_usuario_id integer NOT NULL,
    permiso_id integer,
    usuario_id integer,
    fecha_alta date NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 17558)
-- Name: permiso_usuario_permiso_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.permiso_usuario_permiso_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 210
-- Name: permiso_usuario_permiso_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.permiso_usuario_permiso_usuario_id_seq OWNED BY public.permiso_usuario.permiso_usuario_id;


--
-- TOC entry 207 (class 1259 OID 17398)
-- Name: reparto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reparto (
    reparto_id integer NOT NULL,
    reparto_nombre character varying(255) NOT NULL,
    reparto_apellido_1 character varying(255) NOT NULL,
    reparto_apellido_2 character varying(255),
    reparto_bibliografia character varying(5000) NOT NULL,
    reparto_foto character varying(255) NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 17396)
-- Name: reparto_reparto_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reparto_reparto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 206
-- Name: reparto_reparto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reparto_reparto_id_seq OWNED BY public.reparto.reparto_id;


--
-- TOC entry 243 (class 1259 OID 70870)
-- Name: rol; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rol (
    rol_id integer NOT NULL,
    rol_nombre character varying(50) NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 70868)
-- Name: rol_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rol_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 242
-- Name: rol_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rol_rol_id_seq OWNED BY public.rol.rol_id;


--
-- TOC entry 233 (class 1259 OID 68859)
-- Name: ti18n; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n (
    id_i18n integer NOT NULL,
    class_name character varying(150),
    i18n_description character varying(250)
);


--
-- TOC entry 232 (class 1259 OID 68857)
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.ti18n ALTER COLUMN id_i18n ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.ti18n_id_i18n_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 68866)
-- Name: ti18n_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n_value (
    id_i18n_value integer NOT NULL,
    id_i18n integer NOT NULL,
    "KEY" character varying(250),
    es_es character varying(10485760),
    en_us character varying(10485760),
    gl_es character varying(10485760)
);


--
-- TOC entry 234 (class 1259 OID 68864)
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.ti18n_value ALTER COLUMN id_i18n_value ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.ti18n_value_id_i18n_value_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 70754)
-- Name: tipo_contenido; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tipo_contenido (
    tipo_contenido_id integer NOT NULL,
    tipo_contenido_nombre character varying(50) NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 70752)
-- Name: tipo_contenido_tipo_contenido_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tipo_contenido_tipo_contenido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 238
-- Name: tipo_contenido_tipo_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tipo_contenido_tipo_contenido_id_seq OWNED BY public.tipo_contenido.tipo_contenido_id;


--
-- TOC entry 229 (class 1259 OID 68839)
-- Name: trequest_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trequest_statistics (
    id_request_statistics integer NOT NULL,
    service_name character varying(255),
    method_name character varying(50),
    user_name character varying(50),
    execution_date date,
    execution_time integer,
    method_params character varying(5000),
    service_exception character varying(5000)
);


--
-- TOC entry 226 (class 1259 OID 68821)
-- Name: trole; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole (
    id_rolename integer NOT NULL,
    rolename character varying(255),
    xmlclientpermission character varying(10485760)
);


--
-- TOC entry 225 (class 1259 OID 68819)
-- Name: trole_id_rolename_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.trole ALTER COLUMN id_rolename ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.trole_id_rolename_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 68876)
-- Name: trole_server_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole_server_permission (
    id_role_server_permission integer NOT NULL,
    id_rolename integer,
    id_server_permission integer
);


--
-- TOC entry 236 (class 1259 OID 68874)
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.trole_server_permission ALTER COLUMN id_role_server_permission ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.trole_server_permission_id_role_server_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 68831)
-- Name: tserver_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tserver_permission (
    id_server_permission integer NOT NULL,
    permission_name character varying(10485760)
);


--
-- TOC entry 227 (class 1259 OID 68829)
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.tserver_permission ALTER COLUMN id_server_permission ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tserver_permission_id_server_permission_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 68849)
-- Name: tsetting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tsetting (
    id_setting integer NOT NULL,
    setting_key character varying(10485760),
    setting_value character varying(10485760),
    setting_comment character varying(10485760)
);


--
-- TOC entry 230 (class 1259 OID 68847)
-- Name: tsetting_id_setting_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.tsetting ALTER COLUMN id_setting ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tsetting_id_setting_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 68711)
-- Name: tuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser (
    user_ character varying(50) NOT NULL,
    password character varying(50),
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    nif character varying(50),
    userblocked timestamp without time zone,
    lastpasswordupdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    firstlogin boolean DEFAULT true
);


--
-- TOC entry 222 (class 1259 OID 68685)
-- Name: tuser_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(65535)
);


--
-- TOC entry 221 (class 1259 OID 68683)
-- Name: tuser_preference_id_user_preference_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.tuser_preference ALTER COLUMN id_user_preference ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.tuser_preference_id_user_preference_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 224 (class 1259 OID 68726)
-- Name: tuser_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_role (
    id_user_role integer NOT NULL,
    id_rolename integer,
    user_ character varying(50)
);


--
-- TOC entry 201 (class 1259 OID 17361)
-- Name: usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuario (
    usuario_id integer NOT NULL,
    usuario_nickname character varying(255) NOT NULL,
    usuario_nombre character varying(255) NOT NULL,
    usuario_apellido_1 character varying(255) NOT NULL,
    usuario_apellido_2 character varying(255),
    usuario_email character varying(255) NOT NULL,
    usuario_contrasenha character varying(255) NOT NULL,
    usuario_foto character varying(255) NOT NULL,
    usuario_fecha_nacimiento date,
    usuario_estado_admin boolean DEFAULT false
);


--
-- TOC entry 200 (class 1259 OID 17359)
-- Name: usuario_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usuario_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 200
-- Name: usuario_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usuario_usuario_id_seq OWNED BY public.usuario.usuario_id;


--
-- TOC entry 2938 (class 2604 OID 19066)
-- Name: comentario comentario_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario ALTER COLUMN comentario_id SET DEFAULT nextval('public.comentario_comentario_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 17343)
-- Name: contenido contenido_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido ALTER COLUMN contenido_id SET DEFAULT nextval('public.contenido_contenido_id_seq'::regclass);


--
-- TOC entry 2935 (class 2604 OID 18128)
-- Name: contenido_reparto_rol contenido_reparto_rol_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_reparto_rol ALTER COLUMN contenido_reparto_rol_id SET DEFAULT nextval('public.contenido_reparto_rol_contenido_reparto_rol_id_seq'::regclass);


--
-- TOC entry 2936 (class 2604 OID 18862)
-- Name: contenido_usuario_administracion administracion_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_administracion ALTER COLUMN administracion_id SET DEFAULT nextval('public.contenido_usuario_administracion_administracion_id_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 19043)
-- Name: contenido_usuario_estado contenido_usuario_estado_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_estado ALTER COLUMN contenido_usuario_estado_id SET DEFAULT nextval('public.contenido_usuario_estado_contenido_usuario_estado_id_seq'::regclass);


--
-- TOC entry 2942 (class 2604 OID 70793)
-- Name: genero genero_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero ALTER COLUMN genero_id SET DEFAULT nextval('public.genero_genero_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 17412)
-- Name: historico_modificacion historico_modificacion_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historico_modificacion ALTER COLUMN historico_modificacion_id SET DEFAULT nextval('public.historico_modificacion_historico_modificacion_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 17376)
-- Name: noticia noticia_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.noticia ALTER COLUMN noticia_id SET DEFAULT nextval('public.noticia_noticia_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 17393)
-- Name: permiso permiso_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permiso ALTER COLUMN permiso_id SET DEFAULT nextval('public.permiso_permiso_id_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 17563)
-- Name: permiso_usuario permiso_usuario_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permiso_usuario ALTER COLUMN permiso_usuario_id SET DEFAULT nextval('public.permiso_usuario_permiso_usuario_id_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 17401)
-- Name: reparto reparto_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reparto ALTER COLUMN reparto_id SET DEFAULT nextval('public.reparto_reparto_id_seq'::regclass);


--
-- TOC entry 2943 (class 2604 OID 70873)
-- Name: rol rol_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rol ALTER COLUMN rol_id SET DEFAULT nextval('public.rol_rol_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 70757)
-- Name: tipo_contenido tipo_contenido_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_contenido ALTER COLUMN tipo_contenido_id SET DEFAULT nextval('public.tipo_contenido_tipo_contenido_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 17364)
-- Name: usuario usuario_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario ALTER COLUMN usuario_id SET DEFAULT nextval('public.usuario_usuario_id_seq'::regclass);


--
-- TOC entry 3156 (class 0 OID 68667)
-- Dependencies: 220
-- Data for Name: candidate; Type: TABLE DATA; Schema: ejemplo; Owner: -
--

INSERT INTO ejemplo.candidate VALUES (1, 'nacho');


--
-- TOC entry 3155 (class 0 OID 19063)
-- Dependencies: 219
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.comentario VALUES (26, 27, 10, 'Sólo intermitentemente impresionante. ', '2020-07-15');
INSERT INTO public.comentario VALUES (27, 27, 10, '"La trama es algo primitiva, pero se desarrolla con mucho más estilo y elegancia de lo que uno espera', '2020-07-15');
INSERT INTO public.comentario VALUES (2, 5, 4, 'El Padrino  es una de las crónicas más brutales y conmovedoras de la vida americana que se haya diseñado nunca dentro de los límites del entretenimiento popular.', '2020-11-03');
INSERT INTO public.comentario VALUES (3, 4, 4, 'El caso Bourne recuerda mucho a las películas de suspense de una época anterior. Las escenas de acción son grandiosas, pero transmiten una intimidad que hace que la historia importe.', '2020-11-22');
INSERT INTO public.comentario VALUES (4, 1, 10, 'Piratas de Silicon Valley es muy buena y te enteras del nacimiento de dos de las empresas más importantes de la historia en el sector informático. El director y los actores hacen lo que pueden con los escasos recursos con los que cuentan.', '2020-11-13');
INSERT INTO public.comentario VALUES (5, 8, 1, 'El ultimo baile es un ensamblado espectacular de material baloncestístico, tremendamente entretenido y ridículamente divertido, que ofrece entrevistas muy personales con casi todo el mundo a quien te gustaría oír hablando de este tema', '2020-11-22');
INSERT INTO public.comentario VALUES (28, 30, 10, 'Se notan los conocimientos, las vivencias, la delicadeza, el dolor y la falta de explicaciones. Y todo se agradece. la película es terrorífica como retrato de la impotencia. Y en un tema así eso es perfecto. ', '2020-07-15');
INSERT INTO public.comentario VALUES (6, 8, 8, 'En el ultimo baile merece la pena ver las hazañas deportivas y la complejidad psicológica de un dios demasiado cruel con sus compañeros llamado Michael Jordan ', '2020-11-01');
INSERT INTO public.comentario VALUES (12, 8, 7, 'El ultimo baile va mucho más allá de los superficiales documentales que la NBA suele hacer.', '2020-06-09');
INSERT INTO public.comentario VALUES (15, 8, 7, 'En el ultimo Baile  hay un trabajo magnífico de producción. Convertir todas esas horas de cine en una serie no debió haber sido nada fácil', '2020-06-09');
INSERT INTO public.comentario VALUES (16, 8, 7, 'En el ultimo Baile el éxito estriba en cómo Jason Hehir logró contar una historia que te tiene aferrado al sillón, aun sabiendo su desenlace y con un Jordan conocido por todo el mundo', '2020-06-09');
INSERT INTO public.comentario VALUES (7, 5, 9, 'En el Padrino, Coppola inventa una nueva mirada para el cine y amplía los horizontes de una industria que pedía a gritos savia nueva.', '2020-11-25');
INSERT INTO public.comentario VALUES (8, 3, 6, 'En Los juegos del hambre si bien esta primera parte presenta unas aventuras ligeras y algo pasadas de moda, sí que ofrece una dura y, a veces, conmovedora transición de su personaje principal.', '2020-11-24');
INSERT INTO public.comentario VALUES (9, 4, 10, 'El caso bourne es espectacular. Notable filme de espías, lleno de trepidantes escenas de acción y tensión en todo su metraje', '2020-11-27');
INSERT INTO public.comentario VALUES (10, 1, 8, 'En Piratas de Silicon Valley aunque no pertenezcas al mundo de la informática es apta para todos los públicos, ya que cuenta la historia de la competencia leal y desleal de dos de las empresas, y por tanto, de dos de los genios más trascendentes del siglo XX.', '2020-11-07');
INSERT INTO public.comentario VALUES (14, 7, 8, '"''Chernobyl'' es un exponente de cine catástrofe con excelentes momentos de suspenso y tensión. Esta magnética, hipnótica miniserie nos devuelve esa fascinación por los desastres, pero también nos enfrenta todo el tiempo a decisiones extremas.', '2020-02-01');
INSERT INTO public.comentario VALUES (17, 2, 7, 'En Harry Potter, incluso aunque algunas escenas del libro están eliminadas, los fans no podrían haber esperado una mejor adaptación ', '2020-06-09');
INSERT INTO public.comentario VALUES (1, 7, 8, 'En Chernobyl  Los episodios nos enseñan la magnitud del desastre con austeridad. Se toma muy en serio el tema que trata y, sobre todo, la tesis que quiere transmitir. Y consigue crear tensión e interés.', '2020-11-09');
INSERT INTO public.comentario VALUES (18, 14, 2, 'Ilustra un tema importante de manera accesible y humana, a pesar de que los creadores recorren todo el planeta para expresar sus ideas', '2020-07-15');
INSERT INTO public.comentario VALUES (19, 14, 3, 'Es informativa, inspiradora y terrorífica. Me hizo llorar muchas veces', '2020-07-15');
INSERT INTO public.comentario VALUES (20, 13, 3, 'Una historia poderosa de depredación sexual, fallos legales y vidas arruinadas', '2020-07-15');
INSERT INTO public.comentario VALUES (21, 13, 3, 'Lo que consigue con mayor eficacia es reflejar la vulnerabilidad que las supervivientes sintieron.', '2020-07-15');
INSERT INTO public.comentario VALUES (23, 11, 10, 'Piensa en una Teen Wolf, pero con Thor y Loki en un instituto noruego. No esperes una historia compleja, o un giro particularmente inteligente de la conocida mitología nórdica', '2020-07-15');
INSERT INTO public.comentario VALUES (22, 11, 10, 'Logra apartarse del producto juvenil habitual con un sello sobrio e igualmente irreverente. Es uno de esos casos en que no puedes dejar de repetir que lo que ves no se sostiene por ningún lado, pero eres incapaz de apartar la mirada.', '2020-07-15');
INSERT INTO public.comentario VALUES (24, 12, 10, 'El mito distópico que descarrila en su estreno en una serie de televisión. Difícilmente justificable a poco que se aprecie el cómic o se venere con justicia la película.', '2020-07-15');
INSERT INTO public.comentario VALUES (25, 12, 10, 'Una adaptación tonalmente irregular y narrativamente confusa.Un desastre con personajes sin desarrollar, situaciones ilógicas y una sátira social incompleta ', '2020-07-15');
INSERT INTO public.comentario VALUES (29, 30, 10, 'Rolling Stone	
Un ejercicio emocional demasiado poderoso como para poder resistirnos a él. Un drama duro y dolorosamente tierno que evita caer en las falsas esperanzas o en el sentimentalismo barato ', '2020-07-15');
INSERT INTO public.comentario VALUES (30, 23, 10, 'Un clásico incontestable. un título imprescindible del cine americano del último medio siglo.', '2020-07-15');
INSERT INTO public.comentario VALUES (31, 23, 10, 'Una de mis películas favoritas. Qué miedo paso siempre con el bicho. Y, cómo no, me enamoré de la teniente Ripley, ese personaje digno del mejor Hawks.', '2020-07-15');
INSERT INTO public.comentario VALUES (32, 28, 10, 'Un biopic hermoso, humano y conmovedor el arma secreta de la película es Vikander . en ocasiones, llega a ser la verdadera protagonista.', '2020-07-15');


--
-- TOC entry 3135 (class 0 OID 17340)
-- Dependencies: 199
-- Data for Name: contenido; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.contenido VALUES (7, 1, 2, 'Chernobyl ', 'El 26 de abril de 1986, la Central Nuclear de Chernóbil, en Ucrania (por entonces perteneciente a la Unión Soviética), sufrió una explosión masiva que liberó material radioactivo en Ucrania, Bielorrusia, Rusia, así como en zonas de Escandinavia y Europa Central. La serie relata, desde múltiples puntos de vista, lo que aconteció en torno a una de las mayores tragedias en la historia reciente, así como los sacrificios realizados para salvar al continente de un desastre sin precedentes.', 60, 9.00, '2019-02-18', 5, 'https://images-na.ssl-images-amazon.com/images/I/71fL2NP6uJL._AC_SY879_.jpg');
INSERT INTO public.contenido VALUES (2, 9, 1, 'Harry Potter y la piedra filosofal', 'El día en que cumple once años, Harry Potter se entera de que es hijo de dos destacados hechiceros, de los que ha heredado poderes mágicos. En la escuela Hogwarts de Magia y Hechicería, donde se educa con otros niños que también tienen poderes especiales, aprenderá todo lo necesario para ser mago.', 152, 6.00, '2001-09-29', 1, 'https://static.carrefour.es/hd_510x_/imagenes/products/73219/26588/155/7321926588155/imagenGrande1.jpg');
INSERT INTO public.contenido VALUES (3, 12, 1, 'Los juegos del hambre: Sinsajo. ', 'Katniss Everdeen se encuentra en el Distrito 13 después de destrozar los Juegos para siempre. Bajo el liderazgo de la comandante Coin y el consejo de sus amigos más leales, Katniss extiende sus alas mientras lucha por salvar a Peeta Mellark y a una nación alentada por su valentía... Tercera y última entrega de la saga literaria "Los juegos del hambre" de Suzanne Collins, que se divide en dos películas.', 110, 9.00, '2014-08-06', 1, 'https://es.web.img3.acsta.net/pictures/14/09/12/10/51/011753.jpg');
INSERT INTO public.contenido VALUES (4, 4, 1, 'El caso Bourne', 'Un hombre amnésico es rescatado por la tripulación de un barco pesquero italiano cuando flota a la deriva en el mar. No lleva nada consigo. Sólo las balas que lleva clavadas en la espalda y un número de cuenta de un banco suizo que lleva adherido a la cadera. Carece de identidad y de pasado, pero posee unas serie de talentos extraordinarios en artes lingüísticas, marciales y de autodefensa que sugieren una profesión de riesgo', 113, 7.00, '2002-03-22', 1, 'https://es.web.img3.acsta.net/pictures/14/03/24/11/41/592362.jpg');
INSERT INTO public.contenido VALUES (1, 1, 1, 'Piratas de Silicon Valley', 'Dos jóvenes de gran talento se enfrentan en una guerra de ingenio y estrategias comerciales para imponerse en el mercado de la informática.', 95, 9.00, '1999-01-19', 1, 'https://2.bp.blogspot.com/-zsfw-VcJ5Is/TpD2W5ZAi0I/AAAAAAAAAgs/3KLTJXDJu-M/s1600/Pirates_Of_Silicon_Valley_por_nao1985.jpg');
INSERT INTO public.contenido VALUES (10, 15, 3, 'Enron, los tipos que estafaron a América', 'Relata el caso de la empresa Enron Corporation que, en quince años, pasó de ser una pequeña empresa de gas de Texas a convertirse en el séptimo grupo empresarial de mayor valor en Estados Unidos, y que acabó en la quiebra absoluta dando lugar a uno de los mayores escándalos de la historia financiera de Norteamérica, con graves repercusiones políticas, salpicando incluso a la Casa Blanca', 113, 6.00, '2005-10-15', 1, 'https://www.aehe.es/wp-content/uploads/2020/05/Enron.jpg');
INSERT INTO public.contenido VALUES (6, 14, 1, 'Vengadores: La era de Ultrón', 'Cuando Tony Stark intenta reactivar un programa caído en desuso cuyo objetivo es mantener la paz, las cosas empiezan a torcerse y los héroes más poderosos de la Tierra, incluyendo a Iron Man, Capitán América, Thor, El Increíble Hulk, Viuda Negra y Ojo de Halcón, tendrán que afrontar la prueba definitiva cuando el destino del planeta se ponga en juego. ', 141, 9.00, '2015-07-25', 1, 'https://image.tmdb.org/t/p/w500/SWfuMs4doCHcrz0InTh785SpQU.jpg');
INSERT INTO public.contenido VALUES (14, 15, 2, 'Pandemia', 'Conoce a los héroes que luchan contra la gripe y aprende qué es lo que hacen para evitar la próxima epidemia.', 50, 5.00, '2020-10-15', 6, 'https://m.media-amazon.com/images/M/MV5BYjE2OWM2YzYtZjkyOC00OTkyLTlkODMtMTc3OGFiYWViOGE2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg');
INSERT INTO public.contenido VALUES (9, 15, 3, 'El Estado contra Mandela y los otros', 'La historia de la lucha contra el apartheid solo recuerda a un hombre: Nelson Mandela. En 2018 habría cumplido cien años. Se dio a conocer durante un juicio histórico en 1963 y 1964. Pero en el banquillo Mandela no estaba solo: ocho de sus camaradas también se enfrentaban a la pena de muerte. Enfrentados a un puntilloso fiscal, decidieron convertir su juicio en una tribuna contra el apartheid. ', 95, 8.00, '2018-06-07', 1, 'https://es.web.img3.acsta.net/pictures/19/01/08/12/17/5310654.jpg');
INSERT INTO public.contenido VALUES (11, 12, 2, 'Ragnarok', 'Una serie de extraños sucesos comienzan a suceder en la pequeña localidad noruega de Edda, donde todos sus habitantes no son lo que parecen ser.', 45, 5.00, '2020-10-15', 6, 'https://es.web.img3.acsta.net/pictures/19/12/05/09/14/4556356.jpg');
INSERT INTO public.contenido VALUES (13, 15, 3, 'Jeffrey Epstein: Asquerosamente rico', 'Esta docuserie se apoya en testimonios de víctimas para analizar cómo el agresor sexual convicto Jeffrey Epstein utilizó su fortuna y poder para llevar a cabo sus abusos. Epstein, conocido financiero neoyorquino con gran influencia social y política en la ciudad hasta su acusación y condena por solicitar prostitución e incitar a la prostitución a menores, se ahorcó en su celda del Centro Correccional Metropolitano en Manhattan en agosto del 2019, en circunstancias por aclarar.', 55, 5.00, '2020-10-15', 5, 'https://www.enlima.pe/sites/default/files/styles/imagen_masonry/public/epstein.png');
INSERT INTO public.contenido VALUES (5, 7, 1, 'El padrino', 'América, años 40. Don Vito Corleone (Marlon Brando) es el respetado y temido jefe de una de las cinco familias de la mafia de Nueva York. Tiene cuatro hijos: Connie (Talia Shire), el impulsivo Sonny (James Caan), el pusilánime Fredo (John Cazale) y Michael (Al Pacino), que no quiere saber nada de los negocios de su padre. ', 175, 10.00, '1972-12-19', 1, 'https://es.web.img3.acsta.net/pictures/18/06/12/12/12/0117051.jpg');
INSERT INTO public.contenido VALUES (12, 12, 2, 'Snowpiercer: Rompenieves ', 'Ambientada siete años después de que el planeta Tierra se haya convertido en un páramo helado, ''Snowpiercer'' sigue a los restos de la humanidad, que habitan en un tren de grandes dimensiones en continuo movimiento. Clases sociales, justicia social y juegos políticos se dan dentro de lo que para la humanidad es su único hogar. Adaptación de la novela gráfica homónima.', 50, 0.00, '2020-02-02', 10, 'https://i.pinimg.com/originals/13/5d/57/135d578e7a96b68db770fcd9e2b96b19.jpg');
INSERT INTO public.contenido VALUES (26, 15, 1, 'Los hombres libres de Jones', 'Narra la historia real del granjero sureño New Knight (Matthew McConaughey) y su extraordinaria revuelta armada contra el Ejército Confederado durante la Guerra de Secesión americana. Harto de luchar por los intereses de los más ricos, Knight desertó, se alió con otros pequeños granjeros y con la ayuda de los esclavos locales, lideró un levantamiento que llevó al Condado de Jones en Mississippi a independizarse creando el Estado Libre de Jones. ', 140, 8.00, '2016-09-05', 1, 'https://es.web.img2.acsta.net/pictures/16/08/01/17/49/136803.jpg');
INSERT INTO public.contenido VALUES (15, 12, 1, 'Prometheus', 'Un grupo de científicos y exploradores emprende un viaje espacial a un remoto planeta, una rara estrella recién descubierta, donde sus límites físicos y mentales serán puestos a prueba. El motivo de la misión es que los humanos creen que allá podrán encontrar la respuesta a las preguntas más profundas y al mayor de los misterios: el origen de la vida en la Tierra.', 124, 7.00, '2012-07-23', 1, 'https://images-na.ssl-images-amazon.com/images/I/61BnOoB5U5L._AC_SY741_.jpg');
INSERT INTO public.contenido VALUES (16, 1, 1, 'El pianista', 'Varsovia, 1939. El pianista polaco de origen judío Wladyslaw Szpilman (Adrien Brody) interpreta un tema de Chopin en la radio nacional de Polonia mientras la aviación alemana bombardea la capital.', 150, 9.00, '2002-11-05', 1, 'https://www.tuposter.com/pub/media/catalog/product/cache/image/700x560/91bbed04eb86c2a8aaef7fbfb2041b2a/f/i/file_124.jpg');
INSERT INTO public.contenido VALUES (17, 11, 1, 'El viaje de Chihiro', 'Chihiro es una niña de 10 años que viaja en coche con sus padres. Después de atravesar un tunel, llegan a un mundo fantástico, en el que no hay lugar para los humanos, sólo existen dioses de primera y segunda clase. Cuando descubre que sus padres han sido convertidos en cerdos, Chihiro se siente muy sola y asustada', 124, 9.00, '2001-09-21', 1, 'https://www.tuposter.com/pub/media/catalog/product/cache/image/700x560/91bbed04eb86c2a8aaef7fbfb2041b2a/p/o/poster_el_viaje_de_chiiro_poster_americano.png');
INSERT INTO public.contenido VALUES (18, 14, 1, 'Mortal Engines', 'Miles de años después de la destrucción de la civilización por un cataclismo, la humanidad se ha adaptado y, ahora, existen gigantescas ciudades en movimiento que vagan por la tierra sobre enormes ruedas absorbiendo a los pueblos más pequeños para obtener recursos.', 128, 7.00, '2018-10-23', 1, 'https://images-na.ssl-images-amazon.com/images/I/81GIhYXu8FL._AC_SY879_.jpg');
INSERT INTO public.contenido VALUES (19, 4, 1, 'Maléfica: Maestra del mal', 'Maléfica: Maestra del mal es una aventura de fantasía que se desarrolla varios años después de Maléfica. En esa película el público conoció por fin los acontecimientos que endurecieron el corazón de la villana más famosa de Disney y que la llevaron a maldecir a la recién nacida Princesa Aurora.', 119, 8.00, '2019-10-23', 1, 'https://www.diariovivo.com/wp-content/uploads/2019/08/maleficent-2-poster.jpg');
INSERT INTO public.contenido VALUES (20, 16, 1, 'El renacido', 'Durante una expedición en las tierras salvajes americanas, el legendario explorador Hugh Glass es brutalmente atacado por un oso y dado por muerto por los miembros de su propia partida de caza. En su cruzada por sobrevivir, Glass supera inimaginables tribulaciones, además de la traición de su confidente John Fitzgerald', 156, 8.00, '2015-08-03', 1, 'https://is4-ssl.mzstatic.com/image/thumb/Video18/v4/d3/99/09/d39909f7-6838-9446-640d-969a6b83ec88/pr_source.lsr/320x0w.png');
INSERT INTO public.contenido VALUES (21, 17, 1, 'La chaqueta metálica', 'Un grupo de reclutas se prepara en Parish Island, centro de entrenamiento de la marina Norteamericana. Allí está el sargento Hartmann, duro e implacable, cuya única misión en la vida es endurecer el cuerpo y el alma de los novatos, para que puedan defenderse del enemigo. Pero no todos los jóvenes soportan igual sus métodos...', 120, 9.00, '1987-09-11', 1, 'https://es.web.img3.acsta.net/medias/nmedia/18/90/15/35/20083253.jpg');
INSERT INTO public.contenido VALUES (22, 6, 1, 'A ciegas', 'Thriller posapocalíptico en el que una mujer y sus dos hijos, estos con los ojos vendados, navegan río abajo tras una sangrienta invasión alienígena de la Tierra intentando evitar a las criaturas extraterrestres. Cuando algo misterioso diezma la población mundial, solo se sabe una cosa: si lo ves, te suicidas. ', 124, 8.00, '2018-10-13', 1, 'https://es.web.img2.acsta.net/pictures/18/10/25/14/07/5095709.jpg');
INSERT INTO public.contenido VALUES (23, 6, 1, 'Alien, el octavo pasajero', 'De regreso a la Tierra, la nave de carga Nostromo interrumpe su viaje y despierta a sus siete tripulantes. El ordenador central, MADRE, ha detectado la misteriosa transmisión de una forma de vida desconocida, procedente de un planeta cercano aparentemente deshabitado. La nave se dirige entonces al extraño planeta para investigar el origen de la comunicación.', 117, 10.00, '1979-10-22', 1, 'https://i.pinimg.com/originals/bb/19/cd/bb19cdc72ccbc06f5ea05a495b0359f9.jpg');
INSERT INTO public.contenido VALUES (24, 6, 1, 'Carrie', 'Carrie White, una adolescente a la que sus compañeros humillan constantemente, posee poderes psíquicos que se manifiestan cuando se siente dominada por la ira. El día del baile de graduación la situación llega a hacérsele insoportable.', 100, 8.00, '2013-05-30', 1, 'https://i.pinimg.com/originals/16/94/52/16945231f60d86ee618f4baed9a35e91.jpg');
INSERT INTO public.contenido VALUES (25, 7, 1, 'Kill Bill: Volumen 1', 'Uma Thurman es una asesina que, el día de su boda, es atacada por los miembros de la banda de su jefe, Bill (David Carradine). Logra sobrevivir al ataque, aunque queda en coma. Cinco años después despierta con un trozo de metal en la cabeza y un gran deseo de venganza en su corazón.', 111, 8.00, '2003-12-05', 1, 'https://i.pinimg.com/originals/5c/34/a8/5c34a84ac59f6d02451248ea37a0636e.png');
INSERT INTO public.contenido VALUES (27, 2, 1, 'Los cazafantasmas', 'Los Drs. Venkman, Stantz y Epengler, son tres doctores en parapsicología que se quedan sin empleo tras quedar excluidos de una beca universitaria de investigación. Entonces deciden formar la empresa "Los Cazafantasmas", dedicada a limpiar Nueva York de ectoplasmas.', 107, 10.00, '1984-10-13', 1, 'https://images-na.ssl-images-amazon.com/images/I/91mjR0cmayL._AC_SY879_.jpg');
INSERT INTO public.contenido VALUES (29, 1, 1, 'Green Book', 'Años 60. Cuando Tony Lip (Viggo Mortensen), un rudo italoamericano del Bronx, es contratado como chófer del virtuoso pianista negro Don Shirley (Mahershala Ali), durante una gira de conciertos por el Sur de Estados Unidos, deberá confiar en "El libro verde", una guía de los pocos establecimientos seguros para los afroamericanos, para encontrar alojamiento. ', 130, 9.00, '2018-11-13', 1, 'https://images-na.ssl-images-amazon.com/images/I/61Z6bxl6JsL._AC_SL1204_.jpg');
INSERT INTO public.contenido VALUES (30, 1, 1, 'Beautiful boy', 'Crónica sobre la adicción a la metanfetamina y el intento de recuperación y de salir de las drogas a través de los ojos de un padre que observa a su hijo mientras lucha contra la enfermedad de la drogodependencia.', 130, 10.00, '2018-05-26', 10, 'https://images-na.ssl-images-amazon.com/images/I/717u5vgj25L._AC_SL1481_.jpg');
INSERT INTO public.contenido VALUES (8, 10, 3, 'El último baile', 'Docuserie repleta de material inédito de la temporada 1997-98 , que muestra la carrera del legendario baloncestista Michael Jordan, uno de los mayores iconos del deporte de todos los tiempos, y su trayectoria con los Chicago Bulls en los años 90.', 50, 9.00, '2020-03-25', 10, 'https://viniloblog.com/wp-content/uploads/2020/05/the-last-dance-netflix.jpg');
INSERT INTO public.contenido VALUES (28, 1, 1, 'La chica danesa', 'Drama basado en la verdadera historia de una pareja de artistas daneses, Einar y Gerda Wegener. La vida de este matrimonio dio un giro cuando Einar sustituyó a la modelo femenina que su mujer, Gerda, tenía que pintar. Cuando los retratos resultan ser un éxito, ella anima a su marido a adoptar una apariencia femenina. ', 120, 10.00, '2015-08-29', 1, 'https://newcinema.es/imagenes/2015/12/La-Chica-Danesa-Cartel.jpg');


--
-- TOC entry 3149 (class 0 OID 18125)
-- Dependencies: 213
-- Data for Name: contenido_reparto_rol; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.contenido_reparto_rol VALUES (1, 1, 1, 1, 1);
INSERT INTO public.contenido_reparto_rol VALUES (2, 2, 1, 2, 1);
INSERT INTO public.contenido_reparto_rol VALUES (3, 3, 1, 2, 2);
INSERT INTO public.contenido_reparto_rol VALUES (4, 4, 1, 1, 2);
INSERT INTO public.contenido_reparto_rol VALUES (5, 5, 1, 2, 3);
INSERT INTO public.contenido_reparto_rol VALUES (6, 6, 1, 1, 3);
INSERT INTO public.contenido_reparto_rol VALUES (7, 7, 1, 2, 4);
INSERT INTO public.contenido_reparto_rol VALUES (8, 8, 1, 1, 4);
INSERT INTO public.contenido_reparto_rol VALUES (9, 9, 1, 2, 5);
INSERT INTO public.contenido_reparto_rol VALUES (10, 10, 1, 1, 5);
INSERT INTO public.contenido_reparto_rol VALUES (11, 11, 1, 2, 6);
INSERT INTO public.contenido_reparto_rol VALUES (12, 12, 1, 1, 6);
INSERT INTO public.contenido_reparto_rol VALUES (13, 13, 1, 2, 7);
INSERT INTO public.contenido_reparto_rol VALUES (14, 14, 1, 1, 7);
INSERT INTO public.contenido_reparto_rol VALUES (15, 15, 1, 1, 8);
INSERT INTO public.contenido_reparto_rol VALUES (16, 16, 1, 1, 8);
INSERT INTO public.contenido_reparto_rol VALUES (17, 17, 1, 1, 9);
INSERT INTO public.contenido_reparto_rol VALUES (18, 18, 1, 1, 9);
INSERT INTO public.contenido_reparto_rol VALUES (19, 19, 1, 2, 10);
INSERT INTO public.contenido_reparto_rol VALUES (20, 20, 1, 2, 10);
INSERT INTO public.contenido_reparto_rol VALUES (21, 21, 1, 1, 11);
INSERT INTO public.contenido_reparto_rol VALUES (22, 22, 1, 1, 11);
INSERT INTO public.contenido_reparto_rol VALUES (23, 23, 1, 1, 12);
INSERT INTO public.contenido_reparto_rol VALUES (24, 24, 1, 1, 12);
INSERT INTO public.contenido_reparto_rol VALUES (25, 25, 1, 2, 15);
INSERT INTO public.contenido_reparto_rol VALUES (26, 26, 1, 1, 15);
INSERT INTO public.contenido_reparto_rol VALUES (27, 27, 1, 2, 16);
INSERT INTO public.contenido_reparto_rol VALUES (28, 28, 1, 1, 16);
INSERT INTO public.contenido_reparto_rol VALUES (29, 29, 1, 2, 18);
INSERT INTO public.contenido_reparto_rol VALUES (30, 30, 1, 1, 18);
INSERT INTO public.contenido_reparto_rol VALUES (31, 31, 1, 1, 19);
INSERT INTO public.contenido_reparto_rol VALUES (32, 32, 1, 1, 19);
INSERT INTO public.contenido_reparto_rol VALUES (33, 33, 1, 2, 20);
INSERT INTO public.contenido_reparto_rol VALUES (34, 34, 1, 1, 20);
INSERT INTO public.contenido_reparto_rol VALUES (35, 35, 1, 2, 21);
INSERT INTO public.contenido_reparto_rol VALUES (36, 36, 1, 1, 21);
INSERT INTO public.contenido_reparto_rol VALUES (37, 37, 1, 2, 22);
INSERT INTO public.contenido_reparto_rol VALUES (38, 38, 1, 1, 22);
INSERT INTO public.contenido_reparto_rol VALUES (39, 25, 1, 2, 23);
INSERT INTO public.contenido_reparto_rol VALUES (40, 39, 1, 1, 23);
INSERT INTO public.contenido_reparto_rol VALUES (41, 40, 1, 2, 24);
INSERT INTO public.contenido_reparto_rol VALUES (42, 41, 1, 1, 24);
INSERT INTO public.contenido_reparto_rol VALUES (43, 42, 1, 2, 25);
INSERT INTO public.contenido_reparto_rol VALUES (44, 43, 1, 1, 25);
INSERT INTO public.contenido_reparto_rol VALUES (45, 44, 1, 2, 26);
INSERT INTO public.contenido_reparto_rol VALUES (46, 45, 1, 1, 26);
INSERT INTO public.contenido_reparto_rol VALUES (47, 46, 1, 2, 27);
INSERT INTO public.contenido_reparto_rol VALUES (48, 47, 1, 1, 27);
INSERT INTO public.contenido_reparto_rol VALUES (49, 48, 1, 2, 28);
INSERT INTO public.contenido_reparto_rol VALUES (50, 49, 1, 1, 28);
INSERT INTO public.contenido_reparto_rol VALUES (51, 50, 1, 2, 29);
INSERT INTO public.contenido_reparto_rol VALUES (52, 51, 1, 1, 29);
INSERT INTO public.contenido_reparto_rol VALUES (53, 52, 1, 2, 30);
INSERT INTO public.contenido_reparto_rol VALUES (54, 53, 1, 1, 30);
INSERT INTO public.contenido_reparto_rol VALUES (55, 1, 1, 1, 2);
INSERT INTO public.contenido_reparto_rol VALUES (56, 1, 1, 1, 3);


--
-- TOC entry 3151 (class 0 OID 18859)
-- Dependencies: 215
-- Data for Name: contenido_usuario_administracion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.contenido_usuario_administracion VALUES (2, 5, 1, '2020-04-26');
INSERT INTO public.contenido_usuario_administracion VALUES (1, 3, 1, '2020-04-08');
INSERT INTO public.contenido_usuario_administracion VALUES (4, 10, 5, '2019-12-21');
INSERT INTO public.contenido_usuario_administracion VALUES (6, 9, 5, '2020-01-20');
INSERT INTO public.contenido_usuario_administracion VALUES (3, 2, 1, '2020-04-29');
INSERT INTO public.contenido_usuario_administracion VALUES (5, 10, 5, '2020-08-23');
INSERT INTO public.contenido_usuario_administracion VALUES (8, 5, 10, '2019-07-24');
INSERT INTO public.contenido_usuario_administracion VALUES (7, 4, 10, '2019-05-05');
INSERT INTO public.contenido_usuario_administracion VALUES (12, 3, 3, '2020-07-03');
INSERT INTO public.contenido_usuario_administracion VALUES (9, 7, 10, '2020-04-28');
INSERT INTO public.contenido_usuario_administracion VALUES (11, 7, 3, '2020-03-05');
INSERT INTO public.contenido_usuario_administracion VALUES (10, 8, 3, '2021-01-30');


--
-- TOC entry 3153 (class 0 OID 19040)
-- Dependencies: 217
-- Data for Name: contenido_usuario_estado; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.contenido_usuario_estado VALUES (1, 10, 10, 3);
INSERT INTO public.contenido_usuario_estado VALUES (2, 1, 17, 1);
INSERT INTO public.contenido_usuario_estado VALUES (3, 5, 18, 1);
INSERT INTO public.contenido_usuario_estado VALUES (4, 10, 17, 3);
INSERT INTO public.contenido_usuario_estado VALUES (5, 1, 18, 3);
INSERT INTO public.contenido_usuario_estado VALUES (6, 1, 20, 2);
INSERT INTO public.contenido_usuario_estado VALUES (7, 6, 8, 3);
INSERT INTO public.contenido_usuario_estado VALUES (8, 3, 8, 1);
INSERT INTO public.contenido_usuario_estado VALUES (9, 7, 7, 1);
INSERT INTO public.contenido_usuario_estado VALUES (10, 8, 18, 3);


--
-- TOC entry 3133 (class 0 OID 16688)
-- Dependencies: 197
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estado VALUES (1, 'pendiente');
INSERT INTO public.estado VALUES (2, 'siguiendo');
INSERT INTO public.estado VALUES (3, 'vista');


--
-- TOC entry 3177 (class 0 OID 70790)
-- Dependencies: 241
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genero VALUES (13, 'Misterio');
INSERT INTO public.genero VALUES (14, 'Fantasia');
INSERT INTO public.genero VALUES (16, 'Western');
INSERT INTO public.genero VALUES (1, 'Drama');
INSERT INTO public.genero VALUES (2, 'Comedia');
INSERT INTO public.genero VALUES (3, 'Romance');
INSERT INTO public.genero VALUES (4, 'Acción');
INSERT INTO public.genero VALUES (5, 'Suspense');
INSERT INTO public.genero VALUES (6, 'Terror');
INSERT INTO public.genero VALUES (7, 'Crimen');
INSERT INTO public.genero VALUES (8, 'Musical');
INSERT INTO public.genero VALUES (9, 'Aventura');
INSERT INTO public.genero VALUES (10, 'Familiar');
INSERT INTO public.genero VALUES (11, 'Animación');
INSERT INTO public.genero VALUES (12, 'Ciencia ficción');
INSERT INTO public.genero VALUES (15, 'Histórica');
INSERT INTO public.genero VALUES (17, 'Belica');


--
-- TOC entry 3145 (class 0 OID 17409)
-- Dependencies: 209
-- Data for Name: historico_modificacion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.historico_modificacion VALUES (6, 4, 20, '2006-05-17');
INSERT INTO public.historico_modificacion VALUES (7, 1, 2, '2006-05-17');
INSERT INTO public.historico_modificacion VALUES (8, 1, 2, '2006-05-18');
INSERT INTO public.historico_modificacion VALUES (9, 1, 2, '2006-06-23');
INSERT INTO public.historico_modificacion VALUES (10, 10, 17, '2006-06-24');
INSERT INTO public.historico_modificacion VALUES (11, 10, 17, '2006-06-27');
INSERT INTO public.historico_modificacion VALUES (12, 8, 19, '2006-06-28');
INSERT INTO public.historico_modificacion VALUES (13, 8, 19, '2006-07-24');
INSERT INTO public.historico_modificacion VALUES (14, 5, 5, '2006-06-30');
INSERT INTO public.historico_modificacion VALUES (15, 5, 5, '2006-08-09');
INSERT INTO public.historico_modificacion VALUES (16, 3, 15, '2006-08-18');
INSERT INTO public.historico_modificacion VALUES (17, 2, 16, '2006-10-24');
INSERT INTO public.historico_modificacion VALUES (18, 7, 8, '2006-11-06');
INSERT INTO public.historico_modificacion VALUES (19, 9, 4, '2006-12-12');
INSERT INTO public.historico_modificacion VALUES (20, 6, 19, '2007-01-23');


--
-- TOC entry 3139 (class 0 OID 17373)
-- Dependencies: 203
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.noticia VALUES (6, 19, 'Si te dejó boquiabierto Spider-Man: Un nuevo universo, la última ganadora del Oscar en la categoría de Mejor película de animación, espera a ver su segunda parte, Spider-Man: Un nuevo universo 2, que Sony Pictures estrenará en los cines el 7 de octubre de 2022 con Joaquim Dos Santos como director. Porque Christopher Miller, uno de sus productores, ha prometido que será todavía más impresionante en términos de animación. Eso es mucho decir, ya que la primera parte, una historia de orígenes de Miles Morales, sorprendió a crítica y público por su trama y por su espectacular propuesta visual. De hecho, el largometraje parecía literalmente un cómic en movimiento. ¿Qué nos tendrán preparado?', '2004-02-28', '2007-01-23', 'Spider-Man: Un nuevo universo 2 será aún más potente en términos de animación');
INSERT INTO public.noticia VALUES (9, 4, 'El mes de julio llega repleto de horas de sol, de tomar algo fresquito en una terraza a la sombra, de ir a bañarse a la playa y desconectar un poco de estos meses que nos ha tocado vivir. Pero también llega repleto de películas y series que HBO añade a su catálogo. Regreso al futuro, Animales fantásticos, Por H o por B, Prodigal Son, Ha nacido una estrella... Filmes y ficciones perfectas para pasar un rato descansado, solos o en compañía, en la tranquilidad de nuestro hogar. ', '2003-07-17', '2006-12-12', 'Estrenos HBO de julio 2020: Todas las películas y series');
INSERT INTO public.noticia VALUES (1, 2, 'Después de meses en pausa debido al confinamiento por el coronavirus (COVID-19), los rodajes de El Señor de los Anillos y 
la versión de acción real de Cowboy 
Bebop pueden volver a retomarse en Nueva Zelanda. Según informa el medio Stuff, el Ministerio de Negocio, Innovación 
y Empleo ha dejado entrar al país a cinco proyectos, tanto televisivos como de cine, para que sigan o terminen sus respectivos 
rodajes, uniéndose así ya a los que se encuentran en pleno trabajo como la secuela de Avatar o The Power of the Dog de Jane Campion. El equipo de la serie de Amazon Prime Video de El Señor de los Anillos y Cowboy Bebop de Netflix está comenzando a llegar a Nueva Zelanda junto a los de Power Rangers Beast Morphers, The Greatest Beer Run Ever de Peter Farrely y Sweet Tooth.

Un total de 206 miembros del equipo más 35 familiares de los mismos podrán ingresar así en el país en el transcurso de seis meses. Además, el Ministerio de Negocio, Innovación y Empleo ha mencionado que dejar entrar estas grandes producciones a la isla creará 3.000 empleos y sumará a la economía de Nueva Zelanda alrededor de 400 millones de dólares.', '2003-11-16', '2006-06-23', 'Nueva Zelanda permite retomar los rodajes de El Señor de los Anillos y Cowboy Bebop');
INSERT INTO public.noticia VALUES (8, 19, 'La última película de Pedro Almodóvar, Dolor y Gloria, ha arrasado en la VII Edición de los Premios Platino al ser galardonada en seis categorías, entre estas, incluida la de Mejor película Iberoamericana de Ficción. 

En total, Dolor y Gloria también ha sido premiada en la categoría de Mejor dirección y guion, para Almodóvar; Mejor intérprete masculino, para Antonio Banderas; Mejor música original, para Alberto Iglesias y Mejor dirección de montaje para Teresa Font.

El Premio Platino a la Mejor interpretación femenina ha recaído en Carol Duarte, protagonista de la película La vida invisible de Eurídice Gusmao, del brasileño Karim Aïnouz.  ', '2005-04-11', '2006-07-24', 'Dolor y gloria, de Pedro Almodóvar, arrasa en los Premios Platino');
INSERT INTO public.noticia VALUES (2, 16, 'La famosa comedia de los 90 Atrapado en el tiempo (1993), o más conocida como El día de la marmota, protagonizada por Bill Murray, podría tener su propia serie de televisión. Resulta increíble que 27 años después esta historia pueda volver, pero esta vez a la pequeña pantalla. Así lo ha confirmado el actor Stephen Tobolowsky, que en la cinta daba vida a Ned Ryarson. 

Durante el Podcast Production Meeting, Tobolowsky comenzó a narrar una experiencia que vivió hace unos días con uno de los productores del largo y sobre cómo le anunció el desarrollo de este nuevo proyecto televisivo y la oportunidad de poder formar parte de él', '2005-02-02', '2006-10-24', 'La cinta Atrapado en el tiempo podría ser adaptada a la televisión');
INSERT INTO public.noticia VALUES (3, 15, 'La espera ha terminado y por fin podemos disfrutar de Onward, el último largometraje de Pixar, en Disney+. La cinta dirigida por Dan Scanlon se ambienta en un mundo mágico, donde habitan Ian y Barley Lightfoo, dos hermanos elfos que inician la mayor aventura de sus vidas, con el objetivo de poder ver a su padre, por última vez. 

Como sabemos que después de ver la nueva genialidad del estudio querrás volver a emocionarte con alguno de sus títulos míticos, te traemos un especial fantástico, en el que te explicamos la teoría que conecta las 15 primeras películas de la compañía. El teórico Jon Negroni es el artífice de esta curiosa conexión, a través de la que explica que los personajes, desde Toy Story hasta Del Revés (Inside Out), habitan en un mismo universo, pero en épocas diferentes.', '2003-06-24', '2006-08-18', 'Esta es la teoría que conecta las 15 primeras películas de Pixar, de Toy Story a Del Revés');
INSERT INTO public.noticia VALUES (4, 20, 'No hay nada mejor que el dulce para celebrar una buena noticia y el equipo de las secuelas de Avatar, la que fuera la película más taquillera de la historia, lo sabe perfectamente. Avatar 2 llega a las salas de cine el 17 de diciembre de 2021 -seguida por Avatar 3 (2023), Avatar 4 (2025) y Avatar 5 (2027)- y la producción ha festejado sus 100 días de rodaje de una forma muy dulce: cupcakes con la imagen de un navi. Jon Landau, productor de la saga, ha compartido la apetitosa imagen a través de Instagram.', '2003-06-12', '2006-05-17', 'Las secuelas de Avatar celebran sus 100 días de rodaje de una forma muy dulce');
INSERT INTO public.noticia VALUES (5, 5, 'Decir adiós a un personaje al que has interpretado durante diez años de tu vida no tiene que ser fácil. Y si no, que se lo pregunten a Chris Evans. El actor, que se metió en la piel de Steve Rogers/Capitán América en el Universo Cinematográfico de Marvel, ha reconocido que echa de menos dar vida al Centinela de la Libertad. 

“Amé mi época con Marvel. Ya lo echo de menos”, afirma Evans en una entrevista en Backstage. No obstante, el intérprete también le ve el lado bueno a soltar el escudo del superhéroe. “Pero no se puede negar que es muy emocionante tener toda la libertad para perseguir lo que me pide mi apetito creativo”, añade. 

Evans debutó en el Universo Cinematográfico de Marvel en Capitán América: El primer vengador. La cinta, la primera aparición de Steve Rogers, fue solo el inicio de la franquicia para el actor. Después repetiría en Los Vengadores, Capitán América: El Soldado de Invierno, Vengadores: La era de Ultrón, Capitán América: Civil War, Vengadores: Infinity War y Vengadores: Endgame.', '2004-10-08', '2006-08-09', 'Chris Evans reconoce que echa de menos interpretar a Capitán América');
INSERT INTO public.noticia VALUES (7, 8, 'Christopher Nolan ha visto cómo su nueva película Tenet ha sufrido varios retrasos en su fecha de estreno por la crisis del coronavirus. De momento, el filme protagonizado por John David Washington y Robert Pattinson, llega a las salas de cine españolas el 31 de julio. Pero todavía habrá que estar a la espera por si ocurre en nuestro país lo mismo que en Estados Unidos y la cinta se retrasa, otra vez, al 12 de agosto. Ahora, Nolan ha vuelto a ser noticia, pero no por Tenet. Lo ha sido por un detalle que ha revelado una de sus actrices sobre una de las normas que tiene el realizador durante los rodajes. 

Durante una conversación en Variety entre Anne Hathaway -actriz que dio vida a Selina Kyle/Catwoman en El caballero oscuro: La leyenda renace y a Brand en Interstellar- y Hugh Jackman, la intérprete ha contado por qué Nolan no deja que haya sillas en los sets de sus películas.', '2003-12-17', '2006-11-06', 'Esta es la razón por la que Christopher Nolan no permite sillas en los rodajes');
INSERT INTO public.noticia VALUES (10, 17, 'El equipo de The Walking Dead se reunirá en la Comic-Con virtual, que se celebrará del 23 al 26 de julio, para hablar del final de la temporada 10 del serial de zombis de AMC. El panel de la ficción se titula Talking Dead, estará moderado por Chris Hardwick y todavía no tiene fecha concreta de celebración como tampoco se saben los nombres propios que participarán. Es probable, sin embargo, que Greg Nicotero, director de la serie en este último tramo, y los actores Jeffrey Dean Morgan, Cailey Fleming, Seth Gilliam y Ryan Hurst estén presentes en el Q&A virtual. 

Como tantas otras series, la ficción zombie de AMC quedó paralizada a causa de la crisis del coronavirus. En el caso de The Walking Dead, la parálisis fue doble, porque el último capítulo de la temporada 10 del serial se quedó en el aire, ya que aún faltaba finalizar la posproducción de ese episodio. De este modo, los espectadores se quedaron en tensión sin saber el desenlace del cliffhanger en el que nos dejó el anterior capítulo, en el que Daryl (Norman Reedus), Negan (Jeffrey Dean Morgan) y otros supervivientes estaban atrapados frente a una horda de zombis comandada por el nuevo líder de los Susurradores, Beta (Ryan Hurst).', '2003-07-04', '2006-06-27', 'The Walking Dead: el equipo se reunirá en la Comic-Con virtual para hablar del final de la temporada 10');
INSERT INTO public.noticia VALUES (15, 1, 'Tras varios rumores, al final se hizo realidad. Los hombres de Paco, la famosa serie española policiaca, tendrá una nueva temporada y contará con Paco Tous, Pepón Nieto, Carlos Santos como Paco Miranda, Mariano Moreno y José Luis Povedilla, respectivamente. Pero, algo que seguro alegra a más de un seguidor de la ficción es la confirmación del regreso de Michelle Jenner (La Catedral del Mar) y Hugo Silva (El Ministerio del Tiempo) como Sara y Lucas. 

La historia de este amor imposible, con sus idas y venidas, fue uno de los pilares de la trama de Los Hombres de Paco, por eso, imaginar un regreso del título a la televisión sin ellos no sería lo mismo. Antena 3 ha confirmado que ambos actores vuelven en esta temporada 10, pero solo durante varios episodios.', '2020-02-01', '2006-07-28', 'Los Hombres de Paco: Michelle Jenner y Hugo Silva vuelven como Sara y Lucas a la temporada 10 ');
INSERT INTO public.noticia VALUES (14, 6, 'La crisis del coronavirus provocó, con el decreto del Estado de Alarma, el cierre de los comercios. Salas de cine incluidas. Estos lugares, llenos de historias, dejaron de llevar a cabo su actividad. Ahora, meses después y con la entrada de nuestro país en la llamada “nueva normalidad”, los proyectores vuelven a ponerse a punto para recibir al público. Y, qué mejor que volver a las salas que con una película que es, en su base, un auténtico canto de amor al cine. 

Cinema Paradiso, dirigida por Giuseppe Tornatore, podrá verse en 150 salas de cine de nuestro país a partir de este viernes, 26 de junio. 

Cadenas como Yelmo, Kinépolis, Renoir, Yelmo, Odeon y otras acogerán en A Coruña, Álava, Alicante, Almería, Asturias, Ávila, Baleares, Barcelona, Burgos, Cádiz, Castellón, Ciudad Real, Córdoba, Cuenca, Girona, Granada, Guadalajara, Guipúzcoa, Huelva, Huesca, Jaén, La Rioja, Las Plamas, León, Lleida, Lugo, Madrid, Málaga, Murcia, Navarra, Ourense, Palencia, Pontevedra, Santa Cruz de Tenerife, Segovia, Sevilla, Soria, Tarragona, Toledo, Valencia, Valladolid, Vizcaya, Zamora, Zaragoza y Andorra la proyección de Cinema Paradiso. ', '1994-12-24', '2006-03-28', 'Cinema Paradiso podrá verse en 150 cines a partir del viernes 26 de junio');


--
-- TOC entry 3141 (class 0 OID 17390)
-- Dependencies: 205
-- Data for Name: permiso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.permiso VALUES (1, 'dar privilegios a otros usuarios');
INSERT INTO public.permiso VALUES (2, 'crear peliculas');
INSERT INTO public.permiso VALUES (3, 'crear series');
INSERT INTO public.permiso VALUES (4, 'crear documentales');
INSERT INTO public.permiso VALUES (5, 'dar de baja peliculas');
INSERT INTO public.permiso VALUES (6, 'dar de baja series');
INSERT INTO public.permiso VALUES (7, 'dar de baja documentales');
INSERT INTO public.permiso VALUES (8, 'modificar peliculas');
INSERT INTO public.permiso VALUES (9, 'modificar series');
INSERT INTO public.permiso VALUES (10, 'modificar documentales');
INSERT INTO public.permiso VALUES (11, 'crear noticias');
INSERT INTO public.permiso VALUES (12, 'modificar noticias');
INSERT INTO public.permiso VALUES (13, 'dar de baja noticias');


--
-- TOC entry 3147 (class 0 OID 17560)
-- Dependencies: 211
-- Data for Name: permiso_usuario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.permiso_usuario VALUES (1, 2, 12, '2021-02-28');
INSERT INTO public.permiso_usuario VALUES (2, 10, 8, '2020-01-03');
INSERT INTO public.permiso_usuario VALUES (3, 4, 3, '2020-06-11');
INSERT INTO public.permiso_usuario VALUES (4, 1, 3, '2020-02-07');
INSERT INTO public.permiso_usuario VALUES (5, 11, 20, '2021-03-10');
INSERT INTO public.permiso_usuario VALUES (6, 5, 13, '2019-12-06');
INSERT INTO public.permiso_usuario VALUES (7, 9, 8, '2021-03-24');
INSERT INTO public.permiso_usuario VALUES (8, 2, 2, '2019-08-18');
INSERT INTO public.permiso_usuario VALUES (9, 1, 1, '2019-12-21');
INSERT INTO public.permiso_usuario VALUES (10, 8, 3, '2019-09-30');


--
-- TOC entry 3143 (class 0 OID 17398)
-- Dependencies: 207
-- Data for Name: reparto; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.reparto VALUES (19, 'Alex ', 'Gibney', '', 'Philip Alexander Gibney (/ ˈɡɪbni /; nacido el 23 de octubre de 1953) es un director y productor estadounidense de documentales. En 2010, la revista Esquire dijo que Gibney "se está convirtiendo en el documentalista más importante de nuestro tiempo". [1]', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Alex_Gibney_2011_Shankbone.JPG/220px-Alex_Gibney_2011_Shankbone.JPG');
INSERT INTO public.reparto VALUES (3, 'Chris ', 'Columbus', '', ' Chris nació en una familia ítalo-estadounidense en Spangler, Pensilvania y se crio en Youngstown, Ohio, hijo de Mary Irene una trabajadora de fábrica y Alex Michael Columbus un minero.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Chris_Columbus.jpg/200px-Chris_Columbus.jpg');
INSERT INTO public.reparto VALUES (4, 'Daniel ', 'Radcliffe', '', 'Daniel Jacob Radcliffe (Fulham, Londres; 23 de julio de 1989) es un actor británico, principalmente conocido por haber protagonizado la saga cinematográfica de Harry Potter.1​2​3​ Fundamentalmente por ello, ha recaudado una fortuna de 23 millones de libras esterlinas (algo más de 27 millones de euros), parte de la cual ha destinado a organizaciones benéficas', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Daniel_Radcliffe_SDCC_2014.jpg/220px-Daniel_Radcliffe_SDCC_2014.jpg');
INSERT INTO public.reparto VALUES (10, 'Al ', 'Pacino', '', 'Alfredo James Pacino (Nueva York; 25 de abril de 1940), más conocido como Al Pacino, es un actor, guionista y director estadounidense de cine y teatro. Es uno de los actores de teatro y cine del siglo xx que más reconocimientos ha recibido.5​ Su carrera ha abarcado cincuenta años durante los cuales ha obtenido numerosos premios y honores, incluyendo los premios Óscar, Emmy, Globo de Oro, SAG, BAFTA, Tony, un reconocimiento a su carrera por parte del American Film Institute, el Premio Cecil B. DeMille y la Medalla Nacional de las Artes. Es además uno de los pocos actores que ha obtenido los premios Óscar, Emmy y Tony como actor, conjunto conocido como la «triple corona de la actuación».', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Al_Pacino.jpg/220px-Al_Pacino.jpg');
INSERT INTO public.reparto VALUES (16, 'Scottie ', 'Pippen', '', 'Scotty Maurice Pippen1​2​ (nacido el 25 de septiembre de 1965 en Hamburg, Arkansas), comúnmente escrito como Scottie Pippen, es un exjugador de baloncesto estadounidense. Aunque su polivalencia le permitía ocupar distintas posiciones en el campo, jugaba preferentemente en la posición de alero.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Lipofsky_Pippen.jpg/245px-Lipofsky_Pippen.jpg');
INSERT INTO public.reparto VALUES (5, 'Elizabeth ', 'Banks', '', 'Elizabeth Irene Mitchell2​3​ (Pittsfield, Massachusetts, 10 de febrero de 1974) conocida como Elizabeth Banks, es una actriz, directora y productora estadounidense. Hizo su debut en 1998 como Vicki en el filme Surrender Dorothy. Se destaca principalmente por sus papeles en Scrubs, Modern Family, Atrápame si puedes, What to Expect When You''re Expecting, The 40-Year-Old Virgin, W, Spider-Man, Pitch Perfect y Los juegos del hambre.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Elizabeth_Banks_Sept_2014_%28cropped%29.jpg/250px-Elizabeth_Banks_Sept_2014_%28cropped%29.jpg');
INSERT INTO public.reparto VALUES (8, 'Matt ', 'Damon', '', 'Matthew Paige Damon (Cambridge, Massachusetts, 8 de octubre de 1970) es un actor, guionista y filántropo estadounidense. Su carrera se inició a raíz del éxito de la película Good Will Hunting (1997), a partir de un guion escrito con su amigo Ben Affleck. Fue ganador del premio Óscar al mejor guion original por Good Will Hunting y nominado a mejor actor por el mismo trabajo.1​', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Matt_Damon_TIFF_2015.jpg/250px-Matt_Damon_TIFF_2015.jpg');
INSERT INTO public.reparto VALUES (9, 'Sofia ', 'Coppola', '', 'Sofia Carmina Coppola (Nueva York; 14 de mayo de 1971) es una directora, actriz, productora y guionista de cine estadounidense.2​ En 2003 ganó un Premio Óscar a mejor guion original por Lost in Translation, además de ser la tercera mujer en la historia en ser nominada a mejor director por la Academia de los Óscar. Es hija de Francis Ford Coppola.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Sofia_Coppola_Cannes_2013.jpg/250px-Sofia_Coppola_Cannes_2013.jpg');
INSERT INTO public.reparto VALUES (11, 'Andy ', 'Serkis', '', 'Andrew Clement "Andy" Serkis (Ruislip Manor, Middlesex; 20 de abril de 1964) es un actor, director de cine y escritor británico. Conocido por haber interpretado a Gollum en las trilogías cinematográficas de El Señor de los Anillos y El hobbit y a otros personajes a través de la técnica de captura de movimiento. Su último trabajo similar fue la interpretación del líder supremo de la Primera Orden, Snoke, en Star Wars: Episodio VII - El despertar de la Fuerza, personaje que retomó en Star Wars: Episodio VIII - Los últimos Jedi.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Andy_Serkis_by_Gage_Skidmore_2.jpg/250px-Andy_Serkis_by_Gage_Skidmore_2.jpg');
INSERT INTO public.reparto VALUES (12, 'Robert ', 'Downey Jr.', '', 'Robert John Downey Jr. (Nueva York, 4 de abril de 1965) es un actor, actor de voz, productor y cantante estadounidense. Inició su carrera como actor a temprana edad apareciendo en varios filmes dirigidos por su padre, Robert Downey Sr., y en su infancia estudió actuación en varias academias de Nueva York. Se mudó con su padre a California, pero abandonó sus estudios para enfocarse completamente en su carrera.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg/220px-Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg');
INSERT INTO public.reparto VALUES (1, 'Martyn ', 'Burke', '', 'Nacido en Hamilton, Ontario, de Freda y Les Burke, que emigró de Inglaterra a Canadá durante la Segunda Guerra Mundial como parte de la Autoridad Militar Civil Británica, Martyn Burke se graduó de la Royal York High School en Toronto, Ontario. Asistió a la Universidad McMaster, donde jugó en el equipo de fútbol, los Merodeadores McMaster, y se graduó con un título en Economía. Después de una breve temporada trabajando en la programación de televisión para un importante anunciante, Burke pagó su propio camino a Vietnam para trabajar como periodista independiente y fotógrafo que cubría la guerra.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Martyn_Burke_at_Peabody_Awards_in_2013.jpg/220px-Martyn_Burke_at_Peabody_Awards_in_2013.jpg');
INSERT INTO public.reparto VALUES (13, 'Craig ', 'Mazin', '', 'A mitad de los años 90, comienza a trabajar como supervisor de los guiones y como productor de varias películas de la compañía Walt Disney.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Jared_Harris_2014.jpg/220px-Jared_Harris_2014.jpg');
INSERT INTO public.reparto VALUES (7, 'Doug ', 'Liman', '', 'Liman comenzó a hacer cortos cuando aún estaba en la secundaria. Cursó estudios en la Universidad de Brown y asistió al programa de postgrado en la Universidad del Sur de California, donde fue explotado frente a su primer proyecto en 1993, la comedia- thriller Cuerpo estudiantil.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Doug_Liman_avp_2014.jpg/269px-Doug_Liman_avp_2014.jpg');
INSERT INTO public.reparto VALUES (14, 'Jared ', 'Harris', '', 'Inició su carrera cinematográfica como director en 1983 con Darkmoor, un largometraje nunca finalizado que realizó para la Universidad Duke, donde estudiaba una licenciatura en Bellas Artes.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Jared_Harris_2014.jpg/220px-Jared_Harris_2014.jpg');
INSERT INTO public.reparto VALUES (23, 'Daveed ', 'Diggs', '', 'Daveed Daniele Diggs1​ (nacido el 24 de enero de 1982) es un actor, rapero y cantante estadounidense. Es el vocalista del grupo de hip hop experimental Clipping y en 2015 interpretó los papeles de Marqués de La Fayette y Thomas Jefferson en el musical Hamilton, por el cual ganó un premio Grammy y un premio Tony. Desde que dejó Hamilton en 2016, ha tenido un papel recurrente en la serie de televisión Black-ish, y co-protagonizó la película Wonder. Diggs también escribió y protagonizó la película de 2018 Blindspotting, la cual le consiguió una nominación para el premio Independent Spirit al mejor actor.', 'https://upload.wikimedia.org/wikipedia/commons/8/89/Daveed_Diggs%2C_White_House%2C_March_2016.png');
INSERT INTO public.reparto VALUES (22, 'Emma ', 'Bones', '', 'Emma Bones es una actriz noruega. Ella interpreta a Gry Isungset en Ragnarok de Netflix.', 'https://screenfiction.org/content/image/0/53/895/5dbb973f-full.webp');
INSERT INTO public.reparto VALUES (24, 'Jennifer', 'Connelly', '', 'Jennifer Lynn Connelly (Cairo, Nueva York, 12 de diciembre de 1970) es una actriz estadounidense ganadora del Óscar y el Globo de Oro por su papel en A Beautiful Mind. Asimismo, es reconocida por sus interpretaciones en películas como Labyrinth (1986), Requiem for a Dream (2000), Hulk (2003), Casa de arena y niebla (2003) y Diamante de sangre (2006).', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Jennifer_Connelly_2012.jpg/250px-Jennifer_Connelly_2012.jpg');
INSERT INTO public.reparto VALUES (25, 'Ridley', 'Scott', '', 'Ridley Scott Kt (South Shields, Inglaterra; 30 de noviembre de 1937)1​ es un cineasta británico. Su filmografía va desde su despegue comercial con la película de terror y ciencia ficción Alien (1979), hasta otros trabajos como el filme distópico neo-noir Blade Runner (1982), la road movie Thelma y Louise (1991), el péplum y drama histórico ganador del Óscar a la mejor película Gladiator (2000) o el film de ciencia ficción The Martian (2015).

Comenzando su carrera en la publicidad, donde perfeccionó sus habilidades cinematográficas al hacer mini-películas creativas para comerciales de televisión, el trabajo de Scott es conocido por su estilo visual altamente concentrado y atmosférico.2​3​4​ A pesar de que sus películas varían ampliamente en ambientación y época, frecuentemente exhiben imágenes memorables de entornos urbanos, ya sea en el Antiguo Egipto (Exodus: Gods and Kings), el siglo II en Roma (Gladiador), del Jerusalén del siglo XII (Kingdom of Heaven), la Inglaterra medieval (Robin Hood), el contemporáneo Mogadiscio (Black Hawk Down), los paisajes futuros de Blade Runner o los planetas distantes en Alien, Prometheus, The Martian y Alien: Covenant. Varias de sus películas también son conocidas por sus fuertes personajes femeninos.5​', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/NASA_Journey_to_Mars_and_%E2%80%9CThe_Martian%22_%28201508180030HQ%29.jpg/250px-NASA_Journey_to_Mars_and_%E2%80%9CThe_Martian%22_%28201508180030HQ%29.jpg');
INSERT INTO public.reparto VALUES (26, 'Noomi', 'Rapace', '', 'Hilda Noomi Rapace (Hudiksvall, 28 de diciembre de 1979) es una actriz sueca, conocida por interpretar a Lisbeth Salander en las adaptaciones suecas de la saga Millennium: Hombres que odian a las mujeres, La chica que soñaba con un fósforo y un bidón de gasolina, y La reina en el palacio de las corrientes de aire.1​También es conocida por interpretar a Madame Simza Heron en Sherlock Holmes: juego de sombras (2011), Elizabeth Shaw en la película de ciencia ficción de Ridley Scott, Prometheus (2012), Nadia en The Drop (2014) y Raisa Demidova en Child 44 (2015).', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Noomi_Rapace_by_Gage_Skidmore.jpg/250px-Noomi_Rapace_by_Gage_Skidmore.jpg');
INSERT INTO public.reparto VALUES (27, 'Roman', 'Polański', '', 'Roman Polański (en polaco: Rajmund Roman Thierry Polański; París, 18 de agosto de 1933) es un director de cine, productor, guionista y actor franco-polaco1​ de origen judío. Reconocido como uno de los cineastas más importantes de la segunda mitad del siglo XX y principios del XXI, es superviviente del Holocausto (su madre fue asesinada en Auschwitz). Fue estudiante en la Escuela de cine de Łódź. Su primer largometraje, El cuchillo en el agua (1962), fue seleccionado para competir por el Óscar a mejor película en habla no inglesa. Emigró a continuación a Reino Unido, donde pudo realizar Repulsión (1965), Callejón sin salida (1966), que ganó el Oso de Oro en el Festival de Berlín, y El baile de los vampiros (1967).', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Roman_Polanski_Cannes_2013.jpg/220px-Roman_Polanski_Cannes_2013.jpg');
INSERT INTO public.reparto VALUES (18, 'Denis ', 'Goldberg', '', 'Denis Theodore Goldberg (Ciudad del Cabo, 11 de abril de 1933 - Ibidem., 29 de abril de 2020)1​ fue un activista social sudafricano, activo en la lucha contra el apartheid y que fue encarcelado, junto con otros miembros clave del movimiento contra el apartheid, en la Operación Mayibuye a principios de los 60.2​1​', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/DenisGoldbergRJL.JPG/220px-DenisGoldbergRJL.JPG');
INSERT INTO public.reparto VALUES (21, 'Herman ', 'Tommeraas', '', 'Herman Tømmeraas (2 de abril de 1997) es un actor, bailarín y cantante noruego. Es conocido por interpretar el papel de Christoffer Schistad en la serie noruega Skam, así también como por su actividad en las redes sociales como Vine e Instagram. Previamente, protagonizó la serie Stick!, donde interpretó a Truls tocando el violonchelo.', 'https://m.media-amazon.com/images/M/MV5BYTc2OThjY2QtNWQ4Mi00OGVjLWE5YTQtMWJjZGUxMDIyMDZmXkEyXkFqcGdeQXVyMTEyMTQ1NDk2._V1_.jpg');
INSERT INTO public.reparto VALUES (15, 'Michael ', 'Jordan', '', 'Michael Jeffrey Jordan (Nueva York; 17 de febrero de 1963) es un exjugador de baloncesto estadounidense. En la actualidad es propietario del equipo de la NBA los Charlotte Hornets.2​ Es considerado por la mayoría de aficionados y especialistas como el mejor jugador de baloncesto de todos los tiempos.3​ Se retiró definitivamente en 2003 en los Washington Wizards, tras haberlo hecho en dos ocasiones anteriores, en 1993 y 1999, después de haber jugado 13 temporadas en los Chicago Bulls', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Michael_Jordan_in_2014.jpg/245px-Michael_Jordan_in_2014.jpg');
INSERT INTO public.reparto VALUES (28, 'Adrien', 'Brody', '', 'Adrien Brody (Nueva York; 14 de abril de 1973) es un actor, productor y artista estadounidense. Ganó el premio Óscar a mejor actor por su actuación en la película El pianista en el 2002, convirtiéndose en el actor más joven de la historia en haber ganado en esa categoría (tenía 29 años). Por esta misma película ganó el Premio César, lo cual lo convirtió en el único actor estadounidense que ha recibido este premio.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Adrien_Brody_Cannes_2017.jpg/220px-Adrien_Brody_Cannes_2017.jpg');
INSERT INTO public.reparto VALUES (29, 'Christian', 'Rivers', '', 'Christian Rivers es un artista de storyboard de Nueva Zelanda, supervisor de efectos visuales, técnico de efectos especiales y director. Conoció a Peter Jackson por primera vez cuando tenía 17 años, [1] e hizo un guión de todas las películas de Jackson desde Braindead. Hizo su debut como director en la adaptación cinematográfica de Mortal Engines, [2] y planeó una nueva versión de The Dam Busters, [3] ambos producidos por Peter Jackson.', 'https://www.sectorcine.com/wp-content/uploads/sectorcine/lossy/cast/christian-rivers-perfil.jpg');
INSERT INTO public.reparto VALUES (30, 'Hera', 'Hilmar', '', 'Hera Hilmarsdóttir (n. 27 de diciembre de 1988), mejor conocida como Hera Hilmar, es una actriz islandesa, conocida por sus papeles en Veðramót, por haber dado vida a Vanessa Moschella en la serie Da Vincis Demons y por su rol como Hester Shaw en la película Mortal Engines.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Hera_Hilmar_on_MTV_Movies.jpg/220px-Hera_Hilmar_on_MTV_Movies.jpg');
INSERT INTO public.reparto VALUES (31, 'Angelina', 'Jolie', '', 'Angelina Jolie Voight (Los Ángeles, California; 4 de junio de 1975) es una actriz, modelo, filántropa, actriz de voz, directora, guionista y activista por los derechos de las mujeres, de nacionalidad estadounidense y camboyana. A lo largo de su carrera, Jolie ha recibido varios reconocimientos por sus logros actorales, entre ellos dos Premios Óscar (uno a mejor actriz de reparto y el premio humanitario), tres Globos de Oro y dos Premios del Sindicato de Actores. Desde 2012 es Enviada Especial del Alto Comisionado de las Naciones Unidas para los Refugiados.1​ En 2016 la London School of Economics anunció que Jolie sería profesora de un nuevo tipo de máster sobre «Las mujeres, la paz y la seguridad» con el objetivo de promover la igualdad de género y ayudar a las mujeres afectadas por los conflictos de todo el mundo.2', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Angelina_Jolie_2_June_2014_%28cropped%29.jpg/220px-Angelina_Jolie_2_June_2014_%28cropped%29.jpg');
INSERT INTO public.reparto VALUES (32, 'Elle', 'Fanning', '', 'Mary Elle Fanning (Conyers, Georgia; 9 de abril de 1998), más conocida como Elle Fanning, es una actriz y modelo estadounidense. Es la hermana menor de la también actriz, Dakota Fanning.

Fanning apareció por primera vez en el medio cinematográfico cuando tenía dos años de edad, interpretando la versión joven del personaje de su hermana en I am Sam (2001). Su primer gran papel, sin Dakota, fue en la película de 2003, Daddy Day Care, compartiendo el reparto con actores como Eddie Murphy. Su película, Somewhere, del año 2010, le valió un galardón al León de Oro en la edición del Festival Internacional de Cine de Venecia.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Elle_Fanning_Cannes_2016.jpg/200px-Elle_Fanning_Cannes_2016.jpg');
INSERT INTO public.reparto VALUES (33, 'Alejandro', 'González Iñárritu', '', 'Alejandro González Iñárritu (Ciudad de México, 15 de agosto de 1963) es un cineasta, guionista, productor, locutor y compositor mexicano, y ganador de cinco Premios Óscar. Es uno de los cineastas mexicanos más aclamados y reconocidos que trabajan hoy en día, conocido por contar historias conmovedoras e internacionales sobre la condición humana.[cita requerida] Sus proyectos han sido aclamados y recibidos numerosos reconocimientos', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Alejandro_Gonz%C3%A1lez_I%C3%B1arritu-2.jpg/220px-Alejandro_Gonz%C3%A1lez_I%C3%B1arritu-2.jpg');
INSERT INTO public.reparto VALUES (34, 'Leonardo', 'DiCaprio', '', 'Leonardo Wilhelm DiCaprio1​ (Los Ángeles, 11 de noviembre de 1974)2​, o simplemente Leo DiCaprio, es un actor, productor de cine, productor de televisión, ambientalista y guionista estadounidense. Ha recibido numerosos premios entre los que destacan, un Óscar al mejor actor y un premio BAFTA al mejor actor por su actuación en El renacido de 2016, dos Globos de Oro al mejor actor de drama por sus actuaciones en El aviador en el 2005, en El renacido en el 2016, y un Globo de Oro al mejor actor de comedia o musical por El lobo de Wall Street en el 2014. Adicionalmente, ha ganado el premio del Sindicato de Actores, el Oso de Plata y un Premio Chlotrudis', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Leonardo_Dicaprio_Cannes_2019.jpg/220px-Leonardo_Dicaprio_Cannes_2019.jpg');
INSERT INTO public.reparto VALUES (35, 'Vincent', 'DOnofrio', '', 'Vincent DOnofrio (Brooklyn, Nueva York, 30 de junio de 1959) es un actor y productor de cine estadounidense.1​ Se dio a conocer por su papel del Soldado Leonard "Gomer Pyle" ("Patoso", en el doblaje español castellano) Lawrence en Full Metal Jacket, luego por ser el Detective Robert Goren en Law & Order: Criminal Intent y como el antagonista principal de la serie Daredevil.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Vincent_Utah.jpg/250px-Vincent_Utah.jpg');
INSERT INTO public.reparto VALUES (36, 'Matthew', 'Modine', '', 'Matthew Modine es el más joven de siete hermanos y aunque nació en Loma Linda, California, sus primeros años los pasó en Utah. Su padre, Mark, fue mánager de teatro. Cuando Modine tenía tan sólo diez años, vio un documental de cómo se hizo Oliver!. Inspirado por los jóvenes actores de la película de Carol Reed, Modine decidió hacerse actor. Encontró una escuela de baile en Provo, Utah y comenzó a hacer clases de baile', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Matthew_Modine_by_Gage_Skidmore.jpg/250px-Matthew_Modine_by_Gage_Skidmore.jpg');
INSERT INTO public.reparto VALUES (20, 'Peter ', 'Coyote', '', 'Coyote estudió filología en la Universidad de San Francisco. En 1965, colaboró con la San Francisco Mime Troupe, un colectivo de carácter militante, donde ejerció como escritor, intérprete y director teatral. Aparte del inglés, habla el francés fluidamente, pero con algo de acento, también algo de español con fuerte acento estadounidense. Debido a eso, en su film Bon voyage, Jean-Paul Rappeneau puso a Coyote en el papel de un periodista inglés que trabajaba para los nazis. Peter Coyote tiene ancestros judíos sefardíes y askenazis.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/010_I_AM_FISHEAD.jpg/220px-010_I_AM_FISHEAD.jpg');
INSERT INTO public.reparto VALUES (6, 'Jennifer', 'Lawrence', '', 'Jennifer Shrader Lawrence nació el 15 de agosto de 1990 en Louisville, Kentucky, hija de Gary, un obrero y Karen, una empleada de un campamento de verano. Tiene dos hermanos mayores, Ben y Blaine,​ y fue criada por su madre de la misma forma en la que crio a sus hijos varones.​ Karen no le permitía a su hija jugar con otras niñas en su etapa preescolar ya que la consideraba «demasiado ruda» para ellas.​ Lawrence cursó su educación media en la escuela Kammerer en Louisville.​', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Jennifer_Lawrence_SDCC_2015_X-Men.jpg/220px-Jennifer_Lawrence_SDCC_2015_X-Men.jpg');
INSERT INTO public.reparto VALUES (37, 'Susanne', 'Bier', '', 'Bier fue una destacada participante del movimiento Dogma 95, bajo cuyos postulados realizó películas como Elsker dig for evigt1​ (Te quiero para siempre, 2002). Más tarde, realizó el filme Hermanos (Brødre) en 2004, donde continuaría empleando una estética cercana a la del dogma, pero sin seguir al pie de la letra todas las reglas del movimiento. En 2006, filmó Efter brylluppet (Después de la boda), producción nominada al Óscar como mejor película en lengua extranjera. En el 2007 estrenó su producción Things We Lost in the Fire (Cosas que perdimos en el fuego).2​

En 2010, dirigió la película Hævnen (En un mundo mejor), con la que ganó los premios Globo de Oro 2011 como mejor película en lengua no inglesa y el Óscar de 2010 como mejor película de habla no inglesa.3​', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Susanne_Bier_2013_%28cropped%29.jpg/220px-Susanne_Bier_2013_%28cropped%29.jpg');
INSERT INTO public.reparto VALUES (38, 'Sandra', 'Bullock', '', 'Sandra Annette Bullock (Condado de Arlington, Virginia; 26 de julio de 1964) es una actriz y productora estadounidense de cine y televisión. Es conocida por su participación en películas como Speed, Miss Congeniality, The Proposal, Gravity, Oceans 8 o The Blind Side, por la que fue galardonada con el Óscar a la mejor actriz, el Globo de Oro a la mejor actriz en drama, el Premio del Sindicato de Actores a la mejor actriz protagonista y el Premio de la Crítica Cinematográfica a la mejor actriz.3​4​5​6​ También intervino en Crash, largometraje ganador del premio a mejor película en la 78ª edición de los Premios Óscar.7​

Según la publicación Forbes fue la actriz mejor pagada en 2010 y 2013 con unas ganancias calculadas en 56 millones de dólares y 38 millones de Euros respectivamente', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Sandra_Bullock_%289192365016%29_%28cropped%29.jpg/220px-Sandra_Bullock_%289192365016%29_%28cropped%29.jpg');
INSERT INTO public.reparto VALUES (39, 'Sigourney', 'Weaver', '', 'Susan Alexandra Weaver, más conocida como Sigourney Weaver (Manhattan, Nueva York, 8 de octubre de 1949), es una actriz y productora estadounidense de cine, televisión y teatro. Ha sido candidata a los Premios Óscar y a los Premios del Sindicato de Actores.2​ Ha sido ganadora de dos Globo de Oro en las categorías de mejor actriz en drama y mejor actriz de reparto, y de un BAFTA a la mejor actriz de reparto.2​ Es conocida por sus intervenciones como la teniente Ripley en varias películas de la saga de Alien: Alien, el octavo pasajero (1979), Aliens, el regreso (1986), Alien 3 (1992) y Alien Resurrection (1997). Ha participado también en otras películas tan recordadas como Ghostbusters (1984), Gorilas en la niebla (1988), Working Girl (1988), Copycat (1994), La tormenta de hielo (1997), Blancanieves: Un Cuento de Terror (1997), The Village (2004) y Avatar (2009). También es conocida como la «reina de la ciencia-ficción».', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Sigourney_Weaver_by_Gage_Skidmore_4.jpg/250px-Sigourney_Weaver_by_Gage_Skidmore_4.jpg');
INSERT INTO public.reparto VALUES (40, 'Kimberly', 'Peirce', '', 'Kimberly Peirce nació el 8 de septiembre de 1967 en Harrisburg, Pennsylvania, Estados Unidos. Es directora y escritora, conocida por Boys Dont Cry (1999), Ausente (2008) y Carrie (2013). Ver biografía completa »', 'https://ep00.epimg.net/cultura/imagenes/2013/12/05/actualidad/1386267654_724869_1386270446_noticia_normal.jpg');
INSERT INTO public.reparto VALUES (17, 'Andrew ', 'Mlangeni', '', 'Nació en Soweto. Después de tener que abandonar sus estudios debido a la pobreza, después de 1946 experimentó la explotación de los trabajadores como trabajador de una fábrica. Cuando trabajaba como conductor de autobús, participó activamente en una huelga por mejores condiciones de trabajo y un salario digno, y en 1951 se unió a la Liga Juvenil del Congreso Nacional Africano (ANCYL) y, en 1954, al Congreso Nacional Africano (ANC). [2 ]', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Andrew_Mlangeni_Matthew_Willman_Portrait.jpg/220px-Andrew_Mlangeni_Matthew_Willman_Portrait.jpg');
INSERT INTO public.reparto VALUES (41, 'Chloë', 'Moretz', '', 'Chloë Grace Moretz (Atlanta, Georgia; 10 de febrero de 1997) es una actriz de cine y modelo estadounidense. Sus primeras actuaciones las realizó a los siete años en series y películas como The Amityville Horror (2005), (500) Days of Summer (2009), Diary of a Wimpy Kid, Mujeres desesperadas o Dirty Sexy Money. Con estas producciones fue nominada a varios Premios Young Artist.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Chloe_Moretz_2018_2.jpg/250px-Chloe_Moretz_2018_2.jpg');
INSERT INTO public.reparto VALUES (42, 'Quentin', 'Tarantino', '', 'Quentin Jerome Tarantino (Knoxville, Tennessee; 27 de marzo de 1963) es un director, productor, guionista, editor y actor de cine y televisión estadounidense.

Su carrera comenzó a finales de la década de 1980, cuando escribió y dirigió My Best Friends Birthday, cuyo guion sería la base del argumento de la película True Romance —Tony Scott, 1993—. En 1992 inició su carrera como cineasta independiente con el estreno de Reservoir Dogs, considerada por la revista Empire como «la mejor película independiente de todos los tiempos».[cita requerida] Su popularidad no hizo sino crecer con su segundo largometraje, Pulp Fiction (1994), una comedia negra de historias cruzadas que se convirtió en un enorme éxito de crítica y público. El semanario Entertainment Weekly la designó como la mejor película estrenada entre 1983 y 20081​ y algunos críticos del British Film Institute la han colocado en el número 127 de las mejores películas de todos los tiempos.2​ En Jackie Brown (1997) Tarantino rinde homenaje al género blaxploitation.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Quentin_Tarantino_by_Gage_Skidmore.jpg/220px-Quentin_Tarantino_by_Gage_Skidmore.jpg');
INSERT INTO public.reparto VALUES (43, 'Daryl', 'Hannah', '', 'Daryl Christine Hannah (Chicago, Illinois; 3 de diciembre de 1960) es una actriz estadounidense.

Hizo su debut en la pantalla en 1978. Saltó a la fama tras aparecer en films como Blade Runner (1982), donde da vida a la replicante Pris, o la comedia Splash (1984), en la que interpreta a la sirena Madison. Ha sido estrella en numerosas producciones de Hollywood durante los años 1980. En el año 2003 destacó en su papel de la asesina Elle Driver en Kill Bill, después de estar apartada de roles principales durante varios años.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Daryl_Hannah_by_Dana_Fineman.jpg/250px-Daryl_Hannah_by_Dana_Fineman.jpg');
INSERT INTO public.reparto VALUES (44, 'Gary', 'Ross', '', 'Gary Ross (n. Los Ángeles, California; 3 de noviembre de 1956) es un escritor, productor y director de cine estadounidense. Ross ganó fama al ser el director de la primera entrega de la saga de Los juegos del hambre. Es hijo del también director, escritor y productor Arthur A. Ross, quien es conocido por haber escrito varias cintas entre 1950 y 1980, principalmente Creature from the Black Lagoon, de 1954, y The Great Race (La carrera del siglo), de 1965.', 'https://www.sectorcine.com/wp-content/uploads/sectorcine/lossy/cast/gary-ross-perfil.jpg');
INSERT INTO public.reparto VALUES (45, 'Matthew', 'McConaughey', '', 'Matthew David McConaughey (en inglés /məˈkɒnəheɪ/) (Uvalde, Texas, 4 de noviembre de 1969) es un actor y productor de cine y televisión estadounidense. Es ganador de un premio Óscar, un Globo de Oro y un SAG. Conocido por su participación en películas como Dazed and Confused (1993), A Time to Kill (1996), Contact (1997), Frailty (2001), We Are Marshall (2006), Killer Joe (2011), The Lincoln Lawyer (2011), Bernie (2012), Mud (2012), The Wolf of Wall Street (2013), Dallas Buyers Club (2013), Interstellar (2014) y Free State of Jones (2016). De los papeles televisivos que ha desempeñado, es especialmente reconocido por su interpretación de Rustin Rust Cohle, un detective de la Policía Estatal de Luisiana en la aclamada serie True Detective, de HBO', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Sing_07_%2829144312374%29.jpg/250px-Sing_07_%2829144312374%29.jpg');
INSERT INTO public.reparto VALUES (46, 'Harold', 'Ramis', '', 'Harold Allen Ramis (Chicago, Illinois, 21 de noviembre de 1944 - ibídem, 24 de febrero de 2014)1​ fue un actor, guionista y director cinematográfico estadounidense.

Su carrera como actor se caracteriza por haber interpretado a Egon Spengler en las películas de Los cazafantasmas. Aunque como guionista y director es bien conocido por dirigir Analyze This, Analyze That y Groundhog Day, entre otras películas.

Ramis falleció el 24 de febrero de 2014 en su residencia de Chicago, a los 69 años de edad. El fallecimiento se debió a complicaciones derivadas de una vasculitis inflamatoria autoinmune, una rara enfermedad que padecía desde hacía cuatro años. Su salud estaba tan deteriorada, que incluso tuvo que volver a aprender a caminar.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/HaroldRamisOct2009.jpg/220px-HaroldRamisOct2009.jpg');
INSERT INTO public.reparto VALUES (47, 'Bill', 'Murray', '', 'William James "Bill" Murray (Evanston, Illinois, 21 de septiembre de 1950) es un actor y humorista estadounidense.2​ Obtuvo reconocimiento en el programa de humor Saturday Night Live, actuación que le valió obtener un premio Emmy, y más tarde protagonizó películas cómicas como Caddyshack (1980), Los Cazafantasmas (1984) y Groundhog Day (1993). Obtuvo elogios de la crítica por su actuación en películas como Lost in Translation (2003), por la cual fue nominado al Óscar, y en producciones dirigidas por Wes Anderson como Rushmore (1998), The Royal Tenenbaums (2001) y The Life Aquatic with Steve Zissou (2004).3​

Ha sido nominado al Globo de Oro por sus papeles en Los Cazafantasmas, Rushmore (1998), Hyde Park on Hudson (2012), St. Vincent (2014) y en la miniserie de HBO Olive Kitteridge (2014), por la que ganó su segundo premio Primetime Emmy. También recibió el premio Mark Twain en 2016 en honor a su carrera como comediante.4​ Su estilo de comedia es reconocido como humor seco, presentado sin variación de emociones o lenguaje corporal.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Bill_Murray_2018.jpg/250px-Bill_Murray_2018.jpg');
INSERT INTO public.reparto VALUES (48, 'Tom', 'Hooper ', '', 'Thomas George "Tom" Hooper (Londres, Inglaterra; 5 de octubre de 1972) es un director, guionista y productor cinematográfico y de televisión británico. Su película El discurso del rey ha ganado un premio Óscar.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/TomHopper10TIFF.jpg/250px-TomHopper10TIFF.jpg');
INSERT INTO public.reparto VALUES (49, 'Eddie', 'Redmayne', '', 'Redmayne asistió al Eton College y posteriormente estudió historia del arte en el Trinity College de Cambridge, en donde se graduó en 2003. Actuó con el teatro National Youth Music y realizó su debut profesional en la obra Noche de reyes, en el Middle Temple Hall en 2002.

Además, ganó el premio al actor revelación en los premios Evening Standard de 2004 por su actuación en la obra de Edward Albee, La cabra o ¿quién es Sylvia? Fue nominado en la misma categoría en los premio Olivier. También obtuvo el premio al actor revelación en los premios Critics Circle Theatre de 2005.3​ Asimismo, apareció en la miniserie de la BBC, Tess of the DUrbervilles interpretando a Angel Clare. En 2008 trabajó como modelo de la casa de ropa Burberry.4​ Y en 2012 fue imagen de la campaña de la marca junto con la modelo Cara Delevigne5​(ambas campañas realizadas por Mario Testino) En 2010 ganó el premio Tony al mejor actor destacado en una obra de teatro por la obra Red.6​ Además participó en la serie Los pilares de la Tierra, donde interpretó a Jack Jackson.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Eddie_Redmayne_%2843670702522%29.jpg/220px-Eddie_Redmayne_%2843670702522%29.jpg');
INSERT INTO public.reparto VALUES (50, 'Peter', 'Farrelly', '', 'Junto con su hermano Bobby formó el reconocido dúo de los hermanos Farrelly, famosos por dirigir y producir comedias estrafalarias y ligeramente ofensivas como Dumb and Dumber, Shallow Hal, Me, Myself and Irene, Theres Something About Mary y la versión de 2007 de The Heartbreak Kid.2​ Peter dirigió por su propia cuenta la película dramática de 2018 Green Book, la cual ganó el premio de la audiencia en el Festival Internacional de Cine de Toronto en 2018.3​ Por su desempeño en la película ganó un Globo de Oro en la categoría de mejor guion y fue galardonado con un Premio Óscar por mejor película y mejor guion original.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Peter_Farrelly_at_the_2009_Tribeca_Film_Festival.jpg/220px-Peter_Farrelly_at_the_2009_Tribeca_Film_Festival.jpg');
INSERT INTO public.reparto VALUES (51, 'Viggo', 'Mortensen', '', 'Viggo Peter Mortensen (Nueva York; 20 de octubre de 1958) es un actor de cine estadounidense de ascendencia danesa y residente durante su infancia en Argentina, razón por la que habla español con fluidez. Por sus interpretaciones ha sido nominado en tres ocasiones a los Premios Óscar, en cuatro a los Premios Globo de Oro y una vez a los premios Goya. También ejerce como poeta, músico, fotógrafo y pintor. En la actualidad tiene nacionalidad estadounidense, danesa y argentina.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Viggo_Mortensen_Cannes_2016.jpg/250px-Viggo_Mortensen_Cannes_2016.jpg');
INSERT INTO public.reparto VALUES (52, 'Felix ', 'van Groeningen', '', 'Felix van Groeningen (nacido el 1 de noviembre de 1977) es un director de cine y guionista belga. Es conocido por The Broken Circle Breakdown (2012) y Bélgica (2016), y el primero fue nominado a Mejor Película en Lengua Extranjera en los 86o Premios de la Academia. Hizo su debut en inglés con el drama biográfico Beautiful Boy (2018).', 'https://m.guiadelocio.com/var/guiadelocio.com/storage/images/cine/personajes/felix-van-groeningen/37230305-1-esl-ES/felix-van-groeningen.jpg');
INSERT INTO public.reparto VALUES (53, 'Steve', 'Carell', '', 'Steven John Carell (Concord, Massachusetts; 16 de agosto de 1962) más conocido como Steve Carell, es un actor, humorista y productor estadounidense, ganador de un Globo de Oro por su papel de Michael Scott en la serie The Office. También ha sido nominado al premio Óscar. Actualmente interpreta a Mitch Kessler en la serie The Morning Show en Apple TV+.', 'https://m.guiadelocio.com/var/guiadelocio.com/storage/images/cine/personajes/felix-van-groeningen/37230305-1-esl-ES/felix-van-groeningen.jpg');
INSERT INTO public.reparto VALUES (2, 'Noah ', 'Wyle', '', 'Su familia es de origen judío por parte de su padre y cristiano por parte de su madre, aunque él declara no haberse criado en ninguna de las dos. El actor es el mayor de seis hermanos y estudió en The Thacher School, donde se graduó en 1989. Participó en un programa artístico-teatral en la Northwestern University tras dos años de instituto y actuó en obras (incluso ganó un premio por una que escribió).', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Noah_Wyle_2010.jpg/250px-Noah_Wyle_2010.jpg');


--
-- TOC entry 3179 (class 0 OID 70870)
-- Dependencies: 243
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.rol VALUES (1, 'actor');
INSERT INTO public.rol VALUES (2, 'director');


--
-- TOC entry 3169 (class 0 OID 68859)
-- Dependencies: 233
-- Data for Name: ti18n; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3171 (class 0 OID 68866)
-- Dependencies: 235
-- Data for Name: ti18n_value; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3175 (class 0 OID 70754)
-- Dependencies: 239
-- Data for Name: tipo_contenido; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tipo_contenido VALUES (1, 'Pelicula');
INSERT INTO public.tipo_contenido VALUES (2, 'Serie');
INSERT INTO public.tipo_contenido VALUES (3, 'Documental');


--
-- TOC entry 3165 (class 0 OID 68839)
-- Dependencies: 229
-- Data for Name: trequest_statistics; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3162 (class 0 OID 68821)
-- Dependencies: 226
-- Data for Name: trole; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3173 (class 0 OID 68876)
-- Dependencies: 237
-- Data for Name: trole_server_permission; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3164 (class 0 OID 68831)
-- Dependencies: 228
-- Data for Name: tserver_permission; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3167 (class 0 OID 68849)
-- Dependencies: 231
-- Data for Name: tsetting; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3159 (class 0 OID 68711)
-- Dependencies: 223
-- Data for Name: tuser; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser VALUES ('demo', 'demouser', 'demo', 'demo', NULL, '44460713B', NULL, NULL, NULL);


--
-- TOC entry 3158 (class 0 OID 68685)
-- Dependencies: 222
-- Data for Name: tuser_preference; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3160 (class 0 OID 68726)
-- Dependencies: 224
-- Data for Name: tuser_role; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser_role VALUES (0, 0, 'demo');


--
-- TOC entry 3137 (class 0 OID 17361)
-- Dependencies: 201
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.usuario VALUES (1, 'Naida', 'Ezra', 'Hancock', 'Kaufman', 'vitae@liberoIntegerin.com', '%B340489673834770^TaShyaHolloway^07127575?7', 'https://picsum.photos/', '1951-05-11', true);
INSERT INTO public.usuario VALUES (2, 'Charde', 'Jack', 'Phillips', 'Ingram', 'magna@Aliquam.ca', '%B6767219864446451^LenoreEllis^99067052? ', 'https://picsum.photos/', '2003-05-11', true);
INSERT INTO public.usuario VALUES (3, 'Orla', 'Leonard', 'Harrison', 'Bright', 'quam@vitaesodalesnisi.co.uk', '%B4532646570877^KionaGamble^2709234611?1', 'https://picsum.photos/', '2000-06-09', true);
INSERT INTO public.usuario VALUES (4, 'Magee', 'Isaiah', 'Osborn', 'Woodard', 'ultrices.posuere.cubilia@mattis.net', '%B213133303574109^IrisOlson^00032814258? ', 'https://picsum.photos/', '2002-10-24', true);
INSERT INTO public.usuario VALUES (5, 'Emma', 'Juliet', 'Payne', 'Kelly', 'nec@temporestac.ca', '%B180052475629310^DriscollOrtiz^33079978?8', 'https://picsum.photos/', '1967-02-23', true);
INSERT INTO public.usuario VALUES (6, 'Karyn', 'Roary', 'Benton', 'Cotton', 'Etiam@nequesedsem.com', '%B214914911967689^VictorBlackwell^23115688359? ', 'https://picsum.photos/', '1963-11-07', true);
INSERT INTO public.usuario VALUES (7, 'Christian', 'Mannix', 'Clark', 'Buckley', 'molestie.sodales.Mauris@fermentumvel.org', '%B6706775695673351^ReeseHammond^2309403153? ', 'https://picsum.photos/', '1964-01-09', false);
INSERT INTO public.usuario VALUES (8, 'Flynn', 'Vera', 'Velazquez', 'Flynn', 'nisl@egestas.edu', '%B36178528308531^AltheaCombs^2907555320?2', 'https://picsum.photos/', '1983-08-02', false);
INSERT INTO public.usuario VALUES (9, 'Vera', 'Jorden', 'Weeks', 'Randolph', 'sit.amet@vitaenibhDonec.net', '%B6463321187082935^RoaryRichmond^2510568858? ', 'https://picsum.photos/', '2014-01-17', false);
INSERT INTO public.usuario VALUES (10, 'Indigo', 'Ocean', 'Hopkins', 'Duke', 'risus.Nulla@ullamcorper.org', '%B4716926086627^KristenBond^16077024578? ', 'https://picsum.photos/', '1978-01-14', true);
INSERT INTO public.usuario VALUES (11, 'Kellie', 'Jennifer', 'Jenkins', 'Kennedy', 'Praesent.eu.dui@vulputateullamcorpermagna.ca', '%B565392384386^KasperHess^1510926820? ', 'https://picsum.photos/', '1955-03-08', false);
INSERT INTO public.usuario VALUES (12, 'Ginger', 'Raven', 'Bowen', 'Rollins', 'ornare.placerat.orci@tristiquesenectuset.edu', '%B36845071029553^MerrittFinley^25083361?3', 'https://picsum.photos/', '2012-06-25', false);
INSERT INTO public.usuario VALUES (13, 'Amanda', 'Chandler', 'Craig', 'Mercer', 'tempus.non@necdiam.edu', '%B4556057967066^SeanAbbott^12116407?1', 'https://picsum.photos/', '2001-05-21', false);
INSERT INTO public.usuario VALUES (14, 'Molly', 'Breanna', 'Hill', 'Smith', 'at.arcu.Vestibulum@condimentumegetvolutpat.ca', '%B30064984634964^BeckWatts^29115066998?5', 'https://picsum.photos/', '2011-06-06', true);
INSERT INTO public.usuario VALUES (15, 'Phoebe', 'Amery', 'Stone', 'Foster', 'orci@Etiamligula.edu', '%B315590721155075^MacKensieHodge^31095828? ', 'https://picsum.photos/', '1983-10-10', false);
INSERT INTO public.usuario VALUES (16, 'Ivan', 'Harper', 'Pena', 'Valdez', 'est.tempor.bibendum@quam.edu', '%B6492874417533858^HeidiHerman^91045023468? ', 'https://picsum.photos/', '1978-08-19', false);
INSERT INTO public.usuario VALUES (17, 'Thaddeus', 'Ahmed', 'Vance', 'Gay', 'dolor.tempus@lacus.co.uk', '%B5220819543146928^CaldwellGilbert^98075418? ', 'https://picsum.photos/', '1998-09-14', false);
INSERT INTO public.usuario VALUES (18, 'Giacomo', 'Imani', 'Mcgowan', 'Puckett', 'nascetur.ridiculus@eu.edu', '%B6488788107662114^AbigailFlowers^72032749?6', 'https://picsum.photos/', '1968-05-10', true);
INSERT INTO public.usuario VALUES (19, 'Justin', 'Lila', 'Patton', 'Powers', 'consequat.enim.diam@malesuadafamesac.ca', '%B6771990705964373^HarperFaulkner^00065835? ', 'https://picsum.photos/', '1985-11-19', false);
INSERT INTO public.usuario VALUES (20, 'Ulysses', 'Russell', 'Scott', 'Hopper', 'volutpat.Nulla@adipiscinglobortis.edu', '%B4913815451270796^OdessaShepherd^9912234720? ', 'https://picsum.photos/', '1969-03-07', true);


--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 218
-- Name: comentario_comentario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comentario_comentario_id_seq', 32, true);


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 198
-- Name: contenido_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contenido_contenido_id_seq', 19, true);


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 212
-- Name: contenido_reparto_rol_contenido_reparto_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contenido_reparto_rol_contenido_reparto_rol_id_seq', 57, true);


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 214
-- Name: contenido_usuario_administracion_administracion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contenido_usuario_administracion_administracion_id_seq', 1, false);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 216
-- Name: contenido_usuario_estado_contenido_usuario_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contenido_usuario_estado_contenido_usuario_estado_id_seq', 1, false);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 240
-- Name: genero_genero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genero_genero_id_seq', 18, true);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 208
-- Name: historico_modificacion_historico_modificacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.historico_modificacion_historico_modificacion_id_seq', 20, true);


--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 202
-- Name: noticia_noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.noticia_noticia_id_seq', 15, true);


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 204
-- Name: permiso_permiso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.permiso_permiso_id_seq', 1, false);


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 210
-- Name: permiso_usuario_permiso_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.permiso_usuario_permiso_usuario_id_seq', 1, false);


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 206
-- Name: reparto_reparto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reparto_reparto_id_seq', 54, true);


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 242
-- Name: rol_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.rol_rol_id_seq', 1, false);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 232
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_id_i18n_seq', 1, false);


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 234
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_value_id_i18n_value_seq', 1, false);


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 238
-- Name: tipo_contenido_tipo_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tipo_contenido_tipo_contenido_id_seq', 4, true);


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 225
-- Name: trole_id_rolename_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_id_rolename_seq', 1, false);


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 236
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_server_permission_id_role_server_permission_seq', 1, false);


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 227
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tserver_permission_id_server_permission_seq', 1, false);


--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 230
-- Name: tsetting_id_setting_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tsetting_id_setting_seq', 1, false);


--
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 221
-- Name: tuser_preference_id_user_preference_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuser_preference_id_user_preference_seq', 1, false);


--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 200
-- Name: usuario_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usuario_usuario_id_seq', 20, true);


--
-- TOC entry 2967 (class 2606 OID 19071)
-- Name: comentario comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (comentario_id);


--
-- TOC entry 2947 (class 2606 OID 17348)
-- Name: contenido contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido
    ADD CONSTRAINT contenido_pkey PRIMARY KEY (contenido_id);


--
-- TOC entry 2961 (class 2606 OID 18130)
-- Name: contenido_reparto_rol contenido_reparto_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_reparto_rol
    ADD CONSTRAINT contenido_reparto_rol_pkey PRIMARY KEY (contenido_reparto_rol_id);


--
-- TOC entry 2963 (class 2606 OID 18864)
-- Name: contenido_usuario_administracion contenido_usuario_administracion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_administracion
    ADD CONSTRAINT contenido_usuario_administracion_pkey PRIMARY KEY (administracion_id);


--
-- TOC entry 2965 (class 2606 OID 19045)
-- Name: contenido_usuario_estado contenido_usuario_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_estado
    ADD CONSTRAINT contenido_usuario_estado_pkey PRIMARY KEY (contenido_usuario_estado_id);


--
-- TOC entry 2945 (class 2606 OID 16692)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (estado_id);


--
-- TOC entry 2989 (class 2606 OID 70795)
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (genero_id);


--
-- TOC entry 2957 (class 2606 OID 17414)
-- Name: historico_modificacion historico_modificacion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historico_modificacion
    ADD CONSTRAINT historico_modificacion_pkey PRIMARY KEY (historico_modificacion_id);


--
-- TOC entry 2951 (class 2606 OID 17381)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (noticia_id);


--
-- TOC entry 2953 (class 2606 OID 17395)
-- Name: permiso permiso_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT permiso_pkey PRIMARY KEY (permiso_id);


--
-- TOC entry 2959 (class 2606 OID 17565)
-- Name: permiso_usuario permiso_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permiso_usuario
    ADD CONSTRAINT permiso_usuario_pkey PRIMARY KEY (permiso_usuario_id);


--
-- TOC entry 2955 (class 2606 OID 17406)
-- Name: reparto reparto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_pkey PRIMARY KEY (reparto_id);


--
-- TOC entry 2991 (class 2606 OID 70875)
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rol_id);


--
-- TOC entry 2981 (class 2606 OID 68863)
-- Name: ti18n ti18n_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n
    ADD CONSTRAINT ti18n_pkey PRIMARY KEY (id_i18n);


--
-- TOC entry 2983 (class 2606 OID 68873)
-- Name: ti18n_value ti18n_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value
    ADD CONSTRAINT ti18n_value_pkey PRIMARY KEY (id_i18n_value);


--
-- TOC entry 2987 (class 2606 OID 70759)
-- Name: tipo_contenido tipo_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_contenido
    ADD CONSTRAINT tipo_contenido_pkey PRIMARY KEY (tipo_contenido_id);


--
-- TOC entry 2977 (class 2606 OID 68846)
-- Name: trequest_statistics trequest_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics
    ADD CONSTRAINT trequest_statistics_pkey PRIMARY KEY (id_request_statistics);


--
-- TOC entry 2973 (class 2606 OID 68828)
-- Name: trole trole_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole
    ADD CONSTRAINT trole_pkey PRIMARY KEY (id_rolename);


--
-- TOC entry 2985 (class 2606 OID 68880)
-- Name: trole_server_permission trole_server_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT trole_server_permission_pkey PRIMARY KEY (id_role_server_permission);


--
-- TOC entry 2975 (class 2606 OID 68838)
-- Name: tserver_permission tserver_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tserver_permission
    ADD CONSTRAINT tserver_permission_pkey PRIMARY KEY (id_server_permission);


--
-- TOC entry 2979 (class 2606 OID 68856)
-- Name: tsetting tsetting_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsetting
    ADD CONSTRAINT tsetting_pkey PRIMARY KEY (id_setting);


--
-- TOC entry 2971 (class 2606 OID 68717)
-- Name: tuser tuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_pkey PRIMARY KEY (user_);


--
-- TOC entry 2969 (class 2606 OID 68692)
-- Name: tuser_preference tuser_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_preference
    ADD CONSTRAINT tuser_preference_pkey PRIMARY KEY (id_user_preference);


--
-- TOC entry 2949 (class 2606 OID 17370)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuario_id);


--
-- TOC entry 3008 (class 2606 OID 19072)
-- Name: comentario comentario_contenido_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_contenido_id_fkey FOREIGN KEY (contenido_id) REFERENCES public.contenido(contenido_id);


--
-- TOC entry 3009 (class 2606 OID 19077)
-- Name: comentario comentario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);


--
-- TOC entry 2993 (class 2606 OID 70862)
-- Name: contenido contenido_contenido_genero_id_fkey ; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido
    ADD CONSTRAINT "contenido_contenido_genero_id_fkey " FOREIGN KEY (contenido_genero_id) REFERENCES public.genero(genero_id);


--
-- TOC entry 2992 (class 2606 OID 70760)
-- Name: contenido contenido_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido
    ADD CONSTRAINT contenido_fk FOREIGN KEY (contenido_tipo_contenido_id) REFERENCES public.tipo_contenido(tipo_contenido_id);


--
-- TOC entry 3001 (class 2606 OID 19424)
-- Name: contenido_reparto_rol contenido_reparto_rol_contenido_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_reparto_rol
    ADD CONSTRAINT contenido_reparto_rol_contenido_id_fkey FOREIGN KEY (contenido_id) REFERENCES public.contenido(contenido_id);


--
-- TOC entry 2999 (class 2606 OID 18131)
-- Name: contenido_reparto_rol contenido_reparto_rol_reparto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_reparto_rol
    ADD CONSTRAINT contenido_reparto_rol_reparto_id_fkey FOREIGN KEY (reparto_id) REFERENCES public.reparto(reparto_id);


--
-- TOC entry 3002 (class 2606 OID 70886)
-- Name: contenido_reparto_rol contenido_reparto_rol_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_reparto_rol
    ADD CONSTRAINT contenido_reparto_rol_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.rol(rol_id);


--
-- TOC entry 3000 (class 2606 OID 18136)
-- Name: contenido_reparto_rol contenido_reparto_rol_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_reparto_rol
    ADD CONSTRAINT contenido_reparto_rol_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);


--
-- TOC entry 3003 (class 2606 OID 18865)
-- Name: contenido_usuario_administracion contenido_usuario_administracion_contenido_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_administracion
    ADD CONSTRAINT contenido_usuario_administracion_contenido_id_fkey FOREIGN KEY (contenido_id) REFERENCES public.contenido(contenido_id);


--
-- TOC entry 3004 (class 2606 OID 18870)
-- Name: contenido_usuario_administracion contenido_usuario_administracion_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_administracion
    ADD CONSTRAINT contenido_usuario_administracion_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);


--
-- TOC entry 3005 (class 2606 OID 19046)
-- Name: contenido_usuario_estado contenido_usuario_estado_contenido_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_estado
    ADD CONSTRAINT contenido_usuario_estado_contenido_id_fkey FOREIGN KEY (contenido_id) REFERENCES public.contenido(contenido_id);


--
-- TOC entry 3007 (class 2606 OID 19056)
-- Name: contenido_usuario_estado contenido_usuario_estado_estado_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_estado
    ADD CONSTRAINT contenido_usuario_estado_estado_id_fkey FOREIGN KEY (estado_id) REFERENCES public.estado(estado_id);


--
-- TOC entry 3006 (class 2606 OID 19051)
-- Name: contenido_usuario_estado contenido_usuario_estado_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contenido_usuario_estado
    ADD CONSTRAINT contenido_usuario_estado_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);


--
-- TOC entry 3010 (class 2606 OID 68881)
-- Name: trole_server_permission fk_trole_server_permission; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_trole_server_permission FOREIGN KEY (id_rolename) REFERENCES public.trole(id_rolename);


--
-- TOC entry 3011 (class 2606 OID 68886)
-- Name: trole_server_permission fk_tserver_permission; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_tserver_permission FOREIGN KEY (id_server_permission) REFERENCES public.tserver_permission(id_server_permission);


--
-- TOC entry 2995 (class 2606 OID 17415)
-- Name: historico_modificacion historico_modificacion_noticia_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historico_modificacion
    ADD CONSTRAINT historico_modificacion_noticia_id_fkey FOREIGN KEY (noticia_id) REFERENCES public.noticia(noticia_id);


--
-- TOC entry 2996 (class 2606 OID 17420)
-- Name: historico_modificacion historico_modificacion_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.historico_modificacion
    ADD CONSTRAINT historico_modificacion_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);


--
-- TOC entry 2994 (class 2606 OID 17382)
-- Name: noticia noticia_noticia_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_noticia_usuario_id_fkey FOREIGN KEY (noticia_usuario_id) REFERENCES public.usuario(usuario_id);


--
-- TOC entry 2997 (class 2606 OID 17566)
-- Name: permiso_usuario permiso_usuario_permiso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permiso_usuario
    ADD CONSTRAINT permiso_usuario_permiso_id_fkey FOREIGN KEY (permiso_id) REFERENCES public.permiso(permiso_id);


--
-- TOC entry 2998 (class 2606 OID 17571)
-- Name: permiso_usuario permiso_usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permiso_usuario
    ADD CONSTRAINT permiso_usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(usuario_id);


-- Completed on 2023-02-03 09:59:53

--
-- PostgreSQL database dump complete
--

