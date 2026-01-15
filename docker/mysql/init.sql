DROP DATABASE IF EXISTS `produtos_ericsson`;
create database produtos_ericsson;
use produtos_ericsson;

create table categories (
    category_id bigint auto_increment,
    name varchar(50) not null,
    primary key (category_id)
) engine=InnoDB;

create table products (
    product_id bigint auto_increment,
    name varchar(50) not null,
    weight decimal(6,2) not null,
    price decimal(10,2) not null,
    quantity int not null,
    primary key (product_id)
) engine=InnoDB;

create table product_category (
    product_id bigint not null,
    category_id bigint not null,
    primary key (product_id, category_id),
    constraint fk_product
        foreign key (product_id)
        references products (product_id),
    constraint fk_category
        foreign key (category_id)
        references categories (category_id)
) engine=InnoDB;

insert into categories (category_id, name) values
(1, 'RAN (Radio Access Network)'),
(2, 'Core Network'),
(3, '5G'),
(4, 'LTE / 4G'),
(5, 'Hardware'),
(6, 'Software'),
(7, 'Cloud'),
(8, 'Telecom Infrastructure'),
(9, 'Network Management'),
(10, 'IoT');

insert into products (product_id, name, weight, price, quantity) values
(1, 'Ericsson Radio System 4480', 28.50, 18500.00, 12),
(2, 'Ericsson Radio 6620', 22.00, 16200.00, 20),
(3, 'Ericsson Baseband 6630', 18.30, 24000.00, 8),
(4, 'Ericsson Baseband 6651', 21.70, 28500.00, 6),
(5, 'Ericsson Packet Core Controller', 15.00, 32000.00, 5),
(6, 'Ericsson Cloud Core', 0.00, 45000.00, 50),
(7, 'Ericsson Network Manager', 0.00, 18000.00, 40),
(8, 'Ericsson IoT Accelerator', 0.00, 12500.00, 30),
(9, 'Ericsson MINI-LINK 6352', 9.50, 9800.00, 25),
(10, 'Ericsson RAN Compute', 12.80, 21000.00, 10),
(11, 'Teste MySql Docker', 12.09, 21.00, 23);


insert into product_category (product_id, category_id) values
-- Ericsson Radio System 4480
(1, 1),
(1, 3),
(1, 5),
(1, 8),

-- Ericsson Radio 6620
(2, 1),
(2, 4),
(2, 5),

-- Ericsson Baseband 6630
(3, 1),
(3, 3),
(3, 5),

-- Ericsson Baseband 6651
(4, 1),
(4, 3),
(4, 5),

-- Ericsson Packet Core Controller
(5, 2),
(5, 4),

-- Ericsson Cloud Core
(6, 2),
(6, 3),
(6, 6),
(6, 7),

-- Ericsson Network Manager
(7, 6),
(7, 7),
(7, 9),

-- Ericsson IoT Accelerator
(8, 6),
(8, 7),
(8, 10),

-- Ericsson MINI-LINK 6352
(9, 5),
(9, 8),

-- Ericsson RAN Compute
(10, 1),
(10, 3),
(10, 5),
(10, 7);

