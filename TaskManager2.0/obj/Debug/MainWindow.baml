   M S B A M L   `   `   `  ����I  ETaskManager2.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:TaskManager2._0TaskManager2._0  5   	        TaskManager2._0.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:TaskManager2._0     5   	   -   5          �Name$  Task_Manager_2_0��5   	    � Title$ Task Manager 2.0��5   	   $	��350��6"   $	��525��6/   ���	#FF06AEBF#��� ��6R    � Icon$z tkisspng-user-interface-checkbox-computer-icons-clip-art-yes-check-mark-png-5ab1adda493300.9409984815215938182998.png��6�    � WindowStartupLocation$ CenterScreen=�6    � Cursor$ Arrow��6E   � 	Resources 5	       �� 
TargetType �� Property �� Value��%  '��       '�� H     '�� �     �� 5
   
   " ��6   .�5      ��  � ��$ 14(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 14(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 40��6&   �� 5       � ��$ 5q�6'   5      5      .��5      � 	 � ColumnDefinitions	 5   
   �� 5      $
��124* �6   �� 5      $
��135* �6   
 � RowDefinitions
 5   
   �� 5      $	��27* �6   �� 5      $��5* �6   .+�5   
   �� $��0��6   $��2��5   8   $��0,0,260.4,0.4q�6L   ���	#FF06AEBF��5   "   �� *Tasks+ �� SelectedItem 5      �� *SelectedTask+��5       �� 5!      .R�5"      �� $��5q�6!   .+�5#      �� $��18(�6$   ��62   ��  �� Path$
 Name��� 5$      ��6$   �� $ Description��� 5%      ��6$   �� $
 Date�5&      5'      5)      �� 5*   
    �� Orientation$ 
Horizontal=�6   $��2��6.   $��0,270,260.4,-0.2q�6B   $��2��6\   .+�5+      �� $	��100��64   $��Add task��6@   $��	5,5,5,5.2q�6S   ���	#FF9EEBAA��6   �� *
AddCommand+6f   �� 5,      $	��100��6a   $��Remove task��6m   $��	Condensed&�6�   $��	5,5,5,5.2q�6�   ���	#FF9EEBAA��6   �� *RemoveCommand+��67   �� *SelectedTask+6�   5-      �� 5.   
   $��1��6    � DataContext 6%   �� *SelectedTask+.+�5/      �� $��SELECTED TASK��6   �� 50      $��	TASK NAME��6   �� 51      ���	#FF9EEBAA��6   �� *Name+ �� UpdateSourceTrigger$ PropertyChanged=�6Q   �� 52      $��DESCRIPTION��6   �� 53      ���	#FF9EEBAA��6   �� *Description+$ PropertyChanged=�6X   �� 54      $
��DATE��6   �� 55      ���	#FF9EEBAA��6   �� *Date+$ PropertyChanged=�6Q   56      �� 57   
   $
��Save��6   $��1��6@   $
��Left=�6P   $��43��6k   $��88,5,0,0q�6w   $��1��6�   $	��Top=�6�   $	��130��6�   ���	#FF9EEBAA��6    �� *SaveCommand+6�   58      59      