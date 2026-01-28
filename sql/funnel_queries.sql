SELECT 
    device,      
    source,      
    COUNT(DISTINCT CASE WHEN event_type = 'homepage_view' THEN user_id END) AS Home_View,
    COUNT(DISTINCT CASE WHEN event_type = 'product_view' THEN user_id END) AS Product_View,
    COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS Add_Cart,
    COUNT(DISTINCT CASE WHEN event_type = 'checkout_start' THEN user_id END) AS Checkout,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase_success' THEN user_id END) AS Purchase
FROM ecommerce_funnel
GROUP BY device, source  
ORDER BY device, source;