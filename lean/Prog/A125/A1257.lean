import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A125700: Number of connected categories with n more morphisms than objects.

The programs for A125700, there is no canonical definition to state claims against.
-/

/-! ## A125700.P15286357720533075111

`A098162(A018025(n))`
-/

namespace A125700.P15286357720533075111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (A018025 n).toNat

end

end A125700.P15286357720533075111

/-!
# A125701: Limiting values for category table A125697.

The programs for A125701, there is no canonical definition to state claims against.
-/

/-! ## A125701.P9132815188071276218

`A007750(n)+A005185(A155640(n))`
-/

namespace A125701.P9132815188071276218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 n + A005185 (A155640 n).toNat

end

end A125701.P9132815188071276218

/-!
# A125702: Number of connected categories with n objects and 2n-1 morphisms.

The programs for A125702, there is no canonical definition to state claims against.
-/

/-! ## A125702.P6681498531191025790

`A122086(ceil(acot(n)+n))`
-/

namespace A125702.P6681498531191025790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A125702.P6681498531191025790

/-! ## A125702.P5269402358525428045

`A122086(floor(acot(n)+n)+1)`
-/

namespace A125702.P5269402358525428045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A125702.P5269402358525428045

/-! ## A125702.P8557141251142471954

`A122086(A028310(n)+1)`
-/

namespace A125702.P8557141251142471954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (A028310 n + 1).toNat

end

end A125702.P8557141251142471954

/-! ## A125702.P17051608462284797147

`A122086(A254667(n+1))`
-/

namespace A125702.P17051608462284797147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (A254667 (n + 1)).toNat

end

end A125702.P17051608462284797147

/-! ## A125702.P2238924676730955243

`A122086(A233583(n+2))`
-/

namespace A125702.P2238924676730955243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (A233583 (n + 2)).toNat

end

end A125702.P2238924676730955243

/-! ## A125702.P12812456915768661545

`A122086(A054977(n)+n)`
-/

namespace A125702.P12812456915768661545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (A054977 n + (n : ℤ)).toNat

end

end A125702.P12812456915768661545

/-! ## A125702.P118288516187140858

`A122086(A000007(n)+1+n)`
-/

namespace A125702.P118288516187140858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (A000007 n + 1 + (n : ℤ)).toNat

end

end A125702.P118288516187140858

/-! ## A125702.P16116080410086213455

`A122086(A004273(n)+2-n)`
-/

namespace A125702.P16116080410086213455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (A004273 n + (2 - (n : ℤ))).toNat

end

end A125702.P16116080410086213455

/-! ## A125702.P10395104184166370771

`A122086(2-(n-A004273(n)))`
-/

namespace A125702.P10395104184166370771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A125702.P10395104184166370771

/-! ## A125702.P14289577521766809120

`A122086(gcd(n, A008486(n))+1)`
-/

namespace A125702.P14289577521766809120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (Int.gcd (n : ℤ) (A008486 n) + 1)

end

end A125702.P14289577521766809120

/-! ## A125702.P10145016638373373354

`A122086(n+1)/A000038(n)!`
-/

namespace A125702.P10145016638373373354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122086 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A125702.P10145016638373373354

/-! ## A125702.P6691672455144990948

`sqrt(A122086(n+1))^(2%A018142(n))`
-/

namespace A125702.P6691672455144990948
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A122086 (n + 1) : ℝ) ^ (Int.tmod 2 (A018142 n) : ℤ)

end

end A125702.P6691672455144990948

/-! ## A125702.P10640606581284111270

`A122086(n+1)+A032600(n+1)%2`
-/

namespace A125702.P10640606581284111270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (n + 1) + Int.tmod (A032600 (n + 1)) 2

end

end A125702.P10640606581284111270

/-! ## A125702.P7384355107743261181

`A122086(n+1)-A261470(n+1)%2`
-/

namespace A125702.P7384355107743261181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (n + 1) - Int.tmod (A261470 (n + 1)) 2

end

end A125702.P7384355107743261181

/-! ## A125702.P5659970377151010223

`A122086(n+1)^(A055496(n+1)%2)`
-/

namespace A125702.P5659970377151010223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122086 (n + 1) : ℚ) ^ (Int.tmod (A055496 (n + 1)) 2 : ℤ)

end

end A125702.P5659970377151010223

/-! ## A125702.P12520874626371020253

`A122086(n+1)^(A091206(n+1)%2)`
-/

namespace A125702.P12520874626371020253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122086 (n + 1) : ℚ) ^ (Int.tmod (A091206 (n + 1)) 2 : ℤ)

end

end A125702.P12520874626371020253

/-! ## A125702.P2880157992530085116

`A122086(n+1)-floor(1/A185180(n+1))`
-/

namespace A125702.P2880157992530085116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (n + 1) - ⌊1 / (A185180 (n + 1) : ℚ)⌋

end

end A125702.P2880157992530085116

/-! ## A125702.P12899045185879838717

`A122086(n+1)-floor(1/A267099(n+1))`
-/

namespace A125702.P12899045185879838717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (n + 1) - ⌊1 / (A267099 (n + 1) : ℚ)⌋

end

end A125702.P12899045185879838717

/-! ## A125702.P9803408941229358285

`A122086(n+1)-floor(1/A321818(n+1))`
-/

namespace A125702.P9803408941229358285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (n + 1) - ⌊1 / (A321818 (n + 1) : ℚ)⌋

end

end A125702.P9803408941229358285

/-! ## A125702.P18134070002746815726

`A122086(n+1)-A014671(A001222(n+1))`
-/

namespace A125702.P18134070002746815726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122086 (n + 1) - A014671 (A001222 (n + 1)).toNat

end

end A125702.P18134070002746815726

/-!
# A125703: Table read by antidiagonals: row n contains the positive integers (in order) which are coprime to the n-th prime and do not occur in earlier rows.

The programs for A125703, there is no canonical definition to state claims against.
-/

/-! ## A125703.P12337212218089052095

`A002110(A025581(n))*A125704(n+1)`
-/

namespace A125703.P12337212218089052095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A025581 n).toNat * A125704 (n + 1)

end

end A125703.P12337212218089052095

/-!
# A125704: Table read by antidiagonals: row n contains the positive integers (in order) which are coprime to the n-th prime.

The programs for A125704, there is no canonical definition to state claims against.
-/

/-! ## A125704.P12462273200868331882

`A125703(n+1)/A002110(A025581(n))`
-/

namespace A125704.P12462273200868331882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125703 (n + 1) : ℚ) / (A002110 (A025581 n).toNat : ℚ)

end

end A125704.P12462273200868331882

/-! ## A125704.P14637632678356820354

`A111701(A125703(n+1))`
-/

namespace A125704.P14637632678356820354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A125703 (n + 1)).toNat

end

end A125704.P14637632678356820354

/-! ## A125704.P368887990361782276

`A363941(A083221(n+2))+A258651(n)`
-/

namespace A125704.P368887990361782276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 (A083221 (n + 2)).toNat + A258651 n

end

end A125704.P368887990361782276

/-! ## A125704.P16565442579710836110

`A002260(n+1)+val(A262610(A164844(n)), 5)`
-/

namespace A125704.P16565442579710836110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (SequenceMachineLib.valuation (A262610 (A164844 n).toNat).toNat 5 : ℤ)

end

end A125704.P16565442579710836110

/-!
# A125705: Genera g such that every orientation-preserving periodic automorphism of the closed orientable surface of genus g has an invariant circle.

The programs for A125705, there is no canonical definition to state claims against.
-/

/-! ## A125705.P11405056925091117399

`lt[A007318(A026741(n)), A325277(2*(n+2))]`
-/

namespace A125705.P11405056925091117399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A026741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325277 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125705.P11405056925091117399

/-!
# A125707: Numbers k such that A024528(k) is prime.

The programs for A125707, there is no canonical definition to state claims against.
-/

/-! ## A125707.P4926119202534029367

`∑[A319629(n)%A120327(n+1)]`
-/

namespace A125707.P4926119202534029367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319629 n) (A120327 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125707.P4926119202534029367

/-! ## A125707.P1871948795645293670

`eq[A243113(n), A335234(A084925(n+1))]`
-/

namespace A125707.P1871948795645293670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335234 (A084925 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125707.P1871948795645293670

/-! ## A125707.P13769270351796331595

`lt[A278713(n+1), A091818(A353082(n+1))]`
-/

namespace A125707.P13769270351796331595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (A353082 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125707.P13769270351796331595

/-!
# A125708: Numbers k such that A115963(k) is prime.

The programs for A125708, there is no canonical definition to state claims against.
-/

/-! ## A125708.P9640973045390999884

`A121820(a(n-2)+5)` with `a(0)=3, a(1)=5, a(2)=9`
-/

namespace A125708.P9640973045390999884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 9] fun n a =>
  A121820 (a (n - 2) + 5).toNat

end

end A125708.P9640973045390999884

/-!
# A125709: Number of n-indecomposable polyominoes with at least n cells.

The programs for A125709, there is no canonical definition to state claims against.
-/

/-! ## A125709.P1033555620391279777

`A125759(n+1)+1-A173271(n)`
-/

namespace A125709.P1033555620391279777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125759 (n + 1) + (1 - A173271 n)

end

end A125709.P1033555620391279777

/-! ## A125709.P16496950017513308721

`A125759(n+1)+1-∑[A000104(n)]`
-/

namespace A125709.P16496950017513308721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125759 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125709.P16496950017513308721

/-! ## A125709.P12434423380389205648

`A125759(n+1)+1-∑[A000105(n)]`
-/

namespace A125709.P12434423380389205648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125759 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125709.P12434423380389205648

/-!
# A125711: In the "3x+1" problem, let 1 denote a halving step and 0 denote an x->3x+1 step. Then a(n) is obtained by writing the sequence of steps needed to reach 1 from 2n and reading it as a decimal number.

The programs for A125711, there is no canonical definition to state claims against.
-/

/-! ## A125711.P726505549106170378

`A059894(A221468(n+1))`
-/

namespace A125711.P726505549106170378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A221468 (n + 1)).toNat

end

end A125711.P726505549106170378

/-!
# A125712: Number of permutations of 1..2n in which the sum of every two adjacent elements is a prime number, including the sum of first and last elements.

The programs for A125712, there is no canonical definition to state claims against.
-/

/-! ## A125712.P13778616939184049678

`2*(n+1)*A294184(n+1)`
-/

namespace A125712.P13778616939184049678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A294184 (n + 1))

end

end A125712.P13778616939184049678

/-! ## A125712.P13811290483011087498

`Δ[A002378(n)]*A294184(n+1)`
-/

namespace A125712.P13811290483011087498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A294184 (n + 1)

end

end A125712.P13811290483011087498

/-! ## A125712.P6570257268227507580

`Δ[A027688(n)]*A294184(n+1)`
-/

namespace A125712.P6570257268227507580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A294184 (n + 1)

end

end A125712.P6570257268227507580

/-! ## A125712.P2533565017568687437

`A000005(A007283(n))*A294184(n+1)`
-/

namespace A125712.P2533565017568687437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007283 n).toNat * A294184 (n + 1)

end

end A125712.P2533565017568687437

/-!
# A125713: Smallest odd prime p such that (n+1)^p - n^p is prime.

The programs for A125713, there is no canonical definition to state claims against.
-/

/-! ## A125713.P11469981350826567062

`A247093(∑[n+1])`
-/

namespace A125713.P11469981350826567062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125713.P11469981350826567062

/-! ## A125713.P15442570139689353188

`p?[A247093(∑[n-log2(1/2)])]`
-/

namespace A125713.P15442570139689353188
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125713.P15442570139689353188

/-! ## A125713.P4917496515066295007

`p?[A023531(n)*A247093(n+1)]`
-/

namespace A125713.P4917496515066295007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A247093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125713.P4917496515066295007

/-! ## A125713.P18216434337648085558

`A014963(A247093(∑[Δ[n²]-n]))`
-/

namespace A125713.P18216434337648085558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A247093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A125713.P18216434337648085558

/-! ## A125713.P6580117653884282892

`p?[A004736(n+1)*A247093(n+1)]`
-/

namespace A125713.P6580117653884282892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A247093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125713.P6580117653884282892

/-!
# A125714: Alfred Moessner's factorial triangle.

The programs for A125714, there is no canonical definition to state claims against.
-/

/-! ## A125714.P18416687825927849544

`abs(A008275(comp[∑[n]]))`
-/

namespace A125714.P18416687825927849544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A125714.P18416687825927849544

/-! ## A125714.P852782777436377603

`A130534(comp[∑[n-1]])`
-/

namespace A125714.P852782777436377603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A125714.P852782777436377603

/-! ## A125714.P5832013415777207336

`A132393(2*comp[∑[n]]-n)`
-/

namespace A125714.P5832013415777207336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A125714.P5832013415777207336

/-! ## A125714.P4509081815328774712

`A094638(A038722(comp[∑[n]]))`
-/

namespace A125714.P4509081815328774712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A125714.P4509081815328774712

/-! ## A125714.P7271905038094048254

`abs(A048994(lt[1, A007318(n)]))`
-/

namespace A125714.P7271905038094048254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A125714.P7271905038094048254

/-! ## A125714.P1426798686769475741

`abs(A048994(lt[1, A094816(n)]))`
-/

namespace A125714.P1426798686769475741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A125714.P1426798686769475741

/-! ## A125714.P8403127788728154478

`abs(A048994(lt[1, A101275(n)]))`
-/

namespace A125714.P8403127788728154478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A125714.P8403127788728154478

/-! ## A125714.P13536825903048956261

`abs(A048994(lt[1, A008277(n+1)]))`
-/

namespace A125714.P13536825903048956261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)|

end

end A125714.P13536825903048956261

/-! ## A125714.P11391800425946835536

`A130534(A007401(n+1))+val(2*n+1, 2)`
-/

namespace A125714.P11391800425946835536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A007401 (n + 1)).toNat + (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A125714.P11391800425946835536

/-! ## A125714.P18270846317822598321

`A188881(A014132(n+1))/A233543(n)`
-/

namespace A125714.P18270846317822598321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188881 (A014132 (n + 1)).toNat : ℚ) / (A233543 n : ℚ)

end

end A125714.P18270846317822598321

/-!
# A125716: Numbers n such that A120292(n) = 1.

The programs for A125716, there is no canonical definition to state claims against.
-/

/-! ## A125716.P11423615813906854003

`eq[1, A120292(n+1)]+1`
-/

namespace A125716.P11423615813906854003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A125716.P11423615813906854003

/-! ## A125716.P14919808814822996369

`lt[A120292(n+2), 2]+2`
-/

namespace A125716.P14919808814822996369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A125716.P14919808814822996369

/-! ## A125716.P10748496569138929261

`eq[1, A120292(A028310(n))]`
-/

namespace A125716.P10748496569138929261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125716.P10748496569138929261

/-! ## A125716.P5840633409994847157

`A020725(eq[1, A120292(n+1)])`
-/

namespace A125716.P5840633409994847157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125716.P5840633409994847157

/-! ## A125716.P7067153445787005046

`A020725(lt[A120292(n+1), 2])`
-/

namespace A125716.P7067153445787005046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125716.P7067153445787005046

/-! ## A125716.P8650382296984564095

`eq[1, A120292(A000007(n)+n)]`
-/

namespace A125716.P8650382296984564095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120292 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A125716.P8650382296984564095

/-! ## A125716.P16391571115683932714

`record[A020725(n+2)-A120292(n+2)]`
-/

namespace A125716.P16391571115683932714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 2) - A120292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125716.P16391571115683932714

/-! ## A125716.P8107655367125259058

`record[(n+2)/A120292(A020725(n+1))]`
-/

namespace A125716.P8107655367125259058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A120292 (A020725 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125716.P8107655367125259058

/-!
# A125717: a(0)=0; thereafter a(n) = the smallest nonnegative integer not already in the sequence such that a(n-1) is congruent to a(n) (mod n).

The programs for A125717, there is no canonical definition to state claims against.
-/

/-! ## A125717.P1562303839214008721

`A370957(n)+a(n-1)` with `a(0)=0`
-/

namespace A125717.P1562303839214008721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A370957 n + a (n - 1)

end

end A125717.P1562303839214008721

/-! ## A125717.P4896026871721679481

`∑[A370957(n+1)]-A370957(n+1)`
-/

namespace A125717.P4896026871721679481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A370957 (n + 1)

end

end A125717.P4896026871721679481

/-! ## A125717.P15670139170035855276

`∑[(n+1)*A370958(n+1)]-(n+1)*A370958(n+1)`
-/

namespace A125717.P15670139170035855276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ) * A370958 (n + 1)

end

end A125717.P15670139170035855276

/-! ## A125717.P8261104362154586240

`∑[A370957(A123108(2*n))%∑[n+1]]`
-/

namespace A125717.P8261104362154586240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370957 (A123108 (2 * n)).toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125717.P8261104362154586240

/-!
# A125719: A127885(prime(n)).

The programs for A125719, there is no canonical definition to state claims against.
-/

/-! ## A125719.P662964650386941889

`A127885(p?[comp[n²]])`
-/

namespace A125719.P662964650386941889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A125719.P662964650386941889

/-! ## A125719.P13895456204471807251

`A127885(Δ[A007504(n)])`
-/

namespace A125719.P13895456204471807251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (f1 (n + 1) - f1 n).toNat

end

end A125719.P13895456204471807251

/-! ## A125719.P9422104987727206247

`A127885(record[A051698(n)])`
-/

namespace A125719.P9422104987727206247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125719.P9422104987727206247

/-! ## A125719.P8508038375440236672

`A127885(record[A162753(n)])`
-/

namespace A125719.P8508038375440236672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125719.P8508038375440236672

/-! ## A125719.P7663802569194047280

`A127885(A000040(n+1))`
-/

namespace A125719.P7663802569194047280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (A000040 (n + 1)).toNat

end

end A125719.P7663802569194047280

/-! ## A125719.P14600501054663416641

`A127885(A008578(n+2))`
-/

namespace A125719.P14600501054663416641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (A008578 (n + 2)).toNat

end

end A125719.P14600501054663416641

/-! ## A125719.P18186150419191374179

`A127885(A064555(n+2))`
-/

namespace A125719.P18186150419191374179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (A064555 (n + 2)).toNat

end

end A125719.P18186150419191374179

/-! ## A125719.P3482200100999907094

`A127885(A182986(n+2))`
-/

namespace A125719.P3482200100999907094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (A182986 (n + 2)).toNat

end

end A125719.P3482200100999907094

/-! ## A125719.P9659286209081201153

`A127885(A324050(n+2))`
-/

namespace A125719.P9659286209081201153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (A324050 (n + 2)).toNat

end

end A125719.P9659286209081201153

/-!
# A125720: A variation on the Thue-Morse sequence.

The programs for A125720, there is no canonical definition to state claims against.
-/

/-! ## A125720.P9343613016068294765

`A000120(xor(n, A102370(n)))%2`
-/

namespace A125720.P9343613016068294765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (Int.xor (n : ℤ) (A102370 n)).toNat) 2

end

end A125720.P9343613016068294765

/-! ## A125720.P15020339415724252278

`A048881(xor(n, A102370(n)))%2`
-/

namespace A125720.P15020339415724252278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048881 (Int.xor (n : ℤ) (A102370 n)).toNat) 2

end

end A125720.P15020339415724252278

/-! ## A125720.P11213708661975164587

`A000120(xor(n, 2*A103185(n)+n))%2`
-/

namespace A125720.P11213708661975164587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (Int.xor (n : ℤ) (2 * A103185 n + (n : ℤ))).toNat) 2

end

end A125720.P11213708661975164587

/-! ## A125720.P6404098164407293222

`A023416(or(A010078(n+1), A102370(n+1)))%2`
-/

namespace A125720.P6404098164407293222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (Int.lor (A010078 (n + 1)) (A102370 (n + 1))).toNat) 2

end

end A125720.P6404098164407293222

/-! ## A125720.P382938624919094088

`A080791(or(A010078(n+1), A102370(n+1)))%2`
-/

namespace A125720.P382938624919094088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080791 (Int.lor (A010078 (n + 1)) (A102370 (n + 1))).toNat) 2

end

end A125720.P382938624919094088

/-! ## A125720.P7277387449726577233

`A000120(or(n, A102370(n+1))-A102370(n+1))%2`
-/

namespace A125720.P7277387449726577233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (Int.lor (n : ℤ) (A102370 (n + 1)) - A102370 (n + 1)).toNat) 2

end

end A125720.P7277387449726577233

/-! ## A125720.P10999406543651138408

`(A000120(n)+∑[A104234(n)]-n)%2`
-/

namespace A125720.P10999406543651138408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))) 2

end

end A125720.P10999406543651138408

/-! ## A125720.P5128057861128663188

`A104234((A000120(n)+∑[A104234(n)]-n)^2)`
-/

namespace A125720.P5128057861128663188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104234 ((A000120 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))) ^ 2).toNat

end

end A125720.P5128057861128663188

/-! ## A125720.P908559090115221357

`A103863(n)%2`
-/

namespace A125720.P908559090115221357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103863 n) 2

end

end A125720.P908559090115221357

/-! ## A125720.P13221082339290793225

`and(1, A103863(char[1]+n))`
-/

namespace A125720.P13221082339290793225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A103863 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A125720.P13221082339290793225

/-! ## A125720.P143645450041867826

`and(A103863(n), A106666(n))`
-/

namespace A125720.P143645450041867826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A106666 n)

end

end A125720.P143645450041867826

/-! ## A125720.P5578530519281148957

`and(A103863(n), A113859(n))`
-/

namespace A125720.P5578530519281148957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A113859 n)

end

end A125720.P5578530519281148957

/-! ## A125720.P14506269352011983801

`and(A103863(n), A121442(n))`
-/

namespace A125720.P14506269352011983801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A121442 n)

end

end A125720.P14506269352011983801

/-! ## A125720.P9790487456258583175

`and(A103863(n), A124698(n))`
-/

namespace A125720.P9790487456258583175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A124698 n)

end

end A125720.P9790487456258583175

/-! ## A125720.P3081810857020983678

`and(A103863(n), A139729(n))`
-/

namespace A125720.P3081810857020983678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A139729 n)

end

end A125720.P3081810857020983678

/-! ## A125720.P10044589296355977457

`and(A103863(n), A139818(n))`
-/

namespace A125720.P10044589296355977457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A139818 n)

end

end A125720.P10044589296355977457

/-! ## A125720.P5193054495796534466

`and(A103863(n), A140413(n))`
-/

namespace A125720.P5193054495796534466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A140413 n)

end

end A125720.P5193054495796534466

/-! ## A125720.P12427832788897213918

`and(A103863(n), A140660(n))`
-/

namespace A125720.P12427832788897213918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A140660 n)

end

end A125720.P12427832788897213918

/-! ## A125720.P18113613341970657924

`and(A103863(n), A141583(n))`
-/

namespace A125720.P18113613341970657924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A141583 n)

end

end A125720.P18113613341970657924

/-! ## A125720.P18401383951843309909

`and(A103863(n), A141722(n))`
-/

namespace A125720.P18401383951843309909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103863 n) (A141722 n)

end

end A125720.P18401383951843309909

/-!
# A125721: a(n)=2*n!/d(n!); d(m)=A000005(m) is the number of divisors of m.

The programs for A125721, the canonical program `A125721.P13273067158620434452` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125721 has offset 0).

The definition of A125721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A125721.P13273067158620434452

`2*A000142(n)/A027423(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A125721

/-- `2*A000142(n)/A027423(n)` -/
def P13273067158620434452.Spec : Prop :=
  ∀ n, P13273067158620434452.a n = (A125721 n : ℚ)

end A125721

/-! ## A125721.P10061379320959481197

`A208529(n+2)/A027423(n)`
-/

namespace A125721.P10061379320959481197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208529 (n + 2) : ℚ) / (A027423 n : ℚ)

end

end A125721.P10061379320959481197

namespace A125721

/-- `A208529(n+2)/A027423(n)` -/
def P10061379320959481197.Spec : Prop :=
  ∀ n, P10061379320959481197.a n = (A125721 n : ℚ)

end A125721

/-! ## A125721.P18076460696617340394

`2/∏{e}[n!, #+1]*n!`
-/

namespace A125721.P18076460696617340394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A125721.P18076460696617340394

namespace A125721

/-- `2/∏{e}[n!, #+1]*n!` -/
def P18076460696617340394.Spec : Prop :=
  ∀ n, P18076460696617340394.a n = (A125721 n : ℚ)

end A125721

/-! ## A125721.P1743371560641189921

`∏[C(n, a(n-1))]/∏{e}[n!, #+1]` with `a(0)=2, a(1)=1`
-/

namespace A125721.P1743371560641189921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ)

end

end A125721.P1743371560641189921

namespace A125721

/-- `∏[C(n, a(n-1))]/∏{e}[n!, #+1]` -/
def P1743371560641189921.Spec : Prop :=
  ∀ n, P1743371560641189921.a n = (A125721 n : ℚ)

end A125721

/-! ## A125721.P10128982391985561197

`A208529(n+2)/A000005(A000142(n))`
-/

namespace A125721.P10128982391985561197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208529 (n + 2) : ℚ) / (A000005 (A000142 n).toNat : ℚ)

end

end A125721.P10128982391985561197

namespace A125721

/-- `A208529(n+2)/A000005(A000142(n))` -/
def P10128982391985561197.Spec : Prop :=
  ∀ n, P10128982391985561197.a n = (A125721 n : ℚ)

end A125721

/-!
# A125723: Greatest common divisor of n^6 and 6^n.

The programs for A125723, the canonical program `A125723.P7834224220130572128` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125723 has offset 1).

The definition of A125723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125723.P7834224220130572128

`gcd(6^(n+1), (n+1)^6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125723

/-- `gcd(6^(n+1), (n+1)^6)` -/
def P7834224220130572128.Spec : Prop :=
  ∀ n, (P7834224220130572128.a n : ℤ) = A125723 (n + 1)

theorem P7834224220130572128.correct : P7834224220130572128.Spec := by
  intro n
  simp only [A125723, Nat.add_sub_cancel]

end A125723

/-! ## A125723.P12957817070784764525

`gcd(6, n+1)^A032555(n+1)`
-/

namespace A125723.P12957817070784764525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (n + 1) : ℚ) ^ (A032555 (n + 1) : ℤ)

end

end A125723.P12957817070784764525

namespace A125723

/-- `gcd(6, n+1)^A032555(n+1)` -/
def P12957817070784764525.Spec : Prop :=
  ∀ n, P12957817070784764525.a n = (A125723 (n + 1) : ℚ)

end A125723

/-! ## A125723.P16147745381809694838

`A089128((n+1)²²)^(n+1)`
-/

namespace A125723.P16147745381809694838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (((n + 1) ^ 2) ^ 2) ^ (n + 1)

end

end A125723.P16147745381809694838

namespace A125723

/-- `A089128((n+1)²²)^(n+1)` -/
def P16147745381809694838.Spec : Prop :=
  ∀ n, P16147745381809694838.a n = A125723 (n + 1)

end A125723

/-! ## A125723.P13428659049300849666

`A324646(n+1)^A032555(n+1)`
-/

namespace A125723.P13428659049300849666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324646 (n + 1) : ℚ) ^ (A032555 (n + 1) : ℤ)

end

end A125723.P13428659049300849666

namespace A125723

/-- `A324646(n+1)^A032555(n+1)` -/
def P13428659049300849666.Spec : Prop :=
  ∀ n, P13428659049300849666.a n = (A125723 (n + 1) : ℚ)

end A125723

/-! ## A125723.P5475002729432252298

`A324646(n+1)^A070938(n+1)`
-/

namespace A125723.P5475002729432252298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324646 (n + 1) : ℚ) ^ (A070938 (n + 1) : ℤ)

end

end A125723.P5475002729432252298

namespace A125723

/-- `A324646(n+1)^A070938(n+1)` -/
def P5475002729432252298.Spec : Prop :=
  ∀ n, P5475002729432252298.a n = (A125723 (n + 1) : ℚ)

end A125723

/-!
# A125725: Numbers whose base-7 representation is 222....2.

The programs for A125725, the canonical program `A125725.P5826183713211194758` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125725 has offset 1).

The definition of A125725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125725.P5402836715505874633

`(7^n-1)/3`
-/

namespace A125725.P5402836715505874633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - 1 : ℚ) / 3

end

end A125725.P5402836715505874633

namespace A125725

/-- `(7^n-1)/3` -/
def P5402836715505874633.Spec : Prop :=
  ∀ n, P5402836715505874633.a n = (A125725 (n + 1) : ℚ)

theorem P5402836715505874633.correct : P5402836715505874633.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125725, Nat.add_sub_cancel, A125725.P5402836715505874633.a, A125725.P5826183713211194758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125725, Nat.add_sub_cancel, A125725.P5402836715505874633.a, A125725.P5826183713211194758.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A125725

/-! ## A125725.P5826183713211194758

`7*a(n-1)+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125725

/-- `7*a(n-1)+2` -/
def P5826183713211194758.Spec : Prop :=
  ∀ n, (P5826183713211194758.a n : ℤ) = A125725 (n + 1)

theorem P5826183713211194758.correct : P5826183713211194758.Spec := by
  intro n
  simp only [A125725, Nat.add_sub_cancel]

end A125725

/-! ## A125725.P2675547522719514768

`2*A023000(n)`
-/

namespace A125725.P2675547522719514768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023000 n

end

end A125725.P2675547522719514768

namespace A125725

/-- `2*A023000(n)` -/
def P2675547522719514768.Spec : Prop :=
  ∀ n, P2675547522719514768.a n = A125725 (n + 1)

end A125725

/-! ## A125725.P9729427391484039159

`lcm(2, round(7^n/3))`
-/

namespace A125725.P9729427391484039159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((7 ^ n : ℚ) / 3))

end

end A125725.P9729427391484039159

namespace A125725

/-- `lcm(2, round(7^n/3))` -/
def P9729427391484039159.Spec : Prop :=
  ∀ n, (P9729427391484039159.a n : ℤ) = A125725 (n + 1)

end A125725

/-! ## A125725.P1601840264464666731

`lcm(7, a(n-1))+2` with `a(0)=0`
-/

namespace A125725.P1601840264464666731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 2

end

end A125725.P1601840264464666731

namespace A125725

/-- `lcm(7, a(n-1))+2` -/
def P1601840264464666731.Spec : Prop :=
  ∀ n, (P1601840264464666731.a n : ℤ) = A125725 (n + 1)

end A125725

/-! ## A125725.P11698363035707161846

`∑[7*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A125725.P11698363035707161846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125725.P11698363035707161846

namespace A125725

/-- `∑[7*a(n-1)]` -/
def P11698363035707161846.Spec : Prop :=
  ∀ n, (P11698363035707161846.a n : ℤ) = A125725 (n + 1)

end A125725

/-! ## A125725.P7217316517447441188

`9-7*(1-a(n-1))` with `a(0)=0`
-/

namespace A125725.P7217316517447441188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  9 - 7 * (1 - a (n - 1))

end

end A125725.P7217316517447441188

namespace A125725

/-- `9-7*(1-a(n-1))` -/
def P7217316517447441188.Spec : Prop :=
  ∀ n, P7217316517447441188.a n = A125725 (n + 1)

end A125725

/-!
# A125729: Numbers whose base 7 representation is 555....5.

The programs for A125729, the canonical program `A125729.P12954727703465240879` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125729 has offset 1).

The definition of A125729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125729.P4109225668856167764

`5*(7^n-1)/6`
-/

namespace A125729.P4109225668856167764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (((7 ^ n : ℤ) - 1 : ℚ) / 6)

end

end A125729.P4109225668856167764

namespace A125729

/-- `5*(7^n-1)/6` -/
def P4109225668856167764.Spec : Prop :=
  ∀ n, P4109225668856167764.a n = (A125729 (n + 1) : ℚ)

theorem P4109225668856167764.correct : P4109225668856167764.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A125729, Nat.add_sub_cancel, A125729.P4109225668856167764.a, A125729.P12954727703465240879.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A125729, Nat.add_sub_cancel, A125729.P4109225668856167764.a, A125729.P12954727703465240879.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A125729

/-! ## A125729.P12954727703465240879

`7*a(n-1)+5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125729

/-- `7*a(n-1)+5` -/
def P12954727703465240879.Spec : Prop :=
  ∀ n, (P12954727703465240879.a n : ℤ) = A125729 (n + 1)

theorem P12954727703465240879.correct : P12954727703465240879.Spec := by
  intro n
  simp only [A125729, Nat.add_sub_cancel]

end A125729

/-! ## A125729.P10647751829827208966

`lcm(7, a(n-1))+5` with `a(0)=0`
-/

namespace A125729.P10647751829827208966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 7 (a (n - 1)) + 5

end

end A125729.P10647751829827208966

namespace A125729

/-- `lcm(7, a(n-1))+5` -/
def P10647751829827208966.Spec : Prop :=
  ∀ n, (P10647751829827208966.a n : ℤ) = A125729 (n + 1)

end A125729

/-! ## A125729.P115560952171134912

`∑[7*a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A125729.P115560952171134912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125729.P115560952171134912

namespace A125729

/-- `∑[7*a(n-1)]` -/
def P115560952171134912.Spec : Prop :=
  ∀ n, (P115560952171134912.a n : ℤ) = A125729 (n + 1)

end A125729

/-! ## A125729.P11779428476356415013

`∑[lcm(5, floor(7^(n-1)))]`
-/

namespace A125729.P11779428476356415013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125729.P11779428476356415013

namespace A125729

/-- `∑[lcm(5, floor(7^(n-1)))]` -/
def P11779428476356415013.Spec : Prop :=
  ∀ n, (P11779428476356415013.a n : ℤ) = A125729 (n + 1)

end A125729

/-! ## A125729.P1633867851587996916

`5-(a(n-1)-8*a(n-1))` with `a(0)=0`
-/

namespace A125729.P1633867851587996916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - (a (n - 1) - 8 * a (n - 1))

end

end A125729.P1633867851587996916

namespace A125729

/-- `5-(a(n-1)-8*a(n-1))` -/
def P1633867851587996916.Spec : Prop :=
  ∀ n, P1633867851587996916.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P13665947057077760489

`A083067(n)-1`
-/

namespace A125729.P13665947057077760489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083067 n - 1

end

end A125729.P13665947057077760489

namespace A125729

/-- `A083067(n)-1` -/
def P13665947057077760489.Spec : Prop :=
  ∀ n, P13665947057077760489.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P13687460496161471391

`∑[A196661(n)]-1`
-/

namespace A125729.P13687460496161471391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A125729.P13687460496161471391

namespace A125729

/-- `∑[A196661(n)]-1` -/
def P13687460496161471391.Spec : Prop :=
  ∀ n, P13687460496161471391.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P4828304520861354474

`A199420(n)/2-1`
-/

namespace A125729.P4828304520861354474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199420 n : ℚ) / 2 - 1

end

end A125729.P4828304520861354474

namespace A125729

/-- `A199420(n)/2-1` -/
def P4828304520861354474.Spec : Prop :=
  ∀ n, P4828304520861354474.a n = (A125729 (n + 1) : ℚ)

end A125729

/-! ## A125729.P4444214470230363827

`A024075(n)-A023000(n)`
-/

namespace A125729.P4444214470230363827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n - A023000 n

end

end A125729.P4444214470230363827

namespace A125729

/-- `A024075(n)-A023000(n)` -/
def P4444214470230363827.Spec : Prop :=
  ∀ n, P4444214470230363827.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P14207101395765896827

`A125823(n+1)+A023000(n)`
-/

namespace A125729.P14207101395765896827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125823 (n + 1) + A023000 n

end

end A125729.P14207101395765896827

namespace A125729

/-- `A125823(n+1)+A023000(n)` -/
def P14207101395765896827.Spec : Prop :=
  ∀ n, P14207101395765896827.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P6166651469979733604

`A125725(n+1)+A120741(n)`
-/

namespace A125729.P6166651469979733604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) + A120741 n

end

end A125729.P6166651469979733604

namespace A125729

/-- `A125725(n+1)+A120741(n)` -/
def P6166651469979733604.Spec : Prop :=
  ∀ n, P6166651469979733604.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P12868887284628437273

`A023000(n)+A083076(n)-1`
-/

namespace A125729.P12868887284628437273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n + (A083076 n - 1)

end

end A125729.P12868887284628437273

namespace A125729

/-- `A023000(n)+A083076(n)-1` -/
def P12868887284628437273.Spec : Prop :=
  ∀ n, P12868887284628437273.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P2679513777131233625

`A199417(n)-(A083076(n)+1)`
-/

namespace A125729.P2679513777131233625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n - (A083076 n + 1)

end

end A125729.P2679513777131233625

namespace A125729

/-- `A199417(n)-(A083076(n)+1)` -/
def P2679513777131233625.Spec : Prop :=
  ∀ n, P2679513777131233625.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P16063754602584013880

`A047852(n+1)-2*A047852(n)`
-/

namespace A125729.P16063754602584013880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 (n + 1) - 2 * A047852 n

end

end A125729.P16063754602584013880

namespace A125729

/-- `A047852(n+1)-2*A047852(n)` -/
def P16063754602584013880.Spec : Prop :=
  ∀ n, P16063754602584013880.a n = A125729 (n + 1)

end A125729

/-! ## A125729.P3881388025249876902

`A199421(n)/3-1`
-/

namespace A125729.P3881388025249876902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199421 n : ℚ) / 3 - 1

end

end A125729.P3881388025249876902

namespace A125729

/-- `A199421(n)/3-1` -/
def P3881388025249876902.Spec : Prop :=
  ∀ n, P3881388025249876902.a n = (A125729 (n + 1) : ℚ)

end A125729

/-!
# A125730: Minimal number of initial pieces needed to reach level n in the Solitaire Army game when diagonal jumps are allowed.

The programs for A125730, there is no canonical definition to state claims against.
-/

/-! ## A125730.P10894392148733322484

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8, a(5)=13, a(6)=23, a(7)=46, a(8)=123`
-/

namespace A125730.P10894392148733322484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 8, 13, 23, 46, 123] fun n a =>
  a (n - 1)

end

end A125730.P10894392148733322484

/-! ## A125730.P8302099647284644409

`∑[ceil(5^n/A342691(n+1))]`
-/

namespace A125730.P8302099647284644409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 ^ n : ℚ) / (A342691 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125730.P8302099647284644409

/-! ## A125730.P698147262909958297

`A318275(A152909(n))`
-/

namespace A125730.P698147262909958297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (A152909 n).toNat

end

end A125730.P698147262909958297

/-! ## A125730.P13458041646120072587

`∑[A000177(A171842(n))]`
-/

namespace A125730.P13458041646120072587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 (A171842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125730.P13458041646120072587

/-! ## A125730.P12829044576747055846

`∑[A235130(A336343(n))]`
-/

namespace A125730.P12829044576747055846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A336343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125730.P12829044576747055846

/-!
# A125732: Numbers n such that n=k*MiDi(n) for some integer k, where MiDi(n) = A103977(n) = "Minimal Difference of Divisors".

The programs for A125732, there is no canonical definition to state claims against.
-/

/-! ## A125732.P7088136984358360024

`lcm(A000005(A001333(n)), A125733(n+1))`
-/

namespace A125732.P7088136984358360024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A001333 n).toNat) (A125733 (n + 1))

end

end A125732.P7088136984358360024

/-! ## A125732.P5523373069285650916

`eq[∑[A284313(n)], A187752(n)]`
-/

namespace A125732.P5523373069285650916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A125732.P5523373069285650916

/-! ## A125732.P8284846525402949185

`record[A327990(A026929(n+1))+1]`
-/

namespace A125732.P8284846525402949185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327990 (A026929 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125732.P8284846525402949185

/-! ## A125732.P14757364423783770267

`record[and(A144106(n), A267508(n+1))]`
-/

namespace A125732.P14757364423783770267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144106 n) (A267508 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125732.P14757364423783770267

/-! ## A125732.P7572092755371858331

`eq[A088737(n+1), A333224(n)]`
-/

namespace A125732.P7572092755371858331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125732.P7572092755371858331

/-!
# A125733: a(n) gives k numbers from A125732.

The programs for A125733, there is no canonical definition to state claims against.
-/

/-! ## A125733.P6657489974920639417

`A125732(n+1)/A103977(A125732(n+1))`
-/

namespace A125733.P6657489974920639417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125732 (n + 1) : ℚ) / (A103977 (A125732 (n + 1)).toNat : ℚ)

end

end A125733.P6657489974920639417

/-! ## A125733.P1720654853253818012

`A330709(A330710(n+1)²)+1`
-/

namespace A125733.P1720654853253818012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (A330710 (n + 1) ^ 2).toNat + 1

end

end A125733.P1720654853253818012

/-! ## A125733.P17617801092723218023

`A125732(n+1)/A088496(A082169(n))`
-/

namespace A125733.P17617801092723218023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125732 (n + 1) : ℚ) / (A088496 (A082169 n).toNat : ℚ)

end

end A125733.P17617801092723218023

/-! ## A125733.P17984722196256449053

`A125732(n+1)/A327236(A125976(n))`
-/

namespace A125733.P17984722196256449053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125732 (n + 1) : ℚ) / (A327236 (A125976 n).toNat : ℚ)

end

end A125733.P17984722196256449053

/-! ## A125733.P691523630631892663

`A324524(n+1)-A079207(A162980(3*n))`
-/

namespace A125733.P691523630631892663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1) - A079207 (A162980 (3 * n)).toNat

end

end A125733.P691523630631892663

/-!
# A125734: Primes of the form 4*3^k + 1.

The programs for A125734, there is no canonical definition to state claims against.
-/

/-! ## A125734.P4379527087292676344

`A199108(A005537(n+1))`
-/

namespace A125734.P4379527087292676344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 (A005537 (n + 1)).toNat

end

end A125734.P4379527087292676344

/-! ## A125734.P12796614073081788379

`∩[A005109(n+1), A199108(n)]`
-/

namespace A125734.P12796614073081788379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125734.P12796614073081788379

/-!
# A125736: a(n)=IntegerLog(n-1)+IntegerLog(n+1), where IntegerLog(n)=A001414(n).

The programs for A125736, there is no canonical definition to state claims against.
-/

/-! ## A125736.P529450553776769224

`A001414((n+3)²-1)`
-/

namespace A125736.P529450553776769224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 3) ^ 2 - 1)

end

end A125736.P529450553776769224

/-! ## A125736.P323014753926123164

`A107463((n+3)²-1)`
-/

namespace A125736.P323014753926123164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 ((n + 3) ^ 2 - 1)

end

end A125736.P323014753926123164

/-! ## A125736.P13865142448204958270

`A352167((n+3)²-1)`
-/

namespace A125736.P13865142448204958270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 ((n + 3) ^ 2 - 1)

end

end A125736.P13865142448204958270

/-! ## A125736.P1301460044429345917

`A036288((n+3)²-1)-1`
-/

namespace A125736.P1301460044429345917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 ((n + 3) ^ 2 - 1) - 1

end

end A125736.P1301460044429345917

/-! ## A125736.P7795581721131727424

`A001414(record[3*n*(n-6)]+24)-3`
-/

namespace A125736.P7795581721131727424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((n : ℤ) - 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 24).toNat - 3

end

end A125736.P7795581721131727424

/-! ## A125736.P10565184529748633200

`A001414(A134582(n+3))-4`
-/

namespace A125736.P10565184529748633200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A134582 (n + 3)).toNat - 4

end

end A125736.P10565184529748633200

/-! ## A125736.P18103087066438855094

`and(-1, A001414(A005563(n+2)))`
-/

namespace A125736.P18103087066438855094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001414 (A005563 (n + 2)).toNat)

end

end A125736.P18103087066438855094

/-! ## A125736.P14928574724991521635

`A001414(A028347(2*(n+3)))-4`
-/

namespace A125736.P14928574724991521635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028347 (2 * (n + 3))).toNat - 4

end

end A125736.P14928574724991521635

/-! ## A125736.P10914649180919060009

`A001414(n+2)+A001414(n+4)`
-/

namespace A125736.P10914649180919060009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2) + A001414 (n + 4)

end

end A125736.P10914649180919060009

/-! ## A125736.P884486799136625564

`Δ[A025281(n+1)+A025281(n+3)]`
-/

namespace A125736.P884486799136625564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1) + A025281 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125736.P884486799136625564

/-!
# A125738: Primes p such that 3^p - 3^((p + 1)/2) + 1 is prime.

The programs for A125738, there is no canonical definition to state claims against.
-/

/-! ## A125738.P2268579727845481291

`p?[2*A176007(n+1)-1]`
-/

namespace A125738.P2268579727845481291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176007 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125738.P2268579727845481291

/-! ## A125738.P6820171961642819898

`A090368(A176007(n+2))`
-/

namespace A125738.P6820171961642819898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A176007 (n + 2)).toNat

end

end A125738.P6820171961642819898

/-! ## A125738.P10713955634734725778

`p?[A004273(A176007(n+1))]`
-/

namespace A125738.P10713955634734725778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A176007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125738.P10713955634734725778

/-! ## A125738.P1778410813563973187

`A047268(A176007(n+2))%A125742(3*n+1)`
-/

namespace A125738.P1778410813563973187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047268 (A176007 (n + 2)).toNat) (A125742 (3 * n + 1))

end

end A125738.P1778410813563973187

/-!
# A125739: Primes p such that 3^p + 3^((p + 1)/2) + 1 is prime.

The programs for A125739, there is no canonical definition to state claims against.
-/

/-! ## A125739.P4572790763921699131

`p?[2*A176008(n+1)-1]`
-/

namespace A125739.P4572790763921699131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176008 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125739.P4572790763921699131

/-! ## A125739.P16494446830149692474

`p?[A004273(A176008(n+1))]`
-/

namespace A125739.P16494446830149692474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A176008 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125739.P16494446830149692474

/-! ## A125739.P10850451780762293906

`A099375(A055824(n)+n)`
-/

namespace A125739.P10850451780762293906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A055824 n + (n : ℤ)).toNat

end

end A125739.P10850451780762293906

/-!
# A125740: Numbers k such that A117731(k) differs from A082687(k).

The programs for A125740, there is no canonical definition to state claims against.
-/

/-! ## A125740.P508724994253658961

`record[A025480(A123944(n+2))]`
-/

namespace A125740.P508724994253658961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A123944 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125740.P508724994253658961

/-! ## A125740.P3064138955962573289

`lt[1, A119788(2*(n+1))]+1`
-/

namespace A125740.P3064138955962573289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A125740.P3064138955962573289

/-! ## A125740.P2257200287635600187

`lt[1, A119788(A004277(n))]`
-/

namespace A125740.P2257200287635600187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125740.P2257200287635600187

/-! ## A125740.P1774743726686037304

`lt[1, A119788(A028310(2*n))]`
-/

namespace A125740.P1774743726686037304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A125740.P1774743726686037304

/-!
# A125742: Primes p such that (2^p - 2^((p+1)/2) + 1)/5 is prime.

The programs for A125742, there is no canonical definition to state claims against.
-/

/-! ## A125742.P10801771776660550989

`2*A006596(n+1)+1`
-/

namespace A125742.P10801771776660550989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006596 (n + 1) + 1

end

end A125742.P10801771776660550989

/-! ## A125742.P6748072531542954951

`A005408(A006596(n+1))`
-/

namespace A125742.P6748072531542954951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A006596 (n + 1)).toNat

end

end A125742.P6748072531542954951

/-! ## A125742.P2741343534472773584

`A004273(A006596(n+1)+1)`
-/

namespace A125742.P2741343534472773584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A006596 (n + 1) + 1).toNat

end

end A125742.P2741343534472773584

/-! ## A125742.P3247358721074369827

`A047259(A006596(n+1)+1)`
-/

namespace A125742.P3247358721074369827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (A006596 (n + 1) + 1).toNat

end

end A125742.P3247358721074369827

/-! ## A125742.P7458962050723263818

`A047268(A006596(n+1)+1)`
-/

namespace A125742.P7458962050723263818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A006596 (n + 1) + 1).toNat

end

end A125742.P7458962050723263818

/-!
# A125743: Primes p such that (3^p - 3^((p + 1)/2) + 1)/7 is prime.

The programs for A125743, there is no canonical definition to state claims against.
-/

/-! ## A125743.P16020801797095557463

`filter[A239842(n+1), A072792(#)]`
-/

namespace A125743.P16020801797095557463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072792 (f1 j).toNat = 1) n)

end

end A125743.P16020801797095557463

/-! ## A125743.P339806351285812037

`A239842(eq[A239832(n), A343381(n)])`
-/

namespace A125743.P339806351285812037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239842 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125743.P339806351285812037

/-!
# A125744: Primes p such that (3^p + 3^((p + 1)/2) + 1)/7 is prime.

The programs for A125744, there is no canonical definition to state claims against.
-/

/-! ## A125744.P9588741611137900733

`filter[A239842(n+1), A059620(#)]`
-/

namespace A125744.P9588741611137900733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A125744.P9588741611137900733

/-! ## A125744.P16984760299438282376

`filter[A239842(n+1), A241979(#)]`
-/

namespace A125744.P16984760299438282376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241979 (f1 j).toNat = 1) n)

end

end A125744.P16984760299438282376

/-!
# A125745: Numbers k such that the numerator of Sum_{j=1..k} k^2/(2*j*(j+k)) is prime.

The programs for A125745, there is no canonical definition to state claims against.
-/

/-! ## A125745.P12783336284900416575

`A035043(A291168(or(1, n²)))+n`
-/

namespace A125745.P12783336284900416575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A291168 (Nat.lor 1 (n ^ 2))).toNat + (n : ℤ)

end

end A125745.P12783336284900416575

/-! ## A125745.P10387649351109520815

`A010349(n+1)-A033999(A161948(2*n+1))`
-/

namespace A125745.P10387649351109520815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010349 (n + 1) - A033999 (A161948 (2 * n + 1)).toNat

end

end A125745.P10387649351109520815

/-!
# A125746: a(n) = smallest divisor d of n such that n <= {sum of d and all smaller divisors of n}.

The programs for A125746, there is no canonical definition to state claims against.
-/

/-! ## A125746.P11374020313170917408

`(n+1)/A300826(n+1)`
-/

namespace A125746.P11374020313170917408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A300826 (n + 1) : ℚ)

end

end A125746.P11374020313170917408

/-! ## A125746.P17549567328496381548

`tan(acot(A300826(n+1)))*A000027(n+1)`
-/

namespace A125746.P17549567328496381548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (A300826 (n + 1) : ℝ)) * (A000027 (n + 1) : ℝ)

end

end A125746.P17549567328496381548

/-! ## A125746.P16306389648258004994

`(n+1)*A300826(n+1)^-A300826(A006530(n+1))`
-/

namespace A125746.P16306389648258004994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A300826 (n + 1) : ℚ) ^ (-A300826 (A006530 (n + 1)).toNat : ℤ)

end

end A125746.P16306389648258004994

/-! ## A125746.P15398971397167345757

`A027750(A125747(n+1)+A006218(n))`
-/

namespace A125746.P15398971397167345757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A125747 (n + 1) + A006218 n).toNat

end

end A125746.P15398971397167345757

/-! ## A125746.P15282572777337400631

`(A022464(n+1)%2+n)/(A302110(n+1)+A000700(A302110(n²+1)))`
-/

namespace A125746.P15282572777337400631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A022464 (n + 1)) 2 + (n : ℤ) : ℚ) / (A302110 (n + 1) + A000700 (A302110 (n ^ 2 + 1)).toNat : ℚ)

end

end A125746.P15282572777337400631

/-! ## A125746.P2116961247103039881

`A234575(A302110(n+1)+A000124(n))`
-/

namespace A125746.P2116961247103039881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A302110 (n + 1) + A000124 n).toNat

end

end A125746.P2116961247103039881

/-! ## A125746.P13843726379083534482

`A010766(A300826(n+1)+A000217(n))`
-/

namespace A125746.P13843726379083534482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A300826 (n + 1) + A000217 n).toNat

end

end A125746.P13843726379083534482

/-! ## A125746.P16403555026554699643

`A010766(A302110(n+1)+A000124(n))`
-/

namespace A125746.P16403555026554699643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A302110 (n + 1) + A000124 n).toNat

end

end A125746.P16403555026554699643

/-! ## A125746.P4577476996746528660

`A049834(A300826(n+1)+A000217(n))`
-/

namespace A125746.P4577476996746528660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A300826 (n + 1) + A000217 n).toNat

end

end A125746.P4577476996746528660

/-! ## A125746.P1877882548362135246

`A049834(A302110(n+1)+A000124(n))`
-/

namespace A125746.P1877882548362135246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A302110 (n + 1) + A000124 n).toNat

end

end A125746.P1877882548362135246

/-! ## A125746.P297875763168977057

`A051537(A300826(n+1)+A000217(n))`
-/

namespace A125746.P297875763168977057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A300826 (n + 1) + A000217 n).toNat

end

end A125746.P297875763168977057

/-! ## A125746.P7757788973015847867

`A126988(A300826(n+1)+A000217(n))`
-/

namespace A125746.P7757788973015847867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A300826 (n + 1) + A000217 n).toNat

end

end A125746.P7757788973015847867

/-!
# A125747: a(n) is the smallest positive integer such that (Sum_{t(k)|n, 1 <= k <= a(n)} t(k)) >= n, where t(k) is the k-th positive divisor of n.

The programs for A125747, there is no canonical definition to state claims against.
-/

/-! ## A125747.P15285582205660553003

`Δ[A006218(n)]-A302110(n+1)`
-/

namespace A125747.P15285582205660553003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302110 (n + 1)

end

end A125747.P15285582205660553003

/-! ## A125747.P15871459784545894326

`Δ[A054519(n)]-A302110(n+1)`
-/

namespace A125747.P15871459784545894326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302110 (n + 1)

end

end A125747.P15871459784545894326

/-! ## A125747.P11058232450793685550

`A000005(n+1)-A302110(n+1)`
-/

namespace A125747.P11058232450793685550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A302110 (n + 1)

end

end A125747.P11058232450793685550

/-! ## A125747.P11176345973380388509

`A320111(A103517(n))-A302110(n+1)`
-/

namespace A125747.P11176345973380388509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A103517 n).toNat - A302110 (n + 1)

end

end A125747.P11176345973380388509

/-! ## A125747.P3619939948056465206

`A055396(A105555(n+1))-A302110(n+1)`
-/

namespace A125747.P3619939948056465206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A105555 (n + 1)).toNat - A302110 (n + 1)

end

end A125747.P3619939948056465206

/-! ## A125747.P311819705741162280

`A001227(n+1)*A001511(n+1)-A302110(n+1)`
-/

namespace A125747.P311819705741162280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1) - A302110 (n + 1)

end

end A125747.P311819705741162280

/-! ## A125747.P10029981657226331160

`A216624(A000124(n))-A302110(n+1)`
-/

namespace A125747.P10029981657226331160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (A000124 n).toNat - A302110 (n + 1)

end

end A125747.P10029981657226331160

/-!
# A125748: a(n) is the smallest positive integer such that Sum_{1<=k<=a(n), gcd(k,n)=1} k is >= n.

The programs for A125748, there is no canonical definition to state claims against.
-/

/-! ## A125748.P16827794120799779240

`A077581(A125749(n+1)+∑[n])`
-/

namespace A125748.P16827794120799779240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A125749 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A125748.P16827794120799779240

/-! ## A125748.P16412606896047631633

`round(sqrt(A215733(n+5)+A000203(3*n+1)))-1`
-/

namespace A125748.P16412606896047631633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A215733 (n + 5) + A000203 (3 * n + 1) : ℝ)) - 1

end

end A125748.P16412606896047631633

/-! ## A125748.P1894527010581733191

`A272677(A053209(n))+A175023(n+1)`
-/

namespace A125748.P1894527010581733191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272677 (A053209 n).toNat + A175023 (n + 1)

end

end A125748.P1894527010581733191

/-! ## A125748.P18285920368626976740

`or(A047130(2*(n+2)), A102572(A075247(2*(n+2))))`
-/

namespace A125748.P18285920368626976740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047130 (2 * (n + 2))) (A102572 (A075247 (2 * (n + 2))).toNat)

end

end A125748.P18285920368626976740

/-!
# A125749: a(n) is the smallest positive integer such that (Sum_{1<=k<=a(n), gcd(t(k),n)=1} t(k)) is >= n, where t(k) is the k-th positive integer which is coprime to n.

The programs for A125749, there is no canonical definition to state claims against.
-/

/-! ## A125749.P10782003295434759538

`A000194(A033885(n+1))%Δ[A099898(n)]`
-/

namespace A125749.P10782003295434759538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A033885 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A125749.P10782003295434759538

/-! ## A125749.P3629789295902850946

`A000194(A033885(n+1)%A093669(n+1))`
-/

namespace A125749.P3629789295902850946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A033885 (n + 1)) (A093669 (n + 1))).toNat

end

end A125749.P3629789295902850946

/-! ## A125749.P13415085027906937636

`A000194(A033885(n+1)+n*A151620(n))`
-/

namespace A125749.P13415085027906937636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A033885 (n + 1) + (n : ℤ) * A151620 n).toNat

end

end A125749.P13415085027906937636

/-! ## A125749.P9332117574046233466

`A000523(A361709(n+1)+A165123(3*(n+1)))`
-/

namespace A125749.P9332117574046233466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A361709 (n + 1) + A165123 (3 * (n + 1))).toNat

end

end A125749.P9332117574046233466

/-! ## A125749.P10794012502699349662

`A000041(A151620(n))*A000194(A033885(n+1))`
-/

namespace A125749.P10794012502699349662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151620 n).toNat * A000194 (A033885 (n + 1)).toNat

end

end A125749.P10794012502699349662

/-!
# A125750: A Moessner triangle using (1, 3, 5, ...).

The programs for A125750, there is no canonical definition to state claims against.
-/

/-! ## A125750.P13359736247076434734

`2*A130534(A007401(n+1))-A130534(n)`
-/

namespace A125750.P13359736247076434734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130534 (A007401 (n + 1)).toNat - A130534 n

end

end A125750.P13359736247076434734

/-! ## A125750.P2962776999104223878

`2*A125714(n+1)-A130534(n)`
-/

namespace A125750.P2962776999104223878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125714 (n + 1) - A130534 n

end

end A125750.P2962776999104223878

/-! ## A125750.P6015418142372013025

`A004277(A125714(n+1))-A130534(n)`
-/

namespace A125750.P6015418142372013025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A125714 (n + 1)).toNat - A130534 n

end

end A125750.P6015418142372013025

/-! ## A125750.P5530236560524965399

`A005843(abs(A008275(comp[∑[n]])))-A130534(n)`
-/

namespace A125750.P5530236560524965399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A008275 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|.toNat - A130534 n

end

end A125750.P5530236560524965399

/-! ## A125750.P12942462617809499452

`A005843(A130534(comp[∑[n-1]]))-A130534(n)`
-/

namespace A125750.P12942462617809499452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A130534 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat - A130534 n

end

end A125750.P12942462617809499452

/-!
# A125753: Triangle read by rows: T(n,k) (n>=1) gives the number of n-indecomposable polyominoes with k cells (k >= n).

The programs for A125753, there is no canonical definition to state claims against.
-/

/-! ## A125753.P5169914374971788429

`A125761(n+1)*A129565(n+1)`
-/

namespace A125753.P5169914374971788429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125761 (n + 1) * A129565 (n + 1)

end

end A125753.P5169914374971788429

/-! ## A125753.P3949037618050876694

`A125761(n+1)%A125769(A125771(n+1))²`
-/

namespace A125753.P3949037618050876694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125761 (n + 1)) (A125769 (A125771 (n + 1)).toNat ^ 2)

end

end A125753.P3949037618050876694

/-!
# A125754: Numbers n whose reverse binary representation has the following property: let a 0 mean "halving" and a 1 mean "k -> 3k+1". The number describes an operation k -> f_n(k). If the equation f_n(k) = k has an integer solution, n is a term in the sequence.

The programs for A125754, there is no canonical definition to state claims against.
-/

/-! ## A125754.P7593461534955199679

`eq[A000120(n), A124768(A036044(n))]`
-/

namespace A125754.P7593461534955199679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A036044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125754.P7593461534955199679

/-!
# A125756: Numbers n whose reverse binary representation has the following property: let a 0 mean "halving" and a 1 mean "k -> 3k+1". The number describes an operation k -> f_n(k). If the equation f_n(k) = k has a positive integer solution, n is a term in the sequence.

The programs for A125756, there is no canonical definition to state claims against.
-/

/-! ## A125756.P7442189844461515307

`A125754(eq[1, ceil(1/A125755(n+1))]+1)`
-/

namespace A125756.P7442189844461515307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A125755 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A125756.P7442189844461515307

/-!
# A125757: Integer solutions corresponding to the terms in A125756.

The programs for A125757, there is no canonical definition to state claims against.
-/

/-! ## A125757.P9221256445752636227

`A125755(lt[1, A125755(n+1)+3]+1)`
-/

namespace A125757.P9221256445752636227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125755 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A125757.P9221256445752636227

/-! ## A125757.P6993931123773155018

`A125755(eq[1, ceil(1/A125755(n+1))]+1)`
-/

namespace A125757.P6993931123773155018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A125755 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A125757.P6993931123773155018

/-!
# A125758: Numbers congruent to 4 or 7 (mod 9).

The programs for A125758, the canonical program `A125758.P17502374449995306745` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125758 has offset 1).

The definition of A125758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125758.P17502374449995306745

`a(n-2)+9` with `a(0)=4, a(1)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125758

/-- `a(n-2)+9` -/
def P17502374449995306745.Spec : Prop :=
  ∀ n, (P17502374449995306745.a n : ℤ) = A125758 (n + 1)

theorem P17502374449995306745.correct : P17502374449995306745.Spec := by
  intro n
  simp only [A125758, Nat.add_sub_cancel]

end A125758

/-! ## A125758.P1687006774807960009

`3*comp[3*n]+1`
-/

namespace A125758.P1687006774807960009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A125758.P1687006774807960009

namespace A125758

/-- `3*comp[3*n]+1` -/
def P1687006774807960009.Spec : Prop :=
  ∀ n, (P1687006774807960009.a n : ℤ) = A125758 (n + 1)

end A125758

/-! ## A125758.P12290407751252598880

`record[lcm(3, n+1)+1]`
-/

namespace A125758.P12290407751252598880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125758.P12290407751252598880

namespace A125758

/-- `record[lcm(3, n+1)+1]` -/
def P12290407751252598880.Spec : Prop :=
  ∀ n, (P12290407751252598880.a n : ℤ) = A125758 (n + 1)

end A125758

/-! ## A125758.P4989971680184344788

`∑[9-a(n-1)]` with `a(0)=4, a(1)=3`
-/

namespace A125758.P4989971680184344788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P4989971680184344788

namespace A125758

/-- `∑[9-a(n-1)]` -/
def P4989971680184344788.Spec : Prop :=
  ∀ n, P4989971680184344788.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P15217609603181781121

`abs(∑[3*gcd(2, n)]-2)`
-/

namespace A125758.P15217609603181781121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2|

end

end A125758.P15217609603181781121

namespace A125758

/-- `abs(∑[3*gcd(2, n)]-2)` -/
def P15217609603181781121.Spec : Prop :=
  ∀ n, P15217609603181781121.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P4216912570263953528

`floor(9*n-(a(n-1)-2))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A125758.P4216912570263953528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (9 * n : ℤ) - (a (n - 1) - 2)

end

end A125758.P4216912570263953528

namespace A125758

/-- `floor(9*n-(a(n-1)-2))` -/
def P4216912570263953528.Spec : Prop :=
  ∀ n, P4216912570263953528.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P9175098153994300940

`lt[2, val((2*n+1)*(n+2), 3)]`
-/

namespace A125758.P9175098153994300940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n + 1) * (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125758.P9175098153994300940

namespace A125758

/-- `lt[2, val((2*n+1)*(n+2), 3)]` -/
def P9175098153994300940.Spec : Prop :=
  ∀ n, (P9175098153994300940.a n : ℤ) = A125758 (n + 1)

end A125758

/-! ## A125758.P291222021605522298

`lt[0, C(2*n+1, 6)%(2*n+1)]`
-/

namespace A125758.P291222021605522298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 6 % (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125758.P291222021605522298

namespace A125758

/-- `lt[0, C(2*n+1, 6)%(2*n+1)]` -/
def P291222021605522298.Spec : Prop :=
  ∀ n, (P291222021605522298.a n : ℤ) = A125758 (n + 1)

end A125758

/-! ## A125758.P16369431346175357582

`∑[A040005(n)+2]`
-/

namespace A125758.P16369431346175357582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P16369431346175357582

namespace A125758

/-- `∑[A040005(n)+2]` -/
def P16369431346175357582.Spec : Prop :=
  ∀ n, P16369431346175357582.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P18180950491176069634

`∑[round(sqrt(A040243(n)))]`
-/

namespace A125758.P18180950491176069634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A040243 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P18180950491176069634

namespace A125758

/-- `∑[round(sqrt(A040243(n)))]` -/
def P18180950491176069634.Spec : Prop :=
  ∀ n, P18180950491176069634.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P5604648508098897365

`A056991(lt[xor(2, n), n])`
-/

namespace A125758.P5604648508098897365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A125758.P5604648508098897365

namespace A125758

/-- `A056991(lt[xor(2, n), n])` -/
def P5604648508098897365.Spec : Prop :=
  ∀ n, P5604648508098897365.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P10211890629494950341

`∑[A010121(2*n)+2]`
-/

namespace A125758.P10211890629494950341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P10211890629494950341

namespace A125758

/-- `∑[A010121(2*n)+2]` -/
def P10211890629494950341.Spec : Prop :=
  ∀ n, P10211890629494950341.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P16316913854328965386

`∑[A010704(a(n-1))]` with `a(0)=4`
-/

namespace A125758.P16316913854328965386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A010704 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P16316913854328965386

namespace A125758

/-- `∑[A010704(a(n-1))]` -/
def P16316913854328965386.Spec : Prop :=
  ∀ n, P16316913854328965386.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P17934912751779929500

`∑[A045814(a(n-1))]` with `a(0)=4`
-/

namespace A125758.P17934912751779929500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A045814 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P17934912751779929500

namespace A125758

/-- `∑[A045814(a(n-1))]` -/
def P17934912751779929500.Spec : Prop :=
  ∀ n, P17934912751779929500.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P13098171680845098643

`∑[A178667(a(n-1))]` with `a(0)=4`
-/

namespace A125758.P13098171680845098643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A178667 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P13098171680845098643

namespace A125758

/-- `∑[A178667(a(n-1))]` -/
def P13098171680845098643.Spec : Prop :=
  ∀ n, P13098171680845098643.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P8580594694022869859

`∑[A179103(a(n-1))]` with `a(0)=4`
-/

namespace A125758.P8580594694022869859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A179103 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P8580594694022869859

namespace A125758

/-- `∑[A179103(a(n-1))]` -/
def P8580594694022869859.Spec : Prop :=
  ∀ n, P8580594694022869859.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P462340510488222130

`∑[A267352(a(n-1))]` with `a(0)=4`
-/

namespace A125758.P462340510488222130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A267352 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P462340510488222130

namespace A125758

/-- `∑[A267352(a(n-1))]` -/
def P462340510488222130.Spec : Prop :=
  ∀ n, P462340510488222130.a n = A125758 (n + 1)

end A125758

/-! ## A125758.P14770151974330349097

`∑[A317490(a(n-1))]` with `a(0)=4`
-/

namespace A125758.P14770151974330349097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A317490 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125758.P14770151974330349097

namespace A125758

/-- `∑[A317490(a(n-1))]` -/
def P14770151974330349097.Spec : Prop :=
  ∀ n, P14770151974330349097.a n = A125758 (n + 1)

end A125758

/-!
# A125759: Number of n-indecomposable polyominoes.

The programs for A125759, there is no canonical definition to state claims against.
-/

/-! ## A125759.P17895032495419497114

`A125709(n+1)+∑[A000104(n)]-1`
-/

namespace A125759.P17895032495419497114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125709 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A125759.P17895032495419497114

/-! ## A125759.P11167745698750587748

`A125709(n+1)+∑[A000105(n)]-1`
-/

namespace A125759.P11167745698750587748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125709 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A125759.P11167745698750587748

/-!
# A125760: a(n) = Product_{k=1..n} A002109(k).

The programs for A125760, there is no canonical definition to state claims against.
-/

/-! ## A125760.P426398642338542272

`∏[∏[n^n]]`
-/

namespace A125760.P426398642338542272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125760.P426398642338542272

/-! ## A125760.P10872528022338147758

`abs(∏[root(n, 1/n)*a(n-1)])` with `a(0)=1`
-/

namespace A125760.P10872528022338147758
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℝ) ^ (1 / (1 / (n : ℚ) : ℝ)) * f1 (n - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A125760.P10872528022338147758

/-! ## A125760.P16232833070249860036

`floor(∏[root(n, 1/n)*a(n-1)])` with `a(0)=1`
-/

namespace A125760.P16232833070249860036
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℝ) ^ (1 / (1 / (n : ℚ) : ℝ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A125760.P16232833070249860036

/-! ## A125760.P11246155611491765347

`round(∏[root(n, 1/n)*a(n-1)])` with `a(0)=1`
-/

namespace A125760.P11246155611491765347
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℝ) ^ (1 / (1 / (n : ℚ) : ℝ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A125760.P11246155611491765347

/-! ## A125760.P3066398098862884908

`a(n-1)²/a(n-2)*n^n` with `a(0)=1, a(1)=1`
-/

namespace A125760.P3066398098862884908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 / a (n - 2) * (n ^ n : ℚ)

end

end A125760.P3066398098862884908

/-!
# A125762: Number of planar Langford sequences.

The programs for A125762, there is no canonical definition to state claims against.
-/

/-! ## A125762.P11382656726919591305

`and(A010756(n), A231396(A157729(n)))`
-/

namespace A125762.P11382656726919591305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010756 n) (A231396 (A157729 n).toNat)

end

end A125762.P11382656726919591305

/-! ## A125762.P16261672420268543197

`lcm(A130321(n), A241035(A090452(n+1)))`
-/

namespace A125762.P16261672420268543197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130321 n) (A241035 (A090452 (n + 1)).toNat)

end

end A125762.P16261672420268543197

/-! ## A125762.P13066226165975770039

`and(A004197(A026778(n)), A075501(n+1))`
-/

namespace A125762.P13066226165975770039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004197 (A026778 n).toNat) (A075501 (n + 1))

end

end A125762.P13066226165975770039

/-! ## A125762.P7320037688490817524

`and(A049032(n+1), A051933(A018554(n+1)))`
-/

namespace A125762.P7320037688490817524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049032 (n + 1)) (A051933 (A018554 (n + 1)).toNat)

end

end A125762.P7320037688490817524

/-!
# A125763: Numbers k such that k^2 is a term of A120329.

The programs for A125763, there is no canonical definition to state claims against.
-/

/-! ## A125763.P3146476690139560926

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=20, a(4)=103`
-/

namespace A125763.P3146476690139560926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 20, 103] fun n a =>
  a (n - 1)

end

end A125763.P3146476690139560926

/-!
# A125764: Array of partial sums of rows of array in A086271, read by antidiagonals.

The programs for A125764, there is no canonical definition to state claims against.
-/

/-! ## A125764.P3141717398096828963

`A104633(n+1)+A113582(n+1)-1`
-/

namespace A125764.P3141717398096828963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + (A113582 (n + 1) - 1)

end

end A125764.P3141717398096828963

/-! ## A125764.P2434475228757868752

`A268759(comp[∑[n-1]])+A003991(n+1)`
-/

namespace A125764.P2434475228757868752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268759 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A003991 (n + 1)

end

end A125764.P2434475228757868752

/-! ## A125764.P9129901498241560650

`A134172(A049207(n))+A104633(n+1)`
-/

namespace A125764.P9129901498241560650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 (A049207 n).toNat + A104633 (n + 1)

end

end A125764.P9129901498241560650

/-! ## A125764.P6137032209995523755

`A000124(A003991(n+1))-A113582(A080036(n))`
-/

namespace A125764.P6137032209995523755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003991 (n + 1)).toNat - A113582 (A080036 n).toNat

end

end A125764.P6137032209995523755

/-! ## A125764.P12552012066859961923

`∑{d}[A036561(n), A327530(#)]`
-/

namespace A125764.P12552012066859961923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327530 d

end

end A125764.P12552012066859961923

/-!
# A125765: Consider the array T(n, m) = m-th prime of the form n*i(i+1)/2 +/ - 1. This sequence is the main diagonal.

The programs for A125765, there is no canonical definition to state claims against.
-/

/-! ## A125765.P18252778898257825882

`p?[A158279(n+1)-1]`
-/

namespace A125765.P18252778898257825882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158279 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125765.P18252778898257825882

/-!
# A125767: Least prime of the form n*T_i +/ -1, where T is a triangular number.

The programs for A125767, there is no canonical definition to state claims against.
-/

/-! ## A125767.P752056147585346570

`A125766(∑[n]+1)`
-/

namespace A125767.P752056147585346570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A125767.P752056147585346570

/-! ## A125767.P17116400329934373110

`p?[A125766(A000124(n))]`
-/

namespace A125767.P17116400329934373110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125767.P17116400329934373110

/-! ## A125767.P11097187386326173380

`p?[A125766(∑[A028310(n)])]`
-/

namespace A125767.P11097187386326173380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125767.P11097187386326173380

/-! ## A125767.P2015563977098726346

`∏{p}[A125766(A000217(n)+1), #]`
-/

namespace A125767.P2015563977098726346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125766 (A000217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125767.P2015563977098726346

/-! ## A125767.P4757561508222512958

`p?[A059268(n)*A125766(n+1)]`
-/

namespace A125767.P4757561508222512958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A125766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125767.P4757561508222512958

/-!
# A125768: Least number k such that n*T_k +/ - 1 is prime.

The programs for A125768, there is no canonical definition to state claims against.
-/

/-! ## A125768.P17553242040814421881

`ceil(A125767(n+1)/((n+1)*ϕ²))`
-/

namespace A125768.P17553242040814421881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125767 (n + 1) : ℝ) / ((n + 1 : ℝ) * Real.goldenRatio ^ 2)⌉

end

end A125768.P17553242040814421881

/-! ## A125768.P794169645473233108

`A059971(A107286(n)%A127581(n))`
-/

namespace A125768.P794169645473233108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059971 (Int.tmod (A107286 n) (A127581 n)).toNat

end

end A125768.P794169645473233108

/-! ## A125768.P4696567646693380730

`A066728(A107286(n)+2)%A008486(A032932(n+1))`
-/

namespace A125768.P4696567646693380730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066728 (A107286 n + 2).toNat) (A008486 (A032932 (n + 1)).toNat)

end

end A125768.P4696567646693380730

/-! ## A125768.P11590399831942221105

`A077481(A279961(n)%A076675(n+1))`
-/

namespace A125768.P11590399831942221105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077481 (Int.tmod (A279961 n) (A076675 (n + 1))).toNat

end

end A125768.P11590399831942221105

/-! ## A125768.P618001561229636060

`A153284(∏{d}[1-n, #])`
-/

namespace A125768.P618001561229636060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A125768.P618001561229636060

/-!
# A125769: a(n) is the least number j such that j*T_k +/ - 1 is n-th prime for some k-th triangular number.

The programs for A125769, there is no canonical definition to state claims against.
-/

/-! ## A125769.P7838107502113029196

`A016016(A137734(n)+A056119(n))`
-/

namespace A125769.P7838107502113029196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A137734 n + A056119 n).toNat

end

end A125769.P7838107502113029196

/-! ## A125769.P11793373280216417154

`A016016(A313789(n)+A000096(n))`
-/

namespace A125769.P11793373280216417154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A313789 n + A000096 n).toNat

end

end A125769.P11793373280216417154

/-! ## A125769.P14307291840719628127

`A126387(Δ[record[A175181(3*n+2)]])`
-/

namespace A125769.P14307291840719628127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (f1 (n + 1) - f1 n).toNat

end

end A125769.P14307291840719628127

/-! ## A125769.P4185780552232645473

`A323023(A196670(n+1)-round(2*n/3))`
-/

namespace A125769.P4185780552232645473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A196670 (n + 1) - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A125769.P4185780552232645473

/-! ## A125769.P3181819596080084000

`A001826(A299992(n+1)+A279722(n))`
-/

namespace A125769.P3181819596080084000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A299992 (n + 1) + A279722 n).toNat

end

end A125769.P3181819596080084000

/-!
# A125771: Primes of the form j*T_k +/ - 1, where T_k is the k-th triangular number greater than 9.

The programs for A125771, there is no canonical definition to state claims against.
-/

/-! ## A125771.P6364923816783289490

`p?[A138892(n)-A010056(n)]`
-/

namespace A125771.P6364923816783289490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138892 n - A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125771.P6364923816783289490

/-! ## A125771.P15636481764007521448

`p?[A138892(n+1)-A192687(n)]`
-/

namespace A125771.P15636481764007521448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138892 (n + 1) - A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125771.P15636481764007521448

/-! ## A125771.P2049797324316805455

`p?[A138892(A001690(n+1))+A000007(n)]`
-/

namespace A125771.P2049797324316805455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138892 (A001690 (n + 1)).toNat + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125771.P2049797324316805455

/-! ## A125771.P6925459126452466760

`p?[comp[A337277(A323608(n+1)²)]]`
-/

namespace A125771.P6925459126452466760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337277 (A323608 (n + 1) ^ 2).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A125771.P6925459126452466760

/-! ## A125771.P3336399597551718840

`A252280(A134810(n+1)+3)`
-/

namespace A125771.P3336399597551718840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252280 (A134810 (n + 1) + 3).toNat

end

end A125771.P3336399597551718840

/-!
# A125772: Primes not of the form j*T_k +/ - 1, where T_k is the k-th triangular number greater than 9.

The programs for A125772, there is no canonical definition to state claims against.
-/

/-! ## A125772.P8243464957105306086

`p?[∑[A306286(A290480(n+1))]]`
-/

namespace A125772.P8243464957105306086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A290480 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125772.P8243464957105306086

/-!
# A125773: Numbers k that are not powers of 2 such that 2^k mod k = 2^k mod k^2; or A068535 with powers of 2 excluded.

The programs for A125773, there is no canonical definition to state claims against.
-/

/-! ## A125773.P9438634986006645618

`filter[A068535(n+1), A347523(#)]`
-/

namespace A125773.P9438634986006645618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A125773.P9438634986006645618

/-! ## A125773.P6523940178934263933

`filter[A068535(n+2), A267579(#)]`
-/

namespace A125773.P6523940178934263933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068535 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A125773.P6523940178934263933

/-! ## A125773.P2968676699639656853

`filter[A068535(n+3), A132350(#)]`
-/

namespace A125773.P2968676699639656853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068535 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A125773.P2968676699639656853

/-! ## A125773.P2888389788532837682

`filter[A068535(n+1), A235046(#)]`
-/

namespace A125773.P2888389788532837682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A235046 (f1 j).toNat = 1) n)

end

end A125773.P2888389788532837682

/-! ## A125773.P9191796709402548532

`filter[A068535(n+1), A252743(#)]`
-/

namespace A125773.P9191796709402548532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A125773.P9191796709402548532

/-!
# A125774: Numbers k such that 3^k mod k = 3^k mod k^2.

The programs for A125774, there is no canonical definition to state claims against.
-/

/-! ## A125774.P17180924519471355057

`lt[A233471(abs(1-n)+1), n]`
-/

namespace A125774.P17180924519471355057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233471 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125774.P17180924519471355057

/-! ## A125774.P1088739167849690857

`lt[A233471(n+1), n+1]+1`
-/

namespace A125774.P1088739167849690857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233471 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A125774.P1088739167849690857

/-! ## A125774.P3196417658284254564

`eq[A066607(n+1)%(n+1), A233471(n+1)]+1`
-/

namespace A125774.P3196417658284254564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066607 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A125774.P3196417658284254564

/-! ## A125774.P13355333890752845940

`lt[(3^n)%A253909(n), n]`
-/

namespace A125774.P13355333890752845940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ n : ℤ) (A253909 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125774.P13355333890752845940

/-! ## A125774.P13349194494832743558

`record[gcd(A075054(n+1), A092763(n+1))]`
-/

namespace A125774.P13349194494832743558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075054 (n + 1)) (A092763 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125774.P13349194494832743558

/-!
# A125775: Numbers k such that 5^k mod k = 5^k mod k^2.

The programs for A125775, there is no canonical definition to state claims against.
-/

/-! ## A125775.P11922248653823839350

`eq[A010059(A341151(n)), A026323(n+1)]`
-/

namespace A125775.P11922248653823839350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A341151 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125775.P11922248653823839350

/-! ## A125775.P7558047772860584276

`lt[A026323(n+1), A331104(A002808(n+1))]`
-/

namespace A125775.P7558047772860584276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331104 (A002808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A125775.P7558047772860584276

/-!
# A125778: Array T by diagonals: T(h,k)=number of paths consisting of steps from (0,0) to (h,k) such that each step has length 1 directed up or right and no right-step crosses the line y=3x/2. (Thus a path crosses the line only at lattice points and on up-steps.).

The programs for A125778, there is no canonical definition to state claims against.
-/

/-! ## A125778.P5724495254274639360

`A047110(∑[2*n]%comp[∑[n]])`
-/

namespace A125778.P5724495254274639360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A125778.P5724495254274639360

/-! ## A125778.P6587660659376910833

`A047110(∑[char[∑[n]]]²-n-1)`
-/

namespace A125778.P6587660659376910833
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A125778.P6587660659376910833

/-! ## A125778.P15667493991600776591

`gcd(A010816(n), A047110(A061579(n)))`
-/

namespace A125778.P15667493991600776591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A047110 (A061579 n).toNat)

end

end A125778.P15667493991600776591

/-! ## A125778.P16038449358025977513

`A047110(A061579(n))+A033685(A033685(n))`
-/

namespace A125778.P16038449358025977513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047110 (A061579 n).toNat + A033685 (A033685 n).toNat

end

end A125778.P16038449358025977513

/-! ## A125778.P13425327804024379922

`A318608(2*(n+2))+A047110(A038722(n+2))`
-/

namespace A125778.P13425327804024379922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (2 * (n + 2)) + A047110 (A038722 (n + 2)).toNat

end

end A125778.P13425327804024379922

/-! ## A125778.P17656902071143173354

`A047110(A061579(n))%A345809(n+1)`
-/

namespace A125778.P17656902071143173354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047110 (A061579 n).toNat) (A345809 (n + 1))

end

end A125778.P17656902071143173354

/-!
# A125781: Rectangular table, read by antidiagonals, defined by the following rule: start with all 1's in row zero; from then on, row n+1 equals the partial sums of row n excluding terms in columns k = m*(m+1)/2 - 2 (m>=2).

The programs for A125781, there is no canonical definition to state claims against.
-/

/-! ## A125781.P12602923448787264243

`A135579(A117418(n))`
-/

namespace A125781.P12602923448787264243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135579 (A117418 n).toNat

end

end A125781.P12602923448787264243

/-! ## A125781.P14102284510960352556

`A252474(A091491(n))`
-/

namespace A125781.P14102284510960352556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A091491 n).toNat

end

end A125781.P14102284510960352556

/-! ## A125781.P12176367781804136352

`A002024(A226190(A091491(n)²))`
-/

namespace A125781.P12176367781804136352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A226190 (A091491 n ^ 2).toNat).toNat

end

end A125781.P12176367781804136352

/-! ## A125781.P8562820822511195562

`A118135(A093729(n))+A091491(n)`
-/

namespace A125781.P8562820822511195562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (A093729 n).toNat + A091491 n

end

end A125781.P8562820822511195562

/-! ## A125781.P6394973792230902873

`A117418(n)-A178798(A094507(n))`
-/

namespace A125781.P6394973792230902873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117418 n - A178798 (A094507 n).toNat

end

end A125781.P6394973792230902873

/-!
# A125782: Column 2 of table A125781.

The programs for A125782, there is no canonical definition to state claims against.
-/

/-! ## A125782.P5609724099731936949

`A091352(n+1)-1`
-/

namespace A125782.P5609724099731936949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 (n + 1) - 1

end

end A125782.P5609724099731936949

/-! ## A125782.P10551013890938388982

`∑[abs(Δ[A091352(n)])]`
-/

namespace A125782.P10551013890938388982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125782.P10551013890938388982

/-! ## A125782.P9578689747884140172

`record[Δ[A127420(n+2)]]`
-/

namespace A125782.P9578689747884140172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125782.P9578689747884140172

/-! ## A125782.P14418177686291290746

`Δ[A001489(n)+∑[A091352(n)]]`
-/

namespace A125782.P14418177686291290746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125782.P14418177686291290746

/-! ## A125782.P13579034965138535912

`Δ[∑[A091352(n)]-A020710(n)]`
-/

namespace A125782.P13579034965138535912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125782.P13579034965138535912

/-!
# A125783: Column 3 of table A125781; also, equals column 1 of matrix power A091351^2.

The programs for A125783, there is no canonical definition to state claims against.
-/

/-! ## A125783.P8512650642414494238

`A091352(n+2)-A091352(n+1)-1`
-/

namespace A125783.P8512650642414494238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 (n + 2) - A091352 (n + 1) - 1

end

end A125783.P8512650642414494238

/-! ## A125783.P1200699316877168385

`Δ[A125782(n)]-1`
-/

namespace A125783.P1200699316877168385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A125783.P1200699316877168385

/-! ## A125783.P1255075070349012678

`Δ[A091352(n+1)]-1`
-/

namespace A125783.P1255075070349012678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A125783.P1255075070349012678

/-! ## A125783.P8792929871736226834

`Δ[A125782(n)+A001489(n)]`
-/

namespace A125783.P8792929871736226834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125782 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125783.P8792929871736226834

/-! ## A125783.P8195575628999493094

`A125782(n+1)-A091352(n+1)`
-/

namespace A125783.P8195575628999493094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125782 (n + 1) - A091352 (n + 1)

end

end A125783.P8195575628999493094

/-!
# A125784: Column 4 of table A125781.

The programs for A125784, there is no canonical definition to state claims against.
-/

/-! ## A125784.P9263209930322769944

`A091353(n+1)-A091352(n+1)`
-/

namespace A125784.P9263209930322769944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091353 (n + 1) - A091352 (n + 1)

end

end A125784.P9263209930322769944

/-! ## A125784.P268163301385090284

`A125781(∑[n+4]+10)`
-/

namespace A125784.P268163301385090284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A125784.P268163301385090284

/-! ## A125784.P8494881600815900142

`A125781(eq[4, A002262(n)])*A184957(n+1)`
-/

namespace A125784.P8494881600815900142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A184957 (n + 1)

end

end A125784.P8494881600815900142

/-!
# A125785: Column 5 of table A125781.

The programs for A125785, there is no canonical definition to state claims against.
-/

/-! ## A125785.P5363374574111625596

`Δ[A091352(n+2)]-A091352(n+2)`
-/

namespace A125785.P5363374574111625596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091352 (n + 2)

end

end A125785.P5363374574111625596

/-! ## A125785.P7261533083225146299

`Δ[A125783(n)-∑[A091352(n)]]`
-/

namespace A125785.P7261533083225146299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091352 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125783 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A125785.P7261533083225146299

/-! ## A125785.P5913916942697016340

`Δ[A125783(n)]-A091352(n+1)`
-/

namespace A125785.P5913916942697016340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091352 (n + 1)

end

end A125785.P5913916942697016340

/-! ## A125785.P1981159696907413379

`A125783(n+1)-A125782(n+1)`
-/

namespace A125785.P1981159696907413379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125783 (n + 1) - A125782 (n + 1)

end

end A125785.P1981159696907413379

/-! ## A125785.P1289937795870367923

`A125783(n+1)-(A091352(n+2)-1)`
-/

namespace A125785.P1289937795870367923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125783 (n + 1) - (A091352 (n + 2) - 1)

end

end A125785.P1289937795870367923

/-!
# A125786: Column 6 of table A125781.

The programs for A125786, there is no canonical definition to state claims against.
-/

/-! ## A125786.P15295680983768095804

`record[A104447(n)+1-A104448(n)]`
-/

namespace A125786.P15295680983768095804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104447 n + (1 - A104448 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125786.P15295680983768095804

/-! ## A125786.P15288145436926620407

`A125784(n+1)-A125783(n+1)`
-/

namespace A125786.P15288145436926620407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125784 (n + 1) - A125783 (n + 1)

end

end A125786.P15288145436926620407

/-! ## A125786.P4846075002428146383

`A091353(n+2)-A125782(n+2)`
-/

namespace A125786.P4846075002428146383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091353 (n + 2) - A125782 (n + 2)

end

end A125786.P4846075002428146383

/-! ## A125786.P2743079052946991774

`A125784(n+1)-(A125785(n)+A125782(n+1))`
-/

namespace A125786.P2743079052946991774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125784 (n + 1) - (A125785 n + A125782 (n + 1))

end

end A125786.P2743079052946991774

/-!
# A125787: Main diagonal of table A125781.

The programs for A125787, there is no canonical definition to state claims against.
-/

/-! ## A125787.P13981788192684316168

`A125781(∑[4*n])`
-/

namespace A125787.P13981788192684316168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125787.P13981788192684316168

/-! ## A125787.P251911399389324485

`record[A125781((n+1)*floor(n/2))]`
-/

namespace A125787.P251911399389324485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 ((n + 1 : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125787.P251911399389324485

/-!
# A125788: A diagonal of table A125781: a(n) = A125781(n,n+1).

The programs for A125788, there is no canonical definition to state claims against.
-/

/-! ## A125788.P10150350890915237023

`A125781(2*(n+1)²)`
-/

namespace A125788.P10150350890915237023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 (2 * (n + 1) ^ 2)

end

end A125788.P10150350890915237023

/-!
# A125789: Antidiagonal sums of table A125781.

The programs for A125789, there is no canonical definition to state claims against.
-/

/-! ## A125789.P6563741199586070227

`A135660(A018072(2*n+1))+A000110(n)`
-/

namespace A125789.P6563741199586070227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A018072 (2 * n + 1)).toNat + A000110 n

end

end A125789.P6563741199586070227

/-! ## A125789.P11809603914682792925

`∏{e}[2*7^n, A148468(#)]+n`
-/

namespace A125789.P11809603914682792925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148468 (Nat.factorization (f1 n) p) + (n : ℤ)

end

end A125789.P11809603914682792925

/-! ## A125789.P17284132819600170154

`A065361(A006116(n))`
-/

namespace A125789.P17284132819600170154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A006116 n).toNat

end

end A125789.P17284132819600170154

/-!
# A125790: Rectangular table where column k equals row sums of matrix power A078121^k, read by antidiagonals.

The programs for A125790, there is no canonical definition to state claims against.
-/

/-! ## A125790.P15380130677064778130

`A167520(A127054(n))`
-/

namespace A125790.P15380130677064778130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (A127054 n).toNat

end

end A125790.P15380130677064778130

/-! ## A125790.P2468185157410564650

`A051250(A117418(n))`
-/

namespace A125790.P2468185157410564650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051250 (A117418 n).toNat

end

end A125790.P2468185157410564650

/-! ## A125790.P1514487588538781086

`A127054(A055645(n))`
-/

namespace A125790.P1514487588538781086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127054 (A055645 n).toNat

end

end A125790.P1514487588538781086

/-! ## A125790.P10789598244396668981

`A120565(A134380(n))`
-/

namespace A125790.P10789598244396668981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A134380 n).toNat

end

end A125790.P10789598244396668981

/-! ## A125790.P12868427656984359786

`A152493(A125781(n))`
-/

namespace A125790.P12868427656984359786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152493 (A125781 n).toNat

end

end A125790.P12868427656984359786

/-!
# A125791: a(n) = 2^(n*(n-1)*(n-2)/6) for n>=1.

The programs for A125791, the canonical program `A125791.P18320076611016076388` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125791 has offset 1).

The definition of A125791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125791.P18320076611016076388

`2^((n+1)*n*(n-1)/6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A125791

/-- `2^((n+1)*n*(n-1)/6)` -/
def P18320076611016076388.Spec : Prop :=
  ∀ n, P18320076611016076388.a n = (A125791 (n + 1) : ℝ)

end A125791

/-! ## A125791.P5242078863850859768

`∏[2^C(n, 2)]`
-/

namespace A125791.P5242078863850859768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125791.P5242078863850859768

namespace A125791

/-- `∏[2^C(n, 2)]` -/
def P5242078863850859768.Spec : Prop :=
  ∀ n, (P5242078863850859768.a n : ℤ) = A125791 (n + 1)

end A125791

/-! ## A125791.P11176405900203925947

`∏[∏[2*a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A125791.P11176405900203925947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A125791.P11176405900203925947

namespace A125791

/-- `∏[∏[2*a(n-1)]]` -/
def P11176405900203925947.Spec : Prop :=
  ∀ n, (P11176405900203925947.a n : ℤ) = A125791 (n + 1)

end A125791

/-!
# A125792: 

The programs for A125792, there is no canonical definition to state claims against.
-/

/-! ## A125792.P12145175995123020435

`2*a(n-1)+A002576(n+1)+1` with `a(0)=1, a(1)=3`
-/

namespace A125792.P12145175995123020435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + A002576 (n + 1) + 1

end

end A125792.P12145175995123020435

/-! ## A125792.P32552920976992373

`∑[A002449(n+1)]`
-/

namespace A125792.P32552920976992373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125792.P32552920976992373

/-! ## A125792.P457870693656585350

`∑[abs(Δ[A002577(n)])]`
-/

namespace A125792.P457870693656585350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125792.P457870693656585350

/-! ## A125792.P6034254675072260993

`A002577(n+1)-1`
-/

namespace A125792.P6034254675072260993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 (n + 1) - 1

end

end A125792.P6034254675072260993

/-! ## A125792.P5828878291906968215

`∑[record[A002449(A053615(n))]]`
-/

namespace A125792.P5828878291906968215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (A053615 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125792.P5828878291906968215

/-!
# A125793: Column 3 of table A125790; also equals row sums of matrix power A078121^3.

The programs for A125793, there is no canonical definition to state claims against.
-/

/-! ## A125793.P7729363547867866751

`A078121(∑[n+2]+3)`
-/

namespace A125793.P7729363547867866751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078121 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A125793.P7729363547867866751

/-! ## A125793.P18137353112143837681

`A125790(A167614(n+2))`
-/

namespace A125793.P18137353112143837681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A167614 (n + 2)).toNat

end

end A125793.P18137353112143837681

/-! ## A125793.P7998129829463783872

`A125790(A141214(n)+6)`
-/

namespace A125793.P7998129829463783872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A141214 n + 6).toNat

end

end A125793.P7998129829463783872

/-! ## A125793.P16717405561856083791

`A125790(A052905(n)+8)`
-/

namespace A125793.P16717405561856083791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A052905 n + 8).toNat

end

end A125793.P16717405561856083791

/-! ## A125793.P15570135170022453067

`A125790(A055999(n)+9)`
-/

namespace A125793.P15570135170022453067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A055999 n + 9).toNat

end

end A125793.P15570135170022453067

/-!
# A125794: Column 4 of table A125790; also equals row sums of matrix power A078121^4.

The programs for A125794, there is no canonical definition to state claims against.
-/

/-! ## A125794.P647237214692832678

`A002449(n+2)-1`
-/

namespace A125794.P647237214692832678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (n + 2) - 1

end

end A125794.P647237214692832678

/-! ## A125794.P1458797526325765937

`Δ[A002577(n+1)]-1`
-/

namespace A125794.P1458797526325765937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A125794.P1458797526325765937

/-! ## A125794.P2585837231054812334

`∑[abs(Δ[A002449(n+1)])]`
-/

namespace A125794.P2585837231054812334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125794.P2585837231054812334

/-! ## A125794.P6075313295934352603

`record[A057428(n)+A002449(n)]`
-/

namespace A125794.P6075313295934352603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A002449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125794.P6075313295934352603

/-!
# A125795: Column 5 of table A125790; also equals row sums of matrix power A078121^5.

The programs for A125795, there is no canonical definition to state claims against.
-/

/-! ## A125795.P72975968897071737

`A125790(eq[5, A002262(n)])`
-/

namespace A125795.P72975968897071737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125795.P72975968897071737

/-! ## A125795.P12129107078967020010

`A125790(eq[5, A141169(n)])`
-/

namespace A125795.P12129107078967020010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125795.P12129107078967020010

/-! ## A125795.P12510669229989789983

`A125790(eq[7, A140207(n)])`
-/

namespace A125795.P12510669229989789983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125795.P12510669229989789983

/-! ## A125795.P15246444132904429171

`A125790(eq[32, A059268(n)])`
-/

namespace A125795.P15246444132904429171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125795.P15246444132904429171

/-! ## A125795.P3300944406343248577

`A125790(eq[5, A144328(n+1)])`
-/

namespace A125795.P3300944406343248577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125795.P3300944406343248577

/-!
# A125796: Column 6 of table A125790; also equals row sums of matrix power A078121^6.

The programs for A125796, there is no canonical definition to state claims against.
-/

/-! ## A125796.P10951207826405712218

`A125790(eq[6, A002262(n)])`
-/

namespace A125796.P10951207826405712218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125796.P10951207826405712218

/-! ## A125796.P3845073303256494719

`A125790(eq[8, A141169(n)])`
-/

namespace A125796.P3845073303256494719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125796.P3845073303256494719

/-! ## A125796.P4872172794568794554

`A125790(eq[64, A059268(n)])`
-/

namespace A125796.P4872172794568794554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125796.P4872172794568794554

/-! ## A125796.P13662752743400033484

`A125790(eq[6, A144328(n+1)])`
-/

namespace A125796.P13662752743400033484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125796.P13662752743400033484

/-! ## A125796.P14726354654752995650

`A125790(eq[7, A002260(n+1)])`
-/

namespace A125796.P14726354654752995650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125796.P14726354654752995650

/-!
# A125797: Main diagonal of table A125790.

The programs for A125797, there is no canonical definition to state claims against.
-/

/-! ## A125797.P16223337937968572272

`A125790(∑[4*n])`
-/

namespace A125797.P16223337937968572272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A125797.P16223337937968572272

/-! ## A125797.P7096273210023116082

`record[A125790(∑[A110657(n)])]`
-/

namespace A125797.P7096273210023116082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125797.P7096273210023116082

/-! ## A125797.P11635385539768847753

`record[A125790(∑[A266724(n)])]`
-/

namespace A125797.P11635385539768847753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125797.P11635385539768847753

/-! ## A125797.P1245220772708010609

`record[A125790(A226725(n+1))]`
-/

namespace A125797.P1245220772708010609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125797.P1245220772708010609

/-! ## A125797.P11288159300312371641

`record[A125790(gcd(n, A114327(n)))]`
-/

namespace A125797.P11288159300312371641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125797.P11288159300312371641

/-!
# A125798: A diagonal of table A125790: a(n) = A125790(n+1,n).

The programs for A125798, there is no canonical definition to state claims against.
-/

/-! ## A125798.P9274179731035784467

`A125790(A056220(n+1))`
-/

namespace A125798.P9274179731035784467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (A056220 (n + 1)).toNat

end

end A125798.P9274179731035784467

/-! ## A125798.P18350532519789722826

`A125790(eq[1, A114327(n)])`
-/

namespace A125798.P18350532519789722826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125798.P18350532519789722826

/-! ## A125798.P12893371796657584244

`A125790(record[Δ[A129194(n)]])`
-/

namespace A125798.P12893371796657584244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A125798.P12893371796657584244

/-! ## A125798.P15574393524190058040

`A125790(eq[1, A248663(n+1)])`
-/

namespace A125798.P15574393524190058040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125798.P15574393524190058040

/-! ## A125798.P8708308675555498149

`A125790(eq[2, A054531(n+1)])`
-/

namespace A125798.P8708308675555498149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125798.P8708308675555498149

/-!
# A125799: Antidiagonal sums of table A125790.

The programs for A125799, there is no canonical definition to state claims against.
-/

/-! ## A125799.P5744233297092335320

`A204326(n+1)+A104882(n+1)`
-/

namespace A125799.P5744233297092335320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204326 (n + 1) + A104882 (n + 1)

end

end A125799.P5744233297092335320

/-! ## A125799.P9363824942323713245

`A233508(A000111(n))+A002104(n)`
-/

namespace A125799.P9363824942323713245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233508 (A000111 n).toNat + A002104 n

end

end A125799.P9363824942323713245

/-! ## A125799.P16404304738228304629

`A227737(A007841(n)+A005187(n))`
-/

namespace A125799.P16404304738228304629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (A007841 n + A005187 n).toNat

end

end A125799.P16404304738228304629

