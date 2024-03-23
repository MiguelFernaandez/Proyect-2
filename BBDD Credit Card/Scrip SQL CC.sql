SELECT * FROM credit_card_india.trans;




USE credit_card_India;
ALTER TABLE trans
ADD PRIMARY KEY (trans_id);

ALTER TABLE card_type
ADD PRIMARY KEY (Card_id);

ALTER TABLE expense
ADD PRIMARY KEY (Exp_id);

ALTER TABLE trans
ADD CONSTRAINT card_id
FOREIGN KEY (Card_Type) REFERENCES card_type(Card_id);

ALTER TABLE trans
ADD CONSTRAINT exp_id
FOREIGN KEY (Exp_id) REFERENCES expense(Exp_id);

ALTER TABLE credit_card_india.card_type
RENAME COLUMN Card_Type TO Card_name;

ALTER TABLE trans MODIFY Date ;

-- Join, group by  y subquery

SELECT COUNT(*) AS Trans_Mujeres, ct.Card_name, SUM(Amount) as suma
FROM trans t join card_type ct on card_id = t.Card_Type
WHERE  Gender = 'F'
GROUP BY ct.CArd_name
ORDER BY Trans_Mujeres DESC;

select COUNT(*) as conteo, 
(select Card_name from credit_card_india.card_type where Card_id = t.Card_Type) as Type_of_card, SUM(amount)
from credit_card_India.trans t
where Gender = 'M'
group by Type_of_card
ORDER BY conteo desc;

-- Change data type

ALTER TABLE trans ADD COLUMN new_date DATE;

UPDATE trans 
SET new_date = STR_TO_DATE(Date, '%d-%b-%y');

SELECT * FROM trans;

ALTER TABLE trans DROP COLUMN Date;

ALTER TABLE credit_card_india.trans
RENAME COLUMN new_date TO Date







