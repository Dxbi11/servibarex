-- CreateEnum
CREATE TYPE "permission" AS ENUM ('admin', 'user');

-- AlterTable
ALTER TABLE "Hotel" ADD COLUMN     "pin" INTEGER;
