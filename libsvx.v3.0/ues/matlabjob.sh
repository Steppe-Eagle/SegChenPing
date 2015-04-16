#!/bin/sh

JOB_NUM=14
JOB_PARALLEL=5
JOB_MEM=20GB

qsub -cwd -t 1-${JOB_NUM} -tc ${JOB_PARALLEL} -l mem_free=${JOB_MEM} -m ea -o ./log.out -e ./log.err matlab -nodisplay -nosplash -r "run(${JOB_NUM})"

exit 0;
