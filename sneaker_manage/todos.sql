create table sneaker_manage.todos
(
    todo_id      bigint unsigned auto_increment comment '待办ID'
        primary key,
    warehouse_id bigint unsigned                    null comment '关联仓库ID',
    todo_type    tinyint                            not null comment '类型：1-入仓出价待办，2-现货出价待办',
    status       tinyint  default 0                 not null comment '状态：0-未处理，1-已处理',
    create_time  datetime default CURRENT_TIMESTAMP not null comment '创建时间'
)
    comment '待办事项表';

create index idx_warehouse_type
    on sneaker_manage.todos (warehouse_id, todo_type);

