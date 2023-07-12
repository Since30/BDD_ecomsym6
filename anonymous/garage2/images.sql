create table images
(
    id          int auto_increment
        primary key,
    products_id int          not null,
    name        varchar(255) not null,
    constraint FK_E01FBE6A6C8A81A9
        foreign key (products_id) references products (id)
)
    collate = utf8mb4_unicode_ci;

create index IDX_E01FBE6A6C8A81A9
    on images (products_id);

