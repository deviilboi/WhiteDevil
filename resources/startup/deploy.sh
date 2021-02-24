# Ultroid - UserBot
# Copyright (C) 2020 TeamUltroid
#
# This file is a part of < https://github.com/deviilboi/WhiteDevil/ >
# PLease read the GNU Affero General Public License in
# <https://github.com/deviilboi/WhiteDevil,/blob/main/LICENSE/>.

echo "
	      ╔╦╦╦══╦═╦═╦══╦══╗
	      ║║║╠╗╔╣╬║║╠║║╩╗╗║
	      ║║║╚╣║║╗╣║╠║║╦╩╝║
	      ╚═╩═╩╝╚╩╩═╩══╩══╝

	    °•° Deployment Begins •°•
"
echo '
        •• Getting Packages and Installing
'

export DEBIAN_FRONTEND=noninteractive
export TZ=Asia/Kolkata
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

apt-get update
apt-get upgrade -y
apt-get install -y --no-install-recommends ffmpeg neofetch mediainfo megatools
apt-get autoremove --purge

echo '
        •• Cloning Repository
'
git clone https://github.com/deviilboi/WhiteDevil.git /root/deviilboi/

echo '
	•• Getting Libraries and Installing
'
pip install --upgrade pip setuptools wheel
pip install search-engine-parser==0.6.2
pip install -r /root/deviilboi/requirements.txt

echo "

			      ┏┳┓╋┏┓╋╋╋╋┏┓┏┓
			      ┃┃┣┓┃┗┳┳┳━╋╋┛┃
			      ┃┃┃┗┫┏┫┏┫╋┃┃╋┃
			      ┗━┻━┻━┻┛┗━┻┻━┛

			•°• Deployed Successfully °•°
		   •• Wait till python images are pushed
	   •• Give build logs in @WhiteDevil if build fails
"
