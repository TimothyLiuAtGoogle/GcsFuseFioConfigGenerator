fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=256K_read --filesize=256K --bs=16K --directory=./256K --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=256K_randread --filesize=256K --bs=16K --directory=./256K --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=1M_read --filesize=1M --bs=1M --directory=./1M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=1M_randread --filesize=1M --bs=1M --directory=./1M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=5M_read --filesize=5M --bs=1M --directory=./5M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=5M_randread --filesize=5M --bs=1M --directory=./5M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=15M_read --filesize=15M --bs=1M --directory=./15M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=15M_randread --filesize=15M --bs=1M --directory=./15M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=30M_read --filesize=30M --bs=1M --directory=./30M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=30M_randread --filesize=30M --bs=1M --directory=./30M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=60M_read --filesize=60M --bs=1M --directory=./60M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=60M_randread --filesize=60M --bs=1M --directory=./60M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=120M_read --filesize=120M --bs=1M --directory=./120M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=120M_randread --filesize=120M --bs=1M --directory=./120M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=250M_read --filesize=250M --bs=1M --directory=./250M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=250M_randread --filesize=250M --bs=1M --directory=./250M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=500M_read --filesize=500M --bs=1M --directory=./500M --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=500M_randread --filesize=500M --bs=1M --directory=./500M --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=1G_read --filesize=1G --bs=1M --directory=./1G --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=1G_randread --filesize=1G --bs=1M --directory=./1G --rw=randread --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=2G_read --filesize=2G --bs=1M --directory=./2G --rw=read --numjobs=96
fio --ioengine=libaio --direct=1 --fadvise_hint=0 --verify=0 --rw=read --iodepth=64 --invalidate=1 \
  --ramp_time=2m --runtime=10m --time_based=1 --nrfiles=1 --thread=1 --fsync=1 --openfiles=1\
  --group_reporting=1 --allrandrepeat=1 --filename_format=$jobname.$jobnum.$filenum \
  --name=2G_randread --filesize=2G --bs=1M --directory=./2G --rw=randread --numjobs=96
;mkdir 256K && mkdir 1M && mkdir 5M && mkdir 15M && mkdir 30M && mkdir 60M && mkdir 120M && mkdir 250M && mkdir 500M && mkdir 1G && mkdir 2G
