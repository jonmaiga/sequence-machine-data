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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A079900: a(n) = the smallest positive number which furnishes a "one-line proof" for primality of prime(n), the n-th prime; i.e., the smallest k which is relatively prime to p such that k*(p+k) is divisible by every prime less than sqrt(p), where p=prime(n).

The programs for A079900, there is no canonical definition to state claims against.
-/

/-! ## A079900.P2837097968425244014

`A233782(A246796(n+2)^A029380(n))`
-/

namespace A079900.P2837097968425244014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233782 (SequenceMachineLib.roundAway ((A246796 (n + 2) : ℚ) ^ (A029380 n : ℤ))).toNat

end

end A079900.P2837097968425244014

/-!
# A079901: Triangle of powers, T(n,k) = n^k, 0 <= k <= n, read by rows.

The programs for A079901, the canonical program `A079901.P1463165230727689920` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079901 has offset 0).

The definition of A079901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079901.P1463165230727689920

`A003056(n)^A002262(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079901

/-- `A003056(n)^A002262(n)` -/
def P1463165230727689920.Spec : Prop :=
  ∀ n, P1463165230727689920.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P17322902965204391621

`A003056(n)^A057554(Δ[n²])`
-/

namespace A079901.P17322902965204391621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A079901.P17322902965204391621

namespace A079901

/-- `A003056(n)^A057554(Δ[n²])` -/
def P17322902965204391621.Spec : Prop :=
  ∀ n, P17322902965204391621.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P1049819836314786899

`A003056(n)^(A002260(n+1)-1)`
-/

namespace A079901.P1049819836314786899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A079901.P1049819836314786899

namespace A079901

/-- `A003056(n)^(A002260(n+1)-1)` -/
def P1049819836314786899.Spec : Prop :=
  ∀ n, P1049819836314786899.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P7547086214189307918

`A003056(n)^(A057555(2*n+1)-1)`
-/

namespace A079901.P7547086214189307918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ)

end

end A079901.P7547086214189307918

namespace A079901

/-- `A003056(n)^(A057555(2*n+1)-1)` -/
def P7547086214189307918.Spec : Prop :=
  ∀ n, P7547086214189307918.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P15634783984893445057

`A003056(n)^(A057554(2*n+1)%63)`
-/

namespace A079901.P15634783984893445057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (Int.tmod (A057554 (2 * n + 1)) 63 : ℤ)

end

end A079901.P15634783984893445057

namespace A079901

/-- `A003056(n)^(A057554(2*n+1)%63)` -/
def P15634783984893445057.Spec : Prop :=
  ∀ n, P15634783984893445057.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P3566664317552954949

`A003056(n)^(A026100(A026098(n+1))-1)`
-/

namespace A079901.P3566664317552954949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ)

end

end A079901.P3566664317552954949

namespace A079901

/-- `A003056(n)^(A026100(A026098(n+1))-1)` -/
def P3566664317552954949.Spec : Prop :=
  ∀ n, P3566664317552954949.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P1740923639899816132

`A007318(1-A002262(n)+n)^A002262(n)`
-/

namespace A079901.P1740923639899816132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (1 - A002262 n + (n : ℤ)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A079901.P1740923639899816132

namespace A079901

/-- `A007318(1-A002262(n)+n)^A002262(n)` -/
def P1740923639899816132.Spec : Prop :=
  ∀ n, P1740923639899816132.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P5594829114478223070

`A071207(A061579(n))/A007318(n)`
-/

namespace A079901.P5594829114478223070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071207 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A079901.P5594829114478223070

namespace A079901

/-- `A071207(A061579(n))/A007318(n)` -/
def P5594829114478223070.Spec : Prop :=
  ∀ n, P5594829114478223070.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P8096973443889298122

`A071207(A114327(n)+n)/A007318(n)`
-/

namespace A079901.P8096973443889298122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071207 (A114327 n + (n : ℤ)).toNat : ℚ) / (A007318 n : ℚ)

end

end A079901.P8096973443889298122

namespace A079901

/-- `A071207(A114327(n)+n)/A007318(n)` -/
def P8096973443889298122.Spec : Prop :=
  ∀ n, P8096973443889298122.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P4343549076403244951

`A003992(A245300(n))`
-/

namespace A079901.P4343549076403244951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A245300 n).toNat

end

end A079901.P4343549076403244951

namespace A079901

/-- `A003992(A245300(n))` -/
def P4343549076403244951.Spec : Prop :=
  ∀ n, P4343549076403244951.a n = A079901 n

end A079901

/-! ## A079901.P9373486785255611663

`A330709(2*n)^A002262(n)`
-/

namespace A079901.P9373486785255611663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330709 (2 * n) : ℚ) ^ (A002262 n : ℤ)

end

end A079901.P9373486785255611663

namespace A079901

/-- `A330709(2*n)^A002262(n)` -/
def P9373486785255611663.Spec : Prop :=
  ∀ n, P9373486785255611663.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P14955883154929231501

`A330709(2*n)^A330709(2*n+1)`
-/

namespace A079901.P14955883154929231501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330709 (2 * n) : ℚ) ^ (A330709 (2 * n + 1) : ℤ)

end

end A079901.P14955883154929231501

namespace A079901

/-- `A330709(2*n)^A330709(2*n+1)` -/
def P14955883154929231501.Spec : Prop :=
  ∀ n, P14955883154929231501.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P3324506197229763908

`A153188(n)/A233543(n)`
-/

namespace A079901.P3324506197229763908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153188 n : ℚ) / (A233543 n : ℚ)

end

end A079901.P3324506197229763908

namespace A079901

/-- `A153188(n)/A233543(n)` -/
def P3324506197229763908.Spec : Prop :=
  ∀ n, P3324506197229763908.a n = (A079901 n : ℚ)

end A079901

/-! ## A079901.P16851957464129130384

`A372311(n)/A028246(n+1)`
-/

namespace A079901.P16851957464129130384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372311 n : ℚ) / (A028246 (n + 1) : ℚ)

end

end A079901.P16851957464129130384

namespace A079901

/-- `A372311(n)/A028246(n+1)` -/
def P16851957464129130384.Spec : Prop :=
  ∀ n, P16851957464129130384.a n = (A079901 n : ℚ)

end A079901

/-!
# A079903: a(n) = (9n^4 - 18n^3 + 18n^2 - 9n + 2)/2.

The programs for A079903, the canonical program `A079903.P14427449765344040203` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079903 has offset 1).

The definition of A079903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079903.P14427449765344040203

`(((9*(n+1)-18)*(n+1)+18)*(n+1)-9)*(n+1)/2+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079903

/-- `(((9*(n+1)-18)*(n+1)+18)*(n+1)-9)*(n+1)/2+1` -/
def P14427449765344040203.Spec : Prop :=
  ∀ n, P14427449765344040203.a n = (A079903 (n + 1) : ℚ)

end A079903

/-! ## A079903.P16053741885466887550

`(9*(n+1)^4-18*(n+1)^3+18*(n+1)²-9*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079903.P16053741885466887550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 1) ^ 4 : ℤ) - (18 * (n + 1) ^ 3 : ℤ) + (18 * (n + 1) ^ 2 : ℤ) - (9 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A079903.P16053741885466887550

namespace A079903

/-- `(9*(n+1)^4-18*(n+1)^3+18*(n+1)²-9*(n+1)+2)/2` -/
def P16053741885466887550.Spec : Prop :=
  ∀ n, P16053741885466887550.a n = (A079903 (n + 1) : ℚ)

end A079903

/-! ## A079903.P10988921631677817778

`C(∑[6*n]+2, 2)`
-/

namespace A079903.P10988921631677817778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2

end

end A079903.P10988921631677817778

namespace A079903

/-- `C(∑[6*n]+2, 2)` -/
def P10988921631677817778.Spec : Prop :=
  ∀ n, (P10988921631677817778.a n : ℤ) = A079903 (n + 1)

end A079903

/-! ## A079903.P2177759856129923058

`∑[floor(3/acot(n))]*Δ[n^3]`
-/

namespace A079903.P2177759856129923058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A079903.P2177759856129923058

namespace A079903

/-- `∑[floor(3/acot(n))]*Δ[n^3]` -/
def P2177759856129923058.Spec : Prop :=
  ∀ n, P2177759856129923058.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P6823080585260465778

`A003215(n)*A005448(n+1)`
-/

namespace A079903.P6823080585260465778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A005448 (n + 1)

end

end A079903.P6823080585260465778

namespace A079903

/-- `A003215(n)*A005448(n+1)` -/
def P6823080585260465778.Spec : Prop :=
  ∀ n, P6823080585260465778.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P3848292502373679157

`(A045943(n)+1)*A003215(n)`
-/

namespace A079903.P3848292502373679157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045943 n + 1) * A003215 n

end

end A079903.P3848292502373679157

namespace A079903

/-- `(A045943(n)+1)*A003215(n)` -/
def P3848292502373679157.Spec : Prop :=
  ∀ n, P3848292502373679157.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P5368999900542334623

`lcm(Δ[n^3], Δ[A006003(n)])`
-/

namespace A079903.P5368999900542334623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (f2 (n + 1) - f2 n)

end

end A079903.P5368999900542334623

namespace A079903

/-- `lcm(Δ[n^3], Δ[A006003(n)])` -/
def P5368999900542334623.Spec : Prop :=
  ∀ n, (P5368999900542334623.a n : ℤ) = A079903 (n + 1)

end A079903

/-! ## A079903.P9179423354065020576

`(A143208(n+2)+A139482(n+2))*A005448(n+1)`
-/

namespace A079903.P9179423354065020576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143208 (n + 2) + A139482 (n + 2)) * A005448 (n + 1)

end

end A079903.P9179423354065020576

namespace A079903

/-- `(A143208(n+2)+A139482(n+2))*A005448(n+1)` -/
def P9179423354065020576.Spec : Prop :=
  ∀ n, P9179423354065020576.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P7067903247650206780

`A272399(∑[n]+1)`
-/

namespace A079903.P7067903247650206780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079903.P7067903247650206780

namespace A079903

/-- `A272399(∑[n]+1)` -/
def P7067903247650206780.Spec : Prop :=
  ∀ n, P7067903247650206780.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P16062568591661836745

`(n²+A000217(2*n+1))*A016777(A000217(n))`
-/

namespace A079903.P16062568591661836745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + A000217 (2 * n + 1)) * A016777 (A000217 n).toNat

end

end A079903.P16062568591661836745

namespace A079903

/-- `(n²+A000217(2*n+1))*A016777(A000217(n))` -/
def P16062568591661836745.Spec : Prop :=
  ∀ n, P16062568591661836745.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P1437078770755580509

`A000217(Δ[n^3])`
-/

namespace A079903.P1437078770755580509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079903.P1437078770755580509

namespace A079903

/-- `A000217(Δ[n^3])` -/
def P1437078770755580509.Spec : Prop :=
  ∀ n, P1437078770755580509.a n = A079903 (n + 1)

end A079903

/-! ## A079903.P17534797604397597591

`A060544(n²+n+1)`
-/

namespace A079903.P17534797604397597591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n ^ 2 + n + 1)

end

end A079903.P17534797604397597591

namespace A079903

/-- `A060544(n²+n+1)` -/
def P17534797604397597591.Spec : Prop :=
  ∀ n, P17534797604397597591.a n = A079903 (n + 1)

end A079903

/-!
# A079904: Triangle read by rows: T(n, k) = n*k, 0 <= k <= n.

The programs for A079904, the canonical program `A079904.P1795222969403769225` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079904 has offset 0).

The definition of A079904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079904.P15499997979219404657

`A144204(n+1)+1`
-/

namespace A079904.P15499997979219404657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + 1

end

end A079904.P15499997979219404657

namespace A079904

/-- `A144204(n+1)+1` -/
def P15499997979219404657.Spec : Prop :=
  ∀ n, P15499997979219404657.a n = A079904 n

theorem P15499997979219404657.correct : P15499997979219404657.Spec := by
  intro n
  simp only [A079904, Nat.add_sub_cancel, A079904.P15499997979219404657.a, A079904.P1795222969403769225.a, A076110, A076110.P10148523856418061428.a, A144204, A144204.P15164700038722631133.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, A000217, A000217.P10269402890581615239.a, A003991, A003991.P14084851459366035567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A079904

/-! ## A079904.P1795222969403769225

`A076110(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A079904

/-- `A076110(n+1)-1` -/
def P1795222969403769225.Spec : Prop :=
  ∀ n, P1795222969403769225.a n = A079904 n

theorem P1795222969403769225.correct : P1795222969403769225.Spec := by
  intro n
  simp only [A079904]

end A079904

/-! ## A079904.P17178361109362685529

`∑[char[∑[n+1]]]*A002262(n)`
-/

namespace A079904.P17178361109362685529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002262 n

end

end A079904.P17178361109362685529

namespace A079904

/-- `∑[char[∑[n+1]]]*A002262(n)` -/
def P17178361109362685529.Spec : Prop :=
  ∀ n, P17178361109362685529.a n = A079904 n

end A079904

/-! ## A079904.P16214592013687405169

`∑[char[∑[n+1]]]²-A091435(n)`
-/

namespace A079904.P16214592013687405169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A091435 n

end

end A079904.P16214592013687405169

namespace A079904

/-- `∑[char[∑[n+1]]]²-A091435(n)` -/
def P16214592013687405169.Spec : Prop :=
  ∀ n, P16214592013687405169.a n = A079904 n

end A079904

/-! ## A079904.P7404453923390853498

`(A002260(n+1)-1)*∑[char[∑[n+1]]]`
-/

namespace A079904.P7404453923390853498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079904.P7404453923390853498

namespace A079904

/-- `(A002260(n+1)-1)*∑[char[∑[n+1]]]` -/
def P7404453923390853498.Spec : Prop :=
  ∀ n, P7404453923390853498.a n = A079904 n

end A079904

/-! ## A079904.P8011707399043750662

`A143844(n)+A004247(n)`
-/

namespace A079904.P8011707399043750662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A004247 n

end

end A079904.P8011707399043750662

namespace A079904

/-- `A143844(n)+A004247(n)` -/
def P8011707399043750662.Spec : Prop :=
  ∀ n, P8011707399043750662.a n = A079904 n

end A079904

/-! ## A079904.P11500301725221224682

`A112367(n)+A087401(n)`
-/

namespace A079904.P11500301725221224682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A087401 n

end

end A079904.P11500301725221224682

namespace A079904

/-- `A112367(n)+A087401(n)` -/
def P11500301725221224682.Spec : Prop :=
  ∀ n, P11500301725221224682.a n = A079904 n

theorem P11500301725221224682.correct : P11500301725221224682.Spec := by
  intro n
  simp only [A079904, Nat.add_sub_cancel, A079904.P11500301725221224682.a, A079904.P1795222969403769225.a, A076110, A076110.P10148523856418061428.a, A087401, A087401.P10568550885334757291.a, A112367, A112367.P5378126856570841990.a, A000217, A000217.P10269402890581615239.a, A057944, A057944.P16851463738746886639.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A059036, A059036.P10984433159116004346.a, A003991, A003991.P14084851459366035567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A079904

/-! ## A079904.P5763278809266024306

`A069011(n)-A073254(n)`
-/

namespace A079904.P5763278809266024306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n - A073254 n

end

end A079904.P5763278809266024306

namespace A079904

/-- `A069011(n)-A073254(n)` -/
def P5763278809266024306.Spec : Prop :=
  ∀ n, P5763278809266024306.a n = A079904 n

theorem P5763278809266024306.correct : P5763278809266024306.Spec := by
  intro n
  simp only [A079904, Nat.add_sub_cancel, A079904.P5763278809266024306.a, A079904.P1795222969403769225.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A076110, A076110.P10148523856418061428.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, A000217, A000217.P10269402890581615239.a, A003991, A003991.P14084851459366035567.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A079904

/-! ## A079904.P8010544481285988955

`A126890(n)-A057944(n)`
-/

namespace A079904.P8010544481285988955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n - A057944 n

end

end A079904.P8010544481285988955

namespace A079904

/-- `A126890(n)-A057944(n)` -/
def P8010544481285988955.Spec : Prop :=
  ∀ n, P8010544481285988955.a n = A079904 n

theorem P8010544481285988955.correct : P8010544481285988955.Spec := by
  intro n
  simp only [A079904, Nat.add_sub_cancel, A079904.P8010544481285988955.a, A079904.P1795222969403769225.a, A057944, A057944.P16851463738746886639.a, A076110, A076110.P10148523856418061428.a, A126890, A126890.P13067422002995229557.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A002262, A002262.P12129691700837801527.a, A059036, A059036.P10984433159116004346.a, A003991, A003991.P14084851459366035567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A079904

/-! ## A079904.P112738968153820737

`A159797(n)-A025581(n)`
-/

namespace A079904.P112738968153820737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n - A025581 n

end

end A079904.P112738968153820737

namespace A079904

/-- `A159797(n)-A025581(n)` -/
def P112738968153820737.Spec : Prop :=
  ∀ n, P112738968153820737.a n = A079904 n

theorem P112738968153820737.correct : P112738968153820737.Spec := by
  intro n
  simp only [A079904, Nat.add_sub_cancel, A079904.P112738968153820737.a, A079904.P1795222969403769225.a, A025581, A025581.P420762180635059694.a, A076110, A076110.P10148523856418061428.a, A159797, A159797.P12777153155351090962.a, A004736, A004736.P10337537277358081527.a, A069011, A069011.P9337676359071489470.a, A073254, A073254.P2567531270234168708.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, A003991, A003991.P14084851459366035567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A079904

/-! ## A079904.P18434983473455328145

`A132111(n)-A069011(n)`
-/

namespace A079904.P18434983473455328145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - A069011 n

end

end A079904.P18434983473455328145

namespace A079904

/-- `A132111(n)-A069011(n)` -/
def P18434983473455328145.Spec : Prop :=
  ∀ n, P18434983473455328145.a n = A079904 n

theorem P18434983473455328145.correct : P18434983473455328145.Spec := by
  intro n
  simp only [A079904, Nat.add_sub_cancel, A079904.P18434983473455328145.a, A079904.P1795222969403769225.a, A069011, A069011.P9337676359071489470.a, A076110, A076110.P10148523856418061428.a, A132111, A132111.P3713491471241087217.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A073254, A073254.P2567531270234168708.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, A000217, A000217.P10269402890581615239.a, A003991, A003991.P14084851459366035567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A079904

/-! ## A079904.P4078417384507553897

`A281385(n)-A335821(n)`
-/

namespace A079904.P4078417384507553897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n - A335821 n

end

end A079904.P4078417384507553897

namespace A079904

/-- `A281385(n)-A335821(n)` -/
def P4078417384507553897.Spec : Prop :=
  ∀ n, P4078417384507553897.a n = A079904 n

end A079904

/-! ## A079904.P2737241221988550936

`A002262(n)*A003056(n)`
-/

namespace A079904.P2737241221988550936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A003056 n

end

end A079904.P2737241221988550936

namespace A079904

/-- `A002262(n)*A003056(n)` -/
def P2737241221988550936.Spec : Prop :=
  ∀ n, P2737241221988550936.a n = A079904 n

end A079904

/-! ## A079904.P4928416280162683494

`A004247(n)+A002262(n)²`
-/

namespace A079904.P4928416280162683494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A002262 n ^ 2

end

end A079904.P4928416280162683494

namespace A079904

/-- `A004247(n)+A002262(n)²` -/
def P4928416280162683494.Spec : Prop :=
  ∀ n, P4928416280162683494.a n = A079904 n

end A079904

/-! ## A079904.P1447278616078740204

`A073254(n)-A025581(n)²`
-/

namespace A079904.P1447278616078740204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - A025581 n ^ 2

end

end A079904.P1447278616078740204

namespace A079904

/-- `A073254(n)-A025581(n)²` -/
def P1447278616078740204.Spec : Prop :=
  ∀ n, P1447278616078740204.a n = A079904 n

end A079904

/-! ## A079904.P13955534409124446263

`A100345(n)-A003056(n)²`
-/

namespace A079904.P13955534409124446263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - A003056 n ^ 2

end

end A079904.P13955534409124446263

namespace A079904

/-- `A100345(n)-A003056(n)²` -/
def P13955534409124446263.Spec : Prop :=
  ∀ n, P13955534409124446263.a n = A079904 n

end A079904

/-! ## A079904.P4389502344365727888

`log2(A059268(n))*A003056(n)`
-/

namespace A079904.P4389502344365727888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) * (A003056 n : ℝ)

end

end A079904.P4389502344365727888

namespace A079904

/-- `log2(A059268(n))*A003056(n)` -/
def P4389502344365727888.Spec : Prop :=
  ∀ n, P4389502344365727888.a n = (A079904 n : ℝ)

end A079904

/-! ## A079904.P10671460544886977699

`A077028(n)+A143844(n)-1`
-/

namespace A079904.P10671460544886977699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + (A143844 n - 1)

end

end A079904.P10671460544886977699

namespace A079904

/-- `A077028(n)+A143844(n)-1` -/
def P10671460544886977699.Spec : Prop :=
  ∀ n, P10671460544886977699.a n = A079904 n

end A079904

/-! ## A079904.P14540595326582265756

`(n-A057944(n))*A003056(n)`
-/

namespace A079904.P14540595326582265756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057944 n) * A003056 n

end

end A079904.P14540595326582265756

namespace A079904

/-- `(n-A057944(n))*A003056(n)` -/
def P14540595326582265756.Spec : Prop :=
  ∀ n, P14540595326582265756.a n = A079904 n

end A079904

/-! ## A079904.P2139175513000268030

`A002262(n)²+A077028(n)-1`
-/

namespace A079904.P2139175513000268030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A077028 n - 1)

end

end A079904.P2139175513000268030

namespace A079904

/-- `A002262(n)²+A077028(n)-1` -/
def P2139175513000268030.Spec : Prop :=
  ∀ n, P2139175513000268030.a n = A079904 n

end A079904

/-!
# A079905: a(1)=1; then a(n) is smallest positive integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 2n+1 for n>1.

The programs for A079905, the canonical program `A079905.P13453434443057595003` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079905 has offset 1).

The definition of A079905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079905.P13453434443057595003

`lt[xor(and(n, n+1), a(n-1)), n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079905

/-- `lt[xor(and(n, n+1), a(n-1)), n]` -/
def P13453434443057595003.Spec : Prop :=
  ∀ n, (P13453434443057595003.a n : ℤ) = A079905 (n + 1)

theorem P13453434443057595003.correct : P13453434443057595003.Spec := by
  intro n
  simp only [A079905, Nat.add_sub_cancel]

end A079905

/-! ## A079905.P12607453453602577184

`lt[xor(n, floor(n/2)), 2*lcm(2, n)-n]`
-/

namespace A079905.P12607453453602577184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079905.P12607453453602577184

namespace A079905

/-- `lt[xor(n, floor(n/2)), 2*lcm(2, n)-n]` -/
def P12607453453602577184.Spec : Prop :=
  ∀ n, (P12607453453602577184.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P14606811696898373968

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A079905.P14606811696898373968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 1, 1, 2] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079905.P14606811696898373968

namespace A079905

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P14606811696898373968.Spec : Prop :=
  ∀ n, (P14606811696898373968.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P14412370182529234052

`lt[xor(n+1, 2-a(n-1)), 2*n]` with `a(0)=3`
-/

namespace A079905.P14412370182529234052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (n + 1 : ℤ) (2 - f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079905.P14412370182529234052

namespace A079905

/-- `lt[xor(n+1, 2-a(n-1)), 2*n]` -/
def P14412370182529234052.Spec : Prop :=
  ∀ n, (P14412370182529234052.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P11810304270126174283

`lt[A003188(n), lcm(2, n)]`
-/

namespace A079905.P11810304270126174283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A079905.P11810304270126174283

namespace A079905

/-- `lt[A003188(n), lcm(2, n)]` -/
def P11810304270126174283.Spec : Prop :=
  ∀ n, (P11810304270126174283.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P10212675855158978503

`comp[A346303(n+1)]+1`
-/

namespace A079905.P10212675855158978503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079905.P10212675855158978503

namespace A079905

/-- `comp[A346303(n+1)]+1` -/
def P10212675855158978503.Spec : Prop :=
  ∀ n, (P10212675855158978503.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P10370915335407674843

`comp[2*A004761(n+1)]`
-/

namespace A079905.P10370915335407674843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079905.P10370915335407674843

namespace A079905

/-- `comp[2*A004761(n+1)]` -/
def P10370915335407674843.Spec : Prop :=
  ∀ n, (P10370915335407674843.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P845585955391007154

`comp[2*comp[A004755(n+1)]]`
-/

namespace A079905.P845585955391007154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A079905.P845585955391007154

namespace A079905

/-- `comp[2*comp[A004755(n+1)]]` -/
def P845585955391007154.Spec : Prop :=
  ∀ n, (P845585955391007154.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P682452428532074208

`floor(A007378(n+2)-acot(n))`
-/

namespace A079905.P682452428532074208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007378 (n + 2) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A079905.P682452428532074208

namespace A079905

/-- `floor(A007378(n+2)-acot(n))` -/
def P682452428532074208.Spec : Prop :=
  ∀ n, P682452428532074208.a n = A079905 (n + 1)

end A079905

/-! ## A079905.P16383093804178852784

`comp[A171757(n+1)-1]+1`
-/

namespace A079905.P16383093804178852784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079905.P16383093804178852784

namespace A079905

/-- `comp[A171757(n+1)-1]+1` -/
def P16383093804178852784.Spec : Prop :=
  ∀ n, (P16383093804178852784.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P16734390471322263761

`∑[and(1, A346040(n+1))]+n`
-/

namespace A079905.P16734390471322263761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A346040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A079905.P16734390471322263761

namespace A079905

/-- `∑[and(1, A346040(n+1))]+n` -/
def P16734390471322263761.Spec : Prop :=
  ∀ n, P16734390471322263761.a n = A079905 (n + 1)

end A079905

/-! ## A079905.P12041320836111002387

`A080637(n+1)^ceil(abs(sin(n)))`
-/

namespace A079905.P12041320836111002387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080637 (n + 1) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A079905.P12041320836111002387

namespace A079905

/-- `A080637(n+1)^ceil(abs(sin(n)))` -/
def P12041320836111002387.Spec : Prop :=
  ∀ n, P12041320836111002387.a n = (A079905 (n + 1) : ℚ)

end A079905

/-! ## A079905.P2196152502781098682

`∪[2*n+1, A079946(n+1)]`
-/

namespace A079905.P2196152502781098682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079905.P2196152502781098682

namespace A079905

/-- `∪[2*n+1, A079946(n+1)]` -/
def P2196152502781098682.Spec : Prop :=
  ∀ n, (P2196152502781098682.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P10817783606493095853

`∪[2*n+1, A004760(n+2)]`
-/

namespace A079905.P10817783606493095853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079905.P10817783606493095853

namespace A079905

/-- `∪[2*n+1, A004760(n+2)]` -/
def P10817783606493095853.Spec : Prop :=
  ∀ n, (P10817783606493095853.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P17342979675862500372

`∪[2*n+1, A080637(n+2)]`
-/

namespace A079905.P17342979675862500372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079905.P17342979675862500372

namespace A079905

/-- `∪[2*n+1, A080637(n+2)]` -/
def P17342979675862500372.Spec : Prop :=
  ∀ n, (P17342979675862500372.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P1281018007145355930

`∪[2*n+1, A206332(n+2)]`
-/

namespace A079905.P1281018007145355930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079905.P1281018007145355930

namespace A079905

/-- `∪[2*n+1, A206332(n+2)]` -/
def P1281018007145355930.Spec : Prop :=
  ∀ n, (P1281018007145355930.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P6011779445001327616

`∪[2*n+1, A346301(n+3)]`
-/

namespace A079905.P6011779445001327616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079905.P6011779445001327616

namespace A079905

/-- `∪[2*n+1, A346301(n+3)]` -/
def P6011779445001327616.Spec : Prop :=
  ∀ n, (P6011779445001327616.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P3887036277001534104

`A079882(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A079905.P3887036277001534104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A079882 (n - 1) + a (n - 1)

end

end A079905.P3887036277001534104

namespace A079905

/-- `A079882(n-1)+a(n-1)` -/
def P3887036277001534104.Spec : Prop :=
  ∀ n, P3887036277001534104.a n = A079905 (n + 1)

end A079905

/-! ## A079905.P8106630889729705972

`∪[2*n+1, A038572(2*n+1)]`
-/

namespace A079905.P8106630889729705972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079905.P8106630889729705972

namespace A079905

/-- `∪[2*n+1, A038572(2*n+1)]` -/
def P8106630889729705972.Spec : Prop :=
  ∀ n, (P8106630889729705972.a n : ℤ) = A079905 (n + 1)

end A079905

/-! ## A079905.P8966140108847925143

`A115836(n+1)+A057427(n)`
-/

namespace A079905.P8966140108847925143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (n + 1) + A057427 n

end

end A079905.P8966140108847925143

namespace A079905

/-- `A115836(n+1)+A057427(n)` -/
def P8966140108847925143.Spec : Prop :=
  ∀ n, P8966140108847925143.a n = A079905 (n + 1)

end A079905

/-!
# A079908: Solution to the Dancing School Problem with 3 girls and n+3 boys: f(3,n).

The programs for A079908, the canonical program `A079908.P2800468205617456520` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079908 has offset 0).

The definition of A079908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079908.P2800468205617456520

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=36, a(4)=76`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079908

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2800468205617456520.Spec : Prop :=
  ∀ n, P2800468205617456520.a n = A079908 n

theorem P2800468205617456520.correct : P2800468205617456520.Spec := by
  intro n
  simp only [A079908]

end A079908

/-! ## A079908.P4036295181812622674

`n^(3%(n+1)²)+3*n`
-/

namespace A079908.P4036295181812622674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (3 % (n + 1) ^ 2) + 3 * n

end

end A079908.P4036295181812622674

namespace A079908

/-- `n^(3%(n+1)²)+3*n` -/
def P4036295181812622674.Spec : Prop :=
  ∀ n, (P4036295181812622674.a n : ℤ) = A079908 n

end A079908

/-! ## A079908.P9963301245088515611

`floor(sqrt((3*n)²+2))+n^3`
-/

namespace A079908.P9963301245088515611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((3 * n) ^ 2 + 2) + n ^ 3

end

end A079908.P9963301245088515611

namespace A079908

/-- `floor(sqrt((3*n)²+2))+n^3` -/
def P9963301245088515611.Spec : Prop :=
  ∀ n, (P9963301245088515611.a n : ℤ) = A079908 n

end A079908

/-! ## A079908.P10259214522957002320

`n*(n^(2%a(n-1))+3)` with `a(0)=1`
-/

namespace A079908.P10259214522957002320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n ^ (2 % a (n - 1)) + 3)

end

end A079908.P10259214522957002320

namespace A079908

/-- `n*(n^(2%a(n-1))+3)` -/
def P10259214522957002320.Spec : Prop :=
  ∀ n, (P10259214522957002320.a n : ℤ) = A079908 n

end A079908

/-! ## A079908.P14498493957220889519

`n*(n^gcd(2, a(n-1))+3)` with `a(0)=1`
-/

namespace A079908.P14498493957220889519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n ^ Nat.gcd 2 (a (n - 1)) + 3)

end

end A079908.P14498493957220889519

namespace A079908

/-- `n*(n^gcd(2, a(n-1))+3)` -/
def P14498493957220889519.Spec : Prop :=
  ∀ n, (P14498493957220889519.a n : ℤ) = A079908 n

end A079908

/-! ## A079908.P2008152916978353967

`n*(a(n-1)/floor(a(n-1))+n²+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079908.P2008152916978353967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (⌊a (n - 1)⌋ : ℚ) + (n ^ 2 + 2 : ℚ))

end

end A079908.P2008152916978353967

namespace A079908

/-- `n*(a(n-1)/floor(a(n-1))+n²+2)` -/
def P2008152916978353967.Spec : Prop :=
  ∀ n, P2008152916978353967.a n = (A079908 n : ℚ)

end A079908

/-! ## A079908.P1956199148474943024

`n*(a(n-1)/floor(a(n-1))+n*n+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079908.P1956199148474943024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (⌊a (n - 1)⌋ : ℚ) + (n * n : ℚ) + 2)

end

end A079908.P1956199148474943024

namespace A079908

/-- `n*(a(n-1)/floor(a(n-1))+n*n+2)` -/
def P1956199148474943024.Spec : Prop :=
  ∀ n, P1956199148474943024.a n = (A079908 n : ℚ)

end A079908

/-! ## A079908.P2446528915377297439

`xor(A005491(n), A057427(n))`
-/

namespace A079908.P2446528915377297439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005491 n) (A057427 n)

end

end A079908.P2446528915377297439

namespace A079908

/-- `xor(A005491(n), A057427(n))` -/
def P2446528915377297439.Spec : Prop :=
  ∀ n, P2446528915377297439.a n = A079908 n

end A079908

/-! ## A079908.P11317760816571728955

`round(A008486(n)+A033431(n)/2)`
-/

namespace A079908.P11317760816571728955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008486 n : ℚ) + (A033431 n : ℚ) / 2)

end

end A079908.P11317760816571728955

namespace A079908

/-- `round(A008486(n)+A033431(n)/2)` -/
def P11317760816571728955.Spec : Prop :=
  ∀ n, P11317760816571728955.a n = A079908 n

end A079908

/-! ## A079908.P4188197854411978319

`(A122553(n)+n²)*A028310(n)`
-/

namespace A079908.P4188197854411978319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122553 n + (n ^ 2 : ℤ)) * A028310 n

end

end A079908.P4188197854411978319

namespace A079908

/-- `(A122553(n)+n²)*A028310(n)` -/
def P4188197854411978319.Spec : Prop :=
  ∀ n, P4188197854411978319.a n = A079908 n

end A079908

/-! ## A079908.P2123159284417212265

`abs(A000007(n)-A007531(n+1)-4*n)`
-/

namespace A079908.P2123159284417212265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n - A007531 (n + 1) - (4 * n : ℤ)|

end

end A079908.P2123159284417212265

namespace A079908

/-- `abs(A000007(n)-A007531(n+1)-4*n)` -/
def P2123159284417212265.Spec : Prop :=
  ∀ n, P2123159284417212265.a n = A079908 n

end A079908

/-!
# A079909: Solution to the Dancing School Problem with 4 girls and n+4 boys: f(4,n).

The programs for A079909, there is no canonical definition to state claims against.
-/

/-! ## A079909.P2837959756765874809

`A133428(A273026(n))`
-/

namespace A079909.P2837959756765874809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133428 (A273026 n).toNat

end

end A079909.P2837959756765874809

/-!
# A079910: Solution to the Dancing School Problem with 5 girls and n+5 boys: f(5,n).

The programs for A079910, there is no canonical definition to state claims against.
-/

/-! ## A079910.P4223004563803328903

`A248944(A167499(n+2))%A250347(n+1)`
-/

namespace A079910.P4223004563803328903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248944 (A167499 (n + 2)).toNat) (A250347 (n + 1))

end

end A079910.P4223004563803328903

/-! ## A079910.P7883167918474980638

`A248944(A167499(n+2))%A022136(A004937(n))`
-/

namespace A079910.P7883167918474980638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248944 (A167499 (n + 2)).toNat) (A022136 (A004937 n).toNat)

end

end A079910.P7883167918474980638

/-! ## A079910.P10579003560108811793

`A248944(A167499(n+2))^A001221(A006005(n+1))`
-/

namespace A079910.P10579003560108811793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248944 (A167499 (n + 2)).toNat : ℚ) ^ (A001221 (A006005 (n + 1)).toNat : ℤ)

end

end A079910.P10579003560108811793

/-! ## A079910.P358470608690653551

`A248944(A167499(n+2))^A001221(A061142(n+1))`
-/

namespace A079910.P358470608690653551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248944 (A167499 (n + 2)).toNat : ℚ) ^ (A001221 (A061142 (n + 1)).toNat : ℤ)

end

end A079910.P358470608690653551

/-! ## A079910.P2563541695876149277

`A248944(A167499(n+2))^A001221(A220051(n))²²`
-/

namespace A079910.P2563541695876149277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248944 (A167499 (n + 2)).toNat : ℚ) ^ ((A001221 (A220051 n).toNat ^ 2) ^ 2 : ℤ)

end

end A079910.P2563541695876149277

/-!
# A079921: Solution to the Dancing School Problem with n girls and n+2 boys: f(n,2).

The programs for A079921, the canonical program `A079921.P12727395483835638814` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079921 has offset 1).

The definition of A079921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079921.P12727395483835638814

`a(n-1)+a(n-2)+n+1+1` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079921

/-- `a(n-1)+a(n-2)+n+1+1` -/
def P12727395483835638814.Spec : Prop :=
  ∀ n, (P12727395483835638814.a n : ℤ) = A079921 (n + 1)

theorem P12727395483835638814.correct : P12727395483835638814.Spec := by
  intro n
  simp only [A079921, Nat.add_sub_cancel]

end A079921

/-! ## A079921.P16840471888800718971

`ogf((3-2x-x^2+x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A079921.P16840471888800718971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -1, 1] [1, -3, 2, 1, -1] n

end

end A079921.P16840471888800718971

namespace A079921

/-- `ogf((3-2x-x^2+x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P16840471888800718971.Spec : Prop :=
  ∀ n, P16840471888800718971.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P18141682870483773340

`∑[a(n-1)+a(n-2)]-n` with `a(0)=3, a(1)=5`
-/

namespace A079921.P18141682870483773340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A079921.P18141682870483773340

namespace A079921

/-- `∑[a(n-1)+a(n-2)]-n` -/
def P18141682870483773340.Spec : Prop :=
  ∀ n, P18141682870483773340.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P10394866482435565809

`a(n-1)+2+a(n-2)+n` with `a(0)=3, a(1)=7`
-/

namespace A079921.P10394866482435565809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  a (n - 1) + 2 + (a (n - 2) + n)

end

end A079921.P10394866482435565809

namespace A079921

/-- `a(n-1)+2+a(n-2)+n` -/
def P10394866482435565809.Spec : Prop :=
  ∀ n, (P10394866482435565809.a n : ℤ) = A079921 (n + 1)

theorem P10394866482435565809.correct : P10394866482435565809.Spec := by
  intro n
  simp only [A079921, Nat.add_sub_cancel, A079921.P10394866482435565809.a, A079921.P12727395483835638814.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079921

/-! ## A079921.P4848615642725502890

`A001924(n+2)`
-/

namespace A079921.P4848615642725502890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 2)

end

end A079921.P4848615642725502890

namespace A079921

/-- `A001924(n+2)` -/
def P4848615642725502890.Spec : Prop :=
  ∀ n, P4848615642725502890.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P10078971769456936018

`∑[A020701(n)]-n`
-/

namespace A079921.P10078971769456936018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A079921.P10078971769456936018

namespace A079921

/-- `∑[A020701(n)]-n` -/
def P10078971769456936018.Spec : Prop :=
  ∀ n, P10078971769456936018.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P4645588255492401713

`A000126(n+3)-1`
-/

namespace A079921.P4645588255492401713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 3) - 1

end

end A079921.P4645588255492401713

namespace A079921

/-- `A000126(n+3)-1` -/
def P4645588255492401713.Spec : Prop :=
  ∀ n, P4645588255492401713.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P89838879237786147

`A180671(n)+3-n`
-/

namespace A079921.P89838879237786147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180671 n + (3 - (n : ℤ))

end

end A079921.P89838879237786147

namespace A079921

/-- `A180671(n)+3-n` -/
def P89838879237786147.Spec : Prop :=
  ∀ n, P89838879237786147.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P17872813289638283377

`A167616(n+6)-n`
-/

namespace A079921.P17872813289638283377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 6) - (n : ℤ)

end

end A079921.P17872813289638283377

namespace A079921

/-- `A167616(n+6)-n` -/
def P17872813289638283377.Spec : Prop :=
  ∀ n, P17872813289638283377.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P15336510514037863545

`record[A001924(abs(2-n))]`
-/

namespace A079921.P15336510514037863545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079921.P15336510514037863545

namespace A079921

/-- `record[A001924(abs(2-n))]` -/
def P15336510514037863545.Spec : Prop :=
  ∀ n, P15336510514037863545.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P468425606083040877

`∑[∑[A373566(n)]]+2`
-/

namespace A079921.P468425606083040877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A079921.P468425606083040877

namespace A079921

/-- `∑[∑[A373566(n)]]+2` -/
def P468425606083040877.Spec : Prop :=
  ∀ n, P468425606083040877.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P5710099207541466730

`∑[A020706(n)-2]+1`
-/

namespace A079921.P5710099207541466730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079921.P5710099207541466730

namespace A079921

/-- `∑[A020706(n)-2]+1` -/
def P5710099207541466730.Spec : Prop :=
  ∀ n, P5710099207541466730.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P1780968558890692556

`∑[A020695(n+1)]-n`
-/

namespace A079921.P1780968558890692556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A079921.P1780968558890692556

namespace A079921

/-- `∑[A020695(n+1)]-n` -/
def P1780968558890692556.Spec : Prop :=
  ∀ n, P1780968558890692556.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P9450546699959090706

`∑[A071679(n+2)]-n`
-/

namespace A079921.P9450546699959090706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A079921.P9450546699959090706

namespace A079921

/-- `∑[A071679(n+2)]-n` -/
def P9450546699959090706.Spec : Prop :=
  ∀ n, P9450546699959090706.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P6130785248943102815

`∑[A048584(n)-2]-n`
-/

namespace A079921.P6130785248943102815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A079921.P6130785248943102815

namespace A079921

/-- `∑[A048584(n)-2]-n` -/
def P6130785248943102815.Spec : Prop :=
  ∀ n, P6130785248943102815.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P18052593145263512323

`∑[A000045(n+4)]-n`
-/

namespace A079921.P18052593145263512323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A079921.P18052593145263512323

namespace A079921

/-- `∑[A000045(n+4)]-n` -/
def P18052593145263512323.Spec : Prop :=
  ∀ n, P18052593145263512323.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P17333245109889365562

`record[A212804(n)+2-n]`
-/

namespace A079921.P17333245109889365562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079921.P17333245109889365562

namespace A079921

/-- `record[A212804(n)+2-n]` -/
def P17333245109889365562.Spec : Prop :=
  ∀ n, P17333245109889365562.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P8574140852288764991

`A001891(n+1)+2+n`
-/

namespace A079921.P8574140852288764991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + 2 + (n : ℤ)

end

end A079921.P8574140852288764991

namespace A079921

/-- `A001891(n+1)+2+n` -/
def P8574140852288764991.Spec : Prop :=
  ∀ n, P8574140852288764991.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P5469620959460645292

`A001911(n+3)-(n+3)`
-/

namespace A079921.P5469620959460645292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 3) - (n + 3 : ℤ)

end

end A079921.P5469620959460645292

namespace A079921

/-- `A001911(n+3)-(n+3)` -/
def P5469620959460645292.Spec : Prop :=
  ∀ n, P5469620959460645292.a n = A079921 (n + 1)

end A079921

/-! ## A079921.P5698278624960784181

`A000045(n+6)-(n+5)`
-/

namespace A079921.P5698278624960784181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 6) - (n + 5 : ℤ)

end

end A079921.P5698278624960784181

namespace A079921

/-- `A000045(n+6)-(n+5)` -/
def P5698278624960784181.Spec : Prop :=
  ∀ n, P5698278624960784181.a n = A079921 (n + 1)

end A079921

/-!
# A079922: Solution to the Dancing School Problem with n girls and n+3 boys: f(n,3).

The programs for A079922, there is no canonical definition to state claims against.
-/

/-! ## A079922.P15254472309132860631

`A248944(∑[n+3]+1)`
-/

namespace A079922.P15254472309132860631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079922.P15254472309132860631

/-! ## A079922.P7925693699218270063

`A248944(A034856(n+2))+A000007(n+1)`
-/

namespace A079922.P7925693699218270063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A079922.P7925693699218270063

/-! ## A079922.P2273165328350362818

`A248944(A034856(n+2))%A000108(n+3)`
-/

namespace A079922.P2273165328350362818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248944 (A034856 (n + 2)).toNat) (A000108 (n + 3))

end

end A079922.P2273165328350362818

/-! ## A079922.P5767862834678798080

`A008835(2*n+1)*A248944(A034856(n+2))`
-/

namespace A079922.P5767862834678798080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (2 * n + 1) * A248944 (A034856 (n + 2)).toNat

end

end A079922.P5767862834678798080

/-! ## A079922.P13411500324589472058

`A007318(A000217(n+4))*A248944(A034856(n+2))`
-/

namespace A079922.P13411500324589472058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 4)).toNat * A248944 (A034856 (n + 2)).toNat

end

end A079922.P13411500324589472058

/-!
# A079923: Solution to the Dancing School Problem with n girls and n+4 boys: f(n,4).

The programs for A079923, there is no canonical definition to state claims against.
-/

/-! ## A079923.P7301760235333391402

`A248944(∑[n+4]+3)`
-/

namespace A079923.P7301760235333391402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A079923.P7301760235333391402

/-! ## A079923.P14348669891353716537

`or(A000007(n), A248944(A027379(n+2)))`
-/

namespace A079923.P14348669891353716537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A248944 (A027379 (n + 2)).toNat)

end

end A079923.P14348669891353716537

/-! ## A079923.P1303946460246205596

`A248944(A027379(n+2))+A000007(n+2)`
-/

namespace A079923.P1303946460246205596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A027379 (n + 2)).toNat + A000007 (n + 2)

end

end A079923.P1303946460246205596

/-! ## A079923.P1789783372583412926

`A248944(A027379(n+2))%A079913(n+3)`
-/

namespace A079923.P1789783372583412926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248944 (A027379 (n + 2)).toNat) (A079913 (n + 3))

end

end A079923.P1789783372583412926

/-! ## A079923.P4902163623532112920

`A248944(A027379(n+2))^A008835(n+1)`
-/

namespace A079923.P4902163623532112920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248944 (A027379 (n + 2)).toNat : ℚ) ^ (A008835 (n + 1) : ℤ)

end

end A079923.P4902163623532112920

/-!
# A079924: Solution to the Dancing School Problem with n girls and n+5 boys: f(n,5).

The programs for A079924, there is no canonical definition to state claims against.
-/

/-! ## A079924.P2029189812961847168

`A248944(∑[n+5]+6)`
-/

namespace A079924.P2029189812961847168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A079924.P2029189812961847168

/-!
# A079925: Solution to the Dancing School Problem with n girls and n+6 boys: f(n,6).

The programs for A079925, there is no canonical definition to state claims against.
-/

/-! ## A079925.P7844178900871767168

`A248944(∑[n+6]+10)`
-/

namespace A079925.P7844178900871767168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A079925.P7844178900871767168

/-! ## A079925.P12199622574732812843

`record[A248944(A052905(n+1))]`
-/

namespace A079925.P12199622574732812843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A052905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079925.P12199622574732812843

/-! ## A079925.P17301516307962617199

`record[A248944(A155212(n)+3)]`
-/

namespace A079925.P17301516307962617199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A155212 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079925.P17301516307962617199

/-! ## A079925.P10736859133164559482

`record[A248944(eq[2, A054123(n+2)])]`
-/

namespace A079925.P10736859133164559482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079925.P10736859133164559482

/-! ## A079925.P13219528221291909424

`record[A248944(eq[2, A054123(n)]-2)]`
-/

namespace A079925.P13219528221291909424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079925.P13219528221291909424

/-!
# A079926: Solution to the Dancing School Problem with n girls and n+7 boys: f(n,7).

The programs for A079926, there is no canonical definition to state claims against.
-/

/-! ## A079926.P15221178660524788275

`A248944(A055999(n+4))`
-/

namespace A079926.P15221178660524788275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A055999 (n + 4)).toNat

end

end A079926.P15221178660524788275

/-! ## A079926.P54724675481392833

`A248944(eq[4, A219347(n)])`
-/

namespace A079926.P54724675481392833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079926.P54724675481392833

/-! ## A079926.P2729192759777048769

`A248944(eq[6, A193592(n)])`
-/

namespace A079926.P2729192759777048769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079926.P2729192759777048769

/-! ## A079926.P6424803063612378543

`A248944(Δ[A023551(n+2)])`
-/

namespace A079926.P6424803063612378543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (f1 (n + 1) - f1 n).toNat

end

end A079926.P6424803063612378543

/-! ## A079926.P6330463080603286852

`A248944(Δ[A026054(n+4)])`
-/

namespace A079926.P6330463080603286852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (f1 (n + 1) - f1 n).toNat

end

end A079926.P6330463080603286852

/-!
# A079927: Solution to the Dancing School Problem with n girls and n+8 boys: f(n,8).

The programs for A079927, there is no canonical definition to state claims against.
-/

/-! ## A079927.P6666523310983135888

`A248944(A056126(n)+29)`
-/

namespace A079927.P6666523310983135888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A056126 n + 29).toNat

end

end A079927.P6666523310983135888

/-! ## A079927.P1234318633403713194

`A248944(eq[5, A219347(n)])`
-/

namespace A079927.P1234318633403713194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079927.P1234318633403713194

/-! ## A079927.P12445218338486757089

`A248944(eq[7, A193592(n)])`
-/

namespace A079927.P12445218338486757089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079927.P12445218338486757089

/-! ## A079927.P7365439116949278108

`A248944(A155212(n+4)+1)`
-/

namespace A079927.P7365439116949278108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A155212 (n + 4) + 1).toNat

end

end A079927.P7365439116949278108

/-! ## A079927.P9232924229710482762

`A248944(A046691(n+6)-3)`
-/

namespace A079927.P9232924229710482762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A046691 (n + 6) - 3).toNat

end

end A079927.P9232924229710482762

/-!
# A079928: Solution to the Dancing School Problem with n girls and n+9 boys: f(n,9).

The programs for A079928, there is no canonical definition to state claims against.
-/

/-! ## A079928.P4721261512001247978

`A248944(A155212(n+5))`
-/

namespace A079928.P4721261512001247978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A155212 (n + 5)).toNat

end

end A079928.P4721261512001247978

/-! ## A079928.P9570368953395799453

`A248944(eq[6, A219347(n)])`
-/

namespace A079928.P9570368953395799453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079928.P9570368953395799453

/-! ## A079928.P12463336002494081625

`A248944(eq[8, A193592(n)])`
-/

namespace A079928.P12463336002494081625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A079928.P12463336002494081625

/-! ## A079928.P3922623554120272460

`A248944(A055999(n+6)-2)`
-/

namespace A079928.P3922623554120272460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A055999 (n + 6) - 2).toNat

end

end A079928.P3922623554120272460

/-! ## A079928.P16922124470320291782

`A248944(A000096(n+8)-7)`
-/

namespace A079928.P16922124470320291782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248944 (A000096 (n + 8) - 7).toNat

end

end A079928.P16922124470320291782

/-!
# A079929: a(n)=(3*n+1)!/(n!*3^n).

The programs for A079929, the canonical program `A079929.P5378076956741885089` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079929 has offset 0).

The definition of A079929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079929.P5378076956741885089

`(3*n-1)*(3*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079929

/-- `(3*n-1)*(3*n+1)*a(n-1)` -/
def P5378076956741885089.Spec : Prop :=
  ∀ n, P5378076956741885089.a n = A079929 n

theorem P5378076956741885089.correct : P5378076956741885089.Spec := by
  intro n
  simp only [A079929]

end A079929

/-! ## A079929.P2576789864157201395

`(3*n+1)!/(n!*3^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079929.P2576789864157201395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n + 1) : ℚ) / (Nat.factorial n * 3 ^ n : ℚ)

end

end A079929.P2576789864157201395

namespace A079929

/-- `(3*n+1)!/(n!*3^n)` -/
def P2576789864157201395.Spec : Prop :=
  ∀ n, P2576789864157201395.a n = (A079929 n : ℚ)

end A079929

/-! ## A079929.P11539187359499047178

`∏[abs(1-(3*n)²)]`
-/

namespace A079929.P11539187359499047178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((3 * n) ^ 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079929.P11539187359499047178

namespace A079929

/-- `∏[abs(1-(3*n)²)]` -/
def P11539187359499047178.Spec : Prop :=
  ∀ n, P11539187359499047178.a n = A079929 n

end A079929

/-! ## A079929.P6584979662686420257

`a(n-1)/(3*n)^(-2)-a(n-1)` with `a(0)=1`
-/

namespace A079929.P6584979662686420257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (3 * n : ℚ) ^ (-2 : ℤ) - a (n - 1)

end

end A079929.P6584979662686420257

namespace A079929

/-- `a(n-1)/(3*n)^(-2)-a(n-1)` -/
def P6584979662686420257.Spec : Prop :=
  ∀ n, P6584979662686420257.a n = (A079929 n : ℚ)

end A079929

/-! ## A079929.P8665031638216423315

`A111394(Δ[n²])`
-/

namespace A079929.P8665031638216423315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111394 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079929.P8665031638216423315

namespace A079929

/-- `A111394(Δ[n²])` -/
def P8665031638216423315.Spec : Prop :=
  ∀ n, P8665031638216423315.a n = A079929 n

end A079929

/-!
# A079931: Greedy powers of (1/sqrt(Pi)): Sum_{n>=1} (1/sqrt(Pi))^a(n) = 1.

The programs for A079931, there is no canonical definition to state claims against.
-/

/-! ## A079931.P3013883894896311999

`record[and(A153351(n+1), A322791(n+1))]`
-/

namespace A079931.P3013883894896311999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153351 (n + 1)) (A322791 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079931.P3013883894896311999

/-! ## A079931.P9975427087056613218

`record[and(A092559(n+1), A305976(n+1))]`
-/

namespace A079931.P9975427087056613218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092559 (n + 1)) (A305976 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079931.P9975427087056613218

/-!
# A079935: a(n) = 4*a(n-1) - a(n-2) with a(1) = 1, a(2) = 3.

The programs for A079935, the canonical program `A079935.P8837609554070530735` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079935 has offset 1).

The definition of A079935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A079935.P8837609554070530735`, by `A079935.P8837609554070530735.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079935.P8837609554070530735

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079935

/-- `4*a(n-1)-a(n-2)` -/
def P8837609554070530735.Spec : Prop :=
  ∀ n, P8837609554070530735.a n = A079935 (n + 1)

theorem P8837609554070530735.correct : P8837609554070530735.Spec := by
  intro n
  simp only [A079935, Nat.add_sub_cancel]

end A079935

/-! ## A079935.P2444000927748111788

`ceil((2+sqrt(3))^(n+1)/(3+sqrt(3)))`
-/

namespace A079935.P2444000927748111788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 + Real.sqrt (3 : ℝ)) ^ (n + 1) / (3 + Real.sqrt (3 : ℝ))⌉

end

end A079935.P2444000927748111788

namespace A079935

/-- `ceil((2+sqrt(3))^(n+1)/(3+sqrt(3)))` -/
def P2444000927748111788.Spec : Prop :=
  ∀ n, P2444000927748111788.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P16632224986908537202

`ogf((1-x)/(1-4x+x^2))`
-/

namespace A079935.P16632224986908537202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 1] n

end

end A079935.P16632224986908537202

namespace A079935

/-- `ogf((1-x)/(1-4x+x^2))` -/
def P16632224986908537202.Spec : Prop :=
  ∀ n, P16632224986908537202.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P16302730623622203265

`floor((2+sqrt(3))*a(n-1))` with `a(0)=1`
-/

namespace A079935.P16302730623622203265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 + Real.sqrt (3 : ℝ)) * (a (n - 1) : ℝ)⌋

end

end A079935.P16302730623622203265

namespace A079935

/-- `floor((2+sqrt(3))*a(n-1))` -/
def P16302730623622203265.Spec : Prop :=
  ∀ n, P16302730623622203265.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P7093770628741186740

`round((sqrt(3)+2)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A079935.P7093770628741186740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A079935.P7093770628741186740

namespace A079935

/-- `round((sqrt(3)+2)*a(n-1))` -/
def P7093770628741186740.Spec : Prop :=
  ∀ n, P7093770628741186740.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P4609483406937104350

`abs(round(a(n-1)/(sqrt(3)-2)))` with `a(0)=1, a(1)=3`
-/

namespace A079935.P4609483406937104350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  |SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))|

end

end A079935.P4609483406937104350

namespace A079935

/-- `abs(round(a(n-1)/(sqrt(3)-2)))` -/
def P4609483406937104350.Spec : Prop :=
  ∀ n, P4609483406937104350.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P14304619356181779311

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=1, a(1)=3`
-/

namespace A079935.P14304619356181779311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A079935.P14304619356181779311

namespace A079935

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P14304619356181779311.Spec : Prop :=
  ∀ n, P14304619356181779311.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P3109759675423113697

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A079935.P3109759675423113697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A079935.P3109759675423113697

namespace A079935

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P3109759675423113697.Spec : Prop :=
  ∀ n, P3109759675423113697.a n = A079935 (n + 1)

theorem P3109759675423113697.correct : P3109759675423113697.Spec := by
  intro n
  simp only [A079935, Nat.add_sub_cancel, A079935.P3109759675423113697.a, A079935.P8837609554070530735.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079935

/-! ## A079935.P7776656607617490358

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A079935.P7776656607617490358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A079935.P7776656607617490358

namespace A079935

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P7776656607617490358.Spec : Prop :=
  ∀ n, P7776656607617490358.a n = A079935 (n + 1)

theorem P7776656607617490358.correct : P7776656607617490358.Spec := by
  intro n
  simp only [A079935, Nat.add_sub_cancel, A079935.P7776656607617490358.a, A079935.P8837609554070530735.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079935

/-! ## A079935.P7753198186863473944

`A001835(n+1)`
-/

namespace A079935.P7753198186863473944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

end

end A079935.P7753198186863473944

namespace A079935

/-- `A001835(n+1)` -/
def P7753198186863473944.Spec : Prop :=
  ∀ n, P7753198186863473944.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P7980564693064274115

`A140827(3*n)`
-/

namespace A079935.P7980564693064274115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (3 * n)

end

end A079935.P7980564693064274115

namespace A079935

/-- `A140827(3*n)` -/
def P7980564693064274115.Spec : Prop :=
  ∀ n, P7980564693064274115.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P8595502802093406627

`A002530(Δ[n²])`
-/

namespace A079935.P8595502802093406627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079935.P8595502802093406627

namespace A079935

/-- `A002530(Δ[n²])` -/
def P8595502802093406627.Spec : Prop :=
  ∀ n, P8595502802093406627.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P18361525619235940206

`A048788(Δ[n²])`
-/

namespace A079935.P18361525619235940206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079935.P18361525619235940206

namespace A079935

/-- `A048788(Δ[n²])` -/
def P18361525619235940206.Spec : Prop :=
  ∀ n, P18361525619235940206.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P13767630955830141740

`A305491(Δ[n²])`
-/

namespace A079935.P13767630955830141740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A079935.P13767630955830141740

namespace A079935

/-- `A305491(Δ[n²])` -/
def P13767630955830141740.Spec : Prop :=
  ∀ n, P13767630955830141740.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P2867553622412280275

`∑[A052530(n)]+1`
-/

namespace A079935.P2867553622412280275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A079935.P2867553622412280275

namespace A079935

/-- `∑[A052530(n)]+1` -/
def P2867553622412280275.Spec : Prop :=
  ∀ n, P2867553622412280275.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P17928497487130993958

`A005246(2*(n+1))`
-/

namespace A079935.P17928497487130993958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * (n + 1))

end

end A079935.P17928497487130993958

namespace A079935

/-- `A005246(2*(n+1))` -/
def P17928497487130993958.Spec : Prop :=
  ∀ n, P17928497487130993958.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P8778832834836770056

`2*A061278(n)+1`
-/

namespace A079935.P8778832834836770056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061278 n + 1

end

end A079935.P8778832834836770056

namespace A079935

/-- `2*A061278(n)+1` -/
def P8778832834836770056.Spec : Prop :=
  ∀ n, P8778832834836770056.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P9173608658637960737

`A122573(2*(n+2))`
-/

namespace A079935.P9173608658637960737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (2 * (n + 2))

end

end A079935.P9173608658637960737

namespace A079935

/-- `A122573(2*(n+2))` -/
def P9173608658637960737.Spec : Prop :=
  ∀ n, P9173608658637960737.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P6858270560142880369

`A254308(3*n+1)`
-/

namespace A079935.P6858270560142880369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (3 * n + 1)

end

end A079935.P6858270560142880369

namespace A079935

/-- `A254308(3*n+1)` -/
def P6858270560142880369.Spec : Prop :=
  ∀ n, P6858270560142880369.a n = A079935 (n + 1)

end A079935

/-! ## A079935.P17591554845401602682

`∑[∑[A393527(2*n)]]`
-/

namespace A079935.P17591554845401602682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393527 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079935.P17591554845401602682

namespace A079935

/-- `∑[∑[A393527(2*n)]]` -/
def P17591554845401602682.Spec : Prop :=
  ∀ n, P17591554845401602682.a n = A079935 (n + 1)

end A079935

/-!
# A079936: Greedy frac multiples of sqrt(5): a(1)=1, sum(n>0,frac(a(n)*x))=1 at x=sqrt(5).

The programs for A079936, there is no canonical definition to state claims against.
-/

/-! ## A079936.P5017749549425418560

`∩[A293173(n+1), A358374(n+1)]`
-/

namespace A079936.P5017749549425418560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079936.P5017749549425418560

/-!
# A079937: Greedy frac multiples of Pi^2/6: a(1)=1, Sum_{n>=1} frac(a(n)*x) = 1 at x = Pi^2/6.

The programs for A079937, there is no canonical definition to state claims against.
-/

/-! ## A079937.P11280586960520247322

`A003188(A056665(n+1))%A301362(n+3)`
-/

namespace A079937.P11280586960520247322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A056665 (n + 1)).toNat) (A301362 (n + 3))

end

end A079937.P11280586960520247322

/-!
# A079939: Greedy frac multiples of e: a(1)=1, Sum_{n>0} frac(a(n)*e)=1.

The programs for A079939, there is no canonical definition to state claims against.
-/

/-! ## A079939.P15544412752630056738

`A018653(A000040(n+1))-A284466(n)`
-/

namespace A079939.P15544412752630056738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018653 (A000040 (n + 1)).toNat - A284466 n

end

end A079939.P15544412752630056738

/-! ## A079939.P8190225732124897760

`A018653(A152242(n+1))-A284466(n)`
-/

namespace A079939.P8190225732124897760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018653 (A152242 (n + 1)).toNat - A284466 n

end

end A079939.P8190225732124897760

/-!
# A079940: Greedy fractional multiples of 1/e: a(1)=1, Sum_{n>0} frac(a(n)/e) = 1.

The programs for A079940, there is no canonical definition to state claims against.
-/

/-! ## A079940.P4553552690832783671

`∑[A002487(A137572(n))]`
-/

namespace A079940.P4553552690832783671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A137572 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079940.P4553552690832783671

/-! ## A079940.P11732090926656744330

`A017666(A101483(n))+Δ[n*floor(n/2)]`
-/

namespace A079940.P11732090926656744330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A101483 n).toNat + (f1 (n + 1) - f1 n)

end

end A079940.P11732090926656744330

/-!
# A079942: Numerators of the convergents of the continued fraction for log(2).

The programs for A079942, there is no canonical definition to state claims against.
-/

/-! ## A079942.P7636842632921204405

`val(A121475(n+1), 2)`
-/

namespace A079942.P7636842632921204405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A121475 (n + 1)).toNat 2

end

end A079942.P7636842632921204405

/-!
# A079944: A run of 2^n 0's followed by a run of 2^n 1's, for n=0, 1, 2, ...

The programs for A079944, the canonical program `A079944.P122616085984779513` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079944 has offset 0).

The definition of A079944 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079944.P122616085984779513

`A000035(A004526(A030101(n+2)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079944

/-- `A000035(A004526(A030101(n+2)))` -/
def P122616085984779513.Spec : Prop :=
  ∀ n, P122616085984779513.a n = A079944 n

theorem P122616085984779513.correct : P122616085984779513.Spec := by
  intro n
  simp only [A079944]

end A079944

/-! ## A079944.P10532003309974786280

`a(floor(n/2)-1)` with `a(0)=0, a(1)=1`
-/

namespace A079944.P10532003309974786280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A079944.P10532003309974786280

namespace A079944

/-- `a(floor(n/2)-1)` -/
def P10532003309974786280.Spec : Prop :=
  ∀ n, (P10532003309974786280.a n : ℤ) = A079944 n

end A079944

/-! ## A079944.P6622268903130353798

`a(ceil((n-3)/2))²` with `a(0)=0, a(1)=1`
-/

namespace A079944.P6622268903130353798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌈((n : ℤ) - 3 : ℚ) / 2⌉.toNat ^ 2

end

end A079944.P6622268903130353798

namespace A079944

/-- `a(ceil((n-3)/2))²` -/
def P6622268903130353798.Spec : Prop :=
  ∀ n, (P6622268903130353798.a n : ℤ) = A079944 n

end A079944

/-! ## A079944.P4859382888729113837

`sqrt(a(ceil((n-3)/2)))` with `a(0)=0, a(1)=1`
-/

namespace A079944.P4859382888729113837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  Real.sqrt (a ⌈((n : ℤ) - 3 : ℚ) / 2⌉.toNat)

end

end A079944.P4859382888729113837

namespace A079944

/-- `sqrt(a(ceil((n-3)/2)))` -/
def P4859382888729113837.Spec : Prop :=
  ∀ n, P4859382888729113837.a n = (A079944 n : ℝ)

end A079944

/-! ## A079944.P16182460093953024346

`abs(a(∑[(n-1)%2]))` with `a(0)=0, a(1)=1`
-/

namespace A079944.P16182460093953024346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079944.P16182460093953024346

namespace A079944

/-- `abs(a(∑[(n-1)%2]))` -/
def P16182460093953024346.Spec : Prop :=
  ∀ n, (P16182460093953024346.a n : ℤ) = A079944 n

end A079944

/-! ## A079944.P13510711597235321946

`abs(a(gcd(n, ∑[n])-1))` with `a(0)=0, a(1)=1`
-/

namespace A079944.P13510711597235321946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A079944.P13510711597235321946

namespace A079944

/-- `abs(a(gcd(n, ∑[n])-1))` -/
def P13510711597235321946.Spec : Prop :=
  ∀ n, (P13510711597235321946.a n : ℤ) = A079944 n

end A079944

/-! ## A079944.P5442017273857700791

`char[∑[xor(1, n*char[2^n])]]`
-/

namespace A079944.P5442017273857700791
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (if ∃ j, f3 j = n then 1 else 0))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A079944.P5442017273857700791

namespace A079944

/-- `char[∑[xor(1, n*char[2^n])]]` -/
def P5442017273857700791.Spec : Prop :=
  ∀ n, (P5442017273857700791.a n : ℤ) = A079944 n

end A079944

/-! ## A079944.P17440269342210393841

`round(and(n+1, 2*(n+2))/(n+1))`
-/

namespace A079944.P17440269342210393841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land (n + 1) (2 * (n + 2)) : ℚ) / (n + 1 : ℚ))

end

end A079944.P17440269342210393841

namespace A079944

/-- `round(and(n+1, 2*(n+2))/(n+1))` -/
def P17440269342210393841.Spec : Prop :=
  ∀ n, P17440269342210393841.a n = A079944 n

end A079944

/-! ## A079944.P3886450511523984627

`round((n+1)/xor(n+1, 2*(n+2)))`
-/

namespace A079944.P3886450511523984627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (2 * (n + 2)) : ℚ))

end

end A079944.P3886450511523984627

namespace A079944

/-- `round((n+1)/xor(n+1, 2*(n+2)))` -/
def P3886450511523984627.Spec : Prop :=
  ∀ n, P3886450511523984627.a n = A079944 n

end A079944

/-! ## A079944.P1630363475953763032

`floor(a(∑[3-a(n-1)]-(n+1)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A079944.P1630363475953763032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)).toNat

end

end A079944.P1630363475953763032

namespace A079944

/-- `floor(a(∑[3-a(n-1)]-(n+1)))` -/
def P1630363475953763032.Spec : Prop :=
  ∀ n, (P1630363475953763032.a n : ℤ) = A079944 n

end A079944

/-! ## A079944.P10939334391650025415

`log2(A079882(n))`
-/

namespace A079944.P10939334391650025415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A079882 n : ℝ)

end

end A079944.P10939334391650025415

namespace A079944

/-- `log2(A079882(n))` -/
def P10939334391650025415.Spec : Prop :=
  ∀ n, P10939334391650025415.a n = (A079944 n : ℝ)

end A079944

/-! ## A079944.P9391244092382515024

`A103697(n)%2`
-/

namespace A079944.P9391244092382515024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103697 n) 2

end

end A079944.P9391244092382515024

namespace A079944

/-- `A103697(n)%2` -/
def P9391244092382515024.Spec : Prop :=
  ∀ n, P9391244092382515024.a n = A079944 n

end A079944

/-! ## A079944.P2810951859391087016

`Δ[A166079(n+3)]`
-/

namespace A079944.P2810951859391087016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079944.P2810951859391087016

namespace A079944

/-- `Δ[A166079(n+3)]` -/
def P2810951859391087016.Spec : Prop :=
  ∀ n, P2810951859391087016.a n = A079944 n

end A079944

/-! ## A079944.P2758431790167068371

`1-A086694(n+1)`
-/

namespace A079944.P2758431790167068371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086694 (n + 1)

end

end A079944.P2758431790167068371

namespace A079944

/-- `1-A086694(n+1)` -/
def P2758431790167068371.Spec : Prop :=
  ∀ n, P2758431790167068371.a n = A079944 n

end A079944

/-! ## A079944.P16761805323080390107

`A346302(n+1)%2`
-/

namespace A079944.P16761805323080390107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346302 (n + 1)) 2

end

end A079944.P16761805323080390107

namespace A079944

/-- `A346302(n+1)%2` -/
def P16761805323080390107.Spec : Prop :=
  ∀ n, P16761805323080390107.a n = A079944 n

end A079944

/-! ## A079944.P5452412449189016434

`A362160(n+1)%2`
-/

namespace A079944.P5452412449189016434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362160 (n + 1)) 2

end

end A079944.P5452412449189016434

namespace A079944

/-- `A362160(n+1)%2` -/
def P5452412449189016434.Spec : Prop :=
  ∀ n, P5452412449189016434.a n = A079944 n

end A079944

/-! ## A079944.P12231363956013557186

`char[record[A038572(n)-2]]`
-/

namespace A079944.P12231363956013557186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A079944.P12231363956013557186

namespace A079944

/-- `char[record[A038572(n)-2]]` -/
def P12231363956013557186.Spec : Prop :=
  ∀ n, (P12231363956013557186.a n : ℤ) = A079944 n

end A079944

/-!
# A079945: Partial sums of A079882.

The programs for A079945, the canonical program `A079945.P8739937021354229717` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079945 has offset 0).

The definition of A079945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079945.P8739937021354229717

`∑[abs(a(floor(n/2)-1))]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079945

/-- `∑[abs(a(floor(n/2)-1))]` -/
def P8739937021354229717.Spec : Prop :=
  ∀ n, (P8739937021354229717.a n : ℤ) = A079945 n

theorem P8739937021354229717.correct : P8739937021354229717.Spec := by
  intro n
  simp only [A079945]

end A079945

/-! ## A079945.P16019938848215410809

`∑[a(floor(n/2)-1)!]` with `a(0)=1, a(1)=2`
-/

namespace A079945.P16019938848215410809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.factorial (f1 (⌊(n : ℚ) / 2⌋ - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P16019938848215410809

namespace A079945

/-- `∑[a(floor(n/2)-1)!]` -/
def P16019938848215410809.Spec : Prop :=
  ∀ n, (P16019938848215410809.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P18296792653919485879

`∑[dr(a(floor(n/2)-1))]` with `a(0)=1, a(1)=2`
-/

namespace A079945.P18296792653919485879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (⌊(n : ℚ) / 2⌋ - 1).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P18296792653919485879

namespace A079945

/-- `∑[dr(a(floor(n/2)-1))]` -/
def P18296792653919485879.Spec : Prop :=
  ∀ n, (P18296792653919485879.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P2976167916401008272

`∑[floor(a(floor(n/2)-1))]` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A079945.P2976167916401008272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (⌊(n : ℚ) / 2⌋ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P2976167916401008272

namespace A079945

/-- `∑[floor(a(floor(n/2)-1))]` -/
def P2976167916401008272.Spec : Prop :=
  ∀ n, (P2976167916401008272.a n : ℤ) = A079945 n

theorem P2976167916401008272.correct : P2976167916401008272.Spec := by
  intro n
  simp only [A079945, Nat.add_sub_cancel, A079945.P2976167916401008272.f1, A079945.P2976167916401008272.a, A079945.P8739937021354229717.f1, A079945.P8739937021354229717.a, SequenceMachineLib.memo_apply]

end A079945

/-! ## A079945.P9676678649475951790

`lt[xor(or(n, n+1), a(n-1)), n]-1` with `a(0)=1`
-/

namespace A079945.P9676678649475951790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (Nat.lor n (n + 1)) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A079945.P9676678649475951790

namespace A079945

/-- `lt[xor(or(n, n+1), a(n-1)), n]-1` -/
def P9676678649475951790.Spec : Prop :=
  ∀ n, P9676678649475951790.a n = A079945 n

end A079945

/-! ## A079945.P17036541266079577044

`lt[xor(and(n, n+1), a(n-1)), n]-2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A079945.P17036541266079577044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Nat.xor (Nat.land n (n + 1)) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 2

end

end A079945.P17036541266079577044

namespace A079945

/-- `lt[xor(and(n, n+1), a(n-1)), n]-2` -/
def P17036541266079577044.Spec : Prop :=
  ∀ n, P17036541266079577044.a n = A079945 n

end A079945

/-! ## A079945.P17007992847285412293

`floor(a(n-1)+n/a(floor(a(n-1)/2))+1)` with `a(0)=1`
-/

namespace A079945.P17007992847285412293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / (a ⌊(a (n - 1) : ℚ) / 2⌋.toNat : ℚ) + 1)⌋

end

end A079945.P17007992847285412293

namespace A079945

/-- `floor(a(n-1)+n/a(floor(a(n-1)/2))+1)` -/
def P17007992847285412293.Spec : Prop :=
  ∀ n, P17007992847285412293.a n = A079945 n

end A079945

/-! ## A079945.P15570598464033667580

`∑[A079882(n)]`
-/

namespace A079945.P15570598464033667580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P15570598464033667580

namespace A079945

/-- `∑[A079882(n)]` -/
def P15570598464033667580.Spec : Prop :=
  ∀ n, P15570598464033667580.a n = A079945 n

theorem P15570598464033667580.correct : P15570598464033667580.Spec := by
  intro n
  simp only [A079945, Nat.add_sub_cancel, A079945.P15570598464033667580.f1, A079945.P15570598464033667580.a, A079945.P8739937021354229717.f1, A079945.P8739937021354229717.a, A079882, A079882.P12778706361266125530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079945

/-! ## A079945.P2068368088164403644

`∑[A079944(n)+1]`
-/

namespace A079945.P2068368088164403644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P2068368088164403644

namespace A079945

/-- `∑[A079944(n)+1]` -/
def P2068368088164403644.Spec : Prop :=
  ∀ n, P2068368088164403644.a n = A079945 n

end A079945

/-! ## A079945.P15893237513676101862

`A080653(n+1)-1`
-/

namespace A079945.P15893237513676101862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080653 (n + 1) - 1

end

end A079945.P15893237513676101862

namespace A079945

/-- `A080653(n+1)-1` -/
def P15893237513676101862.Spec : Prop :=
  ∀ n, P15893237513676101862.a n = A079945 n

end A079945

/-! ## A079945.P8673109525812754750

`∑[2-A086694(n+1)]`
-/

namespace A079945.P8673109525812754750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A086694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P8673109525812754750

namespace A079945

/-- `∑[2-A086694(n+1)]` -/
def P8673109525812754750.Spec : Prop :=
  ∀ n, P8673109525812754750.a n = A079945 n

end A079945

/-! ## A079945.P6312729989376804947

`comp[A346303(n+1)-1]`
-/

namespace A079945.P6312729989376804947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079945.P6312729989376804947

namespace A079945

/-- `comp[A346303(n+1)-1]` -/
def P6312729989376804947.Spec : Prop :=
  ∀ n, (P6312729989376804947.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P2491934431803581015

`comp[A171757(n+1)-2]`
-/

namespace A079945.P2491934431803581015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079945.P2491934431803581015

namespace A079945

/-- `comp[A171757(n+1)-2]` -/
def P2491934431803581015.Spec : Prop :=
  ∀ n, (P2491934431803581015.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P12391802953813870971

`∑[A132679(n+1)%3]`
-/

namespace A079945.P12391802953813870971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132679 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079945.P12391802953813870971

namespace A079945

/-- `∑[A132679(n+1)%3]` -/
def P12391802953813870971.Spec : Prop :=
  ∀ n, P12391802953813870971.a n = A079945 n

end A079945

/-! ## A079945.P13729729961153363540

`comp[2*comp[A206332(n+1)]]`
-/

namespace A079945.P13729729961153363540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A079945.P13729729961153363540

namespace A079945

/-- `comp[2*comp[A206332(n+1)]]` -/
def P13729729961153363540.Spec : Prop :=
  ∀ n, (P13729729961153363540.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P9666133617583920295

`comp[2*(A004761(n+1)-1)]`
-/

namespace A079945.P9666133617583920295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004761 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079945.P9666133617583920295

namespace A079945

/-- `comp[2*(A004761(n+1)-1)]` -/
def P9666133617583920295.Spec : Prop :=
  ∀ n, (P9666133617583920295.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P1703419845789535517

`comp[2*(A010078(n+1)-1)]`
-/

namespace A079945.P1703419845789535517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010078 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079945.P1703419845789535517

namespace A079945

/-- `comp[2*(A010078(n+1)-1)]` -/
def P1703419845789535517.Spec : Prop :=
  ∀ n, (P1703419845789535517.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P4031736920393778651

`∪[2*n+1, A080596(n+1)]`
-/

namespace A079945.P4031736920393778651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079945.P4031736920393778651

namespace A079945

/-- `∪[2*n+1, A080596(n+1)]` -/
def P4031736920393778651.Spec : Prop :=
  ∀ n, (P4031736920393778651.a n : ℤ) = A079945 n

end A079945

/-! ## A079945.P5101750065511563094

`A115836(n+1)+A079944(n)`
-/

namespace A079945.P5101750065511563094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (n + 1) + A079944 n

end

end A079945.P5101750065511563094

namespace A079945

/-- `A115836(n+1)+A079944(n)` -/
def P5101750065511563094.Spec : Prop :=
  ∀ n, P5101750065511563094.a n = A079945 n

end A079945

/-!
# A079946: Numbers k whose binary expansion begins with two or more 1's and ends with at least one 0.

The programs for A079946, the canonical program `A079946.P6641926404484281` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079946 has offset 1).

The definition of A079946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079946.P6641926404484281

`(2^(floor(log2(n+1))+1)+n+1)*2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079946

/-- `(2^(floor(log2(n+1))+1)+n+1)*2` -/
def P6641926404484281.Spec : Prop :=
  ∀ n, (P6641926404484281.a n : ℤ) = A079946 (n + 1)

theorem P6641926404484281.correct : P6641926404484281.Spec := by
  intro n
  simp only [A079946, Nat.add_sub_cancel]

end A079946

/-! ## A079946.P16021568809689060649

`or(a(n-1)+2, record[2-xor(1, -n)])` with `a(0)=6`
-/

namespace A079946.P16021568809689060649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  Int.lor (a (n - 1) + 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A079946.P16021568809689060649

namespace A079946

/-- `or(a(n-1)+2, record[2-xor(1, -n)])` -/
def P16021568809689060649.Spec : Prop :=
  ∀ n, P16021568809689060649.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P16337340636847187919

`A346304(n+1)+1`
-/

namespace A079946.P16337340636847187919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346304 (n + 1) + 1

end

end A079946.P16337340636847187919

namespace A079946

/-- `A346304(n+1)+1` -/
def P16337340636847187919.Spec : Prop :=
  ∀ n, P16337340636847187919.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P11449381504813695500

`A004757(n+1)+1+n`
-/

namespace A079946.P11449381504813695500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1) + 1 + (n : ℤ)

end

end A079946.P11449381504813695500

namespace A079946

/-- `A004757(n+1)+1+n` -/
def P11449381504813695500.Spec : Prop :=
  ∀ n, P11449381504813695500.a n = A079946 (n + 1)

theorem P11449381504813695500.correct : P11449381504813695500.Spec := by
  intro n
  simp only [A079946, Nat.add_sub_cancel, A079946.P11449381504813695500.a, A079946.P6641926404484281.a, A004757, A004757.P10177305203362355634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079946

/-! ## A079946.P14771216051333723507

`A006257(A004759(n+1))-1`
-/

namespace A079946.P14771216051333723507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A004759 (n + 1)).toNat - 1

end

end A079946.P14771216051333723507

namespace A079946

/-- `A006257(A004759(n+1))-1` -/
def P14771216051333723507.Spec : Prop :=
  ∀ n, P14771216051333723507.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P15745394997044670534

`A004756(n+1)+A004754(n+1)`
-/

namespace A079946.P15745394997044670534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1) + A004754 (n + 1)

end

end A079946.P15745394997044670534

namespace A079946

/-- `A004756(n+1)+A004754(n+1)` -/
def P15745394997044670534.Spec : Prop :=
  ∀ n, P15745394997044670534.a n = A079946 (n + 1)

theorem P15745394997044670534.correct : P15745394997044670534.Spec := by
  intro n
  simp only [A079946, Nat.add_sub_cancel, A079946.P15745394997044670534.a, A079946.P6641926404484281.a, A004754, A004754.P4191440086301751928.a, A004756, A004756.P4780538030628569258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079946

/-! ## A079946.P11397162247389004318

`A053645(n+1)+A004758(n+1)`
-/

namespace A079946.P11397162247389004318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) + A004758 (n + 1)

end

end A079946.P11397162247389004318

namespace A079946

/-- `A053645(n+1)+A004758(n+1)` -/
def P11397162247389004318.Spec : Prop :=
  ∀ n, P11397162247389004318.a n = A079946 (n + 1)

theorem P11397162247389004318.correct : P11397162247389004318.Spec := by
  intro n
  simp only [A079946, Nat.add_sub_cancel, A079946.P11397162247389004318.a, A079946.P6641926404484281.a, A004758, A004758.P18199958472809387180.a, A053645, A053645.P13234994043849603743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079946

/-! ## A079946.P5116409298375287435

`A004759(n+1)-A080079(n+1)`
-/

namespace A079946.P5116409298375287435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1) - A080079 (n + 1)

end

end A079946.P5116409298375287435

namespace A079946

/-- `A004759(n+1)-A080079(n+1)` -/
def P5116409298375287435.Spec : Prop :=
  ∀ n, P5116409298375287435.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P4089965239219008654

`lcm(A004755(n+1), A171977(n+1))`
-/

namespace A079946.P4089965239219008654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004755 (n + 1)) (A171977 (n + 1))

end

end A079946.P4089965239219008654

namespace A079946

/-- `lcm(A004755(n+1), A171977(n+1))` -/
def P4089965239219008654.Spec : Prop :=
  ∀ n, (P4089965239219008654.a n : ℤ) = A079946 (n + 1)

end A079946

/-! ## A079946.P6876551158357268962

`A171763(A053644(n+1))+2*n+1`
-/

namespace A079946.P6876551158357268962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171763 (A053644 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A079946.P6876551158357268962

namespace A079946

/-- `A171763(A053644(n+1))+2*n+1` -/
def P6876551158357268962.Spec : Prop :=
  ∀ n, P6876551158357268962.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P17610961203655109184

`A080565(n+2)-1`
-/

namespace A079946.P17610961203655109184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 2) - 1

end

end A079946.P17610961203655109184

namespace A079946

/-- `A080565(n+2)-1` -/
def P17610961203655109184.Spec : Prop :=
  ∀ n, P17610961203655109184.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P7761574253673476594

`2*A062383(n+1)+2*(n+1)`
-/

namespace A079946.P7761574253673476594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062383 (n + 1) + (2 * (n + 1) : ℤ)

end

end A079946.P7761574253673476594

namespace A079946

/-- `2*A062383(n+1)+2*(n+1)` -/
def P7761574253673476594.Spec : Prop :=
  ∀ n, P7761574253673476594.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P8109936241694081975

`A004755(2*(n+1))`
-/

namespace A079946.P8109936241694081975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (2 * (n + 1))

end

end A079946.P8109936241694081975

namespace A079946

/-- `A004755(2*(n+1))` -/
def P8109936241694081975.Spec : Prop :=
  ∀ n, P8109936241694081975.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P7851956396318308946

`A004755(Δ[(n+1)²])-1`
-/

namespace A079946.P7851956396318308946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A079946.P7851956396318308946

namespace A079946

/-- `A004755(Δ[(n+1)²])-1` -/
def P7851956396318308946.Spec : Prop :=
  ∀ n, P7851956396318308946.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P4364058762537236270

`record[A065272(n+2)]`
-/

namespace A079946.P4364058762537236270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065272 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079946.P4364058762537236270

namespace A079946

/-- `record[A065272(n+2)]` -/
def P4364058762537236270.Spec : Prop :=
  ∀ n, P4364058762537236270.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P2700550171698398645

`record[A065284(n+2)]`
-/

namespace A079946.P2700550171698398645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079946.P2700550171698398645

namespace A079946

/-- `record[A065284(n+2)]` -/
def P2700550171698398645.Spec : Prop :=
  ∀ n, P2700550171698398645.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P2055957623676473692

`A065272(2*(n+1))`
-/

namespace A079946.P2055957623676473692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065272 (2 * (n + 1))

end

end A079946.P2055957623676473692

namespace A079946

/-- `A065272(2*(n+1))` -/
def P2055957623676473692.Spec : Prop :=
  ∀ n, P2055957623676473692.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P1928651700509905828

`A065284(2*(n+1))`
-/

namespace A079946.P1928651700509905828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065284 (2 * (n + 1))

end

end A079946.P1928651700509905828

namespace A079946

/-- `A065284(2*(n+1))` -/
def P1928651700509905828.Spec : Prop :=
  ∀ n, P1928651700509905828.a n = A079946 (n + 1)

end A079946

/-! ## A079946.P16777736703994848612

`A003188(A038558(2*(n+1)))`
-/

namespace A079946.P16777736703994848612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A038558 (2 * (n + 1))).toNat

end

end A079946.P16777736703994848612

namespace A079946

/-- `A003188(A038558(2*(n+1)))` -/
def P16777736703994848612.Spec : Prop :=
  ∀ n, P16777736703994848612.a n = A079946 (n + 1)

end A079946

/-!
# A079947: Partial sums of A030300.

The programs for A079947, the canonical program `A079947.P1188556193560946699` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079947 has offset 1).

The definition of A079947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079947.P2887773787300330868

`n+1-A079954(n+1)`
-/

namespace A079947.P2887773787300330868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A079954 (n + 1)

end

end A079947.P2887773787300330868

namespace A079947

/-- `n+1-A079954(n+1)` -/
def P2887773787300330868.Spec : Prop :=
  ∀ n, P2887773787300330868.a n = A079947 (n + 1)

theorem P2887773787300330868.correct : P2887773787300330868.Spec := by
  intro n
  simp only [A079947, Nat.add_sub_cancel, A079947.P2887773787300330868.a, A079947.P1188556193560946699.f1, A079947.P1188556193560946699.a, A079954, A079954.P5014454053966606846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079947

/-! ## A079947.P2623996210848101431

`∑[ceil(log2(n+2))%2]`
-/

namespace A079947.P2623996210848101431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079947.P2623996210848101431

namespace A079947

/-- `∑[ceil(log2(n+2))%2]` -/
def P2623996210848101431.Spec : Prop :=
  ∀ n, P2623996210848101431.a n = A079947 (n + 1)

end A079947

/-! ## A079947.P4645413685038611359

`∑[and(1, ceil(log2(n+2)))]`
-/

namespace A079947.P4645413685038611359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (n + 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079947.P4645413685038611359

namespace A079947

/-- `∑[and(1, ceil(log2(n+2)))]` -/
def P4645413685038611359.Spec : Prop :=
  ∀ n, P4645413685038611359.a n = A079947 (n + 1)

end A079947

/-! ## A079947.P1188556193560946699

`∑[1-floor(log2(n+1))%2]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079947

/-- `∑[1-floor(log2(n+1))%2]` -/
def P1188556193560946699.Spec : Prop :=
  ∀ n, P1188556193560946699.a n = A079947 (n + 1)

theorem P1188556193560946699.correct : P1188556193560946699.Spec := by
  intro n
  simp only [A079947, Nat.add_sub_cancel]

end A079947

/-! ## A079947.P9001452781992667894

`∑[1-a(floor((n-1)/2))]` with `a(0)=1`
-/

namespace A079947.P9001452781992667894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079947.P9001452781992667894

namespace A079947

/-- `∑[1-a(floor((n-1)/2))]` -/
def P9001452781992667894.Spec : Prop :=
  ∀ n, P9001452781992667894.a n = A079947 (n + 1)

end A079947

/-! ## A079947.P15163987060810897246

`n+2-A275974(n+2)`
-/

namespace A079947.P15163987060810897246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A275974 (n + 2)

end

end A079947.P15163987060810897246

namespace A079947

/-- `n+2-A275974(n+2)` -/
def P15163987060810897246.Spec : Prop :=
  ∀ n, P15163987060810897246.a n = A079947 (n + 1)

end A079947

/-! ## A079947.P13954778849599543208

`A030301(2*(n+1))+A079954(2*n+1)/2`
-/

namespace A079947.P13954778849599543208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030301 (2 * (n + 1)) : ℚ) + (A079954 (2 * n + 1) : ℚ) / 2

end

end A079947.P13954778849599543208

namespace A079947

/-- `A030301(2*(n+1))+A079954(2*n+1)/2` -/
def P13954778849599543208.Spec : Prop :=
  ∀ n, P13954778849599543208.a n = (A079947 (n + 1) : ℚ)

end A079947

/-! ## A079947.P2886304052429622435

`A079954(2*n+3)/2`
-/

namespace A079947.P2886304052429622435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079954 (2 * n + 3) : ℚ) / 2

end

end A079947.P2886304052429622435

namespace A079947

/-- `A079954(2*n+3)/2` -/
def P2886304052429622435.Spec : Prop :=
  ∀ n, P2886304052429622435.a n = (A079947 (n + 1) : ℚ)

end A079947

/-!
# A079948: First differences of A079000.

The programs for A079948, the canonical program `A079948.P13030321842741128819` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079948 has offset 1).

The definition of A079948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079948.P13030321842741128819

`a(floor(n/2)-2)` with `a(0)=3, a(1)=2, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079948

/-- `a(floor(n/2)-2)` -/
def P13030321842741128819.Spec : Prop :=
  ∀ n, (P13030321842741128819.a n : ℤ) = A079948 (n + 1)

theorem P13030321842741128819.correct : P13030321842741128819.Spec := by
  intro n
  simp only [A079948, Nat.add_sub_cancel]

end A079948

/-! ## A079948.P16998228765720912699

`A086138(A103701(n+1))`
-/

namespace A079948.P16998228765720912699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086138 (A103701 (n + 1)).toNat

end

end A079948.P16998228765720912699

namespace A079948

/-- `A086138(A103701(n+1))` -/
def P16998228765720912699.Spec : Prop :=
  ∀ n, P16998228765720912699.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P8226340057748235274

`A086138(or(1, A103694(n)))`
-/

namespace A079948.P8226340057748235274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086138 (Int.lor 1 (A103694 n)).toNat

end

end A079948.P8226340057748235274

namespace A079948

/-- `A086138(or(1, A103694(n)))` -/
def P8226340057748235274.Spec : Prop :=
  ∀ n, P8226340057748235274.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P7369569611582929727

`Δ[A079253(n)]`
-/

namespace A079948.P7369569611582929727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079948.P7369569611582929727

namespace A079948

/-- `Δ[A079253(n)]` -/
def P7369569611582929727.Spec : Prop :=
  ∀ n, P7369569611582929727.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P11827425504298757731

`Δ[A079000(n+1)]`
-/

namespace A079948.P11827425504298757731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079948.P11827425504298757731

namespace A079948

/-- `Δ[A079000(n+1)]` -/
def P11827425504298757731.Spec : Prop :=
  ∀ n, P11827425504298757731.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P15540998803131958345

`abs(Δ[A079000(ϕ²-(ϕ-n))])`
-/

namespace A079948.P15540998803131958345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A079948.P15540998803131958345

namespace A079948

/-- `abs(Δ[A079000(ϕ²-(ϕ-n))])` -/
def P15540998803131958345.Spec : Prop :=
  ∀ n, P15540998803131958345.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P10726779664429396062

`A079253(n+1)-A079253(n)`
-/

namespace A079948.P10726779664429396062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 (n + 1) - A079253 n

end

end A079948.P10726779664429396062

namespace A079948

/-- `A079253(n+1)-A079253(n)` -/
def P10726779664429396062.Spec : Prop :=
  ∀ n, P10726779664429396062.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P17722670544429114228

`A079000(n+2)-A079000(n+1)`
-/

namespace A079948.P17722670544429114228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 2) - A079000 (n + 1)

end

end A079948.P17722670544429114228

namespace A079948

/-- `A079000(n+2)-A079000(n+1)` -/
def P17722670544429114228.Spec : Prop :=
  ∀ n, P17722670544429114228.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P4778016365880709420

`A000015(Δ[A079000(1-(n-2*n))])`
-/

namespace A079948.P4778016365880709420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f1 (n + 1) - f1 n).toNat

end

end A079948.P4778016365880709420

namespace A079948

/-- `A000015(Δ[A079000(1-(n-2*n))])` -/
def P4778016365880709420.Spec : Prop :=
  ∀ n, P4778016365880709420.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P17549977928509864475

`A000041(Δ[A079000(1-(n-2*n))])`
-/

namespace A079948.P17549977928509864475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A079948.P17549977928509864475

namespace A079948

/-- `A000041(Δ[A079000(1-(n-2*n))])` -/
def P17549977928509864475.Spec : Prop :=
  ∀ n, P17549977928509864475.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P13613783322072968894

`A014963(Δ[A079000(1-(n-2*n))])`
-/

namespace A079948.P13613783322072968894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat

end

end A079948.P13613783322072968894

namespace A079948

/-- `A014963(Δ[A079000(1-(n-2*n))])` -/
def P13613783322072968894.Spec : Prop :=
  ∀ n, P13613783322072968894.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P7475046347000068397

`A077082(Δ[A079000(1-(n-2*n))])`
-/

namespace A079948.P7475046347000068397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077082 (f1 (n + 1) - f1 n).toNat

end

end A079948.P7475046347000068397

namespace A079948

/-- `A077082(Δ[A079000(1-(n-2*n))])` -/
def P7475046347000068397.Spec : Prop :=
  ∀ n, P7475046347000068397.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P1003886669228634875

`A305391(A079000(n+2)%A079000(n+1))`
-/

namespace A079948.P1003886669228634875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305391 (Int.tmod (A079000 (n + 2)) (A079000 (n + 1))).toNat

end

end A079948.P1003886669228634875

namespace A079948

/-- `A305391(A079000(n+2)%A079000(n+1))` -/
def P1003886669228634875.Spec : Prop :=
  ∀ n, P1003886669228634875.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P5605283891132552777

`Δ[A080639(n+2)]`
-/

namespace A079948.P5605283891132552777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079948.P5605283891132552777

namespace A079948

/-- `Δ[A080639(n+2)]` -/
def P5605283891132552777.Spec : Prop :=
  ∀ n, P5605283891132552777.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P4681449057469547377

`A080639(n+3)-A080639(n+2)`
-/

namespace A079948.P4681449057469547377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 3) - A080639 (n + 2)

end

end A079948.P4681449057469547377

namespace A079948

/-- `A080639(n+3)-A080639(n+2)` -/
def P4681449057469547377.Spec : Prop :=
  ∀ n, P4681449057469547377.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P9480924941886446078

`A028242(Δ[A080587(2*n+1)]+1)`
-/

namespace A079948.P9480924941886446078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n + 1).toNat

end

end A079948.P9480924941886446078

namespace A079948

/-- `A028242(Δ[A080587(2*n+1)]+1)` -/
def P9480924941886446078.Spec : Prop :=
  ∀ n, P9480924941886446078.a n = A079948 (n + 1)

end A079948

/-! ## A079948.P6490033775735944948

`Δ[A025480(A080587(2*n+1)+1)]`
-/

namespace A079948.P6490033775735944948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A080587 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079948.P6490033775735944948

namespace A079948

/-- `Δ[A025480(A080587(2*n+1)+1)]` -/
def P6490033775735944948.Spec : Prop :=
  ∀ n, P6490033775735944948.a n = A079948 (n + 1)

end A079948

/-!
# A079949: Special values of Hermite polynomials.

The programs for A079949, the canonical program `A079949.P13248647545111752909` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079949 has offset 0).

The definition of A079949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079949.P13248647545111752909

`6*a(n-1)+2*(n-1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079949

/-- `6*a(n-1)+2*(n-1)*a(n-2)` -/
def P13248647545111752909.Spec : Prop :=
  ∀ n, P13248647545111752909.a n = A079949 n

theorem P13248647545111752909.correct : P13248647545111752909.Spec := by
  intro n
  simp only [A079949]

end A079949

/-! ## A079949.P17869192892296683784

`∏[6-2*(1-n)/a(n-1)]` with `a(0)=1`
-/

namespace A079949.P17869192892296683784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  6 - (2 * (1 - (n : ℤ)) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A079949.P17869192892296683784

namespace A079949

/-- `∏[6-2*(1-n)/a(n-1)]` -/
def P17869192892296683784.Spec : Prop :=
  ∀ n, P17869192892296683784.a n = (A079949 n : ℚ)

end A079949

/-!
# A079950: Triangle of n-th prime modulo twice primes less n-th prime.

The programs for A079950, the canonical program `A079950.P16372425283306993831` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079950 has offset 1).

The definition of A079950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079950.P16372425283306993831

`A005145(n+1)%(2*A037126(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079950

/-- `A005145(n+1)%(2*A037126(n+1))` -/
def P16372425283306993831.Spec : Prop :=
  ∀ n, P16372425283306993831.a n = A079950 (n + 1)

theorem P16372425283306993831.correct : P16372425283306993831.Spec := by
  intro n
  simp only [A079950, Nat.add_sub_cancel]

end A079950

/-! ## A079950.P5282098086143473937

`A005145(n+1)%A100484(A193738(n))`
-/

namespace A079950.P5282098086143473937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005145 (n + 1)) (A100484 (A193738 n).toNat)

end

end A079950.P5282098086143473937

namespace A079950

/-- `A005145(n+1)%A100484(A193738(n))` -/
def P5282098086143473937.Spec : Prop :=
  ∀ n, P5282098086143473937.a n = A079950 (n + 1)

end A079950

/-! ## A079950.P2495958703582782066

`A051599(A057944(n))%A005843(A037126(n+1))`
-/

namespace A079950.P2495958703582782066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051599 (A057944 n).toNat) (A005843 (A037126 (n + 1)).toNat)

end

end A079950.P2495958703582782066

namespace A079950

/-- `A051599(A057944(n))%A005843(A037126(n+1))` -/
def P2495958703582782066.Spec : Prop :=
  ∀ n, P2495958703582782066.a n = A079950 (n + 1)

end A079950

/-! ## A079950.P4427287945035768166

`A000040(A002024(n+1))%A004277(A037126(n+1))`
-/

namespace A079950.P4427287945035768166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A002024 (n + 1)).toNat) (A004277 (A037126 (n + 1)).toNat)

end

end A079950.P4427287945035768166

namespace A079950

/-- `A000040(A002024(n+1))%A004277(A037126(n+1))` -/
def P4427287945035768166.Spec : Prop :=
  ∀ n, P4427287945035768166.a n = A079950 (n + 1)

end A079950

/-! ## A079950.P12809100546361141535

`A014963(A005145(n+1))%A100484(A002260(n+1))`
-/

namespace A079950.P12809100546361141535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A005145 (n + 1)).toNat) (A100484 (A002260 (n + 1)).toNat)

end

end A079950.P12809100546361141535

namespace A079950

/-- `A014963(A005145(n+1))%A100484(A002260(n+1))` -/
def P12809100546361141535.Spec : Prop :=
  ∀ n, P12809100546361141535.a n = A079950 (n + 1)

end A079950

/-! ## A079950.P8835323295337791234

`A000040(A349520(2*(n+1)))%A100484(A002260(n+1))`
-/

namespace A079950.P8835323295337791234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A349520 (2 * (n + 1))).toNat) (A100484 (A002260 (n + 1)).toNat)

end

end A079950.P8835323295337791234

namespace A079950

/-- `A000040(A349520(2*(n+1)))%A100484(A002260(n+1))` -/
def P8835323295337791234.Spec : Prop :=
  ∀ n, P8835323295337791234.a n = A079950 (n + 1)

end A079950

/-! ## A079950.P6086145810764119547

`A006530(A087112(n+1))%(2*A037126(n+1))`
-/

namespace A079950.P6086145810764119547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A087112 (n + 1)).toNat) (2 * A037126 (n + 1))

end

end A079950.P6086145810764119547

namespace A079950

/-- `A006530(A087112(n+1))%(2*A037126(n+1))` -/
def P6086145810764119547.Spec : Prop :=
  ∀ n, P6086145810764119547.a n = A079950 (n + 1)

end A079950

/-! ## A079950.P9643182260779354749

`A033677(A087112(n+1))%A005843(A037126(n+1))`
-/

namespace A079950.P9643182260779354749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033677 (A087112 (n + 1)).toNat) (A005843 (A037126 (n + 1)).toNat)

end

end A079950.P9643182260779354749

namespace A079950

/-- `A033677(A087112(n+1))%A005843(A037126(n+1))` -/
def P9643182260779354749.Spec : Prop :=
  ∀ n, P9643182260779354749.a n = A079950 (n + 1)

end A079950

/-!
# A079951: Number of primes p with prime(n) == 1 (modulo 2*p).

The programs for A079951, the canonical program `A079951.P11276586117607300718` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079951 has offset 1).

The definition of A079951 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079951.P11276586117607300718

`A001221(floor(A000040(n+1)/2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079951

/-- `A001221(floor(A000040(n+1)/2))` -/
def P11276586117607300718.Spec : Prop :=
  ∀ n, P11276586117607300718.a n = A079951 (n + 1)

theorem P11276586117607300718.correct : P11276586117607300718.Spec := by
  intro n
  simp only [A079951, Nat.add_sub_cancel]

end A079951

/-! ## A079951.P16298417164299152629

`A001221(floor((p?[round(8*n/7)]-2)/2)+1)`
-/

namespace A079951.P16298417164299152629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 2⌋ + 1).toNat

end

end A079951.P16298417164299152629

namespace A079951

/-- `A001221(floor((p?[round(8*n/7)]-2)/2)+1)` -/
def P16298417164299152629.Spec : Prop :=
  ∀ n, P16298417164299152629.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P12224373037185197735

`A001221(A130290(n+1))`
-/

namespace A079951.P12224373037185197735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130290 (n + 1)).toNat

end

end A079951.P12224373037185197735

namespace A079951

/-- `A001221(A130290(n+1))` -/
def P12224373037185197735.Spec : Prop :=
  ∀ n, P12224373037185197735.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P4940343972298414476

`A001221(A130291(n+1)-1)`
-/

namespace A079951.P4940343972298414476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130291 (n + 1) - 1).toNat

end

end A079951.P4940343972298414476

namespace A079951

/-- `A001221(A130291(n+1)-1)` -/
def P4940343972298414476.Spec : Prop :=
  ∀ n, P4940343972298414476.a n = A079951 (n + 1)

theorem P4940343972298414476.correct : P4940343972298414476.Spec := by
  intro n
  simp only [A079951, Nat.add_sub_cancel, A079951.P4940343972298414476.a, A079951.P11276586117607300718.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P10258181745752134128.a, A130291, A130291.P14568566917462971400.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079951

/-! ## A079951.P8433092846012301951

`A001222(∏{p}[A130290(n+1), #])`
-/

namespace A079951.P8433092846012301951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A079951.P8433092846012301951

namespace A079951

/-- `A001222(∏{p}[A130290(n+1), #])` -/
def P8433092846012301951.Spec : Prop :=
  ∀ n, P8433092846012301951.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P7428837891414883516

`A001221(floor(cosh(log(A000040(n+1)))))`
-/

namespace A079951.P7428837891414883516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌊Real.cosh (Real.log (A000040 (n + 1) : ℝ))⌋.toNat

end

end A079951.P7428837891414883516

namespace A079951

/-- `A001221(floor(cosh(log(A000040(n+1)))))` -/
def P7428837891414883516.Spec : Prop :=
  ∀ n, P7428837891414883516.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P2169143438815686485

`A001221(round(sinh(log(A000040(n+1)))))`
-/

namespace A079951.P2169143438815686485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sinh (Real.log (A000040 (n + 1) : ℝ)))).toNat

end

end A079951.P2169143438815686485

namespace A079951

/-- `A001221(round(sinh(log(A000040(n+1)))))` -/
def P2169143438815686485.Spec : Prop :=
  ∀ n, P2169143438815686485.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P17143007869848457511

`A001221(and(-2, A000040(n+1))/2)`
-/

namespace A079951.P17143007869848457511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((Int.land (-2) (A000040 (n + 1)) : ℚ) / 2)).toNat

end

end A079951.P17143007869848457511

namespace A079951

/-- `A001221(and(-2, A000040(n+1))/2)` -/
def P17143007869848457511.Spec : Prop :=
  ∀ n, P17143007869848457511.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P3041531955870365470

`A001221(ceil((A000040(n+1)-1)/2))`
-/

namespace A079951.P3041531955870365470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(A000040 (n + 1) - 1 : ℚ) / 2⌉.toNat

end

end A079951.P3041531955870365470

namespace A079951

/-- `A001221(ceil((A000040(n+1)-1)/2))` -/
def P3041531955870365470.Spec : Prop :=
  ∀ n, P3041531955870365470.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P9291277308612051304

`A001221(floor(p?[xor(1, n)]/2))`
-/

namespace A079951.P9291277308612051304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋.toNat

end

end A079951.P9291277308612051304

namespace A079951

/-- `A001221(floor(p?[xor(1, n)]/2))` -/
def P9291277308612051304.Spec : Prop :=
  ∀ n, P9291277308612051304.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P12194913088900536695

`∑{e}[lt[n, A006530(2*n+1)], ceil(1/#)]`
-/

namespace A079951.P12194913088900536695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A079951.P12194913088900536695

namespace A079951

/-- `∑{e}[lt[n, A006530(2*n+1)], ceil(1/#)]` -/
def P12194913088900536695.Spec : Prop :=
  ∀ n, P12194913088900536695.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P4128576946361183771

`A001221(ceil(record[A000010(n+1)/2]))`
-/

namespace A079951.P4128576946361183771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉.toNat

end

end A079951.P4128576946361183771

namespace A079951

/-- `A001221(ceil(record[A000010(n+1)/2]))` -/
def P4128576946361183771.Spec : Prop :=
  ∀ n, P4128576946361183771.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P11846524295194000958

`A001221(round(record[A000010(n+1)/2]))`
-/

namespace A079951.P11846524295194000958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A079951.P11846524295194000958

namespace A079951

/-- `A001221(round(record[A000010(n+1)/2]))` -/
def P11846524295194000958.Spec : Prop :=
  ∀ n, P11846524295194000958.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P12724552742356411755

`A106404(A006093(n+1))`
-/

namespace A079951.P12724552742356411755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A006093 (n + 1)).toNat

end

end A079951.P12724552742356411755

namespace A079951

/-- `A106404(A006093(n+1))` -/
def P12724552742356411755.Spec : Prop :=
  ∀ n, P12724552742356411755.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P4387805860476964517

`A106404(A039915(n+1))`
-/

namespace A079951.P4387805860476964517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A039915 (n + 1)).toNat

end

end A079951.P4387805860476964517

namespace A079951

/-- `A106404(A039915(n+1))` -/
def P4387805860476964517.Spec : Prop :=
  ∀ n, P4387805860476964517.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P6042776574005394711

`A106404(A156037(n+1))`
-/

namespace A079951.P6042776574005394711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A156037 (n + 1)).toNat

end

end A079951.P6042776574005394711

namespace A079951

/-- `A106404(A156037(n+1))` -/
def P6042776574005394711.Spec : Prop :=
  ∀ n, P6042776574005394711.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P7565888889450574988

`A106404(A068499(n+2))`
-/

namespace A079951.P7565888889450574988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A068499 (n + 2)).toNat

end

end A079951.P7565888889450574988

namespace A079951

/-- `A106404(A068499(n+2))` -/
def P7565888889450574988.Spec : Prop :=
  ∀ n, P7565888889450574988.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P2002102720331944399

`A106404(record[A000010(n+1)])`
-/

namespace A079951.P2002102720331944399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079951.P2002102720331944399

namespace A079951

/-- `A106404(record[A000010(n+1)])` -/
def P2002102720331944399.Spec : Prop :=
  ∀ n, P2002102720331944399.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P7575345049281381802

`A106404(A000040(n+1)-1)`
-/

namespace A079951.P7575345049281381802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A000040 (n + 1) - 1).toNat

end

end A079951.P7575345049281381802

namespace A079951

/-- `A106404(A000040(n+1)-1)` -/
def P7575345049281381802.Spec : Prop :=
  ∀ n, P7575345049281381802.a n = A079951 (n + 1)

end A079951

/-! ## A079951.P17424835914138907931

`A106404(A000010(A100484(n+1)))`
-/

namespace A079951.P17424835914138907931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A000010 (A100484 (n + 1)).toNat).toNat

end

end A079951.P17424835914138907931

namespace A079951

/-- `A106404(A000010(A100484(n+1)))` -/
def P17424835914138907931.Spec : Prop :=
  ∀ n, P17424835914138907931.a n = A079951 (n + 1)

end A079951

/-!
# A079952: Number of primes less than prime(n)/2.

The programs for A079952, the canonical program `A079952.P4380485692026145180` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079952 has offset 1).

The definition of A079952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079952.P10163429707507939348

`A242096(p?[comp[n²]])`
-/

namespace A079952.P10163429707507939348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079952.P10163429707507939348

namespace A079952

/-- `A242096(p?[comp[n²]])` -/
def P10163429707507939348.Spec : Prop :=
  ∀ n, P10163429707507939348.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P9669401024708865435

`n-A107347(n+1)`
-/

namespace A079952.P9669401024708865435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107347 (n + 1)

end

end A079952.P9669401024708865435

namespace A079952

/-- `n-A107347(n+1)` -/
def P9669401024708865435.Spec : Prop :=
  ∀ n, P9669401024708865435.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P4380485692026145180

`A055679(p?[xor(1, n)]-1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079952

/-- `A055679(p?[xor(1, n)]-1)` -/
def P4380485692026145180.Spec : Prop :=
  ∀ n, P4380485692026145180.a n = A079952 (n + 1)

theorem P4380485692026145180.correct : P4380485692026145180.Spec := by
  intro n
  simp only [A079952, Nat.add_sub_cancel]

end A079952

/-! ## A079952.P3482794873961231074

`A298861(n+1)-(n+1)`
-/

namespace A079952.P3482794873961231074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298861 (n + 1) - (n + 1 : ℤ)

end

end A079952.P3482794873961231074

namespace A079952

/-- `A298861(n+1)-(n+1)` -/
def P3482794873961231074.Spec : Prop :=
  ∀ n, P3482794873961231074.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P9595473624613604034

`A056172(Δ[A007504(n)])`
-/

namespace A079952.P9595473624613604034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (f1 (n + 1) - f1 n).toNat

end

end A079952.P9595473624613604034

namespace A079952

/-- `A056172(Δ[A007504(n)])` -/
def P9595473624613604034.Spec : Prop :=
  ∀ n, P9595473624613604034.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P1199131320600714113

`A242096(Δ[A007504(n)])`
-/

namespace A079952.P1199131320600714113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (f1 (n + 1) - f1 n).toNat

end

end A079952.P1199131320600714113

namespace A079952

/-- `A242096(Δ[A007504(n)])` -/
def P1199131320600714113.Spec : Prop :=
  ∀ n, P1199131320600714113.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P9400710995679581748

`A056172(p?[A001057(n)])`
-/

namespace A079952.P9400710995679581748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079952.P9400710995679581748

namespace A079952

/-- `A056172(p?[A001057(n)])` -/
def P9400710995679581748.Spec : Prop :=
  ∀ n, P9400710995679581748.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P13368869312769127709

`A056172(p?[A142150(n)])`
-/

namespace A079952.P13368869312769127709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079952.P13368869312769127709

namespace A079952

/-- `A056172(p?[A142150(n)])` -/
def P13368869312769127709.Spec : Prop :=
  ∀ n, P13368869312769127709.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P5888376757839705994

`A056172(A000040(n+1))`
-/

namespace A079952.P5888376757839705994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A000040 (n + 1)).toNat

end

end A079952.P5888376757839705994

namespace A079952

/-- `A056172(A000040(n+1))` -/
def P5888376757839705994.Spec : Prop :=
  ∀ n, P5888376757839705994.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P4873552354459264847

`A055679(A006093(n+1))`
-/

namespace A079952.P4873552354459264847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A006093 (n + 1)).toNat

end

end A079952.P4873552354459264847

namespace A079952

/-- `A055679(A006093(n+1))` -/
def P4873552354459264847.Spec : Prop :=
  ∀ n, P4873552354459264847.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P14494975527303797310

`A056172(A006005(n+1))`
-/

namespace A079952.P14494975527303797310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A006005 (n + 1)).toNat

end

end A079952.P14494975527303797310

namespace A079952

/-- `A056172(A006005(n+1))` -/
def P14494975527303797310.Spec : Prop :=
  ∀ n, P14494975527303797310.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P9238323236101051879

`A056172(A039915(n+1))`
-/

namespace A079952.P9238323236101051879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A039915 (n + 1)).toNat

end

end A079952.P9238323236101051879

namespace A079952

/-- `A056172(A039915(n+1))` -/
def P9238323236101051879.Spec : Prop :=
  ∀ n, P9238323236101051879.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P5548880286930557503

`A033270(A079953(n+1))`
-/

namespace A079952.P5548880286930557503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A079953 (n + 1)).toNat

end

end A079952.P5548880286930557503

namespace A079952

/-- `A033270(A079953(n+1))` -/
def P5548880286930557503.Spec : Prop :=
  ∀ n, P5548880286930557503.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P2533265571917272307

`A000720(A130290(n+1))`
-/

namespace A079952.P2533265571917272307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A130290 (n + 1)).toNat

end

end A079952.P2533265571917272307

namespace A079952

/-- `A000720(A130290(n+1))` -/
def P2533265571917272307.Spec : Prop :=
  ∀ n, P2533265571917272307.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P4475846277711401389

`A055679(A112925(n+1))`
-/

namespace A079952.P4475846277711401389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A112925 (n + 1)).toNat

end

end A079952.P4475846277711401389

namespace A079952

/-- `A055679(A112925(n+1))` -/
def P4475846277711401389.Spec : Prop :=
  ∀ n, P4475846277711401389.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P16602285831871349127

`A055679(A156037(n+1))`
-/

namespace A079952.P16602285831871349127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A156037 (n + 1)).toNat

end

end A079952.P16602285831871349127

namespace A079952

/-- `A055679(A156037(n+1))` -/
def P16602285831871349127.Spec : Prop :=
  ∀ n, P16602285831871349127.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P4137164560345466826

`A230980(A102781(n+1))`
-/

namespace A079952.P4137164560345466826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A102781 (n + 1)).toNat

end

end A079952.P4137164560345466826

namespace A079952

/-- `A230980(A102781(n+1))` -/
def P4137164560345466826.Spec : Prop :=
  ∀ n, P4137164560345466826.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P14556524375749574385

`A056172(A318871(n+1))`
-/

namespace A079952.P14556524375749574385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A318871 (n + 1)).toNat

end

end A079952.P14556524375749574385

namespace A079952

/-- `A056172(A318871(n+1))` -/
def P14556524375749574385.Spec : Prop :=
  ∀ n, P14556524375749574385.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P11505003005912004173

`A056172(A008578(n+2))`
-/

namespace A079952.P11505003005912004173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A008578 (n + 2)).toNat

end

end A079952.P11505003005912004173

namespace A079952

/-- `A056172(A008578(n+2))` -/
def P11505003005912004173.Spec : Prop :=
  ∀ n, P11505003005912004173.a n = A079952 (n + 1)

end A079952

/-! ## A079952.P11925469247596721924

`A056172(A068499(n+2))`
-/

namespace A079952.P11925469247596721924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A068499 (n + 2)).toNat

end

end A079952.P11925469247596721924

namespace A079952

/-- `A056172(A068499(n+2))` -/
def P11925469247596721924.Spec : Prop :=
  ∀ n, P11925469247596721924.a n = A079952 (n + 1)

end A079952

/-!
# A079953: Smallest prime p such that prime(n) mod 2*p = prime(n).

The programs for A079953, the canonical program `A079953.P12791131789649481837` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079953 has offset 1).

The definition of A079953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079953.P12791131789649481837

`A039734((2*n)%(n+1)+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079953

/-- `A039734((2*n)%(n+1)+2)` -/
def P12791131789649481837.Spec : Prop :=
  ∀ n, P12791131789649481837.a n = A079953 (n + 1)

theorem P12791131789649481837.correct : P12791131789649481837.Spec := by
  intro n
  simp only [A079953, Nat.add_sub_cancel]

end A079953

/-! ## A079953.P12297654440552141260

`A151800(A102781(n+1))`
-/

namespace A079953.P12297654440552141260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A102781 (n + 1)).toNat

end

end A079953.P12297654440552141260

namespace A079953

/-- `A151800(A102781(n+1))` -/
def P12297654440552141260.Spec : Prop :=
  ∀ n, P12297654440552141260.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P2569458530611675837

`A151800(A130290(n+1))`
-/

namespace A079953.P2569458530611675837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A130290 (n + 1)).toNat

end

end A079953.P2569458530611675837

namespace A079953

/-- `A151800(A130290(n+1))` -/
def P2569458530611675837.Spec : Prop :=
  ∀ n, P2569458530611675837.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P12013501673175750482

`A000040(A298861(n+1)-n)`
-/

namespace A079953.P12013501673175750482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A298861 (n + 1) - (n : ℤ)).toNat

end

end A079953.P12013501673175750482

namespace A079953

/-- `A000040(A298861(n+1)-n)` -/
def P12013501673175750482.Spec : Prop :=
  ∀ n, P12013501673175750482.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P6369486907141349573

`A039734(A004273(n)+2-n)`
-/

namespace A079953.P6369486907141349573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (A004273 n + (2 - (n : ℤ))).toNat

end

end A079953.P6369486907141349573

namespace A079953

/-- `A039734(A004273(n)+2-n)` -/
def P6369486907141349573.Spec : Prop :=
  ∀ n, P6369486907141349573.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P5437628945154603769

`A039734(2-(n-A004273(n)))`
-/

namespace A079953.P5437628945154603769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (2 - ((n : ℤ) - A004273 n)).toNat

end

end A079953.P5437628945154603769

namespace A079953

/-- `A039734(2-(n-A004273(n)))` -/
def P5437628945154603769.Spec : Prop :=
  ∀ n, P5437628945154603769.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P17184684081983576437

`A151800((A006005(n+1)-1)/2)`
-/

namespace A079953.P17184684081983576437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A006005 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A079953.P17184684081983576437

namespace A079953

/-- `A151800((A006005(n+1)-1)/2)` -/
def P17184684081983576437.Spec : Prop :=
  ∀ n, P17184684081983576437.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P6509798216913638698

`A000040(1-A107347(n+1)+n)`
-/

namespace A079953.P6509798216913638698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - A107347 (n + 1) + (n : ℤ)).toNat

end

end A079953.P6509798216913638698

namespace A079953

/-- `A000040(1-A107347(n+1)+n)` -/
def P6509798216913638698.Spec : Prop :=
  ∀ n, P6509798216913638698.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P8120173959184559485

`A008578(n+2-A107347(n+1))`
-/

namespace A079953.P8120173959184559485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 2 : ℤ) - A107347 (n + 1)).toNat

end

end A079953.P8120173959184559485

namespace A079953

/-- `A008578(n+2-A107347(n+1))` -/
def P8120173959184559485.Spec : Prop :=
  ∀ n, P8120173959184559485.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P17987181976326769854

`A001751(A298861(A298861(n+1)-n))`
-/

namespace A079953.P17987181976326769854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A298861 (A298861 (n + 1) - (n : ℤ)).toNat).toNat

end

end A079953.P17987181976326769854

namespace A079953

/-- `A001751(A298861(A298861(n+1)-n))` -/
def P17987181976326769854.Spec : Prop :=
  ∀ n, P17987181976326769854.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P6796229178610083621

`A283312(A338361(n+1-A107347(n+1)))`
-/

namespace A079953.P6796229178610083621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (A338361 ((n + 1 : ℤ) - A107347 (n + 1)).toNat).toNat

end

end A079953.P6796229178610083621

namespace A079953

/-- `A283312(A338361(n+1-A107347(n+1)))` -/
def P6796229178610083621.Spec : Prop :=
  ∀ n, P6796229178610083621.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P6182638818665410831

`A039734(A254667(n+1))`
-/

namespace A079953.P6182638818665410831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039734 (A254667 (n + 1)).toNat

end

end A079953.P6182638818665410831

namespace A079953

/-- `A039734(A254667(n+1))` -/
def P6182638818665410831.Spec : Prop :=
  ∀ n, P6182638818665410831.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P11915800504250044351

`A280864(A280742(n+1-A107347(n+1)))`
-/

namespace A079953.P11915800504250044351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280742 ((n + 1 : ℤ) - A107347 (n + 1)).toNat).toNat

end

end A079953.P11915800504250044351

namespace A079953

/-- `A280864(A280742(n+1-A107347(n+1)))` -/
def P11915800504250044351.Spec : Prop :=
  ∀ n, P11915800504250044351.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P7100156497736248394

`A151800(lt[A001222(2*n+1), 2])`
-/

namespace A079953.P7100156497736248394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A079953.P7100156497736248394

namespace A079953

/-- `A151800(lt[A001222(2*n+1), 2])` -/
def P7100156497736248394.Spec : Prop :=
  ∀ n, P7100156497736248394.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P16788156406968607296

`A151800(lt[n, A006530(2*n+1)])`
-/

namespace A079953.P16788156406968607296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079953.P16788156406968607296

namespace A079953

/-- `A151800(lt[n, A006530(2*n+1)])` -/
def P16788156406968607296.Spec : Prop :=
  ∀ n, P16788156406968607296.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P16452719849393583660

`A151800(lt[n, A020639(2*n+1)])`
-/

namespace A079953.P16452719849393583660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079953.P16452719849393583660

namespace A079953

/-- `A151800(lt[n, A020639(2*n+1)])` -/
def P16452719849393583660.Spec : Prop :=
  ∀ n, P16452719849393583660.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P4958781316085090250

`A151800(eq[A001222(2*n+1)², A001222(2*n+1)])`
-/

namespace A079953.P4958781316085090250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A079953.P4958781316085090250

namespace A079953

/-- `A151800(eq[A001222(2*n+1)², A001222(2*n+1)])` -/
def P4958781316085090250.Spec : Prop :=
  ∀ n, P4958781316085090250.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P1950651783776538026

`A007918(A111333(n+1))`
-/

namespace A079953.P1950651783776538026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A111333 (n + 1)).toNat

end

end A079953.P1950651783776538026

namespace A079953

/-- `A007918(A111333(n+1))` -/
def P1950651783776538026.Spec : Prop :=
  ∀ n, P1950651783776538026.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P15594148673106373755

`A007918(A130291(n+1))`
-/

namespace A079953.P15594148673106373755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A130291 (n + 1)).toNat

end

end A079953.P15594148673106373755

namespace A079953

/-- `A007918(A130291(n+1))` -/
def P15594148673106373755.Spec : Prop :=
  ∀ n, P15594148673106373755.a n = A079953 (n + 1)

end A079953

/-! ## A079953.P1395729359018585040

`A151800(lt[A107463(2*n+1), 2])`
-/

namespace A079953.P1395729359018585040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A079953.P1395729359018585040

namespace A079953

/-- `A151800(lt[A107463(2*n+1), 2])` -/
def P1395729359018585040.Spec : Prop :=
  ∀ n, P1395729359018585040.a n = A079953 (n + 1)

end A079953

/-!
# A079954: Partial sums of A030301.

The programs for A079954, the canonical program `A079954.P5014454053966606846` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079954 has offset 1).

The definition of A079954 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079954.P5014454053966606846

`n+1-A079947(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079954

/-- `n+1-A079947(n+1)` -/
def P5014454053966606846.Spec : Prop :=
  ∀ n, P5014454053966606846.a n = A079954 (n + 1)

theorem P5014454053966606846.correct : P5014454053966606846.Spec := by
  intro n
  simp only [A079954, Nat.add_sub_cancel]

end A079954

/-! ## A079954.P16226488990916429468

`∑[floor(log2(n+1))%2]`
-/

namespace A079954.P16226488990916429468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P16226488990916429468

namespace A079954

/-- `∑[floor(log2(n+1))%2]` -/
def P16226488990916429468.Spec : Prop :=
  ∀ n, (P16226488990916429468.a n : ℤ) = A079954 (n + 1)

end A079954

/-! ## A079954.P1232504935112261332

`∑[and(1, floor(log2(n+1)))]`
-/

namespace A079954.P1232504935112261332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.log 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P1232504935112261332

namespace A079954

/-- `∑[and(1, floor(log2(n+1)))]` -/
def P1232504935112261332.Spec : Prop :=
  ∀ n, (P1232504935112261332.a n : ℤ) = A079954 (n + 1)

end A079954

/-! ## A079954.P8278212853569836901

`∑[(∑[char[∑[2^n]]]%2)²]`
-/

namespace A079954.P8278212853569836901
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) % 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P8278212853569836901

namespace A079954

/-- `∑[(∑[char[∑[2^n]]]%2)²]` -/
def P8278212853569836901.Spec : Prop :=
  ∀ n, (P8278212853569836901.a n : ℤ) = A079954 (n + 1)

end A079954

/-! ## A079954.P12402772605619990199

`∑[1-a(floor((n-1)/2))]` with `a(0)=0`
-/

namespace A079954.P12402772605619990199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P12402772605619990199

namespace A079954

/-- `∑[1-a(floor((n-1)/2))]` -/
def P12402772605619990199.Spec : Prop :=
  ∀ n, P12402772605619990199.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P18246208929656290553

`∑[char[eq[1, gcd(2, floor(log2(n+1)))]]]`
-/

namespace A079954.P18246208929656290553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.log 2 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P18246208929656290553

namespace A079954

/-- `∑[char[eq[1, gcd(2, floor(log2(n+1)))]]]` -/
def P18246208929656290553.Spec : Prop :=
  ∀ n, (P18246208929656290553.a n : ℤ) = A079954 (n + 1)

end A079954

/-! ## A079954.P9090615654803577442

`1-∑[ceil(log2(n+2))%2]+n`
-/

namespace A079954.P9090615654803577442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A079954.P9090615654803577442

namespace A079954

/-- `1-∑[ceil(log2(n+2))%2]+n` -/
def P9090615654803577442.Spec : Prop :=
  ∀ n, P9090615654803577442.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P10038163578557506183

`∑[A030301(n+1)]`
-/

namespace A079954.P10038163578557506183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P10038163578557506183

namespace A079954

/-- `∑[A030301(n+1)]` -/
def P10038163578557506183.Spec : Prop :=
  ∀ n, P10038163578557506183.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P13510833347264621366

`∑[A275973(n+2)]`
-/

namespace A079954.P13510833347264621366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P13510833347264621366

namespace A079954

/-- `∑[A275973(n+2)]` -/
def P13510833347264621366.Spec : Prop :=
  ∀ n, P13510833347264621366.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P3249386737765459684

`A275974(n+2)-1`
-/

namespace A079954.P3249386737765459684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 2) - 1

end

end A079954.P3249386737765459684

namespace A079954

/-- `A275974(n+2)-1` -/
def P3249386737765459684.Spec : Prop :=
  ∀ n, P3249386737765459684.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P14133925596113700812

`∑[1-A030300(n+1)]`
-/

namespace A079954.P14133925596113700812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P14133925596113700812

namespace A079954

/-- `∑[1-A030300(n+1)]` -/
def P14133925596113700812.Spec : Prop :=
  ∀ n, P14133925596113700812.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P4438045360321318832

`∑[A030300(2*(n+1))]`
-/

namespace A079954.P4438045360321318832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P4438045360321318832

namespace A079954

/-- `∑[A030300(2*(n+1))]` -/
def P4438045360321318832.Spec : Prop :=
  ∀ n, P4438045360321318832.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P2502633243968057359

`∑[1-and(1, A178063(n))]`
-/

namespace A079954.P2502633243968057359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (A178063 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P2502633243968057359

namespace A079954

/-- `∑[1-and(1, A178063(n))]` -/
def P2502633243968057359.Spec : Prop :=
  ∀ n, P2502633243968057359.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P9300588464414937163

`∑[1-∑[A154269(n+1)]]`
-/

namespace A079954.P9300588464414937163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P9300588464414937163

namespace A079954

/-- `∑[1-∑[A154269(n+1)]]` -/
def P9300588464414937163.Spec : Prop :=
  ∀ n, P9300588464414937163.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P339569097397828889

`∑[char[A053754(n+1)-1]]`
-/

namespace A079954.P339569097397828889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P339569097397828889

namespace A079954

/-- `∑[char[A053754(n+1)-1]]` -/
def P339569097397828889.Spec : Prop :=
  ∀ n, (P339569097397828889.a n : ℤ) = A079954 (n + 1)

end A079954

/-! ## A079954.P14386344373315521190

`∑[∑[A154269(2*(n+1))]+1]`
-/

namespace A079954.P14386344373315521190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P14386344373315521190

namespace A079954

/-- `∑[∑[A154269(2*(n+1))]+1]` -/
def P14386344373315521190.Spec : Prop :=
  ∀ n, P14386344373315521190.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P10199484997350590665

`∑[(n+1-A333470(n+1))²]`
-/

namespace A079954.P10199484997350590665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A333470 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P10199484997350590665

namespace A079954

/-- `∑[(n+1-A333470(n+1))²]` -/
def P10199484997350590665.Spec : Prop :=
  ∀ n, P10199484997350590665.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P14799606388538432827

`∑[A010060(A142151(n))]`
-/

namespace A079954.P14799606388538432827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A142151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P14799606388538432827

namespace A079954

/-- `∑[A010060(A142151(n))]` -/
def P14799606388538432827.Spec : Prop :=
  ∀ n, P14799606388538432827.a n = A079954 (n + 1)

end A079954

/-! ## A079954.P7733352082963351544

`∑[A000035(A000523(n+1))]`
-/

namespace A079954.P7733352082963351544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079954.P7733352082963351544

namespace A079954

/-- `∑[A000035(A000523(n+1))]` -/
def P7733352082963351544.Spec : Prop :=
  ∀ n, P7733352082963351544.a n = A079954 (n + 1)

end A079954

/-!
# A079955: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={0,2,3}.

The programs for A079955, the canonical program `A079955.P13827416927200649135` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079955 has offset 0).

The definition of A079955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079955.P13827416927200649135

`a(n-2)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079955

/-- `a(n-2)+a(n-5)+a(n-6)` -/
def P13827416927200649135.Spec : Prop :=
  ∀ n, (P13827416927200649135.a n : ℤ) = A079955 n

theorem P13827416927200649135.correct : P13827416927200649135.Spec := by
  intro n
  simp only [A079955]

end A079955

/-! ## A079955.P4241151675235512004

`A017899(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A079955.P4241151675235512004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A017899 n + a (n - 2)

end

end A079955.P4241151675235512004

namespace A079955

/-- `A017899(n)+a(n-2)` -/
def P4241151675235512004.Spec : Prop :=
  ∀ n, P4241151675235512004.a n = A079955 n

end A079955

/-! ## A079955.P10633221594703306229

`A182097(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A079955.P10633221594703306229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A182097 n - a (n - 3)

end

end A079955.P10633221594703306229

namespace A079955

/-- `A182097(n)-a(n-3)` -/
def P10633221594703306229.Spec : Prop :=
  ∀ n, P10633221594703306229.a n = A079955 n

end A079955

/-! ## A079955.P3254592995394615854

`A003520(n)-a(n-1)` with `a(0)=1`
-/

namespace A079955.P3254592995394615854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003520 n - a (n - 1)

end

end A079955.P3254592995394615854

namespace A079955

/-- `A003520(n)-a(n-1)` -/
def P3254592995394615854.Spec : Prop :=
  ∀ n, P3254592995394615854.a n = A079955 n

end A079955

/-! ## A079955.P2203369620640250813

`Δ[A099559(n)]-a(n-1)` with `a(0)=1`
-/

namespace A079955.P2203369620640250813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A079955.P2203369620640250813

namespace A079955

/-- `Δ[A099559(n)]-a(n-1)` -/
def P2203369620640250813.Spec : Prop :=
  ∀ n, P2203369620640250813.a n = A079955 n

end A079955

/-! ## A079955.P8238435565687370467

`A099559(n+1)-A099559(n)-a(n-1)` with `a(0)=1`
-/

namespace A079955.P8238435565687370467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099559 (n + 1) - A099559 n - a (n - 1)

end

end A079955.P8238435565687370467

namespace A079955

/-- `A099559(n+1)-A099559(n)-a(n-1)` -/
def P8238435565687370467.Spec : Prop :=
  ∀ n, P8238435565687370467.a n = A079955 n

end A079955

/-!
# A079956: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={0,1,4}.

The programs for A079956, the canonical program `A079956.P4017767142604310218` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079956 has offset 0).

The definition of A079956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079956.P4017767142604310218

`a(n-3)+a(n-4)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079956

/-- `a(n-3)+a(n-4)+a(n-6)` -/
def P4017767142604310218.Spec : Prop :=
  ∀ n, (P4017767142604310218.a n : ℤ) = A079956 n

theorem P4017767142604310218.correct : P4017767142604310218.Spec := by
  intro n
  simp only [A079956]

end A079956

/-! ## A079956.P9933195103464126737

`∑{e}[A000984(A247311(n)), #]`
-/

namespace A079956.P9933195103464126737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A247311 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A079956.P9933195103464126737

namespace A079956

/-- `∑{e}[A000984(A247311(n)), #]` -/
def P9933195103464126737.Spec : Prop :=
  ∀ n, (P9933195103464126737.a n : ℤ) = A079956 n

end A079956

/-!
# A079957: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={0,1,3}.

The programs for A079957, the canonical program `A079957.P12776707084134722511` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079957 has offset 0).

The definition of A079957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079957.P12776707084134722511

`a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079957

/-- `a(n-3)+a(n-5)+a(n-6)` -/
def P12776707084134722511.Spec : Prop :=
  ∀ n, (P12776707084134722511.a n : ℤ) = A079957 n

theorem P12776707084134722511.correct : P12776707084134722511.Spec := by
  intro n
  simp only [A079957]

end A079957

/-! ## A079957.P9953728365185625730

`A353350(A065199(3*n+2))+A036997(2*(n+2))`
-/

namespace A079957.P9953728365185625730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (A065199 (3 * n + 2)).toNat + A036997 (2 * (n + 2))

end

end A079957.P9953728365185625730

namespace A079957

/-- `A353350(A065199(3*n+2))+A036997(2*(n+2))` -/
def P9953728365185625730.Spec : Prop :=
  ∀ n, P9953728365185625730.a n = A079957 n

end A079957

/-! ## A079957.P6268138293508519108

`∑{d}[A295688(n), A103589(#)]`
-/

namespace A079957.P6268138293508519108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A103589 d

end

end A079957.P6268138293508519108

namespace A079957

/-- `∑{d}[A295688(n), A103589(#)]` -/
def P6268138293508519108.Spec : Prop :=
  ∀ n, P6268138293508519108.a n = A079957 n

end A079957

/-! ## A079957.P2477838828075165628

`A306276(n)%A001222(A041036(n))`
-/

namespace A079957.P2477838828075165628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306276 n) (A001222 (A041036 n).toNat)

end

end A079957.P2477838828075165628

namespace A079957

/-- `A306276(n)%A001222(A041036(n))` -/
def P2477838828075165628.Spec : Prop :=
  ∀ n, P2477838828075165628.a n = A079957 n

end A079957

/-!
# A079958: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={3,4}.

The programs for A079958, the canonical program `A079958.P3492769120901503803` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079958 has offset 0).

The definition of A079958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079958.P3492769120901503803

`a(n-1)+a(n-2)+a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079958

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-6)` -/
def P3492769120901503803.Spec : Prop :=
  ∀ n, (P3492769120901503803.a n : ℤ) = A079958 n

theorem P3492769120901503803.correct : P3492769120901503803.Spec := by
  intro n
  simp only [A079958]

end A079958

/-! ## A079958.P4383013109352932051

`A005833(n+2)-A005833(n)`
-/

namespace A079958.P4383013109352932051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005833 (n + 2) - A005833 n

end

end A079958.P4383013109352932051

namespace A079958

/-- `A005833(n+2)-A005833(n)` -/
def P4383013109352932051.Spec : Prop :=
  ∀ n, P4383013109352932051.a n = A079958 n

end A079958

/-! ## A079958.P4449721078047298244

`record[A005833(abs(1-n))]-A005833(n)`
-/

namespace A079958.P4449721078047298244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005833 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005833 n

end

end A079958.P4449721078047298244

namespace A079958

/-- `record[A005833(abs(1-n))]-A005833(n)` -/
def P4449721078047298244.Spec : Prop :=
  ∀ n, P4449721078047298244.a n = A079958 n

end A079958

/-! ## A079958.P18234015725776077490

`A059633(n+3)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A079958.P18234015725776077490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A059633 (n + 3) - (a (n - 2) + a (n - 1))

end

end A079958.P18234015725776077490

namespace A079958

/-- `A059633(n+3)-(a(n-2)+a(n-1))` -/
def P18234015725776077490.Spec : Prop :=
  ∀ n, P18234015725776077490.a n = A079958 n

end A079958

/-! ## A079958.P7663688618595127873

`Δ[A005833(n+1)+A005833(n)]`
-/

namespace A079958.P7663688618595127873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005833 (n + 1) + A005833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079958.P7663688618595127873

namespace A079958

/-- `Δ[A005833(n+1)+A005833(n)]` -/
def P7663688618595127873.Spec : Prop :=
  ∀ n, P7663688618595127873.a n = A079958 n

end A079958

/-!
# A079959: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={2,4}.

The programs for A079959, the canonical program `A079959.P8870896884843882868` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079959 has offset 0).

The definition of A079959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079959.P8870896884843882868

`a(n-1)+a(n-2)+a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079959

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-6)` -/
def P8870896884843882868.Spec : Prop :=
  ∀ n, (P8870896884843882868.a n : ℤ) = A079959 n

theorem P8870896884843882868.correct : P8870896884843882868.Spec := by
  intro n
  simp only [A079959]

end A079959

/-! ## A079959.P5762695890929866964

`A003056(A374747(n)²)`
-/

namespace A079959.P5762695890929866964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A374747 n ^ 2).toNat

end

end A079959.P5762695890929866964

namespace A079959

/-- `A003056(A374747(n)²)` -/
def P5762695890929866964.Spec : Prop :=
  ∀ n, P5762695890929866964.a n = A079959 n

end A079959

/-! ## A079959.P16321282545901881662

`A003056(A374747(n)^2)`
-/

namespace A079959.P16321282545901881662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A374747 n ^ 2).toNat

end

end A079959.P16321282545901881662

namespace A079959

/-- `A003056(A374747(n)^2)` -/
def P16321282545901881662.Spec : Prop :=
  ∀ n, P16321282545901881662.a n = A079959 n

end A079959

/-! ## A079959.P6991690513229901870

`A003056(A127603(n+2)²)`
-/

namespace A079959.P6991690513229901870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A127603 (n + 2) ^ 2).toNat

end

end A079959.P6991690513229901870

namespace A079959

/-- `A003056(A127603(n+2)²)` -/
def P6991690513229901870.Spec : Prop :=
  ∀ n, P6991690513229901870.a n = A079959 n

end A079959

/-! ## A079959.P8691303854208345809

`A364347(A063895(n+1))+A000071(n+1)`
-/

namespace A079959.P8691303854208345809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (A063895 (n + 1)).toNat + A000071 (n + 1)

end

end A079959.P8691303854208345809

namespace A079959

/-- `A364347(A063895(n+1))+A000071(n+1)` -/
def P8691303854208345809.Spec : Prop :=
  ∀ n, P8691303854208345809.a n = A079959 n

end A079959

/-!
# A079960: Number of permutations satisfying -k <= p(i) - i <= r and p(i) - i not in I, i=1..n, with k=1, r=5, I={2,3}.

The programs for A079960, the canonical program `A079960.P114863560921554240` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079960 has offset 0).

The definition of A079960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079960.P114863560921554240

`a(n-1)+a(n-2)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079960

/-- `a(n-1)+a(n-2)+a(n-5)+a(n-6)` -/
def P114863560921554240.Spec : Prop :=
  ∀ n, (P114863560921554240.a n : ℤ) = A079960 n

theorem P114863560921554240.correct : P114863560921554240.Spec := by
  intro n
  simp only [A079960]

end A079960

/-! ## A079960.P10059498567888205378

`A100196(A024502(n)+A002525(n))`
-/

namespace A079960.P10059498567888205378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A024502 n + A002525 n).toNat

end

end A079960.P10059498567888205378

namespace A079960

/-- `A100196(A024502(n)+A002525(n))` -/
def P10059498567888205378.Spec : Prop :=
  ∀ n, P10059498567888205378.a n = A079960 n

end A079960

/-! ## A079960.P6421163147241558568

`A038568(A002529(n))`
-/

namespace A079960.P6421163147241558568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A002529 n).toNat

end

end A079960.P6421163147241558568

namespace A079960

/-- `A038568(A002529(n))` -/
def P6421163147241558568.Spec : Prop :=
  ∀ n, P6421163147241558568.a n = A079960 n

end A079960

/-! ## A079960.P5267798451601675983

`∑[A003056(Δ[A063026(n)])]`
-/

namespace A079960.P5267798451601675983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063026 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079960.P5267798451601675983

namespace A079960

/-- `∑[A003056(Δ[A063026(n)])]` -/
def P5267798451601675983.Spec : Prop :=
  ∀ n, P5267798451601675983.a n = A079960 n

end A079960

/-! ## A079960.P10313549119245863552

`A157928(ceil(sqrt(n!)))+A098057(n)`
-/

namespace A079960.P10313549119245863552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 ⌈Real.sqrt (Nat.factorial n : ℝ)⌉.toNat + A098057 n

end

end A079960.P10313549119245863552

namespace A079960

/-- `A157928(ceil(sqrt(n!)))+A098057(n)` -/
def P10313549119245863552.Spec : Prop :=
  ∀ n, P10313549119245863552.a n = A079960 n

end A079960

/-!
# A079961: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={1,4}.

The programs for A079961, the canonical program `A079961.P3835888446161640458` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079961 has offset 0).

The definition of A079961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079961.P3835888446161640458

`a(n-1)+a(n-3)+a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079961

/-- `a(n-1)+a(n-3)+a(n-4)+a(n-6)` -/
def P3835888446161640458.Spec : Prop :=
  ∀ n, (P3835888446161640458.a n : ℤ) = A079961 n

theorem P3835888446161640458.correct : P3835888446161640458.Spec := by
  intro n
  simp only [A079961]

end A079961

/-! ## A079961.P7517785665914135161

`A003056(A151256(n))`
-/

namespace A079961.P7517785665914135161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A151256 n).toNat

end

end A079961.P7517785665914135161

namespace A079961

/-- `A003056(A151256(n))` -/
def P7517785665914135161.Spec : Prop :=
  ∀ n, P7517785665914135161.a n = A079961 n

end A079961

/-! ## A079961.P3350437563098043226

`A103128(A352176(n+1))`
-/

namespace A079961.P3350437563098043226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A352176 (n + 1)).toNat

end

end A079961.P3350437563098043226

namespace A079961

/-- `A103128(A352176(n+1))` -/
def P3350437563098043226.Spec : Prop :=
  ∀ n, P3350437563098043226.a n = A079961 n

end A079961

/-! ## A079961.P9649479072423364782

`A002024(floor(sqrt(A162326(n))))`
-/

namespace A079961.P9649479072423364782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.sqrt (A162326 n)).toNat

end

end A079961.P9649479072423364782

namespace A079961

/-- `A002024(floor(sqrt(A162326(n))))` -/
def P9649479072423364782.Spec : Prop :=
  ∀ n, P9649479072423364782.a n = A079961 n

end A079961

/-! ## A079961.P5697254914693395059

`A123578(floor(sqrt(A162326(n))))`
-/

namespace A079961.P5697254914693395059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.sqrt (A162326 n)).toNat

end

end A079961.P5697254914693395059

namespace A079961

/-- `A123578(floor(sqrt(A162326(n))))` -/
def P5697254914693395059.Spec : Prop :=
  ∀ n, P5697254914693395059.a n = A079961 n

end A079961

/-!
# A079962: Number of permutations satisfying -k <= p(i) - i <= r and p(i) - i not in I, i=1..n, with k=1, r=5, I={1,3}.

The programs for A079962, the canonical program `A079962.P599459434982274545` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079962 has offset 0).

The definition of A079962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079962.P599459434982274545

`a(n-1)+a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079962

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-6)` -/
def P599459434982274545.Spec : Prop :=
  ∀ n, (P599459434982274545.a n : ℤ) = A079962 n

theorem P599459434982274545.correct : P599459434982274545.Spec := by
  intro n
  simp only [A079962]

end A079962

/-! ## A079962.P3600382195787562706

`A005252(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A079962.P3600382195787562706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A005252 n + a (n - 3)

end

end A079962.P3600382195787562706

namespace A079962

/-- `A005252(n)+a(n-3)` -/
def P3600382195787562706.Spec : Prop :=
  ∀ n, P3600382195787562706.a n = A079962 n

end A079962

/-! ## A079962.P5336560652336289001

`A293552(n+1)+A293553(n+1)+A004697(n)`
-/

namespace A079962.P5336560652336289001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (n + 1) + (A293553 (n + 1) + A004697 n)

end

end A079962.P5336560652336289001

namespace A079962

/-- `A293552(n+1)+A293553(n+1)+A004697(n)` -/
def P5336560652336289001.Spec : Prop :=
  ∀ n, P5336560652336289001.a n = A079962 n

end A079962

/-! ## A079962.P17628083160588947982

`ceil(∑[A000045(n+1)/4])`
-/

namespace A079962.P17628083160588947982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A079962.P17628083160588947982

namespace A079962

/-- `ceil(∑[A000045(n+1)/4])` -/
def P17628083160588947982.Spec : Prop :=
  ∀ n, P17628083160588947982.a n = A079962 n

end A079962

/-! ## A079962.P6140613610952047414

`A093040(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A079962.P6140613610952047414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A093040 n - a (n - 3)

end

end A079962.P6140613610952047414

namespace A079962

/-- `A093040(n)-a(n-3)` -/
def P6140613610952047414.Spec : Prop :=
  ∀ n, P6140613610952047414.a n = A079962 n

end A079962

/-! ## A079962.P1185927506257181761

`A000045(n+1)-A227047(n)`
-/

namespace A079962.P1185927506257181761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A227047 n

end

end A079962.P1185927506257181761

namespace A079962

/-- `A000045(n+1)-A227047(n)` -/
def P1185927506257181761.Spec : Prop :=
  ∀ n, P1185927506257181761.a n = A079962 n

end A079962

/-! ## A079962.P5513898997804707950

`A131132(n)-A293553(n+2)`
-/

namespace A079962.P5513898997804707950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131132 n - A293553 (n + 2)

end

end A079962.P5513898997804707950

namespace A079962

/-- `A131132(n)-A293553(n+2)` -/
def P5513898997804707950.Spec : Prop :=
  ∀ n, P5513898997804707950.a n = A079962 n

end A079962

/-! ## A079962.P1546914324268836268

`A000045(n+1)+A004697(n)-A004695(n+1)`
-/

namespace A079962.P1546914324268836268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A004697 n - A004695 (n + 1))

end

end A079962.P1546914324268836268

namespace A079962

/-- `A000045(n+1)+A004697(n)-A004695(n+1)` -/
def P1546914324268836268.Spec : Prop :=
  ∀ n, P1546914324268836268.a n = A079962 n

end A079962

/-! ## A079962.P14946201457441775858

`Δ[A004697(n+4)]`
-/

namespace A079962.P14946201457441775858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079962.P14946201457441775858

namespace A079962

/-- `Δ[A004697(n+4)]` -/
def P14946201457441775858.Spec : Prop :=
  ∀ n, P14946201457441775858.a n = A079962 n

end A079962

/-! ## A079962.P14545335103609350359

`floor((A099517(n)+1)/2)`
-/

namespace A079962.P14545335103609350359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099517 n + 1 : ℚ) / 2⌋

end

end A079962.P14545335103609350359

namespace A079962

/-- `floor((A099517(n)+1)/2)` -/
def P14545335103609350359.Spec : Prop :=
  ∀ n, P14545335103609350359.a n = A079962 n

end A079962

/-! ## A079962.P8599457370847047819

`A227047(n+3)-A094686(n+1)`
-/

namespace A079962.P8599457370847047819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (n + 3) - A094686 (n + 1)

end

end A079962.P8599457370847047819

namespace A079962

/-- `A227047(n+3)-A094686(n+1)` -/
def P8599457370847047819.Spec : Prop :=
  ∀ n, P8599457370847047819.a n = A079962 n

end A079962

/-! ## A079962.P8524390777829169779

`A004695(n+3)-A004697(n+3)`
-/

namespace A079962.P8524390777829169779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 3) - A004697 (n + 3)

end

end A079962.P8524390777829169779

namespace A079962

/-- `A004695(n+3)-A004697(n+3)` -/
def P8524390777829169779.Spec : Prop :=
  ∀ n, P8524390777829169779.a n = A079962 n

end A079962

/-! ## A079962.P15472435255188027120

`ceil(∑[round(ϕ*a(n-1))]/4)` with `a(0)=1, a(1)=1`
-/

namespace A079962.P15472435255188027120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌉

end

end A079962.P15472435255188027120

namespace A079962

/-- `ceil(∑[round(ϕ*a(n-1))]/4)` -/
def P15472435255188027120.Spec : Prop :=
  ∀ n, P15472435255188027120.a n = A079962 n

end A079962

/-! ## A079962.P17012930503847711530

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=4, a(1)=1, a(2)=2`
-/

namespace A079962.P17012930503847711530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A079962.P17012930503847711530

namespace A079962

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P17012930503847711530.Spec : Prop :=
  ∀ n, P17012930503847711530.a n = A079962 n

end A079962

/-! ## A079962.P4318643278770409681

`floor(A018910(n)/4)`
-/

namespace A079962.P4318643278770409681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018910 n : ℚ) / 4⌋

end

end A079962.P4318643278770409681

namespace A079962

/-- `floor(A018910(n)/4)` -/
def P4318643278770409681.Spec : Prop :=
  ∀ n, P4318643278770409681.a n = A079962 n

end A079962

/-! ## A079962.P8782027919314445553

`round(A020695(n)/4)`
-/

namespace A079962.P8782027919314445553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020695 n : ℚ) / 4)

end

end A079962.P8782027919314445553

namespace A079962

/-- `round(A020695(n)/4)` -/
def P8782027919314445553.Spec : Prop :=
  ∀ n, P8782027919314445553.a n = A079962 n

end A079962

/-! ## A079962.P10521292463929381754

`round(A000045(n+3)/4)`
-/

namespace A079962.P10521292463929381754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (n + 3) : ℚ) / 4)

end

end A079962.P10521292463929381754

namespace A079962

/-- `round(A000045(n+3)/4)` -/
def P10521292463929381754.Spec : Prop :=
  ∀ n, P10521292463929381754.a n = A079962 n

end A079962

/-! ## A079962.P773093599423779955

`round(A212804(n+4)/4)`
-/

namespace A079962.P773093599423779955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212804 (n + 4) : ℚ) / 4)

end

end A079962.P773093599423779955

namespace A079962

/-- `round(A212804(n+4)/4)` -/
def P773093599423779955.Spec : Prop :=
  ∀ n, P773093599423779955.a n = A079962 n

end A079962

/-! ## A079962.P4756823969086633918

`ceil(A163227(2*(n+1))/4)`
-/

namespace A079962.P4756823969086633918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163227 (2 * (n + 1)) : ℚ) / 4⌉

end

end A079962.P4756823969086633918

namespace A079962

/-- `ceil(A163227(2*(n+1))/4)` -/
def P4756823969086633918.Spec : Prop :=
  ∀ n, P4756823969086633918.a n = A079962 n

end A079962

/-! ## A079962.P3228688428413576677

`ceil(record[abs(1-A000045(n))]/4)`
-/

namespace A079962.P3228688428413576677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000045 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌉

end

end A079962.P3228688428413576677

namespace A079962

/-- `ceil(record[abs(1-A000045(n))]/4)` -/
def P3228688428413576677.Spec : Prop :=
  ∀ n, P3228688428413576677.a n = A079962 n

end A079962

/-!
# A079963: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={1,2}.

The programs for A079963, the canonical program `A079963.P10287364520062304060` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079963 has offset 0).

The definition of A079963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079963.P10287364520062304060

`a(n-1)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079963

/-- `a(n-1)+a(n-4)+a(n-5)+a(n-6)` -/
def P10287364520062304060.Spec : Prop :=
  ∀ n, (P10287364520062304060.a n : ℤ) = A079963 n

theorem P10287364520062304060.correct : P10287364520062304060.Spec := by
  intro n
  simp only [A079963]

end A079963

/-! ## A079963.P15113107177388931138

`A346131(A052284(n))+floor(n/log(55))`
-/

namespace A079963.P15113107177388931138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A052284 n).toNat + ⌊(n : ℝ) / Real.log (55 : ℝ)⌋

end

end A079963.P15113107177388931138

namespace A079963

/-- `A346131(A052284(n))+floor(n/log(55))` -/
def P15113107177388931138.Spec : Prop :=
  ∀ n, P15113107177388931138.a n = A079963 n

end A079963

/-! ## A079963.P2885973402026481937

`A251631(A000045(n))+A025776(n)`
-/

namespace A079963.P2885973402026481937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A000045 n).toNat + A025776 n

end

end A079963.P2885973402026481937

namespace A079963

/-- `A251631(A000045(n))+A025776(n)` -/
def P2885973402026481937.Spec : Prop :=
  ∀ n, P2885973402026481937.a n = A079963 n

end A079963

/-!
# A079964: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={0,4}.

The programs for A079964, the canonical program `A079964.P9474738282725151748` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079964 has offset 0).

The definition of A079964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079964.P9474738282725151748

`a(n-2)+a(n-3)+a(n-4)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079964

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-6)` -/
def P9474738282725151748.Spec : Prop :=
  ∀ n, (P9474738282725151748.a n : ℤ) = A079964 n

theorem P9474738282725151748.correct : P9474738282725151748.Spec := by
  intro n
  simp only [A079964]

end A079964

/-!
# A079965: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={0,3}.

The programs for A079965, the canonical program `A079965.P9584363373642291585` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079965 has offset 0).

The definition of A079965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079965.P9584363373642291585

`a(n-2)+a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079965

/-- `a(n-2)+a(n-3)+a(n-5)+a(n-6)` -/
def P9584363373642291585.Spec : Prop :=
  ∀ n, (P9584363373642291585.a n : ℤ) = A079965 n

theorem P9584363373642291585.correct : P9584363373642291585.Spec := by
  intro n
  simp only [A079965]

end A079965

/-!
# A079966: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={0,2}.

The programs for A079966, the canonical program `A079966.P17784048176578293918` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079966 has offset 0).

The definition of A079966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079966.P17784048176578293918

`a(n-2)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079966

/-- `a(n-2)+a(n-4)+a(n-5)+a(n-6)` -/
def P17784048176578293918.Spec : Prop :=
  ∀ n, (P17784048176578293918.a n : ℤ) = A079966 n

theorem P17784048176578293918.correct : P17784048176578293918.Spec := by
  intro n
  simp only [A079966]

end A079966

/-!
# A079967: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={4}.

The programs for A079967, the canonical program `A079967.P1791822246229202549` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079967 has offset 0).

The definition of A079967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079967.P1791822246229202549

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079967

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-6)` -/
def P1791822246229202549.Spec : Prop :=
  ∀ n, (P1791822246229202549.a n : ℤ) = A079967 n

theorem P1791822246229202549.correct : P1791822246229202549.Spec := by
  intro n
  simp only [A079967]

end A079967

/-! ## A079967.P15716438055567244574

`A028310(A134044(n)+A025442(n))`
-/

namespace A079967.P15716438055567244574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A134044 n + A025442 n).toNat

end

end A079967.P15716438055567244574

namespace A079967

/-- `A028310(A134044(n)+A025442(n))` -/
def P15716438055567244574.Spec : Prop :=
  ∀ n, P15716438055567244574.a n = A079967 n

end A079967

/-! ## A079967.P10990216818734870490

`A058035(A134044(n)+A025442(n))`
-/

namespace A079967.P10990216818734870490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (A134044 n + A025442 n).toNat

end

end A079967.P10990216818734870490

namespace A079967

/-- `A058035(A134044(n)+A025442(n))` -/
def P10990216818734870490.Spec : Prop :=
  ∀ n, P10990216818734870490.a n = A079967 n

end A079967

/-! ## A079967.P6041965431507040325

`A028310(A151795(n)+A134044(n))`
-/

namespace A079967.P6041965431507040325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A151795 n + A134044 n).toNat

end

end A079967.P6041965431507040325

namespace A079967

/-- `A028310(A151795(n)+A134044(n))` -/
def P6041965431507040325.Spec : Prop :=
  ∀ n, P6041965431507040325.a n = A079967 n

end A079967

/-! ## A079967.P8891896829002265318

`A058035(A151795(n)+A134044(n))`
-/

namespace A079967.P8891896829002265318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (A151795 n + A134044 n).toNat

end

end A079967.P8891896829002265318

namespace A079967

/-- `A058035(A151795(n)+A134044(n))` -/
def P8891896829002265318.Spec : Prop :=
  ∀ n, P8891896829002265318.a n = A079967 n

end A079967

/-!
# A079968: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={3}.

The programs for A079968, the canonical program `A079968.P6478493570651845996` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079968 has offset 0).

The definition of A079968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079968.P6478493570651845996

`a(n-1)+a(n-2)+a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=14`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079968

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-5)+a(n-6)` -/
def P6478493570651845996.Spec : Prop :=
  ∀ n, (P6478493570651845996.a n : ℤ) = A079968 n

theorem P6478493570651845996.correct : P6478493570651845996.Spec := by
  intro n
  simp only [A079968]

end A079968

/-! ## A079968.P15056873020203006402

`A054846(A001906(n)+2)-1`
-/

namespace A079968.P15056873020203006402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A001906 n + 2).toNat - 1

end

end A079968.P15056873020203006402

namespace A079968

/-- `A054846(A001906(n)+2)-1` -/
def P15056873020203006402.Spec : Prop :=
  ∀ n, P15056873020203006402.a n = A079968 n

end A079968

/-! ## A079968.P3763204519811974085

`A100196(A052925(n)-A143438(n))`
-/

namespace A079968.P3763204519811974085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A052925 n - A143438 n).toNat

end

end A079968.P3763204519811974085

namespace A079968

/-- `A100196(A052925(n)-A143438(n))` -/
def P3763204519811974085.Spec : Prop :=
  ∀ n, P3763204519811974085.a n = A079968 n

end A079968

/-! ## A079968.P17643109654028079639

`A100196(A052925(n)-A240607(n))`
-/

namespace A079968.P17643109654028079639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A052925 n - A240607 n).toNat

end

end A079968.P17643109654028079639

namespace A079968

/-- `A100196(A052925(n)-A240607(n))` -/
def P17643109654028079639.Spec : Prop :=
  ∀ n, P17643109654028079639.a n = A079968 n

end A079968

/-! ## A079968.P9375798672423016844

`A100196(A052925(n)-A266777(n))`
-/

namespace A079968.P9375798672423016844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A052925 n - A266777 n).toNat

end

end A079968.P9375798672423016844

namespace A079968

/-- `A100196(A052925(n)-A266777(n))` -/
def P9375798672423016844.Spec : Prop :=
  ∀ n, P9375798672423016844.a n = A079968 n

end A079968

/-!
# A079969: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=5, I={2}.

The programs for A079969, the canonical program `A079969.P9460431413561450755` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079969 has offset 0).

The definition of A079969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079969.P9460431413561450755

`a(n-1)+a(n-2)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=11`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079969

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)+a(n-6)` -/
def P9460431413561450755.Spec : Prop :=
  ∀ n, (P9460431413561450755.a n : ℤ) = A079969 n

theorem P9460431413561450755.correct : P9460431413561450755.Spec := by
  intro n
  simp only [A079969]

end A079969

/-! ## A079969.P229432275473761694

`abs(a(n-3)-A282718(n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A079969.P229432275473761694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  |a (n - 3) - A282718 n|

end

end A079969.P229432275473761694

namespace A079969

/-- `abs(a(n-3)-A282718(n))` -/
def P229432275473761694.Spec : Prop :=
  ∀ n, P229432275473761694.a n = A079969 n

end A079969

/-! ## A079969.P3093403549010928872

`A089068(n)+1-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A079969.P3093403549010928872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A089068 n + (1 - a (n - 3))

end

end A079969.P3093403549010928872

namespace A079969

/-- `A089068(n)+1-a(n-3)` -/
def P3093403549010928872.Spec : Prop :=
  ∀ n, P3093403549010928872.a n = A079969 n

end A079969

/-! ## A079969.P15126344541407431047

`∑[A001590(n+1)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A079969.P15126344541407431047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A079969.P15126344541407431047

namespace A079969

/-- `∑[A001590(n+1)]-a(n-3)` -/
def P15126344541407431047.Spec : Prop :=
  ∀ n, P15126344541407431047.a n = A079969 n

end A079969

/-! ## A079969.P2491999626860104633

`Δ[A008937(n)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A079969.P2491999626860104633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  f1 (n + 1) - f1 n - a (n - 3)

end

end A079969.P2491999626860104633

namespace A079969

/-- `Δ[A008937(n)]-a(n-3)` -/
def P2491999626860104633.Spec : Prop :=
  ∀ n, P2491999626860104633.a n = A079969 n

end A079969

/-!
# A079971: Number of compositions (ordered partitions) of n into parts 1, 2, and 5.

The programs for A079971, the canonical program `A079971.P16379624065770846404` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079971 has offset 0).

The definition of A079971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079971.P16379624065770846404

`a(n-1)+a(n-2)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079971

/-- `a(n-1)+a(n-2)+a(n-5)` -/
def P16379624065770846404.Spec : Prop :=
  ∀ n, (P16379624065770846404.a n : ℤ) = A079971 n

theorem P16379624065770846404.correct : P16379624065770846404.Spec := by
  intro n
  simp only [A079971]

end A079971

/-! ## A079971.P5106569440832835742

`ogf(-1/(-1+x+x^2+x^5))`
-/

namespace A079971.P5106569440832835742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, 0, 0, -1] n

end

end A079971.P5106569440832835742

namespace A079971

/-- `ogf(-1/(-1+x+x^2+x^5))` -/
def P5106569440832835742.Spec : Prop :=
  ∀ n, P5106569440832835742.a n = A079971 n

end A079971

/-! ## A079971.P1161907167283942637

`A340215(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A079971.P1161907167283942637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A340215 (n + 1) - a (n - 1)

end

end A079971.P1161907167283942637

namespace A079971

/-- `A340215(n+1)-a(n-1)` -/
def P1161907167283942637.Spec : Prop :=
  ∀ n, P1161907167283942637.a n = A079971 n

end A079971

/-! ## A079971.P13410852925987048764

`Δ[A340215(n+3)]-A340217(n+1)`
-/

namespace A079971.P13410852925987048764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A340217 (n + 1)

end

end A079971.P13410852925987048764

namespace A079971

/-- `Δ[A340215(n+3)]-A340217(n+1)` -/
def P13410852925987048764.Spec : Prop :=
  ∀ n, P13410852925987048764.a n = A079971 n

end A079971

/-! ## A079971.P16593705680517128933

`Δ[A020718(n)-A340215(n+4)]`
-/

namespace A079971.P16593705680517128933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020718 n - A340215 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079971.P16593705680517128933

namespace A079971

/-- `Δ[A020718(n)-A340215(n+4)]` -/
def P16593705680517128933.Spec : Prop :=
  ∀ n, P16593705680517128933.a n = A079971 n

end A079971

/-! ## A079971.P15385877195561022656

`A340217(n+3)%Δ[A340215(n+4)]`
-/

namespace A079971.P15385877195561022656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340215 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340217 (n + 3)) (f1 (n + 1) - f1 n)

end

end A079971.P15385877195561022656

namespace A079971

/-- `A340217(n+3)%Δ[A340215(n+4)]` -/
def P15385877195561022656.Spec : Prop :=
  ∀ n, P15385877195561022656.a n = A079971 n

end A079971

/-!
# A079972: Number of permutations satisfying -k <= p(i)-i <= r and p(i)-i not in I, i=1..n, with k=1, r=4, I={1,2}.

The programs for A079972, the canonical program `A079972.P9555136105867358654` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079972 has offset 0).

The definition of A079972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079972.P9555136105867358654

`a(n-1)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079972

/-- `a(n-1)+a(n-4)+a(n-5)` -/
def P9555136105867358654.Spec : Prop :=
  ∀ n, (P9555136105867358654.a n : ℤ) = A079972 n

theorem P9555136105867358654.correct : P9555136105867358654.Spec := by
  intro n
  simp only [A079972]

end A079972

/-! ## A079972.P10834222873004134727

`ogf(-1/(-1+x+x^4+x^5))`
-/

namespace A079972.P10834222873004134727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, -1, -1] n

end

end A079972.P10834222873004134727

namespace A079972

/-- `ogf(-1/(-1+x+x^4+x^5))` -/
def P10834222873004134727.Spec : Prop :=
  ∀ n, P10834222873004134727.a n = A079972 n

end A079972

/-! ## A079972.P5035931778969577504

`A116975(n+1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A079972.P5035931778969577504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A116975 (n + 1) - a (n - 3)

end

end A079972.P5035931778969577504

namespace A079972

/-- `A116975(n+1)-a(n-3)` -/
def P5035931778969577504.Spec : Prop :=
  ∀ n, P5035931778969577504.a n = A079972 n

end A079972

/-! ## A079972.P18300467522394526321

`A343305(A187829(n+1))+A143283(n)`
-/

namespace A079972.P18300467522394526321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343305 (A187829 (n + 1)).toNat + A143283 n

end

end A079972.P18300467522394526321

namespace A079972

/-- `A343305(A187829(n+1))+A143283(n)` -/
def P18300467522394526321.Spec : Prop :=
  ∀ n, P18300467522394526321.a n = A079972 n

end A079972

/-! ## A079972.P8669392011367674168

`A343305(A077168(n))+A143283(n)`
-/

namespace A079972.P8669392011367674168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343305 (A077168 n).toNat + A143283 n

end

end A079972.P8669392011367674168

namespace A079972

/-- `A343305(A077168(n))+A143283(n)` -/
def P8669392011367674168.Spec : Prop :=
  ∀ n, P8669392011367674168.a n = A079972 n

end A079972

/-!
# A079973: Number of permutations satisfying -k <= p(i) - i <= r and p(i) - i not in I, i=1..n, with k=1, r=4, I={0,3}.

The programs for A079973, the canonical program `A079973.P15178959724728362695` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079973 has offset 0).

The definition of A079973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079973.P15178959724728362695

`a(n-2)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079973

/-- `a(n-2)+a(n-3)+a(n-5)` -/
def P15178959724728362695.Spec : Prop :=
  ∀ n, (P15178959724728362695.a n : ℤ) = A079973 n

theorem P15178959724728362695.correct : P15178959724728362695.Spec := by
  intro n
  simp only [A079973]

end A079973

/-! ## A079973.P6274029902577967738

`ogf(-1/(-1+x^2+x^3+x^5))`
-/

namespace A079973.P6274029902577967738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -1, 0, -1] n

end

end A079973.P6274029902577967738

namespace A079973

/-- `ogf(-1/(-1+x^2+x^3+x^5))` -/
def P6274029902577967738.Spec : Prop :=
  ∀ n, P6274029902577967738.a n = A079973 n

end A079973

/-! ## A079973.P15699821561072026527

`Δ[A176513(n+5)/2]`
-/

namespace A079973.P15699821561072026527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176513 (n + 5) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079973.P15699821561072026527

namespace A079973

/-- `Δ[A176513(n+5)/2]` -/
def P15699821561072026527.Spec : Prop :=
  ∀ n, P15699821561072026527.a n = (A079973 n : ℚ)

end A079973

/-! ## A079973.P15394660555773267982

`(A176513(n+6)-A176513(n+5))/2`
-/

namespace A079973.P15394660555773267982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176513 (n + 6) - A176513 (n + 5) : ℚ) / 2

end

end A079973.P15394660555773267982

namespace A079973

/-- `(A176513(n+6)-A176513(n+5))/2` -/
def P15394660555773267982.Spec : Prop :=
  ∀ n, P15394660555773267982.a n = (A079973 n : ℚ)

end A079973

/-! ## A079973.P7233020844798656839

`A014682(Δ[A176513(n+5)])`
-/

namespace A079973.P7233020844798656839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176513 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A079973.P7233020844798656839

namespace A079973

/-- `A014682(Δ[A176513(n+5)])` -/
def P7233020844798656839.Spec : Prop :=
  ∀ n, P7233020844798656839.a n = A079973 n

end A079973

/-!
# A079974: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=4, I={0,2}.

The programs for A079974, the canonical program `A079974.P10582196304377272659` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079974 has offset 0).

The definition of A079974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079974.P10582196304377272659

`a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079974

/-- `a(n-2)+a(n-4)+a(n-5)` -/
def P10582196304377272659.Spec : Prop :=
  ∀ n, (P10582196304377272659.a n : ℤ) = A079974 n

theorem P10582196304377272659.correct : P10582196304377272659.Spec := by
  intro n
  simp only [A079974]

end A079974

/-! ## A079974.P2923191126608731644

`ogf(-1/(-1+x^2+x^4+x^5))`
-/

namespace A079974.P2923191126608731644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 0, -1, -1] n

end

end A079974.P2923191126608731644

namespace A079974

/-- `ogf(-1/(-1+x^2+x^4+x^5))` -/
def P2923191126608731644.Spec : Prop :=
  ∀ n, P2923191126608731644.a n = A079974 n

end A079974

/-! ## A079974.P18185588499461399942

`A017898(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A079974.P18185588499461399942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A017898 n + a (n - 2)

end

end A079974.P18185588499461399942

namespace A079974

/-- `A017898(n)+a(n-2)` -/
def P18185588499461399942.Spec : Prop :=
  ∀ n, P18185588499461399942.a n = A079974 n

end A079974

/-! ## A079974.P5580377313279484644

`A103632(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A079974.P5580377313279484644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A103632 n - a (n - 3)

end

end A079974.P5580377313279484644

namespace A079974

/-- `A103632(n)-a(n-3)` -/
def P5580377313279484644.Spec : Prop :=
  ∀ n, P5580377313279484644.a n = A079974 n

end A079974

/-! ## A079974.P9895745941034974072

`A003269(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A079974.P9895745941034974072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003269 (n + 1) - a (n - 1)

end

end A079974.P9895745941034974072

namespace A079974

/-- `A003269(n+1)-a(n-1)` -/
def P9895745941034974072.Spec : Prop :=
  ∀ n, P9895745941034974072.a n = A079974 n

end A079974

/-! ## A079974.P14105325886040136663

`∑[Δ[A003269(n)]-a(n-1)]` with `a(0)=1`
-/

namespace A079974.P14105325886040136663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f2 (n + 1) - f2 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079974.P14105325886040136663

namespace A079974

/-- `∑[Δ[A003269(n)]-a(n-1)]` -/
def P14105325886040136663.Spec : Prop :=
  ∀ n, P14105325886040136663.a n = A079974 n

end A079974

/-! ## A079974.P13517107846196846954

`Δ[A098578(n)]-a(n-1)` with `a(0)=1`
-/

namespace A079974.P13517107846196846954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A079974.P13517107846196846954

namespace A079974

/-- `Δ[A098578(n)]-a(n-1)` -/
def P13517107846196846954.Spec : Prop :=
  ∀ n, P13517107846196846954.a n = A079974 n

end A079974

/-!
# A079975: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=1, r=4, I={3}.

The programs for A079975, the canonical program `A079975.P3410767544258537462` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079975 has offset 0).

The definition of A079975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079975.P3410767544258537462

`a(n-1)+a(n-2)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079975

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-5)` -/
def P3410767544258537462.Spec : Prop :=
  ∀ n, (P3410767544258537462.a n : ℤ) = A079975 n

theorem P3410767544258537462.correct : P3410767544258537462.Spec := by
  intro n
  simp only [A079975]

end A079975

/-! ## A079975.P16523979673454196603

`ogf(-1/(-1+x+x^2+x^3+x^5))`
-/

namespace A079975.P16523979673454196603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, -1, 0, -1] n

end

end A079975.P16523979673454196603

namespace A079975

/-- `ogf(-1/(-1+x+x^2+x^3+x^5))` -/
def P16523979673454196603.Spec : Prop :=
  ∀ n, P16523979673454196603.a n = A079975 n

end A079975

/-! ## A079975.P6430492432706734718

`or(A037800(A185335(n)), A257792(n))`
-/

namespace A079975.P6430492432706734718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 (A185335 n).toNat) (A257792 n)

end

end A079975.P6430492432706734718

namespace A079975

/-- `or(A037800(A185335(n)), A257792(n))` -/
def P6430492432706734718.Spec : Prop :=
  ∀ n, P6430492432706734718.a n = A079975 n

end A079975

/-! ## A079975.P14326150336645008304

`or(A257792(n), A266003(A165653(n)))`
-/

namespace A079975.P14326150336645008304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257792 n) (A266003 (A165653 n).toNat)

end

end A079975.P14326150336645008304

namespace A079975

/-- `or(A257792(n), A266003(A165653(n)))` -/
def P14326150336645008304.Spec : Prop :=
  ∀ n, P14326150336645008304.a n = A079975 n

end A079975

/-! ## A079975.P125276846095304920

`A080595(A148298(n))`
-/

namespace A079975.P125276846095304920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A148298 n).toNat

end

end A079975.P125276846095304920

namespace A079975

/-- `A080595(A148298(n))` -/
def P125276846095304920.Spec : Prop :=
  ∀ n, P125276846095304920.a n = A079975 n

end A079975

/-!
# A079976: Expansion of g.f. 1/(1-x-x^2-x^4-x^5).

The programs for A079976, the canonical program `A079976.P11669340783606746827` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079976 has offset 0).

The definition of A079976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^4-x^5))` (program `A079976.P11669340783606746827`, by `A079976.P11669340783606746827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079976.P11669340783606746827

`ogf(1/(1-x-x^2-x^4-x^5))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079976

/-- `ogf(1/(1-x-x^2-x^4-x^5))` -/
def P11669340783606746827.Spec : Prop :=
  ∀ n, P11669340783606746827.a n = A079976 n

theorem P11669340783606746827.correct : P11669340783606746827.Spec := by
  intro n
  simp only [A079976]

end A079976

/-! ## A079976.P3761758599368980312

`a(n-1)+a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A079976.P3761758599368980312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 6] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4) + a (n - 5)

end

end A079976.P3761758599368980312

namespace A079976

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)` -/
def P3761758599368980312.Spec : Prop :=
  ∀ n, (P3761758599368980312.a n : ℤ) = A079976 n

end A079976

/-! ## A079976.P9121253593838035204

`A188223(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A079976.P9121253593838035204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A188223 (n - 2) + a (n - 1)

end

end A079976.P9121253593838035204

namespace A079976

/-- `A188223(n-2)+a(n-1)` -/
def P9121253593838035204.Spec : Prop :=
  ∀ n, P9121253593838035204.a n = A079976 n

end A079976

/-! ## A079976.P4929281790406465903

`A014743(n)-a(n-1)` with `a(0)=1`
-/

namespace A079976.P4929281790406465903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014743 n - a (n - 1)

end

end A079976.P4929281790406465903

namespace A079976

/-- `A014743(n)-a(n-1)` -/
def P4929281790406465903.Spec : Prop :=
  ∀ n, P4929281790406465903.a n = A079976 n

end A079976

/-! ## A079976.P3115157019876080733

`∑[A164387(A289207(n))]-a(n-1)` with `a(0)=1`
-/

namespace A079976.P3115157019876080733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A079976.P3115157019876080733

namespace A079976

/-- `∑[A164387(A289207(n))]-a(n-1)` -/
def P3115157019876080733.Spec : Prop :=
  ∀ n, P3115157019876080733.a n = A079976 n

end A079976

/-! ## A079976.P2976693283196062808

`∑[A164387(A004275(n)-n)]-a(n-1)` with `a(0)=1`
-/

namespace A079976.P2976693283196062808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A079976.P2976693283196062808

namespace A079976

/-- `∑[A164387(A004275(n)-n)]-a(n-1)` -/
def P2976693283196062808.Spec : Prop :=
  ∀ n, P2976693283196062808.a n = A079976 n

end A079976

/-! ## A079976.P17574825653813344863

`∑[A164387(A233583(n+1)-2)]-a(n-1)` with `a(0)=1`
-/

namespace A079976.P17574825653813344863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 (A233583 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A079976.P17574825653813344863

namespace A079976

/-- `∑[A164387(A233583(n+1)-2)]-a(n-1)` -/
def P17574825653813344863.Spec : Prop :=
  ∀ n, P17574825653813344863.a n = A079976 n

end A079976

/-!
# A079977: Fibonacci numbers interspersed with zeros.

The programs for A079977, the canonical program `A079977.P5176003512458126171` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079977 has offset 0).

The definition of A079977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079977.P5176003512458126171

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079977

/-- `a(n-2)+a(n-4)` -/
def P5176003512458126171.Spec : Prop :=
  ∀ n, (P5176003512458126171.a n : ℤ) = A079977 n

theorem P5176003512458126171.correct : P5176003512458126171.Spec := by
  intro n
  simp only [A079977]

end A079977

/-! ## A079977.P4351371152675356054

`ogf(1/(1-x^2-x^4))`
-/

namespace A079977.P4351371152675356054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 0, -1] n

end

end A079977.P4351371152675356054

namespace A079977

/-- `ogf(1/(1-x^2-x^4))` -/
def P4351371152675356054.Spec : Prop :=
  ∀ n, P4351371152675356054.a n = A079977 n

end A079977

/-! ## A079977.P4484992800113035293

`round(ϕ*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A079977.P4484992800113035293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) : ℝ))

end

end A079977.P4484992800113035293

namespace A079977

/-- `round(ϕ*a(n-2))` -/
def P4484992800113035293.Spec : Prop :=
  ∀ n, P4484992800113035293.a n = A079977 n

end A079977

/-! ## A079977.P10219664161337555758

`A000045(∑[n+1]%(n+2))`
-/

namespace A079977.P10219664161337555758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2))

end

end A079977.P10219664161337555758

namespace A079977

/-- `A000045(∑[n+1]%(n+2))` -/
def P10219664161337555758.Spec : Prop :=
  ∀ n, P10219664161337555758.a n = A079977 n

end A079977

/-! ## A079977.P4369189747146671771

`A103609(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A079977.P4369189747146671771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103609 (n + 2) - a (n - 1)

end

end A079977.P4369189747146671771

namespace A079977

/-- `A103609(n+2)-a(n-1)` -/
def P4369189747146671771.Spec : Prop :=
  ∀ n, P4369189747146671771.a n = A079977 n

end A079977

/-! ## A079977.P5076417490370871905

`A000045(floor((lcm(2, n+1)-n)/2))`
-/

namespace A079977.P5076417490370871905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊((Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ) : ℚ) / 2⌋.toNat

end

end A079977.P5076417490370871905

namespace A079977

/-- `A000045(floor((lcm(2, n+1)-n)/2))` -/
def P5076417490370871905.Spec : Prop :=
  ∀ n, P5076417490370871905.a n = A079977 n

end A079977

/-! ## A079977.P2449497338353846932

`A000045((n+2)*and(1, n+1)/2)`
-/

namespace A079977.P2449497338353846932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.land 1 (n + 1) : ℚ) / 2))).toNat

end

end A079977.P2449497338353846932

namespace A079977

/-- `A000045((n+2)*and(1, n+1)/2)` -/
def P2449497338353846932.Spec : Prop :=
  ∀ n, P2449497338353846932.a n = A079977 n

end A079977

/-! ## A079977.P8704917596635675532

`A000045(lcm(n+2, and(1, n+1))/2)`
-/

namespace A079977.P8704917596635675532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.lcm (n + 2) (Nat.land 1 (n + 1)) : ℚ) / 2)).toNat

end

end A079977.P8704917596635675532

namespace A079977

/-- `A000045(lcm(n+2, and(1, n+1))/2)` -/
def P8704917596635675532.Spec : Prop :=
  ∀ n, P8704917596635675532.a n = A079977 n

end A079977

/-! ## A079977.P12382296190409964874

`A000045(n+2-(n+2)/gcd(2, n))`
-/

namespace A079977.P12382296190409964874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n + 2 : ℚ) - (n + 2 : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A079977.P12382296190409964874

namespace A079977

/-- `A000045(n+2-(n+2)/gcd(2, n))` -/
def P12382296190409964874.Spec : Prop :=
  ∀ n, P12382296190409964874.a n = A079977 n

end A079977

/-! ## A079977.P111387992519527793

`A000045(2-gcd(n+2, ∑[n+1])+n)`
-/

namespace A079977.P111387992519527793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + (n : ℤ)).toNat

end

end A079977.P111387992519527793

namespace A079977

/-- `A000045(2-gcd(n+2, ∑[n+1])+n)` -/
def P111387992519527793.Spec : Prop :=
  ∀ n, P111387992519527793.a n = A079977 n

end A079977

/-! ## A079977.P14596066524850643197

`A000045(∑[1-a(n-1)])-a(n-1)` with `a(0)=1`
-/

namespace A079977.P14596066524850643197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 1)

end

end A079977.P14596066524850643197

namespace A079977

/-- `A000045(∑[1-a(n-1)])-a(n-1)` -/
def P14596066524850643197.Spec : Prop :=
  ∀ n, P14596066524850643197.a n = A079977 n

end A079977

/-! ## A079977.P2693919509961723627

`A000045(n+2-gcd((n+2)², C(n+2, 2)))`
-/

namespace A079977.P2693919509961723627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2 - Nat.gcd ((n + 2) ^ 2) (Nat.choose (n + 2) 2))

end

end A079977.P2693919509961723627

namespace A079977

/-- `A000045(n+2-gcd((n+2)², C(n+2, 2)))` -/
def P2693919509961723627.Spec : Prop :=
  ∀ n, P2693919509961723627.a n = A079977 n

end A079977

/-! ## A079977.P9769369058718213948

`A000045(A027656(n))`
-/

namespace A079977.P9769369058718213948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A027656 n).toNat

end

end A079977.P9769369058718213948

namespace A079977

/-- `A000045(A027656(n))` -/
def P9769369058718213948.Spec : Prop :=
  ∀ n, P9769369058718213948.a n = A079977 n

end A079977

/-! ## A079977.P3946258745272885548

`A212804(A179820(n))`
-/

namespace A079977.P3946258745272885548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A179820 n).toNat

end

end A079977.P3946258745272885548

namespace A079977

/-- `A212804(A179820(n))` -/
def P3946258745272885548.Spec : Prop :=
  ∀ n, P3946258745272885548.a n = A079977 n

end A079977

/-! ## A079977.P5649775471574952263

`A103610(A019427(n+1))`
-/

namespace A079977.P5649775471574952263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A019427 (n + 1)).toNat

end

end A079977.P5649775471574952263

namespace A079977

/-- `A103610(A019427(n+1))` -/
def P5649775471574952263.Spec : Prop :=
  ∀ n, P5649775471574952263.a n = A079977 n

end A079977

/-! ## A079977.P10548304334432483841

`A103609(A330602(n+1))`
-/

namespace A079977.P10548304334432483841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A330602 (n + 1)).toNat

end

end A079977.P10548304334432483841

namespace A079977

/-- `A103609(A330602(n+1))` -/
def P10548304334432483841.Spec : Prop :=
  ∀ n, P10548304334432483841.a n = A079977 n

end A079977

/-! ## A079977.P10170237578522976954

`A000045(A142150(n+2))`
-/

namespace A079977.P10170237578522976954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A142150 (n + 2)).toNat

end

end A079977.P10170237578522976954

namespace A079977

/-- `A000045(A142150(n+2))` -/
def P10170237578522976954.Spec : Prop :=
  ∀ n, P10170237578522976954.a n = A079977 n

end A079977

/-! ## A079977.P7172727216122390871

`A212804(A158416(n+2))`
-/

namespace A079977.P7172727216122390871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A158416 (n + 2)).toNat

end

end A079977.P7172727216122390871

namespace A079977

/-- `A212804(A158416(n+2))` -/
def P7172727216122390871.Spec : Prop :=
  ∀ n, P7172727216122390871.a n = A079977 n

end A079977

/-! ## A079977.P14091140009842408008

`A000045(∑[A001057(n+1)])`
-/

namespace A079977.P14091140009842408008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079977.P14091140009842408008

namespace A079977

/-- `A000045(∑[A001057(n+1)])` -/
def P14091140009842408008.Spec : Prop :=
  ∀ n, P14091140009842408008.a n = A079977 n

end A079977

/-! ## A079977.P14992788907426984512

`A000045(A133622(n+2)-1)`
-/

namespace A079977.P14992788907426984512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A133622 (n + 2) - 1).toNat

end

end A079977.P14992788907426984512

namespace A079977

/-- `A000045(A133622(n+2)-1)` -/
def P14992788907426984512.Spec : Prop :=
  ∀ n, P14992788907426984512.a n = A079977 n

end A079977

/-!
# A079978: Characteristic function of multiples of three.

The programs for A079978, the canonical program `A079978.P10382542118278163374` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079978 has offset 0).

The definition of A079978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079978.P10382542118278163374

`a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079978

/-- `a(n-3)` -/
def P10382542118278163374.Spec : Prop :=
  ∀ n, (P10382542118278163374.a n : ℤ) = A079978 n

theorem P10382542118278163374.correct : P10382542118278163374.Spec := by
  intro n
  simp only [A079978]

end A079978

/-!
# A079979: Characteristic function of multiples of six.

The programs for A079979, the canonical program `A079979.P15116196827675478457` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079979 has offset 0).

The definition of A079979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079979.P15116196827675478457

`a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079979

/-- `a(n-6)` -/
def P15116196827675478457.Spec : Prop :=
  ∀ n, (P15116196827675478457.a n : ℤ) = A079979 n

theorem P15116196827675478457.correct : P15116196827675478457.Spec := by
  intro n
  simp only [A079979]

end A079979

/-!
# A079980: Number of permutations of length 2n satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..2n, with k=3, r=3, I={-2,0,1,2}. There is no one such permutation of length 2n+1.

The programs for A079980, the canonical program `A079980.P7549614995282751113` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079980 has offset 0).

The definition of A079980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079980.P14423190337426351793

`A079981(2*n)`
-/

namespace A079980.P14423190337426351793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 (2 * n)

end

end A079980.P14423190337426351793

namespace A079980

/-- `A079981(2*n)` -/
def P14423190337426351793.Spec : Prop :=
  ∀ n, P14423190337426351793.a n = A079980 n

end A079980

/-! ## A079980.P7549614995282751113

`A000930(n)*A182097(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079980

/-- `A000930(n)*A182097(n)` -/
def P7549614995282751113.Spec : Prop :=
  ∀ n, P7549614995282751113.a n = A079980 n

theorem P7549614995282751113.correct : P7549614995282751113.Spec := by
  intro n
  simp only [A079980]

end A079980

/-! ## A079980.P3233462212179099727

`∑[A078027(n)]*A000930(n)`
-/

namespace A079980.P3233462212179099727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000930 n

end

end A079980.P3233462212179099727

namespace A079980

/-- `∑[A078027(n)]*A000930(n)` -/
def P3233462212179099727.Spec : Prop :=
  ∀ n, P3233462212179099727.a n = A079980 n

end A079980

/-! ## A079980.P17399601587967520634

`Δ[A023434(n)]*A000930(n)`
-/

namespace A079980.P17399601587967520634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000930 n

end

end A079980.P17399601587967520634

namespace A079980

/-- `Δ[A023434(n)]*A000930(n)` -/
def P17399601587967520634.Spec : Prop :=
  ∀ n, P17399601587967520634.a n = A079980 n

end A079980

/-! ## A079980.P15480684475936511502

`(A052954(n)-1)*A000930(n)`
-/

namespace A079980.P15480684475936511502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052954 n - 1) * A000930 n

end

end A079980.P15480684475936511502

namespace A079980

/-- `(A052954(n)-1)*A000930(n)` -/
def P15480684475936511502.Spec : Prop :=
  ∀ n, P15480684475936511502.a n = A079980 n

end A079980

/-! ## A079980.P14986889428893447493

`A000930(n)*A000931(n+3)`
-/

namespace A079980.P14986889428893447493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A000931 (n + 3)

end

end A079980.P14986889428893447493

namespace A079980

/-- `A000930(n)*A000931(n+3)` -/
def P14986889428893447493.Spec : Prop :=
  ∀ n, P14986889428893447493.a n = A079980 n

end A079980

/-! ## A079980.P10970161027153228729

`A000930(n)*A078027(n+5)`
-/

namespace A079980.P10970161027153228729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A078027 (n + 5)

end

end A079980.P10970161027153228729

namespace A079980

/-- `A000930(n)*A078027(n+5)` -/
def P10970161027153228729.Spec : Prop :=
  ∀ n, P10970161027153228729.a n = A079980 n

end A079980

/-! ## A079980.P13224328976945519722

`(A023434(n+1)-A023434(n))*A000930(n)`
-/

namespace A079980.P13224328976945519722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023434 (n + 1) - A023434 n) * A000930 n

end

end A079980.P13224328976945519722

namespace A079980

/-- `(A023434(n+1)-A023434(n))*A000930(n)` -/
def P13224328976945519722.Spec : Prop :=
  ∀ n, P13224328976945519722.a n = A079980 n

end A079980

/-!
# A079981: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-2,0,1,2}.

The programs for A079981, the canonical program `A079981.P551135143756518723` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079981 has offset 0).

The definition of A079981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079981.P551135143756518723

`A079980(A057979(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079981

/-- `A079980(A057979(n+1))` -/
def P551135143756518723.Spec : Prop :=
  ∀ n, P551135143756518723.a n = A079981 n

theorem P551135143756518723.correct : P551135143756518723.Spec := by
  intro n
  simp only [A079981]

end A079981

/-! ## A079981.P14574684285770632116

`A079980(n-A029578(n))`
-/

namespace A079981.P14574684285770632116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 ((n : ℤ) - A029578 n).toNat

end

end A079981.P14574684285770632116

namespace A079981

/-- `A079980(n-A029578(n))` -/
def P14574684285770632116.Spec : Prop :=
  ∀ n, P14574684285770632116.a n = A079981 n

end A079981

/-! ## A079981.P786862210441631264

`A079980(gcd(n, A001057(n)))`
-/

namespace A079981.P786862210441631264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (Int.gcd (n : ℤ) (A001057 n))

end

end A079981.P786862210441631264

namespace A079981

/-- `A079980(gcd(n, A001057(n)))` -/
def P786862210441631264.Spec : Prop :=
  ∀ n, P786862210441631264.a n = A079981 n

end A079981

/-! ## A079981.P4014586808270737931

`A079980(1-A029579(n)+n)`
-/

namespace A079981.P4014586808270737931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (1 - A029579 n + (n : ℤ)).toNat

end

end A079981.P4014586808270737931

namespace A079981

/-- `A079980(1-A029579(n)+n)` -/
def P4014586808270737931.Spec : Prop :=
  ∀ n, P4014586808270737931.a n = A079981 n

end A079981

/-! ## A079981.P5724696651621026492

`A079980(1-(A029579(n)-n))`
-/

namespace A079981.P5724696651621026492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (1 - (A029579 n - (n : ℤ))).toNat

end

end A079981.P5724696651621026492

namespace A079981

/-- `A079980(1-(A029579(n)-n))` -/
def P5724696651621026492.Spec : Prop :=
  ∀ n, P5724696651621026492.a n = A079981 n

end A079981

/-! ## A079981.P1203743647130425490

`A079980(A028242(Δ[floor((n+1)/2)²]))`
-/

namespace A079981.P1203743647130425490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (A028242 (f1 (n + 1) - f1 n).toNat).toNat

end

end A079981.P1203743647130425490

namespace A079981

/-- `A079980(A028242(Δ[floor((n+1)/2)²]))` -/
def P1203743647130425490.Spec : Prop :=
  ∀ n, P1203743647130425490.a n = A079981 n

end A079981

/-! ## A079981.P9225140354091578187

`A079980(gcd(A000290(n), A004525(n)))`
-/

namespace A079981.P9225140354091578187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (Int.gcd (A000290 n) (A004525 n))

end

end A079981.P9225140354091578187

namespace A079981

/-- `A079980(gcd(A000290(n), A004525(n)))` -/
def P9225140354091578187.Spec : Prop :=
  ∀ n, P9225140354091578187.a n = A079981 n

end A079981

/-! ## A079981.P12162580419478630611

`A079980(A004525(and(n, A080924(n))))`
-/

namespace A079981.P12162580419478630611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079980 (A004525 (Int.land (n : ℤ) (A080924 n)).toNat).toNat

end

end A079981.P12162580419478630611

namespace A079981

/-- `A079980(A004525(and(n, A080924(n))))` -/
def P12162580419478630611.Spec : Prop :=
  ∀ n, P12162580419478630611.a n = A079981 n

end A079981

/-!
# A079983: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-2,1,2}.

The programs for A079983, there is no canonical definition to state claims against.
-/

/-! ## A079983.P11392700990580071252

`A259899(abs(3-A000682(n+1)))`
-/

namespace A079983.P11392700990580071252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 |3 - A000682 (n + 1)|.toNat

end

end A079983.P11392700990580071252

/-! ## A079983.P2909551714613375934

`A356841(a(n-1)+n)-A049419(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A079983.P2909551714613375934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A356841 (a (n - 1) + (n : ℤ)).toNat - A049419 (n + 1)

end

end A079983.P2909551714613375934

/-! ## A079983.P6033899755707461433

`A000196(A122367(n))-A230980(n)`
-/

namespace A079983.P6033899755707461433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A122367 n).toNat - A230980 n

end

end A079983.P6033899755707461433

/-! ## A079983.P13206276142218574171

`A000194(A271896(n))-A230980(n)`
-/

namespace A079983.P13206276142218574171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A271896 n).toNat - A230980 n

end

end A079983.P13206276142218574171

/-! ## A079983.P8709246929966474352

`A265436(A025047(n+1))`
-/

namespace A079983.P8709246929966474352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265436 (A025047 (n + 1)).toNat

end

end A079983.P8709246929966474352

/-!
# A079984: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-1,1,2}.

The programs for A079984, there is no canonical definition to state claims against.
-/

/-! ## A079984.P14410318023090599138

`A010846(∏[A327718(n)])`
-/

namespace A079984.P14410318023090599138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079984.P14410318023090599138

/-! ## A079984.P16521138730015667016

`A109401(2*(A076968(n+1)-n))`
-/

namespace A079984.P16521138730015667016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (2 * (A076968 (n + 1) - (n : ℤ))).toNat

end

end A079984.P16521138730015667016

/-!
# A079986: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-2,0,2}.

The programs for A079986, the canonical program `A079986.P17315729591086980002` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079986 has offset 0).

The definition of A079986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079986.P17315729591086980002

`Δ[A008937(ceil(n/2))]²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079986

/-- `Δ[A008937(ceil(n/2))]²` -/
def P17315729591086980002.Spec : Prop :=
  ∀ n, P17315729591086980002.a n = A079986 n

theorem P17315729591086980002.correct : P17315729591086980002.Spec := by
  intro n
  simp only [A079986]

end A079986

/-! ## A079986.P3279280809552650776

`Δ[A107239(n+1-floor(n/2))]`
-/

namespace A079986.P3279280809552650776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 ((n + 1 : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079986.P3279280809552650776

namespace A079986

/-- `Δ[A107239(n+1-floor(n/2))]` -/
def P3279280809552650776.Spec : Prop :=
  ∀ n, P3279280809552650776.a n = A079986 n

end A079986

/-! ## A079986.P944264437975085133

`((n+1)%2*A213816(n+1))²`
-/

namespace A079986.P944264437975085133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) % 2 : ℕ) : ℤ) * A213816 (n + 1)) ^ 2

end

end A079986.P944264437975085133

namespace A079986

/-- `((n+1)%2*A213816(n+1))²` -/
def P944264437975085133.Spec : Prop :=
  ∀ n, P944264437975085133.a n = A079986 n

end A079986

/-! ## A079986.P11024920955641676526

`A085697(A133622(n+2))`
-/

namespace A079986.P11024920955641676526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085697 (A133622 (n + 2)).toNat

end

end A079986.P11024920955641676526

namespace A079986

/-- `A085697(A133622(n+2))` -/
def P11024920955641676526.Spec : Prop :=
  ∀ n, P11024920955641676526.a n = A079986 n

end A079986

/-! ## A079986.P4898538738014620351

`A000073(A027656(n)+1)²`
-/

namespace A079986.P4898538738014620351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A027656 n + 1).toNat ^ 2

end

end A079986.P4898538738014620351

namespace A079986

/-- `A000073(A027656(n)+1)²` -/
def P4898538738014620351.Spec : Prop :=
  ∀ n, P4898538738014620351.a n = A079986 n

end A079986

/-! ## A079986.P5673127725713272035

`A000073(A057979(n+5))²`
-/

namespace A079986.P5673127725713272035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A057979 (n + 5)).toNat ^ 2

end

end A079986.P5673127725713272035

namespace A079986

/-- `A000073(A057979(n+5))²` -/
def P5673127725713272035.Spec : Prop :=
  ∀ n, P5673127725713272035.a n = A079986 n

end A079986

/-! ## A079986.P7287280053205502740

`A000073(∑[A001057(n+3)])²`
-/

namespace A079986.P7287280053205502740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A079986.P7287280053205502740

namespace A079986

/-- `A000073(∑[A001057(n+3)])²` -/
def P7287280053205502740.Spec : Prop :=
  ∀ n, P7287280053205502740.a n = A079986 n

end A079986

/-! ## A079986.P16110330630834100385

`A000073(A027656(n)+1)^A020639(n+2)`
-/

namespace A079986.P16110330630834100385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (A027656 n + 1).toNat : ℚ) ^ (A020639 (n + 2) : ℤ)

end

end A079986.P16110330630834100385

namespace A079986

/-- `A000073(A027656(n)+1)^A020639(n+2)` -/
def P16110330630834100385.Spec : Prop :=
  ∀ n, P16110330630834100385.a n = (A079986 n : ℚ)

end A079986

/-!
# A079989: Number of permutations satisfying -k <= p(i) - i <= r and p(i) - i not in I, i=1..n, with k=3, r=3, I={1,2}.

The programs for A079989, there is no canonical definition to state claims against.
-/

/-! ## A079989.P740662379492223104

`A161957(A098482(n))`
-/

namespace A079989.P740662379492223104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161957 (A098482 n).toNat

end

end A079989.P740662379492223104

/-! ## A079989.P2084057864601684527

`A175679(A068032(n+1))`
-/

namespace A079989.P2084057864601684527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175679 (A068032 (n + 1)).toNat

end

end A079989.P2084057864601684527

/-! ## A079989.P4966668783775195181

`A151991(A293411(n)-n)`
-/

namespace A079989.P4966668783775195181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151991 (A293411 n - (n : ℤ)).toNat

end

end A079989.P4966668783775195181

/-! ## A079989.P17599492067527238334

`xor(A007909(n), A063725(A180717(n)))`
-/

namespace A079989.P17599492067527238334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007909 n) (A063725 (A180717 n).toNat)

end

end A079989.P17599492067527238334

/-!
# A079991: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-1,1}.

The programs for A079991, there is no canonical definition to state claims against.
-/

/-! ## A079991.P18153286498711605765

`A345917(A365243(n))+A136444(n)`
-/

namespace A079991.P18153286498711605765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (A365243 n).toNat + A136444 n

end

end A079991.P18153286498711605765

/-! ## A079991.P1893244694386535425

`A011782(n)-A336469(A047154(n+2))`
-/

namespace A079991.P1893244694386535425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A336469 (A047154 (n + 2)).toNat

end

end A079991.P1893244694386535425

/-!
# A079995: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={2}.

The programs for A079995, there is no canonical definition to state claims against.
-/

/-! ## A079995.P12019826654891231198

`A289831(A325668(2*n+1)+n)`
-/

namespace A079995.P12019826654891231198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A325668 (2 * n + 1) + (n : ℤ)).toNat

end

end A079995.P12019826654891231198

/-! ## A079995.P2367700200520771730

`A237883(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A079995.P2367700200520771730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A237883 (a (n - 1) + 3).toNat

end

end A079995.P2367700200520771730

/-! ## A079995.P16129539352138757844

`A134003(A239075(n))`
-/

namespace A079995.P16129539352138757844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134003 (A239075 n).toNat

end

end A079995.P16129539352138757844

/-!
# A079996: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={1}.

The programs for A079996, there is no canonical definition to state claims against.
-/

/-! ## A079996.P1580130916076316041

`A051742(∑[A026558(n)]+1)-n`
-/

namespace A079996.P1580130916076316041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - (n : ℤ)

end

end A079996.P1580130916076316041

/-! ## A079996.P4736413593318162873

`abs(A002473(n+1)-A090168(A126874(n+5)))`
-/

namespace A079996.P4736413593318162873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002473 (n + 1) - A090168 (A126874 (n + 5)).toNat|

end

end A079996.P4736413593318162873

/-!
# A079997: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={0}.

The programs for A079997, there is no canonical definition to state claims against.
-/

/-! ## A079997.P6426664148908999813

`A259776(∑[n+4]+2)`
-/

namespace A079997.P6426664148908999813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A079997.P6426664148908999813

/-! ## A079997.P13468582206269990112

`A188966(A152947(n+1)+A000007(n))`
-/

namespace A079997.P13468582206269990112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (A152947 (n + 1) + A000007 n).toNat

end

end A079997.P13468582206269990112

/-! ## A079997.P11384010631854315527

`A188966(A152947(n+1)+A000038(n))`
-/

namespace A079997.P11384010631854315527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (A152947 (n + 1) + A000038 n).toNat

end

end A079997.P11384010631854315527

/-! ## A079997.P11019494100001288689

`A188966(A152947(n+1)+A151909(n))`
-/

namespace A079997.P11019494100001288689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (A152947 (n + 1) + A151909 n).toNat

end

end A079997.P11019494100001288689

/-! ## A079997.P7424371581347876021

`A188966(A000124(n)+abs(1-n)-n)`
-/

namespace A079997.P7424371581347876021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188966 (A000124 n + (|1 - (n : ℤ)| - (n : ℤ))).toNat

end

end A079997.P7424371581347876021

/-!
# A079998: The characteristic function of the multiples of five.

The programs for A079998, the canonical program `A079998.P5984370107414098605` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079998 has offset 0).

The definition of A079998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079998.P5984370107414098605

`a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079998

/-- `a(n-5)` -/
def P5984370107414098605.Spec : Prop :=
  ∀ n, (P5984370107414098605.a n : ℤ) = A079998 n

theorem P5984370107414098605.correct : P5984370107414098605.Spec := by
  intro n
  simp only [A079998]

end A079998

/-!
# A079999: Number of permutations (p(1),p(2),...,p(n)) of (1,2,...,n) such that p(i)-i is in {-2,-1,3} for all i=1,...,n.

The programs for A079999, the canonical program `A079999.P16946339001785581743` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079999 has offset 0).

The definition of A079999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079999.P16946339001785581743

`a(n-3)+a(n-4)+2*a(n-5)+a(n-6)-a(n-8)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079999

/-- `a(n-3)+a(n-4)+2*a(n-5)+a(n-6)-a(n-8)-a(n-10)` -/
def P16946339001785581743.Spec : Prop :=
  ∀ n, P16946339001785581743.a n = A079999 n

theorem P16946339001785581743.correct : P16946339001785581743.Spec := by
  intro n
  simp only [A079999]

end A079999

