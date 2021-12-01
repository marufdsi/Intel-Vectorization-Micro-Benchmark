#!/bin/bash


#SBATCH --job-name=skl # Job name
#SBATCH --partition=Orion
# Number of MPI tasks
#SBATCH --nodes=1                   # Run all processes on a single node	
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --ntasks-per-node=1       # maximum task per node	
#SBATCH --cpus-per-task=36	# Number of CPU cores per task
#SBATCH --constraint=skylake    # for Skylake Processor
#SBATCH --mem=300gb                  # Total memory limit
#SBATCH --time=30:00:00              # Time limit hrs:min:sec
#SBATCH --output=skylake_%j.log     # Standard output and error log


rm init_log_file_${1}.csv

./TestIntrinsic $1
