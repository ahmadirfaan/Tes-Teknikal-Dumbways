	
CREATE TABLE user (
  id int  NOT NULL AUTO_INCREMENT,
  name varchar(100)  NOT NULL,
  email varchar(255)  NOT NULL,
  role varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE news (
  id int  NOT NULL AUTO_INCREMENT,
  title varchar(100)  NOT NULL,
  images mediumblob default NULL,
  deskripsi TEXT NOT NULL,
  create_time DATETIME NOT NULL,
  user_id int not null,
  PRIMARY KEY (`id`),
  FOREIGN KEY (user_id) REFERENCES User(id)
);
INSERT INTO user(name,email,role)
VALUES 
	("ahmad","ahmad@anchor.com","reporter"),
	("irfaan","irfaan@anchor.com","reporter"),
	("hibatullah","hibatullah@anchor.com","reporter"),
	("afiif","afiif@anchor.com","reporter");

INSERT INTO news(title,deskripsi,user_id,create_time)
VALUES 
	("Drawing Liga Champions","Hasil lengkap dari drawing LC malam ini adalah",2,NOW()),
	("Pembunuhan Mutilasi","Perkara Kejadian hasil mutilasi di apartemen depok",3,NOW()),
	("Artis Andre Beli Mobil","Artis the sultan membeli mobil raffi ahmad",4,NOW()),
	("Artis Cerai lagi","Pasangan artis luna maya dan ariel memutuskan untuk cerai",4,NOW()),
    ("Cek jurus jitu punya rumah dibawah umur 30 tahun","Financial Planner memberikan penjelasan tips dan trik millineal",1,NOW()),
    ("Saham Telkom Anjlok","Saham BEI hari ini hasilnya saham telkom anjlok",1,NOW()),
    ("Liga 1 diundur","Polri memutuskan untuk tidak memberi ijin penyelenggaraan liga 1 ",2,NOW()),
    ("MU vs BHA 3-0","Masing-masing gol dicetak oleh McTominay,Juan Mata, dan Pogba",2,NOW());

UPDATE user 
SET role="Reporter Finansial" where id=1;

UPDATE user 
SET role="Reporter Olahraga " where id=2;

UPDATE user 
SET role="Reporter Kriminal" where id=3;

UPDATE user 
SET role="Reporter Selebriti" where id=4;

SELECT *,news.id as news_id
from user,news;

SELECT * 
from news
order by user_id;

SELECT * 
from news
join user
on news.user_id = user.id
order by news.user_id;


