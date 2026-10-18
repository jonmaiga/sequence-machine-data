import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A009800: Expansion of tanh(sin(x)*x).

The programs for A009800, there is no canonical definition to state claims against.
-/

/-! ## A009800.P1341336837148780895

`2*A024243(n)`
-/

namespace A009800.P1341336837148780895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024243 n

end

end A009800.P1341336837148780895

/-! ## A009800.P401999898855778672

`A024243(n)+A024243(A118759(n))`
-/

namespace A009800.P401999898855778672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024243 n + A024243 (A118759 n).toNat

end

end A009800.P401999898855778672

/-! ## A009800.P8685437265580260044

`A024243(n)+A024243(n)+A000007(A072501(n+1))`
-/

namespace A009800.P8685437265580260044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024243 n + (A024243 n + A000007 (A072501 (n + 1)).toNat)

end

end A009800.P8685437265580260044

/-! ## A009800.P16752055438464265051

`A000007(A132743(n+1))+A024243(n)+A024243(n)`
-/

namespace A009800.P16752055438464265051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A132743 (n + 1)).toNat + (A024243 n + A024243 n)

end

end A009800.P16752055438464265051

/-! ## A009800.P9114214017779345486

`A024243(n)+A024243(A351870(n))`
-/

namespace A009800.P9114214017779345486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024243 n + A024243 (A351870 n).toNat

end

end A009800.P9114214017779345486

/-!
# A009801: E.g.f. tanh(sin(x)*sin(x)) (even powers only).

The programs for A009801, there is no canonical definition to state claims against.
-/

/-! ## A009801.P4355690942467635522

`2*A024262(n)`
-/

namespace A009801.P4355690942467635522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024262 n

end

end A009801.P4355690942467635522

/-! ## A009801.P8712590190289500144

`A024262(A323048(n+1))+A024262(n)`
-/

namespace A009801.P8712590190289500144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024262 (A323048 (n + 1)).toNat + A024262 n

end

end A009801.P8712590190289500144

/-! ## A009801.P11872232178112033315

`A024262(A004907(n+1))+A024262(n)`
-/

namespace A009801.P11872232178112033315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024262 (A004907 (n + 1)).toNat + A024262 n

end

end A009801.P11872232178112033315

/-! ## A009801.P12833192262903318847

`A024262(A002998(n))+A024262(n)`
-/

namespace A009801.P12833192262903318847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024262 (A002998 n).toNat + A024262 n

end

end A009801.P12833192262903318847

/-! ## A009801.P18409032378839245741

`A024262(n)+A024262(A024662(n))`
-/

namespace A009801.P18409032378839245741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024262 n + A024262 (A024662 n).toNat

end

end A009801.P18409032378839245741

/-!
# A009804: Expansion of tanh(sinh(x)*exp(x)).

The programs for A009804, there is no canonical definition to state claims against.
-/

/-! ## A009804.P12514904791083205836

`A000196(A084076(n))-A005651(n)`
-/

namespace A009804.P12514904791083205836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084076 n).toNat - A005651 n

end

end A009804.P12514904791083205836

/-! ## A009804.P7998918355071543623

`A087061(A057088(n))-A001764(n)`
-/

namespace A009804.P7998918355071543623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A057088 n).toNat - A001764 n

end

end A009804.P7998918355071543623

/-!
# A009805: Expansion of e.g.f. tanh(sinh(x)*sin(x))/2 in odd powers of x^2.

The programs for A009805, there is no canonical definition to state claims against.
-/

/-! ## A009805.P15700843202420823503

`A012529(n)/2`
-/

namespace A009805.P15700843202420823503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012529 n : ℚ) / 2

end

end A009805.P15700843202420823503

/-!
# A009809: Expansion of tanh(tan(x))*cos(x).

The programs for A009809, there is no canonical definition to state claims against.
-/

/-! ## A009809.P7617488051802206779

`(-1)^n*A009716(A005408(n))`
-/

namespace A009809.P7617488051802206779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009716 (A005408 n).toNat

end

end A009809.P7617488051802206779

/-! ## A009809.P8894701308747741197

`A009716(2*n+1)*A033999(n)`
-/

namespace A009809.P8894701308747741197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009716 (2 * n + 1) * A033999 n

end

end A009809.P8894701308747741197

/-! ## A009809.P8736005104254614122

`xor(n-A004442(n+1), A009716(2*n+1))`
-/

namespace A009809.P8736005104254614122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A004442 (n + 1)) (A009716 (2 * n + 1))

end

end A009809.P8736005104254614122

/-!
# A009810: Expansion of e.g.f.: tanh(tan(x))*exp(x).

The programs for A009810, there is no canonical definition to state claims against.
-/

/-! ## A009810.P2322910787831462945

`A009260(A087051(n))-1+n`
-/

namespace A009810.P2322910787831462945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 (A087051 n).toNat - 1 + (n : ℤ)

end

end A009810.P2322910787831462945

/-! ## A009810.P11833210149999403714

`A009260(n)-A024000(A087051(n))`
-/

namespace A009810.P11833210149999403714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 n - A024000 (A087051 n).toNat

end

end A009810.P11833210149999403714

/-! ## A009810.P14962030953449699098

`A024000(A012231(n))+n`
-/

namespace A009810.P14962030953449699098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A012231 n).toNat + (n : ℤ)

end

end A009810.P14962030953449699098

/-! ## A009810.P5037613869199288939

`A009260(A024656(n))-1+n`
-/

namespace A009810.P5037613869199288939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 (A024656 n).toNat - 1 + (n : ℤ)

end

end A009810.P5037613869199288939

/-! ## A009810.P6450344373137820029

`n-A097141(A012231(n)+1)`
-/

namespace A009810.P6450344373137820029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A097141 (A012231 n + 1).toNat

end

end A009810.P6450344373137820029

/-!
# A009811: Expansion of tanh(tan(x))*sin(x).

The programs for A009811, there is no canonical definition to state claims against.
-/

/-! ## A009811.P10029761234461521658

`2*A024231(n)`
-/

namespace A009811.P10029761234461521658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024231 n

end

end A009811.P10029761234461521658

/-! ## A009811.P4851125899571695981

`A009716(2*n)*A033999(n+1)`
-/

namespace A009811.P4851125899571695981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009716 (2 * n) * A033999 (n + 1)

end

end A009811.P4851125899571695981

/-! ## A009811.P8740306206763922866

`A024231(A004918(n+1))+A024231(n)`
-/

namespace A009811.P8740306206763922866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024231 (A004918 (n + 1)).toNat + A024231 n

end

end A009811.P8740306206763922866

/-! ## A009811.P13149064278999958558

`A024231(n)+A024231(A049872(n))`
-/

namespace A009811.P13149064278999958558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024231 n + A024231 (A049872 n).toNat

end

end A009811.P13149064278999958558

/-! ## A009811.P10732456566039931368

`A024231(n)+A024231(A062399(n))`
-/

namespace A009811.P10732456566039931368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024231 n + A024231 (A062399 n).toNat

end

end A009811.P10732456566039931368

/-!
# A009812: Expansion of tanh(tan(x))*tan(x).

The programs for A009812, there is no canonical definition to state claims against.
-/

/-! ## A009812.P15701294624246406525

`2*A024249(n)`
-/

namespace A009812.P15701294624246406525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024249 n

end

end A009812.P15701294624246406525

/-! ## A009812.P11071076073927372401

`A024249(n)+A024249(A118759(n))`
-/

namespace A009812.P11071076073927372401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024249 n + A024249 (A118759 n).toNat

end

end A009812.P11071076073927372401

/-! ## A009812.P7391361070734055970

`A024249(n)+A024249(A055645(n))`
-/

namespace A009812.P7391361070734055970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024249 n + A024249 (A055645 n).toNat

end

end A009812.P7391361070734055970

/-! ## A009812.P14132347054514580543

`A024249(A004863(n+1))+A024249(n)`
-/

namespace A009812.P14132347054514580543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024249 (A004863 (n + 1)).toNat + A024249 n

end

end A009812.P14132347054514580543

/-! ## A009812.P11267616263576083971

`A024249(n)+A024249(A062279(n))`
-/

namespace A009812.P11267616263576083971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024249 n + A024249 (A062279 n).toNat

end

end A009812.P11267616263576083971

/-!
# A009813: Expansion of tanh(tan(x))/cos(x).

The programs for A009813, there is no canonical definition to state claims against.
-/

/-! ## A009813.P16716229025309090678

`A363158(lcm(2, A024396(n+1)))`
-/

namespace A009813.P16716229025309090678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363158 (Int.lcm 2 (A024396 (n + 1)))

end

end A009813.P16716229025309090678

/-!
# A009814: Expansion of tanh(tan(x)*exp(x)).

The programs for A009814, there is no canonical definition to state claims against.
-/

/-! ## A009814.P13402303037368128737

`or(n, n-A057360(A210426(n+1)))`
-/

namespace A009814.P13402303037368128737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A057360 (A210426 (n + 1)).toNat)

end

end A009814.P13402303037368128737

/-! ## A009814.P72642315225119249

`A001222(A000400(n))-A012416(n)`
-/

namespace A009814.P72642315225119249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000400 n).toNat - A012416 n

end

end A009814.P72642315225119249

/-! ## A009814.P4969465193893183844

`A329405(n+1)+A001478(A012416(n)+1)`
-/

namespace A009814.P4969465193893183844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329405 (n + 1) + A001478 (A012416 n + 1).toNat

end

end A009814.P4969465193893183844

/-!
# A009815: tanh(tan(x)*sin(x))=2/2!*x^2+4/4!*x^4-178/6!*x^6-5336/8!*x^8...

The programs for A009815, there is no canonical definition to state claims against.
-/

/-! ## A009815.P15829399439065237260

`2*A024239(n)`
-/

namespace A009815.P15829399439065237260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024239 n

end

end A009815.P15829399439065237260

/-! ## A009815.P9152872139478030681

`A024239(n)+A024239(A254109(n))`
-/

namespace A009815.P9152872139478030681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024239 n + A024239 (A254109 n).toNat

end

end A009815.P9152872139478030681

/-! ## A009815.P6613525416252459892

`A024239(n)+A024239(n)^A000041(C(2, n+2))`
-/

namespace A009815.P6613525416252459892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024239 n : ℚ) + (A024239 n : ℚ) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A009815.P6613525416252459892

/-! ## A009815.P10652799166298204384

`A024239(n)+A024239(A062279(n))`
-/

namespace A009815.P10652799166298204384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024239 n + A024239 (A062279 n).toNat

end

end A009815.P10652799166298204384

/-!
# A009816: tanh(sinh(x)*tan(x)) = 2/2!*x^2 + 12/4!*x^4 - 98/6!*x^6 - 16968/8!*x^8 - ...

The programs for A009816, there is no canonical definition to state claims against.
-/

/-! ## A009816.P12323715755814512992

`2*A024268(n)`
-/

namespace A009816.P12323715755814512992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024268 n

end

end A009816.P12323715755814512992

/-! ## A009816.P9126932075838100046

`A024268(n)/2^A008683(A003629(n+1))`
-/

namespace A009816.P9126932075838100046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024268 n : ℚ) / (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A009816.P9126932075838100046

/-! ## A009816.P12047785997688869681

`A024268(n)+A024268(n)^A000108(C(2, n+2))`
-/

namespace A009816.P12047785997688869681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024268 n : ℚ) + (A024268 n : ℚ) ^ (A000108 (Nat.choose 2 (n + 2)) : ℤ)

end

end A009816.P12047785997688869681

/-! ## A009816.P13872563917793067630

`A024268(A004873(n+1))+A024268(n)`
-/

namespace A009816.P13872563917793067630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024268 (A004873 (n + 1)).toNat + A024268 n

end

end A009816.P13872563917793067630

/-! ## A009816.P6403682937852324175

`A024268(n)+A024268(A056143(n))`
-/

namespace A009816.P6403682937852324175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024268 n + A024268 (A056143 n).toNat

end

end A009816.P6403682937852324175

/-!
# A009817: Expansion of e.g.f. tanh(tan(x)*x) (even powers only).

The programs for A009817, there is no canonical definition to state claims against.
-/

/-! ## A009817.P11570840100391064256

`2*A024257(n)`
-/

namespace A009817.P11570840100391064256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024257 n

end

end A009817.P11570840100391064256

/-! ## A009817.P13624533531348157595

`A024257(A033619(n+1))+A024257(n)`
-/

namespace A009817.P13624533531348157595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024257 (A033619 (n + 1)).toNat + A024257 n

end

end A009817.P13624533531348157595

/-! ## A009817.P1630003548336126580

`A024257(n)+A024257(n)%A003716(n)`
-/

namespace A009817.P1630003548336126580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024257 n + Int.tmod (A024257 n) (A003716 n)

end

end A009817.P1630003548336126580

/-! ## A009817.P17978001565268614472

`A024257(n)+A024257(n)/A001222(A187128(n+1))`
-/

namespace A009817.P17978001565268614472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024257 n : ℚ) + (A024257 n : ℚ) / (A001222 (A187128 (n + 1)).toNat : ℚ)

end

end A009817.P17978001565268614472

/-! ## A009817.P12072468119413596308

`A024257(n)+A024257(n)/A000265(A000079(n))`
-/

namespace A009817.P12072468119413596308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024257 n : ℚ) + (A024257 n : ℚ) / (A000265 (A000079 n).toNat : ℚ)

end

end A009817.P12072468119413596308

/-!
# A009819: tanh(tan(x)*tan(x))=2/2!*x^2+16/4!*x^4+32/6!*x^6-18944/8!*x^8...

The programs for A009819, there is no canonical definition to state claims against.
-/

/-! ## A009819.P3483673534591587068

`2*A024280(n)`
-/

namespace A009819.P3483673534591587068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024280 n

end

end A009819.P3483673534591587068

/-! ## A009819.P14781305610474586925

`A024280(n)+A024280(A118759(n))`
-/

namespace A009819.P14781305610474586925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024280 n + A024280 (A118759 n).toNat

end

end A009819.P14781305610474586925

/-! ## A009819.P17990171800084357420

`A024280(n)+A024280(n)+A089870(n)-A089869(n)`
-/

namespace A009819.P17990171800084357420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024280 n + (A024280 n + (A089870 n - A089869 n))

end

end A009819.P17990171800084357420

/-! ## A009819.P5900383941725298892

`A024280(n)+A024280(A055646(n))`
-/

namespace A009819.P5900383941725298892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024280 n + A024280 (A055646 n).toNat

end

end A009819.P5900383941725298892

/-! ## A009819.P10505489809572609475

`A024280(n)+A024280(A055647(n))`
-/

namespace A009819.P10505489809572609475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024280 n + A024280 (A055647 n).toNat

end

end A009819.P10505489809572609475

/-!
# A009822: Expansion of tanh(tanh(x)*exp(x)).

The programs for A009822, there is no canonical definition to state claims against.
-/

/-! ## A009822.P7552067796248951577

`n-A033921(A139383(n))`
-/

namespace A009822.P7552067796248951577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033921 (A139383 n).toNat

end

end A009822.P7552067796248951577

/-! ## A009822.P542457095853801517

`n-A033921(A213109(n))`
-/

namespace A009822.P542457095853801517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033921 (A213109 n).toNat

end

end A009822.P542457095853801517

/-!
# A009823: Expansion of tanh(tanh(x)*tan(x))/2.

The programs for A009823, there is no canonical definition to state claims against.
-/

/-! ## A009823.P2464375503892051255

`A012673(n)/2`
-/

namespace A009823.P2464375503892051255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012673 n : ℚ) / 2

end

end A009823.P2464375503892051255

/-!
# A009825: Expansion of tanh(x)*cos(sin(x)).

The programs for A009825, there is no canonical definition to state claims against.
-/

/-! ## A009825.P18344292852806862914

`(-1)^n*A009736(Δ[n²])`
-/

namespace A009825.P18344292852806862914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009825.P18344292852806862914

/-! ## A009825.P3064823271852518413

`A009736(2*n+1)*A033999(n)`
-/

namespace A009825.P3064823271852518413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009736 (2 * n + 1) * A033999 n

end

end A009825.P3064823271852518413

/-! ## A009825.P11745581402923373334

`A009736(A005408(n))/A033999(n)`
-/

namespace A009825.P11745581402923373334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009736 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009825.P11745581402923373334

/-!
# A009826: Expansion of tanh(x)*cos(tan(x)).

The programs for A009826, there is no canonical definition to state claims against.
-/

/-! ## A009826.P10684538910114009793

`A009738(Δ[n²])/A033999(n)`
-/

namespace A009826.P10684538910114009793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009738 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A033999 n : ℚ)

end

end A009826.P10684538910114009793

/-! ## A009826.P5241988307606077693

`A009738(2*n+1)*A033999(n)`
-/

namespace A009826.P5241988307606077693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009738 (2 * n + 1) * A033999 n

end

end A009826.P5241988307606077693

/-!
# A009830: Expansion of tanh(x).exp(tan(x)).

The programs for A009830, there is no canonical definition to state claims against.
-/

/-! ## A009830.P899792486571532830

`A077474(A163893(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A009830.P899792486571532830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A077474 (A163893 (a (n - 1)).toNat).toNat

end

end A009830.P899792486571532830

/-! ## A009830.P7001068487117521797

`and(n*(n*(n-5)+5)², A091206(A003433(n+2)))`
-/

namespace A009830.P7001068487117521797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2) (A091206 (A003433 (n + 2)).toNat)

end

end A009830.P7001068487117521797

/-!
# A009832: Expansion of e.g.f. tanh(x)*exp(x).

The programs for A009832, there is no canonical definition to state claims against.
-/

/-! ## A009832.P16851903060499671381

`A119880(n)-1`
-/

namespace A009832.P16851903060499671381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 n - 1

end

end A009832.P16851903060499671381

/-! ## A009832.P6547358293335223907

`1-A122045(n)`
-/

namespace A009832.P6547358293335223907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A122045 n

end

end A009832.P6547358293335223907

/-! ## A009832.P16165228984808242482

`1-A119879(∑[n])`
-/

namespace A009832.P16165228984808242482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A119879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A009832.P16165228984808242482

/-! ## A009832.P933806449387325342

`1-Δ[A009390(n)]`
-/

namespace A009832.P933806449387325342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A009832.P933806449387325342

/-! ## A009832.P6493957414312381954

`1-or(char[2], A119879(A000217(n)))`
-/

namespace A009832.P6493957414312381954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A119879 (A000217 n).toNat)

end

end A009832.P6493957414312381954

/-! ## A009832.P9569800575229765335

`1-(A009390(n+1)-A009390(n))`
-/

namespace A009832.P9569800575229765335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A009390 (n + 1) - A009390 n)

end

end A009832.P9569800575229765335

/-! ## A009832.P4028348750681608055

`A122045(n)*A280193(n+1)+1`
-/

namespace A009832.P4028348750681608055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n * A280193 (n + 1) + 1

end

end A009832.P4028348750681608055

/-! ## A009832.P3199555966568599935

`1-A000034(n)*A119879(A000217(n))`
-/

namespace A009832.P3199555966568599935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000034 n * A119879 (A000217 n).toNat

end

end A009832.P3199555966568599935

/-! ## A009832.P14942907835337543660

`A155585(n)-A217714(n)`
-/

namespace A009832.P14942907835337543660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n - A217714 n

end

end A009832.P14942907835337543660

/-! ## A009832.P15478158036693293142

`-(A218529(n)+A155585(n))`
-/

namespace A009832.P15478158036693293142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A218529 n + A155585 n)

end

end A009832.P15478158036693293142

/-!
# A009833: Expansion of tanh(x)*sin(sin(x)).

The programs for A009833, there is no canonical definition to state claims against.
-/

/-! ## A009833.P13677593617793275748

`2*A024282(n)`
-/

namespace A009833.P13677593617793275748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024282 n

end

end A009833.P13677593617793275748

/-! ## A009833.P12432301053584622894

`A009736(2*n)*A033999(n+1)`
-/

namespace A009833.P12432301053584622894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009736 (2 * n) * A033999 (n + 1)

end

end A009833.P12432301053584622894

/-! ## A009833.P1711617224612553870

`A024282(n)+A024282(A118759(n))`
-/

namespace A009833.P1711617224612553870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024282 n + A024282 (A118759 n).toNat

end

end A009833.P1711617224612553870

/-! ## A009833.P8281218631906978655

`A024282(n)+A024282(A292579(n))`
-/

namespace A009833.P8281218631906978655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024282 n + A024282 (A292579 n).toNat

end

end A009833.P8281218631906978655

/-! ## A009833.P7559060952066215422

`A024282(n)+A024282(A071670(n))`
-/

namespace A009833.P7559060952066215422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024282 n + A024282 (A071670 n).toNat

end

end A009833.P7559060952066215422

/-!
# A009834: Expansion of e.g.f.: tanh(x)*sin(tan(x)) (even part).

The programs for A009834, there is no canonical definition to state claims against.
-/

/-! ## A009834.P13679673552570314764

`2*A024229(n)`
-/

namespace A009834.P13679673552570314764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024229 n

end

end A009834.P13679673552570314764

/-! ## A009834.P11403690023731991936

`A024229(n)+A024229(A118759(n))`
-/

namespace A009834.P11403690023731991936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024229 n + A024229 (A118759 n).toNat

end

end A009834.P11403690023731991936

/-! ## A009834.P4512208209896524325

`A024229(n)+A024229(n)+A000007(n+1)`
-/

namespace A009834.P4512208209896524325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024229 n + (A024229 n + A000007 (n + 1))

end

end A009834.P4512208209896524325

/-! ## A009834.P6725790845295349276

`A024229(n)+A024229(n)+and(1, A000038(n))`
-/

namespace A009834.P6725790845295349276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024229 n + (A024229 n + Int.land 1 (A000038 n))

end

end A009834.P6725790845295349276

/-! ## A009834.P5933919410788157740

`A009738(2*n)*A033999(n+1)`
-/

namespace A009834.P5933919410788157740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009738 (2 * n) * A033999 (n + 1)

end

end A009834.P5933919410788157740

/-!
# A009835: Expansion of tanh(x)*tan(sin(x)).

The programs for A009835, there is no canonical definition to state claims against.
-/

/-! ## A009835.P6988892756139216319

`2*A024228(n)`
-/

namespace A009835.P6988892756139216319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024228 n

end

end A009835.P6988892756139216319

/-! ## A009835.P14014320400784929113

`A024228(n)+A024228(A118759(n))`
-/

namespace A009835.P14014320400784929113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024228 n + A024228 (A118759 n).toNat

end

end A009835.P14014320400784929113

/-! ## A009835.P12461105792765425474

`A024228(n/A054977(n))+A024228(n)`
-/

namespace A009835.P12461105792765425474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024228 (SequenceMachineLib.roundAway ((n : ℚ) / (A054977 n : ℚ))).toNat + A024228 n

end

end A009835.P12461105792765425474

/-! ## A009835.P4897238817477916287

`A024228(n)+A024228(A055647(n))`
-/

namespace A009835.P4897238817477916287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024228 n + A024228 (A055647 n).toNat

end

end A009835.P4897238817477916287

/-! ## A009835.P16037533305393154657

`A024228(n)+A024228(A062399(n))`
-/

namespace A009835.P16037533305393154657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024228 n + A024228 (A062399 n).toNat

end

end A009835.P16037533305393154657

/-!
# A009836: Expansion of tanh(x)*tan(tan(x)).

The programs for A009836, there is no canonical definition to state claims against.
-/

/-! ## A009836.P5872347176833031059

`2*A024266(n)`
-/

namespace A009836.P5872347176833031059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024266 n

end

end A009836.P5872347176833031059

/-! ## A009836.P13714733418601879717

`A024266(n)+A024266(A178798(n)+n)`
-/

namespace A009836.P13714733418601879717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024266 n + A024266 (A178798 n + (n : ℤ)).toNat

end

end A009836.P13714733418601879717

/-! ## A009836.P3123565943771428947

`A024266(lcm(n, A062157(n)))+A024266(n)`
-/

namespace A009836.P3123565943771428947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024266 (Int.lcm (n : ℤ) (A062157 n)) + A024266 n

end

end A009836.P3123565943771428947

/-! ## A009836.P2162823459960926699

`A024266(n)+A024266(A055646(n))`
-/

namespace A009836.P2162823459960926699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024266 n + A024266 (A055646 n).toNat

end

end A009836.P2162823459960926699

/-! ## A009836.P3171408778478398670

`A024266(n)+A024266(A351870(n))`
-/

namespace A009836.P3171408778478398670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024266 n + A024266 (A351870 n).toNat

end

end A009836.P3171408778478398670

/-!
# A009837: Expansion of tanh(x)tan(x)/2 in powers of x^(4*n+2).

The programs for A009837, there is no canonical definition to state claims against.
-/

/-! ## A009837.P11002765364058419274

`A024342(n)/2`
-/

namespace A009837.P11002765364058419274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024342 n : ℚ) / 2

end

end A009837.P11002765364058419274

/-!
# A009838: Expansion of e.g.f.: tanh(x)/(1+x).

The programs for A009838, there is no canonical definition to state claims against.
-/

/-! ## A009838.P2000572781255354594

`A155585(n)-n*a(n-1)` with `a(0)=0`
-/

namespace A009838.P2000572781255354594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A155585 n - (n : ℤ) * a (n - 1)

end

end A009838.P2000572781255354594

/-! ## A009838.P14509329140047146981

`A209849(∑[n]+1)+(n-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A009838.P14509329140047146981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A209849 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((n : ℤ) - (2 * n : ℤ)) * a (n - 1)

end

end A009838.P14509329140047146981

/-! ## A009838.P12137538699455052491

`(1-and(2, n))*A009006(n)+(n-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A009838.P12137538699455052491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - (Nat.land 2 n : ℤ)) * A009006 n + ((n : ℤ) - (2 * n : ℤ)) * a (n - 1)

end

end A009838.P12137538699455052491

/-! ## A009838.P18285085141909604343

`floor(-n*a((2*n)%(n+1)))+A122045(n)-A163747(n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A009838.P18285085141909604343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -((n : ℤ) * a (2 * n % (n + 1))) + (A122045 n - A163747 n)

end

end A009838.P18285085141909604343

/-! ## A009838.P255857673408175703

`A239005(eq[1, A268435(n)])+(n-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A009838.P255857673408175703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268435 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A239005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + ((n : ℤ) - (2 * n : ℤ)) * a (n - 1)

end

end A009838.P255857673408175703

/-!
# A009839: Expansion of e.g.f.: tanh(x)/cos(log(1+x)).

The programs for A009839, there is no canonical definition to state claims against.
-/

/-! ## A009839.P2579098372389052612

`A009405(n)*A112300(A351200(n))`
-/

namespace A009839.P2579098372389052612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009405 n * A112300 (A351200 n).toNat

end

end A009839.P2579098372389052612

/-!
# A009840: Expansion of tanh(x)/cos(sin(x)).

The programs for A009840, there is no canonical definition to state claims against.
-/

/-! ## A009840.P8429198269479814644

`A336450(A298938(n)²)`
-/

namespace A009840.P8429198269479814644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336450 (A298938 n ^ 2).toNat

end

end A009840.P8429198269479814644

/-!
# A009842: Expansion of tanh(x)/cosh(log(1+x)).

The programs for A009842, there is no canonical definition to state claims against.
-/

/-! ## A009842.P6108409328623756358

`A127137(n)%A006530(A052801(n))`
-/

namespace A009842.P6108409328623756358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127137 n) (A006530 (A052801 n).toNat)

end

end A009842.P6108409328623756358

/-!
# A009843: Expansion of e.g.f. x/cos(x) (odd powers only).

The programs for A009843, there is no canonical definition to state claims against.
-/

/-! ## A009843.P2963031075208018325

`(2*n+1)*A000364(n)`
-/

namespace A009843.P2963031075208018325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000364 n

end

end A009843.P2963031075208018325

/-! ## A009843.P10238429843376258449

`abs(A104033(∑[n]))`
-/

namespace A009843.P10238429843376258449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104033 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A009843.P10238429843376258449

/-! ## A009843.P18329103569361843902

`A009002(Δ[n²])`
-/

namespace A009843.P18329103569361843902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009843.P18329103569361843902

/-! ## A009843.P18141856227611631747

`A065619(Δ[n²])`
-/

namespace A009843.P18141856227611631747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009843.P18141856227611631747

/-! ## A009843.P13083725089478577892

`record[abs(A104033(n))]`
-/

namespace A009843.P13083725089478577892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104033 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009843.P13083725089478577892

/-!
# A009844: Coordination sequence T1 for Keatite.

The programs for A009844, there is no canonical definition to state claims against.
-/

/-! ## A009844.P18055648903064166306

`∑[A091863(∑[xor(1, 3*n)])]`
-/

namespace A009844.P18055648903064166306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009844.P18055648903064166306

/-! ## A009844.P1582798359105508407

`A331935(A136219(n))`
-/

namespace A009844.P1582798359105508407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A136219 n).toNat

end

end A009844.P1582798359105508407

/-! ## A009844.P2787643948622504326

`A331935(∑[∑[A343387(n)]])`
-/

namespace A009844.P2787643948622504326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343387 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009844.P2787643948622504326

/-!
# A009845: Coordination sequence T2 for Keatite.

The programs for A009845, there is no canonical definition to state claims against.
-/

/-! ## A009845.P17197697019514737745

`∑[∑[A340294(A007163(n+1))]]`
-/

namespace A009845.P17197697019514737745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340294 (A007163 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009845.P17197697019514737745

/-! ## A009845.P10028555153006799894

`A301026(n)+A071295(A001109(n))`
-/

namespace A009845.P10028555153006799894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301026 n + A071295 (A001109 n).toNat

end

end A009845.P10028555153006799894

/-!
# A009855: Coordination sequence T1 for Zeolite Code -PAR.

The programs for A009855, there is no canonical definition to state claims against.
-/

/-! ## A009855.P3416812366460347852

`A103128(∑[A140235(n+1)²])`
-/

namespace A009855.P3416812366460347852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140235 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009855.P3416812366460347852

/-! ## A009855.P11055682626507900444

`∑[∑[A280055(A065244(n+1))]]`
-/

namespace A009855.P11055682626507900444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280055 (A065244 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009855.P11055682626507900444

/-! ## A009855.P17402900539351702428

`∑[A227386(A155212(n)-2)]+1`
-/

namespace A009855.P17402900539351702428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227386 (A155212 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A009855.P17402900539351702428

/-!
# A009857: Coordination sequence T3 for Zeolite Code -PAR.

The programs for A009857, there is no canonical definition to state claims against.
-/

/-! ## A009857.P403910826599899890

`∑[record[A352632(A078875(n+1))]]`
-/

namespace A009857.P403910826599899890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352632 (A078875 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009857.P403910826599899890

/-! ## A009857.P1991488969154428101

`∑[∑[A005811(A331998(2*(n+2)))]]`
-/

namespace A009857.P1991488969154428101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A331998 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009857.P1991488969154428101

/-! ## A009857.P703246860151811563

`A238580(A005894(3*n+1)-A275418(n+1))`
-/

namespace A009857.P703246860151811563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238580 (A005894 (3 * n + 1) - A275418 (n + 1)).toNat

end

end A009857.P703246860151811563

/-!
# A009861: Coordination sequence T3 for Zeolite Code -ROG.

The programs for A009861, there is no canonical definition to state claims against.
-/

/-! ## A009861.P11792177678397712155

`∑[A007591(n+1)]-A336356(A001764(n)+1)`
-/

namespace A009861.P11792177678397712155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A336356 (A001764 n + 1).toNat

end

end A009861.P11792177678397712155

/-!
# A009862: Coordination sequence T1 for Zeolite Code -WEN.

The programs for A009862, there is no canonical definition to state claims against.
-/

/-! ## A009862.P8058828027888391266

`∑[∑[∏{e}[A192367(n+1)², #]]]`
-/

namespace A009862.P8058828027888391266
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192367 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009862.P8058828027888391266

/-! ## A009862.P13964961323339748785

`∑[∑[A034444(A150378(n))]]`
-/

namespace A009862.P13964961323339748785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A150378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009862.P13964961323339748785

/-! ## A009862.P11780153253177653686

`∑[∑[A278908(A008137(n)²)]]`
-/

namespace A009862.P11780153253177653686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A008137 n ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009862.P11780153253177653686

/-! ## A009862.P1999944571759306116

`∑[∑[A000005(A308227(n+1))]]`
-/

namespace A009862.P1999944571759306116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A308227 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009862.P1999944571759306116

/-!
# A009865: Coordination sequence T2 for Zeolite Code AFX.

The programs for A009865, there is no canonical definition to state claims against.
-/

/-! ## A009865.P14631881616462817645

`A185284(A000044(n))+A008026(n)`
-/

namespace A009865.P14631881616462817645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000044 n).toNat + A008026 n

end

end A009865.P14631881616462817645

/-! ## A009865.P18321340342789844350

`A185284(A000044(n))+A008066(n)`
-/

namespace A009865.P18321340342789844350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000044 n).toNat + A008066 n

end

end A009865.P18321340342789844350

/-! ## A009865.P14605681015351906550

`A185284(A000045(n))+A008066(n)`
-/

namespace A009865.P14605681015351906550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000045 n).toNat + A008066 n

end

end A009865.P14605681015351906550

/-! ## A009865.P5413994523317734656

`A102683(n)+A008026(A087051(n))`
-/

namespace A009865.P5413994523317734656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A008026 (A087051 n).toNat

end

end A009865.P5413994523317734656

/-! ## A009865.P11046675254135739890

`A244465(A244448(n))+A008026(n)`
-/

namespace A009865.P11046675254135739890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244465 (A244448 n).toNat + A008026 n

end

end A009865.P11046675254135739890

/-!
# A009866: Coordination sequence T1 for Zeolite Code AHT.

The programs for A009866, there is no canonical definition to state claims against.
-/

/-! ## A009866.P13802136231742786357

`∑[∑[A276337(A385776(2*n+1))]]`
-/

namespace A009866.P13802136231742786357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 (A385776 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009866.P13802136231742786357

/-! ## A009866.P10817629381180488131

`A008015(n)-(A025465(A075834(n))+A008130(n))`
-/

namespace A009866.P10817629381180488131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - (A025465 (A075834 n).toNat + A008130 n)

end

end A009866.P10817629381180488131

/-! ## A009866.P8651405277037386464

`A008015(n)-(A284745(A148665(n))+A008130(n))`
-/

namespace A009866.P8651405277037386464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008015 n - (A284745 (A148665 n).toNat + A008130 n)

end

end A009866.P8651405277037386464

/-! ## A009866.P9189169432239775314

`∑[∑[A131295(A119374(n))]]`
-/

namespace A009866.P9189169432239775314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 (A119374 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009866.P9189169432239775314

/-!
# A009867: Coordination sequence T2 for Zeolite Code AHT.

The programs for A009867, there is no canonical definition to state claims against.
-/

/-! ## A009867.P15095668258149880695

`A347245(A007976(n+1))+A008011(n)`
-/

namespace A009867.P15095668258149880695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (A007976 (n + 1)).toNat + A008011 n

end

end A009867.P15095668258149880695

/-! ## A009867.P3856384419816545309

`A087063(∑[∑[A062105(n)]])`
-/

namespace A009867.P3856384419816545309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087063 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009867.P3856384419816545309

/-! ## A009867.P2859489251694236029

`∑[∑[A038548(A073706(n+1))]]`
-/

namespace A009867.P2859489251694236029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A073706 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009867.P2859489251694236029

/-! ## A009867.P4664794256827784019

`∑[lt[A344612(n), A345197(3*n)]]`
-/

namespace A009867.P4664794256827784019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009867.P4664794256827784019

/-!
# A009868: Coordination sequence T1 for Zeolite Code CON.

The programs for A009868, there is no canonical definition to state claims against.
-/

/-! ## A009868.P8504556362884038832

`∑[∑[A032741(A015957(n+3))]]`
-/

namespace A009868.P8504556362884038832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A015957 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009868.P8504556362884038832

/-! ## A009868.P15920481768053915518

`A300740(n)-A031346(A053556(n))`
-/

namespace A009868.P15920481768053915518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300740 n - A031346 (A053556 n).toNat

end

end A009868.P15920481768053915518

/-! ## A009868.P13732042182777683894

`∑[floor(log(A162121(n+2)))]`
-/

namespace A009868.P13732042182777683894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A162121 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009868.P13732042182777683894

/-! ## A009868.P7332974689189998238

`∑[ceil(log2(A290711(n+1)))]`
-/

namespace A009868.P7332974689189998238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A290711 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009868.P7332974689189998238

/-!
# A009870: Coordination sequence T3 for Zeolite Code CON.

The programs for A009870, there is no canonical definition to state claims against.
-/

/-! ## A009870.P11678375014314125245

`A300742(n)-A127325(A300759(n+1))`
-/

namespace A009870.P11678375014314125245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300742 n - A127325 (A300759 (n + 1)).toNat

end

end A009870.P11678375014314125245

/-! ## A009870.P18416145002043115055

`A301152(n)-A127323(A362608(2*n))`
-/

namespace A009870.P18416145002043115055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301152 n - A127323 (A362608 (2 * n)).toNat

end

end A009870.P18416145002043115055

/-!
# A009871: Coordination sequence T4 for Zeolite Code CON.

The programs for A009871, there is no canonical definition to state claims against.
-/

/-! ## A009871.P11676336501837338442

`xor(A009872(n), A107078(A307789(n)))`
-/

namespace A009871.P11676336501837338442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009872 n) (A107078 (A307789 n).toNat)

end

end A009871.P11676336501837338442

/-! ## A009871.P16720518652174293650

`∑[∑[A195079(A098566(n+1))]]`
-/

namespace A009871.P16720518652174293650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (A098566 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009871.P16720518652174293650

/-! ## A009871.P8731271225370083403

`∑[∑[A360485(A077653(3^n))]]`
-/

namespace A009871.P8731271225370083403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (A077653 (3 ^ n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009871.P8731271225370083403

/-! ## A009871.P7705418725499637749

`A009872(n)-A055641(A143330(n))`
-/

namespace A009871.P7705418725499637749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009872 n - A055641 (A143330 n).toNat

end

end A009871.P7705418725499637749

/-!
# A009872: Coordination sequence T5 for Zeolite Code CON.

The programs for A009872, there is no canonical definition to state claims against.
-/

/-! ## A009872.P16098243050577899943

`xor(A009871(n), A107078(A307789(n)))`
-/

namespace A009872.P16098243050577899943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A009871 n) (A107078 (A307789 n).toNat)

end

end A009872.P16098243050577899943

/-! ## A009872.P17038725307858942404

`A185284(A000982(n))+A008049(n)`
-/

namespace A009872.P17038725307858942404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000982 n).toNat + A008049 n

end

end A009872.P17038725307858942404

/-! ## A009872.P5733896263601192537

`A185284(A007590(n))+A008049(n)`
-/

namespace A009872.P5733896263601192537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A007590 n).toNat + A008049 n

end

end A009872.P5733896263601192537

/-!
# A009874: Coordination sequence T7 for Zeolite Code CON.

The programs for A009874, there is no canonical definition to state claims against.
-/

/-! ## A009874.P13912357535660981345

`∑[record[A304576(A313722(n))]]`
-/

namespace A009874.P13912357535660981345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304576 (A313722 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009874.P13912357535660981345

/-! ## A009874.P14791392941418515424

`A184398(∑[∑[A289441(n+2)]])`
-/

namespace A009874.P14791392941418515424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009874.P14791392941418515424

/-!
# A009875: Coordination sequence T1 for Zeolite Code DFO.

The programs for A009875, there is no canonical definition to state claims against.
-/

/-! ## A009875.P3702127314479053958

`A184425(∑[∑[A136692(n)]])`
-/

namespace A009875.P3702127314479053958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136692 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184425 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A009875.P3702127314479053958

/-! ## A009875.P13194551013988594405

`∑[∑[A333766(A242882(n+1))]]`
-/

namespace A009875.P13194551013988594405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A242882 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009875.P13194551013988594405

/-! ## A009875.P17840615434323329216

`∑[∑[A255337(A343521(n+1))]]`
-/

namespace A009875.P17840615434323329216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 (A343521 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009875.P17840615434323329216

/-! ## A009875.P3630245950574932943

`∑[∑[A333870(A007059(2*n+1)+1)]]`
-/

namespace A009875.P3630245950574932943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A007059 (2 * n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009875.P3630245950574932943

/-! ## A009875.P1216376524777659627

`A002024(A192699(n+1))-A192683(n)`
-/

namespace A009875.P1216376524777659627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A192699 (n + 1)).toNat - A192683 n

end

end A009875.P1216376524777659627

/-!
# A009878: Coordination sequence T4 for Zeolite Code DFO.

The programs for A009878, there is no canonical definition to state claims against.
-/

/-! ## A009878.P5027642154285543782

`A036695(n)-A285133(A284942(n+1))`
-/

namespace A009878.P5027642154285543782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - A285133 (A284942 (n + 1)).toNat

end

end A009878.P5027642154285543782

/-! ## A009878.P4440636766477080285

`A036695(n)-A061358(A001008(n+1))`
-/

namespace A009878.P4440636766477080285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - A061358 (A001008 (n + 1)).toNat

end

end A009878.P4440636766477080285

/-! ## A009878.P8525235744618772335

`A036695(n)-A059841(A008292(3*(n+1)))`
-/

namespace A009878.P8525235744618772335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - A059841 (A008292 (3 * (n + 1))).toNat

end

end A009878.P8525235744618772335

/-! ## A009878.P4026092238093413101

`∑[∑[A134034(A001359(n+1))]]`
-/

namespace A009878.P4026092238093413101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134034 (A001359 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009878.P4026092238093413101

/-! ## A009878.P3577532031477326853

`∑[A174973(n+2)-A122287(A277004(2*n+3))]`
-/

namespace A009878.P3577532031477326853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 2) - A122287 (A277004 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009878.P3577532031477326853

/-!
# A009879: Coordination sequence T5 for Zeolite Code DFO.

The programs for A009879, there is no canonical definition to state claims against.
-/

/-! ## A009879.P12763123820741579959

`∑[∑[A254123(3^n+1)]]`
-/

namespace A009879.P12763123820741579959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (3 ^ n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009879.P12763123820741579959

/-! ## A009879.P11331299134928457805

`∑[∑[A246359(A051878(n))]]`
-/

namespace A009879.P11331299134928457805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A051878 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009879.P11331299134928457805

/-! ## A009879.P10945767103198336499

`∑[∑[A246359(A297445(n))]]`
-/

namespace A009879.P10945767103198336499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A297445 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009879.P10945767103198336499

/-! ## A009879.P6572818124826670198

`∑[A192188(A057953(2^n))]`
-/

namespace A009879.P6572818124826670198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192188 (A057953 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009879.P6572818124826670198

/-! ## A009879.P5897481208911554067

`∑[∑[A060501(A121015(n+1))]]`
-/

namespace A009879.P5897481208911554067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 (A121015 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009879.P5897481208911554067

/-!
# A009882: Coordination sequence T2 for Zeolite Code iRON.

The programs for A009882, there is no canonical definition to state claims against.
-/

/-! ## A009882.P12390403625470625980

`∑[A180580(A342527(2*n+3)²)]`
-/

namespace A009882.P12390403625470625980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180580 (A342527 (2 * n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009882.P12390403625470625980

/-!
# A009886: Coordination sequence T2 for Zeolite Code RSN.

The programs for A009886, there is no canonical definition to state claims against.
-/

/-! ## A009886.P14006861442898416498

`A234361(A002773(n+1))+A008000(n)`
-/

namespace A009886.P14006861442898416498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234361 (A002773 (n + 1)).toNat + A008000 n

end

end A009886.P14006861442898416498

/-!
# A009891: Coordination sequence T2 for Zeolite Code RTE.

The programs for A009891, there is no canonical definition to state claims against.
-/

/-! ## A009891.P5470245674575843581

`A227740(A186739(n)+1)+A008000(n)`
-/

namespace A009891.P5470245674575843581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227740 (A186739 n + 1).toNat + A008000 n

end

end A009891.P5470245674575843581

/-! ## A009891.P3808364306046978116

`A102673(n!)+A008000(n)`
-/

namespace A009891.P3808364306046978116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (Nat.factorial n) + A008000 n

end

end A009891.P3808364306046978116

/-! ## A009891.P15593334322563840235

`∑[record[A322426(A226424(n+1))]]`
-/

namespace A009891.P15593334322563840235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A226424 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009891.P15593334322563840235

/-! ## A009891.P15732714764598874593

`A102671(A000142(n))+A008000(n)`
-/

namespace A009891.P15732714764598874593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A000142 n).toNat + A008000 n

end

end A009891.P15732714764598874593

/-!
# A009892: Coordination sequence T3 for Zeolite Code RTE.

The programs for A009892, there is no canonical definition to state claims against.
-/

/-! ## A009892.P10676924112975867648

`∑[4*n]+1-A001222(A147906(n+1))`
-/

namespace A009892.P10676924112975867648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A001222 (A147906 (n + 1)).toNat

end

end A009892.P10676924112975867648

/-! ## A009892.P8959720262676271980

`∑[4*n]+1-A001222(A147915(n+1))`
-/

namespace A009892.P8959720262676271980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A001222 (A147915 (n + 1)).toNat

end

end A009892.P8959720262676271980

/-! ## A009892.P13879538137055417818

`A320472(∑[A034705(n+1)])+n`
-/

namespace A009892.P13879538137055417818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A009892.P13879538137055417818

/-! ## A009892.P5325658565000596807

`A028825(A028837(n+1))+C(2*n, 2)`
-/

namespace A009892.P5325658565000596807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028825 (A028837 (n + 1)).toNat + (Nat.choose (2 * n) 2 : ℤ)

end

end A009892.P5325658565000596807

/-!
# A009893: Coordination sequence T1 for Zeolite Code RTH.

The programs for A009893, there is no canonical definition to state claims against.
-/

/-! ## A009893.P6399065054710509118

`A178798(n²+8)+A027369(n)`
-/

namespace A009893.P6399065054710509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (n ^ 2 + 8) + A027369 n

end

end A009893.P6399065054710509118

/-! ## A009893.P2858846058491085130

`A027369(n)-A185284(A000124(n))`
-/

namespace A009893.P2858846058491085130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027369 n - A185284 (A000124 n).toNat

end

end A009893.P2858846058491085130

/-! ## A009893.P15217101031588187723

`A027369(n)-A185284(A007590(n))`
-/

namespace A009893.P15217101031588187723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027369 n - A185284 (A007590 n).toNat

end

end A009893.P15217101031588187723

/-! ## A009893.P17307727696708243794

`A027369(n)-A226464(A103435(n))`
-/

namespace A009893.P17307727696708243794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027369 n - A226464 (A103435 n).toNat

end

end A009893.P17307727696708243794

/-! ## A009893.P212224887009683298

`A027369(n)-A321537(A116828(n+1))`
-/

namespace A009893.P212224887009683298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027369 n - A321537 (A116828 (n + 1)).toNat

end

end A009893.P212224887009683298

/-!
# A009894: Coordination sequence T2 for Zeolite Code RTH.

The programs for A009894, there is no canonical definition to state claims against.
-/

/-! ## A009894.P16746572354361399460

`A047963(n)-A196563(A047974(n))`
-/

namespace A009894.P16746572354361399460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047963 n - A196563 (A047974 n).toNat

end

end A009894.P16746572354361399460

/-! ## A009894.P14248717140106425935

`xor(A008000(n), A325135(A186758(n)))`
-/

namespace A009894.P14248717140106425935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008000 n) (A325135 (A186758 n).toNat)

end

end A009894.P14248717140106425935

/-!
# A009895: Coordination sequence T3 for Zeolite Code RTH.

The programs for A009895, there is no canonical definition to state claims against.
-/

/-! ## A009895.P9934586911513111392

`A117929(A046161(n))+A008137(n)`
-/

namespace A009895.P9934586911513111392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A046161 n).toNat + A008137 n

end

end A009895.P9934586911513111392

/-! ## A009895.P7534725106211352485

`A027371(n)-A025458(A001349(n))`
-/

namespace A009895.P7534725106211352485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027371 n - A025458 (A001349 n).toNat

end

end A009895.P7534725106211352485

/-! ## A009895.P14217633265154114735

`A027371(n)-A358479(A348622(n))`
-/

namespace A009895.P14217633265154114735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027371 n - A358479 (A348622 n).toNat

end

end A009895.P14217633265154114735

/-!
# A009896: Coordination sequence T4 for Zeolite Code RTH.

The programs for A009896, there is no canonical definition to state claims against.
-/

/-! ## A009896.P11202481455276148174

`or(A023962(A001349(n)), A024983(n))`
-/

namespace A009896.P11202481455276148174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023962 (A001349 n).toNat) (A024983 n)

end

end A009896.P11202481455276148174

/-!
# A009897: Coordination sequence T1 for Zeolite Code RUT.

The programs for A009897, there is no canonical definition to state claims against.
-/

/-! ## A009897.P13781499511784923224

`∑[∑[A008975(A327493(n))]]`
-/

namespace A009897.P13781499511784923224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008975 (A327493 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009897.P13781499511784923224

/-! ## A009897.P15623283079714843150

`A019457(n)+A001222(A190633(n))`
-/

namespace A009897.P15623283079714843150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019457 n + A001222 (A190633 n).toNat

end

end A009897.P15623283079714843150

/-! ## A009897.P5838860511380881696

`A003056(A009854(n)*A047950(n))`
-/

namespace A009897.P5838860511380881696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A009854 n * A047950 n).toNat

end

end A009897.P5838860511380881696

/-! ## A009897.P5738199264353594452

`A144968(A000292(n)*A014574(n+1))`
-/

namespace A009897.P5738199264353594452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (A000292 n * A014574 (n + 1)).toNat

end

end A009897.P5738199264353594452

/-!
# A009898: Coordination sequence T2 for Zeolite Code RUT.

The programs for A009898, there is no canonical definition to state claims against.
-/

/-! ## A009898.P5302286715708029189

`∑[∑[A141197(A227360(3*n+2))]]`
-/

namespace A009898.P5302286715708029189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141197 (A227360 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A009898.P5302286715708029189

/-! ## A009898.P1218407198029513246

`A008085(n)+A000523(A184438(n+1))`
-/

namespace A009898.P1218407198029513246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008085 n + A000523 (A184438 (n + 1)).toNat

end

end A009898.P1218407198029513246

/-! ## A009898.P7822076521786930622

`A135549(A353998(n+1))+A008000(n)`
-/

namespace A009898.P7822076521786930622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 (A353998 (n + 1)).toNat + A008000 n

end

end A009898.P7822076521786930622

/-! ## A009898.P12641674825834092193

`xor(A005361(A078223(n+1))+A001105(n), A142150(n))`
-/

namespace A009898.P12641674825834092193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005361 (A078223 (n + 1)).toNat + A001105 n) (A142150 n)

end

end A009898.P12641674825834092193

