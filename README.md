# GayaUKM

Latex template for UKM's thesis

## Setup
```
git clone git@github.com:UKM-HEP/GayaUKM.git
cd GayaUKM
```

## File Structure
| Folder/Files | Remarks |
|---|---|
| ```abstracts\```  | abstracts for theses  |
| ```docs\```  | documentation for the original UKM templates  |
| ```figures\```  | Figure files used for theses   |
| ```packages\``` | The GayaUKM package used for theses |
| ```supplements\``` | Supplement such as symbol, appendenx source files (and more!) for theses |
| ```theses\```      | Folder consists of source file for both english and bahasa version theses |
| ```Makefile```     | GNU makefile for compiling Latex and cleaning Latex metadata files |
| ```metaData.tex```  | Definition of the thesis's variable such as title, name, etc, to be shared between theses |

## How to use

After edition, go back to the base directory, and run ```make VER=english``` to produce ```thesis.pdf```; run ```make VER=bahasa``` to produce ```tesis.pdf```.

To clean metadata file produced by Latex compiler, run ```make clean```.

Please contact me if you have Latex related question, at ```shoh@ukm.edu.my```

Have fun!
