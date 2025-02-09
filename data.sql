INSERT INTO tb_user (name, email, password) VALUES ('Philippe', 'alex@gmail.com', '$2a$10$');
INSERT INTO tb_user (name, email, password) VALUES ('Amanda', 'maria@gmail.com', '$2a$10$');
INSERT INTO tb_user (name, email, password) VALUES ('Teodoro', 'teo@gmail.com', '$2a$10$');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Matematica', 'matematica.com.br', 'matematicagray.com.br');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-14T10:00:00Z', TIMESTAMP WITH TIME ZONE '2021-07-14T10:00:00Z','1');
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-05-01T10:00:00Z', TIMESTAMP WITH TIME ZONE '2022-12-10T10:00:00Z','1');

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha de Algebra', 'Primeira parte do curso de matematica', 1, 'www.google.com', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha de Algebra', '2 parte do curso de matematica', 1, 'www.google.com', 2, 2);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha de Algebra', '3 parte do curso de matematica', 1, 'www.google.com', 3, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Boa sorte', 1,'www.google.com', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Boa sorte', 2,'www.google.com', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Boa sorte', 3,'www.google.com', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1,1, TIMESTAMP WITH TIME ZONE '2020-07-14T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2,1, TIMESTAMP WITH TIME ZONE '2020-07-14T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (3,1, TIMESTAMP WITH TIME ZONE '2020-07-14T13:00:00Z', null, true, false);


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1', 1, 1);
INSERT INTO tb_content (id, text_Content, videoURI) VALUES (1, 'Material de Apoio: google.com', 'https://www.youtube.com/watch?v=7HvOBCqHWvA');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2', 2, 1);
INSERT INTO tb_content (id, text_Content, videoURI) VALUES (2, 'Material de Apoio: google.com', 'https://www.youtube.com/watch?v=7HvOBCqHWvA');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3', 3, 1);
INSERT INTO tb_content (id, text_Content, videoURI) VALUES (3, 'Material de Apoio: google.com', 'https://www.youtube.com/watch?v=7HvOBCqHWvA');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Cap. 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer uma tarefa sobre numeros', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-01-14T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
