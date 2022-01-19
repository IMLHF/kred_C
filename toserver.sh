# ./toserver.sh room@15123 pc_RealIRM_RelativeLossAFD500

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Need a destination."
  exit -1
fi
site=${1#*@}
user=${1%@*}
rm _data _log -rf
rm *__pycache__* -rf
rm */__pycache__* -rf
rm */*/__pycache__* -rf
# mv exp ../
# # scp -r -P 15044 ./* student@speaker.is99kdf.xyz:~/lhf/work/irm_test/extract_tfrecord
# scp -r -P 15043 ./* room@speaker.is99kdf.xyz:~/work/speech_en_test/c001_se

# mv ../exp ./

if [ "$site" == "bss13001" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13001' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
elif [ "$site" == "bss13002" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13002' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
elif [ "$site" == "bss13003" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13003' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
elif [ "$site" == "bss13004" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13004' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
elif [ "$site" == "bss13006" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13006' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
elif [ "$site" == "bss13007" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13007' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
elif [ "$site" == "bss13008" ]; then
  echo "To $user@$site:~/worklhf/other/chx/kred/$2"
  rsync -avh -e 'ssh -p 13008' --exclude-from='.gitignore' ./$2/* $user@10.221.224.210:/root/worklhf/other/chx/kred/$2
fi

# -a ：递归到目录，即复制所有文件和子目录。另外，打开归档模式和所有其他选项（相当于 -rlptgoD）
# -v ：详细输出
# -h ：常用单位显示文件大小
# -P ：显示单个文件传输百分比进度
# -e ssh ：使用 ssh 作为远程 shell，这样所有的东西都被加密
# --exclude='*.out' ：排除匹配模式的文件，例如 *.out 或 *.c 等。

# scp -r -P 15043 room@speaker.is99kdf.xyz:/home/room/work/paper_se_test/pc001_se/exp/rnn_speech_enhancement/nnet_C001/nnet_iter15* ./
# scp -P 15223 room@speaker.is99kdf.xyz:/fast/worklhf/paper_se_test/C_UNIGRU_RealPSM_RelativeLossAFD100/exp/rnn_speech_enhancement/nnet_C_UNIGRU_RealPSM_RelativeLossAFD100/nnet_iter25* ./

# rsync -avh -e "ssh -p 13001" root@10.221.224.210:/root/worklhf/TSSv3/exp/tss/enhanced_testsets/traing_test_tmp_epoch30 ./
# rsync -avh -e "ssh -p 13001" root@10.221.224.210:/root/worklhf/TSSv3/tensorboard_log ./
