   M S B A M L   `   `   `  ����F  BMongoSeeder, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MongoSeederMongoSeeder  5   	       MongoSeeder.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MongoSeeder     5   	     � Title$  MongoSeeder��5   	   $	��450��6   $	��800��6*   .��5	      � -   5         �Name$ MongoSeeder��5	       � ColumnDefinitions 5
   
   �� 5      $	��81* �6   �� 5      $
��719* �6   .+�5   
   �� -   5         ��Name$ GoButton��5      $	��GO!��6#   $
��Left=�61   $��
94,352,0,0q�6L   $	��Top=�6`   $	��479��6x   $��1��6�   �� 5   
   -   5         ��Name$ ConnectionStringBox��5      $
��Left=�6/   $��	93,50,0,0q�6J   $�� ��6]    �� TextWrapping$
 Wrap=�6e   $	��Top=�6y   $	��226��6�   $��1��6�   �� 5   
   $��Connection String��6   $
��Left=�6,   $��	94,24,0,0q�6G   $	��Top=�6Z   $��1��6r   �� 5   
   $
��JSON��6   $
��Left=�6   $��
94,120,0,0q�6:   $	��Top=�6N   $��1��6f   �� 5   
   $��
Collection��6   $
��Left=�6%   $��	94,62,0,0q�6@   $	��Top=�6S   $��1��6k   �� 5   
   -   5        $ NumOfRecordsTextBox��5      $
��Left=�6/   $��
348,88,0,0q�6J   $��                  ��6^   $
 Wrap=�5      $	��Top=�6(   $	��224��6@   $��1��6L   �� 5   
   $��Number of records��6   $
��Left=�6,   $��
348,63,0,0q�6G   $	��Top=�6[   $��1��6s   �� 5   
   -   5        $ DbNameTextBox��5      $
��Left=�6)   $��
348,50,0,0q�6D   $�� ��6X   $
 Wrap=�6`   $	��Top=�6t   $	��225��6�    J� RenderTransformOrigin$ 0.908,-0.61&�6�   $��1��6�   �� 5   
   $��DB name��6   $
��Left=�6"   $��
348,24,0,0q�6=   $	��Top=�6Q   $��1��6i   �� 5   
   -   5        $ JsonDataTextBox��5      $
��Left=�6+   $��
94,151,0,0q�6F   $
 Wrap=�6Z   $	��Top=�6n   $	��478��6�   $	��196��6�    �� 
AcceptsTab$
 True��6�    �� AcceptsReturn$
 True��6�   	 �� 	UndoLimit$		 106��6�   $��1��6�   �� 5   
   -   5        $ CollectionText��5      $
��Left=�6*   $��	94,88,0,0q�6E   $
 Wrap=�6X   $	��Top=�6l   $	��225��6�   $��1��6�   5      5      