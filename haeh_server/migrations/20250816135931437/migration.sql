BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "answer" (
    "id" bigserial PRIMARY KEY,
    "isCorrect" boolean NOT NULL,
    "text" text NOT NULL,
    "questionId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "question" (
    "id" bigserial PRIMARY KEY,
    "audioPath" text NOT NULL,
    "category" text NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "answer"
    ADD CONSTRAINT "answer_fk_0"
    FOREIGN KEY("questionId")
    REFERENCES "question"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR haeh
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('haeh', '20250816135931437', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250816135931437', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
