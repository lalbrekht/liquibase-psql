--liquibase formatted sql
--changeset Leonid Albrecht:init:create_v2storage

SET search_path='public';

CREATE TABLE test (a text);

select pg_sleep(10 * 60);

CREATE TABLE t (t text);
