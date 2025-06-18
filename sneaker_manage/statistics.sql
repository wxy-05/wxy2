create table sneaker_manage.statistics
(
    stat_id      bigint unsigned auto_increment comment '统计ID'
        primary key,
    warehouse_id bigint unsigned                          null comment '关联仓库ID（0表示全局）',
    stat_type    tinyint                                  not null comment '类型：1-当月销售数据',
    order_count  int            default 0                 not null comment '订单量',
    sales_amount decimal(10, 2) default 0.00              not null comment '销售额',
    update_time  datetime       default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    constraint idx_warehouse_type
        unique (warehouse_id, stat_type)
)
    comment '统计结果表（辅助实时展示）';

