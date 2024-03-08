handle SIGUSR1 noprint nostop

python
import sys
# ClickHouse-pretty-printer-dir is the directory of this repo
# libcxx
sys.path.insert(0, '/home/vscode/ClickHouse-pretty-printer')
from libcxx.v1.printers import register_libcxx_printers
register_libcxx_printers(None)


# clickhouse pretty printer
#sys.path.insert(0, '{ClickHouse-pretty-printer-dir}/clickhouse')
sys.path.insert(0, '/home/vscode/ClickHouse-pretty-printer/clickhouse')
from printers import register_ch_printers
register_ch_printers()

# boost
#sys.path.insert(0, '{ClickHouse-pretty-printer-dir}/boost/share/boost-gdb-printers')
sys.path.insert(0, '/home/vscode/ClickHouse-pretty-printer/boost/share/boost-gdb-printers')
import boost.v1_73 as boost
boost.register_printers(boost_version=(1,71,0))


## libstdcpp
#sys.path.insert(0, '/home/vscode/ClickHouse-pretty-printer')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end