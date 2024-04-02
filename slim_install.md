# slim install notes

JPJ 4/2/24


## slim installation

[SLiM website](https://messerlab.org/slim/)

[Software needed for online workshop](http://benhaller.com/workshops/workshops_setup.html)


Will install this on beartooth in project/evolgen/bin/

Following instructions in SLiM manual

```{bash}
module load arcc/1.0 gcc/12.2.0 cmake/3.27.9
mkdir build
cd build
cmake ../slim
make slim
mv slim ..
```

Test if installation was successful:

```{bash}
./slim -testEidos
./slim -testSLiM
```

NOTE: deleted build/ after installation


