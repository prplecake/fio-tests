# fio-tests

These are some tests I've written myself or found elsewhere. This
repository includes a wrapper script for fio. The script will run fio
and write the results to a file in the format of
`{YYYYMMDD}_{hostname}_{job_name}.log` If the logfile exists, the script
will begin appending incrementing numbers to the end.

## Usage

You can either use fio directly from the CLI:

```
$ sudo fio random-read-test.fio
```

Or, use the wrapper script:

```
$ sudo ./run_job.sh random-read-test.fio
```

## Resources

- https://www.linux.com/tutorials/inspecting-disk-io-performance-fio/
- https://github.com/axboe/fio/blob/master/HOWTO

