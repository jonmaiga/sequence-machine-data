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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A147702: Expansion of eta(q) * eta(q^10)^3 / (eta(q^2) * eta(q^4) * eta(q^5) * eta(q^20)) in powers of q.

The programs for A147702, there is no canonical definition to state claims against.
-/

/-! ## A147702.P17391046847438563080

`A033999(n)*A146162(n)`
-/

namespace A147702.P17391046847438563080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A146162 n

end

end A147702.P17391046847438563080

/-! ## A147702.P17894246699857723552

`A146162(n)*A309873(A007947(n+1))`
-/

namespace A147702.P17894246699857723552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 n * A309873 (A007947 (n + 1)).toNat

end

end A147702.P17894246699857723552

/-! ## A147702.P4426126039913489140

`A036026(n)/A116494(n)*A146162(n)`
-/

namespace A147702.P4426126039913489140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036026 n : ℚ) / (A116494 n : ℚ) * (A146162 n : ℚ)

end

end A147702.P4426126039913489140

/-! ## A147702.P13438391534853064883

`A094267(n²)*A146162(n)`
-/

namespace A147702.P13438391534853064883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A146162 n

end

end A147702.P13438391534853064883

/-! ## A147702.P9404554309374961064

`A146162(n)*A309873(n²+1)`
-/

namespace A147702.P9404554309374961064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 n * A309873 (n ^ 2 + 1)

end

end A147702.P9404554309374961064

/-!
# A147703: Triangle [1,1,1,0,0,0,...] DELTA [1,0,0,0,...] with Deléham DELTA defined in A084938.

The programs for A147703, there is no canonical definition to state claims against.
-/

/-! ## A147703.P1500823836887368833

`A199479(A061579(n))`
-/

namespace A147703.P1500823836887368833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A061579 n).toNat

end

end A147703.P1500823836887368833

/-! ## A147703.P5391825203651725731

`A199479(A114327(n)+n)`
-/

namespace A147703.P5391825203651725731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A114327 n + (n : ℤ)).toNat

end

end A147703.P5391825203651725731

/-! ## A147703.P4546372007955316516

`A199479(A038722(n+1)-1)`
-/

namespace A147703.P4546372007955316516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A038722 (n + 1) - 1).toNat

end

end A147703.P4546372007955316516

/-! ## A147703.P8303375922929729253

`A199479(A093995(n+1)-(n+1))`
-/

namespace A147703.P8303375922929729253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A147703.P8303375922929729253

/-! ## A147703.P17162709864731587532

`A199479(A002024(n+1)²-(n+1))`
-/

namespace A147703.P17162709864731587532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A147703.P17162709864731587532

/-! ## A147703.P14007952666792826487

`A199479(A057944(n)+A025581(n))`
-/

namespace A147703.P14007952666792826487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A057944 n + A025581 n).toNat

end

end A147703.P14007952666792826487

/-! ## A147703.P12410520684967599139

`A199479(A057428(n)+A038722(n+1))`
-/

namespace A147703.P12410520684967599139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A057428 n + A038722 (n + 1)).toNat

end

end A147703.P12410520684967599139

/-! ## A147703.P10187335964532923836

`A199479(A002378(n)%A014132(n+1))`
-/

namespace A147703.P10187335964532923836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A147703.P10187335964532923836

/-! ## A147703.P13782943855598212573

`A199479(A038722(n+2))`
-/

namespace A147703.P13782943855598212573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199479 (A038722 (n + 2)).toNat

end

end A147703.P13782943855598212573

/-!
# A147704: Diagonal sums of Riordan array ((1-2x)/(1 - 3x + x^2),x(1-x)/(1 - 3x + x^2)).

The programs for A147704, the canonical program `A147704.P15131477209894475959` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147704 has offset 0).

The definition of A147704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147704.P15131477209894475959

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147704

/-- `3*a(n-1)-a(n-3)` -/
def P15131477209894475959.Spec : Prop :=
  ∀ n, P15131477209894475959.a n = A147704 n

theorem P15131477209894475959.correct : P15131477209894475959.Spec := by
  intro n
  simp only [A147704]

end A147704

/-! ## A147704.P11989002460004075530

`ogf((1-2x)/(1-3x+x^3))`
-/

namespace A147704.P11989002460004075530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, 0, 1] n

end

end A147704.P11989002460004075530

namespace A147704

/-- `ogf((1-2x)/(1-3x+x^3))` -/
def P11989002460004075530.Spec : Prop :=
  ∀ n, P11989002460004075530.a n = A147704 n

end A147704

/-! ## A147704.P11089128449197414049

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A147704.P11089128449197414049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A147704.P11089128449197414049

namespace A147704

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P11089128449197414049.Spec : Prop :=
  ∀ n, P11089128449197414049.a n = A147704 n

theorem P11089128449197414049.correct : P11089128449197414049.Spec := by
  intro n
  simp only [A147704, Nat.add_sub_cancel, A147704.P11089128449197414049.a, A147704.P15131477209894475959.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147704

/-! ## A147704.P6135712931803671057

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A147704.P6135712931803671057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A147704.P6135712931803671057

namespace A147704

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P6135712931803671057.Spec : Prop :=
  ∀ n, P6135712931803671057.a n = A147704 n

theorem P6135712931803671057.correct : P6135712931803671057.Spec := by
  intro n
  simp only [A147704, Nat.add_sub_cancel, A147704.P6135712931803671057.a, A147704.P15131477209894475959.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147704

/-! ## A147704.P5499992795378777248

`∑[A215448(n)]`
-/

namespace A147704.P5499992795378777248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147704.P5499992795378777248

namespace A147704

/-- `∑[A215448(n)]` -/
def P5499992795378777248.Spec : Prop :=
  ∀ n, P5499992795378777248.a n = A147704 n

end A147704

/-! ## A147704.P11940029661105508488

`A187505(3*n+1)`
-/

namespace A147704.P11940029661105508488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * n + 1)

end

end A147704.P11940029661105508488

namespace A147704

/-- `A187505(3*n+1)` -/
def P11940029661105508488.Spec : Prop :=
  ∀ n, P11940029661105508488.a n = A147704 n

end A147704

/-! ## A147704.P17823056854868849950

`abs(Δ[A122099(n+1)])`
-/

namespace A147704.P17823056854868849950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A147704.P17823056854868849950

namespace A147704

/-- `abs(Δ[A122099(n+1)])` -/
def P17823056854868849950.Spec : Prop :=
  ∀ n, P17823056854868849950.a n = A147704 n

end A147704

/-! ## A147704.P15657753554540083892

`A052536(n)-A123941(n)`
-/

namespace A147704.P15657753554540083892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - A123941 n

end

end A147704.P15657753554540083892

namespace A147704

/-- `A052536(n)-A123941(n)` -/
def P15657753554540083892.Spec : Prop :=
  ∀ n, P15657753554540083892.a n = A147704 n

end A147704

/-! ## A147704.P11055633503656218227

`A122100(n+2)+A052963(n)`
-/

namespace A147704.P11055633503656218227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 2) + A052963 n

end

end A147704.P11055633503656218227

namespace A147704

/-- `A122100(n+2)+A052963(n)` -/
def P11055633503656218227.Spec : Prop :=
  ∀ n, P11055633503656218227.a n = A147704 n

end A147704

/-! ## A147704.P12785412403369686806

`A052536(n)-(A122100(n+1)+A052545(n))`
-/

namespace A147704.P12785412403369686806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - (A122100 (n + 1) + A052545 n)

end

end A147704.P12785412403369686806

namespace A147704

/-- `A052536(n)-(A122100(n+1)+A052545(n))` -/
def P12785412403369686806.Spec : Prop :=
  ∀ n, P12785412403369686806.a n = A147704 n

end A147704

/-! ## A147704.P7004086317223812694

`A052545(n)-(A215448(n)+A122100(n+1))`
-/

namespace A147704.P7004086317223812694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n - (A215448 n + A122100 (n + 1))

end

end A147704.P7004086317223812694

namespace A147704

/-- `A052545(n)-(A215448(n)+A122100(n+1))` -/
def P7004086317223812694.Spec : Prop :=
  ∀ n, P7004086317223812694.a n = A147704 n

end A147704

/-! ## A147704.P1777726198572807822

`A215448(n)-(A122100(n+1)+A122100(n))`
-/

namespace A147704.P1777726198572807822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 n - (A122100 (n + 1) + A122100 n)

end

end A147704.P1777726198572807822

namespace A147704

/-- `A215448(n)-(A122100(n+1)+A122100(n))` -/
def P1777726198572807822.Spec : Prop :=
  ∀ n, P1777726198572807822.a n = A147704 n

end A147704

/-! ## A147704.P13576014322966291126

`A215885(n)/3`
-/

namespace A147704.P13576014322966291126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215885 n : ℚ) / 3

end

end A147704.P13576014322966291126

namespace A147704

/-- `A215885(n)/3` -/
def P13576014322966291126.Spec : Prop :=
  ∀ n, P13576014322966291126.a n = (A147704 n : ℚ)

end A147704

/-! ## A147704.P14501636698053814174

`2*A052536(n)-A076264(n)`
-/

namespace A147704.P14501636698053814174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052536 n - A076264 n

end

end A147704.P14501636698053814174

namespace A147704

/-- `2*A052536(n)-A076264(n)` -/
def P14501636698053814174.Spec : Prop :=
  ∀ n, P14501636698053814174.a n = A147704 n

end A147704

/-! ## A147704.P10355034364287353350

`A076264(n)-2*A123941(n)`
-/

namespace A147704.P10355034364287353350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n - 2 * A123941 n

end

end A147704.P10355034364287353350

namespace A147704

/-- `A076264(n)-2*A123941(n)` -/
def P10355034364287353350.Spec : Prop :=
  ∀ n, P10355034364287353350.a n = A147704 n

end A147704

/-! ## A147704.P16902475961634356487

`A052963(n+1)-A052545(n+1)`
-/

namespace A147704.P16902475961634356487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 (n + 1) - A052545 (n + 1)

end

end A147704.P16902475961634356487

namespace A147704

/-- `A052963(n+1)-A052545(n+1)` -/
def P16902475961634356487.Spec : Prop :=
  ∀ n, P16902475961634356487.a n = A147704 n

end A147704

/-! ## A147704.P1985913664707219762

`A123891(n+1)-A215448(n+2)`
-/

namespace A147704.P1985913664707219762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123891 (n + 1) - A215448 (n + 2)

end

end A147704.P1985913664707219762

namespace A147704

/-- `A123891(n+1)-A215448(n+2)` -/
def P1985913664707219762.Spec : Prop :=
  ∀ n, P1985913664707219762.a n = A147704 n

end A147704

/-! ## A147704.P15068497631784271749

`A123941(n+1)-2*A123941(n)`
-/

namespace A147704.P15068497631784271749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 (n + 1) - 2 * A123941 n

end

end A147704.P15068497631784271749

namespace A147704

/-- `A123941(n+1)-2*A123941(n)` -/
def P15068497631784271749.Spec : Prop :=
  ∀ n, P15068497631784271749.a n = A147704 n

end A147704

/-! ## A147704.P16414662863954123579

`A123891(n+1)-(A052545(n+1)+A052545(n))`
-/

namespace A147704.P16414662863954123579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123891 (n + 1) - (A052545 (n + 1) + A052545 n)

end

end A147704.P16414662863954123579

namespace A147704

/-- `A123891(n+1)-(A052545(n+1)+A052545(n))` -/
def P16414662863954123579.Spec : Prop :=
  ∀ n, P16414662863954123579.a n = A147704 n

end A147704

/-! ## A147704.P33938593929838073

`A052545(n+1)-(A122100(n+1)+A076264(n))`
-/

namespace A147704.P33938593929838073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (n + 1) - (A122100 (n + 1) + A076264 n)

end

end A147704.P33938593929838073

namespace A147704

/-- `A052545(n+1)-(A122100(n+1)+A076264(n))` -/
def P33938593929838073.Spec : Prop :=
  ∀ n, P33938593929838073.a n = A147704 n

end A147704

/-!
# A147706: Number of partitions of n into parts having distinct digital roots (A010888).

The programs for A147706, there is no canonical definition to state claims against.
-/

/-! ## A147706.P10513939698306387521

`A114098(n+1)`
-/

namespace A147706.P10513939698306387521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114098 (n + 1)

end

end A147706.P10513939698306387521

/-! ## A147706.P17673124845927237924

`root(A114098(Δ[n²]-n), 2)²`
-/

namespace A147706.P17673124845927237924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A114098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A147706.P17673124845927237924

/-! ## A147706.P11700384325016048165

`a(n-1)-Δ[-A114098(n)]` with `a(0)=1`
-/

namespace A147706.P11700384325016048165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114098 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A147706.P11700384325016048165

/-! ## A147706.P12974967167135072406

`ratio[A114098(n)]*A114098(n)`
-/

namespace A147706.P12974967167135072406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114098 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A114098 n : ℚ)

end

end A147706.P12974967167135072406

/-! ## A147706.P3511679572815897751

`A001281(2*A114098(n-log2(1/2)))`
-/

namespace A147706.P3511679572815897751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A114098 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A147706.P3511679572815897751

/-! ## A147706.P1699710210538177688

`gcd(A000038(n), A114098(n-log2(1/2)))`
-/

namespace A147706.P1699710210538177688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114098 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A147706.P1699710210538177688

/-! ## A147706.P18321593870016131376

`∑{d}[A114098(n-log2(1/2)), A000010(#)]`
-/

namespace A147706.P18321593870016131376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114098 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A147706.P18321593870016131376

/-! ## A147706.P15991882297585406672

`A007318(∑[n])*A114098(n-log2(1/2))`
-/

namespace A147706.P15991882297585406672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A114098 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A147706.P15991882297585406672

/-! ## A147706.P14562385797281660487

`A114098(n-log2(1/2))%∑[A000032(n)]`
-/

namespace A147706.P14562385797281660487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114098 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147706.P14562385797281660487

/-! ## A147706.P6575714905678610123

`A114098(n-log2(1/2))^(1-A000007(n))`
-/

namespace A147706.P6575714905678610123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114098 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A147706.P6575714905678610123

/-!
# A147716: Triangle of coefficients in expansion of (14 + x)^n.

The programs for A147716, the canonical program `A147716.P16289614370559288185` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147716 has offset 0).

The definition of A147716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3744 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147716.P16289614370559288185

`A027466(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A147716

/-- `A027466(n)*A130321(n)` -/
def P16289614370559288185.Spec : Prop :=
  ∀ n, P16289614370559288185.a n = A147716 n

theorem P16289614370559288185.correct : P16289614370559288185.Spec := by
  intro n
  simp only [A147716]

end A147716

/-! ## A147716.P12572138679947854759

`lcm(A027466(n), A038207(n))`
-/

namespace A147716.P12572138679947854759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027466 n) (A038207 n)

end

end A147716.P12572138679947854759

namespace A147716

/-- `lcm(A027466(n), A038207(n))` -/
def P12572138679947854759.Spec : Prop :=
  ∀ n, (P12572138679947854759.a n : ℤ) = A147716 n

end A147716

/-! ## A147716.P2188682738284494152

`A027466(n)/A007318(n)*A038207(n)`
-/

namespace A147716.P2188682738284494152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A147716.P2188682738284494152

namespace A147716

/-- `A027466(n)/A007318(n)*A038207(n)` -/
def P2188682738284494152.Spec : Prop :=
  ∀ n, P2188682738284494152.a n = (A147716 n : ℚ)

end A147716

/-! ## A147716.P9092608481168743968

`A027466(n)/A027465(n)*A038255(n)`
-/

namespace A147716.P9092608481168743968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A027465 n : ℚ) * (A038255 n : ℚ)

end

end A147716.P9092608481168743968

namespace A147716

/-- `A027466(n)/A027465(n)*A038255(n)` -/
def P9092608481168743968.Spec : Prop :=
  ∀ n, P9092608481168743968.a n = (A147716 n : ℚ)

end A147716

/-! ## A147716.P13297080632503796452

`A027466(n)/A038207(n)*A038231(n)`
-/

namespace A147716.P13297080632503796452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n : ℚ) / (A038207 n : ℚ) * (A038231 n : ℚ)

end

end A147716.P13297080632503796452

namespace A147716

/-- `A027466(n)/A038207(n)*A038231(n)` -/
def P13297080632503796452.Spec : Prop :=
  ∀ n, P13297080632503796452.a n = (A147716 n : ℚ)

end A147716

/-! ## A147716.P5369783388833164208

`A051186(n+1)/A008275(n+1)*A038207(n)`
-/

namespace A147716.P5369783388833164208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051186 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A038207 n : ℚ)

end

end A147716.P5369783388833164208

namespace A147716

/-- `A051186(n+1)/A008275(n+1)*A038207(n)` -/
def P5369783388833164208.Spec : Prop :=
  ∀ n, P5369783388833164208.a n = (A147716 n : ℚ)

end A147716

/-! ## A147716.P165302916494704383

`A027466(n)*A036561(n)/A000265(A036561(n))`
-/

namespace A147716.P165302916494704383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027466 n * A036561 n : ℚ) / (A000265 (A036561 n).toNat : ℚ)

end

end A147716.P165302916494704383

namespace A147716

/-- `A027466(n)*A036561(n)/A000265(A036561(n))` -/
def P165302916494704383.Spec : Prop :=
  ∀ n, P165302916494704383.a n = (A147716 n : ℚ)

end A147716

/-!
# A147718: Primes of the form prime(x)^2 + (prime(x) - 1)^2.

The programs for A147718, the canonical program `A147718.P16689878087894079709` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147718 has offset 1).

The definition of A147718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147718.P16689878087894079709

`record[A010051(A027861(n+1)+1)*A027862(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A147718

/-- `record[A010051(A027861(n+1)+1)*A027862(n+1)]` -/
def P16689878087894079709.Spec : Prop :=
  ∀ n, P16689878087894079709.a n = A147718 (n + 1)

theorem P16689878087894079709.correct : P16689878087894079709.Spec := by
  intro n
  simp only [A147718, Nat.add_sub_cancel]

end A147718

/-! ## A147718.P17336747811454258341

`record[A293958(A006093(n+1))]`
-/

namespace A147718.P17336747811454258341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P17336747811454258341

namespace A147718

/-- `record[A293958(A006093(n+1))]` -/
def P17336747811454258341.Spec : Prop :=
  ∀ n, P17336747811454258341.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P8819003157902090885

`record[A293958(A039915(n+1))]`
-/

namespace A147718.P8819003157902090885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P8819003157902090885

namespace A147718

/-- `record[A293958(A039915(n+1))]` -/
def P8819003157902090885.Spec : Prop :=
  ∀ n, P8819003157902090885.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P3382473741416211844

`record[A125256(A076274(n+2))]`
-/

namespace A147718.P3382473741416211844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A076274 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P3382473741416211844

namespace A147718

/-- `record[A125256(A076274(n+2))]` -/
def P3382473741416211844.Spec : Prop :=
  ∀ n, P3382473741416211844.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P4761507598781906516

`record[A293958(A162753(n)-1)]`
-/

namespace A147718.P4761507598781906516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A162753 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P4761507598781906516

namespace A147718

/-- `record[A293958(A162753(n)-1)]` -/
def P4761507598781906516.Spec : Prop :=
  ∀ n, P4761507598781906516.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P9462630570358841715

`record[A293958(record[A000010(n+1)])]`
-/

namespace A147718.P9462630570358841715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P9462630570358841715

namespace A147718

/-- `record[A293958(record[A000010(n+1)])]` -/
def P9462630570358841715.Spec : Prop :=
  ∀ n, P9462630570358841715.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P13192627629105937666

`record[A125256(A100484(n+1)-1)]`
-/

namespace A147718.P13192627629105937666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A100484 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P13192627629105937666

namespace A147718

/-- `record[A125256(A100484(n+1)-1)]` -/
def P13192627629105937666.Spec : Prop :=
  ∀ n, P13192627629105937666.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P8661894083626362730

`record[A293958(A000040(n+1)-1)]`
-/

namespace A147718.P8661894083626362730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P8661894083626362730

namespace A147718

/-- `record[A293958(A000040(n+1)-1)]` -/
def P8661894083626362730.Spec : Prop :=
  ∀ n, P8661894083626362730.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P12470454946044151895

`record[A293958(A008578(n+2)-1)]`
-/

namespace A147718.P12470454946044151895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A008578 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P12470454946044151895

namespace A147718

/-- `record[A293958(A008578(n+2)-1)]` -/
def P12470454946044151895.Spec : Prop :=
  ∀ n, P12470454946044151895.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P9268403454244987815

`record[A293958(A008864(n+1)-2)]`
-/

namespace A147718.P9268403454244987815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A008864 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P9268403454244987815

namespace A147718

/-- `record[A293958(A008864(n+1)-2)]` -/
def P9268403454244987815.Spec : Prop :=
  ∀ n, P9268403454244987815.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P2359890028130402917

`record[A293958(A000010(A162753(n)))]`
-/

namespace A147718.P2359890028130402917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (A000010 (A162753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P2359890028130402917

namespace A147718

/-- `record[A293958(A000010(A162753(n)))]` -/
def P2359890028130402917.Spec : Prop :=
  ∀ n, P2359890028130402917.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P3322916761095255462

`record[A014442(A100484(n+1)-1)]`
-/

namespace A147718.P3322916761095255462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A100484 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P3322916761095255462

namespace A147718

/-- `record[A014442(A100484(n+1)-1)]` -/
def P3322916761095255462.Spec : Prop :=
  ∀ n, P3322916761095255462.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P6564933168983887009

`record[A014442(A014681(A100484(n+1)))]`
-/

namespace A147718.P6564933168983887009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A014681 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P6564933168983887009

namespace A147718

/-- `record[A014442(A014681(A100484(n+1)))]` -/
def P6564933168983887009.Spec : Prop :=
  ∀ n, P6564933168983887009.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P11078914184290528511

`record[A014442(A004273(A134735(n+1)))]`
-/

namespace A147718.P11078914184290528511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A004273 (A134735 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P11078914184290528511

namespace A147718

/-- `record[A014442(A004273(A134735(n+1)))]` -/
def P11078914184290528511.Spec : Prop :=
  ∀ n, P11078914184290528511.a n = A147718 (n + 1)

end A147718

/-! ## A147718.P10512769954001894828

`record[A259036(A004280(A008864(n+1)))]`
-/

namespace A147718.P10512769954001894828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A004280 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147718.P10512769954001894828

namespace A147718

/-- `record[A259036(A004280(A008864(n+1)))]` -/
def P10512769954001894828.Spec : Prop :=
  ∀ n, P10512769954001894828.a n = A147718 (n + 1)

end A147718

/-!
# A147719: A141479(n+1)/3.

The programs for A147719, there is no canonical definition to state claims against.
-/

/-! ## A147719.P16035419116762280570

`A141479(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147719.P16035419116762280570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141479 (n + 1) : ℚ) / 3

end

end A147719.P16035419116762280570

/-! ## A147719.P11563920988072511254

`ceil(A000111(n+1)/3)`
-/

namespace A147719.P11563920988072511254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000111 (n + 1) : ℚ) / 3⌉

end

end A147719.P11563920988072511254

/-! ## A147719.P3465889333966053268

`ceil(A010094(A000124(n))/3)`
-/

namespace A147719.P3465889333966053268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010094 (A000124 n).toNat : ℚ) / 3⌉

end

end A147719.P3465889333966053268

/-! ## A147719.P4239772203701339088

`ceil(A010094(A133263(n))/3)`
-/

namespace A147719.P4239772203701339088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010094 (A133263 n).toNat : ℚ) / 3⌉

end

end A147719.P4239772203701339088

/-! ## A147719.P14965460133295274079

`ceil(A147315(A000217(n))/3)`
-/

namespace A147719.P14965460133295274079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A147315 (A000217 n).toNat : ℚ) / 3⌉

end

end A147719.P14965460133295274079

/-!
# A147720: Riordan array (1, x(1-x)/(1-3x)).

The programs for A147720, there is no canonical definition to state claims against.
-/

/-! ## A147720.P14410533875184735304

`A113221(A122538(n))`
-/

namespace A147720.P14410533875184735304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A122538 n).toNat

end

end A147720.P14410533875184735304

/-! ## A147720.P1059226195317540530

`A113219(A127631(n))`
-/

namespace A147720.P1059226195317540530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A127631 n).toNat

end

end A147720.P1059226195317540530

/-! ## A147720.P4363552622632947499

`A170889(A090238(n))`
-/

namespace A147720.P4363552622632947499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 (A090238 n).toNat

end

end A147720.P4363552622632947499

/-! ## A147720.P12935367453507486846

`A367306(A205813(n))`
-/

namespace A147720.P12935367453507486846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A205813 n).toNat

end

end A147720.P12935367453507486846

/-! ## A147720.P11426322261530419583

`A275328(n)*A275333(A275281(3*n))`
-/

namespace A147720.P11426322261530419583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275328 n * A275333 (A275281 (3 * n)).toNat

end

end A147720.P11426322261530419583

/-!
# A147721: a(n) = C(2,n) DELTA C(0,n).

The programs for A147721, there is no canonical definition to state claims against.
-/

/-! ## A147721.P2667474502567463563

`A172094(n)-A184955(A005291(n+1))`
-/

namespace A147721.P2667474502567463563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 n - A184955 (A005291 (n + 1)).toNat

end

end A147721.P2667474502567463563

/-! ## A147721.P18396066760545853054

`A172094(n)-A284977(A172094(n))`
-/

namespace A147721.P18396066760545853054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172094 n - A284977 (A172094 n).toNat

end

end A147721.P18396066760545853054

/-! ## A147721.P14466693391501183059

`A007306(A286718(n))%A293062(n)`
-/

namespace A147721.P14466693391501183059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 (A286718 n).toNat) (A293062 n)

end

end A147721.P14466693391501183059

/-! ## A147721.P15881819554461063088

`and(A172094(A062399(n)), A321627(n))`
-/

namespace A147721.P15881819554461063088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172094 (A062399 n).toNat) (A321627 n)

end

end A147721.P15881819554461063088

/-!
# A147722: Row sums of Riordan array ((1-3x)/(1-4x+x^2), x(1-x)/(1-4x+x^2)).

The programs for A147722, the canonical program `A147722.P12009439855329277847` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147722 has offset 0).

The definition of A147722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147722.P12009439855329277847

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147722

/-- `5*a(n-1)-2*a(n-2)` -/
def P12009439855329277847.Spec : Prop :=
  ∀ n, P12009439855329277847.a n = A147722 n

theorem P12009439855329277847.correct : P12009439855329277847.Spec := by
  intro n
  simp only [A147722]

end A147722

/-! ## A147722.P17656866217560065811

`ogf((1-3x)/(1-5x+2x^2))`
-/

namespace A147722.P17656866217560065811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -5, 2] n

end

end A147722.P17656866217560065811

namespace A147722

/-- `ogf((1-3x)/(1-5x+2x^2))` -/
def P17656866217560065811.Spec : Prop :=
  ∀ n, P17656866217560065811.a n = A147722 n

end A147722

/-! ## A147722.P7555976901230058051

`lcm(5, a(n-1))-a(n-2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A147722.P7555976901230058051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - a (n - 2) - a (n - 2)

end

end A147722.P7555976901230058051

namespace A147722

/-- `lcm(5, a(n-1))-a(n-2)-a(n-2)` -/
def P7555976901230058051.Spec : Prop :=
  ∀ n, P7555976901230058051.a n = A147722 n

end A147722

/-! ## A147722.P12673326511696717196

`A249581(4*n+1)`
-/

namespace A147722.P12673326511696717196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (4 * n + 1)

end

end A147722.P12673326511696717196

namespace A147722

/-- `A249581(4*n+1)` -/
def P12673326511696717196.Spec : Prop :=
  ∀ n, P12673326511696717196.a n = A147722 n

end A147722

/-! ## A147722.P17053491698215282476

`abs(Δ[A152594(n)/2])`
-/

namespace A147722.P17053491698215282476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152594 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A147722.P17053491698215282476

namespace A147722

/-- `abs(Δ[A152594(n)/2])` -/
def P17053491698215282476.Spec : Prop :=
  ∀ n, P17053491698215282476.a n = (A147722 n : ℚ)

end A147722

/-! ## A147722.P7468629064429925044

`A052984(n)-A005824(2*n)`
-/

namespace A147722.P7468629064429925044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A005824 (2 * n)

end

end A147722.P7468629064429925044

namespace A147722

/-- `A052984(n)-A005824(2*n)` -/
def P7468629064429925044.Spec : Prop :=
  ∀ n, P7468629064429925044.a n = A147722 n

end A147722

/-! ## A147722.P12187316883437427964

`A052984(n)+A106709(n)/2`
-/

namespace A147722.P12187316883437427964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052984 n : ℚ) + (A106709 n : ℚ) / 2

end

end A147722.P12187316883437427964

namespace A147722

/-- `A052984(n)+A106709(n)/2` -/
def P12187316883437427964.Spec : Prop :=
  ∀ n, P12187316883437427964.a n = (A147722 n : ℚ)

end A147722

/-! ## A147722.P5476746948565492316

`A052984(n)-A249581(4*n)`
-/

namespace A147722.P5476746948565492316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A249581 (4 * n)

end

end A147722.P5476746948565492316

namespace A147722

/-- `A052984(n)-A249581(4*n)` -/
def P5476746948565492316.Spec : Prop :=
  ∀ n, P5476746948565492316.a n = A147722 n

end A147722

/-! ## A147722.P1740224520736995208

`A005824(2*n+1)-A005824(2*n)`
-/

namespace A147722.P1740224520736995208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (2 * n + 1) - A005824 (2 * n)

end

end A147722.P1740224520736995208

namespace A147722

/-- `A005824(2*n+1)-A005824(2*n)` -/
def P1740224520736995208.Spec : Prop :=
  ∀ n, P1740224520736995208.a n = A147722 n

end A147722

/-! ## A147722.P124973009755646811

`A106709(n)+A052913(n)`
-/

namespace A147722.P124973009755646811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106709 n + A052913 n

end

end A147722.P124973009755646811

namespace A147722

/-- `A106709(n)+A052913(n)` -/
def P124973009755646811.Spec : Prop :=
  ∀ n, P124973009755646811.a n = A147722 n

end A147722

/-! ## A147722.P12688020793566979946

`2*A052984(n)-A052913(n)`
-/

namespace A147722.P12688020793566979946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052984 n - A052913 n

end

end A147722.P12688020793566979946

namespace A147722

/-- `2*A052984(n)-A052913(n)` -/
def P12688020793566979946.Spec : Prop :=
  ∀ n, P12688020793566979946.a n = A147722 n

end A147722

/-! ## A147722.P10381288781261116594

`A052913(n)-A079162(2*n)`
-/

namespace A147722.P10381288781261116594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n - A079162 (2 * n)

end

end A147722.P10381288781261116594

namespace A147722

/-- `A052913(n)-A079162(2*n)` -/
def P10381288781261116594.Spec : Prop :=
  ∀ n, P10381288781261116594.a n = A147722 n

end A147722

/-! ## A147722.P17572635280309242102

`A106709(n)+A079162(2*n+1)`
-/

namespace A147722.P17572635280309242102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106709 n + A079162 (2 * n + 1)

end

end A147722.P17572635280309242102

namespace A147722

/-- `A106709(n)+A079162(2*n+1)` -/
def P17572635280309242102.Spec : Prop :=
  ∀ n, P17572635280309242102.a n = A147722 n

end A147722

/-! ## A147722.P11466528420971630543

`A079162(2*n+1)-A079162(2*n)`
-/

namespace A147722.P11466528420971630543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n + 1) - A079162 (2 * n)

end

end A147722.P11466528420971630543

namespace A147722

/-- `A079162(2*n+1)-A079162(2*n)` -/
def P11466528420971630543.Spec : Prop :=
  ∀ n, P11466528420971630543.a n = A147722 n

end A147722

/-! ## A147722.P711972738944025808

`A052913(n)+A052984(n)-A107839(n)`
-/

namespace A147722.P711972738944025808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n + (A052984 n - A107839 n)

end

end A147722.P711972738944025808

namespace A147722

/-- `A052913(n)+A052984(n)-A107839(n)` -/
def P711972738944025808.Spec : Prop :=
  ∀ n, P711972738944025808.a n = A147722 n

end A147722

/-! ## A147722.P933064631066182820

`A020698(n)+A106709(n)-A107839(n)`
-/

namespace A147722.P933064631066182820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n + (A106709 n - A107839 n)

end

end A147722.P933064631066182820

namespace A147722

/-- `A020698(n)+A106709(n)-A107839(n)` -/
def P933064631066182820.Spec : Prop :=
  ∀ n, P933064631066182820.a n = A147722 n

end A147722

/-!
# A147723: Riordan array (1, x(1 - 4x)/(1 - 7x + 3x^2)).

The programs for A147723, there is no canonical definition to state claims against.
-/

/-! ## A147723.P11759031668062304599

`A108337(A155971(n)*A238802(n))`
-/

namespace A147723.P11759031668062304599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108337 (A155971 n * A238802 n).toNat

end

end A147723.P11759031668062304599

/-! ## A147723.P11455667735104171077

`A257673(n)*A321405(A228405(n+2))`
-/

namespace A147723.P11455667735104171077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 n * A321405 (A228405 (n + 2)).toNat

end

end A147723.P11455667735104171077

/-!
# A147724: a(n) = C(3,n) DELTA C(0,n).

The programs for A147724, there is no canonical definition to state claims against.
-/

/-! ## A147724.P6674418354130237230

`or(A102230(n), A102242(A133146(n)))`
-/

namespace A147724.P6674418354130237230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102230 n) (A102242 (A133146 n).toNat)

end

end A147724.P6674418354130237230

/-! ## A147724.P1188611052829899793

`or(A102230(n), A304109(A304121(n)))`
-/

namespace A147724.P1188611052829899793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102230 n) (A304109 (A304121 n).toNat)

end

end A147724.P1188611052829899793

/-! ## A147724.P2113021349333250179

`A323073(A192538(n+1))+A102230(n)`
-/

namespace A147724.P2113021349333250179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323073 (A192538 (n + 1)).toNat + A102230 n

end

end A147724.P2113021349333250179

/-! ## A147724.P5063596091244208104

`or(A010060(A207535(n+1)), A102230(n))`
-/

namespace A147724.P5063596091244208104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A207535 (n + 1)).toNat) (A102230 n)

end

end A147724.P5063596091244208104

/-! ## A147724.P4381962630105329399

`or(A102230(n), A341347(A002805(n+2)))`
-/

namespace A147724.P4381962630105329399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102230 n) (A341347 (A002805 (n + 2)).toNat)

end

end A147724.P4381962630105329399

/-!
# A147725: Row sums of triangle in A147724.

The programs for A147725, the canonical program `A147725.P13658814057845490048` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147725 has offset 0).

The definition of A147725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147725.P13658814057845490048

`9*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=2, a(2)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147725

/-- `9*a(n-1)-11*a(n-2)` -/
def P13658814057845490048.Spec : Prop :=
  ∀ n, P13658814057845490048.a n = A147725 n

theorem P13658814057845490048.correct : P13658814057845490048.Spec := by
  intro n
  simp only [A147725]

end A147725

/-! ## A147725.P9257711419364448192

`ogf((1-7x+3x^2)/(1-9x+11x^2))`
-/

namespace A147725.P9257711419364448192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 3] [1, -9, 11] n

end

end A147725.P9257711419364448192

namespace A147725

/-- `ogf((1-7x+3x^2)/(1-9x+11x^2))` -/
def P9257711419364448192.Spec : Prop :=
  ∀ n, P9257711419364448192.a n = A147725 n

end A147725

/-!
# A147728: Number of permutations of 1..n with all sums of 2 through 6 adjacent terms respectively unique.

The programs for A147728, there is no canonical definition to state claims against.
-/

/-! ## A147728.P15863447272138480859

`A147729(A077168(n))`
-/

namespace A147728.P15863447272138480859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147729 (A077168 n).toNat

end

end A147728.P15863447272138480859

/-! ## A147728.P10745457563609045865

`A147730(record[A077168(n)])`
-/

namespace A147728.P10745457563609045865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147728.P10745457563609045865

/-! ## A147728.P872039446222700940

`A147729(A161952(n+1))`
-/

namespace A147728.P872039446222700940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147729 (A161952 (n + 1)).toNat

end

end A147728.P872039446222700940

/-! ## A147728.P13790757715494297365

`A147729(A054703(2^n))`
-/

namespace A147728.P13790757715494297365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147729 (A054703 (2 ^ n)).toNat

end

end A147728.P13790757715494297365

/-! ## A147728.P14995799492194427818

`A147729(∑[ratio[A269626(n)]])`
-/

namespace A147728.P14995799492194427818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147729 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147728.P14995799492194427818

/-!
# A147729: Number of permutations of 1..n with all sums of 2 through 7 adjacent terms respectively unique.

The programs for A147729, there is no canonical definition to state claims against.
-/

/-! ## A147729.P5384384400174312398

`A147730(A005496(n))`
-/

namespace A147729.P5384384400174312398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147730 (A005496 n).toNat

end

end A147729.P5384384400174312398

/-! ## A147729.P10276166950546388927

`A147730(∑[A269626(n)])`
-/

namespace A147729.P10276166950546388927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147729.P10276166950546388927

/-! ## A147729.P5016062589578412822

`A147730(A043320(n+1))`
-/

namespace A147729.P5016062589578412822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147730 (A043320 (n + 1)).toNat

end

end A147729.P5016062589578412822

/-! ## A147729.P15892919143361388150

`A147730(A044917(n+1))`
-/

namespace A147729.P15892919143361388150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147730 (A044917 (n + 1)).toNat

end

end A147729.P15892919143361388150

/-! ## A147729.P13092956152156333272

`A147730(A187829(n+1))`
-/

namespace A147729.P13092956152156333272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147730 (A187829 (n + 1)).toNat

end

end A147729.P13092956152156333272

/-!
# A147731: Number of permutations of 0..n-1 with all sums of 2 through 2 adjacent terms squared respectively unique.

The programs for A147731, there is no canonical definition to state claims against.
-/

/-! ## A147731.P13227574288664654429

`(n+1)*A257735(a(n-1))` with `a(0)=1`
-/

namespace A147731.P13227574288664654429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A257735 (a (n - 1)).toNat

end

end A147731.P13227574288664654429

/-! ## A147731.P12239614802199111450

`∑[A055034(A014333(n))]`
-/

namespace A147731.P12239614802199111450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A014333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147731.P12239614802199111450

/-!
# A147732: Number of permutations of 0..n-1 with all sums of 2 through 3 adjacent terms squared respectively unique.

The programs for A147732, there is no canonical definition to state claims against.
-/

/-! ## A147732.P47018016574507457

`A147734(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A147732.P47018016574507457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147734 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A147732.P47018016574507457

/-! ## A147732.P3964020592954801334

`A028310(A147733(n+1))`
-/

namespace A147732.P3964020592954801334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147733 (n + 1)).toNat

end

end A147732.P3964020592954801334

/-! ## A147732.P12481191182715062933

`A028310(A147734(n+1))`
-/

namespace A147732.P12481191182715062933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147734 (n + 1)).toNat

end

end A147732.P12481191182715062933

/-!
# A147733: Number of permutations of 0..n-1 with all sums of 2 through 4 adjacent terms squared respectively unique.

The programs for A147733, there is no canonical definition to state claims against.
-/

/-! ## A147733.P5152439954714807412

`A147734(A061147(n+1))`
-/

namespace A147733.P5152439954714807412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147734 (A061147 (n + 1)).toNat

end

end A147733.P5152439954714807412

/-! ## A147733.P11455838339303847331

`A147734(A062399(n)+1)`
-/

namespace A147733.P11455838339303847331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147734 (A062399 n + 1).toNat

end

end A147733.P11455838339303847331

/-! ## A147733.P15838282291387180054

`A147735(A062399(n)+1)`
-/

namespace A147733.P15838282291387180054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147735 (A062399 n + 1).toNat

end

end A147733.P15838282291387180054

/-! ## A147733.P6834801925428088760

`A147734(A066638(n+1))`
-/

namespace A147733.P6834801925428088760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147734 (A066638 (n + 1)).toNat

end

end A147733.P6834801925428088760

/-! ## A147733.P11704220392131948627

`A147734(A351870(n)+1)`
-/

namespace A147733.P11704220392131948627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147734 (A351870 n + 1).toNat

end

end A147733.P11704220392131948627

/-!
# A147736: Number of permutations of 1..n with all sums of 2 through 2 adjacent terms squared respectively unique.

The programs for A147736, there is no canonical definition to state claims against.
-/

/-! ## A147736.P4223572903624265266

`A331173((n+1)!)`
-/

namespace A147736.P4223572903624265266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 (Nat.factorial (n + 1))

end

end A147736.P4223572903624265266

/-! ## A147736.P11521599612749495302

`A331173(∏[n+1])`
-/

namespace A147736.P11521599612749495302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A147736.P11521599612749495302

/-! ## A147736.P13581980312472997182

`record[A331173(A084938(n))]`
-/

namespace A147736.P13581980312472997182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331173 (A084938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147736.P13581980312472997182

/-! ## A147736.P11954747907650339814

`A052410(A147741(n+1))`
-/

namespace A147736.P11954747907650339814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A147741 (n + 1)).toNat

end

end A147736.P11954747907650339814

/-!
# A147737: Number of permutations of 1..n with all sums of 2 through 3 adjacent terms squared respectively unique.

The programs for A147737, there is no canonical definition to state claims against.
-/

/-! ## A147737.P17949598780646892526

`A147738(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A147737.P17949598780646892526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147738 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A147737.P17949598780646892526

/-! ## A147737.P305342699230224280

`A028310(A147738(n+1))`
-/

namespace A147737.P305342699230224280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147738 (n + 1)).toNat

end

end A147737.P305342699230224280

/-! ## A147737.P6642558092314563821

`A060125(A147740(n+1))`
-/

namespace A147737.P6642558092314563821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A147740 (n + 1)).toNat

end

end A147737.P6642558092314563821

/-!
# A147738: Number of permutations of 1..n with all sums of 2 through 4 adjacent terms squared respectively unique.

The programs for A147738, there is no canonical definition to state claims against.
-/

/-! ## A147738.P355681422450668805

`A147739(∑[1-(∑{digits}[n, #]-n)])`
-/

namespace A147738.P355681422450668805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147739 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147738.P355681422450668805

/-! ## A147738.P4000544117124185047

`A147739(1-(∑{digits}[n, #]-n)+n)`
-/

namespace A147738.P4000544117124185047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147739 (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A147738.P4000544117124185047

/-! ## A147738.P16337410662487579502

`A147740(A030283(n+1))`
-/

namespace A147738.P16337410662487579502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (A030283 (n + 1)).toNat

end

end A147738.P16337410662487579502

/-! ## A147738.P9094440871659466824

`A147740(A062399(n+1))`
-/

namespace A147738.P9094440871659466824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (A062399 (n + 1)).toNat

end

end A147738.P9094440871659466824

/-! ## A147738.P162894542310171104

`A147739(A085908(n+1))`
-/

namespace A147738.P162894542310171104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147739 (A085908 (n + 1)).toNat

end

end A147738.P162894542310171104

/-!
# A147739: Number of permutations of 1..n with all sums of 2 through 5 adjacent terms squared respectively unique.

The programs for A147739, there is no canonical definition to state claims against.
-/

/-! ## A147739.P16777852348358464156

`A147740(∑[A089170(n)])`
-/

namespace A147739.P16777852348358464156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147739.P16777852348358464156

/-! ## A147739.P7407918805615546610

`A147740(A030283(n)+1)`
-/

namespace A147739.P7407918805615546610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (A030283 n + 1).toNat

end

end A147739.P7407918805615546610

/-! ## A147739.P9834163567438313558

`A147740(A032980(n+1))`
-/

namespace A147739.P9834163567438313558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (A032980 (n + 1)).toNat

end

end A147739.P9834163567438313558

/-! ## A147739.P13337897365102833551

`A147740(A061147(n+1))`
-/

namespace A147739.P13337897365102833551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (A061147 (n + 1)).toNat

end

end A147739.P13337897365102833551

/-! ## A147739.P13958559921522201943

`A147740(A062399(n)+1)`
-/

namespace A147739.P13958559921522201943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147740 (A062399 n + 1).toNat

end

end A147739.P13958559921522201943

/-!
# A147742: Number of permutations of 2..n+1 with all sums of 2 through 3 adjacent terms squared respectively unique.

The programs for A147742, there is no canonical definition to state claims against.
-/

/-! ## A147742.P15952867490849731292

`A147744(∑[A361675(n)])`
-/

namespace A147742.P15952867490849731292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147742.P15952867490849731292

/-! ## A147742.P3211527905939657891

`A152351(∑[A361675(n)])`
-/

namespace A147742.P3211527905939657891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152351 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147742.P3211527905939657891

/-! ## A147742.P12556612609484134176

`filter[A152351(n+1), A004547(#)]`
-/

namespace A147742.P12556612609484134176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004547 (f1 j).toNat = 1) n)

end

end A147742.P12556612609484134176

/-!
# A147743: Number of permutations of 2..n+1 with all sums of 2 through 4 adjacent terms squared respectively unique.

The programs for A147743, there is no canonical definition to state claims against.
-/

/-! ## A147743.P8443438249799488777

`A147744(Δ[n²]-∑{digits}[n, #])`
-/

namespace A147743.P8443438249799488777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A147743.P8443438249799488777

/-! ## A147743.P15860381777526555345

`A147744(∑[A128936(n)])`
-/

namespace A147743.P15860381777526555345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147744 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147743.P15860381777526555345

/-! ## A147743.P11058186265453279603

`A147745(∑[A128936(n)])`
-/

namespace A147743.P11058186265453279603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147743.P11058186265453279603

/-! ## A147743.P10643603962339275950

`A147744(A173588(∑[n]))`
-/

namespace A147743.P10643603962339275950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147744 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147743.P10643603962339275950

/-! ## A147743.P8935615906220718381

`A147745(A062399(n+1))`
-/

namespace A147743.P8935615906220718381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147745 (A062399 (n + 1)).toNat

end

end A147743.P8935615906220718381

/-!
# A147744: Number of permutations of 2..n+1 with all sums of 2 through 5 adjacent terms squared respectively unique.

The programs for A147744, there is no canonical definition to state claims against.
-/

/-! ## A147744.P6358160206173763505

`record[and(n-11, A147745(n+1))]`
-/

namespace A147744.P6358160206173763505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 11) (A147745 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147744.P6358160206173763505

/-! ## A147744.P17153390923271371402

`A147745(∏{p}[n+1, #]^∏{e}[n+1, #])`
-/

namespace A147744.P17153390923271371402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147745 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A147744.P17153390923271371402

/-! ## A147744.P13377289225934306698

`A147745(A186753(∑[n]))`
-/

namespace A147744.P13377289225934306698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147745 (A186753 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147744.P13377289225934306698

/-! ## A147744.P6592663771126208115

`A147745(A062399(n)+1)`
-/

namespace A147744.P6592663771126208115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147745 (A062399 n + 1).toNat

end

end A147744.P6592663771126208115

/-! ## A147744.P7234251068587955186

`A147745(∑[∑[A147770(n)]])`
-/

namespace A147744.P7234251068587955186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147745 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147744.P7234251068587955186

/-!
# A147746: Riordan array (1, x(1-2x)/(1-3x+x^2)).

The programs for A147746, there is no canonical definition to state claims against.
-/

/-! ## A147746.P10275936279236837002

`A123579(A000196(A269944(n)))`
-/

namespace A147746.P10275936279236837002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (A000196 (A269944 n).toNat).toNat

end

end A147746.P10275936279236837002

/-! ## A147746.P12793313345778006347

`A106566(n)-A011731(A113081(n))`
-/

namespace A147746.P12793313345778006347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n - A011731 (A113081 n).toNat

end

end A147746.P12793313345778006347

/-! ## A147746.P11890050919528412281

`A205574(n)-A010893(A069777(n))`
-/

namespace A147746.P11890050919528412281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n - A010893 ((A069777 n).toNat + 13)

end

end A147746.P11890050919528412281

/-! ## A147746.P16819669823810647637

`A205574(n)-A010893(A091351(n))`
-/

namespace A147746.P16819669823810647637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n - A010893 ((A091351 n).toNat + 13)

end

end A147746.P16819669823810647637

/-! ## A147746.P8576612066435461945

`A106566(n)-A392374(A227655(n))`
-/

namespace A147746.P8576612066435461945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n - A392374 (A227655 n).toNat

end

end A147746.P8576612066435461945

/-!
# A147747: Riordan array ((1-3x+x^2)/(1-4x+3x^2), x(1-2x)/(1-4x+3x^2)).

The programs for A147747, there is no canonical definition to state claims against.
-/

/-! ## A147747.P237902844747006157

`A039599(n)-A102683(A001497(n))`
-/

namespace A147747.P237902844747006157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n - A102683 (A001497 n).toNat

end

end A147747.P237902844747006157

/-! ## A147747.P5368373573996566878

`A039599(n)-A102683(A033842(n))`
-/

namespace A147747.P5368373573996566878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n - A102683 (A033842 n).toNat

end

end A147747.P5368373573996566878

/-! ## A147747.P16888610757359161466

`A039599(n)-A011744(A167015(n))`
-/

namespace A147747.P16888610757359161466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n - A011744 (A167015 n).toNat

end

end A147747.P16888610757359161466

/-! ## A147747.P13469977546601697472

`A039599(n)-A185284(A141751(n))`
-/

namespace A147747.P13469977546601697472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n - A185284 (A141751 n).toNat

end

end A147747.P13469977546601697472

/-! ## A147747.P11209627447193141763

`A039599(n)-A084904(A075458(n+5))`
-/

namespace A147747.P11209627447193141763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n - A084904 (A075458 (n + 5)).toNat

end

end A147747.P11209627447193141763

/-!
# A147748: Row sums of Riordan array ((1-3x+x^2)/(1-4x+3x^2), x(1-2x)/(1-4x+3x^2)).

The programs for A147748, the canonical program `A147748.P16670640506720066159` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147748 has offset 0).

The definition of A147748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147748.P16670640506720066159

`5*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147748

/-- `5*a(n-1)-5*a(n-2)` -/
def P16670640506720066159.Spec : Prop :=
  ∀ n, P16670640506720066159.a n = A147748 n

theorem P16670640506720066159.correct : P16670640506720066159.Spec := by
  intro n
  simp only [A147748]

end A147748

/-! ## A147748.P14985728726403506011

`ogf((1-3x+x^2)/(1-5x+5x^2))`
-/

namespace A147748.P14985728726403506011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -5, 5] n

end

end A147748.P14985728726403506011

namespace A147748

/-- `ogf((1-3x+x^2)/(1-5x+5x^2))` -/
def P14985728726403506011.Spec : Prop :=
  ∀ n, P14985728726403506011.a n = A147748 n

end A147748

/-! ## A147748.P15120216316168675262

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A147748.P15120216316168675262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A147748.P15120216316168675262

namespace A147748

/-- `5*(a(n-1)-a(n-2))` -/
def P15120216316168675262.Spec : Prop :=
  ∀ n, P15120216316168675262.a n = A147748 n

theorem P15120216316168675262.correct : P15120216316168675262.Spec := by
  intro n
  simp only [A147748, Nat.add_sub_cancel, A147748.P15120216316168675262.a, A147748.P16670640506720066159.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147748

/-! ## A147748.P15651057414896393587

`A178381(2*n)`
-/

namespace A147748.P15651057414896393587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (2 * n)

end

end A147748.P15651057414896393587

namespace A147748

/-- `A178381(2*n)` -/
def P15651057414896393587.Spec : Prop :=
  ∀ n, P15651057414896393587.a n = A147748 n

end A147748

/-! ## A147748.P4275136474493718486

`record[A178381(and(n, n+1))]`
-/

namespace A147748.P4275136474493718486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P4275136474493718486

namespace A147748

/-- `record[A178381(and(n, n+1))]` -/
def P4275136474493718486.Spec : Prop :=
  ∀ n, P4275136474493718486.a n = A147748 n

end A147748

/-! ## A147748.P9900283920937378242

`record[A178381(n)/(-1)^n]`
-/

namespace A147748.P9900283920937378242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178381 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P9900283920937378242

namespace A147748

/-- `record[A178381(n)/(-1)^n]` -/
def P9900283920937378242.Spec : Prop :=
  ∀ n, P9900283920937378242.a n = (A147748 n : ℚ)

end A147748

/-! ## A147748.P989573038866572938

`a(n-1)*ratio[A093129(n)]` with `a(0)=1, a(1)=2`
-/

namespace A147748.P989573038866572938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A147748.P989573038866572938

namespace A147748

/-- `a(n-1)*ratio[A093129(n)]` -/
def P989573038866572938.Spec : Prop :=
  ∀ n, P989573038866572938.a n = (A147748 n : ℚ)

end A147748

/-! ## A147748.P6607439039225840287

`A153367(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A147748.P6607439039225840287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A153367 (n - 1) + a (n - 1)

end

end A147748.P6607439039225840287

namespace A147748

/-- `A153367(n-1)+a(n-1)` -/
def P6607439039225840287.Spec : Prop :=
  ∀ n, P6607439039225840287.a n = A147748 n

end A147748

/-! ## A147748.P10343635833294969567

`record[A178381(A014681(n))]`
-/

namespace A147748.P10343635833294969567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P10343635833294969567

namespace A147748

/-- `record[A178381(A014681(n))]` -/
def P10343635833294969567.Spec : Prop :=
  ∀ n, P10343635833294969567.a n = A147748 n

end A147748

/-! ## A147748.P8926218720791089734

`record[A178381(A237420(n))]`
-/

namespace A147748.P8926218720791089734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P8926218720791089734

namespace A147748

/-- `record[A178381(A237420(n))]` -/
def P8926218720791089734.Spec : Prop :=
  ∀ n, P8926218720791089734.a n = A147748 n

end A147748

/-! ## A147748.P15048550684936625505

`A094865(n)+A033193(n)`
-/

namespace A147748.P15048550684936625505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + A033193 n

end

end A147748.P15048550684936625505

namespace A147748

/-- `A094865(n)+A033193(n)` -/
def P15048550684936625505.Spec : Prop :=
  ∀ n, P15048550684936625505.a n = A147748 n

end A147748

/-! ## A147748.P16490200277017909380

`record[A178381(A006257(n)+1)]`
-/

namespace A147748.P16490200277017909380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P16490200277017909380

namespace A147748

/-- `record[A178381(A006257(n)+1)]` -/
def P16490200277017909380.Spec : Prop :=
  ∀ n, P16490200277017909380.a n = A147748 n

end A147748

/-! ## A147748.P16509147493889541217

`record[A178381(A026741(n)+1)]`
-/

namespace A147748.P16509147493889541217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P16509147493889541217

namespace A147748

/-- `record[A178381(A026741(n)+1)]` -/
def P16509147493889541217.Spec : Prop :=
  ∀ n, P16509147493889541217.a n = A147748 n

end A147748

/-! ## A147748.P16573703492209090006

`A136775(n+1)-A093131(n)`
-/

namespace A147748.P16573703492209090006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1) - A093131 n

end

end A147748.P16573703492209090006

namespace A147748

/-- `A136775(n+1)-A093131(n)` -/
def P16573703492209090006.Spec : Prop :=
  ∀ n, P16573703492209090006.a n = A147748 n

end A147748

/-! ## A147748.P5344160360455122748

`(A093129(n)+A052936(n))/2`
-/

namespace A147748.P5344160360455122748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093129 n + A052936 n : ℚ) / 2

end

end A147748.P5344160360455122748

namespace A147748

/-- `(A093129(n)+A052936(n))/2` -/
def P5344160360455122748.Spec : Prop :=
  ∀ n, P5344160360455122748.a n = (A147748 n : ℚ)

end A147748

/-! ## A147748.P16932288948101179320

`record[root(A178381(n), A020639(n+2)-1)]`
-/

namespace A147748.P16932288948101179320
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A178381 n : ℝ) ^ (1 / (A020639 (n + 2) - 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147748.P16932288948101179320

namespace A147748

/-- `record[root(A178381(n), A020639(n+2)-1)]` -/
def P16932288948101179320.Spec : Prop :=
  ∀ n, P16932288948101179320.a n = (A147748 n : ℝ)

end A147748

/-! ## A147748.P3656472466893787394

`A033190(n+1)+A094865(n)-A033190(n)`
-/

namespace A147748.P3656472466893787394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) + (A094865 n - A033190 n)

end

end A147748.P3656472466893787394

namespace A147748

/-- `A033190(n+1)+A094865(n)-A033190(n)` -/
def P3656472466893787394.Spec : Prop :=
  ∀ n, P3656472466893787394.a n = A147748 n

end A147748

/-! ## A147748.P17561574903701018797

`A208736(n+1)+A208736(n+1)+A055819(n)`
-/

namespace A147748.P17561574903701018797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208736 (n + 1) + (A208736 (n + 1) + A055819 n)

end

end A147748.P17561574903701018797

namespace A147748

/-- `A208736(n+1)+A208736(n+1)+A055819(n)` -/
def P17561574903701018797.Spec : Prop :=
  ∀ n, P17561574903701018797.a n = A147748 n

end A147748

/-! ## A147748.P4475980974375645722

`A033190(n+1)+A033191(n)-A001519(n+1)`
-/

namespace A147748.P4475980974375645722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1) + (A033191 n - A001519 (n + 1))

end

end A147748.P4475980974375645722

namespace A147748

/-- `A033190(n+1)+A033191(n)-A001519(n+1)` -/
def P4475980974375645722.Spec : Prop :=
  ∀ n, P4475980974375645722.a n = A147748 n

end A147748

/-! ## A147748.P1045441615474150078

`A189315(n)/5`
-/

namespace A147748.P1045441615474150078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189315 n : ℚ) / 5

end

end A147748.P1045441615474150078

namespace A147748

/-- `A189315(n)/5` -/
def P1045441615474150078.Spec : Prop :=
  ∀ n, P1045441615474150078.a n = (A147748 n : ℚ)

end A147748

/-!
# A147750: Riordan array ((1-x-x^2)/(1-x-2x^2), x(1-x)/(1-2x)).

The programs for A147750, there is no canonical definition to state claims against.
-/

/-! ## A147750.P11299098517424485027

`A089942(n)-A102683(A001497(n))`
-/

namespace A147750.P11299098517424485027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 n - A102683 (A001497 n).toNat

end

end A147750.P11299098517424485027

/-! ## A147750.P9246737849879624828

`A089942(n)-A102683(A033842(n))`
-/

namespace A147750.P9246737849879624828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 n - A102683 (A033842 n).toNat

end

end A147750.P9246737849879624828

/-! ## A147750.P9845339581381932567

`A089942(n)-A011744(A167015(n))`
-/

namespace A147750.P9845339581381932567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 n - A011744 (A167015 n).toNat

end

end A147750.P9845339581381932567

/-! ## A147750.P2813955139365509238

`A089942(n)-A185284(A141751(n))`
-/

namespace A147750.P2813955139365509238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 n - A185284 (A141751 n).toNat

end

end A147750.P2813955139365509238

/-! ## A147750.P11166662303040647188

`A089942(n)-A049320(A326626(n)!)`
-/

namespace A147750.P11166662303040647188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 n - A049320 (Nat.factorial (A326626 n).toNat)

end

end A147750.P11166662303040647188

/-!
# A147751: Number of nontrivial (i.e., containing two or more members) subsets of {1,2,3,...,n} whose geometric mean is an integer.

The programs for A147751, there is no canonical definition to state claims against.
-/

/-! ## A147751.P5843416462387232956

`∑[Δ[A326027(n)]-1]`
-/

namespace A147751.P5843416462387232956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147751.P5843416462387232956

/-! ## A147751.P15893492911867339816

`∑[A082553(n+1)-1]`
-/

namespace A147751.P15893492911867339816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082553 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147751.P15893492911867339816

/-! ## A147751.P15644781089066546436

`A326027(n+1)-(n+1)`
-/

namespace A147751.P15644781089066546436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 (n + 1) - (n + 1 : ℤ)

end

end A147751.P15644781089066546436

/-! ## A147751.P1680023557027758351

`record[A326027(abs(1-n))]-1-n`
-/

namespace A147751.P1680023557027758351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 - (n : ℤ)

end

end A147751.P1680023557027758351

/-! ## A147751.P14029765362011672248

`A326027(Δ[n²]-n)-1-n`
-/

namespace A147751.P14029765362011672248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A147751.P14029765362011672248

/-!
# A147754: Terms of this sequence are equal to gcd between two polynomials P1(n)=(512*n^4+1024*n^3+712*n^2+194*n+15) and P2(n)=(120*n^2+151*n+47) which are used in the BBP formula.

The programs for A147754, there is no canonical definition to state claims against.
-/

/-! ## A147754.P9715502339827403920

`gcd(n+2, 225)`
-/

namespace A147754.P9715502339827403920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) 225

end

end A147754.P9715502339827403920

/-! ## A147754.P17610445622341231927

`(n+2)/A106616(A106616(n+2))`
-/

namespace A147754.P17610445622341231927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A106616 (A106616 (n + 2)).toNat : ℚ)

end

end A147754.P17610445622341231927

/-! ## A147754.P7177348045993400760

`(n+2)/A132739(A106610(n+2))`
-/

namespace A147754.P7177348045993400760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A132739 (A106610 (n + 2)).toNat : ℚ)

end

end A147754.P7177348045993400760

/-! ## A147754.P9356748563477904972

`A000265(gcd(A005563(n), A017078(n)))`
-/

namespace A147754.P9356748563477904972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (A005563 n) (A017078 n))

end

end A147754.P9356748563477904972

/-! ## A147754.P4394146397337495070

`A060819(gcd(A016814(2*n), A198148(n)))`
-/

namespace A147754.P4394146397337495070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Int.gcd (A016814 (2 * n)) (A198148 n))

end

end A147754.P4394146397337495070

/-! ## A147754.P5805343407937827799

`A026741(gcd(A227316(3*n)², A176743(n)))`
-/

namespace A147754.P5805343407937827799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (A227316 (3 * n) ^ 2) (A176743 n))

end

end A147754.P5805343407937827799

/-! ## A147754.P14057967159706213353

`A060904(n+2)*A077196(A355582(n+2))`
-/

namespace A147754.P14057967159706213353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (n + 2) * A077196 (A355582 (n + 2)).toNat

end

end A147754.P14057967159706213353

/-!
# A147755: a(n) = the largest integer that, when represented in binary, occurs at least twice as a substring in the binary representation of n.

The programs for A147755, there is no canonical definition to state claims against.
-/

/-! ## A147755.P8225272409108656329

`gcd(A025480(n+2), A135481(A081660(n)))`
-/

namespace A147755.P8225272409108656329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 (n + 2)) (A135481 (A081660 n).toNat)

end

end A147755.P8225272409108656329

/-! ## A147755.P16057556805580337944

`A210494(A026644(n))%A243499(n+2)`
-/

namespace A147755.P16057556805580337944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210494 (A026644 n).toNat) (A243499 (n + 2))

end

end A147755.P16057556805580337944

/-! ## A147755.P14136897716424358935

`A142553(A054641(n+1))%A352961(n+3)`
-/

namespace A147755.P14136897716424358935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142553 (A054641 (n + 1)).toNat) (A352961 (n + 3))

end

end A147755.P14136897716424358935

/-!
# A147757: Palindromes formed from the reflected decimal expansion of the concatenation of 1, 0 and infinite digits 1.

The programs for A147757, the canonical program `A147757.P12480497626968793521` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147757 has offset 1).

The definition of A147757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147757.P12480497626968793521

`A000533(n)+∑[A011557(n)]-A138144(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147757

/-- `A000533(n)+∑[A011557(n)]-A138144(n+1)` -/
def P12480497626968793521.Spec : Prop :=
  ∀ n, P12480497626968793521.a n = A147757 (n + 1)

theorem P12480497626968793521.correct : P12480497626968793521.Spec := by
  intro n
  simp only [A147757, Nat.add_sub_cancel]

end A147757

/-! ## A147757.P855069053256659110

`A000042(n+1)+A000533(n)-A138144(n+1)`
-/

namespace A147757.P855069053256659110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000533 n - A138144 (n + 1))

end

end A147757.P855069053256659110

namespace A147757

/-- `A000042(n+1)+A000533(n)-A138144(n+1)` -/
def P855069053256659110.Spec : Prop :=
  ∀ n, P855069053256659110.a n = A147757 (n + 1)

end A147757

/-! ## A147757.P3264847023721031299

`A057148(A052955(n)+A000010(A016116(n)))`
-/

namespace A147757.P3264847023721031299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A052955 n + A000010 (A016116 n).toNat).toNat

end

end A147757.P3264847023721031299

namespace A147757

/-- `A057148(A052955(n)+A000010(A016116(n)))` -/
def P3264847023721031299.Spec : Prop :=
  ∀ n, P3264847023721031299.a n = A147757 (n + 1)

end A147757

/-! ## A147757.P5670092416738951479

`A007088(A147758(n+1))`
-/

namespace A147757.P5670092416738951479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A147758 (n + 1)).toNat

end

end A147757.P5670092416738951479

namespace A147757

/-- `A007088(A147758(n+1))` -/
def P5670092416738951479.Spec : Prop :=
  ∀ n, P5670092416738951479.a n = A147757 (n + 1)

end A147757

/-! ## A147757.P2104569484534139256

`A007088(and(A290113(n), A290114(n)))`
-/

namespace A147757.P2104569484534139256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A290113 n) (A290114 n)).toNat

end

end A147757.P2104569484534139256

namespace A147757

/-- `A007088(and(A290113(n), A290114(n)))` -/
def P2104569484534139256.Spec : Prop :=
  ∀ n, P2104569484534139256.a n = A147757 (n + 1)

end A147757

/-!
# A147758: Numbers whose binary representation is a palindrome formed from the reflected decimal expansion of the concatenation of 1, 0 and infinite digits 1.

The programs for A147758, the canonical program `A147758.P9405173105501044808` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147758 has offset 1).

The definition of A147758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147758.P14621310736051811549

`ogf((1-2x^2+4x^4)/(1-3x+2x^2))`
-/

namespace A147758.P14621310736051811549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 0, 4] [1, -3, 2] n

end

end A147758.P14621310736051811549

namespace A147758

/-- `ogf((1-2x^2+4x^4)/(1-3x+2x^2))` -/
def P14621310736051811549.Spec : Prop :=
  ∀ n, P14621310736051811549.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P9405173105501044808

`2*a(n-1)+3` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147758

/-- `2*a(n-1)+3` -/
def P9405173105501044808.Spec : Prop :=
  ∀ n, (P9405173105501044808.a n : ℤ) = A147758 (n + 1)

theorem P9405173105501044808.correct : P9405173105501044808.Spec := by
  intro n
  simp only [A147758, Nat.add_sub_cancel]

end A147758

/-! ## A147758.P16271118369370739917

`xor(7, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A147758.P16271118369370739917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 9] fun n a =>
  Nat.xor 7 (2 * a (n - 1))

end

end A147758.P16271118369370739917

namespace A147758

/-- `xor(7, 2*a(n-1))` -/
def P16271118369370739917.Spec : Prop :=
  ∀ n, (P16271118369370739917.a n : ℤ) = A147758 (n + 1)

end A147758

/-! ## A147758.P10293153930396636911

`or(5, 2*a(n-1))-2` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A147758.P10293153930396636911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 9] fun n a =>
  Int.lor 5 (2 * a (n - 1)) - 2

end

end A147758.P10293153930396636911

namespace A147758

/-- `or(5, 2*a(n-1))-2` -/
def P10293153930396636911.Spec : Prop :=
  ∀ n, P10293153930396636911.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P12787349148220407293

`a(n-1)+a(n-1)+3` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A147758.P12787349148220407293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 9] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A147758.P12787349148220407293

namespace A147758

/-- `a(n-1)+a(n-1)+3` -/
def P12787349148220407293.Spec : Prop :=
  ∀ n, (P12787349148220407293.a n : ℤ) = A147758 (n + 1)

theorem P12787349148220407293.correct : P12787349148220407293.Spec := by
  intro n
  simp only [A147758, Nat.add_sub_cancel, A147758.P12787349148220407293.a, A147758.P9405173105501044808.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147758

/-! ## A147758.P7049099513647508086

`a(n-1)-xor(3, (a(n-1)%3)²-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A147758.P7049099513647508086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - Int.xor 3 (Int.tmod (a (n - 1)) 3 ^ 2 - a (n - 1))

end

end A147758.P7049099513647508086

namespace A147758

/-- `a(n-1)-xor(3, (a(n-1)%3)²-a(n-1))` -/
def P7049099513647508086.Spec : Prop :=
  ∀ n, P7049099513647508086.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P11630764359867733366

`A136252(A004274(n))`
-/

namespace A147758.P11630764359867733366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (A004274 n).toNat

end

end A147758.P11630764359867733366

namespace A147758

/-- `A136252(A004274(n))` -/
def P11630764359867733366.Spec : Prop :=
  ∀ n, P11630764359867733366.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P13585554995839349132

`A354788(A004271(n+1))`
-/

namespace A147758.P13585554995839349132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (A004271 (n + 1)).toNat

end

end A147758.P13585554995839349132

namespace A147758

/-- `A354788(A004271(n+1))` -/
def P13585554995839349132.Spec : Prop :=
  ∀ n, P13585554995839349132.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P12743168115702556593

`A354788(A004278(n+1))`
-/

namespace A147758.P12743168115702556593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 (A004278 (n + 1)).toNat

end

end A147758.P12743168115702556593

namespace A147758

/-- `A354788(A004278(n+1))` -/
def P12743168115702556593.Spec : Prop :=
  ∀ n, P12743168115702556593.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P17283784004378420083

`and(A290113(n), A290114(n))`
-/

namespace A147758.P17283784004378420083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290113 n) (A290114 n)

end

end A147758.P17283784004378420083

namespace A147758

/-- `and(A290113(n), A290114(n))` -/
def P17283784004378420083.Spec : Prop :=
  ∀ n, P17283784004378420083.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P8960619026922208016

`A088041(n+1)+A000918(n)`
-/

namespace A147758.P8960619026922208016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1) + A000918 n

end

end A147758.P8960619026922208016

namespace A147758

/-- `A088041(n+1)+A000918(n)` -/
def P8960619026922208016.Spec : Prop :=
  ∀ n, P8960619026922208016.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P14021607472404347615

`A290114(n)-and(2, A290829(n))`
-/

namespace A147758.P14021607472404347615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n - Int.land 2 (A290829 n)

end

end A147758.P14021607472404347615

namespace A147758

/-- `A290114(n)-and(2, A290829(n))` -/
def P14021607472404347615.Spec : Prop :=
  ∀ n, P14021607472404347615.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P1316794910673894196

`A088041(n+1)+A000225(n)-1`
-/

namespace A147758.P1316794910673894196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1) + (A000225 n - 1)

end

end A147758.P1316794910673894196

namespace A147758

/-- `A088041(n+1)+A000225(n)-1` -/
def P1316794910673894196.Spec : Prop :=
  ∀ n, P1316794910673894196.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P6813524881520076072

`A088041(n+1)+A000079(n)-2`
-/

namespace A147758.P6813524881520076072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088041 (n + 1) + (A000079 n - 2)

end

end A147758.P6813524881520076072

namespace A147758

/-- `A088041(n+1)+A000079(n)-2` -/
def P6813524881520076072.Spec : Prop :=
  ∀ n, P6813524881520076072.a n = A147758 (n + 1)

end A147758

/-! ## A147758.P1633556488843472648

`and(A159229(n+2), A290114(n))`
-/

namespace A147758.P1633556488843472648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159229 (n + 2)) (A290114 n)

end

end A147758.P1633556488843472648

namespace A147758

/-- `and(A159229(n+2), A290114(n))` -/
def P1633556488843472648.Spec : Prop :=
  ∀ n, P1633556488843472648.a n = A147758 (n + 1)

end A147758

/-!
# A147759: Palindromes formed from the reflected decimal expansion of the infinite concatenation of 1's and 0's.

The programs for A147759, the canonical program `A147759.P6697109773424389336` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147759 has offset 1).

The definition of A147759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147759.P6697109773424389336

`∑[10^n]-10*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147759

/-- `∑[10^n]-10*a(n-2)` -/
def P6697109773424389336.Spec : Prop :=
  ∀ n, P6697109773424389336.a n = A147759 (n + 1)

theorem P6697109773424389336.correct : P6697109773424389336.Spec := by
  intro n
  simp only [A147759, Nat.add_sub_cancel]

end A147759

/-! ## A147759.P11766022947761292927

`ceil(A153498(n+1)/A000533(n))`
-/

namespace A147759.P11766022947761292927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153498 (n + 1) : ℚ) / (A000533 n : ℚ)⌉

end

end A147759.P11766022947761292927

namespace A147759

/-- `ceil(A153498(n+1)/A000533(n))` -/
def P11766022947761292927.Spec : Prop :=
  ∀ n, P11766022947761292927.a n = A147759 (n + 1)

end A147759

/-! ## A147759.P17732260117342440653

`A007088(A136401(n+3))`
-/

namespace A147759.P17732260117342440653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A136401 (n + 3)).toNat

end

end A147759.P17732260117342440653

namespace A147759

/-- `A007088(A136401(n+3))` -/
def P17732260117342440653.Spec : Prop :=
  ∀ n, P17732260117342440653.a n = A147759 (n + 1)

end A147759

/-! ## A147759.P5394593816104243580

`A007088(xor(2^(n+1)-2^(∑[n]%(n+1)), A000975(n)))`
-/

namespace A147759.P5394593816104243580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor ((2 ^ (n + 1) : ℤ) - (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℤ)) (A000975 n)).toNat

end

end A147759.P5394593816104243580

namespace A147759

/-- `A007088(xor(2^(n+1)-2^(∑[n]%(n+1)), A000975(n)))` -/
def P5394593816104243580.Spec : Prop :=
  ∀ n, P5394593816104243580.a n = A147759 (n + 1)

end A147759

/-! ## A147759.P16235640786831388720

`A007088(xor(A000975(n), A290234(n)))`
-/

namespace A147759.P16235640786831388720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A000975 n) (A290234 n)).toNat

end

end A147759.P16235640786831388720

namespace A147759

/-- `A007088(xor(A000975(n), A290234(n)))` -/
def P16235640786831388720.Spec : Prop :=
  ∀ n, P16235640786831388720.a n = A147759 (n + 1)

end A147759

/-!
# A147760: a(n) is the smallest positive integer m with exactly n ones in its binary representation and with n represented in binary as a substring of the binary representation of m.

The programs for A147760, the canonical program `A147760.P15763218434351887986` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147760 has offset 1).

The definition of A147760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147760.P15763218434351887986

`(n+2)*A060818(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A147760

/-- `(n+2)*A060818(n+1)-1` -/
def P15763218434351887986.Spec : Prop :=
  ∀ n, P15763218434351887986.a n = A147760 (n + 1)

theorem P15763218434351887986.correct : P15763218434351887986.Spec := by
  intro n
  simp only [A147760, Nat.add_sub_cancel]

end A147760

/-! ## A147760.P12110396252059348573

`(n+2)*∏[A006519(n+1)]-1`
-/

namespace A147760.P12110396252059348573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A147760.P12110396252059348573

namespace A147760

/-- `(n+2)*∏[A006519(n+1)]-1` -/
def P12110396252059348573.Spec : Prop :=
  ∀ n, P12110396252059348573.a n = A147760 (n + 1)

end A147760

/-! ## A147760.P6770613755247709986

`∏[(n+2)/A000265(n+1)]-1`
-/

namespace A147760.P6770613755247709986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A147760.P6770613755247709986

namespace A147760

/-- `∏[(n+2)/A000265(n+1)]-1` -/
def P6770613755247709986.Spec : Prop :=
  ∀ n, P6770613755247709986.a n = (A147760 (n + 1) : ℚ)

end A147760

/-! ## A147760.P3506132649231747689

`floor(((n+2)*2^n-1)/2^(n-∑[val(n+1, 2)]))`
-/

namespace A147760.P3506132649231747689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 2) * 2 ^ n : ℤ) - 1 : ℚ) / (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)⌋

end

end A147760.P3506132649231747689

namespace A147760

/-- `floor(((n+2)*2^n-1)/2^(n-∑[val(n+1, 2)]))` -/
def P3506132649231747689.Spec : Prop :=
  ∀ n, P3506132649231747689.a n = A147760 (n + 1)

end A147760

/-! ## A147760.P12021134924966193497

`floor(((n+2)*2^n-1)/A048896(n))`
-/

namespace A147760.P12021134924966193497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 2) * 2 ^ n : ℤ) - 1 : ℚ) / (A048896 n : ℚ)⌋

end

end A147760.P12021134924966193497

namespace A147760

/-- `floor(((n+2)*2^n-1)/A048896(n))` -/
def P12021134924966193497.Spec : Prop :=
  ∀ n, P12021134924966193497.a n = A147760 (n + 1)

end A147760

/-!
# A147761: a(n) is the smallest positive integer m with exactly n zeros in its binary representation and with n represented in binary as a substring of the binary representation of m.

The programs for A147761, the canonical program `A147761.P3441028777115545332` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147761 has offset 1).

The definition of A147761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147761.P3441028777115545332

`(n+1)*2^(n+1-A023416(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A147761

/-- `(n+1)*2^(n+1-A023416(n+1))` -/
def P3441028777115545332.Spec : Prop :=
  ∀ n, P3441028777115545332.a n = (A147761 (n + 1) : ℚ)

end A147761

/-! ## A147761.P12292167444840306872

`(n+1)*2^A117123(n+1)`
-/

namespace A147761.P12292167444840306872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A117123 (n + 1) : ℤ)

end

end A147761.P12292167444840306872

namespace A147761

/-- `(n+1)*2^A117123(n+1)` -/
def P12292167444840306872.Spec : Prop :=
  ∀ n, P12292167444840306872.a n = (A147761 (n + 1) : ℚ)

end A147761

/-! ## A147761.P2076967786345751052

`(n+1)*A000079(A117123(n+1))`
-/

namespace A147761.P2076967786345751052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A117123 (n + 1)).toNat

end

end A147761.P2076967786345751052

namespace A147761

/-- `(n+1)*A000079(A117123(n+1))` -/
def P2076967786345751052.Spec : Prop :=
  ∀ n, P2076967786345751052.a n = A147761 (n + 1)

end A147761

/-! ## A147761.P5368314024171489928

`abs(A000027(n+1)*A122803(A117123(n+1)))`
-/

namespace A147761.P5368314024171489928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000027 (n + 1) * A122803 (A117123 (n + 1)).toNat|

end

end A147761.P5368314024171489928

namespace A147761

/-- `abs(A000027(n+1)*A122803(A117123(n+1)))` -/
def P5368314024171489928.Spec : Prop :=
  ∀ n, P5368314024171489928.a n = A147761 (n + 1)

end A147761

/-! ## A147761.P9051882880577233621

`Δ[2*A000337(n)]/Δ[A268514(n)]`
-/

namespace A147761.P9051882880577233621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268514 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A147761.P9051882880577233621

namespace A147761

/-- `Δ[2*A000337(n)]/Δ[A268514(n)]` -/
def P9051882880577233621.Spec : Prop :=
  ∀ n, P9051882880577233621.a n = (A147761 (n + 1) : ℚ)

end A147761

/-!
# A147762: a(n) is the smallest positive integer m with exactly n zeros and exactly n ones in its binary representation and with n represented in binary as a substring of the binary representation of m.

The programs for A147762, there is no canonical definition to state claims against.
-/

/-! ## A147762.P4827752464575063984

`A327192(A180677(n))+A081654(n)`
-/

namespace A147762.P4827752464575063984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327192 (A180677 n).toNat + A081654 n

end

end A147762.P4827752464575063984

/-! ## A147762.P13629391365528281644

`A279170(A213247(n+1))+A083420(n)`
-/

namespace A147762.P13629391365528281644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279170 (A213247 (n + 1)).toNat + A083420 n

end

end A147762.P13629391365528281644

/-!
# A147763: a(n) = smallest k such that n = d*(d-b)*(d+c), where b, c, d >= 0 and k = b+c.

The programs for A147763, there is no canonical definition to state claims against.
-/

/-! ## A147763.P10234850905051810469

`A102095(n+1)-A102097(n+1)`
-/

namespace A147763.P10234850905051810469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (n + 1) - A102097 (n + 1)

end

end A147763.P10234850905051810469

/-! ## A147763.P10890441345146633121

`A056737((n+1)/A102096(n+1))`
-/

namespace A147763.P10890441345146633121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102096 (n + 1) : ℚ))).toNat

end

end A147763.P10890441345146633121

/-! ## A147763.P7388125570164667842

`A102095(n+1)-A102096(A079880(n+1))`
-/

namespace A147763.P7388125570164667842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (n + 1) - A102096 (A079880 (n + 1)).toNat

end

end A147763.P7388125570164667842

/-! ## A147763.P7671114281086161267

`A056737(A102095(n+1)*A102097(n+1))`
-/

namespace A147763.P7671114281086161267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A102095 (n + 1) * A102097 (n + 1)).toNat

end

end A147763.P7671114281086161267

/-! ## A147763.P14544525158405106058

`A033677((n+1)/A102096(n+1))-A102097(n+1)`
-/

namespace A147763.P14544525158405106058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102096 (n + 1) : ℚ))).toNat - A102097 (n + 1)

end

end A147763.P14544525158405106058

/-! ## A147763.P6339050862333890680

`A102095(n+1)-A033676((n+1)/A102095(n+1))`
-/

namespace A147763.P6339050862333890680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102095 (n + 1) - A033676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A102095 (n + 1) : ℚ))).toNat

end

end A147763.P6339050862333890680

/-! ## A147763.P7338559006862709589

`(A102094(n+1)*A102097(n+1))%A102095(n+1)`
-/

namespace A147763.P7338559006862709589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102094 (n + 1) * A102097 (n + 1)) (A102095 (n + 1))

end

end A147763.P7338559006862709589

/-!
# A147764: Elias omega coded prime numbers represented in decimal.

The programs for A147764, there is no canonical definition to state claims against.
-/

/-! ## A147764.P10214871328596092862

`2*A281223(Δ[A007504(n)])`
-/

namespace A147764.P10214871328596092862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281223 (f1 (n + 1) - f1 n).toNat

end

end A147764.P10214871328596092862

/-! ## A147764.P7277646141241962347

`2*A281223(A000040(n+1))`
-/

namespace A147764.P7277646141241962347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281223 (A000040 (n + 1)).toNat

end

end A147764.P7277646141241962347

/-! ## A147764.P15428748502412971388

`2*A281223(abs(Δ[A008348(n)]))`
-/

namespace A147764.P15428748502412971388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281223 |f1 (n + 1) - f1 n|.toNat

end

end A147764.P15428748502412971388

/-! ## A147764.P17039019347186290443

`2*A281223(sqrt(A001248(n+1)))`
-/

namespace A147764.P17039019347186290443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281223 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A147764.P17039019347186290443

/-!
# A147765: a(n) = A147666(n+3) if A147666(n+3) is not a multiple of 5 or 7, otherwise a(n) = 0.

The programs for A147765, there is no canonical definition to state claims against.
-/

/-! ## A147765.P10518016360968441594

`A145105(lt[A145103(n), A145102(n)])`
-/

namespace A147765.P10518016360968441594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145105 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147765.P10518016360968441594

/-! ## A147765.P17529705974571799733

`A087243(A047234(n+4))%A004273(n+7)`
-/

namespace A147765.P17529705974571799733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087243 (A047234 (n + 4)).toNat) (A004273 (n + 7))

end

end A147765.P17529705974571799733

/-! ## A147765.P11284987572170574042

`A087243(A020742(A080782(n+1)))`
-/

namespace A147765.P11284987572170574042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087243 (A020742 (A080782 (n + 1)).toNat).toNat

end

end A147765.P11284987572170574042

/-! ## A147765.P13979052511257807888

`A087243(A080782(n+2)+A080782(n+5))`
-/

namespace A147765.P13979052511257807888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087243 (A080782 (n + 2) + A080782 (n + 5)).toNat

end

end A147765.P13979052511257807888

/-!
# A147766: Successive differences of A000990.

The programs for A147766, there is no canonical definition to state claims against.
-/

/-! ## A147766.P12369415033830399896

`A186417(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A147766.P12369415033830399896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A186417 n + a (n - 2)

end

end A147766.P12369415033830399896

/-! ## A147766.P13339945491119607887

`∑[A186417(A004277(n)-n)-a(n-1)]` with `a(0)=1`
-/

namespace A147766.P13339945491119607887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A186417 (A004277 n - (n : ℤ)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147766.P13339945491119607887

/-! ## A147766.P979221878069495395

`A003292(n)-a(n-1)` with `a(0)=1`
-/

namespace A147766.P979221878069495395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003292 n - a (n - 1)

end

end A147766.P979221878069495395

/-! ## A147766.P3870514166667721494

`A003292(n+1)-Δ[A000990(n)]`
-/

namespace A147766.P3870514166667721494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003292 (n + 1) - (f1 (n + 1) - f1 n)

end

end A147766.P3870514166667721494

/-! ## A147766.P14883828462232622124

`Δ[Δ[A000712(n)]-A003292(n+1)]`
-/

namespace A147766.P14883828462232622124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147766.P14883828462232622124

/-! ## A147766.P11275118055725910846

`A003292(n+1)-Δ[A242641(∑[n+2])]`
-/

namespace A147766.P11275118055725910846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003292 (n + 1) - (f1 (n + 1) - f1 n)

end

end A147766.P11275118055725910846

/-! ## A147766.P5460321059702207241

`A147767(∑[n])`
-/

namespace A147766.P5460321059702207241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147767 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147766.P5460321059702207241

/-! ## A147766.P6114517084861220234

`A128627(∑[n+1]+2)`
-/

namespace A147766.P6114517084861220234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128627 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A147766.P6114517084861220234

/-!
# A147767: Triangle read by rows, square of A116598.

The programs for A147767, there is no canonical definition to state claims against.
-/

/-! ## A147767.P15039626272071715777

`A147766(A025581(n))`
-/

namespace A147767.P15039626272071715777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 (A025581 n).toNat

end

end A147767.P15039626272071715777

/-! ## A147767.P17212608299660282350

`A259965(A292565(n+1))`
-/

namespace A147767.P17212608299660282350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (A292565 (n + 1)).toNat

end

end A147767.P17212608299660282350

/-! ## A147767.P16863432151646822113

`A161462((C(comp[∑[n]]-n, 2)-n)^5)`
-/

namespace A147767.P16863432151646822113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161462 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 5).toNat

end

end A147767.P16863432151646822113

/-! ## A147767.P17816837378606953774

`A259965(lt[8, A002262(n)])`
-/

namespace A147767.P17816837378606953774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A147767.P17816837378606953774

/-! ## A147767.P358034251901913520

`∑{e}[A000984(A113678(n)), #]`
-/

namespace A147767.P358034251901913520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A113678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A147767.P358034251901913520

/-!
# A147768: Triangle read by rows: A000012^(-2) * A027293 as infinite lower triangular matrices.

The programs for A147768, there is no canonical definition to state claims against.
-/

/-! ## A147768.P12412962794379594404

`Δ[A000041(A003056(n))-A116598(n)]`
-/

namespace A147768.P12412962794379594404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003056 n).toNat - A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147768.P12412962794379594404

/-! ## A147768.P14207973979461725127

`A116598(n)-A116598(n+1)%A140303(n)`
-/

namespace A147768.P14207973979461725127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n - Int.tmod (A116598 (n + 1)) (A140303 n)

end

end A147768.P14207973979461725127

/-! ## A147768.P8090438514950306122

`A240486(A004736(n+1))-A182712(A004736(n+1))`
-/

namespace A147768.P8090438514950306122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 (A004736 (n + 1)).toNat - A182712 (A004736 (n + 1)).toNat

end

end A147768.P8090438514950306122

/-! ## A147768.P5075851562865107524

`A107078(A106187(n))+A097807(n)`
-/

namespace A147768.P5075851562865107524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A106187 n).toNat + A097807 n

end

end A147768.P5075851562865107524

/-! ## A147768.P18324113913519658228

`A096754(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A147768.P18324113913519658228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096754 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A147768.P18324113913519658228

/-!
# A147771: a(n) = round(n^(n/2)).

The programs for A147771, the canonical program `A147771.P10764676541958340092` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147771 has offset 1).

The definition of A147771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1)^((n+1)/2))` (program `A147771.P10764676541958340092`, by `A147771.P10764676541958340092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147771.P10764676541958340092

`round((n+1)^((n+1)/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147771

/-- `round((n+1)^((n+1)/2))` -/
def P10764676541958340092.Spec : Prop :=
  ∀ n, P10764676541958340092.a n = A147771 (n + 1)

theorem P10764676541958340092.correct : P10764676541958340092.Spec := by
  intro n
  simp only [A147771, Nat.add_sub_cancel]

end A147771

/-! ## A147771.P11758792790386994751

`record[round(sqrt(A091884(n)))]`
-/

namespace A147771.P11758792790386994751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A091884 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P11758792790386994751

namespace A147771

/-- `record[round(sqrt(A091884(n)))]` -/
def P11758792790386994751.Spec : Prop :=
  ∀ n, P11758792790386994751.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P11417323927974130170

`record[round(sqrt(A174551(n)))]`
-/

namespace A147771.P11417323927974130170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A174551 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P11417323927974130170

namespace A147771

/-- `record[round(sqrt(A174551(n)))]` -/
def P11417323927974130170.Spec : Prop :=
  ∀ n, P11417323927974130170.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P17215452671875316682

`record[round(sqrt(A245348(n)))]`
-/

namespace A147771.P17215452671875316682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A245348 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P17215452671875316682

namespace A147771

/-- `record[round(sqrt(A245348(n)))]` -/
def P17215452671875316682.Spec : Prop :=
  ∀ n, P17215452671875316682.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P10019651568930163960

`record[round(sqrt(A245501(n)))]`
-/

namespace A147771.P10019651568930163960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A245501 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P10019651568930163960

namespace A147771

/-- `record[round(sqrt(A245501(n)))]` -/
def P10019651568930163960.Spec : Prop :=
  ∀ n, P10019651568930163960.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P17044985449639255083

`record[round(sqrt(A245732(n)))]`
-/

namespace A147771.P17044985449639255083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A245732 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P17044985449639255083

namespace A147771

/-- `record[round(sqrt(A245732(n)))]` -/
def P17044985449639255083.Spec : Prop :=
  ∀ n, P17044985449639255083.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P3724109288953309252

`record[round(root(A236961(n), 2))]`
-/

namespace A147771.P3724109288953309252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236961 n : ℝ) ^ (1 / (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P3724109288953309252

namespace A147771

/-- `record[round(root(A236961(n), 2))]` -/
def P3724109288953309252.Spec : Prop :=
  ∀ n, P3724109288953309252.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P2035609816408696676

`record[round(sqrt(A033918(n+1)))]`
-/

namespace A147771.P2035609816408696676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A033918 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P2035609816408696676

namespace A147771

/-- `record[round(sqrt(A033918(n+1)))]` -/
def P2035609816408696676.Spec : Prop :=
  ∀ n, P2035609816408696676.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P9759666352143841850

`record[round(sqrt(A057075(n+1)))]`
-/

namespace A147771.P9759666352143841850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A057075 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P9759666352143841850

namespace A147771

/-- `record[round(sqrt(A057075(n+1)))]` -/
def P9759666352143841850.Spec : Prop :=
  ∀ n, P9759666352143841850.a n = A147771 (n + 1)

end A147771

/-! ## A147771.P3348383092897840744

`record[round(sqrt(A095887(n+1)))]`
-/

namespace A147771.P3348383092897840744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A095887 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147771.P3348383092897840744

namespace A147771

/-- `record[round(sqrt(A095887(n+1)))]` -/
def P3348383092897840744.Spec : Prop :=
  ∀ n, P3348383092897840744.a n = A147771 (n + 1)

end A147771

/-!
# A147772: Floor[(n^n)^(1/3)].

The programs for A147772, the canonical program `A147772.P9606770055849333454` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147772 has offset 1).

The definition of A147772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)^(n+1))^(1/3))` (program `A147772.P9606770055849333454`, by `A147772.P9606770055849333454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147772.P9606770055849333454

`floor(((n+1)^(n+1))^(1/3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147772

/-- `floor(((n+1)^(n+1))^(1/3))` -/
def P9606770055849333454.Spec : Prop :=
  ∀ n, P9606770055849333454.a n = A147772 (n + 1)

theorem P9606770055849333454.correct : P9606770055849333454.Spec := by
  intro n
  simp only [A147772, Nat.add_sub_cancel]

end A147772

/-! ## A147772.P10377718627697483293

`ceil(root(A089622(n+1), 3))-1`
-/

namespace A147772.P10377718627697483293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089622 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A147772.P10377718627697483293

namespace A147772

/-- `ceil(root(A089622(n+1), 3))-1` -/
def P10377718627697483293.Spec : Prop :=
  ∀ n, P10377718627697483293.a n = A147772 (n + 1)

end A147772

/-! ## A147772.P14874103755753396565

`ceil(root((n+1)^(n+1)-A057428(n+1), 3))-1`
-/

namespace A147772.P14874103755753396565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) ^ (n + 1) : ℤ) - A057428 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A147772.P14874103755753396565

namespace A147772

/-- `ceil(root((n+1)^(n+1)-A057428(n+1), 3))-1` -/
def P14874103755753396565.Spec : Prop :=
  ∀ n, P14874103755753396565.a n = A147772 (n + 1)

end A147772

/-! ## A147772.P1013422278870197496

`A122045(2*n+1)+floor(root(A089622(n+1), 3))`
-/

namespace A147772.P1013422278870197496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 (2 * n + 1) + ⌊(A089622 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A147772.P1013422278870197496

namespace A147772

/-- `A122045(2*n+1)+floor(root(A089622(n+1), 3))` -/
def P1013422278870197496.Spec : Prop :=
  ∀ n, P1013422278870197496.a n = A147772 (n + 1)

end A147772

/-! ## A147772.P14359328737773232100

`A008619(A004275(floor(root((n+1)^(n+1)+1, 3))))`
-/

namespace A147772.P14359328737773232100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 ⌊((n + 1) ^ (n + 1) + 1 : ℝ) ^ (1 / (3 : ℝ))⌋.toNat).toNat

end

end A147772.P14359328737773232100

namespace A147772

/-- `A008619(A004275(floor(root((n+1)^(n+1)+1, 3))))` -/
def P14359328737773232100.Spec : Prop :=
  ∀ n, P14359328737773232100.a n = A147772 (n + 1)

end A147772

/-!
# A147773: a(n) = round((n^n)^(1/3)).

The programs for A147773, the canonical program `A147773.P417642903627988834` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147773 has offset 1).

The definition of A147773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(((n+1)^(n+1))^(1/3))` (program `A147773.P417642903627988834`, by `A147773.P417642903627988834.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147773.P417642903627988834

`round(((n+1)^(n+1))^(1/3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147773

/-- `round(((n+1)^(n+1))^(1/3))` -/
def P417642903627988834.Spec : Prop :=
  ∀ n, P417642903627988834.a n = A147773 (n + 1)

theorem P417642903627988834.correct : P417642903627988834.Spec := by
  intro n
  simp only [A147773, Nat.add_sub_cancel]

end A147773

/-! ## A147773.P16803433724807500501

`record[round(root(A236961(n), 3))]`
-/

namespace A147773.P16803433724807500501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236961 n : ℝ) ^ (1 / (3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147773.P16803433724807500501

namespace A147773

/-- `record[round(root(A236961(n), 3))]` -/
def P16803433724807500501.Spec : Prop :=
  ∀ n, P16803433724807500501.a n = A147773 (n + 1)

end A147773

/-! ## A147773.P14726500970567205357

`record[round(root(A095891(n+1), 3))]`
-/

namespace A147773.P14726500970567205357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A095891 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147773.P14726500970567205357

namespace A147773

/-- `record[round(root(A095891(n+1), 3))]` -/
def P14726500970567205357.Spec : Prop :=
  ∀ n, P14726500970567205357.a n = A147773 (n + 1)

end A147773

/-! ## A147773.P10768267912374661703

`record[round(A007953(n)^(A007953(n)/3))]`
-/

namespace A147773.P10768267912374661703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℝ) ^ ((A007953 n : ℚ) / 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147773.P10768267912374661703

namespace A147773

/-- `record[round(A007953(n)^(A007953(n)/3))]` -/
def P10768267912374661703.Spec : Prop :=
  ∀ n, P10768267912374661703.a n = A147773 (n + 1)

end A147773

/-! ## A147773.P6687422074094092820

`record[round(A064289(n)^(A064289(n)/3))]`
-/

namespace A147773.P6687422074094092820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A064289 n : ℝ) ^ ((A064289 n : ℚ) / 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147773.P6687422074094092820

namespace A147773

/-- `record[round(A064289(n)^(A064289(n)/3))]` -/
def P6687422074094092820.Spec : Prop :=
  ∀ n, P6687422074094092820.a n = A147773 (n + 1)

end A147773

/-!
# A147774: Number of equivalence classes of normalized Hadamard matrices of order 4n with respect to permutations of rows and columns.

The programs for A147774, there is no canonical definition to state claims against.
-/

/-! ## A147774.P9821570424689619542

`A327442(A060690(n)-∑{digits}[n², #])`
-/

namespace A147774.P9821570424689619542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 (A060690 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A147774.P9821570424689619542

/-!
# A147778: Positive integers of the form u*v*(u^2 - v^2) where u, v are coprime integers.

The programs for A147778, there is no canonical definition to state claims against.
-/

/-! ## A147778.P7303478793720788261

`∪[4*A024365(n+1), A024365(n+1)]`
-/

namespace A147778.P7303478793720788261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A147778.P7303478793720788261

/-! ## A147778.P17653570979564275792

`A073120(∑[A295657(A128588(n+1))])`
-/

namespace A147778.P17653570979564275792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A128588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147778.P17653570979564275792

/-! ## A147778.P15242296558719943491

`A073120(lt[A173143(n+3), A257944(3*n+2)])`
-/

namespace A147778.P15242296558719943491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173143 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257944 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147778.P15242296558719943491

/-! ## A147778.P16452210112242332974

`∩[A009112(n+1), A277913(n+1)]`
-/

namespace A147778.P16452210112242332974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147778.P16452210112242332974

/-! ## A147778.P11385006997474141690

`∩[A073120(n+1), A249685(n+1)]`
-/

namespace A147778.P11385006997474141690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147778.P11385006997474141690

/-!
# A147779: Squarefree positive integers of the form u*v*(u^2-v^2) for some integer u,v.

The programs for A147779, there is no canonical definition to state claims against.
-/

/-! ## A147779.P12646522426930118539

`∩[A009112(n+1), A389463(n+1)]`
-/

namespace A147779.P12646522426930118539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147779.P12646522426930118539

/-! ## A147779.P9640848272291471089

`∩[A024365(n+1), A389463(n+1)]`
-/

namespace A147779.P9640848272291471089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147779.P9640848272291471089

/-! ## A147779.P18191422655329736609

`∩[A073120(n+1), A389463(n+1)]`
-/

namespace A147779.P18191422655329736609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147779.P18191422655329736609

/-! ## A147779.P13557071572558881201

`∩[A147778(n+1), A389463(n+1)]`
-/

namespace A147779.P13557071572558881201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147779.P13557071572558881201

/-! ## A147779.P16860201843056285595

`record[A007913(A009111(n+1))]`
-/

namespace A147779.P16860201843056285595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A009111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147779.P16860201843056285595

/-!
# A147781: 1 - A147850(n).

The programs for A147781, there is no canonical definition to state claims against.
-/

/-! ## A147781.P100762636240540500

`1-A147850(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147781.P100762636240540500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A147850 (n + 1)

end

end A147781.P100762636240540500

/-! ## A147781.P12737165665337900641

`xor(1, A147850(C(n+1, n)))`
-/

namespace A147781.P12737165665337900641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A147850 (Nat.choose (n + 1) n))

end

end A147781.P12737165665337900641

/-! ## A147781.P2999447352165437101

`xor(1, A147850(A000027(n+1)))`
-/

namespace A147781.P2999447352165437101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A147850 (A000027 (n + 1)).toNat)

end

end A147781.P2999447352165437101

/-! ## A147781.P14848065489029759462

`xor(A147850(n+1), A361338(n))`
-/

namespace A147781.P14848065489029759462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A147850 (n + 1)) (A361338 n)

end

end A147781.P14848065489029759462

/-! ## A147781.P3326533278203917219

`xor(A178334(n)!, A147850(n+1))`
-/

namespace A147781.P3326533278203917219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A178334 n).toNat : ℤ) (A147850 (n + 1))

end

end A147781.P3326533278203917219

/-! ## A147781.P12146634906469531013

`xor(char[A110514(n)], A147850(n+1))`
-/

namespace A147781.P12146634906469531013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A147850 (n + 1))

end

end A147781.P12146634906469531013

/-! ## A147781.P15053197761355561167

`char[eq[A000038(n), A147850(n+1)]]`
-/

namespace A147781.P15053197761355561167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147850 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A147781.P15053197761355561167

/-! ## A147781.P14877744634525378827

`A000007((n+1)*A147850(n+1))`
-/

namespace A147781.P14877744634525378827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A147850 (n + 1)).toNat

end

end A147781.P14877744634525378827

/-! ## A147781.P17878384260664552595

`(A147850(n+1)+A000040(n+2))%2`
-/

namespace A147781.P17878384260664552595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147850 (n + 1) + A000040 (n + 2)) 2

end

end A147781.P17878384260664552595

/-! ## A147781.P7207240790382520801

`xor(A014963(9*n+6), A147850(n+1))`
-/

namespace A147781.P7207240790382520801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (9 * n + 6)) (A147850 (n + 1))

end

end A147781.P7207240790382520801

/-! ## A147781.P12565194083728953668

`xor(A007318(gcd(n, n+1)), A147850(n+1))`
-/

namespace A147781.P12565194083728953668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.gcd n (n + 1))) (A147850 (n + 1))

end

end A147781.P12565194083728953668

/-! ## A147781.P1681174197333999874

`xor(A000041(and(1, n)^n), A147850(n+1))`
-/

namespace A147781.P1681174197333999874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.land 1 n ^ n)) (A147850 (n + 1))

end

end A147781.P1681174197333999874

/-! ## A147781.P15810584363334117709

`xor(A007318(and(1, n)^n), A147850(n+1))`
-/

namespace A147781.P15810584363334117709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.land 1 n ^ n)) (A147850 (n + 1))

end

end A147781.P15810584363334117709

/-! ## A147781.P1868131625268870231

`and(1, A147850(n+1)+A006530(18*n+19))`
-/

namespace A147781.P1868131625268870231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A147850 (n + 1) + A006530 (18 * n + 19))

end

end A147781.P1868131625268870231

/-! ## A147781.P7676312942021538986

`A147850(A304042(n)+A147850(n+1))`
-/

namespace A147781.P7676312942021538986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147850 (A304042 n + A147850 (n + 1)).toNat

end

end A147781.P7676312942021538986

/-! ## A147781.P10466417644200510427

`A000122(A000040(n+1)*A147850(n+1))`
-/

namespace A147781.P10466417644200510427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000040 (n + 1) * A147850 (n + 1)).toNat

end

end A147781.P10466417644200510427

/-! ## A147781.P6884474137549604783

`floor(A000045(n)/(A147850(n+1)+A000045(n)))`
-/

namespace A147781.P6884474137549604783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n : ℚ) / (A147850 (n + 1) + A000045 n : ℚ)⌋

end

end A147781.P6884474137549604783

/-!
# A147783: Number of partitions of n into parts divisible by 2 or 5.

The programs for A147783, there is no canonical definition to state claims against.
-/

/-! ## A147783.P7159490942845660252

`A117408(A316671(n+1))`
-/

namespace A147783.P7159490942845660252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117408 (A316671 (n + 1)).toNat

end

end A147783.P7159490942845660252

/-! ## A147783.P14849561040154610847

`A117408(A316966(n)+1)`
-/

namespace A147783.P14849561040154610847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117408 (A316966 n + 1).toNat

end

end A147783.P14849561040154610847

/-! ## A147783.P6053400921087244453

`A228110(A000041(n)+∑[A229946(n)])`
-/

namespace A147783.P6053400921087244453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228110 (A000041 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147783.P6053400921087244453

/-! ## A147783.P7668565956572434706

`A328170(A084964(n))%A136476(2*(n+2))`
-/

namespace A147783.P7668565956572434706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328170 (A084964 n).toNat) (A136476 (2 * (n + 2)))

end

end A147783.P7668565956572434706

/-! ## A147783.P7038788163965861482

`Δ[A056556(A084221(n)+1)]`
-/

namespace A147783.P7038788163965861482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A084221 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147783.P7038788163965861482

/-!
# A147784: Number of partitions of n into parts divisible by 3 or 4.

The programs for A147784, there is no canonical definition to state claims against.
-/

/-! ## A147784.P10686093688319630610

`A087117(A091583(n+1))+A054907(n)`
-/

namespace A147784.P10686093688319630610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A091583 (n + 1)).toNat + A054907 n

end

end A147784.P10686093688319630610

/-!
# A147785: Number of partitions of n into parts divisible by 3 or 5.

The programs for A147785, there is no canonical definition to state claims against.
-/

/-! ## A147785.P3030869668507399173

`A067591(n)-A178225(A113692(n+1))`
-/

namespace A147785.P3030869668507399173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 n - A178225 (A113692 (n + 1)).toNat

end

end A147785.P3030869668507399173

/-! ## A147785.P5477636582679133111

`A067591(n)-A102683(A067599(n+2))`
-/

namespace A147785.P5477636582679133111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 n - A102683 (A067599 (n + 2)).toNat

end

end A147785.P5477636582679133111

/-! ## A147785.P8444900493136059692

`A067591(n)-A067898(A271579(2*(n+2)))`
-/

namespace A147785.P8444900493136059692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 n - A067898 (A271579 (2 * (n + 2))).toNat

end

end A147785.P8444900493136059692

/-! ## A147785.P3283154236272610936

`A067591(n)-A044941(A011782(n))`
-/

namespace A147785.P3283154236272610936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067591 n - A044941 (A011782 n).toNat

end

end A147785.P3283154236272610936

/-!
# A147786: Number of partitions of n into parts divisible by 4 or 5.

The programs for A147786, there is no canonical definition to state claims against.
-/

/-! ## A147786.P797982248059167275

`A001511(A050043(n+15))*A288166(n+5)`
-/

namespace A147786.P797982248059167275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050043 (n + 15)).toNat * A288166 (n + 5)

end

end A147786.P797982248059167275

/-! ## A147786.P10733524979181047668

`A339364(n)-A133872(A202158(n+1))`
-/

namespace A147786.P10733524979181047668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339364 n - A133872 (A202158 (n + 1)).toNat

end

end A147786.P10733524979181047668

/-! ## A147786.P12219690838741994289

`and(A020986(C(n, 2)²), A025808(n))`
-/

namespace A147786.P12219690838741994289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020986 (Nat.choose n 2 ^ 2)) (A025808 n)

end

end A147786.P12219690838741994289

/-! ## A147786.P10297008052724109901

`A329313(A017827(n)*A067417(n))`
-/

namespace A147786.P10297008052724109901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A017827 n * A067417 n).toNat

end

end A147786.P10297008052724109901

/-! ## A147786.P15488538039835162578

`A029340(n)*A279612(A000079(n))`
-/

namespace A147786.P15488538039835162578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 n * A279612 (A000079 n).toNat

end

end A147786.P15488538039835162578

/-!
# A147787: Number of partitions of n into parts divisible by 4,6 or 9.

The programs for A147787, there is no canonical definition to state claims against.
-/

/-! ## A147787.P10121448889174194947

`A034968(A000045(A029352(n)²))`
-/

namespace A147787.P10121448889174194947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A000045 (A029352 n ^ 2).toNat).toNat

end

end A147787.P10121448889174194947

/-! ## A147787.P12780842357244318332

`A004275(A029352(n))^Δ[A087051(n)]`
-/

namespace A147787.P12780842357244318332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (A029352 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A147787.P12780842357244318332

/-! ## A147787.P17206020711075755140

`A004275(A029352(n)%A085808(n+1))`
-/

namespace A147787.P17206020711075755140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A029352 n) (A085808 (n + 1))).toNat

end

end A147787.P17206020711075755140

/-! ## A147787.P11531241161729244977

`A062756(A073312(n+1)^(n/2))`
-/

namespace A147787.P11531241161729244977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.roundAway ((A073312 (n + 1) : ℝ) ^ ((n : ℚ) / 2 : ℝ))).toNat

end

end A147787.P11531241161729244977

/-! ## A147787.P6899669188165460546

`A353479(A004148(n))+A029352(n)`
-/

namespace A147787.P6899669188165460546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353479 (A004148 n).toNat + A029352 n

end

end A147787.P6899669188165460546

/-!
# A147788: a(n) = floor(2*(3/2)^n).

The programs for A147788, the canonical program `A147788.P6856665284577639993` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147788 has offset 0).

The definition of A147788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147788.P6856665284577639993

`floor(2*(3/2)^n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147788

/-- `floor(2*(3/2)^n)` -/
def P6856665284577639993.Spec : Prop :=
  ∀ n, P6856665284577639993.a n = A147788 n

theorem P6856665284577639993.correct : P6856665284577639993.Spec := by
  intro n
  simp only [A147788]

end A147788

/-! ## A147788.P16638417728082114198

`floor(∑[3/2*a(n-1)])+2` with `a(0)=0, a(1)=1`
-/

namespace A147788.P16638417728082114198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (3 : ℚ) / 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2

end

end A147788.P16638417728082114198

namespace A147788

/-- `floor(∑[3/2*a(n-1)])+2` -/
def P16638417728082114198.Spec : Prop :=
  ∀ n, P16638417728082114198.a n = A147788 n

end A147788

/-! ## A147788.P16553794478951417129

`floor(∑[a(n-1)+a(n-1)/2])+2` with `a(0)=0, a(1)=1`
-/

namespace A147788.P16553794478951417129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2

end

end A147788.P16553794478951417129

namespace A147788

/-- `floor(∑[a(n-1)+a(n-1)/2])+2` -/
def P16553794478951417129.Spec : Prop :=
  ∀ n, P16553794478951417129.a n = A147788 n

end A147788

/-! ## A147788.P7126457402307655583

`A117590(n+1)-A157928(n)`
-/

namespace A147788.P7126457402307655583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117590 (n + 1) - A157928 n

end

end A147788.P7126457402307655583

namespace A147788

/-- `A117590(n+1)-A157928(n)` -/
def P7126457402307655583.Spec : Prop :=
  ∀ n, P7126457402307655583.a n = A147788 n

end A147788

/-! ## A147788.P1946924517213613029

`ceil(A002783(n)/A000079(n))+1`
-/

namespace A147788.P1946924517213613029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002783 n : ℚ) / (A000079 n : ℚ)⌉ + 1

end

end A147788.P1946924517213613029

namespace A147788

/-- `ceil(A002783(n)/A000079(n))+1` -/
def P1946924517213613029.Spec : Prop :=
  ∀ n, P1946924517213613029.a n = A147788 n

end A147788

/-!
# A147789: a(n) = round(2*(3/2)^n), using round-to-even method.

The programs for A147789, the canonical program `A147789.P10973890301083044471` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147789 has offset 1).

The definition of A147789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147789.P10973890301083044471

`round(3*sqrt(floor(((3/2)^n)²)))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147789

/-- `round(3*sqrt(floor(((3/2)^n)²)))` -/
def P10973890301083044471.Spec : Prop :=
  ∀ n, P10973890301083044471.a n = A147789 (n + 1)

theorem P10973890301083044471.correct : P10973890301083044471.Spec := by
  intro n
  simp only [A147789, Nat.add_sub_cancel]

end A147789

/-! ## A147789.P13157884412695018954

`ceil((6*3^n-2^n)/A258439(2*n+3))`
-/

namespace A147789.P13157884412695018954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((6 * 3 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / (A258439 (2 * n + 3) : ℚ)⌉

end

end A147789.P13157884412695018954

namespace A147789

/-- `ceil((6*3^n-2^n)/A258439(2*n+3))` -/
def P13157884412695018954.Spec : Prop :=
  ∀ n, P13157884412695018954.a n = A147789 (n + 1)

end A147789

/-! ## A147789.P9035860162613491725

`ceil(A304168(n+1)/A000079(n+1))`
-/

namespace A147789.P9035860162613491725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304168 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)⌉

end

end A147789.P9035860162613491725

namespace A147789

/-- `ceil(A304168(n+1)/A000079(n+1))` -/
def P9035860162613491725.Spec : Prop :=
  ∀ n, P9035860162613491725.a n = A147789 (n + 1)

end A147789

/-! ## A147789.P15274831372403219420

`ceil(A053581(n+2)/A000079(n+2))`
-/

namespace A147789.P15274831372403219420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053581 (n + 2) : ℚ) / (A000079 (n + 2) : ℚ)⌉

end

end A147789.P15274831372403219420

namespace A147789

/-- `ceil(A053581(n+2)/A000079(n+2))` -/
def P15274831372403219420.Spec : Prop :=
  ∀ n, P15274831372403219420.a n = A147789 (n + 1)

end A147789

/-! ## A147789.P10646871872681662639

`ceil(A053581(n+2)/A131572(2*(n+2)))`
-/

namespace A147789.P10646871872681662639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053581 (n + 2) : ℚ) / (A131572 (2 * (n + 2)) : ℚ)⌉

end

end A147789.P10646871872681662639

namespace A147789

/-- `ceil(A053581(n+2)/A131572(2*(n+2)))` -/
def P10646871872681662639.Spec : Prop :=
  ∀ n, P10646871872681662639.a n = A147789 (n + 1)

end A147789

/-!
# A147790: a(1) = 3, a(n) = round(a(n-1)*3/2) for n > 1, using round-to-even method.

The programs for A147790, there is no canonical definition to state claims against.
-/

/-! ## A147790.P13244309525694291996

`a(n-1)+floor((a(n-1)+or(2, a(n-1)))/4)` with `a(0)=3`
-/

namespace A147790.P13244309525694291996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + ⌊(a (n - 1) + Int.lor 2 (a (n - 1)) : ℚ) / 4⌋

end

end A147790.P13244309525694291996

/-! ## A147790.P17090996164423464212

`A328262(n+3)`
-/

namespace A147790.P17090996164423464212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328262 (n + 3)

end

end A147790.P17090996164423464212

/-! ## A147790.P13226199964438136173

`record[A328262(A052938(A028242(n)))]`
-/

namespace A147790.P13226199964438136173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328262 (A052938 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147790.P13226199964438136173

/-! ## A147790.P8581684876066814647

`record[A328262(A052938(A052938(n)))]`
-/

namespace A147790.P8581684876066814647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328262 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147790.P8581684876066814647

/-! ## A147790.P2724054742008969198

`A189725(a(n-1))` with `a(0)=3`
-/

namespace A147790.P2724054742008969198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A189725 (a (n - 1)).toNat

end

end A147790.P2724054742008969198

/-!
# A147791: Primes p such that p^q-2 is prime for some prime q.

The programs for A147791, there is no canonical definition to state claims against.
-/

/-! ## A147791.P16941136396282075584

`p?[∑[A001221(A275870(n+3))]]`
-/

namespace A147791.P16941136396282075584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275870 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A147791.P16941136396282075584

/-! ## A147791.P10025229202900664392

`xor(A169647(n+1), A185284(A084061(n)))`
-/

namespace A147791.P10025229202900664392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169647 (n + 1)) (A185284 (A084061 n).toNat)

end

end A147791.P10025229202900664392

/-!
# A147792: A quadrisection of A061042.

The programs for A147792, the canonical program `A147792.P9426744247077594127` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147792 has offset 0).

The definition of A147792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147792.P9426744247077594127

`A061042(4*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A147792

/-- `A061042(4*(n+1))` -/
def P9426744247077594127.Spec : Prop :=
  ∀ n, P9426744247077594127.a n = A147792 n

theorem P9426744247077594127.correct : P9426744247077594127.Spec := by
  intro n
  simp only [A147792]

end A147792

/-! ## A147792.P14755399256591982848

`A061036(sqrt((4*n+2)²/4)*(4*n+7))`
-/

namespace A147792.P14755399256591982848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061036 (SequenceMachineLib.roundAway (Real.sqrt (((4 * n + 2) ^ 2 : ℚ) / 4 : ℝ) * (4 * n + 7 : ℝ))).toNat

end

end A147792.P14755399256591982848

namespace A147792

/-- `A061036(sqrt((4*n+2)²/4)*(4*n+7))` -/
def P14755399256591982848.Spec : Prop :=
  ∀ n, P14755399256591982848.a n = A147792 n

end A147792

/-!
# A147795: If n=A000695(k_n)+2*A000695(l_n), then a(n) is the number of nonnegative integers m

The programs for A147795, there is no canonical definition to state claims against.
-/

/-! ## A147795.P17945491338185224512

`n-A393253(n)`
-/

namespace A147795.P17945491338185224512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A393253 n

end

end A147795.P17945491338185224512

/-! ## A147795.P14611301270174014923

`∑[A106481(∑{e}[and(n, -n), #])]`
-/

namespace A147795.P14611301270174014923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147795.P14611301270174014923

/-! ## A147795.P6630796830404693505

`∑[A233810(∑{e}[or(n, -n), #])]`
-/

namespace A147795.P6630796830404693505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233810 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147795.P6630796830404693505

/-! ## A147795.P8613179974930502894

`∑[2^val(A004277(n), 4)-1]`
-/

namespace A147795.P8613179974930502894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (A004277 n).toNat 4 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147795.P8613179974930502894

/-! ## A147795.P5288252823479799700

`∑[A292370(xor(n, n-1)+1)]`
-/

namespace A147795.P5288252823479799700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (Int.xor (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147795.P5288252823479799700

/-! ## A147795.P9899019121107955996

`A059906(n)+2*a(floor(n/2))` with `a(0)=0`
-/

namespace A147795.P9899019121107955996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059906 n + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A147795.P9899019121107955996

/-! ## A147795.P18011102932354754345

`floor(A056964(a(floor(n/4)))+n/2)` with `a(0)=0`
-/

namespace A147795.P18011102932354754345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(A056964 (a ⌊(n : ℚ) / 4⌋.toNat).toNat : ℚ) + (n : ℚ) / 2⌋

end

end A147795.P18011102932354754345

/-! ## A147795.P1386912032737985878

`n-A003056(A054239(n))`
-/

namespace A147795.P1386912032737985878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003056 (A054239 n).toNat

end

end A147795.P1386912032737985878

/-! ## A147795.P5569272439382415187

`n-A059261(A163355(n))`
-/

namespace A147795.P5569272439382415187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059261 (A163355 n).toNat

end

end A147795.P5569272439382415187

/-! ## A147795.P7945707944944562302

`∑[A056295(sqrt(A123726(n)))]`
-/

namespace A147795.P7945707944944562302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (SequenceMachineLib.roundAway (Real.sqrt (A123726 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147795.P7945707944944562302

/-!
# A147796: Number of consistent sets of 3 irreflexive binary order relationships over n objects.

The programs for A147796, the canonical program `A147796.P11084416986379260796` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147796 has offset 3).

The definition of A147796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147796.P11084416986379260796

`C(n+3, 3)*((n+3)^3-5*(n+3)-6)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A147796

/-- `C(n+3, 3)*((n+3)^3-5*(n+3)-6)` -/
def P11084416986379260796.Spec : Prop :=
  ∀ n, P11084416986379260796.a n = A147796 (n + 3)

theorem P11084416986379260796.correct : P11084416986379260796.Spec := by
  intro n
  simp only [A147796, Nat.add_sub_cancel]

end A147796

/-! ## A147796.P13286561283175422353

`1/6*(n+3)*(n+2)*(n+1)*((n+3)^3-5*(n+3)-6)`
-/

namespace A147796.P13286561283175422353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n + 3 : ℚ) * (n + 2 : ℚ) * (n + 1 : ℚ) * (((n + 3) ^ 3 : ℤ) - (5 * (n + 3) : ℤ) - 6 : ℚ)

end

end A147796.P13286561283175422353

namespace A147796

/-- `1/6*(n+3)*(n+2)*(n+1)*((n+3)^3-5*(n+3)-6)` -/
def P13286561283175422353.Spec : Prop :=
  ∀ n, P13286561283175422353.a n = (A147796 (n + 3) : ℚ)

end A147796

/-! ## A147796.P18235697296044623237

`C((n+3)*(n+2), 3)-(n+3)*(n+2)*((n+3)*(n+2)-2)/2-2*C(n+3, 3)`
-/

namespace A147796.P18235697296044623237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 3) * (n + 2)) 3 : ℚ) - (((n + 3) * (n + 2) : ℤ) * (((n + 3) * (n + 2) : ℤ) - 2) : ℚ) / 2 - (2 * Nat.choose (n + 3) 3 : ℚ)

end

end A147796.P18235697296044623237

namespace A147796

/-- `C((n+3)*(n+2), 3)-(n+3)*(n+2)*((n+3)*(n+2)-2)/2-2*C(n+3, 3)` -/
def P18235697296044623237.Spec : Prop :=
  ∀ n, P18235697296044623237.a n = (A147796 (n + 3) : ℚ)

end A147796

/-! ## A147796.P18388005999732633296

`A130809(A000217(n+2))-A007290(n+3)`
-/

namespace A147796.P18388005999732633296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130809 (A000217 (n + 2)).toNat - A007290 (n + 3)

end

end A147796.P18388005999732633296

namespace A147796

/-- `A130809(A000217(n+2))-A007290(n+3)` -/
def P18388005999732633296.Spec : Prop :=
  ∀ n, P18388005999732633296.a n = A147796 (n + 3)

end A147796

/-! ## A147796.P8216409500687162872

`A081064(A000125(n+2)+3)`
-/

namespace A147796.P8216409500687162872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081064 (A000125 (n + 2) + 3).toNat

end

end A147796.P8216409500687162872

namespace A147796

/-- `A081064(A000125(n+2)+3)` -/
def P8216409500687162872.Spec : Prop :=
  ∀ n, P8216409500687162872.a n = A147796 (n + 3)

end A147796

/-!
# A147797: The 10^n-th twin prime, A001097(10^n).

The programs for A147797, the canonical program `A147797.P8071727392255312945` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147797 has offset 0).

The definition of A147797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A147797.P8071727392255312945

`A001097(10^n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A147797

/-- `A001097(10^n)` -/
def P8071727392255312945.Spec : Prop :=
  ∀ n, P8071727392255312945.a n = A147797 n

theorem P8071727392255312945.correct : P8071727392255312945.Spec := by
  intro n
  simp only [A147797]

end A147797

/-! ## A147797.P5997636059752322857

`A001359(floor(10^n/2)+1)`
-/

namespace A147797.P5997636059752322857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (⌊(10 ^ n : ℚ) / 2⌋ + 1).toNat

end

end A147797.P5997636059752322857

namespace A147797

/-- `A001359(floor(10^n/2)+1)` -/
def P5997636059752322857.Spec : Prop :=
  ∀ n, P5997636059752322857.a n = A147797 n

end A147797

/-!
# A147798: Minimal value of A007947(m*(11^n-m)) with m coprime to 11.

The programs for A147798, there is no canonical definition to state claims against.
-/

/-! ## A147798.P11797498591235478765

`A051377(A060223(n)*A203984(n+1))`
-/

namespace A147798.P11797498591235478765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A060223 n * A203984 (n + 1)).toNat

end

end A147798.P11797498591235478765

/-!
# A147799: Minimal value of A007947(m*(7^n-m)) with m coprime to 7.

The programs for A147799, there is no canonical definition to state claims against.
-/

/-! ## A147799.P18362784251042440094

`lcm(6, A267808(A087761(n)))`
-/

namespace A147799.P18362784251042440094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A267808 (A087761 n).toNat)

end

end A147799.P18362784251042440094

