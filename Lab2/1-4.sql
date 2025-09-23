create table airline_info (
  airline_id serial primary key,
  airline_code varchar(30) not null,
  airline_name varchar(50) not null,
  airline_country varchar(50) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  info varchar(50) not null
);

create table airport (
  airport_id serial primary key,
  airport_name varchar(50) not null,
  country varchar(50) not null,
  state varchar(50) not null,
  city varchar(50) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

create table baggage_check (
  baggage_check_id serial primary key,
  check_result varchar(50) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  booking_id int not null,
  passenger_id int not null
);

create table baggage (
  baggage_id serial primary key,
  weight_in_kg decimal(4,2) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  booking_id int not null
);

create table boarding_pass (
  boarding_pass_id serial primary key,
  booking_id int not null,
  seat varchar(50) not null,
  boarding_time timestamp not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

create table booking_flight (
  booking_flight_id serial primary key,
  booking_id int not null,
  flight_id int not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

create table booking (
  booking_id serial primary key,
  flight_id int not null,
  passenger_id int not null,
  booking_platform varchar(50) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  status varchar(50) not null,
  price decimal(7,2) not null
);

create table flights (
  flight_id serial primary key,
  sch_departure_time timestamp not null,
  sch_arrival_time timestamp not null,
  departing_airport_id int not null,
  arriving_airport_id int not null,
  departing_gate varchar(50) not null,
  arriving_gate varchar(50) not null,
  airline_id int not null,
  act_departure_time timestamp not null,
  act_arrival_time timestamp not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

create table passengers (
  passenger_id serial primary key,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  date_of_birth date not null,
  gender varchar(50) not null,
  country_of_citizenship varchar(50) not null,
  country_of_residence varchar(50) not null,
  passport_number varchar(20) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now()
);

create table security_check (
  security_check_id serial primary key,
  check_result varchar(20) not null,
  created_at timestamp not null default now(),
  updated_at timestamp not null default now(),
  passenger_id int not null
);