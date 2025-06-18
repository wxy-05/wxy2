create table sneaker_manage.bids
(
    bid_id       bigint unsigned auto_increment comment '出价ID'
        primary key,
    warehouse_id bigint unsigned                    not null comment '关联仓库ID',
    product_id   bigint unsigned                    not null comment '关联商品ID',
    bid_type     tinyint                            not null comment '类型：1-入仓出价，2-现货出价',
    bid_price    decimal(10, 2)                     not null comment '出价金额',
    bid_time     datetime default CURRENT_TIMESTAMP not null comment '出价时间'
)
    comment '出价记录表';

create index idx_warehouse_product
    on sneaker_manage.bids (warehouse_id, product_id);

create index product_id
    on sneaker_manage.bids (product_id);

