/*
  Warnings:

  - You are about to drop the column `hasCertification` on the `mc_explorers` table. All the data in the column will be lost.
  - You are about to drop the column `missionCommander` on the `mc_explorers` table. All the data in the column will be lost.
  - You are about to alter the column `name` on the `mc_explorers` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.
  - Added the required column `mission_commander` to the `mc_explorers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "mc_explorers" DROP COLUMN "hasCertification",
DROP COLUMN "missionCommander",
ADD COLUMN     "has_certification" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "mission_commander" VARCHAR(255) NOT NULL,
ALTER COLUMN "name" SET DATA TYPE VARCHAR(255);
