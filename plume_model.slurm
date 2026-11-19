#!/bin/bash
#SBATCH --account=rudolphgrp          # SLURM account to use
#SBATCH --partition=high             # Partition to submit the job
#SBATCH --time=48:00:00              # Max execution time (24 hours)
#SBATCH --nodes=1                    # Number of nodes
#SBATCH --ntasks=1
#SBATCH --mem=32G                    # amount of memory needed so it can use our nodes
#SBATCH --job-name=plume-melt      # Job name

#set -x # Enable debug mode (prints commands before executing)
module load julia
which python3
which julia
srun julia --threads 32 -- PlumeModel_lower_eta.jl 150000.8 450.0 120000.23 0.15 2.4e8
#julia InstallDependencies.jl
