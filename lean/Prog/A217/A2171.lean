import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C013
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
import Seq.Opaque.C025

/-!
# A217110: Number of pandigital numbers with n places.

The programs for A217110, there is no canonical definition to state claims against.
-/

/-! ## A217110.P1532920381759550294

`9*A228912(n)`
-/

namespace A217110.P1532920381759550294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A228912 n

end

end A217110.P1532920381759550294

/-! ## A217110.P3582720587699162532

`Δ[A217111(A028310(n))]`
-/

namespace A217110.P3582720587699162532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217110.P3582720587699162532

/-! ## A217110.P4796866180777263418

`A337127(A008592(n+1))`
-/

namespace A217110.P4796866180777263418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A008592 (n + 1)).toNat

end

end A217110.P4796866180777263418

/-! ## A217110.P12734062445060941918

`A337127(A030696(n+1))`
-/

namespace A217110.P12734062445060941918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A030696 (n + 1)).toNat

end

end A217110.P12734062445060941918

/-! ## A217110.P6754281325609465323

`Δ[A217111(A233583(n+1))]`
-/

namespace A217110.P6754281325609465323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217110.P6754281325609465323

/-! ## A217110.P3357733963183119862

`Δ[A217111(A065033(2*n))]`
-/

namespace A217110.P3357733963183119862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217110.P3357733963183119862

/-! ## A217110.P6084083156313508419

`Δ[A217111(A000007(n)+n)]`
-/

namespace A217110.P6084083156313508419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217110.P6084083156313508419

/-! ## A217110.P9697630359955390298

`A337127(A017293(n+1)-2)`
-/

namespace A217110.P9697630359955390298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337127 (A017293 (n + 1) - 2).toNat

end

end A217110.P9697630359955390298

/-! ## A217110.P10066913561068323468

`A217111(n+1)-A217111(A028310(n))`
-/

namespace A217110.P10066913561068323468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (n + 1) - A217111 (A028310 n).toNat

end

end A217110.P10066913561068323468

/-! ## A217110.P9059765533209440309

`A217111(n+1)-A217111(A233583(n+1))`
-/

namespace A217110.P9059765533209440309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (n + 1) - A217111 (A233583 (n + 1)).toNat

end

end A217110.P9059765533209440309

/-! ## A217110.P5955943759679595126

`A217111(n+1)-A217111(A065033(2*n))`
-/

namespace A217110.P5955943759679595126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (n + 1) - A217111 (A065033 (2 * n)).toNat

end

end A217110.P5955943759679595126

/-! ## A217110.P1980908939253309979

`A217111(n+1)-A217111(A000007(n)+n)`
-/

namespace A217110.P1980908939253309979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217111 (n + 1) - A217111 (A000007 n + (n : ℤ)).toNat

end

end A217110.P1980908939253309979

/-!
# A217111: Number of pandigital numbers <= 10^n.

The programs for A217111, there is no canonical definition to state claims against.
-/

/-! ## A217111.P8321897167624945099

`∑[A217110(n+1)]`
-/

namespace A217111.P8321897167624945099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217111.P8321897167624945099

/-! ## A217111.P10963239212009097146

`∑[9*A228912(n)]`
-/

namespace A217111.P10963239212009097146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A228912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217111.P10963239212009097146

/-! ## A217111.P8085022161590270266

`A217110(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A217111.P8085022161590270266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A217110 (n + 1) + a (A023443 n).toNat

end

end A217111.P8085022161590270266

/-! ## A217111.P4636376572415597357

`∑{d}[A000079(n), A217110(A000005(#))]`
-/

namespace A217111.P4636376572415597357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A217110 (A000005 d).toNat

end

end A217111.P4636376572415597357

/-! ## A217111.P12088507265157746354

`∑{d}[A011782(n+1), A217110(A000005(#))]`
-/

namespace A217111.P12088507265157746354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A217110 (A000005 d).toNat

end

end A217111.P12088507265157746354

/-!
# A217112: Greatest number (in decimal representation) with n nonprime substrings in binary representation (substrings with leading zeros are considered to be nonprime).

The programs for A217112, there is no canonical definition to state claims against.
-/

/-! ## A217112.P2676431034777378312

`A059894(eq[n, A375124(2*n+1)])`
-/

namespace A217112.P2676431034777378312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375124 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217112.P2676431034777378312

/-!
# A217121: Irregular triangle read by rows in which row n lists the positive values k such that there are k-1 primes in the open interval (n-k,n+k).

The programs for A217121, there is no canonical definition to state claims against.
-/

/-! ## A217121.P2473223667518824194

`A030548(A303432(n+1)+A274130(n+1))`
-/

namespace A217121.P2473223667518824194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030548 (A303432 (n + 1) + A274130 (n + 1)).toNat

end

end A217121.P2473223667518824194

/-!
# A217122: a(n) = (number of 1's in binary expansion of n)th positive number not among the previous terms.

The programs for A217122, there is no canonical definition to state claims against.
-/

/-! ## A217122.P8151593861002677001

`A303764(n)+A036987(A071333(n+1))`
-/

namespace A217122.P8151593861002677001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 n + A036987 (A071333 (n + 1)).toNat

end

end A217122.P8151593861002677001

/-! ## A217122.P11794358140370266107

`A092391(n+1)-A160467(A187829(n+1))`
-/

namespace A217122.P11794358140370266107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (n + 1) - A160467 (A187829 (n + 1)).toNat

end

end A217122.P11794358140370266107

/-! ## A217122.P5663562452240845941

`A303764(n)+A000161(A156366(A045948(n+1)))`
-/

namespace A217122.P5663562452240845941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 n + A000161 (A156366 (A045948 (n + 1)).toNat).toNat

end

end A217122.P5663562452240845941

/-! ## A217122.P1549499449215624030

`A092391(A187829(n+1))-A048679(A204988(n+1))`
-/

namespace A217122.P1549499449215624030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A187829 (n + 1)).toNat - A048679 (A204988 (n + 1)).toNat

end

end A217122.P1549499449215624030

/-! ## A217122.P14059696342268692283

`A303764(n)+A036987(A052403(n+1))`
-/

namespace A217122.P14059696342268692283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303764 n + A036987 (A052403 (n + 1)).toNat

end

end A217122.P14059696342268692283

/-!
# A217123: Number of possible ordered pairs (x, y) where x is the number of beads adjacent to at least one black bead and y the number of beads adjacent to at least one white bead in a binary necklace of length n.

The programs for A217123, the canonical program `A217123.P3253835657534135360` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217123 has offset 1).

The definition of A217123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217123.P3253835657534135360

`or(a(n-2)-and(1, n), and(n, a(n-2)))+n` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217123

/-- `or(a(n-2)-and(1, n), and(n, a(n-2)))+n` -/
def P3253835657534135360.Spec : Prop :=
  ∀ n, P3253835657534135360.a n = A217123 (n + 1)

theorem P3253835657534135360.correct : P3253835657534135360.Spec := by
  intro n
  simp only [A217123, Nat.add_sub_cancel]

end A217123

/-! ## A217123.P10424562257833179653

`A008811(A004280(n+1)-n)+n+1`
-/

namespace A217123.P10424562257833179653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 (A004280 (n + 1) - (n : ℤ)).toNat + (n + 1 : ℤ)

end

end A217123.P10424562257833179653

namespace A217123

/-- `A008811(A004280(n+1)-n)+n+1` -/
def P10424562257833179653.Spec : Prop :=
  ∀ n, P10424562257833179653.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P4292254309801469958

`A000007(A029578(n))+∑[A092533(n+2)]`
-/

namespace A217123.P4292254309801469958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029578 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217123.P4292254309801469958

namespace A217123

/-- `A000007(A029578(n))+∑[A092533(n+2)]` -/
def P4292254309801469958.Spec : Prop :=
  ∀ n, P4292254309801469958.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P1073953252099856397

`record[A008811(n)+2-A199969(n+1)]`
-/

namespace A217123.P1073953252099856397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n + (2 - A199969 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217123.P1073953252099856397

namespace A217123

/-- `record[A008811(n)+2-A199969(n+1)]` -/
def P1073953252099856397.Spec : Prop :=
  ∀ n, P1073953252099856397.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P2998230508283599923

`record[A008819(A165754(n))+2]`
-/

namespace A217123.P2998230508283599923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008819 (A165754 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217123.P2998230508283599923

namespace A217123

/-- `record[A008819(A165754(n))+2]` -/
def P2998230508283599923.Spec : Prop :=
  ∀ n, P2998230508283599923.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P7078318670019207327

`2*A259549(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A217123.P7078318670019207327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * A259549 (a (n - 1)).toNat

end

end A217123.P7078318670019207327

namespace A217123

/-- `2*A259549(a(n-1))` -/
def P7078318670019207327.Spec : Prop :=
  ∀ n, P7078318670019207327.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P7221918914781103465

`2*A329547(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A217123.P7221918914781103465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * A329547 (a (n - 1)).toNat

end

end A217123.P7221918914781103465

namespace A217123

/-- `2*A329547(a(n-1))` -/
def P7221918914781103465.Spec : Prop :=
  ∀ n, P7221918914781103465.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P12847398184990075652

`2*A004525(a(n-2)+n)` with `a(0)=2, a(1)=3`
-/

namespace A217123.P12847398184990075652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * A004525 (a (n - 2) + (n : ℤ)).toNat

end

end A217123.P12847398184990075652

namespace A217123

/-- `2*A004525(a(n-2)+n)` -/
def P12847398184990075652.Spec : Prop :=
  ∀ n, P12847398184990075652.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P3164762587633243717

`record[A029578(A159797(n))+2]`
-/

namespace A217123.P3164762587633243717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A159797 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217123.P3164762587633243717

namespace A217123

/-- `record[A029578(A159797(n))+2]` -/
def P3164762587633243717.Spec : Prop :=
  ∀ n, P3164762587633243717.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P12463840721257372689

`A141044(n)+A063196(∑[A065033(n)])`
-/

namespace A217123.P12463840721257372689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A063196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217123.P12463840721257372689

namespace A217123

/-- `A141044(n)+A063196(∑[A065033(n)])` -/
def P12463840721257372689.Spec : Prop :=
  ∀ n, P12463840721257372689.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P4174502030492736458

`A372048(A080827(n+1))`
-/

namespace A217123.P4174502030492736458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372048 (A080827 (n + 1)).toNat

end

end A217123.P4174502030492736458

namespace A217123

/-- `A372048(A080827(n+1))` -/
def P4174502030492736458.Spec : Prop :=
  ∀ n, P4174502030492736458.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P14345114884849832223

`A372048(A099392(n+2))`
-/

namespace A217123.P14345114884849832223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372048 (A099392 (n + 2)).toNat

end

end A217123.P14345114884849832223

namespace A217123

/-- `A372048(A099392(n+2))` -/
def P14345114884849832223.Spec : Prop :=
  ∀ n, P14345114884849832223.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P8173238893981980735

`A354779(A333574(n+2))`
-/

namespace A217123.P8173238893981980735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354779 (A333574 (n + 2)).toNat

end

end A217123.P8173238893981980735

namespace A217123

/-- `A354779(A333574(n+2))` -/
def P8173238893981980735.Spec : Prop :=
  ∀ n, P8173238893981980735.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P2277630034464666605

`A083219(A087327(n+2)-n)`
-/

namespace A217123.P2277630034464666605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A087327 (n + 2) - (n : ℤ)).toNat

end

end A217123.P2277630034464666605

namespace A217123

/-- `A083219(A087327(n+2)-n)` -/
def P2277630034464666605.Spec : Prop :=
  ∀ n, P2277630034464666605.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P18339761069075859661

`record[A052938(A053438(A008733(n)))]`
-/

namespace A217123.P18339761069075859661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A053438 (A008733 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217123.P18339761069075859661

namespace A217123

/-- `record[A052938(A053438(A008733(n)))]` -/
def P18339761069075859661.Spec : Prop :=
  ∀ n, P18339761069075859661.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P1006695292771418948

`record[A052938(A053438(A008797(n)))]`
-/

namespace A217123.P1006695292771418948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A053438 (A008797 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217123.P1006695292771418948

namespace A217123

/-- `record[A052938(A053438(A008797(n)))]` -/
def P1006695292771418948.Spec : Prop :=
  ∀ n, P1006695292771418948.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P6790791255233066755

`A004524(A007401(A061925(n)))+2`
-/

namespace A217123.P6790791255233066755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A007401 (A061925 n).toNat).toNat + 2

end

end A217123.P6790791255233066755

namespace A217123

/-- `A004524(A007401(A061925(n)))+2` -/
def P6790791255233066755.Spec : Prop :=
  ∀ n, P6790791255233066755.a n = A217123 (n + 1)

end A217123

/-! ## A217123.P4430378356908488313

`A004524(A167499(n)-A270059(n))`
-/

namespace A217123.P4430378356908488313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A167499 n - A270059 n).toNat

end

end A217123.P4430378356908488313

namespace A217123

/-- `A004524(A167499(n)-A270059(n))` -/
def P4430378356908488313.Spec : Prop :=
  ∀ n, P4430378356908488313.a n = A217123 (n + 1)

end A217123

/-!
# A217124: Semiprimes whose decimal representation has only digits in {4,5,7}.

The programs for A217124, there is no canonical definition to state claims against.
-/

/-! ## A217124.P1422054448008632000

`∩[A001358(n+1), A214584(n+1)]`
-/

namespace A217124.P1422054448008632000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217124.P1422054448008632000

/-! ## A217124.P8703988807275785608

`filter[A214584(n+1), A064911(#)]`
-/

namespace A217124.P8703988807275785608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A217124.P8703988807275785608

/-! ## A217124.P1688753610648722350

`∩[A112381(n+1), A214584(n+1)]`
-/

namespace A217124.P1688753610648722350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217124.P1688753610648722350

/-! ## A217124.P6089565958404859957

`∩[A077136(n+1), A214584(n+1)]`
-/

namespace A217124.P6089565958404859957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217124.P6089565958404859957

/-! ## A217124.P6663377755657967151

`∩[A085155(n+1), A214584(n+1)]`
-/

namespace A217124.P6663377755657967151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217124.P6663377755657967151

/-!
# A217125: Numbers n such that n = k/d(k) has exactly 4 solutions, where d(k) = number of divisors of k.

The programs for A217125, there is no canonical definition to state claims against.
-/

/-! ## A217125.P8021442668470673255

`A051346(A005940(n+1)%A074254(n+1))`
-/

namespace A217125.P8021442668470673255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051346 (Int.tmod (A005940 (n + 1)) (A074254 (n + 1))).toNat

end

end A217125.P8021442668470673255

/-! ## A217125.P12504487360828277476

`A051346(A175585(n+1)%A039669(n+1))`
-/

namespace A217125.P12504487360828277476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051346 (Int.tmod (A175585 (n + 1)) (A039669 (n + 1))).toNat

end

end A217125.P12504487360828277476

/-!
# A217128: Numbers n such that (2n)^4 + 1 is not prime.

The programs for A217128, the canonical program `A217128.P10561566557455975693` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217128 has offset 1).

The definition of A217128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217128.P10561566557455975693

`lt[1, A193929(2*n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217128

/-- `lt[1, A193929(2*n)]` -/
def P10561566557455975693.Spec : Prop :=
  ∀ n, (P10561566557455975693.a n : ℤ) = A217128 (n + 1)

theorem P10561566557455975693.correct : P10561566557455975693.Spec := by
  intro n
  simp only [A217128, Nat.add_sub_cancel]

end A217128

/-! ## A217128.P17209613133554543674

`lt[2, A193562(2*n)]`
-/

namespace A217128.P17209613133554543674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217128.P17209613133554543674

namespace A217128

/-- `lt[2, A193562(2*n)]` -/
def P17209613133554543674.Spec : Prop :=
  ∀ n, (P17209613133554543674.a n : ℤ) = A217128 (n + 1)

end A217128

/-! ## A217128.P10299936522207561748

`comp[A123108(A000068(n+1))]`
-/

namespace A217128.P10299936522207561748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000068 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A217128.P10299936522207561748

namespace A217128

/-- `comp[A123108(A000068(n+1))]` -/
def P10299936522207561748.Spec : Prop :=
  ∀ n, (P10299936522207561748.a n : ℤ) = A217128 (n + 1)

end A217128

/-! ## A217128.P10833313631189733897

`lt[1, A193562(A004277(n))-1]`
-/

namespace A217128.P10833313631189733897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (A004277 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217128.P10833313631189733897

namespace A217128

/-- `lt[1, A193562(A004277(n))-1]` -/
def P10833313631189733897.Spec : Prop :=
  ∀ n, (P10833313631189733897.a n : ℤ) = A217128 (n + 1)

end A217128

/-! ## A217128.P9005951728626843102

`eq[A000007(n), A046094(A193562(2*n))]`
-/

namespace A217128.P9005951728626843102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A193562 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217128.P9005951728626843102

namespace A217128

/-- `eq[A000007(n), A046094(A193562(2*n))]` -/
def P9005951728626843102.Spec : Prop :=
  ∀ n, (P9005951728626843102.a n : ℤ) = A217128 (n + 1)

end A217128

/-! ## A217128.P14712081318347461050

`eq[A154955(A193562(2*n)), A154955(n+2)]`
-/

namespace A217128.P14712081318347461050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A193562 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217128.P14712081318347461050

namespace A217128

/-- `eq[A154955(A193562(2*n)), A154955(n+2)]` -/
def P14712081318347461050.Spec : Prop :=
  ∀ n, (P14712081318347461050.a n : ℤ) = A217128 (n + 1)

end A217128

/-! ## A217128.P11955606087662721947

`eq[A049084(2*(n+1)), A049084(A193562(2*n))]`
-/

namespace A217128.P11955606087662721947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A193562 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217128.P11955606087662721947

namespace A217128

/-- `eq[A049084(2*(n+1)), A049084(A193562(2*n))]` -/
def P11955606087662721947.Spec : Prop :=
  ∀ n, (P11955606087662721947.a n : ℤ) = A217128 (n + 1)

end A217128

/-! ## A217128.P11189126649747150600

`eq[A046094(2*(n+1)), A046094(A193562(2*n))]`
-/

namespace A217128.P11189126649747150600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A193562 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217128.P11189126649747150600

namespace A217128

/-- `eq[A046094(2*(n+1)), A046094(A193562(2*n))]` -/
def P11189126649747150600.Spec : Prop :=
  ∀ n, (P11189126649747150600.a n : ℤ) = A217128 (n + 1)

end A217128

/-!
# A217129: Numbers n such that n^4 + 1 is not prime.

The programs for A217129, the canonical program `A217129.P6626584089061769423` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217129 has offset 1).

The definition of A217129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217129.P6626584089061769423

`lt[1, A193929(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217129

/-- `lt[1, A193929(n)]` -/
def P6626584089061769423.Spec : Prop :=
  ∀ n, (P6626584089061769423.a n : ℤ) = A217129 (n + 1)

theorem P6626584089061769423.correct : P6626584089061769423.Spec := by
  intro n
  simp only [A217129, Nat.add_sub_cancel]

end A217129

/-! ## A217129.P11784051476798867346

`lt[2, A193562(n)]`
-/

namespace A217129.P11784051476798867346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A217129.P11784051476798867346

namespace A217129

/-- `lt[2, A193562(n)]` -/
def P11784051476798867346.Spec : Prop :=
  ∀ n, (P11784051476798867346.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P589169324930975741

`lt[1, A270927(n+1)]+1`
-/

namespace A217129.P589169324930975741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A217129.P589169324930975741

namespace A217129

/-- `lt[1, A270927(n+1)]+1` -/
def P589169324930975741.Spec : Prop :=
  ∀ n, (P589169324930975741.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P10367024550229939972

`comp[A000068(n+1)-1]+1`
-/

namespace A217129.P10367024550229939972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A217129.P10367024550229939972

namespace A217129

/-- `comp[A000068(n+1)-1]+1` -/
def P10367024550229939972.Spec : Prop :=
  ∀ n, (P10367024550229939972.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P5621559450996872263

`eq[1, A193929(a(A193929(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A217129.P5621559450996872263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A193929 (f2 (A193929 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217129.P5621559450996872263

namespace A217129

/-- `eq[1, A193929(a(A193929(n)))]` -/
def P5621559450996872263.Spec : Prop :=
  ∀ n, (P5621559450996872263.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P177231219599765162

`eq[1, A020513(or(1, A270927(n+1)))]+1`
-/

namespace A217129.P177231219599765162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (Int.lor 1 (A270927 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A217129.P177231219599765162

namespace A217129

/-- `eq[1, A020513(or(1, A270927(n+1)))]+1` -/
def P177231219599765162.Spec : Prop :=
  ∀ n, (P177231219599765162.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P885478472943572393

`eq[A000007(n), A046094(A193562(n))]`
-/

namespace A217129.P885478472943572393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217129.P885478472943572393

namespace A217129

/-- `eq[A000007(n), A046094(A193562(n))]` -/
def P885478472943572393.Spec : Prop :=
  ∀ n, (P885478472943572393.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P1656370030789874124

`eq[A154955(n+2), A154955(A193562(n))]`
-/

namespace A217129.P1656370030789874124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217129.P1656370030789874124

namespace A217129

/-- `eq[A154955(n+2), A154955(A193562(n))]` -/
def P1656370030789874124.Spec : Prop :=
  ∀ n, (P1656370030789874124.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P361981496828186467

`eq[A049084(2*(n+1)), A049084(A193562(n))]`
-/

namespace A217129.P361981496828186467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217129.P361981496828186467

namespace A217129

/-- `eq[A049084(2*(n+1)), A049084(A193562(n))]` -/
def P361981496828186467.Spec : Prop :=
  ∀ n, (P361981496828186467.a n : ℤ) = A217129 (n + 1)

end A217129

/-! ## A217129.P8537013691364753659

`eq[A046094(2*(n+1)), A046094(A193562(n))]`
-/

namespace A217129.P8537013691364753659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (A193562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217129.P8537013691364753659

namespace A217129

/-- `eq[A046094(2*(n+1)), A046094(A193562(n))]` -/
def P8537013691364753659.Spec : Prop :=
  ∀ n, (P8537013691364753659.a n : ℤ) = A217129 (n + 1)

end A217129

/-!
# A217130: Numbers n such that 7^n + 6 is prime.

The programs for A217130, there is no canonical definition to state claims against.
-/

/-! ## A217130.P4927362589681104651

`A020756(A396164(n+1))`
-/

namespace A217130.P4927362589681104651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (A396164 (n + 1)).toNat

end

end A217130.P4927362589681104651

/-! ## A217130.P6500246614760400116

`A118480(∏[∑[A205100(n+1)]])`
-/

namespace A217130.P6500246614760400116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118480 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217130.P6500246614760400116

/-!
# A217131: Numbers n such that 7^n - 8 is prime.

The programs for A217131, there is no canonical definition to state claims against.
-/

/-! ## A217131.P1673892841540175111

`A396006(A273726(n+2))`
-/

namespace A217131.P1673892841540175111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396006 (A273726 (n + 2)).toNat

end

end A217131.P1673892841540175111

/-! ## A217131.P8659877891597651136

`2*A143182(A218817(n))`
-/

namespace A217131.P8659877891597651136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143182 (A218817 n).toNat

end

end A217131.P8659877891597651136

/-!
# A217132: Numbers n such that 7^n + 10 is prime.

The programs for A217132, there is no canonical definition to state claims against.
-/

/-! ## A217132.P13930574687633505052

`eq[A000045(A014673(n+1)), A049099(n+1)]`
-/

namespace A217132.P13930574687633505052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014673 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217132.P13930574687633505052

/-! ## A217132.P8092079207989801752

`lt[A147955(n)%A005185(n+1), 2]`
-/

namespace A217132.P8092079207989801752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147955 n) (A005185 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A217132.P8092079207989801752

/-! ## A217132.P919343663757562777

`eq[A145271(A053277(n)), A145271(n)]`
-/

namespace A217132.P919343663757562777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145271 (A053277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217132.P919343663757562777

/-! ## A217132.P6486494655459172239

`eq[A067552(A203647(n+1)), A070635(n+1)]`
-/

namespace A217132.P6486494655459172239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 (A203647 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217132.P6486494655459172239

/-! ## A217132.P4999726132637892321

`eq[A077769(n+4), A205129(A077769(n+4))]`
-/

namespace A217132.P4999726132637892321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077769 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205129 (A077769 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217132.P4999726132637892321

/-!
# A217134: Numbers n such that 5^n - 8 is prime.

The programs for A217134, there is no canonical definition to state claims against.
-/

/-! ## A217134.P14257619367414070225

`A147819(A123232(n+1))`
-/

namespace A217134.P14257619367414070225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147819 (A123232 (n + 1)).toNat

end

end A217134.P14257619367414070225

/-! ## A217134.P16636508896262892761

`A111619(∑[A108951(n+1)]+1)`
-/

namespace A217134.P16636508896262892761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111619 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A217134.P16636508896262892761

/-!
# A217136: Numbers k such that 3^k + 8 is prime.

The programs for A217136, there is no canonical definition to state claims against.
-/

/-! ## A217136.P12949117028299213291

`∑[A371103(A318391(n+1))]`
-/

namespace A217136.P12949117028299213291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371103 (A318391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217136.P12949117028299213291

/-! ## A217136.P6498288299355093276

`record[A273021(∑[A302635(n+1)])]`
-/

namespace A217136.P6498288299355093276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302635 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217136.P6498288299355093276

/-! ## A217136.P8709374916232025095

`eq[A001222(A172359(n)), A048141(n+1)]`
-/

namespace A217136.P8709374916232025095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A172359 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217136.P8709374916232025095

/-! ## A217136.P14487064872328678547

`eq[A048141(n+1), A324180(A007318(n))]`
-/

namespace A217136.P14487064872328678547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324180 (A007318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217136.P14487064872328678547

/-!
# A217137: Numbers k such that 3^k + 10 is prime.

The programs for A217137, there is no canonical definition to state claims against.
-/

/-! ## A217137.P1242730811683684636

`eq[1, A255542(n)]`
-/

namespace A217137.P1242730811683684636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217137.P1242730811683684636

/-! ## A217137.P12198270988902551159

`eq[A052371(n), A169803(n)]`
-/

namespace A217137.P12198270988902551159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217137.P12198270988902551159

/-!
# A217138: G.f. A(x) satisfies A(x) = 1 + x*A(x)^2*(A(x) + A(-x))/2.

The programs for A217138, there is no canonical definition to state claims against.
-/

/-! ## A217138.P18347149828765406456

`or(A001405(n), A175542(A029759(n)))`
-/

namespace A217138.P18347149828765406456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001405 n) (A175542 (A029759 n).toNat)

end

end A217138.P18347149828765406456

/-! ## A217138.P4985923384846102543

`or(A029759(n), A333527(A011782(n)))`
-/

namespace A217138.P4985923384846102543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029759 n) (A333527 (A011782 n).toNat)

end

end A217138.P4985923384846102543

/-! ## A217138.P984661712699346702

`or(A029759(n), A346702(A217539(n)))`
-/

namespace A217138.P984661712699346702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029759 n) (A346702 (A217539 n).toNat)

end

end A217138.P984661712699346702

/-!
# A217139: Numbers n such that phi(n) = phi(n+12), with Euler's totient function phi = A000010.

The programs for A217139, the canonical program `A217139.P16840314535765683681` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217139 has offset 1).

The definition of A217139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217139.P16840314535765683681

`eq[A000010(C(3, n)+n), A000010(n+12)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A217139

/-- `eq[A000010(C(3, n)+n), A000010(n+12)]` -/
def P16840314535765683681.Spec : Prop :=
  ∀ n, (P16840314535765683681.a n : ℤ) = A217139 (n + 1)

theorem P16840314535765683681.correct : P16840314535765683681.Spec := by
  intro n
  simp only [A217139, Nat.add_sub_cancel]

end A217139

/-! ## A217139.P12967276711777838807

`eq[A000010(n+12), A000010(A028310(n))]`
-/

namespace A217139.P12967276711777838807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P12967276711777838807

namespace A217139

/-- `eq[A000010(n+12), A000010(A028310(n))]` -/
def P12967276711777838807.Spec : Prop :=
  ∀ n, (P12967276711777838807.a n : ℤ) = A217139 (n + 1)

end A217139

/-! ## A217139.P9159298790233452891

`eq[A000010(A233583(n+1)), A000010(n+12)]`
-/

namespace A217139.P9159298790233452891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P9159298790233452891

namespace A217139

/-- `eq[A000010(A233583(n+1)), A000010(n+12)]` -/
def P9159298790233452891.Spec : Prop :=
  ∀ n, (P9159298790233452891.a n : ℤ) = A217139 (n + 1)

end A217139

/-! ## A217139.P8494515004228537483

`eq[A000010(n+12), A225530(n)]`
-/

namespace A217139.P8494515004228537483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P8494515004228537483

namespace A217139

/-- `eq[A000010(n+12), A225530(n)]` -/
def P8494515004228537483.Spec : Prop :=
  ∀ n, (P8494515004228537483.a n : ℤ) = A217139 (n + 1)

end A217139

/-! ## A217139.P2504246226640582493

`eq[A225530(n+12), A225530(n)]`
-/

namespace A217139.P2504246226640582493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217139.P2504246226640582493

namespace A217139

/-- `eq[A225530(n+12), A225530(n)]` -/
def P2504246226640582493.Spec : Prop :=
  ∀ n, (P2504246226640582493.a n : ℤ) = A217139 (n + 1)

end A217139

/-!
# A217140: a(n) = m/n where m is the least number divisible by n such that phi(m) = phi(m+6n).

The programs for A217140, there is no canonical definition to state claims against.
-/

/-! ## A217140.P12302876842041193490

`12*floor(A284723(12*(n+1))/2)`
-/

namespace A217140.P12302876842041193490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ⌊(A284723 (12 * (n + 1)) : ℚ) / 2⌋

end

end A217140.P12302876842041193490

/-! ## A217140.P13825173608988806211

`2*(3*A053669(A016957(n)+2)-3)`
-/

namespace A217140.P13825173608988806211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A053669 (A016957 n + 2).toNat - 3)

end

end A217140.P13825173608988806211

/-! ## A217140.P13492198429871760750

`12*A217619(n+1)`
-/

namespace A217140.P13492198429871760750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A217619 (n + 1)

end

end A217140.P13492198429871760750

/-! ## A217140.P15048638879320710824

`12*A007978(A181510(n+1)-A354203(n+1))`
-/

namespace A217140.P15048638879320710824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A007978 (A181510 (n + 1) - A354203 (n + 1)).toNat

end

end A217140.P15048638879320710824

/-! ## A217140.P13083492049085139480

`12*A010693(A091773(n+1))`
-/

namespace A217140.P13083492049085139480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A010693 (A091773 (n + 1)).toNat

end

end A217140.P13083492049085139480

/-!
# A217141: Numbers n such that phi(n) = phi(n+12) and n is not divisible by 2.

The programs for A217141, there is no canonical definition to state claims against.
-/

/-! ## A217141.P10461352833072687090

`∩[2*n+1, A217139(n+1)]`
-/

namespace A217141.P10461352833072687090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217141.P10461352833072687090

/-! ## A217141.P501961880826495267

`filter[A217139(n+1), A353638(#)]`
-/

namespace A217141.P501961880826495267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A217141.P501961880826495267

/-! ## A217141.P8072865365729211996

`filter[A217139(n+1), A374134(#)]`
-/

namespace A217141.P8072865365729211996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A217141.P8072865365729211996

/-! ## A217141.P9153424587473751563

`filter[A217139(n+1), A374474(#)]`
-/

namespace A217141.P9153424587473751563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A217141.P9153424587473751563

/-! ## A217141.P5811720192762352128

`filter[A217139(n+1), A324908(#)]`
-/

namespace A217141.P5811720192762352128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A217141.P5811720192762352128

/-!
# A217143: Sum of squares of Bell numbers (A000110).

The programs for A217143, there is no canonical definition to state claims against.
-/

/-! ## A217143.P17407261772806520240

`∑[A001247(n)]`
-/

namespace A217143.P17407261772806520240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P17407261772806520240

/-! ## A217143.P10729231576756913921

`∑[A000110(n)²]`
-/

namespace A217143.P10729231576756913921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P10729231576756913921

/-! ## A217143.P9980800709118233263

`∑[A292935(n)²]`
-/

namespace A217143.P9980800709118233263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P9980800709118233263

/-! ## A217143.P10884479572014689664

`∑[A124419(2*n)]`
-/

namespace A217143.P10884479572014689664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P10884479572014689664

/-! ## A217143.P13940411306888793849

`∑[A011971(∑[n])²]`
-/

namespace A217143.P13940411306888793849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P13940411306888793849

/-! ## A217143.P14478985925288137948

`∑[A033306(∑[n])²]`
-/

namespace A217143.P14478985925288137948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P14478985925288137948

/-! ## A217143.P14500297467769299353

`∑[A049020(∑[n])²]`
-/

namespace A217143.P14500297467769299353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P14500297467769299353

/-! ## A217143.P15048374227384389993

`∑[A055883(∑[n])²]`
-/

namespace A217143.P15048374227384389993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055883 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P15048374227384389993

/-! ## A217143.P1691669912948516463

`∑[A059098(∑[n])²]`
-/

namespace A217143.P1691669912948516463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059098 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P1691669912948516463

/-! ## A217143.P15485131115875472193

`∑[A095149(∑[n])²]`
-/

namespace A217143.P15485131115875472193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217143.P15485131115875472193

/-!
# A217144: Alternating sums of squares of Bell numbers (A000110).

The programs for A217144, there is no canonical definition to state claims against.
-/

/-! ## A217144.P9796110843911966493

`A001247(n)-a(n-1)` with `a(0)=1`
-/

namespace A217144.P9796110843911966493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001247 n - a (n - 1)

end

end A217144.P9796110843911966493

/-! ## A217144.P6025510849757642017

`A000110(n)²-a(n-1)` with `a(0)=1`
-/

namespace A217144.P6025510849757642017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 n ^ 2 - a (n - 1)

end

end A217144.P6025510849757642017

/-! ## A217144.P5878363324329536450

`A292935(n)²-a(n-1)` with `a(0)=1`
-/

namespace A217144.P5878363324329536450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292935 n ^ 2 - a (n - 1)

end

end A217144.P5878363324329536450

/-! ## A217144.P4749260547071207431

`A124419(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A217144.P4749260547071207431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124419 (2 * n) - a (n - 1)

end

end A217144.P4749260547071207431

/-! ## A217144.P4213785523008364946

`A011971(∑[n])²-a(n-1)` with `a(0)=1`
-/

namespace A217144.P4213785523008364946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - a (n - 1)

end

end A217144.P4213785523008364946

/-!
# A217147: Prime numbers after which at least four distinct classes modulo 7 are equally represented among the primes to that point.

The programs for A217147, there is no canonical definition to state claims against.
-/

/-! ## A217147.P12307565494809654117

`record[A084126(A050446(n))]`
-/

namespace A217147.P12307565494809654117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (A050446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217147.P12307565494809654117

/-! ## A217147.P954607071536546131

`A124180(A084831(n+1))`
-/

namespace A217147.P954607071536546131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124180 (A084831 (n + 1)).toNat

end

end A217147.P954607071536546131

/-! ## A217147.P3133097228483299877

`A283225(A010351(n+1))`
-/

namespace A217147.P3133097228483299877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283225 (A010351 (n + 1)).toNat

end

end A217147.P3133097228483299877

/-! ## A217147.P17636816545369861523

`A197300(A303368(n+1))`
-/

namespace A217147.P17636816545369861523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (A303368 (n + 1)).toNat

end

end A217147.P17636816545369861523

/-!
# A217149: Largest possible side length for a perfect squared square of order n; or 0 if no such square exists.

The programs for A217149, there is no canonical definition to state claims against.
-/

/-! ## A217149.P6061897805981584225

`and(Δ[A151933(4*(n+1))], A007444(6*n+1))`
-/

namespace A217149.P6061897805981584225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A007444 (6 * n + 1))

end

end A217149.P6061897805981584225

/-! ## A217149.P5838990031540491414

`lcm(A080965(A002729(n)), A326682(n))`
-/

namespace A217149.P5838990031540491414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080965 (A002729 n).toNat) (A326682 n)

end

end A217149.P5838990031540491414

/-!
# A217152: Number of nontrivially compound perfect squared rectangles of order n up to symmetries of the rectangle and its subrectangles.

The programs for A217152, there is no canonical definition to state claims against.
-/

/-! ## A217152.P9360242553310370739

`A110148(n+1)-(A217374(n+1)+A002839(n+1))`
-/

namespace A217152.P9360242553310370739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110148 (n + 1) - (A217374 (n + 1) + A002839 (n + 1))

end

end A217152.P9360242553310370739

/-! ## A217152.P16000915843663818396

`A110148(n+1)-(A219766(n+1)+A217374(n+1))`
-/

namespace A217152.P16000915843663818396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110148 (n + 1) - (A219766 (n + 1) + A217374 (n + 1))

end

end A217152.P16000915843663818396

/-! ## A217152.P1102226006305165670

`A034487(round(sqrt(2*(n+1)))²+2*(n+1)-n)`
-/

namespace A217152.P1102226006305165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034487 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ) - (n : ℤ)).toNat

end

end A217152.P1102226006305165670

/-! ## A217152.P16664101483428150085

`A375576(A036426(n))`
-/

namespace A217152.P16664101483428150085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375576 (A036426 n).toNat

end

end A217152.P16664101483428150085

/-! ## A217152.P11131193993321134945

`A010414(A088117(n)!)`
-/

namespace A217152.P11131193993321134945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010414 (Nat.factorial (A088117 n).toNat)

end

end A217152.P11131193993321134945

/-!
# A217153: Number of nontrivially compound perfect squared rectangles of order n up to symmetries of the rectangle.

The programs for A217153, there is no canonical definition to state claims against.
-/

/-! ## A217153.P1939225824002088670

`A217154(n+1)-(A217375(n+1)+A002839(n+1))`
-/

namespace A217153.P1939225824002088670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217154 (n + 1) - (A217375 (n + 1) + A002839 (n + 1))

end

end A217153.P1939225824002088670

/-! ## A217153.P15568949437288201533

`A217154(n+1)-(A219766(n+1)+A217375(n+1))`
-/

namespace A217153.P15568949437288201533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217154 (n + 1) - (A219766 (n + 1) + A217375 (n + 1))

end

end A217153.P15568949437288201533

/-! ## A217153.P13188519490540147737

`4*A131209(A036601(n))`
-/

namespace A217153.P13188519490540147737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131209 (A036601 n).toNat

end

end A217153.P13188519490540147737

/-! ## A217153.P11308867218866928741

`A281477(A167499(Δ[A023361(n)]))`
-/

namespace A217153.P11308867218866928741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281477 (A167499 (f1 (n + 1) - f1 n).toNat).toNat

end

end A217153.P11308867218866928741

/-! ## A217153.P5756290221256647347

`and(A005810(n), A210717(A002113(n+1)))`
-/

namespace A217153.P5756290221256647347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005810 n) (A210717 (A002113 (n + 1)).toNat)

end

end A217153.P5756290221256647347

/-!
# A217154: Number of perfect squared rectangles of order n up to symmetries of the rectangle.

The programs for A217154, there is no canonical definition to state claims against.
-/

/-! ## A217154.P6672461291322567342

`A002839(n+1)+A217153(n+1)+A217375(n+1)`
-/

namespace A217154.P6672461291322567342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + A217153 (n + 1) + A217375 (n + 1)

end

end A217154.P6672461291322567342

/-! ## A217154.P10278770300221728811

`A217153(n+1)+A219766(n+1)+A217375(n+1)`
-/

namespace A217154.P10278770300221728811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217153 (n + 1) + (A219766 (n + 1) + A217375 (n + 1))

end

end A217154.P10278770300221728811

/-! ## A217154.P12867612673487450439

`A257846(floor(n/4)^(n%7*ceil(n/7)))+A002839(n+1)`
-/

namespace A217154.P12867612673487450439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257846 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 4⌋ : ℚ) ^ (((n % 7 : ℕ) : ℤ) * ⌈(n : ℚ) / 7⌉ : ℤ))).toNat + A002839 (n + 1)

end

end A217154.P12867612673487450439

/-! ## A217154.P16182285146853381628

`A217375(n+1)+A118759(A002839(n+1))`
-/

namespace A217154.P16182285146853381628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217375 (n + 1) + A118759 (A002839 (n + 1)).toNat

end

end A217154.P16182285146853381628

/-! ## A217154.P3711459001167322638

`A217375(n+1)+A118759(A219766(n+1))`
-/

namespace A217154.P3711459001167322638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217375 (n + 1) + A118759 (A219766 (n + 1)).toNat

end

end A217154.P3711459001167322638

/-!
# A217155: Number of compound perfect squared squares of order n up to symmetries of the square.

The programs for A217155, there is no canonical definition to state claims against.
-/

/-! ## A217155.P13730360539032662123

`A217156(n+1)-A006983(n+1)`
-/

namespace A217155.P13730360539032662123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) - A006983 (n + 1)

end

end A217155.P13730360539032662123

/-! ## A217155.P16712763712214624867

`A217156(n+1)+A006983(n+1)*A057428(n)`
-/

namespace A217155.P16712763712214624867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) + A006983 (n + 1) * A057428 n

end

end A217155.P16712763712214624867

/-! ## A217155.P8745143849543054017

`A217156(n+1)+A006983(n+1)*A260196(n)`
-/

namespace A217155.P8745143849543054017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) + A006983 (n + 1) * A260196 n

end

end A217155.P8745143849543054017

/-! ## A217155.P1740877376985446240

`A181340(n+1)+A217156(n+1)-A181735(n+1)`
-/

namespace A217155.P1740877376985446240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181340 (n + 1) + (A217156 (n + 1) - A181735 (n + 1))

end

end A217155.P1740877376985446240

/-! ## A217155.P12735912705966387925

`A217156(A031285(n))-(A181735(n+1)-A181340(n+1))`
-/

namespace A217155.P12735912705966387925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (A031285 n).toNat - (A181735 (n + 1) - A181340 (n + 1))

end

end A217155.P12735912705966387925

/-!
# A217156: Number of perfect squared squares of order n up to symmetries of the square.

The programs for A217156, there is no canonical definition to state claims against.
-/

/-! ## A217156.P5592485651360515120

`A006983(n+1)+A217155(n+1)`
-/

namespace A217156.P5592485651360515120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1) + A217155 (n + 1)

end

end A217156.P5592485651360515120

/-! ## A217156.P7065691352241675860

`A181735(n+1)+A217155(n+1)-A181340(n+1)`
-/

namespace A217156.P7065691352241675860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + (A217155 (n + 1) - A181340 (n + 1))

end

end A217156.P7065691352241675860

/-! ## A217156.P12997921491971129324

`A217155(n+1)+A181735(n+1)+A057428(n)*A181340(n+1)`
-/

namespace A217156.P12997921491971129324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + (A181735 (n + 1) + A057428 n * A181340 (n + 1))

end

end A217156.P12997921491971129324

/-! ## A217156.P13314020762293475851

`A217155(n+1)+A181735(n+1)+A181340(n+1)*A260196(n)`
-/

namespace A217156.P13314020762293475851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + (A181735 (n + 1) + A181340 (n + 1) * A260196 n)

end

end A217156.P13314020762293475851

/-! ## A217156.P1731220747209739574

`A217155(n+1)+A006983(A031285(n))`
-/

namespace A217156.P1731220747209739574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + A006983 (A031285 n).toNat

end

end A217156.P1731220747209739574

/-!
# A217157: a(n) is the least value of k such that the decimal expansion of n^k contains two consecutive identical digits.

The programs for A217157, there is no canonical definition to state claims against.
-/

/-! ## A217157.P3929693428926435876

`A215236(n+2)+1`
-/

namespace A217157.P3929693428926435876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215236 (n + 2) + 1

end

end A217157.P3929693428926435876

/-! ## A217157.P18360348854367923574

`A005555(A215236(n+2))`
-/

namespace A217157.P18360348854367923574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A215236 (n + 2)).toNat

end

end A217157.P18360348854367923574

/-!
# A217165: a(n) is the least value of k such that the decimal expansion of Fibonacci(k) contains n consecutive identical digits.

The programs for A217165, there is no canonical definition to state claims against.
-/

/-! ## A217165.P9743339994158339062

`A003132(xor(A001907(n), A055844(n)))`
-/

namespace A217165.P9743339994158339062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (Int.xor (A001907 n) (A055844 n)).toNat

end

end A217165.P9743339994158339062

/-!
# A217166: a(n) is the least value of k such that the decimal expansion of Lucas(k) contains n consecutive identical digits.

The programs for A217166, there is no canonical definition to state claims against.
-/

/-! ## A217166.P18078281544646573750

`n*A286539(A155665(n))`
-/

namespace A217166.P18078281544646573750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A286539 (A155665 n).toNat

end

end A217166.P18078281544646573750

/-!
# A217185: a(n) is the number of digits in the decimal representation of the smallest power of 2 that contains n consecutive identical digits.

The programs for A217185, there is no canonical definition to state claims against.
-/

/-! ## A217185.P16018407996467892541

`A034887(A045875(n+1))`
-/

namespace A217185.P16018407996467892541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A045875 (n + 1)).toNat

end

end A217185.P16018407996467892541

/-! ## A217185.P9113123075494602943

`A002330(or(A212722(n), A302841(n)))`
-/

namespace A217185.P9113123075494602943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (Int.lor (A212722 n) (A302841 n)).toNat

end

end A217185.P9113123075494602943

/-!
# A217186: a(n) is the number of digits in the decimal representation of the smallest power of 3 that contains n consecutive identical digits.

The programs for A217186, there is no canonical definition to state claims against.
-/

/-! ## A217186.P8101879396106172710

`A034888(A215727(n+1))`
-/

namespace A217186.P8101879396106172710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A215727 (n + 1)).toNat

end

end A217186.P8101879396106172710

/-!
# A217189: a(n) is the number of digits in the decimal representation of the smallest power of 7 that contains n consecutive identical digits.

The programs for A217189, there is no canonical definition to state claims against.
-/

/-! ## A217189.P11723961731780451298

`∑[A375402(A101881(n)²)]`
-/

namespace A217189.P11723961731780451298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375402 (A101881 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217189.P11723961731780451298

/-!
# A217190: a(n) is the number of digits in the decimal representation of the smallest power of 11 that contains n consecutive identical digits.

The programs for A217190, there is no canonical definition to state claims against.
-/

/-! ## A217190.P3217041999406916610

`A348553(A215731(n+1))`
-/

namespace A217190.P3217041999406916610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A215731 (n + 1)).toNat

end

end A217190.P3217041999406916610

/-!
# A217191: a(n) is the number of digits in the decimal representation of the smallest Fibonacci number that contains n consecutive identical digits.

The programs for A217191, there is no canonical definition to state claims against.
-/

/-! ## A217191.P15704220757344163517

`∑[A217294(∑[A006782(n+1)])]`
-/

namespace A217191.P15704220757344163517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006782 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217294 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217191.P15704220757344163517

/-! ## A217191.P1311301214583790785

`A357185(n+1)+A338903(A051286(n))`
-/

namespace A217191.P1311301214583790785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357185 (n + 1) + A338903 (A051286 n).toNat

end

end A217191.P1311301214583790785

/-!
# A217192: a(n) is the number of digits in the decimal representation of the smallest Lucas number that contains n consecutive identical digits.

The programs for A217192, there is no canonical definition to state claims against.
-/

/-! ## A217192.P11267032028860509586

`A060384(A217166(n+1)+2)`
-/

namespace A217192.P11267032028860509586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A217166 (n + 1) + 2).toNat

end

end A217192.P11267032028860509586

/-! ## A217192.P12844596120141298795

`A393393(A000108(n))+n²`
-/

namespace A217192.P12844596120141298795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393393 (A000108 n).toNat + (n ^ 2 : ℤ)

end

end A217192.P12844596120141298795

/-!
# A217193: Number of permutations in S_{n+3} containing an increasing subsequence of length n.

The programs for A217193, there is no canonical definition to state claims against.
-/

/-! ## A217193.P8180902216065274900

`A214152(A134227(n+1)+3)`
-/

namespace A217193.P8180902216065274900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A134227 (n + 1) + 3).toNat

end

end A217193.P8180902216065274900

/-! ## A217193.P9672361504193649539

`A214152(A004277(n)+A000096(n)+3)`
-/

namespace A217193.P9672361504193649539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A004277 n + (A000096 n + 3)).toNat

end

end A217193.P9672361504193649539

/-! ## A217193.P4540965104026206080

`A214152(A034856(n+2)-A057427(n))`
-/

namespace A217193.P4540965104026206080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A034856 (n + 2) - A057427 n).toNat

end

end A217193.P4540965104026206080

/-! ## A217193.P959111464587441055

`A214152(A052905(n)+3-A057427(n))`
-/

namespace A217193.P959111464587441055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A052905 n + 3 - A057427 n).toNat

end

end A217193.P959111464587441055

/-! ## A217193.P9177753669052809051

`A214152(A055999(n)+4-A057427(n))`
-/

namespace A217193.P9177753669052809051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A055999 n + 4 - A057427 n).toNat

end

end A217193.P9177753669052809051

/-!
# A217194: Number of unlabeled simple graphs with n nodes of 2 colors whose components are path graphs.

The programs for A217194, there is no canonical definition to state claims against.
-/

/-! ## A217194.P2111915932167528305

`A064458(A002203(n+3)-∑[∑[n+2]-1])`
-/

namespace A217194.P2111915932167528305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A002203 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217194.P2111915932167528305

/-! ## A217194.P1114857701743114639

`A027931(n+4)+A004788(A071684(n+1))`
-/

namespace A217194.P1114857701743114639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027931 (n + 4) + A004788 (A071684 (n + 1)).toNat

end

end A217194.P1114857701743114639

/-! ## A217194.P8585879777984597088

`round(sqrt((n+1)*A163919(n)))+1`
-/

namespace A217194.P8585879777984597088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A163919 n : ℝ)) + 1

end

end A217194.P8585879777984597088

/-!
# A217195: Primes p such that p-2 is the greatest semiprime less than p.

The programs for A217195, the canonical program `A217195.P13705425664730589034` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217195 has offset 1).

The definition of A217195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217195.P7214557422026340270

`p?[A327092(n+1)+1]`
-/

namespace A217195.P7214557422026340270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327092 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217195.P7214557422026340270

namespace A217195

/-- `p?[A327092(n+1)+1]` -/
def P7214557422026340270.Spec : Prop :=
  ∀ n, P7214557422026340270.a n = A217195 (n + 1)

end A217195

/-! ## A217195.P16114540149328880116

`∩[A059456(n+1), A063638(n+1)]`
-/

namespace A217195.P16114540149328880116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217195.P16114540149328880116

namespace A217195

/-- `∩[A059456(n+1), A063638(n+1)]` -/
def P16114540149328880116.Spec : Prop :=
  ∀ n, (P16114540149328880116.a n : ℤ) = A217195 (n + 1)

end A217195

/-! ## A217195.P10209785944392849891

`∩[A063638(n+1), A339912(n+1)]`
-/

namespace A217195.P10209785944392849891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217195.P10209785944392849891

namespace A217195

/-- `∩[A063638(n+1), A339912(n+1)]` -/
def P10209785944392849891.Spec : Prop :=
  ∀ n, (P10209785944392849891.a n : ℤ) = A217195 (n + 1)

end A217195

/-! ## A217195.P3320289971822563527

`∩[A063638(n+1), A099184(n+2)]`
-/

namespace A217195.P3320289971822563527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099184 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217195.P3320289971822563527

namespace A217195

/-- `∩[A063638(n+1), A099184(n+2)]` -/
def P3320289971822563527.Spec : Prop :=
  ∀ n, (P3320289971822563527.a n : ℤ) = A217195 (n + 1)

end A217195

/-! ## A217195.P13705425664730589034

`p?[(A088707(n+1)+1)%A088707(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A217195

/-- `p?[(A088707(n+1)+1)%A088707(n+2)]` -/
def P13705425664730589034.Spec : Prop :=
  ∀ n, P13705425664730589034.a n = A217195 (n + 1)

theorem P13705425664730589034.correct : P13705425664730589034.Spec := by
  intro n
  simp only [A217195, Nat.add_sub_cancel]

end A217195

/-! ## A217195.P8226668873995372708

`p?[(A001358(n+1)+2)%A001358(n+2)]`
-/

namespace A217195.P8226668873995372708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1) + 2) (A001358 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217195.P8226668873995372708

namespace A217195

/-- `p?[(A001358(n+1)+2)%A001358(n+2)]` -/
def P8226668873995372708.Spec : Prop :=
  ∀ n, P8226668873995372708.a n = A217195 (n + 1)

end A217195

/-! ## A217195.P9469879773166286283

`p?[(A006881(n+1)+2)%A006881(n+2)]`
-/

namespace A217195.P9469879773166286283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006881 (n + 1) + 2) (A006881 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217195.P9469879773166286283

namespace A217195

/-- `p?[(A006881(n+1)+2)%A006881(n+2)]` -/
def P9469879773166286283.Spec : Prop :=
  ∀ n, P9469879773166286283.a n = A217195 (n + 1)

end A217195

/-! ## A217195.P4477681545226235182

`∩[A063638(n+1), A176393(n+1)]`
-/

namespace A217195.P4477681545226235182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217195.P4477681545226235182

namespace A217195

/-- `∩[A063638(n+1), A176393(n+1)]` -/
def P4477681545226235182.Spec : Prop :=
  ∀ n, (P4477681545226235182.a n : ℤ) = A217195 (n + 1)

end A217195

/-! ## A217195.P6337357763402466311

`∩[A063638(n+1), A084622(n+1)]`
-/

namespace A217195.P6337357763402466311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217195.P6337357763402466311

namespace A217195

/-- `∩[A063638(n+1), A084622(n+1)]` -/
def P6337357763402466311.Spec : Prop :=
  ∀ n, (P6337357763402466311.a n : ℤ) = A217195 (n + 1)

end A217195

/-! ## A217195.P3269023246565119519

`∩[A063638(n+1), A156657(n+1)]`
-/

namespace A217195.P3269023246565119519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217195.P3269023246565119519

namespace A217195

/-- `∩[A063638(n+1), A156657(n+1)]` -/
def P3269023246565119519.Spec : Prop :=
  ∀ n, (P3269023246565119519.a n : ℤ) = A217195 (n + 1)

end A217195

/-! ## A217195.P9409986903308635431

`p?[A004442(A327092(n+1))]`
-/

namespace A217195.P9409986903308635431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A327092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217195.P9409986903308635431

namespace A217195

/-- `p?[A004442(A327092(n+1))]` -/
def P9409986903308635431.Spec : Prop :=
  ∀ n, P9409986903308635431.a n = A217195 (n + 1)

end A217195

/-!
# A217197: Primes p such that p-3 is the greatest semiprime less than p.

The programs for A217197, the canonical program `A217197.P13902637294619196713` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217197 has offset 1).

The definition of A217197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217197.P13902637294619196713

`p?[(A088707(n+1)+2)%A088707(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A217197

/-- `p?[(A088707(n+1)+2)%A088707(n+2)]` -/
def P13902637294619196713.Spec : Prop :=
  ∀ n, P13902637294619196713.a n = A217197 (n + 1)

theorem P13902637294619196713.correct : P13902637294619196713.Spec := by
  intro n
  simp only [A217197, Nat.add_sub_cancel]

end A217197

/-! ## A217197.P4585170838502492515

`p?[eq[n-2, A102440(n+1)]+1]`
-/

namespace A217197.P4585170838502492515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A217197.P4585170838502492515

namespace A217197

/-- `p?[eq[n-2, A102440(n+1)]+1]` -/
def P4585170838502492515.Spec : Prop :=
  ∀ n, (P4585170838502492515.a n : ℤ) = A217197 (n + 1)

end A217197

/-! ## A217197.P11773862764377710338

`p?[A102440(A089531(n+1))+3]`
-/

namespace A217197.P11773862764377710338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A089531 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217197.P11773862764377710338

namespace A217197

/-- `p?[A102440(A089531(n+1))+3]` -/
def P11773862764377710338.Spec : Prop :=
  ∀ n, P11773862764377710338.a n = A217197 (n + 1)

end A217197

/-! ## A217197.P5613105030521351584

`eq[A089026(n+1)-3, A102440(n+1)]+1`
-/

namespace A217197.P5613105030521351584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217197.P5613105030521351584

namespace A217197

/-- `eq[A089026(n+1)-3, A102440(n+1)]+1` -/
def P5613105030521351584.Spec : Prop :=
  ∀ n, (P5613105030521351584.a n : ℤ) = A217197 (n + 1)

end A217197

/-! ## A217197.P12736720340467431426

`eq[A345941(n+1)-3, A102440(n+1)]+1`
-/

namespace A217197.P12736720340467431426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217197.P12736720340467431426

namespace A217197

/-- `eq[A345941(n+1)-3, A102440(n+1)]+1` -/
def P12736720340467431426.Spec : Prop :=
  ∀ n, (P12736720340467431426.a n : ℤ) = A217197 (n + 1)

end A217197

/-!
# A217198: A list of odd primes p such that 2p-1 is prime and no p is equal to any 2q-1 with q in the sequence.

The programs for A217198, there is no canonical definition to state claims against.
-/

/-! ## A217198.P2382848994919710540

`p?[A005382(n+1)*A014963(A186647(n+1))]`
-/

namespace A217198.P2382848994919710540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1) * A014963 (A186647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217198.P2382848994919710540

/-! ## A217198.P9250721640582930017

`A005382(lt[A144384(2*(n+1)), A228572(3*(n+1))])`
-/

namespace A217198.P9250721640582930017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144384 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228572 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217198.P9250721640582930017

/-! ## A217198.P13839537876352714150

`A005382(lt[A342257(2*n+5), A276955(2*n+1)])`
-/

namespace A217198.P13839537876352714150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276955 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217198.P13839537876352714150

/-! ## A217198.P7290279372807028824

`A005382(lt[A188958(n+1), A034343(n+1)])`
-/

namespace A217198.P7290279372807028824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217198.P7290279372807028824

/-! ## A217198.P8072514080870565150

`p?[A265394(n+1)%A281275(n+1)]`
-/

namespace A217198.P8072514080870565150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265394 (n + 1)) (A281275 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217198.P8072514080870565150

/-!
# A217199: Odd primes p such that 2p-1 is prime and no p is equal to 2q-1 with q in the sequence.

The programs for A217199, there is no canonical definition to state claims against.
-/

/-! ## A217199.P7433496959235834834

`p?[A003960(A016813(A060462(n+1)))]`
-/

namespace A217199.P7433496959235834834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A016813 (A060462 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217199.P7433496959235834834

/-! ## A217199.P15914143007736261168

`p?[record[A003960(A267758(n+4))]]`
-/

namespace A217199.P15914143007736261168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A267758 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217199.P15914143007736261168

/-! ## A217199.P3147823889294143522

`A005382(lt[A162190(3*(n+1)), A081101(n+1)])`
-/

namespace A217199.P3147823889294143522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162190 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A217199.P3147823889294143522

/-! ## A217199.P8646165531964646351

`A005382(A247915(n+1)^A268357(n+1))`
-/

namespace A217199.P8646165531964646351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (SequenceMachineLib.roundAway ((A247915 (n + 1) : ℚ) ^ (A268357 (n + 1) : ℤ))).toNat

end

end A217199.P8646165531964646351

