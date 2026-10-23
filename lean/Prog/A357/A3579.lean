import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A357900: Number of groups of order A060702(n) with trivial center.

The programs for A357900, there is no canonical definition to state claims against.
-/

/-! ## A357900.P12299782720570497257

`A357924(A060702(n+1))`
-/

namespace A357900.P12299782720570497257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357924 (A060702 (n + 1)).toNat

end

end A357900.P12299782720570497257

/-! ## A357900.P16421921281889680105

`A357924(eq[1, A059806(n+1)]+1)`
-/

namespace A357900.P16421921281889680105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A357900.P16421921281889680105

/-! ## A357900.P4736169865588613250

`A357924(record[(n+1)/A059806(n+1)])`
-/

namespace A357900.P4736169865588613250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A059806 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357924 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A357900.P4736169865588613250

/-! ## A357900.P14633978539102768985

`A290105(∪[A055225(3*(n+1)), A181600(n+3)])`
-/

namespace A357900.P14633978539102768985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181600 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290105 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A357900.P14633978539102768985

/-! ## A357900.P15252096384279881427

`gcd(A125161(n+1), A259797(A028310(n)))`
-/

namespace A357900.P15252096384279881427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125161 (n + 1)) (A259797 (A028310 n).toNat)

end

end A357900.P15252096384279881427

/-!
# A357901: a(n) = Sum_{k=0..floor(n/3)} |Stirling1(n - 2*k,k)|.

The programs for A357901, there is no canonical definition to state claims against.
-/

/-! ## A357901.P4711719752642181607

`A033183(A359258(n+2)+A328431(n))`
-/

namespace A357901.P4711719752642181607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A359258 (n + 2) + A328431 n).toNat

end

end A357901.P4711719752642181607

/-!
# A357903: a(n) = Sum_{k=0..floor(n/3)} Stirling2(n - 2*k,k).

The programs for A357903, there is no canonical definition to state claims against.
-/

/-! ## A357903.P15254274395669985752

`round(A319565(n)/A265067(n))`
-/

namespace A357903.P15254274395669985752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319565 n : ℚ) / (A265067 n : ℚ))

end

end A357903.P15254274395669985752

/-! ## A357903.P7782354255778083712

`A273190(A086246(n)+A006720(n+1))`
-/

namespace A357903.P7782354255778083712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A086246 n + A006720 (n + 1)).toNat

end

end A357903.P7782354255778083712

/-!
# A357905: a(n) = log_3(A060839(n)).

The programs for A357905, the canonical program `A357905.P13685105207051734525` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357905 has offset 1).

The definition of A357905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357905.P14868663643956546348

`val(A060839(n+1), 3)`
-/

namespace A357905.P14868663643956546348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060839 (n + 1)).toNat 3

end

end A357905.P14868663643956546348

namespace A357905

/-- `val(A060839(n+1), 3)` -/
def P14868663643956546348.Spec : Prop :=
  ∀ n, (P14868663643956546348.a n : ℤ) = A357905 (n + 1)

end A357905

/-! ## A357905.P13685105207051734525

`val(A319100(n+1), 3)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A357905

/-- `val(A319100(n+1), 3)` -/
def P13685105207051734525.Spec : Prop :=
  ∀ n, (P13685105207051734525.a n : ℤ) = A357905 (n + 1)

theorem P13685105207051734525.correct : P13685105207051734525.Spec := by
  intro n
  simp only [A357905, Nat.add_sub_cancel]

end A357905

/-! ## A357905.P6705095944011294667

`A000193(A060839(n+1))`
-/

namespace A357905.P6705095944011294667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A060839 (n + 1)).toNat

end

end A357905.P6705095944011294667

namespace A357905

/-- `A000193(A060839(n+1))` -/
def P6705095944011294667.Spec : Prop :=
  ∀ n, P6705095944011294667.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P8516368228671019378

`A007949(A319100(n+1))`
-/

namespace A357905.P8516368228671019378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A319100 (n + 1)).toNat

end

end A357905.P8516368228671019378

namespace A357905

/-- `A007949(A319100(n+1))` -/
def P8516368228671019378.Spec : Prop :=
  ∀ n, P8516368228671019378.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P17372500795874670358

`A211271(A060839(n+1)²)`
-/

namespace A357905.P17372500795874670358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211271 (A060839 (n + 1) ^ 2).toNat

end

end A357905.P17372500795874670358

namespace A357905

/-- `A211271(A060839(n+1)²)` -/
def P17372500795874670358.Spec : Prop :=
  ∀ n, P17372500795874670358.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P12797877801068801766

`A030413(A060839(n+1)+6)`
-/

namespace A357905.P12797877801068801766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A060839 (n + 1) + 6).toNat

end

end A357905.P12797877801068801766

namespace A357905

/-- `A030413(A060839(n+1)+6)` -/
def P12797877801068801766.Spec : Prop :=
  ∀ n, P12797877801068801766.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P7580316404973875733

`A361235(5*A060839(n+1))`
-/

namespace A357905.P7580316404973875733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361235 (5 * A060839 (n + 1)).toNat

end

end A357905.P7580316404973875733

namespace A357905

/-- `A361235(5*A060839(n+1))` -/
def P7580316404973875733.Spec : Prop :=
  ∀ n, P7580316404973875733.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P10155639751745859251

`A000045(floor(log2(A060839(n+1))))`
-/

namespace A357905.P10155639751745859251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.log 2 (A060839 (n + 1)).toNat)

end

end A357905.P10155639751745859251

namespace A357905

/-- `A000045(floor(log2(A060839(n+1))))` -/
def P10155639751745859251.Spec : Prop :=
  ∀ n, P10155639751745859251.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P10363551444633500308

`A001222(∑{d}[n+1, A160498(#)])`
-/

namespace A357905.P10363551444633500308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), A160498 d).toNat

end

end A357905.P10363551444633500308

namespace A357905

/-- `A001222(∑{d}[n+1, A160498(#)])` -/
def P10363551444633500308.Spec : Prop :=
  ∀ n, P10363551444633500308.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P4034379731659258320

`A080791(C(A060839(n+1)+1, 2))`
-/

namespace A357905.P4034379731659258320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Nat.choose (A060839 (n + 1) + 1).toNat 2)

end

end A357905.P4034379731659258320

namespace A357905

/-- `A080791(C(A060839(n+1)+1, 2))` -/
def P4034379731659258320.Spec : Prop :=
  ∀ n, P4034379731659258320.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P6164230191708346594

`A000005(∑{d}[n+1, A160498(#)])-1`
-/

namespace A357905.P6164230191708346594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), A160498 d).toNat - 1

end

end A357905.P6164230191708346594

namespace A357905

/-- `A000005(∑{d}[n+1, A160498(#)])-1` -/
def P6164230191708346594.Spec : Prop :=
  ∀ n, P6164230191708346594.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P15745059854745034649

`A267142(n+1)+A005088(n+1)`
-/

namespace A357905.P15745059854745034649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (n + 1) + A005088 (n + 1)

end

end A357905.P15745059854745034649

namespace A357905

/-- `A267142(n+1)+A005088(n+1)` -/
def P15745059854745034649.Spec : Prop :=
  ∀ n, P15745059854745034649.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P5387946653571074343

`A325799(A060839(2*(n+1)))`
-/

namespace A357905.P5387946653571074343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (A060839 (2 * (n + 1))).toNat

end

end A357905.P5387946653571074343

namespace A357905

/-- `A325799(A060839(2*(n+1)))` -/
def P5387946653571074343.Spec : Prop :=
  ∀ n, P5387946653571074343.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P16422232878381676443

`A355549(A060839(n+1)²)`
-/

namespace A357905.P16422232878381676443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355549 (A060839 (n + 1) ^ 2).toNat

end

end A357905.P16422232878381676443

namespace A357905

/-- `A355549(A060839(n+1)²)` -/
def P16422232878381676443.Spec : Prop :=
  ∀ n, P16422232878381676443.a n = A357905 (n + 1)

end A357905

/-! ## A357905.P16244119545668593310

`A005088(A076306(A060839(n+1)²))`
-/

namespace A357905.P16244119545668593310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A076306 (A060839 (n + 1) ^ 2).toNat).toNat

end

end A357905.P16244119545668593310

namespace A357905

/-- `A005088(A076306(A060839(n+1)²))` -/
def P16244119545668593310.Spec : Prop :=
  ∀ n, P16244119545668593310.a n = A357905 (n + 1)

end A357905

/-!
# A357906: a(n) = log_2(A073103(n)).

The programs for A357906, there is no canonical definition to state claims against.
-/

/-! ## A357906.P5655508000937940031

`log2(A073103(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357906.P5655508000937940031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A073103 (n + 1) : ℝ)

end

end A357906.P5655508000937940031

/-! ## A357906.P4165624838433735694

`log2(∑{d}[n+1, A160499(#)])`
-/

namespace A357906.P4165624838433735694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∑ d ∈ Nat.divisors (f1 n), A160499 d : ℤ) : ℝ)

end

end A357906.P4165624838433735694

/-! ## A357906.P2460184183499040767

`A000120(A073103(n+1)-1)`
-/

namespace A357906.P2460184183499040767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A073103 (n + 1) - 1).toNat

end

end A357906.P2460184183499040767

/-! ## A357906.P16172021335805172134

`A023645(2*A073103(n+1))`
-/

namespace A357906.P16172021335805172134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (2 * A073103 (n + 1)).toNat

end

end A357906.P16172021335805172134

/-! ## A357906.P4881857718968614879

`A347381(2*A073103(n+1))`
-/

namespace A357906.P4881857718968614879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (2 * A073103 (n + 1)).toNat

end

end A357906.P4881857718968614879

/-! ## A357906.P7332922650597023898

`A007814(11*A073103(n+1))`
-/

namespace A357906.P7332922650597023898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (11 * A073103 (n + 1)).toNat

end

end A357906.P7332922650597023898

/-! ## A357906.P99871314589240903

`A007814(lcm(11, A073103(n+1)))`
-/

namespace A357906.P99871314589240903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm 11 (A073103 (n + 1)))

end

end A357906.P99871314589240903

/-! ## A357906.P9036974868944730173

`∑{d}[A073103(n+1), A001221(#)]`
-/

namespace A357906.P9036974868944730173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A357906.P9036974868944730173

/-! ## A357906.P6586504122756439234

`A001222(∑{d}[n+1, A160499(#)])`
-/

namespace A357906.P6586504122756439234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), A160499 d).toNat

end

end A357906.P6586504122756439234

/-! ## A357906.P1993135448390304000

`A032741(∑{d}[n+1, A160499(#)])`
-/

namespace A357906.P1993135448390304000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ d ∈ Nat.divisors (f1 n), A160499 d).toNat

end

end A357906.P1993135448390304000

/-! ## A357906.P15762504377781072175

`A000005(∑{d}[n+1, A160499(#)])-1`
-/

namespace A357906.P15762504377781072175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), A160499 d).toNat - 1

end

end A357906.P15762504377781072175

/-! ## A357906.P9773932936263083224

`log2(A000010(n+1)/A250207(n+1))`
-/

namespace A357906.P9773932936263083224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000010 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ) : ℝ)

end

end A357906.P9773932936263083224

/-! ## A357906.P9147249718670573018

`A001222(A000010(n+1)/A250207(n+1))`
-/

namespace A357906.P9147249718670573018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A250207 (n + 1) : ℚ))).toNat

end

end A357906.P9147249718670573018

/-!
# A357908: Index of the first occurrence of n-th prime in Van Eck's sequence (A181391), or 0 if n-th prime never appears.

The programs for A357908, there is no canonical definition to state claims against.
-/

/-! ## A357908.P499798036898332159

`A171862(p?[abs(xor(n, -2))])`
-/

namespace A357908.P499798036898332159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A357908.P499798036898332159

/-! ## A357908.P9292129144528074319

`A171862(Δ[A007504(n)])`
-/

namespace A357908.P9292129144528074319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (f1 (n + 1) - f1 n).toNat

end

end A357908.P9292129144528074319

/-! ## A357908.P13913392684726338538

`A171862(A000040(n+1))`
-/

namespace A357908.P13913392684726338538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A000040 (n + 1)).toNat

end

end A357908.P13913392684726338538

/-! ## A357908.P1905210544590265576

`A171862(A216883(n+1))`
-/

namespace A357908.P1905210544590265576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A216883 (n + 1)).toNat

end

end A357908.P1905210544590265576

/-! ## A357908.P17066910567907432695

`A171862(A216884(n+1))`
-/

namespace A357908.P17066910567907432695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A216884 (n + 1)).toNat

end

end A357908.P17066910567907432695

/-! ## A357908.P274640545232954962

`A171862(A216885(n+1))`
-/

namespace A357908.P274640545232954962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A216885 (n + 1)).toNat

end

end A357908.P274640545232954962

/-! ## A357908.P16637181543317972651

`A171862(A216887(n+1))`
-/

namespace A357908.P16637181543317972651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A216887 (n + 1)).toNat

end

end A357908.P16637181543317972651

/-! ## A357908.P8248865505168739443

`A171862(A385492(n+1))`
-/

namespace A357908.P8248865505168739443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A385492 (n + 1)).toNat

end

end A357908.P8248865505168739443

/-! ## A357908.P9076398305768986707

`A171862(A008578(n+2))`
-/

namespace A357908.P9076398305768986707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A008578 (n + 2)).toNat

end

end A357908.P9076398305768986707

/-!
# A357913: Inverse of 10 modulo prime(n).

The programs for A357913, there is no canonical definition to state claims against.
-/

/-! ## A357913.P14174647718756163690

`(A114013(n+4)+1)/10`
-/

namespace A357913.P14174647718756163690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114013 (n + 4) + 1 : ℚ) / 10

end

end A357913.P14174647718756163690

/-! ## A357913.P10213814158856581348

`A000040(n+4)-A103876(n+4)`
-/

namespace A357913.P10213814158856581348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - A103876 (n + 4)

end

end A357913.P10213814158856581348

/-! ## A357913.P10536833926662966370

`A008578(n+5)-A103876(n+4)`
-/

namespace A357913.P10536833926662966370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 5) - A103876 (n + 4)

end

end A357913.P10536833926662966370

/-! ## A357913.P14734995897484726395

`A006530(10*A103876(n+4)+1)-A103876(n+4)`
-/

namespace A357913.P14734995897484726395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * A103876 (n + 4) + 1).toNat - A103876 (n + 4)

end

end A357913.P14734995897484726395

/-! ## A357913.P11542703906896977222

`A090417(n+1)-A103876(n+4)`
-/

namespace A357913.P11542703906896977222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - A103876 (n + 4)

end

end A357913.P11542703906896977222

/-! ## A357913.P225050012463763373

`ceil(A114013(n+4)/10)`
-/

namespace A357913.P225050012463763373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114013 (n + 4) : ℚ) / 10⌉

end

end A357913.P225050012463763373

/-! ## A357913.P7064791064209305013

`A008616(A114013(n+4))`
-/

namespace A357913.P7064791064209305013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A114013 (n + 4)).toNat

end

end A357913.P7064791064209305013

/-! ## A357913.P1571494429308704374

`A090417(n+1)-floor(A114011(n+4)/10)`
-/

namespace A357913.P1571494429308704374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - ⌊(A114011 (n + 4) : ℚ) / 10⌋

end

end A357913.P1571494429308704374

/-! ## A357913.P12366076358494489194

`A090417(n+1)-round(A114011(2*(n+2)-n)/10)`
-/

namespace A357913.P12366076358494489194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - SequenceMachineLib.roundAway ((A114011 (2 * (n + 2) - n) : ℚ) / 10)

end

end A357913.P12366076358494489194

/-! ## A357913.P17830359114782946

`A090417(n+1)-A008616(A114011(n+4))`
-/

namespace A357913.P17830359114782946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1) - A008616 (A114011 (n + 4)).toNat

end

end A357913.P17830359114782946

/-!
# A357914: Iterated partial sums of the Moebius mu function, square array read by ascending antidiagonals.

The programs for A357914, there is no canonical definition to state claims against.
-/

/-! ## A357914.P1008853050600471973

`A316345(A326500(2*n))+A080232(n)`
-/

namespace A357914.P1008853050600471973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A326500 (2 * n)).toNat + A080232 n

end

end A357914.P1008853050600471973

/-! ## A357914.P16193608858318046682

`A287530(A306017(n+1))+A037012(n)`
-/

namespace A357914.P16193608858318046682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287530 (A306017 (n + 1)).toNat + A037012 n

end

end A357914.P16193608858318046682

/-!
# A357915: Concatenation of the decimal digits of {n, 1..n}.

The programs for A357915, there is no canonical definition to state claims against.
-/

/-! ## A357915.P2683945363508855793

`A126431(n+1)+A007093(A048439(n+1))`
-/

namespace A357915.P2683945363508855793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 (n + 1) + A007093 (A048439 (n + 1)).toNat

end

end A357915.P2683945363508855793

/-!
# A357916: Primes p that can be written as phi(k) + d(k) for some k, where phi(k) = A000010(k) is Euler's totient function and d(k) = A000005(k) is the number of divisors of k.

The programs for A357916, there is no canonical definition to state claims against.
-/

/-! ## A357916.P15695864546592843342

`A000010(A357917(n+1))+A000005(A357917(n+1))`
-/

namespace A357916.P15695864546592843342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A357917 (n + 1)).toNat + A000005 (A357917 (n + 1)).toNat

end

end A357916.P15695864546592843342

/-! ## A357916.P1115022890624976133

`p?[A007614(n+1)+A000005(A032447(n+1))]`
-/

namespace A357916.P1115022890624976133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (n + 1) + A000005 (A032447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357916.P1115022890624976133

/-! ## A357916.P8608564630979401413

`A061468(A357917(n+1))`
-/

namespace A357916.P8608564630979401413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (A357917 (n + 1)).toNat

end

end A357916.P8608564630979401413

/-!
# A357917: a(n) is the least k such that phi(k) + d(k) = A357916(n), where phi(k) = A000010(k) is Euler's totient function, and d(k) = A000005(k) is the number of divisors of k.

The programs for A357917, there is no canonical definition to state claims against.
-/

/-! ## A357917.P5361932421269318077

`A364346(2*(n+1))^A020639(A003266(n+1))`
-/

namespace A357917.P5361932421269318077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364346 (2 * (n + 1)) : ℚ) ^ (A020639 (A003266 (n + 1)).toNat : ℤ)

end

end A357917.P5361932421269318077

/-! ## A357917.P7612975558933226878

`A227759(∑[A057977(n)])`
-/

namespace A357917.P7612975558933226878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357917.P7612975558933226878

/-! ## A357917.P17925641231983991717

`∩[A225983(n+1), A111228(n)]`
-/

namespace A357917.P17925641231983991717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111228 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357917.P17925641231983991717

/-!
# A357921: Primitive abundant numbers for which there is no smaller primitive abundant number having the same ordered prime signature.

The programs for A357921, there is no canonical definition to state claims against.
-/

/-! ## A357921.P2878099641647317217

`A071395(eq[A034968(n), A035441(n+5)])`
-/

namespace A357921.P2878099641647317217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357921.P2878099641647317217

/-! ## A357921.P14473748916039166240

`A071395(lt[A110618(n), A160014(3*n+2)])`
-/

namespace A357921.P14473748916039166240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357921.P14473748916039166240

/-!
# A357923: a(n) is the least number of terms in the sum S = 1/(n+1) + 1/(n+2) + 1/(n+3) + ... such that S > n.

The programs for A357923, there is no canonical definition to state claims against.
-/

/-! ## A357923.P14612616435310256538

`A218585(A035603(n+1))`
-/

namespace A357923.P14612616435310256538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218585 (A035603 (n + 1)).toNat

end

end A357923.P14612616435310256538

/-!
# A357924: Number of groups of order n with trivial center.

The programs for A357924, there is no canonical definition to state claims against.
-/

/-! ## A357924.P3269024041590799564

`A325406(A025427(3*n)^A094781(3*n+2))`
-/

namespace A357924.P3269024041590799564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325406 (SequenceMachineLib.roundAway ((A025427 (3 * n) : ℚ) ^ (A094781 (3 * n + 2) : ℤ))).toNat

end

end A357924.P3269024041590799564

/-! ## A357924.P18355232502459325826

`A365676(A001221(n+1)^A337209(n+1))`
-/

namespace A357924.P18355232502459325826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365676 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A337209 (n + 1) : ℤ))).toNat

end

end A357924.P18355232502459325826

/-! ## A357924.P9878945858362806546

`C(A329314(A185723(2*n+1)), A059806(n+1))`
-/

namespace A357924.P9878945858362806546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329314 (A185723 (2 * n + 1)).toNat).toNat (A059806 (n + 1)).toNat

end

end A357924.P9878945858362806546

/-! ## A357924.P3742545675568635397

`C(A031226(A317532(n+4)), A059806(n+1))`
-/

namespace A357924.P3742545675568635397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A031226 (A317532 (n + 4)).toNat).toNat (A059806 (n + 1)).toNat

end

end A357924.P3742545675568635397

/-!
# A357925: a(n) = Sum_{k=0..floor(n/3)} Stirling2(n - 2*k,n - 3*k).

The programs for A357925, there is no canonical definition to state claims against.
-/

/-! ## A357925.P11668632068065052897

`round(A319752(n)/A151945(n))`
-/

namespace A357925.P11668632068065052897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319752 n : ℚ) / (A151945 n : ℚ))

end

end A357925.P11668632068065052897

/-! ## A357925.P7612082361126859699

`round(A123579(A123389(n+1)+1)/5)`
-/

namespace A357925.P7612082361126859699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123579 (A123389 (n + 1) + 1).toNat : ℚ) / 5)

end

end A357925.P7612082361126859699

/-! ## A357925.P8201574057043766098

`A092982(A098482(n))`
-/

namespace A357925.P8201574057043766098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A098482 n).toNat

end

end A357925.P8201574057043766098

/-! ## A357925.P3277544237920369630

`A100719(A118928(n))`
-/

namespace A357925.P3277544237920369630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A118928 n).toNat

end

end A357925.P3277544237920369630

/-! ## A357925.P13165462444212807461

`A353852(A364590(n))`
-/

namespace A357925.P13165462444212807461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (A364590 n).toNat

end

end A357925.P13165462444212807461

/-!
# A357927: Number of subsets of [n] in which exactly half of the elements are Fibonacci numbers.

The programs for A357927, the canonical program `A357927.P10800580115692162370` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357927 has offset 0).

The definition of A357927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357927.P2283560482914511342

`C(n, A131234(n+1)-1)`
-/

namespace A357927.P2283560482914511342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A131234 (n + 1) - 1).toNat

end

end A357927.P2283560482914511342

namespace A357927

/-- `C(n, A131234(n+1)-1)` -/
def P2283560482914511342.Spec : Prop :=
  ∀ n, (P2283560482914511342.a n : ℤ) = A357927 n

end A357927

/-! ## A357927.P11063848151036850739

`C(n, ∑[char[A000045(n+1)]])`
-/

namespace A357927.P11063848151036850739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357927.P11063848151036850739

namespace A357927

/-- `C(n, ∑[char[A000045(n+1)]])` -/
def P11063848151036850739.Spec : Prop :=
  ∀ n, (P11063848151036850739.a n : ℤ) = A357927 n

end A357927

/-! ## A357927.P2492818257214946434

`C(n, ∑[char[A108037(2*(n+2))]])`
-/

namespace A357927.P2492818257214946434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (2 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357927.P2492818257214946434

namespace A357927

/-- `C(n, ∑[char[A108037(2*(n+2))]])` -/
def P2492818257214946434.Spec : Prop :=
  ∀ n, (P2492818257214946434.a n : ℤ) = A357927 n

end A357927

/-! ## A357927.P10800580115692162370

`C(A028310(n), A072649(A028310(n)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A357927

/-- `C(A028310(n), A072649(A028310(n)))` -/
def P10800580115692162370.Spec : Prop :=
  ∀ n, (P10800580115692162370.a n : ℤ) = A357927 n

theorem P10800580115692162370.correct : P10800580115692162370.Spec := by
  intro n
  simp only [A357927]

end A357927

/-! ## A357927.P11863277665448802842

`C(n, ∑[char[A087172(n+1)]])`
-/

namespace A357927.P11863277665448802842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357927.P11863277665448802842

namespace A357927

/-- `C(n, ∑[char[A087172(n+1)]])` -/
def P11863277665448802842.Spec : Prop :=
  ∀ n, (P11863277665448802842.a n : ℤ) = A357927 n

end A357927

/-!
# A357928: a(n) is the smallest c for which (s+c)^2-n is a square, where s = floor(sqrt(n)), or -1 if no such c exists.

The programs for A357928, there is no canonical definition to state claims against.
-/

/-! ## A357928.P8606214169975453691

`A304576(n+1)-A105141(A278661(n))`
-/

namespace A357928.P8606214169975453691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304576 (n + 1) - A105141 (A278661 n).toNat

end

end A357928.P8606214169975453691

/-! ## A357928.P16670945024579108283

`A112970(A068636(n+1))-A056832(A285948(n))`
-/

namespace A357928.P16670945024579108283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (A068636 (n + 1)).toNat - A056832 (A285948 n).toNat

end

end A357928.P16670945024579108283

/-!
# A357929: Numbers that share a (decimal) digit with at least 1 of their proper divisors.

The programs for A357929, there is no canonical definition to state claims against.
-/

/-! ## A357929.P13672583864235807301

`lt[A161435(A000009(n)), A038769(n+1)]+1`
-/

namespace A357929.P13672583864235807301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 (A000009 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357929.P13672583864235807301

/-! ## A357929.P1686041233327157418

`lt[A010051(A023290(n+1)), A121041(n+1)]+1`
-/

namespace A357929.P1686041233327157418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A023290 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357929.P1686041233327157418

/-! ## A357929.P4656606855588665001

`A038770(n+10)%A211224(3*(n+1))`
-/

namespace A357929.P4656606855588665001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038770 (n + 10)) (A211224 (3 * (n + 1)))

end

end A357929.P4656606855588665001

/-! ## A357929.P6971169074292125878

`lt[A119999(A347323(n)²), A119999(n)²]`
-/

namespace A357929.P6971169074292125878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 (A347323 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357929.P6971169074292125878

/-! ## A357929.P16295245561299980757

`lt[A000005(n+1), A332920(A324160(3*n))]`
-/

namespace A357929.P16295245561299980757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332920 (A324160 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357929.P16295245561299980757

/-!
# A357931: a(n) = Sum_{k=0..floor(n/3)} |Stirling1(n - 2*k,n - 3*k)|.

The programs for A357931, there is no canonical definition to state claims against.
-/

/-! ## A357931.P3518779694210742453

`A104464(A394800(n))`
-/

namespace A357931.P3518779694210742453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A394800 n).toNat

end

end A357931.P3518779694210742453

/-! ## A357931.P5097758039747802819

`A328369(A357925(n))`
-/

namespace A357931.P5097758039747802819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328369 (A357925 n).toNat

end

end A357931.P5097758039747802819

/-! ## A357931.P6341085498276067367

`A000196(A304454(n)+1)`
-/

namespace A357931.P6341085498276067367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A304454 n + 1).toNat

end

end A357931.P6341085498276067367

/-! ## A357931.P14352874267572658666

`A182220(A157134(n+1))`
-/

namespace A357931.P14352874267572658666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A157134 (n + 1)).toNat

end

end A357931.P14352874267572658666

/-! ## A357931.P5097495874580048660

`A118001(A309352(n+1))`
-/

namespace A357931.P5097495874580048660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (A309352 (n + 1)).toNat

end

end A357931.P5097495874580048660

/-!
# A357932: a(n) = Sum_{k=0..floor(n/4)} |Stirling1(n - 3*k,n - 4*k)|.

The programs for A357932, there is no canonical definition to state claims against.
-/

/-! ## A357932.P16895647370928866072

`A120401(A023427(n)+2)-2`
-/

namespace A357932.P16895647370928866072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A023427 n + 2).toNat - 2

end

end A357932.P16895647370928866072

/-! ## A357932.P17051956160017069414

`round(2^n/p?[∏{d}[n, #]])`
-/

namespace A357932.P17051956160017069414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ))

end

end A357932.P17051956160017069414

/-! ## A357932.P10516558120917904070

`A076564(A023427(n))`
-/

namespace A357932.P10516558120917904070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (A023427 n).toNat

end

end A357932.P10516558120917904070

/-! ## A357932.P5698709305063891054

`A157134(A250265(n))`
-/

namespace A357932.P5698709305063891054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157134 (A250265 n).toNat

end

end A357932.P5698709305063891054

/-! ## A357932.P12738708202074825677

`A375347(A102462(n))`
-/

namespace A357932.P12738708202074825677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375347 (A102462 n).toNat

end

end A357932.P12738708202074825677

/-!
# A357933: a(n) = Sum_{k=0..floor(n/5)} |Stirling1(n - 4*k,n - 5*k)|.

The programs for A357933, there is no canonical definition to state claims against.
-/

/-! ## A357933.P12830506643561010732

`A111470(A023428(n))`
-/

namespace A357933.P12830506643561010732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111470 (A023428 n).toNat

end

end A357933.P12830506643561010732

/-! ## A357933.P1263625703996727542

`A122921(A145457(n+2)+1)`
-/

namespace A357933.P1263625703996727542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A145457 (n + 2) + 1).toNat

end

end A357933.P1263625703996727542

/-!
# A357934: Products of two distinct lesser twin primes A001359.

The programs for A357934, there is no canonical definition to state claims against.
-/

/-! ## A357934.P14422443843195766528

`filter[A274212(n+1), A280710(#)]`
-/

namespace A357934.P14422443843195766528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A357934.P14422443843195766528

/-! ## A357934.P396717882034870865

`filter[A274212(n+1), A340370(#)]`
-/

namespace A357934.P396717882034870865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A357934.P396717882034870865

/-! ## A357934.P2316662480687467069

`filter[A274212(n+1), A353481(#)]`
-/

namespace A357934.P2316662480687467069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A357934.P2316662480687467069

/-! ## A357934.P8603802006495012955

`∩[A274212(n+1), A340380(n+1)]`
-/

namespace A357934.P8603802006495012955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357934.P8603802006495012955

/-! ## A357934.P4714844931848840479

`∩[A046388(n+1), A274212(n+1)]`
-/

namespace A357934.P4714844931848840479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357934.P4714844931848840479

/-! ## A357934.P17499686621817560579

`∩[A006881(n+1), A274212(n+1)]`
-/

namespace A357934.P17499686621817560579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357934.P17499686621817560579

/-! ## A357934.P10308959351363577984

`∩[A161918(n+1), A274212(n+1)]`
-/

namespace A357934.P10308959351363577984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357934.P10308959351363577984

/-! ## A357934.P5846374858728340795

`∩[A274212(n+1), A289558(n+1)]`
-/

namespace A357934.P5846374858728340795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357934.P5846374858728340795

/-!
# A357935: Primes p such that the sum of digits of 11*p is 11.

The programs for A357935, there is no canonical definition to state claims against.
-/

/-! ## A357935.P5565222490661192056

`p?[A279771(n+1)]`
-/

namespace A357935.P5565222490661192056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357935.P5565222490661192056

/-! ## A357935.P7379405701122296073

`∩[A061237(n+1), A279771(n+1)]`
-/

namespace A357935.P7379405701122296073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357935.P7379405701122296073

/-! ## A357935.P10401049608553050722

`∩[A079130(n+1), A279771(n+1)]`
-/

namespace A357935.P10401049608553050722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357935.P10401049608553050722

/-! ## A357935.P2800273674597170931

`∩[A129805(n+1), A279771(n+1)]`
-/

namespace A357935.P2800273674597170931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357935.P2800273674597170931

/-!
# A357936: a(n) is the least multiple of n that is a Niven (or Harshad) number.

The programs for A357936, there is no canonical definition to state claims against.
-/

/-! ## A357936.P9731526510490114126

`(n+1)*A144261(n+1)`
-/

namespace A357936.P9731526510490114126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A144261 (n + 1)

end

end A357936.P9731526510490114126

/-! ## A357936.P5306237537770056096

`A075362(A144261(n+1)+A000217(n))`
-/

namespace A357936.P5306237537770056096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A144261 (n + 1) + A000217 n).toNat

end

end A357936.P5306237537770056096

/-! ## A357936.P4335619787044254571

`(n+1)*(A337819(n+1)+A357172(2*(n+2))%2)`
-/

namespace A357936.P4335619787044254571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A337819 (n + 1) + Int.tmod (A357172 (2 * (n + 2))) 2)

end

end A357936.P4335619787044254571

/-! ## A357936.P8581533928841427016

`(n+1)*(A337819(n+1)+A019590(A036469(2*n+3)))`
-/

namespace A357936.P8581533928841427016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A337819 (n + 1) + A019590 (A036469 (2 * n + 3)).toNat)

end

end A357936.P8581533928841427016

/-! ## A357936.P2931801993412511628

`(A337819(n+1)+A070635(A248120(n+1)))*A000027(n+1)`
-/

namespace A357936.P2931801993412511628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337819 (n + 1) + A070635 (A248120 (n + 1)).toNat) * A000027 (n + 1)

end

end A357936.P2931801993412511628

/-!
# A357937: a(n) is the least multiple of n that is not a Niven (or Harshad) number.

The programs for A357937, there is no canonical definition to state claims against.
-/

/-! ## A357937.P16040110167131889378

`(n+1)*A144262(n+1)`
-/

namespace A357937.P16040110167131889378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A144262 (n + 1)

end

end A357937.P16040110167131889378

/-!
# A357938: Inverse Moebius transform of n * 2^omega(n).

The programs for A357938, the canonical program `A357938.P33426511589451347` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357938 has offset 1).

The definition of A357938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357938.P15040443534237595962

`∑{d}[n+1, #*A034444(#)]`
-/

namespace A357938.P15040443534237595962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034444 d

end

end A357938.P15040443534237595962

namespace A357938

/-- `∑{d}[n+1, #*A034444(#)]` -/
def P15040443534237595962.Spec : Prop :=
  ∀ n, P15040443534237595962.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P7770418818722088537

`∑{d}[n+1, #*2^A001221(#)]`
-/

namespace A357938.P7770418818722088537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) * (2 : ℚ) ^ (A001221 d : ℤ)

end

end A357938.P7770418818722088537

namespace A357938

/-- `∑{d}[n+1, #*2^A001221(#)]` -/
def P7770418818722088537.Spec : Prop :=
  ∀ n, P7770418818722088537.a n = (A357938 (n + 1) : ℚ)

end A357938

/-! ## A357938.P33426511589451347

`∑{d}[n+1, #*A048250((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A357938

/-- `∑{d}[n+1, #*A048250((n+1)/#)]` -/
def P33426511589451347.Spec : Prop :=
  ∀ n, P33426511589451347.a n = A357938 (n + 1)

theorem P33426511589451347.correct : P33426511589451347.Spec := by
  intro n
  simp only [A357938, Nat.add_sub_cancel]

end A357938

/-! ## A357938.P5250405571659271575

`∑{d}[n+1, A001615(#)*A007913((n+1)/#)]`
-/

namespace A357938.P5250405571659271575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P5250405571659271575

namespace A357938

/-- `∑{d}[n+1, A001615(#)*A007913((n+1)/#)]` -/
def P5250405571659271575.Spec : Prop :=
  ∀ n, P5250405571659271575.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P2004206902244117175

`∑{d}[n+1, A019554(#)*A034448((n+1)/#)]`
-/

namespace A357938.P2004206902244117175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P2004206902244117175

namespace A357938

/-- `∑{d}[n+1, A019554(#)*A034448((n+1)/#)]` -/
def P2004206902244117175.Spec : Prop :=
  ∀ n, P2004206902244117175.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P5080527749064549676

`∑{d}[n+1, A000005(#)*A078439((n+1)/#)]`
-/

namespace A357938.P5080527749064549676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A078439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P5080527749064549676

namespace A357938

/-- `∑{d}[n+1, A000005(#)*A078439((n+1)/#)]` -/
def P5080527749064549676.Spec : Prop :=
  ∀ n, P5080527749064549676.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P5497341911575097909

`∑{d}[n+1, A053822(#)*A065018((n+1)/#)]`
-/

namespace A357938.P5497341911575097909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A065018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P5497341911575097909

namespace A357938

/-- `∑{d}[n+1, A053822(#)*A065018((n+1)/#)]` -/
def P5497341911575097909.Spec : Prop :=
  ∀ n, P5497341911575097909.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P11770048481429777476

`∑{d}[n+1, A055615(#)*A064950((n+1)/#)]`
-/

namespace A357938.P11770048481429777476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A064950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P11770048481429777476

namespace A357938

/-- `∑{d}[n+1, A055615(#)*A064950((n+1)/#)]` -/
def P11770048481429777476.Spec : Prop :=
  ∀ n, P11770048481429777476.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P2755465031422058957

`∑{d}[n+1, A063659(#)*A069088((n+1)/#)]`
-/

namespace A357938.P2755465031422058957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A069088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P2755465031422058957

namespace A357938

/-- `∑{d}[n+1, A063659(#)*A069088((n+1)/#)]` -/
def P2755465031422058957.Spec : Prop :=
  ∀ n, P2755465031422058957.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P17360561623830296934

`∑{d}[n+1, A000010(#)*A319132((n+1)/#)]`
-/

namespace A357938.P17360561623830296934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P17360561623830296934

namespace A357938

/-- `∑{d}[n+1, A000010(#)*A319132((n+1)/#)]` -/
def P17360561623830296934.Spec : Prop :=
  ∀ n, P17360561623830296934.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P858825855252649758

`∑{d}[n+1, A008966(#)*A332618((n+1)/#)]`
-/

namespace A357938.P858825855252649758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P858825855252649758

namespace A357938

/-- `∑{d}[n+1, A008966(#)*A332618((n+1)/#)]` -/
def P858825855252649758.Spec : Prop :=
  ∀ n, P858825855252649758.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P90025469791830086

`∑{d}[n+1, A091512(#)*A300894((n+1)/#)]`
-/

namespace A357938.P90025469791830086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A300894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P90025469791830086

namespace A357938

/-- `∑{d}[n+1, A091512(#)*A300894((n+1)/#)]` -/
def P90025469791830086.Spec : Prop :=
  ∀ n, P90025469791830086.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P188477152399612440

`∑{d}[n+1, A068984(#)*A328722((n+1)/#)]`
-/

namespace A357938.P188477152399612440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068984 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P188477152399612440

namespace A357938

/-- `∑{d}[n+1, A068984(#)*A328722((n+1)/#)]` -/
def P188477152399612440.Spec : Prop :=
  ∀ n, P188477152399612440.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P8301596889604125904

`∑{d}[n+1, A072861(#)*A334657((n+1)/#)]`
-/

namespace A357938.P8301596889604125904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P8301596889604125904

namespace A357938

/-- `∑{d}[n+1, A072861(#)*A334657((n+1)/#)]` -/
def P8301596889604125904.Spec : Prop :=
  ∀ n, P8301596889604125904.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P9018840325987400786

`∑{d}[n+1, A254503(#)*A346613((n+1)/#)]`
-/

namespace A357938.P9018840325987400786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d * A346613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P9018840325987400786

namespace A357938

/-- `∑{d}[n+1, A254503(#)*A346613((n+1)/#)]` -/
def P9018840325987400786.Spec : Prop :=
  ∀ n, P9018840325987400786.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P6621022901989219897

`∑{d}[n+1, A328485(#)*A346612((n+1)/#)]`
-/

namespace A357938.P6621022901989219897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328485 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P6621022901989219897

namespace A357938

/-- `∑{d}[n+1, A328485(#)*A346612((n+1)/#)]` -/
def P6621022901989219897.Spec : Prop :=
  ∀ n, P6621022901989219897.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P13867636070235298452

`A346613((n+1)²)`
-/

namespace A357938.P13867636070235298452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346613 ((n + 1) ^ 2)

end

end A357938.P13867636070235298452

namespace A357938

/-- `A346613((n+1)²)` -/
def P13867636070235298452.Spec : Prop :=
  ∀ n, P13867636070235298452.a n = A357938 (n + 1)

end A357938

/-! ## A357938.P8483353195853906846

`∑{d}[(n+1)², sqrt(A053143(#))]`
-/

namespace A357938.P8483353195853906846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A053143 d : ℝ)

end

end A357938.P8483353195853906846

namespace A357938

/-- `∑{d}[(n+1)², sqrt(A053143(#))]` -/
def P8483353195853906846.Spec : Prop :=
  ∀ n, P8483353195853906846.a n = (A357938 (n + 1) : ℝ)

end A357938

/-! ## A357938.P8042455109268539434

`A057670((n+1)²)/(n+1)`
-/

namespace A357938.P8042455109268539434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057670 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A357938.P8042455109268539434

namespace A357938

/-- `A057670((n+1)²)/(n+1)` -/
def P8042455109268539434.Spec : Prop :=
  ∀ n, P8042455109268539434.a n = (A357938 (n + 1) : ℚ)

end A357938

/-! ## A357938.P16000376489436102690

`∑{d}[A162395(n+1), #/A000188(#)]`
-/

namespace A357938.P16000376489436102690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162395 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A000188 d : ℚ)

end

end A357938.P16000376489436102690

namespace A357938

/-- `∑{d}[A162395(n+1), #/A000188(#)]` -/
def P16000376489436102690.Spec : Prop :=
  ∀ n, P16000376489436102690.a n = (A357938 (n + 1) : ℚ)

end A357938

/-!
# A357940: a(n) = Sum_{k=0..floor(n/3)} Stirling2(k,n - 3*k).

The programs for A357940, there is no canonical definition to state claims against.
-/

/-! ## A357940.P4424727922260056796

`A046929(xor(2, A365894(n)))`
-/

namespace A357940.P4424727922260056796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (Int.xor 2 (A365894 n)).toNat

end

end A357940.P4424727922260056796

/-!
# A357941: a(n) = Sum_{k=0..floor(n/4)} Stirling2(k,n - 4*k).

The programs for A357941, there is no canonical definition to state claims against.
-/

/-! ## A357941.P15741990779538139771

`A000225(A127839(n+1)^A182715(n))`
-/

namespace A357941.P15741990779538139771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((A127839 (n + 1) : ℚ) ^ (A182715 n : ℤ))).toNat

end

end A357941.P15741990779538139771

/-! ## A357941.P9520220984947970409

`A000225(A127839(n+1)^A351034(n+1))`
-/

namespace A357941.P9520220984947970409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway ((A127839 (n + 1) : ℚ) ^ (A351034 (n + 1) : ℤ))).toNat

end

end A357941.P9520220984947970409

/-! ## A357941.P14760040458633165192

`A000225(A127839(n+1)%A316743(3*n+1))`
-/

namespace A357941.P14760040458633165192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.tmod (A127839 (n + 1)) (A316743 (3 * n + 1))).toNat

end

end A357941.P14760040458633165192

/-! ## A357941.P14510629058792358843

`A182715(A296605(n))`
-/

namespace A357941.P14510629058792358843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182715 (A296605 n).toNat

end

end A357941.P14510629058792358843

/-! ## A357941.P8922230025206498024

`A321312(A383584(n)+1)`
-/

namespace A357941.P8922230025206498024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321312 (A383584 n + 1).toNat

end

end A357941.P8922230025206498024

/-!
# A357946: a(n) is the number in the infinite multiplication table that the chess knight reaches in n moves, starting from the number 1, the angle between adjacent segments being 90 degrees alternately changing direction to the left and to the right.

The programs for A357946, the canonical program `A357946.P9178191136096238206` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357946 has offset 0).

The definition of A357946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357946.P6554701237323048021

`(6*n+3+(-1)^n)*(2*n+7-3*(-1)^n)/16`
-/

namespace A357946.P6554701237323048021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((6 * n + 3 : ℤ) + (-1) ^ n) * ((2 * n + 7 : ℤ) - 3 * (-1) ^ n) : ℚ) / 16

end

end A357946.P6554701237323048021

namespace A357946

/-- `(6*n+3+(-1)^n)*(2*n+7-3*(-1)^n)/16` -/
def P6554701237323048021.Spec : Prop :=
  ∀ n, P6554701237323048021.a n = (A357946 n : ℚ)

end A357946

/-! ## A357946.P9178191136096238206

`A001651(n+1)*A052938(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A357946

/-- `A001651(n+1)*A052938(n)` -/
def P9178191136096238206.Spec : Prop :=
  ∀ n, P9178191136096238206.a n = A357946 n

theorem P9178191136096238206.correct : P9178191136096238206.Spec := by
  intro n
  simp only [A357946]

end A357946

/-! ## A357946.P7308563461722070865

`A006370(n)+∑[lcm(2, n+1)-1]`
-/

namespace A357946.P7308563461722070865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357946.P7308563461722070865

namespace A357946

/-- `A006370(n)+∑[lcm(2, n+1)-1]` -/
def P7308563461722070865.Spec : Prop :=
  ∀ n, P7308563461722070865.a n = A357946 n

end A357946

/-! ## A357946.P11284039577600224585

`A347365(n)+A263807(n)`
-/

namespace A357946.P11284039577600224585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n + A263807 n

end

end A357946.P11284039577600224585

namespace A357946

/-- `A347365(n)+A263807(n)` -/
def P11284039577600224585.Spec : Prop :=
  ∀ n, P11284039577600224585.a n = A357946 n

end A357946

/-! ## A357946.P16051485816076494955

`A309805(n+1)+A006370(n)`
-/

namespace A357946.P16051485816076494955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1) + A006370 n

end

end A357946.P16051485816076494955

namespace A357946

/-- `A309805(n+1)+A006370(n)` -/
def P16051485816076494955.Spec : Prop :=
  ∀ n, P16051485816076494955.a n = A357946 n

end A357946

/-! ## A357946.P12085181196306091432

`A276382(n+1)+A181983(n)`
-/

namespace A357946.P12085181196306091432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276382 (n + 1) + A181983 n

end

end A357946.P12085181196306091432

namespace A357946

/-- `A276382(n+1)+A181983(n)` -/
def P12085181196306091432.Spec : Prop :=
  ∀ n, P12085181196306091432.a n = A357946 n

end A357946

/-! ## A357946.P7249940067187582786

`A276382(n+1)-A038608(n)`
-/

namespace A357946.P7249940067187582786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276382 (n + 1) - A038608 n

end

end A357946.P7249940067187582786

namespace A357946

/-- `A276382(n+1)-A038608(n)` -/
def P7249940067187582786.Spec : Prop :=
  ∀ n, P7249940067187582786.a n = A357946 n

end A357946

/-! ## A357946.P6818293822498399816

`A110349(n+1)-A397113(n)`
-/

namespace A357946.P6818293822498399816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1) - A397113 n

end

end A357946.P6818293822498399816

namespace A357946

/-- `A110349(n+1)-A397113(n)` -/
def P6818293822498399816.Spec : Prop :=
  ∀ n, P6818293822498399816.a n = A357946 n

end A357946

/-! ## A357946.P13892431994883535408

`A228344(n+2)-A296063(n+1)`
-/

namespace A357946.P13892431994883535408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228344 (n + 2) - A296063 (n + 1)

end

end A357946.P13892431994883535408

namespace A357946

/-- `A228344(n+2)-A296063(n+1)` -/
def P13892431994883535408.Spec : Prop :=
  ∀ n, P13892431994883535408.a n = A357946 n

end A357946

/-! ## A357946.P12564081808093030190

`ceil(lt[3, A020639(n+3)]/2*A052938(n))`
-/

namespace A357946.P12564081808093030190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2 * (A052938 n : ℚ)⌉

end

end A357946.P12564081808093030190

namespace A357946

/-- `ceil(lt[3, A020639(n+3)]/2*A052938(n))` -/
def P12564081808093030190.Spec : Prop :=
  ∀ n, P12564081808093030190.a n = A357946 n

end A357946

/-! ## A357946.P18266918751882228725

`(A026741(n+1)+A026741(n))*A052938(n)`
-/

namespace A357946.P18266918751882228725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) + A026741 n) * A052938 n

end

end A357946.P18266918751882228725

namespace A357946

/-- `(A026741(n+1)+A026741(n))*A052938(n)` -/
def P18266918751882228725.Spec : Prop :=
  ∀ n, P18266918751882228725.a n = A357946 n

end A357946

/-! ## A357946.P13279667961996095900

`(A008619(n+1)+A000035(n))*A001651(n+1)`
-/

namespace A357946.P13279667961996095900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (n + 1) + A000035 n) * A001651 (n + 1)

end

end A357946.P13279667961996095900

namespace A357946

/-- `(A008619(n+1)+A000035(n))*A001651(n+1)` -/
def P13279667961996095900.Spec : Prop :=
  ∀ n, P13279667961996095900.a n = A357946 n

end A357946

/-! ## A357946.P2920314495781774674

`A077043(n+2)-n*(-1)^n-2`
-/

namespace A357946.P2920314495781774674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 2) - (n : ℤ) * (-1) ^ n - 2

end

end A357946.P2920314495781774674

namespace A357946

/-- `A077043(n+2)-n*(-1)^n-2` -/
def P2920314495781774674.Spec : Prop :=
  ∀ n, P2920314495781774674.a n = A357946 n

end A357946

/-! ## A357946.P11136065580944653586

`A309805(n+2)+A176447(n)-A040001(n+1)`
-/

namespace A357946.P11136065580944653586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 2) + (A176447 n - A040001 (n + 1))

end

end A357946.P11136065580944653586

namespace A357946

/-- `A309805(n+2)+A176447(n)-A040001(n+1)` -/
def P11136065580944653586.Spec : Prop :=
  ∀ n, P11136065580944653586.a n = A357946 n

end A357946

/-! ## A357946.P9164335620084954807

`(A001651(n+2)-A109613(n))*A001651(n+1)`
-/

namespace A357946.P9164335620084954807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 2) - A109613 n) * A001651 (n + 1)

end

end A357946.P9164335620084954807

namespace A357946

/-- `(A001651(n+2)-A109613(n))*A001651(n+1)` -/
def P9164335620084954807.Spec : Prop :=
  ∀ n, P9164335620084954807.a n = A357946 n

end A357946

/-!
# A357949: a(n) = Sum_{k=0..floor(n/4)} (n-3*k)!/k!.

The programs for A357949, there is no canonical definition to state claims against.
-/

/-! ## A357949.P1471121852440201764

`A358498(n)-A010060(A213787(n))`
-/

namespace A357949.P1471121852440201764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358498 n - A010060 (A213787 n).toNat

end

end A357949.P1471121852440201764

/-! ## A357949.P11872285023169981097

`A115220(n)+A046523(A000142(n))`
-/

namespace A357949.P11872285023169981097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115220 n + A046523 (A000142 n).toNat

end

end A357949.P11872285023169981097

/-! ## A357949.P11638144373724379906

`A342955(A000112(n))+A000142(n)`
-/

namespace A357949.P11638144373724379906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 (A000112 n).toNat + A000142 n

end

end A357949.P11638144373724379906

/-! ## A357949.P10370854342737701273

`A023443(A352430(n)+A000055(n))`
-/

namespace A357949.P10370854342737701273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352430 n + A000055 n).toNat

end

end A357949.P10370854342737701273

/-!
# A357952: Maximum period of a totalistic cellular automaton on a connected graph with n nodes (counting the state of the updated node itself).

The programs for A357952, there is no canonical definition to state claims against.
-/

/-! ## A357952.P9061275458666720749

`A061228(A390132(n))`
-/

namespace A357952.P9061275458666720749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (A390132 n).toNat

end

end A357952.P9061275458666720749

/-! ## A357952.P3607928207722732336

`A233264(A269298(n+1))`
-/

namespace A357952.P3607928207722732336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233264 (A269298 (n + 1)).toNat

end

end A357952.P3607928207722732336

/-! ## A357952.P15857758680017034942

`A287394(A303840(n+2))`
-/

namespace A357952.P15857758680017034942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287394 (A303840 (n + 2)).toNat

end

end A357952.P15857758680017034942

/-! ## A357952.P7061668049160989767

`A325781(A290991(n)+2)`
-/

namespace A357952.P7061668049160989767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (A290991 n + 2).toNat

end

end A357952.P7061668049160989767

/-!
# A357955: a(n) = 3*binomial(4*n,n) - 20*binomial(3*n,n) + 54*binomial(2*n,n).

The programs for A357955, the canonical program `A357955.P12233206917270134364` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357955 has offset 0).

The definition of A357955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(4*n, n)-20*C(3*n, n)+54*C(2*n, n)` (program `A357955.P12233206917270134364`, by `A357955.P12233206917270134364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A357955.P11653550448911353855

`3*A005810(n)-20*A005809(n)+54*A000984(n)`
-/

namespace A357955.P11653550448911353855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005810 n - 20 * A005809 n + 54 * A000984 n

end

end A357955.P11653550448911353855

namespace A357955

/-- `3*A005810(n)-20*A005809(n)+54*A000984(n)` -/
def P11653550448911353855.Spec : Prop :=
  ∀ n, P11653550448911353855.a n = A357955 n

end A357955

/-! ## A357955.P12233206917270134364

`3*C(4*n, n)-20*C(3*n, n)+54*C(2*n, n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A357955

/-- `3*C(4*n, n)-20*C(3*n, n)+54*C(2*n, n)` -/
def P12233206917270134364.Spec : Prop :=
  ∀ n, P12233206917270134364.a n = A357955 n

theorem P12233206917270134364.correct : P12233206917270134364.Spec := by
  intro n
  simp only [A357955]

end A357955

/-!
# A357956: a(n) = 5*A005259(n) - 2*A005258(n).

The programs for A357956, there is no canonical definition to state claims against.
-/

/-! ## A357956.P1795721528041560476

`5*A005259(n)-2*A005258(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357956.P1795721528041560476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005259 n - 2 * A005258 n

end

end A357956.P1795721528041560476

/-!
# A357958: a(n) = 5*A005259(n) + 14*A005258(n-1).

The programs for A357958, there is no canonical definition to state claims against.
-/

/-! ## A357958.P3177006655839292342

`5*A005259(n+1)+14*A005258(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357958.P3177006655839292342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005259 (n + 1) + 14 * A005258 n

end

end A357958.P3177006655839292342

/-!
# A357959: a(n) = 5*A005259(n-1) + 2*A005258(n).

The programs for A357959, there is no canonical definition to state claims against.
-/

/-! ## A357959.P2037039759874617514

`5*A005259(n)+2*A005258(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357959.P2037039759874617514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005259 n + 2 * A005258 (n + 1)

end

end A357959.P2037039759874617514

/-!
# A357962: Expansion of e.g.f. exp( (exp(x^2) - 1)/x ).

The programs for A357962, there is no canonical definition to state claims against.
-/

/-! ## A357962.P13451929492902303296

`A039775(A134055(n))+1`
-/

namespace A357962.P13451929492902303296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039775 (A134055 n).toNat + 1

end

end A357962.P13451929492902303296

/-! ## A357962.P1976342518884460976

`A002487(A080895(n)+A080876(n))`
-/

namespace A357962.P1976342518884460976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A080895 n + A080876 n).toNat

end

end A357962.P1976342518884460976

/-! ## A357962.P3364986941947586663

`A243473(A207928(n+1)+A088436(n+1))`
-/

namespace A357962.P3364986941947586663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (A207928 (n + 1) + A088436 (n + 1)).toNat

end

end A357962.P3364986941947586663

/-!
# A357964: Expansion of e.g.f. exp( (exp(x^3) - 1)/x^2 ).

The programs for A357964, there is no canonical definition to state claims against.
-/

/-! ## A357964.P17372134699607233835

`A260429(gcd((∑[n+1]+1)/2*n!, (n+3)/4*Δ[n!]))`
-/

namespace A357964.P17372134699607233835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (Int.gcd (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ))) (SequenceMachineLib.roundAway ((n + 3 : ℚ) / 4 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ))))

end

end A357964.P17372134699607233835

/-! ## A357964.P4016345133525908650

`A170818(A355988(n)+2)`
-/

namespace A357964.P4016345133525908650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A355988 n + 2).toNat

end

end A357964.P4016345133525908650

/-! ## A357964.P9680937555802912906

`A366374(A366368(n)+2)`
-/

namespace A357964.P9680937555802912906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366374 (A366368 n + 2).toNat

end

end A357964.P9680937555802912906

/-! ## A357964.P17388037852116364059

`or(1, A007733(A321717(n)))`
-/

namespace A357964.P17388037852116364059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007733 (A321717 n).toNat)

end

end A357964.P17388037852116364059

/-!
# A357966: Expansion of e.g.f. exp( x * (exp(x^2) - 1) ).

The programs for A357966, there is no canonical definition to state claims against.
-/

/-! ## A357966.P6236912351161752933

`A375561(n)/A124766(A001523(n))`
-/

namespace A357966.P6236912351161752933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375561 n : ℚ) / (A124766 (A001523 n).toNat : ℚ)

end

end A357966.P6236912351161752933

/-! ## A357966.P3863612403180789620

`A353226(n)/A099563(A053556(n))`
-/

namespace A357966.P3863612403180789620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353226 n : ℚ) / (A099563 (A053556 n).toNat : ℚ)

end

end A357966.P3863612403180789620

/-! ## A357966.P2640131211888946900

`A353226(n)/A109004(A179040(n))`
-/

namespace A357966.P2640131211888946900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353226 n : ℚ) / (A109004 (A179040 n).toNat : ℚ)

end

end A357966.P2640131211888946900

/-! ## A357966.P9234249521796937650

`A353226(n)/A353248(A101268(n))`
-/

namespace A357966.P9234249521796937650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353226 n : ℚ) / (A353248 (A101268 n).toNat : ℚ)

end

end A357966.P9234249521796937650

/-! ## A357966.P14866423206372830719

`A104543(A073364(n+1))*A375167(n)`
-/

namespace A357966.P14866423206372830719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104543 (A073364 (n + 1)).toNat * A375167 n

end

end A357966.P14866423206372830719

/-!
# A357967: Expansion of e.g.f. exp( x * (exp(x^3) - 1) ).

The programs for A357967, there is no canonical definition to state claims against.
-/

/-! ## A357967.P4803518024205153594

`A353227(n)/A288120(A137390(n+1))`
-/

namespace A357967.P4803518024205153594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353227 n : ℚ) / (A288120 (A137390 (n + 1)).toNat : ℚ)

end

end A357967.P4803518024205153594

/-! ## A357967.P12952055373845257894

`A353227(n)/A034380(A208183(2*(n+2)))`
-/

namespace A357967.P12952055373845257894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353227 n : ℚ) / (A034380 (A208183 (2 * (n + 2))).toNat : ℚ)

end

end A357967.P12952055373845257894

/-! ## A357967.P2326605398376844987

`A353227(n)/A083235(A188630(n+1))`
-/

namespace A357967.P2326605398376844987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353227 n : ℚ) / (A083235 (A188630 (n + 1)).toNat : ℚ)

end

end A357967.P2326605398376844987

/-! ## A357967.P7052654294247721974

`A353227(n)/A193073(A128339(n+1))`
-/

namespace A357967.P7052654294247721974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353227 n : ℚ) / (A193073 (A128339 (n + 1)).toNat : ℚ)

end

end A357967.P7052654294247721974

/-! ## A357967.P92077335432506058

`A353227(n)/A120965(A270339(n+1))`
-/

namespace A357967.P92077335432506058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353227 n : ℚ) / (A120965 (A270339 (n + 1)).toNat : ℚ)

end

end A357967.P92077335432506058

/-!
# A357968: Expansion of e.g.f. exp( x * (exp(x^4) - 1) ).

The programs for A357968, there is no canonical definition to state claims against.
-/

/-! ## A357968.P8602564634749704521

`A002654(A141479(n))*A276842(n)`
-/

namespace A357968.P8602564634749704521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A141479 n).toNat * A276842 n

end

end A357968.P8602564634749704521

/-! ## A357968.P14006304490293270354

`A000035(A246604(n))*A276842(n)`
-/

namespace A357968.P14006304490293270354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A246604 n).toNat * A276842 n

end

end A357968.P14006304490293270354

/-! ## A357968.P9246388287445898849

`C(A293494(n), A007318(A299255(n)))`
-/

namespace A357968.P9246388287445898849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293494 n).toNat (A007318 (A299255 n).toNat).toNat

end

end A357968.P9246388287445898849

/-! ## A357968.P3827888481691560749

`A188037(A190358(n+1))*A293494(n)`
-/

namespace A357968.P3827888481691560749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A190358 (n + 1)).toNat * A293494 n

end

end A357968.P3827888481691560749

/-! ## A357968.P9257411302340057412

`C(A293494(n), A126331(A250120(3*n+1)))`
-/

namespace A357968.P9257411302340057412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293494 n).toNat (A126331 (A250120 (3 * n + 1)).toNat).toNat

end

end A357968.P9257411302340057412

/-!
# A357970: a(n) is the number of segments used to represent the time of n minutes past midnight in the format hh:mm on a 7-segment calculator display; version where the digits '6', '7' and '9' use 6, 3 and 6 segments, respectively.

The programs for A357970, there is no canonical definition to state claims against.
-/

/-! ## A357970.P16713292596376089640

`A357971(n)+A357974(n)-A357973(n)`
-/

namespace A357970.P16713292596376089640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357971 n + (A357974 n - A357973 n)

end

end A357970.P16713292596376089640

/-!
# A357971: a(n) is the number of segments used to represent the time of n minutes past midnight in the format hh:mm on a 7-segment calculator display; version where the digits '6', '7' and '9' use 6, 4 and 6 segments, respectively.

The programs for A357971, there is no canonical definition to state claims against.
-/

/-! ## A357971.P9573833643078805410

`A357970(n)+A357973(n)-A357974(n)`
-/

namespace A357971.P9573833643078805410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357970 n + (A357973 n - A357974 n)

end

end A357971.P9573833643078805410

/-!
# A357972: a(n) is the number of segments used to represent the time of n minutes past midnight in the format hh:mm on a 7-segment calculator display; version where the digits '6', '7' and '9' use 5, 3 and 5 segments, respectively.

The programs for A357972, there is no canonical definition to state claims against.
-/

/-! ## A357972.P11097399822295572351

`A357974(n)-A086013(A363724(3*n+4))`
-/

namespace A357972.P11097399822295572351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357974 n - A086013 (A363724 (3 * n + 4)).toNat

end

end A357972.P11097399822295572351

/-!
# A357973: a(n) is the number of segments used to represent the time of n minutes past midnight in the format hh:mm on a 7-segment calculator display; version where the digits '6', '7' and '9' use 6, 4 and 5 segments, respectively.

The programs for A357973, there is no canonical definition to state claims against.
-/

/-! ## A357973.P3893693482193822296

`A357971(n)+A357974(n)-A357970(n)`
-/

namespace A357973.P3893693482193822296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357971 n + (A357974 n - A357970 n)

end

end A357973.P3893693482193822296

/-!
# A357974: a(n) is the number of segments used to represent the time of n minutes past midnight in the format hh:mm on a 7-segment calculator display; version where the digits '6', '7' and '9' use 6, 3 and 5 segments, respectively.

The programs for A357974, there is no canonical definition to state claims against.
-/

/-! ## A357974.P5240291206813491775

`A357970(n)+A357973(n)-A357971(n)`
-/

namespace A357974.P5240291206813491775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357970 n + (A357973 n - A357971 n)

end

end A357974.P5240291206813491775

/-!
# A357975: Divide all prime indices by 2, round down, and take the number with those prime indices, assuming prime(0) = 1.

The programs for A357975, there is no canonical definition to state claims against.
-/

/-! ## A357975.P14444112866410733772

`A319522(A200746(n+1))`
-/

namespace A357975.P14444112866410733772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (A200746 (n + 1)).toNat

end

end A357975.P14444112866410733772

/-! ## A357975.P3404379114084703606

`A319522((n+1)*A064989(n+1))`
-/

namespace A357975.P3404379114084703606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 ((n + 1 : ℤ) * A064989 (n + 1)).toNat

end

end A357975.P3404379114084703606

/-! ## A357975.P9949967490383522894

`A319521(A064989((n+1)*A064989(n+1)))`
-/

namespace A357975.P9949967490383522894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A064989 ((n + 1 : ℤ) * A064989 (n + 1)).toNat).toNat

end

end A357975.P9949967490383522894

/-! ## A357975.P14787779455516830839

`A242419(A153212(A329888(A242419(A153212(n+1)))))`
-/

namespace A357975.P14787779455516830839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A153212 (A329888 (A242419 (A153212 (n + 1)).toNat).toNat).toNat).toNat

end

end A357975.P14787779455516830839

/-! ## A357975.P9836772899647871461

`A001221(A279474((n+1)/2^val(n+1, 2)))`
-/

namespace A357975.P9836772899647871461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A279474 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A357975.P9836772899647871461

/-!
# A357976: Numbers with a divisor having the same sum of prime indices as their quotient.

The programs for A357976, there is no canonical definition to state claims against.
-/

/-! ## A357976.P16411365070341660623

`lt[0, sqrt(A357879(n+1))]+1`
-/

namespace A357976.P16411365070341660623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A357879 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A357976.P16411365070341660623

/-! ## A357976.P12905676253686712698

`lt[2, A274663(A304793(n+1))]+1`
-/

namespace A357976.P12905676253686712698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274663 (A304793 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A357976.P12905676253686712698

/-! ## A357976.P16340954934304132037

`lt[A085750(A304793(n+1)+2), 2]+1`
-/

namespace A357976.P16340954934304132037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (A304793 (n + 1) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A357976.P16340954934304132037

/-! ## A357976.P3567707756437634721

`eq[0, A059841(A299701(n+1))]+1`
-/

namespace A357976.P3567707756437634721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A299701 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357976.P3567707756437634721

/-! ## A357976.P11237198145525160992

`lt[A156090(A299701(n+1)), A101264(n+2)]+1`
-/

namespace A357976.P11237198145525160992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156090 (A299701 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A357976.P11237198145525160992

/-!
# A357977: Replace prime(k) with prime(A000041(k)) in the prime factorization of n.

The programs for A357977, there is no canonical definition to state claims against.
-/

/-! ## A357977.P16135017575776089886

`A000720(p?[A357979(n+1)])`
-/

namespace A357977.P16135017575776089886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A357977.P16135017575776089886

/-! ## A357977.P13276135089517737440

`∏{e}[A181821(n+1), A000040(A000041(#))]`
-/

namespace A357977.P13276135089517737440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000041 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A357977.P13276135089517737440

/-! ## A357977.P11165422119765850852

`A003963(p?[A357979(n+1)])`
-/

namespace A357977.P11165422119765850852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A357977.P11165422119765850852

/-! ## A357977.P12284863254478378461

`A026233(p?[A357979(n+1)])`
-/

namespace A357977.P12284863254478378461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A357977.P12284863254478378461

/-! ## A357977.P9970235063199558054

`A049084(p?[A357979(n+1)])`
-/

namespace A357977.P9970235063199558054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A357977.P9970235063199558054

/-!
# A357978: Replace prime(k) with prime(A000009(k)) in the prime factorization of n.

The programs for A357978, there is no canonical definition to state claims against.
-/

/-! ## A357978.P14046621060460874991

`A324391(n+1)-A240328(A007283(n))`
-/

namespace A357978.P14046621060460874991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324391 (n + 1) - A240328 (A007283 n).toNat

end

end A357978.P14046621060460874991

/-! ## A357978.P16232862375170513607

`∏{e}[A086141(A005941(2*(n+1))-1), A232697(#)]`
-/

namespace A357978.P16232862375170513607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (A005941 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A232697 (Nat.factorization (f1 n).natAbs p)

end

end A357978.P16232862375170513607

/-!
# A357979: Second MTF-transform of A000041. Replace prime(k) with prime(A357977(k)) in the prime factorization of n.

The programs for A357979, there is no canonical definition to state claims against.
-/

/-! ## A357979.P6922204728634793329

`or(n+1, A334348(A027642(n)))`
-/

namespace A357979.P6922204728634793329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A334348 (A027642 n).toNat)

end

end A357979.P6922204728634793329

/-! ## A357979.P7154585832399021297

`A341620(A240364(n+1))+n+1`
-/

namespace A357979.P7154585832399021297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (A240364 (n + 1)).toNat + (n + 1 : ℤ)

end

end A357979.P7154585832399021297

/-! ## A357979.P14133122843636013313

`A051340(A240205(2*n+1))+n`
-/

namespace A357979.P14133122843636013313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 (A240205 (2 * n + 1)).toNat + (n : ℤ)

end

end A357979.P14133122843636013313

/-! ## A357979.P10798003490996039697

`A001497(A144643(A144299(n)))+n`
-/

namespace A357979.P10798003490996039697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (A144643 (A144299 n).toNat).toNat + (n : ℤ)

end

end A357979.P10798003490996039697

/-! ## A357979.P2665412495758888368

`(n-1)^C(4*n, 64)²+n`
-/

namespace A357979.P2665412495758888368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ Nat.choose (4 * n) 64 ^ 2 + (n : ℤ)

end

end A357979.P2665412495758888368

/-!
# A357980: Replace prime(k) with prime(A000720(k)) in the prime factorization of n, assuming prime(0) = 1.

The programs for A357980, there is no canonical definition to state claims against.
-/

/-! ## A357980.P972281108390611093

`lcm(A003963(A343430(n^3+1)), A319522(n+1))`
-/

namespace A357980.P972281108390611093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003963 (A343430 (n ^ 3 + 1)).toNat) (A319522 (n + 1))

end

end A357980.P972281108390611093

/-! ## A357980.P7754450528894712161

`A353382(3^(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A357980.P7754450528894712161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353382 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 : ℤ))).toNat

end

end A357980.P7754450528894712161

/-! ## A357980.P10530748753247767561

`A194698(A276889(3*(n+1)/2^val(n+1, 2)))+1`
-/

namespace A357980.P10530748753247767561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A276889 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat).toNat + 1

end

end A357980.P10530748753247767561

/-! ## A357980.P11024872423726420922

`A016729(A000265(n+1)+A129947(n+1)²)`
-/

namespace A357980.P11024872423726420922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A000265 (n + 1) + A129947 (n + 1) ^ 2).toNat

end

end A357980.P11024872423726420922

/-!
# A357981: Numbers whose prime indices have only prime numbers as their own prime indices.

The programs for A357981, there is no canonical definition to state claims against.
-/

/-! ## A357981.P619602251827477667

`eq[A010815(A024848(n+2)), A257992(n+1)]+1`
-/

namespace A357981.P619602251827477667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A024848 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357981.P619602251827477667

/-! ## A357981.P4426228031993957329

`A066208(A093641(n+1)%A002982(2*n+3))`
-/

namespace A357981.P4426228031993957329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (Int.tmod (A093641 (n + 1)) (A002982 (2 * n + 3))).toNat

end

end A357981.P4426228031993957329

/-! ## A357981.P1241856724129292613

`A066208(∑[A326476(n)!])`
-/

namespace A357981.P1241856724129292613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A326476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357981.P1241856724129292613

/-! ## A357981.P750211751888740052

`record[A247503(∑[A321144(2*n+1)])]`
-/

namespace A357981.P750211751888740052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321144 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357981.P750211751888740052

/-! ## A357981.P1671740595562839308

`A066208(A331914(n+1)%A350442(n+1))`
-/

namespace A357981.P1671740595562839308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (Int.tmod (A331914 (n + 1)) (A350442 (n + 1))).toNat

end

end A357981.P1671740595562839308

/-!
# A357982: Replace prime(k) with A000009(k) in the prime factorization of n.

The programs for A357982, there is no canonical definition to state claims against.
-/

/-! ## A357982.P17109630959061361108

`A357853(A064989(n+1))`
-/

namespace A357982.P17109630959061361108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A064989 (n + 1)).toNat

end

end A357982.P17109630959061361108

/-! ## A357982.P17593882085120995250

`A357853(A079707(n+1))`
-/

namespace A357982.P17593882085120995250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357853 (A079707 (n + 1)).toNat

end

end A357982.P17593882085120995250

/-! ## A357982.P18408041314271112554

`A050362(A361808(n+1))`
-/

namespace A357982.P18408041314271112554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050362 (A361808 (n + 1)).toNat

end

end A357982.P18408041314271112554

/-! ## A357982.P12631135462191360262

`A003963(A357978(n+1))`
-/

namespace A357982.P12631135462191360262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A357978 (n + 1)).toNat

end

end A357982.P12631135462191360262

/-! ## A357982.P12514344686154916858

`∏{e}[A181821(n+1), A000009(#)]`
-/

namespace A357982.P12514344686154916858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p)

end

end A357982.P12514344686154916858

/-! ## A357982.P3290484471588393013

`∏{e}[A181821(n+1), A034149(#)]`
-/

namespace A357982.P3290484471588393013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034149 (Nat.factorization (f1 n).natAbs p)

end

end A357982.P3290484471588393013

/-! ## A357982.P11001177790744449494

`A050361(A181821(n+1))`
-/

namespace A357982.P11001177790744449494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A181821 (n + 1)).toNat

end

end A357982.P11001177790744449494

/-! ## A357982.P322644450468091796

`A050361(A304660(n+1))`
-/

namespace A357982.P322644450468091796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A304660 (n + 1)).toNat

end

end A357982.P322644450468091796

/-!
# A357984: Replace prime(k) with A000720(k) in the prime factorization of n.

The programs for A357984, there is no canonical definition to state claims against.
-/

/-! ## A357984.P14067620180775559269

`∏{e}[A181821(n+1), A000720(#)]`
-/

namespace A357984.P14067620180775559269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 (Nat.factorization (f1 n).natAbs p)

end

end A357984.P14067620180775559269

/-! ## A357984.P8490899525956897098

`∏{e}[A304660(n+1), A000720(#)]`
-/

namespace A357984.P8490899525956897098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 (Nat.factorization (f1 n).natAbs p)

end

end A357984.P8490899525956897098

/-! ## A357984.P15833932524309273218

`∏{e}[A181821(n+1), A230980(#)]`
-/

namespace A357984.P15833932524309273218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A230980 (Nat.factorization (f1 n).natAbs p)

end

end A357984.P15833932524309273218

/-! ## A357984.P13921548183489957372

`∏{e}[A181821(n+1), A255574(#)]`
-/

namespace A357984.P13921548183489957372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255574 (Nat.factorization (f1 n).natAbs p)

end

end A357984.P13921548183489957372

/-! ## A357984.P1858350256908278098

`∏{e}[A304660(n+1), A230980(#)]`
-/

namespace A357984.P1858350256908278098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A230980 (Nat.factorization (f1 n).natAbs p)

end

end A357984.P1858350256908278098

/-!
# A357988: a(n) is the unique k such that A357579(k) = prime(n) (the n-th prime number), or -1 if no such k exists.

The programs for A357988, there is no canonical definition to state claims against.
-/

/-! ## A357988.P5755099180732176415

`A357986(A279984(n+1))`
-/

namespace A357988.P5755099180732176415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357986 (A279984 (n + 1)).toNat

end

end A357988.P5755099180732176415

/-!
# A357990: Square array T(n, k), n >= 0, k > 0, read by antidiagonals, where T(n, k) = R(n, k+1) - R(n, k) for n > 0, k > 0 with T(0, k) = 1 for k > 0 and where R(n, k) = T(A053645(n), k)*k^(A290255(n) + 1).

The programs for A357990, there is no canonical definition to state claims against.
-/

/-! ## A357990.P2113480193362507617

`or(1, A337509(A337472(n)))`
-/

namespace A357990.P2113480193362507617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A337509 (A337472 n).toNat)

end

end A357990.P2113480193362507617

/-! ## A357990.P10933910305514919652

`gcd(A260644(A265074(n+2)), A269950(n))`
-/

namespace A357990.P10933910305514919652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260644 (A265074 (n + 2)).toNat) (A269950 n)

end

end A357990.P10933910305514919652

/-! ## A357990.P5498463652179466698

`A133880(A109337(n+1)*A142467(n+1))`
-/

namespace A357990.P5498463652179466698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A109337 (n + 1) * A142467 (n + 1)).toNat

end

end A357990.P5498463652179466698

/-! ## A357990.P4144369075878256603

`gcd(A008288(n+1), A024966(A167236(n+1)))`
-/

namespace A357990.P4144369075878256603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008288 (n + 1)) (A024966 (A167236 (n + 1)).toNat)

end

end A357990.P4144369075878256603

/-! ## A357990.P14427070731088868938

`gcd(A000225(A026820(n+2)), A369362(n+1))`
-/

namespace A357990.P14427070731088868938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000225 (A026820 (n + 2)).toNat) (A369362 (n + 1))

end

end A357990.P14427070731088868938

/-!
# A357993: a(n) is the unique k such that A357961(k) = 2^n.

The programs for A357993, there is no canonical definition to state claims against.
-/

/-! ## A357993.P2985627561086268206

`A358057(2^n)`
-/

namespace A357993.P2985627561086268206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358057 (2 ^ n)

end

end A357993.P2985627561086268206

/-! ## A357993.P12371618845618235852

`A358057(A000079(n))%A074501(n)`
-/

namespace A357993.P12371618845618235852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358057 (A000079 n).toNat) (A074501 n)

end

end A357993.P12371618845618235852

/-! ## A357993.P12834755502771288575

`gcd(A058348(n), A358057(A000079(n)))`
-/

namespace A357993.P12834755502771288575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058348 n) (A358057 (A000079 n).toNat)

end

end A357993.P12834755502771288575

/-! ## A357993.P5633475091528648727

`A358057(A000079(n))+A130779(n+3)`
-/

namespace A357993.P5633475091528648727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358057 (A000079 n).toNat + A130779 (n + 3)

end

end A357993.P5633475091528648727

/-! ## A357993.P3725556618022370967

`A358057(A000079(n))+A058348(n+4)`
-/

namespace A357993.P3725556618022370967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358057 (A000079 n).toNat + A058348 (n + 4)

end

end A357993.P3725556618022370967

