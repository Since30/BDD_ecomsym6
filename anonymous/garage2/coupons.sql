create table coupons
(
    id               int auto_increment
        primary key,
    coupons_types_id int         not null,
    code             varchar(10) not null,
    description      longtext    not null,
    discount         int         not null,
    max_usage        int         not null,
    validity         datetime    not null,
    is_valid         tinyint(1)  not null,
    created_at       datetime    not null comment '(DC2Type:datetime_immutable)',
    constraint UNIQ_F564111877153098
        unique (code),
    constraint FK_F56411183DDD47B7
        foreign key (coupons_types_id) references coupons_types (id)
)
    collate = utf8mb4_unicode_ci;

create index IDX_F56411183DDD47B7
    on coupons (coupons_types_id);

