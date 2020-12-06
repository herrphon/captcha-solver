import os

def install_tesseract_local():
	os.system('cat /etc/lsb-release')
	os.system('pwd')
	os.system('echo $HOME')
	# os.system('git clone https://github.com/tesseract-ocr/tesseract.git')
	os.system('ls -la tesseract && ls -la')
	#os.system('bash -c "cd tesseract && ./autogen.sh"')
	#./configure --prefix=$HOME/local/
	#make install
	os.system('make')
