alter table airline_info rename to airline;
alter table booking rename column price to ticket_price;
alter table flights alter column departing_gate type text;
alter table airline drop column info;
