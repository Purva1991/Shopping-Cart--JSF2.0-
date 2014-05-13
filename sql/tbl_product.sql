--------------------------------------------------------
--  File created - Tuesday-May-13-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_PRODUCT
--------------------------------------------------------

  CREATE TABLE "ORACLE"."TBL_PRODUCT" 
   (	"PD_ID" NUMBER, 
	"CAT_ID" NUMBER, 
	"PD_NAME" VARCHAR2(500 BYTE), 
	"PD_DESCRIPTION" VARCHAR2(2500 BYTE), 
	"PD_PRICE" NUMBER, 
	"PD_QTY" NUMBER, 
	"PD_IMG" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ORACLE.TBL_PRODUCT
SET DEFINE OFF;
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (1,1,'Lattice Bathroom Collection','Frame Material: Hardwood
Hardware Material: Metal
Wood Finish: Ebony
Dimensions: 65.0 "H X 9.5 "W X 29.0 "D
Weight: 46.0 Lb',144,8,'http://img2.targetimg2.com/wcsstore/TargetSAS/img/p/14/58/14589245_201310211158_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (2,1,'Courtney Sofa','Sink into everyday luxury with the Courtney Sofa. This contemporary addition to your living room furniture has a sturdy wooden frame, arms and legs. The handsome espresso finish complements any decor. Attached cushions give a sleek look. The textile is made of 100% polyester for durability and easy spot cleaning. The protective coating makes this modern sofa stain resistant. Enjoy the cushiony support of pocketed coil seating. This modern sofa measures 37.0 " x 71.65 ", making it a great fit in most living rooms, offices or family rooms. Assembly required, tools provided.',499,2,'http://img2.targetimg2.com/wcsstore/TargetSAS/img/p/14/53/14538791_130417061717_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (3,1,'Patio Chairs','Give your guests an exquisite outdoor dining experience with Threshold Holden Wicker Patio Dining Chairs. These wicker chairs exude classic style with a casual feel. With their barrel backs, the patio chairs keep your guests comfortable throughout the meal and beyond. They''re made of durable, all-weather resin wicker and rustproof aluminum.',299,5,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/90/14908569_201311122148_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (4,1,'Kids Vanilla Bedroom  Collection ','Add additional storage space to your bedroom with this vanilla-colored, country-style bookcase headboard.Features: Built-in Bookcase',108,1,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/B0/00/B0009PZZLK_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (5,1,' Entertainment Fireplace - Mahogany','A traditional design with a sturdy box base and an 18” electric fireplace insert which features glowing logs an ember bed and a realistic flame effect. This unit can be used with (can warm a room up to 400 sq. ft.) or without heat to enjoy the look of a rolling fire year round',224,3,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/14/57/14576527_201308291752_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (6,2,'Nikon L830 16MP Digital Camera with 30X Optical Zoom','Megapixels: 16.1 Megapixels',199,2,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/15/27/15272000_201402281743_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (7,2,'Apple® iPad Air 32GB Wi-Fi - Space Gray/Black (MD786LL/A)','The iPad Air from Apple is 20 percent thinner than the 4th generation iPad and weighs just one pound, so it feels unbelievably light in your hand. It comes with a 9.7-inch Retina display, the powerful A7 chip with 64-bit architecture, ultrafast wireless, powerful apps, and up to 10 hours of battery life.Maximum Resolution: 2048 x 1536',599,11,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/42/14423835_201310221740_138x138.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (8,2,'VIZIO 40" Class 1080p 120Hz Full-Array LED Smart TV - Black (E400i-B2)','Introducing the all-new 2014 E-Series 40” (40.00” diag.) Full-Array LED Smart TV with an ultra-narrow 10mm frame, crystal-clear LED-lit picture, and a faster, easier-to-use Smart TV experience. With built-in Wi-Fi included, the E-Series connects you to the latest hit movies, TV shows, and music from premium apps like Netflix®, Amazon Instant Video™, VUDU™, HuluPlus™, YouTube®, Pandora® and more. And not only is it smart, this TV is packed with the latest technology—like Full-Array LED for superior light uniformity, and Active LED Zones x5 for deeper black levels with a superior 2 million to 1 contrast. Full HD 1080p and 120Hz effective refresh rate makes them perfect for sports and fast action scenes. VIZIO E-Series: Picture-Perfect, Simply Smart',399,2,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/15/18/15180109_201402060045.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (9,3,'PlayStation 4 Console with Two DualShock 4 Wireless Controllers (PlayStation 4)','The DualShock®4 Wireless Controller features familiar controls, and incorporates several innovative features to usher in a new era of interactive experiences. Its definitive analog sticks and trigger buttons have been improved for greater feel and sensitivity. A multi-touch, clickable touch pad expands gameplay possibilities, while the incorporated light bar in conjunction with the PlayStation® Camera allows for easy player identification and screen adjustment when playing with friends in the same room. The addition of the Share button makes utilizing the social capabilities of the Sony PS4 as easy as the push of a button. The DualShock®4 Wireless Controller is more than a controller; it’s your physical connection to a new era of gaming.',460,21,'http://img3.targetimg3.com/wcsstore/TargetSAS//img/p/15/03/15030960_201311132010.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (10,3,'Midnight Club Los Angeles Complete Edition PRE-OWNED (Xbox 360)','Rockstar''s Midnight Club racing series makes its first appearance on next-gen consoles after a three-year hiatus. Instead of solely focusing on the nighttime racing scene, Midnight Club features a 24-hour day-night cycle set in densely populated Los Angeles. Powered by the same graphics engine used in Grand Theft Auto IV, the title offers arcade-style racing from either a behind-the-car perspective or a dashboard viewpoint with working dials and animated steering wheels',11,1,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/95/14953584_201311041212.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (11,4,'Poolmaster Dolphin Baby Seat Float - Pink','This Poolmaster Dolphin Seat is designed for your pre-swimmerRecommended Use: Pool',20,3,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/11/11/11117264.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (12,4,'Speedo Junior ReefScout Mask & Snorkel Set','This performance mask and snorkel set provides junior swimmers with the ultimate underwater experience. Mask features adjustable straps and an anti-fog coating; splash-top snorkel keeps water out of the breathing tube. •Durable polycarbonate lenses with anti-fog coating•Speed Fit head strap for quick adjustments•Soft, comfortable skirt provides a watertight seal•Splash-top snorkel keeps water out of breathing tube',20,5,'http://img3.targetimg3.com/wcsstore/TargetSAS//img/p/15/13/15130826_201402140306.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (13,4,'20" Boy''s Outreach','The boy''s 20-inch Outreach is a great dual suspension mountain bike for any kid looking to take a trip on or off road. Gear Speeds: 7
#Bicycle Frame Height: 12"
# Bicycle Frame/Component Features: Alloy Rims, Suspension Fork
# Bicycle Frame Material: Steel
# Suspension Type: Full
# Suspension Features: dual suspension
# Suspension Manufacturer/Type: Chitech
# Seat Features: Quick Release Seat
# Seat Material: Vinyl
# Front Brake System: V Brake
# Rear Brake System: V Brake
# Brakes Manufacturer/Type: Chitech
# Derailleur Manufacturer/Type: Shimano Index
# Shifter Manufacturer/Type: Shimano Revo
# Bicycle Chain Material: Steel
# Pedal Material: Plastic
# Wheel Features: Pneumatic Tires
# Rim Material: Metal Alloy
# Front Wheel Height: 20"
# Rear Wheel Height: 20.0 "',120,6,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/14/89/14897691_201402181315.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (14,4,'Bell Cars Helmet for Child - Multicolored','Keep your child protected with the Bell, Multicolored Cars Child Helmet. The stylish, cutting-edge design and engaging, brightly-colored cartoon design make this a Helmet your son will love to wear.',20,1,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/14/59/14591616_201306191454.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (15,4,'Adult Schwinn Thrasher Lighted Helmet - Gray','Stylish and comfortable, the Adult Thrasher Lighted helmet from Schwinn offers optimum protection. This bike  helmet is made of PVC and has a snap closure for a secure fit. Adjustable strap offers a customized fit while the vents keep your head cool. Ages 14 and up. Clean with water. 1 size fits most.',17,4,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/12/30/12309530.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (16,5,'Bausch & Lomb Boston SimPlus Multipurpose Contact Lens Solution - 3.5 oz.','# Item Type: Contact Lens Solution
# Package Quantity: 1
# Includes: Solution Bottles
# Contact Lens Type: Gas Permeable
# Capacity (volume): 3.5 Oz.
# Relief Up To: 10 Hours
# Health Concern: Eye Health
# Suggested Age: 12 Years and Up',8,20,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/11/05/11053322.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (17,5,'Foster Grant Readers - Chantilly','Features: Scratch Resistant',16,5,'http://img3.targetimg3.com/wcsstore/TargetSAS//img/p/14/92/14928988_201312121622.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (18,5,'Aquafresh White Trays - 14ct','Turn up the dial on a brighter, whiter smile. Aquafresh White Trays make it fast and easy to get a visibly brighter smile in as little as 3 days. Pop in a set of upper and lower trays once a day, and watch the stains and yellow color drift away. Coffee, tea, cola, and wine drinkers unite, your teeth can once again be bright. Safe on your enamel and disposable. 14 mint trays included for 2 weeks of whitening.',21,4,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/11/05/11052690.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (19,5,'up & up™ Blood Glucose Meter Monitoring System','# Health Concern: Diabetes',15,3,'http://img3.targetimg3.com/wcsstore/TargetSAS//img/p/13/09/13099401.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (20,6,'Women''s Cool Water by Zino Davidoff 3 Piece Gift Set',' This was launched by the design house of Zino Davidoff in the year 1996.The nose behind this fragrance is Pierre Bourdon.Top notes are Citrus, honeydew melon, quince, pineapple, lotus and lily;middle notes are May rose, jasmine and muguet.Base notes areMusk, vanilla, peach, sandalwood, orris and vetiver.This fragrance is classified as Flowery.',33,3,'http://www.target.com/OpenZoomLayer?template=scene7-image&image=Target/15101024_is&omniZoomPartNumber=15101024&swCellSpacing=10,10&swHighlightThickness=1&swBorderThickness=0&itemTitle=Women%26%23x27%3Bs+Cool+Water+by+Zino+Davidoff++3+Piece+Gift+Set&omniImageCount=1');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (21,6,'CHI 1” Flat Iron with Free Mini-Straightener, Target Exclusive','CHI Air Expert Classic Tourmaline Ceramic Flat Iron utilizes the latest innovative technology combining Tourmaline Ceramic with even heat distribution, producting an exceptionally high amount of negative ions and Far Infrared which reduce static electricity for that perfect style. This Classic Flat Iron is ideal for all your hairstyle needs. Now, you can straighten, smooth, curl, wave, spiral, flip and bend. Just use your imagination and create your own personal flair',100,1,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/84/14843556_201309172001.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (22,6,'Organix Ever-Straight Brazilian Keratin Therapy Conditioner 13 oz.','Conditioner for straightened hair. Best results if used after organix Keratin Shampoo',11,1,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/56/14563978_201404071526.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (23,7,'Skyline 3-Piece Luggage Set - Purple Dots Print','# Includes: Carry-On Bag, Boarding Bag, Travel Tote',50,3,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/14/77/14774808_201311271558.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (24,8,'Solid Backpack with Pink Base - Black','# Shell Material: Nylon',10,2,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/57/14573533_201306191359.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (25,7,'Rockland Celebrity 3-pc. Hard Sided Luggage Set - Red','# Interior Features: Self-Repairing Zipper, Cross Straps',150,0,'http://img3.targetimg3.com/wcsstore/TargetSAS//img/p/11/87/11878083.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (26,7,'U.S. Traveler 2 Piece Polk Dot Fashion Spinner Luggage Set (Purple)','* Exterior Features: Expandable, Spinner Wheel(s), Front Zip Pocket, Adjustable Handle, ID Window
* Interior Features: Fully Lined, Cross Straps, Self-Repairing Zipper, Mesh Pocket
* Handle Type: Locking Handle, Retractable Handle
* Shell Material: Polyester
* Liner Material: Polyester
* Handle Material: Metal
* Protective Qualities: Tear Resistant
* Bag 1 Weight: 10.4 Lb.
* Bag 1 Linear Inches: 57 linear inches
* Bag 2 Weight: 8.8 Lb
* Bag 2 Linear inches: 50 linear inches
* Warranty Description: 3 Year Limited Manufacturer Warranty

',100,2,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/13/93/13934861_201305270709.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (27,7,'Embark Deluxe Traveller Pillow - Berry Sprinkle','Stay comfy on long trips with the Embark Deluxe Traveller Pillow. These neck pillows keep your head ergonomically supported so you can nap comfortably while sitting upright. A compact design allows the pillow to fit easily in your carry-on luggage, or you can attach it to your bag with the handy snap strap. A true travel essential!

    * Number of Pieces: 1
    * Travel Security Features: Checkpoint Friendly
    * Material: Spandex
    * Care and Cleaning: Spot Clean Only
    * Dimensions: 11.0 " L x 11.0 " W
',13,3,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/14/01/14011401.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (28,8,'Quirky 8 Gigabyte Split Stick USB Flash Drive - Black','*  Memory Storage Capacity: 8GB
* Wired Connectivity: USB
',20,2,'http://img1.targetimg1.com/wcsstore/TargetSAS//img/p/14/04/14047715.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (29,8,'Threshold™ Round Cross-legged Wooden Accent Table - Black and Natural','# Frame Material: Hardwood
# Hardware Material: Steel
# Tabletop Material: Wood
# Wood Finish: Natural
# Surface Material: Hardwood
# Finish: Lacquered
# Dimensions: 21.0 " H x 15.75 " W x 15.75 " D
# Weight: 3.5 Kg.',40,5,'http://img2.targetimg2.com/wcsstore/TargetSAS//img/p/14/71/14715810_201310101943.jpg');
Insert into ORACLE.TBL_PRODUCT (PD_ID,CAT_ID,PD_NAME,PD_DESCRIPTION,PD_PRICE,PD_QTY,PD_IMG) values (30,8,'Head in the Clouds Bed Set','Let your child snuggle into the soft swells of clouds with the Circo Head in the Clouds bed set. It has a comforter, a flat sheet and a fitted sheet. The twin-size set has a pillowcase and a sham while the full-size set has 2 pieces of each. All items of this bed set are made of microfiber for softness and have printed designs of clouds. The comforter has polyester filling, which is secured with channel quilting. The fitted sheet has an all-around elastic for covering mattresses up to 15" deep. Machine wash and tumble dry',30,2,'http://img3.targetimg3.com/wcsstore/TargetSAS//img/p/14/35/14350090_130109040000.jpg');
--------------------------------------------------------
--  DDL for Index TBL_PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORACLE"."TBL_PRODUCT_PK" ON "ORACLE"."TBL_PRODUCT" ("PD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TBL_PRODUCT
--------------------------------------------------------

  ALTER TABLE "ORACLE"."TBL_PRODUCT" MODIFY ("PD_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORACLE"."TBL_PRODUCT" MODIFY ("PD_QTY" NOT NULL ENABLE);
  ALTER TABLE "ORACLE"."TBL_PRODUCT" MODIFY ("PD_PRICE" NOT NULL ENABLE);
  ALTER TABLE "ORACLE"."TBL_PRODUCT" ADD CONSTRAINT "TBL_PRODUCT_PK" PRIMARY KEY ("PD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORACLE"."TBL_PRODUCT" MODIFY ("CAT_ID" NOT NULL ENABLE);
  ALTER TABLE "ORACLE"."TBL_PRODUCT" MODIFY ("PD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_PRODUCT
--------------------------------------------------------

  ALTER TABLE "ORACLE"."TBL_PRODUCT" ADD CONSTRAINT "TBL_PRODUCT_TBL_CATEGORY_FK1" FOREIGN KEY ("CAT_ID")
	  REFERENCES "ORACLE"."TBL_CATEGORY" ("CAT_ID") ENABLE;
