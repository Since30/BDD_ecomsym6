create table categories
(
    id             int auto_increment
        primary key,
    parent_id      int          null,
    name           varchar(100) not null,
    slug           varchar(255) not null,
    category_order int          not null,
    constraint FK_3AF34668727ACA70
        foreign key (parent_id) references categories (id)
            on delete cascade
)
    collate = utf8mb4_unicode_ci;

create index IDX_3AF34668727ACA70
    on categories (parent_id);

