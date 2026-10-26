import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A009500: Expansion of sin(tan(sin(x))).

The programs for A009500, there is no canonical definition to state claims against.
-/

/-! ## A009500.P15177948691759731989

`(-1)^n*A009259(Δ[n²])`
-/

namespace A009500.P15177948691759731989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009500.P15177948691759731989

/-! ## A009500.P11409764242600199501

`A009259(2*n+1)*A009531(2*n+1)`
-/

namespace A009500.P11409764242600199501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009259 (2 * n + 1) * A009531 (2 * n + 1)

end

end A009500.P11409764242600199501

/-!
# A009501: Expansion of sin(tan(sinh(x))).

The programs for A009501, there is no canonical definition to state claims against.
-/

/-! ## A009501.P9772639930751003407

`(-1)^n*A009258(2*n+1)`
-/

namespace A009501.P9772639930751003407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009258 (2 * n + 1)

end

end A009501.P9772639930751003407

/-! ## A009501.P16574965937469633095

`A009258(2*n+1)*A033999(n)`
-/

namespace A009501.P16574965937469633095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009258 (2 * n + 1) * A033999 n

end

end A009501.P16574965937469633095

/-! ## A009501.P5384374872063202438

`A009258(2*n+1)*A057077(2*n)`
-/

namespace A009501.P5384374872063202438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009258 (2 * n + 1) * A057077 (2 * n)

end

end A009501.P5384374872063202438

/-! ## A009501.P6396431529290879624

`A009258(A005843(n)+1)/A033999(n)`
-/

namespace A009501.P6396431529290879624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009258 (A005843 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009501.P6396431529290879624

/-!
# A009502: Expansion of sin(tan(tan(x))).

The programs for A009502, there is no canonical definition to state claims against.
-/

/-! ## A009502.P4365752677053240598

`A009261(2*n+1)*A033999(n)`
-/

namespace A009502.P4365752677053240598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009261 (2 * n + 1) * A033999 n

end

end A009502.P4365752677053240598

/-!
# A009503: Expansion of sin(tan(tanh(x))).

The programs for A009503, there is no canonical definition to state claims against.
-/

/-! ## A009503.P17163234180059327386

`(-1)^n*A009260(Δ[n²])`
-/

namespace A009503.P17163234180059327386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009260 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009503.P17163234180059327386

/-! ## A009503.P16094369852198342622

`A009260(2*n+1)*A033999(n)`
-/

namespace A009503.P16094369852198342622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 (2 * n + 1) * A033999 n

end

end A009503.P16094369852198342622

/-! ## A009503.P7550360715838439907

`A009260(2*n+1)*A057077(2*n)`
-/

namespace A009503.P7550360715838439907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009260 (2 * n + 1) * A057077 (2 * n)

end

end A009503.P7550360715838439907

/-!
# A009505: Expansion of sin(tan(x))*cos(x).

The programs for A009505, there is no canonical definition to state claims against.
-/

/-! ## A009505.P7283452731105479958

`A009072(n)-A009548(n)`
-/

namespace A009505.P7283452731105479958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009072 n - A009548 n

end

end A009505.P7283452731105479958

/-! ## A009505.P3278167657214215984

`A009072(n)-2*A024301(n)`
-/

namespace A009505.P3278167657214215984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009072 n - 2 * A024301 n

end

end A009505.P3278167657214215984

/-! ## A009505.P7870124014321348980

`(-1)^n*A009265(2*n)-A009548(n)`
-/

namespace A009505.P7870124014321348980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009265 (2 * n) - A009548 n

end

end A009505.P7870124014321348980

/-! ## A009505.P9522215969065776933

`A009072(n)-(A024301(n)+A024301(A292579(n)))`
-/

namespace A009505.P9522215969065776933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009072 n - (A024301 n + A024301 (A292579 n).toNat)

end

end A009505.P9522215969065776933

/-! ## A009505.P16921642857396860476

`A009187(2*n+1)*A033999(n+1)`
-/

namespace A009505.P16921642857396860476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009187 (2 * n + 1) * A033999 (n + 1)

end

end A009505.P16921642857396860476

/-!
# A009506: Expansion of sin(tan(x))*cosh(x).

The programs for A009506, there is no canonical definition to state claims against.
-/

/-! ## A009506.P8725539015418126155

`A009507(Δ[n²])`
-/

namespace A009506.P8725539015418126155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009506.P8725539015418126155

/-! ## A009506.P1238724837304186674

`or(2, A009507(A005408(n)))-2`
-/

namespace A009506.P1238724837304186674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A009507 (A005408 n).toNat) - 2

end

end A009506.P1238724837304186674

/-! ## A009506.P17644229116869200669

`or(A009507(A005408(n)), A151811(n))`
-/

namespace A009506.P17644229116869200669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009507 (A005408 n).toNat) (A151811 n)

end

end A009506.P17644229116869200669

/-! ## A009506.P17659234311695357461

`or(A009507(A005408(n)), A151933(n))`
-/

namespace A009506.P17659234311695357461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009507 (A005408 n).toNat) (A151933 n)

end

end A009506.P17659234311695357461

/-! ## A009506.P5457663238215493867

`and(1-A000040(n+1), A009507(A005408(n)))`
-/

namespace A009506.P5457663238215493867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A000040 (n + 1)) (A009507 (A005408 n).toNat)

end

end A009506.P5457663238215493867

/-!
# A009508: Expansion of sin(tan(x))*x.

The programs for A009508, there is no canonical definition to state claims against.
-/

/-! ## A009508.P33388996753319807

`2*A024226(n)`
-/

namespace A009508.P33388996753319807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024226 n

end

end A009508.P33388996753319807

/-! ## A009508.P14352363784478071706

`A024226(n)/2^A008683(A020483(n))`
-/

namespace A009508.P14352363784478071706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024226 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A009508.P14352363784478071706

/-! ## A009508.P4921879590713398417

`A024226(n)+A024226(n)%A096671(n)`
-/

namespace A009508.P4921879590713398417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024226 n + Int.tmod (A024226 n) (A096671 n)

end

end A009508.P4921879590713398417

/-! ## A009508.P83885340900281067

`A024226(A004907(n+1))+A024226(n)`
-/

namespace A009508.P83885340900281067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024226 (A004907 (n + 1)).toNat + A024226 n

end

end A009508.P83885340900281067

/-!
# A009509: Expansion of sin(tan(x))/cos(x).

The programs for A009509, there is no canonical definition to state claims against.
-/

/-! ## A009509.P16133510826865537169

`(-1)^n*A009265(Δ[n²])`
-/

namespace A009509.P16133510826865537169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009509.P16133510826865537169

/-! ## A009509.P13205510191661201830

`A009265(2*n+1)*A033999(n)`
-/

namespace A009509.P13205510191661201830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009265 (2 * n + 1) * A033999 n

end

end A009509.P13205510191661201830

/-! ## A009509.P9886187000797147239

`A009265(A005408(n))/A033999(n)`
-/

namespace A009509.P9886187000797147239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009265 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009509.P9886187000797147239

/-!
# A009510: Expansion of sin(tan(x))/cosh(x).

The programs for A009510, there is no canonical definition to state claims against.
-/

/-! ## A009510.P2017441271458972781

`(-1)^n*A009264(2*n+1)`
-/

namespace A009510.P2017441271458972781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009264 (2 * n + 1)

end

end A009510.P2017441271458972781

/-! ## A009510.P12223226284444050111

`A009264(Δ[n²])*A033999(n)`
-/

namespace A009510.P12223226284444050111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009510.P12223226284444050111

/-! ## A009510.P596896877203480196

`A009264(2*n+1)/A033999(n)`
-/

namespace A009510.P596896877203480196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009264 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A009510.P596896877203480196

/-!
# A009511: Expansion of sin(tan(x)*cosh(x)).

The programs for A009511, there is no canonical definition to state claims against.
-/

/-! ## A009511.P10569935685393610547

`A009267(2*n+1)*A033999(n)`
-/

namespace A009511.P10569935685393610547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009267 (2 * n + 1) * A033999 n

end

end A009511.P10569935685393610547

/-! ## A009511.P6716275778445848468

`A009001(2*n)*A009267(2*n+1)`
-/

namespace A009511.P6716275778445848468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A009267 (2 * n + 1)

end

end A009511.P6716275778445848468

/-!
# A009513: sin(tan(x)*sin(x))=2/2!*x^2+4/4!*x^4-58/6!*x^6-1976/8!*x^8...

The programs for A009513, there is no canonical definition to state claims against.
-/

/-! ## A009513.P5683963757563577742

`2*A024234(n)`
-/

namespace A009513.P5683963757563577742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024234 n

end

end A009513.P5683963757563577742

/-! ## A009513.P10685517373607969458

`A024234(n)+A024234(A055647(n))`
-/

namespace A009513.P10685517373607969458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024234 n + A024234 (A055647 n).toNat

end

end A009513.P10685517373607969458

/-! ## A009513.P3047604584877966098

`A024234(A004896(n+1))+A024234(n)`
-/

namespace A009513.P3047604584877966098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024234 (A004896 (n + 1)).toNat + A024234 n

end

end A009513.P3047604584877966098

/-! ## A009513.P6732429757630911029

`A024234(A004884(n+1))+A024234(n)`
-/

namespace A009513.P6732429757630911029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024234 (A004884 (n + 1)).toNat + A024234 n

end

end A009513.P6732429757630911029

/-!
# A009514: sin(sinh(x)*tan(x))=2/2!*x^2+12/4!*x^4+22/6!*x^6-6888/8!*x^8...

The programs for A009514, there is no canonical definition to state claims against.
-/

/-! ## A009514.P14373367174340455961

`2*A024267(n)`
-/

namespace A009514.P14373367174340455961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024267 n

end

end A009514.P14373367174340455961

/-! ## A009514.P16349717456913380260

`A024267(n)+A024267(A118759(n))`
-/

namespace A009514.P16349717456913380260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024267 n + A024267 (A118759 n).toNat

end

end A009514.P16349717456913380260

/-! ## A009514.P14321211399283518992

`A024267(A323048(n+1))+A024267(n)`
-/

namespace A009514.P14321211399283518992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024267 (A323048 (n + 1)).toNat + A024267 n

end

end A009514.P14321211399283518992

/-! ## A009514.P11822449517618615740

`A024267(A004907(n+1))+A024267(n)`
-/

namespace A009514.P11822449517618615740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024267 (A004907 (n + 1)).toNat + A024267 n

end

end A009514.P11822449517618615740

/-! ## A009514.P11022023406162624093

`A024267(n)+A024267(A120126(n))`
-/

namespace A009514.P11022023406162624093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024267 n + A024267 (A120126 n).toNat

end

end A009514.P11022023406162624093

/-!
# A009515: E.g.f. sin(x*tan(x)) (even powers only).

The programs for A009515, there is no canonical definition to state claims against.
-/

/-! ## A009515.P8816005891274098799

`2*A024248(n)`
-/

namespace A009515.P8816005891274098799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024248 n

end

end A009515.P8816005891274098799

/-! ## A009515.P10749691626254283688

`A024248(A000027(n+1)-1)+A024248(n)`
-/

namespace A009515.P10749691626254283688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024248 (A000027 (n + 1) - 1).toNat + A024248 n

end

end A009515.P10749691626254283688

/-! ## A009515.P3104005704836106361

`A024248(n)+A024248(n)/A001221(A151800(n))`
-/

namespace A009515.P3104005704836106361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024248 n : ℚ) + (A024248 n : ℚ) / (A001221 (A151800 n).toNat : ℚ)

end

end A009515.P3104005704836106361

/-! ## A009515.P9485694983658408286

`A024248(n)+A024248(A055645(n))`
-/

namespace A009515.P9485694983658408286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024248 n + A024248 (A055645 n).toNat

end

end A009515.P9485694983658408286

/-! ## A009515.P1074600003879972730

`A024248(n)+A024248(A062003(n))`
-/

namespace A009515.P1074600003879972730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024248 n + A024248 (A062003 n).toNat

end

end A009515.P1074600003879972730

/-!
# A009516: Expansion of sin(tan(x)/cos(x)).

The programs for A009516, there is no canonical definition to state claims against.
-/

/-! ## A009516.P14184967589131314883

`(-1)^n*A009275(2*n+1)`
-/

namespace A009516.P14184967589131314883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009275 (2 * n + 1)

end

end A009516.P14184967589131314883

/-! ## A009516.P9825866251493048530

`A009275(Δ[n²])*A033999(n)`
-/

namespace A009516.P9825866251493048530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009275 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009516.P9825866251493048530

/-! ## A009516.P14755055086008962210

`A009275(2*n+1)*A009531(2*n+1)`
-/

namespace A009516.P14755055086008962210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009275 (2 * n + 1) * A009531 (2 * n + 1)

end

end A009516.P14755055086008962210

/-!
# A009517: Expansion of sin(tan(x)/cosh(x)).

The programs for A009517, there is no canonical definition to state claims against.
-/

/-! ## A009517.P2892344253741223809

`A009274(2*n+1)*A033999(n)`
-/

namespace A009517.P2892344253741223809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009274 (2 * n + 1) * A033999 n

end

end A009517.P2892344253741223809

/-! ## A009517.P8268137629171694290

`A009274(A005408(n))/A033999(n)`
-/

namespace A009517.P8268137629171694290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009274 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009517.P8268137629171694290

/-!
# A009518: Expansion of e.g.f. sin(tan(x)^2) (even powers only).

The programs for A009518, there is no canonical definition to state claims against.
-/

/-! ## A009518.P16460034755337633541

`2*A024281(n)`
-/

namespace A009518.P16460034755337633541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024281 n

end

end A009518.P16460034755337633541

/-! ## A009518.P1406647226916318750

`A024281(log2(A000079(n)))+A024281(n)`
-/

namespace A009518.P1406647226916318750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024281 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat + A024281 n

end

end A009518.P1406647226916318750

/-! ## A009518.P7778380080099817705

`A024281(n)+A024281(n)^A007318(C(n+2, 2))`
-/

namespace A009518.P7778380080099817705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024281 n : ℚ) + (A024281 n : ℚ) ^ (A007318 (Nat.choose (n + 2) 2) : ℤ)

end

end A009518.P7778380080099817705

/-! ## A009518.P1856231067865993935

`A024281(n)-A024281(n)/A342026(A056957(n+1))`
-/

namespace A009518.P1856231067865993935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024281 n : ℚ) - (A024281 n : ℚ) / (A342026 (A056957 (n + 1)).toNat : ℚ)

end

end A009518.P1856231067865993935

/-! ## A009518.P5225441574463700238

`A024281(n)+A024281(A055645(n))`
-/

namespace A009518.P5225441574463700238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024281 n + A024281 (A055645 n).toNat

end

end A009518.P5225441574463700238

/-!
# A009520: Expansion of sin(tanh(sin(x))).

The programs for A009520, there is no canonical definition to state claims against.
-/

/-! ## A009520.P5810559709166155212

`(-1)^n*A009239(Δ[n²])`
-/

namespace A009520.P5810559709166155212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009520.P5810559709166155212

/-! ## A009520.P5090998375525786634

`A009239(Δ[n²])*A033999(n)`
-/

namespace A009520.P5090998375525786634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009239 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009520.P5090998375525786634

/-! ## A009520.P18210428842945138072

`A009239(2*n+1)*A087960(n²)`
-/

namespace A009520.P18210428842945138072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009239 (2 * n + 1) * A087960 (n ^ 2)

end

end A009520.P18210428842945138072

/-! ## A009520.P3493314179953093224

`A009239(2*n+1)/A087960(2*n)`
-/

namespace A009520.P3493314179953093224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009239 (2 * n + 1) : ℚ) / (A087960 (2 * n) : ℚ)

end

end A009520.P3493314179953093224

/-!
# A009521: Expansion of sin(tanh(tan(x))).

The programs for A009521, there is no canonical definition to state claims against.
-/

/-! ## A009521.P14843840217859729190

`A009241(2*n+1)*A033999(n)`
-/

namespace A009521.P14843840217859729190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (2 * n + 1) * A033999 n

end

end A009521.P14843840217859729190

/-! ## A009521.P3979431463927928982

`A009241(2*n+1)*A062157(n+1)`
-/

namespace A009521.P3979431463927928982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (2 * n + 1) * A062157 (n + 1)

end

end A009521.P3979431463927928982

/-! ## A009521.P14748956485361660603

`A009241(2*n+1)*A056594(2*n)`
-/

namespace A009521.P14748956485361660603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009241 (2 * n + 1) * A056594 (2 * n)

end

end A009521.P14748956485361660603

/-! ## A009521.P126001782308068176

`xor(n-A004442(n+1), A009241(2*n+1))`
-/

namespace A009521.P126001782308068176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A004442 (n + 1)) (A009241 (2 * n + 1))

end

end A009521.P126001782308068176

/-! ## A009521.P15948831058926863614

`A009241(A005408(n))/A033999(n)`
-/

namespace A009521.P15948831058926863614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009241 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009521.P15948831058926863614

/-!
# A009523: Expansion of sin(tanh(x))*cos(x).

The programs for A009523, there is no canonical definition to state claims against.
-/

/-! ## A009523.P6533653243640705701

`A009605(2*n+1)*A033999(n)`
-/

namespace A009523.P6533653243640705701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009605 (2 * n + 1) * A033999 n

end

end A009523.P6533653243640705701

/-! ## A009523.P14495608943744801835

`A009186(2*n+1)*A033999(n+1)`
-/

namespace A009523.P14495608943744801835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009186 (2 * n + 1) * A033999 (n + 1)

end

end A009523.P14495608943744801835

/-! ## A009523.P15833596946888527348

`A009605(2*n+1)*A062157(n+1)`
-/

namespace A009523.P15833596946888527348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009605 (2 * n + 1) * A062157 (n + 1)

end

end A009523.P15833596946888527348

/-!
# A009524: Expansion of e.g.f.: sin(tanh(x))*exp(x).

The programs for A009524, there is no canonical definition to state claims against.
-/

/-! ## A009524.P3844785395601724704

`A009794(n)%p?[floor(C(n, 5)/5)]`
-/

namespace A009524.P3844785395601724704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 5 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009794 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A009524.P3844785395601724704

/-! ## A009524.P9252639149869488270

`A009794(A004868(n+1))`
-/

namespace A009524.P9252639149869488270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009794 (A004868 (n + 1)).toNat

end

end A009524.P9252639149869488270

/-! ## A009524.P3828799598972945894

`A009794(n^A086626(n))`
-/

namespace A009524.P3828799598972945894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009794 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A086626 n : ℤ))).toNat

end

end A009524.P3828799598972945894

/-!
# A009525: Expansion of sin(tanh(x))*x.

The programs for A009525, there is no canonical definition to state claims against.
-/

/-! ## A009525.P11296548866121734223

`2*A024273(n)`
-/

namespace A009525.P11296548866121734223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024273 n

end

end A009525.P11296548866121734223

/-! ## A009525.P15364543800425400661

`A024273(n)+A024273(A118759(n))`
-/

namespace A009525.P15364543800425400661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024273 n + A024273 (A118759 n).toNat

end

end A009525.P15364543800425400661

/-! ## A009525.P4920881506538580451

`A024273(n)+A024273(A292579(n))`
-/

namespace A009525.P4920881506538580451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024273 n + A024273 (A292579 n).toNat

end

end A009525.P4920881506538580451

/-! ## A009525.P9468827855371608457

`A024273(A004885(n+1))+A024273(n)`
-/

namespace A009525.P9468827855371608457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024273 (A004885 (n + 1)).toNat + A024273 n

end

end A009525.P9468827855371608457

/-! ## A009525.P1082330223558335655

`A024273(n)+A024273(A062399(n))`
-/

namespace A009525.P1082330223558335655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024273 n + A024273 (A062399 n).toNat

end

end A009525.P1082330223558335655

/-!
# A009526: Expansion of sin(tanh(x))/cos(x).

The programs for A009526, there is no canonical definition to state claims against.
-/

/-! ## A009526.P13089487156220179774

`A009245(Δ[n²])*A033999(n)`
-/

namespace A009526.P13089487156220179774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009245 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A009526.P13089487156220179774

/-!
# A009527: Expansion of sin(tanh(x)*cos(x)).

The programs for A009527, there is no canonical definition to state claims against.
-/

/-! ## A009527.P15069855845259001569

`(-1)^n*A009247(2*n+1)`
-/

namespace A009527.P15069855845259001569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009247 (2 * n + 1)

end

end A009527.P15069855845259001569

/-! ## A009527.P6203414765505160411

`A009247(2*n+1)*A033999(n)`
-/

namespace A009527.P6203414765505160411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009247 (2 * n + 1) * A033999 n

end

end A009527.P6203414765505160411

/-! ## A009527.P15868305487462158588

`A009247(2*n+1)*A087960(n²)`
-/

namespace A009527.P15868305487462158588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009247 (2 * n + 1) * A087960 (n ^ 2)

end

end A009527.P15868305487462158588

/-! ## A009527.P17246965407662824815

`A009247(A005408(n))/A033999(n)`
-/

namespace A009527.P17246965407662824815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009247 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009527.P17246965407662824815

/-! ## A009527.P167715268848456061

`A009247(A005408(n))/A087960(n²)`
-/

namespace A009527.P167715268848456061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009247 (A005408 n).toNat : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A009527.P167715268848456061

/-!
# A009529: Sin(tanh(x)*tan(x))/2 = Sum a(n)*x^(4*n+2)/(4*n+2)!.

The programs for A009529, there is no canonical definition to state claims against.
-/

/-! ## A009529.P14688720927695388195

`A012667(n)/2`
-/

namespace A009529.P14688720927695388195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012667 n : ℚ) / 2

end

end A009529.P14688720927695388195

/-!
# A009530: Expansion of e.g.f. sin(tanh(x)/cos(x)).

The programs for A009530, there is no canonical definition to state claims against.
-/

/-! ## A009530.P12038229333031058035

`A009254(2*n+1)*A033999(n)`
-/

namespace A009530.P12038229333031058035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009254 (2 * n + 1) * A033999 n

end

end A009530.P12038229333031058035

/-!
# A009531: Expansion of the e.g.f. sin(x)*(1+x).

The programs for A009531, the canonical program `A009531.P14285492072244400176` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009531 has offset 0).

The definition of A009531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009531.P14285492072244400176

`a(n-1)-a(n-2)+(-1)^n*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009531

/-- `a(n-1)-a(n-2)+(-1)^n*a(n-1)` -/
def P14285492072244400176.Spec : Prop :=
  ∀ n, P14285492072244400176.a n = A009531 n

theorem P14285492072244400176.correct : P14285492072244400176.Spec := by
  intro n
  simp only [A009531]

end A009531

/-! ## A009531.P503674627439780874

`ogf((x+2x^2+x^3)/(1+2x^2+x^4))`
-/

namespace A009531.P503674627439780874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1] [1, 0, 2, 0, 1] n

end

end A009531.P503674627439780874

namespace A009531

/-- `ogf((x+2x^2+x^3)/(1+2x^2+x^4))` -/
def P503674627439780874.Spec : Prop :=
  ∀ n, P503674627439780874.a n = A009531 n

end A009531

/-! ## A009531.P3924472535853542576

`2*a(n-1)%2-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A009531.P3924472535853542576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * Int.tmod (a (n - 1)) 2 - a (n - 2)

end

end A009531.P3924472535853542576

namespace A009531

/-- `2*a(n-1)%2-a(n-2)` -/
def P3924472535853542576.Spec : Prop :=
  ∀ n, P3924472535853542576.a n = A009531 n

end A009531

/-! ## A009531.P10880278364801134529

`(4-(a(n-2)+n))%4-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A009531.P10880278364801134529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (4 - (a (n - 2) + (n : ℤ))) 4 - a (n - 2)

end

end A009531.P10880278364801134529

namespace A009531

/-- `(4-(a(n-2)+n))%4-a(n-2)` -/
def P10880278364801134529.Spec : Prop :=
  ∀ n, P10880278364801134529.a n = A009531 n

end A009531

/-! ## A009531.P1402473948709613861

`(4-a(n-2)-n)%4-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A009531.P1402473948709613861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (4 - a (n - 2) - (n : ℤ)) 4 - a (n - 2)

end

end A009531.P1402473948709613861

namespace A009531

/-- `(4-a(n-2)-n)%4-a(n-2)` -/
def P1402473948709613861.Spec : Prop :=
  ∀ n, P1402473948709613861.a n = A009531 n

end A009531

/-! ## A009531.P16372592931647437862

`gcd(4, a(n-2))-(a(n-2)+gcd(4, n))` with `a(0)=0, a(1)=1`
-/

namespace A009531.P16372592931647437862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.gcd 4 (a (n - 2)) : ℤ) - (a (n - 2) + (Nat.gcd 4 n : ℤ))

end

end A009531.P16372592931647437862

namespace A009531

/-- `gcd(4, a(n-2))-(a(n-2)+gcd(4, n))` -/
def P16372592931647437862.Spec : Prop :=
  ∀ n, P16372592931647437862.a n = A009531 n

end A009531

/-! ## A009531.P3039290102377441651

`n/A009001(xor(1, n)+1)`
-/

namespace A009531.P3039290102377441651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A009001 (Nat.xor 1 n + 1) : ℚ)

end

end A009531.P3039290102377441651

namespace A009531

/-- `n/A009001(xor(1, n)+1)` -/
def P3039290102377441651.Spec : Prop :=
  ∀ n, P3039290102377441651.a n = (A009531 n : ℚ)

end A009531

/-! ## A009531.P6946056551889766610

`A181983(n)/A009001(n)`
-/

namespace A009531.P6946056551889766610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181983 n : ℚ) / (A009001 n : ℚ)

end

end A009531.P6946056551889766610

namespace A009531

/-- `A181983(n)/A009001(n)` -/
def P6946056551889766610.Spec : Prop :=
  ∀ n, P6946056551889766610.a n = (A009531 n : ℚ)

end A009531

/-! ## A009531.P12298670998474433643

`∑[A127630(n)]-A127630(n)`
-/

namespace A009531.P12298670998474433643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A127630 n

end

end A009531.P12298670998474433643

namespace A009531

/-- `∑[A127630(n)]-A127630(n)` -/
def P12298670998474433643.Spec : Prop :=
  ∀ n, P12298670998474433643.a n = A009531 n

end A009531

/-! ## A009531.P11501978577888490803

`A056594(n)-A009001(n+1)`
-/

namespace A009531.P11501978577888490803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n - A009001 (n + 1)

end

end A009531.P11501978577888490803

namespace A009531

/-- `A056594(n)-A009001(n+1)` -/
def P11501978577888490803.Spec : Prop :=
  ∀ n, P11501978577888490803.a n = A009531 n

end A009531

/-! ## A009531.P10794645528400402819

`A147658(n+1)-A084099(n)`
-/

namespace A009531.P10794645528400402819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147658 (n + 1) - A084099 n

end

end A009531.P10794645528400402819

namespace A009531

/-- `A147658(n+1)-A084099(n)` -/
def P10794645528400402819.Spec : Prop :=
  ∀ n, P10794645528400402819.a n = A009531 n

end A009531

/-! ## A009531.P4115840344507760909

`n/A009001(A004442(n)+1)`
-/

namespace A009531.P4115840344507760909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A009001 (A004442 n + 1).toNat : ℚ)

end

end A009531.P4115840344507760909

namespace A009531

/-- `n/A009001(A004442(n)+1)` -/
def P4115840344507760909.Spec : Prop :=
  ∀ n, P4115840344507760909.a n = (A009531 n : ℚ)

end A009531

/-! ## A009531.P2616590396148234123

`A147658(n+1)%A141310(n)`
-/

namespace A009531.P2616590396148234123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147658 (n + 1)) (A141310 n)

end

end A009531.P2616590396148234123

namespace A009531

/-- `A147658(n+1)%A141310(n)` -/
def P2616590396148234123.Spec : Prop :=
  ∀ n, P2616590396148234123.a n = A009531 n

end A009531

/-! ## A009531.P3837019108182934145

`A166445(A289207(n))-A166445(n)`
-/

namespace A009531.P3837019108182934145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A289207 n).toNat - A166445 n

end

end A009531.P3837019108182934145

namespace A009531

/-- `A166445(A289207(n))-A166445(n)` -/
def P3837019108182934145.Spec : Prop :=
  ∀ n, P3837019108182934145.a n = A009531 n

end A009531

/-! ## A009531.P15654765294429117113

`A374139(n)-(A166445(n)+A127365(n))`
-/

namespace A009531.P15654765294429117113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 n - (A166445 n + A127365 n)

end

end A009531.P15654765294429117113

namespace A009531

/-- `A374139(n)-(A166445(n)+A127365(n))` -/
def P15654765294429117113.Spec : Prop :=
  ∀ n, P15654765294429117113.a n = A009531 n

end A009531

/-! ## A009531.P1870096669160023000

`A056594(A004442(n))-n*A056594(n)`
-/

namespace A009531.P1870096669160023000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A004442 n).toNat - (n : ℤ) * A056594 n

end

end A009531.P1870096669160023000

namespace A009531

/-- `A056594(A004442(n))-n*A056594(n)` -/
def P1870096669160023000.Spec : Prop :=
  ∀ n, P1870096669160023000.a n = A009531 n

end A009531

/-! ## A009531.P2902100685530266659

`n/(A009001(A004275(n))*A009001(n))`
-/

namespace A009531.P2902100685530266659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A009001 (A004275 n).toNat * A009001 n : ℚ)

end

end A009531.P2902100685530266659

namespace A009531

/-- `n/(A009001(A004275(n))*A009001(n))` -/
def P2902100685530266659.Spec : Prop :=
  ∀ n, P2902100685530266659.a n = (A009531 n : ℚ)

end A009531

/-! ## A009531.P3335250396365070111

`n/(A009001(n)*A009001(A103517(n)))`
-/

namespace A009531.P3335250396365070111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A009001 n * A009001 (A103517 n).toNat : ℚ)

end

end A009531.P3335250396365070111

namespace A009531

/-- `n/(A009001(n)*A009001(A103517(n)))` -/
def P3335250396365070111.Spec : Prop :=
  ∀ n, P3335250396365070111.a n = (A009531 n : ℚ)

end A009531

/-! ## A009531.P3418899919637354243

`and(n, A062157(n))*A062157(A065033(n))`
-/

namespace A009531.P3418899919637354243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A062157 n) * A062157 (A065033 n).toNat

end

end A009531.P3418899919637354243

namespace A009531

/-- `and(n, A062157(n))*A062157(A065033(n))` -/
def P3418899919637354243.Spec : Prop :=
  ∀ n, P3418899919637354243.a n = A009531 n

end A009531

/-! ## A009531.P2924042580123590976

`and(n, A062157(n))*A062157(A110654(n))`
-/

namespace A009531.P2924042580123590976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A062157 n) * A062157 (A110654 n).toNat

end

end A009531.P2924042580123590976

namespace A009531

/-- `and(n, A062157(n))*A062157(A110654(n))` -/
def P2924042580123590976.Spec : Prop :=
  ∀ n, P2924042580123590976.a n = A009531 n

end A009531

/-!
# A009532: Expansion of e.g.f.: sin(x)*cos(log(1+x)).

The programs for A009532, there is no canonical definition to state claims against.
-/

/-! ## A009532.P982533668490525617

`A009632(n)*A031242(A083588(n))`
-/

namespace A009532.P982533668490525617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009632 n * A031242 (A083588 n).toNat

end

end A009532.P982533668490525617

/-!
# A009533: Expansion of sin(x)*cos(sin(x)).

The programs for A009533, there is no canonical definition to state claims against.
-/

/-! ## A009533.P15123121296358279831

`A033999(n)*A081443(Δ[n²])`
-/

namespace A009533.P15123121296358279831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009533.P15123121296358279831

/-! ## A009533.P300394109625483673

`A081443(2*n+1)/A033999(n)`
-/

namespace A009533.P300394109625483673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081443 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A009533.P300394109625483673

/-! ## A009533.P4630484805670404744

`A062157(n+1)*A081443(2*n+1)`
-/

namespace A009533.P4630484805670404744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A081443 (2 * n + 1)

end

end A009533.P4630484805670404744

/-! ## A009533.P17053901080713392432

`A081443(2*n+1)*A257196(n²+1)`
-/

namespace A009533.P17053901080713392432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081443 (2 * n + 1) * A257196 (n ^ 2 + 1)

end

end A009533.P17053901080713392432

/-! ## A009533.P11259012647158042426

`A009152(2*n+1)*A033999(n+1)`
-/

namespace A009533.P11259012647158042426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009152 (2 * n + 1) * A033999 (n + 1)

end

end A009533.P11259012647158042426

/-!
# A009534: Expansion of sin(x)*cos(sinh(x)).

The programs for A009534, there is no canonical definition to state claims against.
-/

/-! ## A009534.P11281149400766472611

`A009145(2*n+1)*A033999(n+1)`
-/

namespace A009534.P11281149400766472611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 (2 * n + 1) * A033999 (n + 1)

end

end A009534.P11281149400766472611

/-! ## A009534.P7059759431285059358

`(-1)^n*A009622(Δ[n²])`
-/

namespace A009534.P7059759431285059358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009534.P7059759431285059358

/-! ## A009534.P9717010095206834434

`A009622(2*n+1)*A033999(n)`
-/

namespace A009534.P9717010095206834434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009622 (2 * n + 1) * A033999 n

end

end A009534.P9717010095206834434

/-! ## A009534.P2266950740407053551

`(A009209(2*n+1)-A009590(2*n+1))*A033999(n+1)`
-/

namespace A009534.P2266950740407053551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009209 (2 * n + 1) - A009590 (2 * n + 1)) * A033999 (n + 1)

end

end A009534.P2266950740407053551

/-! ## A009534.P17541253682029384747

`(A009209(2*n+1)+A009184(2*n+1))*A033999(n+1)`
-/

namespace A009534.P17541253682029384747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009209 (2 * n + 1) + A009184 (2 * n + 1)) * A033999 (n + 1)

end

end A009534.P17541253682029384747

/-!
# A009535: Expansion of e.g.f.: sin(x)*cos(tan(x)).

The programs for A009535, there is no canonical definition to state claims against.
-/

/-! ## A009535.P847580209617736152

`A009170(2*n+1)*A033999(n+1)`
-/

namespace A009535.P847580209617736152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009170 (2 * n + 1) * A033999 (n + 1)

end

end A009535.P847580209617736152

/-! ## A009535.P8984080007276960608

`(-1)^n*A009625(2*n+1)`
-/

namespace A009535.P8984080007276960608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009625 (2 * n + 1)

end

end A009535.P8984080007276960608

/-!
# A009536: Expansion of sin(x)*cos(tanh(x)).

The programs for A009536, there is no canonical definition to state claims against.
-/

/-! ## A009536.P17857171873904740467

`A009161(2*n+1)*A033999(n+1)`
-/

namespace A009536.P17857171873904740467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009161 (2 * n + 1) * A033999 (n + 1)

end

end A009536.P17857171873904740467

/-! ## A009536.P9699079812061059519

`A009161(2*n+1)*A009216(A265859(3*n+5))`
-/

namespace A009536.P9699079812061059519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009161 (2 * n + 1) * A009216 (A265859 (3 * n + 5)).toNat

end

end A009536.P9699079812061059519

/-!
# A009538: Expansion of sin(x)*cosh(sin(x)).

The programs for A009538, there is no canonical definition to state claims against.
-/

/-! ## A009538.P5286287956369687804

`A009541(Δ[n²])`
-/

namespace A009538.P5286287956369687804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009538.P5286287956369687804

/-! ## A009538.P16861295996733938899

`A025439(n)+A009541(A005408(n))`
-/

namespace A009538.P16861295996733938899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A009541 (A005408 n).toNat

end

end A009538.P16861295996733938899

/-! ## A009538.P12637039983087065365

`and(A009541(A005408(n)), A292461(n))`
-/

namespace A009538.P12637039983087065365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009541 (A005408 n).toNat) (A292461 n)

end

end A009538.P12637039983087065365

/-! ## A009538.P2008124979915749750

`A009541(A005408(n))^A001221(A001316(n))`
-/

namespace A009538.P2008124979915749750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009541 (A005408 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A009538.P2008124979915749750

/-!
# A009539: Expansion of sin(x)*cosh(tan(x)).

The programs for A009539, there is no canonical definition to state claims against.
-/

/-! ## A009539.P14284755799595635390

`A009543(Δ[n²])`
-/

namespace A009539.P14284755799595635390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009539.P14284755799595635390

/-! ## A009539.P7608052216844645025

`abs(A009090(2*n+1))`
-/

namespace A009539.P7608052216844645025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009090 (2 * n + 1)|

end

end A009539.P7608052216844645025

/-! ## A009539.P17219208904623706877

`record[A009543(A000265(n+1))]`
-/

namespace A009539.P17219208904623706877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009543 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009539.P17219208904623706877

/-! ## A009539.P1392504630826839186

`or(n, A009543(A005408(n)))-n`
-/

namespace A009539.P1392504630826839186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A009543 (A005408 n).toNat) - (n : ℤ)

end

end A009539.P1392504630826839186

/-! ## A009539.P14123556931894180085

`record[gcd(A009090(n), A047762(n+1))]`
-/

namespace A009539.P14123556931894180085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009090 n) (A047762 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009539.P14123556931894180085

/-!
# A009542: Expansion of e.g.f. sin(x)*exp(sinh(x)).

The programs for A009542, there is no canonical definition to state claims against.
-/

/-! ## A009542.P6848239441383955564

`A065719(A038975(2*n+1)*A300913(n))`
-/

namespace A009542.P6848239441383955564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A038975 (2 * n + 1) * A300913 n).toNat

end

end A009542.P6848239441383955564

/-!
# A009543: Expansion of e.g.f.: sin(x)*exp(tan(x)).

The programs for A009543, there is no canonical definition to state claims against.
-/

/-! ## A009543.P10657350650137528769

`A051162(A030019(n)-A057078(n))`
-/

namespace A009543.P10657350650137528769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A030019 n - A057078 n).toNat

end

end A009543.P10657350650137528769

/-! ## A009543.P1865899741175155923

`A004111(n)*A089696(A102125(n))`
-/

namespace A009543.P1865899741175155923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n * A089696 (A102125 n).toNat

end

end A009543.P1865899741175155923

/-! ## A009543.P12152835594228430658

`A171937(A000984(n)*A087188(n))`
-/

namespace A009543.P12152835594228430658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (A000984 n * A087188 n).toNat

end

end A009543.P12152835594228430658

/-!
# A009545: Expansion of e.g.f. sin(x)*exp(x).

The programs for A009545, the canonical program `A009545.P3649878572304201088` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009545 has offset 0).

The definition of A009545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009545.P3649878572304201088

`2*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009545

/-- `2*a(n-1)-2*a(n-2)` -/
def P3649878572304201088.Spec : Prop :=
  ∀ n, P3649878572304201088.a n = A009545 n

theorem P3649878572304201088.correct : P3649878572304201088.Spec := by
  intro n
  simp only [A009545]

end A009545

/-! ## A009545.P1786897337133377003

`A046978(n)*A016116(n)`
-/

namespace A009545.P1786897337133377003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n * A016116 n

end

end A009545.P1786897337133377003

namespace A009545

/-- `A046978(n)*A016116(n)` -/
def P1786897337133377003.Spec : Prop :=
  ∀ n, P1786897337133377003.a n = A009545 n

end A009545

/-! ## A009545.P148916520818040151

`ogf(x/(1-2x+2x^2))`
-/

namespace A009545.P148916520818040151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 2] n

end

end A009545.P148916520818040151

namespace A009545

/-- `ogf(x/(1-2x+2x^2))` -/
def P148916520818040151.Spec : Prop :=
  ∀ n, P148916520818040151.a n = A009545 n

end A009545

/-! ## A009545.P13356803380317787635

`-(4*a(n-4))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A009545.P13356803380317787635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 2] fun n a =>
  -(4 * a (n - 4))

end

end A009545.P13356803380317787635

namespace A009545

/-- `-(4*a(n-4))` -/
def P13356803380317787635.Spec : Prop :=
  ∀ n, P13356803380317787635.a n = A009545 n

end A009545

/-! ## A009545.P3980201662074433418

`2*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A009545.P3980201662074433418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A009545.P3980201662074433418

namespace A009545

/-- `2*(a(n-1)-a(n-2))` -/
def P3980201662074433418.Spec : Prop :=
  ∀ n, P3980201662074433418.a n = A009545 n

theorem P3980201662074433418.correct : P3980201662074433418.Spec := by
  intro n
  simp only [A009545, Nat.add_sub_cancel, A009545.P3980201662074433418.a, A009545.P3649878572304201088.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A009545

/-! ## A009545.P5080753912042339242

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=0, a(1)=1`
-/

namespace A009545.P5080753912042339242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A009545.P5080753912042339242

namespace A009545

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P5080753912042339242.Spec : Prop :=
  ∀ n, P5080753912042339242.a n = (A009545 n : ℚ)

end A009545

/-! ## A009545.P14815232840405915215

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A009545.P14815232840405915215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A009545.P14815232840405915215

namespace A009545

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P14815232840405915215.Spec : Prop :=
  ∀ n, P14815232840405915215.a n = A009545 n

end A009545

/-! ## A009545.P4289814640835540724

`Δ[-A146559(n)]`
-/

namespace A009545.P4289814640835540724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A009545.P4289814640835540724

namespace A009545

/-- `Δ[-A146559(n)]` -/
def P4289814640835540724.Spec : Prop :=
  ∀ n, P4289814640835540724.a n = A009545 n

end A009545

/-! ## A009545.P2075261140646199755

`A146559(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A009545.P2075261140646199755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A146559 (n - 1) + a (n - 1)

end

end A009545.P2075261140646199755

namespace A009545

/-- `A146559(n-1)+a(n-1)` -/
def P2075261140646199755.Spec : Prop :=
  ∀ n, P2075261140646199755.a n = A009545 n

end A009545

/-! ## A009545.P18129204508209015805

`A046978(n)*A131572(n)`
-/

namespace A009545.P18129204508209015805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n * A131572 n

end

end A009545.P18129204508209015805

namespace A009545

/-- `A046978(n)*A131572(n)` -/
def P18129204508209015805.Spec : Prop :=
  ∀ n, P18129204508209015805.a n = A009545 n

end A009545

/-! ## A009545.P1971418871449103238

`A166486(n)*A320770(n)`
-/

namespace A009545.P1971418871449103238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n * A320770 n

end

end A009545.P1971418871449103238

namespace A009545

/-- `A166486(n)*A320770(n)` -/
def P1971418871449103238.Spec : Prop :=
  ∀ n, P1971418871449103238.a n = A009545 n

end A009545

/-! ## A009545.P10446488060022615120

`A146559(n)-A146559(n+1)`
-/

namespace A009545.P10446488060022615120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n - A146559 (n + 1)

end

end A009545.P10446488060022615120

namespace A009545

/-- `A146559(n)-A146559(n+1)` -/
def P10446488060022615120.Spec : Prop :=
  ∀ n, P10446488060022615120.a n = A009545 n

end A009545

/-! ## A009545.P1694586334067110447

`A046978(n)*A158780(n+2)`
-/

namespace A009545.P1694586334067110447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n * A158780 (n + 2)

end

end A009545.P1694586334067110447

namespace A009545

/-- `A046978(n)*A158780(n+2)` -/
def P1694586334067110447.Spec : Prop :=
  ∀ n, P1694586334067110447.a n = A009545 n

end A009545

/-! ## A009545.P2475702370663138176

`floor(A106664(n+1)/2)`
-/

namespace A009545.P2475702370663138176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106664 (n + 1) : ℚ) / 2⌋

end

end A009545.P2475702370663138176

namespace A009545

/-- `floor(A106664(n+1)/2)` -/
def P2475702370663138176.Spec : Prop :=
  ∀ n, P2475702370663138176.a n = A009545 n

end A009545

/-! ## A009545.P7000028152074975968

`(∑[A099087(n)]-1)/2`
-/

namespace A009545.P7000028152074975968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A009545.P7000028152074975968

namespace A009545

/-- `(∑[A099087(n)]-1)/2` -/
def P7000028152074975968.Spec : Prop :=
  ∀ n, P7000028152074975968.a n = (A009545 n : ℚ)

end A009545

/-! ## A009545.P12792530880358496382

`A099087(n)-A146559(n)`
-/

namespace A009545.P12792530880358496382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n - A146559 n

end

end A009545.P12792530880358496382

namespace A009545

/-- `A099087(n)-A146559(n)` -/
def P12792530880358496382.Spec : Prop :=
  ∀ n, P12792530880358496382.a n = A009545 n

end A009545

/-! ## A009545.P18220847093348335128

`A320770(n)%A279676(n)`
-/

namespace A009545.P18220847093348335128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320770 n) (A279676 n)

end

end A009545.P18220847093348335128

namespace A009545

/-- `A320770(n)%A279676(n)` -/
def P18220847093348335128.Spec : Prop :=
  ∀ n, P18220847093348335128.a n = A009545 n

end A009545

/-! ## A009545.P4340471879177601717

`(A106664(n+1)-A000035(n+1))/2`
-/

namespace A009545.P4340471879177601717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106664 (n + 1) - A000035 (n + 1) : ℚ) / 2

end

end A009545.P4340471879177601717

namespace A009545

/-- `(A106664(n+1)-A000035(n+1))/2` -/
def P4340471879177601717.Spec : Prop :=
  ∀ n, P4340471879177601717.a n = (A009545 n : ℚ)

end A009545

/-! ## A009545.P8937457374174208339

`A099087(A263313(n))`
-/

namespace A009545.P8937457374174208339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (A263313 n).toNat

end

end A009545.P8937457374174208339

namespace A009545

/-- `A099087(A263313(n))` -/
def P8937457374174208339.Spec : Prop :=
  ∀ n, P8937457374174208339.a n = A009545 n

end A009545

/-! ## A009545.P3542221396373093650

`(A077860(n)-1)/2`
-/

namespace A009545.P3542221396373093650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077860 n - 1 : ℚ) / 2

end

end A009545.P3542221396373093650

namespace A009545

/-- `(A077860(n)-1)/2` -/
def P3542221396373093650.Spec : Prop :=
  ∀ n, P3542221396373093650.a n = (A009545 n : ℚ)

end A009545

/-!
# A009546: Expansion of e.g.f. sin(x)*sin(sin(x)) (even powers only).

The programs for A009546, there is no canonical definition to state claims against.
-/

/-! ## A009546.P6412911685483097491

`2*A024270(n)`
-/

namespace A009546.P6412911685483097491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024270 n

end

end A009546.P6412911685483097491

/-! ## A009546.P11556488397317468826

`A009598(2*n)*A062157(n)`
-/

namespace A009546.P11556488397317468826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009598 (2 * n) * A062157 n

end

end A009546.P11556488397317468826

/-! ## A009546.P3744123477858963106

`A024270(n)+A024270(n)/A007318(C(3, n))`
-/

namespace A009546.P3744123477858963106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024270 n : ℚ) + (A024270 n : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A009546.P3744123477858963106

/-! ## A009546.P16667682321188518790

`A024270(n)+A024270(n)^A007318(C(2, n))`
-/

namespace A009546.P16667682321188518790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024270 n : ℚ) + (A024270 n : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A009546.P16667682321188518790

/-! ## A009546.P13693533392779976519

`A024270(n)+A024270(n)/A020639(ceil(1/(n+1)))`
-/

namespace A009546.P13693533392779976519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024270 n : ℚ) + (A024270 n : ℚ) / (A020639 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A009546.P13693533392779976519

/-!
# A009547: Expansion of e.g.f. sin(x)*sin(sinh(x)) (even powers only).

The programs for A009547, there is no canonical definition to state claims against.
-/

/-! ## A009547.P17055512037718152518

`-(A009590(2*n)*A033999(n))`
-/

namespace A009547.P17055512037718152518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A009590 (2 * n) * A033999 n)

end

end A009547.P17055512037718152518

/-! ## A009547.P1540957509477883462

`A009590(2*n)*A033999(n+1)`
-/

namespace A009547.P1540957509477883462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 (2 * n) * A033999 (n + 1)

end

end A009547.P1540957509477883462

/-! ## A009547.P6795768109210557062

`A009590(2*n)*A087960((n+1)²)`
-/

namespace A009547.P6795768109210557062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009590 (2 * n) * A087960 ((n + 1) ^ 2)

end

end A009547.P6795768109210557062

/-! ## A009547.P16606145359335175249

`A009590(2*n)/A087960(A103517(n))`
-/

namespace A009547.P16606145359335175249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009590 (2 * n) : ℚ) / (A087960 (A103517 n).toNat : ℚ)

end

end A009547.P16606145359335175249

/-! ## A009547.P5064734676305572543

`A009590(2*n)/A087960(A005843(n+1))`
-/

namespace A009547.P5064734676305572543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009590 (2 * n) : ℚ) / (A087960 (A005843 (n + 1)).toNat : ℚ)

end

end A009547.P5064734676305572543

/-!
# A009548: Expansion of e.g.f. sin(x)*sin(tan(x)) (even powers only).

The programs for A009548, there is no canonical definition to state claims against.
-/

/-! ## A009548.P73212547831998635

`2*A024301(n)`
-/

namespace A009548.P73212547831998635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024301 n

end

end A009548.P73212547831998635

/-! ## A009548.P16492907595066837013

`A009072(n)-A009505(n)`
-/

namespace A009548.P16492907595066837013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009072 n - A009505 n

end

end A009548.P16492907595066837013

/-! ## A009548.P2118965110733854695

`A024301(n)+A024301(A292579(n))`
-/

namespace A009548.P2118965110733854695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024301 n + A024301 (A292579 n).toNat

end

end A009548.P2118965110733854695

/-! ## A009548.P13760397199862638988

`A024301(A002837(n+1))+A024301(n)`
-/

namespace A009548.P13760397199862638988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024301 (A002837 (n + 1)).toNat + A024301 n

end

end A009548.P13760397199862638988

/-! ## A009548.P12152684354138414522

`A024301(n)+A024301(A055645(n))`
-/

namespace A009548.P12152684354138414522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024301 n + A024301 (A055645 n).toNat

end

end A009548.P12152684354138414522

/-!
# A009549: Expansion of e.g.f. sin(x)*sin(tanh(x)) (even powers only).

The programs for A009549, there is no canonical definition to state claims against.
-/

/-! ## A009549.P10637426543270939369

`2*A024284(n)`
-/

namespace A009549.P10637426543270939369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024284 n

end

end A009549.P10637426543270939369

/-! ## A009549.P588950953672958129

`A009605(2*n)*A062157(n)`
-/

namespace A009549.P588950953672958129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009605 (2 * n) * A062157 n

end

end A009549.P588950953672958129

/-! ## A009549.P16571859618571042082

`A009605(2*n)*A033999(n+1)`
-/

namespace A009549.P16571859618571042082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009605 (2 * n) * A033999 (n + 1)

end

end A009549.P16571859618571042082

/-! ## A009549.P16276156407477868183

`A024284(A002837(n+1))+A024284(n)`
-/

namespace A009549.P16276156407477868183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024284 (A002837 (n + 1)).toNat + A024284 n

end

end A009549.P16276156407477868183

/-! ## A009549.P30986684297059725

`A024284(n)+A024284(A055645(n))`
-/

namespace A009549.P30986684297059725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024284 n + A024284 (A055645 n).toNat

end

end A009549.P30986684297059725

/-!
# A009550: "Pascal sweep" for k=10: draw a horizontal line through the 1 at C(k,0) in Pascal's triangle; rotate this line and record the sum of the numbers on it (excluding the initial 1).

The programs for A009550, there is no canonical definition to state claims against.
-/

/-! ## A009550.P12461491038717873135

`∑{p}[C(A053088(n), 10)-11, C(#, n)]`
-/

namespace A009550.P12461491038717873135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A053088 n).toNat 10 : ℤ) - 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p n

end

end A009550.P12461491038717873135

/-!
# A009551: Expansion of sin(x)/(1-x).

The programs for A009551, the canonical program `A009551.P9094467951328090163` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009551 has offset 0).

The definition of A009551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009551.P9094467951328090163

`n*a(n-1)-a(n-2)+(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A009551

/-- `n*a(n-1)-a(n-2)+(n-2)*a(n-3)` -/
def P9094467951328090163.Spec : Prop :=
  ∀ n, P9094467951328090163.a n = A009551 n

theorem P9094467951328090163.correct : P9094467951328090163.Spec := by
  intro n
  simp only [A009551]

end A009551

/-! ## A009551.P13801108516914294521

`n*a(n-1)+1-a(n-1)%4` with `a(0)=0`
-/

namespace A009551.P13801108516914294521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + (1 - Int.tmod (a (n - 1)) 4)

end

end A009551.P13801108516914294521

namespace A009551

/-- `n*a(n-1)+1-a(n-1)%4` -/
def P13801108516914294521.Spec : Prop :=
  ∀ n, P13801108516914294521.a n = A009551 n

end A009551

/-! ## A009551.P10090591214860651786

`1-(floor(a(n-1))%4-n*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A009551.P10090591214860651786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (Int.tmod (a (n - 1)) 4 - (n : ℤ) * a (n - 1))

end

end A009551.P10090591214860651786

namespace A009551

/-- `1-(floor(a(n-1))%4-n*a(n-1))` -/
def P10090591214860651786.Spec : Prop :=
  ∀ n, P10090591214860651786.a n = A009551 n

end A009551

/-! ## A009551.P11843563705025053149

`n!-A186359(n)`
-/

namespace A009551.P11843563705025053149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A186359 n

end

end A009551.P11843563705025053149

namespace A009551

/-- `n!-A186359(n)` -/
def P11843563705025053149.Spec : Prop :=
  ∀ n, P11843563705025053149.a n = A009551 n

end A009551

/-! ## A009551.P10523268346588426461

`A117569(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A009551.P10523268346588426461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A117569 n + (n : ℤ) * a (n - 1)

end

end A009551.P10523268346588426461

namespace A009551

/-- `A117569(n)+n*a(n-1)` -/
def P10523268346588426461.Spec : Prop :=
  ∀ n, P10523268346588426461.a n = A009551 n

end A009551

/-! ## A009551.P14337575190678640230

`n*a(n-1)-A163805(n)` with `a(0)=0`
-/

namespace A009551.P14337575190678640230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) - A163805 n

end

end A009551.P14337575190678640230

namespace A009551

/-- `n*a(n-1)-A163805(n)` -/
def P14337575190678640230.Spec : Prop :=
  ∀ n, P14337575190678640230.a n = A009551 n

end A009551

/-! ## A009551.P1038321599679241120

`n*a(n-1)-A056594(n+1)` with `a(0)=0`
-/

namespace A009551.P1038321599679241120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) - A056594 (n + 1)

end

end A009551.P1038321599679241120

namespace A009551

/-- `n*a(n-1)-A056594(n+1)` -/
def P1038321599679241120.Spec : Prop :=
  ∀ n, P1038321599679241120.a n = A009551 n

end A009551

/-! ## A009551.P11101061519285407331

`or(n*a(n-1), A176895(2*n))-1` with `a(0)=0`
-/

namespace A009551.P11101061519285407331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor ((n : ℤ) * a (n - 1)) (A176895 (2 * n)) - 1

end

end A009551.P11101061519285407331

namespace A009551

/-- `or(n*a(n-1), A176895(2*n))-1` -/
def P11101061519285407331.Spec : Prop :=
  ∀ n, P11101061519285407331.a n = A009551 n

end A009551

/-! ## A009551.P4693102878062406729

`∏[A028310(n)]-A186359(n)`
-/

namespace A009551.P4693102878062406729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A186359 n

end

end A009551.P4693102878062406729

namespace A009551

/-- `∏[A028310(n)]-A186359(n)` -/
def P4693102878062406729.Spec : Prop :=
  ∀ n, P4693102878062406729.a n = A009551 n

end A009551

/-! ## A009551.P6035277438249199630

`A068106(A000096(n))-A186359(n)`
-/

namespace A009551.P6035277438249199630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n).toNat - A186359 n

end

end A009551.P6035277438249199630

namespace A009551

/-- `A068106(A000096(n))-A186359(n)` -/
def P6035277438249199630.Spec : Prop :=
  ∀ n, P6035277438249199630.a n = A009551 n

end A009551

/-!
# A009553: Expansion of e.g.f. sin(x)/cos(sin(x)) (odd powers only).

The programs for A009553, there is no canonical definition to state claims against.
-/

/-! ## A009553.P4276597965420794189

`A009296(2*n+1)*A033999(n)`
-/

namespace A009553.P4276597965420794189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009296 (2 * n + 1) * A033999 n

end

end A009553.P4276597965420794189

/-! ## A009553.P7256169836911870628

`A009296(2*n+1)*A062157(n+1)`
-/

namespace A009553.P7256169836911870628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009296 (2 * n + 1) * A062157 (n + 1)

end

end A009553.P7256169836911870628

/-!
# A009554: Expansion of e.g.f. sin(x)/cos(sinh(x)) (odd powers only).

The programs for A009554, there is no canonical definition to state claims against.
-/

/-! ## A009554.P9844748210370043944

`abs(A009295(2*n+1))`
-/

namespace A009554.P9844748210370043944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009295 (2 * n + 1)|

end

end A009554.P9844748210370043944

/-! ## A009554.P12883327362285736791

`record[abs(A009295(A004274(n)))]`
-/

namespace A009554.P12883327362285736791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009295 (A004274 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009554.P12883327362285736791

/-! ## A009554.P16929436740141055373

`record[abs(A009295(A141310(n)))]`
-/

namespace A009554.P16929436740141055373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009295 (A141310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009554.P16929436740141055373

/-! ## A009554.P2192092062881443597

`record[abs(A009295(A065190(n+1)))]`
-/

namespace A009554.P2192092062881443597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009295 (A065190 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009554.P2192092062881443597

/-! ## A009554.P12544401380344936589

`A009295(2*n+1)*A033999(n)`
-/

namespace A009554.P12544401380344936589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009295 (2 * n + 1) * A033999 n

end

end A009554.P12544401380344936589

/-!
# A009555: Expansion of e.g.f. sin(x)/cos(tan(x)) (odd powers only).

The programs for A009555, there is no canonical definition to state claims against.
-/

/-! ## A009555.P1781675455708650148

`abs(A009298(2*n+1))`
-/

namespace A009555.P1781675455708650148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009298 (2 * n + 1)|

end

end A009555.P1781675455708650148

/-! ## A009555.P6101389425770842303

`record[abs(A009298(A004274(n)))]`
-/

namespace A009555.P6101389425770842303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009298 (A004274 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009555.P6101389425770842303

/-! ## A009555.P7619083741466655517

`record[abs(A009298(A004442(n)))]`
-/

namespace A009555.P7619083741466655517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009298 (A004442 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009555.P7619083741466655517

/-! ## A009555.P18287754570232532060

`record[abs(A009298(A141310(n)))]`
-/

namespace A009555.P18287754570232532060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009298 (A141310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009555.P18287754570232532060

/-! ## A009555.P12297541322899943478

`record[gcd(A009298(n), A135685(n))]`
-/

namespace A009555.P12297541322899943478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009298 n) (A135685 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009555.P12297541322899943478

/-!
# A009556: Expansion of e.g.f. sin(x)/cos(tanh(x)) (odd powers only).

The programs for A009556, there is no canonical definition to state claims against.
-/

/-! ## A009556.P17032181412593355156

`A009297(2*n+1)*A033999(n)`
-/

namespace A009556.P17032181412593355156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 (2 * n + 1) * A033999 n

end

end A009556.P17032181412593355156

/-! ## A009556.P11415481623739961935

`A009297(2*n+1)*A087960(n²)`
-/

namespace A009556.P11415481623739961935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 (2 * n + 1) * A087960 (n ^ 2)

end

end A009556.P11415481623739961935

/-! ## A009556.P11822287175057386701

`A009297(2*n+1)*A062157(n+1)`
-/

namespace A009556.P11822287175057386701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009297 (2 * n + 1) * A062157 (n + 1)

end

end A009556.P11822287175057386701

/-! ## A009556.P6976434689413158398

`A009297(A005408(n))/A033999(n)`
-/

namespace A009556.P6976434689413158398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009297 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009556.P6976434689413158398

/-! ## A009556.P1424812718910808707

`A009297(A005408(n))/A062157(n+1)`
-/

namespace A009556.P1424812718910808707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009297 (A005408 n).toNat : ℚ) / (A062157 (n + 1) : ℚ)

end

end A009556.P1424812718910808707

/-!
# A009558: Expansion of e.g.f. sin(x)/cosh(sin(x)) (odd powers only).

The programs for A009558, there is no canonical definition to state claims against.
-/

/-! ## A009558.P7927887153784080664

`A009290(2*n+1)*A033999(n)`
-/

namespace A009558.P7927887153784080664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009290 (2 * n + 1) * A033999 n

end

end A009558.P7927887153784080664

/-! ## A009558.P18166266403552901603

`A009290(2*n+1)*A009531(2*n+1)`
-/

namespace A009558.P18166266403552901603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009290 (2 * n + 1) * A009531 (2 * n + 1)

end

end A009558.P18166266403552901603

/-! ## A009558.P11815667165133325678

`A009290(A005843(n)+1)/A033999(n)`
-/

namespace A009558.P11815667165133325678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009290 (A005843 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A009558.P11815667165133325678

/-!
# A009559: Expansion of e.g.f. sin(x)/cosh(tan(x)) (odd powers only).

The programs for A009559, there is no canonical definition to state claims against.
-/

/-! ## A009559.P8616775853657627498

`(-1)^n*A009292(2*n+1)`
-/

namespace A009559.P8616775853657627498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009292 (2 * n + 1)

end

end A009559.P8616775853657627498

/-! ## A009559.P7316801769907453341

`A009292(2*n+1)*A033999(n)`
-/

namespace A009559.P7316801769907453341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009292 (2 * n + 1) * A033999 n

end

end A009559.P7316801769907453341

/-! ## A009559.P11326073195752435146

`A009292(2*n+1)*A165326(n+1)`
-/

namespace A009559.P11326073195752435146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009292 (2 * n + 1) * A165326 (n + 1)

end

end A009559.P11326073195752435146

/-! ## A009559.P7265237445597478259

`A009292(2*n+1)*A009531(2*n+1)`
-/

namespace A009559.P7265237445597478259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009292 (2 * n + 1) * A009531 (2 * n + 1)

end

end A009559.P7265237445597478259

/-! ## A009559.P16325331617054282343

`A009292(A005408(n))/A033999(n)`
-/

namespace A009559.P16325331617054282343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009292 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A009559.P16325331617054282343

/-!
# A009561: Index of central binomial coefficient C(2n,n) within A006987.

The programs for A009561, there is no canonical definition to state claims against.
-/

/-! ## A009561.P18066891945826535297

`A327598(n+2)-A328114(A055071(n+3))`
-/

namespace A009561.P18066891945826535297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327598 (n + 2) - A328114 (A055071 (n + 3)).toNat

end

end A009561.P18066891945826535297

/-! ## A009561.P2709658305791901814

`A266648(2*(n+1))-A000120(A323611(n+1))`
-/

namespace A009561.P2709658305791901814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266648 (2 * (n + 1)) - A000120 (A323611 (n + 1)).toNat

end

end A009561.P2709658305791901814

/-!
# A009562: Expansion of e.g.f. sin(x/cos(x)) (odd powers only).

The programs for A009562, there is no canonical definition to state claims against.
-/

/-! ## A009562.P24555517104439462

`A009301(2*n+1)*A033999(n)`
-/

namespace A009562.P24555517104439462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009301 (2 * n + 1) * A033999 n

end

end A009562.P24555517104439462

/-! ## A009562.P789503420696833107

`A009301(2*n+1)*A062157(n+1)`
-/

namespace A009562.P789503420696833107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009301 (2 * n + 1) * A062157 (n + 1)

end

end A009562.P789503420696833107

/-!
# A009563: Expansion of e.g.f. sin(x/cosh(x)) (odd powers only).

The programs for A009563, there is no canonical definition to state claims against.
-/

/-! ## A009563.P12886826341554159742

`A009300(Δ[n²])/(-1)^n`
-/

namespace A009563.P12886826341554159742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009300 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A009563.P12886826341554159742

/-! ## A009563.P12953995686636895683

`(-1)^n*A009300(2*n+1)`
-/

namespace A009563.P12953995686636895683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009300 (2 * n + 1)

end

end A009563.P12953995686636895683

/-! ## A009563.P1777927423190872059

`A009300(2*n+1)*A033999(n)`
-/

namespace A009563.P1777927423190872059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009300 (2 * n + 1) * A033999 n

end

end A009563.P1777927423190872059

/-!
# A009564: E.g.f. sin(x^2)/2, coefficients of x^(4*n + 2).

The programs for A009564, the canonical program `A009564.P8166319740607794705` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A009564 has offset 0).

The definition of A009564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A009564.P8166319740607794705

`A024343(n)/2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A009564

/-- `A024343(n)/2` -/
def P8166319740607794705.Spec : Prop :=
  ∀ n, P8166319740607794705.a n = (A009564 n : ℚ)

end A009564

/-! ## A009564.P7693369083213727244

`(4-(8*n)²)*a(n-1)` with `a(0)=1`
-/

namespace A009564.P7693369083213727244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 - ((8 * n) ^ 2 : ℤ)) * a (n - 1)

end

end A009564.P7693369083213727244

namespace A009564

/-- `(4-(8*n)²)*a(n-1)` -/
def P7693369083213727244.Spec : Prop :=
  ∀ n, P7693369083213727244.a n = A009564 n

end A009564

/-! ## A009564.P6469723252736998378

`(-1)^n*A000407(2*n)`
-/

namespace A009564.P6469723252736998378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000407 (2 * n)

end

end A009564.P6469723252736998378

namespace A009564

/-- `(-1)^n*A000407(2*n)` -/
def P6469723252736998378.Spec : Prop :=
  ∀ n, P6469723252736998378.a n = A009564 n

end A009564

/-! ## A009564.P3909783836343055829

`(-1)^n*A001813(2*n+1)/2`
-/

namespace A009564.P3909783836343055829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A001813 (2 * n + 1) : ℚ) / 2

end

end A009564.P3909783836343055829

namespace A009564

/-- `(-1)^n*A001813(2*n+1)/2` -/
def P3909783836343055829.Spec : Prop :=
  ∀ n, P3909783836343055829.a n = (A009564 n : ℚ)

end A009564

/-! ## A009564.P15657610630054192917

`A000407(2*n)*A033999(n)`
-/

namespace A009564.P15657610630054192917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 (2 * n) * A033999 n

end

end A009564.P15657610630054192917

namespace A009564

/-- `A000407(2*n)*A033999(n)` -/
def P15657610630054192917.Spec : Prop :=
  ∀ n, P15657610630054192917.a n = A009564 n

end A009564

/-!
# A009565: Expansion of e.g.f. sinh(exp(x)*x).

The programs for A009565, there is no canonical definition to state claims against.
-/

/-! ## A009565.P4105322029857011133

`A000248(n)-A009121(n)`
-/

namespace A009565.P4105322029857011133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n - A009121 n

end

end A009565.P4105322029857011133

/-! ## A009565.P11191095737956097660

`(A000248(n)-A292952(n))/2`
-/

namespace A009565.P11191095737956097660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000248 n - A292952 n : ℚ) / 2

end

end A009565.P11191095737956097660

/-! ## A009565.P286341937849634860

`A235596(n+1)+1-A009121(n)`
-/

namespace A009565.P286341937849634860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235596 (n + 1) + (1 - A009121 n)

end

end A009565.P286341937849634860

/-! ## A009565.P14664256213888528103

`A145460(∑[n+2]-1)-A009121(n)`
-/

namespace A009565.P14664256213888528103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A009121 n

end

end A009565.P14664256213888528103

/-! ## A009565.P6911545364034869549

`A143398(A133263(n)-1)-A009121(n)`
-/

namespace A009565.P6911545364034869549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A133263 n - 1).toNat - A009121 n

end

end A009565.P6911545364034869549

/-! ## A009565.P3529541588646899150

`A052512(n+1)/(n+1)-A009121(n)`
-/

namespace A009565.P3529541588646899150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052512 (n + 1) : ℚ) / (n + 1 : ℚ) - (A009121 n : ℚ)

end

end A009565.P3529541588646899150

/-! ## A009565.P7898346147588047626

`A292978(∑[n+2]-1)-A009121(n)`
-/

namespace A009565.P7898346147588047626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A009121 n

end

end A009565.P7898346147588047626

/-! ## A009565.P13526780659914146377

`A143397(A000096(n))-A009121(n)`
-/

namespace A009565.P13526780659914146377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143397 (A000096 n).toNat - A009121 n

end

end A009565.P13526780659914146377

/-! ## A009565.P15668483593867688631

`A210725(∑[n-1]+3)-A009121(n)`
-/

namespace A009565.P15668483593867688631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210725 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat - A009121 n

end

end A009565.P15668483593867688631

/-!
# A009566: Expansion of e.g.f. sinh(log(1+log(1+x))).

The programs for A009566, there is no canonical definition to state claims against.
-/

/-! ## A009566.P2829756457018964263

`A034887(A355206(n+1))*A062157(n)`
-/

namespace A009566.P2829756457018964263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A355206 (n + 1)).toNat * A062157 n

end

end A009566.P2829756457018964263

/-!
# A009567: Expansion of e.g.f.: sinh(log(1 + sin(x))).

The programs for A009567, there is no canonical definition to state claims against.
-/

/-! ## A009567.P2715693032874364087

`A117569(n)-A009123(n)`
-/

namespace A009567.P2715693032874364087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n - A009123 n

end

end A009567.P2715693032874364087

/-! ## A009567.P8943053146615652884

`A346838(n+1)+A009123(n)`
-/

namespace A009567.P8943053146615652884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346838 (n + 1) + A009123 n

end

end A009567.P8943053146615652884

/-! ## A009567.P1233212603844783925

`A155585(n)/A000111(n)-A009123(n)`
-/

namespace A009567.P1233212603844783925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155585 n : ℚ) / (A000111 n : ℚ) - (A009123 n : ℚ)

end

end A009567.P1233212603844783925

/-! ## A009567.P16275870143922094489

`A117569(n)+A009123(n)*A153881(A044325(n+1))`
-/

namespace A009567.P16275870143922094489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n + A009123 n * A153881 (A044325 (n + 1)).toNat

end

end A009567.P16275870143922094489

/-! ## A009567.P1079455080747005928

`A117569(n)-A033999(n)*A110654(A029584(n+1))`
-/

namespace A009567.P1079455080747005928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n - A033999 n * A110654 (A029584 (n + 1)).toNat

end

end A009567.P1079455080747005928

/-!
# A009568: Expansion of e.g.f.: sinh(log(1+sinh(x))).

The programs for A009568, there is no canonical definition to state claims against.
-/

/-! ## A009568.P540550279229346958

`abs(A073097(n))-A009124(n)`
-/

namespace A009568.P540550279229346958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073097 n| - A009124 n

end

end A009568.P540550279229346958

/-! ## A009568.P5788805486372936248

`char[A004273(n)]-A009124(n)`
-/

namespace A009568.P5788805486372936248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009124 n

end

end A009568.P5788805486372936248

/-! ## A009568.P8127750343769277021

`char[A176447(n)]-A009124(n)`
-/

namespace A009568.P8127750343769277021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A009124 n

end

end A009568.P8127750343769277021

/-! ## A009568.P10800384320064966320

`n%2-A009124(A007318(∑[n]+1))`
-/

namespace A009568.P10800384320064966320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - A009124 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A009568.P10800384320064966320

/-! ## A009568.P16959497502080332168

`A000035(A008486(n))-A009124(n)`
-/

namespace A009568.P16959497502080332168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008486 n).toNat - A009124 n

end

end A009568.P16959497502080332168

/-! ## A009568.P17366836016339525107

`A000035(n)-A009124(A028310(n))`
-/

namespace A009568.P17366836016339525107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A009124 (A028310 n).toNat

end

end A009568.P17366836016339525107

/-!
# A009569: Expansion of e.g.f. sinh(log(1+tan(x))).

The programs for A009569, there is no canonical definition to state claims against.
-/

/-! ## A009569.P2640755735100008390

`A009006(n)-A009125(n)`
-/

namespace A009569.P2640755735100008390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n - A009125 n

end

end A009569.P2640755735100008390

/-! ## A009569.P3465297057459779206

`abs(A155585(n))-A009125(n)`
-/

namespace A009569.P3465297057459779206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155585 n| - A009125 n

end

end A009569.P3465297057459779206

/-! ## A009569.P9867449406689978196

`A008280(∑[n]+n)-A009125(n)`
-/

namespace A009569.P9867449406689978196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A009125 n

end

end A009569.P9867449406689978196

/-!
# A009570: Expansion of e.g.f. sinh(log(1+tanh(x))).

The programs for A009570, there is no canonical definition to state claims against.
-/

/-! ## A009570.P930369958230507322

`A155585(n)-A009126(n)`
-/

namespace A009570.P930369958230507322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155585 n - A009126 n

end

end A009570.P930369958230507322

/-! ## A009570.P17106125653622739426

`A009126(n)-A117575(2*n)`
-/

namespace A009570.P17106125653622739426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009126 n - A117575 (2 * n)

end

end A009570.P17106125653622739426

/-! ## A009570.P17743543527559828459

`(1-and(2, n))*A108040(∑[n])-A009126(n)`
-/

namespace A009570.P17743543527559828459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A108040 (∑ j ∈ Finset.range (n + 1), f1 j) - A009126 n

end

end A009570.P17743543527559828459

/-! ## A009570.P14065293178139577073

`A122045(n)-(A163747(n)+A009126(n))`
-/

namespace A009570.P14065293178139577073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - (A163747 n + A009126 n)

end

end A009570.P14065293178139577073

/-! ## A009570.P14897191381644605445

`A009006(n)*A057077(n)-A009126(n)`
-/

namespace A009570.P14897191381644605445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n * A057077 n - A009126 n

end

end A009570.P14897191381644605445

/-! ## A009570.P9265285253596162713

`A323833(∑[n])+A122045(n)-A009126(n)`
-/

namespace A009570.P9265285253596162713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (∑ j ∈ Finset.range (n + 1), f1 j) + A122045 n - A009126 n

end

end A009570.P9265285253596162713

/-! ## A009570.P2519518099879126780

`A084623(n+1)*A198631(n)-A009126(n)`
-/

namespace A009570.P2519518099879126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 1) * A198631 n - A009126 n

end

end A009570.P2519518099879126780

/-! ## A009570.P3387518859982613698

`A009006(n)*A033999(A004526(n))-A009126(n)`
-/

namespace A009570.P3387518859982613698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009006 n * A033999 (A004526 n).toNat - A009126 n

end

end A009570.P3387518859982613698

/-!
# A009571: Least m such that if a/b < c/d are Farey fractions of order n then there exists k such that a/b < k/m < c/d, k/m reduced.

The programs for A009571, there is no canonical definition to state claims against.
-/

/-! ## A009571.P562661559720795062

`p?[round(root(A175662(n+1), 6))]`
-/

namespace A009571.P562661559720795062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175662 (n + 1) : ℝ) ^ (1 / (6 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A009571.P562661559720795062

/-! ## A009571.P13047808802096249642

`p?[∑[A102820(A275090(n+1))]]`
-/

namespace A009571.P13047808802096249642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (A275090 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A009571.P13047808802096249642

/-! ## A009571.P8496398188022124280

`A334593(A007051(n))+A250068(n+1)`
-/

namespace A009571.P8496398188022124280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334593 (A007051 n).toNat + A250068 (n + 1)

end

end A009571.P8496398188022124280

/-! ## A009571.P10144033454367454340

`A382876(n+1)+A334593(A007051(n))`
-/

namespace A009571.P10144033454367454340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382876 (n + 1) + A334593 (A007051 n).toNat

end

end A009571.P10144033454367454340

/-! ## A009571.P7805371593073923547

`or(A001000(n+1), A066654(A238361(n)))`
-/

namespace A009571.P7805371593073923547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001000 (n + 1)) (A066654 (A238361 n).toNat)

end

end A009571.P7805371593073923547

/-!
# A009572: Expansion of e.g.f. sinh(log(1+x))*cos(x).

The programs for A009572, there is no canonical definition to state claims against.
-/

/-! ## A009572.P3885272759985636798

`A009001(n)-A009128(n)`
-/

namespace A009572.P3885272759985636798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n - A009128 n

end

end A009572.P3885272759985636798

/-! ## A009572.P14458575003838895707

`A009128(n)-A009102(n)`
-/

namespace A009572.P14458575003838895707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009128 n - A009102 n

end

end A009572.P14458575003838895707

/-! ## A009572.P2372697812084938082

`(A009001(n)-A009102(n))/2`
-/

namespace A009572.P2372697812084938082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009001 n - A009102 n : ℚ) / 2

end

end A009572.P2372697812084938082

/-! ## A009572.P13150556189449022984

`(A009001(n)-A009102(n))*(2%A004771(n))^-1`
-/

namespace A009572.P13150556189449022984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009001 n - A009102 n : ℚ) * (Int.tmod 2 (A004771 n) : ℚ) ^ (-1 : ℤ)

end

end A009572.P13150556189449022984

/-! ## A009572.P12196591977662889855

`(A009001(n)-A009102(n))*2^A008683(A020483(n))`
-/

namespace A009572.P12196591977662889855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009001 n - A009102 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A009572.P12196591977662889855

/-!
# A009573: Expansion of e.g.f. sinh(log(1+x))*cosh(x).

The programs for A009573, there is no canonical definition to state claims against.
-/

/-! ## A009573.P12673067029001890920

`A093178(n)-A009178(n)`
-/

namespace A009573.P12673067029001890920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A009178 n

end

end A009573.P12673067029001890920

/-! ## A009573.P5409921876588729764

`abs(A009001(n))-A009178(n)`
-/

namespace A009573.P5409921876588729764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009001 n| - A009178 n

end

end A009573.P5409921876588729764

/-! ## A009573.P7896710999153761476

`abs(A009001(n))+A009178(n)*A153881(n+2)`
-/

namespace A009573.P7896710999153761476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009001 n| + A009178 n * A153881 (n + 2)

end

end A009573.P7896710999153761476

/-! ## A009573.P11821451001232590164

`A009178(n)-A009179(n)`
-/

namespace A009573.P11821451001232590164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009178 n - A009179 n

end

end A009573.P11821451001232590164

/-! ## A009573.P16410377107303696996

`(A009578(n)+A009574(n))/2`
-/

namespace A009573.P16410377107303696996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009578 n + A009574 n : ℚ) / 2

end

end A009573.P16410377107303696996

/-!
# A009574: Expansion of e.g.f. sinh(log(1+x))*exp(x).

The programs for A009574, there is no canonical definition to state claims against.
-/

/-! ## A009574.P18316493514300599640

`∑[n]-n*a(n-1)` with `a(0)=0`
-/

namespace A009574.P18316493514300599640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A009574.P18316493514300599640

/-! ## A009574.P4451404185450674023

`∑[n]-a(n-1)/n^(-1)` with `a(0)=0`
-/

namespace A009574.P4451404185450674023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A009574.P4451404185450674023

/-! ## A009574.P13675922410252123252

`n*((n+1)/2-a(n-1))` with `a(0)=0`
-/

namespace A009574.P13675922410252123252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * ((n + 1 : ℚ) / 2 - a (n - 1))

end

end A009574.P13675922410252123252

/-! ## A009574.P1286312746923527414

`C(n, 2)-n*a(n-1)+n` with `a(0)=0`
-/

namespace A009574.P1286312746923527414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose n 2 : ℤ) - (n : ℤ) * a (n - 1) + (n : ℤ)

end

end A009574.P1286312746923527414

/-! ## A009574.P8790595322167989447

`n-(n*a(n-1)-C(n, 2))` with `a(0)=0`
-/

namespace A009574.P8790595322167989447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ((n : ℤ) * a (n - 1) - (Nat.choose n 2 : ℤ))

end

end A009574.P8790595322167989447

/-! ## A009574.P11410414061463015623

`n*(1-(a(n-1)-(n-1)/2))` with `a(0)=0`
-/

namespace A009574.P11410414061463015623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (1 - (a (n - 1) - ((n : ℤ) - 1 : ℚ) / 2))

end

end A009574.P11410414061463015623

/-! ## A009574.P12505376982824827885

`((n+1)/2-a(n-1))/n^(-1)` with `a(0)=0`
-/

namespace A009574.P12505376982824827885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1 : ℚ) / 2 - a (n - 1)) / (n : ℚ) ^ (-1 : ℤ)

end

end A009574.P12505376982824827885

/-! ## A009574.P1623697371584663675

`(1-n)*(a(n-1)-a(n-2))+n` with `a(0)=0, a(1)=1`
-/

namespace A009574.P1623697371584663675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) * (a (n - 1) - a (n - 2)) + (n : ℤ)

end

end A009574.P1623697371584663675

/-! ## A009574.P11470718653633011889

`n-(1-n)*(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A009574.P11470718653633011889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (1 - (n : ℤ)) * (a (n - 2) - a (n - 1))

end

end A009574.P11470718653633011889

/-! ## A009574.P11234931914408476262

`A054516(n+3)/2`
-/

namespace A009574.P11234931914408476262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054516 (n + 3) : ℚ) / 2

end

end A009574.P11234931914408476262

/-!
# A009575: E.g.f. sinh(log(1+x))*log(1+x).

The programs for A009575, there is no canonical definition to state claims against.
-/

/-! ## A009575.P5204353738503809775

`2*A024337(n)`
-/

namespace A009575.P5204353738503809775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024337 n

end

end A009575.P5204353738503809775

/-! ## A009575.P6046551441209183621

`A009411(n)-A081048(n)`
-/

namespace A009575.P6046551441209183621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009411 n - A081048 n

end

end A009575.P6046551441209183621

/-! ## A009575.P5419042826827000658

`A009411(n)-A048994(∑[n+1]+2)`
-/

namespace A009575.P5419042826827000658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009411 n - A048994 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A009575.P5419042826827000658

/-! ## A009575.P4110670617943433048

`A024337(floor(sqrt(n²+1)))+A024337(n)`
-/

namespace A009575.P4110670617943433048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024337 (Nat.sqrt (n ^ 2 + 1)) + A024337 n

end

end A009575.P4110670617943433048

/-! ## A009575.P7822405377739431298

`A009411(n)-(A081052(n)+A081051(n))`
-/

namespace A009575.P7822405377739431298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009411 n - (A081052 n + A081051 n)

end

end A009575.P7822405377739431298

/-! ## A009575.P15765867791428375623

`A009411(n)+A000254(n)*A033999(n)`
-/

namespace A009575.P15765867791428375623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009411 n + A000254 n * A033999 n

end

end A009575.P15765867791428375623

/-! ## A009575.P14957323752227083105

`A005369((n+1)²)+A024337(n)+A024337(n)`
-/

namespace A009575.P14957323752227083105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 ((n + 1) ^ 2) + (A024337 n + A024337 n)

end

end A009575.P14957323752227083105

/-! ## A009575.P11526287440040415885

`A024337(n)+A024337(n)/A001511(A002061(n))`
-/

namespace A009575.P11526287440040415885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024337 n : ℚ) + (A024337 n : ℚ) / (A001511 (A002061 n).toNat : ℚ)

end

end A009575.P11526287440040415885

/-!
# A009576: Expansion of e.g.f. sinh(log(1+x))/cos(x).

The programs for A009576, there is no canonical definition to state claims against.
-/

/-! ## A009576.P6000615179978181432

`A009002(n)-A009130(n)`
-/

namespace A009576.P6000615179978181432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009002 n - A009130 n

end

end A009576.P6000615179978181432

/-! ## A009576.P6397184844526149443

`A009002(n)+A009130(n)*A305807(A000040(n+1))`
-/

namespace A009576.P6397184844526149443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009002 n + A009130 n * A305807 (A000040 (n + 1)).toNat

end

end A009576.P6397184844526149443

/-!
# A009578: E.g.f. sinh(log(1+x))/exp(x). Unsigned sequence gives degrees of (finite by nilpotent) representations of Braid groups.

The programs for A009578, there is no canonical definition to state claims against.
-/

/-! ## A009578.P15828867897829265564

`2*A009573(n)-A009574(n)`
-/

namespace A009578.P15828867897829265564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009573 n - A009574 n

end

end A009578.P15828867897829265564

/-! ## A009578.P1780130554155875449

`(A038155(n)+n)*A062157(n)`
-/

namespace A009578.P1780130554155875449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038155 n + (n : ℤ)) * A062157 n

end

end A009578.P1780130554155875449

/-! ## A009578.P6978148426973916542

`(A038155(n)+n)*A033999(n+1)`
-/

namespace A009578.P6978148426973916542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038155 n + (n : ℤ)) * A033999 (n + 1)

end

end A009578.P6978148426973916542

/-! ## A009578.P11311198072754581642

`A009132(n)-A000522(n)*A033999(n)`
-/

namespace A009578.P11311198072754581642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 n - A000522 n * A033999 n

end

end A009578.P11311198072754581642

/-! ## A009578.P11942343680885874000

`(A038155(n)+n)/A062157(n)^A015535(n)`
-/

namespace A009578.P11942343680885874000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038155 n + (n : ℤ) : ℚ) / (A062157 n : ℚ) ^ (A015535 n : ℤ)

end

end A009578.P11942343680885874000

/-! ## A009578.P691202193752517162

`A009132(n)-A000522(n)*A209615(n²+1)`
-/

namespace A009578.P691202193752517162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 n - A000522 n * A209615 (n ^ 2 + 1)

end

end A009578.P691202193752517162

/-!
# A009579: Expansion of e.g.f. sinh(log(1+x)*cos(x)).

The programs for A009579, there is no canonical definition to state claims against.
-/

/-! ## A009579.P15386865041712133530

`A009192(n)-A009133(n)`
-/

namespace A009579.P15386865041712133530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009192 n - A009133 n

end

end A009579.P15386865041712133530

/-!
# A009580: Expansion of e.g.f. sinh(log(1+x)*cosh(x)).

The programs for A009580, there is no canonical definition to state claims against.
-/

/-! ## A009580.P16490893030235224795

`A009193(n)-A009134(n)`
-/

namespace A009580.P16490893030235224795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009193 n - A009134 n

end

end A009580.P16490893030235224795

/-! ## A009580.P6207347566501262733

`A009193(n)+A009134(n)*A057428(n+1)`
-/

namespace A009580.P6207347566501262733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009193 n + A009134 n * A057428 (n + 1)

end

end A009580.P6207347566501262733

/-!
# A009581: Expansion of e.g.f. sinh(log(1+x)*exp(x)).

The programs for A009581, there is no canonical definition to state claims against.
-/

/-! ## A009581.P11282528944483432128

`A007116(n)-A009135(n)`
-/

namespace A009581.P11282528944483432128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007116 n - A009135 n

end

end A009581.P11282528944483432128

/-! ## A009581.P2215918429284950004

`A093048(n)*A178832(A000129(n))`
-/

namespace A009581.P2215918429284950004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 n * A178832 (A000129 n).toNat

end

end A009581.P2215918429284950004

/-! ## A009581.P14332944311169312209

`A003056(lcm(A000081(n), A088713(n)))`
-/

namespace A009581.P14332944311169312209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lcm (A000081 n) (A088713 n))

end

end A009581.P14332944311169312209

/-!
# A009582: Expansion of e.g.f.: sinh(log(1+x)/cos(x)).

The programs for A009582, there is no canonical definition to state claims against.
-/

/-! ## A009582.P15249248150690034594

`A009196(n)-A009137(n)`
-/

namespace A009582.P15249248150690034594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009196 n - A009137 n

end

end A009582.P15249248150690034594

/-! ## A009582.P3561267684004168307

`∑[-(n*(-1)^n)]*A304717(∑[n*(gcd(2, n)+2)]+1)`
-/

namespace A009582.P3561267684004168307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A304717 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A009582.P3561267684004168307

/-!
# A009583: Expansion of e.g.f. sinh(log(1+x)/cosh(x)).

The programs for A009583, there is no canonical definition to state claims against.
-/

/-! ## A009583.P9609497347787188543

`A009197(n)-A009138(n)`
-/

namespace A009583.P9609497347787188543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009197 n - A009138 n

end

end A009583.P9609497347787188543

/-!
# A009584: Expansion of e.g.f. sinh(log(1+x)/exp(x)).

The programs for A009584, there is no canonical definition to state claims against.
-/

/-! ## A009584.P6513453711729877438

`A009198(n)-A009139(n)`
-/

namespace A009584.P6513453711729877438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009198 n - A009139 n

end

end A009584.P6513453711729877438

/-!
# A009585: E.g.f. sinh(log(1+x)^2).

The programs for A009585, there is no canonical definition to state claims against.
-/

/-! ## A009585.P1063276094762574727

`2*A024335(n)`
-/

namespace A009585.P1063276094762574727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024335 n

end

end A009585.P1063276094762574727

/-! ## A009585.P11842480350626958555

`A024335(n)+A024335(A028310(n))`
-/

namespace A009585.P11842480350626958555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024335 n + A024335 (A028310 n).toNat

end

end A009585.P11842480350626958555

/-! ## A009585.P3061570560483720543

`A024335(n)/2^A008683(A020483(n))`
-/

namespace A009585.P3061570560483720543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024335 n : ℚ) / (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A009585.P3061570560483720543

/-! ## A009585.P2584141411230980679

`A024335(gcd(n, A008486(n)))+A024335(n)`
-/

namespace A009585.P2584141411230980679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024335 (Int.gcd (n : ℤ) (A008486 n)) + A024335 n

end

end A009585.P2584141411230980679

/-! ## A009585.P9914128517150202732

`A024335(A351831(n+1))+A024335(n)`
-/

namespace A009585.P9914128517150202732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024335 (A351831 (n + 1)).toNat + A024335 n

end

end A009585.P9914128517150202732

/-!
# A009586: Expansion of e.g.f. sinh(sin(log(1+x))).

The programs for A009586, there is no canonical definition to state claims against.
-/

/-! ## A009586.P17425197323867895677

`A009200(n)-A009141(n)`
-/

namespace A009586.P17425197323867895677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009200 n - A009141 n

end

end A009586.P17425197323867895677

/-!
# A009587: Expansion of e.g.f. sinh(sin(sin(x))).

The programs for A009587, there is no canonical definition to state claims against.
-/

/-! ## A009587.P14824282904654952015

`A009201(Δ[n²])`
-/

namespace A009587.P14824282904654952015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009201 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009587.P14824282904654952015

/-! ## A009587.P17602292006839147491

`or(1, A009201(A005408(n)))`
-/

namespace A009587.P17602292006839147491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009201 (A005408 n).toNat)

end

end A009587.P17602292006839147491

/-! ## A009587.P3401520794441882519

`or(1, A009201(A004277(n)+1))`
-/

namespace A009587.P3401520794441882519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009201 (A004277 n + 1).toNat)

end

end A009587.P3401520794441882519

/-! ## A009587.P13646512456700270188

`or(1, A009201(A005843(n)+1))`
-/

namespace A009587.P13646512456700270188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009201 (A005843 n + 1).toNat)

end

end A009587.P13646512456700270188

/-!
# A009588: Expansion of e.g.f. sinh(sin(tan(x))), odd powers only.

The programs for A009588, there is no canonical definition to state claims against.
-/

/-! ## A009588.P2891593546577573421

`A009203(Δ[n²])`
-/

namespace A009588.P2891593546577573421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009588.P2891593546577573421

/-! ## A009588.P17950064072496308191

`2*A009203(2*n+1)-A009203(2*n+1)`
-/

namespace A009588.P17950064072496308191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009203 (2 * n + 1) - A009203 (2 * n + 1)

end

end A009588.P17950064072496308191

/-! ## A009588.P4839992597427721288

`A009203(A005408(n))+A000007(n+1)`
-/

namespace A009588.P4839992597427721288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009203 (A005408 n).toNat + A000007 (n + 1)

end

end A009588.P4839992597427721288

/-! ## A009588.P4065526125466542924

`A007318(C(2, n))*A009203(A005408(n))`
-/

namespace A009588.P4065526125466542924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A009203 (A005408 n).toNat

end

end A009588.P4065526125466542924

/-! ## A009588.P9364619433376644354

`A009203(A005408(n))-n*A000007(n)`
-/

namespace A009588.P9364619433376644354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009203 (A005408 n).toNat - (n : ℤ) * A000007 n

end

end A009588.P9364619433376644354

/-!
# A009589: If i < n, j < n, p/a(i) < q/a(j), then there exists k with p/a(i) < k/a(n) < q/a(j).

The programs for A009589, there is no canonical definition to state claims against.
-/

/-! ## A009589.P15173701966198296593

`A116619(A352944(2*n)+A302965(n+1))`
-/

namespace A009589.P15173701966198296593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116619 (A352944 (2 * n) + A302965 (n + 1)).toNat

end

end A009589.P15173701966198296593

/-!
# A009590: Expansion of e.g.f. sinh(sin(x))*exp(x).

The programs for A009590, there is no canonical definition to state claims against.
-/

/-! ## A009590.P13623012719503332046

`A009282(n)-A009145(n)*A033999(n)`
-/

namespace A009590.P13623012719503332046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009282 n - A009145 n * A033999 n

end

end A009590.P13623012719503332046

/-! ## A009590.P1798973602006349521

`A009282(n)-A009145(n)/A033999(A330396(n))`
-/

namespace A009590.P1798973602006349521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009282 n : ℚ) - (A009145 n : ℚ) / (A033999 (A330396 n).toNat : ℚ)

end

end A009590.P1798973602006349521

/-! ## A009590.P11685491736203803199

`(A009145(n)-A009209(n))*A033999(n)`
-/

namespace A009590.P11685491736203803199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009145 n - A009209 n) * A033999 n

end

end A009590.P11685491736203803199

/-! ## A009590.P2883203237494213805

`(A009145(n)-A009209(n))/A033999(A330396(n))`
-/

namespace A009590.P2883203237494213805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009145 n - A009209 n : ℚ) / (A033999 (A330396 n).toNat : ℚ)

end

end A009590.P2883203237494213805

/-! ## A009590.P14614897485096732491

`A009145(n)+A009622(n)-A009184(n)`
-/

namespace A009590.P14614897485096732491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009145 n + (A009622 n - A009184 n)

end

end A009590.P14614897485096732491

/-!
# A009591: Expansion of e.g.f. sinh(sin(x)) * sin(x) (even powers only).

The programs for A009591, there is no canonical definition to state claims against.
-/

/-! ## A009591.P11384207312339464180

`2*A024232(n)`
-/

namespace A009591.P11384207312339464180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024232 n

end

end A009591.P11384207312339464180

/-! ## A009591.P3054113207850584528

`A024232(n)+A024232(n)/A071936(n+1)²`
-/

namespace A009591.P3054113207850584528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024232 n : ℚ) + (A024232 n : ℚ) / (A071936 (n + 1) ^ 2 : ℚ)

end

end A009591.P3054113207850584528

/-! ## A009591.P15477209816762866931

`A009541(2*n)`
-/

namespace A009591.P15477209816762866931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009541 (2 * n)

end

end A009591.P15477209816762866931

/-! ## A009591.P6833725326676496451

`A009541(A004277(n))-A000035(A004277(n))`
-/

namespace A009591.P6833725326676496451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009541 (A004277 n).toNat - A000035 (A004277 n).toNat

end

end A009591.P6833725326676496451

/-! ## A009591.P5927870234123581636

`A024232(n)+A024232(A055646(n))`
-/

namespace A009591.P5927870234123581636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024232 n + A024232 (A055646 n).toNat

end

end A009591.P5927870234123581636

/-!
# A009592: Expansion of e.g.f. sinh(sin(x))/cos(x) (odd powers only).

The programs for A009592, there is no canonical definition to state claims against.
-/

/-! ## A009592.P10252123064987602439

`A009207(Δ[n²])`
-/

namespace A009592.P10252123064987602439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009592.P10252123064987602439

/-! ## A009592.P13702089613487193777

`lcm(2, A009207(2*n+1))/2`
-/

namespace A009592.P13702089613487193777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A009207 (2 * n + 1)) : ℚ) / 2

end

end A009592.P13702089613487193777

/-! ## A009592.P7087952364058898724

`record[A009207(A006257(n))]`
-/

namespace A009592.P7087952364058898724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009592.P7087952364058898724

/-! ## A009592.P16610621072956814709

`record[A009207(A026741(n))]`
-/

namespace A009592.P16610621072956814709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009592.P16610621072956814709

/-! ## A009592.P13046285043496032856

`record[A009207(A093178(n))]`
-/

namespace A009592.P13046285043496032856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009207 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A009592.P13046285043496032856

/-!
# A009593: Expansion of e.g.f. sinh(sin(x)*cos(x)), odd powers only.

The programs for A009593, there is no canonical definition to state claims against.
-/

/-! ## A009593.P9484606402359792899

`A009210(Δ[n²])`
-/

namespace A009593.P9484606402359792899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009210 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A009593.P9484606402359792899

/-! ## A009593.P18391288504727225329

`or(1, A009210(2*n+1))`
-/

namespace A009593.P18391288504727225329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009210 (2 * n + 1))

end

end A009593.P18391288504727225329

/-! ## A009593.P15411307717154386610

`A009210(2*n+1)*A009385(2*n+1)`
-/

namespace A009593.P15411307717154386610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009210 (2 * n + 1) * A009385 (2 * n + 1)

end

end A009593.P15411307717154386610

/-! ## A009593.P8958894912338005658

`A009210(2*n+1)*A010127(2*n+3)`
-/

namespace A009593.P8958894912338005658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009210 (2 * n + 1) * A010127 (2 * n + 3)

end

end A009593.P8958894912338005658

/-! ## A009593.P4938907926535436986

`A009210(2*n+1)*A010236(2*n+3)`
-/

namespace A009593.P4938907926535436986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009210 (2 * n + 1) * A010236 (2 * n + 3)

end

end A009593.P4938907926535436986

/-!
# A009594: Expansion of e.g.f. sinh(sin(x)*exp(x)).

The programs for A009594, there is no canonical definition to state claims against.
-/

/-! ## A009594.P8439382603091914670

`A009212(n)-A009147(n)`
-/

namespace A009594.P8439382603091914670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009212 n - A009147 n

end

end A009594.P8439382603091914670

/-! ## A009594.P12039634713571829021

`or(n, A088169(A052302(n)))`
-/

namespace A009594.P12039634713571829021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A088169 (A052302 n).toNat)

end

end A009594.P12039634713571829021

/-! ## A009594.P9239229111799224944

`or(n, A054899(A162723(n)))`
-/

namespace A009594.P9239229111799224944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A054899 (A162723 n).toNat)

end

end A009594.P9239229111799224944

/-!
# A009595: Expansion of e.g.f. sinh(sin(x)*x), even powers only.

The programs for A009595, there is no canonical definition to state claims against.
-/

/-! ## A009595.P13566380617951831174

`2*A024238(n)`
-/

namespace A009595.P13566380617951831174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024238 n

end

end A009595.P13566380617951831174

/-! ## A009595.P9659370719243310006

`A024238(A033619(n+1))+A024238(n)`
-/

namespace A009595.P9659370719243310006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024238 (A033619 (n + 1)).toNat + A024238 n

end

end A009595.P9659370719243310006

/-! ## A009595.P10968905314237295383

`A024238(n)+A024238(n)%A153180(n+1)`
-/

namespace A009595.P10968905314237295383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024238 n + Int.tmod (A024238 n) (A153180 (n + 1))

end

end A009595.P10968905314237295383

/-! ## A009595.P4484541511930968044

`A024238(n)+A024238(A071669(n))`
-/

namespace A009595.P4484541511930968044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024238 n + A024238 (A071669 n).toNat

end

end A009595.P4484541511930968044

/-! ## A009595.P5463608535456867711

`A024238(n)+A024238(A062279(n))`
-/

namespace A009595.P5463608535456867711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024238 n + A024238 (A062279 n).toNat

end

end A009595.P5463608535456867711

/-!
# A009596: Expansion of e.g.f. sinh(sin(x)^2) (even powers only).

The programs for A009596, there is no canonical definition to state claims against.
-/

/-! ## A009596.P9338887939118566556

`2*A024258(n)`
-/

namespace A009596.P9338887939118566556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024258 n

end

end A009596.P9338887939118566556

/-! ## A009596.P4007964275098152303

`A009217(n)-A009150(n)`
-/

namespace A009596.P4007964275098152303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009217 n - A009150 n

end

end A009596.P4007964275098152303

/-! ## A009596.P8926694606209546024

`A024258(n)+A024258(n)%A013725(n)`
-/

namespace A009596.P8926694606209546024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024258 n + Int.tmod (A024258 n) (A013725 n)

end

end A009596.P8926694606209546024

/-! ## A009596.P15451000367027685273

`A024258(n)+A024258(A055648(n))`
-/

namespace A009596.P15451000367027685273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024258 n + A024258 (A055648 n).toNat

end

end A009596.P15451000367027685273

/-! ## A009596.P11140350131900922092

`A024258(n)+A024258(A062003(n))`
-/

namespace A009596.P11140350131900922092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024258 n + A024258 (A062003 n).toNat

end

end A009596.P11140350131900922092

/-!
# A009597: Expansion of sinh(sinh(log(1+x))).

The programs for A009597, there is no canonical definition to state claims against.
-/

/-! ## A009597.P9806966141589399286

`A009218(n)-A009151(n)`
-/

namespace A009597.P9806966141589399286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009218 n - A009151 n

end

end A009597.P9806966141589399286

/-!
# A009598: Expansion of e.g.f. sinh(sinh(x))*exp(x).

The programs for A009598, there is no canonical definition to state claims against.
-/

/-! ## A009598.P7578461417475763428

`abs(A003724(n+1)-A009623(n)-A009152(n))`
-/

namespace A009598.P7578461417475763428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003724 (n + 1) - A009623 n - A009152 n|

end

end A009598.P7578461417475763428

/-! ## A009598.P5369519941798672841

`A009283(n)-abs(A009152(n))`
-/

namespace A009598.P5369519941798672841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009283 n - |A009152 n|

end

end A009598.P5369519941798672841

/-! ## A009598.P73250040812628868

`A009623(n)+A009227(n^(n%2))`
-/

namespace A009598.P73250040812628868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009623 n + A009227 (n ^ (n % 2))

end

end A009598.P73250040812628868

/-! ## A009598.P3866783221961005323

`abs(A009152(n)-A009227(n))`
-/

namespace A009598.P3866783221961005323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009152 n - A009227 n|

end

end A009598.P3866783221961005323

/-! ## A009598.P11088322660739448123

`A009623(n)+A000035(n)*A009227(n)`
-/

namespace A009598.P11088322660739448123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009623 n + A000035 n * A009227 n

end

end A009598.P11088322660739448123

/-! ## A009598.P10562465298066971122

`(A009152(n)-A009227(n))*A033999(n)`
-/

namespace A009598.P10562465298066971122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009152 n - A009227 n) * A033999 n

end

end A009598.P10562465298066971122

/-! ## A009598.P396268678312120383

`(1-A010673(n))*(A009152(n)-A009227(n))`
-/

namespace A009598.P396268678312120383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * (A009152 n - A009227 n)

end

end A009598.P396268678312120383

/-!
# A009599: Expansion of e.g.f. sinh(sinh(x)*exp(x)).

The programs for A009599, there is no canonical definition to state claims against.
-/

/-! ## A009599.P15691900407391691736

`A004211(n)-A009153(n)`
-/

namespace A009599.P15691900407391691736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004211 n - A009153 n

end

end A009599.P15691900407391691736

/-! ## A009599.P12242125312270934945

`A261275(∑[n]+n)-A009153(n)`
-/

namespace A009599.P12242125312270934945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A009153 n

end

end A009599.P12242125312270934945

/-! ## A009599.P5280048027591313469

`or(1, A261275(A000096(n)))-A009153(n)`
-/

namespace A009599.P5280048027591313469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261275 (A000096 n).toNat) - A009153 n

end

end A009599.P5280048027591313469

/-! ## A009599.P9829999450330768877

`or(1, A261275(Δ[A005581(n)]))-A009153(n)`
-/

namespace A009599.P9829999450330768877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261275 (f1 (n + 1) - f1 n).toNat) - A009153 n

end

end A009599.P9829999450330768877

/-! ## A009599.P11843574978294134716

`A261275(Δ[A005581(n)])+A000007(n+1)-A009153(n)`
-/

namespace A009599.P11843574978294134716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261275 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1) - A009153 n

end

end A009599.P11843574978294134716

