-- CreateTable
CREATE TABLE "User" (
    "_id" TEXT NOT NULL PRIMARY KEY
);

-- CreateTable
CREATE TABLE "UserAsk" (
    "_id" TEXT NOT NULL PRIMARY KEY,
    "user_id" TEXT NOT NULL,
    "ask_id" TEXT NOT NULL,
    CONSTRAINT "UserAsk_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User" ("_id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "UserAsk_ask_id_fkey" FOREIGN KEY ("ask_id") REFERENCES "Ask" ("_id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Ask" (
    "_id" TEXT NOT NULL PRIMARY KEY,
    "status" TEXT NOT NULL,
    "imagePayment" TEXT NOT NULL,
    "imageRgFront" TEXT NOT NULL,
    "imageRgBack" TEXT NOT NULL,
    "imageProofResidence" TEXT NOT NULL,
    "imageRegistration" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "UserAsk_ask_id_user_id_key" ON "UserAsk"("ask_id", "user_id");
