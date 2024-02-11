/*
  Warnings:

  - The primary key for the `PollOption` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "PollOption" DROP CONSTRAINT "PollOption_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "PollOption_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "PollOption_id_seq";
