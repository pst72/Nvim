Vim�UnDo� e����
tt ѐ@uO�b7 X�͢�}����<�   "                 /       /   /   /    a��B    _�                     	        ����                                                                                                                                                                                                                                                                                                                                                             a��A     �   	               �   	            5��    	                      6                     �    	                      6                     �    
                      7                     �                          8                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��Y     �                 function! CleverTab5��                         K                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��]     �                 function! CleverTab()5��                         M                     �                          N                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��v     �                         if strpart 5��                         a                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��z     �                         if strpart ()5��                         b                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a���     �                         if strpart ( getline)5��                         j                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a���     �                         if strpart ( getline())5��                         k                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 !        if strpart ( getline(''))5��                         l                     5�_�      
           	      !    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 "        if strpart ( getline('.'))5��       !                  o                     5�_�   	              
      )    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 *        if strpart ( getline('.'), 0, col)5��       )                  w                     5�_�   
                    *    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 ,        if strpart ( getline('.'), 0, col())5��       *                  x                     5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 .        if strpart ( getline('.'), 0, col(''))5��       +                  y                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 /        if strpart ( getline('.'), 0, col('.'))5��       .                  |                     5�_�                       2    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 2        if strpart ( getline('.'), 0, col('.')-1 )5��       2                  �                     5�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 4        if strpart ( getline('.'), 0, col('.')-1 ) =5��       4                  �                     5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 6        if strpart ( getline('.'), 0, col('.')-1 ) =``5��       4                 �                    5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 5        if strpart ( getline('.'), 0, col('.')-1 ) =~5��       5                  �                     5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 7        if strpart ( getline('.'), 0, col('.')-1 ) =~''5��       5                  �                     5�_�                       7    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 8        if strpart ( getline('.'), 0, col('.')-1 ) =~ ''5��       7                  �                     5�_�                       =    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 =        if strpart ( getline('.'), 0, col('.')-1 ) =~ '^\s*$'5��       =                 �              	       �                         �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a���     �                           return 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a���     �                           return ""5��                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��     �                           return "\<Tab>"5��                     
   �                     �                        �                    �                        �              	       �                         �                    �       
                 �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��&     �                           return 5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��-     �                           return ""5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��9     �                           return "<C-n>"5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��C     �                           return "\<C-n>"5��                     
   �                     �                        �                    �                        �              	       �                         �                     �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a��T     �                       end\if5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             a��{     �                  5��                          �                     �                        �                     �                         �                     �                        �                    �                                            �                     	                	       5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 "    inoremap <Tab> <C-R>=CleverTab5��       "                                       5�_�                        $    ����                                                                                                                                                                                                                                                                                                                                                             a���     �                 $    inoremap <Tab> <C-R>=CleverTab()5��       $                                       5�_�      !                  &    ����                                                                                                                                                                                                                                                                                                                                                             a��0    �               8inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"   <inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"   8snoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"   <snoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"5��                                �       �       5�_�       "           !      &    ����                                                                                                                                                                                                                                                                                                                                       ���       v        a���     �                     �               5��                                               �                                               �                                              �                                               �                                              �                         "                     �                                              �                                             5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��     �                     5��                                               5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��     �                    5��                                               5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��     �                   5��                                               5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��     �                  5��                                               5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��     �                  5��                                               �                                             �       	                 '                    �       %                  C                     �                          D                     �                         E                     �                          D                     5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��5     �               %function to simplify standard writing5��                               &       (       5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��>     �                  5��                          F                     �                         F                    5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��N     �                 function! Writer5��                         V                     5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��R     �                 function! Writer()5��                         X                     �                          Y                     5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��m     �                     5��                         \                     5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��~     �                 	         5��                        `                    �                        `                    �       %                ~                    �                         �                     �                        �                    �                        �                    �                         �                     �                         �                     �                        �                    �                        �                     �                         �                     �                        �                    �                        �                     �                         �                     �                        �                    �                        �                    �                        �                     �                         �                     �                        �                    �                                             �                                              �                                            �                        *                     �                         ,                     �                         +                    �                         +                    �                         +                    �                         +                    5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��'     �                 endfunction5��                         +                    �                         +                    �                         6                     �                          7                     �                        D                    5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��;     �                 com! WR call Writer5��                         J                     5�_�   .               /           ����                                                                                                                                                                                                                                                                                                                                       ���       v        a��A    �                 com! WR call Writer()5��                         L                     �                           M                     5��