if [ $# -ne 1 ] 
then
    echo "Usage: $0 <caminho_completo>"
    exit 1
fi

if [ ! -e $1]
then 
    echo Diretorio nao existente
    exit 1
fi

cd $1

if [ ! -e logUnitTest.txt]
then 
    echo "Arquivo de log nao encontrado, certifique-se de rodar aczgpipeline antes"
    exit 1
fi

cat logUnitTest.txt