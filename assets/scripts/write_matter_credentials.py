import sys, os
from py7zr import SevenZipFile
import binascii
import OpenSSL.crypto as openssl
import optigatrust as optiga

## Do not change as long Bundle-File Spec is v3.0
DAC_file="_keyOID=E0F0_DAC"
PAI_file="_keyOID=E0F0_PAI"

## If static, can be inserted here
CD_file=""

## Object IDs of Matter Credentials
DAC_OID=0xE0E0
PAI_OID=0xE0E8
CD_OID=0xF1E0


## Function to read Chip-UID from OPTIGA Trust M 
def get_chipID():
    uid_obj = optiga.Object(0xe0c2)
    # Get only needed part form the UID (batch number and the X,Y coordinates)
    # and convert it into an uppercase hex string
    return binascii.hexlify(uid_obj.read()[11:21]).decode('utf-8').upper()


if __name__ == '__main__':
    ## Check input params (CD Path)
    try:
        CD_file = str(sys.argv[1])
    except IndexError:
        print("No CD Path given. Will not write CD.")

    ## Bundle-File name will be automatically generated based on Chip-UID
    chipID = str(get_chipID())
    bundle_file_name = chipID + "_v3.0.7z"

    ## Check if matching Bundle File exists
    try: 
        archive = SevenZipFile(os.path.join(os.path.dirname(os.path.realpath(__file__)), bundle_file_name), 'r') 
        archive.extract("tmp", [chipID+DAC_file+'s.7z', chipID+PAI_file+'.7z'])
            
    except FileNotFoundError:
        raise FileNotFoundError("ERROR: Bundle File was not found!\nExpected Path Location: " + os.path.join(os.path.dirname(os.path.realpath(__file__)), bundle_file_name)) from None
    
    ## Extracting necessary files from ZIP
    ## If bundle file exists, DAC and PAI will exist as per spec. No need to check for exceptions again.
    with SevenZipFile(os.path.join("tmp", chipID+DAC_file+'s.7z'), 'r') as dac_archive:
        dac_archive.extractall("tmp")
    with SevenZipFile(os.path.join("tmp", chipID+PAI_file+'.7z'), 'r') as pai_archive:
        pai_archive.extractall("tmp")

    ## Parsing PEM to DER using OpenSSL Lib
    with open(os.path.join("tmp", chipID+DAC_file+'.pem'), 'rt') as dac_object:
        dac_cert_der = openssl.dump_certificate(openssl.FILETYPE_ASN1, openssl.load_certificate(openssl.FILETYPE_PEM, dac_object.read()))

    with open(os.path.join("tmp", "keyOID=E0F0_PAI.pem"), 'rt') as pai_object:
        pai_cert_der = openssl.dump_certificate(openssl.FILETYPE_ASN1, openssl.load_certificate(openssl.FILETYPE_PEM, pai_object.read()))

    ## Writing Objects to OPTIGA Trust M MTR
    print("Writing DAC...")
    optiga.Object(DAC_OID).write(dac_cert_der)
    print("Writing PAI...")
    optiga.Object(PAI_OID).write(pai_cert_der)

    if len(CD_file) > 0:
        print("Writing CD...")
        with open(CD_file, 'rb') as cd_object:
            optiga.Object(CD_OID).write(cd_object.read())

    print("****** Sucess! ******")
