select * from pedido_item;

select * 
from pedido_item
inner join pedido
on pedido_item.ped_cd_id = pedido.ped_cd_id;

select * 
from pedido_item
inner join pedido
on pedido_item.ped_cd_id = pedido.ped_cd_id
inner join produto
on produto.prd_cd_id = pedido_item.prd_cd_id;

select 
cli_tx_cpf as cpf,
cli_tx_nome_de_usuario as cliente,
pedido_item.ped_cd_id as nr_pedido,
ped_dt_data_pedido as data_pedido,
cat_tx_nome as categoria,
prd_tx_nome as nome_produto,
pdt_int_quantidade as quantidade,
prd_dec_valor_unitario as valor_produto,
prd_dec_valor_unitario * pdt_int_quantidade as valor_total
from pedido
inner join pedido_item
on pedido.ped_cd_id = pedido_item.ped_cd_id
inner join produto
on produto.prd_cd_id = pedido_item.prd_cd_id
inner join categoria
on categoria.cat_cd_id = produto.cat_cd_id
inner join cliente
on cliente.cli_cd_id = pedido.cli_cd_id
where pedido.ped_cd_id = :nr_nota;

select * from cliente;
--Concatenacao varios
select cli_cd_id, cli_tx_nome_completo, cli_tx_nome_de_usuario, 
cli_tx_rua || ', ' || cli_int_numero 
as cli_tx_end_completo
from cliente;
select * from pedido;

select sum(prd_int_quantidade_estoque) as prd_int_estoque_total from produto;

select prd_int_quantidade_estoque, sum(prd_int_quantidade_estoque) as prd_int_estoque_total_categoria

select prod_dec_valor_unitario,
round (prod_dec_valor_unitario, 2)
from produto;
