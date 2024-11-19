# linuxScripts

Alguns Scripts para automatizar tarefas rotineiras do desenvolvimento de software.

Para configurar todo o ambiente, basta fazer os seguintes passos:

```bash
git clone https://github.com/guiaf04/linuxScripts

cd linuxScripts

chmod +x envConfig.sh

./envConfig.sh
```
Esses passos vão baixar o repositório e executar o script de configuração de ambiente, que colocará os scripts no /usr/local/bin/ e disponibilizará alias para executá-los em qualquer pasta do terminal. Seno assim, os alias serão os seguintes:


* `aczginitrepo`

    Inicia um repositório git com o nome e diretório passados, cria um README e executa um commit inicial

* `aczginit`

    Inicia uma branch de feature

* `aczgfinish`

    Recebe o nome da feature, faz o merge na main e elimina essa branch

* `aczgpipeline`

    Faz um pipeline de CI que executa os testes unitários de um repositório gradle periodicamente, armazena em um log e realiza commits diárias, podendo o período de ambas as tasks serem configurados

* `aczgpipelineLog`

    Mostra no terminal o log gerado pelos testes unitários do pipeline de CI do script anterior

---

Os demais scripts servem para a criação de cron tabs para execução das tarefas de pipiline CI periodicamente.