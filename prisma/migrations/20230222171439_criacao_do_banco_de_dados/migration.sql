-- CreateTable
CREATE TABLE "Estabelecimento" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "segmento" TEXT NOT NULL,
    "telefone" INTEGER NOT NULL,
    "whatsapp" INTEGER,
    "imagem" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
