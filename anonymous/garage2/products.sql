create table products
(
    id            int auto_increment
        primary key,
    categories_id int          not null,
    name          varchar(255) not null,
    description   longtext     not null,
    price         int          not null,
    stock         int          not null,
    created_at    datetime     not null comment '(DC2Type:datetime_immutable)',
    slug          varchar(255) not null,
    constraint FK_B3BA5A5AA21214B7
        foreign key (categories_id) references categories (id)
)
    collate = utf8mb4_unicode_ci;

create index IDX_B3BA5A5AA21214B7
    on products (categories_id);

