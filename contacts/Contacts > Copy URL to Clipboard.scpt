FasdUAS 1.101.10   ��   ��    k             l     ��  ��    $ ==============================     � 	 	 < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    ' ! Contacts > Copy URL to Clipboard     �   B   C o n t a c t s   >   C o p y   U R L   t o   C l i p b o a r d      l     ��  ��      Version 1.0.0     �      V e r s i o n   1 . 0 . 0      l     ��  ��    : 4 Written By: Ben Waldie <ben@automatedworkflows.com>     �   h   W r i t t e n   B y :   B e n   W a l d i e   < b e n @ a u t o m a t e d w o r k f l o w s . c o m >      l     ��  ��    ( " http://www.automatedworkflows.com     �   D   h t t p : / / w w w . a u t o m a t e d w o r k f l o w s . c o m      l     ��������  ��  ��       !   l     �� " #��   " { u Description: This script is a Contacts app plug-in, which adds a "Copy to Clipboard" rollover to contact URL fields.    # � $ $ �   D e s c r i p t i o n :   T h i s   s c r i p t   i s   a   C o n t a c t s   a p p   p l u g - i n ,   w h i c h   a d d s   a   " C o p y   t o   C l i p b o a r d "   r o l l o v e r   t o   c o n t a c t   U R L   f i e l d s . !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) S M Installation: Save as a compiled script into ~/Library/Address Book Plug-Ins    * � + + �   I n s t a l l a t i o n :   S a v e   a s   a   c o m p i l e d   s c r i p t   i n t o   ~ / L i b r a r y / A d d r e s s   B o o k   P l u g - I n s (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0 ] W Usage: Select "Copy to Clipboard" from the URL popup on a contact in the Contacts app.    1 � 2 2 �   U s a g e :   S e l e c t   " C o p y   t o   C l i p b o a r d "   f r o m   t h e   U R L   p o p u p   o n   a   c o n t a c t   i n   t h e   C o n t a c t s   a p p . /  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7   Version History:    8 � 9 9 "   V e r s i o n   H i s t o r y : 6  : ; : l     �� < =��   <   1.0.0 - Initial release    = � > > 0   1 . 0 . 0   -   I n i t i a l   r e l e a s e ;  ? @ ? l     �� A B��   A $ ==============================    B � C C < = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = @  D E D l     ��������  ��  ��   E  F G F l     �� H I��   H � � "using terms from" is necessary to let AppleScript know that these event handlers are terminology that belongs to the Contacts app    I � J J   " u s i n g   t e r m s   f r o m "   i s   n e c e s s a r y   t o   l e t   A p p l e S c r i p t   k n o w   t h a t   t h e s e   e v e n t   h a n d l e r s   a r e   t e r m i n o l o g y   t h a t   b e l o n g s   t o   t h e   C o n t a c t s   a p p G  K�� K w       L M L k       N N  O P O l     ��������  ��  ��   P  Q R Q l     �� S T��   S W Q This handler returns the Contacts property for which the plug-in should function    T � U U �   T h i s   h a n d l e r   r e t u r n s   t h e   C o n t a c t s   p r o p e r t y   f o r   w h i c h   t h e   p l u g - i n   s h o u l d   f u n c t i o n R  V W V i      X Y X I     ������
�� .az00az57null��� ��� null��  ��   Y L      Z Z m      [ [ � \ \  u r l W  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a g a This handler returns the name of the plug-in to be displayed in the Contacts property popup menu    b � c c �   T h i s   h a n d l e r   r e t u r n s   t h e   n a m e   o f   t h e   p l u g - i n   t o   b e   d i s p l a y e d   i n   t h e   C o n t a c t s   p r o p e r t y   p o p u p   m e n u `  d e d i     f g f I     ������
�� .az00az58null��� ��� null��  ��   g L      h h m      i i � j j " C o p y   t o   C l i p b o a r d e  k l k l     ��������  ��  ��   l  m n m l     �� o p��   o k e This handler basically tells the Contacts app that this plug-in should be enabled for a given person    p � q q �   T h i s   h a n d l e r   b a s i c a l l y   t e l l s   t h e   C o n t a c t s   a p p   t h a t   t h i s   p l u g - i n   s h o u l d   b e   e n a b l e d   f o r   a   g i v e n   p e r s o n n  r s r i     t u t I     ���� v
�� .az00az59null��� ��� null��   v �� w x
�� 
az62 w o      ���� 0 theproperty theProperty x �� y��
�� 
az61 y o      ���� 0 	theperson 	thePerson��   u Z      z {�� | z >     } ~ } o     ���� 0 theproperty theProperty ~ m    ��
�� 
msng { L       m    ��
�� boovtrue��   | L     � � m    ��
�� boovfals s  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � [ U This handler runs when the plug-in is selected from the Contacts property popup menu    � � � � �   T h i s   h a n d l e r   r u n s   w h e n   t h e   p l u g - i n   i s   s e l e c t e d   f r o m   t h e   C o n t a c t s   p r o p e r t y   p o p u p   m e n u �  ��� � i     � � � I     ���� �
�� .az00az60null��� ��� null��   � �� � �
�� 
az62 � o      ���� 0 theproperty theProperty � �� ���
�� 
az61 � o      ���� 0 	theperson 	thePerson��   � k      � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � > 8 Target the contact from where the plug-in was triggered    � � � � p   T a r g e t   t h e   c o n t a c t   f r o m   w h e r e   t h e   p l u g - i n   w a s   t r i g g e r e d �  � � � O     
 � � � k    	 � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � D > Retrieve the value of the property that triggered the plug-in    � � � � |   R e t r i e v e   t h e   v a l u e   o f   t h e   p r o p e r t y   t h a t   t r i g g e r e d   t h e   p l u g - i n �  ��� � r    	 � � � n     � � � 1    ��
�� 
az17 � o    ���� 0 theproperty theProperty � o      ���� 0 thevalue theValue��   � m      � ��                                                                                  adrb  alis    J  SERENiTY                   ����H+  Y&�Contacts.app                                                   Y����j        ����  	                Applications    ��0$      ��>�    Y&�  #SERENiTY:Applications: Contacts.app     C o n t a c t s . a p p    S E R E N i T Y  Applications/Contacts.app   / ��   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � &   Copy the value to the clipboard    � � � � @   C o p y   t h e   v a l u e   t o   t h e   c l i p b o a r d �  � � � I   �� ���
�� .JonspClpnull���     **** � o    ���� 0 thevalue theValue��   �  ��� � l   ��������  ��  ��  ��  ��   M�                                                                                  adrb  alis    J  SERENiTY                   ����H+  Y&�Contacts.app                                                   Y����j        ����  	                Applications    ��0$      ��>�    Y&�  #SERENiTY:Applications: Contacts.app     C o n t a c t s . a p p    S E R E N i T Y  Applications/Contacts.app   / ��  ��       �� � � � � ���   � ��������
�� .az00az57null��� ��� null
�� .az00az58null��� ��� null
�� .az00az59null��� ��� null
�� .az00az60null��� ��� null � �� Y���� � ���
�� .az00az57null��� ��� null��  ��   �   �  [�� � � �� g���� � ���
�� .az00az58null��� ��� null��  ��   �   �  i�� � � �� u���� � ���
�� .az00az59null��� ��� null��  �� ���� �
�� 
az62�� 0 theproperty theProperty � ������
�� 
az61�� 0 	theperson 	thePerson��   � ������ 0 theproperty theProperty�� 0 	theperson 	thePerson � ��
�� 
msng�� �� eY f � �� ����� � ���
�� .az00az60null��� ��� null��  �� ���� �
�� 
az62�� 0 theproperty theProperty � ������
�� 
az61�� 0 	theperson 	thePerson��   � ��~�}� 0 theproperty theProperty�~ 0 	theperson 	thePerson�} 0 thevalue theValue �  ��|�{
�| 
az17
�{ .JonspClpnull���     ****�� � ��,E�UO�j OP ascr  ��ޭ