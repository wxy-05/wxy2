create table sneaker_manage.orders
(
    order_id     bigint unsigned auto_increment comment '订单ID'
        primary key,
    warehouse_id bigint unsigned                    not null comment '关联仓库ID',
    product_id   bigint unsigned                    not null comment '关联商品ID',
    order_type   tinyint                            not null comment '类型：1-现货订单，2-入仓订单',
    quantity     int                                not null comment '销售数量',
    total_amount decimal(10, 2)                     not null comment '订单总额',
    order_time   datetime default CURRENT_TIMESTAMP not null comment '下单时间'
)
    comment '销售订单表';

create index idx_warehouse_time
    on sneaker_manage.orders (warehouse_id, order_time);

create index product_id
    on sneaker_manage.orders (product_id);

