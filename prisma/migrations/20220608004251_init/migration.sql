/*
  Warnings:

  - You are about to drop the `MissionCommander` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "MissionCommander";

-- CreateTable
CREATE TABLE "mc_explorers" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "lang" VARCHAR(255) NOT NULL,
    "missionCommander" VARCHAR(255) NOT NULL,
    "enrollments" INTEGER NOT NULL DEFAULT 0,
    "hasCertification" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "mc_explorers_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "mc_explorers_name_key" ON "mc_explorers"("name");
