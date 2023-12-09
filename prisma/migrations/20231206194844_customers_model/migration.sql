-- CreateTable
CREATE TABLE "customers" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    "mobile" VARCHAR(50) NOT NULL,
    "user_id" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "customers_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "customers" ADD CONSTRAINT "customers_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
