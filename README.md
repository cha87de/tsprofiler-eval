# Evaluating TSProfiler

[TSProfiler](https://github.com/cha87de/tsprofiler) produces statistical
profiles from time series stream data. This project evaluates the accuracy of
the resulting profiles, by calculating the *symmetric mean absolute percentage error* (SMAPE).

## Overview

This repo uses snapshots of the two TSProfiler binaries, a set of experiments
defined in [`experiments.csv`](./experiments.csv) and a "few" lines of bash. The
[`scenarios`](./scenarios) folder contains different csv files, used as example
time series data.

## Usage

```
docker run -d \
    --name eval \
    -v $(pwd)/results:/opt/app/results \
    -v $(pwd)/experiments:/opt/app/experiments \
    -v $(pwd)/experiments.csv:/opt/app/experiments.csv:ro \
    cha87de/tsprofiler-eval-smape:latest
```

or manually:

```
# 1. write experiment description from experiments.csv
./createExperiments

# 2. calculate experiments
./runExperiments

# 3. extract results (smape and duration)
./extractResults > ./results/summary.csv
```