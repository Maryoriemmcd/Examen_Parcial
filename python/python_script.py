import os
## dataset ##
location = 'C:/Users/LENOVO/Documents/Proyecto_Parcial/Python/dataset'
### validar si existe ruta###
if not os.path.exists(location):
#la crea#
   os.mkdir(location)
else: ##si existe, entonces validar q este vacio##
##borrar contenido##
    for root, dirs, files in os.walk(location, topdown=False):
        for name in files:
            os.remove(os.path.join(root,name))#eliminar archivos
        for name in dirs:
            os.rmdir(os.path.join(root,name))# eliminar carpetas
    ## importar libreria kaggle ##
from kaggle.api.kaggle_api_extended import KaggleApi
    ##autentificar##
api = KaggleApi()
api.authenticate()
    ##descargar dataset#
#print(api.dataset_list(search=''))

#api.dataset_download_file('rahulvyasm/netflix-movies-and-tv-shows','netflix_titles.csv', path=location, force=True, quiet=False)
api.dataset_download_files('rahulvyasm/netflix-movies-and-tv-shows', path=location, force=True, quiet=False,unzip=True)







    
    

    



