create table messenger_messages
(
    id           bigint auto_increment
        primary key,
    body         longtext     not null,
    headers      longtext     not null,
    queue_name   varchar(190) not null,
    created_at   datetime     not null comment '(DC2Type:datetime_immutable)',
    available_at datetime     not null comment '(DC2Type:datetime_immutable)',
    delivered_at datetime     null comment '(DC2Type:datetime_immutable)'
)
    collate = utf8mb4_unicode_ci;

create index IDX_75EA56E016BA31DB
    on messenger_messages (delivered_at);

create index IDX_75EA56E0E3BD61CE
    on messenger_messages (available_at);

create index IDX_75EA56E0FB7336F0
    on messenger_messages (queue_name);

