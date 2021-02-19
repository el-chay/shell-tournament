## Parted

### Warning: The resulting partition is not properly aligned for best performance.

* Tue Jul 18 17:19:54 EDT 2017
* Source: [HP doc](http://h20564.www2.hpe.com/hpsc/doc/public/display?docId=emr_na-c03479326&DocLang=en&docLocale=en_US&jumpid=reg_r11944_uken_c-001_title_r0001)
* Commands to remember:
``` shell
DISK=sdc
printf "Optimal io size:%d\nMinimum io size:%d\nPhysical block size:%d\nAlignment offset:%d\n" \
$(cat /sys/block/$DISK/queue/{optimal_io_size,minimum_io_size,physical_block_size} \
      /sys/block/$DISK/alignment_offset)
```
* For the tipical USB drive:
  ``` shell
  Optimal io size:0
  Minimum io size:512
  Physical block size:512
  Alignment offset:0
  ```
