# Get-AllFileHashes.ps1

This repository contains a PowerShell script that allows you to calculate and display the hashes of a file using multiple hash algorithms (SHA1, SHA256, SHA384, SHA512, and MD5).

## Functionality

The `Get-AllFileHashes.ps1` script takes a file path as an argument and calculates the file's hashes using the specified algorithms. The script generates a formatted table with the following columns:

-   **Algorithm**: The name of the hash algorithm used.
-   **Hash**: The generated hash value.
-   **Path**: The full path of the analyzed file.

If the file argument is not provided, the script will display a message informing how to use it.

## How to Use

1.  Clone the repository or download the `Get-AllFileHashes.ps1` script.
2.  Open PowerShell and run the script with the desired file path as an argument:

    ```powershell
    .\Get-AllFileHashes.ps1 <file_path>
    ```

    Example of usage:

    ```powershell
    .\Get-AllFileHashes.ps1 C:\Users\Example\document.txt
    ```

## Dependencies

- The script uses the `Get-FileHash` cmdlet, which is natively available in modern versions of PowerShell.
