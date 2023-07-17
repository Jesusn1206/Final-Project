PGDMP     5                    {        	   Bookstore    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16692 	   Bookstore    DATABASE     m   CREATE DATABASE "Bookstore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Bookstore";
                postgres    false            �            1259    16693    author    TABLE     g   CREATE TABLE public.author (
    author_id integer NOT NULL,
    author_name character varying(255)
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    16703    book    TABLE     �   CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(255),
    author_id integer,
    publisher_id integer,
    genre character varying(255),
    rating double precision,
    price double precision
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16698 	   publisher    TABLE     p   CREATE TABLE public.publisher (
    publisher_id integer NOT NULL,
    publisher_name character varying(255)
);
    DROP TABLE public.publisher;
       public         heap    postgres    false                      0    16693    author 
   TABLE DATA           8   COPY public.author (author_id, author_name) FROM stdin;
    public          postgres    false    214   �                 0    16703    book 
   TABLE DATA           X   COPY public.book (id, title, author_id, publisher_id, genre, rating, price) FROM stdin;
    public          postgres    false    216   P                 0    16698 	   publisher 
   TABLE DATA           A   COPY public.publisher (publisher_id, publisher_name) FROM stdin;
    public          postgres    false    215   B       w           2606    16697    author author_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    214            {           2606    16709    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    216            y           2606    16702    publisher publisher_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (publisher_id);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public            postgres    false    215            |           2606    16710    book book_author_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.author(author_id);
 B   ALTER TABLE ONLY public.book DROP CONSTRAINT book_author_id_fkey;
       public          postgres    false    3447    216    214            }           2606    16715    book book_publisher_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES public.publisher(publisher_id);
 E   ALTER TABLE ONLY public.book DROP CONSTRAINT book_publisher_id_fkey;
       public          postgres    false    3449    216    215                 x�=�Mn�@���)x�
�؎����)���d�H�4�x&��ط�(z
_�tW���ˡ��.��"h�^Bl���(�����>��)l2*��ml:5��8�B�=�����	^�C���s���U��"_�D\�7�-�>��:�E/�uV�W������VU~QG*[E�#�V^�6�}��V�CO���ٞ�:+3�3���[�N��nb����k����#�(�������~�uE8(g���<�@� ��/a+�٧pDs�-;��}/��'i�Q�l�.�h4T~�V�s���v�_�� '4x�+�������P'��[�q�hfpw�����h���T&}�&U�f����B㰕О]�&��d��-Ǿ_3D��5�J         �  x�eTMo�0=�·�5!|[(�miQ[-���!�/�F��*�~�m��ռ!o>�Lz7�QU�`�4�N��Fق�L�NMY�OI��;)%�QF)l�����=Jn����*�`]����B�z�W�g��Yw@cO�轔bn%;1gWoZ�`��H�xb��f����|G}�]�)�k���"3�Ђ�m��8'mH�}U����PJ{S�7g��l��q��������	�\�tpm%a皎]���<�ImKW���4�-M!�V�C`p{�;���-���b�5�a�2Ɣ�2��@?�X{�E��*������Ux\ϡg�$�}a6� ϗCJ����̲�I];��'᯹q���؃�I/Ě*FZT���4z+��V����Z>�m\��V�ѽ�O)��X[��r���$[ҏc/��*�b�ό2�����π~���E� �k�N�G9��s��*�yp&X��J}S��ı���h�Z�o��B���B�UX���N���BO�-�9��J��;�X��X�su�ui��Q9�E���w`jy����y����reX�����9=�����E��l!>$�0�7S)��X��;�Wɕ��W{���\a��b�u�$�q����'��H��Ⱥ��y/kB �Z��iRZ7h�l�B�[����6����qK֖]I\& .���(\ŝ���5Pbb|�C�%����Į��S+V�=T��<N��O_�x��.���5Z��s��=.INb��v:�J~�         �  x�]QKn�0]����F$��e��5;�4�t3�&"a�c)�X/Ћu$8h�9��7�S���rd6�|��R��Y�HWj���,���F����<4șbaޜ�� =Q+0��e�ȟ�K1�Z��%Sv�I��2��Pv�=��������9`�C��@�E�����jMpv�1%�P_B�(�?��G]��r�^��u�tY��Hܠ�Z�أ\\���a���]a�p!.�H�f�V3����rғ��3vfz�T�O>��<�z��gX���A���Y�G]��+��^��-���%�r�^�]���h�b�$��;��d�P�%�1�T[�'� o�����o�;��j����0����D��� ){+>C�u5t�dV�J�y����lP����n5Ts���0� ������4%�D�x�t�PO�)c�����h�ϑ����̭     