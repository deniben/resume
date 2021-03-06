-- SQL Manager for PostgreSQL 6.1.0.53492
-- ---------------------------------------
-- Host      : localhost
-- Database  : resume
-- Version   : PostgreSQL 12.2, compiled by Visual C++ build 1914, 64-bit



SET check_function_bodies = false;
--
-- Structure for table profile (OID = 16407) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.profile (
    id bigserial NOT NULL,
    uid varchar(100) NOT NULL,
    first_name varchar(100),
    last_name varchar(100),
    birth_day date DEFAULT now(),
    phone varchar(20),
    email varchar(100),
    country varchar(60),
    city varchar(100),
    objective text,
    summary text,
    large_photo varchar(255),
    small_photo varchar(255),
    info text,
    password varchar(255) NOT NULL,
    completed boolean DEFAULT false NOT NULL,
    created date DEFAULT now() NOT NULL,
    skype varchar(255),
    facebook varchar(255),
    github varchar(255),
    linkedin varchar(255),
    stackoverflow varchar(255)
)
WITH (oids = false);
ALTER TABLE ONLY public.profile ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN uid SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN first_name SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN last_name SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN birth_day SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN phone SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN city SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN objective SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN summary SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN large_photo SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN small_photo SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN info SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN password SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN completed SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN created SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN skype SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN facebook SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN github SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN linkedin SET STATISTICS 0;
ALTER TABLE ONLY public.profile ALTER COLUMN stackoverflow SET STATISTICS 0;
--
-- Structure for table certificate (OID = 16438) : 
--
CREATE TABLE public.certificate (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(50) NOT NULL,
    large_url varchar(255) NOT NULL,
    small_url varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.certificate ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN name SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN large_url SET STATISTICS 0;
ALTER TABLE ONLY public.certificate ALTER COLUMN small_url SET STATISTICS 0;
--
-- Structure for table course (OID = 16454) : 
--
CREATE TABLE public.course (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(60) NOT NULL,
    school varchar(60) NOT NULL,
    finish_date date
)
WITH (oids = false);
ALTER TABLE ONLY public.course ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN name SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN school SET STATISTICS 0;
ALTER TABLE ONLY public.course ALTER COLUMN finish_date SET STATISTICS 0;
--
-- Structure for table education (OID = 16467) : 
--
CREATE TABLE public.education (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    summary varchar(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.education ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN summary SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN begin_year SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN finish_year SET STATISTICS 0;
ALTER TABLE ONLY public.education ALTER COLUMN university SET STATISTICS 0;
--
-- Structure for table hobby (OID = 16483) : 
--
CREATE TABLE public.hobby (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(30) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.hobby ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.hobby ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.hobby ALTER COLUMN name SET STATISTICS 0;
--
-- Structure for table languages (OID = 16497) : 
--
CREATE TABLE public.languages (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(30) NOT NULL,
    level varchar(18) NOT NULL,
    type varchar(7) DEFAULT 0 NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.languages ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.languages ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.languages ALTER COLUMN name SET STATISTICS 0;
ALTER TABLE ONLY public.languages ALTER COLUMN level SET STATISTICS 0;
ALTER TABLE ONLY public.languages ALTER COLUMN type SET STATISTICS 0;
--
-- Structure for table practic (OID = 16511) : 
--
CREATE TABLE public.practic (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    "position" varchar(100) NOT NULL,
    company varchar(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo varchar(255),
    src varchar(255)
)
WITH (oids = false);
ALTER TABLE ONLY public.practic ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN "position" SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN company SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN begin_date SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN finish_date SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN responsibilities SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN demo SET STATISTICS 0;
ALTER TABLE ONLY public.practic ALTER COLUMN src SET STATISTICS 0;
--
-- Structure for table skill (OID = 16528) : 
--
CREATE TABLE public.skill (
    id bigserial NOT NULL,
    id_profile bigint NOT NULL,
    category varchar(50) NOT NULL,
    value text NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.skill ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.skill ALTER COLUMN id_profile SET STATISTICS 0;
ALTER TABLE ONLY public.skill ALTER COLUMN category SET STATISTICS 0;
ALTER TABLE ONLY public.skill ALTER COLUMN value SET STATISTICS 0;
--
-- Structure for table profile_restore (OID = 16544) : 
--
CREATE TABLE public.profile_restore (
    id bigserial NOT NULL,
    token varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.profile_restore ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.profile_restore ALTER COLUMN token SET STATISTICS 0;
--
-- Structure for table skill_category (OID = 16554) : 
--
CREATE TABLE public.skill_category (
    id bigserial NOT NULL,
    category varchar(50) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.skill_category ALTER COLUMN id SET STATISTICS 0;
ALTER TABLE ONLY public.skill_category ALTER COLUMN category SET STATISTICS 0;
--
-- Data for table public.profile (OID = 16407) (LIMIT 0,24)
--
INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (1, 'aly-dutta', 'Aly', 'Dutta', '1998-07-28', '+380502213677', 'aly-dutta@gmail.com', 'Ukraine', 'Kiyv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/401ac1ec-e7c6-43be-bd02-c0da29a0bf1a.jpg', '/media/avatar/401ac1ec-e7c6-43be-bd02-c0da29a0bf1a-sm.jpg', 'Aenean viverra rhoncus pede. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, NULL, 'https://linkedin.com/aly-dutta', 'https://github.com/aly-dutta', 'https://stackoverflow.com/aly-dutta');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (2, 'amy-fowler', 'Amy', 'Fowler', '1993-05-25', '+380508553388', 'amy-fowler@gmail.com', 'Ukraine', 'Kiyv', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/3ebb278b-38c7-4133-8683-fa7fc5ed44eb.jpg', '/media/avatar/3ebb278b-38c7-4133-8683-fa7fc5ed44eb-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'amy-fowler', NULL, NULL, 'https://github.com/amy-fowler', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (3, 'bernadette-rostenkowski', 'Bernadette', 'Rostenkowski', '1999-11-08', '+380503363869', 'bernadette-rostenkowski@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/e8b4248a-298e-44ee-b684-59cc4cf37cc2.jpg', '/media/avatar/e8b4248a-298e-44ee-b684-59cc4cf37cc2-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'bernadette-rostenkowski', NULL, NULL, NULL, 'https://stackoverflow.com/bernadette-rostenkowski');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (4, 'bertram-gilfoyle', 'Bertram', 'Gilfoyle', '1991-02-13', '+380503126188', 'bertram-gilfoyle@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/5c6f6f91-4f10-428a-9798-3efe107c9d09.jpg', '/media/avatar/5c6f6f91-4f10-428a-9798-3efe107c9d09-sm.jpg', 'Fusce a quam. Etiam ut purus mattis mauris sodales aliquam. Curabitur nisi.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'bertram-gilfoyle', NULL, NULL, NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (5, 'carla-walton', 'Carla', 'Walton', '1992-03-07', '+380501778193', 'carla-walton@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java trainee position', 'Java core course with developing one simple console application', '/media/avatar/0cb444dd-9adf-4e4c-8e9c-31b0cd028d25.jpg', '/media/avatar/0cb444dd-9adf-4e4c-8e9c-31b0cd028d25-sm.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, 'https://facebook.com/carla-walton', NULL, NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (6, 'dinesh-chugtai', 'Dinesh', 'Chugtai', '1997-07-29', '+380502917764', 'dinesh-chugtai@gmail.com', 'Ukraine', 'Kiyv', 'Junior java developer position', 'Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)', '/media/avatar/7cc319bc-9a03-4a0d-8fd7-2d877974e655.jpg', '/media/avatar/7cc319bc-9a03-4a0d-8fd7-2d877974e655-sm.jpg', 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'dinesh-chugtai', NULL, 'https://linkedin.com/dinesh-chugtai', 'https://github.com/dinesh-chugtai', 'https://stackoverflow.com/dinesh-chugtai');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (7, 'erlich-bachmann', 'Erlich', 'Bachmann', '1995-10-07', '+380506683236', 'erlich-bachmann@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/b7d18ea9-853f-4887-a1e1-267ea2059dc4.jpg', '/media/avatar/b7d18ea9-853f-4887-a1e1-267ea2059dc4-sm.jpg', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, 'https://facebook.com/erlich-bachmann', NULL, 'https://github.com/erlich-bachmann', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (8, 'harold-gunderson', 'Harold', 'Gunderson', '1996-09-06', '+380501121825', 'harold-gunderson@gmail.com', 'Ukraine', 'Odessa', 'Junior java trainee position', 'One Java professional course with developing web application blog (Link to demo is provided)', '/media/avatar/34c622a3-f57d-4bb6-9ca2-1fbd0f094d8e.jpg', '/media/avatar/34c622a3-f57d-4bb6-9ca2-1fbd0f094d8e-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'harold-gunderson', NULL, 'https://linkedin.com/harold-gunderson', NULL, 'https://stackoverflow.com/harold-gunderson');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (9, 'howard-wolowitz', 'Howard', 'Wolowitz', '1991-09-11', '+380507488714', 'howard-wolowitz@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/1aeb4cb7-df6e-437b-9bcf-72b8d2b6abbe.jpg', '/media/avatar/1aeb4cb7-df6e-437b-9bcf-72b8d2b6abbe-sm.jpg', 'Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'howard-wolowitz', 'https://facebook.com/howard-wolowitz', 'https://linkedin.com/howard-wolowitz', NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (10, 'jared-dunn', 'Jared', 'Dunn', '1999-03-01', '+380503326227', 'jared-dunn@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java trainee position', 'Java core course with developing one simple console application', '/media/avatar/bb882008-608c-430a-bae1-485019881650.jpg', '/media/avatar/bb882008-608c-430a-bae1-485019881650-sm.jpg', 'Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'jared-dunn', 'https://facebook.com/jared-dunn', NULL, 'https://github.com/jared-dunn', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (11, 'jen-barber', 'Jen', 'Barber', '1993-05-13', '+380504267134', 'jen-barber@gmail.com', 'Ukraine', 'Kiyv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/d8061a87-4d14-4061-9873-43d0b0b5b856.jpg', '/media/avatar/d8061a87-4d14-4061-9873-43d0b0b5b856-sm.jpg', 'Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'jen-barber', NULL, 'https://linkedin.com/jen-barber', NULL, 'https://stackoverflow.com/jen-barber');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (12, 'katrina-bennett', 'Katrina', 'Bennett', '1997-12-06', '+380504861735', 'katrina-bennett@gmail.com', 'Ukraine', 'Odessa', 'Junior java trainee position', 'One Java professional course with developing web application blog (Link to demo is provided)', '/media/avatar/a9fadaf6-e5da-4065-9501-63bba366163e.jpg', '/media/avatar/a9fadaf6-e5da-4065-9501-63bba366163e-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'katrina-bennett', NULL, NULL, 'https://github.com/katrina-bennett', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (13, 'leonard-hofstadter', 'Leonard', 'Hofstadter', '1997-10-21', '+380508192737', 'leonard-hofstadter@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/6e1a8e68-8d43-4271-b7e8-59dbe3019436.jpg', '/media/avatar/6e1a8e68-8d43-4271-b7e8-59dbe3019436-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'leonard-hofstadter', 'https://facebook.com/leonard-hofstadter', NULL, 'https://github.com/leonard-hofstadter', 'https://stackoverflow.com/leonard-hofstadter');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (14, 'leslie-winkle', 'Leslie', 'Winkle', '1994-04-26', '+380505314886', 'leslie-winkle@gmail.com', 'Ukraine', 'Kiyv', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/2addae62-30fb-40f7-8650-e497f10e8a35.jpg', '/media/avatar/2addae62-30fb-40f7-8650-e497f10e8a35-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, NULL, NULL, NULL, 'https://stackoverflow.com/leslie-winkle');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (15, 'logan-sanders', 'Logan', 'Sanders', '1995-12-25', '+380503187186', 'logan-sanders@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'One Java professional course with developing web application resume (Link to demo is provided)', '/media/avatar/f56f168f-5c5e-4282-8588-c4758e457099.jpg', '/media/avatar/f56f168f-5c5e-4282-8588-c4758e457099-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, NULL, NULL, NULL, 'https://stackoverflow.com/logan-sanders');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (16, 'maurice-moss', 'Maurice', 'Moss', '1997-03-03', '+380508334332', 'maurice-moss@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/29990883-624e-4faa-8e99-78c85fe9dea4.jpg', '/media/avatar/29990883-624e-4faa-8e99-78c85fe9dea4-sm.jpg', 'Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'maurice-moss', 'https://facebook.com/maurice-moss', NULL, NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (17, 'mike-ross', 'Mike', 'Ross', '1994-03-27', '+380508142626', 'mike-ross@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/091b5dc2-bbda-460a-9c3a-4f9f1c25318b.jpg', '/media/avatar/091b5dc2-bbda-460a-9c3a-4f9f1c25318b-sm.jpg', 'Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'mike-ross', NULL, 'https://linkedin.com/mike-ross', NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (18, 'rachel-zane', 'Rachel', 'Zane', '1990-06-23', '+380505477452', 'rachel-zane@gmail.com', 'Ukraine', 'Kiyv', 'Junior java trainee position', 'Java core course with developing one simple console application', '/media/avatar/65c7a75b-cd16-4a55-b5b7-46696116c25e.jpg', '/media/avatar/65c7a75b-cd16-4a55-b5b7-46696116c25e-sm.jpg', 'Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'rachel-zane', 'https://facebook.com/rachel-zane', 'https://linkedin.com/rachel-zane', NULL, NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (19, 'rajesh-koothrappali', 'Rajesh', 'Koothrappali', '1992-07-11', '+380505551821', 'rajesh-koothrappali@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/b8505d90-086b-43d3-b72e-5f925b8eed3e.jpg', '/media/avatar/b8505d90-086b-43d3-b72e-5f925b8eed3e-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'rajesh-koothrappali', NULL, NULL, 'https://github.com/rajesh-koothrappali', 'https://stackoverflow.com/rajesh-koothrappali');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (20, 'richard-hendricks', 'Richard', 'Hendricks', '1994-08-11', '+380507836241', 'richard-hendricks@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)', '/media/avatar/95ceef89-9b8b-48e0-8eb3-15e55e8cca61.jpg', '/media/avatar/95ceef89-9b8b-48e0-8eb3-15e55e8cca61-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'richard-hendricks', NULL, NULL, NULL, 'https://stackoverflow.com/richard-hendricks');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (21, 'roy-trenneman', 'Roy', 'Trenneman', '1992-05-11', '+380505696424', 'roy-trenneman@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/74184cec-0e1d-4eff-86e8-d9f48e7d2bd5.jpg', '/media/avatar/74184cec-0e1d-4eff-86e8-d9f48e7d2bd5-sm.jpg', 'Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Sed hendrerit.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, 'https://facebook.com/roy-trenneman', NULL, 'https://github.com/roy-trenneman', NULL);

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (22, 'sheldon-cooper', 'Sheldon', 'Cooper', '1992-08-23', '+380508446684', 'sheldon-cooper@gmail.com', 'Ukraine', 'Odessa', 'Junior java developer position', 'Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)', '/media/avatar/de2ac0ff-f49d-40e2-8447-01226b8b5776.jpg', '/media/avatar/de2ac0ff-f49d-40e2-8447-01226b8b5776-sm.jpg', 'Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.', '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', 'sheldon-cooper', 'https://facebook.com/sheldon-cooper', NULL, NULL, 'https://stackoverflow.com/sheldon-cooper');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (23, 'stuart-bloom', 'Stuart', 'Bloom', '1997-05-29', '+380504616866', 'stuart-bloom@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/9db4af18-9bfd-46c8-bc0e-63557ca52fc9.jpg', '/media/avatar/9db4af18-9bfd-46c8-bc0e-63557ca52fc9-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, 'https://facebook.com/stuart-bloom', NULL, NULL, 'https://stackoverflow.com/stuart-bloom');

INSERT INTO profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, facebook, github, linkedin, stackoverflow)
VALUES (24, 'trevor-evans', 'Trevor', 'Evans', '1995-04-18', '+380508819212', 'trevor-evans@gmail.com', 'Ukraine', 'Kharkiv', 'Junior java developer position', 'Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)', '/media/avatar/e332fd1a-406b-4d29-b73e-f62dee189455.jpg', '/media/avatar/e332fd1a-406b-4d29-b73e-f62dee189455-sm.jpg', NULL, '$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq', true, '2020-04-13', NULL, NULL, 'https://linkedin.com/trevor-evans', NULL, 'https://stackoverflow.com/trevor-evans');

--
-- Data for table public.certificate (OID = 16438) (LIMIT 0,22)
--
INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (1, 1, 'Mongo certificate.jpg', '/media/certificates/681e3515-a8f2-4390-8d40-e2adc05351aa.jpg', '/media/certificates/681e3515-a8f2-4390-8d40-e2adc05351aa-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (2, 2, 'Mongo certificate.jpg', '/media/certificates/b1c34a57-e086-4c8c-8bed-7859dae5afa5.jpg', '/media/certificates/b1c34a57-e086-4c8c-8bed-7859dae5afa5-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (3, 3, 'Mongo certificate.jpg', '/media/certificates/b6e8040e-e268-4a40-bf35-53a45435dc2c.jpg', '/media/certificates/b6e8040e-e268-4a40-bf35-53a45435dc2c-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (4, 4, 'Mongo certificate.jpg', '/media/certificates/7b6e71b8-3349-45f5-b055-301e796d9030.jpg', '/media/certificates/7b6e71b8-3349-45f5-b055-301e796d9030-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (5, 6, 'Jee certificate.jpg', '/media/certificates/20a52d73-bee9-4a15-9ffa-d832f4cd2b2f.jpg', '/media/certificates/20a52d73-bee9-4a15-9ffa-d832f4cd2b2f-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (6, 6, 'Mongo certificate.jpg', '/media/certificates/e9ca0ded-1990-465d-b128-76fefbfa26cd.jpg', '/media/certificates/e9ca0ded-1990-465d-b128-76fefbfa26cd-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (7, 9, 'Mongo certificate.jpg', '/media/certificates/5a7db0f8-a307-4833-9469-f983a8fcfb0b.jpg', '/media/certificates/5a7db0f8-a307-4833-9469-f983a8fcfb0b-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (8, 11, 'Mongo certificate.jpg', '/media/certificates/d75b6757-6249-4fef-9b98-910ecd67b06f.jpg', '/media/certificates/d75b6757-6249-4fef-9b98-910ecd67b06f-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (9, 13, 'Jee certificate.jpg', '/media/certificates/5f358ff8-0d76-4c15-b961-0249c8ad9d77.jpg', '/media/certificates/5f358ff8-0d76-4c15-b961-0249c8ad9d77-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (10, 14, 'Jee certificate.jpg', '/media/certificates/fc2e2d11-bfdf-4f59-8419-9b90412ea2ba.jpg', '/media/certificates/fc2e2d11-bfdf-4f59-8419-9b90412ea2ba-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (11, 16, 'Mongo certificate.jpg', '/media/certificates/12cd39ac-8627-4d1a-8587-7c1d92502dfd.jpg', '/media/certificates/12cd39ac-8627-4d1a-8587-7c1d92502dfd-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (12, 17, 'Jee certificate.jpg', '/media/certificates/b26859c0-af18-46c3-ad58-f909bd9e2237.jpg', '/media/certificates/b26859c0-af18-46c3-ad58-f909bd9e2237-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (13, 17, 'Mongo certificate.jpg', '/media/certificates/4d47a2ec-465a-4fd4-9a55-3cf82259b21e.jpg', '/media/certificates/4d47a2ec-465a-4fd4-9a55-3cf82259b21e-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (14, 19, 'Jee certificate.jpg', '/media/certificates/a5e5894c-290e-4748-91fb-77d911246aac.jpg', '/media/certificates/a5e5894c-290e-4748-91fb-77d911246aac-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (15, 20, 'Mongo certificate.jpg', '/media/certificates/191891f4-6b41-4fca-af89-1e32915b4298.jpg', '/media/certificates/191891f4-6b41-4fca-af89-1e32915b4298-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (16, 20, 'Jee certificate.jpg', '/media/certificates/929f5e1c-4723-489c-9558-c88e341057e9.jpg', '/media/certificates/929f5e1c-4723-489c-9558-c88e341057e9-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (17, 21, 'Mongo certificate.jpg', '/media/certificates/037dcd38-325f-499a-86c8-316c1e9cd17e.jpg', '/media/certificates/037dcd38-325f-499a-86c8-316c1e9cd17e-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (18, 21, 'Jee certificate.jpg', '/media/certificates/787f2ace-8b73-4594-a9bb-c6fe81c08d8e.jpg', '/media/certificates/787f2ace-8b73-4594-a9bb-c6fe81c08d8e-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (19, 22, 'Mongo certificate.jpg', '/media/certificates/ef7582fa-0184-4c2e-95d8-2885382a1720.jpg', '/media/certificates/ef7582fa-0184-4c2e-95d8-2885382a1720-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (20, 22, 'Jee certificate.jpg', '/media/certificates/7bb1540d-8f27-4ee8-b243-6d6cccbdf8c6.jpg', '/media/certificates/7bb1540d-8f27-4ee8-b243-6d6cccbdf8c6-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (21, 23, 'Jee certificate.jpg', '/media/certificates/07b3f680-caf5-4e3a-84f0-cef74d8e54bb.jpg', '/media/certificates/07b3f680-caf5-4e3a-84f0-cef74d8e54bb-sm.jpg');

INSERT INTO certificate (id, id_profile, name, large_url, small_url)
VALUES (22, 24, 'Mongo certificate.jpg', '/media/certificates/4a869e55-0709-44c9-84e9-af25089804f0.jpg', '/media/certificates/4a869e55-0709-44c9-84e9-af25089804f0-sm.jpg');

--
-- Data for table public.course (OID = 16454) (LIMIT 0,16)
--
INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (1, 1, 'Java Advanced Course', 'SourceIt', '2019-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (2, 4, 'Java Advanced Course', 'SourceIt', '2012-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (3, 5, 'Java Advanced Course', 'SourceIt', '2014-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (4, 6, 'Java Advanced Course', 'SourceIt', '2019-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (5, 7, 'Java Advanced Course', 'SourceIt', '2017-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (6, 12, 'Java Advanced Course', 'SourceIt', NULL);

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (7, 13, 'Java Advanced Course', 'SourceIt', '2019-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (8, 14, 'Java Advanced Course', 'SourceIt', '2016-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (9, 15, 'Java Advanced Course', 'SourceIt', '2017-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (10, 16, 'Java Advanced Course', 'SourceIt', NULL);

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (11, 17, 'Java Advanced Course', 'SourceIt', '2016-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (12, 18, 'Java Advanced Course', 'SourceIt', '2013-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (13, 19, 'Java Advanced Course', 'SourceIt', '2014-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (14, 20, 'Java Advanced Course', 'SourceIt', '2015-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (15, 21, 'Java Advanced Course', 'SourceIt', '2015-06-30');

INSERT INTO course (id, id_profile, name, school, finish_date)
VALUES (16, 23, 'Java Advanced Course', 'SourceIt', '2018-06-30');

--
-- Data for table public.education (OID = 16467) (LIMIT 0,24)
--
INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (1, 1, 'The specialist degree in Electronic Engineering', 2016, NULL, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (2, 2, 'The specialist degree in Electronic Engineering', 2010, 2015, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (3, 3, 'The specialist degree in Electronic Engineering', 2016, NULL, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (4, 4, 'The specialist degree in Electronic Engineering', 2009, 2014, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (5, 5, 'The specialist degree in Electronic Engineering', 2008, 2013, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (6, 6, 'The specialist degree in Electronic Engineering', 2013, 2018, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (7, 7, 'The specialist degree in Electronic Engineering', 2011, 2016, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (8, 8, 'The specialist degree in Electronic Engineering', 2014, 2019, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (9, 9, 'The specialist degree in Electronic Engineering', 2009, 2014, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (10, 10, 'The specialist degree in Electronic Engineering', 2016, NULL, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (11, 11, 'The specialist degree in Electronic Engineering', 2009, 2014, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (12, 12, 'The specialist degree in Electronic Engineering', 2015, NULL, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (13, 13, 'The specialist degree in Electronic Engineering', 2013, 2018, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (14, 14, 'The specialist degree in Electronic Engineering', 2012, 2017, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (15, 15, 'The specialist degree in Electronic Engineering', 2012, 2017, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (16, 16, 'The specialist degree in Electronic Engineering', 2013, 2018, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (17, 17, 'The specialist degree in Electronic Engineering', 2012, 2017, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (18, 18, 'The specialist degree in Electronic Engineering', 2006, 2011, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (19, 19, 'The specialist degree in Electronic Engineering', 2010, 2015, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (20, 20, 'The specialist degree in Electronic Engineering', 2010, 2015, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (21, 21, 'The specialist degree in Electronic Engineering', 2009, 2014, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (22, 22, 'The specialist degree in Electronic Engineering', 2008, 2013, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (23, 23, 'The specialist degree in Electronic Engineering', 2014, 2019, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

INSERT INTO education (id, id_profile, summary, begin_year, finish_year, university, faculty)
VALUES (24, 24, 'The specialist degree in Electronic Engineering', 2011, 2016, 'Kharkiv National Technical University, Ukraine', 'Computer Science');

--
-- Data for table public.hobby (OID = 16483) (LIMIT 0,120)
--
INSERT INTO hobby (id, id_profile, name)
VALUES (1, 1, 'Swimming');

INSERT INTO hobby (id, id_profile, name)
VALUES (2, 1, 'Volleyball');

INSERT INTO hobby (id, id_profile, name)
VALUES (3, 1, 'Foreign lang');

INSERT INTO hobby (id, id_profile, name)
VALUES (4, 1, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (5, 1, 'Skiing');

INSERT INTO hobby (id, id_profile, name)
VALUES (6, 2, 'Swimming');

INSERT INTO hobby (id, id_profile, name)
VALUES (7, 2, 'Billiards');

INSERT INTO hobby (id, id_profile, name)
VALUES (8, 2, 'Codding');

INSERT INTO hobby (id, id_profile, name)
VALUES (9, 2, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (10, 2, 'Photo');

INSERT INTO hobby (id, id_profile, name)
VALUES (11, 3, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (12, 3, 'Automobiles');

INSERT INTO hobby (id, id_profile, name)
VALUES (13, 3, 'Diving');

INSERT INTO hobby (id, id_profile, name)
VALUES (14, 3, 'Golf');

INSERT INTO hobby (id, id_profile, name)
VALUES (15, 3, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (16, 4, 'Codding');

INSERT INTO hobby (id, id_profile, name)
VALUES (17, 4, 'Archery');

INSERT INTO hobby (id, id_profile, name)
VALUES (18, 4, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (19, 4, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (20, 4, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (21, 5, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (22, 5, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (23, 5, 'Cricket');

INSERT INTO hobby (id, id_profile, name)
VALUES (24, 5, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (25, 5, 'Tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (26, 6, 'Cricket');

INSERT INTO hobby (id, id_profile, name)
VALUES (27, 6, 'Swimming');

INSERT INTO hobby (id, id_profile, name)
VALUES (28, 6, 'Animals');

INSERT INTO hobby (id, id_profile, name)
VALUES (29, 6, 'Archery');

INSERT INTO hobby (id, id_profile, name)
VALUES (30, 6, 'Diving');

INSERT INTO hobby (id, id_profile, name)
VALUES (31, 7, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (32, 7, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (33, 7, 'Handball');

INSERT INTO hobby (id, id_profile, name)
VALUES (34, 7, 'Disco');

INSERT INTO hobby (id, id_profile, name)
VALUES (35, 7, 'Authorship');

INSERT INTO hobby (id, id_profile, name)
VALUES (36, 8, 'Camping');

INSERT INTO hobby (id, id_profile, name)
VALUES (37, 8, 'Archery');

INSERT INTO hobby (id, id_profile, name)
VALUES (38, 8, 'Authorship');

INSERT INTO hobby (id, id_profile, name)
VALUES (39, 8, 'Golf');

INSERT INTO hobby (id, id_profile, name)
VALUES (40, 8, 'Boxing');

INSERT INTO hobby (id, id_profile, name)
VALUES (41, 9, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (42, 9, 'Basketball');

INSERT INTO hobby (id, id_profile, name)
VALUES (43, 9, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (44, 9, 'Tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (45, 9, 'Animals');

INSERT INTO hobby (id, id_profile, name)
VALUES (46, 10, 'Automobiles');

INSERT INTO hobby (id, id_profile, name)
VALUES (47, 10, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (48, 10, 'Collecting');

INSERT INTO hobby (id, id_profile, name)
VALUES (49, 10, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (50, 10, 'Roller skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (51, 11, 'Kayak slalom');

INSERT INTO hobby (id, id_profile, name)
VALUES (52, 11, 'Table tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (53, 11, 'Football');

INSERT INTO hobby (id, id_profile, name)
VALUES (54, 11, 'Animals');

INSERT INTO hobby (id, id_profile, name)
VALUES (55, 11, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (56, 12, 'Singing');

INSERT INTO hobby (id, id_profile, name)
VALUES (57, 12, 'Fishing');

INSERT INTO hobby (id, id_profile, name)
VALUES (58, 12, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (59, 12, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (60, 12, 'Skiing');

INSERT INTO hobby (id, id_profile, name)
VALUES (61, 13, 'Cooking');

INSERT INTO hobby (id, id_profile, name)
VALUES (62, 13, 'Traveling');

INSERT INTO hobby (id, id_profile, name)
VALUES (63, 13, 'Codding');

INSERT INTO hobby (id, id_profile, name)
VALUES (64, 13, 'Golf');

INSERT INTO hobby (id, id_profile, name)
VALUES (65, 13, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (66, 14, 'Billiards');

INSERT INTO hobby (id, id_profile, name)
VALUES (67, 14, 'Handball');

INSERT INTO hobby (id, id_profile, name)
VALUES (68, 14, 'Boxing');

INSERT INTO hobby (id, id_profile, name)
VALUES (69, 14, 'Singing');

INSERT INTO hobby (id, id_profile, name)
VALUES (70, 14, 'Computer games');

INSERT INTO hobby (id, id_profile, name)
VALUES (71, 15, 'Billiards');

INSERT INTO hobby (id, id_profile, name)
VALUES (72, 15, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (73, 15, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (74, 15, 'Kayak slalom');

INSERT INTO hobby (id, id_profile, name)
VALUES (75, 15, 'Swimming');

INSERT INTO hobby (id, id_profile, name)
VALUES (76, 16, 'Photo');

INSERT INTO hobby (id, id_profile, name)
VALUES (77, 16, 'Skating');

INSERT INTO hobby (id, id_profile, name)
VALUES (78, 16, 'Computer games');

INSERT INTO hobby (id, id_profile, name)
VALUES (79, 16, 'Diving');

INSERT INTO hobby (id, id_profile, name)
VALUES (80, 16, 'Music');

INSERT INTO hobby (id, id_profile, name)
VALUES (81, 17, 'Photo');

INSERT INTO hobby (id, id_profile, name)
VALUES (82, 17, 'Skateboarding');

INSERT INTO hobby (id, id_profile, name)
VALUES (83, 17, 'Bowling');

INSERT INTO hobby (id, id_profile, name)
VALUES (84, 17, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (85, 17, 'Fishing');

INSERT INTO hobby (id, id_profile, name)
VALUES (86, 18, 'Badminton');

INSERT INTO hobby (id, id_profile, name)
VALUES (87, 18, 'Basketball');

INSERT INTO hobby (id, id_profile, name)
VALUES (88, 18, 'Shooting');

INSERT INTO hobby (id, id_profile, name)
VALUES (89, 18, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (90, 18, 'Computer games');

INSERT INTO hobby (id, id_profile, name)
VALUES (91, 19, 'Bowling');

INSERT INTO hobby (id, id_profile, name)
VALUES (92, 19, 'Ice hockey');

INSERT INTO hobby (id, id_profile, name)
VALUES (93, 19, 'Darts');

INSERT INTO hobby (id, id_profile, name)
VALUES (94, 19, 'Table tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (95, 19, 'Cycling');

INSERT INTO hobby (id, id_profile, name)
VALUES (96, 20, 'Automobiles');

INSERT INTO hobby (id, id_profile, name)
VALUES (97, 20, 'Skiing');

INSERT INTO hobby (id, id_profile, name)
VALUES (98, 20, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (99, 20, 'Volleyball');

INSERT INTO hobby (id, id_profile, name)
VALUES (100, 20, 'Book reading');

INSERT INTO hobby (id, id_profile, name)
VALUES (101, 21, 'Shopping');

INSERT INTO hobby (id, id_profile, name)
VALUES (102, 21, 'Computer games');

INSERT INTO hobby (id, id_profile, name)
VALUES (103, 21, 'Kayak slalom');

INSERT INTO hobby (id, id_profile, name)
VALUES (104, 21, 'Movie');

INSERT INTO hobby (id, id_profile, name)
VALUES (105, 21, 'Automobiles');

INSERT INTO hobby (id, id_profile, name)
VALUES (106, 22, 'Photo');

INSERT INTO hobby (id, id_profile, name)
VALUES (107, 22, 'Kayak slalom');

INSERT INTO hobby (id, id_profile, name)
VALUES (108, 22, 'Tennis');

INSERT INTO hobby (id, id_profile, name)
VALUES (109, 22, 'Baseball');

INSERT INTO hobby (id, id_profile, name)
VALUES (110, 22, 'Bowling');

INSERT INTO hobby (id, id_profile, name)
VALUES (111, 23, 'Volleyball');

INSERT INTO hobby (id, id_profile, name)
VALUES (112, 23, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (113, 23, 'Fishing');

INSERT INTO hobby (id, id_profile, name)
VALUES (114, 23, 'Camping');

INSERT INTO hobby (id, id_profile, name)
VALUES (115, 23, 'Rowing');

INSERT INTO hobby (id, id_profile, name)
VALUES (116, 24, 'Camping');

INSERT INTO hobby (id, id_profile, name)
VALUES (117, 24, 'Movie');

INSERT INTO hobby (id, id_profile, name)
VALUES (118, 24, 'Music');

INSERT INTO hobby (id, id_profile, name)
VALUES (119, 24, 'Painting');

INSERT INTO hobby (id, id_profile, name)
VALUES (120, 24, 'Golf');

--
-- Data for table public.languages (OID = 16497) (LIMIT 0,58)
--
INSERT INTO languages (id, id_profile, name, level, type)
VALUES (1, 1, 'English', 'pre_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (2, 1, 'English', 'pre_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (3, 2, 'English', 'pre_intermediate', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (4, 3, 'English', 'proficiency', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (5, 3, 'English', 'proficiency', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (6, 3, 'French', 'upper_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (7, 3, 'French', 'upper_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (8, 4, 'English', 'pre_intermediate', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (9, 5, 'English', 'pre_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (10, 5, 'English', 'pre_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (11, 5, 'German', 'beginner', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (12, 5, 'German', 'beginner', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (13, 6, 'English', 'beginner', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (14, 6, 'English', 'beginner', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (15, 6, 'Spanish', 'pre_intermediate', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (16, 7, 'English', 'advanced', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (17, 8, 'English', 'intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (18, 8, 'English', 'intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (19, 8, 'French', 'proficiency', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (20, 9, 'English', 'upper_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (21, 9, 'English', 'upper_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (22, 10, 'English', 'advanced', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (23, 10, 'English', 'advanced', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (24, 11, 'English', 'upper_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (25, 11, 'English', 'upper_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (26, 12, 'English', 'elementary', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (27, 12, 'English', 'elementary', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (28, 12, 'French', 'upper_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (29, 12, 'French', 'upper_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (30, 13, 'English', 'pre_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (31, 13, 'English', 'pre_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (32, 14, 'English', 'upper_intermediate', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (33, 15, 'English', 'elementary', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (34, 15, 'English', 'elementary', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (35, 16, 'English', 'pre_intermediate', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (36, 16, 'French', 'intermediate', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (37, 17, 'English', 'upper_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (38, 17, 'English', 'upper_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (39, 17, 'Spanish', 'proficiency', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (40, 17, 'Spanish', 'proficiency', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (41, 18, 'English', 'intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (42, 18, 'English', 'intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (43, 18, 'German', 'proficiency', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (44, 19, 'English', 'elementary', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (45, 19, 'English', 'elementary', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (46, 20, 'English', 'pre_intermediate', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (47, 20, 'English', 'pre_intermediate', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (48, 20, 'German', 'advanced', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (49, 20, 'German', 'advanced', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (50, 21, 'English', 'elementary', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (51, 21, 'French', 'proficiency', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (52, 21, 'French', 'proficiency', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (53, 22, 'English', 'elementary', 'writing');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (54, 22, 'English', 'elementary', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (55, 23, 'English', 'proficiency', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (56, 23, 'Spanish', 'beginner', 'all');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (57, 24, 'English', 'elementary', 'spoken');

INSERT INTO languages (id, id_profile, name, level, type)
VALUES (58, 24, 'English', 'elementary', 'writing');

--
-- Data for table public.practic (OID = 16511) (LIMIT 0,42)
--
INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (1, 1, 'Java Advanced Course', 'DevStudy.net', '2019-12-13', '2020-01-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (2, 1, 'Java Base Course', 'DevStudy.net', '2019-09-13', '2019-10-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (3, 2, 'Java Advanced Course', 'DevStudy.net', '2019-12-13', '2020-01-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (4, 3, 'Java Advanced Course', 'DevStudy.net', '2020-01-13', '2020-02-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (5, 3, 'Java Base Course', 'DevStudy.net', '2019-10-13', '2019-11-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (6, 4, 'Java Advanced Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (7, 4, 'Java Base Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (8, 5, 'Java Core Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (9, 6, 'Java Advanced Course', 'DevStudy.net', '2020-02-13', '2020-03-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (10, 6, 'Java Base Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (11, 6, 'Java Core Course', 'DevStudy.net', '2019-08-13', '2019-09-13', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (12, 7, 'Java Advanced Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (13, 8, 'Java Base Course', 'DevStudy.net', '2019-12-13', '2020-01-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (14, 9, 'Java Advanced Course', 'DevStudy.net', '2020-01-13', '2020-02-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (15, 9, 'Java Base Course', 'DevStudy.net', '2019-10-13', '2019-11-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (16, 10, 'Java Core Course', 'DevStudy.net', '2019-12-13', '2020-01-13', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (17, 11, 'Java Advanced Course', 'DevStudy.net', '2019-12-13', '2020-01-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (18, 11, 'Java Base Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (19, 12, 'Java Base Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (20, 13, 'Java Advanced Course', 'DevStudy.net', '2020-02-13', '2020-03-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (21, 13, 'Java Base Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (22, 14, 'Java Advanced Course', 'DevStudy.net', '2020-01-13', '2020-02-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (23, 15, 'Java Advanced Course', 'DevStudy.net', '2020-02-13', '2020-03-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (24, 16, 'Java Advanced Course', 'DevStudy.net', '2020-01-13', '2020-02-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (25, 16, 'Java Base Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (26, 17, 'Java Advanced Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (27, 17, 'Java Base Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (28, 18, 'Java Core Course', 'DevStudy.net', '2019-12-13', '2020-01-13', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (29, 19, 'Java Advanced Course', 'DevStudy.net', '2020-01-13', '2020-02-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (30, 19, 'Java Base Course', 'DevStudy.net', '2019-10-13', '2019-11-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (31, 20, 'Java Advanced Course', 'DevStudy.net', '2020-02-13', '2020-03-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (32, 20, 'Java Base Course', 'DevStudy.net', '2020-01-13', '2020-02-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (33, 20, 'Java Core Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (34, 21, 'Java Advanced Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (35, 21, 'Java Base Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (36, 22, 'Java Advanced Course', 'DevStudy.net', '2020-02-13', '2020-03-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (37, 22, 'Java Base Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (38, 22, 'Java Core Course', 'DevStudy.net', '2019-09-13', '2019-10-13', 'Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC', NULL, NULL);

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (39, 23, 'Java Advanced Course', 'DevStudy.net', '2020-02-13', '2020-03-13', 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (40, 23, 'Java Base Course', 'DevStudy.net', '2019-11-13', '2019-12-13', 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (41, 24, 'Java Advanced Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''online-resume'' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

INSERT INTO practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src)
VALUES (42, 24, 'Java Base Course', 'DevStudy.net', '2020-03-13', NULL, 'Developing the web application ''blog'' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting', 'http://LINK_TO_DEMO_SITE', 'https://github.com/TODO');

--
-- Data for table public.skill (OID = 16528) (LIMIT 0,207)
--
INSERT INTO skill (id, id_profile, category, value)
VALUES (1, 1, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (2, 1, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (3, 1, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (4, 1, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (5, 1, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (6, 1, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (7, 1, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (8, 1, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (9, 1, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (10, 2, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (11, 2, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (12, 2, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (13, 2, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (14, 2, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (15, 2, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (16, 2, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (17, 2, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (18, 2, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (19, 3, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (20, 3, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (21, 3, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (22, 3, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (23, 3, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (24, 3, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (25, 3, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (26, 3, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (27, 3, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (28, 4, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (29, 4, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (30, 4, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (31, 4, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (32, 4, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (33, 4, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (34, 4, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (35, 4, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (36, 4, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (37, 5, 'Languages', 'Java');

INSERT INTO skill (id, id_profile, category, value)
VALUES (38, 5, 'DBMS', 'Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (39, 5, 'Java', 'Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (40, 5, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (41, 5, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (42, 5, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (43, 6, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (44, 6, 'DBMS', 'Postgresql,Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (45, 6, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (46, 6, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (47, 6, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (48, 6, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (49, 6, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (50, 6, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (51, 6, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (52, 7, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (53, 7, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (54, 7, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (55, 7, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (56, 7, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (57, 7, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (58, 7, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (59, 7, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (60, 7, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (61, 8, 'Languages', 'Java,SQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (62, 8, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (63, 8, 'Web', 'HTML,CSS,JS,Foundation,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (64, 8, 'Java', 'Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (65, 8, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (66, 8, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (67, 8, 'Web Servers', 'Tomcat');

INSERT INTO skill (id, id_profile, category, value)
VALUES (68, 8, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (69, 8, 'Cloud', 'OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (70, 9, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (71, 9, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (72, 9, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (73, 9, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (74, 9, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (75, 9, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (76, 9, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (77, 9, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (78, 9, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (79, 10, 'Languages', 'Java');

INSERT INTO skill (id, id_profile, category, value)
VALUES (80, 10, 'DBMS', 'Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (81, 10, 'Java', 'Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (82, 10, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (83, 10, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (84, 10, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (85, 11, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (86, 11, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (87, 11, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (88, 11, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (89, 11, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (90, 11, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (91, 11, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (92, 11, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (93, 11, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (94, 12, 'Languages', 'Java,SQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (95, 12, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (96, 12, 'Web', 'HTML,CSS,JS,Foundation,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (97, 12, 'Java', 'Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (98, 12, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (99, 12, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (100, 12, 'Web Servers', 'Tomcat');

INSERT INTO skill (id, id_profile, category, value)
VALUES (101, 12, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (102, 12, 'Cloud', 'OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (103, 13, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (104, 13, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (105, 13, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (106, 13, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (107, 13, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (108, 13, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (109, 13, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (110, 13, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (111, 13, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (112, 14, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (113, 14, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (114, 14, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (115, 14, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (116, 14, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (117, 14, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (118, 14, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (119, 14, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (120, 14, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (121, 15, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (122, 15, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (123, 15, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery');

INSERT INTO skill (id, id_profile, category, value)
VALUES (124, 15, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (125, 15, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (126, 15, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (127, 15, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (128, 15, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (129, 15, 'Cloud', 'AWS');

INSERT INTO skill (id, id_profile, category, value)
VALUES (130, 16, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (131, 16, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (132, 16, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (133, 16, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (134, 16, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (135, 16, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (136, 16, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (137, 16, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (138, 16, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (139, 17, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (140, 17, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (141, 17, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (142, 17, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (143, 17, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (144, 17, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (145, 17, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (146, 17, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (147, 17, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (148, 18, 'Languages', 'Java');

INSERT INTO skill (id, id_profile, category, value)
VALUES (149, 18, 'DBMS', 'Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (150, 18, 'Java', 'Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (151, 18, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (152, 18, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (153, 18, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (154, 19, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (155, 19, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (156, 19, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (157, 19, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (158, 19, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (159, 19, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (160, 19, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (161, 19, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (162, 19, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (163, 20, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (164, 20, 'DBMS', 'Postgresql,Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (165, 20, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (166, 20, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (167, 20, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (168, 20, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (169, 20, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (170, 20, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (171, 20, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (172, 21, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (173, 21, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (174, 21, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (175, 21, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (176, 21, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (177, 21, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (178, 21, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (179, 21, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (180, 21, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (181, 22, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (182, 22, 'DBMS', 'Postgresql,Mysql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (183, 22, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (184, 22, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON');

INSERT INTO skill (id, id_profile, category, value)
VALUES (185, 22, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (186, 22, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (187, 22, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (188, 22, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (189, 22, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (190, 23, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (191, 23, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (192, 23, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (193, 23, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (194, 23, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (195, 23, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (196, 23, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (197, 23, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (198, 23, 'Cloud', 'AWS,OpenShift');

INSERT INTO skill (id, id_profile, category, value)
VALUES (199, 24, 'Languages', 'Java,SQL,PLSQL');

INSERT INTO skill (id, id_profile, category, value)
VALUES (200, 24, 'DBMS', 'Postgresql');

INSERT INTO skill (id, id_profile, category, value)
VALUES (201, 24, 'Web', 'HTML,CSS,JS,Bootstrap,JQuery,Foundation');

INSERT INTO skill (id, id_profile, category, value)
VALUES (202, 24, 'Java', 'Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API');

INSERT INTO skill (id, id_profile, category, value)
VALUES (203, 24, 'IDE', 'Eclipse for JEE Developer');

INSERT INTO skill (id, id_profile, category, value)
VALUES (204, 24, 'CVS', 'Git,Github');

INSERT INTO skill (id, id_profile, category, value)
VALUES (205, 24, 'Web Servers', 'Tomcat,Nginx');

INSERT INTO skill (id, id_profile, category, value)
VALUES (206, 24, 'Build system', 'Maven');

INSERT INTO skill (id, id_profile, category, value)
VALUES (207, 24, 'Cloud', 'AWS,OpenShift');

--
-- Data for table public.skill_category (OID = 16554) (LIMIT 0,9)
--
INSERT INTO skill_category (id, category)
VALUES (1, 'Languages');

INSERT INTO skill_category (id, category)
VALUES (2, 'DBMS');

INSERT INTO skill_category (id, category)
VALUES (3, 'Web');

INSERT INTO skill_category (id, category)
VALUES (4, 'Java');

INSERT INTO skill_category (id, category)
VALUES (5, 'IDE');

INSERT INTO skill_category (id, category)
VALUES (6, 'CVS');

INSERT INTO skill_category (id, category)
VALUES (7, 'Web Servers');

INSERT INTO skill_category (id, category)
VALUES (8, 'Build system');

INSERT INTO skill_category (id, category)
VALUES (9, 'Cloud');

--
-- Definition for index profile_pkey (OID = 16417) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_uid_key (OID = 16419) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_uid_key
    UNIQUE (uid);
--
-- Definition for index profile_phone_key (OID = 16421) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_phone_key
    UNIQUE (phone);
--
-- Definition for index profile_email_key (OID = 16423) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_email_key
    UNIQUE (email);
--
-- Definition for index certificate_pkey (OID = 16445) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_pkey
    PRIMARY KEY (id);
--
-- Definition for index certificate_fk (OID = 16447) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index course_pkey (OID = 16458) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey
    PRIMARY KEY (id);
--
-- Definition for index course_fk (OID = 16460) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index education_pkey (OID = 16474) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_pkey
    PRIMARY KEY (id);
--
-- Definition for index education_fk (OID = 16476) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index hobby_pkey (OID = 16487) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_pkey
    PRIMARY KEY (id);
--
-- Definition for index hobby_fk (OID = 16490) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index languages_pkey (OID = 16502) : 
--
ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_pkey
    PRIMARY KEY (id);
--
-- Definition for index languages_fk (OID = 16504) : 
--
ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index practic_pkey (OID = 16518) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_pkey
    PRIMARY KEY (id);
--
-- Definition for index practic_fk (OID = 16521) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_pkey (OID = 16535) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_fk (OID = 16537) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index profile_restore_pkey (OID = 16548) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_restore_token_key (OID = 16550) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_token_key
    UNIQUE (token);
--
-- Definition for index skill_category_pkey (OID = 16558) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_category_category_key (OID = 16560) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_category_key
    UNIQUE (category);
--
-- Definition for index profile_restore_fk (OID = 16562) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_fk
    FOREIGN KEY (id) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Data for sequence public.profile_id_seq (OID = 16405)
--
SELECT pg_catalog.setval('profile_id_seq', 24, true);
--
-- Data for sequence public.certificate_id_seq (OID = 16436)
--
SELECT pg_catalog.setval('certificate_id_seq', 22, true);
--
-- Data for sequence public.course_id_seq (OID = 16452)
--
SELECT pg_catalog.setval('course_id_seq', 16, true);
--
-- Data for sequence public.education_id_seq (OID = 16465)
--
SELECT pg_catalog.setval('education_id_seq', 24, true);
--
-- Data for sequence public.hobby_id_seq (OID = 16481)
--
SELECT pg_catalog.setval('hobby_id_seq', 120, true);
--
-- Data for sequence public.languages_id_seq (OID = 16495)
--
SELECT pg_catalog.setval('languages_id_seq', 58, true);
--
-- Data for sequence public.practic_id_seq (OID = 16509)
--
SELECT pg_catalog.setval('practic_id_seq', 42, true);
--
-- Data for sequence public.skill_id_seq (OID = 16526)
--
SELECT pg_catalog.setval('skill_id_seq', 207, true);
--
-- Data for sequence public.profile_restore_id_seq (OID = 16542)
--
SELECT pg_catalog.setval('profile_restore_id_seq', 1, false);
--
-- Data for sequence public.skill_category_id_seq (OID = 16552)
--
SELECT pg_catalog.setval('skill_category_id_seq', 1, false);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
