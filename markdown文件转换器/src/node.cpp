struct Node {
	//�﷨����
	int _type;
	//���ӽڵ�
	vector<Node*> _child;
	//����
	//elem[0]:������Ҫ��ʾ������
	//elem[1]:������ַ/·��
	string elem[2];

	Node(int type)
	{
		_type = type;//��ֵ
	}
};
