FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Veritrope.com
APP TOGGLE 
Version 1.0
January 13, 2012

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/toggle-an-app-on-off

// CHANGELOG:

1.0      INITIAL VERSION

// RECOMMENDED INSTALLATION INSTRUCTIONS:

-- Change the property below for app_Name to the
name of the application you'd like to toggle on/off.

-- Save as an application and trigger via 
a keyboard-driven launcher app (like Alfred or LaunchBar). 

-- Note: Many launcher apps allow you to pass information
to an AppleScript. This will allow you to modify this script
to toggle more than one app  See the instructions of
your launcher app for details on how to do this!

     � 	 	~  
 V e r i t r o p e . c o m  
 A P P   T O G G L E    
 V e r s i o n   1 . 0  
 J a n u a r y   1 3 ,   2 0 1 2  
  
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t :  
 h t t p : / / v e r i t r o p e . c o m / c o d e / t o g g l e - a n - a p p - o n - o f f  
  
 / /   C H A N G E L O G :  
  
 1 . 0             I N I T I A L   V E R S I O N  
  
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S :  
  
 - -   C h a n g e   t h e   p r o p e r t y   b e l o w   f o r   a p p _ N a m e   t o   t h e  
 n a m e   o f   t h e   a p p l i c a t i o n   y o u ' d   l i k e   t o   t o g g l e   o n / o f f .  
  
 - -   S a v e   a s   a n   a p p l i c a t i o n   a n d   t r i g g e r   v i a    
 a   k e y b o a r d - d r i v e n   l a u n c h e r   a p p   ( l i k e   A l f r e d   o r   L a u n c h B a r ) .    
  
 - -   N o t e :   M a n y   l a u n c h e r   a p p s   a l l o w   y o u   t o   p a s s   i n f o r m a t i o n  
 t o   a n   A p p l e S c r i p t .   T h i s   w i l l   a l l o w   y o u   t o   m o d i f y   t h i s   s c r i p t  
 t o   t o g g l e   m o r e   t h a n   o n e   a p p     S e e   t h e   i n s t r u c t i o n s   o f  
 y o u r   l a u n c h e r   a p p   f o r   d e t a i l s   o n   h o w   t o   d o   t h i s !  
  
   
  
 l     ��������  ��  ��        l      ��  ��    � } 
======================================
// USER SWITCHES (YOU CAN CHANGE THESE!)
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U S E R   S W I T C H E S   ( Y O U   C A N   C H A N G E   T H E S E ! )  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l     ��  ��      ENTER THE NAME OF THE APP      �   4 E N T E R   T H E   N A M E   O F   T H E   A P P        l     ��  ��    # THAT YOU WOULD LIKE TO TOGGLE     �   : T H A T   Y O U   W O U L D   L I K E   T O   T O G G L E      l     ��   ��     IN THE PROPERTY BELOW...      � ! ! 0 I N   T H E   P R O P E R T Y   B E L O W . . .   " # " j     �� $�� 0 app_name app_Name $ m      % % � & &   #  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + k e 
======================================
// MAIN PROGRAM 
======================================
    , � - - �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 *  . / . l     ��������  ��  ��   /  0 1 0 l    * 2���� 2 Z     * 3 4�� 5 3 I     
�� 6���� 0 appisrunning appIsRunning 6  7�� 7 o    ���� 0 app_name app_Name��  ��   4 I   �� 8��
�� .sysoexecTEXT���     TEXT 8 b     9 : 9 m     ; ; � < <  k i l l a l l   : l    =���� = n     > ? > 1    ��
�� 
strq ? o    ���� 0 app_name app_Name��  ��  ��  ��   5 I   *�� @��
�� .sysoexecTEXT���     TEXT @ b    & A B A m     C C � D D  o p e n   - a   B l   % E���� E n    % F G F 1   # %��
�� 
strq G o    #���� 0 app_name app_Name��  ��  ��  ��  ��   1  H I H l     ��������  ��  ��   I  J K J l     ��������  ��  ��   K  L M L l      �� N O��   N w q 
======================================
// MAIN HANDLER SUBROUTINES 
======================================
    O � P P �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   H A N D L E R   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 M  Q R Q l     ��������  ��  ��   R  S T S i     U V U I      �� W���� 0 appisrunning appIsRunning W  X�� X o      ���� 0 appname appName��  ��   V O     Y Z Y E     [ \ [ l   	 ]���� ] n    	 ^ _ ^ 1    	��
�� 
pnam _ 2   ��
�� 
prcs��  ��   \ o   	 
���� 0 appname appName Z m      ` `�                                                                                  sevs  alis    �  SERENiTY                   ���H+  Y&USystem Events.app                                              ]@q�4�M        ����  	                CoreServices    ���      �5"�    Y&UY&IY&H  9SERENiTY:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S E R E N i T Y  -System/Library/CoreServices/System Events.app   / ��   T  a�� a l     ��������  ��  ��  ��       �� b % c d��   b �������� 0 app_name app_Name�� 0 appisrunning appIsRunning
�� .aevtoappnull  �   � **** c �� V���� e f���� 0 appisrunning appIsRunning�� �� g��  g  ���� 0 appname appName��   e ���� 0 appname appName f  `����
�� 
prcs
�� 
pnam�� � 	*�-�,�U d �� h���� i j��
�� .aevtoappnull  �   � **** h k     * k k  0����  ��  ��   i   j �� ;���� C�� 0 appisrunning appIsRunning
�� 
strq
�� .sysoexecTEXT���     TEXT�� +*b   k+   �b   �,%j Y �b   �,%j  ascr  ��ޭ