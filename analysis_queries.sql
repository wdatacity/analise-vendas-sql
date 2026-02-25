-- Faturamento total por ano
SELECT 
    strftime('%Y', data_venda) AS ano,
    SUM(valores_produtos * unidades_comprados) AS faturamento_total
FROM produtos_clientes
GROUP BY ano
ORDER BY ano;


-- Top 5 produtos com maior faturamento
SELECT 
    produto_vendido,
    SUM(valores_produtos * unidades_comprados) AS faturamento
FROM produtos_clientes
GROUP BY produto_vendido
ORDER BY faturamento DESC
LIMIT 5;


-- Ticket médio das vendas
SELECT 
    AVG(valores_produtos * unidades_comprados) AS ticket_medio
FROM produtos_clientes;


-- Volume de vendas por ano
SELECT 
    strftime('%Y', data_venda) AS ano,
    COUNT(*) AS total_vendas
FROM produtos_clientes
GROUP BY ano
ORDER BY ano;
