/*
  Warnings:

  - Added the required column `bairro` to the `Estabelecimento` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Estabelecimento" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "bairro" TEXT NOT NULL,
    "segmento" TEXT NOT NULL,
    "telefone" TEXT NOT NULL,
    "whatsapp" TEXT,
    "imagem" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_Estabelecimento" ("createdAt", "endereco", "id", "imagem", "nome", "segmento", "telefone", "whatsapp") SELECT "createdAt", "endereco", "id", "imagem", "nome", "segmento", "telefone", "whatsapp" FROM "Estabelecimento";
DROP TABLE "Estabelecimento";
ALTER TABLE "new_Estabelecimento" RENAME TO "Estabelecimento";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
