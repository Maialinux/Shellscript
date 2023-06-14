# No arquivo control, estao as informacoes do pacote que permanecerao dentro do pacote .deb. 

Criei os scripts preinst e postinst vazios apenas com comentarios relevantes pra voces.

Estrutura do pacote debian:

->NomeDoPacote
->->DEBIAN
	control
	preinst(opcional mas recomendo)
	postinst(opcional mas recomendo)
->->PASTA Diretorio do programa
	usr/bin/executavel
->->PASTA Diretorio onde ficara a imagem icone do programa. Exemplo: usr/share/pixmaps/icones.png
	usr/share/pixmaps/icones.png
->->PASTA Diretorio da entrada do arquivo .desktop com o arquivo pronto ja dentro. Exemplo: usr/share/applications/executavel.desktop
	usr/share/applications/executavel.desktop


Para empacotar em arquivo .deb, é preciso ter permissões níveis 755 nos arquivos de "preinst", 
"postinst", e em executáveis do seu programa também. Após isso, como root execute o seguinte comando:

dpkg -b NomeDoPacote/

Resultado: NomeDoPacote.deb


Formas de instalar o pacote:

Arquivo Sem Dependência: dpkg -i NomeDoPacote.deb

Arquivo Com Dependência: apt install ./NomeDoPacote.deb
