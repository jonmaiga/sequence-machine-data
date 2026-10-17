import SequenceMachineLib
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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A185500: Number of (n+1)X4 0..2 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185500, there is no canonical definition to state claims against.
-/

/-! ## A185500.P18042426321494362095

`A185504(∑[n+2]+4)`
-/

namespace A185500.P18042426321494362095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185500.P18042426321494362095

/-! ## A185500.P6902418642928382823

`or(1, A185504(A167614(n+1)))`
-/

namespace A185500.P6902418642928382823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185504 (A167614 (n + 1)).toNat)

end

end A185500.P6902418642928382823

/-! ## A185500.P4419732795053328103

`A185504(A167614(n+1))+A025469(n)`
-/

namespace A185500.P4419732795053328103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A167614 (n + 1)).toNat + A025469 n

end

end A185500.P4419732795053328103

/-! ## A185500.P753968694986914733

`A185504(A167614(n+1))+A098728(n)`
-/

namespace A185500.P753968694986914733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A167614 (n + 1)).toNat + A098728 n

end

end A185500.P753968694986914733

/-! ## A185500.P7865471641296603085

`A185504(A167614(n+1))+A133501(n)`
-/

namespace A185500.P7865471641296603085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A167614 (n + 1)).toNat + A133501 n

end

end A185500.P7865471641296603085

/-!
# A185501: Number of (n+1)X5 0..2 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185501, there is no canonical definition to state claims against.
-/

/-! ## A185501.P3429338957621289347

`A185504(A374004(n+1))`
-/

namespace A185501.P3429338957621289347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A374004 (n + 1)).toNat

end

end A185501.P3429338957621289347

/-! ## A185501.P5076881243776970237

`A185504(A141214(n)+7)`
-/

namespace A185501.P5076881243776970237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A141214 n + 7).toNat

end

end A185501.P5076881243776970237

/-! ## A185501.P16448242100819294105

`A185504(A052905(n)+9)`
-/

namespace A185501.P16448242100819294105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A052905 n + 9).toNat

end

end A185501.P16448242100819294105

/-! ## A185501.P10195057014438140658

`A185504(A055999(n)+10)`
-/

namespace A185501.P10195057014438140658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A055999 n + 10).toNat

end

end A185501.P10195057014438140658

/-!
# A185502: Number of (n+1)X6 0..2 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185502, there is no canonical definition to state claims against.
-/

/-! ## A185502.P14387176819617937921

`A185504(Δ[A264443(n)])`
-/

namespace A185502.P14387176819617937921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (f1 (n + 1) - f1 n).toNat

end

end A185502.P14387176819617937921

/-!
# A185503: Number of (n+1)X7 0..2 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185503, there is no canonical definition to state claims against.
-/

/-! ## A185503.P6721022986524699857

`A185504(A374007(n+1))`
-/

namespace A185503.P6721022986524699857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A374007 (n + 1)).toNat

end

end A185503.P6721022986524699857

/-!
# A185505: a(n) = (7*n^4 + 5*n^2)/12.

The programs for A185505, the canonical program `A185505.P4499887126767915503` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185505 has offset 1).

The definition of A185505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185505.P4499887126767915503

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=11, a(2)=51, a(3)=156, a(4)=375`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185505

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4499887126767915503.Spec : Prop :=
  ∀ n, P4499887126767915503.a n = A185505 (n + 1)

theorem P4499887126767915503.correct : P4499887126767915503.Spec := by
  intro n
  simp only [A185505, Nat.add_sub_cancel]

end A185505

/-! ## A185505.P6413824137112430929

`∑[∑[7*n²+2]-1]`
-/

namespace A185505.P6413824137112430929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185505.P6413824137112430929

namespace A185505

/-- `∑[∑[7*n²+2]-1]` -/
def P6413824137112430929.Spec : Prop :=
  ∀ n, P6413824137112430929.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P17722775662857004947

`A108678(n)+∑[n]²`
-/

namespace A185505.P17722775662857004947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108678 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A185505.P17722775662857004947

namespace A185505

/-- `A108678(n)+∑[n]²` -/
def P17722775662857004947.Spec : Prop :=
  ∀ n, P17722775662857004947.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P8300878973229561973

`∑[A008384(n)]/(n+1)`
-/

namespace A185505.P8300878973229561973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008384 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A185505.P8300878973229561973

namespace A185505

/-- `∑[A008384(n)]/(n+1)` -/
def P8300878973229561973.Spec : Prop :=
  ∀ n, P8300878973229561973.a n = (A185505 (n + 1) : ℚ)

end A185505

/-! ## A185505.P17135851496021628053

`∑[A051662(n)]+∑[n]²`
-/

namespace A185505.P17135851496021628053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A185505.P17135851496021628053

namespace A185505

/-- `∑[A051662(n)]+∑[n]²` -/
def P17135851496021628053.Spec : Prop :=
  ∀ n, P17135851496021628053.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P10565551617343084864

`and(∑[A063490(n+1)], -1)`
-/

namespace A185505.P10565551617343084864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A185505.P10565551617343084864

namespace A185505

/-- `and(∑[A063490(n+1)], -1)` -/
def P10565551617343084864.Spec : Prop :=
  ∀ n, P10565551617343084864.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P14858828129891076375

`∑[A169607(n)]+(n+1)²`
-/

namespace A185505.P14858828129891076375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A185505.P14858828129891076375

namespace A185505

/-- `∑[A169607(n)]+(n+1)²` -/
def P14858828129891076375.Spec : Prop :=
  ∀ n, P14858828129891076375.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P18389537653119654185

`A264850(n)+A081437(n)`
-/

namespace A185505.P18389537653119654185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 n + A081437 n

end

end A185505.P18389537653119654185

namespace A185505

/-- `A264850(n)+A081437(n)` -/
def P18389537653119654185.Spec : Prop :=
  ∀ n, P18389537653119654185.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P12003451222965815179

`A212134(n)+A188480(n)`
-/

namespace A185505.P12003451222965815179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + A188480 n

end

end A185505.P12003451222965815179

namespace A185505

/-- `A212134(n)+A188480(n)` -/
def P12003451222965815179.Spec : Prop :=
  ∀ n, P12003451222965815179.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P8250924799248645557

`A152457(n)+A066804(n+1)`
-/

namespace A185505.P8250924799248645557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n + A066804 (n + 1)

end

end A185505.P8250924799248645557

namespace A185505

/-- `A152457(n)+A066804(n+1)` -/
def P8250924799248645557.Spec : Prop :=
  ∀ n, P8250924799248645557.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P9443076662578463614

`A213834(n+1)+A006007(n)`
-/

namespace A185505.P9443076662578463614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213834 (n + 1) + A006007 n

end

end A185505.P9443076662578463614

namespace A185505

/-- `A213834(n+1)+A006007(n)` -/
def P9443076662578463614.Spec : Prop :=
  ∀ n, P9443076662578463614.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P16022514487843860491

`A368046(n)+A002417(n+1)`
-/

namespace A185505.P16022514487843860491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + A002417 (n + 1)

end

end A185505.P16022514487843860491

namespace A185505

/-- `A368046(n)+A002417(n+1)` -/
def P16022514487843860491.Spec : Prop :=
  ∀ n, P16022514487843860491.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P10605589057369086406

`A014820(n)+∑[n]*A253145(n)`
-/

namespace A185505.P10605589057369086406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A253145 n

end

end A185505.P10605589057369086406

namespace A185505

/-- `A014820(n)+∑[n]*A253145(n)` -/
def P10605589057369086406.Spec : Prop :=
  ∀ n, P10605589057369086406.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P16613211157903591193

`A072474(n+1)-n*A176060(n)`
-/

namespace A185505.P16613211157903591193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) - (n : ℤ) * A176060 n

end

end A185505.P16613211157903591193

namespace A185505

/-- `A072474(n+1)-n*A176060(n)` -/
def P16613211157903591193.Spec : Prop :=
  ∀ n, P16613211157903591193.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P13066550091398230661

`A000217(n)²+A098077(n+1)/2`
-/

namespace A185505.P13066550091398230661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n ^ 2 : ℚ) + (A098077 (n + 1) : ℚ) / 2

end

end A185505.P13066550091398230661

namespace A185505

/-- `A000217(n)²+A098077(n+1)/2` -/
def P13066550091398230661.Spec : Prop :=
  ∀ n, P13066550091398230661.a n = (A185505 (n + 1) : ℚ)

end A185505

/-! ## A185505.P11801538728641850533

`A006008(n+1)+2*A006011(n+1)`
-/

namespace A185505.P11801538728641850533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 (n + 1) + 2 * A006011 (n + 1)

end

end A185505.P11801538728641850533

namespace A185505

/-- `A006008(n+1)+2*A006011(n+1)` -/
def P11801538728641850533.Spec : Prop :=
  ∀ n, P11801538728641850533.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P12807419491491389452

`A039623(n+1)+A014820(n)-(n+1)²`
-/

namespace A185505.P12807419491491389452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (n + 1) + (A014820 n - ((n + 1) ^ 2 : ℤ))

end

end A185505.P12807419491491389452

namespace A185505

/-- `A039623(n+1)+A014820(n)-(n+1)²` -/
def P12807419491491389452.Spec : Prop :=
  ∀ n, P12807419491491389452.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P9335891884142545616

`A014820(n)+A000217(n+1)*A000217(n)`
-/

namespace A185505.P9335891884142545616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n + A000217 (n + 1) * A000217 n

end

end A185505.P9335891884142545616

namespace A185505

/-- `A014820(n)+A000217(n+1)*A000217(n)` -/
def P9335891884142545616.Spec : Prop :=
  ∀ n, P9335891884142545616.a n = A185505 (n + 1)

end A185505

/-! ## A185505.P16737173984906929575

`A245380(n+1)/(n+1)`
-/

namespace A185505.P16737173984906929575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245380 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A185505.P16737173984906929575

namespace A185505

/-- `A245380(n+1)/(n+1)` -/
def P16737173984906929575.Spec : Prop :=
  ∀ n, P16737173984906929575.a n = (A185505 (n + 1) : ℚ)

end A185505

/-! ## A185505.P16781114652522127946

`∑[A071229(n+1)]+∑[n]`
-/

namespace A185505.P16781114652522127946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071229 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A185505.P16781114652522127946

namespace A185505

/-- `∑[A071229(n+1)]+∑[n]` -/
def P16781114652522127946.Spec : Prop :=
  ∀ n, P16781114652522127946.a n = A185505 (n + 1)

end A185505

/-!
# A185510: Array of primes in the natural number array A000027, by antidiagonals.

The programs for A185510, there is no canonical definition to state claims against.
-/

/-! ## A185510.P1719764871662425785

`A000040(A185511(n+1))`
-/

namespace A185510.P1719764871662425785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A185511 (n + 1)).toNat

end

end A185510.P1719764871662425785

/-! ## A185510.P5979270935155589472

`A008578(A185511(n+1)+1)`
-/

namespace A185510.P5979270935155589472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A185511 (n + 1) + 1).toNat

end

end A185510.P5979270935155589472

/-! ## A185510.P3642654102428992211

`A158611(A185511(n+1)+2)`
-/

namespace A185510.P3642654102428992211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A185511 (n + 1) + 2).toNat

end

end A185510.P3642654102428992211

/-! ## A185510.P11596257034257173568

`A073846(2*A185511(n+1))`
-/

namespace A185510.P11596257034257173568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A185511 (n + 1)).toNat

end

end A185510.P11596257034257173568

/-! ## A185510.P3556116857118199530

`A082500(2*A185511(n+1))`
-/

namespace A185510.P3556116857118199530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A185511 (n + 1)).toNat

end

end A185510.P3556116857118199530

/-! ## A185510.P8846426949743111448

`A207790(2*A185511(n+1))`
-/

namespace A185510.P8846426949743111448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A185511 (n + 1)).toNat

end

end A185510.P8846426949743111448

/-! ## A185510.P2112631504269651499

`∑{d}[A185511(n+1), A007444(#)]`
-/

namespace A185510.P2112631504269651499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A185510.P2112631504269651499

/-! ## A185510.P14773706558827489292

`A008864(A185511(n+1))-A007318(C(2, n))`
-/

namespace A185510.P14773706558827489292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A185511 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A185510.P14773706558827489292

/-! ## A185510.P16993252974407502137

`A008864(A185511(n+1))-A014963(52*(n+1))`
-/

namespace A185510.P16993252974407502137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A185511 (n + 1)).toNat - A014963 (52 * (n + 1))

end

end A185510.P16993252974407502137

/-! ## A185510.P17074681835930301319

`A008864(A185511(n+1))+A008683(A007918(n))`
-/

namespace A185510.P17074681835930301319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A185511 (n + 1)).toNat + A008683 (A007918 n).toNat

end

end A185510.P17074681835930301319

/-!
# A185511: Array: row n shows numbers m such that prime(m) is in row n of the natural number array A000027, by antidiagonals.

The programs for A185511, there is no canonical definition to state claims against.
-/

/-! ## A185511.P8335973895829184861

`A000720(A185510(n+1))`
-/

namespace A185511.P8335973895829184861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A185510 (n + 1)).toNat

end

end A185511.P8335973895829184861

/-! ## A185511.P7079995214049968751

`A003963(p?[A185510(n+1)])`
-/

namespace A185511.P7079995214049968751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P7079995214049968751

/-! ## A185511.P740459742493929745

`A026233(p?[A185510(n+1)])`
-/

namespace A185511.P740459742493929745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P740459742493929745

/-! ## A185511.P10882491494185053728

`A026238(p?[A185510(n+1)])`
-/

namespace A185511.P10882491494185053728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P10882491494185053728

/-! ## A185511.P357357732782044354

`A049084(p?[A185510(n+1)])`
-/

namespace A185511.P357357732782044354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P357357732782044354

/-! ## A185511.P8215537802895859043

`A055396(p?[A185510(n+1)])`
-/

namespace A185511.P8215537802895859043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P8215537802895859043

/-! ## A185511.P15803248075350207856

`A056239(p?[A185510(n+1)])`
-/

namespace A185511.P15803248075350207856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P15803248075350207856

/-! ## A185511.P3341703817748553657

`A058933(p?[A185510(n+1)])`
-/

namespace A185511.P3341703817748553657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P3341703817748553657

/-! ## A185511.P5031672074352632177

`A061395(p?[A185510(n+1)])`
-/

namespace A185511.P5031672074352632177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P5031672074352632177

/-! ## A185511.P17364228280931380185

`A075167(p?[A185510(n+1)])`
-/

namespace A185511.P17364228280931380185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A185511.P17364228280931380185

/-!
# A185512: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock singular.

The programs for A185512, there is no canonical definition to state claims against.
-/

/-! ## A185512.P17564153154522451601

`A185521((n+1)²+n²)`
-/

namespace A185512.P17564153154522451601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 ((n + 1) ^ 2 + n ^ 2)

end

end A185512.P17564153154522451601

/-! ## A185512.P10882102662159111905

`or(1, A185521(A001844(n)))`
-/

namespace A185512.P10882102662159111905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185521 (A001844 n).toNat)

end

end A185512.P10882102662159111905

/-! ## A185512.P8757748283848825475

`record[A003982(n)*A185521(n+1)]`
-/

namespace A185512.P8757748283848825475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185512.P8757748283848825475

/-!
# A185513: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock singular.

The programs for A185513, the canonical program `A185513.P8614516444907035346` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185513 has offset 1).

The definition of A185513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185513.P8614516444907035346

`4*a(n-1)+3*a(n-2)-8*a(n-3)` with `a(0)=31, a(1)=143, a(2)=593`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185513

/-- `4*a(n-1)+3*a(n-2)-8*a(n-3)` -/
def P8614516444907035346.Spec : Prop :=
  ∀ n, P8614516444907035346.a n = A185513 (n + 1)

theorem P8614516444907035346.correct : P8614516444907035346.Spec := by
  intro n
  simp only [A185513, Nat.add_sub_cancel]

end A185513

/-! ## A185513.P8297328634130166077

`A185521(∑[n]+1)`
-/

namespace A185513.P8297328634130166077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185513.P8297328634130166077

namespace A185513

/-- `A185521(∑[n]+1)` -/
def P8297328634130166077.Spec : Prop :=
  ∀ n, P8297328634130166077.a n = A185513 (n + 1)

end A185513

/-! ## A185513.P17961759787967445770

`or(1, A185521(A000124(n)))`
-/

namespace A185513.P17961759787967445770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185521 (A000124 n).toNat)

end

end A185513.P17961759787967445770

namespace A185513

/-- `or(1, A185521(A000124(n)))` -/
def P17961759787967445770.Spec : Prop :=
  ∀ n, P17961759787967445770.a n = A185513 (n + 1)

end A185513

/-! ## A185513.P11274864540346197820

`record[A010054(n)*A185521(n+1)]`
-/

namespace A185513.P11274864540346197820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185513.P11274864540346197820

namespace A185513

/-- `record[A010054(n)*A185521(n+1)]` -/
def P11274864540346197820.Spec : Prop :=
  ∀ n, P11274864540346197820.a n = A185513 (n + 1)

end A185513

/-! ## A185513.P4906912511955970931

`record[root(A185521(n+1), A130777(n))]`
-/

namespace A185513.P4906912511955970931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185521 (n + 1) : ℝ) ^ (1 / (A130777 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185513.P4906912511955970931

namespace A185513

/-- `record[root(A185521(n+1), A130777(n))]` -/
def P4906912511955970931.Spec : Prop :=
  ∀ n, P4906912511955970931.a n = (A185513 (n + 1) : ℝ)

end A185513

/-!
# A185514: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock singular.

The programs for A185514, there is no canonical definition to state claims against.
-/

/-! ## A185514.P5358193354610914038

`A185521(∑[n+1]+2)`
-/

namespace A185514.P5358193354610914038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185514.P5358193354610914038

/-! ## A185514.P9566229485250354141

`record[A010054(n)*A185521(n+2)]`
-/

namespace A185514.P9566229485250354141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185514.P9566229485250354141

/-! ## A185514.P10627033944844417817

`record[gcd(A002262(n), A185521(n+2))]`
-/

namespace A185514.P10627033944844417817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185521 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185514.P10627033944844417817

/-! ## A185514.P3437938583464312526

`record[root(A185521(n+2), A209819(n+1))]`
-/

namespace A185514.P3437938583464312526
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185521 (n + 2) : ℝ) ^ (1 / (A209819 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185514.P3437938583464312526

/-! ## A185514.P6435028599870808868

`record[root(A185521(n+2), A004738(2*n+1))]`
-/

namespace A185514.P6435028599870808868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185521 (n + 2) : ℝ) ^ (1 / (A004738 (2 * n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185514.P6435028599870808868

/-!
# A185515: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock singular.

The programs for A185515, there is no canonical definition to state claims against.
-/

/-! ## A185515.P13024813785621380305

`A185521(∑[n+2]+4)`
-/

namespace A185515.P13024813785621380305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185515.P13024813785621380305

/-! ## A185515.P2510866576351346604

`or(1, A185521(A167614(n+1)))`
-/

namespace A185515.P2510866576351346604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185521 (A167614 (n + 1)).toNat)

end

end A185515.P2510866576351346604

/-! ## A185515.P2186202331405378514

`A185521(A167614(n+1))+A011744(n)`
-/

namespace A185515.P2186202331405378514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A167614 (n + 1)).toNat + A011744 n

end

end A185515.P2186202331405378514

/-! ## A185515.P8427676030368074706

`A185521(A167614(n+1))+A178798(n)`
-/

namespace A185515.P8427676030368074706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A167614 (n + 1)).toNat + A178798 n

end

end A185515.P8427676030368074706

/-! ## A185515.P8979019883153130029

`A185521(A167614(n+1))+A034530(n+1)`
-/

namespace A185515.P8979019883153130029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A167614 (n + 1)).toNat + A034530 (n + 1)

end

end A185515.P8979019883153130029

/-!
# A185516: Number of (n+1)X5 0..2 arrays with every 2X2 subblock singular.

The programs for A185516, there is no canonical definition to state claims against.
-/

/-! ## A185516.P15519247663778890090

`A185521(∑[n+3]+7)`
-/

namespace A185516.P15519247663778890090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A185516.P15519247663778890090

/-! ## A185516.P14846088390777051585

`A185521(A374004(n+1))+A185044(n)`
-/

namespace A185516.P14846088390777051585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A374004 (n + 1)).toNat + A185044 n

end

end A185516.P14846088390777051585

/-!
# A185517: Number of (n+1)X6 0..2 arrays with every 2X2 subblock singular.

The programs for A185517, there is no canonical definition to state claims against.
-/

/-! ## A185517.P4453429226805595911

`A185521(A167499(n+3))`
-/

namespace A185517.P4453429226805595911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A167499 (n + 3)).toNat

end

end A185517.P4453429226805595911

/-! ## A185517.P13130274186923524682

`A185521(A155212(n)+13)`
-/

namespace A185517.P13130274186923524682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A155212 n + 13).toNat

end

end A185517.P13130274186923524682

/-! ## A185517.P340577982849113897

`A185521(A056000(n)+15)`
-/

namespace A185517.P340577982849113897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A056000 n + 15).toNat

end

end A185517.P340577982849113897

/-! ## A185517.P16754820379263423571

`A185521(A051936(n+4)+14)`
-/

namespace A185517.P16754820379263423571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A051936 (n + 4) + 14).toNat

end

end A185517.P16754820379263423571

/-! ## A185517.P7145587409482408668

`A185521(A000124(n+5)-(n+1))`
-/

namespace A185517.P7145587409482408668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A185517.P7145587409482408668

/-!
# A185518: Number of (n+1)X7 0..2 arrays with every 2X2 subblock singular.

The programs for A185518, there is no canonical definition to state claims against.
-/

/-! ## A185518.P17384650794357039411

`A185521(A167499(n+4)+1)`
-/

namespace A185518.P17384650794357039411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A167499 (n + 4) + 1).toNat

end

end A185518.P17384650794357039411

/-! ## A185518.P13966160839709260488

`A185521(A000124(n+5)+5)`
-/

namespace A185518.P13966160839709260488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A000124 (n + 5) + 5).toNat

end

end A185518.P13966160839709260488

/-! ## A185518.P8632548439898927499

`A185521(eq[7, A131818(n+1)])`
-/

namespace A185518.P8632548439898927499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185518.P8632548439898927499

/-! ## A185518.P15290586989270915385

`A185521(A374007(n+1))`
-/

namespace A185518.P15290586989270915385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A374007 (n + 1)).toNat

end

end A185518.P15290586989270915385

/-!
# A185519: Number of (n+1)X8 0..2 arrays with every 2X2 subblock singular.

The programs for A185519, there is no canonical definition to state claims against.
-/

/-! ## A185519.P1109949907330358120

`A185521(eq[8, A131818(n+1)])`
-/

namespace A185519.P1109949907330358120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185519.P1109949907330358120

/-! ## A185519.P12790338801059742239

`A185521(A374008(n+1))`
-/

namespace A185519.P12790338801059742239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A374008 (n + 1)).toNat

end

end A185519.P12790338801059742239

/-! ## A185519.P11442768677447659426

`A185521(eq[4, A219347(n)])`
-/

namespace A185519.P11442768677447659426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185519.P11442768677447659426

/-!
# A185520: 

The programs for A185520, there is no canonical definition to state claims against.
-/

/-! ## A185520.P2255909683505058045

`A185521(A155212(n+4)+1)`
-/

namespace A185520.P2255909683505058045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185521 (A155212 (n + 4) + 1).toNat

end

end A185520.P2255909683505058045

/-!
# A185522: a(n) equals the coefficient of x^n in the (n-1)-th iteration of x*(1+x)/(1-x) for n>=1.

The programs for A185522, there is no canonical definition to state claims against.
-/

/-! ## A185522.P15815347500419710072

`A078607(n*A317677(n+1))`
-/

namespace A185522.P15815347500419710072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078607 ((n : ℤ) * A317677 (n + 1)).toNat

end

end A185522.P15815347500419710072

/-!
# A185523: a(n) equals the coefficient of x^n in the n-th iteration of x*(1+x)/(1-x) for n>=1.

The programs for A185523, there is no canonical definition to state claims against.
-/

/-! ## A185523.P7525158132310777279

`A000203(Δ[n²])*A026511(n^n)`
-/

namespace A185523.P7525158132310777279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A026511 (n ^ n)

end

end A185523.P7525158132310777279

/-!
# A185525: Number of (n+2)X(n+2) binary arrays with each 3X3 subblock nonsingular.

The programs for A185525, there is no canonical definition to state claims against.
-/

/-! ## A185525.P14402824012651675463

`A185534(∑[4*n]+1)`
-/

namespace A185525.P14402824012651675463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185525.P14402824012651675463

/-! ## A185525.P3267078130053928355

`lcm(2, A185534(A001844(n)))`
-/

namespace A185525.P3267078130053928355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185534 (A001844 n).toNat)

end

end A185525.P3267078130053928355

/-! ## A185525.P4946671630135897805

`record[A185534(A330613(n+1))]`
-/

namespace A185525.P4946671630135897805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185525.P4946671630135897805

/-! ## A185525.P6702182392645013266

`record[A003982(n)*A185534(n+1)]`
-/

namespace A185525.P6702182392645013266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185525.P6702182392645013266

/-!
# A185526: Number of (n+2) X 3 binary arrays with each 3 X 3 subblock nonsingular.

The programs for A185526, there is no canonical definition to state claims against.
-/

/-! ## A185526.P14713901350066864835

`A185534(∑[n]+1)`
-/

namespace A185526.P14713901350066864835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185526.P14713901350066864835

/-! ## A185526.P9265143729019769848

`lcm(2, A185534(A000124(n)))`
-/

namespace A185526.P9265143729019769848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185534 (A000124 n).toNat)

end

end A185526.P9265143729019769848

/-! ## A185526.P16046260050314629876

`record[A185534(n+1)/A022166(n)]`
-/

namespace A185526.P16046260050314629876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185534 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185526.P16046260050314629876

/-! ## A185526.P18153149021047627364

`record[A185534(n+1)/A090642(n)]`
-/

namespace A185526.P18153149021047627364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185534 (n + 1) : ℚ) / (A090642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185526.P18153149021047627364

/-! ## A185526.P1871158021610941665

`record[A185534(n+1)/A157637(n)]`
-/

namespace A185526.P1871158021610941665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185534 (n + 1) : ℚ) / (A157637 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185526.P1871158021610941665

/-!
# A185527: Number of (n+2)X4 binary arrays with each 3X3 subblock nonsingular.

The programs for A185527, there is no canonical definition to state claims against.
-/

/-! ## A185527.P5848223494282398829

`A185534(∑[n+1]+2)`
-/

namespace A185527.P5848223494282398829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185527.P5848223494282398829

/-! ## A185527.P16622245920630859571

`lcm(2, A185534(A000096(n)+3))`
-/

namespace A185527.P16622245920630859571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185534 (A000096 n + 3).toNat)

end

end A185527.P16622245920630859571

/-! ## A185527.P15429160802650046054

`record[A005369(2*n)*A185534(n+2)]`
-/

namespace A185527.P15429160802650046054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A185534 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185527.P15429160802650046054

/-! ## A185527.P16644717434571706673

`record[A185534(Δ[A003453(n+5)])]`
-/

namespace A185527.P16644717434571706673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185527.P16644717434571706673

/-! ## A185527.P12901590998494801341

`record[root(A185534(n+2), A066657(n+4))]`
-/

namespace A185527.P12901590998494801341
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185534 (n + 2) : ℝ) ^ (1 / (A066657 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185527.P12901590998494801341

/-!
# A185528: Number of (n+2)X5 binary arrays with each 3X3 subblock nonsingular.

The programs for A185528, there is no canonical definition to state claims against.
-/

/-! ## A185528.P264704077772318591

`A185534(∑[n+2]+4)`
-/

namespace A185528.P264704077772318591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185528.P264704077772318591

/-! ## A185528.P11904835666303893411

`lcm(2, A185534(A167614(n+1)))`
-/

namespace A185528.P11904835666303893411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185534 (A167614 (n + 1)).toNat)

end

end A185528.P11904835666303893411

/-! ## A185528.P8515359130934545823

`A185534(A167614(n+1))%A270764(n)`
-/

namespace A185528.P8515359130934545823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185534 (A167614 (n + 1)).toNat) (A270764 (n + 10))

end

end A185528.P8515359130934545823

/-! ## A185528.P8306776033751875227

`A185534(A167614(n+1))+A070097(n+1)`
-/

namespace A185528.P8306776033751875227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A167614 (n + 1)).toNat + A070097 (n + 1)

end

end A185528.P8306776033751875227

/-! ## A185528.P8089200046004068183

`and(A057428(n+1), A185534(A167614(n+1)))`
-/

namespace A185528.P8089200046004068183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A185534 (A167614 (n + 1)).toNat)

end

end A185528.P8089200046004068183

/-!
# A185529: Number of (n+2)X6 binary arrays with each 3X3 subblock nonsingular.

The programs for A185529, there is no canonical definition to state claims against.
-/

/-! ## A185529.P6957475113294852768

`A185534(A374004(n+1))`
-/

namespace A185529.P6957475113294852768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A374004 (n + 1)).toNat

end

end A185529.P6957475113294852768

/-! ## A185529.P16593399512688777611

`A185534(A052905(n)+9)`
-/

namespace A185529.P16593399512688777611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A052905 n + 9).toNat

end

end A185529.P16593399512688777611

/-! ## A185529.P10599087151568751818

`A185534(A167614(n+2)+1)`
-/

namespace A185529.P10599087151568751818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A167614 (n + 2) + 1).toNat

end

end A185529.P10599087151568751818

/-! ## A185529.P12338513962813741809

`A185534(A141214(n+1))`
-/

namespace A185529.P12338513962813741809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A141214 (n + 1)).toNat

end

end A185529.P12338513962813741809

/-! ## A185529.P11693768681443594411

`A185534(A155212(n)+5)`
-/

namespace A185529.P11693768681443594411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A155212 n + 5).toNat

end

end A185529.P11693768681443594411

/-!
# A185530: Number of (n+2)X7 binary arrays with each 3X3 subblock nonsingular.

The programs for A185530, there is no canonical definition to state claims against.
-/

/-! ## A185530.P7957264500639886739

`A185534(A374005(n+1))`
-/

namespace A185530.P7957264500639886739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A374005 (n + 1)).toNat

end

end A185530.P7957264500639886739

/-! ## A185530.P571279347792900489

`A185534(A155212(n)+13)`
-/

namespace A185530.P571279347792900489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A155212 n + 13).toNat

end

end A185530.P571279347792900489

/-! ## A185530.P9327786617493770735

`A185534(A056000(n)+15)`
-/

namespace A185530.P9327786617493770735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A056000 n + 15).toNat

end

end A185530.P9327786617493770735

/-! ## A185530.P2598578949494008857

`A185534(eq[7, A066657(n)])`
-/

namespace A185530.P2598578949494008857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185530.P2598578949494008857

/-! ## A185530.P10620083697989637368

`A185534(eq[6, A131818(n+1)])`
-/

namespace A185530.P10620083697989637368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185530.P10620083697989637368

/-!
# A185531: Number of (n+2)X8 binary arrays with each 3X3 subblock nonsingular.

The programs for A185531, there is no canonical definition to state claims against.
-/

/-! ## A185531.P2194949981106229203

`A185534(A374007(n+1))`
-/

namespace A185531.P2194949981106229203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A374007 (n + 1)).toNat

end

end A185531.P2194949981106229203

/-! ## A185531.P681426622141547162

`A185534(A167499(n+4)+1)`
-/

namespace A185531.P681426622141547162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A167499 (n + 4) + 1).toNat

end

end A185531.P681426622141547162

/-! ## A185531.P11666449916161464408

`A185534(A000217(n+5)+6)`
-/

namespace A185531.P11666449916161464408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A000217 (n + 5) + 6).toNat

end

end A185531.P11666449916161464408

/-! ## A185531.P16082522263822708689

`A185534(A161680(n+6)+6)`
-/

namespace A185531.P16082522263822708689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A161680 (n + 6) + 6).toNat

end

end A185531.P16082522263822708689

/-! ## A185531.P17993887178503442276

`A185534(eq[7, A131818(n+1)])`
-/

namespace A185531.P17993887178503442276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185531.P17993887178503442276

/-!
# A185532: Number of (n+2) X 9 binary arrays with each 3 X 3 subblock nonsingular.

The programs for A185532, there is no canonical definition to state claims against.
-/

/-! ## A185532.P1938982152281415316

`A185534(A374008(n+1))`
-/

namespace A185532.P1938982152281415316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A374008 (n + 1)).toNat

end

end A185532.P1938982152281415316

/-! ## A185532.P15509136390695669180

`A185534(eq[11, A066657(n)])`
-/

namespace A185532.P15509136390695669180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185532.P15509136390695669180

/-! ## A185532.P4469277378203148575

`A185534(eq[8, A131818(n+1)])`
-/

namespace A185532.P4469277378203148575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185532.P4469277378203148575

/-! ## A185532.P10462468527353606548

`A185534(A055999(n+4))`
-/

namespace A185532.P10462468527353606548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A055999 (n + 4)).toNat

end

end A185532.P10462468527353606548

/-! ## A185532.P9428964293396859821

`A185534(eq[4, A219347(n)])`
-/

namespace A185532.P9428964293396859821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185532.P9428964293396859821

/-!
# A185533: Number of (n+2)X10 binary arrays with each 3X3 subblock nonsingular.

The programs for A185533, there is no canonical definition to state claims against.
-/

/-! ## A185533.P2102065855455054572

`A185534(A374009(n+1))`
-/

namespace A185533.P2102065855455054572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (A374009 (n + 1)).toNat

end

end A185533.P2102065855455054572

/-! ## A185533.P11488693255263968708

`A185534(eq[5, A219347(n)])`
-/

namespace A185533.P11488693255263968708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185533.P11488693255263968708

/-! ## A185533.P5867002264948405201

`A185534(eq[7, A193592(n)])`
-/

namespace A185533.P5867002264948405201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185533.P5867002264948405201

/-!
# A185535: 1/6 the number of n X 2 0..5 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185535, there is no canonical definition to state claims against.
-/

/-! ## A185535.P9881929454717214902

`A185540(∑[n+1]+2)`
-/

namespace A185535.P9881929454717214902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185535.P9881929454717214902

/-! ## A185535.P12198369025308864165

`record[A185540(eq[1, A083856(n)])]`
-/

namespace A185535.P12198369025308864165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185535.P12198369025308864165

/-! ## A185535.P1070260964333196288

`record[A185540(A254052(3*n+5))]`
-/

namespace A185535.P1070260964333196288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (A254052 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185535.P1070260964333196288

/-! ## A185535.P16118767519778895956

`record[A185540(n+2)/A008300(n)]`
-/

namespace A185535.P16118767519778895956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185540 (n + 2) : ℚ) / (A008300 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185535.P16118767519778895956

/-! ## A185535.P2708383677643526082

`record[A185540(n+2)/A009963(n)]`
-/

namespace A185535.P2708383677643526082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185540 (n + 2) : ℚ) / (A009963 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185535.P2708383677643526082

/-!
# A185536: 1/6 the number of nX3 0..5 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185536, there is no canonical definition to state claims against.
-/

/-! ## A185536.P12134976254857951165

`A185540(∑[n+2]+4)`
-/

namespace A185536.P12134976254857951165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185536.P12134976254857951165

/-! ## A185536.P5497302083841760075

`and(-1, A185540(A167614(n+1)))`
-/

namespace A185536.P5497302083841760075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A185540 (A167614 (n + 1)).toNat)

end

end A185536.P5497302083841760075

/-! ## A185536.P13469453434305560479

`record[A185540(C(A051340(n), 2)+3)]`
-/

namespace A185536.P13469453434305560479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (Nat.choose (A051340 n).toNat 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185536.P13469453434305560479

/-! ## A185536.P13037820950923475538

`record[gcd(A124926(n), A185540(n+2))]`
-/

namespace A185536.P13037820950923475538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124926 n) (A185540 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185536.P13037820950923475538

/-! ## A185536.P1517953309891073737

`record[gcd(A083856(n), A185540(n+3))]`
-/

namespace A185536.P1517953309891073737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083856 n) (A185540 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185536.P1517953309891073737

/-!
# A185537: 1/6 the number of nX4 0..5 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185537, there is no canonical definition to state claims against.
-/

/-! ## A185537.P4071820231796244470

`A185540(A374004(n+1))`
-/

namespace A185537.P4071820231796244470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (A374004 (n + 1)).toNat

end

end A185537.P4071820231796244470

/-! ## A185537.P8926969870976875520

`A185540(A141214(n)+7)`
-/

namespace A185537.P8926969870976875520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (A141214 n + 7).toNat

end

end A185537.P8926969870976875520

/-! ## A185537.P16385273702701138324

`A185540(A052905(n)+9)`
-/

namespace A185537.P16385273702701138324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (A052905 n + 9).toNat

end

end A185537.P16385273702701138324

/-! ## A185537.P6028044753301886812

`A185540(A055999(n)+10)`
-/

namespace A185537.P6028044753301886812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (A055999 n + 10).toNat

end

end A185537.P6028044753301886812

/-!
# A185538: 1/6 the number of nX5 0..5 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185538, there is no canonical definition to state claims against.
-/

/-! ## A185538.P16166982021823336392

`A185540(∑[n+5]+6)`
-/

namespace A185538.P16166982021823336392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A185538.P16166982021823336392

/-!
# A185539: 1/6 the number of nX6 0..5 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185539, there is no canonical definition to state claims against.
-/

/-! ## A185539.P12017266670011284549

`A185540(A374007(n+1))`
-/

namespace A185539.P12017266670011284549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185540 (A374007 (n + 1)).toNat

end

end A185539.P12017266670011284549

/-!
# A185540: T(n,k)=1/6 the number of nXk 0..5 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185540, there is no canonical definition to state claims against.
-/

/-! ## A185540.P13454250880381447641

`A351991(A387707(n+1))%A285877(n)`
-/

namespace A185540.P13454250880381447641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351991 (A387707 (n + 1)).toNat) (A285877 n)

end

end A185540.P13454250880381447641

/-! ## A185540.P965834710700529452

`A182620(A185544(n+1))%A032532(n+1)`
-/

namespace A185540.P965834710700529452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182620 (A185544 (n + 1)).toNat) (A032532 (n + 1))

end

end A185540.P965834710700529452

/-! ## A185540.P16909199825915851046

`A351991(A387707(n+1))^A351244(2*n+5)`
-/

namespace A185540.P16909199825915851046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351991 (A387707 (n + 1)).toNat : ℚ) ^ (A351244 (2 * n + 5) : ℤ)

end

end A185540.P16909199825915851046

/-!
# A185541: a(n) = m*(m+1)/2, where m = floor(n^(3/2)).

The programs for A185541, the canonical program `A185541.P511374097404235251` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185541 has offset 1).

The definition of A185541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185541.P511374097404235251

`C(floor(sqrt((n+1)^3))+1, 2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185541

/-- `C(floor(sqrt((n+1)^3))+1, 2)` -/
def P511374097404235251.Spec : Prop :=
  ∀ n, (P511374097404235251.a n : ℤ) = A185541 (n + 1)

theorem P511374097404235251.correct : P511374097404235251.Spec := by
  intro n
  simp only [A185541, Nat.add_sub_cancel]

end A185541

/-! ## A185541.P13613926487995261381

`(A065733(n+1)+A000093(n+1))/2`
-/

namespace A185541.P13613926487995261381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065733 (n + 1) + A000093 (n + 1) : ℚ) / 2

end

end A185541.P13613926487995261381

namespace A185541

/-- `(A065733(n+1)+A000093(n+1))/2` -/
def P13613926487995261381.Spec : Prop :=
  ∀ n, P13613926487995261381.a n = (A185541 (n + 1) : ℚ)

end A185541

/-! ## A185541.P16637042800775441278

`A000217(floor(sqrt((n+1)^3)))`
-/

namespace A185541.P16637042800775441278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.sqrt ((n + 1) ^ 3))

end

end A185541.P16637042800775441278

namespace A185541

/-- `A000217(floor(sqrt((n+1)^3)))` -/
def P16637042800775441278.Spec : Prop :=
  ∀ n, P16637042800775441278.a n = A185541 (n + 1)

end A185541

/-! ## A185541.P10670669272854634055

`A000217(∑[A035936(n)])%A224888(n+1)`
-/

namespace A185541.P10670669272854634055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A224888 (n + 1))

end

end A185541.P10670669272854634055

namespace A185541

/-- `A000217(∑[A035936(n)])%A224888(n+1)` -/
def P10670669272854634055.Spec : Prop :=
  ∀ n, P10670669272854634055.a n = A185541 (n + 1)

end A185541

/-! ## A185541.P11493764126106754880

`A000217(A077121(n+1))-A077121(n+1)`
-/

namespace A185541.P11493764126106754880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A077121 (n + 1)).toNat - A077121 (n + 1)

end

end A185541.P11493764126106754880

namespace A185541

/-- `A000217(A077121(n+1))-A077121(n+1)` -/
def P11493764126106754880.Spec : Prop :=
  ∀ n, P11493764126106754880.a n = A185541 (n + 1)

end A185541

/-! ## A185541.P4430163894179947133

`A000217(A000093(n+1))%A081415(n+1)`
-/

namespace A185541.P4430163894179947133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A000093 (n + 1)).toNat) (A081415 (n + 1))

end

end A185541.P4430163894179947133

namespace A185541

/-- `A000217(A000093(n+1))%A081415(n+1)` -/
def P4430163894179947133.Spec : Prop :=
  ∀ n, P4430163894179947133.a n = A185541 (n + 1)

end A185541

/-! ## A185541.P4278121287632976082

`A000124(floor(sqrt((n+1)^3)))-1`
-/

namespace A185541.P4278121287632976082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (Nat.sqrt ((n + 1) ^ 3)) - 1

end

end A185541.P4278121287632976082

namespace A185541

/-- `A000124(floor(sqrt((n+1)^3)))-1` -/
def P4278121287632976082.Spec : Prop :=
  ∀ n, P4278121287632976082.a n = A185541 (n + 1)

end A185541

/-! ## A185541.P10643378492148621977

`sqrt(A000537(floor((n+1)*sqrt(n+1))))`
-/

namespace A185541.P10643378492148621977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 ⌊(n + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋.toNat : ℝ)

end

end A185541.P10643378492148621977

namespace A185541

/-- `sqrt(A000537(floor((n+1)*sqrt(n+1))))` -/
def P10643378492148621977.Spec : Prop :=
  ∀ n, P10643378492148621977.a n = (A185541 (n + 1) : ℝ)

end A185541

/-! ## A185541.P4547802227965597700

`A161680(floor((n+1)*sqrt(n+1))+1)`
-/

namespace A185541.P4547802227965597700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (⌊(n + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋ + 1).toNat

end

end A185541.P4547802227965597700

namespace A185541

/-- `A161680(floor((n+1)*sqrt(n+1))+1)` -/
def P4547802227965597700.Spec : Prop :=
  ∀ n, P4547802227965597700.a n = A185541 (n + 1)

end A185541

/-! ## A185541.P9300907467715659400

`A002378(A000093(n+1))/2`
-/

namespace A185541.P9300907467715659400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A000093 (n + 1)).toNat : ℚ) / 2

end

end A185541.P9300907467715659400

namespace A185541

/-- `A002378(A000093(n+1))/2` -/
def P9300907467715659400.Spec : Prop :=
  ∀ n, P9300907467715659400.a n = (A185541 (n + 1) : ℚ)

end A185541

/-! ## A185541.P14844659681711711543

`A000096(A000093(n+1)-1)+1`
-/

namespace A185541.P14844659681711711543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A000093 (n + 1) - 1).toNat + 1

end

end A185541.P14844659681711711543

namespace A185541

/-- `A000096(A000093(n+1)-1)+1` -/
def P14844659681711711543.Spec : Prop :=
  ∀ n, P14844659681711711543.a n = A185541 (n + 1)

end A185541

/-!
# A185542: a(n) = m*(m+1)/2, where m = floor(n^(5/2)).

The programs for A185542, the canonical program `A185542.P16826996703818466053` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185542 has offset 1).

The definition of A185542 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A155013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185542.P16826996703818466053

`A000217(A155013(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185542

/-- `A000217(A155013(n+1))` -/
def P16826996703818466053.Spec : Prop :=
  ∀ n, P16826996703818466053.a n = A185542 (n + 1)

theorem P16826996703818466053.correct : P16826996703818466053.Spec := by
  intro n
  simp only [A185542, Nat.add_sub_cancel]

end A185542

/-! ## A185542.P4793998545078579487

`C(floor(sqrt((n+1)^5))+1, 2)`
-/

namespace A185542.P4793998545078579487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.sqrt ((n + 1) ^ 5) + 1) 2

end

end A185542.P4793998545078579487

namespace A185542

/-- `C(floor(sqrt((n+1)^5))+1, 2)` -/
def P4793998545078579487.Spec : Prop :=
  ∀ n, (P4793998545078579487.a n : ℤ) = A185542 (n + 1)

end A185542

/-! ## A185542.P2493621529837495360

`A000217(floor(sqrt((n+1)^5)))`
-/

namespace A185542.P2493621529837495360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.sqrt ((n + 1) ^ 5))

end

end A185542.P2493621529837495360

namespace A185542

/-- `A000217(floor(sqrt((n+1)^5)))` -/
def P2493621529837495360.Spec : Prop :=
  ∀ n, P2493621529837495360.a n = A185542 (n + 1)

end A185542

/-! ## A185542.P14395305808305986531

`gcd(C(2, n+2), A000217(floor((n+1)^(5/2))))`
-/

namespace A185542.P14395305808305986531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A000217 ⌊(n + 1 : ℝ) ^ ((5 : ℚ) / 2 : ℝ)⌋.toNat)

end

end A185542.P14395305808305986531

namespace A185542

/-- `gcd(C(2, n+2), A000217(floor((n+1)^(5/2))))` -/
def P14395305808305986531.Spec : Prop :=
  ∀ n, (P14395305808305986531.a n : ℤ) = A185542 (n + 1)

end A185542

/-! ## A185542.P17458852605772170

`lcm(1-and(2, n), A000217(record[floor((1-n)²^(5/4))]))`
-/

namespace A185542.P17458852605772170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℝ) ^ ((5 : ℚ) / 4 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A185542.P17458852605772170

namespace A185542

/-- `lcm(1-and(2, n), A000217(record[floor((1-n)²^(5/4))]))` -/
def P17458852605772170.Spec : Prop :=
  ∀ n, (P17458852605772170.a n : ℤ) = A185542 (n + 1)

end A185542

/-!
# A185543: Numbers not of the form floor(k^(3/2)); complement of A000093.

The programs for A185543, the canonical program `A185543.P14575827202893109574` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185543 has offset 1).

The definition of A185543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185543.P14575827202893109574

`comp[floor(sqrt(n^3))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185543

/-- `comp[floor(sqrt(n^3))]` -/
def P14575827202893109574.Spec : Prop :=
  ∀ n, (P14575827202893109574.a n : ℤ) = A185543 (n + 1)

theorem P14575827202893109574.correct : P14575827202893109574.Spec := by
  intro n
  simp only [A185543, Nat.add_sub_cancel]

end A185543

/-! ## A185543.P13501000434913903909

`and(comp[A000093(n)], -1)`
-/

namespace A185543.P13501000434913903909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A185543.P13501000434913903909

namespace A185543

/-- `and(comp[A000093(n)], -1)` -/
def P13501000434913903909.Spec : Prop :=
  ∀ n, P13501000434913903909.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P13282566355843106393

`comp[A077121(n)-2]+1`
-/

namespace A185543.P13282566355843106393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185543.P13282566355843106393

namespace A185543

/-- `comp[A077121(n)-2]+1` -/
def P13282566355843106393.Spec : Prop :=
  ∀ n, (P13282566355843106393.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P2661517817431672698

`A000027(comp[floor(n*sqrt(n))])`
-/

namespace A185543.P2661517817431672698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A185543.P2661517817431672698

namespace A185543

/-- `A000027(comp[floor(n*sqrt(n))])` -/
def P2661517817431672698.Spec : Prop :=
  ∀ n, P2661517817431672698.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P14740707961304321165

`comp[A000093(n+1)-1]+1`
-/

namespace A185543.P14740707961304321165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185543.P14740707961304321165

namespace A185543

/-- `comp[A000093(n+1)-1]+1` -/
def P14740707961304321165.Spec : Prop :=
  ∀ n, (P14740707961304321165.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P3458410971255016467

`comp[A000093(n)]%A078371(n)`
-/

namespace A185543.P3458410971255016467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A078371 n)

end

end A185543.P3458410971255016467

namespace A185543

/-- `comp[A000093(n)]%A078371(n)` -/
def P3458410971255016467.Spec : Prop :=
  ∀ n, P3458410971255016467.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P7588122301257352214

`lt[2*n, A070923(n)]`
-/

namespace A185543.P7588122301257352214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185543.P7588122301257352214

namespace A185543

/-- `lt[2*n, A070923(n)]` -/
def P7588122301257352214.Spec : Prop :=
  ∀ n, (P7588122301257352214.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P16700949007219175306

`A028310(comp[A000093(n)])`
-/

namespace A185543.P16700949007219175306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A185543.P16700949007219175306

namespace A185543

/-- `A028310(comp[A000093(n)])` -/
def P16700949007219175306.Spec : Prop :=
  ∀ n, P16700949007219175306.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P1993449434170983006

`lt[A000290(n), (A070923(n)/2)²]`
-/

namespace A185543.P1993449434170983006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A070923 n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A185543.P1993449434170983006

namespace A185543

/-- `lt[A000290(n), (A070923(n)/2)²]` -/
def P1993449434170983006.Spec : Prop :=
  ∀ n, (P1993449434170983006.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P1537698919448234737

`lt[char[floor(n*sqrt(n))], 1]`
-/

namespace A185543.P1537698919448234737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A185543.P1537698919448234737

namespace A185543

/-- `lt[char[floor(n*sqrt(n))], 1]` -/
def P1537698919448234737.Spec : Prop :=
  ∀ n, (P1537698919448234737.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P3599078480871401751

`eq[0, char[floor(n^(3/2))]]`
-/

namespace A185543.P3599078480871401751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185543.P3599078480871401751

namespace A185543

/-- `eq[0, char[floor(n^(3/2))]]` -/
def P3599078480871401751.Spec : Prop :=
  ∀ n, (P3599078480871401751.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P15722548515830804229

`eq[1, Δ[A186145(n+1)]]+1`
-/

namespace A185543.P15722548515830804229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A185543.P15722548515830804229

namespace A185543

/-- `eq[1, Δ[A186145(n+1)]]+1` -/
def P15722548515830804229.Spec : Prop :=
  ∀ n, (P15722548515830804229.a n : ℤ) = A185543 (n + 1)

end A185543

/-! ## A185543.P12323671253447824831

`A028310(eq[0, char[A000093(n)]])`
-/

namespace A185543.P12323671253447824831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A185543.P12323671253447824831

namespace A185543

/-- `A028310(eq[0, char[A000093(n)]])` -/
def P12323671253447824831.Spec : Prop :=
  ∀ n, P12323671253447824831.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P2440444191661837961

`A028310(eq[1, Δ[A077107(n)]+1])`
-/

namespace A185543.P2440444191661837961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185543.P2440444191661837961

namespace A185543

/-- `A028310(eq[1, Δ[A077107(n)]+1])` -/
def P2440444191661837961.Spec : Prop :=
  ∀ n, P2440444191661837961.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P5755988974757821214

`A000038(n+1)+eq[1, Δ[A077107(n)]+1]`
-/

namespace A185543.P5755988974757821214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A185543.P5755988974757821214

namespace A185543

/-- `A000038(n+1)+eq[1, Δ[A077107(n)]+1]` -/
def P5755988974757821214.Spec : Prop :=
  ∀ n, P5755988974757821214.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P7530356026497751947

`comp[A000093(n)]*A040419(2*n+1)`
-/

namespace A185543.P7530356026497751947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A040419 (2 * n + 1)

end

end A185543.P7530356026497751947

namespace A185543

/-- `comp[A000093(n)]*A040419(2*n+1)` -/
def P7530356026497751947.Spec : Prop :=
  ∀ n, P7530356026497751947.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P1244517068234090789

`comp[A000093(n)]+A008683(A005877(n))`
-/

namespace A185543.P1244517068234090789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A008683 (A005877 n).toNat

end

end A185543.P1244517068234090789

namespace A185543

/-- `comp[A000093(n)]+A008683(A005877(n))` -/
def P1244517068234090789.Spec : Prop :=
  ∀ n, P1244517068234090789.a n = A185543 (n + 1)

end A185543

/-! ## A185543.P12007133373819553396

`A002262(∑[n])+comp[A000093(n)]`
-/

namespace A185543.P12007133373819553396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A185543.P12007133373819553396

namespace A185543

/-- `A002262(∑[n])+comp[A000093(n)]` -/
def P12007133373819553396.Spec : Prop :=
  ∀ n, P12007133373819553396.a n = A185543 (n + 1)

end A185543

/-!
# A185544: Convert n to binary, use as coefficients of polynomial in GF(2)[x], apply the map f defined in A185000, write down coefficient vector of the result, highest powers first.

The programs for A185544, there is no canonical definition to state claims against.
-/

/-! ## A185544.P5997288237448144254

`A085186(A001281(n)%A346143(n))`
-/

namespace A185544.P5997288237448144254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085186 (Int.tmod (A001281 n) (A346143 n)).toNat

end

end A185544.P5997288237448144254

/-!
# A185545: Numbers n such that there exists a sequence of n consecutive perfect squares that add up to a perfect square.

The programs for A185545, there is no canonical definition to state claims against.
-/

/-! ## A185545.P18155588657848730208

`∪[(∑[8*n]+5)², A001032(n+1)]`
-/

namespace A185545.P18155588657848730208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 5) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A185545.P18155588657848730208

/-! ## A185545.P5885073270339517411

`filter[A134419(n+1), A359832(#)]`
-/

namespace A185545.P5885073270339517411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A185545.P5885073270339517411

/-! ## A185545.P14834301463015502957

`∪[A001032(n+1), A007204(n)]`
-/

namespace A185545.P14834301463015502957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P14834301463015502957

/-! ## A185545.P739505174775587763

`∪[A001032(n+1), A014769(n)]`
-/

namespace A185545.P739505174775587763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P739505174775587763

/-! ## A185545.P625088672784894165

`∪[A001032(n+1), A014797(n)]`
-/

namespace A185545.P625088672784894165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014797 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P625088672784894165

/-! ## A185545.P15545088937832447847

`∪[A001032(n+1), A016970(n)]`
-/

namespace A185545.P15545088937832447847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016970 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P15545088937832447847

/-! ## A185545.P7389521969879804827

`∪[A001032(n+1), A017582(n)]`
-/

namespace A185545.P7389521969879804827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017582 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P7389521969879804827

/-! ## A185545.P13978780397995170590

`∪[A001032(n+1), A053805(n)]`
-/

namespace A185545.P13978780397995170590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P13978780397995170590

/-! ## A185545.P14996727473729068445

`∪[A001032(n+1), A062938(n)]`
-/

namespace A185545.P14996727473729068445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P14996727473729068445

/-! ## A185545.P4912975085495976032

`∪[A001032(n+1), A174371(n)]`
-/

namespace A185545.P4912975085495976032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174371 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185545.P4912975085495976032

/-!
# A185546: a(n) = floor((1/2)*(n+1)^(3/2)); complement of A185547.

The programs for A185546, the canonical program `A185546.P3931499774686929806` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185546 has offset 1).

The definition of A185546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185546.P3931499774686929806

`floor(sqrt((n+2)^3)/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185546

/-- `floor(sqrt((n+2)^3)/2)` -/
def P3931499774686929806.Spec : Prop :=
  ∀ n, P3931499774686929806.a n = A185546 (n + 1)

theorem P3931499774686929806.correct : P3931499774686929806.Spec := by
  intro n
  simp only [A185546, Nat.add_sub_cancel]

end A185546

/-! ## A185546.P14354439768016840029

`A186150(n+2)-(n+2)`
-/

namespace A185546.P14354439768016840029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186150 (n + 2) - (n + 2 : ℤ)

end

end A185546.P14354439768016840029

namespace A185546

/-- `A186150(n+2)-(n+2)` -/
def P14354439768016840029.Spec : Prop :=
  ∀ n, P14354439768016840029.a n = A185546 (n + 1)

end A185546

/-! ## A185546.P217282933291959475

`A004526(floor((n+2)^(3/2)))`
-/

namespace A185546.P217282933291959475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊(n + 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋.toNat

end

end A185546.P217282933291959475

namespace A185546

/-- `A004526(floor((n+2)^(3/2)))` -/
def P217282933291959475.Spec : Prop :=
  ∀ n, P217282933291959475.a n = A185546 (n + 1)

end A185546

/-! ## A185546.P3931156414873950694

`record[A123108(A000093(n))]`
-/

namespace A185546.P3931156414873950694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000093 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185546.P3931156414873950694

namespace A185546

/-- `record[A123108(A000093(n))]` -/
def P3931156414873950694.Spec : Prop :=
  ∀ n, P3931156414873950694.a n = A185546 (n + 1)

end A185546

/-! ## A185546.P14971726484851973326

`A110654(∑[A035936(n+1)])`
-/

namespace A185546.P14971726484851973326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185546.P14971726484851973326

namespace A185546

/-- `A110654(∑[A035936(n+1)])` -/
def P14971726484851973326.Spec : Prop :=
  ∀ n, P14971726484851973326.a n = A185546 (n + 1)

end A185546

/-! ## A185546.P4573096321578944184

`A008619(A000093(n+2))-1`
-/

namespace A185546.P4573096321578944184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000093 (n + 2)).toNat - 1

end

end A185546.P4573096321578944184

namespace A185546

/-- `A008619(A000093(n+2))-1` -/
def P4573096321578944184.Spec : Prop :=
  ∀ n, P4573096321578944184.a n = A185546 (n + 1)

end A185546

/-! ## A185546.P8960884629310156433

`A008619(∑[A035936(n+1)]-1)`
-/

namespace A185546.P8960884629310156433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A185546.P8960884629310156433

namespace A185546

/-- `A008619(∑[A035936(n+1)]-1)` -/
def P8960884629310156433.Spec : Prop :=
  ∀ n, P8960884629310156433.a n = A185546 (n + 1)

end A185546

/-! ## A185546.P7460593838782897681

`A002265(A135061(n+2))`
-/

namespace A185546.P7460593838782897681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A135061 (n + 2)).toNat

end

end A185546.P7460593838782897681

namespace A185546

/-- `A002265(A135061(n+2))` -/
def P7460593838782897681.Spec : Prop :=
  ∀ n, P7460593838782897681.a n = A185546 (n + 1)

end A185546

/-!
# A185547: Numbers not of the form floor((1/2)(n+1)^(3/2)); complement of A185546.

The programs for A185547, the canonical program `A185547.P784928370855963330` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185547 has offset 1).

The definition of A185547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185547.P784928370855963330

`comp[floor(sqrt(n^3)/2)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185547

/-- `comp[floor(sqrt(n^3)/2)]` -/
def P784928370855963330.Spec : Prop :=
  ∀ n, (P784928370855963330.a n : ℤ) = A185547 (n + 1)

theorem P784928370855963330.correct : P784928370855963330.Spec := by
  intro n
  simp only [A185547, Nat.add_sub_cancel]

end A185547

/-! ## A185547.P1207171837567404010

`comp[A185546(n+1)-1]+1`
-/

namespace A185547.P1207171837567404010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185546 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185547.P1207171837567404010

namespace A185547

/-- `comp[A185546(n+1)-1]+1` -/
def P1207171837567404010.Spec : Prop :=
  ∀ n, (P1207171837567404010.a n : ℤ) = A185547 (n + 1)

end A185547

/-! ## A185547.P17140467579806359423

`eq[char[A185546(n+1)], A000007(n)]`
-/

namespace A185547.P17140467579806359423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185546 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185547.P17140467579806359423

namespace A185547

/-- `eq[char[A185546(n+1)], A000007(n)]` -/
def P17140467579806359423.Spec : Prop :=
  ∀ n, (P17140467579806359423.a n : ℤ) = A185547 (n + 1)

end A185547

/-! ## A185547.P18302187167723226969

`eq[char[A185546(n+1)], A000038(n)]`
-/

namespace A185547.P18302187167723226969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185546 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A185547.P18302187167723226969

namespace A185547

/-- `eq[char[A185546(n+1)], A000038(n)]` -/
def P18302187167723226969.Spec : Prop :=
  ∀ n, (P18302187167723226969.a n : ℤ) = A185547 (n + 1)

end A185547

/-! ## A185547.P18049353012764737117

`eq[0, Δ[A077107(2*n)]]`
-/

namespace A185547.P18049353012764737117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185547.P18049353012764737117

namespace A185547

/-- `eq[0, Δ[A077107(2*n)]]` -/
def P18049353012764737117.Spec : Prop :=
  ∀ n, (P18049353012764737117.a n : ℤ) = A185547 (n + 1)

end A185547

/-!
# A185548: a(n) = floor(floor(n^(5/2))^(2/3)).

The programs for A185548, there is no canonical definition to state claims against.
-/

/-! ## A185548.P2707259932370815691

`A100196(A155013(n+1))`
-/

namespace A185548.P2707259932370815691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A155013 (n + 1)).toNat

end

end A185548.P2707259932370815691

/-! ## A185548.P410083506574992536

`A134918(n+1)-A052409(A005186(3*n+4))`
-/

namespace A185548.P410083506574992536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134918 (n + 1) - A052409 (A005186 (3 * n + 4)).toNat

end

end A185548.P410083506574992536

/-! ## A185548.P10982952683053257597

`∑[A329697(A200748(2*n+3))]`
-/

namespace A185548.P10982952683053257597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A200748 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185548.P10982952683053257597

/-! ## A185548.P8436102398897314346

`A134918(n+1)-A052409(A048474(n))`
-/

namespace A185548.P8436102398897314346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134918 (n + 1) - A052409 (A048474 n).toNat

end

end A185548.P8436102398897314346

/-! ## A185548.P15904147722884089590

`lt[A279684(A087466(n+3)), A325495(2*n+3)]`
-/

namespace A185548.P15904147722884089590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279684 (A087466 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325495 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A185548.P15904147722884089590

/-!
# A185549: a(n) = ceiling(n^(3/2)); complement of A185550.

The programs for A185549, the canonical program `A185549.P17028341597429184017` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185549 has offset 0).

The definition of A185549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^(3/2))` (program `A185549.P17028341597429184017`, by `A185549.P17028341597429184017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185549.P17028341597429184017

`ceil(n^(3/2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185549

/-- `ceil(n^(3/2))` -/
def P17028341597429184017.Spec : Prop :=
  ∀ n, P17028341597429184017.a n = A185549 n

theorem P17028341597429184017.correct : P17028341597429184017.Spec := by
  intro n
  simp only [A185549]

end A185549

/-! ## A185549.P18355009895605349799

`or(ceil(n*sqrt(n)), char[1])`
-/

namespace A185549.P18355009895605349799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185549.P18355009895605349799

namespace A185549

/-- `or(ceil(n*sqrt(n)), char[1])` -/
def P18355009895605349799.Spec : Prop :=
  ∀ n, P18355009895605349799.a n = A185549 n

end A185549

/-! ## A185549.P8955244895040607079

`floor(n*(acot(n)+sqrt(n)))`
-/

namespace A185549.P8955244895040607079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.sqrt (n : ℝ))⌋

end

end A185549.P8955244895040607079

namespace A185549

/-- `floor(n*(acot(n)+sqrt(n)))` -/
def P8955244895040607079.Spec : Prop :=
  ∀ n, P8955244895040607079.a n = A185549 n

end A185549

/-! ## A185549.P4830656876987206030

`ceil(n*sqrt(n))%(n+1)²`
-/

namespace A185549.P4830656876987206030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ ((n + 1) ^ 2 : ℤ)

end

end A185549.P4830656876987206030

namespace A185549

/-- `ceil(n*sqrt(n))%(n+1)²` -/
def P4830656876987206030.Spec : Prop :=
  ∀ n, P4830656876987206030.a n = A185549 n

end A185549

/-! ## A185549.P11820978170044789276

`sqrt(A077115(n))`
-/

namespace A185549.P11820978170044789276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077115 n : ℝ)

end

end A185549.P11820978170044789276

namespace A185549

/-- `sqrt(A077115(n))` -/
def P11820978170044789276.Spec : Prop :=
  ∀ n, P11820978170044789276.a n = (A185549 n : ℝ)

end A185549

/-! ## A185549.P11267398073045397382

`n²-A084535(n)`
-/

namespace A185549.P11267398073045397382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A084535 n

end

end A185549.P11267398073045397382

namespace A185549

/-- `n²-A084535(n)` -/
def P11267398073045397382.Spec : Prop :=
  ∀ n, P11267398073045397382.a n = A185549 n

end A185549

/-! ## A185549.P8801887472373768939

`A077121(n)-char[n²]`
-/

namespace A185549.P8801887472373768939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185549.P8801887472373768939

namespace A185549

/-- `A077121(n)-char[n²]` -/
def P8801887472373768939.Spec : Prop :=
  ∀ n, P8801887472373768939.a n = A185549 n

end A185549

/-! ## A185549.P7046700273646467330

`A000093(n)+char[comp[n²]]`
-/

namespace A185549.P7046700273646467330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185549.P7046700273646467330

namespace A185549

/-- `A000093(n)+char[comp[n²]]` -/
def P7046700273646467330.Spec : Prop :=
  ∀ n, P7046700273646467330.a n = A185549 n

end A185549

/-! ## A185549.P1145039056585585732

`abs(ceil(sqrt(A000578(n))-n))+n`
-/

namespace A185549.P1145039056585585732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.sqrt (A000578 n : ℝ) - (n : ℝ)⌉| + (n : ℤ)

end

end A185549.P1145039056585585732

namespace A185549

/-- `abs(ceil(sqrt(A000578(n))-n))+n` -/
def P1145039056585585732.Spec : Prop :=
  ∀ n, P1145039056585585732.a n = A185549 n

end A185549

/-! ## A185549.P8975740373285877567

`∑[A144968(n)]-A144968(n)`
-/

namespace A185549.P8975740373285877567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144968 n

end

end A185549.P8975740373285877567

namespace A185549

/-- `∑[A144968(n)]-A144968(n)` -/
def P8975740373285877567.Spec : Prop :=
  ∀ n, P8975740373285877567.a n = A185549 n

end A185549

/-! ## A185549.P895549120543055019

`A349662(n)+A184985(n+1)`
-/

namespace A185549.P895549120543055019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349662 n + A184985 (n + 1)

end

end A185549.P895549120543055019

namespace A185549

/-- `A349662(n)+A184985(n+1)` -/
def P895549120543055019.Spec : Prop :=
  ∀ n, P895549120543055019.a n = A185549 n

end A185549

/-! ## A185549.P3587127997050165042

`A002821(n)+n-A100196(A002821(n))`
-/

namespace A185549.P3587127997050165042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 n + ((n : ℤ) - A100196 (A002821 n).toNat)

end

end A185549.P3587127997050165042

namespace A185549

/-- `A002821(n)+n-A100196(A002821(n))` -/
def P3587127997050165042.Spec : Prop :=
  ∀ n, P3587127997050165042.a n = A185549 n

end A185549

/-! ## A185549.P2991252091674599917

`record[ceil(sqrt(A198063(n)))]`
-/

namespace A185549.P2991252091674599917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A198063 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185549.P2991252091674599917

namespace A185549

/-- `record[ceil(sqrt(A198063(n)))]` -/
def P2991252091674599917.Spec : Prop :=
  ∀ n, P2991252091674599917.a n = A185549 n

end A185549

/-!
# A185550: Numbers not of the form ceiling(n^(3/2)); complement of A185549.

The programs for A185550, the canonical program `A185550.P12870519884266589309` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185550 has offset 1).

The definition of A185550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185550.P12870519884266589309

`comp[ceil(sqrt(n^3))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185550

/-- `comp[ceil(sqrt(n^3))]` -/
def P12870519884266589309.Spec : Prop :=
  ∀ n, (P12870519884266589309.a n : ℤ) = A185550 (n + 1)

theorem P12870519884266589309.correct : P12870519884266589309.Spec := by
  intro n
  simp only [A185550, Nat.add_sub_cancel]

end A185550

/-! ## A185550.P12910471153209881230

`comp[A185549(n)-1]+1`
-/

namespace A185550.P12910471153209881230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185550.P12910471153209881230

namespace A185550

/-- `comp[A185549(n)-1]+1` -/
def P12910471153209881230.Spec : Prop :=
  ∀ n, (P12910471153209881230.a n : ℤ) = A185550 (n + 1)

end A185550

/-! ## A185550.P13331429178704568167

`comp[A185549(n)]%A017426(n)`
-/

namespace A185550.P13331429178704568167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A017426 n)

end

end A185550.P13331429178704568167

namespace A185550

/-- `comp[A185549(n)]%A017426(n)` -/
def P13331429178704568167.Spec : Prop :=
  ∀ n, P13331429178704568167.a n = A185550 (n + 1)

end A185550

/-! ## A185550.P671995869147126718

`A100196(A185598(n+1))+1+n`
-/

namespace A185550.P671995869147126718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A185598 (n + 1)).toNat + 1 + (n : ℤ)

end

end A185550.P671995869147126718

namespace A185550

/-- `A100196(A185598(n+1))+1+n` -/
def P671995869147126718.Spec : Prop :=
  ∀ n, P671995869147126718.a n = A185550 (n + 1)

end A185550

/-! ## A185550.P11654341483637199771

`A100196(a(n-1)+1)+n+1` with `a(0)=2`
-/

namespace A185550.P11654341483637199771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100196 (a (n - 1) + 1).toNat + (n + 1 : ℤ)

end

end A185550.P11654341483637199771

namespace A185550

/-- `A100196(a(n-1)+1)+n+1` -/
def P11654341483637199771.Spec : Prop :=
  ∀ n, P11654341483637199771.a n = A185550 (n + 1)

end A185550

/-! ## A185550.P15451201120208017329

`eq[A100196(abs(1-n)), A100196(n)]`
-/

namespace A185550.P15451201120208017329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185550.P15451201120208017329

namespace A185550

/-- `eq[A100196(abs(1-n)), A100196(n)]` -/
def P15451201120208017329.Spec : Prop :=
  ∀ n, (P15451201120208017329.a n : ℤ) = A185550 (n + 1)

end A185550

/-! ## A185550.P10130333648085803727

`lt[char[ceil(sqrt(n^3))], 1]`
-/

namespace A185550.P10130333648085803727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A185550.P10130333648085803727

namespace A185550

/-- `lt[char[ceil(sqrt(n^3))], 1]` -/
def P10130333648085803727.Spec : Prop :=
  ∀ n, (P10130333648085803727.a n : ℤ) = A185550 (n + 1)

end A185550

/-! ## A185550.P12886572585639988366

`a(n-1)+A100204(a(n-1))+1` with `a(0)=2`
-/

namespace A185550.P12886572585639988366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A100204 (a (n - 1)).toNat + 1)

end

end A185550.P12886572585639988366

namespace A185550

/-- `a(n-1)+A100204(a(n-1))+1` -/
def P12886572585639988366.Spec : Prop :=
  ∀ n, P12886572585639988366.a n = A185550 (n + 1)

end A185550

/-! ## A185550.P2286689304685684619

`eq[A010057(n), A100204(n)]+1`
-/

namespace A185550.P2286689304685684619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A185550.P2286689304685684619

namespace A185550

/-- `eq[A010057(n), A100204(n)]+1` -/
def P2286689304685684619.Spec : Prop :=
  ∀ n, (P2286689304685684619.a n : ℤ) = A185550 (n + 1)

end A185550

/-! ## A185550.P10133605057996543339

`1-A001489(eq[A010057(n), A100204(n)])`
-/

namespace A185550.P10133605057996543339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A185550.P10133605057996543339

namespace A185550

/-- `1-A001489(eq[A010057(n), A100204(n)])` -/
def P10133605057996543339.Spec : Prop :=
  ∀ n, P10133605057996543339.a n = A185550 (n + 1)

end A185550

/-!
# A185551: 1/3 the number of n X n 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185551, there is no canonical definition to state claims against.
-/

/-! ## A185551.P10962013343148505235

`A185559((n+1)²+n²)`
-/

namespace A185551.P10962013343148505235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 ((n + 1) ^ 2 + n ^ 2)

end

end A185551.P10962013343148505235

/-!
# A185552: 1/3 the number of n X 2 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185552, the canonical program `A185552.P18370214930699086883` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185552 has offset 1).

The definition of A185552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185552.P18370214930699086883

`3*a(n-1)+7*a(n-2)+8*a(n-3)-8*a(n-5)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=120, a(4)=576`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185552

/-- `3*a(n-1)+7*a(n-2)+8*a(n-3)-8*a(n-5)` -/
def P18370214930699086883.Spec : Prop :=
  ∀ n, P18370214930699086883.a n = A185552 (n + 1)

theorem P18370214930699086883.correct : P18370214930699086883.Spec := by
  intro n
  simp only [A185552, Nat.add_sub_cancel]

end A185552

/-! ## A185552.P594746578449667483

`A185559(∑[n+1]+2)`
-/

namespace A185552.P594746578449667483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185552.P594746578449667483

namespace A185552

/-- `A185559(∑[n+1]+2)` -/
def P594746578449667483.Spec : Prop :=
  ∀ n, P594746578449667483.a n = A185552 (n + 1)

end A185552

/-! ## A185552.P17461086354684503823

`record[A185559(A133263(val(n+1, 2)+1))]`
-/

namespace A185552.P17461086354684503823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185552.P17461086354684503823

namespace A185552

/-- `record[A185559(A133263(val(n+1, 2)+1))]` -/
def P17461086354684503823.Spec : Prop :=
  ∀ n, P17461086354684503823.a n = A185552 (n + 1)

end A185552

/-! ## A185552.P5546761412680717660

`record[A185559(n+2)/A192722(n+1)]`
-/

namespace A185552.P5546761412680717660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185559 (n + 2) : ℚ) / (A192722 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185552.P5546761412680717660

namespace A185552

/-- `record[A185559(n+2)/A192722(n+1)]` -/
def P5546761412680717660.Spec : Prop :=
  ∀ n, P5546761412680717660.a n = (A185552 (n + 1) : ℚ)

end A185552

/-! ## A185552.P13192826414248037342

`record[gcd(A185559(n+1), A238414(n+1))]`
-/

namespace A185552.P13192826414248037342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185559 (n + 1)) (A238414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185552.P13192826414248037342

namespace A185552

/-- `record[gcd(A185559(n+1), A238414(n+1))]` -/
def P13192826414248037342.Spec : Prop :=
  ∀ n, (P13192826414248037342.a n : ℤ) = A185552 (n + 1)

end A185552

/-!
# A185553: 1/3 the number of nX3 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185553, there is no canonical definition to state claims against.
-/

/-! ## A185553.P2182397075952005565

`A000122(n²)*A199642(n+1)`
-/

namespace A185553.P2182397075952005565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A199642 (n + 1)

end

end A185553.P2182397075952005565

/-! ## A185553.P4125926026474398201

`A036453(n+1)*A199642(n+1)`
-/

namespace A185553.P4125926026474398201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A199642 (n + 1)

end

end A185553.P4125926026474398201

/-! ## A185553.P16465724542482659865

`(A178334(n)+1)*A199642(n+1)`
-/

namespace A185553.P16465724542482659865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A199642 (n + 1)

end

end A185553.P16465724542482659865

/-! ## A185553.P5404685558399037600

`A169695(n²+1)*A199642(n+1)`
-/

namespace A185553.P5404685558399037600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n ^ 2 + 1) * A199642 (n + 1)

end

end A185553.P5404685558399037600

/-! ## A185553.P4194467164444798584

`A014963(A001316(n))*A199642(n+1)`
-/

namespace A185553.P4194467164444798584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A199642 (n + 1)

end

end A185553.P4194467164444798584

/-! ## A185553.P8228216762904531990

`A020639(A000132(n))*A199642(n+1)`
-/

namespace A185553.P8228216762904531990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000132 n).toNat * A199642 (n + 1)

end

end A185553.P8228216762904531990

/-! ## A185553.P12243806853117082505

`A020639(A103517(n))*A199642(n+1)`
-/

namespace A185553.P12243806853117082505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A199642 (n + 1)

end

end A185553.P12243806853117082505

/-! ## A185553.P810360007316185119

`A000124(A178334(n))*A199642(n+1)`
-/

namespace A185553.P810360007316185119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A178334 n).toNat * A199642 (n + 1)

end

end A185553.P810360007316185119

/-! ## A185553.P6273658789982312769

`A000034(Δ[A007504(n)])*A199642(n+1)`
-/

namespace A185553.P6273658789982312769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat * A199642 (n + 1)

end

end A185553.P6273658789982312769

/-!
# A185554: 1/3 the number of n X 4 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185554, there is no canonical definition to state claims against.
-/

/-! ## A185554.P8277253981841387285

`2*A199643(n+1)-A000007(n)`
-/

namespace A185554.P8277253981841387285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199643 (n + 1) - A000007 n

end

end A185554.P8277253981841387285

/-! ## A185554.P13052672968904322299

`(A199643(n+1)+A000007(n))*A036453(n+1)`
-/

namespace A185554.P13052672968904322299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199643 (n + 1) + A000007 n) * A036453 (n + 1)

end

end A185554.P13052672968904322299

/-! ## A185554.P17884534899894686159

`A199643(n+1)+A199643(n+1)/A054977(n)`
-/

namespace A185554.P17884534899894686159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199643 (n + 1) : ℚ) + (A199643 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A185554.P17884534899894686159

/-! ## A185554.P15261973330468997575

`A185559(A374004(n+1))`
-/

namespace A185554.P15261973330468997575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A374004 (n + 1)).toNat

end

end A185554.P15261973330468997575

/-!
# A185555: 1/3 the number of nX5 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185555, there is no canonical definition to state claims against.
-/

/-! ## A185555.P11247610867421753451

`A185559(A374005(n+1))`
-/

namespace A185555.P11247610867421753451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A374005 (n + 1)).toNat

end

end A185555.P11247610867421753451

/-! ## A185555.P14731026733678623098

`A185559(A155212(n)+13)`
-/

namespace A185555.P14731026733678623098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A155212 n + 13).toNat

end

end A185555.P14731026733678623098

/-! ## A185555.P2243924465739434870

`A185559(A056000(n)+15)`
-/

namespace A185555.P2243924465739434870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A056000 n + 15).toNat

end

end A185555.P2243924465739434870

/-! ## A185555.P4603996467421767534

`A185559(eq[2, A092921(n)])`
-/

namespace A185555.P4603996467421767534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185555.P4603996467421767534

/-! ## A185555.P12464613190826636335

`A185559(eq[4, A193592(n)])`
-/

namespace A185555.P12464613190826636335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185555.P12464613190826636335

/-!
# A185556: 1/3 the number of n X 6 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185556, there is no canonical definition to state claims against.
-/

/-! ## A185556.P10369657471466120617

`A185559(A374007(n+1))`
-/

namespace A185556.P10369657471466120617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A374007 (n + 1)).toNat

end

end A185556.P10369657471466120617

/-! ## A185556.P15900721505560894899

`A185559(A167499(n+4)+1)`
-/

namespace A185556.P15900721505560894899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A167499 (n + 4) + 1).toNat

end

end A185556.P15900721505560894899

/-! ## A185556.P1213458285211043803

`A185559(eq[7, A131818(n+1)])`
-/

namespace A185556.P1213458285211043803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185556.P1213458285211043803

/-! ## A185556.P4770976429049554136

`A185559(A052905(n+3))`
-/

namespace A185556.P4770976429049554136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A052905 (n + 3)).toNat

end

end A185556.P4770976429049554136

/-! ## A185556.P341115115010476534

`A185559(eq[3, A219347(n)])`
-/

namespace A185556.P341115115010476534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185556.P341115115010476534

/-!
# A185557: 1/3 the number of n X 7 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185557, there is no canonical definition to state claims against.
-/

/-! ## A185557.P900789824359971513

`A185559(A374008(n+1))`
-/

namespace A185557.P900789824359971513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A374008 (n + 1)).toNat

end

end A185557.P900789824359971513

/-! ## A185557.P6682418688347897173

`A185559(eq[4, A219347(n)])`
-/

namespace A185557.P6682418688347897173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185557.P6682418688347897173

/-! ## A185557.P17777860836693418125

`A185559(eq[7, A200370(n+1)])`
-/

namespace A185557.P17777860836693418125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185557.P17777860836693418125

/-!
# A185558: 1/3 the number of nX8 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185558, there is no canonical definition to state claims against.
-/

/-! ## A185558.P757091772489441492

`A185559(A374009(n+1))`
-/

namespace A185558.P757091772489441492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (A374009 (n + 1)).toNat

end

end A185558.P757091772489441492

/-! ## A185558.P4573764413180889170

`A185559(eq[9, A237448(n+1)])`
-/

namespace A185558.P4573764413180889170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185559 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185558.P4573764413180889170

/-!
# A185559: T(n,k)=1/3 the number of nXk 0..2 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185559, there is no canonical definition to state claims against.
-/

/-! ## A185559.P4281723384335562402

`A025848(A014719(n+2)^A184257(n+1))`
-/

namespace A185559.P4281723384335562402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025848 (SequenceMachineLib.roundAway ((A014719 (n + 2) : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A185559.P4281723384335562402

/-! ## A185559.P377602821194425612

`A025848(C(A014719(n+2), A184257(n+1)))`
-/

namespace A185559.P377602821194425612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025848 (Nat.choose (A014719 (n + 2)).toNat (A184257 (n + 1)).toNat)

end

end A185559.P377602821194425612

/-!
# A185560: 1/4 the number of n X n 0..3 arrays with no element equal both to the element above and to the element to its left.

The programs for A185560, there is no canonical definition to state claims against.
-/

/-! ## A185560.P9357139797479546963

`A185567((n+1)²+n²)`
-/

namespace A185560.P9357139797479546963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 ((n + 1) ^ 2 + n ^ 2)

end

end A185560.P9357139797479546963

/-!
# A185561: 1/4 the number of n X 3 0..3 arrays with no element equal both to the element above and to the element to its left.

The programs for A185561, there is no canonical definition to state claims against.
-/

/-! ## A185561.P4323306482905653915

`57*a(n-1)-45*a(n-2)` with `a(0)=16, a(1)=900`
-/

namespace A185561.P4323306482905653915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 900] fun n a =>
  57 * a (n - 1) - 45 * a (n - 2)

end

end A185561.P4323306482905653915

/-! ## A185561.P8888224996600591921

`A185567(∑[n+2]+4)`
-/

namespace A185561.P8888224996600591921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185561.P8888224996600591921

/-! ## A185561.P4847613289078813627

`lcm(2, A185567(A167614(n+1)))`
-/

namespace A185561.P4847613289078813627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185567 (A167614 (n + 1)).toNat)

end

end A185561.P4847613289078813627

/-! ## A185561.P7011603107232866505

`A185567(A167614(n+1))+A025439(n)`
-/

namespace A185561.P7011603107232866505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A167614 (n + 1)).toNat + A025439 n

end

end A185561.P7011603107232866505

/-! ## A185561.P2757578271762983343

`A185567(A167614(n+1))+A178798(n)`
-/

namespace A185561.P2757578271762983343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A167614 (n + 1)).toNat + A178798 n

end

end A185561.P2757578271762983343

/-!
# A185562: 1/4 the number of n X 4 0..3 arrays with no element equal both to the element above and to the element to its left.

The programs for A185562, there is no canonical definition to state claims against.
-/

/-! ## A185562.P527631994394145389

`A185567(A141214(n)+7)`
-/

namespace A185562.P527631994394145389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A141214 n + 7).toNat

end

end A185562.P527631994394145389

/-! ## A185562.P15993281810972638793

`A185567(A052905(n)+9)`
-/

namespace A185562.P15993281810972638793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A052905 n + 9).toNat

end

end A185562.P15993281810972638793

/-! ## A185562.P8903289975891062071

`A185567(∑[A141213(n)]+7)`
-/

namespace A185562.P8903289975891062071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A185562.P8903289975891062071

/-! ## A185562.P16328632456277667355

`A185567(A167614(n+2)+1)`
-/

namespace A185562.P16328632456277667355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A167614 (n + 2) + 1).toNat

end

end A185562.P16328632456277667355

/-! ## A185562.P17899000990041987958

`A185567(eq[5, A131818(n+1)])`
-/

namespace A185562.P17899000990041987958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185562.P17899000990041987958

/-!
# A185563: 1/4 the number of n X 5 0..3 arrays with no element equal both to the element above and to the element to its left.

The programs for A185563, there is no canonical definition to state claims against.
-/

/-! ## A185563.P10269937338025241975

`A185567(A374005(n+1))`
-/

namespace A185563.P10269937338025241975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A374005 (n + 1)).toNat

end

end A185563.P10269937338025241975

/-! ## A185563.P18117342700715420353

`A185567(A167614(n+3)+2)`
-/

namespace A185563.P18117342700715420353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A167614 (n + 3) + 2).toNat

end

end A185563.P18117342700715420353

/-! ## A185563.P6420424163508929153

`A185567(eq[6, A131818(n+1)])`
-/

namespace A185563.P6420424163508929153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185563.P6420424163508929153

/-! ## A185563.P6455686267780691703

`A185567(eq[3, A152157(n)])`
-/

namespace A185563.P6455686267780691703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185563.P6455686267780691703

/-! ## A185563.P15915779160335265515

`A185567(Δ[A023545(n+1)])`
-/

namespace A185563.P15915779160335265515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (f1 (n + 1) - f1 n).toNat

end

end A185563.P15915779160335265515

/-!
# A185564: 

The programs for A185564, there is no canonical definition to state claims against.
-/

/-! ## A185564.P5264530604940993267

`A185567(A055999(n+4)-(n+6))`
-/

namespace A185564.P5264530604940993267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (A055999 (n + 4) - (n + 6 : ℤ)).toNat

end

end A185564.P5264530604940993267

/-!
# A185565: 

The programs for A185565, there is no canonical definition to state claims against.
-/

/-! ## A185565.P14577125234621025996

`A185567(eq[8, A131818(n+1)])`
-/

namespace A185565.P14577125234621025996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185565.P14577125234621025996

/-!
# A185567: T(n,k)=1/4 the number of nXk 0..3 arrays with no element equal both to the element above and to the element to its left.

The programs for A185567, there is no canonical definition to state claims against.
-/

/-! ## A185567.P15743813723577406562

`A003964(A222144(n+1))`
-/

namespace A185567.P15743813723577406562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A222144 (n + 1)).toNat

end

end A185567.P15743813723577406562

/-! ## A185567.P5190862028898075331

`A064553(A222281(n+1))`
-/

namespace A185567.P5190862028898075331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A222281 (n + 1)).toNat

end

end A185567.P5190862028898075331

/-! ## A185567.P3352868752569759962

`A071364(lcm(A078099(n+1), A222144(n+1)))`
-/

namespace A185567.P3352868752569759962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (Int.lcm (A078099 (n + 1)) (A222144 (n + 1)))

end

end A185567.P3352868752569759962

/-!
# A185568: Number of (n+1)X2 0..3 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185568, there is no canonical definition to state claims against.
-/

/-! ## A185568.P10265513597225677147

`A185571(∑[n]+1)`
-/

namespace A185568.P10265513597225677147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185571 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185568.P10265513597225677147

/-! ## A185568.P2997217216168875256

`A188370(∑[n]+1)`
-/

namespace A185568.P2997217216168875256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185568.P2997217216168875256

/-! ## A185568.P10180561942879868879

`lcm(2, A185571(A000124(n)))`
-/

namespace A185568.P10180561942879868879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185571 (A000124 n).toNat)

end

end A185568.P10180561942879868879

/-!
# A185569: Number of (n+1)X3 0..3 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185569, there is no canonical definition to state claims against.
-/

/-! ## A185569.P7631828425566451032

`A185571(∑[n+1]+2)`
-/

namespace A185569.P7631828425566451032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185571 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185569.P7631828425566451032

/-! ## A185569.P8906773955886597036

`record[A185571(3*n+2)]`
-/

namespace A185569.P8906773955886597036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185571 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185569.P8906773955886597036

/-!
# A185570: Number of (n+1)X4 0..3 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185570, there is no canonical definition to state claims against.
-/

/-! ## A185570.P8808910440841361934

`A185571(C(n+3, 2)+3)`
-/

namespace A185570.P8808910440841361934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185571 (Nat.choose (n + 3) 2 + 3)

end

end A185570.P8808910440841361934

/-!
# A185571: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185571, there is no canonical definition to state claims against.
-/

/-! ## A185571.P13009310399404062229

`A188370(C(n+1, (n+1)/∏{p}[n+1, #]))`
-/

namespace A185571.P13009310399404062229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A185571.P13009310399404062229

/-! ## A185571.P3583591444627919311

`A188370(∑[A354330(n)!])`
-/

namespace A185571.P3583591444627919311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A354330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185571.P3583591444627919311

/-! ## A185571.P18345514418274188824

`A188370(A062944(n+1)+1)`
-/

namespace A185571.P18345514418274188824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (A062944 (n + 1) + 1).toNat

end

end A185571.P18345514418274188824

/-!
# A185572: Number of (n+1)X2 0..3 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185572, there is no canonical definition to state claims against.
-/

/-! ## A185572.P13208197901933530073

`A185575(∑[n]+1)`
-/

namespace A185572.P13208197901933530073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185575 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185572.P13208197901933530073

/-! ## A185572.P2908077856607607889

`lcm(2, A185575(A000124(n)))`
-/

namespace A185572.P2908077856607607889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185575 (A000124 n).toNat)

end

end A185572.P2908077856607607889

/-! ## A185572.P11060123440398807205

`lcm(4, A185575(∑[A028310(n)]))`
-/

namespace A185572.P11060123440398807205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A185575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A185572.P11060123440398807205

/-! ## A185572.P3975892804560607733

`record[A010054(n)*A185575(n+1)]`
-/

namespace A185572.P3975892804560607733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185572.P3975892804560607733

/-!
# A185573: Number of (n+1)X3 0..3 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185573, there is no canonical definition to state claims against.
-/

/-! ## A185573.P13816319511514637278

`A185575(∑[n+1]+2)`
-/

namespace A185573.P13816319511514637278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185575 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185573.P13816319511514637278

/-! ## A185573.P12185369622027513807

`record[A010054(n)*A185575(n+2)]`
-/

namespace A185573.P12185369622027513807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185573.P12185369622027513807

/-! ## A185573.P7400560756006814870

`record[A185575(n+3)/A027467(n)]`
-/

namespace A185573.P7400560756006814870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185575 (n + 3) : ℚ) / (A027467 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185573.P7400560756006814870

/-!
# A185574: Number of (n+1)X4 0..3 arrays with no 2X2 subblock sum equal to any horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185574, there is no canonical definition to state claims against.
-/

/-! ## A185574.P13882982600139690818

`A185575(∑[n+2]+4)`
-/

namespace A185574.P13882982600139690818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185575 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185574.P13882982600139690818

/-!
# A185586: EKG sequence (A064413) written clockwise as a square spiral and read counterclockwise.

The programs for A185586, there is no canonical definition to state claims against.
-/

/-! ## A185586.P17080486631159679698

`A064413(A185413(n+1))`
-/

namespace A185586.P17080486631159679698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (A185413 (n + 1)).toNat

end

end A185586.P17080486631159679698

/-! ## A185586.P11288869411489237420

`A185413(Δ[n²]-n)+A065519(A185413(n+1))`
-/

namespace A185586.P11288869411489237420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + A065519 (A185413 (n + 1)).toNat

end

end A185586.P11288869411489237420

/-! ## A185586.P7445987215964351036

`A068225(A090861(n+1))+A065519(A185413(n+1))`
-/

namespace A185586.P7445987215964351036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A090861 (n + 1)).toNat + A065519 (A185413 (n + 1)).toNat

end

end A185586.P7445987215964351036

/-! ## A185586.P18131433106404037470

`A090861(A068226(n+1))+A065519(A185413(n+1))`
-/

namespace A185586.P18131433106404037470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068226 (n + 1)).toNat + A065519 (A185413 (n + 1)).toNat

end

end A185586.P18131433106404037470

/-!
# A185587: Irregular triangle read by rows: row n gives a list of the lengths of the free spaces at the n-th stage in a Rule 18 cellular automaton.

The programs for A185587, the canonical program `A185587.P7291945286253065846` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185587 has offset 1).

The definition of A185587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185587.P7291945286253065846

`2*A348647(n)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185587

/-- `2*A348647(n)-1` -/
def P7291945286253065846.Spec : Prop :=
  ∀ n, P7291945286253065846.a n = A185587 (n + 1)

theorem P7291945286253065846.correct : P7291945286253065846.Spec := by
  intro n
  simp only [A185587, Nat.add_sub_cancel]

end A185587

/-! ## A185587.P16919195662457912745

`A004273(A348647(n))`
-/

namespace A185587.P16919195662457912745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A348647 n).toNat

end

end A185587.P16919195662457912745

namespace A185587

/-- `A004273(A348647(n))` -/
def P16919195662457912745.Spec : Prop :=
  ∀ n, P16919195662457912745.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P8321660622096269999

`A000265(A348647(n)+A348647(n)-1)`
-/

namespace A185587.P8321660622096269999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A348647 n + (A348647 n - 1)).toNat

end

end A185587.P8321660622096269999

namespace A185587

/-- `A000265(A348647(n)+A348647(n)-1)` -/
def P8321660622096269999.Spec : Prop :=
  ∀ n, P8321660622096269999.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P2965369146454655798

`A000265(A348647(n)-(1-A348647(n)))`
-/

namespace A185587.P2965369146454655798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A348647 n - (1 - A348647 n)).toNat

end

end A185587.P2965369146454655798

namespace A185587

/-- `A000265(A348647(n)-(1-A348647(n)))` -/
def P2965369146454655798.Spec : Prop :=
  ∀ n, P2965369146454655798.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P2465633663159258944

`A001670(A348647(n)²)-1`
-/

namespace A185587.P2465633663159258944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A348647 n ^ 2).toNat - 1

end

end A185587.P2465633663159258944

namespace A185587

/-- `A001670(A348647(n)²)-1` -/
def P2465633663159258944.Spec : Prop :=
  ∀ n, P2465633663159258944.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P13951663982773078797

`A003056(2*A348647(n)²)`
-/

namespace A185587.P13951663982773078797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A348647 n ^ 2).toNat

end

end A185587.P13951663982773078797

namespace A185587

/-- `A003056(2*A348647(n)²)` -/
def P13951663982773078797.Spec : Prop :=
  ∀ n, P13951663982773078797.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P3159583616524869475

`filter[A348647(2*n+1), A000035(#)]`
-/

namespace A185587.P3159583616524869475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A185587.P3159583616524869475

namespace A185587

/-- `filter[A348647(2*n+1), A000035(#)]` -/
def P3159583616524869475.Spec : Prop :=
  ∀ n, P3159583616524869475.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P12771161937070851961

`filter[A348647(2*n+1), A039982(#)]`
-/

namespace A185587.P12771161937070851961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A185587.P12771161937070851961

namespace A185587

/-- `filter[A348647(2*n+1), A039982(#)]` -/
def P12771161937070851961.Spec : Prop :=
  ∀ n, P12771161937070851961.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P15725197877837395991

`filter[A348647(2*n+1), A093719(#)]`
-/

namespace A185587.P15725197877837395991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A185587.P15725197877837395991

namespace A185587

/-- `filter[A348647(2*n+1), A093719(#)]` -/
def P15725197877837395991.Spec : Prop :=
  ∀ n, P15725197877837395991.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P4885319360566005605

`filter[A348647(2*n+1), A254651(#)]`
-/

namespace A185587.P4885319360566005605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A185587.P4885319360566005605

namespace A185587

/-- `filter[A348647(2*n+1), A254651(#)]` -/
def P4885319360566005605.Spec : Prop :=
  ∀ n, P4885319360566005605.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P9026954585586234860

`filter[A348647(2*n+1), A260390(#)]`
-/

namespace A185587.P9026954585586234860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A185587.P9026954585586234860

namespace A185587

/-- `filter[A348647(2*n+1), A260390(#)]` -/
def P9026954585586234860.Spec : Prop :=
  ∀ n, P9026954585586234860.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P16517197933195357301

`filter[A348647(2*n+1), A267579(#)]`
-/

namespace A185587.P16517197933195357301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A185587.P16517197933195357301

namespace A185587

/-- `filter[A348647(2*n+1), A267579(#)]` -/
def P16517197933195357301.Spec : Prop :=
  ∀ n, P16517197933195357301.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P8467832425889652769

`filter[A348647(2*n+1), A361023(#)]`
-/

namespace A185587.P8467832425889652769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A185587.P8467832425889652769

namespace A185587

/-- `filter[A348647(2*n+1), A361023(#)]` -/
def P8467832425889652769.Spec : Prop :=
  ∀ n, P8467832425889652769.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P3941285238313183190

`A003056(2*A348647(n)*A348647(n))`
-/

namespace A185587.P3941285238313183190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * (A348647 n * A348647 n)).toNat

end

end A185587.P3941285238313183190

namespace A185587

/-- `A003056(2*A348647(n)*A348647(n))` -/
def P3941285238313183190.Spec : Prop :=
  ∀ n, P3941285238313183190.a n = A185587 (n + 1)

end A185587

/-! ## A185587.P8058476404426666573

`A008683(A142057(n+1))+2*A348647(n)`
-/

namespace A185587.P8058476404426666573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142057 (n + 1)).toNat + 2 * A348647 n

end

end A185587.P8058476404426666573

namespace A185587

/-- `A008683(A142057(n+1))+2*A348647(n)` -/
def P8058476404426666573.Spec : Prop :=
  ∀ n, P8058476404426666573.a n = A185587 (n + 1)

end A185587

/-!
# A185589: Iterate the map in A006369 starting at 144.

The programs for A185589, there is no canonical definition to state claims against.
-/

/-! ## A185589.P1315697004869754888

`A168221(A223083(n+1))`
-/

namespace A185589.P1315697004869754888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168221 (A223083 (n + 1)).toNat

end

end A185589.P1315697004869754888

/-! ## A185589.P15953884606242851984

`A006368(A006368(A006368(A223083(n+2))))`
-/

namespace A185589.P15953884606242851984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A006368 (A006368 (A223083 (n + 2)).toNat).toNat).toNat

end

end A185589.P15953884606242851984

/-!
# A185590: Iterate the map in A006369 starting at 44.

The programs for A185590, the canonical program `A185590.P1060238962198747214` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185590 has offset 1).

The definition of A185590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185590.P1060238962198747214

`A006369(a(n-1))` with `a(0)=44`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185590

/-- `A006369(a(n-1))` -/
def P1060238962198747214.Spec : Prop :=
  ∀ n, P1060238962198747214.a n = A185590 (n + 1)

theorem P1060238962198747214.correct : P1060238962198747214.Spec := by
  intro n
  simp only [A185590, Nat.add_sub_cancel]

end A185590

/-!
# A185591: Primes in continued fraction expansion of Pi (A001203).

The programs for A185591, there is no canonical definition to state claims against.
-/

/-! ## A185591.P7922047509187114569

`p?[A001203(n)]`
-/

namespace A185591.P7922047509187114569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185591.P7922047509187114569

/-! ## A185591.P9295927995614991952

`A001203(eq[1, A001222(A001203(n))])`
-/

namespace A185591.P9295927995614991952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P9295927995614991952

/-! ## A185591.P13935814091742618703

`A001203(eq[1, A010051(A001203(n))])`
-/

namespace A185591.P13935814091742618703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P13935814091742618703

/-! ## A185591.P7233204962609826247

`A001203(eq[1, A100995(A001203(n))])`
-/

namespace A185591.P7233204962609826247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P7233204962609826247

/-! ## A185591.P2938787612184372322

`A001203(eq[2, A000005(A001203(n))])`
-/

namespace A185591.P2938787612184372322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P2938787612184372322

/-! ## A185591.P3057905617084784659

`filter[A001203(n), A010051(#)]`
-/

namespace A185591.P3057905617084784659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A185591.P3057905617084784659

/-! ## A185591.P11820762180839956177

`A001203(eq[1, A024994(A001203(n))])`
-/

namespace A185591.P11820762180839956177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P11820762180839956177

/-! ## A185591.P15406688179147585456

`A001203(eq[1, A051953(A001203(n))])`
-/

namespace A185591.P15406688179147585456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P15406688179147585456

/-! ## A185591.P17538697174898261876

`A001203(eq[3, A048691(A001203(n))])`
-/

namespace A185591.P17538697174898261876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P17538697174898261876

/-! ## A185591.P12254708224957090062

`A001203(eq[3, A334954(A001203(n))])`
-/

namespace A185591.P12254708224957090062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185591.P12254708224957090062

/-!
# A185592: a(n) = floor(n^(3/2))*floor(1 + n^(3/2))*floor(2 + n^(3/2))/6.

The programs for A185592, the canonical program `A185592.P16727490227029575817` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185592 has offset 1).

The definition of A185592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185592.P16727490227029575817

`C(floor((n+1)*sqrt(n+1))+2, 3)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185592

/-- `C(floor((n+1)*sqrt(n+1))+2, 3)` -/
def P16727490227029575817.Spec : Prop :=
  ∀ n, (P16727490227029575817.a n : ℤ) = A185592 (n + 1)

theorem P16727490227029575817.correct : P16727490227029575817.Spec := by
  intro n
  simp only [A185592, Nat.add_sub_cancel]

end A185592

/-! ## A185592.P1771427650817476882

`A000292(floor(sqrt((n+1)^3)))`
-/

namespace A185592.P1771427650817476882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Nat.sqrt ((n + 1) ^ 3))

end

end A185592.P1771427650817476882

namespace A185592

/-- `A000292(floor(sqrt((n+1)^3)))` -/
def P1771427650817476882.Spec : Prop :=
  ∀ n, P1771427650817476882.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P3287205883709722869

`char[A028242(n)]*A000292(A000093(n+1))`
-/

namespace A185592.P3287205883709722869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000292 (A000093 (n + 1)).toNat

end

end A185592.P3287205883709722869

namespace A185592

/-- `char[A028242(n)]*A000292(A000093(n+1))` -/
def P3287205883709722869.Spec : Prop :=
  ∀ n, P3287205883709722869.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P16345639722909694894

`A000292(A000093(n+1))+A000007(n+1)`
-/

namespace A185592.P16345639722909694894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000093 (n + 1)).toNat + A000007 (n + 1)

end

end A185592.P16345639722909694894

namespace A185592

/-- `A000292(A000093(n+1))+A000007(n+1)` -/
def P16345639722909694894.Spec : Prop :=
  ∀ n, P16345639722909694894.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P1943025410491324226

`A000292(A000093(n+1))%A127229(n+5)`
-/

namespace A185592.P1943025410491324226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A000093 (n + 1)).toNat) (A127229 (n + 5))

end

end A185592.P1943025410491324226

namespace A185592

/-- `A000292(A000093(n+1))%A127229(n+5)` -/
def P1943025410491324226.Spec : Prop :=
  ∀ n, P1943025410491324226.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P3333226136682363710

`A297115(lcm(4, n+1))+A000292(A000093(n+1))`
-/

namespace A185592.P3333226136682363710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (Nat.lcm 4 (n + 1)) + A000292 (A000093 (n + 1)).toNat

end

end A185592.P3333226136682363710

namespace A185592

/-- `A297115(lcm(4, n+1))+A000292(A000093(n+1))` -/
def P3333226136682363710.Spec : Prop :=
  ∀ n, P3333226136682363710.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P12735183760955001641

`A213191(A057944(n))+A000292(A000093(n+1))`
-/

namespace A185592.P12735183760955001641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A057944 n).toNat + A000292 (A000093 (n + 1)).toNat

end

end A185592.P12735183760955001641

namespace A185592

/-- `A213191(A057944(n))+A000292(A000093(n+1))` -/
def P12735183760955001641.Spec : Prop :=
  ∀ n, P12735183760955001641.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P12495008424679146867

`A023929(A270533(n))+A000292(A000093(n+1))`
-/

namespace A185592.P12495008424679146867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023929 (A270533 n).toNat + A000292 (A000093 (n + 1)).toNat

end

end A185592.P12495008424679146867

namespace A185592

/-- `A023929(A270533(n))+A000292(A000093(n+1))` -/
def P12495008424679146867.Spec : Prop :=
  ∀ n, P12495008424679146867.a n = A185592 (n + 1)

end A185592

/-! ## A185592.P3763732942618265239

`A237420(A058989(n+1))+A000292(A000093(n+1))`
-/

namespace A185592.P3763732942618265239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A058989 (n + 1)).toNat + A000292 (A000093 (n + 1)).toNat

end

end A185592.P3763732942618265239

namespace A185592

/-- `A237420(A058989(n+1))+A000292(A000093(n+1))` -/
def P3763732942618265239.Spec : Prop :=
  ∀ n, P3763732942618265239.a n = A185592 (n + 1)

end A185592

/-!
# A185593: a(n) = floor(n^(3/2))*floor(3+n^(3/2))/2.

The programs for A185593, the canonical program `A185593.P777315029682498235` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185593 has offset 1).

The definition of A185593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185593.P777315029682498235

`A000217(A077121(n+1))-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185593

/-- `A000217(A077121(n+1))-1` -/
def P777315029682498235.Spec : Prop :=
  ∀ n, P777315029682498235.a n = A185593 (n + 1)

theorem P777315029682498235.correct : P777315029682498235.Spec := by
  intro n
  simp only [A185593, Nat.add_sub_cancel]

end A185593

/-! ## A185593.P13924056408424265577

`A000217(A000093(n+1)+1)-1`
-/

namespace A185593.P13924056408424265577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000093 (n + 1) + 1).toNat - 1

end

end A185593.P13924056408424265577

namespace A185593

/-- `A000217(A000093(n+1)+1)-1` -/
def P13924056408424265577.Spec : Prop :=
  ∀ n, P13924056408424265577.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P2129404817958926240

`A000217(A186146(n+1)-n)-1`
-/

namespace A185593.P2129404817958926240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A186146 (n + 1) - (n : ℤ)).toNat - 1

end

end A185593.P2129404817958926240

namespace A185593

/-- `A000217(A186146(n+1)-n)-1` -/
def P2129404817958926240.Spec : Prop :=
  ∀ n, P2129404817958926240.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P8024225084477283322

`A000096(floor((n+1)*sqrt(n+1)))`
-/

namespace A185593.P8024225084477283322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 ⌊(n + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋.toNat

end

end A185593.P8024225084477283322

namespace A185593

/-- `A000096(floor((n+1)*sqrt(n+1)))` -/
def P8024225084477283322.Spec : Prop :=
  ∀ n, P8024225084477283322.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P12346362862045209114

`A034856(floor((n+1)*sqrt(n+1)))+1`
-/

namespace A185593.P12346362862045209114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 ⌊(n + 1 : ℝ) * Real.sqrt (n + 1 : ℝ)⌋.toNat + 1

end

end A185593.P12346362862045209114

namespace A185593

/-- `A034856(floor((n+1)*sqrt(n+1)))+1` -/
def P12346362862045209114.Spec : Prop :=
  ∀ n, P12346362862045209114.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P9313002613495832889

`A212342(A077121(n+1))`
-/

namespace A185593.P9313002613495832889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 (A077121 (n + 1)).toNat

end

end A185593.P9313002613495832889

namespace A185593

/-- `A212342(A077121(n+1))` -/
def P9313002613495832889.Spec : Prop :=
  ∀ n, P9313002613495832889.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P14129903416843551101

`A140091(A000093(n+1))/3`
-/

namespace A185593.P14129903416843551101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140091 (A000093 (n + 1)).toNat : ℚ) / 3

end

end A185593.P14129903416843551101

namespace A185593

/-- `A140091(A000093(n+1))/3` -/
def P14129903416843551101.Spec : Prop :=
  ∀ n, P14129903416843551101.a n = (A185593 (n + 1) : ℚ)

end A185593

/-! ## A185593.P8493519999474085022

`record[A000096(A000093(abs(1-n)))]`
-/

namespace A185593.P8493519999474085022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A000093 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185593.P8493519999474085022

namespace A185593

/-- `record[A000096(A000093(abs(1-n)))]` -/
def P8493519999474085022.Spec : Prop :=
  ∀ n, P8493519999474085022.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P6920622792918668629

`A000096(∑[A035936(n)])*A057427(n+1)`
-/

namespace A185593.P6920622792918668629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A057427 (n + 1)

end

end A185593.P6920622792918668629

namespace A185593

/-- `A000096(∑[A035936(n)])*A057427(n+1)` -/
def P6920622792918668629.Spec : Prop :=
  ∀ n, P6920622792918668629.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P2966837130026886755

`A000096(∑[A035936(n)])+A000035(2*n)`
-/

namespace A185593.P2966837130026886755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000035 (2 * n)

end

end A185593.P2966837130026886755

namespace A185593

/-- `A000096(∑[A035936(n)])+A000035(2*n)` -/
def P2966837130026886755.Spec : Prop :=
  ∀ n, P2966837130026886755.a n = A185593 (n + 1)

end A185593

/-! ## A185593.P1009281134310913469

`A000096(A000093(n+1))%A190471(n+1)`
-/

namespace A185593.P1009281134310913469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (A000093 (n + 1)).toNat) (A190471 (n + 1))

end

end A185593.P1009281134310913469

namespace A185593

/-- `A000096(A000093(n+1))%A190471(n+1)` -/
def P1009281134310913469.Spec : Prop :=
  ∀ n, P1009281134310913469.a n = A185593 (n + 1)

end A185593

/-!
# A185594: a(n) = floor((n^2+n)^(3/2)-n^3).

The programs for A185594, the canonical program `A185594.P14557115003407917742` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185594 has offset 1).

The definition of A185594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185594.P14557115003407917742

`∑[A016789(n)]-A008621(A065033(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185594

/-- `∑[A016789(n)]-A008621(A065033(n))` -/
def P14557115003407917742.Spec : Prop :=
  ∀ n, P14557115003407917742.a n = A185594 (n + 1)

theorem P14557115003407917742.correct : P14557115003407917742.Spec := by
  intro n
  simp only [A185594, Nat.add_sub_cancel]

end A185594

/-! ## A185594.P16110007853590512036

`∑[3*(n+1)]-A168183(n+2)`
-/

namespace A185594.P16110007853590512036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A168183 (n + 2)

end

end A185594.P16110007853590512036

namespace A185594

/-- `∑[3*(n+1)]-A168183(n+2)` -/
def P16110007853590512036.Spec : Prop :=
  ∀ n, P16110007853590512036.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P5427941364035237908

`Δ[(n+1)*A000217(n)-A008726(n)]`
-/

namespace A185594.P5427941364035237908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000217 n - A008726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185594.P5427941364035237908

namespace A185594

/-- `Δ[(n+1)*A000217(n)-A008726(n)]` -/
def P5427941364035237908.Spec : Prop :=
  ∀ n, P5427941364035237908.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P9903054406491654933

`A046092(n+1)-(A168183(n+2)+∑[n+1])`
-/

namespace A185594.P9903054406491654933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) - (A168183 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A185594.P9903054406491654933

namespace A185594

/-- `A046092(n+1)-(A168183(n+2)+∑[n+1])` -/
def P9903054406491654933.Spec : Prop :=
  ∀ n, P9903054406491654933.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P7569308984872601194

`A106232(n+2)-(A168183(n+2)+∑[n+1])`
-/

namespace A185594.P7569308984872601194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (n + 2) - (A168183 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A185594.P7569308984872601194

namespace A185594

/-- `A106232(n+2)-(A168183(n+2)+∑[n+1])` -/
def P7569308984872601194.Spec : Prop :=
  ∀ n, P7569308984872601194.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P7830502049295067011

`∑[n+1]+(n+1)²-A008621(A004526(n+1))`
-/

namespace A185594.P7830502049295067011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (((n + 1) ^ 2 : ℤ) - A008621 (A004526 (n + 1)).toNat)

end

end A185594.P7830502049295067011

namespace A185594

/-- `∑[n+1]+(n+1)²-A008621(A004526(n+1))` -/
def P7830502049295067011.Spec : Prop :=
  ∀ n, P7830502049295067011.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P17579365287345816691

`A005449(n+1)-A110656(n+2)`
-/

namespace A185594.P17579365287345816691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1) - A110656 (n + 2)

end

end A185594.P17579365287345816691

namespace A185594

/-- `A005449(n+1)-A110656(n+2)` -/
def P17579365287345816691.Spec : Prop :=
  ∀ n, P17579365287345816691.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P5882555124781070593

`A352718(∑[2*(n+1)])`
-/

namespace A185594.P5882555124781070593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185594.P5882555124781070593

namespace A185594

/-- `A352718(∑[2*(n+1)])` -/
def P5882555124781070593.Spec : Prop :=
  ∀ n, P5882555124781070593.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P16086166567446278584

`A074704(∑[2*(n+1)])+(n+1)²`
-/

namespace A185594.P16086166567446278584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074704 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n + 1) ^ 2 : ℤ)

end

end A185594.P16086166567446278584

namespace A185594

/-- `A074704(∑[2*(n+1)])+(n+1)²` -/
def P16086166567446278584.Spec : Prop :=
  ∀ n, P16086166567446278584.a n = A185594 (n + 1)

end A185594

/-! ## A185594.P12451075621916311690

`A000093(A002378(n+1))-A000578(n+1)`
-/

namespace A185594.P12451075621916311690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A002378 (n + 1)).toNat - A000578 (n + 1)

end

end A185594.P12451075621916311690

namespace A185594

/-- `A000093(A002378(n+1))-A000578(n+1)` -/
def P12451075621916311690.Spec : Prop :=
  ∀ n, P12451075621916311690.a n = A185594 (n + 1)

end A185594

/-!
# A185595: a(n) = floor(n^(3/2)) - floor(n^(1/2)); complement of A185596.

The programs for A185595, the canonical program `A185595.P11431897920881257696` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185595 has offset 1).

The definition of A185595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185595.P11431897920881257696

`floor(sqrt((n+1)^3-1))-floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185595

/-- `floor(sqrt((n+1)^3-1))-floor(sqrt(n))` -/
def P11431897920881257696.Spec : Prop :=
  ∀ n, P11431897920881257696.a n = A185595 (n + 1)

theorem P11431897920881257696.correct : P11431897920881257696.Spec := by
  intro n
  simp only [A185595, Nat.add_sub_cancel]

end A185595

/-! ## A185595.P14172183496270484080

`∑[A144968(n)-char[n²]]`
-/

namespace A185595.P14172183496270484080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185595.P14172183496270484080

namespace A185595

/-- `∑[A144968(n)-char[n²]]` -/
def P14172183496270484080.Spec : Prop :=
  ∀ n, P14172183496270484080.a n = A185595 (n + 1)

end A185595

/-! ## A185595.P13402673693786501358

`floor(A185549(n+1)-root(n+1, 2))`
-/

namespace A185595.P13402673693786501358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185549 (n + 1) : ℝ) - (n + 1 : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A185595.P13402673693786501358

namespace A185595

/-- `floor(A185549(n+1)-root(n+1, 2))` -/
def P13402673693786501358.Spec : Prop :=
  ∀ n, P13402673693786501358.a n = A185595 (n + 1)

end A185595

/-! ## A185595.P712231820131114634

`∑[A035936(n)-Δ[A000196(n)]]`
-/

namespace A185595.P712231820131114634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185595.P712231820131114634

namespace A185595

/-- `∑[A035936(n)-Δ[A000196(n)]]` -/
def P712231820131114634.Spec : Prop :=
  ∀ n, P712231820131114634.a n = A185595 (n + 1)

end A185595

/-! ## A185595.P10473264818231638173

`∑[A185549(n+1)-A077121(n)]`
-/

namespace A185595.P10473264818231638173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (n + 1) - A077121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185595.P10473264818231638173

namespace A185595

/-- `∑[A185549(n+1)-A077121(n)]` -/
def P10473264818231638173.Spec : Prop :=
  ∀ n, P10473264818231638173.a n = A185595 (n + 1)

end A185595

/-! ## A185595.P16282781531362471689

`∑[A035936(n)-and(1, A000005(n+1))]`
-/

namespace A185595.P16282781531362471689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n - Int.land 1 (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185595.P16282781531362471689

namespace A185595

/-- `∑[A035936(n)-and(1, A000005(n+1))]` -/
def P16282781531362471689.Spec : Prop :=
  ∀ n, P16282781531362471689.a n = A185595 (n + 1)

end A185595

/-! ## A185595.P8242808362024144435

`floor(sqrt(A000578(n+1))-A000196(n+1))`
-/

namespace A185595.P8242808362024144435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000578 (n + 1) : ℝ) - (A000196 (n + 1) : ℝ)⌋

end

end A185595.P8242808362024144435

namespace A185595

/-- `floor(sqrt(A000578(n+1))-A000196(n+1))` -/
def P8242808362024144435.Spec : Prop :=
  ∀ n, P8242808362024144435.a n = A185595 (n + 1)

end A185595

/-! ## A185595.P3638104366390775831

`A064524(A000093(n+1))`
-/

namespace A185595.P3638104366390775831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (A000093 (n + 1)).toNat

end

end A185595.P3638104366390775831

namespace A185595

/-- `A064524(A000093(n+1))` -/
def P3638104366390775831.Spec : Prop :=
  ∀ n, P3638104366390775831.a n = A185595 (n + 1)

end A185595

/-!
# A185596: Complement of A185595.

The programs for A185596, the canonical program `A185596.P7124268468945804622` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185596 has offset 1).

The definition of A185596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185596.P7124268468945804622

`comp[floor(n^(3/2))-floor(sqrt(n))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185596

/-- `comp[floor(n^(3/2))-floor(sqrt(n))]` -/
def P7124268468945804622.Spec : Prop :=
  ∀ n, (P7124268468945804622.a n : ℤ) = A185596 (n + 1)

theorem P7124268468945804622.correct : P7124268468945804622.Spec := by
  intro n
  simp only [A185596, Nat.add_sub_cancel]

end A185596

/-! ## A185596.P18140763984236151315

`comp[A185595(n+1)-1]+1`
-/

namespace A185596.P18140763984236151315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A185596.P18140763984236151315

namespace A185596

/-- `comp[A185595(n+1)-1]+1` -/
def P18140763984236151315.Spec : Prop :=
  ∀ n, (P18140763984236151315.a n : ℤ) = A185596 (n + 1)

end A185596

/-! ## A185596.P6276496403592063282

`comp[A185595(n+1)]%A006222(n)`
-/

namespace A185596.P6276496403592063282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A006222 n)

end

end A185596.P6276496403592063282

namespace A185596

/-- `comp[A185595(n+1)]%A006222(n)` -/
def P6276496403592063282.Spec : Prop :=
  ∀ n, P6276496403592063282.a n = A185596 (n + 1)

end A185596

/-! ## A185596.P6680006984394994996

`comp[A185595(n+1)]+A008683(4*(n+1))`
-/

namespace A185596.P6680006984394994996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A008683 (4 * (n + 1))

end

end A185596.P6680006984394994996

namespace A185596

/-- `comp[A185595(n+1)]+A008683(4*(n+1))` -/
def P6680006984394994996.Spec : Prop :=
  ∀ n, P6680006984394994996.a n = A185596 (n + 1)

end A185596

/-! ## A185596.P359414723271344651

`A028310(comp[A185595(n+1)])`
-/

namespace A185596.P359414723271344651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A185596.P359414723271344651

namespace A185596

/-- `A028310(comp[A185595(n+1)])` -/
def P359414723271344651.Spec : Prop :=
  ∀ n, P359414723271344651.a n = A185596 (n + 1)

end A185596

/-! ## A185596.P15561378957729667703

`A064524(eq[0, A100204(n)])`
-/

namespace A185596.P15561378957729667703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185596.P15561378957729667703

namespace A185596

/-- `A064524(eq[0, A100204(n)])` -/
def P15561378957729667703.Spec : Prop :=
  ∀ n, P15561378957729667703.a n = A185596 (n + 1)

end A185596

/-! ## A185596.P5574101937958183774

`A019554(comp[A185595(n+1)]²)`
-/

namespace A185596.P5574101937958183774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A185596.P5574101937958183774

namespace A185596

/-- `A019554(comp[A185595(n+1)]²)` -/
def P5574101937958183774.Spec : Prop :=
  ∀ n, P5574101937958183774.a n = A185596 (n + 1)

end A185596

/-! ## A185596.P7329708210608461863

`record[A100204(n)+n-A048766(n)]`
-/

namespace A185596.P7329708210608461863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100204 n + ((n : ℤ) - A048766 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185596.P7329708210608461863

namespace A185596

/-- `record[A100204(n)+n-A048766(n)]` -/
def P7329708210608461863.Spec : Prop :=
  ∀ n, P7329708210608461863.a n = A185596 (n + 1)

end A185596

/-!
# A185597: a(n) = floor(n^(3/2) - n^(1/2)); complement of A185598.

The programs for A185597, the canonical program `A185597.P3479585361684791551` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185597 has offset 1).

The definition of A185597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185597.P6895353075097675476

`floor(n*sqrt(n+1))`
-/

namespace A185597.P6895353075097675476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n + 1 : ℝ)⌋

end

end A185597.P6895353075097675476

namespace A185597

/-- `floor(n*sqrt(n+1))` -/
def P6895353075097675476.Spec : Prop :=
  ∀ n, P6895353075097675476.a n = A185597 (n + 1)

end A185597

/-! ## A185597.P5558539624845160321

`ceil(n*(sqrt(n+1)-acot(n)))`
-/

namespace A185597.P5558539624845160321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ))⌉

end

end A185597.P5558539624845160321

namespace A185597

/-- `ceil(n*(sqrt(n+1)-acot(n)))` -/
def P5558539624845160321.Spec : Prop :=
  ∀ n, P5558539624845160321.a n = A185597 (n + 1)

end A185597

/-! ## A185597.P14593163832830315623

`ceil(sqrt(A098547(n)))-1`
-/

namespace A185597.P14593163832830315623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A098547 n : ℝ)⌉ - 1

end

end A185597.P14593163832830315623

namespace A185597

/-- `ceil(sqrt(A098547(n)))-1` -/
def P14593163832830315623.Spec : Prop :=
  ∀ n, P14593163832830315623.a n = A185597 (n + 1)

end A185597

/-! ## A185597.P13328019363128561622

`ceil(sqrt(A000578(n)+n²+1))-1`
-/

namespace A185597.P13328019363128561622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000578 n + (n ^ 2 : ℤ) + 1 : ℝ)⌉ - 1

end

end A185597.P13328019363128561622

namespace A185597

/-- `ceil(sqrt(A000578(n)+n²+1))-1` -/
def P13328019363128561622.Spec : Prop :=
  ∀ n, P13328019363128561622.a n = A185597 (n + 1)

end A185597

/-! ## A185597.P3479585361684791551

`floor(sqrt(A011379(n)))%(∑[n+3]+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A185597

/-- `floor(sqrt(A011379(n)))%(∑[n+3]+1)` -/
def P3479585361684791551.Spec : Prop :=
  ∀ n, P3479585361684791551.a n = A185597 (n + 1)

theorem P3479585361684791551.correct : P3479585361684791551.Spec := by
  intro n
  simp only [A185597, Nat.add_sub_cancel]

end A185597

/-! ## A185597.P2471283106142824659

`A023443(ceil(sqrt(A098547(n))))`
-/

namespace A185597.P2471283106142824659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (A098547 n : ℝ)⌉.toNat

end

end A185597.P2471283106142824659

namespace A185597

/-- `A023443(ceil(sqrt(A098547(n))))` -/
def P2471283106142824659.Spec : Prop :=
  ∀ n, P2471283106142824659.a n = A185597 (n + 1)

end A185597

/-! ## A185597.P4490954888762798040

`A264978(A264978(floor(n*root(n+1, 2))))`
-/

namespace A185597.P4490954888762798040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264978 ⌊(n : ℝ) * (n + 1 : ℝ) ^ (1 / (2 : ℝ))⌋.toNat).toNat

end

end A185597.P4490954888762798040

namespace A185597

/-- `A264978(A264978(floor(n*root(n+1, 2))))` -/
def P4490954888762798040.Spec : Prop :=
  ∀ n, P4490954888762798040.a n = A185597 (n + 1)

end A185597

/-!
# A185598: Numbers not of the form floor(n^(3/2)-n^(1/2)); complement of A185597.

The programs for A185598, the canonical program `A185598.P8975110970087312665` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185598 has offset 1).

The definition of A185598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185598.P8975110970087312665

`comp[floor(n*sqrt(n+1))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185598

/-- `comp[floor(n*sqrt(n+1))]` -/
def P8975110970087312665.Spec : Prop :=
  ∀ n, (P8975110970087312665.a n : ℤ) = A185598 (n + 1)

theorem P8975110970087312665.correct : P8975110970087312665.Spec := by
  intro n
  simp only [A185598, Nat.add_sub_cancel]

end A185598

/-! ## A185598.P7887492908501887184

`comp[A185597(n+1)]%A054036(n+1)`
-/

namespace A185598.P7887492908501887184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A054036 (n + 1))

end

end A185598.P7887492908501887184

namespace A185598

/-- `comp[A185597(n+1)]%A054036(n+1)` -/
def P7887492908501887184.Spec : Prop :=
  ∀ n, P7887492908501887184.a n = A185598 (n + 1)

end A185598

/-! ## A185598.P12227892077003761459

`abs(A001478(comp[A185597(n+1)]))`
-/

namespace A185598.P12227892077003761459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A185598.P12227892077003761459

namespace A185598

/-- `abs(A001478(comp[A185597(n+1)]))` -/
def P12227892077003761459.Spec : Prop :=
  ∀ n, P12227892077003761459.a n = A185598 (n + 1)

end A185598

/-! ## A185598.P14402525123614942970

`eq[0, char[floor(n*sqrt(n+1))]]`
-/

namespace A185598.P14402525123614942970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (n + 1 : ℝ)⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185598.P14402525123614942970

namespace A185598

/-- `eq[0, char[floor(n*sqrt(n+1))]]` -/
def P14402525123614942970.Spec : Prop :=
  ∀ n, (P14402525123614942970.a n : ℤ) = A185598 (n + 1)

end A185598

/-! ## A185598.P4950299309526494400

`A000027(eq[0, char[A185597(n+1)]])`
-/

namespace A185598.P4950299309526494400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185597 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A185598.P4950299309526494400

namespace A185598

/-- `A000027(eq[0, char[A185597(n+1)]])` -/
def P4950299309526494400.Spec : Prop :=
  ∀ n, P4950299309526494400.a n = A185598 (n + 1)

end A185598

/-! ## A185598.P8488251795159336614

`eq[0, char[A185597(n+1)]]%A017643(n)`
-/

namespace A185598.P8488251795159336614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185597 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) (A017643 n)

end

end A185598.P8488251795159336614

namespace A185598

/-- `eq[0, char[A185597(n+1)]]%A017643(n)` -/
def P8488251795159336614.Spec : Prop :=
  ∀ n, P8488251795159336614.a n = A185598 (n + 1)

end A185598

/-! ## A185598.P12622517641669030674

`A143431(n)²*eq[0, char[A185597(n+1)]]`
-/

namespace A185598.P12622517641669030674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185597 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n ^ 2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A185598.P12622517641669030674

namespace A185598

/-- `A143431(n)²*eq[0, char[A185597(n+1)]]` -/
def P12622517641669030674.Spec : Prop :=
  ∀ n, P12622517641669030674.a n = A185598 (n + 1)

end A185598

/-!
# A185599: a(n) = floor(n^(3/2) - n^(1/2)) - n; complement of A185600.

The programs for A185599, the canonical program `A185599.P672707003783785156` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185599 has offset 3).

The definition of A185599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185599.P672707003783785156

`record[floor((n-1)*sqrt(n)-n)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A185599

/-- `record[floor((n-1)*sqrt(n)-n)]` -/
def P672707003783785156.Spec : Prop :=
  ∀ n, P672707003783785156.a n = A185599 (n + 3)

theorem P672707003783785156.correct : P672707003783785156.Spec := by
  intro n
  simp only [A185599, Nat.add_sub_cancel]

end A185599

/-! ## A185599.P16595746049631603049

`floor((n+2)*(sqrt(n+3)-1))-1`
-/

namespace A185599.P16595746049631603049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * (Real.sqrt (n + 3 : ℝ) - 1)⌋ - 1

end

end A185599.P16595746049631603049

namespace A185599

/-- `floor((n+2)*(sqrt(n+3)-1))-1` -/
def P16595746049631603049.Spec : Prop :=
  ∀ n, P16595746049631603049.a n = A185599 (n + 3)

end A185599

/-! ## A185599.P15162447341873788987

`lt[1, Δ[A185598(n+1)]]`
-/

namespace A185599.P15162447341873788987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A185599.P15162447341873788987

namespace A185599

/-- `lt[1, Δ[A185598(n+1)]]` -/
def P15162447341873788987.Spec : Prop :=
  ∀ n, (P15162447341873788987.a n : ℤ) = A185599 (n + 3)

end A185599

/-! ## A185599.P13067917643036019705

`eq[1, char[A185597(n+1)-(n+1)]]`
-/

namespace A185599.P13067917643036019705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185597 (n + 1) - (n + 1 : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185599.P13067917643036019705

namespace A185599

/-- `eq[1, char[A185597(n+1)-(n+1)]]` -/
def P13067917643036019705.Spec : Prop :=
  ∀ n, (P13067917643036019705.a n : ℤ) = A185599 (n + 3)

end A185599

/-! ## A185599.P5578004424205878338

`eq[2, A185598(n+2)-A185598(n+1)]`
-/

namespace A185599.P5578004424205878338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185598 (n + 2) - A185598 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185599.P5578004424205878338

namespace A185599

/-- `eq[2, A185598(n+2)-A185598(n+1)]` -/
def P5578004424205878338.Spec : Prop :=
  ∀ n, (P5578004424205878338.a n : ℤ) = A185599 (n + 3)

end A185599

