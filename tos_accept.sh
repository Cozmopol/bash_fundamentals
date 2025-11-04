source ~/miniconda3/etc/profile.d/conda.sh

echo "Accepting the TOS for the following packages"

envs=$(conda env list | awk '{print $1}' | grep -v "^#" | grep -v "base" | grep -v "^$") #you can change and also accept TOS of base env

for env in $envs; do
	conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main                                                                                                                      
	conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r 
done

echo "All done."
