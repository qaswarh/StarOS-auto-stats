USERNAME=admin
HOSTS="StarOS IP"
TS=`date +"%Y%m%d-%H%M.txt"`
CMD1="show cpu table"
CMD2="show gtpu statistics"
CMD3="show session disconnect-reasons"
CMD4="show session setuptime"
CMD5="show session duration"
CMD6="show epdg-service statistics"
CMD7="show task resources card 3"
CMD8="show task resources card 4"
CMD9="show task resources card 5"
CMD10="show task resources card 6"
CMD11="show task resources card 7"
CMD12="show session duration qci 1"
CMD13="show session duration qci 5"
CMD14="show session recovery status verbose"
CMD15="show crypto statistics"
CMD16="show ipsecdemux statistics"
for i in {1..600}; do
	for HOSTNAME in ${HOSTS}; do
		echo $(date) >> "cpu-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD1 >> "cpu-"$TS
		echo $(date) >> "imsbytes-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD2|grep Bytes >> "imsbytes-"$TS
		echo $(date) >> "discreas-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD3 >> "discreas-"$TS
		echo $(date) >> "setup-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD4 >> "setup-"$TS
		echo $(date) >> "duration-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD5|grep -v 0 >> "duration-"$TS
		echo $(date) >> "epdgservice-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD6 >> "epdgservice-"$TS
		echo $(date) >> "resources-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD7|grep Total >> "resources-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD8|grep Total >> "resources-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD9|grep Total >> "resources-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD10|grep Total >> "resources-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD11|grep Total >> "resources-"$TS
		echo $(date) >> "qcitime-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD12 >> "qcitime-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD13 >> "qcitime-"$TS
		echo $(date) >> "recovery-"$TS
        	sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD14 >> "recovery-"$TS
		echo $(date) >> "crypto-"$TS
			sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD15 >> "crypto-"$TS
		echo $(date) >> "ipsecdemux-"$TS
			sshpass -p " adminpassword"  ssh -o StrictHostKeyChecking=no ${USERNAME}@${HOSTNAME} $CMD16 >> "ipsecdemux-"$TS 
		sleep 120
	done 
done
