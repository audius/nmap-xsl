# Convert nmap XML output to styled HTML

This script converts all nmap XML result files in the directory to HTML
files styled with [nmap-bootstrap-xsl](https://github.com/honze-net/nmap-bootstrap-xsl).

## Usage

```bash
$ nix-shell converter.nix
```

## Other ways to style the nmap XML outfile files

### Apply style directly to nmap scan

Add the `nmap-bootstrap.xsl` as stylesheet to your Nmap scan with the ``--stylesheet`` argument:

```bash
$ sudo nmap -A --stylesheet https://raw.githubusercontent.com/honze-net/nmap-bootstrap-xsl/master/nmap-bootstrap.xsl localhost
```

### For existing scan (with XML output)

You have thus to transform the XML to HTML with the following command :

```bash
$ xsltproc -o output.html nmap-bootstrap.xsl input.xml
```

## License

The code ìs license under MIT. [nmap-bootstrap-xsl](https://github.com/honze-net/nmap-bootstrap-xsl)
is licensed under Creative Commons BY-SA.
