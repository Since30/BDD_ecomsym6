create table orders_details
(
    orders_id int not null
        primary key,
    quantity  int not null,
    price     int not null,
    constraint FK_835379F1CFFE9AD6
        foreign key (orders_id) references orders (id)
)
    collate = utf8mb4_unicode_ci;

