-- CreateTable
CREATE TABLE "invoice_products" (
    "id" SERIAL NOT NULL,
    "qty" VARCHAR(50) NOT NULL,
    "sale_price" VARCHAR(50) NOT NULL,
    "user_id" INTEGER NOT NULL,
    "product_id" INTEGER NOT NULL,
    "invoice_id" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "invoice_products_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "invoice_products" ADD CONSTRAINT "invoice_products_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "invoice_products" ADD CONSTRAINT "invoice_products_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "invoice_products" ADD CONSTRAINT "invoice_products_invoice_id_fkey" FOREIGN KEY ("invoice_id") REFERENCES "invoices"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
