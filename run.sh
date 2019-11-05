docker rm -f poc-python-cmpc
docker run --name poc-python-cmpc -itd -p 80:7000 tsoftglobal/cmpc:poc-python
docker logs -f poc-python-cmpc