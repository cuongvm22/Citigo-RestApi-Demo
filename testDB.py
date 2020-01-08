import psycopg2

DATABASE_URL = "postgres://ownbwemtmlqyeu:5afd0c85c15b254ff35c5d16b9683169e67cde8064d03f45b02d0922e39dd894@ec2-107-22-216-123.compute-1.amazonaws.com:5432/d2rl21nbpr216a"

conn = psycopg2.connect(DATABASE_URL, sslmode='require')

cur = conn.cursor()

cur.execute('SELECT "product_contain"."storeId_id" FROM "product_contain" WHERE "product_contain"."productId_id" = 3 ORDER BY "product_contain"."price" ASC LIMIT 3')
a = cur.fetchall()
print((a))