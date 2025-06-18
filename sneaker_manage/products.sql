create table sneaker_manage.products
(
    product_id   bigint unsigned auto_increment comment '商品ID'
        primary key,
    product_name varchar(255) not null comment '商品名称',
    product_code varchar(64)  not null comment '货号（唯一）',
    category     varchar(64)  null comment '分类（如：运动鞋）',
    brand        varchar(64)  null comment '品牌（如：Nike）',
    constraint idx_product_code
        unique (product_code)
)
    comment '商品信息表';

