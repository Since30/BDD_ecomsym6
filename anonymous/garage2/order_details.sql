create table order_details
(
    id          int auto_increment
        primary key,
    orders_id   int not null,
    products_id int not null,
    quantity    int not null,
    price       int not null,
    constraint FK_845CA2C16C8A81A9
        foreign key (products_id) references products (id),
    constraint FK_845CA2C1CFFE9AD6
        foreign key (orders_id) references orders (id)
)
    collate = utf8mb4_unicode_ci;

create index IDX_845CA2C16C8A81A9
    on order_details (products_id);

create index IDX_845CA2C1CFFE9AD6
    on order_details (orders_id);

