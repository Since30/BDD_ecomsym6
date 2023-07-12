create table orders
(
    id         int auto_increment
        primary key,
    coupons_id int         null,
    users_id   int         not null,
    reference  varchar(20) not null,
    created_at datetime    not null comment '(DC2Type:datetime_immutable)',
    constraint UNIQ_E52FFDEEAEA34913
        unique (reference),
    constraint FK_E52FFDEE67B3B43D
        foreign key (users_id) references users (id),
    constraint FK_E52FFDEE6D72B15C
        foreign key (coupons_id) references coupons (id)
)
    collate = utf8mb4_unicode_ci;

create index IDX_E52FFDEE67B3B43D
    on orders (users_id);

create index IDX_E52FFDEE6D72B15C
    on orders (coupons_id);

