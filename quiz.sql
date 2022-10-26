SELECT * FROM questions JOIN answers ON questions.id=answers.questions_id

-- Pytania
;
INSERT INTO `questions`(`description`) VALUES ('1+1=?');
INSERT INTO `questions`(`description`) VALUES ('1+2=?');
INSERT INTO `questions`(`description`) VALUES ('1+3=?');

INSERT INTO `questions`(`description`) VALUES ('2+3=?');
INSERT INTO `questions`(`description`) VALUES ('1+5=?');

INSERT INTO `questions`(`description`) VALUES ('1+6=?');6
INSERT INTO `questions`(`description`) VALUES ('1+7=?');7
INSERT INTO `questions`(`description`) VALUES ('1+8=?');8
INSERT INTO `questions`(`description`) VALUES ('1+9=?');9
INSERT INTO `questions`(`description`) VALUES ('5+5=?');10
-- Odpowiedzi
-- 3pyt 3odp 1poprawne
;
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('2','1','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('100','1','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('1000000','1','0');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('589','2','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('3','2','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('69','2','0');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('1','3','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('4','3','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('2','3','0');

-- 2pyt 5odp 3poprawne
;
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5*1','4','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('100','4','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('4+1','4','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5','4','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('10000','4','0');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('69','5','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5+1','5','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('7-1','5','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('6','5','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('1000','5','0');

-- 5pyt 4odp 2poprawne
;
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('7','6','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('100','6','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5+2','6','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5','6','0');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('8*1','7','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('8','7','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('4+1','7','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5','7','0');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('9/1','8','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('100','8','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('9','8','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('5','8','0');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('11-1','9','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('100','9','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('4+1','9','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('10','9','1');

INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('0.11','10','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('1.1,','10','0');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('11','10','1');
INSERT INTO `answers`(`description`, `questions_id`, `is_right`) VALUES ('11','10','1');












