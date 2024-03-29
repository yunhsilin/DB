PGDMP                         z            db    14.5    14.5 7    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    16397    db    DATABASE     l   CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Chinese (Traditional)_Taiwan.950';
    DROP DATABASE db;
                postgres    false            �            1259    16466    APPLICATION    TABLE     	  CREATE TABLE public."APPLICATION" (
    "Numbering " character varying(80) NOT NULL,
    "Date " date NOT NULL,
    "Member_ID " character varying(80) NOT NULL,
    "Pet_number " character varying(80) NOT NULL,
    "Shelter_name " character varying(80) NOT NULL
);
 !   DROP TABLE public."APPLICATION";
       public         heap    postgres    false            �            1259    16507 	   BELONG_TO    TABLE     �   CREATE TABLE public."BELONG_TO" (
    "Pet_number" character varying(80) NOT NULL,
    "Shelter_name" character varying(80) NOT NULL
);
    DROP TABLE public."BELONG_TO";
       public         heap    postgres    false            �            1259    16502    INVESTIGATION_LOCATION    TABLE     �   CREATE TABLE public."INVESTIGATION_LOCATION" (
    "Application_numbering" character varying(80) NOT NULL,
    "Type_of_Location " character varying(80) NOT NULL,
    "Size_of_Place " integer NOT NULL
);
 ,   DROP TABLE public."INVESTIGATION_LOCATION";
       public         heap    postgres    false            �            1259    16471 	   MEMBERS     TABLE     ?  CREATE TABLE public."MEMBERS " (
    "Personal_ID " character varying(80) NOT NULL,
    "Name " character varying(80) NOT NULL,
    "Sex" boolean NOT NULL,
    "Tel." integer NOT NULL,
    "Birth_date " date NOT NULL,
    "Email" character varying(80) NOT NULL,
    "Password" character varying(80) NOT NULL,
    "City" character varying(80) NOT NULL,
    "District" character varying(80) NOT NULL,
    "Town" character varying(80) NOT NULL,
    "Street" character varying(80) NOT NULL,
    "Num_of_Pet " integer NOT NULL,
    "WAdmin_ID " character varying(80) NOT NULL
);
    DROP TABLE public."MEMBERS ";
       public         heap    postgres    false            �            1259    16478    PET    TABLE     y  CREATE TABLE public."PET" (
    "Containment_Number " character varying(80) NOT NULL,
    "Sex " boolean NOT NULL,
    "Wafer" boolean NOT NULL,
    "Adoption_Status " character varying(80) NOT NULL,
    "Describe" character varying(80),
    "Category" character varying(80) NOT NULL,
    "Announcement_Time " date NOT NULL,
    "Varity " character varying(80) NOT NULL,
    "Length_of_Stay " integer,
    "Rescue_Location " character varying(80),
    "Shelter " character varying(80) NOT NULL,
    "Size " character varying(80) NOT NULL,
    "Member_ID " character varying(80),
    "Shelter_name " character varying(80) NOT NULL
);
    DROP TABLE public."PET";
       public         heap    postgres    false            �            1259    16495    SHELTER     TABLE     �  CREATE TABLE public."SHELTER " (
    "Name" character varying(80) NOT NULL,
    "Tel." integer NOT NULL,
    "Nursing_Num" integer,
    "Max_of_Containment" integer,
    "City" character varying(80) NOT NULL,
    "District" character varying(80) NOT NULL,
    "Town" character varying(80) NOT NULL,
    "Street" character varying(80) NOT NULL,
    "SAdmin_ID" character varying(80) NOT NULL,
    "WAdmin_ID" character varying(80) NOT NULL
);
    DROP TABLE public."SHELTER ";
       public         heap    postgres    false            �            1259    16485    SHELTER_ADMIN     TABLE     �   CREATE TABLE public."SHELTER_ADMIN " (
    "ID" character varying(80) NOT NULL,
    "Password" character varying(80) NOT NULL,
    "WAdmin_ID " character varying(80) NOT NULL
);
 $   DROP TABLE public."SHELTER_ADMIN ";
       public         heap    postgres    false            �            1259    16490 
   WEB_ADMIN     TABLE     }   CREATE TABLE public."WEB_ADMIN " (
    "ID" character varying(80) NOT NULL,
    "Password" character varying(80) NOT NULL
);
     DROP TABLE public."WEB_ADMIN ";
       public         heap    postgres    false            0          0    16466    APPLICATION 
   TABLE DATA           l   COPY public."APPLICATION" ("Numbering ", "Date ", "Member_ID ", "Pet_number ", "Shelter_name ") FROM stdin;
    public          postgres    false    209   J       7          0    16507 	   BELONG_TO 
   TABLE DATA           C   COPY public."BELONG_TO" ("Pet_number", "Shelter_name") FROM stdin;
    public          postgres    false    216   5J       6          0    16502    INVESTIGATION_LOCATION 
   TABLE DATA           r   COPY public."INVESTIGATION_LOCATION" ("Application_numbering", "Type_of_Location ", "Size_of_Place ") FROM stdin;
    public          postgres    false    215   RJ       1          0    16471 	   MEMBERS  
   TABLE DATA           �   COPY public."MEMBERS " ("Personal_ID ", "Name ", "Sex", "Tel.", "Birth_date ", "Email", "Password", "City", "District", "Town", "Street", "Num_of_Pet ", "WAdmin_ID ") FROM stdin;
    public          postgres    false    210   oJ       2          0    16478    PET 
   TABLE DATA           �   COPY public."PET" ("Containment_Number ", "Sex ", "Wafer", "Adoption_Status ", "Describe", "Category", "Announcement_Time ", "Varity ", "Length_of_Stay ", "Rescue_Location ", "Shelter ", "Size ", "Member_ID ", "Shelter_name ") FROM stdin;
    public          postgres    false    211   �J       5          0    16495    SHELTER  
   TABLE DATA           �   COPY public."SHELTER " ("Name", "Tel.", "Nursing_Num", "Max_of_Containment", "City", "District", "Town", "Street", "SAdmin_ID", "WAdmin_ID") FROM stdin;
    public          postgres    false    214   �J       3          0    16485    SHELTER_ADMIN  
   TABLE DATA           J   COPY public."SHELTER_ADMIN " ("ID", "Password", "WAdmin_ID ") FROM stdin;
    public          postgres    false    212   �J       4          0    16490 
   WEB_ADMIN  
   TABLE DATA           8   COPY public."WEB_ADMIN " ("ID", "Password") FROM stdin;
    public          postgres    false    213   �J       x           2606    16470    APPLICATION APPLICATION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."APPLICATION"
    ADD CONSTRAINT "APPLICATION_pkey" PRIMARY KEY ("Numbering ");
 J   ALTER TABLE ONLY public."APPLICATION" DROP CONSTRAINT "APPLICATION_pkey";
       public            postgres    false    209            �           2606    16511    BELONG_TO BELONG_TO_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."BELONG_TO"
    ADD CONSTRAINT "BELONG_TO_pkey" PRIMARY KEY ("Pet_number", "Shelter_name");
 F   ALTER TABLE ONLY public."BELONG_TO" DROP CONSTRAINT "BELONG_TO_pkey";
       public            postgres    false    216    216            �           2606    16506 2   INVESTIGATION_LOCATION INVESTIGATION_LOCATION_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."INVESTIGATION_LOCATION"
    ADD CONSTRAINT "INVESTIGATION_LOCATION_pkey" PRIMARY KEY ("Application_numbering");
 `   ALTER TABLE ONLY public."INVESTIGATION_LOCATION" DROP CONSTRAINT "INVESTIGATION_LOCATION_pkey";
       public            postgres    false    215            }           2606    16477    MEMBERS  MEMBERS _pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."MEMBERS "
    ADD CONSTRAINT "MEMBERS _pkey" PRIMARY KEY ("Personal_ID ");
 F   ALTER TABLE ONLY public."MEMBERS " DROP CONSTRAINT "MEMBERS _pkey";
       public            postgres    false    210            �           2606    16484    PET PET_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."PET"
    ADD CONSTRAINT "PET_pkey" PRIMARY KEY ("Containment_Number ");
 :   ALTER TABLE ONLY public."PET" DROP CONSTRAINT "PET_pkey";
       public            postgres    false    211            �           2606    16501    SHELTER  SHELTER _pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."SHELTER "
    ADD CONSTRAINT "SHELTER _pkey" PRIMARY KEY ("Name");
 D   ALTER TABLE ONLY public."SHELTER " DROP CONSTRAINT "SHELTER _pkey";
       public            postgres    false    214            �           2606    16489 "   SHELTER_ADMIN  SHELTER_ADMIN _pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."SHELTER_ADMIN "
    ADD CONSTRAINT "SHELTER_ADMIN _pkey" PRIMARY KEY ("ID");
 P   ALTER TABLE ONLY public."SHELTER_ADMIN " DROP CONSTRAINT "SHELTER_ADMIN _pkey";
       public            postgres    false    212            �           2606    16494    WEB_ADMIN  WEB_ADMIN _pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."WEB_ADMIN "
    ADD CONSTRAINT "WEB_ADMIN _pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."WEB_ADMIN " DROP CONSTRAINT "WEB_ADMIN _pkey";
       public            postgres    false    213            �           2606    16515    MEMBERS  unique_MEMBERS_email 
   CONSTRAINT     `   ALTER TABLE ONLY public."MEMBERS "
    ADD CONSTRAINT "unique_MEMBERS_email" UNIQUE ("Email");
 L   ALTER TABLE ONLY public."MEMBERS " DROP CONSTRAINT "unique_MEMBERS_email";
       public            postgres    false    210            �           2606    16513    MEMBERS  unique_MEMBERS_tel 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MEMBERS "
    ADD CONSTRAINT "unique_MEMBERS_tel" UNIQUE ("Tel.");
 J   ALTER TABLE ONLY public."MEMBERS " DROP CONSTRAINT "unique_MEMBERS_tel";
       public            postgres    false    210            �           2606    16559    SHELTER  unique_SHELTER_tel 
   CONSTRAINT     \   ALTER TABLE ONLY public."SHELTER "
    ADD CONSTRAINT "unique_SHELTER_tel" UNIQUE ("Tel.");
 I   ALTER TABLE ONLY public."SHELTER " DROP CONSTRAINT "unique_SHELTER_tel";
       public            postgres    false    214            y           1259    16539    fki_fk_APPLICATION_MEMBERS    INDEX     ^   CREATE INDEX "fki_fk_APPLICATION_MEMBERS" ON public."APPLICATION" USING btree ("Member_ID ");
 0   DROP INDEX public."fki_fk_APPLICATION_MEMBERS";
       public            postgres    false    209            z           1259    16545    fki_fk_APPLICATION_PET    INDEX     [   CREATE INDEX "fki_fk_APPLICATION_PET" ON public."APPLICATION" USING btree ("Pet_number ");
 ,   DROP INDEX public."fki_fk_APPLICATION_PET";
       public            postgres    false    209            {           1259    16551    fki_fk_APPLICATION_SHELTER    INDEX     a   CREATE INDEX "fki_fk_APPLICATION_SHELTER" ON public."APPLICATION" USING btree ("Shelter_name ");
 0   DROP INDEX public."fki_fk_APPLICATION_SHELTER";
       public            postgres    false    209            �           1259    16577    fki_fk_APPLICATION_numbering    INDEX     v   CREATE INDEX "fki_fk_APPLICATION_numbering" ON public."INVESTIGATION_LOCATION" USING btree ("Application_numbering");
 2   DROP INDEX public."fki_fk_APPLICATION_numbering";
       public            postgres    false    215            ~           1259    16521    fki_fk_MEMBERS_WADMIN    INDEX     W   CREATE INDEX "fki_fk_MEMBERS_WADMIN" ON public."MEMBERS " USING btree ("WAdmin_ID ");
 +   DROP INDEX public."fki_fk_MEMBERS_WADMIN";
       public            postgres    false    210            �           1259    16527    fki_fk_PET_MEMBERS    INDEX     N   CREATE INDEX "fki_fk_PET_MEMBERS" ON public."PET" USING btree ("Member_ID ");
 (   DROP INDEX public."fki_fk_PET_MEMBERS";
       public            postgres    false    211            �           1259    16533    fki_fk_PET_SHELTER    INDEX     Q   CREATE INDEX "fki_fk_PET_SHELTER" ON public."PET" USING btree ("Shelter_name ");
 (   DROP INDEX public."fki_fk_PET_SHELTER";
       public            postgres    false    211            �           1259    16583    fki_fk_PET_number    INDEX     S   CREATE INDEX "fki_fk_PET_number" ON public."BELONG_TO" USING btree ("Pet_number");
 '   DROP INDEX public."fki_fk_PET_number";
       public            postgres    false    216            �           1259    16557    fki_fk_SADMIN_WADMIN    INDEX     [   CREATE INDEX "fki_fk_SADMIN_WADMIN" ON public."SHELTER_ADMIN " USING btree ("WAdmin_ID ");
 *   DROP INDEX public."fki_fk_SADMIN_WADMIN";
       public            postgres    false    212            �           1259    16565    fki_fk_SHELTER_SADMIN    INDEX     U   CREATE INDEX "fki_fk_SHELTER_SADMIN" ON public."SHELTER " USING btree ("SAdmin_ID");
 +   DROP INDEX public."fki_fk_SHELTER_SADMIN";
       public            postgres    false    214            �           1259    16571    fki_fk_SHELTER_WADMIN    INDEX     U   CREATE INDEX "fki_fk_SHELTER_WADMIN" ON public."SHELTER " USING btree ("WAdmin_ID");
 +   DROP INDEX public."fki_fk_SHELTER_WADMIN";
       public            postgres    false    214            �           1259    16589    fki_fk_SHELTER_name    INDEX     W   CREATE INDEX "fki_fk_SHELTER_name" ON public."BELONG_TO" USING btree ("Shelter_name");
 )   DROP INDEX public."fki_fk_SHELTER_name";
       public            postgres    false    216            �           2606    16534 "   APPLICATION fk_APPLICATION_MEMBERS    FK CONSTRAINT     �   ALTER TABLE ONLY public."APPLICATION"
    ADD CONSTRAINT "fk_APPLICATION_MEMBERS" FOREIGN KEY ("Member_ID ") REFERENCES public."MEMBERS "("Personal_ID ") NOT VALID;
 P   ALTER TABLE ONLY public."APPLICATION" DROP CONSTRAINT "fk_APPLICATION_MEMBERS";
       public          postgres    false    210    3197    209            �           2606    16540    APPLICATION fk_APPLICATION_PET    FK CONSTRAINT     �   ALTER TABLE ONLY public."APPLICATION"
    ADD CONSTRAINT "fk_APPLICATION_PET" FOREIGN KEY ("Pet_number ") REFERENCES public."PET"("Containment_Number ") NOT VALID;
 L   ALTER TABLE ONLY public."APPLICATION" DROP CONSTRAINT "fk_APPLICATION_PET";
       public          postgres    false    3204    211    209            �           2606    16546 "   APPLICATION fk_APPLICATION_SHELTER    FK CONSTRAINT     �   ALTER TABLE ONLY public."APPLICATION"
    ADD CONSTRAINT "fk_APPLICATION_SHELTER" FOREIGN KEY ("Shelter_name ") REFERENCES public."SHELTER "("Name") NOT VALID;
 P   ALTER TABLE ONLY public."APPLICATION" DROP CONSTRAINT "fk_APPLICATION_SHELTER";
       public          postgres    false    209    3213    214            �           2606    16572 /   INVESTIGATION_LOCATION fk_APPLICATION_numbering    FK CONSTRAINT     �   ALTER TABLE ONLY public."INVESTIGATION_LOCATION"
    ADD CONSTRAINT "fk_APPLICATION_numbering" FOREIGN KEY ("Application_numbering") REFERENCES public."APPLICATION"("Numbering ") NOT VALID;
 ]   ALTER TABLE ONLY public."INVESTIGATION_LOCATION" DROP CONSTRAINT "fk_APPLICATION_numbering";
       public          postgres    false    209    3192    215            �           2606    16516    MEMBERS  fk_MEMBERS_WADMIN    FK CONSTRAINT     �   ALTER TABLE ONLY public."MEMBERS "
    ADD CONSTRAINT "fk_MEMBERS_WADMIN" FOREIGN KEY ("WAdmin_ID ") REFERENCES public."WEB_ADMIN "("ID") NOT VALID;
 I   ALTER TABLE ONLY public."MEMBERS " DROP CONSTRAINT "fk_MEMBERS_WADMIN";
       public          postgres    false    3211    213    210            �           2606    16522    PET fk_PET_MEMBERS    FK CONSTRAINT     �   ALTER TABLE ONLY public."PET"
    ADD CONSTRAINT "fk_PET_MEMBERS" FOREIGN KEY ("Member_ID ") REFERENCES public."MEMBERS "("Personal_ID ") NOT VALID;
 @   ALTER TABLE ONLY public."PET" DROP CONSTRAINT "fk_PET_MEMBERS";
       public          postgres    false    211    210    3197            �           2606    16528    PET fk_PET_SHELTER    FK CONSTRAINT     �   ALTER TABLE ONLY public."PET"
    ADD CONSTRAINT "fk_PET_SHELTER" FOREIGN KEY ("Shelter_name ") REFERENCES public."SHELTER "("Name") NOT VALID;
 @   ALTER TABLE ONLY public."PET" DROP CONSTRAINT "fk_PET_SHELTER";
       public          postgres    false    211    214    3213            �           2606    16578    BELONG_TO fk_PET_number    FK CONSTRAINT     �   ALTER TABLE ONLY public."BELONG_TO"
    ADD CONSTRAINT "fk_PET_number" FOREIGN KEY ("Pet_number") REFERENCES public."PET"("Containment_Number ") NOT VALID;
 E   ALTER TABLE ONLY public."BELONG_TO" DROP CONSTRAINT "fk_PET_number";
       public          postgres    false    3204    216    211            �           2606    16552    SHELTER_ADMIN  fk_SADMIN_WADMIN    FK CONSTRAINT     �   ALTER TABLE ONLY public."SHELTER_ADMIN "
    ADD CONSTRAINT "fk_SADMIN_WADMIN" FOREIGN KEY ("WAdmin_ID ") REFERENCES public."WEB_ADMIN "("ID") NOT VALID;
 M   ALTER TABLE ONLY public."SHELTER_ADMIN " DROP CONSTRAINT "fk_SADMIN_WADMIN";
       public          postgres    false    212    3211    213            �           2606    16560    SHELTER  fk_SHELTER_SADMIN    FK CONSTRAINT     �   ALTER TABLE ONLY public."SHELTER "
    ADD CONSTRAINT "fk_SHELTER_SADMIN" FOREIGN KEY ("SAdmin_ID") REFERENCES public."SHELTER_ADMIN "("ID") NOT VALID;
 H   ALTER TABLE ONLY public."SHELTER " DROP CONSTRAINT "fk_SHELTER_SADMIN";
       public          postgres    false    3208    214    212            �           2606    16566    SHELTER  fk_SHELTER_WADMIN    FK CONSTRAINT     �   ALTER TABLE ONLY public."SHELTER "
    ADD CONSTRAINT "fk_SHELTER_WADMIN" FOREIGN KEY ("WAdmin_ID") REFERENCES public."WEB_ADMIN "("ID") NOT VALID;
 H   ALTER TABLE ONLY public."SHELTER " DROP CONSTRAINT "fk_SHELTER_WADMIN";
       public          postgres    false    213    214    3211            �           2606    16584    BELONG_TO fk_SHELTER_name    FK CONSTRAINT     �   ALTER TABLE ONLY public."BELONG_TO"
    ADD CONSTRAINT "fk_SHELTER_name" FOREIGN KEY ("Shelter_name") REFERENCES public."SHELTER "("Name") NOT VALID;
 G   ALTER TABLE ONLY public."BELONG_TO" DROP CONSTRAINT "fk_SHELTER_name";
       public          postgres    false    216    214    3213            0      x������ � �      7      x������ � �      6      x������ � �      1      x������ � �      2      x������ � �      5      x������ � �      3      x������ � �      4      x������ � �     