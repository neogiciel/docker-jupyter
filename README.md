## <h1>Docker Jupyter</h1>
***

<table><tr>
  <td><img src="https://upload.wikimedia.org/wikipedia/commons/1/1e/Docker_Logo.png" alt="drawing" height="240px"/></td>
</tr></table>

## Informations Générales
***
Creation d'un image Docker basée sur l'image pyspark-notebook
Cette image intégre un connecteur mysql permettant l'enregistrement via pyspark

## Technologies
***
Technologies utilisées:
* Docker
* Mysql
* Spark
* Python<br>
librairies:
setuptools,mysql-connector-python,numpy,scipy,scikit-learn,pandas,psycopg2,ipython-sql,sqlalchemy

## Instalation
***
Création de l image<br>
```
$ docker build -t neogicel/neogiciel-jupyter .
$ docker tag neogicel/neogiciel-jupyter neogicel/neogiciel-jupyter:2.08
$ docker push neogicel/neogiciel-jupyter:2.08
```

Jupyter:
Le service est accessible sur http://jupyter.neogiciel.net




