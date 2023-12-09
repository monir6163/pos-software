-- CreateTable
CREATE TABLE "products" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "slug" VARCHAR(50) NOT NULL,
    "price" VARCHAR(50) NOT NULL,
    "unit" VARCHAR(50) NOT NULL,
    "user_id" INTEGER NOT NULL,
    "category_id" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "products_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "products" ADD CONSTRAINT "products_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
