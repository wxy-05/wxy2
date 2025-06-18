create table sneaker_manage.inventory
(
    inventory_id      bigint unsigned auto_increment comment '库存ID'
        primary key,
    warehouse_id      bigint unsigned not null comment '关联仓库ID',
    product_id        bigint unsigned not null comment '关联商品ID',
    total_stock       int default 0   not null comment '库存总数',
    new_stock         int default 0   not null comment '全新',
    defect_stock      int default 0   not null comment '瑕疵',
    uninspected_stock int default 0   not null comment '未质检',
    good_stock        int default 0   not null comment '良品'
)
    comment '库存信息表（仓库+商品维度）';

create index idx_warehouse_product
    on sneaker_manage.inventory (warehouse_id, product_id);

create index product_id
    on sneaker_manage.inventory (product_id);

