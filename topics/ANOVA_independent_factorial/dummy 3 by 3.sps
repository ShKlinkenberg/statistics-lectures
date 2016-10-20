* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
IF  (speed <> 2) dummy_spe_beetje=0.
IF  (speed =  2) dummy_spe_beetje=1.
EXECUTE.

DATASET ACTIVATE DataSet1.
IF  (speed <> 3) dummy_spe_veel=0.
IF  (speed =  3) dummy_spe_veel=1.
EXECUTE.


DATASET ACTIVATE DataSet1.
IF  (alcohol <> 2) dummy_alc_beetje=0.
IF  (alcohol =  2) dummy_alc_beetje=1.
EXECUTE.

DATASET ACTIVATE DataSet1.
IF  (alcohol <> 3) dummy_alc_veel=0.
IF  (alcohol =  3) dummy_alc_veel=1.
EXECUTE.


DATASET ACTIVATE DataSet1.
COMPUTE int_spe_alc_beetje_beetje = dummy_spe_beetje*dummy_alc_beetje.
COMPUTE int_spe_alc_beetje_veel   = dummy_spe_beetje*dummy_alc_veel.
COMPUTE int_spe_alc_veel_beetje   = dummy_spe_veel*dummy_alc_beetje.
COMPUTE int_spe_alc_veel_veel     = dummy_spe_veel*dummy_alc_veel.
EXECUTE.
