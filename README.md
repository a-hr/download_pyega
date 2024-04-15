# How to download datasets from pyEGA

- [How to download datasets from pyEGA](#how-to-download-datasets-from-pyega)
  - [Requirements](#requirements)
  - [Downloading datasets](#downloading-datasets)

## Requirements

In order to download datasets from pyEGA, several requirements must be met:

1. Access granted to the dataset.
2. A valid EGA account. (username and password)

The EGA account credentials must be inserted in the `credentials.json` file:
    
    ```json
    {
        "username": "your_username",
        "password": "your_password"
    }
    ```

3. A `pyega3` client installed.

    ```bash
    # with pip
    pip install pyega3

    # with conda
    conda install -c bioconda pyega3
    ```

4. The dataset accession number. This can be found in the EGA dataset page.

## Downloading datasets

Once the requirements are met, the datasets can be downloaded using the `download.sh` script. Ideally, this would be run as a SLURM job, but due to the amount of data to be downloaded, this must be run in the `/dipc/` partition.

In order to run the script, fill in the requested information (credentials' file path, dataset accession number) and run the following command:

```bash
nohup bash download.sh &
```

The script will download the dataset to the `/dipc/` partition, in the current working directory. 

To check the download progress, run the following command:

```bash
tail -f nohup.out
```
