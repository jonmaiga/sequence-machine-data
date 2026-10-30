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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A217600: Sum of the squares of the first A111441(n) primes.

The programs for A217600, there is no canonical definition to state claims against.
-/

/-! ## A217600.P12635265672662946939

`A111441(n+1)*A217601(n+1)`
-/

namespace A217600.P12635265672662946939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111441 (n + 1) * A217601 (n + 1)

end

end A217600.P12635265672662946939

/-! ## A217600.P2773489118666292103

`A024450(A111441(n+1))`
-/

namespace A217600.P2773489118666292103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A111441 (n + 1)).toNat

end

end A217600.P2773489118666292103

/-!
# A217601: Integer averages of squares of first primes.

The programs for A217601, there is no canonical definition to state claims against.
-/

/-! ## A217601.P2023920021705844796

`A217600(n+1)/A111441(n+1)`
-/

namespace A217601.P2023920021705844796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217600 (n + 1) : ℚ) / (A111441 (n + 1) : ℚ)

end

end A217601.P2023920021705844796

/-! ## A217601.P11532194020232241983

`A217600(n+1)/A000720(A217599(n+1))`
-/

namespace A217601.P11532194020232241983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217600 (n + 1) : ℚ) / (A000720 (A217599 (n + 1)).toNat : ℚ)

end

end A217601.P11532194020232241983

/-!
# A217602: Let a(1) = 1. If n and a(n-1) have the same parity, a(n) = n + a(n-1), otherwise a(n) = abs(n - a(n-1)).

The programs for A217602, the canonical program `A217602.P7121393971230136230` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217602 has offset 1).

The definition of A217602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217602.P7121393971230136230

`ogf((1+4x^2+4x^3-2x^4+4x^5+2x^6+8x^7-3x^8-2x^10)/(1-x+x^2-x^3-x^8+x^9-x^10+x^11))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217602

/-- `ogf((1+4x^2+4x^3-2x^4+4x^5+2x^6+8x^7-3x^8-2x^10)/(1-x+x^2-x^3-x^8+x^9-x^10+x^11))` -/
def P7121393971230136230.Spec : Prop :=
  ∀ n, P7121393971230136230.a n = A217602 (n + 1)

theorem P7121393971230136230.correct : P7121393971230136230.Spec := by
  intro n
  simp only [A217602, Nat.add_sub_cancel]

end A217602

/-! ## A217602.P6235360220901549133

`abs((and(2, n)-1)*a(n-1)+n+1)` with `a(0)=1`
-/

namespace A217602.P6235360220901549133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((Nat.land 2 n : ℤ) - 1) * a (n - 1) + (n : ℤ) + 1|

end

end A217602.P6235360220901549133

namespace A217602

/-- `abs((and(2, n)-1)*a(n-1)+n+1)` -/
def P6235360220901549133.Spec : Prop :=
  ∀ n, P6235360220901549133.a n = A217602 (n + 1)

end A217602

/-! ## A217602.P415144132663153500

`abs((n+1)/(1-and(2, n))-a(n-1))` with `a(0)=1`
-/

namespace A217602.P415144132663153500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  |(n + 1 : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ) - a (n - 1)|

end

end A217602.P415144132663153500

namespace A217602

/-- `abs((n+1)/(1-and(2, n))-a(n-1))` -/
def P415144132663153500.Spec : Prop :=
  ∀ n, P415144132663153500.a n = (A217602 (n + 1) : ℚ)

end A217602

/-!
# A217605: Number of partitions of n that are fixed points of a certain map (see comment).

The programs for A217605, there is no canonical definition to state claims against.
-/

/-! ## A217605.P11243630533796561412

`A114640(n)-A325817(A001045(n+1))`
-/

namespace A217605.P11243630533796561412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 n - A325817 (A001045 (n + 1)).toNat

end

end A217605.P11243630533796561412

/-!
# A217607: Smallest k > 1 such that n divides binomial(n,k).

The programs for A217607, there is no canonical definition to state claims against.
-/

/-! ## A217607.P9097289072530204244

`A199968((n+3)^A014709(n+2))`
-/

namespace A217607.P9097289072530204244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (A014709 (n + 2) : ℤ))).toNat

end

end A217607.P9097289072530204244

/-! ## A217607.P481517046532730104

`A007978((n+3)^Δ[A284752(n+1)])`
-/

namespace A217607.P481517046532730104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (SequenceMachineLib.roundAway ((n + 3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A217607.P481517046532730104

/-! ## A217607.P10393711298831812539

`A053669(n+3)-A037011(A075233(3*(n+1)))`
-/

namespace A217607.P10393711298831812539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 3) - A037011 (A075233 (3 * (n + 1))).toNat

end

end A217607.P10393711298831812539

/-! ## A217607.P18037059729113105400

`A053669(n+3)-A010815(A031397(2*n+3))`
-/

namespace A217607.P18037059729113105400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 3) - A010815 (A031397 (2 * n + 3)).toNat

end

end A217607.P18037059729113105400

/-! ## A217607.P570022123184369328

`A053669(n+3)-A005088(A294280(2*n+5))`
-/

namespace A217607.P570022123184369328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 3) - A005088 (A294280 (2 * n + 5)).toNat

end

end A217607.P570022123184369328

/-!
# A217609: Shortest pandigital right segments (number of digits) of 2^A217608.

The programs for A217609, there is no canonical definition to state claims against.
-/

/-! ## A217609.P1607866913610274497

`A378771(A217608(n+1))`
-/

namespace A217609.P1607866913610274497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378771 (A217608 (n + 1)).toNat

end

end A217609.P1607866913610274497

/-!
# A217611: Primes p such that the octal expansion of 1/p has a unique period length.

The programs for A217611, there is no canonical definition to state claims against.
-/

/-! ## A217611.P510669587081567884

`A379641(A217646(n+1))`
-/

namespace A217611.P510669587081567884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379641 (A217646 (n + 1)).toNat

end

end A217611.P510669587081567884

/-!
# A217612: Difference between n-th prime and the smallest semiprime greater than it.

The programs for A217612, the canonical program `A217612.P9931106487089638916` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217612 has offset 1).

The definition of A217612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217612.P9931106487089638916

`A102414(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A217612

/-- `A102414(n+1)-A000040(n+1)` -/
def P9931106487089638916.Spec : Prop :=
  ∀ n, P9931106487089638916.a n = A217612 (n + 1)

theorem P9931106487089638916.correct : P9931106487089638916.Spec := by
  intro n
  simp only [A217612, Nat.add_sub_cancel]

end A217612

/-! ## A217612.P15489903086080864026

`A071192(A008578(n+2))-A008578(n+2)`
-/

namespace A217612.P15489903086080864026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071192 (A008578 (n + 2)).toNat - A008578 (n + 2)

end

end A217612.P15489903086080864026

namespace A217612

/-- `A071192(A008578(n+2))-A008578(n+2)` -/
def P15489903086080864026.Spec : Prop :=
  ∀ n, P15489903086080864026.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P896429411370853548

`A071192(A182986(n+2))-A182986(n+2)`
-/

namespace A217612.P896429411370853548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071192 (A182986 (n + 2)).toNat - A182986 (n + 2)

end

end A217612.P896429411370853548

namespace A217612

/-- `A071192(A182986(n+2))-A182986(n+2)` -/
def P896429411370853548.Spec : Prop :=
  ∀ n, P896429411370853548.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P1151416364865223151

`A001358(A111457(n+1)+1)-A000040(n+1)`
-/

namespace A217612.P1151416364865223151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A111457 (n + 1) + 1).toNat - A000040 (n + 1)

end

end A217612.P1151416364865223151

namespace A217612

/-- `A001358(A111457(n+1)+1)-A000040(n+1)` -/
def P1151416364865223151.Spec : Prop :=
  ∀ n, P1151416364865223151.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P10892806403622171754

`A102414(n+1)-A008578(n+2)`
-/

namespace A217612.P10892806403622171754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - A008578 (n + 2)

end

end A217612.P10892806403622171754

namespace A217612

/-- `A102414(n+1)-A008578(n+2)` -/
def P10892806403622171754.Spec : Prop :=
  ∀ n, P10892806403622171754.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P16614753977010732259

`A102414(n+1)-p?[A000961(n+1)]`
-/

namespace A217612.P16614753977010732259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217612.P16614753977010732259

namespace A217612

/-- `A102414(n+1)-p?[A000961(n+1)]` -/
def P16614753977010732259.Spec : Prop :=
  ∀ n, P16614753977010732259.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P17618643908431331815

`A102414(n+1)-record[A006530(n+2)]`
-/

namespace A217612.P17618643908431331815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217612.P17618643908431331815

namespace A217612

/-- `A102414(n+1)-record[A006530(n+2)]` -/
def P17618643908431331815.Spec : Prop :=
  ∀ n, P17618643908431331815.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P542756742527848947

`A102414(n+1)-record[A014963(n+2)]`
-/

namespace A217612.P542756742527848947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217612.P542756742527848947

namespace A217612

/-- `A102414(n+1)-record[A014963(n+2)]` -/
def P542756742527848947.Spec : Prop :=
  ∀ n, P542756742527848947.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P10125330452320955850

`A102414(n+1)-record[A020639(n+2)]`
-/

namespace A217612.P10125330452320955850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217612.P10125330452320955850

namespace A217612

/-- `A102414(n+1)-record[A020639(n+2)]` -/
def P10125330452320955850.Spec : Prop :=
  ∀ n, P10125330452320955850.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P14619359621872041287

`A102414(n+1)-record[A000010(n+1)+1]`
-/

namespace A217612.P14619359621872041287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217612.P14619359621872041287

namespace A217612

/-- `A102414(n+1)-record[A000010(n+1)+1]` -/
def P14619359621872041287.Spec : Prop :=
  ∀ n, P14619359621872041287.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P3328761702643569533

`A102414(n+1)-(eq[1, A001222(n+1)]+1)`
-/

namespace A217612.P3328761702643569533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A217612.P3328761702643569533

namespace A217612

/-- `A102414(n+1)-(eq[1, A001222(n+1)]+1)` -/
def P3328761702643569533.Spec : Prop :=
  ∀ n, P3328761702643569533.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P6783170340509783983

`A102414(n+1)-(eq[2, A000005(n+1)]+1)`
-/

namespace A217612.P6783170340509783983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A217612.P6783170340509783983

namespace A217612

/-- `A102414(n+1)-(eq[2, A000005(n+1)]+1)` -/
def P6783170340509783983.Spec : Prop :=
  ∀ n, P6783170340509783983.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P17417677102388379754

`A102414(n+1)-(lt[A001222(n+2), 2]+2)`
-/

namespace A217612.P17417677102388379754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ)

end

end A217612.P17417677102388379754

namespace A217612

/-- `A102414(n+1)-(lt[A001222(n+2), 2]+2)` -/
def P17417677102388379754.Spec : Prop :=
  ∀ n, P17417677102388379754.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P9319315411127689047

`A102414(n+1)-(comp[A018252(n+1)-1]+1)`
-/

namespace A217612.P9319315411127689047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A217612.P9319315411127689047

namespace A217612

/-- `A102414(n+1)-(comp[A018252(n+1)-1]+1)` -/
def P9319315411127689047.Spec : Prop :=
  ∀ n, P9319315411127689047.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P8384119197369188383

`abs(A014689(n+1)+1+n-A102414(n+1))`
-/

namespace A217612.P8384119197369188383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014689 (n + 1) + 1 + (n : ℤ) - A102414 (n + 1)|

end

end A217612.P8384119197369188383

namespace A217612

/-- `abs(A014689(n+1)+1+n-A102414(n+1))` -/
def P8384119197369188383.Spec : Prop :=
  ∀ n, P8384119197369188383.a n = A217612 (n + 1)

end A217612

/-! ## A217612.P9618545864823781702

`A102414(n+1)-(lt[n, A000010(or(1, n+1))]+2)`
-/

namespace A217612.P9618545864823781702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 : ℤ)

end

end A217612.P9618545864823781702

namespace A217612

/-- `A102414(n+1)-(lt[n, A000010(or(1, n+1))]+2)` -/
def P9618545864823781702.Spec : Prop :=
  ∀ n, P9618545864823781702.a n = A217612 (n + 1)

end A217612

/-!
# A217613: Absolute value of difference between the n-th "emirpimes" A097393(n) and its reversal.

The programs for A217613, there is no canonical definition to state claims against.
-/

/-! ## A217613.P8500209273937256388

`abs(A056965(A097393(n+1)))`
-/

namespace A217613.P8500209273937256388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056965 (A097393 (n + 1)).toNat|

end

end A217613.P8500209273937256388

/-! ## A217613.P5637320277549605379

`lcm(A020985(n), A056965(A097393(n+1)))`
-/

namespace A217613.P5637320277549605379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A056965 (A097393 (n + 1)).toNat)

end

end A217613.P5637320277549605379

/-! ## A217613.P14145552932426052703

`∑{d}[A056965(A097393(n+1)), A000010(#)]`
-/

namespace A217613.P14145552932426052703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A097393 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A217613.P14145552932426052703

/-! ## A217613.P13895635201580924280

`∏{d}[A056965(A097393(n+1)), A014963(#)]`
-/

namespace A217613.P13895635201580924280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A097393 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A217613.P13895635201580924280

/-! ## A217613.P4506506005991543159

`lcm(A004442(n)-n, -A056965(A097393(n+1)))`
-/

namespace A217613.P4506506005991543159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) (-A056965 (A097393 (n + 1)).toNat)

end

end A217613.P4506506005991543159

/-! ## A217613.P14154127245102008654

`gcd(A056965(A097393(n+1)), A277516(n²))`
-/

namespace A217613.P14154127245102008654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056965 (A097393 (n + 1)).toNat) (A277516 (n ^ 2))

end

end A217613.P14154127245102008654

/-!
# A217614: Emirps p such that the next emirp is equal to the next prime.

The programs for A217614, there is no canonical definition to state claims against.
-/

/-! ## A217614.P3792879686943079980

`∩[A006567(n+1), A151799(A006567(n+1))]`
-/

namespace A217614.P3792879686943079980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A006567 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217614.P3792879686943079980

/-! ## A217614.P9188564874854014064

`∩[A006567(n+1), A008578(A156793(n+1))]`
-/

namespace A217614.P9188564874854014064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217614.P9188564874854014064

/-! ## A217614.P16256197502857403563

`A008578(∩[A156793(n+1)+1, A156793(n+1)])`
-/

namespace A217614.P16256197502857403563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A217614.P16256197502857403563

/-! ## A217614.P6512984110750951268

`∩[A006567(n+1), A006005(A156793(n+1)-1)]`
-/

namespace A217614.P6512984110750951268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A156793 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217614.P6512984110750951268

/-! ## A217614.P6348040064814558615

`A000040(∩[A156793(n+1)-1, A156793(n+1)])`
-/

namespace A217614.P6348040064814558615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A217614.P6348040064814558615

/-! ## A217614.P3196053911264161375

`A006005(∩[A156793(n+1)-1, A156793(n+1)])`
-/

namespace A217614.P3196053911264161375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A217614.P3196053911264161375

/-! ## A217614.P8895626362984686378

`∩[A068893(n+1), A008578(A156793(n+1))]`
-/

namespace A217614.P8895626362984686378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217614.P8895626362984686378

/-! ## A217614.P8626637524259597254

`∩[A008578(A156793(n+1)), A350867(n+1)]`
-/

namespace A217614.P8626637524259597254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217614.P8626637524259597254

/-!
# A217615: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(1-x)^(n-k).

The programs for A217615, the canonical program `A217615.P17395009876465752197` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217615 has offset 0).

The definition of A217615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217615.P17395009876465752197

`∑{#}[floor(n/2), C(2*#, #)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217615

/-- `∑{#}[floor(n/2), C(2*#, #)*C(n-2*#, #)]` -/
def P17395009876465752197.Spec : Prop :=
  ∀ n, (P17395009876465752197.a n : ℤ) = A217615 n

theorem P17395009876465752197.correct : P17395009876465752197.Spec := by
  intro n
  simp only [A217615]

end A217615

/-! ## A217615.P15332317120497969098

`∑[A360309(n)]`
-/

namespace A217615.P15332317120497969098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217615.P15332317120497969098

namespace A217615

/-- `∑[A360309(n)]` -/
def P15332317120497969098.Spec : Prop :=
  ∀ n, P15332317120497969098.a n = A217615 n

end A217615

/-! ## A217615.P18138026555093680226

`Δ[A385572(n)]`
-/

namespace A217615.P18138026555093680226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217615.P18138026555093680226

namespace A217615

/-- `Δ[A385572(n)]` -/
def P18138026555093680226.Spec : Prop :=
  ∀ n, P18138026555093680226.a n = A217615 n

end A217615

/-! ## A217615.P14370124624282461723

`A385572(n+1)-A385572(n)`
-/

namespace A217615.P14370124624282461723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385572 (n + 1) - A385572 n

end

end A217615.P14370124624282461723

namespace A217615

/-- `A385572(n+1)-A385572(n)` -/
def P14370124624282461723.Spec : Prop :=
  ∀ n, P14370124624282461723.a n = A217615 n

end A217615

/-! ## A217615.P16876987117511171210

`Δ[A371564(n+1)]-A371358(n+1)`
-/

namespace A217615.P16876987117511171210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A371358 (n + 1)

end

end A217615.P16876987117511171210

namespace A217615

/-- `Δ[A371564(n+1)]-A371358(n+1)` -/
def P16876987117511171210.Spec : Prop :=
  ∀ n, P16876987117511171210.a n = A217615 n

end A217615

/-! ## A217615.P14352972020285457983

`A060162(∑[n])`
-/

namespace A217615.P14352972020285457983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060162 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217615.P14352972020285457983

namespace A217615

/-- `A060162(∑[n])` -/
def P14352972020285457983.Spec : Prop :=
  ∀ n, P14352972020285457983.a n = A217615 n

end A217615

/-! ## A217615.P1584014424611063941

`or(1, A060162(C(n+1, 2)))`
-/

namespace A217615.P1584014424611063941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060162 (Nat.choose (n + 1) 2))

end

end A217615.P1584014424611063941

namespace A217615

/-- `or(1, A060162(C(n+1, 2)))` -/
def P1584014424611063941.Spec : Prop :=
  ∀ n, P1584014424611063941.a n = A217615 n

end A217615

/-! ## A217615.P2560492912339585223

`or(1, A060162(n-Δ[-C(n, 3)]))`
-/

namespace A217615.P2560492912339585223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060162 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat)

end

end A217615.P2560492912339585223

namespace A217615

/-- `or(1, A060162(n-Δ[-C(n, 3)]))` -/
def P2560492912339585223.Spec : Prop :=
  ∀ n, P2560492912339585223.a n = A217615 n

end A217615

/-! ## A217615.P17879030271533708606

`or(1, A060162(floor((2*n+1)²/8)))`
-/

namespace A217615.P17879030271533708606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060162 ⌊((2 * n + 1) ^ 2 : ℚ) / 8⌋.toNat)

end

end A217615.P17879030271533708606

namespace A217615

/-- `or(1, A060162(floor((2*n+1)²/8)))` -/
def P17879030271533708606.Spec : Prop :=
  ∀ n, P17879030271533708606.a n = A217615 n

end A217615

/-! ## A217615.P2343591556189994386

`A059780(∑[2*n])`
-/

namespace A217615.P2343591556189994386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059780 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217615.P2343591556189994386

namespace A217615

/-- `A059780(∑[2*n])` -/
def P2343591556189994386.Spec : Prop :=
  ∀ n, P2343591556189994386.a n = A217615 n

end A217615

/-!
# A217616: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(2-x)^(n-k).

The programs for A217616, there is no canonical definition to state claims against.
-/

/-! ## A217616.P10240391803378653213

`∑[ceil(3^(n-1))]-A001222(A004102(n))`
-/

namespace A217616.P10240391803378653213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (A004102 n).toNat

end

end A217616.P10240391803378653213

/-! ## A217616.P6238904000441278062

`∑[ceil(3^(n-1))]-A001222(A345258(n+1))`
-/

namespace A217616.P6238904000441278062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (A345258 (n + 1)).toNat

end

end A217616.P6238904000441278062

/-! ## A217616.P3477717238667363236

`A265751(A005773(n))+A006190(n)`
-/

namespace A217616.P3477717238667363236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265751 (A005773 n).toNat + A006190 n

end

end A217616.P3477717238667363236

/-!
# A217617: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(3-x)^(n-k).

The programs for A217617, there is no canonical definition to state claims against.
-/

/-! ## A217617.P14639497787853142776

`or(1, A278055(A083324(n)))`
-/

namespace A217617.P14639497787853142776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278055 (A083324 n).toNat)

end

end A217617.P14639497787853142776

/-! ## A217617.P17664839524999912003

`A008620(∑[A179606(n)+1])`
-/

namespace A217617.P17664839524999912003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179606 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217617.P17664839524999912003

/-! ## A217617.P7157708534656577374

`A004396(A083324(n)+A005836(n+1))`
-/

namespace A217617.P7157708534656577374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A083324 n + A005836 (n + 1)).toNat

end

end A217617.P7157708534656577374

/-!
# A217618: a(n) = A217578(n)/n.

The programs for A217618, there is no canonical definition to state claims against.
-/

/-! ## A217618.P10329734046253922854

`A217578(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217618.P10329734046253922854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217578 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A217618.P10329734046253922854

/-! ## A217618.P6569142899480039783

`(8*A217578(n+1))%A004771(n)`
-/

namespace A217618.P6569142899480039783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (8 * A217578 (n + 1)) (A004771 n)

end

end A217618.P6569142899480039783

/-! ## A217618.P1230465366999433081

`(10*A217578(n+1))%A017377(n)`
-/

namespace A217618.P1230465366999433081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A217578 (n + 1)) (A017377 n)

end

end A217618.P1230465366999433081

/-! ## A217618.P5744351827868669145

`tan(acot(n+1))*A217578(A000027(n+1))`
-/

namespace A217618.P5744351827868669145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (n + 1 : ℝ)) * (A217578 (A000027 (n + 1)).toNat : ℝ)

end

end A217618.P5744351827868669145

/-! ## A217618.P14297309128141126857

`(n+1)^A008683(A006450(n+1))*A217578(n+1)`
-/

namespace A217618.P14297309128141126857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A217578 (n + 1) : ℚ)

end

end A217618.P14297309128141126857

/-! ## A217618.P3121105223467946142

`A022144(A217578(n+1))%A004771(n)`
-/

namespace A217618.P3121105223467946142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A217578 (n + 1)).toNat) (A004771 n)

end

end A217618.P3121105223467946142

/-!
# A217619: a(n) = m/(12*n) where m is the least multiple of n that satisfies phi(m) = phi(m+6*n).

The programs for A217619, there is no canonical definition to state claims against.
-/

/-! ## A217619.P11326848337994396591

`A217140(n+1)/12`
-/

namespace A217619.P11326848337994396591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217140 (n + 1) : ℚ) / 12

end

end A217619.P11326848337994396591

/-! ## A217619.P8794944526075403827

`floor(A284723(3*(n+1))/2)`
-/

namespace A217619.P8794944526075403827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284723 (3 * (n + 1)) : ℚ) / 2⌋

end

end A217619.P8794944526075403827

/-! ## A217619.P7796582838413939347

`2^A322358(3*(n+1))+1`
-/

namespace A217619.P7796582838413939347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A322358 (3 * (n + 1)) : ℤ) + 1

end

end A217619.P7796582838413939347

/-! ## A217619.P10140871605716307514

`A351112(3*(n+1)/2^val(n+1, 2))`
-/

namespace A217619.P10140871605716307514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A217619.P10140871605716307514

/-! ## A217619.P13842729894787878003

`∑{d}[3*(n+1)/2^val(n+1, 2), A351114(#)]`
-/

namespace A217619.P13842729894787878003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A351114 d

end

end A217619.P13842729894787878003

/-! ## A217619.P9632738762622563808

`A053669(A354203(n+1))`
-/

namespace A217619.P9632738762622563808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A354203 (n + 1)).toNat

end

end A217619.P9632738762622563808

/-! ## A217619.P3033766898138299336

`A351112(A166466(n+1))`
-/

namespace A217619.P3033766898138299336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (A166466 (n + 1)).toNat

end

end A217619.P3033766898138299336

/-! ## A217619.P2208310238391729040

`A000005(A322356(3*(n+1)))+1`
-/

namespace A217619.P2208310238391729040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A322356 (3 * (n + 1))).toNat + 1

end

end A217619.P2208310238391729040

/-! ## A217619.P5637706215186020892

`A276084(11*A005843(3*(n+1)))`
-/

namespace A217619.P5637706215186020892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (11 * A005843 (3 * (n + 1))).toNat

end

end A217619.P5637706215186020892

/-!
# A217620: Primes of the form 2*n^2 + 82*n + 39.

The programs for A217620, there is no canonical definition to state claims against.
-/

/-! ## A217620.P15321606603893554333

`p?[A046092(n)-801]`
-/

namespace A217620.P15321606603893554333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - 801

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P15321606603893554333

/-! ## A217620.P9298505401838548779

`p?[A001844(n)-802]`
-/

namespace A217620.P9298505401838548779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - 802

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P9298505401838548779

/-! ## A217620.P2394701232305199611

`p?[A241406(n+1)+A052905(n+8)]`
-/

namespace A217620.P2394701232305199611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (n + 1) + A052905 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P2394701232305199611

/-! ## A217620.P14115201044952248106

`p?[A152813(n+8)+A008606(2*n)]`
-/

namespace A217620.P14115201044952248106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152813 (n + 8) + A008606 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P14115201044952248106

/-! ## A217620.P10811667269890457340

`p?[A154266(3*n+1)+A000217(2*n)]`
-/

namespace A217620.P10811667269890457340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (3 * n + 1) + A000217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P10811667269890457340

/-! ## A217620.P5522640284164699277

`p?[A008805(4*n)-A154267(3*n+1)]`
-/

namespace A217620.P5522640284164699277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (4 * n) - A154267 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P5522640284164699277

/-! ## A217620.P3394253807715110053

`p?[A005893(n+3)-(10*A017233(n)+1)]`
-/

namespace A217620.P3394253807715110053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 3) - (10 * A017233 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P3394253807715110053

/-! ## A217620.P7979169564462796801

`p?[A000982(n)-A017293(A008574(n))]`
-/

namespace A217620.P7979169564462796801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A017293 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217620.P7979169564462796801

/-!
# A217621: Primes of the form 2*n^2 + 90*n + 43.

The programs for A217621, there is no canonical definition to state claims against.
-/

/-! ## A217621.P14230877019544466567

`p?[2*(n+1)²-A128468(3*n+1)]`
-/

namespace A217621.P14230877019544466567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - A128468 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217621.P14230877019544466567

/-! ## A217621.P8982766973145775229

`p?[A082369(3*n+2)+A001105(n)]`
-/

namespace A217621.P8982766973145775229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (3 * n + 2) + A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217621.P8982766973145775229

/-! ## A217621.P1678303977789074125

`p?[A046092(A008706(n))%A141759(n)]`
-/

namespace A217621.P1678303977789074125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046092 (A008706 n).toNat) (A141759 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217621.P1678303977789074125

/-! ## A217621.P14219382558168430082

`p?[A236283(n+1)+A016825(A017509(n))]`
-/

namespace A217621.P14219382558168430082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236283 (n + 1) + A016825 (A017509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217621.P14219382558168430082

/-! ## A217621.P12431498028030276693

`p?[A167614(2*n+5)-A017233(A017473(n))]`
-/

namespace A217621.P12431498028030276693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (2 * n + 5) - A017233 (A017473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217621.P12431498028030276693

/-!
# A217622: Prime(prime(2*n)).

The programs for A217622, the canonical program `A217622.P13107653143399971552` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217622 has offset 1).

The definition of A217622 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(2*(n+1)))` (program `A217622.P13107653143399971552`, by `A217622.P13107653143399971552.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217622.P12949597402063927546

`A006450(2*(n+1))`
-/

namespace A217622.P12949597402063927546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1))

end

end A217622.P12949597402063927546

namespace A217622

/-- `A006450(2*(n+1))` -/
def P12949597402063927546.Spec : Prop :=
  ∀ n, P12949597402063927546.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P17767836669179899199

`A000040(A031215(n+1))`
-/

namespace A217622.P17767836669179899199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A031215 (n + 1)).toNat

end

end A217622.P17767836669179899199

namespace A217622

/-- `A000040(A031215(n+1))` -/
def P17767836669179899199.Spec : Prop :=
  ∀ n, P17767836669179899199.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P13107653143399971552

`A000040(A000040(2*(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217622

/-- `A000040(A000040(2*(n+1)))` -/
def P13107653143399971552.Spec : Prop :=
  ∀ n, P13107653143399971552.a n = A217622 (n + 1)

theorem P13107653143399971552.correct : P13107653143399971552.Spec := by
  intro n
  simp only [A217622, Nat.add_sub_cancel]

end A217622

/-! ## A217622.P13024569265787115248

`record[A006450(n^(n%2)+1)]`
-/

namespace A217622.P13024569265787115248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P13024569265787115248

namespace A217622

/-- `record[A006450(n^(n%2)+1)]` -/
def P13024569265787115248.Spec : Prop :=
  ∀ n, P13024569265787115248.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P5624393595553538712

`record[A006450(A093178(n)+1)]`
-/

namespace A217622.P5624393595553538712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P5624393595553538712

namespace A217622

/-- `record[A006450(A093178(n)+1)]` -/
def P5624393595553538712.Spec : Prop :=
  ∀ n, P5624393595553538712.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P6248276064313341337

`record[A006450(A000265(n+1)+1)]`
-/

namespace A217622.P6248276064313341337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P6248276064313341337

namespace A217622

/-- `record[A006450(A000265(n+1)+1)]` -/
def P6248276064313341337.Spec : Prop :=
  ∀ n, P6248276064313341337.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P662191098914648087

`A230329(n+1)+A100484(n+1)`
-/

namespace A217622.P662191098914648087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230329 (n + 1) + A100484 (n + 1)

end

end A217622.P662191098914648087

namespace A217622

/-- `A230329(n+1)+A100484(n+1)` -/
def P662191098914648087.Spec : Prop :=
  ∀ n, P662191098914648087.a n = A217622 (n + 1)

theorem P662191098914648087.correct : P662191098914648087.Spec := by
  intro n
  simp only [A217622, Nat.add_sub_cancel, A217622.P662191098914648087.a, A217622.P13107653143399971552.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, A230329, A230329.P11921175631725488359.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217622

/-! ## A217622.P6797729458600125677

`A230481(n+1)+A230460(n+1)`
-/

namespace A217622.P6797729458600125677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230481 (n + 1) + A230460 (n + 1)

end

end A217622.P6797729458600125677

namespace A217622

/-- `A230481(n+1)+A230460(n+1)` -/
def P6797729458600125677.Spec : Prop :=
  ∀ n, P6797729458600125677.a n = A217622 (n + 1)

theorem P6797729458600125677.correct : P6797729458600125677.Spec := by
  intro n
  simp only [A217622, Nat.add_sub_cancel, A217622.P6797729458600125677.a, A217622.P13107653143399971552.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230460, A230460.P9993362887016346577.a, A230481, A230481.P14652723980952249607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217622

/-! ## A217622.P18280746000133878233

`A230460(n+1)+A230482(n+1)+A230482(n+1)`
-/

namespace A217622.P18280746000133878233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230460 (n + 1) + (A230482 (n + 1) + A230482 (n + 1))

end

end A217622.P18280746000133878233

namespace A217622

/-- `A230460(n+1)+A230482(n+1)+A230482(n+1)` -/
def P18280746000133878233.Spec : Prop :=
  ∀ n, P18280746000133878233.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P3579405188489444706

`record[A006450(2*A133310(n))]`
-/

namespace A217622.P3579405188489444706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P3579405188489444706

namespace A217622

/-- `record[A006450(2*A133310(n))]` -/
def P3579405188489444706.Spec : Prop :=
  ∀ n, P3579405188489444706.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P7934260928463426390

`sqrt(A092769(2*(n+1)))`
-/

namespace A217622.P7934260928463426390
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (2 * (n + 1)) : ℝ)

end

end A217622.P7934260928463426390

namespace A217622

/-- `sqrt(A092769(2*(n+1)))` -/
def P7934260928463426390.Spec : Prop :=
  ∀ n, P7934260928463426390.a n = (A217622 (n + 1) : ℝ)

end A217622

/-! ## A217622.P9091236492130366778

`A141138(2*(n+1))+1`
-/

namespace A217622.P9091236492130366778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (2 * (n + 1)) + 1

end

end A217622.P9091236492130366778

namespace A217622

/-- `A141138(2*(n+1))+1` -/
def P9091236492130366778.Spec : Prop :=
  ∀ n, P9091236492130366778.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P11285265602082998767

`ceil(sqrt(A092771(2*(n+1))))`
-/

namespace A217622.P11285265602082998767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A092771 (2 * (n + 1)) : ℝ)⌉

end

end A217622.P11285265602082998767

namespace A217622

/-- `ceil(sqrt(A092771(2*(n+1))))` -/
def P11285265602082998767.Spec : Prop :=
  ∀ n, P11285265602082998767.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P18167756273393267918

`A175247(2*n+3)`
-/

namespace A217622.P18167756273393267918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (2 * n + 3)

end

end A217622.P18167756273393267918

namespace A217622

/-- `A175247(2*n+3)` -/
def P18167756273393267918.Spec : Prop :=
  ∀ n, P18167756273393267918.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P5332129250160787119

`A302493(A024620(2*(n+1)))`
-/

namespace A217622.P5332129250160787119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302493 (A024620 (2 * (n + 1))).toNat

end

end A217622.P5332129250160787119

namespace A217622

/-- `A302493(A024620(2*(n+1)))` -/
def P5332129250160787119.Spec : Prop :=
  ∀ n, P5332129250160787119.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P3889660486758306363

`record[A006450(2*A341440(n))]`
-/

namespace A217622.P3889660486758306363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * A341440 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P3889660486758306363

namespace A217622

/-- `record[A006450(2*A341440(n))]` -/
def P3889660486758306363.Spec : Prop :=
  ∀ n, P3889660486758306363.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P3675097985982315010

`record[A006450(2*A154958(n))]`
-/

namespace A217622.P3675097985982315010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P3675097985982315010

namespace A217622

/-- `record[A006450(2*A154958(n))]` -/
def P3675097985982315010.Spec : Prop :=
  ∀ n, P3675097985982315010.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P9073577949395483378

`record[A006450(A003417(n))]`
-/

namespace A217622.P9073577949395483378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P9073577949395483378

namespace A217622

/-- `record[A006450(A003417(n))]` -/
def P9073577949395483378.Spec : Prop :=
  ∀ n, P9073577949395483378.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P17904038222569935684

`record[A006450(2*A117910(n))]`
-/

namespace A217622.P17904038222569935684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217622.P17904038222569935684

namespace A217622

/-- `record[A006450(2*A117910(n))]` -/
def P17904038222569935684.Spec : Prop :=
  ∀ n, P17904038222569935684.a n = A217622 (n + 1)

end A217622

/-! ## A217622.P15048296523041748401

`A064988(A065091(2*n+1))`
-/

namespace A217622.P15048296523041748401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A065091 (2 * n + 1)).toNat

end

end A217622.P15048296523041748401

namespace A217622

/-- `A064988(A065091(2*n+1))` -/
def P15048296523041748401.Spec : Prop :=
  ∀ n, P15048296523041748401.a n = A217622 (n + 1)

end A217622

/-!
# A217623: a(n) = prime(prime(n^2)).

The programs for A217623, the canonical program `A217623.P17599176485206332206` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217623 has offset 1).

The definition of A217623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040((n+1)²))` (program `A217623.P17599176485206332206`, by `A217623.P17599176485206332206.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217623.P17599176485206332206

`A000040(A000040((n+1)²))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217623

/-- `A000040(A000040((n+1)²))` -/
def P17599176485206332206.Spec : Prop :=
  ∀ n, P17599176485206332206.a n = A217623 (n + 1)

theorem P17599176485206332206.correct : P17599176485206332206.Spec := by
  intro n
  simp only [A217623, Nat.add_sub_cancel]

end A217623

/-! ## A217623.P11697372726670351511

`A006450((1+n)²)`
-/

namespace A217623.P11697372726670351511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 ((1 + n) ^ 2)

end

end A217623.P11697372726670351511

namespace A217623

/-- `A006450((1+n)²)` -/
def P11697372726670351511.Spec : Prop :=
  ∀ n, P11697372726670351511.a n = A217623 (n + 1)

theorem P11697372726670351511.correct : P11697372726670351511.Spec := by
  intro n
  simp only [A217623, Nat.add_sub_cancel, A217623.P11697372726670351511.a, A217623.P17599176485206332206.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217623

/-! ## A217623.P9710297919424750195

`or(1, A006450((n+1)*(n+1)))`
-/

namespace A217623.P9710297919424750195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006450 ((n + 1) * (n + 1)))

end

end A217623.P9710297919424750195

namespace A217623

/-- `or(1, A006450((n+1)*(n+1)))` -/
def P9710297919424750195.Spec : Prop :=
  ∀ n, P9710297919424750195.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P1406853689658336003

`record[A006450(A117910(n)²)]`
-/

namespace A217623.P1406853689658336003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217623.P1406853689658336003

namespace A217623

/-- `record[A006450(A117910(n)²)]` -/
def P1406853689658336003.Spec : Prop :=
  ∀ n, P1406853689658336003.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P7440711412911492902

`record[A006450(A133310(n)²)]`
-/

namespace A217623.P7440711412911492902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217623.P7440711412911492902

namespace A217623

/-- `record[A006450(A133310(n)²)]` -/
def P7440711412911492902.Spec : Prop :=
  ∀ n, P7440711412911492902.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P12606287108565113077

`record[A006450(A154958(n)²)]`
-/

namespace A217623.P12606287108565113077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A154958 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217623.P12606287108565113077

namespace A217623

/-- `record[A006450(A154958(n)²)]` -/
def P12606287108565113077.Spec : Prop :=
  ∀ n, P12606287108565113077.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P3085535255985675170

`record[A006450(A341440(n)²)]`
-/

namespace A217623.P3085535255985675170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A341440 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217623.P3085535255985675170

namespace A217623

/-- `record[A006450(A341440(n)²)]` -/
def P3085535255985675170.Spec : Prop :=
  ∀ n, P3085535255985675170.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P1968627875062465165

`record[A006450(A003963(n+1)*A003963(n+1))]`
-/

namespace A217623.P1968627875062465165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A003963 (n + 1) * A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217623.P1968627875062465165

namespace A217623

/-- `record[A006450(A003963(n+1)*A003963(n+1))]` -/
def P1968627875062465165.Spec : Prop :=
  ∀ n, P1968627875062465165.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P4900592089089811701

`A001222(A006450(n+1))*A006450((n+1)*(n+1))`
-/

namespace A217623.P4900592089089811701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006450 (n + 1)).toNat * A006450 ((n + 1) * (n + 1))

end

end A217623.P4900592089089811701

namespace A217623

/-- `A001222(A006450(n+1))*A006450((n+1)*(n+1))` -/
def P4900592089089811701.Spec : Prop :=
  ∀ n, P4900592089089811701.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P2236269555163300690

`A100567(A071619(n+1))`
-/

namespace A217623.P2236269555163300690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100567 (A071619 (n + 1)).toNat

end

end A217623.P2236269555163300690

namespace A217623

/-- `A100567(A071619(n+1))` -/
def P2236269555163300690.Spec : Prop :=
  ∀ n, P2236269555163300690.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P4517588206563524901

`A049078(A078435(n+1))`
-/

namespace A217623.P4517588206563524901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049078 (A078435 (n + 1)).toNat

end

end A217623.P4517588206563524901

namespace A217623

/-- `A049078(A078435(n+1))` -/
def P4517588206563524901.Spec : Prop :=
  ∀ n, P4517588206563524901.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P11905626934025745792

`sqrt(A092769((n+1)²))`
-/

namespace A217623.P11905626934025745792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 ((n + 1) ^ 2) : ℝ)

end

end A217623.P11905626934025745792

namespace A217623

/-- `sqrt(A092769((n+1)²))` -/
def P11905626934025745792.Spec : Prop :=
  ∀ n, P11905626934025745792.a n = (A217623 (n + 1) : ℝ)

end A217623

/-! ## A217623.P14792900656068170754

`A141138((n+1)²)+1`
-/

namespace A217623.P14792900656068170754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 ((n + 1) ^ 2) + 1

end

end A217623.P14792900656068170754

namespace A217623

/-- `A141138((n+1)²)+1` -/
def P14792900656068170754.Spec : Prop :=
  ∀ n, P14792900656068170754.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P7303425236861449155

`A262021((n+1)²)+(n+1)²`
-/

namespace A217623.P7303425236861449155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A217623.P7303425236861449155

namespace A217623

/-- `A262021((n+1)²)+(n+1)²` -/
def P7303425236861449155.Spec : Prop :=
  ∀ n, P7303425236861449155.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P4445117812420277747

`A080697((n+1)²)/(n+1)²`
-/

namespace A217623.P4445117812420277747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080697 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A217623.P4445117812420277747

namespace A217623

/-- `A080697((n+1)²)/(n+1)²` -/
def P4445117812420277747.Spec : Prop :=
  ∀ n, P4445117812420277747.a n = (A217623 (n + 1) : ℚ)

end A217623

/-! ## A217623.P18058474642603408707

`A049078(A022447((n+1)²))`
-/

namespace A217623.P18058474642603408707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049078 (A022447 ((n + 1) ^ 2)).toNat

end

end A217623.P18058474642603408707

namespace A217623

/-- `A049078(A022447((n+1)²))` -/
def P18058474642603408707.Spec : Prop :=
  ∀ n, P18058474642603408707.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P5745141324504888678

`A100567(A004396((n+1)²))`
-/

namespace A217623.P5745141324504888678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100567 (A004396 ((n + 1) ^ 2)).toNat

end

end A217623.P5745141324504888678

namespace A217623

/-- `A100567(A004396((n+1)²))` -/
def P5745141324504888678.Spec : Prop :=
  ∀ n, P5745141324504888678.a n = A217623 (n + 1)

end A217623

/-! ## A217623.P7847889992376428988

`A049078(A062298((n+1)²))`
-/

namespace A217623.P7847889992376428988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049078 (A062298 ((n + 1) ^ 2)).toNat

end

end A217623.P7847889992376428988

namespace A217623

/-- `A049078(A062298((n+1)²))` -/
def P7847889992376428988.Spec : Prop :=
  ∀ n, P7847889992376428988.a n = A217623 (n + 1)

end A217623

/-!
# A217624: Prime(prime(3*n)).

The programs for A217624, the canonical program `A217624.P10742200769758054198` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217624 has offset 1).

The definition of A217624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(3*(n+1)))` (program `A217624.P10742200769758054198`, by `A217624.P10742200769758054198.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217624.P10742200769758054198

`A000040(A000040(3*(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217624

/-- `A000040(A000040(3*(n+1)))` -/
def P10742200769758054198.Spec : Prop :=
  ∀ n, P10742200769758054198.a n = A217624 (n + 1)

theorem P10742200769758054198.correct : P10742200769758054198.Spec := by
  intro n
  simp only [A217624, Nat.add_sub_cancel]

end A217624

/-! ## A217624.P7503922285772767855

`A006450(3*(n+1))`
-/

namespace A217624.P7503922285772767855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (3 * (n + 1))

end

end A217624.P7503922285772767855

namespace A217624

/-- `A006450(3*(n+1))` -/
def P7503922285772767855.Spec : Prop :=
  ∀ n, P7503922285772767855.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P12663217216057647712

`∩[A006450(n+3), A006450(A008486(n))]`
-/

namespace A217624.P12663217216057647712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A008486 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217624.P12663217216057647712

namespace A217624

/-- `∩[A006450(n+3), A006450(A008486(n))]` -/
def P12663217216057647712.Spec : Prop :=
  ∀ n, (P12663217216057647712.a n : ℤ) = A217624 (n + 1)

end A217624

/-! ## A217624.P2255440187709628823

`A100567(2*(n+1))`
-/

namespace A217624.P2255440187709628823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100567 (2 * (n + 1))

end

end A217624.P2255440187709628823

namespace A217624

/-- `A100567(2*(n+1))` -/
def P2255440187709628823.Spec : Prop :=
  ∀ n, P2255440187709628823.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P14740292077772126263

`A175247(3*n+4)`
-/

namespace A217624.P14740292077772126263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (3 * n + 4)

end

end A217624.P14740292077772126263

namespace A217624

/-- `A175247(3*n+4)` -/
def P14740292077772126263.Spec : Prop :=
  ∀ n, P14740292077772126263.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P3341022393768737846

`sqrt(A092769(3*(n+1)))`
-/

namespace A217624.P3341022393768737846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (3 * (n + 1)) : ℝ)

end

end A217624.P3341022393768737846

namespace A217624

/-- `sqrt(A092769(3*(n+1)))` -/
def P3341022393768737846.Spec : Prop :=
  ∀ n, P3341022393768737846.a n = (A217624 (n + 1) : ℝ)

end A217624

/-! ## A217624.P6264200385953225762

`A141138(3*(n+1))+1`
-/

namespace A217624.P6264200385953225762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (3 * (n + 1)) + 1

end

end A217624.P6264200385953225762

namespace A217624

/-- `A141138(3*(n+1))+1` -/
def P6264200385953225762.Spec : Prop :=
  ∀ n, P6264200385953225762.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P2179127380672067479

`A120426(A031336(n+1))`
-/

namespace A217624.P2179127380672067479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A031336 (n + 1)).toNat

end

end A217624.P2179127380672067479

namespace A217624

/-- `A120426(A031336(n+1))` -/
def P2179127380672067479.Spec : Prop :=
  ∀ n, P2179127380672067479.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P18023284462961711502

`A031368((A031336(n+1)+1)/2)`
-/

namespace A217624.P18023284462961711502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (SequenceMachineLib.roundAway ((A031336 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A217624.P18023284462961711502

namespace A217624

/-- `A031368((A031336(n+1)+1)/2)` -/
def P18023284462961711502.Spec : Prop :=
  ∀ n, P18023284462961711502.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P9767774350160971927

`A105574(A031336(2*n+1-n))`
-/

namespace A217624.P9767774350160971927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (A031336 (2 * n + 1 - n)).toNat

end

end A217624.P9767774350160971927

namespace A217624

/-- `A105574(A031336(2*n+1-n))` -/
def P9767774350160971927.Spec : Prop :=
  ∀ n, P9767774350160971927.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P5599980525078924398

`A000040(A031336(n+1))`
-/

namespace A217624.P5599980525078924398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A031336 (n + 1)).toNat

end

end A217624.P5599980525078924398

namespace A217624

/-- `A000040(A031336(n+1))` -/
def P5599980525078924398.Spec : Prop :=
  ∀ n, P5599980525078924398.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P10390371103586776899

`A008578(A031336(n+1)+1)`
-/

namespace A217624.P10390371103586776899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A031336 (n + 1) + 1).toNat

end

end A217624.P10390371103586776899

namespace A217624

/-- `A008578(A031336(n+1)+1)` -/
def P10390371103586776899.Spec : Prop :=
  ∀ n, P10390371103586776899.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P84374161583923377

`A065091(A031336(n+1)-1)`
-/

namespace A217624.P84374161583923377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A031336 (n + 1) - 1).toNat

end

end A217624.P84374161583923377

namespace A217624

/-- `A065091(A031336(n+1)-1)` -/
def P84374161583923377.Spec : Prop :=
  ∀ n, P84374161583923377.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P4907623301498060391

`A006005(A006005(3*(n+1)))`
-/

namespace A217624.P4907623301498060391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A006005 (3 * (n + 1))).toNat

end

end A217624.P4907623301498060391

namespace A217624

/-- `A006005(A006005(3*(n+1)))` -/
def P4907623301498060391.Spec : Prop :=
  ∀ n, P4907623301498060391.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P17906528370639437186

`A171577(A171577(3*(n+1)))`
-/

namespace A217624.P17906528370639437186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (A171577 (3 * (n + 1))).toNat

end

end A217624.P17906528370639437186

namespace A217624

/-- `A171577(A171577(3*(n+1)))` -/
def P17906528370639437186.Spec : Prop :=
  ∀ n, P17906528370639437186.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P13811545299143133261

`A065091(A040976(3*(n+1))+1)`
-/

namespace A217624.P13811545299143133261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A040976 (3 * (n + 1)) + 1).toNat

end

end A217624.P13811545299143133261

namespace A217624

/-- `A065091(A040976(3*(n+1))+1)` -/
def P13811545299143133261.Spec : Prop :=
  ∀ n, P13811545299143133261.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P7464191256885864264

`A008578(A006093(3*(n+1))+2)`
-/

namespace A217624.P7464191256885864264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A006093 (3 * (n + 1)) + 2).toNat

end

end A217624.P7464191256885864264

namespace A217624

/-- `A008578(A006093(3*(n+1))+2)` -/
def P7464191256885864264.Spec : Prop :=
  ∀ n, P7464191256885864264.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P4332058626533807889

`A006093(A065091(3*n+2))+1`
-/

namespace A217624.P4332058626533807889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A065091 (3 * n + 2)).toNat + 1

end

end A217624.P4332058626533807889

namespace A217624

/-- `A006093(A065091(3*n+2))+1` -/
def P4332058626533807889.Spec : Prop :=
  ∀ n, P4332058626533807889.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P12810164865016618674

`A008578(A065091(3*n+2)+1)`
-/

namespace A217624.P12810164865016618674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A065091 (3 * n + 2) + 1).toNat

end

end A217624.P12810164865016618674

namespace A217624

/-- `A008578(A065091(3*n+2)+1)` -/
def P12810164865016618674.Spec : Prop :=
  ∀ n, P12810164865016618674.a n = A217624 (n + 1)

end A217624

/-! ## A217624.P659480033523535915

`A065091(A065091(3*n+2)-1)`
-/

namespace A217624.P659480033523535915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A065091 (3 * n + 2) - 1).toNat

end

end A217624.P659480033523535915

namespace A217624

/-- `A065091(A065091(3*n+2)-1)` -/
def P659480033523535915.Spec : Prop :=
  ∀ n, P659480033523535915.a n = A217624 (n + 1)

end A217624

/-!
# A217625: Prime(prime(n^3)).

The programs for A217625, the canonical program `A217625.P16811286757100583599` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217625 has offset 1).

The definition of A217625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040((n+1)^3))` (program `A217625.P16811286757100583599`, by `A217625.P16811286757100583599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217625.P16811286757100583599

`A000040(A000040((n+1)^3))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217625

/-- `A000040(A000040((n+1)^3))` -/
def P16811286757100583599.Spec : Prop :=
  ∀ n, P16811286757100583599.a n = A217625 (n + 1)

theorem P16811286757100583599.correct : P16811286757100583599.Spec := by
  intro n
  simp only [A217625, Nat.add_sub_cancel]

end A217625

/-! ## A217625.P14719336621902228280

`A006450(Δ[∑[n]²])`
-/

namespace A217625.P14719336621902228280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A217625.P14719336621902228280

namespace A217625

/-- `A006450(Δ[∑[n]²])` -/
def P14719336621902228280.Spec : Prop :=
  ∀ n, P14719336621902228280.a n = A217625 (n + 1)

end A217625

/-! ## A217625.P17986728518371463291

`or(1, A006450((n+1)^3))`
-/

namespace A217625.P17986728518371463291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006450 ((n + 1) ^ 3))

end

end A217625.P17986728518371463291

namespace A217625

/-- `or(1, A006450((n+1)^3))` -/
def P17986728518371463291.Spec : Prop :=
  ∀ n, P17986728518371463291.a n = A217625 (n + 1)

end A217625

/-! ## A217625.P16561852003907082636

`record[A006450(A109595(n+1))]`
-/

namespace A217625.P16561852003907082636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A109595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217625.P16561852003907082636

namespace A217625

/-- `record[A006450(A109595(n+1))]` -/
def P16561852003907082636.Spec : Prop :=
  ∀ n, P16561852003907082636.a n = A217625 (n + 1)

end A217625

/-! ## A217625.P17400907625863823138

`record[A006450(A109614(n+1))]`
-/

namespace A217625.P17400907625863823138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A109614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217625.P17400907625863823138

namespace A217625

/-- `record[A006450(A109614(n+1))]` -/
def P17400907625863823138.Spec : Prop :=
  ∀ n, P17400907625863823138.a n = A217625 (n + 1)

end A217625

/-!
# A217626: First differences of A215940, or first differences of permutations of (0,1,2,...,m-1) reading them as decimal numbers, divided by 9 (with 10>=m, and m! > n).

The programs for A217626, there is no canonical definition to state claims against.
-/

/-! ## A217626.P7396324150352791041

`A215940(n+2)-A215940(n+1)`
-/

namespace A217626.P7396324150352791041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215940 (n + 2) - A215940 (n + 1)

end

end A217626.P7396324150352791041

/-! ## A217626.P17504825328365189088

`A219664(n+1)/9`
-/

namespace A217626.P17504825328365189088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219664 (n + 1) : ℚ) / 9

end

end A217626.P17504825328365189088

/-! ## A217626.P17577578816637237449

`Δ[A171571(1+n)]`
-/

namespace A217626.P17577578816637237449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171571 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P17577578816637237449

/-! ## A217626.P15325528369885225922

`Δ[A191820(n+1)]`
-/

namespace A217626.P15325528369885225922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P15325528369885225922

/-! ## A217626.P615117433437531618

`Δ[A215940(n+1)]`
-/

namespace A217626.P615117433437531618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P615117433437531618

/-! ## A217626.P12848499880332969727

`Δ[A050278(n+1)/9]`
-/

namespace A217626.P12848499880332969727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P12848499880332969727

/-! ## A217626.P10164249500984322280

`Δ[A050289(n+1)/9]`
-/

namespace A217626.P10164249500984322280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050289 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P10164249500984322280

/-! ## A217626.P8704402204632441818

`Δ[A178478(n+1)/9]`
-/

namespace A217626.P8704402204632441818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178478 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P8704402204632441818

/-! ## A217626.P10786391651588375929

`A171571(n+2)-A171571(n+1)`
-/

namespace A217626.P10786391651588375929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171571 (n + 2) - A171571 (n + 1)

end

end A217626.P10786391651588375929

/-! ## A217626.P9898404069132827968

`A191820(n+2)-A191820(n+1)`
-/

namespace A217626.P9898404069132827968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191820 (n + 2) - A191820 (n + 1)

end

end A217626.P9898404069132827968

/-! ## A217626.P15991291241299984591

`Δ[A191819(n+1)]`
-/

namespace A217626.P15991291241299984591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P15991291241299984591

/-! ## A217626.P4867047250229321216

`Δ[A178477(n+1)/9]`
-/

namespace A217626.P4867047250229321216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178477 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P4867047250229321216

/-! ## A217626.P1186840790154686512

`A191819(n+2)-A191819(n+1)`
-/

namespace A217626.P1186840790154686512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191819 (n + 2) - A191819 (n + 1)

end

end A217626.P1186840790154686512

/-! ## A217626.P12858251180116051312

`Δ[A178486(n+1)]`
-/

namespace A217626.P12858251180116051312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P12858251180116051312

/-! ## A217626.P14398266691841179493

`Δ[A178476(n+1)/9]`
-/

namespace A217626.P14398266691841179493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178476 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P14398266691841179493

/-! ## A217626.P207573372387412495

`A178486(n+2)-A178486(n+1)`
-/

namespace A217626.P207573372387412495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178486 (n + 2) - A178486 (n + 1)

end

end A217626.P207573372387412495

/-! ## A217626.P10283670203473814287

`Δ[A178485(n+1)]`
-/

namespace A217626.P10283670203473814287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P10283670203473814287

/-! ## A217626.P7599858563686375829

`A107346(n+1)/9`
-/

namespace A217626.P7599858563686375829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107346 (n + 1) : ℚ) / 9

end

end A217626.P7599858563686375829

/-! ## A217626.P9253953629869563695

`Δ[floor(A178475(n+1)/9)]`
-/

namespace A217626.P9253953629869563695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178475 (n + 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217626.P9253953629869563695

/-! ## A217626.P8979372277816343933

`A106610(A219664(n+1))`
-/

namespace A217626.P8979372277816343933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A219664 (n + 1)).toNat

end

end A217626.P8979372277816343933

/-!
# A217627: a(n) is the sum of the products of the nonzero digits of the numbers from 1 to n.

The programs for A217627, the canonical program `A217627.P16981509562900591611` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217627 has offset 1).

The definition of A217627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217627.P14955931799510460033

`∑[sqrt(∏{digits}[n+1, gcd(#², #^#)])]`
-/

namespace A217627.P14955931799510460033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.gcd (x ^ 2) (x ^ x)).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P14955931799510460033

namespace A217627

/-- `∑[sqrt(∏{digits}[n+1, gcd(#², #^#)])]` -/
def P14955931799510460033.Spec : Prop :=
  ∀ n, P14955931799510460033.a n = (A217627 (n + 1) : ℝ)

end A217627

/-! ## A217627.P16981509562900591611

`∑[A051801(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217627

/-- `∑[A051801(n+1)]` -/
def P16981509562900591611.Spec : Prop :=
  ∀ n, P16981509562900591611.a n = A217627 (n + 1)

theorem P16981509562900591611.correct : P16981509562900591611.Spec := by
  intro n
  simp only [A217627, Nat.add_sub_cancel]

end A217627

/-! ## A217627.P11325852125220127364

`∑[sqrt(A352598(n+1))]`
-/

namespace A217627.P11325852125220127364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352598 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P11325852125220127364

namespace A217627

/-- `∑[sqrt(A352598(n+1))]` -/
def P11325852125220127364.Spec : Prop :=
  ∀ n, P11325852125220127364.a n = (A217627 (n + 1) : ℝ)

end A217627

/-! ## A217627.P9208493134015846841

`∑[∏{digits}[n+1, A028310(#)]]`
-/

namespace A217627.P9208493134015846841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A028310 x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P9208493134015846841

namespace A217627

/-- `∑[∏{digits}[n+1, A028310(#)]]` -/
def P9208493134015846841.Spec : Prop :=
  ∀ n, P9208493134015846841.a n = A217627 (n + 1)

end A217627

/-! ## A217627.P14772746249732504833

`∑[A063114(n+1)-(n+1)]`
-/

namespace A217627.P14772746249732504833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063114 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P14772746249732504833

namespace A217627

/-- `∑[A063114(n+1)-(n+1)]` -/
def P14772746249732504833.Spec : Prop :=
  ∀ n, P14772746249732504833.a n = A217627 (n + 1)

theorem P14772746249732504833.correct : P14772746249732504833.Spec := by
  intro n
  simp only [A217627, Nat.add_sub_cancel, A217627.P14772746249732504833.f1, A217627.P14772746249732504833.a, A217627.P16981509562900591611.f1, A217627.P16981509562900591611.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A063114, A063114.P7069837411164582979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217627

/-! ## A217627.P6030643738712978241

`∑[1-A063543(n+1)+n]`
-/

namespace A217627.P6030643738712978241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063543 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P6030643738712978241

namespace A217627

/-- `∑[1-A063543(n+1)+n]` -/
def P6030643738712978241.Spec : Prop :=
  ∀ n, P6030643738712978241.a n = A217627 (n + 1)

theorem P6030643738712978241.correct : P6030643738712978241.Spec := by
  intro n
  simp only [A217627, Nat.add_sub_cancel, A217627.P6030643738712978241.f1, A217627.P6030643738712978241.a, A217627.P16981509562900591611.f1, A217627.P16981509562900591611.a, A051801, A051801.P15997932515151970978.f1, A051801.P15997932515151970978.a, A063543, A063543.P3901565496532426814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217627

/-! ## A217627.P615618041491933214

`∑[A007954(A004185(n+1))]`
-/

namespace A217627.P615618041491933214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A004185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P615618041491933214

namespace A217627

/-- `∑[A007954(A004185(n+1))]` -/
def P615618041491933214.Spec : Prop :=
  ∀ n, P615618041491933214.a n = A217627 (n + 1)

end A217627

/-! ## A217627.P13191218966305497748

`∑[A089898(A235049(n+1))]`
-/

namespace A217627.P13191218966305497748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A235049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P13191218966305497748

namespace A217627

/-- `∑[A089898(A235049(n+1))]` -/
def P13191218966305497748.Spec : Prop :=
  ∀ n, P13191218966305497748.a n = A217627 (n + 1)

end A217627

/-! ## A217627.P3582440144746021874

`∑[∏{digits}[n+1, A321445(A000196(#))+#]]`
-/

namespace A217627.P3582440144746021874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A321445 (A000196 x).toNat + (x : ℤ)).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P3582440144746021874

namespace A217627

/-- `∑[∏{digits}[n+1, A321445(A000196(#))+#]]` -/
def P3582440144746021874.Spec : Prop :=
  ∀ n, P3582440144746021874.a n = A217627 (n + 1)

end A217627

/-! ## A217627.P1778639468404779177

`∑[A230101(n+1)/(n+1)]`
-/

namespace A217627.P1778639468404779177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230101 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P1778639468404779177

namespace A217627

/-- `∑[A230101(n+1)/(n+1)]` -/
def P1778639468404779177.Spec : Prop :=
  ∀ n, P1778639468404779177.a n = (A217627 (n + 1) : ℚ)

end A217627

/-! ## A217627.P3430223958087030177

`∑[A003963(A113581(n+1))]`
-/

namespace A217627.P3430223958087030177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A113581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217627.P3430223958087030177

namespace A217627

/-- `∑[A003963(A113581(n+1))]` -/
def P3430223958087030177.Spec : Prop :=
  ∀ n, P3430223958087030177.a n = A217627 (n + 1)

end A217627

/-!
# A217628: a(n) = 3^((n-1)*(n+2)/2).

The programs for A217628, the canonical program `A217628.P13343617556755627470` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217628 has offset 1).

The definition of A217628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217628.P2392853844555754688

`3^(n*(n+3)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217628.P2392853844555754688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n * (n + 3) : ℚ) / 2 : ℝ)

end

end A217628.P2392853844555754688

namespace A217628

/-- `3^(n*(n+3)/2)` -/
def P2392853844555754688.Spec : Prop :=
  ∀ n, P2392853844555754688.a n = (A217628 (n + 1) : ℝ)

end A217628

/-! ## A217628.P13343617556755627470

`a(n-1)*3^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217628

/-- `a(n-1)*3^(n+1)` -/
def P13343617556755627470.Spec : Prop :=
  ∀ n, (P13343617556755627470.a n : ℤ) = A217628 (n + 1)

theorem P13343617556755627470.correct : P13343617556755627470.Spec := by
  intro n
  simp only [A217628, Nat.add_sub_cancel]

end A217628

/-! ## A217628.P7558505024261041032

`record[3^(C(n, 2)-n)]`
-/

namespace A217628.P7558505024261041032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose n 2 : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217628.P7558505024261041032

namespace A217628

/-- `record[3^(C(n, 2)-n)]` -/
def P7558505024261041032.Spec : Prop :=
  ∀ n, P7558505024261041032.a n = (A217628 (n + 1) : ℚ)

end A217628

/-! ## A217628.P13396478802616562064

`3^(∑[gcd(n, n)]+n)`
-/

namespace A217628.P13396478802616562064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A217628.P13396478802616562064

namespace A217628

/-- `3^(∑[gcd(n, n)]+n)` -/
def P13396478802616562064.Spec : Prop :=
  ∀ n, (P13396478802616562064.a n : ℤ) = A217628 (n + 1)

end A217628

/-! ## A217628.P9389877585610516136

`3^(∑[runs[row(n)]]-1)`
-/

namespace A217628.P9389877585610516136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ)

end

end A217628.P9389877585610516136

namespace A217628

/-- `3^(∑[runs[row(n)]]-1)` -/
def P9389877585610516136.Spec : Prop :=
  ∀ n, P9389877585610516136.a n = (A217628 (n + 1) : ℚ)

end A217628

/-!
# A217629: Triangle, read by rows, where T(n,k) = k!*C(n, k)*3^(n-k) for n>=0, k=0..n.

The programs for A217629, the canonical program `A217629.P13508526125650444563` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217629 has offset 0).

The definition of A217629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217629.P13508526125650444563

`col(n)!*C(row(n), col(n))*3^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217629

/-- `col(n)!*C(row(n), col(n))*3^(row(n)-col(n))` -/
def P13508526125650444563.Spec : Prop :=
  ∀ n, P13508526125650444563.a n = (A217629 n : ℚ)

end A217629

/-! ## A217629.P7157920392656075165

`3^(row(n)-col(n))*row(n)!/(row(n)-col(n))!`
-/

namespace A217629.P7157920392656075165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A217629.P7157920392656075165

namespace A217629

/-- `3^(row(n)-col(n))*row(n)!/(row(n)-col(n))!` -/
def P7157920392656075165.Spec : Prop :=
  ∀ n, P7157920392656075165.a n = (A217629 n : ℚ)

end A217629

/-! ## A217629.P17760667852051345823

`col(n)*T(n-1,k-1)+3*T(n-1,k)` with `a(0)=1`
-/

namespace A217629.P17760667852051345823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol n * SequenceMachineLib.triUpLeft a n + 3 * SequenceMachineLib.triUp a n

end

end A217629.P17760667852051345823

namespace A217629

/-- `col(n)*T(n-1,k-1)+3*T(n-1,k)` -/
def P17760667852051345823.Spec : Prop :=
  ∀ n, (P17760667852051345823.a n : ℤ) = A217629 n

end A217629

/-! ## A217629.P12480314723931157428

`col(n)*T(n-1,k-1)-3*(T(n-1,k)-2*T(n-1,k))` with `a(0)=1`
-/

namespace A217629.P12480314723931157428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUpLeft a n - 3 * (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n)

end

end A217629.P12480314723931157428

namespace A217629

/-- `col(n)*T(n-1,k-1)-3*(T(n-1,k)-2*T(n-1,k))` -/
def P12480314723931157428.Spec : Prop :=
  ∀ n, P12480314723931157428.a n = A217629 n

end A217629

/-! ## A217629.P6608958405906649412

`col(n)!*A027465(n)`
-/

namespace A217629.P6608958405906649412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A027465 n

end

end A217629.P6608958405906649412

namespace A217629

/-- `col(n)!*A027465(n)` -/
def P6608958405906649412.Spec : Prop :=
  ∀ n, P6608958405906649412.a n = A217629 n

end A217629

/-! ## A217629.P16760759575641433960

`A008279(n)*A140303(n)`
-/

namespace A217629.P16760759575641433960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A140303 n

end

end A217629.P16760759575641433960

namespace A217629

/-- `A008279(n)*A140303(n)` -/
def P16760759575641433960.Spec : Prop :=
  ∀ n, P16760759575641433960.a n = A217629 n

end A217629

/-! ## A217629.P3765397931881655290

`A027465(n)*A233543(n)`
-/

namespace A217629.P3765397931881655290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A233543 n

end

end A217629.P3765397931881655290

namespace A217629

/-- `A027465(n)*A233543(n)` -/
def P3765397931881655290.Spec : Prop :=
  ∀ n, P3765397931881655290.a n = A217629 n

end A217629

/-! ## A217629.P4637830616145946247

`A002262(n)!*A027465(n)`
-/

namespace A217629.P4637830616145946247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A027465 n

end

end A217629.P4637830616145946247

namespace A217629

/-- `A002262(n)!*A027465(n)` -/
def P4637830616145946247.Spec : Prop :=
  ∀ n, P4637830616145946247.a n = A217629 n

end A217629

/-! ## A217629.P17949896889057072728

`A144328(n+1)!*A027465(n)`
-/

namespace A217629.P17949896889057072728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A027465 n

end

end A217629.P17949896889057072728

namespace A217629

/-- `A144328(n+1)!*A027465(n)` -/
def P17949896889057072728.Spec : Prop :=
  ∀ n, P17949896889057072728.a n = A217629 n

end A217629

/-! ## A217629.P12860357807848927485

`A000244(A025581(n))*A008279(n)`
-/

namespace A217629.P12860357807848927485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A008279 n

end

end A217629.P12860357807848927485

namespace A217629

/-- `A000244(A025581(n))*A008279(n)` -/
def P12860357807848927485.Spec : Prop :=
  ∀ n, P12860357807848927485.a n = A217629 n

end A217629

/-! ## A217629.P13118887569236736136

`A008279(n)/A007318(n)*A027465(n)`
-/

namespace A217629.P13118887569236736136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A217629.P13118887569236736136

namespace A217629

/-- `A008279(n)/A007318(n)*A027465(n)` -/
def P13118887569236736136.Spec : Prop :=
  ∀ n, P13118887569236736136.a n = (A217629 n : ℚ)

end A217629

/-! ## A217629.P9953417091197572303

`A051141(n+1)/A008275(n+1)*A008279(n)`
-/

namespace A217629.P9953417091197572303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051141 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A217629.P9953417091197572303

namespace A217629

/-- `A051141(n+1)/A008275(n+1)*A008279(n)` -/
def P9953417091197572303.Spec : Prop :=
  ∀ n, P9953417091197572303.a n = (A217629 n : ℚ)

end A217629

/-! ## A217629.P3110268797009766471

`A008279(n)*A348994(A130321(n))`
-/

namespace A217629.P3110268797009766471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A348994 (A130321 n).toNat

end

end A217629.P3110268797009766471

namespace A217629

/-- `A008279(n)*A348994(A130321(n))` -/
def P3110268797009766471.Spec : Prop :=
  ∀ n, P3110268797009766471.a n = A217629 n

end A217629

/-!
# A217630: Number of n X n arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 n X n array.

The programs for A217630, there is no canonical definition to state claims against.
-/

/-! ## A217630.P10471892808408989148

`A217637(∑[4*n]+1)`
-/

namespace A217630.P10471892808408989148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217630.P10471892808408989148

/-! ## A217630.P51573576591502608

`lcm(2, A217637(A001844(n)))`
-/

namespace A217630.P51573576591502608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A217637 (A001844 n).toNat)

end

end A217630.P51573576591502608

/-! ## A217630.P851517257846227854

`record[A003982(n)*A217637(n+1)]`
-/

namespace A217630.P851517257846227854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A217637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217630.P851517257846227854

/-! ## A217630.P7287132689089290581

`record[gcd(A114327(n), A217637(n+1))]`
-/

namespace A217630.P7287132689089290581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A217637 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217630.P7287132689089290581

/-! ## A217630.P10425399279513982488

`record[A010052(2*n+1)*A217637(n+1)]`
-/

namespace A217630.P10425399279513982488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A217637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217630.P10425399279513982488

/-!
# A217631: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 n X 2 array.

The programs for A217631, the canonical program `A217631.P17930574033153586690` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217631 has offset 0).

The definition of A217631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217631.P17930574033153586690

`ogf((2x+4x^2+4x^3)/(1-x-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217631

/-- `ogf((2x+4x^2+4x^3)/(1-x-3x^2-2x^3))` -/
def P17930574033153586690.Spec : Prop :=
  ∀ n, P17930574033153586690.a n = A217631 n

theorem P17930574033153586690.correct : P17930574033153586690.Spec := by
  intro n
  simp only [A217631]

end A217631

/-! ## A217631.P4556354730750123538

`a(n-1)+3*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=16`
-/

namespace A217631.P4556354730750123538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 6, 16] fun n a =>
  a (n - 1) + 3 * a (n - 2) + 2 * a (n - 3)

end

end A217631.P4556354730750123538

namespace A217631

/-- `a(n-1)+3*a(n-2)+2*a(n-3)` -/
def P4556354730750123538.Spec : Prop :=
  ∀ n, (P4556354730750123538.a n : ℤ) = A217631 n

end A217631

/-! ## A217631.P641135327304687784

`A217637(A133263(n))-A000038(n)`
-/

namespace A217631.P641135327304687784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A133263 n).toNat - A000038 n

end

end A217631.P641135327304687784

namespace A217631

/-- `A217637(A133263(n))-A000038(n)` -/
def P641135327304687784.Spec : Prop :=
  ∀ n, P641135327304687784.a n = A217631 n

end A217631

/-! ## A217631.P2678655244728150233

`A178334(n)*A217637(A133263(n))`
-/

namespace A217631.P2678655244728150233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A217637 (A133263 n).toNat

end

end A217631.P2678655244728150233

namespace A217631

/-- `A178334(n)*A217637(A133263(n))` -/
def P2678655244728150233.Spec : Prop :=
  ∀ n, P2678655244728150233.a n = A217631 n

end A217631

/-! ## A217631.P4662075434739836885

`A217637(A133263(n))%A001025(n)`
-/

namespace A217631.P4662075434739836885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217637 (A133263 n).toNat) (A001025 n)

end

end A217631.P4662075434739836885

namespace A217631

/-- `A217637(A133263(n))%A001025(n)` -/
def P4662075434739836885.Spec : Prop :=
  ∀ n, P4662075434739836885.a n = A217631 n

end A217631

/-!
# A217632: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 nX3 array.

The programs for A217632, there is no canonical definition to state claims against.
-/

/-! ## A217632.P323824090092861398

`A217637(A034856(n+1))-A000038(n)`
-/

namespace A217632.P323824090092861398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A034856 (n + 1)).toNat - A000038 n

end

end A217632.P323824090092861398

/-! ## A217632.P2944525989716376902

`A178334(n)*A217637(A034856(n+1))`
-/

namespace A217632.P2944525989716376902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A217637 (A034856 (n + 1)).toNat

end

end A217632.P2944525989716376902

/-! ## A217632.P5861498234849599004

`A217637(A034856(n+1))%A001025(n)`
-/

namespace A217632.P5861498234849599004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217637 (A034856 (n + 1)).toNat) (A001025 n)

end

end A217632.P5861498234849599004

/-! ## A217632.P18106224225774234704

`lcm(A217637(A034856(n+1)), A268318(n))`
-/

namespace A217632.P18106224225774234704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A217637 (A034856 (n + 1)).toNat) (A268318 n)

end

end A217632.P18106224225774234704

/-! ## A217632.P10457556656171215883

`and(A057428(n), A217637(A034856(n+1)))`
-/

namespace A217632.P10457556656171215883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A217637 (A034856 (n + 1)).toNat)

end

end A217632.P10457556656171215883

/-!
# A217633: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 n X 4 array.

The programs for A217633, there is no canonical definition to state claims against.
-/

/-! ## A217633.P3410640411552207984

`A217637(A374004(n+1))`
-/

namespace A217633.P3410640411552207984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A374004 (n + 1)).toNat

end

end A217633.P3410640411552207984

/-! ## A217633.P5592066675501579488

`A217637(A141214(n)+7)`
-/

namespace A217633.P5592066675501579488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A141214 n + 7).toNat

end

end A217633.P5592066675501579488

/-! ## A217633.P2233455488401560882

`A217637(A167614(n+2)+1)`
-/

namespace A217633.P2233455488401560882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A167614 (n + 2) + 1).toNat

end

end A217633.P2233455488401560882

/-! ## A217633.P15314215796709637758

`A217637(A000096(n+2)+5)`
-/

namespace A217633.P15314215796709637758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A000096 (n + 2) + 5).toNat

end

end A217633.P15314215796709637758

/-! ## A217633.P4003767419261569633

`A217637(A034856(n+2)+6)`
-/

namespace A217633.P4003767419261569633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A034856 (n + 2) + 6).toNat

end

end A217633.P4003767419261569633

/-!
# A217634: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 nX5 array.

The programs for A217634, there is no canonical definition to state claims against.
-/

/-! ## A217634.P6736861417810114589

`A217637(A374005(n+1))`
-/

namespace A217634.P6736861417810114589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A374005 (n + 1)).toNat

end

end A217634.P6736861417810114589

/-! ## A217634.P974775155431705730

`A217637(A167499(n+3))`
-/

namespace A217634.P974775155431705730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A167499 (n + 3)).toNat

end

end A217634.P974775155431705730

/-! ## A217634.P13338095972711666791

`A217637(A056000(n)+15)`
-/

namespace A217634.P13338095972711666791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A056000 n + 15).toNat

end

end A217634.P13338095972711666791

/-! ## A217634.P16181294032257229490

`A217637(A034856(n+3)+7)`
-/

namespace A217634.P16181294032257229490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A034856 (n + 3) + 7).toNat

end

end A217634.P16181294032257229490

/-! ## A217634.P3223413058876292260

`A217637(eq[4, A002262(n)]+1)`
-/

namespace A217634.P3223413058876292260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217634.P3223413058876292260

/-!
# A217635: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 nX6 array.

The programs for A217635, there is no canonical definition to state claims against.
-/

/-! ## A217635.P3049331644269348895

`A217637(A374007(n+1))`
-/

namespace A217635.P3049331644269348895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A374007 (n + 1)).toNat

end

end A217635.P3049331644269348895

/-! ## A217635.P12704291397512353362

`A217637(A166136(n+4))`
-/

namespace A217635.P12704291397512353362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A166136 (n + 4)).toNat

end

end A217635.P12704291397512353362

/-! ## A217635.P11459986116327776188

`A217637(A056115(n)+21)`
-/

namespace A217635.P11459986116327776188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A056115 n + 21).toNat

end

end A217635.P11459986116327776188

/-! ## A217635.P8042115598752486434

`A217637(A052905(n+3))`
-/

namespace A217635.P8042115598752486434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A052905 (n + 3)).toNat

end

end A217635.P8042115598752486434

/-! ## A217635.P6574594230145136478

`A217637(eq[3, A219347(n)])`
-/

namespace A217635.P6574594230145136478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217635.P6574594230145136478

/-!
# A217636: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 nX7 array.

The programs for A217636, there is no canonical definition to state claims against.
-/

/-! ## A217636.P17883435834335763368

`A217637(A374008(n+1))`
-/

namespace A217636.P17883435834335763368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A374008 (n + 1)).toNat

end

end A217636.P17883435834335763368

/-! ## A217636.P7994735133935925815

`A217637(A167499(n+5)+2)`
-/

namespace A217636.P7994735133935925815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A167499 (n + 5) + 2).toNat

end

end A217636.P7994735133935925815

/-! ## A217636.P14403858336753686820

`A217637(A133263(n+6)+5)`
-/

namespace A217636.P14403858336753686820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (A133263 (n + 6) + 5).toNat

end

end A217636.P14403858336753686820

/-! ## A217636.P4484408242759023915

`A217637(eq[6, A002262(n)]+1)`
-/

namespace A217636.P4484408242759023915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217636.P4484408242759023915

/-! ## A217636.P13978588747965167598

`A217637(eq[8, A131818(n+1)])`
-/

namespace A217636.P13978588747965167598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217636.P13978588747965167598

/-!
# A217637: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal and vertical neighbors in a random 0..1 nXk array.

The programs for A217637, there is no canonical definition to state claims against.
-/

/-! ## A217637.P2185797479550465645

`A390769(A261964(n+1))`
-/

namespace A217637.P2185797479550465645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390769 (A261964 (n + 1)).toNat

end

end A217637.P2185797479550465645

/-! ## A217637.P17392188590025850548

`2*A102705(A055375(n))`
-/

namespace A217637.P17392188590025850548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102705 (A055375 n).toNat

end

end A217637.P17392188590025850548

/-! ## A217637.P14098714633817139624

`A390769(A177847(n+1))`
-/

namespace A217637.P14098714633817139624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390769 (A177847 (n + 1)).toNat

end

end A217637.P14098714633817139624

/-! ## A217637.P14053145012972573369

`A329129(6*A207015(n+1))`
-/

namespace A217637.P14053145012972573369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (6 * A207015 (n + 1)).toNat

end

end A217637.P14053145012972573369

/-! ## A217637.P6877440240980617933

`A329129(A207015(n+1)+lcm(5, A207015(n+1)))`
-/

namespace A217637.P6877440240980617933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (A207015 (n + 1) + (Int.lcm 5 (A207015 (n + 1)) : ℤ)).toNat

end

end A217637.P6877440240980617933

/-!
# A217638: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 n X n array.

The programs for A217638, there is no canonical definition to state claims against.
-/

/-! ## A217638.P15655791813155418727

`A217645(∑[4*n]+1)`
-/

namespace A217638.P15655791813155418727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217638.P15655791813155418727

/-! ## A217638.P6464948801725269534

`or(1, A217645(A001844(n)))`
-/

namespace A217638.P6464948801725269534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217645 (A001844 n).toNat)

end

end A217638.P6464948801725269534

/-! ## A217638.P4030719794805278528

`record[gcd(A008482(n), A217645(n+1))]`
-/

namespace A217638.P4030719794805278528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A217645 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217638.P4030719794805278528

/-! ## A217638.P18070882488574383667

`A217645(A001844(n))+A056965(n)`
-/

namespace A217638.P18070882488574383667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A001844 n).toNat + A056965 n

end

end A217638.P18070882488574383667

/-! ## A217638.P17030656920600136334

`A007318(C(2, n))*A217645(A001844(n))`
-/

namespace A217638.P17030656920600136334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A217645 (A001844 n).toNat

end

end A217638.P17030656920600136334

/-!
# A217639: Number of nX2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nX2 array.

The programs for A217639, the canonical program `A217639.P11028248841737426346` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217639 has offset 1).

The definition of A217639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217639.P5376853359891587742

`ogf((3+3x+x^3-3x^4+x^5)/(1-2x-3x^2-3x^3-2x^4+x^6))`
-/

namespace A217639.P5376853359891587742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 0, 1, -3, 1] [1, -2, -3, -3, -2, 0, 1] n

end

end A217639.P5376853359891587742

namespace A217639

/-- `ogf((3+3x+x^3-3x^4+x^5)/(1-2x-3x^2-3x^3-2x^4+x^6))` -/
def P5376853359891587742.Spec : Prop :=
  ∀ n, P5376853359891587742.a n = A217639 (n + 1)

end A217639

/-! ## A217639.P11028248841737426346

`2*a(n-1)+3*a(n-2)+3*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=3, a(1)=9, a(2)=27, a(3)=91, a(4)=293, a(5)=959`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217639

/-- `2*a(n-1)+3*a(n-2)+3*a(n-3)+2*a(n-4)-a(n-6)` -/
def P11028248841737426346.Spec : Prop :=
  ∀ n, P11028248841737426346.a n = A217639 (n + 1)

theorem P11028248841737426346.correct : P11028248841737426346.Spec := by
  intro n
  simp only [A217639, Nat.add_sub_cancel]

end A217639

/-! ## A217639.P9378447078516421202

`A217645(∑[n+1]+2)`
-/

namespace A217639.P9378447078516421202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217639.P9378447078516421202

namespace A217639

/-- `A217645(∑[n+1]+2)` -/
def P9378447078516421202.Spec : Prop :=
  ∀ n, P9378447078516421202.a n = A217639 (n + 1)

end A217639

/-! ## A217639.P1875056297022209779

`or(1, A217645(A133263(n+1)))`
-/

namespace A217639.P1875056297022209779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217645 (A133263 (n + 1)).toNat)

end

end A217639.P1875056297022209779

namespace A217639

/-- `or(1, A217645(A133263(n+1)))` -/
def P1875056297022209779.Spec : Prop :=
  ∀ n, P1875056297022209779.a n = A217639 (n + 1)

end A217639

/-! ## A217639.P2668229107752314848

`or(1, A217645(A000096(n)+3))`
-/

namespace A217639.P2668229107752314848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217645 (A000096 n + 3).toNat)

end

end A217639.P2668229107752314848

namespace A217639

/-- `or(1, A217645(A000096(n)+3))` -/
def P2668229107752314848.Spec : Prop :=
  ∀ n, P2668229107752314848.a n = A217639 (n + 1)

end A217639

/-!
# A217640: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A217640, there is no canonical definition to state claims against.
-/

/-! ## A217640.P1560380557149740027

`A217645(∑[n+2]+4)`
-/

namespace A217640.P1560380557149740027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217640.P1560380557149740027

/-! ## A217640.P15751966379538570601

`or(1, A217645(A167614(n+1)))`
-/

namespace A217640.P15751966379538570601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A217645 (A167614 (n + 1)).toNat)

end

end A217640.P15751966379538570601

/-! ## A217640.P11895074977960565396

`A217645(A167614(n+1))+A086015(n)`
-/

namespace A217640.P11895074977960565396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A167614 (n + 1)).toNat + A086015 n

end

end A217640.P11895074977960565396

/-! ## A217640.P12987311161980239569

`A217645(A167614(n+1))+A185284(n)`
-/

namespace A217640.P12987311161980239569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A167614 (n + 1)).toNat + A185284 n

end

end A217640.P12987311161980239569

/-! ## A217640.P9955687076955243299

`lcm(A020985(n), A217645(A167614(n+1)))`
-/

namespace A217640.P9955687076955243299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A217645 (A167614 (n + 1)).toNat)

end

end A217640.P9955687076955243299

/-!
# A217641: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A217641, there is no canonical definition to state claims against.
-/

/-! ## A217641.P14770392803788830574

`A217645(A145018(n+4))`
-/

namespace A217641.P14770392803788830574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A145018 (n + 4)).toNat

end

end A217641.P14770392803788830574

/-! ## A217641.P6528037075665340827

`A217645(A141214(n)+7)`
-/

namespace A217641.P6528037075665340827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A141214 n + 7).toNat

end

end A217641.P6528037075665340827

/-! ## A217641.P8589062877390642665

`A217645(A052905(n)+9)`
-/

namespace A217641.P8589062877390642665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A052905 n + 9).toNat

end

end A217641.P8589062877390642665

/-! ## A217641.P13316998822913167536

`A217645(A055999(n)+10)`
-/

namespace A217641.P13316998822913167536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A055999 n + 10).toNat

end

end A217641.P13316998822913167536

/-! ## A217641.P9712877411026595774

`A217645(A167614(n+2)+1)`
-/

namespace A217641.P9712877411026595774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A167614 (n + 2) + 1).toNat

end

end A217641.P9712877411026595774

/-!
# A217642: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A217642, there is no canonical definition to state claims against.
-/

/-! ## A217642.P13271137795785494254

`A217645(A167499(n+3))`
-/

namespace A217642.P13271137795785494254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A167499 (n + 3)).toNat

end

end A217642.P13271137795785494254

/-! ## A217642.P3667543229739821329

`A217645(A155212(n)+13)`
-/

namespace A217642.P3667543229739821329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A155212 n + 13).toNat

end

end A217642.P3667543229739821329

/-! ## A217642.P15895607905857116676

`A217645(A056000(n)+15)`
-/

namespace A217642.P15895607905857116676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A056000 n + 15).toNat

end

end A217642.P15895607905857116676

/-! ## A217642.P10920526347345792541

`A217645(eq[7, A066657(n)])`
-/

namespace A217642.P10920526347345792541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217642.P10920526347345792541

/-! ## A217642.P12537766291930235880

`A217645(eq[4, A002262(n)]+1)`
-/

namespace A217642.P12537766291930235880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217642.P12537766291930235880

/-!
# A217643: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A217643, there is no canonical definition to state claims against.
-/

/-! ## A217643.P14116199949051589930

`A217645(eq[7, A131818(n+1)])`
-/

namespace A217643.P14116199949051589930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217643.P14116199949051589930

/-! ## A217643.P14755236641041070606

`A217645(A000124(n+7)-8-2*n)`
-/

namespace A217643.P14755236641041070606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A000124 (n + 7) - 8 - (2 * n : ℤ)).toNat

end

end A217643.P14755236641041070606

/-! ## A217643.P11593341553538353369

`A217645(A374007(n+1))`
-/

namespace A217643.P11593341553538353369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A374007 (n + 1)).toNat

end

end A217643.P11593341553538353369

/-! ## A217643.P13101941615414084347

`A217645(eq[3, A219347(n)])`
-/

namespace A217643.P13101941615414084347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217643.P13101941615414084347

/-! ## A217643.P12730513522711655310

`A217645(eq[5, A193592(n)])`
-/

namespace A217643.P12730513522711655310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217643.P12730513522711655310

/-!
# A217644: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nX7 array.

The programs for A217644, there is no canonical definition to state claims against.
-/

/-! ## A217644.P8964360264074173105

`A217645(eq[6, A002262(n)]+1)`
-/

namespace A217644.P8964360264074173105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217644.P8964360264074173105

/-! ## A217644.P478035747092695289

`A217645(eq[8, A131818(n+1)])`
-/

namespace A217644.P478035747092695289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217644.P478035747092695289

/-! ## A217644.P9703048346499659068

`A217645(A374008(n+1))`
-/

namespace A217644.P9703048346499659068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (A374008 (n + 1)).toNat

end

end A217644.P9703048346499659068

/-! ## A217644.P10315577665215919936

`A217645(eq[4, A219347(n)])`
-/

namespace A217644.P10315577665215919936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217644.P10315577665215919936

/-! ## A217644.P13860960596987349999

`A217645(eq[6, A193592(n)])`
-/

namespace A217644.P13860960596987349999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217644.P13860960596987349999

/-!
# A217645: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..2 nXk array.

The programs for A217645, there is no canonical definition to state claims against.
-/

/-! ## A217645.P8928691704636272854

`A072203(A231023(n+1)+6)`
-/

namespace A217645.P8928691704636272854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (A231023 (n + 1) + 6).toNat

end

end A217645.P8928691704636272854

/-! ## A217645.P5303729439330613496

`A123716(A026374(n)*A217547(n+1))`
-/

namespace A217645.P5303729439330613496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123716 (A026374 n * A217547 (n + 1)).toNat

end

end A217645.P5303729439330613496

/-!
# A217648: Primes of the form 2*k!!! + 1.

The programs for A217648, there is no canonical definition to state claims against.
-/

/-! ## A217648.P16174562614411177793

`2*A007661(A217647(n+1))+1`
-/

namespace A217648.P16174562614411177793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007661 (A217647 (n + 1)).toNat + 1

end

end A217648.P16174562614411177793

/-! ## A217648.P14200226671677672385

`p?[(n-1)*a(n-3)-(n-2)]` with `a(0)=3, a(1)=3, a(2)=0`
-/

namespace A217648.P14200226671677672385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 3) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217648.P14200226671677672385

/-! ## A217648.P7916464970738831167

`p?[2*A007661(n)+1]`
-/

namespace A217648.P7916464970738831167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007661 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217648.P7916464970738831167

/-!
# A217649: a(n) = n!! mod n!!!

The programs for A217649, the canonical program `A217649.P16390829101275016253` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217649 has offset 0).

The definition of A217649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217649.P16390829101275016253

`A006882(n)%A007661(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217649

/-- `A006882(n)%A007661(n)` -/
def P16390829101275016253.Spec : Prop :=
  ∀ n, P16390829101275016253.a n = A217649 n

theorem P16390829101275016253.correct : P16390829101275016253.Spec := by
  intro n
  simp only [A217649]

end A217649

/-! ## A217649.P9595228915341860838

`A216466(n)%A007661(n)`
-/

namespace A217649.P9595228915341860838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216466 n) (A007661 n)

end

end A217649.P9595228915341860838

namespace A217649

/-- `A216466(n)%A007661(n)` -/
def P9595228915341860838.Spec : Prop :=
  ∀ n, P9595228915341860838.a n = A217649 n

end A217649

/-! ## A217649.P8516693467256916790

`A172089(A000124(n))%A007661(n)`
-/

namespace A217649.P8516693467256916790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172089 (A000124 n).toNat) (A007661 n)

end

end A217649.P8516693467256916790

namespace A217649

/-- `A172089(A000124(n))%A007661(n)` -/
def P8516693467256916790.Spec : Prop :=
  ∀ n, P8516693467256916790.a n = A217649 n

end A217649

/-! ## A217649.P16428497591921563383

`A172089(A253145(n))%A007661(n)`
-/

namespace A217649.P16428497591921563383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172089 (A253145 n).toNat) (A007661 n)

end

end A217649.P16428497591921563383

namespace A217649

/-- `A172089(A253145(n))%A007661(n)` -/
def P16428497591921563383.Spec : Prop :=
  ∀ n, P16428497591921563383.a n = A217649 n

end A217649

/-! ## A217649.P13730261188003018628

`A248809(A161680(n))%A007661(n)`
-/

namespace A217649.P13730261188003018628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248809 (A161680 n).toNat) (A007661 n)

end

end A217649.P13730261188003018628

namespace A217649

/-- `A248809(A161680(n))%A007661(n)` -/
def P13730261188003018628.Spec : Prop :=
  ∀ n, P13730261188003018628.a n = A217649 n

end A217649

/-! ## A217649.P8664868638501351700

`A230698(A000217(n))%A007661(n)`
-/

namespace A217649.P8664868638501351700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (A000217 n).toNat) (A007661 n)

end

end A217649.P8664868638501351700

namespace A217649

/-- `A230698(A000217(n))%A007661(n)` -/
def P8664868638501351700.Spec : Prop :=
  ∀ n, P8664868638501351700.a n = A217649 n

end A217649

/-!
# A217651: Primes of the form 2*k!!! - 1.

The programs for A217651, there is no canonical definition to state claims against.
-/

/-! ## A217651.P15293484120050086813

`p?[n*(a(n-3)+1)-1]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A217651.P15293484120050086813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  (n : ℤ) * (f1 (n - 3) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217651.P15293484120050086813

/-!
# A217652: Number of isolated nodes over all labeled directed graphs on n nodes.

The programs for A217652, the canonical program `A217652.P577651290128668821` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217652 has offset 0).

The definition of A217652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217652.P577651290128668821

`2^(n²-3*n+2)*n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217652

/-- `2^(n²-3*n+2)*n` -/
def P577651290128668821.Spec : Prop :=
  ∀ n, P577651290128668821.a n = (A217652 n : ℚ)

end A217652

/-! ## A217652.P4249857895239689703

`n*4^C(abs(n-1), 2)`
-/

namespace A217652.P4249857895239689703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.choose |(n : ℤ) - 1|.toNat 2

end

end A217652.P4249857895239689703

namespace A217652

/-- `n*4^C(abs(n-1), 2)` -/
def P4249857895239689703.Spec : Prop :=
  ∀ n, (P4249857895239689703.a n : ℤ) = A217652 n

end A217652

/-! ## A217652.P17250706011780540892

`floor(n*A011782(n)^(n-2))`
-/

namespace A217652.P17250706011780540892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (A011782 n : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A217652.P17250706011780540892

namespace A217652

/-- `floor(n*A011782(n)^(n-2))` -/
def P17250706011780540892.Spec : Prop :=
  ∀ n, P17250706011780540892.a n = A217652 n

end A217652

/-! ## A217652.P13337958021983585798

`round(n*A034008(n)^(n-1))`
-/

namespace A217652.P13337958021983585798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (A034008 n : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A217652.P13337958021983585798

namespace A217652

/-- `round(n*A034008(n)^(n-1))` -/
def P13337958021983585798.Spec : Prop :=
  ∀ n, P13337958021983585798.a n = A217652 n

end A217652

/-! ## A217652.P7811896796872639975

`A197927(n)/A011782(n)`
-/

namespace A217652.P7811896796872639975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197927 n : ℚ) / (A011782 n : ℚ)

end

end A217652.P7811896796872639975

namespace A217652

/-- `A197927(n)/A011782(n)` -/
def P7811896796872639975.Spec : Prop :=
  ∀ n, P7811896796872639975.a n = (A217652 n : ℚ)

end A217652

/-!
# A217653: Triangular array read by rows: T(n,k) is the number of unlabeled simple graphs with n nodes that have exactly k isolated nodes, (n>=0, 0<=k<=n).

The programs for A217653, there is no canonical definition to state claims against.
-/

/-! ## A217653.P1119540214889060868

`A002494(row(n)-col(n))`
-/

namespace A217653.P1119540214889060868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A217653.P1119540214889060868

/-! ## A217653.P3264633895755653313

`A002494(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A217653.P3264633895755653313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A217653.P3264633895755653313

/-! ## A217653.P14789433146355681320

`A002494(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A217653.P14789433146355681320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A217653.P14789433146355681320

/-! ## A217653.P11314711142806824873

`A002494(A025581(n))`
-/

namespace A217653.P11314711142806824873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A025581 n).toNat

end

end A217653.P11314711142806824873

/-! ## A217653.P527083969439986785

`A002494(log2(A130321(n)))`
-/

namespace A217653.P527083969439986785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A217653.P527083969439986785

/-! ## A217653.P4653661570933131939

`A002494(val(A036561(n), 2))`
-/

namespace A217653.P4653661570933131939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A217653.P4653661570933131939

/-! ## A217653.P17928390054604721219

`A002494(val(A130321(n), 2))`
-/

namespace A217653.P17928390054604721219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A217653.P17928390054604721219

/-! ## A217653.P18033741245714061317

`A002494(A004736(n+1)-1)`
-/

namespace A217653.P18033741245714061317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A004736 (n + 1) - 1).toNat

end

end A217653.P18033741245714061317

/-! ## A217653.P4579283076635727735

`A002494(A064801(n+1)-(2*n+1))`
-/

namespace A217653.P4579283076635727735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A064801 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A217653.P4579283076635727735

/-!
# A217654: Triangular array read by rows. T(n,k) is the number of unlabeled directed graphs of n nodes that have exactly k isolated nodes.

The programs for A217654, there is no canonical definition to state claims against.
-/

/-! ## A217654.P4591688314032563506

`A053598(A025581(n))`
-/

namespace A217654.P4591688314032563506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 (A025581 n).toNat

end

end A217654.P4591688314032563506

/-! ## A217654.P3034894612348847604

`A053598(val(A130321(n), 2))`
-/

namespace A217654.P3034894612348847604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 (SequenceMachineLib.valuation (A130321 n).toNat 2)

end

end A217654.P3034894612348847604

/-! ## A217654.P9716699598127286025

`A053598(A004736(n+1)-1)`
-/

namespace A217654.P9716699598127286025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 (A004736 (n + 1) - 1).toNat

end

end A217654.P9716699598127286025

/-! ## A217654.P1632431774326042406

`A053598(A002024(n+1)-A002260(n+1))`
-/

namespace A217654.P1632431774326042406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 (A002024 (n + 1) - A002260 (n + 1)).toNat

end

end A217654.P1632431774326042406

/-! ## A217654.P12120642467907459869

`A053598(∑{e}[A130321(n), #])`
-/

namespace A217654.P12120642467907459869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A217654.P12120642467907459869

/-!
# A217656: Primes p such that p = 361 + 420*k for some k.

The programs for A217656, the canonical program `A217656.P10697064785089551026` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217656 has offset 1).

The definition of A217656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217656.P14556908600099501324

`∩[A139644(n+1), A140687(n+1)]`
-/

namespace A217656.P14556908600099501324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P14556908600099501324

namespace A217656

/-- `∩[A139644(n+1), A140687(n+1)]` -/
def P14556908600099501324.Spec : Prop :=
  ∀ n, (P14556908600099501324.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P16709745227378396236

`∩[A139644(n+1), A142083(n+1)]`
-/

namespace A217656.P16709745227378396236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P16709745227378396236

namespace A217656

/-- `∩[A139644(n+1), A142083(n+1)]` -/
def P16709745227378396236.Spec : Prop :=
  ∀ n, (P16709745227378396236.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P4723936404018482420

`∩[A088955(n+1), A140687(n+1)]`
-/

namespace A217656.P4723936404018482420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P4723936404018482420

namespace A217656

/-- `∩[A088955(n+1), A140687(n+1)]` -/
def P4723936404018482420.Spec : Prop :=
  ∀ n, (P4723936404018482420.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P112728759705584401

`∩[A088955(n+1), A142083(n+1)]`
-/

namespace A217656.P112728759705584401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P112728759705584401

namespace A217656

/-- `∩[A088955(n+1), A142083(n+1)]` -/
def P112728759705584401.Spec : Prop :=
  ∀ n, (P112728759705584401.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P8097626848232708847

`∩[A088955(n+1), A141889(n+1)]`
-/

namespace A217656.P8097626848232708847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P8097626848232708847

namespace A217656

/-- `∩[A088955(n+1), A141889(n+1)]` -/
def P8097626848232708847.Spec : Prop :=
  ∀ n, (P8097626848232708847.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P14878281204713986369

`∩[A088955(n+1), A141975(n+1)]`
-/

namespace A217656.P14878281204713986369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P14878281204713986369

namespace A217656

/-- `∩[A088955(n+1), A141975(n+1)]` -/
def P14878281204713986369.Spec : Prop :=
  ∀ n, (P14878281204713986369.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P10697064785089551026

`∩[A140687(n+1), A141975(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217656

/-- `∩[A140687(n+1), A141975(n+1)]` -/
def P10697064785089551026.Spec : Prop :=
  ∀ n, (P10697064785089551026.a n : ℤ) = A217656 (n + 1)

theorem P10697064785089551026.correct : P10697064785089551026.Spec := by
  intro n
  simp only [A217656, Nat.add_sub_cancel]

end A217656

/-! ## A217656.P16394882190025491528

`∩[A033215(n+1), A140687(n+1)]`
-/

namespace A217656.P16394882190025491528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P16394882190025491528

namespace A217656

/-- `∩[A033215(n+1), A140687(n+1)]` -/
def P16394882190025491528.Spec : Prop :=
  ∀ n, (P16394882190025491528.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P4929857919242398131

`∩[A033215(n+1), A142083(n+1)]`
-/

namespace A217656.P4929857919242398131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P4929857919242398131

namespace A217656

/-- `∩[A033215(n+1), A142083(n+1)]` -/
def P4929857919242398131.Spec : Prop :=
  ∀ n, (P4929857919242398131.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P2274866868509883454

`∩[A139495(n+1), A140687(n+1)]`
-/

namespace A217656.P2274866868509883454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P2274866868509883454

namespace A217656

/-- `∩[A139495(n+1), A140687(n+1)]` -/
def P2274866868509883454.Spec : Prop :=
  ∀ n, (P2274866868509883454.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P3676448991848694402

`∩[A107152(n+1), A140687(n+1)]`
-/

namespace A217656.P3676448991848694402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P3676448991848694402

namespace A217656

/-- `∩[A107152(n+1), A140687(n+1)]` -/
def P3676448991848694402.Spec : Prop :=
  ∀ n, (P3676448991848694402.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P3235751788965230242

`∩[A107152(n+1), A142083(n+1)]`
-/

namespace A217656.P3235751788965230242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P3235751788965230242

namespace A217656

/-- `∩[A107152(n+1), A142083(n+1)]` -/
def P3235751788965230242.Spec : Prop :=
  ∀ n, (P3235751788965230242.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P15074876505876073058

`∩[A140687(n+1), A141881(n+1)]`
-/

namespace A217656.P15074876505876073058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P15074876505876073058

namespace A217656

/-- `∩[A140687(n+1), A141881(n+1)]` -/
def P15074876505876073058.Spec : Prop :=
  ∀ n, (P15074876505876073058.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P8168737563169896412

`∩[A141881(n+1), A141889(n+1)]`
-/

namespace A217656.P8168737563169896412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P8168737563169896412

namespace A217656

/-- `∩[A141881(n+1), A141889(n+1)]` -/
def P8168737563169896412.Spec : Prop :=
  ∀ n, (P8168737563169896412.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P11126665092080937956

`∩[A132230(n+1), A141975(n+1)]`
-/

namespace A217656.P11126665092080937956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P11126665092080937956

namespace A217656

/-- `∩[A132230(n+1), A141975(n+1)]` -/
def P11126665092080937956.Spec : Prop :=
  ∀ n, (P11126665092080937956.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P11711975392888167885

`p?[xor(3, 7*15*n+47)]`
-/

namespace A217656.P11711975392888167885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (7 * (15 * n) + 47)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A217656.P11711975392888167885

namespace A217656

/-- `p?[xor(3, 7*15*n+47)]` -/
def P11711975392888167885.Spec : Prop :=
  ∀ n, (P11711975392888167885.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P17144238409120139792

`p?[20*(20*(n+1)+n-2)+1]`
-/

namespace A217656.P17144238409120139792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * ((20 * (n + 1) : ℤ) + ((n : ℤ) - 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217656.P17144238409120139792

namespace A217656

/-- `p?[20*(20*(n+1)+n-2)+1]` -/
def P17144238409120139792.Spec : Prop :=
  ∀ n, P17144238409120139792.a n = A217656 (n + 1)

end A217656

/-! ## A217656.P2482951061443902686

`∩[A045462(n+1), A088955(n+1)]`
-/

namespace A217656.P2482951061443902686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P2482951061443902686

namespace A217656

/-- `∩[A045462(n+1), A088955(n+1)]` -/
def P2482951061443902686.Spec : Prop :=
  ∀ n, (P2482951061443902686.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P11351899189006500774

`∩[A045471(n+1), A088955(n+1)]`
-/

namespace A217656.P11351899189006500774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P11351899189006500774

namespace A217656

/-- `∩[A045471(n+1), A088955(n+1)]` -/
def P11351899189006500774.Spec : Prop :=
  ∀ n, (P11351899189006500774.a n : ℤ) = A217656 (n + 1)

end A217656

/-! ## A217656.P6399900861143159264

`∩[A004622(n+1), A088955(n+1)]`
-/

namespace A217656.P6399900861143159264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217656.P6399900861143159264

namespace A217656

/-- `∩[A004622(n+1), A088955(n+1)]` -/
def P6399900861143159264.Spec : Prop :=
  ∀ n, (P6399900861143159264.a n : ℤ) = A217656 (n + 1)

end A217656

/-!
# A217657: Delete the initial digit in decimal representation of n.

The programs for A217657, the canonical program `A217657.P11625310080371651420` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217657 has offset 0).

The definition of A217657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217657.P11625310080371651420

`10*a(floor(n/10))+n%10` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217657

/-- `10*a(floor(n/10))+n%10` -/
def P11625310080371651420.Spec : Prop :=
  ∀ n, (P11625310080371651420.a n : ℤ) = A217657 n

theorem P11625310080371651420.correct : P11625310080371651420.Spec := by
  intro n
  simp only [A217657]

end A217657

/-!
# A217658: In A217564, prime(i), where i is the index of the start of the first exactly-n terms between successive zeros.

The programs for A217658, there is no canonical definition to state claims against.
-/

/-! ## A217658.P16059742601932206658

`A071889(A326373(n)+A071927(n+1))`
-/

namespace A217658.P16059742601932206658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071889 (A326373 n + A071927 (n + 1)).toNat

end

end A217658.P16059742601932206658

/-!
# A217659: Larger of two consecutive primes which both equal 1 (mod 3).

The programs for A217659, the canonical program `A217659.P12603984998292989845` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217659 has offset 1).

The definition of A217659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, A185934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217659.P12603984998292989845

`A151800(A185934(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A217659

/-- `A151800(A185934(n+1))` -/
def P12603984998292989845.Spec : Prop :=
  ∀ n, P12603984998292989845.a n = A217659 (n + 1)

theorem P12603984998292989845.correct : P12603984998292989845.Spec := by
  intro n
  simp only [A217659, Nat.add_sub_cancel]

end A217659

/-! ## A217659.P14089855995839679132

`6*A219244(n+1)+A185934(n+1)`
-/

namespace A217659.P14089855995839679132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A219244 (n + 1) + A185934 (n + 1)

end

end A217659.P14089855995839679132

namespace A217659

/-- `6*A219244(n+1)+A185934(n+1)` -/
def P14089855995839679132.Spec : Prop :=
  ∀ n, P14089855995839679132.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P600239953471994959

`filter[A327748(1+n), A070563(#)]`
-/

namespace A217659.P600239953471994959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A217659.P600239953471994959

namespace A217659

/-- `filter[A327748(1+n), A070563(#)]` -/
def P600239953471994959.Spec : Prop :=
  ∀ n, P600239953471994959.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P16043184593002841293

`filter[A327748(n+1), A319691(#)]`
-/

namespace A217659.P16043184593002841293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A217659.P16043184593002841293

namespace A217659

/-- `filter[A327748(n+1), A319691(#)]` -/
def P16043184593002841293.Spec : Prop :=
  ∀ n, P16043184593002841293.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P15776851544623379926

`filter[A327748(n+1), A354982(#)]`
-/

namespace A217659.P15776851544623379926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354982 (f1 j).toNat = 1) n)

end

end A217659.P15776851544623379926

namespace A217659

/-- `filter[A327748(n+1), A354982(#)]` -/
def P15776851544623379926.Spec : Prop :=
  ∀ n, P15776851544623379926.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P5989283090465682266

`filter[A327748(n+1), A374053(#)]`
-/

namespace A217659.P5989283090465682266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374053 (f1 j).toNat = 1) n)

end

end A217659.P5989283090465682266

namespace A217659

/-- `filter[A327748(n+1), A374053(#)]` -/
def P5989283090465682266.Spec : Prop :=
  ∀ n, P5989283090465682266.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P1229732195457920253

`filter[A327748(n+2), A135461(#)]`
-/

namespace A217659.P1229732195457920253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A217659.P1229732195457920253

namespace A217659

/-- `filter[A327748(n+2), A135461(#)]` -/
def P1229732195457920253.Spec : Prop :=
  ∀ n, P1229732195457920253.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P16490166864213636163

`filter[A327748(n+2), A353815(#)]`
-/

namespace A217659.P16490166864213636163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A217659.P16490166864213636163

namespace A217659

/-- `filter[A327748(n+2), A353815(#)]` -/
def P16490166864213636163.Spec : Prop :=
  ∀ n, P16490166864213636163.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P6164080959569320983

`filter[A327748(n+2), A353816(#)]`
-/

namespace A217659.P6164080959569320983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A217659.P6164080959569320983

namespace A217659

/-- `filter[A327748(n+2), A353816(#)]` -/
def P6164080959569320983.Spec : Prop :=
  ∀ n, P6164080959569320983.a n = A217659 (n + 1)

end A217659

/-! ## A217659.P9103119107423395735

`∩[A327748(n+1), A016921(n)]`
-/

namespace A217659.P9103119107423395735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P9103119107423395735

namespace A217659

/-- `∩[A327748(n+1), A016921(n)]` -/
def P9103119107423395735.Spec : Prop :=
  ∀ n, (P9103119107423395735.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P14425357667557939577

`∩[A327748(n+1), A271114(n)]`
-/

namespace A217659.P14425357667557939577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P14425357667557939577

namespace A217659

/-- `∩[A327748(n+1), A271114(n)]` -/
def P14425357667557939577.Spec : Prop :=
  ∀ n, (P14425357667557939577.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P10469086911712225132

`∩[A001074(n+1), A327748(n+1)]`
-/

namespace A217659.P10469086911712225132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P10469086911712225132

namespace A217659

/-- `∩[A001074(n+1), A327748(n+1)]` -/
def P10469086911712225132.Spec : Prop :=
  ∀ n, (P10469086911712225132.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P10208662198257782381

`∩[A002476(n+1), A327748(n+1)]`
-/

namespace A217659.P10208662198257782381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P10208662198257782381

namespace A217659

/-- `∩[A002476(n+1), A327748(n+1)]` -/
def P10208662198257782381.Spec : Prop :=
  ∀ n, (P10208662198257782381.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P12768469035374043774

`∩[A004611(n+1), A327748(n+1)]`
-/

namespace A217659.P12768469035374043774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P12768469035374043774

namespace A217659

/-- `∩[A004611(n+1), A327748(n+1)]` -/
def P12768469035374043774.Spec : Prop :=
  ∀ n, (P12768469035374043774.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P18412982024973461597

`∩[A045375(n+1), A327748(n+1)]`
-/

namespace A217659.P18412982024973461597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P18412982024973461597

namespace A217659

/-- `∩[A045375(n+1), A327748(n+1)]` -/
def P18412982024973461597.Spec : Prop :=
  ∀ n, (P18412982024973461597.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P18046101600336829389

`∩[A056991(n+1), A327748(n+1)]`
-/

namespace A217659.P18046101600336829389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P18046101600336829389

namespace A217659

/-- `∩[A056991(n+1), A327748(n+1)]` -/
def P18046101600336829389.Spec : Prop :=
  ∀ n, (P18046101600336829389.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P1007770829161355795

`∩[A074628(n+1), A327748(n+1)]`
-/

namespace A217659.P1007770829161355795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P1007770829161355795

namespace A217659

/-- `∩[A074628(n+1), A327748(n+1)]` -/
def P1007770829161355795.Spec : Prop :=
  ∀ n, (P1007770829161355795.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P12163427865022655122

`∩[A107925(n+1), A327748(n+1)]`
-/

namespace A217659.P12163427865022655122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P12163427865022655122

namespace A217659

/-- `∩[A107925(n+1), A327748(n+1)]` -/
def P12163427865022655122.Spec : Prop :=
  ∀ n, (P12163427865022655122.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P2016839869058144850

`∩[A121764(n+1), A327748(n+1)]`
-/

namespace A217659.P2016839869058144850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P2016839869058144850

namespace A217659

/-- `∩[A121764(n+1), A327748(n+1)]` -/
def P2016839869058144850.Spec : Prop :=
  ∀ n, (P2016839869058144850.a n : ℤ) = A217659 (n + 1)

end A217659

/-! ## A217659.P16474606026417673196

`∩[A123365(n+1), A327748(n+1)]`
-/

namespace A217659.P16474606026417673196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217659.P16474606026417673196

namespace A217659

/-- `∩[A123365(n+1), A327748(n+1)]` -/
def P16474606026417673196.Spec : Prop :=
  ∀ n, (P16474606026417673196.a n : ℤ) = A217659 (n + 1)

end A217659

/-!
# A217660: Numbers that give records for f(n)= (log(d(n))*log(log(n)))/(log(2)*log(n)) with d(n) the number of divisors.

The programs for A217660, there is no canonical definition to state claims against.
-/

/-! ## A217660.P13175412055575857685

`lt[A000041(n), A235450(n+1)]+1`
-/

namespace A217660.P13175412055575857685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A217660.P13175412055575857685

/-! ## A217660.P15114855092261123890

`record[A358015(n+3)/A112798(n+2)]`
-/

namespace A217660.P15114855092261123890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358015 (n + 3) : ℚ) / (A112798 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217660.P15114855092261123890

/-! ## A217660.P903290847768479436

`lt[A010785(n+3), A235450(n+1)]+1`
-/

namespace A217660.P903290847768479436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A217660.P903290847768479436

/-! ## A217660.P4326030469350606071

`A198186(n+1)+A036987(A000108(n))`
-/

namespace A217660.P4326030469350606071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198186 (n + 1) + A036987 (A000108 n).toNat

end

end A217660.P4326030469350606071

/-! ## A217660.P7265870469091089282

`A198186(n+1)+A010057(A077946(n))`
-/

namespace A217660.P7265870469091089282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198186 (n + 1) + A010057 (A077946 n).toNat

end

end A217660.P7265870469091089282

/-!
# A217661: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k/(1-x)^k.

The programs for A217661, the canonical program `A217661.P15979602254608227247` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217661 has offset 0).

The definition of A217661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217661.P15979602254608227247

`∑{#}[n, C(n, #)*A182883(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217661

/-- `∑{#}[n, C(n, #)*A182883(#)]` -/
def P15979602254608227247.Spec : Prop :=
  ∀ n, P15979602254608227247.a n = A217661 n

theorem P15979602254608227247.correct : P15979602254608227247.Spec := by
  intro n
  simp only [A217661]

end A217661

/-! ## A217661.P266351191000036741

`A175542(floor(sqrt(A027836(n))))`
-/

namespace A217661.P266351191000036741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (Int.sqrt (A027836 n)).toNat

end

end A217661.P266351191000036741

namespace A217661

/-- `A175542(floor(sqrt(A027836(n))))` -/
def P266351191000036741.Spec : Prop :=
  ∀ n, P266351191000036741.a n = A217661 n

end A217661

/-! ## A217661.P18066067525132226313

`A095861(A307389(n))+A005773(n)`
-/

namespace A217661.P18066067525132226313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A307389 n).toNat + A005773 n

end

end A217661.P18066067525132226313

namespace A217661

/-- `A095861(A307389(n))+A005773(n)` -/
def P18066067525132226313.Spec : Prop :=
  ∀ n, P18066067525132226313.a n = A217661 n

end A217661

/-! ## A217661.P4239844362880309889

`A374249(A004148(n))+A091190(n)`
-/

namespace A217661.P4239844362880309889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A004148 n).toNat + A091190 n

end

end A217661.P4239844362880309889

namespace A217661

/-- `A374249(A004148(n))+A091190(n)` -/
def P4239844362880309889.Spec : Prop :=
  ∀ n, P4239844362880309889.a n = A217661 n

end A217661

/-!
# A217662: For n > 2 , a(n) = a(n-2) + lcm(a(n-2), n-1) with a(1)=2, a(2)=2.

The programs for A217662, the canonical program `A217662.P6199943613546408107` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217662 has offset 1).

The definition of A217662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+lcm(a(n-2), n)` (program `A217662.P6199943613546408107`, by `A217662.P6199943613546408107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217662.P6199943613546408107

`a(n-2)+lcm(a(n-2), n)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217662

/-- `a(n-2)+lcm(a(n-2), n)` -/
def P6199943613546408107.Spec : Prop :=
  ∀ n, (P6199943613546408107.a n : ℤ) = A217662 (n + 1)

theorem P6199943613546408107.correct : P6199943613546408107.Spec := by
  intro n
  simp only [A217662, Nat.add_sub_cancel]

end A217662

/-! ## A217662.P11639129162494269390

`(n/gcd(n, a(n-2))+1)*a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A217662.P11639129162494269390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  ((n : ℚ) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) + 1) * a (n - 2)

end

end A217662.P11639129162494269390

namespace A217662

/-- `(n/gcd(n, a(n-2))+1)*a(n-2)` -/
def P11639129162494269390.Spec : Prop :=
  ∀ n, P11639129162494269390.a n = (A217662 (n + 1) : ℚ)

end A217662

/-! ## A217662.P614882008184308240

`∏[A000005(4^n+1)/a(n-1)]` with `a(0)=2`
-/

namespace A217662.P614882008184308240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (A000005 (4 ^ n + 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A217662.P614882008184308240

namespace A217662

/-- `∏[A000005(4^n+1)/a(n-1)]` -/
def P614882008184308240.Spec : Prop :=
  ∀ n, P614882008184308240.a n = (A217662 (n + 1) : ℚ)

end A217662

/-! ## A217662.P13494400536501737800

`a(n-2)*A000005(A014551(2*n))` with `a(0)=2, a(1)=2`
-/

namespace A217662.P13494400536501737800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) * A000005 (A014551 (2 * n)).toNat

end

end A217662.P13494400536501737800

namespace A217662

/-- `a(n-2)*A000005(A014551(2*n))` -/
def P13494400536501737800.Spec : Prop :=
  ∀ n, P13494400536501737800.a n = A217662 (n + 1)

end A217662

/-!
# A217663: a(n) = A217662(n+2)/A217662(n) - 1, n > 0.

The programs for A217663, the canonical program `A217663.P12322533064533179449` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217663 has offset 1).

The definition of A217663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217663.P12322533064533179449

`A217662(n+3)/A217662(n+1)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217663

/-- `A217662(n+3)/A217662(n+1)-1` -/
def P12322533064533179449.Spec : Prop :=
  ∀ n, P12322533064533179449.a n = (A217663 (n + 1) : ℚ)

end A217663

/-! ## A217663.P224849165922358088

`A304822(A165351(2+n)-1)`
-/

namespace A217663.P224849165922358088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304822 (A165351 (2 + n) - 1).toNat

end

end A217663.P224849165922358088

namespace A217663

/-- `A304822(A165351(2+n)-1)` -/
def P224849165922358088.Spec : Prop :=
  ∀ n, P224849165922358088.a n = A217663 (n + 1)

end A217663

/-! ## A217663.P4864123262754426191

`gcd(n+2, A109395(A101854(n+1)))`
-/

namespace A217663.P4864123262754426191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A109395 (A101854 (n + 1)).toNat)

end

end A217663.P4864123262754426191

namespace A217663

/-- `gcd(n+2, A109395(A101854(n+1)))` -/
def P4864123262754426191.Spec : Prop :=
  ∀ n, (P4864123262754426191.a n : ℤ) = A217663 (n + 1)

end A217663

/-! ## A217663.P11835786098281374788

`A060819(A033677(n+2)%A345912(3*n+1))`
-/

namespace A217663.P11835786098281374788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Int.tmod (A033677 (n + 2)) (A345912 (3 * n + 1))).toNat

end

end A217663.P11835786098281374788

namespace A217663

/-- `A060819(A033677(n+2)%A345912(3*n+1))` -/
def P11835786098281374788.Spec : Prop :=
  ∀ n, P11835786098281374788.a n = A217663 (n + 1)

end A217663

/-! ## A217663.P9860992133090373769

`A000265(A356840(n+2)%A373994(3*n+2))`
-/

namespace A217663.P9860992133090373769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A356840 (n + 2)) (A373994 (3 * n + 2))).toNat

end

end A217663.P9860992133090373769

namespace A217663

/-- `A000265(A356840(n+2)%A373994(3*n+2))` -/
def P9860992133090373769.Spec : Prop :=
  ∀ n, P9860992133090373769.a n = A217663 (n + 1)

end A217663

/-!
# A217664: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k/(1-2*x)^k.

The programs for A217664, there is no canonical definition to state claims against.
-/

/-! ## A217664.P11776383396840134654

`∑[A230980(A048828(n))+A192904(n)]`
-/

namespace A217664.P11776383396840134654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A048828 n).toNat + A192904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217664.P11776383396840134654

/-! ## A217664.P3696155546467241791

`A225819(A109545(n)-A000579(n+1))`
-/

namespace A217664.P3696155546467241791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A109545 n - A000579 (n + 1)).toNat

end

end A217664.P3696155546467241791

/-! ## A217664.P6315803124070095874

`A218876(or(3, 2^n)+1)+A192906(n)`
-/

namespace A217664.P6315803124070095874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (Nat.lor 3 (2 ^ n) + 1) + A192906 n

end

end A217664.P6315803124070095874

/-!
# A217665: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k/(1-3*x)^k.

The programs for A217665, there is no canonical definition to state claims against.
-/

/-! ## A217665.P5134245293098423837

`A195177(A003500(n)-A195168(n))`
-/

namespace A217665.P5134245293098423837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A003500 n - A195168 n).toNat

end

end A217665.P5134245293098423837

/-! ## A217665.P10815568399792679822

`A157271(A360153(n)-A000217(n))`
-/

namespace A217665.P10815568399792679822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A360153 n - A000217 n).toNat

end

end A217665.P10815568399792679822

/-!
# A217666: G.f.: Sum_{n>=0} x^n * Sum_{k=0..n} binomial(n,k)^2 * x^k/(1-4*x)^k.

The programs for A217666, there is no canonical definition to state claims against.
-/

/-! ## A217666.P4321578092109102906

`A298866(floor(((2^n+1)/2)²)-∑[floor(3^(n-1))])`
-/

namespace A217666.P4321578092109102906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298866 (⌊((2 ^ n + 1 : ℚ) / 2) ^ 2⌋ - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217666.P4321578092109102906

/-! ## A217666.P7490815323186589638

`A105511(A307321(n))`
-/

namespace A217666.P7490815323186589638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105511 (A307321 n).toNat

end

end A217666.P7490815323186589638

/-! ## A217666.P5467517638192316610

`A340568(n)+A008624(A340568(2*n))`
-/

namespace A217666.P5467517638192316610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 n + A008624 (A340568 (2 * n)).toNat

end

end A217666.P5467517638192316610

/-!
# A217667: G.f.: Sum_{n>=0} (x + x^(2*n))^n.

The programs for A217667, there is no canonical definition to state claims against.
-/

/-! ## A217667.P10898039732593224189

`A104660(A133265(A023416(n)*A087112(n+1)))`
-/

namespace A217667.P10898039732593224189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104660 (A133265 (A023416 n * A087112 (n + 1)).toNat).toNat

end

end A217667.P10898039732593224189

/-! ## A217667.P16140290050417096726

`gcd(A162453(A091205(n+1)), A256898(n+1))`
-/

namespace A217667.P16140290050417096726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162453 (A091205 (n + 1)).toNat) (A256898 (n + 1))

end

end A217667.P16140290050417096726

/-! ## A217667.P4667573259869423838

`A195825(∑[A195848(A036820(n))])`
-/

namespace A217667.P4667573259869423838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195848 (A036820 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217667.P4667573259869423838

/-! ## A217667.P15392760986838465801

`A342769(or(A004447(n), A078414(n+1)))`
-/

namespace A217667.P15392760986838465801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342769 (Int.lor (A004447 n) (A078414 (n + 1))).toNat

end

end A217667.P15392760986838465801

/-! ## A217667.P3036107447768043642

`gcd(A161739(A270613(n+1)), A337853(n+2))`
-/

namespace A217667.P3036107447768043642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161739 (A270613 (n + 1)).toNat) (A337853 (n + 2))

end

end A217667.P3036107447768043642

/-!
# A217668: G.f.: Sum_{n>=0} x^n*(1 + x^n)^n.

The programs for A217668, there is no canonical definition to state claims against.
-/

/-! ## A217668.P7917407640870000729

`A007318(A089841(n))+n-gcd(n, ∑[n])`
-/

namespace A217668.P7917407640870000729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A089841 n).toNat + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A217668.P7917407640870000729

/-! ## A217668.P4511891917899393072

`A142150(n)+A007318(A089841(n))`
-/

namespace A217668.P4511891917899393072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A007318 (A089841 n).toNat

end

end A217668.P4511891917899393072

/-! ## A217668.P9772601269070580011

`A298423(n)-A288733(A007283(n))`
-/

namespace A217668.P9772601269070580011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298423 n - A288733 (A007283 n).toNat

end

end A217668.P9772601269070580011

/-! ## A217668.P8516922820722300585

`A191340(A081856(n+1))+A025480(n)`
-/

namespace A217668.P8516922820722300585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191340 (A081856 (n + 1)).toNat + A025480 n

end

end A217668.P8516922820722300585

/-! ## A217668.P5411137654362943001

`A142150(n)+A046799(A138960(n+1))`
-/

namespace A217668.P5411137654362943001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A046799 (A138960 (n + 1)).toNat

end

end A217668.P5411137654362943001

/-!
# A217671: a(n) is the least prime of the set of the smallest n consecutive primes a(n)=q_1(n), q_2(n),..., such that between (1/2)*q_i and (1/2)q_(i+1), i=1,...,n-1, there exists a prime, or a(n)=0 if no such set of primes exists.

The programs for A217671, there is no canonical definition to state claims against.
-/

/-! ## A217671.P17245616539762270868

`A006530(A217658(n+1)-char[n^6])`
-/

namespace A217671.P17245616539762270868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A217658 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A217671.P17245616539762270868

/-! ## A217671.P13138075512016980686

`A006530(xor(A004530(n), A217658(n+1)))`
-/

namespace A217671.P13138075512016980686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor (A004530 n) (A217658 (n + 1))).toNat

end

end A217671.P13138075512016980686

/-! ## A217671.P18113073574898770746

`A006530(xor(A010057(n), A217658(n+1)))`
-/

namespace A217671.P18113073574898770746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor (A010057 n) (A217658 (n + 1))).toNat

end

end A217671.P18113073574898770746

/-!
# A217674: Primes p = a^2 + b^2 such that (x - a)^2 + (y - b)^2 = 2 and q - p = 4, where q = x^2 + y^2 is prime, assuming that a > b > 0 and x > y > 0.

The programs for A217674, there is no canonical definition to state claims against.
-/

/-! ## A217674.P13237409870380959910

`record[A293958(A224870(n+1)+1)]`
-/

namespace A217674.P13237409870380959910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A224870 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217674.P13237409870380959910

/-! ## A217674.P1229985292105414463

`∩[A289413(n+1), A000982(n)]`
-/

namespace A217674.P1229985292105414463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217674.P1229985292105414463

/-! ## A217674.P7332787458008040142

`∩[A076746(n+1), A000982(n)]`
-/

namespace A217674.P7332787458008040142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217674.P7332787458008040142

/-! ## A217674.P11816194797198000070

`∩[A015913(n+1), A000982(n)]`
-/

namespace A217674.P11816194797198000070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217674.P11816194797198000070

/-! ## A217674.P10580997762876849104

`p?[p?[(n+3)²+n²]-4]`
-/

namespace A217674.P10580997762876849104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217674.P10580997762876849104

/-!
# A217675: Number of permutations in S_n containing an increasing subsequence of length 8.

The programs for A217675, there is no canonical definition to state claims against.
-/

/-! ## A217675.P5046403415002571667

`A000142(n+8)-A072131(n+8)`
-/

namespace A217675.P5046403415002571667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 8) - A072131 (n + 8)

end

end A217675.P5046403415002571667

/-! ## A217675.P6203103176716487446

`A214152(C(n+8, 2)+8)`
-/

namespace A217675.P6203103176716487446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (Nat.choose (n + 8) 2 + 8)

end

end A217675.P6203103176716487446

/-! ## A217675.P8172880864286107857

`A214152(eq[13, A066657(n)])`
-/

namespace A217675.P8172880864286107857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217675.P8172880864286107857

/-! ## A217675.P370865214175275491

`A214152(A167499(n+6)+3)`
-/

namespace A217675.P370865214175275491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167499 (n + 6) + 3).toNat

end

end A217675.P370865214175275491

/-! ## A217675.P10531291408648731197

`A214152(A000217(n+7)+8)`
-/

namespace A217675.P10531291408648731197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A000217 (n + 7) + 8).toNat

end

end A217675.P10531291408648731197

/-!
# A217676: Number of permutations in S_n containing an increasing subsequence of length 9.

The programs for A217676, there is no canonical definition to state claims against.
-/

/-! ## A217676.P5283860088374033941

`A000142(n+9)-A072132(n+9)`
-/

namespace A217676.P5283860088374033941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 9) - A072132 (n + 9)

end

end A217676.P5283860088374033941

/-! ## A217676.P16544918802786420134

`A214152(C(n+9, 2)+9)`
-/

namespace A217676.P16544918802786420134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (Nat.choose (n + 9) 2 + 9)

end

end A217676.P16544918802786420134

/-! ## A217676.P2632049045694617192

`A214152(eq[17, A066657(n)])`
-/

namespace A217676.P2632049045694617192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217676.P2632049045694617192

/-! ## A217676.P15712113399804741179

`A214152(A167499(n+7)+4)`
-/

namespace A217676.P15712113399804741179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167499 (n + 7) + 4).toNat

end

end A217676.P15712113399804741179

/-! ## A217676.P3138023133451090020

`A214152(A161680(n+9)+9)`
-/

namespace A217676.P3138023133451090020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A161680 (n + 9) + 9).toNat

end

end A217676.P3138023133451090020

/-!
# A217677: Number of permutations in S_n containing an increasing subsequence of length 10.

The programs for A217677, there is no canonical definition to state claims against.
-/

/-! ## A217677.P12447290163141686250

`A000142(n+10)-A072133(n+10)`
-/

namespace A217677.P12447290163141686250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 10) - A072133 (n + 10)

end

end A217677.P12447290163141686250

/-! ## A217677.P16810354537507302650

`A214152(C(n+10, 2)+10)`
-/

namespace A217677.P16810354537507302650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (Nat.choose (n + 10) 2 + 10)

end

end A217677.P16810354537507302650

/-! ## A217677.P16050033984823449733

`A214152(A167487(n+8)+3)`
-/

namespace A217677.P16050033984823449733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A167487 (n + 8) + 3).toNat

end

end A217677.P16050033984823449733

/-! ## A217677.P5758986270670076904

`A214152(A161680(n+10)+10)`
-/

namespace A217677.P5758986270670076904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (A161680 (n + 10) + 10).toNat

end

end A217677.P5758986270670076904

/-! ## A217677.P2970038372319078099

`A214152(eq[10, A130270(n+1)])`
-/

namespace A217677.P2970038372319078099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217677.P2970038372319078099

/-!
# A217685: Numerators of the continued fraction convergents of log_10((1+sqrt(5))/2).

The programs for A217685, there is no canonical definition to state claims against.
-/

/-! ## A217685.P13440330625524711625

`A217684(n)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A217685.P13440330625524711625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A217684 n * a (n - 1) + a (n - 2)

end

end A217685.P13440330625524711625

/-!
# A217686: Denominators of the continued fraction convergents of log_10((1+sqrt(5))/2).

The programs for A217686, there is no canonical definition to state claims against.
-/

/-! ## A217686.P13022619605987915431

`A217684(n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A217686.P13022619605987915431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A217684 n * a (n - 1) + a (n - 2)

end

end A217686.P13022619605987915431

/-!
# A217688: Values of n such that 10^n gets increasingly closer to a Fibonacci number (measured by the ratio between the power of 10 and the nearest Fibonacci number).

The programs for A217688, there is no canonical definition to state claims against.
-/

/-! ## A217688.P18232803173483588104

`A386758(A217687(n+1))-1`
-/

namespace A217688.P18232803173483588104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A217687 (n + 1)).toNat - 1

end

end A217688.P18232803173483588104

/-!
# A217689: a(1)=2, a(2)=3, a(3)=4; for n>=4, a(n) is the largest number <= prime(n) such that no terms of the sequence are between a(n-1)/2 and a(n)/2.

The programs for A217689, there is no canonical definition to state claims against.
-/

/-! ## A217689.P14342052783835004511

`A050603(A146403(n+1))+A005180(n+1)`
-/

namespace A217689.P14342052783835004511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A146403 (n + 1)).toNat + A005180 (n + 1)

end

end A217689.P14342052783835004511

/-! ## A217689.P16207447984667939072

`A050603(A146403(n+1))+A015919(n+1)`
-/

namespace A217689.P16207447984667939072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A146403 (n + 1)).toNat + A015919 (n + 1)

end

end A217689.P16207447984667939072

/-! ## A217689.P12034510761000259466

`A005361(A064607(n+1))+A005180(n+1)`
-/

namespace A217689.P12034510761000259466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A064607 (n + 1)).toNat + A005180 (n + 1)

end

end A217689.P12034510761000259466

/-! ## A217689.P15389894826797160210

`A015919(n+1)+A005361(A064607(n+1))`
-/

namespace A217689.P15389894826797160210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1) + A005361 (A064607 (n + 1)).toNat

end

end A217689.P15389894826797160210

/-! ## A217689.P11659378659923475755

`lt[A243983(A200737(n+1)+A057562(n+5)), 1]+1`
-/

namespace A217689.P11659378659923475755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243983 (A200737 (n + 1) + A057562 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217689.P11659378659923475755

/-!
# A217691: Primes in A217689.

The programs for A217691, there is no canonical definition to state claims against.
-/

/-! ## A217691.P2020741092671687521

`p?[A217689(n+1)]`
-/

namespace A217691.P2020741092671687521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217691.P2020741092671687521

/-! ## A217691.P8912044083478767259

`record[A006530(A217689(1+n))]`
-/

namespace A217691.P8912044083478767259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A217689 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217691.P8912044083478767259

/-! ## A217691.P14051878243169626192

`filter[A217689(n+1), A010051(#)]`
-/

namespace A217691.P14051878243169626192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A217691.P14051878243169626192

/-! ## A217691.P6484574854918750081

`filter[A217689(n+1), A080339(#)]`
-/

namespace A217691.P6484574854918750081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A217691.P6484574854918750081

/-! ## A217691.P16673411496284237793

`filter[A217689(n+1), A252233(#)]`
-/

namespace A217691.P16673411496284237793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A217691.P16673411496284237793

/-! ## A217691.P15929016780192423671

`filter[A217689(n+1), A257000(#)]`
-/

namespace A217691.P15929016780192423671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A217691.P15929016780192423671

/-! ## A217691.P12639843122986832726

`filter[A217689(n+1), A266719(#)]`
-/

namespace A217691.P12639843122986832726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A217691.P12639843122986832726

/-! ## A217691.P3886588526254171605

`filter[A217689(n+1), A283991(#)]`
-/

namespace A217691.P3886588526254171605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A217691.P3886588526254171605

/-! ## A217691.P14038162945682457686

`filter[A217689(n+1), A294905(#)]`
-/

namespace A217691.P14038162945682457686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A217691.P14038162945682457686

/-! ## A217691.P17178192168331977412

`filter[A217689(n+1), A296066(#)]`
-/

namespace A217691.P17178192168331977412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A217691.P17178192168331977412

/-!
# A217692: Primes p such that p = 1 + 27720*k for some k.

The programs for A217692, there is no canonical definition to state claims against.
-/

/-! ## A217692.P4359957455969385539

`p?[A131662(n+1)+1]`
-/

namespace A217692.P4359957455969385539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131662 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217692.P4359957455969385539

/-! ## A217692.P12722605967416005730

`p?[A096027(n+1)-2]`
-/

namespace A217692.P12722605967416005730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096027 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217692.P12722605967416005730

/-! ## A217692.P4066928924021429558

`p?[xor(2, A096027(n+2))]`
-/

namespace A217692.P4066928924021429558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A096027 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217692.P4066928924021429558

/-! ## A217692.P6084882624052739439

`p?[n*A204831(A262079(n+1))+1]`
-/

namespace A217692.P6084882624052739439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A204831 (A262079 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A217692.P6084882624052739439

/-!
# A217693: Numbers of distinct integers obtained from summing up subsets of {1, 1/2, 1/3, ..., 1/n}.

The programs for A217693, there is no canonical definition to state claims against.
-/

/-! ## A217693.P4760052279073887481

`round(root(Δ[n²]/3, 3))`
-/

namespace A217693.P4760052279073887481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3 : ℝ) ^ (1 / (3 : ℝ)))

end

end A217693.P4760052279073887481

/-! ## A217693.P5360709563441758265

`floor(root(p?[8*n²-1], 9))`
-/

namespace A217693.P5360709563441758265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A217693.P5360709563441758265

/-! ## A217693.P2656272293890533820

`floor(root(Δ[C(2*n, 2)²], 11))`
-/

namespace A217693.P2656272293890533820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) ^ (1 / (11 : ℝ))⌋

end

end A217693.P2656272293890533820

/-! ## A217693.P1842544232791932675

`floor((∑[9*n]+1)^sin(3))`
-/

namespace A217693.P1842544232791932675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ) ^ (Real.sin (3 : ℝ))⌋

end

end A217693.P1842544232791932675

/-! ## A217693.P15390888400979879589

`floor(root(record[xor(1, n)²+n], 7))`
-/

namespace A217693.P15390888400979879589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A217693.P15390888400979879589

/-! ## A217693.P13219623126277620606

`floor((or(2, n)+n+1)^(2/7))`
-/

namespace A217693.P13219623126277620606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 n + n + 1 : ℝ) ^ ((2 : ℚ) / 7 : ℝ)⌋

end

end A217693.P13219623126277620606

/-! ## A217693.P3134143784030579404

`floor(root(lcm(2*n+1, 2*(n+1)), 7))`
-/

namespace A217693.P3134143784030579404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (2 * (n + 1)) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A217693.P3134143784030579404

/-! ## A217693.P2465503027226006581

`round(root(2*(n+1)/3, 3))%(n+6)`
-/

namespace A217693.P2465503027226006581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((2 * (n + 1) : ℚ) / 3 : ℝ) ^ (1 / (3 : ℝ)))) (n + 6 : ℤ)

end

end A217693.P2465503027226006581

/-! ## A217693.P6401786716560826444

`floor(root(A000203(4*(∑[n+1]+1)), 7))`
-/

namespace A217693.P6401786716560826444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A217693.P6401786716560826444

/-! ## A217693.P1992211601968340861

`floor(root((2*(n+1))²-A000040(n+1), 7))`
-/

namespace A217693.P1992211601968340861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((2 * (n + 1)) ^ 2 : ℤ) - A000040 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A217693.P1992211601968340861

/-!
# A217694: Number of n-variations of the set {1,2,...,n+1} satisfying p(i)-i in {-2,0,2}, i=1..n (an n-variation of the set N_{n+s} = {1,2,...,n+s} is any 1-to-1 mapping p from the set N_n = {1,2,...,n} into N_{n+s} = {1,2,...,n+s}).

The programs for A217694, the canonical program `A217694.P8119955876287151440` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217694 has offset 0).

The definition of A217694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217694.P8119955876287151440

`ogf((1+x^3)/(1-x-x^2-2x^4+2x^5+x^6+x^7+x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A217694

/-- `ogf((1+x^3)/(1-x-x^2-2x^4+2x^5+x^6+x^7+x^8))` -/
def P8119955876287151440.Spec : Prop :=
  ∀ n, P8119955876287151440.a n = A217694 n

theorem P8119955876287151440.correct : P8119955876287151440.Spec := by
  intro n
  simp only [A217694]

end A217694

/-! ## A217694.P620674075960763506

`A129361(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A217694.P620674075960763506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A129361 n - a (n - 2)

end

end A217694.P620674075960763506

namespace A217694

/-- `A129361(n)-a(n-2)` -/
def P620674075960763506.Spec : Prop :=
  ∀ n, P620674075960763506.a n = A217694 n

end A217694

/-! ## A217694.P8753435727549107211

`∑[A079977(n)]*A103609(n+3)`
-/

namespace A217694.P8753435727549107211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A103609 (n + 3)

end

end A217694.P8753435727549107211

namespace A217694

/-- `∑[A079977(n)]*A103609(n+3)` -/
def P8753435727549107211.Spec : Prop :=
  ∀ n, P8753435727549107211.a n = A217694 n

end A217694

/-! ## A217694.P3432906928342254354

`A163227(n+1)*A163227(n+2)`
-/

namespace A217694.P3432906928342254354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (n + 1) * A163227 (n + 2)

end

end A217694.P3432906928342254354

namespace A217694

/-- `A163227(n+1)*A163227(n+2)` -/
def P3432906928342254354.Spec : Prop :=
  ∀ n, P3432906928342254354.a n = A217694 n

end A217694

/-! ## A217694.P1277944871841215287

`A103609(n+3)*A131524(n+3)`
-/

namespace A217694.P1277944871841215287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 3) * A131524 (n + 3)

end

end A217694.P1277944871841215287

namespace A217694

/-- `A103609(n+3)*A131524(n+3)` -/
def P1277944871841215287.Spec : Prop :=
  ∀ n, P1277944871841215287.a n = A217694 n

end A217694

/-! ## A217694.P11478562172600570883

`∑[A079977(n)]*A000045(A080513(n))`
-/

namespace A217694.P11478562172600570883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000045 (A080513 n).toNat

end

end A217694.P11478562172600570883

namespace A217694

/-- `∑[A079977(n)]*A000045(A080513(n))` -/
def P11478562172600570883.Spec : Prop :=
  ∀ n, P11478562172600570883.a n = A217694 n

end A217694

/-! ## A217694.P1161215036835942619

`A000045(A080513(n))*A131524(n+3)`
-/

namespace A217694.P1161215036835942619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080513 n).toNat * A131524 (n + 3)

end

end A217694.P1161215036835942619

namespace A217694

/-- `A000045(A080513(n))*A131524(n+3)` -/
def P1161215036835942619.Spec : Prop :=
  ∀ n, P1161215036835942619.a n = A217694 n

end A217694

/-! ## A217694.P16490529609837928477

`A104733(A007590(n+1))`
-/

namespace A217694.P16490529609837928477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104733 (A007590 (n + 1)).toNat

end

end A217694.P16490529609837928477

namespace A217694

/-- `A104733(A007590(n+1))` -/
def P16490529609837928477.Spec : Prop :=
  ∀ n, P16490529609837928477.a n = A217694 n

end A217694

/-!
# A217696: Let p = A002145(n) be the n-th prime of the form 4k+3, then a(n) is the smallest number such that p is the smallest prime of the form 4k+3 for which 4*a(n)+2-p is prime.

The programs for A217696, there is no canonical definition to state claims against.
-/

/-! ## A217696.P1919794014187649294

`A018387(A152004(n+1))-2`
-/

namespace A217696.P1919794014187649294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018387 (A152004 (n + 1)).toNat - 2

end

end A217696.P1919794014187649294

/-! ## A217696.P5306496259392256867

`∑[A056239(record[A020040(n)])+2]-1`
-/

namespace A217696.P5306496259392256867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A217696.P5306496259392256867

/-!
# A217699: G.f. A(x) satisfies: 1 - x*A(x) + x^2*A(x)^2 = Sum_{n>=0} (-x)^(n^2).

The programs for A217699, there is no canonical definition to state claims against.
-/

/-! ## A217699.P7565199250961714590

`(-1)^n*A223027(n+1)/2`
-/

namespace A217699.P7565199250961714590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A223027 (n + 1) : ℚ) / 2

end

end A217699.P7565199250961714590

/-! ## A217699.P8936246681076062198

`abs(A223027(n+1)/2)`
-/

namespace A217699.P8936246681076062198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A223027 (n + 1) : ℚ) / 2|

end

end A217699.P8936246681076062198

/-! ## A217699.P290056390221078996

`A223027(n+1)/(2*A033999(n))`
-/

namespace A217699.P290056390221078996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223027 (n + 1) : ℚ) / (2 * A033999 n : ℚ)

end

end A217699.P290056390221078996

/-! ## A217699.P7654823492525041721

`gcd(A223027(n+1)/2, A000038(n))`
-/

namespace A217699.P7654823492525041721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A223027 (n + 1) : ℚ) / 2)) (A000038 n)

end

end A217699.P7654823492525041721

/-! ## A217699.P5243103242925975035

`lcm(A223027(n+1)/2, A007318(C(n, 2)))`
-/

namespace A217699.P5243103242925975035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A223027 (n + 1) : ℚ) / 2)) (A007318 (Nat.choose n 2))

end

end A217699.P5243103242925975035

