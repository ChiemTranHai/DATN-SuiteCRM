use themay;
GRANT SELECT ON mysql.proc TO 'root'@'localhost';
DROP PROCEDURE IF EXISTS select_product_the_may;
//
delimiter //
CREATE PROCEDURE `select_product_the_may`()
BEGIN
SELECT DISTINCT(wproduct.product_id) AS id,wp.post_title AS name,wp.post_content AS description,wproduct.min_price AS cost,wproduct.max_price AS price,wp.guid AS url,wtr.term_taxonomy_id AS product_category_id,wproduct.stock_quantity AS count
FROM wptk_term_relationships wtr INNER JOIN wptk_term_taxonomy wtt ON wtr.term_taxonomy_id=wtt.term_id 
								INNER JOIN wptk_posts wp ON wtr.object_id=wp.ID 
                                INNER JOIN wptk_wc_product_meta_lookup wproduct ON WP.ID=wproduct.product_id 
WHERE wtt.taxonomy='product_cat' AND wp.post_status='publish';
END;
//
call select_product_the_may();
DROP PROCEDURE IF EXISTS `sp_select_category_the_may`;
//
delimiter //
CREATE PROCEDURE `sp_select_category_the_may`()
BEGIN
	SELECT t.term_taxonomy_id AS id,wt.name AS name,t.description AS description,
    EXISTS (SELECT* FROM wptk_term_taxonomy tt WHERE tt.parent=t.term_taxonomy_id) AS is_parent,t.parent AS parent_id
	FROM wptk_term_taxonomy t INNER JOIN wptk_terms wt ON t.term_id=wt.term_id
	WHERE t.taxonomy='product_cat';
END
//
call sp_select_category_the_may();
DROP PROCEDURE IF EXISTS `sp_insert_category`;
//
delimiter //
CREATE PROCEDURE `sp_insert_category`(p_id BIGINT(20),p_name VARCHAR(200),p_description TEXT,p_parent BIGINT(20))
BEGIN
	IF NOT EXISTS(SELECT* FROM wptk_terms WHERE term_id=p_id) THEN
    BEGIN
		INSERT INTO wptk_terms(term_id,name,term_group) VALUES(p_id,p_name,0);
		INSERT INTO wptk_term_taxonomy(term_taxonomy_id,term_id,taxonomy,description,parent,count) 
		VALUES(p_id,p_id,'product_cat',p_description,p_parent,0);
    END;
    END IF;
END;
//
DROP PROCEDURE IF EXISTS sp_insert_product;
//
delimiter //
CREATE PROCEDURE `sp_insert_product`(p_id bigint(20),p_name varchar(255),p_description text,p_cost decimal(26,6),
				p_price decimal(26,6),p_url varchar(255),p_product_category_id bigint(20),p_count int(255))
BEGIN
	IF NOT EXISTS(SELECT* FROM wptk_wc_product_meta_lookup WHERE product_id=p_id) THEN
    BEGIN
		DECLARE v_stock_status varchar(100);
		DECLARE p_date_entered DATETIME;
		SELECT post_date
		INTO p_date_entered
		FROM wptk_posts
		WHERE id=p_id;
		IF (p_date_entered IS NULL) THEN
			SET p_date_entered=NOW();
		END IF;
		IF (p_count>0) THEN
			SET v_stock_status='instock';
		ELSE
			SET v_stock_status='outofstock';
		END IF;
        
		INSERT INTO wptk_wc_product_meta_lookup(product_id,min_price,max_price,stock_quantity,stock_status,tax_status)
		VALUES(p_id,p_cost,p_price,p_count,v_stock_status,'taxable');
        
		INSERT INTO wptk_term_relationships(object_id,term_taxonomy_id)
		VALUES(p_id,1);
        
		INSERT INTO wptk_term_relationships(object_id,term_taxonomy_id)
		VALUES(p_id,p_product_category_id);
        
		UPDATE wptk_termmeta
		SET meta_value=meta_value+1
		WHERE term_id=p_product_category_id AND meta_key='product_count_product_tag';
        
		UPDATE wptk_term_taxonomy
        SET count=count+1
        WHERE term_id=1;
        
        UPDATE wptk_term_taxonomy
        SET count=count+1
        WHERE term_id=p_product_category_id;
        
		INSERT INTO wptk_posts(ID,post_author,post_date,post_date_gmt,post_content,post_title,post_status,comment_status,ping_status,post_name,post_modified,post_modified_gmt,guid,post_type)
		VALUES(p_id,1,p_date_entered,p_date_entered,p_description,p_name,'publish','open','closed',CONCAT('product-',p_id),NOW(),NOW(),p_url,'product');
	END;
    END IF;
END
//
DROP PROCEDURE IF EXISTS sp_select_contact;
//
delimiter //
CREATE PROCEDURE `sp_select_contact`()
BEGIN
	SELECT customer_id AS id,first_name,last_name,email,country,postcode,city,state
	FROM wptk_wc_customer_lookup;
END;
//
DROP PROCEDURE IF EXISTS sp_select_invoices;
//
delimiter //
CREATE PROCEDURE `sp_select_invoices`()
BEGIN
	SELECT wos.order_id as id,wos.total_sales,wos.tax_total,wos.shipping_total,IFNULL(wocl.discount_amount,0) AS discount_amount,IFNULL(wotl.shipping_tax,0) AS shipping_tax,wcl.country,wcl.postcode,wcl.city,wcl.state,wos.status,wos.customer_id
	FROM wptk_wc_order_stats wos LEFT JOIN wptk_wc_order_coupon_lookup wocl ON wos.order_id=wocl.order_id
							LEFT JOIN wptk_wc_order_tax_lookup wotl ON wos.order_id=wotl.order_id
                            INNER JOIN wptk_wc_customer_lookup wcl ON wos.customer_id=wcl.customer_id;
END;
//