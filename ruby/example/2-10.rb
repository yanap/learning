#encoding: utf-8
array = ["a", "b", "c"]
p array.length #=> 3
p array.size #=> 3 (length��Ʊ����)
p array *= 2 #=> ["a", "b", "c", "a", "b", "c"]

p array.include? "c" #=> true ������ͤ�ޤफ�ɤ���
p array.sort #=> ["a", "a", "b", "b", "c", "c"] ��������������������֤�
p array #=> ["a", "b", "c", "a", "b", "c"] ����������Ѳ����Ƥ��ʤ�
p array.uniq #=> ["a", "b", "c"]
array.uniq! #���������Τ򹹿�����
p array #=> ["a", "b", "c"]
