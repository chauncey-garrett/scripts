FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 V P Toggle a VPN service, using OS X's builtin Keychain application when connecting    
 �   �   T o g g l e   a   V P N   s e r v i c e ,   u s i n g   O S   X ' s   b u i l t i n   K e y c h a i n   a p p l i c a t i o n   w h e n   c o n n e c t i n g      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      Toggle the VPN service     �   .   T o g g l e   t h e   V P N   s e r v i c e      l    < ����  O     <    k    ;       l   ��  ��    ) # set the keychain account name here     �   F   s e t   t h e   k e y c h a i n   a c c o u n t   n a m e   h e r e     !   r     " # " m     $ $ � % % \ s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - a   " u n t - v p n "   - w # o      ���� 0 	thescript 	theScript !  & ' & r     ( ) ( I   �� *��
�� .sysoexecTEXT���     TEXT * o    	���� 0 	thescript 	theScript��   ) o      ���� 0 thepassword thePassword '  + , + l   ��������  ��  ��   ,  -�� - O    ; . / . k    : 0 0  1 2 1 l   �� 3 4��   3 ] W set the name of the VPN service listed in "System Preferences > Network Settings" here    4 � 5 5 �   s e t   t h e   n a m e   o f   t h e   V P N   s e r v i c e   l i s t e d   i n   " S y s t e m   P r e f e r e n c e s   >   N e t w o r k   S e t t i n g s "   h e r e 2  6 7 6 r     8 9 8 4    �� :
�� 
svce : m     ; ; � < <  U N T   V P N 9 o      ���� 0 
vpnservice 
VPNservice 7  = > = r    & ? @ ? n    $ A B A 1   " $��
�� 
conn B n    " C D C 1     "��
�� 
cnfg D o     ���� 0 
vpnservice 
VPNservice @ o      ���� 0 isconnected isConnected >  E F E l  ' '��������  ��  ��   F  G�� G Z   ' : H I�� J H o   ' (���� 0 isconnected isConnected I I  + 0�� K��
�� .netzdconnull���     **** K o   + ,���� 0 
vpnservice 
VPNservice��  ��   J k   3 : L L  M N M I  3 8�� O��
�� .netzconnnull���     **** O o   3 4���� 0 
vpnservice 
VPNservice��   N  P Q P l  9 9�� R S��   R  delay 2    S � T T  d e l a y   2 Q  U V U l  9 9�� W X��   W  keystroke thePassword    X � Y Y * k e y s t r o k e   t h e P a s s w o r d V  Z [ Z l  9 9�� \ ]��   \  keystroke return    ] � ^ ^   k e y s t r o k e   r e t u r n [  _ ` _ l  9 9�� a b��   a  delay 2    b � c c  d e l a y   2 `  d�� d l  9 9�� e f��   e  keystroke return    f � g g   k e y s t r o k e   r e t u r n��  ��   / n     h i h 1    ��
�� 
locc i 1    ��
�� 
netp��    m      j j�                                                                                  sevs  alis    �  SERENiTY                   ���H+  Y&USystem Events.app                                              ]@q�4�M        ����  	                CoreServices    ���      �5"�    Y&UY&IY&H  9SERENiTY:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S E R E N i T Y  -System/Library/CoreServices/System Events.app   / ��  ��  ��     k l k l     ��������  ��  ��   l  m n m l     �� o p��   o   Display IP address    p � q q &   D i s p l a y   I P   a d d r e s s n  r s r l  = J t���� t r   = J u v u c   = F w x w l  = B y���� y I  = B�� z��
�� .sysoexecTEXT���     TEXT z m   = > { { � | | D c u r l   - - s i l e n t   h t t p : / / i c a n h a z i p . c o m��  ��  ��   x m   B E��
�� 
ctxt v o      ���� 0 	ipaddress 	ipAddress��  ��   s  } ~ } l  K P ����  I  K P�� ���
�� .sysodelanull��� ��� nmbr � m   K L���� ��  ��  ��   ~  � � � l  Q b ����� � I  Q b�� � �
�� .sysonotfnull��� ��� TEXT � c   Q X � � � o   Q T���� 0 	ipaddress 	ipAddress � m   T W��
�� 
TEXT � �� ���
�� 
appr � m   [ ^ � � � � � $ C u r r e n t   I P   A d d r e s s��  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     b � �   � �  r � �  } � �  �����  ��  ��   �   �  j $������������ ;������������ {���������� ����� 0 	thescript 	theScript
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
ctxt�� 0 	ipaddress 	ipAddress
�� .sysodelanull��� ��� nmbr
�� 
TEXT
�� 
appr
�� .sysonotfnull��� ��� TEXT�� c� 9�E�O�j E�O*�,�, $*��/E�O��,�,E�O� 
�j Y 	�j OPUUO�j a &E` Olj O_ a &a a l ascr  ��ޭ