# provisioning

#### Aplicações em IaC para serem provisionadas quando necessário. 
Aqui temos vários arquivos `docker compose` que podem ser provisionados conforme a necessidade. Pense neles como um leque de serviços para serem hospedados no computador local ou na nuvem. No momento, estou hospedando (self hosting) essas aplicações em 3 sites distintos:
- 2 máquinas virtuais na OCI com IBM MQ, para comunicação entre si.
- uma máquina virtual com o leitor de textos Obsidian.

A hospedagem que utilizo é gratuita via DuckDNS. 

Repare que os provisionáveis mais recentes possuem a funcionalidade de agendamento de um job todos os dias pela manhã, que faz a validação se já é possível obter novos certificados SSL. Caso seja possível, o cronjob executa a obtenção de certificado e atualiza o proxy reverso para buscar esse certififcado.
