set global local_infile=true;
CREATE DATEBASE IF NOT EXISTS `bob_ross`;

USE bob_ross;
CREATE TABLE IF NOT EXISTS objects (
    episode varCHAR(255) NOT NULL,
    title varCHAR(60),
    apple_frame BOOLEAN,
    aurora_borealis BOOLEAN,
    barn BOOLEAN,
    beach BOOLEAN,
    boat BOOLEAN,
    bridge BOOLEAN,
    building BOOLEAN,
    bushes BOOLEAN,
    cabin BOOLEAN,
    cactus BOOLEAN,
    circle_frame BOOLEAN,
    cirrus BOOLEAN,
    cliff BOOLEAN,
    clouds BOOLEAN,
    conifer BOOLEAN,
    cumulus BOOLEAN,
    deciduous BOOLEAN,
    diane_andre BOOLEAN,
    dock BOOLEAN,
    double_oval_frame BOOLEAN,
    farm BOOLEAN,
    fence BOOLEAN,
    fire BOOLEAN,
    florida_frame BOOLEAN,
    flowers BOOLEAN,
    fog BOOLEAN,
    framed BOOLEAN,
    grass BOOLEAN,
    guest BOOLEAN,
    half_circle_frame BOOLEAN,
    half_oval_frame BOOLEAN,
    hills BOOLEAN,
    lake BOOLEAN,
    lakes BOOLEAN,
    lighthouse BOOLEAN,
    mill BOOLEAN,
    moon BOOLEAN,
    mountain BOOLEAN,
    mountains BOOLEAN,
    night BOOLEAN,
    ocean BOOLEAN,
    oval_frame BOOLEAN,
    palm_trees BOOLEAN,
    path BOOLEAN,
    person BOOLEAN,
    portrait BOOLEAN,
    rectangle_3d_frame BOOLEAN,
    rectangular_frame BOOLEAN,
    river BOOLEAN,
    rocks BOOLEAN,
    seashell_frame BOOLEAN,
    snow BOOLEAN,
    snowy_mountain BOOLEAN,
    split_frame BOOLEAN,
    steve_ross BOOLEAN,
    structure BOOLEAN,
    sun BOOLEAN,
    tomb_frame BOOLEAN,
    tree BOOLEAN,
    trees BOOLEAN,
    triple_frame BOOLEAN,
    waterfall BOOLEAN,
    waves BOOLEAN,
    windmill BOOLEAN,
    window_frame BOOLEAN,
    winter BOOLEAN,
    wood_framed BOOLEAN

);

LOAD DATA LOCAL
    INFILE './datasets/TJOP - Subject Matter'
    INTO TABLE objects
    FIELDS TERMINATED BY ','
    IGNORE 1 ROWS;

ALTER TABLE objects DROP COLUMN title;
set global local_infile=false;


