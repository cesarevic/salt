docker-composer:
  cmd.run:
    - name: 'apt install docker-compose -y'

mypack:
  pkg:
    - installed
    - pkgs:
      - git
      - docker
      - docker-compose
  cmd.run:
    - name: 'mkdir /dockerapps && cd /dockerapps && git clone https://github.com/cesarevic/salt_docker.git'


runapp:
  cmd.run:
    - name: 'cd /dockerapps/salt_docker && docker-compose up -d'
