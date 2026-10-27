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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A309201: a(n) is the smallest divisor of the Motzkin number A001006(n) not already in the sequence.

The programs for A309201, there is no canonical definition to state claims against.
-/

/-! ## A309201.P11044726047099670501

`A345941(record[sqrt(A269736(n))])`
-/

namespace A309201.P11044726047099670501
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A269736 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A309201.P11044726047099670501

/-! ## A309201.P3550927580706752968

`A103865(∑[A018242(n+1)²])`
-/

namespace A309201.P3550927580706752968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018242 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103865 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309201.P3550927580706752968

/-! ## A309201.P5527720842344529800

`A338338(∑[A359907(ceil(2^(n-1)))])`
-/

namespace A309201.P5527720842344529800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359907 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309201.P5527720842344529800

/-!
# A309202: Peter Munn showed in A111273 that if A111273(n)=m then if m is odd, n <= m, and if m is even, n <= 2*m-1; a(n) is either m-n or 2*m-1-n in the two cases.

The programs for A309202, there is no canonical definition to state claims against.
-/

/-! ## A309202.P14871494129745704037

`lcm(2, 1-A111273(n+1))-n`
-/

namespace A309202.P14871494129745704037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - A111273 (n + 1)) : ℤ) - (n : ℤ)

end

end A309202.P14871494129745704037

/-! ## A309202.P3784896241983636885

`A114753(A111273(n+1))-(n+1)`
-/

namespace A309202.P3784896241983636885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (A111273 (n + 1)).toNat - (n + 1 : ℤ)

end

end A309202.P3784896241983636885

/-! ## A309202.P10345531043883520230

`and(A016789(n), A018486(A083346(n+1)))`
-/

namespace A309202.P10345531043883520230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016789 n) (A018486 (A083346 (n + 1)).toNat)

end

end A309202.P10345531043883520230

/-! ## A309202.P4525428893882075058

`and(A017413(n), A088442(A001654(n)))`
-/

namespace A309202.P4525428893882075058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017413 n) (A088442 (A001654 n).toNat)

end

end A309202.P4525428893882075058

/-! ## A309202.P2162375706938659110

`and(A016789(n), A109689(A200514(n)))`
-/

namespace A309202.P2162375706938659110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016789 n) (A109689 (A200514 n).toNat)

end

end A309202.P2162375706938659110

/-!
# A309203: Numbers k such that A111273(k-1) = k.

The programs for A309203, there is no canonical definition to state claims against.
-/

/-! ## A309203.P1946385882811458150

`eq[n, A113658(n+1)]+1`
-/

namespace A309203.P1946385882811458150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309203.P1946385882811458150

/-! ## A309203.P18426731340052833890

`eq[n+2, A111273(n+1)]+2`
-/

namespace A309203.P18426731340052833890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A309203.P18426731340052833890

/-! ## A309203.P3632053187913141300

`A004442(eq[n, A113658(n+1)])`
-/

namespace A309203.P3632053187913141300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309203.P3632053187913141300

/-! ## A309203.P5163440589499243181

`eq[n, A113658(A028310(n))+1]`
-/

namespace A309203.P5163440589499243181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309203.P5163440589499243181

/-! ## A309203.P10722230741934325831

`A079097(eq[n, A113658(n+1)])`
-/

namespace A309203.P10722230741934325831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309203.P10722230741934325831

/-! ## A309203.P11825943810218675279

`A109613(eq[n, A113658(n+1)])`
-/

namespace A309203.P11825943810218675279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309203.P11825943810218675279

/-! ## A309203.P15901476090073660063

`A111273(eq[n, A113658(n+1)])`
-/

namespace A309203.P15901476090073660063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309203.P15901476090073660063

/-! ## A309203.P11426850817934496527

`A131738(eq[n, A113658(n+1)])`
-/

namespace A309203.P11426850817934496527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309203.P11426850817934496527

/-! ## A309203.P10766181105019316017

`A153152(eq[n, A113658(n+1)])`
-/

namespace A309203.P10766181105019316017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309203.P10766181105019316017

/-!
# A309205: Denominators of coefficients of odd powers of x in expansion of f(x) = x cos (x cos (x cos( ... .

The programs for A309205, there is no canonical definition to state claims against.
-/

/-! ## A309205.P5930019603503511213

`(2*n)!/A309206(n)`
-/

namespace A309205.P5930019603503511213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A309206 n : ℚ)

end

end A309205.P5930019603503511213

/-! ## A309205.P12351406975173030045

`record[A133942(n)]/A309206(n)`
-/

namespace A309205.P12351406975173030045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A309206 n : ℚ)

end

end A309205.P12351406975173030045

/-! ## A309205.P8590517664759283507

`A000142(2*n)/A309206(n)`
-/

namespace A309205.P8590517664759283507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) / (A309206 n : ℚ)

end

end A309205.P8590517664759283507

/-! ## A309205.P4543135514965278198

`A133942(2*n)/A309206(n)`
-/

namespace A309205.P4543135514965278198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133942 (2 * n) : ℚ) / (A309206 n : ℚ)

end

end A309205.P4543135514965278198

/-! ## A309205.P6759774389371334398

`A005843(n)!/gcd(A001818(n), A143601(n))`
-/

namespace A309205.P6759774389371334398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005843 n).toNat : ℚ) / (Int.gcd (A001818 n) (A143601 n) : ℚ)

end

end A309205.P6759774389371334398

/-!
# A309206: a(n) = (2*n)!/A309205(n).

The programs for A309206, there is no canonical definition to state claims against.
-/

/-! ## A309206.P15346822377039378382

`(2*n)!/A309205(n+1)`
-/

namespace A309206.P15346822377039378382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (A309205 (n + 1) : ℚ)

end

end A309206.P15346822377039378382

/-! ## A309206.P10498530590715259712

`A000142(2*n)/A309205(n+1)`
-/

namespace A309206.P10498530590715259712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n) : ℚ) / (A309205 (n + 1) : ℚ)

end

end A309206.P10498530590715259712

/-! ## A309206.P16460185110460718669

`gcd(A001818(n), A143601(n))`
-/

namespace A309206.P16460185110460718669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001818 n) (A143601 n)

end

end A309206.P16460185110460718669

/-! ## A309206.P11850300180582003339

`gcd((2*n+1)!, A058014(A005843(n)))`
-/

namespace A309206.P11850300180582003339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (2 * n + 1) : ℤ) (A058014 (A005843 n).toNat)

end

end A309206.P11850300180582003339

/-!
# A309212: Nearest integer to (4/3)^n.

The programs for A309212, the canonical program `A309212.P14676656329670371086` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309212 has offset 0).

The definition of A309212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309212.P14676656329670371086

`round((3/4)^A001489(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A309212

/-- `round((3/4)^A001489(n))` -/
def P14676656329670371086.Spec : Prop :=
  ∀ n, P14676656329670371086.a n = A309212 n

theorem P14676656329670371086.correct : P14676656329670371086.Spec := by
  intro n
  simp only [A309212]

end A309212

/-! ## A309212.P4017667381642829433

`round(Δ[a(n-1)+a(n-1)/3])` with `a(0)=3`
-/

namespace A309212.P4017667381642829433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A309212.P4017667381642829433

namespace A309212

/-- `round(Δ[a(n-1)+a(n-1)/3])` -/
def P4017667381642829433.Spec : Prop :=
  ∀ n, P4017667381642829433.a n = A309212 n

end A309212

/-! ## A309212.P14837666800551669506

`round(sqrt(A064628(2*n)))`
-/

namespace A309212.P14837666800551669506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A064628 (2 * n) : ℝ))

end

end A309212.P14837666800551669506

namespace A309212

/-- `round(sqrt(A064628(2*n)))` -/
def P14837666800551669506.Spec : Prop :=
  ∀ n, P14837666800551669506.a n = A309212 n

end A309212

/-! ## A309212.P9843121548489208915

`round(Δ[a(n-1)²/a(n-2)])` with `a(0)=3, a(1)=4`
-/

namespace A309212.P9843121548489208915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A309212.P9843121548489208915

namespace A309212

/-- `round(Δ[a(n-1)²/a(n-2)])` -/
def P9843121548489208915.Spec : Prop :=
  ∀ n, P9843121548489208915.a n = A309212 n

end A309212

/-! ## A309212.P9852737657849595780

`round(A000079(n)^(2-log2(3)))`
-/

namespace A309212.P9852737657849595780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ (2 - Real.logb 2 (3 : ℝ)))

end

end A309212.P9852737657849595780

namespace A309212

/-- `round(A000079(n)^(2-log2(3)))` -/
def P9852737657849595780.Spec : Prop :=
  ∀ n, P9852737657849595780.a n = A309212 n

end A309212

/-! ## A309212.P14124773967219556460

`round(A000079(n)/A000244(n)*A000079(n))`
-/

namespace A309212.P14124773967219556460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℚ) / (A000244 n : ℚ) * (A000079 n : ℚ))

end

end A309212.P14124773967219556460

namespace A309212

/-- `round(A000079(n)/A000244(n)*A000079(n))` -/
def P14124773967219556460.Spec : Prop :=
  ∀ n, P14124773967219556460.a n = A309212 n

end A309212

/-! ## A309212.P17357531416433354885

`round(∑[A011782(n)²/A000244(n)])`
-/

namespace A309212.P17357531416433354885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n ^ 2 : ℚ) / (A000244 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309212.P17357531416433354885

namespace A309212

/-- `round(∑[A011782(n)²/A000244(n)])` -/
def P17357531416433354885.Spec : Prop :=
  ∀ n, P17357531416433354885.a n = A309212 n

end A309212

/-! ## A309212.P13834468666333653057

`round(4^n/3^n)`
-/

namespace A309212.P13834468666333653057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / (3 ^ n : ℚ))

end

end A309212.P13834468666333653057

namespace A309212

/-- `round(4^n/3^n)` -/
def P13834468666333653057.Spec : Prop :=
  ∀ n, P13834468666333653057.a n = A309212 n

end A309212

/-! ## A309212.P4819367017467061463

`round(A005061(n)/A000244(n))+1`
-/

namespace A309212.P4819367017467061463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005061 n : ℚ) / (A000244 n : ℚ)) + 1

end

end A309212.P4819367017467061463

namespace A309212

/-- `round(A005061(n)/A000244(n))+1` -/
def P4819367017467061463.Spec : Prop :=
  ∀ n, P4819367017467061463.a n = A309212 n

end A309212

/-!
# A309213: A007318 + A065941 - A049310.

The programs for A309213, the canonical program `A309213.P7560310409620454455` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309213 has offset 0).

The definition of A309213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309213.P7961557359239440319

`A007318(n)+A065941(n)-A049310(n)`
-/

namespace A309213.P7961557359239440319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A065941 n - A049310 n)

end

end A309213.P7961557359239440319

namespace A309213

/-- `A007318(n)+A065941(n)-A049310(n)` -/
def P7961557359239440319.Spec : Prop :=
  ∀ n, P7961557359239440319.a n = A309213 n

theorem P7961557359239440319.correct : P7961557359239440319.Spec := by
  intro n
  simp only [A309213, Nat.add_sub_cancel, A309213.P7961557359239440319.a, A309213.P7560310409620454455.a, A007318, A007318.P11755526479805562006.a, A049310, A049310.P1662014320520452531.a, A065941, A065941.P15138820981250632951.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P3183119596903847201.a, A046854, A046854.P6321065027790251998.a, A117568, A117568.P10505874102500913440.a, A131374, A131374.P1343424990653634680.a, A025581, A025581.P16112744757063613497.a, A117576, A117576.P15788069879778431007.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A309213

/-! ## A309213.P7560310409620454455

`A131376(n)+A168561(n)-A049310(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309213

/-- `A131376(n)+A168561(n)-A049310(n)` -/
def P7560310409620454455.Spec : Prop :=
  ∀ n, P7560310409620454455.a n = A309213 n

theorem P7560310409620454455.correct : P7560310409620454455.Spec := by
  intro n
  simp only [A309213]

end A309213

/-! ## A309213.P13782197736995563205

`A065941(n)+abs(A049310(n)-A130595(n))`
-/

namespace A309213.P13782197736995563205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + |A049310 n - A130595 n|

end

end A309213.P13782197736995563205

namespace A309213

/-- `A065941(n)+abs(A049310(n)-A130595(n))` -/
def P13782197736995563205.Spec : Prop :=
  ∀ n, P13782197736995563205.a n = A309213 n

end A309213

/-! ## A309213.P1915418795597786060

`sqrt(A008459(n))+A065941(n)-A049310(n)`
-/

namespace A309213.P1915418795597786060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) + (A065941 n - A049310 n : ℝ)

end

end A309213.P1915418795597786060

namespace A309213

/-- `sqrt(A008459(n))+A065941(n)-A049310(n)` -/
def P1915418795597786060.Spec : Prop :=
  ∀ n, P1915418795597786060.a n = (A309213 n : ℝ)

end A309213

/-! ## A309213.P5672842864479576147

`A065941(n)-A049310(n)+A014473(n)+1`
-/

namespace A309213.P5672842864479576147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n - A049310 n + (A014473 n + 1)

end

end A309213.P5672842864479576147

namespace A309213

/-- `A065941(n)-A049310(n)+A014473(n)+1` -/
def P5672842864479576147.Spec : Prop :=
  ∀ n, P5672842864479576147.a n = A309213 n

theorem P5672842864479576147.correct : P5672842864479576147.Spec := by
  intro n
  simp only [A309213, Nat.add_sub_cancel, A309213.P5672842864479576147.a, A309213.P7560310409620454455.a, A014473, A014473.P9301799580602651200.a, A049310, A049310.P1662014320520452531.a, A065941, A065941.P15138820981250632951.a, A131376, A131376.P4997632316983606857.a, A168561, A168561.P3183119596903847201.a, A007318, A007318.P11755526479805562006.a, A046854, A046854.P6321065027790251998.a, A117568, A117568.P10505874102500913440.a, A131374, A131374.P1343424990653634680.a, A025581, A025581.P16112744757063613497.a, A117576, A117576.P15788069879778431007.a, A131373, A131373.P5409400150504785590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A309213

/-! ## A309213.P10451627115525483572

`A134058(A028310(n))/2+A065941(n)-A049310(n)`
-/

namespace A309213.P10451627115525483572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134058 (A028310 n).toNat : ℚ) / 2 + (A065941 n - A049310 n : ℚ)

end

end A309213.P10451627115525483572

namespace A309213

/-- `A134058(A028310(n))/2+A065941(n)-A049310(n)` -/
def P10451627115525483572.Spec : Prop :=
  ∀ n, P10451627115525483572.a n = (A309213 n : ℚ)

end A309213

/-! ## A309213.P8313061145790954053

`A028310(A008459(n)^(1/2)+A065941(n)-A049310(n))`
-/

namespace A309213.P8313061145790954053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ) + (A065941 n - A049310 n : ℝ))).toNat

end

end A309213.P8313061145790954053

namespace A309213

/-- `A028310(A008459(n)^(1/2)+A065941(n)-A049310(n))` -/
def P8313061145790954053.Spec : Prop :=
  ∀ n, P8313061145790954053.a n = A309213 n

end A309213

/-! ## A309213.P11649270444599658296

`A065941(n)+A032742(A124927(n))-A049310(n)`
-/

namespace A309213.P11649270444599658296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n + (A032742 (A124927 n).toNat - A049310 n)

end

end A309213.P11649270444599658296

namespace A309213

/-- `A065941(n)+A032742(A124927(n))-A049310(n)` -/
def P11649270444599658296.Spec : Prop :=
  ∀ n, P11649270444599658296.a n = A309213 n

end A309213

/-!
# A309214: a(0)=0; thereafter a(n) = a(n-1)+n if a(n-1) even, otherwise a(n) = a(n-1)-n.

The programs for A309214, the canonical program `A309214.P16597033415593673432` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309214 has offset 0).

The definition of A309214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309214.P16597033415593673432

`a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=-4, a(4)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A309214

/-- `a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P16597033415593673432.Spec : Prop :=
  ∀ n, P16597033415593673432.a n = A309214 n

theorem P16597033415593673432.correct : P16597033415593673432.Spec := by
  intro n
  simp only [A309214]

end A309214

/-! ## A309214.P1034289257206191541

`∑[n*(1-and(2, n))]`
-/

namespace A309214.P1034289257206191541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (Nat.land 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309214.P1034289257206191541

namespace A309214

/-- `∑[n*(1-and(2, n))]` -/
def P1034289257206191541.Spec : Prop :=
  ∀ n, P1034289257206191541.a n = A309214 n

end A309214

/-! ## A309214.P17677290188608225268

`∑[n/(1-and(2, n))]`
-/

namespace A309214.P17677290188608225268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309214.P17677290188608225268

namespace A309214

/-- `∑[n/(1-and(2, n))]` -/
def P17677290188608225268.Spec : Prop :=
  ∀ n, P17677290188608225268.a n = (A309214 n : ℚ)

end A309214

/-! ## A309214.P4173857234301329256

`∑[n*(-1)^floor(n/2)]`
-/

namespace A309214.P4173857234301329256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309214.P4173857234301329256

namespace A309214

/-- `∑[n*(-1)^floor(n/2)]` -/
def P4173857234301329256.Spec : Prop :=
  ∀ n, P4173857234301329256.a n = (A309214 n : ℚ)

end A309214

/-! ## A309214.P14982742233270517022

`a(n-1)+n*(-1)^a(n-1)` with `a(0)=0`
-/

namespace A309214.P14982742233270517022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℝ) * (-1 : ℝ) ^ (a (n - 1))

end

end A309214.P14982742233270517022

namespace A309214

/-- `a(n-1)+n*(-1)^a(n-1)` -/
def P14982742233270517022.Spec : Prop :=
  ∀ n, P14982742233270517022.a n = (A309214 n : ℝ)

end A309214

/-! ## A309214.P13349422700088407769

`a(n-1)+n/(-1)^a(n-1)` with `a(0)=0`
-/

namespace A309214.P13349422700088407769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A309214.P13349422700088407769

namespace A309214

/-- `a(n-1)+n/(-1)^a(n-1)` -/
def P13349422700088407769.Spec : Prop :=
  ∀ n, P13349422700088407769.a n = (A309214 n : ℝ)

end A309214

/-! ## A309214.P18354644932780596507

`a(n-1)-n*a(gcd(2, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A309214.P18354644932780596507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (n : ℤ) * a (Int.gcd 2 (a (n - 1)))

end

end A309214.P18354644932780596507

namespace A309214

/-- `a(n-1)-n*a(gcd(2, a(n-1)))` -/
def P18354644932780596507.Spec : Prop :=
  ∀ n, P18354644932780596507.a n = A309214 n

end A309214

/-! ## A309214.P7529847872864630513

`a(n-1)-n*(-1)^(1-a(n-1))` with `a(0)=0`
-/

namespace A309214.P7529847872864630513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℝ) * (-1 : ℝ) ^ (1 - a (n - 1))

end

end A309214.P7529847872864630513

namespace A309214

/-- `a(n-1)-n*(-1)^(1-a(n-1))` -/
def P7529847872864630513.Spec : Prop :=
  ∀ n, P7529847872864630513.a n = (A309214 n : ℝ)

end A309214

/-! ## A309214.P1223912075973125913

`a(n-1)-n/(-1)^(1-a(n-1))` with `a(0)=0`
-/

namespace A309214.P1223912075973125913
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℝ) / (-1 : ℝ) ^ (1 - a (n - 1))

end

end A309214.P1223912075973125913

namespace A309214

/-- `a(n-1)-n/(-1)^(1-a(n-1))` -/
def P1223912075973125913.Spec : Prop :=
  ∀ n, P1223912075973125913.a n = (A309214 n : ℝ)

end A309214

/-! ## A309214.P517467465097860779

`-A309215(n)`
-/

namespace A309214.P517467465097860779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A309215 n

end

end A309214.P517467465097860779

namespace A309214

/-- `-A309215(n)` -/
def P517467465097860779.Spec : Prop :=
  ∀ n, P517467465097860779.a n = A309214 n

end A309214

/-! ## A309214.P8136048375094957160

`A057428(n)*A309215(n)`
-/

namespace A309214.P8136048375094957160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A309215 n

end

end A309214.P8136048375094957160

namespace A309214

/-- `A057428(n)*A309215(n)` -/
def P8136048375094957160.Spec : Prop :=
  ∀ n, P8136048375094957160.a n = A309214 n

end A309214

/-! ## A309214.P11537081051695073353

`A251610(n+1)-A098181(n)`
-/

namespace A309214.P11537081051695073353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251610 (n + 1) - A098181 n

end

end A309214.P11537081051695073353

namespace A309214

/-- `A251610(n+1)-A098181(n)` -/
def P11537081051695073353.Spec : Prop :=
  ∀ n, P11537081051695073353.a n = A309214 n

end A309214

/-! ## A309214.P4122910610432933852

`A153881(n+1)*A309215(n)`
-/

namespace A309214.P4122910610432933852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A309215 n

end

end A309214.P4122910610432933852

namespace A309214

/-- `A153881(n+1)*A309215(n)` -/
def P4122910610432933852.Spec : Prop :=
  ∀ n, P4122910610432933852.a n = A309214 n

end A309214

/-! ## A309214.P13077299664911650121

`A001489(n)+n-A309215(n)`
-/

namespace A309214.P13077299664911650121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ((n : ℤ) - A309215 n)

end

end A309214.P13077299664911650121

namespace A309214

/-- `A001489(n)+n-A309215(n)` -/
def P13077299664911650121.Spec : Prop :=
  ∀ n, P13077299664911650121.a n = A309214 n

end A309214

/-! ## A309214.P17371753851199114442

`A014029(A014029(n)+n)-A309215(n)`
-/

namespace A309214.P17371753851199114442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (A014029 n + (n : ℤ)).toNat - A309215 n

end

end A309214.P17371753851199114442

namespace A309214

/-- `A014029(A014029(n)+n)-A309215(n)` -/
def P17371753851199114442.Spec : Prop :=
  ∀ n, P17371753851199114442.a n = A309214 n

end A309214

/-! ## A309214.P9444915069384295085

`(A330602(n)-A000035(n))*A057077(n)`
-/

namespace A309214.P9444915069384295085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330602 n - A000035 n) * A057077 n

end

end A309214.P9444915069384295085

namespace A309214

/-- `(A330602(n)-A000035(n))*A057077(n)` -/
def P9444915069384295085.Spec : Prop :=
  ∀ n, P9444915069384295085.a n = A309214 n

end A309214

/-! ## A309214.P4200235549755512653

`A309215(n)/A057428(n+1)`
-/

namespace A309214.P4200235549755512653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309215 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A309214.P4200235549755512653

namespace A309214

/-- `A309215(n)/A057428(n+1)` -/
def P4200235549755512653.Spec : Prop :=
  ∀ n, P4200235549755512653.a n = (A309214 n : ℚ)

end A309214

/-! ## A309214.P9422408078459327729

`Δ[A309215(n)]-A309215(n+1)`
-/

namespace A309214.P9422408078459327729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A309215 (n + 1)

end

end A309214.P9422408078459327729

namespace A309214

/-- `Δ[A309215(n)]-A309215(n+1)` -/
def P9422408078459327729.Spec : Prop :=
  ∀ n, P9422408078459327729.a n = A309214 n

end A309214

/-! ## A309214.P1674844642272249923

`n*Δ[A319279(n+1)]-A319279(n+1)`
-/

namespace A309214.P1674844642272249923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A319279 (n + 1)

end

end A309214.P1674844642272249923

namespace A309214

/-- `n*Δ[A319279(n+1)]-A319279(n+1)` -/
def P1674844642272249923.Spec : Prop :=
  ∀ n, P1674844642272249923.a n = A309214 n

end A309214

/-!
# A309215: a(0)=0; thereafter a(n) = a(n-1)+n if a(n-1) odd, otherwise a(n) = a(n-1)-n.

The programs for A309215, the canonical program `A309215.P1593822772244124034` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309215 has offset 0).

The definition of A309215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309215.P1593822772244124034

`a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=4, a(4)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A309215

/-- `a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P1593822772244124034.Spec : Prop :=
  ∀ n, P1593822772244124034.a n = A309215 n

theorem P1593822772244124034.correct : P1593822772244124034.Spec := by
  intro n
  simp only [A309215]

end A309215

/-! ## A309215.P11168897489153556554

`∑[n*(and(2, n)-1)]`
-/

namespace A309215.P11168897489153556554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 2 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309215.P11168897489153556554

namespace A309215

/-- `∑[n*(and(2, n)-1)]` -/
def P11168897489153556554.Spec : Prop :=
  ∀ n, P11168897489153556554.a n = A309215 n

end A309215

/-! ## A309215.P4406287696030162356

`∑[n/(and(2, n)-1)]`
-/

namespace A309215.P4406287696030162356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.land 2 n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309215.P4406287696030162356

namespace A309215

/-- `∑[n/(and(2, n)-1)]` -/
def P4406287696030162356.Spec : Prop :=
  ∀ n, P4406287696030162356.a n = (A309215 n : ℚ)

end A309215

/-! ## A309215.P10895532866867627522

`∑[n*(-1)^∑[n+1]]`
-/

namespace A309215.P10895532866867627522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309215.P10895532866867627522

namespace A309215

/-- `∑[n*(-1)^∑[n+1]]` -/
def P10895532866867627522.Spec : Prop :=
  ∀ n, P10895532866867627522.a n = A309215 n

end A309215

/-! ## A309215.P13240475626722091161

`a(n-1)-n*(-1)^a(n-1)` with `a(0)=0`
-/

namespace A309215.P13240475626722091161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℝ) * (-1 : ℝ) ^ (a (n - 1))

end

end A309215.P13240475626722091161

namespace A309215

/-- `a(n-1)-n*(-1)^a(n-1)` -/
def P13240475626722091161.Spec : Prop :=
  ∀ n, P13240475626722091161.a n = (A309215 n : ℝ)

end A309215

/-! ## A309215.P880539155599881276

`a(n-1)-n/(-1)^a(n-1)` with `a(0)=0`
-/

namespace A309215.P880539155599881276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A309215.P880539155599881276

namespace A309215

/-- `a(n-1)-n/(-1)^a(n-1)` -/
def P880539155599881276.Spec : Prop :=
  ∀ n, P880539155599881276.a n = (A309215 n : ℝ)

end A309215

/-! ## A309215.P1816987072614467558

`-A309214(n)`
-/

namespace A309215.P1816987072614467558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A309214 n

end

end A309215.P1816987072614467558

namespace A309215

/-- `-A309214(n)` -/
def P1816987072614467558.Spec : Prop :=
  ∀ n, P1816987072614467558.a n = A309215 n

end A309215

/-! ## A309215.P16562740298209096489

`A003816(n)*A087960(n)`
-/

namespace A309215.P16562740298209096489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 n * A087960 n

end

end A309215.P16562740298209096489

namespace A309215

/-- `A003816(n)*A087960(n)` -/
def P16562740298209096489.Spec : Prop :=
  ∀ n, P16562740298209096489.a n = A309215 n

end A309215

/-! ## A309215.P2692497699920714492

`A057428(n)*A309214(n)`
-/

namespace A309215.P2692497699920714492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A309214 n

end

end A309215.P2692497699920714492

namespace A309215

/-- `A057428(n)*A309214(n)` -/
def P2692497699920714492.Spec : Prop :=
  ∀ n, P2692497699920714492.a n = A309215 n

end A309215

/-! ## A309215.P9272428619794228329

`A098181(n)-A251610(n+1)`
-/

namespace A309215.P9272428619794228329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n - A251610 (n + 1)

end

end A309215.P9272428619794228329

namespace A309215

/-- `A098181(n)-A251610(n+1)` -/
def P9272428619794228329.Spec : Prop :=
  ∀ n, P9272428619794228329.a n = A309215 n

end A309215

/-! ## A309215.P16988471594673970314

`A153881(n+1)*A309214(n)`
-/

namespace A309215.P16988471594673970314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A309214 n

end

end A309215.P16988471594673970314

namespace A309215

/-- `A153881(n+1)*A309214(n)` -/
def P16988471594673970314.Spec : Prop :=
  ∀ n, P16988471594673970314.a n = A309215 n

end A309215

/-! ## A309215.P17204504312257506355

`n²-(A309214(n)+A000290(n))`
-/

namespace A309215.P17204504312257506355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A309214 n + A000290 n)

end

end A309215.P17204504312257506355

namespace A309215

/-- `n²-(A309214(n)+A000290(n))` -/
def P17204504312257506355.Spec : Prop :=
  ∀ n, P17204504312257506355.a n = A309215 n

end A309215

/-! ## A309215.P789225280938208861

`(A000035(n)-A330602(n))*A057077(n)`
-/

namespace A309215.P789225280938208861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n - A330602 n) * A057077 n

end

end A309215.P789225280938208861

namespace A309215

/-- `(A000035(n)-A330602(n))*A057077(n)` -/
def P789225280938208861.Spec : Prop :=
  ∀ n, P789225280938208861.a n = A309215 n

end A309215

/-! ## A309215.P16272071289453392925

`A309214(n)/A057428(n+1)`
-/

namespace A309215.P16272071289453392925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309214 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A309215.P16272071289453392925

namespace A309215

/-- `A309214(n)/A057428(n+1)` -/
def P16272071289453392925.Spec : Prop :=
  ∀ n, P16272071289453392925.a n = (A309215 n : ℚ)

end A309215

/-! ## A309215.P6964581310044950271

`Δ[A309214(n)]-A309214(n+1)`
-/

namespace A309215.P6964581310044950271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A309214 (n + 1)

end

end A309215.P6964581310044950271

namespace A309215

/-- `Δ[A309214(n)]-A309214(n+1)` -/
def P6964581310044950271.Spec : Prop :=
  ∀ n, P6964581310044950271.a n = A309215 n

end A309215

/-! ## A309215.P15647917680363882969

`A047481(n+1)-n*Δ[A047481(n+1)]`
-/

namespace A309215.P15647917680363882969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (n + 1) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A309215.P15647917680363882969

namespace A309215

/-- `A047481(n+1)-n*Δ[A047481(n+1)]` -/
def P15647917680363882969.Spec : Prop :=
  ∀ n, P15647917680363882969.a n = A309215 n

end A309215

/-! ## A309215.P4981095497663097890

`A319279(n+1)-n*Δ[A319279(n+1)]`
-/

namespace A309215.P4981095497663097890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1) - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A309215.P4981095497663097890

namespace A309215

/-- `A319279(n+1)-n*Δ[A319279(n+1)]` -/
def P4981095497663097890.Spec : Prop :=
  ∀ n, P4981095497663097890.a n = A309215 n

end A309215

/-! ## A309215.P10322599533695717253

`A003815(n+1)-(A077140(n+1)+A003816(n))`
-/

namespace A309215.P10322599533695717253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (n + 1) - (A077140 (n + 1) + A003816 n)

end

end A309215.P10322599533695717253

namespace A309215

/-- `A003815(n+1)-(A077140(n+1)+A003816(n))` -/
def P10322599533695717253.Spec : Prop :=
  ∀ n, P10322599533695717253.a n = A309215 n

end A309215

/-! ## A309215.P3997108288469943988

`A309214(A016825(n))*A309214(n)`
-/

namespace A309215.P3997108288469943988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (A016825 n).toNat * A309214 n

end

end A309215.P3997108288469943988

namespace A309215

/-- `A309214(A016825(n))*A309214(n)` -/
def P3997108288469943988.Spec : Prop :=
  ∀ n, P3997108288469943988.a n = A309215 n

end A309215

/-!
# A309216: a(0)=0; thereafter a(n) = a(n-1)+n if the (n-1)st digit of the sequence is even, otherwise a(n) = a(n-1)-n.

The programs for A309216, there is no canonical definition to state claims against.
-/

/-! ## A309216.P11377564204635237795

`∑[n*A244895(A290389(n))]`
-/

namespace A309216.P11377564204635237795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A244895 (A290389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309216.P11377564204635237795

/-! ## A309216.P8088959571379889725

`A010892(A002445(n))-A392725(n+1)`
-/

namespace A309216.P8088959571379889725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A002445 n).toNat - A392725 (n + 1)

end

end A309216.P8088959571379889725

/-! ## A309216.P4397214734267479229

`A054977(A199582(n))-A392725(n+1)`
-/

namespace A309216.P4397214734267479229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A199582 n).toNat - A392725 (n + 1)

end

end A309216.P4397214734267479229

/-! ## A309216.P18004987854821251390

`A392736(A011782(n))-A392725(n+1)`
-/

namespace A309216.P18004987854821251390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (A011782 n).toNat - A392725 (n + 1)

end

end A309216.P18004987854821251390

/-! ## A309216.P16210053802029143522

`A158388(A107429(n+1))-A392725(n+1)`
-/

namespace A309216.P16210053802029143522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A107429 (n + 1)).toNat - A392725 (n + 1)

end

end A309216.P16210053802029143522

/-!
# A309217: The sequence is {a(n), n>=0}, the concatenation of the binary expansions of the absolute values |a(n)| is {b(n), n>=0}; start with a(0)=0; thereafter a(n) = a(n-1)+n if b(n-1)=0, otherwise a(n) = a(n-1)-n.

The programs for A309217, there is no canonical definition to state claims against.
-/

/-! ## A309217.P11873247762264626548

`∑[n*A076479(A001006(n))]`
-/

namespace A309217.P11873247762264626548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076479 (A001006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309217.P11873247762264626548

/-! ## A309217.P7695625880313838548

`∑[n*A033999(A199745(n+1))]`
-/

namespace A309217.P7695625880313838548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033999 (A199745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309217.P7695625880313838548

/-!
# A309218: The sequence {b(n), n>=0} defined in A309217.

The programs for A309218, there is no canonical definition to state claims against.
-/

/-! ## A309218.P17241903432970683720

`-floor(acot(Δ[A309217(n)]))`
-/

namespace A309218.P17241903432970683720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋

end

end A309218.P17241903432970683720

/-! ## A309218.P4716814715705729813

`ceil(A001489(n)/Δ[A309217(n)])`
-/

namespace A309218.P4716814715705729813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001489 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A309218.P4716814715705729813

/-! ## A309218.P6713882662775922888

`and(1, A033716(Δ[A309217(n)]+n+1))`
-/

namespace A309218.P6713882662775922888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A033716 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat)

end

end A309218.P6713882662775922888

/-! ## A309218.P8861331643034564777

`ceil((1-A161764(n+1))/Δ[A309217(n)])`
-/

namespace A309218.P8861331643034564777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - A161764 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A309218.P8861331643034564777

/-! ## A309218.P1543577422179402878

`char[lt[A309217(n+1), A309217(n)]]`
-/

namespace A309218.P1543577422179402878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A309218.P1543577422179402878

/-! ## A309218.P2332671926958692596

`A000007(Δ[A309217(n)]+n+1)`
-/

namespace A309218.P2332671926958692596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A309218.P2332671926958692596

/-! ## A309218.P17137409344803617634

`A266070(Δ[A309217(n)]+n+1)`
-/

namespace A309218.P17137409344803617634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A309218.P17137409344803617634

/-! ## A309218.P16756422035881379635

`and(1, A002448(Δ[A309217(n)]+n+1))`
-/

namespace A309218.P16756422035881379635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002448 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat)

end

end A309218.P16756422035881379635

/-! ## A309218.P8235490846204641754

`and(1, A008458(Δ[A309217(n)]+n+1))`
-/

namespace A309218.P8235490846204641754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008458 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat)

end

end A309218.P8235490846204641754

/-! ## A309218.P7741780921268360349

`A007814(A005408(n))^(Δ[A309217(n)]+n+1)`
-/

namespace A309218.P7741780921268360349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A005408 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n + (n + 1 : ℤ) : ℤ)

end

end A309218.P7741780921268360349

/-! ## A309218.P2781899478667142076

`A275387(A045366(n+1))^(Δ[A309217(n)]+n+1)`
-/

namespace A309218.P2781899478667142076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275387 (A045366 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n + (n + 1 : ℤ) : ℤ)

end

end A309218.P2781899478667142076

/-! ## A309218.P13022605845629675778

`A097331(Δ[A309217(n)]+n+1)`
-/

namespace A309218.P13022605845629675778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A309218.P13022605845629675778

/-! ## A309218.P8024026734461196502

`A010054(A000124(n)+Δ[A309217(n)])`
-/

namespace A309218.P8024026734461196502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000124 n + (f1 (n + 1) - f1 n)).toNat

end

end A309218.P8024026734461196502

/-! ## A309218.P3046754776137942886

`A002262(A000124(n)-Δ[A309217(n)])`
-/

namespace A309218.P3046754776137942886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000124 n - (f1 (n + 1) - f1 n)).toNat

end

end A309218.P3046754776137942886

/-! ## A309218.P7054244013809896030

`1-A010054(A000124(n)-Δ[A309217(n)])`
-/

namespace A309218.P7054244013809896030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 (A000124 n - (f1 (n + 1) - f1 n)).toNat

end

end A309218.P7054244013809896030

/-!
# A309219: Number of distinct primes formed by concatenating two (not necessarily distinct) divisors of n.

The programs for A309219, there is no canonical definition to state claims against.
-/

/-! ## A309219.P10366552589790192010

`∑{d}[A046800(A136034(n+1)), A328948(#)]`
-/

namespace A309219.P10366552589790192010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A136034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A328948 d

end

end A309219.P10366552589790192010

/-!
# A309220: Square array A read by antidiagonals: the columns are given by A(n,1)=1, A(n,2)=n+1, A(n,3) = n^2+2n+3, A(n,4) = n^3+3*n^2+6*n+4, A(n,5) = n^4+4*n^3+10*n^2+12*n+7, ..., whose coefficients are given by A104509 (see also A118981).

The programs for A309220, there is no canonical definition to state claims against.
-/

/-! ## A309220.P12476989302149654682

`A117938(comp[∑[n]])`
-/

namespace A309220.P12476989302149654682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117938 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A309220.P12476989302149654682

/-! ## A309220.P9012361682610252570

`and(-1, A117938(A014132(n+1)))`
-/

namespace A309220.P9012361682610252570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A117938 (A014132 (n + 1)).toNat)

end

end A309220.P9012361682610252570

/-! ## A309220.P10545655980242135544

`A117938(A014132(n+1))%A000051(n)`
-/

namespace A309220.P10545655980242135544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117938 (A014132 (n + 1)).toNat) (A000051 n)

end

end A309220.P10545655980242135544

/-! ## A309220.P3991189821387638605

`gcd(A000038(n), A117938(A014132(n+1)))`
-/

namespace A309220.P3991189821387638605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117938 (A014132 (n + 1)).toNat)

end

end A309220.P3991189821387638605

/-! ## A309220.P15347469655495417445

`lcm(A020985(n), A117938(A014132(n+1)))`
-/

namespace A309220.P15347469655495417445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A117938 (A014132 (n + 1)).toNat)

end

end A309220.P15347469655495417445

/-! ## A309220.P7733851358061525521

`or(A000007(n), A117938(A014132(n+1)))`
-/

namespace A309220.P7733851358061525521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A117938 (A014132 (n + 1)).toNat)

end

end A309220.P7733851358061525521

/-! ## A309220.P9054638841710708954

`or(A010054(n), A117938(A014132(n+1)))`
-/

namespace A309220.P9054638841710708954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A117938 (A014132 (n + 1)).toNat)

end

end A309220.P9054638841710708954

/-! ## A309220.P11177448577629609611

`A007318(∑[n])*A117938(A014132(n+1))`
-/

namespace A309220.P11177448577629609611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A117938 (A014132 (n + 1)).toNat

end

end A309220.P11177448577629609611

/-! ## A309220.P15212762444064840114

`A000005(gcd(n, n+1))*A117938(A014132(n+1))`
-/

namespace A309220.P15212762444064840114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A117938 (A014132 (n + 1)).toNat

end

end A309220.P15212762444064840114

/-!
# A309221: Expected number of distinct squares visited by a knight's random walk on an infinite chessboard after n steps, normalized to give an integer.

The programs for A309221, there is no canonical definition to state claims against.
-/

/-! ## A309221.P18087256107729158008

`A326954(n)*A326974(A342342(n))`
-/

namespace A309221.P18087256107729158008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326954 n * A326974 (A342342 n).toNat

end

end A309221.P18087256107729158008

/-!
# A309222: a(0) = 6; thereafter a(n) = a(n-1) + prime(n) if prime(n) > a(n-1), otherwise a(n) = a(n-1) - prime(n).

The programs for A309222, there is no canonical definition to state claims against.
-/

/-! ## A309222.P9279879550285328037

`ceil(A022837(n)+5/A255283(n))`
-/

namespace A309222.P9279879550285328037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022837 n : ℚ) + 5 / (A255283 n : ℚ)⌉

end

end A309222.P9279879550285328037

/-! ## A309222.P3920261806902524730

`A022837(n)+gcd(5, A031370(n+1))`
-/

namespace A309222.P3920261806902524730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n + (Int.gcd 5 (A031370 (n + 1)) : ℤ)

end

end A309222.P3920261806902524730

/-! ## A309222.P16726410533805511022

`A313598(floor(1/(n+1)))+A022837(n)`
-/

namespace A309222.P16726410533805511022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313598 ⌊1 / (n + 1 : ℚ)⌋.toNat + A022837 n

end

end A309222.P16726410533805511022

/-! ## A309222.P18014705884348036358

`A140750(A058306(n))+A022837(n)`
-/

namespace A309222.P18014705884348036358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A058306 n).toNat + A022837 n

end

end A309222.P18014705884348036358

/-! ## A309222.P150911612295617168

`A166333(A078916(n+1))+A022837(n)`
-/

namespace A309222.P150911612295617168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A078916 (n + 1)).toNat + A022837 n

end

end A309222.P150911612295617168

/-! ## A309222.P12893395235393398820

`A089026(A113935(n+1))+A022837(n)`
-/

namespace A309222.P12893395235393398820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A113935 (n + 1)).toNat + A022837 n

end

end A309222.P12893395235393398820

/-! ## A309222.P9037503498716237329

`A022837(n)+gcd(n, A000040(A000040(n+1)+1))`
-/

namespace A309222.P9037503498716237329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n + (Int.gcd (n : ℤ) (A000040 (A000040 (n + 1) + 1).toNat) : ℤ)

end

end A309222.P9037503498716237329

/-! ## A309222.P978051438672029865

`A022837(n)+A014963(A274535(n+1))`
-/

namespace A309222.P978051438672029865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n + A014963 (A274535 (n + 1)).toNat

end

end A309222.P978051438672029865

/-! ## A309222.P783141010911684796

`A174965(A004621(n+1))+A022837(n)`
-/

namespace A309222.P783141010911684796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (A004621 (n + 1)).toNat + A022837 n

end

end A309222.P783141010911684796

/-! ## A309222.P13451984373447008436

`A022837(n)+5^(A161415(n+1)%2)`
-/

namespace A309222.P13451984373447008436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022837 n : ℚ) + (5 : ℚ) ^ (Int.tmod (A161415 (n + 1)) 2 : ℤ)

end

end A309222.P13451984373447008436

/-!
# A309223: Bisection A164733(2*n).

The programs for A309223, there is no canonical definition to state claims against.
-/

/-! ## A309223.P3677900431923067031

`A164733(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309223.P3677900431923067031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164733 (2 * (n + 1))

end

end A309223.P3677900431923067031

/-! ## A309223.P6388709060791539408

`A164733(A103517(n))%(2^n)`
-/

namespace A309223.P6388709060791539408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164733 (A103517 n).toNat) (2 ^ n : ℤ)

end

end A309223.P6388709060791539408

/-! ## A309223.P11310417325743819984

`A164733(Δ[A002378(n)])+char[40]`
-/

namespace A309223.P11310417325743819984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164733 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A309223.P11310417325743819984

/-! ## A309223.P10750511284666267399

`A164733(A051755(n+2))%(2^n)`
-/

namespace A309223.P10750511284666267399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164733 (A051755 (n + 2)).toNat) (2 ^ n : ℤ)

end

end A309223.P10750511284666267399

/-! ## A309223.P9640895942124866749

`A164733(Δ[A027691(n)])^(char[1]+1)`
-/

namespace A309223.P9640895942124866749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164733 (f1 (n + 1) - f1 n).toNat ^ ((if ∃ j, f2 j = n then 1 else 0) + 1)

end

end A309223.P9640895942124866749

/-!
# A309224: Bisection A164733(2*n+1).

The programs for A309224, there is no canonical definition to state claims against.
-/

/-! ## A309224.P4744100430996409824

`A164733(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309224.P4744100430996409824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164733 (2 * n + 1)

end

end A309224.P4744100430996409824

/-! ## A309224.P12434301723034195942

`or(floor(1/(n+1)), A164733((n+1)²-n²))`
-/

namespace A309224.P12434301723034195942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A164733 ((n + 1) ^ 2 - n ^ 2))

end

end A309224.P12434301723034195942

/-!
# A309226: Index of n-th low point in A008348 (see Comments for definition).

The programs for A309226, there is no canonical definition to state claims against.
-/

/-! ## A309226.P1089877638962075958

`∑[A324783(n)]-A324783(n)`
-/

namespace A309226.P1089877638962075958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A324783 n

end

end A309226.P1089877638962075958

/-! ## A309226.P16895145270152763711

`A135025(n+1)-(A324783(n)+1)`
-/

namespace A309226.P16895145270152763711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135025 (n + 1) - (A324783 n + 1)

end

end A309226.P16895145270152763711

/-! ## A309226.P1148219609916342521

`∑[A324783(n)]%A324783(n%A084422(n))`
-/

namespace A309226.P1148219609916342521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A324783 (Int.tmod (n : ℤ) (A084422 n)).toNat)

end

end A309226.P1148219609916342521

/-! ## A309226.P5815852653919481305

`A135025(n+1)%(A324783(n)+A133707(n+1))`
-/

namespace A309226.P5815852653919481305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135025 (n + 1)) (A324783 n + A133707 (n + 1))

end

end A309226.P5815852653919481305

/-!
# A309228: a(n) is the greatest possible height of a binary tree where all nodes hold positive squares and all interior nodes also equal the sum of their two children and the root node has value n^2.

The programs for A309228, there is no canonical definition to state claims against.
-/

/-! ## A309228.P9175855111816125847

`A025426(5*A152020(n+1))`
-/

namespace A309228.P9175855111816125847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (5 * A152020 (n + 1)).toNat

end

end A309228.P9175855111816125847

/-! ## A309228.P7047926189230101993

`A309778(A170818(n+1))%4`
-/

namespace A309228.P7047926189230101993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309778 (A170818 (n + 1)).toNat) 4

end

end A309228.P7047926189230101993

/-! ## A309228.P12170257124600947499

`A025426(5*A170818((n+1)²))`
-/

namespace A309228.P12170257124600947499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (5 * A170818 ((n + 1) ^ 2)).toNat

end

end A309228.P12170257124600947499

/-! ## A309228.P15682703153475415590

`and(3, A309778(A170818(2*(n+1))))`
-/

namespace A309228.P15682703153475415590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A309778 (A170818 (2 * (n + 1))).toNat)

end

end A309228.P15682703153475415590

/-! ## A309228.P9711681194361363910

`A025426(A008706(((n+1)/2^val(n+1, 2))²))`
-/

namespace A309228.P9711681194361363910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A008706 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ 2)).toNat).toNat

end

end A309228.P9711681194361363910

/-! ## A309228.P3648934528095364321

`A025426(5*(n+1)²)`
-/

namespace A309228.P3648934528095364321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (5 * (n + 1) ^ 2)

end

end A309228.P3648934528095364321

/-! ## A309228.P794256099884205237

`A035154(A132740(n+1)*A166466(n+1))`
-/

namespace A309228.P794256099884205237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (A132740 (n + 1) * A166466 (n + 1)).toNat

end

end A309228.P794256099884205237

/-! ## A309228.P6566574146200195174

`or(A000034(A011897(n)), A035154(n+1))`
-/

namespace A309228.P6566574146200195174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (A011897 n).toNat) (A035154 (n + 1))

end

end A309228.P6566574146200195174

/-! ## A309228.P5528732372522154826

`or(A000034(A011897(n)), A063014(n+1))`
-/

namespace A309228.P5528732372522154826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 (A011897 n).toNat) (A063014 (n + 1))

end

end A309228.P5528732372522154826

/-! ## A309228.P9861795939655336009

`A002654(A008574(n+1)*A132740(n+1))`
-/

namespace A309228.P9861795939655336009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A008574 (n + 1) * A132740 (n + 1)).toNat

end

end A309228.P9861795939655336009

/-!
# A309229: Square array read by upwards antidiagonals: T(n,k) = Sum_{i=1..n} A191898(i,k).

The programs for A309229, there is no canonical definition to state claims against.
-/

/-! ## A309229.P10600504554134782250

`A334312(A014132(n+1))-A023900(A002260(n+1))`
-/

namespace A309229.P10600504554134782250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334312 (A014132 (n + 1)).toNat - A023900 (A002260 (n + 1)).toNat

end

end A309229.P10600504554134782250

/-! ## A309229.P1706787852897828052

`A004736(n+1)%A272724(A059268(n))`
-/

namespace A309229.P1706787852897828052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) (A272724 (A059268 n).toNat)

end

end A309229.P1706787852897828052

/-! ## A309229.P5457069938360479166

`A023122(n+1)%A272724(A059268(n))`
-/

namespace A309229.P5457069938360479166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023122 (n + 1)) (A272724 (A059268 n).toNat)

end

end A309229.P5457069938360479166

/-! ## A309229.P14611188008225547530

`A051128(n+1)%A272724(A059268(n))`
-/

namespace A309229.P14611188008225547530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051128 (n + 1)) (A272724 (A059268 n).toNat)

end

end A309229.P14611188008225547530

/-! ## A309229.P5966398673770817209

`A167288(n+1)%A272724(A059268(n))`
-/

namespace A309229.P5966398673770817209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167288 (n + 1)) (A272724 (A059268 n).toNat)

end

end A309229.P5966398673770817209

/-!
# A309230: Positions of records in A033178.

The programs for A309230, there is no canonical definition to state claims against.
-/

/-! ## A309230.P10982537559462778921

`A038004(record[A033178(n+2)])`
-/

namespace A309230.P10982537559462778921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309230.P10982537559462778921

/-!
# A309231: Column 3 of the array at A326662 see Comments.

The programs for A309231, the canonical program `A309231.P13919545007454580162` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309231 has offset 1).

The definition of A309231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309231.P13919545007454580162

`or(val(n+1, 2), 9*n+7)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A309231

/-- `or(val(n+1, 2), 9*n+7)` -/
def P13919545007454580162.Spec : Prop :=
  ∀ n, (P13919545007454580162.a n : ℤ) = A309231 (n + 1)

theorem P13919545007454580162.correct : P13919545007454580162.Spec := by
  intro n
  simp only [A309231, Nat.add_sub_cancel]

end A309231

/-! ## A309231.P11067633008454308180

`∑[A249032(n)+4]`
-/

namespace A309231.P11067633008454308180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309231.P11067633008454308180

namespace A309231

/-- `∑[A249032(n)+4]` -/
def P11067633008454308180.Spec : Prop :=
  ∀ n, P11067633008454308180.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P12583860345935866870

`∑[Δ[A075326(n)]+4]`
-/

namespace A309231.P12583860345935866870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309231.P12583860345935866870

namespace A309231

/-- `∑[Δ[A075326(n)]+4]` -/
def P12583860345935866870.Spec : Prop :=
  ∀ n, P12583860345935866870.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P14548831453311512254

`or(9*n+7, A007814(n+1))`
-/

namespace A309231.P14548831453311512254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 * n + 7 : ℤ) (A007814 (n + 1))

end

end A309231.P14548831453311512254

namespace A309231

/-- `or(9*n+7, A007814(n+1))` -/
def P14548831453311512254.Spec : Prop :=
  ∀ n, P14548831453311512254.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P14790782676376058490

`A075326(n+1)+2*2*(n+1)`
-/

namespace A309231.P14790782676376058490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) + (2 * (2 * (n + 1)) : ℤ)

end

end A309231.P14790782676376058490

namespace A309231

/-- `A075326(n+1)+2*2*(n+1)` -/
def P14790782676376058490.Spec : Prop :=
  ∀ n, P14790782676376058490.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P3889693390014665132

`9*(n+1)-(A035263(n+1)+1)`
-/

namespace A309231.P3889693390014665132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - (A035263 (n + 1) + 1)

end

end A309231.P3889693390014665132

namespace A309231

/-- `9*(n+1)-(A035263(n+1)+1)` -/
def P3889693390014665132.Spec : Prop :=
  ∀ n, P3889693390014665132.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P13027030996039025830

`9*(n+1)-(3-A056832(n+1))`
-/

namespace A309231.P13027030996039025830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - (3 - A056832 (n + 1))

end

end A309231.P13027030996039025830

namespace A309231

/-- `9*(n+1)-(3-A056832(n+1))` -/
def P13027030996039025830.Spec : Prop :=
  ∀ n, P13027030996039025830.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P1368742080749008654

`A096268(n)+A017245(n)`
-/

namespace A309231.P1368742080749008654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n + A017245 n

end

end A309231.P1368742080749008654

namespace A309231

/-- `A096268(n)+A017245(n)` -/
def P1368742080749008654.Spec : Prop :=
  ∀ n, P1368742080749008654.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P7638423835595490765

`A056832(n+1)+A017233(n)`
-/

namespace A309231.P7638423835595490765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) + A017233 n

end

end A309231.P7638423835595490765

namespace A309231

/-- `A056832(n+1)+A017233(n)` -/
def P7638423835595490765.Spec : Prop :=
  ∀ n, P7638423835595490765.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P12568504420777286032

`A017257(n)-A035263(n+1)`
-/

namespace A309231.P12568504420777286032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - A035263 (n + 1)

end

end A309231.P12568504420777286032

namespace A309231

/-- `A017257(n)-A035263(n+1)` -/
def P12568504420777286032.Spec : Prop :=
  ∀ n, P12568504420777286032.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P5564516152126129201

`or(A007814(n+1), A017245(n))`
-/

namespace A309231.P5564516152126129201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (n + 1)) (A017245 n)

end

end A309231.P5564516152126129201

namespace A309231

/-- `or(A007814(n+1), A017245(n))` -/
def P5564516152126129201.Spec : Prop :=
  ∀ n, P5564516152126129201.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P15342350533395710441

`∑[A075326(n+1)+4-A075326(n)]`
-/

namespace A309231.P15342350533395710441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (n + 1) + (4 - A075326 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309231.P15342350533395710441

namespace A309231

/-- `∑[A075326(n+1)+4-A075326(n)]` -/
def P15342350533395710441.Spec : Prop :=
  ∀ n, P15342350533395710441.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P9039684166241948477

`10*n+7+A284948(n+2)-n`
-/

namespace A309231.P9039684166241948477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℤ) + (A284948 (n + 2) - (n : ℤ))

end

end A309231.P9039684166241948477

namespace A309231

/-- `10*n+7+A284948(n+2)-n` -/
def P9039684166241948477.Spec : Prop :=
  ∀ n, P9039684166241948477.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P4344093103934300107

`10*n+7+A328979(n+2)-n`
-/

namespace A309231.P4344093103934300107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℤ) + (A328979 (n + 2) - (n : ℤ))

end

end A309231.P4344093103934300107

namespace A309231

/-- `10*n+7+A328979(n+2)-n` -/
def P4344093103934300107.Spec : Prop :=
  ∀ n, P4344093103934300107.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P15755475091552170357

`A179805(n+2)+gcd(2, Δ[A000120(n)])`
-/

namespace A309231.P15755475091552170357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (n + 2) + (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ)

end

end A309231.P15755475091552170357

namespace A309231

/-- `A179805(n+2)+gcd(2, Δ[A000120(n)])` -/
def P15755475091552170357.Spec : Prop :=
  ∀ n, P15755475091552170357.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P17018151874967088909

`8*n+7+A123087(2*n)+A123087(n+1)`
-/

namespace A309231.P17018151874967088909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) + (A123087 (2 * n) + A123087 (n + 1))

end

end A309231.P17018151874967088909

namespace A309231

/-- `8*n+7+A123087(2*n)+A123087(n+1)` -/
def P17018151874967088909.Spec : Prop :=
  ∀ n, P17018151874967088909.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P1298078390795466636

`9*(n+1)-A091297(2*(n+1))`
-/

namespace A309231.P1298078390795466636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - A091297 (2 * (n + 1))

end

end A309231.P1298078390795466636

namespace A309231

/-- `9*(n+1)-A091297(2*(n+1))` -/
def P1298078390795466636.Spec : Prop :=
  ∀ n, P1298078390795466636.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P9446789145037986071

`A166519(2*n)+A075326(n+1)+1`
-/

namespace A309231.P9446789145037986071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (2 * n) + (A075326 (n + 1) + 1)

end

end A309231.P9446789145037986071

namespace A309231

/-- `A166519(2*n)+A075326(n+1)+1` -/
def P9446789145037986071.Spec : Prop :=
  ∀ n, P9446789145037986071.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P16379912276483276286

`A016885(2*n+1)-(A096268(2*n+1)+n)`
-/

namespace A309231.P16379912276483276286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n + 1) - (A096268 (2 * n + 1) + (n : ℤ))

end

end A309231.P16379912276483276286

namespace A309231

/-- `A016885(2*n+1)-(A096268(2*n+1)+n)` -/
def P16379912276483276286.Spec : Prop :=
  ∀ n, P16379912276483276286.a n = A309231 (n + 1)

end A309231

/-! ## A309231.P12778294040481535342

`A016789(A016789(n))-and(1, A083346(n+1))`
-/

namespace A309231.P12778294040481535342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016789 n).toNat - Int.land 1 (A083346 (n + 1))

end

end A309231.P12778294040481535342

namespace A309231

/-- `A016789(A016789(n))-and(1, A083346(n+1))` -/
def P12778294040481535342.Spec : Prop :=
  ∀ n, P12778294040481535342.a n = A309231 (n + 1)

end A309231

/-!
# A309233: Lexicographically earliest increasing sequence such that n-th term is divisible by all positive integers up to n.

The programs for A309233, the canonical program `A309233.P18125362527876287836` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309233 has offset 1).

The definition of A309233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309233.P18125362527876287836

`A236856(n+1)-A236856(n)%A003418(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309233

/-- `A236856(n+1)-A236856(n)%A003418(n+1)` -/
def P18125362527876287836.Spec : Prop :=
  ∀ n, P18125362527876287836.a n = A309233 (n + 1)

theorem P18125362527876287836.correct : P18125362527876287836.Spec := by
  intro n
  simp only [A309233, Nat.add_sub_cancel]

end A309233

/-! ## A309233.P3864368961131655202

`A020639(n+1)*A253139(ceil(2^(n-1)))`
-/

namespace A309233.P3864368961131655202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A253139 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A309233.P3864368961131655202

namespace A309233

/-- `A020639(n+1)*A253139(ceil(2^(n-1)))` -/
def P3864368961131655202.Spec : Prop :=
  ∀ n, P3864368961131655202.a n = A309233 (n + 1)

end A309233

/-! ## A309233.P2197774460828480835

`A020639(A187829(n+1))*A003418(n)`
-/

namespace A309233.P2197774460828480835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A187829 (n + 1)).toNat * A003418 n

end

end A309233.P2197774460828480835

namespace A309233

/-- `A020639(A187829(n+1))*A003418(n)` -/
def P2197774460828480835.Spec : Prop :=
  ∀ n, P2197774460828480835.a n = A309233 (n + 1)

end A309233

/-! ## A309233.P12024851126518877864

`(A075059(n)-1)*A020639(A187829(n+1))`
-/

namespace A309233.P12024851126518877864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075059 n - 1) * A020639 (A187829 (n + 1)).toNat

end

end A309233.P12024851126518877864

namespace A309233

/-- `(A075059(n)-1)*A020639(A187829(n+1))` -/
def P12024851126518877864.Spec : Prop :=
  ∀ n, P12024851126518877864.a n = A309233 (n + 1)

end A309233

/-!
# A309235: Composite numbers m such that A309132(m) <= m.

The programs for A309235, there is no canonical definition to state claims against.
-/

/-! ## A309235.P4153005944418285308

`A002997(n+1)-A326678(A000108(n))`
-/

namespace A309235.P4153005944418285308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1) - A326678 (A000108 n).toNat

end

end A309235.P4153005944418285308

/-! ## A309235.P617391220877715914

`A355039(n+1)-A326678(A000108(n))`
-/

namespace A309235.P617391220877715914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1) - A326678 (A000108 n).toNat

end

end A309235.P617391220877715914

/-!
# A309236: Langton's ant on a circular grid with 4-fold rotational symmetry: number of black cells on the grid after n moves of the ant.

The programs for A309236, there is no canonical definition to state claims against.
-/

/-! ## A309236.P16319991431655705846

`∑[A105812(A241511(2*(n+2)))]`
-/

namespace A309236.P16319991431655705846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A241511 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309236.P16319991431655705846

/-!
# A309237: Records in the indices of largest unsigned Stirling number of first kind: a(n) = smallest m such that c(m,n) = max_{k=0,1...,m} c(m,k).

The programs for A309237, there is no canonical definition to state claims against.
-/

/-! ## A309237.P15734873617146903164

`A046155(∑[A084177(n)])`
-/

namespace A309237.P15734873617146903164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309237.P15734873617146903164

/-! ## A309237.P17462943475544109398

`A046155(A084153(n+1))`
-/

namespace A309237.P17462943475544109398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A084153 (n + 1)).toNat

end

end A309237.P17462943475544109398

/-! ## A309237.P3358952870080470270

`A194698(A261563(n+1))`
-/

namespace A309237.P3358952870080470270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A261563 (n + 1)).toNat

end

end A309237.P3358952870080470270

/-!
# A309239: Numbers m > 1 having the property that for any prime divisor p of m, k=p-1 is the smallest positive integer such that p-k|m-k.

The programs for A309239, there is no canonical definition to state claims against.
-/

/-! ## A309239.P3625947055094487532

`∑[A133265(A088748(A266878(n+1)))]`
-/

namespace A309239.P3625947055094487532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A088748 (A266878 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309239.P3625947055094487532

/-! ## A309239.P4337214740177476072

`lt[A276878(n+1), A000010(A276886(n+1))]`
-/

namespace A309239.P4337214740177476072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A276886 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309239.P4337214740177476072

/-! ## A309239.P17376886396561964189

`∑[gcd(A018659(n+1), A149680(n))+1]`
-/

namespace A309239.P17376886396561964189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018659 (n + 1)) (A149680 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309239.P17376886396561964189

/-! ## A309239.P14962607920434114709

`eq[and(1, n), A327500(A234943(n+1)+1)]+1`
-/

namespace A309239.P14962607920434114709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A234943 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309239.P14962607920434114709

/-! ## A309239.P14659551748144738211

`∑[A008611(A334954(A020878(n)))]`
-/

namespace A309239.P14659551748144738211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A334954 (A020878 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309239.P14659551748144738211

/-!
# A309243: Completely multiplicative with a(p) = p * a(p-1) for any prime number p.

The programs for A309243, the canonical program `A309243.P2615360336711731693` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309243 has offset 1).

The definition of A309243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309243.P8463855824793185839

`(n+1)*a(A003958(n+1)-1)` with `a(0)=1`
-/

namespace A309243.P8463855824793185839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A003958 (n + 1) - 1).toNat

end

end A309243.P8463855824793185839

namespace A309243

/-- `(n+1)*a(A003958(n+1)-1)` -/
def P8463855824793185839.Spec : Prop :=
  ∀ n, (P8463855824793185839.a n : ℤ) = A309243 (n + 1)

end A309243

/-! ## A309243.P2615360336711731693

`lcm(n+1, a(A171462(n+1)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A309243

/-- `lcm(n+1, a(A171462(n+1)-1))` -/
def P2615360336711731693.Spec : Prop :=
  ∀ n, (P2615360336711731693.a n : ℤ) = A309243 (n + 1)

theorem P2615360336711731693.correct : P2615360336711731693.Spec := by
  intro n
  simp only [A309243, Nat.add_sub_cancel]

end A309243

/-! ## A309243.P2900548916462271429

`a(A109606(n+1))*A007947(n+1)` with `a(0)=1`
-/

namespace A309243.P2900548916462271429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A109606 (n + 1)).toNat * A007947 (n + 1)

end

end A309243.P2900548916462271429

namespace A309243

/-- `a(A109606(n+1))*A007947(n+1)` -/
def P2900548916462271429.Spec : Prop :=
  ∀ n, P2900548916462271429.a n = A309243 (n + 1)

end A309243

/-! ## A309243.P17966764439918961062

`a(A000010(n+1)-1)*A007947(n+1)` with `a(0)=1`
-/

namespace A309243.P17966764439918961062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A000010 (n + 1) - 1).toNat * A007947 (n + 1)

end

end A309243.P17966764439918961062

namespace A309243

/-- `a(A000010(n+1)-1)*A007947(n+1)` -/
def P17966764439918961062.Spec : Prop :=
  ∀ n, P17966764439918961062.a n = A309243 (n + 1)

end A309243

/-! ## A309243.P13262625455185468896

`a(A171462(n+1)-1)*A006530(n+1)` with `a(0)=1`
-/

namespace A309243.P13262625455185468896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A171462 (n + 1) - 1).toNat * A006530 (n + 1)

end

end A309243.P13262625455185468896

namespace A309243

/-- `a(A171462(n+1)-1)*A006530(n+1)` -/
def P13262625455185468896.Spec : Prop :=
  ∀ n, P13262625455185468896.a n = A309243 (n + 1)

end A309243

/-! ## A309243.P14769332274843448451

`a(n-A032742(n+1))*A020639(n+1)` with `a(0)=1`
-/

namespace A309243.P14769332274843448451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A032742 (n + 1)).toNat * A020639 (n + 1)

end

end A309243.P14769332274843448451

namespace A309243

/-- `a(n-A032742(n+1))*A020639(n+1)` -/
def P14769332274843448451.Spec : Prop :=
  ∀ n, P14769332274843448451.a n = A309243 (n + 1)

end A309243

/-!
# A309248: Primes p such that p * (sum of digits of p) - 2 is prime.

The programs for A309248, there is no canonical definition to state claims against.
-/

/-! ## A309248.P9251680056805945342

`A156756(∑[A112413(n)!])`
-/

namespace A309248.P9251680056805945342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A112413 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309248.P9251680056805945342

/-! ## A309248.P6303984400285642280

`∩[A156756(n+1), A249611(n+1)]`
-/

namespace A309248.P6303984400285642280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309248.P6303984400285642280

/-! ## A309248.P9506808993641095346

`p?[record[A140140(n+1)]*A289357(n+1)]`
-/

namespace A309248.P9506808993641095346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140140 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A289357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309248.P9506808993641095346

/-!
# A309249: Primes p such that p * (product of digits of p) - 2 is prime.

The programs for A309249, there is no canonical definition to state claims against.
-/

/-! ## A309249.P12254742078609040681

`p?[record[A160356(A334922(n+1))]]`
-/

namespace A309249.P12254742078609040681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (A334922 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309249.P12254742078609040681

/-! ## A309249.P17378425947103239876

`p?[A264591(2*n+1)%A264615(2*n+1)]`
-/

namespace A309249.P17378425947103239876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264591 (2 * n + 1)) (A264615 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309249.P17378425947103239876

/-! ## A309249.P4291522349000693258

`p?[A061217(A055640(n)+A037124(n+1))]`
-/

namespace A309249.P4291522349000693258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A055640 n + A037124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309249.P4291522349000693258

/-!
# A309250: a(n) is the index of the binary string of a Post's Correspondence Problem Encoding with index n.

The programs for A309250, there is no canonical definition to state claims against.
-/

/-! ## A309250.P2058754358836726723

`∑[C(A373954(n), A028631(2*n+7))]`
-/

namespace A309250.P2058754358836726723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A373954 n).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P2058754358836726723

/-! ## A309250.P11480757181045992186

`∑[C(A323719(n+5), A028631(2*n+7))]`
-/

namespace A309250.P11480757181045992186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323719 (n + 5)).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P11480757181045992186

/-! ## A309250.P12351681360557199248

`∑[C(A007318(n), A028631(2*n+7))]`
-/

namespace A309250.P12351681360557199248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P12351681360557199248

/-! ## A309250.P6970860482934621263

`∑[C(A026736(n), A028631(2*n+7))]`
-/

namespace A309250.P6970860482934621263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026736 n).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P6970860482934621263

/-! ## A309250.P14877842306259524176

`∑[C(A048004(n), A028631(2*n+7))]`
-/

namespace A309250.P14877842306259524176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048004 n).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P14877842306259524176

/-! ## A309250.P12230436593255449024

`∑[C(A133910(n+2), A028631(2*n+7))]`
-/

namespace A309250.P12230436593255449024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133910 (n + 2)).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P12230436593255449024

/-! ## A309250.P16147047684605860543

`∑[C(A165105(n+1), A028631(2*n+7))]`
-/

namespace A309250.P16147047684605860543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A165105 (n + 1)).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P16147047684605860543

/-! ## A309250.P7508377792219320582

`∑[C(A282623(n+1), A028631(2*n+7))]`
-/

namespace A309250.P7508377792219320582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A282623 (n + 1)).toNat (A028631 (2 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309250.P7508377792219320582

/-!
# A309255: a(n) = n + 1 - Sum_{k=0..n} (Stirling1(n,k) mod 2).

The programs for A309255, the canonical program `A309255.P16895856973714802078` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309255 has offset 0).

The definition of A309255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309255.P16895856973714802078

`n+1-2^A000120(floor(n/2))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309255

/-- `n+1-2^A000120(floor(n/2))` -/
def P16895856973714802078.Spec : Prop :=
  ∀ n, P16895856973714802078.a n = (A309255 n : ℚ)

end A309255

/-! ## A309255.P2695854656270543014

`1-A060632(n)+n`
-/

namespace A309255.P2695854656270543014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060632 n + (n : ℤ)

end

end A309255.P2695854656270543014

namespace A309255

/-- `1-A060632(n)+n` -/
def P2695854656270543014.Spec : Prop :=
  ∀ n, P2695854656270543014.a n = A309255 n

end A309255

/-! ## A309255.P2104483547311682075

`n-A088512(or(1, n))`
-/

namespace A309255.P2104483547311682075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A088512 (Nat.lor 1 n)

end

end A309255.P2104483547311682075

namespace A309255

/-- `n-A088512(or(1, n))` -/
def P2104483547311682075.Spec : Prop :=
  ∀ n, P2104483547311682075.a n = A309255 n

end A309255

/-! ## A309255.P2165974547318246878

`n-A038573(and(n, -2))`
-/

namespace A309255.P2165974547318246878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 (Int.land (n : ℤ) (-2)).toNat

end

end A309255.P2165974547318246878

namespace A309255

/-- `n-A038573(and(n, -2))` -/
def P2165974547318246878.Spec : Prop :=
  ∀ n, P2165974547318246878.a n = A309255 n

end A309255

/-! ## A309255.P5963256365822807536

`n-A038573(floor(n/2))`
-/

namespace A309255.P5963256365822807536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 ⌊(n : ℚ) / 2⌋.toNat

end

end A309255.P5963256365822807536

namespace A309255

/-- `n-A038573(floor(n/2))` -/
def P5963256365822807536.Spec : Prop :=
  ∀ n, P5963256365822807536.a n = A309255 n

end A309255

/-! ## A309255.P6958180888440446355

`1-Δ[A151566(n)]+n`
-/

namespace A309255.P6958180888440446355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A309255.P6958180888440446355

namespace A309255

/-- `1-Δ[A151566(n)]+n` -/
def P6958180888440446355.Spec : Prop :=
  ∀ n, P6958180888440446355.a n = A309255 n

end A309255

/-! ## A309255.P14997584019718884397

`1-A001316(and(n, -2))+n`
-/

namespace A309255.P14997584019718884397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001316 (Int.land (n : ℤ) (-2)).toNat + (n : ℤ)

end

end A309255.P14997584019718884397

namespace A309255

/-- `1-A001316(and(n, -2))+n` -/
def P14997584019718884397.Spec : Prop :=
  ∀ n, P14997584019718884397.a n = A309255 n

end A309255

/-! ## A309255.P6403344723441155205

`1-A001316(floor(n/2))+n`
-/

namespace A309255.P6403344723441155205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001316 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)

end

end A309255.P6403344723441155205

namespace A309255

/-- `1-A001316(floor(n/2))+n` -/
def P6403344723441155205.Spec : Prop :=
  ∀ n, P6403344723441155205.a n = A309255 n

end A309255

/-! ## A309255.P18198155980759909337

`n+1-A160745(n+1)/3`
-/

namespace A309255.P18198155980759909337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A160745 (n + 1) : ℚ) / 3

end

end A309255.P18198155980759909337

namespace A309255

/-- `n+1-A160745(n+1)/3` -/
def P18198155980759909337.Spec : Prop :=
  ∀ n, P18198155980759909337.a n = (A309255 n : ℚ)

end A309255

/-! ## A309255.P18062119087095344848

`n+1-A001316(n-n%2)`
-/

namespace A309255.P18062119087095344848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001316 (n - n % 2)

end

end A309255.P18062119087095344848

namespace A309255

/-- `n+1-A001316(n-n%2)` -/
def P18062119087095344848.Spec : Prop :=
  ∀ n, P18062119087095344848.a n = A309255 n

end A309255

/-! ## A309255.P9916657404562938151

`A071044(n)+A064405(n)`
-/

namespace A309255.P9916657404562938151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n + A064405 n

end

end A309255.P9916657404562938151

namespace A309255

/-- `A071044(n)+A064405(n)` -/
def P9916657404562938151.Spec : Prop :=
  ∀ n, P9916657404562938151.a n = A309255 n

end A309255

/-! ## A309255.P11239154425802398435

`n-A001065(A060632(n))`
-/

namespace A309255.P11239154425802398435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (A060632 n).toNat

end

end A309255.P11239154425802398435

namespace A309255

/-- `n-A001065(A060632(n))` -/
def P11239154425802398435.Spec : Prop :=
  ∀ n, P11239154425802398435.a n = A309255 n

end A309255

/-! ## A309255.P10598050119282905156

`A249732(n)+A163000(2*n)`
-/

namespace A309255.P10598050119282905156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249732 n + A163000 (2 * n)

end

end A309255.P10598050119282905156

namespace A309255

/-- `A249732(n)+A163000(2*n)` -/
def P10598050119282905156.Spec : Prop :=
  ∀ n, P10598050119282905156.a n = A309255 n

end A309255

/-! ## A309255.P10311737723403309897

`n+1-A048896(A000695(n))`
-/

namespace A309255.P10311737723403309897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048896 (A000695 n).toNat

end

end A309255.P10311737723403309897

namespace A309255

/-- `n+1-A048896(A000695(n))` -/
def P10311737723403309897.Spec : Prop :=
  ∀ n, P10311737723403309897.a n = A309255 n

end A309255

/-!
# A309256: a(n) = n + 1 - Sum_{k=0..n} (Stirling2(n,k) mod 2).

The programs for A309256, the canonical program `A309256.P1094537150064723946` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309256 has offset 0).

The definition of A309256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309256.P1094537150064723946

`n+1-A007306(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A309256

/-- `n+1-A007306(n)` -/
def P1094537150064723946.Spec : Prop :=
  ∀ n, P1094537150064723946.a n = A309256 n

theorem P1094537150064723946.correct : P1094537150064723946.Spec := by
  intro n
  simp only [A309256]

end A309256

/-! ## A309256.P14641146503324463288

`A024000(A007306(n))+n`
-/

namespace A309256.P14641146503324463288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A007306 n).toNat + (n : ℤ)

end

end A309256.P14641146503324463288

namespace A309256

/-- `A024000(A007306(n))+n` -/
def P14641146503324463288.Spec : Prop :=
  ∀ n, P14641146503324463288.a n = A309256 n

end A309256

/-! ## A309256.P13201085176437276600

`1-(A007306(A028310(n))-n)`
-/

namespace A309256.P13201085176437276600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007306 (A028310 n).toNat - (n : ℤ))

end

end A309256.P13201085176437276600

namespace A309256

/-- `1-(A007306(A028310(n))-n)` -/
def P13201085176437276600.Spec : Prop :=
  ∀ n, P13201085176437276600.a n = A309256 n

end A309256

/-! ## A309256.P14429791144210518301

`n+1-(A049468(n)-A049448(n))`
-/

namespace A309256.P14429791144210518301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A049468 n - A049448 n)

end

end A309256.P14429791144210518301

namespace A309256

/-- `n+1-(A049468(n)-A049448(n))` -/
def P14429791144210518301.Spec : Prop :=
  ∀ n, P14429791144210518301.a n = A309256 n

theorem P14429791144210518301.correct : P14429791144210518301.Spec := by
  intro n
  simp only [A309256, Nat.add_sub_cancel, A309256.P14429791144210518301.a, A309256.P1094537150064723946.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049468, A049468.P14759900804743389918.a, A003602, A003602.P7612175048291952394.a, A007305, A007305.P14904390197358887400.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309256

/-! ## A309256.P18382954221117785278

`A001489(A007306(n))+A000027(n+1)`
-/

namespace A309256.P18382954221117785278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A007306 n).toNat + A000027 (n + 1)

end

end A309256.P18382954221117785278

namespace A309256

/-- `A001489(A007306(n))+A000027(n+1)` -/
def P18382954221117785278.Spec : Prop :=
  ∀ n, P18382954221117785278.a n = A309256 n

end A309256

/-! ## A309256.P11917062396914823673

`n-(A007306(n)-A000120(A001316(n)))`
-/

namespace A309256.P11917062396914823673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A007306 n - A000120 (A001316 n).toNat)

end

end A309256.P11917062396914823673

namespace A309256

/-- `n-(A007306(n)-A000120(A001316(n)))` -/
def P11917062396914823673.Spec : Prop :=
  ∀ n, P11917062396914823673.a n = A309256 n

end A309256

/-! ## A309256.P283969923725349027

`n-(A007306(n)-A000120(A048896(n)))`
-/

namespace A309256.P283969923725349027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A007306 n - A000120 (A048896 n).toNat)

end

end A309256.P283969923725349027

namespace A309256

/-- `n-(A007306(n)-A000120(A048896(n)))` -/
def P283969923725349027.Spec : Prop :=
  ∀ n, P283969923725349027.a n = A309256 n

end A309256

/-! ## A309256.P15832886924841704677

`1-(A007306(n)-A061579(A061579(n)))`
-/

namespace A309256.P15832886924841704677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007306 n - A061579 (A061579 n).toNat)

end

end A309256.P15832886924841704677

namespace A309256

/-- `1-(A007306(n)-A061579(A061579(n)))` -/
def P15832886924841704677.Spec : Prop :=
  ∀ n, P15832886924841704677.a n = A309256 n

end A309256

/-! ## A309256.P4371447765424473135

`n+1-∑{d}[2*n-1, A317839(#)]`
-/

namespace A309256.P4371447765424473135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A309256.P4371447765424473135

namespace A309256

/-- `n+1-∑{d}[2*n-1, A317839(#)]` -/
def P4371447765424473135.Spec : Prop :=
  ∀ n, P4371447765424473135.a n = A309256 n

end A309256

/-! ## A309256.P17647482164291344872

`1-A057432(A004273(n))+n`
-/

namespace A309256.P17647482164291344872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057432 (A004273 n).toNat + (n : ℤ)

end

end A309256.P17647482164291344872

namespace A309256

/-- `1-A057432(A004273(n))+n` -/
def P17647482164291344872.Spec : Prop :=
  ∀ n, P17647482164291344872.a n = A309256 n

end A309256

/-! ## A309256.P6933585306844283093

`1-A002487(A004280(n+1))+n`
-/

namespace A309256.P6933585306844283093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002487 (A004280 (n + 1)).toNat + (n : ℤ)

end

end A309256.P6933585306844283093

namespace A309256

/-- `1-A002487(A004280(n+1))+n` -/
def P6933585306844283093.Spec : Prop :=
  ∀ n, P6933585306844283093.a n = A309256 n

end A309256

/-! ## A309256.P8192110822290623472

`n+1-A007305(A004760(n+2))`
-/

namespace A309256.P8192110822290623472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007305 (A004760 (n + 2)).toNat

end

end A309256.P8192110822290623472

namespace A309256

/-- `n+1-A007305(A004760(n+2))` -/
def P8192110822290623472.Spec : Prop :=
  ∀ n, P8192110822290623472.a n = A309256 n

end A309256

/-! ## A309256.P6466620211635616325

`1-A007305(A206332(n+1))+n`
-/

namespace A309256.P6466620211635616325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007305 (A206332 (n + 1)).toNat + (n : ℤ)

end

end A309256.P6466620211635616325

namespace A309256

/-- `1-A007305(A206332(n+1))+n` -/
def P6466620211635616325.Spec : Prop :=
  ∀ n, P6466620211635616325.a n = A309256 n

end A309256

/-! ## A309256.P10132215364291188891

`1-A283976(A113127(n))+n`
-/

namespace A309256.P10132215364291188891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A283976 (A113127 n).toNat + (n : ℤ)

end

end A309256.P10132215364291188891

namespace A309256

/-- `1-A283976(A113127(n))+n` -/
def P10132215364291188891.Spec : Prop :=
  ∀ n, P10132215364291188891.a n = A309256 n

end A309256

/-! ## A309256.P4705615281841280307

`1-A002487(A111284(n+1))+n`
-/

namespace A309256.P4705615281841280307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002487 (A111284 (n + 1)).toNat + (n : ℤ)

end

end A309256.P4705615281841280307

namespace A309256

/-- `1-A002487(A111284(n+1))+n` -/
def P4705615281841280307.Spec : Prop :=
  ∀ n, P4705615281841280307.a n = A309256 n

end A309256

/-! ## A309256.P17934492324127921421

`n-A283976(A004277(abs(1-2*n)))+1`
-/

namespace A309256.P17934492324127921421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A283976 (A004277 |1 - (2 * n : ℤ)|.toNat).toNat + 1

end

end A309256.P17934492324127921421

namespace A309256

/-- `n-A283976(A004277(abs(1-2*n)))+1` -/
def P17934492324127921421.Spec : Prop :=
  ∀ n, P17934492324127921421.a n = A309256 n

end A309256

/-! ## A309256.P3530946325511660743

`1-(A007306(n)-A165199(A165199(n)))`
-/

namespace A309256.P3530946325511660743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A007306 n - A165199 (A165199 n).toNat)

end

end A309256.P3530946325511660743

namespace A309256

/-- `1-(A007306(n)-A165199(A165199(n)))` -/
def P3530946325511660743.Spec : Prop :=
  ∀ n, P3530946325511660743.a n = A309256 n

end A309256

/-!
# A309258: a(n) is the number of distinct absolute values of determinants of order n Latin squares.

The programs for A309258, there is no canonical definition to state claims against.
-/

/-! ## A309258.P586725891295581595

`A148458(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A309258.P586725891295581595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A148458 (a (n - 1)).toNat

end

end A309258.P586725891295581595

/-! ## A309258.P15924159027014231981

`A148587(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A309258.P15924159027014231981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A148587 (a (n - 1)).toNat

end

end A309258.P15924159027014231981

/-!
# A309259: a(n) is the greatest common divisor of the determinants of order n Latin squares.

The programs for A309259, there is no canonical definition to state claims against.
-/

/-! ## A309259.P815432637149657774

`gcd(∑[n+1]^4, A308853(n+1))`
-/

namespace A309259.P815432637149657774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 4 : ℕ) : ℤ) (A308853 (n + 1))

end

end A309259.P815432637149657774

/-! ## A309259.P13555403496125788811

`A308853(n+1)/A063746(n)`
-/

namespace A309259.P13555403496125788811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308853 (n + 1) : ℚ) / (A063746 n : ℚ)

end

end A309259.P13555403496125788811

/-! ## A309259.P2424024462655644656

`A308853(n+1)/A211095(n)`
-/

namespace A309259.P2424024462655644656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308853 (n + 1) : ℚ) / (A211095 n : ℚ)

end

end A309259.P2424024462655644656

/-! ## A309259.P11605666055215112261

`A308853(n+1)/A094266(n)!`
-/

namespace A309259.P11605666055215112261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308853 (n + 1) : ℚ) / (Nat.factorial (A094266 n).toNat : ℚ)

end

end A309259.P11605666055215112261

/-! ## A309259.P17020074406784545538

`A308853(n+1)/A111146(n)!`
-/

namespace A309259.P17020074406784545538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308853 (n + 1) : ℚ) / (Nat.factorial (A111146 n).toNat : ℚ)

end

end A309259.P17020074406784545538

/-!
# A309260: Number of ways of placing 2n-1 nonattacking rooks on a hexagonal board with edge-length n in Glinski's hexagonal chess, inequivalent up to rotations and reflections of the board.

The programs for A309260, there is no canonical definition to state claims against.
-/

/-! ## A309260.P5807690185047199251

`A350191(3*n+1)`
-/

namespace A309260.P5807690185047199251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350191 (3 * n + 1)

end

end A309260.P5807690185047199251

/-! ## A309260.P11876394212496693566

`and(-1, A350191(A016777(n)))`
-/

namespace A309260.P11876394212496693566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A350191 (A016777 n).toNat)

end

end A309260.P11876394212496693566

/-! ## A309260.P2129836886940393883

`A028310(A350191(Δ[C(n, 2)+n²]))`
-/

namespace A309260.P2129836886940393883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A350191 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A309260.P2129836886940393883

/-!
# A309261: The sum of the number of times each unique digit in the previous number occurred in the numbers before that with a(1) = 0.

The programs for A309261, there is no canonical definition to state claims against.
-/

/-! ## A309261.P6969632214943521828

`A326834(n^A304042(n))`
-/

namespace A309261.P6969632214943521828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326834 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A309261.P6969632214943521828

/-! ## A309261.P10360653157836325611

`A326834(n)%A003271(n)`
-/

namespace A309261.P10360653157836325611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326834 n) (A003271 n)

end

end A309261.P10360653157836325611

/-! ## A309261.P4141830538963973655

`A326834(C(n, A304042(n)))`
-/

namespace A309261.P4141830538963973655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326834 (Nat.choose n (A304042 n).toNat)

end

end A309261.P4141830538963973655

/-! ## A309261.P8462813589903959846

`A326834(n)+A000007(A008034(n))`
-/

namespace A309261.P8462813589903959846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326834 n + A000007 (A008034 n).toNat

end

end A309261.P8462813589903959846

/-! ## A309261.P16533940466598954014

`A326834(n)+A000007(A024991(n))`
-/

namespace A309261.P16533940466598954014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326834 n + A000007 (A024991 n).toNat

end

end A309261.P16533940466598954014

/-! ## A309261.P1249474862090517916

`A014963(A256270(n+1))*A326834(n)`
-/

namespace A309261.P1249474862090517916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A256270 (n + 1)).toNat * A326834 n

end

end A309261.P1249474862090517916

/-! ## A309261.P5960324092677537684

`lcm(A008683(A325183(n+1)), A326834(n))`
-/

namespace A309261.P5960324092677537684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A325183 (n + 1)).toNat) (A326834 n)

end

end A309261.P5960324092677537684

/-! ## A309261.P15060885757030091658

`A326834(n)+A000007(4*A000124(n+4))`
-/

namespace A309261.P15060885757030091658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326834 n + A000007 (4 * A000124 (n + 4)).toNat

end

end A309261.P15060885757030091658

/-! ## A309261.P5664382025625012590

`A001222(2^A326834(n))`
-/

namespace A309261.P5664382025625012590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326834 n : ℤ))).toNat

end

end A309261.P5664382025625012590

/-!
# A309263: Terms of A140110 that are not divisible by 6.

The programs for A309263, there is no canonical definition to state claims against.
-/

/-! ## A309263.P6433281467717983525

`∩[A060765(n+1), A067945(n+1)]`
-/

namespace A309263.P6433281467717983525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309263.P6433281467717983525

/-! ## A309263.P14247830711189965779

`∩[A060765(n+1), A068382(n+1)]`
-/

namespace A309263.P14247830711189965779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309263.P14247830711189965779

/-! ## A309263.P17862204294797855223

`∩[A060765(n+1), A093547(n+1)]`
-/

namespace A309263.P17862204294797855223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309263.P17862204294797855223

/-! ## A309263.P6752062528827167928

`∩[A067945(n+1), A140110(n+1)]`
-/

namespace A309263.P6752062528827167928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309263.P6752062528827167928

/-! ## A309263.P4223650342083353095

`∩[A068382(n+1), A140110(n+1)]`
-/

namespace A309263.P4223650342083353095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309263.P4223650342083353095

/-!
# A309264: Numbers k such that s + t = k with 0 < s < t where t and t - s are both prime.

The programs for A309264, there is no canonical definition to state claims against.
-/

/-! ## A309264.P817048450000739934

`lt[A162296(3*n+2), A340093(n+1)%A098550(n+1)]`
-/

namespace A309264.P817048450000739934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340093 (n + 1)) (A098550 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309264.P817048450000739934

/-! ## A309264.P3196090952991129035

`eq[char[A306443(n)], A156414(2*n+1)]`
-/

namespace A309264.P3196090952991129035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156414 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A309264.P3196090952991129035

/-! ## A309264.P8521067604779935508

`lt[A317176(3*n+2), A173419(n+3)-2]`
-/

namespace A309264.P8521067604779935508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317176 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (n + 3) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309264.P8521067604779935508

/-! ## A309264.P13124959037937023815

`A111801(n+1)+A010702(A001045(n))`
-/

namespace A309264.P13124959037937023815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (n + 1) + A010702 (A001045 n).toNat

end

end A309264.P13124959037937023815

/-! ## A309264.P4488419536169611014

`lt[A325965(n+1), A325965(A290422(n))]`
-/

namespace A309264.P4488419536169611014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325965 (A290422 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A309264.P4488419536169611014

/-!
# A309265: Numbers k such that s + t = k with 0 < s < t where s and t-s are both prime.

The programs for A309265, there is no canonical definition to state claims against.
-/

/-! ## A309265.P2382195077401058815

`∪[2*(p?[round(8*n/7)]+1), 2*n+7]`
-/

namespace A309265.P2382195077401058815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A309265.P2382195077401058815

/-! ## A309265.P1194173277542347623

`A256421(n+3)+2`
-/

namespace A309265.P1194173277542347623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256421 (n + 3) + 2

end

end A309265.P1194173277542347623

/-! ## A309265.P9961911682264341441

`record[A046522(n+1)+5]`
-/

namespace A309265.P9961911682264341441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046522 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309265.P9961911682264341441

/-! ## A309265.P1596151402326716611

`lt[0, A046926(n+1)]+1`
-/

namespace A309265.P1596151402326716611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309265.P1596151402326716611

/-! ## A309265.P12628368591333832761

`lt[0, A070088(n+1)]+1`
-/

namespace A309265.P12628368591333832761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309265.P12628368591333832761

/-! ## A309265.P14631608065657936871

`lt[0, A308120(n+1)]+1`
-/

namespace A309265.P14631608065657936871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309265.P14631608065657936871

/-! ## A309265.P9923319012488947745

`lt[0, A338770(n+1)]+1`
-/

namespace A309265.P9923319012488947745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309265.P9923319012488947745

/-! ## A309265.P1077237337844556246

`∪[xor(1, 2*n)+3, eq[2, A001222(n+1)]]+3`
-/

namespace A309265.P1077237337844556246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 3

end

end A309265.P1077237337844556246

/-! ## A309265.P10644722376989645548

`lt[0, A046926(A028310(n))]`
-/

namespace A309265.P10644722376989645548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309265.P10644722376989645548

/-! ## A309265.P6958757474659522377

`A256420(A000040(n+3))+2`
-/

namespace A309265.P6958757474659522377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256420 (A000040 (n + 3)).toNat + 2

end

end A309265.P6958757474659522377

/-!
# A309266: Expansion of (1 + x) * Product_{k>=1} (1 + x^k)/(1 - x^k).

The programs for A309266, there is no canonical definition to state claims against.
-/

/-! ## A309266.P5133781627213505029

`A015128(n)+A015128(n)-A211971(n)`
-/

namespace A309266.P5133781627213505029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n + (A015128 n - A211971 n)

end

end A309266.P5133781627213505029

/-! ## A309266.P12924731537871209754

`2*A015128(n)-A211971(n)`
-/

namespace A309266.P12924731537871209754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015128 n - A211971 n

end

end A309266.P12924731537871209754

/-! ## A309266.P10698388583688722660

`A316723(A090288(n))+A015128(n)`
-/

namespace A309266.P10698388583688722660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A090288 n).toNat + A015128 n

end

end A309266.P10698388583688722660

/-! ## A309266.P5857007844560559038

`A316723(A268581(n))+A015128(n)`
-/

namespace A309266.P5857007844560559038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A268581 n).toNat + A015128 n

end

end A309266.P5857007844560559038

/-! ## A309266.P9501313724568066181

`A316723(A090288(n))+abs(A004402(n))`
-/

namespace A309266.P9501313724568066181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A090288 n).toNat + |A004402 n|

end

end A309266.P9501313724568066181

/-! ## A309266.P1560480502788401110

`A316723(A090288(n))+∑[A211971(n)]`
-/

namespace A309266.P1560480502788401110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A090288 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309266.P1560480502788401110

/-! ## A309266.P8725734052206010116

`A316723(2*A028387(n))+A015128(n)`
-/

namespace A309266.P8725734052206010116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (2 * A028387 n).toNat + A015128 n

end

end A309266.P8725734052206010116

/-! ## A309266.P15627222343126313263

`A316723(A046092(n))+A316723(A090288(n))`
-/

namespace A309266.P15627222343126313263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A046092 n).toNat + A316723 (A090288 n).toNat

end

end A309266.P15627222343126313263

/-!
# A309267: Expansion of (1 + x) * Product_{k>=1} 1/(1 - x^k)^k.

The programs for A309267, there is no canonical definition to state claims against.
-/

/-! ## A309267.P6521750597344161107

`round(sqrt(A215099(3^n)))`
-/

namespace A309267.P6521750597344161107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A215099 (3 ^ n) : ℝ))

end

end A309267.P6521750597344161107

/-! ## A309267.P10515097951169615514

`A008651(A067983(n)+1)`
-/

namespace A309267.P10515097951169615514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A067983 n + 1).toNat

end

end A309267.P10515097951169615514

/-! ## A309267.P15169214425521872081

`log(∏[exp(A327064(n))])`
-/

namespace A309267.P15169214425521872081
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A327064 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A309267.P15169214425521872081

/-! ## A309267.P13612854266206461276

`∑[A126281(A079500(n))]`
-/

namespace A309267.P13612854266206461276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (A079500 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309267.P13612854266206461276

/-!
# A309268: Carmichael numbers m such that A309132(m) < m.

The programs for A309268, there is no canonical definition to state claims against.
-/

/-! ## A309268.P4845761805798785563

`A002997(A302150(n+1)*A325108(3*n+1))`
-/

namespace A309268.P4845761805798785563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (A302150 (n + 1) * A325108 (3 * n + 1)).toNat

end

end A309268.P4845761805798785563

/-!
# A309269: Numbers that are the sum of two successive prime powers.

The programs for A309269, the canonical program `A309269.P6439327140874271105` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309269 has offset 1).

The definition of A309269 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309269.P6439327140874271105

`A000961(n+1)+A000961(n+2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A309269

/-- `A000961(n+1)+A000961(n+2)` -/
def P6439327140874271105.Spec : Prop :=
  ∀ n, P6439327140874271105.a n = A309269 (n + 1)

theorem P6439327140874271105.correct : P6439327140874271105.Spec := by
  intro n
  simp only [A309269, Nat.add_sub_cancel]

end A309269

/-! ## A309269.P3672468707953140325

`A138929(n+1)+A057820(n+1)`
-/

namespace A309269.P3672468707953140325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1) + A057820 (n + 1)

end

end A309269.P3672468707953140325

namespace A309269

/-- `A138929(n+1)+A057820(n+1)` -/
def P3672468707953140325.Spec : Prop :=
  ∀ n, P3672468707953140325.a n = A309269 (n + 1)

theorem P3672468707953140325.correct : P3672468707953140325.Spec := by
  intro n
  simp only [A309269, Nat.add_sub_cancel, A309269.P3672468707953140325.a, A309269.P6439327140874271105.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A057820, A057820.P915405789854175386.a, A138929, A138929.P2871587686834618281.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309269

/-! ## A309269.P5244276236442230582

`A246655(n+1)+sqrt(A056798(n+1))`
-/

namespace A309269.P5244276236442230582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℝ) + Real.sqrt (A056798 (n + 1) : ℝ)

end

end A309269.P5244276236442230582

namespace A309269

/-- `A246655(n+1)+sqrt(A056798(n+1))` -/
def P5244276236442230582.Spec : Prop :=
  ∀ n, P5244276236442230582.a n = (A309269 (n + 1) : ℝ)

end A309269

/-! ## A309269.P14674206201907267713

`A181062(n+1)+A246655(n+1)+1`
-/

namespace A309269.P14674206201907267713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + (A246655 (n + 1) + 1)

end

end A309269.P14674206201907267713

namespace A309269

/-- `A181062(n+1)+A246655(n+1)+1` -/
def P14674206201907267713.Spec : Prop :=
  ∀ n, P14674206201907267713.a n = A309269 (n + 1)

theorem P14674206201907267713.correct : P14674206201907267713.Spec := by
  intro n
  simp only [A309269, Nat.add_sub_cancel, A309269.P14674206201907267713.a, A309269.P6439327140874271105.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309269

/-! ## A309269.P5442578314143227498

`2*A246655(n+1)-A057820(n+1)`
-/

namespace A309269.P5442578314143227498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246655 (n + 1) - A057820 (n + 1)

end

end A309269.P5442578314143227498

namespace A309269

/-- `2*A246655(n+1)-A057820(n+1)` -/
def P5442578314143227498.Spec : Prop :=
  ∀ n, P5442578314143227498.a n = A309269 (n + 1)

theorem P5442578314143227498.correct : P5442578314143227498.Spec := by
  intro n
  simp only [A309269, Nat.add_sub_cancel, A309269.P5442578314143227498.a, A309269.P6439327140874271105.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A057820, A057820.P915405789854175386.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309269

/-! ## A309269.P6824042415851432391

`A246655(n+1)+A138929(n+1)/2`
-/

namespace A309269.P6824042415851432391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) + (A138929 (n + 1) : ℚ) / 2

end

end A309269.P6824042415851432391

namespace A309269

/-- `A246655(n+1)+A138929(n+1)/2` -/
def P6824042415851432391.Spec : Prop :=
  ∀ n, P6824042415851432391.a n = (A309269 (n + 1) : ℚ)

theorem P6824042415851432391.correct : P6824042415851432391.Spec := by
  intro n
  simp only [A309269, Nat.add_sub_cancel, A309269.P6824042415851432391.a, A309269.P6439327140874271105.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A138929, A138929.P2871587686834618281.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A309269

/-! ## A309269.P11296063192359614049

`A246655(n+1)+A121315(n+1)/A246655(n+1)`
-/

namespace A309269.P11296063192359614049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) : ℚ) + (A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ)

end

end A309269.P11296063192359614049

namespace A309269

/-- `A246655(n+1)+A121315(n+1)/A246655(n+1)` -/
def P11296063192359614049.Spec : Prop :=
  ∀ n, P11296063192359614049.a n = (A309269 (n + 1) : ℚ)

end A309269

/-! ## A309269.P1737114572530985423

`record[A020639(n+2)^A001222(n+2)]+lt[A001221(n+1), 2]+1`
-/

namespace A309269.P1737114572530985423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) ^ (A001222 (n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℚ)

end

end A309269.P1737114572530985423

namespace A309269

/-- `record[A020639(n+2)^A001222(n+2)]+lt[A001221(n+1), 2]+1` -/
def P1737114572530985423.Spec : Prop :=
  ∀ n, P1737114572530985423.a n = (A309269 (n + 1) : ℚ)

end A309269

/-! ## A309269.P12417295460454438212

`record[A136623(n+2)+A000015(n+2)]`
-/

namespace A309269.P12417295460454438212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (n + 2) + A000015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309269.P12417295460454438212

namespace A309269

/-- `record[A136623(n+2)+A000015(n+2)]` -/
def P12417295460454438212.Spec : Prop :=
  ∀ n, P12417295460454438212.a n = A309269 (n + 1)

end A309269

/-! ## A309269.P6689997071512256837

`record[n*A001222(A014963(n+1))+1]+eq[1, A001221(n+1)]+1`
-/

namespace A309269.P6689997071512256837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A014963 (n + 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1 : ℤ)

end

end A309269.P6689997071512256837

namespace A309269

/-- `record[n*A001222(A014963(n+1))+1]+eq[1, A001221(n+1)]+1` -/
def P6689997071512256837.Spec : Prop :=
  ∀ n, P6689997071512256837.a n = A309269 (n + 1)

end A309269

/-! ## A309269.P1048454663524461266

`record[A014963(n+2)^A001222(n+2)]+lt[A001221(n+1), 2]+1`
-/

namespace A309269.P1048454663524461266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) ^ (A001222 (n + 2) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1 : ℚ)

end

end A309269.P1048454663524461266

namespace A309269

/-- `record[A014963(n+2)^A001222(n+2)]+lt[A001221(n+1), 2]+1` -/
def P1048454663524461266.Spec : Prop :=
  ∀ n, P1048454663524461266.a n = (A309269 (n + 1) : ℚ)

end A309269

/-!
# A309270: a(n) is the largest k such that the first k odd primes can be covered by n arithmetic progressions of primes.

The programs for A309270, there is no canonical definition to state claims against.
-/

/-! ## A309270.P12606743006589306306

`A090501(A275663(n+1)+A017041(n))`
-/

namespace A309270.P12606743006589306306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A275663 (n + 1) + A017041 n).toNat

end

end A309270.P12606743006589306306

/-! ## A309270.P632810584951887307

`A261787(A000045(2*n+1))+A158037(3*n+1)`
-/

namespace A309270.P632810584951887307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261787 (A000045 (2 * n + 1)).toNat + A158037 (3 * n + 1)

end

end A309270.P632810584951887307

/-! ## A309270.P3229424111370078885

`eq[2, A057515(A000065(n))]`
-/

namespace A309270.P3229424111370078885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A000065 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309270.P3229424111370078885

/-! ## A309270.P4597284924435102391

`A090501(or(n, A326663(n+1)))`
-/

namespace A309270.P4597284924435102391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (Int.lor (n : ℤ) (A326663 (n + 1))).toNat

end

end A309270.P4597284924435102391

/-! ## A309270.P8503802701536354967

`∑[A341023(A003132(n^3))+2]`
-/

namespace A309270.P8503802701536354967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 ((A003132 (n ^ 3)).toNat + 56) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309270.P8503802701536354967

/-!
# A309271: Number of magic knight's tours on a 4 X 2n board.

The programs for A309271, there is no canonical definition to state claims against.
-/

/-! ## A309271.P1333467627899267931

`and(A022053(n), A025462(A003032(n+2)))`
-/

namespace A309271.P1333467627899267931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022053 n) (A025462 (A003032 (n + 2)).toNat)

end

end A309271.P1333467627899267931

/-! ## A309271.P12026848310118209154

`A030102(C(comp[or(2, n)], 15))`
-/

namespace A309271.P12026848310118209154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 15)

end

end A309271.P12026848310118209154

/-! ## A309271.P1178493191532338271

`A263273(C(comp[or(2, n)], 15))`
-/

namespace A309271.P1178493191532338271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 15)

end

end A309271.P1178493191532338271

/-! ## A309271.P16549520774737254964

`88%A022564(n+1)!`
-/

namespace A309271.P16549520774737254964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  88 % Nat.factorial (A022564 (n + 1)).toNat

end

end A309271.P16549520774737254964

/-! ## A309271.P15198857169532976387

`and(88, Δ[A083246(n+1)])`
-/

namespace A309271.P15198857169532976387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 88 (f1 (n + 1) - f1 n)

end

end A309271.P15198857169532976387

/-!
# A309273: Number of semi-magic (only short lines are magic) knight's tours on a 4 X n board.

The programs for A309273, there is no canonical definition to state claims against.
-/

/-! ## A309273.P15783400199003691283

`A122189(n)*A341975(A265284(n))`
-/

namespace A309273.P15783400199003691283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 n * A341975 ((A265284 n).toNat + 11)

end

end A309273.P15783400199003691283

/-! ## A309273.P8235265969372518382

`A284270(A056274(n+2))`
-/

namespace A309273.P8235265969372518382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284270 (A056274 (n + 2)).toNat

end

end A309273.P8235265969372518382

/-! ## A309273.P4091503893079966137

`A328163(A048045(n+2))`
-/

namespace A309273.P4091503893079966137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328163 (A048045 (n + 2)).toNat

end

end A309273.P4091503893079966137

/-! ## A309273.P6586281744871688399

`∑{p}[A052779(n), A131717(#)]`
-/

namespace A309273.P6586281744871688399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A131717 p

end

end A309273.P6586281744871688399

/-! ## A309273.P18346561192421194797

`A330299(n)²%A185178(n+3)`
-/

namespace A309273.P18346561192421194797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330299 n ^ 2) (A185178 (n + 3))

end

end A309273.P18346561192421194797

/-!
# A309274: Ackermann Coding (BIT predicate) of transitive hereditarily finite sets.

The programs for A309274, there is no canonical definition to state claims against.
-/

/-! ## A309274.P10897886184247349648

`eq[n, A352449(n)]`
-/

namespace A309274.P10897886184247349648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309274.P10897886184247349648

/-! ## A309274.P1806033576436475967

`eq[n, and(n, A133179(n))]`
-/

namespace A309274.P1806033576436475967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A133179 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309274.P1806033576436475967

/-! ## A309274.P17619234628105368571

`record[A352449(A115379(n))]`
-/

namespace A309274.P17619234628105368571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352449 (A115379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309274.P17619234628105368571

/-! ## A309274.P17439125490727728284

`record[A352449(A266664(n))]`
-/

namespace A309274.P17439125490727728284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352449 (A266664 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309274.P17439125490727728284

/-! ## A309274.P8668979172396083474

`record[A026741(gcd(n, A352449(n)))]`
-/

namespace A309274.P8668979172396083474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (n : ℤ) (A352449 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309274.P8668979172396083474

/-! ## A309274.P317290028364262815

`record[and(A097262(n), A115379(n))]`
-/

namespace A309274.P317290028364262815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097262 n) (A115379 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309274.P317290028364262815

/-!
# A309277: Sums of two primes whose difference is squarefree.

The programs for A309277, there is no canonical definition to state claims against.
-/

/-! ## A309277.P5424635397431024889

`lt[0, A303206(n+1)]+1`
-/

namespace A309277.P5424635397431024889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309277.P5424635397431024889

/-!
# A309278: Index of first occurrence of n in the Erdös-Hooley Delta function A226898, with a(0)=0.

The programs for A309278, there is no canonical definition to state claims against.
-/

/-! ## A309278.P1103571148614809122

`A226899(A028310(n))%A197949(n+1)`
-/

namespace A309278.P1103571148614809122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226899 (A028310 n).toNat) (A197949 (n + 1))

end

end A309278.P1103571148614809122

/-! ## A309278.P13831167381635713844

`∑{e}[A000351(n), A226899(#)]`
-/

namespace A309278.P13831167381635713844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A226899 (Nat.factorization (f1 n).natAbs p)

end

end A309278.P13831167381635713844

/-! ## A309278.P12131265800604217080

`A226899(round(sqrt(n²+1)))%A204328(n+2)`
-/

namespace A309278.P12131265800604217080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226899 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A204328 (n + 2))

end

end A309278.P12131265800604217080

/-! ## A309278.P16352789585678316931

`record[floor(A045948(n+1)/A279387(2*n+3))]`
-/

namespace A309278.P16352789585678316931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045948 (n + 1) : ℚ) / (A279387 (2 * n + 3) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309278.P16352789585678316931

/-!
# A309279: Langton's ant on a truncated trihexagonal tiling: number of black cells after n moves of the ant when starting on a dodecagon.

The programs for A309279, there is no canonical definition to state claims against.
-/

/-! ## A309279.P6894564773411720465

`A382019(n)%record[A210423(n+1)]`
-/

namespace A309279.P6894564773411720465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382019 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A309279.P6894564773411720465

/-! ## A309279.P6905514115828843222

`(A341311(n)+1)%A036886(n+1)`
-/

namespace A309279.P6905514115828843222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341311 n + 1) (A036886 (n + 1))

end

end A309279.P6905514115828843222

/-! ## A309279.P5049332112849723974

`A351114(A168628(n+1))+2*n-lt[and(n+1, -n), 5]`
-/

namespace A309279.P5049332112849723974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351114 (A168628 (n + 1)).toNat + ((2 * n : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ))

end

end A309279.P5049332112849723974

/-! ## A309279.P7422580587340631477

`A382019(n)+A000007(A000041(n))`
-/

namespace A309279.P7422580587340631477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 n + A000007 (A000041 n).toNat

end

end A309279.P7422580587340631477

/-! ## A309279.P10723588641793732205

`A382019(n)%A085380(A383013(n))`
-/

namespace A309279.P10723588641793732205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382019 n) (A085380 (A383013 n).toNat)

end

end A309279.P10723588641793732205

/-!
# A309281: Total sum of the sum of divisors of the element sum over all nonempty subsets of [n].

The programs for A309281, there is no canonical definition to state claims against.
-/

/-! ## A309281.P17858986309711641249

`A029931(A154597(n))+A006350(n+2)`
-/

namespace A309281.P17858986309711641249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A154597 n).toNat + A006350 (n + 2)

end

end A309281.P17858986309711641249

/-!
# A309283: Number of equivalence classes of X-based filling of diagonals in a diagonal Latin square of order n.

The programs for A309283, there is no canonical definition to state claims against.
-/

/-! ## A309283.P7528256201142522112

`A338084(floor(n/2))`
-/

namespace A309283.P7528256201142522112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338084 ⌊(n : ℚ) / 2⌋.toNat

end

end A309283.P7528256201142522112

/-! ## A309283.P5063390368970428940

`∑{digits}[A004526(n), A338084(#)]`
-/

namespace A309283.P5063390368970428940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A338084 x).sum

end

end A309283.P5063390368970428940

/-! ## A309283.P3370213123783193866

`A338084(A123108(n))+C(2, n+2)`
-/

namespace A309283.P3370213123783193866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338084 (A123108 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A309283.P3370213123783193866

/-! ## A309283.P5859928300655361517

`A338084(A004526(n))%A029557(n+1)`
-/

namespace A309283.P5859928300655361517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338084 (A004526 n).toNat) (A029557 (n + 1))

end

end A309283.P5859928300655361517

/-! ## A309283.P2561914407533028790

`A014963(or(14, n))*A338084(A004526(n))`
-/

namespace A309283.P2561914407533028790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.lor 14 n) * A338084 (A004526 n).toNat

end

end A309283.P2561914407533028790

/-!
# A309287: Square array T(v, m), read by antidiagonals, for the Rogel-Klee arithmetic function: number of positive integers h in the set [m] for which gcd(h, m) is v-th-power-free, i.e., gcd(h, m) is not divisible by any v-th power of an integer > 1 (with v, m >= 1).

The programs for A309287, there is no canonical definition to state claims against.
-/

/-! ## A309287.P5334088762875732694

`A106476(n)+A001221(A176642(n))`
-/

namespace A309287.P5334088762875732694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 n + A001221 (A176642 n).toNat

end

end A309287.P5334088762875732694

/-! ## A309287.P6980882502443869701

`A316695(A008277(n+1))+A106476(n)`
-/

namespace A309287.P6980882502443869701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316695 (A008277 (n + 1)).toNat + A106476 n

end

end A309287.P6980882502443869701

/-! ## A309287.P13416661138224787805

`A001221(A176642(n))+A000010(A004736(n+1))`
-/

namespace A309287.P13416661138224787805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A176642 n).toNat + A000010 (A004736 (n + 1)).toNat

end

end A309287.P13416661138224787805

/-! ## A309287.P11346391738889396828

`A344117(A116412(n))`
-/

namespace A309287.P11346391738889396828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344117 (A116412 n).toNat

end

end A309287.P11346391738889396828

/-! ## A309287.P10868089619698023197

`A294893(A225472(n+1))`
-/

namespace A309287.P10868089619698023197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (A225472 (n + 1)).toNat

end

end A309287.P10868089619698023197

/-!
# A309288: a(0) = 0, a(1) = 1, and for any n > 1, a(n) = Sum_{k > 1} (-1)^k * a(floor(n/k)).

The programs for A309288, the canonical program `A309288.P1252972145664633864` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309288 has offset 0).

The definition of A309288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309288.P1252972145664633864

`∑[A361984(A028310(n))]-1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309288

/-- `∑[A361984(A028310(n))]-1` -/
def P1252972145664633864.Spec : Prop :=
  ∀ n, P1252972145664633864.a n = A309288 n

theorem P1252972145664633864.correct : P1252972145664633864.Spec := by
  intro n
  simp only [A309288]

end A309288

/-! ## A309288.P13606140117210617290

`∑[A361984(A000007(n)+n)]-1`
-/

namespace A309288.P13606140117210617290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361984 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A309288.P13606140117210617290

namespace A309288

/-- `∑[A361984(A000007(n)+n)]-1` -/
def P13606140117210617290.Spec : Prop :=
  ∀ n, P13606140117210617290.a n = A309288 n

end A309288

/-! ## A309288.P10917933929925845031

`∑[A361984(n+1)]-A361984(n+1)`
-/

namespace A309288.P10917933929925845031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A361984 (n + 1)

end

end A309288.P10917933929925845031

namespace A309288

/-- `∑[A361984(n+1)]-A361984(n+1)` -/
def P10917933929925845031.Spec : Prop :=
  ∀ n, P10917933929925845031.a n = A309288 n

end A309288

/-! ## A309288.P10417767855120398128

`∑[A361984(A028310(n))%A130665(n)]`
-/

namespace A309288.P10417767855120398128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361984 (A028310 n).toNat) (A130665 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309288.P10417767855120398128

namespace A309288

/-- `∑[A361984(A028310(n))%A130665(n)]` -/
def P10417767855120398128.Spec : Prop :=
  ∀ n, P10417767855120398128.a n = A309288 n

end A309288

/-! ## A309288.P9632207464344922025

`∑[A361984(A061006(3*(n+1))+n)]`
-/

namespace A309288.P9632207464344922025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361984 (A061006 (3 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309288.P9632207464344922025

namespace A309288

/-- `∑[A361984(A061006(3*(n+1))+n)]` -/
def P9632207464344922025.Spec : Prop :=
  ∀ n, P9632207464344922025.a n = A309288 n

end A309288

/-! ## A309288.P9547441963522082432

`A309286(∑[2*n])+A309286(∑[n])`
-/

namespace A309288.P9547441963522082432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309286 (∑ j ∈ Finset.range (n + 1), f1 j) + A309286 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A309288.P9547441963522082432

namespace A309288

/-- `A309286(∑[2*n])+A309286(∑[n])` -/
def P9547441963522082432.Spec : Prop :=
  ∀ n, P9547441963522082432.a n = A309288 n

end A309288

/-!
# A309290: Numbers k such that binomial(k^2,k) - k^2 is squarefree.

The programs for A309290, there is no canonical definition to state claims against.
-/

/-! ## A309290.P9304905083766685900

`eq[A140185(n), A285568(A142349(n+1))]`
-/

namespace A309290.P9304905083766685900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285568 (A142349 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309290.P9304905083766685900

/-! ## A309290.P15952786626262246272

`record[A254713(2*n+1)%A254732(n+1)]`
-/

namespace A309290.P15952786626262246272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254713 (2 * n + 1)) (A254732 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309290.P15952786626262246272

/-! ## A309290.P10495085105254760171

`eq[A029331(A029198(n)), A271484(n+1)]`
-/

namespace A309290.P10495085105254760171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A029198 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309290.P10495085105254760171

/-! ## A309290.P13732858621369103357

`eq[A194446(A028566(2*(n+1))), A323436(n)]`
-/

namespace A309290.P13732858621369103357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (A028566 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309290.P13732858621369103357

/-! ## A309290.P10963094710497213809

`∑{e}[4^n, A039734(#)]`
-/

namespace A309290.P10963094710497213809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A039734 (Nat.factorization (f1 n) p)

end

end A309290.P10963094710497213809

/-!
# A309291: Primes of the form k!-p where p <= k!/2 is also a prime and k=3,4,5,....

The programs for A309291, there is no canonical definition to state claims against.
-/

/-! ## A309291.P9965353570478658777

`A000040(eq[char[∑[n-1]], A132884(2*n+1)])`
-/

namespace A309291.P9965353570478658777
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132884 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n)

end

end A309291.P9965353570478658777

/-! ## A309291.P7019903898289464898

`A000040(eq[char[∑[n-1]], A137286(2*n+1)])`
-/

namespace A309291.P7019903898289464898
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n)

end

end A309291.P7019903898289464898

/-! ## A309291.P16742682685074317511

`A000040(eq[A023531(n), A178117(2*n+1)])`
-/

namespace A309291.P16742682685074317511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178117 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309291.P16742682685074317511

/-! ## A309291.P9814379845843367357

`A000040(eq[A136572(n), A136586(2*(n+1))])`
-/

namespace A309291.P9814379845843367357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136586 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309291.P9814379845843367357

/-! ## A309291.P11748155058022657844

`A000040(eq[A023531(n), A272472(2*n+5)])`
-/

namespace A309291.P11748155058022657844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272472 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A309291.P11748155058022657844

/-!
# A309292: Numbers that can be written as the sum of two primes, p, q, where p < q such that q^2 - p^2 is squarefree.

The programs for A309292, there is no canonical definition to state claims against.
-/

/-! ## A309292.P7865716802207765472

`A049282(n+1)+2`
-/

namespace A309292.P7865716802207765472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049282 (n + 1) + 2

end

end A309292.P7865716802207765472

/-! ## A309292.P6981356541175161689

`p?[Δ[A272799(n+1)²]]+2`
-/

namespace A309292.P6981356541175161689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272799 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A309292.P6981356541175161689

/-! ## A309292.P2188757902315047482

`A003969(A049282(n+1))`
-/

namespace A309292.P2188757902315047482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (A049282 (n + 1)).toNat

end

end A309292.P2188757902315047482

/-! ## A309292.P17725921052300768526

`A007429(A049282(-xor(n, -1)))`
-/

namespace A309292.P17725921052300768526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A049282 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A309292.P17725921052300768526

/-! ## A309292.P17885936355594903814

`∩[A049231(n+1), A049233(n+1)]+2`
-/

namespace A309292.P17885936355594903814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A309292.P17885936355594903814

/-! ## A309292.P16884694501240303773

`∩[A049231(n+1), A069977(n+1)]+2`
-/

namespace A309292.P16884694501240303773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A309292.P16884694501240303773

/-!
# A309293: Langton's ant on a snub trihexagonal tiling: number of black cells after n moves of the ant when starting on a hexagon.

The programs for A309293, there is no canonical definition to state claims against.
-/

/-! ## A309293.P11849284159967401142

`∑[A053382(A238877(n+1))%A200149(n+1)]`
-/

namespace A309293.P11849284159967401142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053382 (A238877 (n + 1)).toNat) (A200149 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309293.P11849284159967401142

/-!
# A309294: (1/2) times the sum of the elements of all subsets of [n] whose sum is divisible by two.

The programs for A309294, the canonical program `A309294.P10713753774720420333` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309294 has offset 0).

The definition of A309294 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309294.P10713753774720420333

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=20, a(5)=60`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A309294

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P10713753774720420333.Spec : Prop :=
  ∀ n, P10713753774720420333.a n = A309294 n

theorem P10713753774720420333.correct : P10713753774720420333.Spec := by
  intro n
  simp only [A309294]

end A309294

/-! ## A309294.P13911838428684682211

`floor(2^(n-3)*∑[n])`
-/

namespace A309294.P13911838428684682211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A309294.P13911838428684682211

namespace A309294

/-- `floor(2^(n-3)*∑[n])` -/
def P13911838428684682211.Spec : Prop :=
  ∀ n, P13911838428684682211.a n = A309294 n

end A309294

/-! ## A309294.P1561443066161422411

`Δ[A087431(A289207(n))]`
-/

namespace A309294.P1561443066161422411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087431 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309294.P1561443066161422411

namespace A309294

/-- `Δ[A087431(A289207(n))]` -/
def P1561443066161422411.Spec : Prop :=
  ∀ n, P1561443066161422411.a n = A309294 n

end A309294

/-! ## A309294.P8520976837331357897

`ceil(A048506(n)/4)-1`
-/

namespace A309294.P8520976837331357897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048506 n : ℚ) / 4⌉ - 1

end

end A309294.P8520976837331357897

namespace A309294

/-- `ceil(A048506(n)/4)-1` -/
def P8520976837331357897.Spec : Prop :=
  ∀ n, P8520976837331357897.a n = A309294 n

end A309294

/-! ## A309294.P4149887186510459799

`round((A001788(n)-1)/4)`
-/

namespace A309294.P4149887186510459799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001788 n - 1 : ℚ) / 4)

end

end A309294.P4149887186510459799

namespace A309294

/-- `round((A001788(n)-1)/4)` -/
def P4149887186510459799.Spec : Prop :=
  ∀ n, P4149887186510459799.a n = A309294 n

end A309294

/-! ## A309294.P3954306309134063025

`A165326(4*n+10)+ceil(A048506(n)/4)`
-/

namespace A309294.P3954306309134063025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 10) + ⌈(A048506 n : ℚ) / 4⌉

end

end A309294.P3954306309134063025

namespace A309294

/-- `A165326(4*n+10)+ceil(A048506(n)/4)` -/
def P3954306309134063025.Spec : Prop :=
  ∀ n, P3954306309134063025.a n = A309294 n

end A309294

/-!
# A309296: (1/4) times the sum of the elements of all subsets of [n] whose sum is divisible by four.

The programs for A309296, there is no canonical definition to state claims against.
-/

/-! ## A309296.P14984281311875177321

`A004524(floor(A309294(n)/2))`
-/

namespace A309296.P14984281311875177321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ⌊(A309294 n : ℚ) / 2⌋.toNat

end

end A309296.P14984281311875177321

/-! ## A309296.P6819759025844071776

`A004524(ceil(A309294(n)/2))`
-/

namespace A309296.P6819759025844071776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 ⌈(A309294 n : ℚ) / 2⌉.toNat

end

end A309296.P6819759025844071776

/-! ## A309296.P1226563239498167277

`A004524(round(A309294(n)/2))`
-/

namespace A309296.P1226563239498167277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway ((A309294 n : ℚ) / 2)).toNat

end

end A309296.P1226563239498167277

/-! ## A309296.P15771343770248150440

`A173711(A309294(n))`
-/

namespace A309296.P15771343770248150440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A309294 n).toNat

end

end A309296.P15771343770248150440

/-!
# A309298: (1/6) times the sum of the elements of all subsets of [n] whose sum is divisible by six.

The programs for A309298, there is no canonical definition to state claims against.
-/

/-! ## A309298.P7825902717204456515

`A241069(n²)+A241036(n)²`
-/

namespace A309298.P7825902717204456515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (n ^ 2) + A241036 n ^ 2

end

end A309298.P7825902717204456515

/-! ## A309298.P6137859643432640932

`A238005(A210543(2*(n+1))+2)`
-/

namespace A309298.P6137859643432640932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (A210543 (2 * (n + 1)) + 2).toNat

end

end A309298.P6137859643432640932

/-! ## A309298.P6715688738987876220

`A033103(A129772(n)+A087893(n+1))`
-/

namespace A309298.P6715688738987876220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (A129772 n + A087893 (n + 1)).toNat

end

end A309298.P6715688738987876220

/-! ## A309298.P12298227974013215473

`A065718(A290689(2*(n+2))+A059056(n+1))`
-/

namespace A309298.P12298227974013215473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A290689 (2 * (n + 2)) + A059056 (n + 1)).toNat

end

end A309298.P12298227974013215473

/-!
# A309299: (1/7) times the sum of the elements of all subsets of [n] whose sum is divisible by seven.

The programs for A309299, there is no canonical definition to state claims against.
-/

/-! ## A309299.P689052564479021544

`Δ[A029902(A036636(n))]`
-/

namespace A309299.P689052564479021544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029902 (A036636 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309299.P689052564479021544

/-! ## A309299.P925401327212313564

`A283929(A000060(n+1)+∏{p}[n+1, #])`
-/

namespace A309299.P925401327212313564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283929 (A000060 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)).toNat

end

end A309299.P925401327212313564

/-! ## A309299.P12251831723027320637

`A168201(A089658(n)+A072346(n))`
-/

namespace A309299.P12251831723027320637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A089658 n + A072346 n).toNat

end

end A309299.P12251831723027320637

/-! ## A309299.P15748370301100671664

`A000196(A150643(n)-A150623(n))`
-/

namespace A309299.P15748370301100671664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A150643 n - A150623 n).toNat

end

end A309299.P15748370301100671664

/-! ## A309299.P4218838486292759437

`A187258(n)-A001221(A304361(n))`
-/

namespace A309299.P4218838486292759437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 n - A001221 (A304361 n).toNat

end

end A309299.P4218838486292759437

