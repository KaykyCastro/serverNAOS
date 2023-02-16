-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Ask" (
    "_id" TEXT NOT NULL PRIMARY KEY,
    "status" TEXT,
    "imagePayment" TEXT,
    "imageRgFront" TEXT,
    "imageRgBack" TEXT,
    "imageProofResidence" TEXT,
    "imageRegistration" TEXT
);
INSERT INTO "new_Ask" ("_id", "imagePayment", "imageProofResidence", "imageRegistration", "imageRgBack", "imageRgFront", "status") SELECT "_id", "imagePayment", "imageProofResidence", "imageRegistration", "imageRgBack", "imageRgFront", "status" FROM "Ask";
DROP TABLE "Ask";
ALTER TABLE "new_Ask" RENAME TO "Ask";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
