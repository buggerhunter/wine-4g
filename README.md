# wine-4g
wine-4g aka "wine for games" is a special wine version with special patches and configurations that let you run many games.  
wine-4g is based on [wine-tkg](https://github.com/Frogging-Family/wine-tkg-git) and [wine-docker-builder](https://github.com/codehungers/wine-docker-builder).

# Building
The build process is based completely on "wine-docker-builder" so it is recommended to read the [readme](https://github.com/codehungers/wine-docker-builder#readme).

## Preparing the container
1. `./prepare.sh` - this script cloning [wine-docker-builder](https://github.com/codehungers/wine-docker-builder) project and hard link the wine-4g configuration files and patches into it so you can use them in the build process.
2. `cd wine-docker-builder` - get inside wine-docker-builder folder.
3. `./build-container.sh` - building the docker container(it can take time on the first run).
4. `./run-container.sh` - get inside the container.
## Compiling
now you are inside the docker container use one of the following commands to compile:
- `wine-tkg-build wine-4g.cfg` - for building wine-4g
- `proton-tkg-build proton-4g.cfg` - for building proton-4g
- `wine-tkg-build wine-sow.cfg` - for building wine-4g for Shadow Of War game

The compilation results are inside "wine-docker-builder/outputs" folder.
# FAQ
## Compilation failed on applying patches
if the compilation failed on applying patches you need to wait until [wine-tkg](https://github.com/Frogging-Family/wine-tkg-git) will fix the patches or try to build older version.