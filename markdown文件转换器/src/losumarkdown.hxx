class losumarkdown {
public:
	losumarkdown(const string &filename)
	{
		_root = new Node(nul);
		_filename = filename;
	}
	~losumarkdown() {
		if (_root) {
			destory(_root);
		}
	}
	void transferm();
	void dfs(Node* root);//�﷨��ת����HTMLԴ����//������ȱ��� DFS
	const char* processStr(const char* str);//ȥ�����׿ո�
	void insert(Node* curNode, const char* str);//���ַ����ݲ���
	pair<int, const char*> parseType(const char* str);//���������﷨  ������:�﷨���� + ��Ӧ������ʼλ��
	bool isCutLine(const char* str);//�ж�ˮƽ�ָ��� "---"
	void html();
	void destory(Node* root);//����
private:
	Node* _root;//�﷨�����ڵ�
	string _filename;//�ļ���
	string _content;//���HTML�ĵ�����
};

