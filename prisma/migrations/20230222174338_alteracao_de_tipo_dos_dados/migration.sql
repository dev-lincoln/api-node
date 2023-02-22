/*
  Warnings:

  - You are about to alter the column `telefone` on the `Estabelecimento` table. The data in that column could be lost. The data in that column will be cast from `Int` to `BigInt`.
  - You are about to alter the column `whatsapp` on the `Estabelecimento` table. The data in that column could be lost. The data in that column will be cast from `Int` to `BigInt`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Estabelecimento" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "segmento" TEXT NOT NULL,
    "telefone" BIGINT NOT NULL,
    "whatsapp" BIGINT,
    "imagem" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_Estabelecimento" ("createdAt", "endereco", "id", "imagem", "nome", "segmento", "telefone", "whatsapp") SELECT "createdAt", "endereco", "id", "imagem", "nome", "segmento", "telefone", "whatsapp" FROM "Estabelecimento";
DROP TABLE "Estabelecimento";
ALTER TABLE "new_Estabelecimento" RENAME TO "Estabelecimento";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
