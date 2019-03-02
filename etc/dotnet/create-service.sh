# date: Fri, Feb  1, 2019 12:42:03 AM

mkdir $1
cd $1
# create I***Service.cs
touch "I"$1"Service.cs"
echo "namespace CTB.Service."$1" {
    public interface I"$1"Service : IService {

    }
}"> "I"$1"Service.cs"

touch $1"ServiceImpl.cs" 
echo "namespace CTB.Service."$1" {
    public class "$1"ServiceImpl : I"$1"Service {
        public void Dispose() { }
    }
}"> $1"ServiceImpl.cs" 

cd ..

echo -e "-> "$1
echo -e "\t-> ""I"$1"Service.cs"
echo -e "\t-> "$1"ServiceImpl.cs"
echo "complete."