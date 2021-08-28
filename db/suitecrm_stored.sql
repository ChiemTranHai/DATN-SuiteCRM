use suitecrm;
GRANT SELECT ON mysql.proc TO 'root'@'localhost';
-- TRIGGER
drop trigger if exists t_updateQtyProductInsert;
//
delimiter //
CREATE TRIGGER t_updateQtyProductInsert
AFTER INSERT ON aos_products_quotes
FOR EACH ROW
BEGIN
	UPDATE aos_products_cstm SET soluong_c=soluong_c-NEW.product_qty WHERE id_c=NEW.product_id;
END;
//
drop trigger if exists t_updateQtyProductUpdate;
//
delimiter //
CREATE TRIGGER t_updateQtyProductUpdate
AFTER UPDATE ON aos_products_quotes
FOR EACH ROW
BEGIN
	UPDATE aos_products_cstm SET soluong_c=soluong_c-NEW.product_qty+OLD.product_qty WHERE id_c=NEW.product_id;
END;
//

drop trigger if exists t_updateIdProductCategory;
//
-- change id before insert category

delimiter //
CREATE TRIGGER t_updateIdProductCategory
BEFORE INSERT ON aos_product_categories
FOR EACH ROW
BEGIN
	DECLARE p_max_id BIGINT(20);
	SELECT MAX(id-0)
    INTO p_max_id
    FROM aos_product_categories;
	SET NEW.id=p_max_id+1;
END;
//
drop trigger if exists t_updateIdProduct;
//
-- change id before insert product

delimiter //
CREATE TRIGGER t_updateIdProduct
BEFORE INSERT ON aos_products
FOR EACH ROW
BEGIN
	DECLARE p_max_id BIGINT(20);
	SELECT MAX(id-0)
    INTO p_max_id
    FROM aos_products;
    IF (p_max_id+1=737) THEN
		SET NEW.id=750;
	ELSE
		SET NEW.id=p_max_id+1;
    END IF;
END;
//
drop trigger if exists t_updateIdProductCount;
//
-- change id before insert product count
delimiter //
CREATE TRIGGER t_updateIdProductCount
BEFORE INSERT ON aos_products_cstm
FOR EACH ROW
BEGIN
	DECLARE p_max_id BIGINT(20);
	SELECT MAX(id_c-0)
    INTO p_max_id
    FROM aos_products_cstm;
    IF (p_max_id+1=737) THEN
		SET NEW.id_c=750;
	ELSE
		SET NEW.id_c=p_max_id+1;
    END IF;
END;
//
DROP PROCEDURE IF EXISTS sp_insert_category_suite;
//
-- PROCEDURE
delimiter //
CREATE PROCEDURE `sp_insert_category_suite`(p_id char(36),p_name varchar(255),p_description text,p_is_parent boolean,p_parent_category_id char(36))
BEGIN
	IF NOT EXISTS (SELECT* FROM aos_product_categories WHERE id=p_id) THEN
    BEGIN
	DECLARE p_date_entered DATETIME;
    SELECT date_entered
    INTO p_date_entered
    FROM aos_product_categories
    WHERE id=p_id;
    IF (p_date_entered IS NULL) THEN
		SET p_date_entered=now()-INTERVAL 7 HOUR;
    END IF;
	INSERT INTO aos_product_categories 
    VALUES(p_id,p_name,p_date_entered,NOW()-INTERVAL 7 HOUR,'1','1',p_description,false,'1',p_is_parent,p_parent_category_id);
    END;
    END IF;
END
//
DROP PROCEDURE IF EXISTS sp_select_product_category_suite;
//
delimiter //
CREATE PROCEDURE `sp_select_product_category_suite`()
BEGIN
	SELECT id,name,description,is_parent,parent_category_id
    FROM aos_product_categories;
END
//

DROP PROCEDURE IF EXISTS sp_insert_product_suite;
//
delimiter //
CREATE PROCEDURE `sp_insert_product_suite`(p_id char(36),p_name varchar(255),p_description text,p_cost decimal(26,6),
				p_price decimal(26,6),p_url varchar(255),p_product_category_id char(36),p_count int(255))
BEGIN
	IF NOT EXISTS (SELECT* FROM aos_products WHERE id=p_id) THEN
    BEGIN
		DECLARE p_date_entered DATETIME;
		SELECT date_entered
		INTO p_date_entered
		FROM aos_products
		WHERE id=p_id;
		IF (p_date_entered IS NULL) THEN
			SET p_date_entered=now()-INTERVAL 7 HOUR;
		END IF;
		
        INSERT INTO aos_products(id,name,date_entered,date_modified,modified_user_id,created_by,description,maincode,type,cost,currency_id,price,url,aos_product_category_id) 
		VALUES(p_id,p_name,p_date_entered,NOW()-INTERVAL 7 HOUR,'1','1',p_description,'XXXX','Good',p_cost,'-99',p_price,p_url,p_product_category_id);
		
        INSERT INTO aos_products_cstm(id_c,soluong_c) 
		VALUES(p_id,p_count);
    END;
    END IF;
END;
//
DROP PROCEDURE IF EXISTS sp_select_product_suite;
//
delimiter //
CREATE PROCEDURE `sp_select_product_suite`()
BEGIN
	SELECT product.id AS id,product.name AS name,product.description AS description,product.cost AS cost,product.price AS price,product.url AS url,product.aos_product_category_id AS product_category_id,product_count.soluong_c AS count
    FROM aos_products product INNER JOIN aos_products_cstm product_count ON product.id=product_count.id_c;
END
//
DROP PROCEDURE IF EXISTS sp_insert_contact_suite;
//
delimiter //
CREATE PROCEDURE `sp_insert_contact_suite`(p_email varchar(255),p_first_name varchar(100),p_last_name varchar(100),p_primary_address_city varchar(100),p_primary_address_state varchar(100),p_primary_address_postalcode varchar(20),p_primary_address_country varchar(255),p_customer_id bigint)
BEGIN
	IF NOT EXISTS (SELECT* FROM contacts WHERE customer_id=p_customer_id) THEN
    BEGIN
        DECLARE v_id char(36);
        DECLARE v_id_address char(36);
        DECLARE v_id_email_addr_bean_rel char(36);
        DECLARE v_id_sugarfeed char(36);
        DECLARE v_name_sugarfeed varchar(255);
		SET v_id=UUID();
        SET v_id_email_addr_bean_rel=UUID();
        SET v_id_sugarfeed=UUID();
        SET v_name_sugarfeed=CONCAT('<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:',v_id,':',p_first_name,' ',p_last_name,']');
        IF (EXISTS(SELECT* FROM email_addresses WHERE email_address=p_email))THEN
			SELECT id
            INTO v_id_address
            FROM email_addresses
            WHERE email_address=p_email;
        ELSE
			SET v_id_address=UUID();
			INSERT INTO email_addresses(id,email_address,email_address_caps,date_created,date_modified)
			VALUES(v_id_address,p_email,UPPER(p_email),NOW()-INTERVAL 7 HOUR,NOW()-INTERVAL 7 HOUR);
        END IF;
        
		INSERT INTO contacts(id,date_entered,date_modified,modified_user_id,created_by,assigned_user_id,first_name,last_name,primary_address_city,primary_address_state,primary_address_postalcode,primary_address_country,portal_user_type,customer_id)
		VALUES(v_id,NOW()-INTERVAL 7 HOUR,NOW()-INTERVAL 7 HOUR,'1','1','1',p_first_name,p_last_name,p_primary_address_city,p_primary_address_state,p_primary_address_postalcode,p_primary_address_country,'Single',p_customer_id);
		
        INSERT INTO contacts_cstm(id_c,social_c) 
        VALUES(v_id,'');
        
        INSERT INTO email_addr_bean_rel(id,email_address_id,bean_id,bean_module,primary_address,date_created,date_modified)
        VALUES(v_id_email_addr_bean_rel,v_id_address,v_id,'Contacts',true,NOW()-INTERVAL 7 HOUR,NOW()-INTERVAL 7 HOUR);
        
        INSERT INTO sugarfeed(id,name,date_entered,date_modified,modified_user_id,created_by,assigned_user_id,related_module,related_id)
        VALUES(v_id_sugarfeed,v_name_sugarfeed,NOW()-INTERVAL 7 HOUR,NOW()-INTERVAL 7 HOUR,'1','1','1','Contacts',v_id);
	END;
	END IF;
END;
//
DROP PROCEDURE IF EXISTS sp_insert_invoices_suite;
//
delimiter //
CREATE PROCEDURE `sp_insert_invoices_suite`(p_order_id bigint,p_total_sales decimal(26,6),p_tax_total decimal(26,6),p_shipping_total decimal(26,6),p_discount_amount decimal(26,6),p_shipping_tax decimal(26,6),p_country varchar(255),p_postcode varchar(20),p_city varchar(100),p_state varchar(100),p_status varchar(100),p_customer_id bigint)
BEGIN
	IF (NOT EXISTS(SELECT* FROM aos_invoices WHERE order_id=p_order_id)) THEN
    BEGIN
		DECLARE v_contact_id char(36);
		DECLARE v_status varchar(100);
		DECLARE v_id char(36);
		DECLARE v_number int(11);
		SET v_id=UUID();
		SELECT id
		INTO v_contact_id
		FROM contactssp_insert_category
		WHERE customer_id=p_customer_id;
		SELECT MAX(number)+1
		INTO v_number
		FROM aos_invoices;
		IF (p_status='wc-completed') THEN
			SET v_status='Paid';
		ELSE
			SET v_status='Unpaid';
		END IF;
		INSERT INTO aos_invoices(id,date_entered,date_modified,modified_user_id,created_by,assigned_user_id,billing_contact_id,billing_address_city,billing_address_postalcode,billing_address_country,number,total_amt,subtotal_amount,discount_amount,tax_amount,shipping_amount,shipping_tax,shipping_tax_amt,total_amount,currency_id,quote_date,invoice_date,status,order_id)
		VALUES (v_id,NOW() - INTERVAL 7 HOUR,NOW()-INTERVAL 7 HOUR,'1','1','1',v_contact_id,p_city,p_postcode,p_country,v_number,p_total_sales+p_discount_amount,p_total_sales,p_discount_amount,p_tax_total,p_shipping_total,p_shipping_tax,p_shipping_tax,p_total_sales,'-99',DATE(NOW()- INTERVAL 7 HOUR),DATE(NOW()-INTERVAL 7 HOUR),v_status,p_order_id);
		INSERT INTO aos_invoices_cstm (id_c,invoicetype_c)
		VALUES(v_id,'^Online^');
    END;
    END IF;
END;
//
