create table users
(
    id          int auto_increment
        primary key,
    email       varchar(180) not null,
    roles       json         not null,
    password    varchar(255) not null,
    lastname    varchar(100) not null,
    firstname   varchar(100) not null,
    address     varchar(255) not null,
    zipcode     varchar(5)   not null,
    city        varchar(150) not null,
    created_at  datetime     not null comment '(DC2Type:datetime_immutable)',
    is_verified tinyint(1)   not null,
    reset_token varchar(100) not null,
    constraint UNIQ_1483A5E9E7927C74
        unique (email)
)
    collate = utf8mb4_unicode_ci;

