-- schema definition v1
--
-- Copyright 2021 Projeto e-cordel.
-- e-cordel project (http://www.ecordel.com.br/).

CREATE TABLE IF NOT EXISTS jwt_token (
    id bigint primary key,
    expiration bigint,
    secret_key TEXT,
    active boolean not null
);

CREATE SEQUENCE IF NOT EXISTS  jwt_token_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER SEQUENCE public.jwt_token_id_seq OWNED BY jwt_token.id;

ALTER TABLE ONLY jwt_token ALTER COLUMN id SET DEFAULT nextval('public.jwt_token_id_seq'::regclass);

INSERT INTO jwt_token (id, expiration, secret_key, active) VALUES ((SELECT nextval('public.jwt_token_id_seq')), 86400000, 'rm''!@N=Ke!~p8VTA2ZRK~nMDQX5Uvm!m''D&]{@Vr?G;2?XhbC:Qa#9#eMLN\}x3?JR3.2zr~v)gYF^8\:8>:XfB:Ww75N/emt9Yj[bQMNCWwW\J?N,nvH.<2\.r~w]*e~vgak)X"v8H`MH/7"2E`,^k@n<vE-wD3g9JWPy;CrY*.Kd2_D])=><D?YhBaSua5hW%{2]_FVXzb9`8FH^b[X3jzVER&:jw2<=c38=>L/zBq`}C6tT*cCSVC^c]-L}&/', true);