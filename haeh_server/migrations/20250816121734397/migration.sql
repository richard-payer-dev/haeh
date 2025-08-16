BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "translation" (
    "id" bigserial PRIMARY KEY,
    "regexp" text NOT NULL,
    "translation" text NOT NULL
);


--
-- MIGRATION VERSION FOR haeh
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('haeh', '20250816121734397', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250816121734397', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
