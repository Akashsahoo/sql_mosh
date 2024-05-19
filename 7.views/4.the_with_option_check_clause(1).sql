-- with option check keyword row agar update ke bad hatne wali hoti hain view me to rok deta hain

UPDATE  invoices_with_balance 
SET payment_total = invoice_total
WHERE invoice_id = 3;