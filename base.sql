PGDMP     -    '                z            postgres    14.2    14.2 R    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    13754    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            \           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3419                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ]           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    49503    basket_products    TABLE     ?   CREATE TABLE public.basket_products (
    quantity integer DEFAULT 1,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    basket_id integer NOT NULL,
    product_id integer NOT NULL
);
 #   DROP TABLE public.basket_products;
       public         heap    postgres    false            ?            1259    49507    baskets    TABLE     ?   CREATE TABLE public.baskets (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            ?            1259    49510    baskets_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baskets_id_seq;
       public          postgres    false    211            ^           0    0    baskets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;
          public          postgres    false    212            ?            1259    49511    brands    TABLE     ?   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            ?            1259    49514    brands_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    213            _           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    214            ?            1259    49515 
   categories    TABLE     ?   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    49518    categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    215            `           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    216            ?            1259    49519    order_items    TABLE       CREATE TABLE public.order_items (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    order_id integer
);
    DROP TABLE public.order_items;
       public         heap    postgres    false            ?            1259    49522    order_items_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_items_id_seq;
       public          postgres    false    217            a           0    0    order_items_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;
          public          postgres    false    218            ?            1259    49523    orders    TABLE     ?  CREATE TABLE public.orders (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    amount integer NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    comment character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false            ?            1259    49529    orders_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            b           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    220            ?            1259    49530    product_props    TABLE       CREATE TABLE public.product_props (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id integer
);
 !   DROP TABLE public.product_props;
       public         heap    postgres    false            ?            1259    49535    product_props_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_props_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_props_id_seq;
       public          postgres    false    221            c           0    0    product_props_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_props_id_seq OWNED BY public.product_props.id;
          public          postgres    false    222            ?            1259    49536    products    TABLE     \  CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    image character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    category_id integer,
    brand_id integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            ?            1259    49542    products_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    223            d           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    224            ?            1259    49543    ratings    TABLE     ?   CREATE TABLE public.ratings (
    rate integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            ?            1259    49546    users    TABLE     %  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    49552    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    226            e           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    227            ?           2604    49553 
   baskets id    DEFAULT     h   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            ?           2604    49554 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            ?           2604    49555    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            ?           2604    49556    order_items id    DEFAULT     p   ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);
 =   ALTER TABLE public.order_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            ?           2604    49557 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            ?           2604    49558    product_props id    DEFAULT     t   ALTER TABLE ONLY public.product_props ALTER COLUMN id SET DEFAULT nextval('public.product_props_id_seq'::regclass);
 ?   ALTER TABLE public.product_props ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            ?           2604    49559    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            ?           2604    49560    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            D          0    49503    basket_products 
   TABLE DATA           b   COPY public.basket_products (quantity, created_at, updated_at, basket_id, product_id) FROM stdin;
    public          postgres    false    210   >a       E          0    49507    baskets 
   TABLE DATA           =   COPY public.baskets (id, created_at, updated_at) FROM stdin;
    public          postgres    false    211   [a       G          0    49511    brands 
   TABLE DATA           B   COPY public.brands (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    213   ?a       I          0    49515 
   categories 
   TABLE DATA           F   COPY public.categories (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    215   8b       K          0    49519    order_items 
   TABLE DATA           b   COPY public.order_items (id, name, price, quantity, created_at, updated_at, order_id) FROM stdin;
    public          postgres    false    217   ?b       M          0    49523    orders 
   TABLE DATA           {   COPY public.orders (id, name, email, phone, address, amount, status, comment, created_at, updated_at, user_id) FROM stdin;
    public          postgres    false    219   ?c       O          0    49530    product_props 
   TABLE DATA           \   COPY public.product_props (id, name, value, created_at, updated_at, product_id) FROM stdin;
    public          postgres    false    221   ?d       Q          0    49536    products 
   TABLE DATA           q   COPY public.products (id, name, price, rating, image, created_at, updated_at, category_id, brand_id) FROM stdin;
    public          postgres    false    223   ?d       S          0    49543    ratings 
   TABLE DATA           T   COPY public.ratings (rate, created_at, updated_at, product_id, user_id) FROM stdin;
    public          postgres    false    225   ?g       T          0    49546    users 
   TABLE DATA           R   COPY public.users (id, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    226   ?g       f           0    0    baskets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.baskets_id_seq', 50, true);
          public          postgres    false    212            g           0    0    brands_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.brands_id_seq', 23, true);
          public          postgres    false    214            h           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 19, true);
          public          postgres    false    216            i           0    0    order_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_items_id_seq', 12, true);
          public          postgres    false    218            j           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 7, true);
          public          postgres    false    220            k           0    0    product_props_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_props_id_seq', 182, true);
          public          postgres    false    222            l           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 133, true);
          public          postgres    false    224            m           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    227            ?           2606    49562 $   basket_products basket_products_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_pkey PRIMARY KEY (basket_id, product_id);
 N   ALTER TABLE ONLY public.basket_products DROP CONSTRAINT basket_products_pkey;
       public            postgres    false    210    210            ?           2606    49564    baskets baskets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    211            ?           2606    49566    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    213            ?           2606    49568    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    213            ?           2606    49570    categories categories_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_name_key;
       public            postgres    false    215            ?           2606    49572    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            ?           2606    49574    order_items order_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public            postgres    false    217            ?           2606    49576    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            ?           2606    49578     product_props product_props_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_props
    ADD CONSTRAINT product_props_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_props DROP CONSTRAINT product_props_pkey;
       public            postgres    false    221            ?           2606    49580    products products_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.products DROP CONSTRAINT products_name_key;
       public            postgres    false    223            ?           2606    49582    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    223            ?           2606    49584    ratings ratings_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (product_id, user_id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    225    225            ?           2606    49586    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    226            ?           2606    49588    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    226            ?           2606    49589 .   basket_products basket_products_basket_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_basket_id_fkey FOREIGN KEY (basket_id) REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.basket_products DROP CONSTRAINT basket_products_basket_id_fkey;
       public          postgres    false    210    3223    211            ?           2606    49594 /   basket_products basket_products_product_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.basket_products
    ADD CONSTRAINT basket_products_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.basket_products DROP CONSTRAINT basket_products_product_id_fkey;
       public          postgres    false    3241    223    210            ?           2606    49599 %   order_items order_items_order_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_order_id_fkey;
       public          postgres    false    217    3235    219            ?           2606    49604    orders orders_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_fkey;
       public          postgres    false    3247    219    226            ?           2606    49609 +   product_props product_props_product_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_props
    ADD CONSTRAINT product_props_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.product_props DROP CONSTRAINT product_props_product_id_fkey;
       public          postgres    false    3241    221    223            ?           2606    49614    products products_brand_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_brand_id_fkey FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT products_brand_id_fkey;
       public          postgres    false    223    213    3227            ?           2606    49619 "   products products_category_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public          postgres    false    223    3231    215            ?           2606    49624    ratings ratings_product_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_product_id_fkey;
       public          postgres    false    3241    223    225            ?           2606    49629    ratings ratings_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_user_id_fkey;
       public          postgres    false    3247    226    225            D      x?????? ? ?      E   F   x?u˻?0??7=????g??s ???t~?s??j??L???{A?[Ŷ?????qw????+a
??M?      G   w   x?3?????N?4202?50?54T04?2??26?342?60?#?ed?阒??X?E?????v?0).#CN??L&?zf&X5å???9?s??2??S??T? ??? Kq??qqq ?s4$      I   u   x?}???0Dѳ?
?Q,??%?k??$??? R?lGᄐ?8??ct?l?n????????c?NHu?U?cH]H? ;[?j7>?R|?s??J??x?,\?j???賎M????E? ???d      K   ?   x???;
?@??zf?K?{??Y?X???%0F??`??p"]ĝ?"?U??N??@G??5t
{jDX?M?҅?"??Hde5.jk ?L?R?Q?v6v*????_	9?N??D???!?i??+??6?N??f(	:???&?Q?^^??b>+Ve??????Ш??#iޗ???zT?      M     x????JA??3O1?!?e.;???|? M@?????OE??%?E
?uu!???
???g?0	?N?a?s?Gf?Q?D-1???@????N????q8S;?{?R-??ls?(%????*?E?'??#?d??j,?%???1r??R??w@F(h-??\??8ԉn+???!?p?)[r??6?>a?_?Zw?;?]?t?P?m??"a	\q???????O?F?.v-?I??X?+v??Ά&??_}??Axe?w?[~j?9[?dl??Q?L???1?:??
!>,??      O      x?????? ? ?      Q   ?  x?}?Mn?@??=????U]??
B ?@Y??vwG?&?h??2a??Xr@????ўhP2c??-???{?WF"1|??ן??????pݬ/?W??????9???O??J%???????????{??-??L.???lߞ?#A???U??CnQ?#??'??fHJ?Z͏?'aq?<]?.???wIn\???????x?? ????3΢u????NʎTk??u?#??ju??Y8I1,??i?0??7d?Xd?????<M=xf???meʂv?6?Q?oၴ???]????3_<h?%p.Aj??OY???z????v?;Җm??r?\???h?A+???!&?>3??
SC??>???u??)j?~?	? ?h;?Kx?ϓ?wSw???K*)g?ˠ\N??CMn????:?bߗ?l'???????|?f??'?m?IC=?7Cm[.`?\FBK<Q?Jش[???ߗ?p/?W?˚??c?Fz$???P]????+??&?M6????`?&???:q?3T??????>Q|?g??i}?7?-?Z(=6???j?:???{??#m?(????????ݞY4?f???=K1?	??hK?%???ɮ???'?????-Z???p;ܬ??????r?9?~՟?A] a??d???Cejx?@$[;as1??I'?wL?WfHc	??M;???ʊW?      S      x?????? ? ?      T   ?  x?}??n?@ ??5<E??aaU/?E??????Rԧob7FI???|??L??????-3@? ??????2?ʪ??[H?ܣ|$??H?I???8	?R???)????A?!?<|??"E? a?
???? .??ɑ??l???&~c???%tqQ6?p"?O??6?J?]?%?X{??k<T DQz??'V???G?A?9`#o????s?57i????)?`:¦P??`?????ֺs????6?P??.????????G^?P%N???UJ-?kf$?g?YT׆֍ ???D??????!ED@&=??'??,??鎖     