## Input and output parameters
INPUTDIR = os.environ.get("INPUTDIR")
OUTPUTDIR = os.environ.get("OUTPUTDIR")
TMPDIR = os.environ.get("TMPDIR", "/tmp")
SAMPLE = os.environ.get("SAMPLE")
SRCDIR = os.environ.get("SRCDIR", "src")
CONFIG = os.environ.get("CONFIG", "./conf/config_normalNode.json")
DBPATH = os.environ.get("DBPATH", "/mnt/nfs/projects/ecosystem_biology/local_tools/IMP/dependencies/prokka/db")

configfile: CONFIG

MEMCORE = os.environ.get("MEMCORE", config['memory_per_core_gb'])
THREADS = os.environ.get("THREADS", config['threads'])
MEMTOTAL = os.environ.get("MEMTOTAL", config['memory_total_gb'])

workdir:
    OUTPUTDIR

include:
    "workflows/Binning"

#include:
#    "workflows/Remapping"
#
#include:
#    "workflows/TimeSeries"
#
#include:
#    "workflows/Refinement_Bins"

# master command
rule ALL:
    input:
        "binning.done"
	#"remapping.done"
    output:
        touch('workflow.done')
