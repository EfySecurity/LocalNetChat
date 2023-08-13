# LocalNetChat

O LocalNetChat é um chat de rede local simples, criado em Bash e Netcat, que permite a troca de mensagens entre usuários na mesma rede local. Ideal para comunicação rápida e eficiente entre dispositivos conectados à mesma rede.

## Recursos

- Comunicação em tempo real: Troque mensagens instantâneas entre dispositivos na rede local.
- Nome de usuário personalizado: Escolha um nome de usuário para ser identificado no chat.
- Distribuição de mensagens: As mensagens enviadas por um usuário são distribuídas para todos os outros usuários conectados.
- Fácil de usar: Inicie o servidor e execute o cliente em poucos passos.

## Requisitos

- Netcat (`nc`): Verifique se o Netcat está instalado em seu sistema. Se não estiver presente, instale-o usando o gerenciador de pacotes da sua distribuição.
- Antes de mais nada use o script install_netcat.sh para ter certeza que tudo esta nos conformes

``chmod +x install_netcat.sh``

``./install_netcat.sh``

## Instalação

1. Clone ou baixe este repositório para a máquina que deseja usar como servidor.

``git clone https://github.com/EfySecurity/LocalNetChat``

2. Navegue até o diretório onde o repositório foi clonado ou baixado.

``cd LocalNetChat``

3. Execute o servidor:

``chmod +x servidor.sh``

``./servidor.sh``

## Uso

Abra um terminal em outra máquina na mesma rede local.

Navegue até o diretório onde o repositório foi clonado ou baixado.

Execute o cliente:

``chmod +x cliente.sh``

``./cliente.sh``

Quando solicitado, insira um nome de usuário para identificação no chat.

Digite mensagens no cliente para enviá-las para o servidor. As mensagens serão distribuídas para todos os outros clientes conectados.

Para sair do chat, digite "exit" no cliente.

## Aviso
Este projeto é um exemplo de chat de rede local simples e não oferece recursos avançados de segurança. Use-o apenas em uma rede local confiável. Não é recomendado para uso em redes não confiáveis ou pela Internet.

## Contribuição
Sinta-se à vontade para melhorar este projeto! Se você tem sugestões para adicionar recursos ou melhorar a segurança, fique à vontade para criar um fork deste repositório, implementar as mudanças e enviar um pull request.

## Licença
Este projeto é licenciado sob a Licença Pública Geral GNU (GNU GPL) versão 3.0. Consulte o arquivo LICENSE para obter mais detalhes.
