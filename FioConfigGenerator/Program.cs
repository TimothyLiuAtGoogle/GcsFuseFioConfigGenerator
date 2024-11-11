using System.Text;
public class Program
{
    private static string[] headerLines = new string[]{
            "[global]",
            "# I/O Engine and Behavior:",
            "ioengine=libaio ;Uses the Linux native asynchronous I/O engine, libaio, for efficient I/O operations.",
            "direct=1 ;Bypass the operating system cache and read data directly from the storage device. This can provide a more realistic measurement of storage performance as it avoids any caching effects.",
            "fadvise_hint=0 ;Don't provide file access hints to the operating system.",
            "verify=0 ;Disable data verification. This can improve performance, but should be enabled if data integrity is critical.",
            ";rw=read ;Perform sequential read operations.",
            ";bs=1M ;Use a block size of 1MB for I/O operations.",
            "iodepth=64 ;Allow up to 64 outstanding I/O requests to be issued at the same time. This can improve I/O performance, especially when dealing with high-latency storage.",
            "invalidate=1 ;Invalidate the data in the cache before each read. This ensures that each read is from the storage device, not the cache.",
            "# Timing and Load:",
            "ramp_time=2m ;Gradually increase the I/O load over a period of 1 minute. This helps to avoid shocking the storage system at the start of the test.",
            "runtime=10m ;Run the test for 10 minutes. The `ramp_time` is included",
            ";startdelay=2m ;Wait for 2 minutes before starting the test. This can be used to stagger the start times of multiple Fio jobs, or to allow the storage device to warm up.",
            "time_based=1 ;Run the test based on time, rather than the number of I/O operations completed.",
            "# Files and Jobs:",
            "nrfiles=1 ;Use one file per job.",
            "thread=1 ;Use one thread per job.",
            "fsync=1 ;Perform an fsync() operation after every write, flushing data to the storage device.",
            "openfiles=1 ;Keep one file open per job.",
            "group_reporting=1 ;Aggregate the results of all jobs into a single report.",
            "allrandrepeat=1 ;Use the same random access pattern for all jobs.",
            "filename_format=$jobname.$jobnum.$filenum ;Defines the format used to generate filenames.",
        };

    public static void Main(string[] args)
    {
        int[] threadCounts = new int[] { 16, 48, 96 };
        string[] objectSizes = new string[] { "256K", "1M", "5M", "15M", "30M", "60M", "120M", "250M", "500M", "1G", "2G" };

        string fioReadConfigFile = "read.fio";
        string[] readModes = new string[] { "read", "randread" };
        GenerateShellCommands(threadCounts, objectSizes, readModes, fioReadConfigFile);

        string fioWriteConfigFile = "write.fio";
        string[] writeModes = new string[] { "write", "randwrite" };
        GenerateShellCommands(threadCounts, objectSizes, writeModes, fioWriteConfigFile);

        System.Console.WriteLine("Fio config file(s) generated.");
    }

    public static void GenerateSingleGroupConfigFile(string fioConfigFile)
    {
        string[] configurable = {
            "[job_001]",
            "bs=${BLOCK_SIZE}",
            "filesize=${FILE_SIZE}",
            "directory=./${FILE_SIZE}",
            "rw=${MODE}",
            "numjobs=${NUMJOBS}",
            "filename_format=${FILE_SIZE}_${MODE}.$jobnum.$filenum"
        };

        StringBuilder sb = new StringBuilder();
        foreach (var headLine in headerLines)
            sb.AppendLine(headLine);

        sb.AppendLine();

        foreach (var line in configurable)
            sb.AppendLine(line);

        if (File.Exists(fioConfigFile))
            File.Delete(fioConfigFile);
        File.WriteAllText(fioConfigFile, sb.ToString());
    }

    public static void GenerateShellCommands(int[] threadCounts, string[] objectSizes, string[] modes, string fioConfigFile)
    {
        GenerateSingleGroupConfigFile(fioConfigFile);
        foreach (var threadCount in threadCounts)
        {
            StringBuilder sb = new StringBuilder();
            foreach (var objectSize in objectSizes)
            {
                foreach (var mode in modes)
                {
                    string blockSize = "1M";
                    string sizeUnit = objectSize[objectSize.Length - 1].ToString();
                    if (sizeUnit == "k" || sizeUnit == "K")
                    {
                        blockSize = "16K";
                    }

                    string command = $"BLOCK_SIZE={blockSize} FILE_SIZE={objectSize} MODE={mode} NUMJOBS={threadCount} fio {fioConfigFile}";
                    sb.AppendLine(command);
                }
            }
            string outputFileName = $"{fioConfigFile.Split(".")[0]}_{threadCount}thread_{String.Join("_", objectSizes)}.sh";
            File.WriteAllText(outputFileName, sb.ToString());
        }
    }

    // public static void GenerateReadConfigFile(int[] threadCounts, string[] objectSizes)
    // {
    //     string[] readModes = new string[] { "read", "randread" };
    //     foreach (var threadCount in threadCounts)
    //     {
    //         StringBuilder sb = new StringBuilder();
    //         foreach (var headLine in headerLines)
    //         {
    //             sb.AppendLine(headLine);
    //         }

    //         sb.AppendLine(";============================\n");

    //         foreach (var objectSize in objectSizes)
    //         {
    //             foreach (var readMode in readModes)
    //             {
    //                 string jobName = $"{objectSize}_{readMode}";
    //                 sb.AppendLine($"[{jobName}]");
    //                 string sizeUnit = objectSize[objectSize.Length - 1].ToString();
    //                 if (sizeUnit == "k" || sizeUnit == "K")
    //                 {
    //                     sb.AppendLine($"bs=16k");
    //                 }
    //                 sb.AppendLine($"filesize={objectSize}");
    //                 sb.AppendLine($"directory=./{objectSize}");
    //                 sb.AppendLine($"rw={readMode}");
    //                 sb.AppendLine($"numjobs={threadCount}");
    //                 sb.AppendLine("stonewall\n");
    //             }
    //         }

    //         sb.AppendLine(";============================\n");

    //         string command = string.Join(" && ", objectSizes.Select(s => $"mkdir {s}"));
    //         sb.AppendLine($";{command}");

    //         string outputFileName = $"read_{threadCount}thread_{String.Join("_", objectSizes)}.fio";
    //         File.WriteAllText(outputFileName, sb.ToString());
    //     }
    // }
}