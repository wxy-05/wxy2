create table sneaker_manage.warehouses
(
    warehouse_id   bigint unsigned auto_increment comment '仓库ID'
        primary key,
    warehouse_name varchar(64)       not null comment '仓库名称（如：鞋多多 武汉仓）',
    status         tinyint default 1 not null comment '状态：1-启用，0-停用',
    constraint idx_warehouse_name
        unique (warehouse_name)
)
    comment '仓库信息表';

