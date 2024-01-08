insert into rbac.role (name)
values
  ('ADMIN'),
  ('AUTHOR'),
  ('USER');

insert into rbac.permission (name)
values
  ('CREATE_POSTS'),
  ('READ_POSTS'),
  ('UPDATE_POSTS'),
  ('DELETE_POSTS');

insert into rbac.role_permission (role_id, permission_id)
values
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 2),
  (2, 3),
  (3, 2);

insert into auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at)
values
  ('00000000-0000-0000-0000-000000000000', '0ba6ec03-1a07-43f0-aa41-380204bb5319', 'authenticated', 'authenticated', 'admin@admin.com', '$2a$10$1lXuvcex0Vn13nAf78mmT.gj0PeqIvpOQEpdX7JGwX/77FhfpDery', timezone('utc'::text, now()), NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, timezone('utc'::text, now()), timezone('utc'::text, now()), NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL),
  ('00000000-0000-0000-0000-000000000000', 'e576a8aa-8547-4980-910d-c26adcebc18f', 'authenticated', 'authenticated', 'author@author.com', '$2a$10$wuDKH3skQylENjDXm9lFDO29Wau2ONFV1KExjgUjx7KgL48c39LWW', timezone('utc'::text, now()), NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, timezone('utc'::text, now()), timezone('utc'::text, now()), NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL),
  ('00000000-0000-0000-0000-000000000000', '45524174-ca3a-4d12-bcbf-a4685a764970', 'authenticated', 'authenticated', 'user@user.com', '$2a$10$T8Y2ISRjz2IjYI2dk/JuFer.LQUVkmqnYC4hYN8L5KT6OLj816FDq', timezone('utc'::text, now()), NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, timezone('utc'::text, now()), timezone('utc'::text, now()), NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL);

insert into auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at)
values
  ('0ba6ec03-1a07-43f0-aa41-380204bb5319', '0ba6ec03-1a07-43f0-aa41-380204bb5319'::uuid, '{"sub":"0ba6ec03-1a07-43f0-aa41-380204bb5319","email":"admin@admin.com","email_verified":false,"phone_verified":false}', 'email', timezone('utc'::text, now()), timezone('utc'::text, now()), timezone('utc'::text, now())),
  ('e576a8aa-8547-4980-910d-c26adcebc18f', 'e576a8aa-8547-4980-910d-c26adcebc18f'::uuid, '{"sub":"e576a8aa-8547-4980-910d-c26adcebc18f","email":"author@author.com","email_verified":false,"phone_verified":false}', 'email', timezone('utc'::text, now()), timezone('utc'::text, now()), timezone('utc'::text, now())),
  ('45524174-ca3a-4d12-bcbf-a4685a764970', '45524174-ca3a-4d12-bcbf-a4685a764970'::uuid, '{"sub":"45524174-ca3a-4d12-bcbf-a4685a764970","email":"user@user.com","email_verified":false,"phone_verified":false}', 'email', timezone('utc'::text, now()), timezone('utc'::text, now()), timezone('utc'::text, now()));

insert into rbac.user_role (user_id, role_id)
values
  ('0ba6ec03-1a07-43f0-aa41-380204bb5319', 1),
  ('e576a8aa-8547-4980-910d-c26adcebc18f', 2),
  ('45524174-ca3a-4d12-bcbf-a4685a764970', 3);

insert into public.posts (title)
values
  ('My first post');
