FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 V P Toggle a VPN service, using OS X's builtin Keychain application when connecting    
 �   �   T o g g l e   a   V P N   s e r v i c e ,   u s i n g   O S   X ' s   b u i l t i n   K e y c h a i n   a p p l i c a t i o n   w h e n   c o n n e c t i n g      l     ��  ��      Variables:     �      V a r i a b l e s :      l     ��  ��      	keychain account name     �   .   	 k e y c h a i n   a c c o u n t   n a m e      l     ��  ��      	vpn service name     �   $   	 v p n   s e r v i c e   n a m e      l     ��������  ��  ��        l     ��������  ��  ��         l     ��������  ��  ��      ! " ! l     �� # $��   #   Toggle the VPN service    $ � % % .   T o g g l e   t h e   V P N   s e r v i c e "  & ' & l     ��������  ��  ��   '  ( ) ( l     ��������  ��  ��   )  * + * l    < ,���� , O     < - . - k    ; / /  0 1 0 l   �� 2 3��   2 ) # set the keychain account name here    3 � 4 4 F   s e t   t h e   k e y c h a i n   a c c o u n t   n a m e   h e r e 1  5 6 5 r     7 8 7 m     9 9 � : : \ s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - a   " u n t - v p n "   - w 8 o      ���� 0 	thescript 	theScript 6  ; < ; r     = > = I   �� ?��
�� .sysoexecTEXT���     TEXT ? o    	���� 0 	thescript 	theScript��   > o      ���� 0 thepassword thePassword <  @�� @ O    ; A B A k    : C C  D E D l   �� F G��   F ] W set the name of the VPN service listed in "System Preferences > Network Settings" here    G � H H �   s e t   t h e   n a m e   o f   t h e   V P N   s e r v i c e   l i s t e d   i n   " S y s t e m   P r e f e r e n c e s   >   N e t w o r k   S e t t i n g s "   h e r e E  I J I r     K L K 4    �� M
�� 
svce M m     N N � O O  U N T   V P N L o      ���� 0 
vpnservice 
VPNservice J  P Q P r    & R S R n    $ T U T 1   " $��
�� 
conn U n    " V W V 1     "��
�� 
cnfg W o     ���� 0 
vpnservice 
VPNservice S o      ���� 0 isconnected isConnected Q  X�� X Z   ' : Y Z�� [ Y o   ' (���� 0 isconnected isConnected Z I  + 0�� \��
�� .netzdconnull���     **** \ o   + ,���� 0 
vpnservice 
VPNservice��  ��   [ k   3 : ] ]  ^ _ ^ I  3 8�� `��
�� .netzconnnull���     **** ` o   3 4���� 0 
vpnservice 
VPNservice��   _  a b a l  9 9�� c d��   c  delay 2    d � e e  d e l a y   2 b  f g f l  9 9�� h i��   h  keystroke thePassword    i � j j * k e y s t r o k e   t h e P a s s w o r d g  k l k l  9 9�� m n��   m  keystroke return    n � o o   k e y s t r o k e   r e t u r n l  p q p l  9 9�� r s��   r  delay 2    s � t t  d e l a y   2 q  u�� u l  9 9�� v w��   v  keystroke return    w � x x   k e y s t r o k e   r e t u r n��  ��   B n     y z y 1    ��
�� 
locc z 1    ��
�� 
netp��   . m      { {�                                                                                  sevs  alis    �  SERENiTY                   ����H+   ��System Events.app                                               #�A|�        ����  	                CoreServices    ��0$      �A�9     �� � �  9SERENiTY:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S E R E N i T Y  -System/Library/CoreServices/System Events.app   / ��  ��  ��   +  | } | l     ��������  ��  ��   }  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   �   Display IP address    � � � � &   D i s p l a y   I P   a d d r e s s �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  
delay 10.0    � � � �  d e l a y   1 0 . 0 �  � � � l  = J ����� � r   = J � � � c   = F � � � l  = B ����� � I  = B�� ���
�� .sysoexecTEXT���     TEXT � m   = > � � � � � D c u r l   - - s i l e n t   h t t p : / / i c a n h a z i p . c o m��  ��  ��   � m   B E��
�� 
ctxt � o      ���� 0 	ipaddress 	ipAddress��  ��   �  � � � l  K P ����� � I  K P�� ���
�� .sysodelanull��� ��� nmbr � m   K L���� ��  ��  ��   �  � � � l  Q b ����� � I  Q b�� � �
�� .sysonotfnull��� ��� TEXT � c   Q X � � � o   Q T���� 0 	ipaddress 	ipAddress � m   T W��
�� 
TEXT � �� ���
�� 
appr � m   [ ^ � � � � � $ C u r r e n t   I P   A d d r e s s��  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � 9 � ��� �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 	thescript 	theScript�� 0 thepassword thePassword�� 0 
vpnservice 
VPNservice�� 0 isconnected isConnected�� 0 	ipaddress 	ipAddress��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     b � �  * � �  � � �  � � �  �����  ��  ��   �   �  { 9������������ N������������ �����~�}�| ��{�� 0 	thescript 	theScript
�� .sysoexecTEXT���     TEXT�� 0 thepassword thePassword
�� 
netp
�� 
locc
�� 
svce�� 0 
vpnservice 
VPNservice
�� 
cnfg
�� 
conn�� 0 isconnected isConnected
�� .netzdconnull���     ****
�� .netzconnnull���     ****
�� 
ctxt� 0 	ipaddress 	ipAddress
�~ .sysodelanull��� ��� nmbr
�} 
TEXT
�| 
appr
�{ .sysonotfnull��� ��� TEXT�� c� 9�E�O�j E�O*�,�, $*��/E�O��,�,E�O� 
�j Y 	�j OPUUO�j a &E` Olj O_ a &a a l  � � � � & ! D a r t 4 f i s h * 1 4 s p r i n g �  � �  ��z ��y �  {�x
�x 
netp
�z 
svce � � � � H D E 7 6 7 4 A A - D 8 F 7 - 4 1 A 8 - B 7 8 1 - C 9 B 2 0 1 C 6 2 2 8 3
�y kfrmID  
�� boovfals � � � �  7 1 . 1 7 0 . 2 5 0 . 2 3 1��  ��   ascr  ��ޭ