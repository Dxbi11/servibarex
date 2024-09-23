/*
  Warnings:

  - A unique constraint covering the columns `[roomNumber,hotelId,floorId]` on the table `Room` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Room_roomNumber_hotelId_key";

-- CreateIndex
CREATE UNIQUE INDEX "Room_roomNumber_hotelId_floorId_key" ON "Room"("roomNumber", "hotelId", "floorId");
