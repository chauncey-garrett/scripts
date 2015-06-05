FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Veritrope.com
TOGGLE SHOWING ONLY OPEN APPLICATIONS IN THE DOCK
VERSION 1.0
June 28, 2012

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here: 
http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/Only-Show-Open-Applications-In-The-Dock

// REQUIREMENTS
More details on the script information page.

// CHANGELOG
1.0  Initial Version

     � 	 	�  
 V e r i t r o p e . c o m  
 T O G G L E   S H O W I N G   O N L Y   O P E N   A P P L I C A T I O N S   I N   T H E   D O C K  
 V E R S I O N   1 . 0  
 J u n e   2 8 ,   2 0 1 2  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   L I K E   T H I S   S C R I P T ?  
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e :    
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t  
  
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E  
 h t t p : / / v e r i t r o p e . c o m / c o d e / O n l y - S h o w - O p e n - A p p l i c a t i o n s - I n - T h e - D o c k  
  
 / /   R E Q U I R E M E N T S  
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e .  
  
 / /   C H A N G E L O G  
 1 . 0     I n i t i a l   V e r s i o n  
  
   
  
 l     ��������  ��  ��        l      ��  ��    k e 
======================================
// MAIN PROGRAM 
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��  ��    %  RESET THE VALUE BEFORE RUNNING     �   >   R E S E T   T H E   V A L U E   B E F O R E   R U N N I N G      l     ����  r         m        �      o      ���� 0 current_value current_Value��  ��        l     ��������  ��  ��         l     �� ! "��   ! ; 5 ENCLOSING THIS IN A 'TRY BLOCK' LETS THE SCRIPT WORK    " � # # j   E N C L O S I N G   T H I S   I N   A   ' T R Y   B L O C K '   L E T S   T H E   S C R I P T   W O R K    $ % $ l     �� & '��   & A ; IF THERE ISN'T ANY VALUE FOR "com.apple.dock static-only"     ' � ( ( v   I F   T H E R E   I S N ' T   A N Y   V A L U E   F O R   " c o m . a p p l e . d o c k   s t a t i c - o n l y "   %  ) * ) l   ; +���� + Q    ; , -�� , k    2 . .  / 0 / l   ��������  ��  ��   0  1 2 1 l   �� 3 4��   3 ( " CHECKS TO SEE IF THE VALUE EXISTS    4 � 5 5 D   C H E C K S   T O   S E E   I F   T H E   V A L U E   E X I S T S 2  6 7 6 r     8 9 8 l    :���� : I   �� ;��
�� .sysoexecTEXT���     TEXT ; m     < < � = = P d e f a u l t s   r e a d   c o m . a p p l e . d o c k   s t a t i c - o n l y��  ��  ��   9 o      ���� 0 current_value current_Value 7  > ? > l   ��������  ��  ��   ?  @ A @ l   �� B C��   B 2 , "1" MEANS DOCK IS IN 'OPEN ITEMS ONLY MODE'    C � D D X   " 1 "   M E A N S   D O C K   I S   I N   ' O P E N   I T E M S   O N L Y   M O D E ' A  E F E l   �� G H��   G 1 + "0" MEANS DOCK IS THE DEFAULT DISPLAY MODE    H � I I V   " 0 "   M E A N S   D O C K   I S   T H E   D E F A U L T   D I S P L A Y   M O D E F  J K J l   �� L M��   L @ : A MISSING VALUE ERROR WILL EXIT OUT FROM THIS 'TRY BLOCK'    M � N N t   A   M I S S I N G   V A L U E   E R R O R   W I L L   E X I T   O U T   F R O M   T H I S   ' T R Y   B L O C K ' K  O P O l   ��������  ��  ��   P  Q R Q Z    , S T�� U S =    V W V o    ���� 0 current_value current_Value W m     X X � Y Y  1 T k     Z Z  [ \ [ l   �� ] ^��   ] @ : DOCK IS IN 'OPEN ITEMS ONLY MODE' / TOGGLE BACK TO NORMAL    ^ � _ _ t   D O C K   I S   I N   ' O P E N   I T E M S   O N L Y   M O D E '   /   T O G G L E   B A C K   T O   N O R M A L \  `�� ` I   �� a��
�� .sysoexecTEXT���     TEXT a m     b b � c c j d e f a u l t s   w r i t e   c o m . a p p l e . d o c k   s t a t i c - o n l y   - b o o l   F A L S E��  ��  ��   U Z    , d e���� d =     f g f o    ���� 0 current_value current_Value g m     h h � i i  0 e k   # ( j j  k l k l  # #�� m n��   m M G DOCK IS IN THE DEFAULT DISPLAY MODE / TOGGLE TO 'OPEN ITEMS ONLY MODE'    n � o o �   D O C K   I S   I N   T H E   D E F A U L T   D I S P L A Y   M O D E   /   T O G G L E   T O   ' O P E N   I T E M S   O N L Y   M O D E ' l  p�� p I  # (�� q��
�� .sysoexecTEXT���     TEXT q m   # $ r r � s s h d e f a u l t s   w r i t e   c o m . a p p l e . d o c k   s t a t i c - o n l y   - b o o l   T R U E��  ��  ��  ��   R  t u t l  - -��������  ��  ��   u  v w v l  - -�� x y��   x + % RELAUNCH THE DOCK TO SHOW THE CHANGE    y � z z J   R E L A U N C H   T H E   D O C K   T O   S H O W   T H E   C H A N G E w  {�� { I  - 2�� |��
�� .sysoexecTEXT���     TEXT | m   - . } } � ~ ~  k i l l a l l   D o c k��  ��   - R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   *   �  l     ��������  ��  ��   �  � � � l     �� � ���   � Q K IF YOU'VE NEVER RUN THIS BEFORE, CREATE THE VALUE IN OPEN ITEMS ONLY MODE'    � � � � �   I F   Y O U ' V E   N E V E R   R U N   T H I S   B E F O R E ,   C R E A T E   T H E   V A L U E   I N   O P E N   I T E M S   O N L Y   M O D E ' �  � � � l  < Q ����� � Z   < Q � ����� � =  < ? � � � o   < =���� 0 current_value current_Value � m   = > � � � � �   � k   B M � �  � � � I  B G�� ���
�� .sysoexecTEXT���     TEXT � m   B C � � � � � h d e f a u l t s   w r i t e   c o m . a p p l e . d o c k   s t a t i c - o n l y   - b o o l   T R U E��   �  ��� � I  H M�� ���
�� .sysoexecTEXT���     TEXT � m   H I � � � � �  k i l l a l l   D o c k��  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     Q � �   � �  ) � �  �����  ��  ��   �   �  �� <�� X b h r }���� � � ��� 0 current_value current_Value
�� .sysoexecTEXT���     TEXT��  ��  �� R�E�O 0�j E�O��  
�j Y ��  
�j Y hO�j W X 	 
hO��  �j O�j Y h ascr  ��ޭ