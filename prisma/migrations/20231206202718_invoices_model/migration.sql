-- CreateTable
CREATE TABLE "invoices" (
    "id" SERIAL NOT NULL,
    "total" VARCHAR(50) NOT NULL,
    "discount" VARCHAR(50) NOT NULL,
    "vat" VARCHAR(50) NOT NULL,
    "payable" VARCHAR(50) NOT NULL,
    "user_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "invoices_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "invoices" ADD CONSTRAINT "invoices_customer_id_fkey" FOREIGN KEY ("customer_id") REFERENCES "customers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
