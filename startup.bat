del /q bootstrap.jar
jar cvf0 bootstrap.jar -C out/production/mytomcat cn/myself/Bootstrap.class -C out/production/mytomcat cn/myself/classloader/CommonClassLoader.class
del /q lib/mytomcat.jar
cd out
cd production
cd mytomcat
jar cvf0 ../../../lib/mytomcat.jar *
cd ..
cd ..
cd ..
java -cp bootstrap.jar cn.myself.Bootstrap
pause