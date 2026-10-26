import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A347300: Under Hypothesis(H) (a version of the Generalized Riemann Hypothesis) the only principal real quadratic fields with discriminant d = r^2 + 1 == 1 (mod 4) are the fields Q(sqrt(t)) where t is one of the six numbers listed here.

The programs for A347300, there is no canonical definition to state claims against.
-/

/-! ## A347300.P8412377709226138900

`∑[2*ceil(n/2)!]²+1`
-/

namespace A347300.P8412377709226138900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1

end

end A347300.P8412377709226138900

/-!
# A347301: Let S be a set of n distinct integers in the range -n-3 to n+3, and consider the sums s+t of pairs of distinct elements of S; a(n) is the maximum number of such sums that are powers of 2, over all choices for S.

The programs for A347301, there is no canonical definition to state claims against.
-/

/-! ## A347301.P3925097861027817236

`A357574(n+1)+A010054(A336366(2*n+5))`
-/

namespace A347301.P3925097861027817236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357574 (n + 1) + A010054 (A336366 (2 * n + 5)).toNat

end

end A347301.P3925097861027817236

/-! ## A347301.P1552503986227697579

`A357574(n+1)+A324053(A006521(n+1))`
-/

namespace A347301.P1552503986227697579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357574 (n + 1) + A324053 (A006521 (n + 1)).toNat

end

end A347301.P1552503986227697579

/-! ## A347301.P12252301298623704459

`or(A189292(A001567(n+1)), A357574(n+1))`
-/

namespace A347301.P12252301298623704459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189292 (A001567 (n + 1)).toNat) (A357574 (n + 1))

end

end A347301.P12252301298623704459

/-! ## A347301.P10566235801470047604

`A352178(n+1)-char[4]`
-/

namespace A347301.P10566235801470047604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A347301.P10566235801470047604

/-!
# A347302: a(n) = 3^n - lcm{1..n}, with a(0) = 0.

The programs for A347302, the canonical program `A347302.P12145525369688810272` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347302 has offset 0).

The definition of A347302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347302.P12145525369688810272

`3^n-A003418(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A347302

/-- `3^n-A003418(n)` -/
def P12145525369688810272.Spec : Prop :=
  ∀ n, P12145525369688810272.a n = A347302 n

theorem P12145525369688810272.correct : P12145525369688810272.Spec := by
  intro n
  simp only [A347302]

end A347302

/-! ## A347302.P11314017868006477390

`3^n+1-A075059(n)`
-/

namespace A347302.P11314017868006477390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (1 - A075059 n)

end

end A347302.P11314017868006477390

namespace A347302

/-- `3^n+1-A075059(n)` -/
def P11314017868006477390.Spec : Prop :=
  ∀ n, P11314017868006477390.a n = A347302 n

theorem P11314017868006477390.correct : P11314017868006477390.Spec := by
  intro n
  simp only [A347302, Nat.add_sub_cancel, A347302.P11314017868006477390.a, A347302.P12145525369688810272.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347302

/-! ## A347302.P11094209434545922351

`3^n-A139550(2*n)`
-/

namespace A347302.P11094209434545922351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A139550 (2 * n)

end

end A347302.P11094209434545922351

namespace A347302

/-- `3^n-A139550(2*n)` -/
def P11094209434545922351.Spec : Prop :=
  ∀ n, P11094209434545922351.a n = A347302 n

end A347302

/-! ## A347302.P1912919593830804501

`3^n-∏[A014963(∏{p}[n, #])]`
-/

namespace A347302.P1912919593830804501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A347302.P1912919593830804501

namespace A347302

/-- `3^n-∏[A014963(∏{p}[n, #])]` -/
def P1912919593830804501.Spec : Prop :=
  ∀ n, P1912919593830804501.a n = A347302 n

end A347302

/-! ## A347302.P11339104259087699173

`3^n-∑[A119944(abs(1-n))]`
-/

namespace A347302.P11339104259087699173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347302.P11339104259087699173

namespace A347302

/-- `3^n-∑[A119944(abs(1-n))]` -/
def P11339104259087699173.Spec : Prop :=
  ∀ n, P11339104259087699173.a n = A347302 n

end A347302

/-! ## A347302.P13874006924536215011

`A034472(n)-A075059(n)`
-/

namespace A347302.P13874006924536215011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A075059 n

end

end A347302.P13874006924536215011

namespace A347302

/-- `A034472(n)-A075059(n)` -/
def P13874006924536215011.Spec : Prop :=
  ∀ n, P13874006924536215011.a n = A347302 n

theorem P13874006924536215011.correct : P13874006924536215011.Spec := by
  intro n
  simp only [A347302, Nat.add_sub_cancel, A347302.P13874006924536215011.a, A347302.P12145525369688810272.a, A003418, A003418.P6976248655893080794.a, A034472, A034472.P6935477064191477456.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347302

/-!
# A347303: a(n) = 3^(n-1) - lcm{1..n}.

The programs for A347303, there is no canonical definition to state claims against.
-/

/-! ## A347303.P682410474676253623

`3^n-∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A347303.P682410474676253623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A347303.P682410474676253623

/-! ## A347303.P3255306726657814218

`3^n-Δ[A173185(n)]`
-/

namespace A347303.P3255306726657814218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A347303.P3255306726657814218

/-! ## A347303.P9315970411539140304

`3^n-Δ[A236856(n)]`
-/

namespace A347303.P9315970411539140304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (f1 (n + 1) - f1 n)

end

end A347303.P9315970411539140304

/-! ## A347303.P13530025074088783739

`3^n-A003418(n+1)`
-/

namespace A347303.P13530025074088783739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A003418 (n + 1)

end

end A347303.P13530025074088783739

/-! ## A347303.P15645587499737950279

`3^n-(A070198(n)+1)`
-/

namespace A347303.P15645587499737950279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (A070198 n + 1)

end

end A347303.P15645587499737950279

/-!
# A347304: a(n) = n!/(floor(n/2)!*floor(n/3)!*floor(n/6)!).

The programs for A347304, the canonical program `A347304.P6413277067257198700` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347304 has offset 0).

The definition of A347304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347304.P6413277067257198700

`n!/(floor(n/2)!*floor(n/3)!*floor(n/6)!)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347304

/-- `n!/(floor(n/2)!*floor(n/3)!*floor(n/6)!)` -/
def P6413277067257198700.Spec : Prop :=
  ∀ n, P6413277067257198700.a n = (A347304 n : ℚ)

end A347304

/-! ## A347304.P15067245430468766904

`A136140(A136170(n))*A211418(n)`
-/

namespace A347304.P15067245430468766904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136140 (A136170 n).toNat * A211418 n

end

end A347304.P15067245430468766904

namespace A347304

/-- `A136140(A136170(n))*A211418(n)` -/
def P15067245430468766904.Spec : Prop :=
  ∀ n, P15067245430468766904.a n = A347304 n

end A347304

/-! ## A347304.P920476609779510513

`lcm(A086742(A094587(n)), A211418(n))`
-/

namespace A347304.P920476609779510513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086742 (A094587 n).toNat) (A211418 n)

end

end A347304.P920476609779510513

namespace A347304

/-- `lcm(A086742(A094587(n)), A211418(n))` -/
def P920476609779510513.Spec : Prop :=
  ∀ n, (P920476609779510513.a n : ℤ) = A347304 n

end A347304

/-! ## A347304.P278801600953694808

`A211418(n)*A318191(A187829(n+1))`
-/

namespace A347304.P278801600953694808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211418 n * A318191 (A187829 (n + 1)).toNat

end

end A347304.P278801600953694808

namespace A347304

/-- `A211418(n)*A318191(A187829(n+1))` -/
def P278801600953694808.Spec : Prop :=
  ∀ n, P278801600953694808.a n = A347304 n

end A347304

/-! ## A347304.P5200586740715498363

`A211418(n)*A318191(A077168(n))`
-/

namespace A347304.P5200586740715498363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211418 n * A318191 (A077168 n).toNat

end

end A347304.P5200586740715498363

namespace A347304

/-- `A211418(n)*A318191(A077168(n))` -/
def P5200586740715498363.Spec : Prop :=
  ∀ n, P5200586740715498363.a n = A347304 n

end A347304

/-!
# A347305: Indices of records in A342585.

The programs for A347305, there is no canonical definition to state claims against.
-/

/-! ## A347305.P7178243191973220033

`A343878(A348782(n+1))`
-/

namespace A347305.P7178243191973220033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343878 (A348782 (n + 1)).toNat

end

end A347305.P7178243191973220033

/-! ## A347305.P12308146866512429343

`A343878(record[A342585(n+1)])`
-/

namespace A347305.P12308146866512429343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343878 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347305.P12308146866512429343

/-! ## A347305.P17593945463911544752

`A343878(A037477(n)%A242323(n))`
-/

namespace A347305.P17593945463911544752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343878 (Int.tmod (A037477 n) (A242323 (n + 36))).toNat

end

end A347305.P17593945463911544752

/-! ## A347305.P6249306006980137485

`filter[A343878(n), A242718(#)]`
-/

namespace A347305.P6249306006980137485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A347305.P6249306006980137485

/-! ## A347305.P13613965466552706827

`filter[A343878(n), A267959(#)]`
-/

namespace A347305.P13613965466552706827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A347305.P13613965466552706827

/-!
# A347307: Records in A347113.

The programs for A347307, there is no canonical definition to state claims against.
-/

/-! ## A347307.P15344024836160844726

`record[A348855(n+2)-1]`
-/

namespace A347307.P15344024836160844726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347307.P15344024836160844726

/-! ## A347307.P11569126219654641629

`record[A347113(n+1)]`
-/

namespace A347307.P11569126219654641629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347307.P11569126219654641629

/-! ## A347307.P10704844342788460676

`sqrt(record[A347113(-xor(n, -1))²])`
-/

namespace A347307.P10704844342788460676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A347307.P10704844342788460676

/-! ## A347307.P1270451600843200618

`A347113(A347308(n+1))`
-/

namespace A347307.P1270451600843200618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A347308 (n + 1)).toNat

end

end A347307.P1270451600843200618

/-! ## A347307.P13329667758448017794

`record[A347113(-xor(n, -1))]%A005010(n)`
-/

namespace A347307.P13329667758448017794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005010 n)

end

end A347307.P13329667758448017794

/-!
# A347308: Indices of records in A347113.

The programs for A347308, there is no canonical definition to state claims against.
-/

/-! ## A347308.P9274456669335501987

`A347306(A347307(n+1))`
-/

namespace A347308.P9274456669335501987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A347307 (n + 1)).toNat

end

end A347308.P9274456669335501987

/-! ## A347308.P7663818244314469759

`A347306(record[A347113(n+1)])`
-/

namespace A347308.P7663818244314469759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347308.P7663818244314469759

/-! ## A347308.P11377267123833057942

`A347306(record[A348855(n+2)-1])`
-/

namespace A347308.P11377267123833057942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348855 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347308.P11377267123833057942

/-! ## A347308.P13552648811877336167

`∑[gcd(5*n, A368601(n))]`
-/

namespace A347308.P13552648811877336167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n : ℤ) (A368601 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347308.P13552648811877336167

/-! ## A347308.P12399584433593345509

`∑[A026807(A211298(n))]`
-/

namespace A347308.P12399584433593345509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A211298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347308.P12399584433593345509

/-!
# A347309: a(n) = gcd(b(n-1)+1, b(n)), where b is A347113.

The programs for A347309, there is no canonical definition to state claims against.
-/

/-! ## A347309.P8002039996689836257

`gcd(A347113(n+1)+1, A347113(n+2))`
-/

namespace A347309.P8002039996689836257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A347113 (n + 1) + 1) (A347113 (n + 2))

end

end A347309.P8002039996689836257

/-!
# A347310: a(n) = smallest k such that Sum_{i=1..k} log(p_i)/p_i >= n, where p_i is the i-th prime.

The programs for A347310, there is no canonical definition to state claims against.
-/

/-! ## A347310.P16769558981189818206

`A000720(A347311(n+1))`
-/

namespace A347310.P16769558981189818206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A347311 (n + 1)).toNat

end

end A347310.P16769558981189818206

/-! ## A347310.P13433506120350844831

`A061395(or(1, A347311(n+1)))`
-/

namespace A347310.P13433506120350844831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A347311 (n + 1))).toNat

end

end A347310.P13433506120350844831

/-! ## A347310.P4014994755593207109

`∑{d}[A347311(n+1), A061395(#)]`
-/

namespace A347310.P4014994755593207109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A347310.P4014994755593207109

/-!
# A347311: a(n) is the smallest prime q such that Sum_{primes p <= q} log(p)/p >= n.

The programs for A347311, there is no canonical definition to state claims against.
-/

/-! ## A347311.P7177594766966318696

`A000040(A347310(n+1))`
-/

namespace A347311.P7177594766966318696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A347310 (n + 1)).toNat

end

end A347311.P7177594766966318696

/-! ## A347311.P16396265580598464406

`A008578(A347310(n+1)+1)`
-/

namespace A347311.P16396265580598464406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A347310 (n + 1) + 1).toNat

end

end A347311.P16396265580598464406

/-! ## A347311.P6474403498660316027

`A175787(A347310(n+1)+1)`
-/

namespace A347311.P6474403498660316027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A347310 (n + 1) + 1).toNat

end

end A347311.P6474403498660316027

/-! ## A347311.P2241068652460060544

`A182986(A347310(n+1)+1)`
-/

namespace A347311.P2241068652460060544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A347310 (n + 1) + 1).toNat

end

end A347311.P2241068652460060544

/-! ## A347311.P8674558195107178454

`A065091(A347310(n+1)-1)`
-/

namespace A347311.P8674558195107178454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A347310 (n + 1) - 1).toNat

end

end A347311.P8674558195107178454

/-!
# A347312: Parity of A347113.

The programs for A347312, there is no canonical definition to state claims against.
-/

/-! ## A347312.P8662186004140759313

`A347113(n+1)%2`
-/

namespace A347312.P8662186004140759313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347113 (n + 1)) 2

end

end A347312.P8662186004140759313

/-! ## A347312.P2950543608982972070

`and(A060576(n), A347113(n+1))`
-/

namespace A347312.P2950543608982972070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A347113 (n + 1))

end

end A347312.P2950543608982972070

/-! ## A347312.P15221478057750765363

`and(A158388(n), A347113(n+1))`
-/

namespace A347312.P15221478057750765363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A347113 (n + 1))

end

end A347312.P15221478057750765363

/-! ## A347312.P15219667070472855846

`and(A179184(n), A347113(n+1))`
-/

namespace A347312.P15219667070472855846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A347113 (n + 1))

end

end A347312.P15219667070472855846

/-! ## A347312.P3547616786295686659

`and(A185114(n), A347113(n+1))`
-/

namespace A347312.P3547616786295686659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185114 n) (A347113 (n + 1))

end

end A347312.P3547616786295686659

/-! ## A347312.P7303424466931177483

`and(A185115(n), A347113(n+1))`
-/

namespace A347312.P7303424466931177483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185115 n) (A347113 (n + 1))

end

end A347312.P7303424466931177483

/-! ## A347312.P16795843313048747209

`and(A185116(n), A347113(n+1))`
-/

namespace A347312.P16795843313048747209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185116 n) (A347113 (n + 1))

end

end A347312.P16795843313048747209

/-! ## A347312.P6366848233103141114

`and(1, A243134(n)*A347113(n+1))`
-/

namespace A347312.P6366848233103141114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A243134 n * A347113 (n + 1))

end

end A347312.P6366848233103141114

/-! ## A347312.P15046627977378432874

`and(A093709(A001316(n)), A347113(n+1))`
-/

namespace A347312.P15046627977378432874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093709 (A001316 n).toNat) (A347113 (n + 1))

end

end A347312.P15046627977378432874

/-! ## A347312.P12222164438394570793

`char[A347306(2*n+1)-1]`
-/

namespace A347312.P12222164438394570793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A347312.P12222164438394570793

/-! ## A347312.P12605879456156647040

`and(A001222(A347163(n+1)), A347113(n+1))`
-/

namespace A347312.P12605879456156647040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A347163 (n + 1)).toNat) (A347113 (n + 1))

end

end A347312.P12605879456156647040

/-! ## A347312.P13840916242031608163

`and(A014963(A347119(n+1)), A347113(n+1))`
-/

namespace A347312.P13840916242031608163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A347119 (n + 1)).toNat) (A347113 (n + 1))

end

end A347312.P13840916242031608163

/-! ## A347312.P1889882134970575314

`and(A176794(n), A347113(n+1))`
-/

namespace A347312.P1889882134970575314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A347113 (n + 1))

end

end A347312.P1889882134970575314

/-! ## A347312.P8659010094277905619

`A000035(A347113(n+1))`
-/

namespace A347312.P8659010094277905619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347113 (n + 1)).toNat

end

end A347312.P8659010094277905619

/-! ## A347312.P7310363459315507772

`and(A083318(n), A347113(n+1))`
-/

namespace A347312.P7310363459315507772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A347113 (n + 1))

end

end A347312.P7310363459315507772

/-! ## A347312.P13005466405820307895

`and(A020737(n), A347113(n+1))`
-/

namespace A347312.P13005466405820307895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A347113 (n + 1))

end

end A347312.P13005466405820307895

/-! ## A347312.P2533135628259877007

`and(A048479(n), A347113(n+1))`
-/

namespace A347312.P2533135628259877007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A347113 (n + 1))

end

end A347312.P2533135628259877007

/-! ## A347312.P16825662762437747387

`and(A295926(n+3), A347113(n+1))`
-/

namespace A347312.P16825662762437747387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295926 (n + 3)) (A347113 (n + 1))

end

end A347312.P16825662762437747387

/-! ## A347312.P2664494665643980045

`and(A115342(n+6), A347113(n+1))`
-/

namespace A347312.P2664494665643980045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115342 (n + 6)) (A347113 (n + 1))

end

end A347312.P2664494665643980045

/-! ## A347312.P12092642150660510364

`and(A248917(n), A347113(n+1))`
-/

namespace A347312.P12092642150660510364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248917 n) (A347113 (n + 1))

end

end A347312.P12092642150660510364

/-!
# A347313: Index of prime(n) in A347113, or -1 if that prime never appears.

The programs for A347313, there is no canonical definition to state claims against.
-/

/-! ## A347313.P17307935660631628589

`A347306(p?[comp[n²]])`
-/

namespace A347313.P17307935660631628589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A347313.P17307935660631628589

/-! ## A347313.P18015744685610068882

`A347306(A000040(n+1))`
-/

namespace A347313.P18015744685610068882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A000040 (n + 1)).toNat

end

end A347313.P18015744685610068882

/-! ## A347313.P13680452658914621271

`A347306(A008578(n+2))`
-/

namespace A347313.P13680452658914621271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A008578 (n + 2)).toNat

end

end A347313.P13680452658914621271

/-! ## A347313.P15472827236778435150

`A347306(A182986(n+2))`
-/

namespace A347313.P15472827236778435150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A182986 (n + 2)).toNat

end

end A347313.P15472827236778435150

/-! ## A347313.P8999499467206014910

`A347306(eq[1, A003415(n)])`
-/

namespace A347313.P8999499467206014910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347313.P8999499467206014910

/-! ## A347313.P5112608526994371044

`A347306(record[A006530(n+2)])`
-/

namespace A347313.P5112608526994371044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347313.P5112608526994371044

/-! ## A347313.P2184379379134745151

`A347306(record[A014963(n+2)])`
-/

namespace A347313.P2184379379134745151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347313.P2184379379134745151

/-! ## A347313.P16939473104343445377

`A347306(record[A020639(n+2)])`
-/

namespace A347313.P16939473104343445377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347313.P16939473104343445377

/-! ## A347313.P12437683870744163013

`A347306(record[A000010(n+1)+1])`
-/

namespace A347313.P12437683870744163013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347313.P12437683870744163013

/-! ## A347313.P16009809041980995375

`A347306(eq[2, A016007(n+1)]+1)`
-/

namespace A347313.P16009809041980995375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A347313.P16009809041980995375

/-! ## A347313.P16501414929235617449

`A347306(record[p?[A026233(n+1)]])`
-/

namespace A347313.P16501414929235617449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347313.P16501414929235617449

/-! ## A347313.P11223833713886643411

`A347306(A348777(n+1))+1`
-/

namespace A347313.P11223833713886643411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A348777 (n + 1)).toNat + 1

end

end A347313.P11223833713886643411

/-!
# A347314: Fixed points of A347113.

The programs for A347314, there is no canonical definition to state claims against.
-/

/-! ## A347314.P13763610241017432860

`record[gcd(A348787(n+1), A348788(n+1))]`
-/

namespace A347314.P13763610241017432860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348787 (n + 1)) (A348788 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347314.P13763610241017432860

/-! ## A347314.P2399942955632193931

`eq[n+1, A347113(n+1)]+1`
-/

namespace A347314.P2399942955632193931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347314.P2399942955632193931

/-! ## A347314.P1777798464752557578

`eq[n, A347113(A028310(n))]`
-/

namespace A347314.P1777798464752557578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347314.P1777798464752557578

/-! ## A347314.P12079505964995882219

`eq[n, A347113(A185048(n+1))]`
-/

namespace A347314.P12079505964995882219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A185048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347314.P12079505964995882219

/-! ## A347314.P14574708128875051265

`eq[n, A347113(A000007(n)+n)]`
-/

namespace A347314.P14574708128875051265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347113 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347314.P14574708128875051265

/-!
# A347315: a(n) = sum of row beginning with n when inventory sequence A342585 is written as an irregular triangle.

The programs for A347315, there is no canonical definition to state claims against.
-/

/-! ## A347315.P18201814524787743219

`∑[A001222(A157968(n+1)-A000225(n))]`
-/

namespace A347315.P18201814524787743219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157968 (n + 1) - A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347315.P18201814524787743219

/-! ## A347315.P8892660966814819514

`A317544(∑[n+2]-2)-ceil(ϕ*n)`
-/

namespace A347315.P8892660966814819514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317544 (∑ j ∈ Finset.range (n + 1), f1 j - 2) - ⌈Real.goldenRatio * (n : ℝ)⌉

end

end A347315.P8892660966814819514

/-! ## A347315.P12397722920287879775

`A323733(A024401(n+1))`
-/

namespace A347315.P12397722920287879775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (A024401 (n + 1)).toNat

end

end A347315.P12397722920287879775

/-! ## A347315.P5332109045466777895

`A337101(∑[A029886(n)]²)`
-/

namespace A347315.P5332109045466777895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A347315.P5332109045466777895

/-! ## A347315.P16352940100759108200

`∑[A112779(Δ[A218481(n)])]`
-/

namespace A347315.P16352940100759108200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112779 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347315.P16352940100759108200

/-!
# A347317: An alternative version of the inventory sequence A342585: now a row only ends when a 0 is reached that would not be followed by any further terms.

The programs for A347317, there is no canonical definition to state claims against.
-/

/-! ## A347317.P18035438960985334506

`A342585(n+1)%(A138838(n+1)-1)`
-/

namespace A347317.P18035438960985334506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342585 (n + 1)) (A138838 (n + 1) - 1)

end

end A347317.P18035438960985334506

/-! ## A347317.P12951413450280073123

`A030107(A348288(n))%Δ[A100498(n)]`
-/

namespace A347317.P12951413450280073123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030107 (A348288 n).toNat) (f1 (n + 1) - f1 n)

end

end A347317.P12951413450280073123

/-! ## A347317.P15019899026104533943

`A348288(n)%A049988(A138838(n+1))`
-/

namespace A347317.P15019899026104533943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348288 n) (A049988 (A138838 (n + 1)).toNat)

end

end A347317.P15019899026104533943

/-! ## A347317.P49133798922231968

`A030107(A342585(n+1))%A138838(n+1)`
-/

namespace A347317.P49133798922231968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030107 (A342585 (n + 1)).toNat) (A138838 (n + 1))

end

end A347317.P49133798922231968

/-! ## A347317.P3127275048995822502

`A342585(n+1)%A246120(A000005(n+1))`
-/

namespace A347317.P3127275048995822502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342585 (n + 1)) (A246120 (A000005 (n + 1)).toNat)

end

end A347317.P3127275048995822502

/-!
# A347319: a(n) = (2*n+1)*(n^3-2*n^2+n+1).

The programs for A347319, the canonical program `A347319.P17560143169493109902` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347319 has offset 0).

The definition of A347319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(n^3-2*n²+n+1)` (program `A347319.P17560143169493109902`, by `A347319.P17560143169493109902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347319.P17560143169493109902

`(2*n+1)*(n^3-2*n²+n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347319

/-- `(2*n+1)*(n^3-2*n²+n+1)` -/
def P17560143169493109902.Spec : Prop :=
  ∀ n, P17560143169493109902.a n = A347319 n

theorem P17560143169493109902.correct : P17560143169493109902.Spec := by
  intro n
  simp only [A347319]

end A347319

/-! ## A347319.P9845065333883801732

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=91, a(4)=333`
-/

namespace A347319.P9845065333883801732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 15, 91, 333] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A347319.P9845065333883801732

namespace A347319

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9845065333883801732.Spec : Prop :=
  ∀ n, P9845065333883801732.a n = A347319 n

theorem P9845065333883801732.correct : P9845065333883801732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A347319, Nat.add_sub_cancel, A347319.P9845065333883801732.a, A347319.P17560143169493109902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A347319, Nat.add_sub_cancel, A347319.P9845065333883801732.a, A347319.P17560143169493109902.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A347319

/-! ## A347319.P17762436737660692870

`lcm(2*n+1, (n-1)*(n²-n)+1)`
-/

namespace A347319.P17762436737660692870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (((n : ℤ) - 1) * ((n ^ 2 : ℤ) - (n : ℤ)) + 1)

end

end A347319.P17762436737660692870

namespace A347319

/-- `lcm(2*n+1, (n-1)*(n²-n)+1)` -/
def P17762436737660692870.Spec : Prop :=
  ∀ n, (P17762436737660692870.a n : ℤ) = A347319 n

end A347319

/-! ## A347319.P1582424503346405725

`(n-1)*(n-1)*C(2*n+1, 2)+2*n+1`
-/

namespace A347319.P1582424503346405725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((n : ℤ) - 1) * (Nat.choose (2 * n + 1) 2 : ℤ)) + (2 * n + 1 : ℤ)

end

end A347319.P1582424503346405725

namespace A347319

/-- `(n-1)*(n-1)*C(2*n+1, 2)+2*n+1` -/
def P1582424503346405725.Spec : Prop :=
  ∀ n, P1582424503346405725.a n = A347319 n

theorem P1582424503346405725.correct : P1582424503346405725.Spec := by
  intro n
  simp only [A347319, Nat.add_sub_cancel, A347319.P1582424503346405725.a, A347319.P17560143169493109902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347319

/-! ## A347319.P10033651351258529299

`n*(A152064(n)-3)+1+n`
-/

namespace A347319.P10033651351258529299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A152064 n - 3) + 1 + (n : ℤ)

end

end A347319.P10033651351258529299

namespace A347319

/-- `n*(A152064(n)-3)+1+n` -/
def P10033651351258529299.Spec : Prop :=
  ∀ n, P10033651351258529299.a n = A347319 n

theorem P10033651351258529299.correct : P10033651351258529299.Spec := by
  intro n
  simp only [A347319, Nat.add_sub_cancel, A347319.P10033651351258529299.a, A347319.P17560143169493109902.a, A152064, A152064.P7157481000966837633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347319

/-! ## A347319.P2494737480153881783

`(2*n+1)*n^3-(n-1)*A016754(n)`
-/

namespace A347319.P2494737480153881783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * n ^ 3 : ℤ) - ((n : ℤ) - 1) * A016754 n

end

end A347319.P2494737480153881783

namespace A347319

/-- `(2*n+1)*n^3-(n-1)*A016754(n)` -/
def P2494737480153881783.Spec : Prop :=
  ∀ n, P2494737480153881783.a n = A347319 n

theorem P2494737480153881783.correct : P2494737480153881783.Spec := by
  intro n
  simp only [A347319, Nat.add_sub_cancel, A347319.P2494737480153881783.a, A347319.P17560143169493109902.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347319

/-! ## A347319.P17006178899408613555

`A344866(n+1)+A168244(n)`
-/

namespace A347319.P17006178899408613555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344866 (n + 1) + A168244 n

end

end A347319.P17006178899408613555

namespace A347319

/-- `A344866(n+1)+A168244(n)` -/
def P17006178899408613555.Spec : Prop :=
  ∀ n, P17006178899408613555.a n = A347319 n

theorem P17006178899408613555.correct : P17006178899408613555.Spec := by
  intro n
  simp only [A347319, Nat.add_sub_cancel, A347319.P17006178899408613555.a, A347319.P17560143169493109902.a, A168244, A168244.P12441156488712508968.a, A344866, A344866.P1105936836514059683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347319

/-! ## A347319.P3703419465201491784

`A016777(n)+n*A015238(n)`
-/

namespace A347319.P3703419465201491784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (n : ℤ) * A015238 n

end

end A347319.P3703419465201491784

namespace A347319

/-- `A016777(n)+n*A015238(n)` -/
def P3703419465201491784.Spec : Prop :=
  ∀ n, P3703419465201491784.a n = A347319 n

theorem P3703419465201491784.correct : P3703419465201491784.Spec := by
  intro n
  simp only [A347319, Nat.add_sub_cancel, A347319.P3703419465201491784.a, A347319.P17560143169493109902.a, A015238, A015238.P18123639342462093912.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347319

/-! ## A347319.P14789887609321845726

`n+1+A005843(n)+n*A015238(n)`
-/

namespace A347319.P14789887609321845726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A005843 n + (n : ℤ) * A015238 n)

end

end A347319.P14789887609321845726

namespace A347319

/-- `n+1+A005843(n)+n*A015238(n)` -/
def P14789887609321845726.Spec : Prop :=
  ∀ n, P14789887609321845726.a n = A347319 n

theorem P14789887609321845726.correct : P14789887609321845726.Spec := by
  intro n
  simp only [A347319, Nat.add_sub_cancel, A347319.P14789887609321845726.a, A347319.P17560143169493109902.a, A005843, A005843.P3167286115683555970.a, A015238, A015238.P18123639342462093912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347319

/-! ## A347319.P8591919085481860642

`A000217(2*n+1)+A000217(2*n)*A174474(2*n)`
-/

namespace A347319.P8591919085481860642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + A000217 (2 * n) * A174474 (2 * n)

end

end A347319.P8591919085481860642

namespace A347319

/-- `A000217(2*n+1)+A000217(2*n)*A174474(2*n)` -/
def P8591919085481860642.Spec : Prop :=
  ∀ n, P8591919085481860642.a n = A347319 n

end A347319

/-! ## A347319.P2005842671469922116

`A033567(A161680(n))+A011379(n)`
-/

namespace A347319.P2005842671469922116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 (A161680 n).toNat + A011379 n

end

end A347319.P2005842671469922116

namespace A347319

/-- `A033567(A161680(n))+A011379(n)` -/
def P2005842671469922116.Spec : Prop :=
  ∀ n, P2005842671469922116.a n = A347319 n

end A347319

/-! ## A347319.P4360948455278264697

`A080856(A161680(n))+A034262(n)`
-/

namespace A347319.P4360948455278264697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 (A161680 n).toNat + A034262 n

end

end A347319.P4360948455278264697

namespace A347319

/-- `A080856(A161680(n))+A034262(n)` -/
def P4360948455278264697.Spec : Prop :=
  ∀ n, P4360948455278264697.a n = A347319 n

end A347319

/-! ## A347319.P12545229466868088019

`A239449(A161680(n))+A001621(n)`
-/

namespace A347319.P12545229466868088019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239449 (A161680 n).toNat + A001621 n

end

end A347319.P12545229466868088019

namespace A347319

/-- `A239449(A161680(n))+A001621(n)` -/
def P12545229466868088019.Spec : Prop :=
  ∀ n, P12545229466868088019.a n = A347319 n

end A347319

/-!
# A347320: A344857(2*n).

The programs for A347320, there is no canonical definition to state claims against.
-/

/-! ## A347320.P2146139848949267110

`A344857(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347320.P2146139848949267110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (2 * (n + 1))

end

end A347320.P2146139848949267110

/-! ## A347320.P4717501776226795176

`lcm(2, A344857(n+2+n))`
-/

namespace A347320.P4717501776226795176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A344857 (n + 2 + n))

end

end A347320.P4717501776226795176

/-! ## A347320.P11873367609805657161

`record[A344857((n+1)^and(1, n))]`
-/

namespace A347320.P11873367609805657161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 ((n + 1) ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347320.P11873367609805657161

/-! ## A347320.P11145517865260094936

`and(-1, A344857(record[2-xor(1, -n)]))`
-/

namespace A347320.P11145517865260094936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A344857 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A347320.P11145517865260094936

/-! ## A347320.P10411364952159812484

`record[A344857(A003417(n))]`
-/

namespace A347320.P10411364952159812484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347320.P10411364952159812484

/-!
# A347321: A146212(2*n).

The programs for A347321, there is no canonical definition to state claims against.
-/

/-! ## A347321.P6209105189163677391

`A146212(2*(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347321.P6209105189163677391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (2 * (n + 2))

end

end A347321.P6209105189163677391

/-! ## A347321.P736682180763554534

`A383461(2*(n+2))`
-/

namespace A347321.P736682180763554534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383461 (2 * (n + 2))

end

end A347321.P736682180763554534

/-! ## A347321.P4449626948521650551

`record[or((-1)^n, A146212(n+4))]`
-/

namespace A347321.P4449626948521650551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (A146212 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347321.P4449626948521650551

/-! ## A347321.P2408851281535544830

`record[A146212((n+1)/2^val(n+1, 2)+3)]`
-/

namespace A347321.P2408851281535544830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347321.P2408851281535544830

/-! ## A347321.P7527292147210151465

`record[A146212(A352434(n+5))]`
-/

namespace A347321.P7527292147210151465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (A352434 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347321.P7527292147210151465

/-!
# A347322: Number of polygon edges formed when every pair of vertices of a regular 2n-gon are joined by an infinite line.

The programs for A347322, there is no canonical definition to state claims against.
-/

/-! ## A347322.P4920475677184320036

`A344899(2*(n+1))`
-/

namespace A347322.P4920475677184320036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 (2 * (n + 1))

end

end A347322.P4920475677184320036

/-! ## A347322.P11518104982441342249

`record[A344899(n+1)^(n%2)]`
-/

namespace A347322.P11518104982441342249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347322.P11518104982441342249

/-! ## A347322.P6897550682695560277

`record[gcd(val(n+1, 2), A344899(n+2))]`
-/

namespace A347322.P6897550682695560277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A344899 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347322.P6897550682695560277

/-! ## A347322.P4694980210936886452

`record[A344899((n+1)/2^val(n+1, 2)+1)]`
-/

namespace A347322.P4694980210936886452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347322.P4694980210936886452

/-! ## A347322.P8963783468504016639

`record[A344899(A003417(n))]`
-/

namespace A347322.P8963783468504016639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344899 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347322.P8963783468504016639

/-!
# A347324: Row sums in A347738 when that sequence is written as a triangle.

The programs for A347324, there is no canonical definition to state claims against.
-/

/-! ## A347324.P12590759554895762978

`A172264(A097787(n)+A007966(n))`
-/

namespace A347324.P12590759554895762978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A097787 n + A007966 n).toNat

end

end A347324.P12590759554895762978

/-! ## A347324.P17473494872978507184

`A172264(A122792(n)+A097787(n))`
-/

namespace A347324.P17473494872978507184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A122792 n + A097787 n).toNat

end

end A347324.P17473494872978507184

/-! ## A347324.P11145760446002822996

`A172264(A347326(n)+A097787(n))`
-/

namespace A347324.P11145760446002822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A347326 n + A097787 n).toNat

end

end A347324.P11145760446002822996

/-!
# A347325: Solution to the spectator-first Tantalizer problem.

The programs for A347325, the canonical program `A347325.P17398552458478946364` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347325 has offset 1).

The definition of A347325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347325.P17398552458478946364

`2*(floor((n+1)/2)+1-a(floor((n+1)/2)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347325

/-- `2*(floor((n+1)/2)+1-a(floor((n+1)/2)-1))` -/
def P17398552458478946364.Spec : Prop :=
  ∀ n, P17398552458478946364.a n = A347325 (n + 1)

theorem P17398552458478946364.correct : P17398552458478946364.Spec := by
  intro n
  simp only [A347325, Nat.add_sub_cancel]

end A347325

/-! ## A347325.P7035894124129078734

`2*(A065033(n)-a(A004524(n))+1)` with `a(0)=1`
-/

namespace A347325.P7035894124129078734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A065033 n - a (A004524 n).toNat + 1)

end

end A347325.P7035894124129078734

namespace A347325

/-- `2*(A065033(n)-a(A004524(n))+1)` -/
def P7035894124129078734.Spec : Prop :=
  ∀ n, P7035894124129078734.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P1021839741784294115

`A062050(or(n+1, A332769(n+1)))`
-/

namespace A347325.P1021839741784294115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (Int.lor (n + 1 : ℤ) (A332769 (n + 1))).toNat

end

end A347325.P1021839741784294115

namespace A347325

/-- `A062050(or(n+1, A332769(n+1)))` -/
def P1021839741784294115.Spec : Prop :=
  ∀ n, P1021839741784294115.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P13505940625788964464

`A080079(and(A054429(n+1), A258996(n+1)))`
-/

namespace A347325.P13505940625788964464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.land (A054429 (n + 1)) (A258996 (n + 1))).toNat

end

end A347325.P13505940625788964464

namespace A347325

/-- `A080079(and(A054429(n+1), A258996(n+1)))` -/
def P13505940625788964464.Spec : Prop :=
  ∀ n, P13505940625788964464.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P8831572023785569316

`A080079(and(-A062050(n+1), A258996(n+1)))`
-/

namespace A347325.P8831572023785569316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.land (-A062050 (n + 1)) (A258996 (n + 1))).toNat

end

end A347325.P8831572023785569316

namespace A347325

/-- `A080079(and(-A062050(n+1), A258996(n+1)))` -/
def P8831572023785569316.Spec : Prop :=
  ∀ n, P8831572023785569316.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P16983205455733365367

`A080079(and(A004756(n+1)-(2*n+3), A258996(n+1)))`
-/

namespace A347325.P16983205455733365367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.land (A004756 (n + 1) - (2 * n + 3 : ℤ)) (A258996 (n + 1))).toNat

end

end A347325.P16983205455733365367

namespace A347325

/-- `A080079(and(A004756(n+1)-(2*n+3), A258996(n+1)))` -/
def P16983205455733365367.Spec : Prop :=
  ∀ n, P16983205455733365367.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P14126950833890988773

`A350652(A065033(n))-floor(1/(n+1))`
-/

namespace A347325.P14126950833890988773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350652 (A065033 n).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A347325.P14126950833890988773

namespace A347325

/-- `A350652(A065033(n))-floor(1/(n+1))` -/
def P14126950833890988773.Spec : Prop :=
  ∀ n, P14126950833890988773.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P11096745909591753740

`n+2-A350652(n+1)/2`
-/

namespace A347325.P11096745909591753740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (A350652 (n + 1) : ℚ) / 2

end

end A347325.P11096745909591753740

namespace A347325

/-- `n+2-A350652(n+1)/2` -/
def P11096745909591753740.Spec : Prop :=
  ∀ n, P11096745909591753740.a n = (A347325 (n + 1) : ℚ)

end A347325

/-! ## A347325.P2836728443307869800

`2-A065033(A350652(n+1))+n`
-/

namespace A347325.P2836728443307869800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A065033 (A350652 (n + 1)).toNat + (n : ℤ)

end

end A347325.P2836728443307869800

namespace A347325

/-- `2-A065033(A350652(n+1))+n` -/
def P2836728443307869800.Spec : Prop :=
  ∀ n, P2836728443307869800.a n = A347325 (n + 1)

end A347325

/-! ## A347325.P11861394946077542531

`A008619(A051755(n+2)-A350652(n+1))`
-/

namespace A347325.P11861394946077542531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A051755 (n + 2) - A350652 (n + 1)).toNat

end

end A347325.P11861394946077542531

namespace A347325

/-- `A008619(A051755(n+2)-A350652(n+1))` -/
def P11861394946077542531.Spec : Prop :=
  ∀ n, P11861394946077542531.a n = A347325 (n + 1)

end A347325

/-!
# A347339: E.g.f.: exp( (exp(x) - 1) * exp(exp(x) - 1) ).

The programs for A347339, there is no canonical definition to state claims against.
-/

/-! ## A347339.P7512697207375000361

`A008619(n!*∑[n])+∑[char[∑[n]]]²-n-(∑[char[∑[n+1]]]+round(sqrt(2*n))*char[∑[n]]+1)`
-/

namespace A347339.P7512697207375000361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)) + ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f5 j : ℕ) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f8 j = n then 1 else 0 : ℕ) : ℤ) + 1)))

end

end A347339.P7512697207375000361

/-! ## A347339.P7673916568888190705

`A005350(A240165(n)+1)`
-/

namespace A347339.P7673916568888190705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A240165 n + 1).toNat

end

end A347339.P7673916568888190705

/-!
# A347340: E.g.f.: exp( exp(exp(x) - 1) - exp(x) ).

The programs for A347340, there is no canonical definition to state claims against.
-/

/-! ## A347340.P5975664799978012662

`A051274(A000254(n)-A032741(n))`
-/

namespace A347340.P5975664799978012662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A000254 n - A032741 n).toNat

end

end A347340.P5975664799978012662

/-! ## A347340.P17771627466000926404

`A051274(A065048(n)-A051274(n))`
-/

namespace A347340.P17771627466000926404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A065048 n - A051274 n).toNat

end

end A347340.P17771627466000926404

/-! ## A347340.P5141903061262626832

`A004525(A158053(n)-A007895(n))`
-/

namespace A347340.P5141903061262626832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A158053 n - A007895 n).toNat

end

end A347340.P5141903061262626832

/-!
# A347342: a(n) = prime(n) mod floor(prime(n) / n).

The programs for A347342, the canonical program `A347342.P17026086271486324041` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347342 has offset 1).

The definition of A347342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%floor(A000040(n+1)/(n+1))` (program `A347342.P17026086271486324041`, by `A347342.P17026086271486324041.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347342.P3644044205542841526

`A000040(n+1)%A038605(n+1)`
-/

namespace A347342.P3644044205542841526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A038605 (n + 1))

end

end A347342.P3644044205542841526

namespace A347342

/-- `A000040(n+1)%A038605(n+1)` -/
def P3644044205542841526.Spec : Prop :=
  ∀ n, P3644044205542841526.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P17026086271486324041

`A000040(n+1)%floor(A000040(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A347342

/-- `A000040(n+1)%floor(A000040(n+1)/(n+1))` -/
def P17026086271486324041.Spec : Prop :=
  ∀ n, P17026086271486324041.a n = A347342 (n + 1)

theorem P17026086271486324041.correct : P17026086271486324041.Spec := by
  intro n
  simp only [A347342, Nat.add_sub_cancel]

end A347342

/-! ## A347342.P16162781847240247043

`Δ[A007504(n)]%A038605(n+1)`
-/

namespace A347342.P16162781847240247043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A038605 (n + 1))

end

end A347342.P16162781847240247043

namespace A347342

/-- `Δ[A007504(n)]%A038605(n+1)` -/
def P16162781847240247043.Spec : Prop :=
  ∀ n, P16162781847240247043.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P16969024556971675109

`A004648(n+1)%A038605(n+1)`
-/

namespace A347342.P16969024556971675109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004648 (n + 1)) (A038605 (n + 1))

end

end A347342.P16969024556971675109

namespace A347342

/-- `A004648(n+1)%A038605(n+1)` -/
def P16969024556971675109.Spec : Prop :=
  ∀ n, P16969024556971675109.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P1512747008645046633

`A006005(n+1)%A076080(n+1)`
-/

namespace A347342.P1512747008645046633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A076080 (n + 1))

end

end A347342.P1512747008645046633

namespace A347342

/-- `A006005(n+1)%A076080(n+1)` -/
def P1512747008645046633.Spec : Prop :=
  ∀ n, P1512747008645046633.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P7779686565873332282

`A075765(n+1)%A038605(n+1)`
-/

namespace A347342.P7779686565873332282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075765 (n + 1)) (A038605 (n + 1))

end

end A347342.P7779686565873332282

namespace A347342

/-- `A075765(n+1)%A038605(n+1)` -/
def P7779686565873332282.Spec : Prop :=
  ∀ n, P7779686565873332282.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P9510859013406364640

`A161847(n+1)%A038605(n+1)`
-/

namespace A347342.P9510859013406364640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) (A038605 (n + 1))

end

end A347342.P9510859013406364640

namespace A347342

/-- `A161847(n+1)%A038605(n+1)` -/
def P9510859013406364640.Spec : Prop :=
  ∀ n, P9510859013406364640.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P511070587958078260

`A171577(n+1)%A038605(n+1)`
-/

namespace A347342.P511070587958078260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171577 (n + 1)) (A038605 (n + 1))

end

end A347342.P511070587958078260

namespace A347342

/-- `A171577(n+1)%A038605(n+1)` -/
def P511070587958078260.Spec : Prop :=
  ∀ n, P511070587958078260.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P6776667931084086525

`sqrt(A001248(n+1))%A038605(n+1)`
-/

namespace A347342.P6776667931084086525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A038605 (n + 1))

end

end A347342.P6776667931084086525

namespace A347342

/-- `sqrt(A001248(n+1))%A038605(n+1)` -/
def P6776667931084086525.Spec : Prop :=
  ∀ n, P6776667931084086525.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P2082661066382260873

`record[A006530(n+2)]%A038605(n+1)`
-/

namespace A347342.P2082661066382260873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038605 (n + 1))

end

end A347342.P2082661066382260873

namespace A347342

/-- `record[A006530(n+2)]%A038605(n+1)` -/
def P2082661066382260873.Spec : Prop :=
  ∀ n, P2082661066382260873.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P8051628607627684393

`record[A020639(n+2)]%A038605(n+1)`
-/

namespace A347342.P8051628607627684393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038605 (n + 1))

end

end A347342.P8051628607627684393

namespace A347342

/-- `record[A020639(n+2)]%A038605(n+1)` -/
def P8051628607627684393.Spec : Prop :=
  ∀ n, P8051628607627684393.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P9903730840813194119

`p?[A076034(n+1)]%A076080(n+1)`
-/

namespace A347342.P9903730840813194119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A076080 (n + 1))

end

end A347342.P9903730840813194119

namespace A347342

/-- `p?[A076034(n+1)]%A076080(n+1)` -/
def P9903730840813194119.Spec : Prop :=
  ∀ n, P9903730840813194119.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P4213460952815579393

`A063904(n+1)%A038605(n+1)`
-/

namespace A347342.P4213460952815579393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063904 (n + 1)) (A038605 (n + 1))

end

end A347342.P4213460952815579393

namespace A347342

/-- `A063904(n+1)%A038605(n+1)` -/
def P4213460952815579393.Spec : Prop :=
  ∀ n, P4213460952815579393.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P8925894363028236212

`A063884(n+1)%A038605(n+1)`
-/

namespace A347342.P8925894363028236212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063884 (n + 1)) (A038605 (n + 1))

end

end A347342.P8925894363028236212

namespace A347342

/-- `A063884(n+1)%A038605(n+1)` -/
def P8925894363028236212.Spec : Prop :=
  ∀ n, P8925894363028236212.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P17178287637593581962

`record[A014963(n+2)]%A038605(n+1)`
-/

namespace A347342.P17178287637593581962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038605 (n + 1))

end

end A347342.P17178287637593581962

namespace A347342

/-- `record[A014963(n+2)]%A038605(n+1)` -/
def P17178287637593581962.Spec : Prop :=
  ∀ n, P17178287637593581962.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P13790136231842587292

`p?[A001057(n)]%A038605(n+1)`
-/

namespace A347342.P13790136231842587292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A038605 (n + 1))

end

end A347342.P13790136231842587292

namespace A347342

/-- `p?[A001057(n)]%A038605(n+1)` -/
def P13790136231842587292.Spec : Prop :=
  ∀ n, P13790136231842587292.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P18439773897481341566

`p?[A006370(n)]%A038605(n+1)`
-/

namespace A347342.P18439773897481341566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A038605 (n + 1))

end

end A347342.P18439773897481341566

namespace A347342

/-- `p?[A006370(n)]%A038605(n+1)` -/
def P18439773897481341566.Spec : Prop :=
  ∀ n, P18439773897481341566.a n = A347342 (n + 1)

end A347342

/-! ## A347342.P10258401620421005603

`A114785(n+1)%A038605(n+1)`
-/

namespace A347342.P10258401620421005603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114785 (n + 1)) (A038605 (n + 1))

end

end A347342.P10258401620421005603

namespace A347342

/-- `A114785(n+1)%A038605(n+1)` -/
def P10258401620421005603.Spec : Prop :=
  ∀ n, P10258401620421005603.a n = A347342 (n + 1)

end A347342

/-!
# A347343: Positive integers k such that k with the last digit repeated is prime.

The programs for A347343, there is no canonical definition to state claims against.
-/

/-! ## A347343.P7022430470666316454

`floor(A383978(n+1)/10)`
-/

namespace A347343.P7022430470666316454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A383978 (n + 1) : ℚ) / 10⌋

end

end A347343.P7022430470666316454

/-! ## A347343.P4316498239799518185

`A059995(A383978(n+1))`
-/

namespace A347343.P4316498239799518185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A383978 (n + 1)).toNat

end

end A347343.P4316498239799518185

/-!
# A347344: Positive integers k such that k with the first (most significant) digit repeated is prime.

The programs for A347344, there is no canonical definition to state claims against.
-/

/-! ## A347344.P1964579757836064092

`A217657(A384013(n+1))`
-/

namespace A347344.P1964579757836064092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A384013 (n + 1)).toNat

end

end A347344.P1964579757836064092

/-! ## A347344.P17696455979024937779

`A137564(p?[A044896(n+1)])`
-/

namespace A347344.P17696455979024937779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A347344.P17696455979024937779

/-! ## A347344.P3933040535426090108

`A217657(p?[A044896(n+1)])`
-/

namespace A347344.P3933040535426090108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A347344.P3933040535426090108

/-! ## A347344.P5956362904338633374

`eq[A043562(n), A077462(A056143(n))]`
-/

namespace A347344.P5956362904338633374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A056143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347344.P5956362904338633374

/-! ## A347344.P5626225879799739864

`eq[A055642(n), A077462(A056143(n))]`
-/

namespace A347344.P5626225879799739864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A056143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347344.P5626225879799739864

/-!
# A347346: Smallest palindrome ending with n or 0 if n is a multiple of 10.

The programs for A347346, there is no canonical definition to state claims against.
-/

/-! ## A347346.P17258523278753175277

`A082216(A004186(n+1))%A260520(or(A004186(n), A345110(n)))`
-/

namespace A347346.P17258523278753175277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 (A004186 (n + 1)).toNat) (A260520 (Int.lor (A004186 n) (A345110 n)).toNat)

end

end A347346.P17258523278753175277

/-! ## A347346.P7416334905622349071

`A082216(A345110(n+1))%A260520(or(A190599(n), A345110(n)))`
-/

namespace A347346.P7416334905622349071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 (A345110 (n + 1)).toNat) (A260520 (Int.lor (A190599 n) (A345110 n)).toNat)

end

end A347346.P7416334905622349071

/-! ## A347346.P13793701245011696715

`A082216(C(A004086(n+1), A032762(n)))`
-/

namespace A347346.P13793701245011696715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (Nat.choose (A004086 (n + 1)).toNat (A032762 n).toNat)

end

end A347346.P13793701245011696715

/-! ## A347346.P202097200293165900

`A213217(A229623(n+1))*A262188(n+1)`
-/

namespace A347346.P202097200293165900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A229623 (n + 1)).toNat * A262188 (n + 1)

end

end A347346.P202097200293165900

/-!
# A347347: If n is odd, a(n) is the smallest positive integer that is a palindrome when represented in binary, and is made by appending some number (zero or more) of binary digits on the left of n's binary representation. If n is even, then a(n) = 0.

The programs for A347347, there is no canonical definition to state claims against.
-/

/-! ## A347347.P9909658086698929175

`A059841(n)*A161501(A165789(n+1))`
-/

namespace A347347.P9909658086698929175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A161501 (A165789 (n + 1)).toNat

end

end A347347.P9909658086698929175

/-! ## A347347.P12077575608474092641

`lcm(A056594(n), A161501(A165789(n+1)))`
-/

namespace A347347.P12077575608474092641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A161501 (A165789 (n + 1)).toNat)

end

end A347347.P12077575608474092641

/-! ## A347347.P17871063196943246716

`∑[A033999(n)]*A161501(A165789(n+1))`
-/

namespace A347347.P17871063196943246716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A161501 (A165789 (n + 1)).toNat

end

end A347347.P17871063196943246716

/-! ## A347347.P1034013594691315901

`char[A005843(n)]*A161501(A165789(n+1))`
-/

namespace A347347.P1034013594691315901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A161501 (A165789 (n + 1)).toNat

end

end A347347.P1034013594691315901

/-! ## A347347.P1580860582152564980

`A004446(n)%2*A161501(A165789(n+1))`
-/

namespace A347347.P1580860582152564980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004446 n) 2 * A161501 (A165789 (n + 1)).toNat

end

end A347347.P1580860582152564980

/-! ## A347347.P10947279828476392496

`Δ[A008619(n+1)]*A161501(A165789(n+1))`
-/

namespace A347347.P10947279828476392496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A161501 (A165789 (n + 1)).toNat

end

end A347347.P10947279828476392496

/-! ## A347347.P6590840201013486991

`A056594(n²)*A161501(A165789(n+1))`
-/

namespace A347347.P6590840201013486991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A161501 (A165789 (n + 1)).toNat

end

end A347347.P6590840201013486991

/-!
# A347349: a(n) is the smallest positive integer which can be represented as the sum of distinct Lucas numbers (A000032) in exactly n ways.

The programs for A347349, there is no canonical definition to state claims against.
-/

/-! ## A347349.P3913509809115914596

`ceil(A055635(n+1)/ϕ)`
-/

namespace A347349.P3913509809115914596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055635 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A347349.P3913509809115914596

/-! ## A347349.P11590373752879309951

`floor(sqrt(5)*A083853(n+1))+1`
-/

namespace A347349.P11590373752879309951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (5 : ℝ) * (A083853 (n + 1) : ℝ)⌋ + 1

end

end A347349.P11590373752879309951

/-! ## A347349.P10425913224168505108

`A019446(A055635(n+1))`
-/

namespace A347349.P10425913224168505108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A055635 (n + 1)).toNat

end

end A347349.P10425913224168505108

/-! ## A347349.P11323844544584761039

`floor(A055635(n+1)/ϕ-A000108(C(2, n+2)))+2`
-/

namespace A347349.P11323844544584761039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055635 (n + 1) : ℝ) / Real.goldenRatio - (A000108 (Nat.choose 2 (n + 2)) : ℝ)⌋ + 2

end

end A347349.P11323844544584761039

/-! ## A347349.P1825688878673947627

`A019446(A083853(n+1)+A013583(n+1))`
-/

namespace A347349.P1825688878673947627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A083853 (n + 1) + A013583 (n + 1)).toNat

end

end A347349.P1825688878673947627

/-! ## A347349.P17444669633006743940

`A019446(A013583(n+1)+floor(A013583(n+1)/ϕ²))`
-/

namespace A347349.P17444669633006743940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A013583 (n + 1) + ⌊(A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2⌋).toNat

end

end A347349.P17444669633006743940

/-! ## A347349.P13202542304789336205

`A013583(n+1)-A060144(floor(A013583(n+1)/ϕ²))`
-/

namespace A347349.P13202542304789336205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013583 (n + 1) - A060144 ⌊(A013583 (n + 1) : ℝ) / Real.goldenRatio ^ 2⌋.toNat

end

end A347349.P13202542304789336205

/-! ## A347349.P2982228635605436995

`A019446(A083853(n+1)+floor(ϕ²*A083853(n+1))+1)`
-/

namespace A347349.P2982228635605436995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A083853 (n + 1) + (⌊Real.goldenRatio ^ 2 * (A083853 (n + 1) : ℝ)⌋ + 1)).toNat

end

end A347349.P2982228635605436995

/-! ## A347349.P6822078112973509568

`ceil(A214971(A083853(n+1)+1)/ϕ)`
-/

namespace A347349.P6822078112973509568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214971 (A083853 (n + 1) + 1).toNat : ℝ) / Real.goldenRatio⌉

end

end A347349.P6822078112973509568

/-!
# A347350: Sequence obtained by writing the first 4 integers and skipping 1, then writing the next 5 integers and skipping 2, then writing the next 6 and skipping 3, etc.

The programs for A347350, there is no canonical definition to state claims against.
-/

/-! ## A347350.P9269249364035656186

`C(∑[char[∑[n-3]]], 2)+1+n`
-/

namespace A347350.P9269249364035656186
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n

end

end A347350.P9269249364035656186

/-! ## A347350.P18128781738414136448

`C(comp[∑[n-4]]-n, 2)+n+1`
-/

namespace A347350.P18128781738414136448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + (n + 1)

end

end A347350.P18128781738414136448

/-! ## A347350.P16003517836292087850

`1-(n-2*n-C(∑[char[∑[n-3]]], 2))`
-/

namespace A347350.P16003517836292087850
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A347350.P16003517836292087850

/-! ## A347350.P14161513809308940107

`∑[abs(Δ[A213183(n+4)])]`
-/

namespace A347350.P14161513809308940107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213183 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347350.P14161513809308940107

/-! ## A347350.P12130981466756059207

`∑[abs(Δ[A051162(n+5)])]`
-/

namespace A347350.P12130981466756059207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347350.P12130981466756059207

/-! ## A347350.P14206109975342952605

`∑[abs(Δ[A134478(n+5)])]`
-/

namespace A347350.P14206109975342952605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347350.P14206109975342952605

/-! ## A347350.P351188814504383971

`∑[abs(Δ[A094727(n+6)])]`
-/

namespace A347350.P351188814504383971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347350.P351188814504383971

/-! ## A347350.P5316158510127593175

`∑[abs(Δ[A108872(n+6)])]`
-/

namespace A347350.P5316158510127593175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347350.P5316158510127593175

/-! ## A347350.P9595013890194543456

`A000124(∑[char[∑[n+4]]])+n`
-/

namespace A347350.P9595013890194543456
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A347350.P9595013890194543456

/-!
# A347351: Triangle read by rows: T(n,k) is the number of links of length k in a set of all necklaces A000358 of length n, 1 <= k <= n.

The programs for A347351, there is no canonical definition to state claims against.
-/

/-! ## A347351.P12559964715456752050

`A333382(A084938(n))+A126988(n+1)`
-/

namespace A347351.P12559964715456752050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A084938 n).toNat + A126988 (n + 1)

end

end A347351.P12559964715456752050

/-! ## A347351.P10215425268257501618

`A084558(A126988(n+1)^A129479(n+1))`
-/

namespace A347351.P10215425268257501618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A126988 (n + 1) : ℚ) ^ (A129479 (n + 1) : ℤ))).toNat

end

end A347351.P10215425268257501618

/-! ## A347351.P5780893416605463459

`A307598(A036039(n+1))+A126988(n+1)`
-/

namespace A347351.P5780893416605463459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A036039 (n + 1)).toNat + A126988 (n + 1)

end

end A347351.P5780893416605463459

/-! ## A347351.P2729505400351092117

`A126988(n+1)+A000035(A337885(n+2))`
-/

namespace A347351.P2729505400351092117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) + A000035 (A337885 (n + 2)).toNat

end

end A347351.P2729505400351092117

/-! ## A347351.P12770902615360307873

`xor(A007706(A347811(n)), A130026(n))`
-/

namespace A347351.P12770902615360307873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007706 (A347811 n).toNat) (A130026 n)

end

end A347351.P12770902615360307873

/-!
# A347354: a(n) = sum of T(n,k) - T(n-1,k) for row n of A347285.

The programs for A347354, there is no canonical definition to state claims against.
-/

/-! ## A347354.P1452489232646067796

`∑{e}[ratio[A347284(n)], #]`
-/

namespace A347354.P1452489232646067796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347284 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A347354.P1452489232646067796

/-! ## A347354.P5059062024252299850

`A002024(∏{e}[A194219(3*n+1), #])`
-/

namespace A347354.P5059062024252299850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194219 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A347354.P5059062024252299850

/-! ## A347354.P9812500205322201889

`A001221(ratio[A347284(n)])`
-/

namespace A347354.P9812500205322201889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A347354.P9812500205322201889

/-! ## A347354.P13484330004258327696

`A001222(ratio[A347284(n)])`
-/

namespace A347354.P13484330004258327696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A347354.P13484330004258327696

/-! ## A347354.P18225628068408455171

`A061395(ratio[A347284(n)])`
-/

namespace A347354.P18225628068408455171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A347354.P18225628068408455171

/-!
# A347356: a(n) = m/A006939(A001221(m)) with m = A347284(n).

The programs for A347356, there is no canonical definition to state claims against.
-/

/-! ## A347356.P10651925695950686440

`A347284(n+1)/A006939(A089576(n+1))`
-/

namespace A347356.P10651925695950686440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347284 (n + 1) : ℚ) / (A006939 (A089576 (n + 1)).toNat : ℚ)

end

end A347356.P10651925695950686440

/-! ## A347356.P16588727685214949834

`∏[A207572(A164558(n))!]`
-/

namespace A347356.P16588727685214949834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A207572 (A164558 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A347356.P16588727685214949834

/-! ## A347356.P12164151495582222421

`∏[A092596(A241915(n+2)!)]`
-/

namespace A347356.P12164151495582222421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092596 (Nat.factorial (A241915 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A347356.P12164151495582222421

/-! ## A347356.P6580512140532140448

`∏[A118164(A088804(n+1))!]`
-/

namespace A347356.P6580512140532140448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A118164 (A088804 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A347356.P6580512140532140448

/-! ## A347356.P17065541204043013880

`∏[A038715(A205506(n+1))!]`
-/

namespace A347356.P17065541204043013880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A038715 (A205506 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A347356.P17065541204043013880

/-!
# A347360: Numbers that can be represented as the sum of squares of 3 numbers and also equal to twice the sum of their joint products.

The programs for A347360, there is no canonical definition to state claims against.
-/

/-! ## A347360.P8940386947892822017

`2*A135412(n+1)²`
-/

namespace A347360.P8940386947892822017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135412 (n + 1) ^ 2

end

end A347360.P8940386947892822017

/-! ## A347360.P15745793639308301246

`2*lt[1, A109607(n)%3]²`
-/

namespace A347360.P15745793639308301246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109607 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A347360.P15745793639308301246

/-! ## A347360.P8879120303779911411

`2*lt[A000010(n^ceil(atan(n)))%6, 1]²`
-/

namespace A347360.P8879120303779911411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A347360.P8879120303779911411

/-! ## A347360.P5277829997340144346

`2*(eq[0, A000010((n+1)²)%3]+1)²`
-/

namespace A347360.P5277829997340144346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 1) ^ 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A347360.P5277829997340144346

/-! ## A347360.P999378470103655283

`2*(lt[A000010((n+2)²)%3, 1]+2)²`
-/

namespace A347360.P999378470103655283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 2) ^ 2)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) ^ 2

end

end A347360.P999378470103655283

/-!
# A347361: Number of widths that are zero in the symmetric representation of sigma(n).

The programs for A347361, there is no canonical definition to state claims against.
-/

/-! ## A347361.P6896218796864125987

`A005408(n)-A347273(n+1)`
-/

namespace A347361.P6896218796864125987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A347273 (n + 1)

end

end A347361.P6896218796864125987

/-! ## A347361.P14889919657750060629

`Δ[n²]%A347273(C(n+1, n))`
-/

namespace A347361.P14889919657750060629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A347273 (Nat.choose (n + 1) n))

end

end A347361.P14889919657750060629

/-! ## A347361.P15628149506133056337

`abs(A157142(n)%A347273(n+1))`
-/

namespace A347361.P15628149506133056337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A157142 n) (A347273 (n + 1))|

end

end A347361.P15628149506133056337

/-! ## A347361.P13833953723118929083

`Δ[A000290(n)]%A347273(n+1)`
-/

namespace A347361.P13833953723118929083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A347273 (n + 1))

end

end A347361.P13833953723118929083

/-! ## A347361.P6664941056934537688

`A005843(n)+1-A347273(n+1)`
-/

namespace A347361.P6664941056934537688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A347273 (n + 1))

end

end A347361.P6664941056934537688

/-! ## A347361.P13916380675286890667

`(A004277(n)+1)%A347273(n+1)`
-/

namespace A347361.P13916380675286890667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 n + 1) (A347273 (n + 1))

end

end A347361.P13916380675286890667

/-!
# A347363: Number of self-avoiding knight's paths from the lower left corner to the lower right corner of a 3 X n chessboard.

The programs for A347363, there is no canonical definition to state claims against.
-/

/-! ## A347363.P14712628739152848738

`Δ[A008676(Δ[A000732(n)])]`
-/

namespace A347363.P14712628739152848738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000732 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347363.P14712628739152848738

/-! ## A347363.P11595295149407204707

`xor(A180632(n), A367414(floor(n!/(n+1)²)))`
-/

namespace A347363.P11595295149407204707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A180632 n) (A367414 ⌊(Nat.factorial n : ℚ) / ((n + 1) ^ 2 : ℚ)⌋.toNat)

end

end A347363.P11595295149407204707

/-!
# A347364: Primes of the form p^4 + p^2 - 1 where p is prime.

The programs for A347364, there is no canonical definition to state claims against.
-/

/-! ## A347364.P3657110438675903132

`record[A209188(A007918(n)²)]`
-/

namespace A347364.P3657110438675903132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A007918 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347364.P3657110438675903132

/-! ## A347364.P18365676599127665700

`record[A209188(A151800(n)²)]`
-/

namespace A347364.P18365676599127665700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A151800 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347364.P18365676599127665700

/-! ## A347364.P14243840515173196338

`record[A108151(A084920(n+1))]`
-/

namespace A347364.P14243840515173196338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A084920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347364.P14243840515173196338

/-!
# A347365: a(n) = n * (2-(-1)^n), or zero together with first differences of even triangular numbers halved (A074378).

The programs for A347365, the canonical program `A347365.P3727264330530101463` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347365 has offset 0).

The definition of A347365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2-(-1)^n)` (program `A347365.P3727264330530101463`, by `A347365.P3727264330530101463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347365.P3727264330530101463

`n*(2-(-1)^n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347365

/-- `n*(2-(-1)^n)` -/
def P3727264330530101463.Spec : Prop :=
  ∀ n, P3727264330530101463.a n = A347365 n

theorem P3727264330530101463.correct : P3727264330530101463.Spec := by
  intro n
  simp only [A347365]

end A347365

/-! ## A347365.P4833094593376800154

`2*A014682(n)-A000035(n)`
-/

namespace A347365.P4833094593376800154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014682 n - A000035 n

end

end A347365.P4833094593376800154

namespace A347365

/-- `2*A014682(n)-A000035(n)` -/
def P4833094593376800154.Spec : Prop :=
  ∀ n, P4833094593376800154.a n = A347365 n

end A347365

/-! ## A347365.P3630233642900067612

`2*lcm(2, n)-n`
-/

namespace A347365.P3630233642900067612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - (n : ℤ)

end

end A347365.P3630233642900067612

namespace A347365

/-- `2*lcm(2, n)-n` -/
def P3630233642900067612.Spec : Prop :=
  ∀ n, P3630233642900067612.a n = A347365 n

end A347365

/-! ## A347365.P1057334270701463353

`abs(Δ[C(xor(1, n), 2)])`
-/

namespace A347365.P1057334270701463353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A347365.P1057334270701463353

namespace A347365

/-- `abs(Δ[C(xor(1, n), 2)])` -/
def P1057334270701463353.Spec : Prop :=
  ∀ n, P1057334270701463353.a n = A347365 n

end A347365

/-! ## A347365.P11037942431438474423

`n/3^-(n%2)`
-/

namespace A347365.P11037942431438474423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 : ℚ) ^ (-((n % 2 : ℕ) : ℤ) : ℤ)

end

end A347365.P11037942431438474423

namespace A347365

/-- `n/3^-(n%2)` -/
def P11037942431438474423.Spec : Prop :=
  ∀ n, P11037942431438474423.a n = (A347365 n : ℚ)

end A347365

/-! ## A347365.P14855720853578892910

`n/3^-and(1, n)`
-/

namespace A347365.P14855720853578892910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 : ℚ) ^ (-(Nat.land 1 n : ℤ) : ℤ)

end

end A347365.P14855720853578892910

namespace A347365

/-- `n/3^-and(1, n)` -/
def P14855720853578892910.Spec : Prop :=
  ∀ n, P14855720853578892910.a n = (A347365 n : ℚ)

end A347365

/-! ## A347365.P16534458577714191488

`4*gcd(n, ∑[n])-n`
-/

namespace A347365.P16534458577714191488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A347365.P16534458577714191488

namespace A347365

/-- `4*gcd(n, ∑[n])-n` -/
def P16534458577714191488.Spec : Prop :=
  ∀ n, P16534458577714191488.a n = A347365 n

end A347365

/-! ## A347365.P1663508719794262044

`n*Δ[or(1, n)]+n`
-/

namespace A347365.P1663508719794262044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A347365.P1663508719794262044

namespace A347365

/-- `n*Δ[or(1, n)]+n` -/
def P1663508719794262044.Spec : Prop :=
  ∀ n, P1663508719794262044.a n = A347365 n

end A347365

/-! ## A347365.P6256333361048035546

`n*(2*n)%4+n`
-/

namespace A347365.P6256333361048035546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n % 4) + n

end

end A347365.P6256333361048035546

namespace A347365

/-- `n*(2*n)%4+n` -/
def P6256333361048035546.Spec : Prop :=
  ∀ n, (P6256333361048035546.a n : ℤ) = A347365 n

end A347365

/-! ## A347365.P14697361629933860741

`2*n*and(1, n)+n`
-/

namespace A347365.P14697361629933860741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.land 1 n) + n

end

end A347365.P14697361629933860741

namespace A347365

/-- `2*n*and(1, n)+n` -/
def P14697361629933860741.Spec : Prop :=
  ∀ n, (P14697361629933860741.a n : ℤ) = A347365 n

end A347365

/-! ## A347365.P6150824330908080602

`abs(n*(gcd(4, 2*n)-5))`
-/

namespace A347365.P6150824330908080602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((Nat.gcd 4 (2 * n) : ℤ) - 5)|

end

end A347365.P6150824330908080602

namespace A347365

/-- `abs(n*(gcd(4, 2*n)-5))` -/
def P6150824330908080602.Spec : Prop :=
  ∀ n, P6150824330908080602.a n = A347365 n

end A347365

/-! ## A347365.P6748973917750420103

`abs(n*(xor(1, n)-(n+2)))`
-/

namespace A347365.P6748973917750420103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((Nat.xor 1 n : ℤ) - (n + 2 : ℤ))|

end

end A347365.P6748973917750420103

namespace A347365

/-- `abs(n*(xor(1, n)-(n+2)))` -/
def P6748973917750420103.Spec : Prop :=
  ∀ n, P6748973917750420103.a n = A347365 n

end A347365

/-! ## A347365.P9471580475377835982

`-(n*(xor(1, n)-(n+2)))`
-/

namespace A347365.P9471580475377835982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * ((Nat.xor 1 n : ℤ) - (n + 2 : ℤ)))

end

end A347365.P9471580475377835982

namespace A347365

/-- `-(n*(xor(1, n)-(n+2)))` -/
def P9471580475377835982.Spec : Prop :=
  ∀ n, P9471580475377835982.a n = A347365 n

end A347365

/-! ## A347365.P4202258223038048672

`n²-n*xor(1, n-2)`
-/

namespace A347365.P4202258223038048672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) * Int.xor 1 ((n : ℤ) - 2)

end

end A347365.P4202258223038048672

namespace A347365

/-- `n²-n*xor(1, n-2)` -/
def P4202258223038048672.Spec : Prop :=
  ∀ n, P4202258223038048672.a n = A347365 n

end A347365

/-! ## A347365.P17588909882742828254

`∑{d}[or(n+1, -2), n*#]`
-/

namespace A347365.P17588909882742828254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n * d

end

end A347365.P17588909882742828254

namespace A347365

/-- `∑{d}[or(n+1, -2), n*#]` -/
def P17588909882742828254.Spec : Prop :=
  ∀ n, (P17588909882742828254.a n : ℤ) = A347365 n

end A347365

/-! ## A347365.P12580532387468224020

`3*n/(2*n-1)%4`
-/

namespace A347365.P12580532387468224020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n : ℚ) / (Int.tmod ((2 * n : ℤ) - 1) 4 : ℚ)

end

end A347365.P12580532387468224020

namespace A347365

/-- `3*n/(2*n-1)%4` -/
def P12580532387468224020.Spec : Prop :=
  ∀ n, P12580532387468224020.a n = (A347365 n : ℚ)

end A347365

/-! ## A347365.P5346742626723338272

`2*n*gcd(2, n+1)-n`
-/

namespace A347365.P5346742626723338272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n * Nat.gcd 2 (n + 1)) : ℤ) - (n : ℤ)

end

end A347365.P5346742626723338272

namespace A347365

/-- `2*n*gcd(2, n+1)-n` -/
def P5346742626723338272.Spec : Prop :=
  ∀ n, P5346742626723338272.a n = A347365 n

end A347365

/-! ## A347365.P7035287028580222496

`gcd(n*(n-1)%2, 3*n)`
-/

namespace A347365.P7035287028580222496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * Int.tmod ((n : ℤ) - 1) 2) (3 * n : ℤ)

end

end A347365.P7035287028580222496

namespace A347365

/-- `gcd(n*(n-1)%2, 3*n)` -/
def P7035287028580222496.Spec : Prop :=
  ∀ n, (P7035287028580222496.a n : ℤ) = A347365 n

end A347365

/-! ## A347365.P847760200146957221

`2*C(n, a(n-1))+n` with `a(0)=0`
-/

namespace A347365.P847760200146957221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.choose n (a (n - 1)) + n

end

end A347365.P847760200146957221

namespace A347365

/-- `2*C(n, a(n-1))+n` -/
def P847760200146957221.Spec : Prop :=
  ∀ n, (P847760200146957221.a n : ℤ) = A347365 n

end A347365

/-!
# A347366: Primes that are partial sums of the semiprimes.

The programs for A347366, there is no canonical definition to state claims against.
-/

/-! ## A347366.P10487321254588876586

`A062198(A180152(n+1))`
-/

namespace A347366.P10487321254588876586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (A180152 (n + 1)).toNat

end

end A347366.P10487321254588876586

/-! ## A347366.P6140782703411774566

`p?[∑[eq[2, ∑{e}[n, #]]]]`
-/

namespace A347366.P6140782703411774566
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347366.P6140782703411774566

/-! ## A347366.P11058956494602793096

`p?[∑[lt[(2-∑{e}[n, #])², 1]]]`
-/

namespace A347366.P11058956494602793096
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p : ℕ) : ℤ)) ^ 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f5 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347366.P11058956494602793096

/-! ## A347366.P1428378943538337447

`p?[A062198(n+1)]`
-/

namespace A347366.P1428378943538337447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347366.P1428378943538337447

/-! ## A347366.P3236254718604006357

`p?[∑[A001358(n+1)]]`
-/

namespace A347366.P3236254718604006357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347366.P3236254718604006357

/-! ## A347366.P14604269970968529043

`p?[∑[A176540(n+2)]]`
-/

namespace A347366.P14604269970968529043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347366.P14604269970968529043

/-! ## A347366.P12338564648966549103

`p?[∑[eq[2, A226378(n)]]]`
-/

namespace A347366.P12338564648966549103
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347366.P12338564648966549103

/-! ## A347366.P16942621479222138569

`p?[∑[eq[2, A284289(n)]]]`
-/

namespace A347366.P16942621479222138569
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A347366.P16942621479222138569

/-! ## A347366.P8085325620545219725

`p?[∑[record[A179312(n+1)]]]`
-/

namespace A347366.P8085325620545219725
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347366.P8085325620545219725

/-! ## A347366.P15591969563709054463

`p?[∑[A088707(n+1)-1]]`
-/

namespace A347366.P15591969563709054463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347366.P15591969563709054463

/-!
# A347367: Irregular triangle read by rows: T(n,k) is the total number of cells with multiplicity in the k-th column of the ziggurat diagram of n.

The programs for A347367, there is no canonical definition to state claims against.
-/

/-! ## A347367.P9982242841193970763

`A004737(n+1)%A124758(A212124(n+1))`
-/

namespace A347367.P9982242841193970763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004737 (n + 1)) (A124758 (A212124 (n + 1)).toNat)

end

end A347367.P9982242841193970763

/-! ## A347367.P5265282378022325784

`and(A004737(n+1), A331916(A331927(n)))`
-/

namespace A347367.P5265282378022325784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004737 (n + 1)) (A331916 (A331927 n).toNat)

end

end A347367.P5265282378022325784

/-! ## A347367.P15160830852161171595

`A004737(n+1)*A105597(A309399(n))`
-/

namespace A347367.P15160830852161171595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A105597 (A309399 n).toNat

end

end A347367.P15160830852161171595

/-! ## A347367.P4838553213805040652

`A282029(A165883(n))%5`
-/

namespace A347367.P4838553213805040652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282029 (A165883 n).toNat) 5

end

end A347367.P4838553213805040652

/-! ## A347367.P10715044609265902673

`A004737(n+1)*A265186(A000389(n))`
-/

namespace A347367.P10715044609265902673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) * A265186 (A000389 n).toNat

end

end A347367.P10715044609265902673

/-!
# A347368: Number of signatures of Fuchsian groups leading to automorphism groups of Riemann surfaces of genus n.

The programs for A347368, there is no canonical definition to state claims against.
-/

/-! ## A347368.P13702080671791164804

`A347369(n+2)+A347370(n+2)`
-/

namespace A347368.P13702080671791164804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347369 (n + 2) + A347370 (n + 2)

end

end A347368.P13702080671791164804

/-!
# A347369: Number of signatures of Fuchsian groups of orbit genus 0 leading to automorphism groups of Riemann surfaces of genus n.

The programs for A347369, there is no canonical definition to state claims against.
-/

/-! ## A347369.P2868113804328372946

`A347368(n+2)-A347370(n+2)`
-/

namespace A347369.P2868113804328372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347368 (n + 2) - A347370 (n + 2)

end

end A347369.P2868113804328372946

/-! ## A347369.P10638531580484994570

`A347368(n+2)+A008683(A002144(n+1))*A347370(n+2)`
-/

namespace A347369.P10638531580484994570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347368 (n + 2) + A008683 (A002144 (n + 1)).toNat * A347370 (n + 2)

end

end A347369.P10638531580484994570

/-! ## A347369.P13081921284319686713

`A347368(n+2)+A347370(n+2)/A008683(A002144(n+3))`
-/

namespace A347369.P13081921284319686713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347368 (n + 2) : ℚ) + (A347370 (n + 2) : ℚ) / (A008683 (A002144 (n + 3)).toNat : ℚ)

end

end A347369.P13081921284319686713

/-!
# A347370: Number of signatures of Fuchsian groups of positive orbit genus leading to automorphism groups of Riemann surfaces of genus n.

The programs for A347370, there is no canonical definition to state claims against.
-/

/-! ## A347370.P6410238516591469914

`A347368(n+2)-A347369(n+2)`
-/

namespace A347370.P6410238516591469914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347368 (n + 2) - A347369 (n + 2)

end

end A347370.P6410238516591469914

/-! ## A347370.P5958070764859534300

`A347368(A020725(n+1))%A347369(n+2)`
-/

namespace A347370.P5958070764859534300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347368 (A020725 (n + 1)).toNat) (A347369 (n + 2))

end

end A347370.P5958070764859534300

/-! ## A347370.P3380096835931077346

`A347368(A000027(n+2))%A347369(n+2)`
-/

namespace A347370.P3380096835931077346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347368 (A000027 (n + 2)).toNat) (A347369 (n + 2))

end

end A347370.P3380096835931077346

/-! ## A347370.P7836151736889511309

`A347368(A028310(n+2))%A347369(n+2)`
-/

namespace A347370.P7836151736889511309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347368 (A028310 (n + 2)).toNat) (A347369 (n + 2))

end

end A347370.P7836151736889511309

/-! ## A347370.P3377062160301914752

`A066182(A347368(n+2)+1)%A347369(n+2)`
-/

namespace A347370.P3377062160301914752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066182 (A347368 (n + 2) + 1).toNat) (A347369 (n + 2))

end

end A347370.P3377062160301914752

/-!
# A347373: Number of Aut(G)-orbits on G-characters that come from Riemann surfaces of genus n.

The programs for A347373, there is no canonical definition to state claims against.
-/

/-! ## A347373.P6836522978057152106

`A115956(7*∑{d}[n+1, #])-∑{d}[n+1, #]`
-/

namespace A347373.P6836522978057152106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115956 (7 * (∑ d ∈ Nat.divisors (f1 n), d)) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A347373.P6836522978057152106

/-!
# A347374: Lexicographically earliest infinite sequence such that a(i) = a(j) => A331410(i) = A331410(j) and A000593(i) = A000593(j), for all i, j >= 1.

The programs for A347374, there is no canonical definition to state claims against.
-/

/-! ## A347374.P16503192441327139727

`A351035(n+1)%A002148(n²)`
-/

namespace A347374.P16503192441327139727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351035 (n + 1)) (A002148 (n ^ 2))

end

end A347374.P16503192441327139727

/-! ## A347374.P12181794073264752011

`A351035(n+1)+A184955(A163351(n))`
-/

namespace A347374.P12181794073264752011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351035 (n + 1) + A184955 (A163351 n).toNat

end

end A347374.P12181794073264752011

/-! ## A347374.P2334901614167791073

`A038500(A073277(n+1))*A351035(n+1)`
-/

namespace A347374.P2334901614167791073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A073277 (n + 1)).toNat * A351035 (n + 1)

end

end A347374.P2334901614167791073

/-! ## A347374.P7861861486317977265

`A006519(A191177(n+1))*A351035(n+1)`
-/

namespace A347374.P7861861486317977265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A191177 (n + 1)).toNat * A351035 (n + 1)

end

end A347374.P7861861486317977265

/-! ## A347374.P3780325370132299429

`A351035(A351061(∑[2*n+1]))`
-/

namespace A347374.P3780325370132299429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351035 (A351061 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A347374.P3780325370132299429

/-! ## A347374.P8885097764230541150

`A351035(n+1)+A007814(n²+1+n)`
-/

namespace A347374.P8885097764230541150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351035 (n + 1) + A007814 (n ^ 2 + 1 + n)

end

end A347374.P8885097764230541150

/-!
# A347375: The position of the first occurrence of n in A347249.

The programs for A347375, there is no canonical definition to state claims against.
-/

/-! ## A347375.P11674947491553441242

`record[A248035(5^n)]`
-/

namespace A347375.P11674947491553441242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248035 (5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347375.P11674947491553441242

/-!
# A347376: Möbius transform of A250469.

The programs for A347376, there is no canonical definition to state claims against.
-/

/-! ## A347376.P5161786413882804947

`A003972(n+1)-A347377(n+1)`
-/

namespace A347376.P5161786413882804947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - A347377 (n + 1)

end

end A347376.P5161786413882804947

/-! ## A347376.P10506512570345356305

`∑{d}[n+1, A003972(#)*A349632((n+1)/#)]`
-/

namespace A347376.P10506512570345356305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A349632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347376.P10506512570345356305

/-! ## A347376.P10893155491180832866

`∑{d}[n+1, A008683(#)*A250469((n+1)/#)]`
-/

namespace A347376.P10893155491180832866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A250469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347376.P10893155491180832866

/-! ## A347376.P18047742832244755420

`A000010(A003961(n+1))-A347377(n+1)`
-/

namespace A347376.P18047742832244755420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - A347377 (n + 1)

end

end A347376.P18047742832244755420

/-! ## A347376.P4697519049429530422

`A000010(A045965(n+1))-A347377(n+1)`
-/

namespace A347376.P4697519049429530422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045965 (n + 1)).toNat - A347377 (n + 1)

end

end A347376.P4697519049429530422

/-!
# A347377: Möbius transform of A280692, A003961(n) - A250469(n).

The programs for A347377, there is no canonical definition to state claims against.
-/

/-! ## A347377.P7305031948967179359

`A003972(n+1)-A347376(n+1)`
-/

namespace A347377.P7305031948967179359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - A347376 (n + 1)

end

end A347377.P7305031948967179359

/-! ## A347377.P4647249978176963020

`A337549(n+1)+n+1-A347376(n+1)`
-/

namespace A347377.P4647249978176963020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337549 (n + 1) + ((n + 1 : ℤ) - A347376 (n + 1))

end

end A347377.P4647249978176963020

/-! ## A347377.P10635674144727272648

`∑{d}[n+1, A008683(#)*A280692((n+1)/#)]`
-/

namespace A347377.P10635674144727272648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A280692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347377.P10635674144727272648

/-! ## A347377.P10054523120532450603

`A000010(A003961(n+1))-A347376(n+1)`
-/

namespace A347377.P10054523120532450603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - A347376 (n + 1)

end

end A347377.P10054523120532450603

/-! ## A347377.P15601016994913889409

`A000010(A045965(n+1))-A347376(n+1)`
-/

namespace A347377.P15601016994913889409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045965 (n + 1)).toNat - A347376 (n + 1)

end

end A347377.P15601016994913889409

/-! ## A347377.P637566482949258985

`A349127(A045966(n+1))-A347376(n+1)`
-/

namespace A347377.P637566482949258985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A045966 (n + 1)).toNat - A347376 (n + 1)

end

end A347377.P637566482949258985

/-!
# A347378: a(n) = A250469(n) - n.

The programs for A347378, there is no canonical definition to state claims against.
-/

/-! ## A347378.P3082218598740665502

`n+1-A346476(n+1)`
-/

namespace A347378.P3082218598740665502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A346476 (n + 1)

end

end A347378.P3082218598740665502

/-! ## A347378.P14762885177429389007

`A336853(n+1)-A280692(n+1)`
-/

namespace A347378.P14762885177429389007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - A280692 (n + 1)

end

end A347378.P14762885177429389007

/-! ## A347378.P1002049684170735642

`A250469(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347378.P1002049684170735642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - (n + 1 : ℤ)

end

end A347378.P1002049684170735642

/-! ## A347378.P4229021859473913529

`A269360(n+1)-(n+2)`
-/

namespace A347378.P4229021859473913529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) - (n + 2 : ℤ)

end

end A347378.P4229021859473913529

/-! ## A347378.P16465740427530906976

`A302042(6*n+3)-(n+1)`
-/

namespace A347378.P16465740427530906976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (6 * n + 3) - (n + 1 : ℤ)

end

end A347378.P16465740427530906976

/-! ## A347378.P2116153139133898331

`A346473(n+1)+A001065(n+1)`
-/

namespace A347378.P2116153139133898331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346473 (n + 1) + A001065 (n + 1)

end

end A347378.P2116153139133898331

/-! ## A347378.P13686839509773197942

`A269379(A269355(n+1))-(n+1)`
-/

namespace A347378.P13686839509773197942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269379 (A269355 (n + 1)).toNat - (n + 1 : ℤ)

end

end A347378.P13686839509773197942

/-! ## A347378.P14082507337254905204

`A253885(n)-(A280692(n+1)+n)`
-/

namespace A347378.P14082507337254905204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n - (A280692 (n + 1) + (n : ℤ))

end

end A347378.P14082507337254905204

/-! ## A347378.P13308508256662634741

`A280702(n+1)*A280704(n+1)-(n+1)`
-/

namespace A347378.P13308508256662634741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280702 (n + 1) * A280704 (n + 1) - (n + 1 : ℤ)

end

end A347378.P13308508256662634741

/-! ## A347378.P10189068936502025818

`A046666(A269360(n+1))-n`
-/

namespace A347378.P10189068936502025818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A269360 (n + 1)).toNat - (n : ℤ)

end

end A347378.P10189068936502025818

/-! ## A347378.P6775844428363419030

`A003961(A266645(n+1))-(n+1)`
-/

namespace A347378.P6775844428363419030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A266645 (n + 1)).toNat - (n + 1 : ℤ)

end

end A347378.P6775844428363419030

/-! ## A347378.P6079241547033736817

`A253885(A266645(n+1)-1)-n`
-/

namespace A347378.P6079241547033736817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A266645 (n + 1) - 1).toNat - (n : ℤ)

end

end A347378.P6079241547033736817

/-! ## A347378.P9424210411790024261

`2*A250471(n+1)-(n+2)`
-/

namespace A347378.P9424210411790024261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250471 (n + 1) - (n + 2 : ℤ)

end

end A347378.P9424210411790024261

/-! ## A347378.P15888627010306758725

`A004273(A250471(n+1))-(n+1)`
-/

namespace A347378.P15888627010306758725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A250471 (n + 1)).toNat - (n + 1 : ℤ)

end

end A347378.P15888627010306758725

/-! ## A347378.P14042869668550795041

`A005843(A250471(n+1)-1)-n`
-/

namespace A347378.P14042869668550795041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250471 (n + 1) - 1).toNat - (n : ℤ)

end

end A347378.P14042869668550795041

/-! ## A347378.P12018743476928510783

`A253886(n)-n`
-/

namespace A347378.P12018743476928510783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 n - (n : ℤ)

end

end A347378.P12018743476928510783

/-! ## A347378.P13666149898440693144

`A023444(A269360(n+1)-n)`
-/

namespace A347378.P13666149898440693144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A269360 (n + 1) - (n : ℤ)).toNat

end

end A347378.P13666149898440693144

/-! ## A347378.P15599434990377953241

`A004442(A250469(n+1))-n`
-/

namespace A347378.P15599434990377953241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A250469 (n + 1)).toNat - (n : ℤ)

end

end A347378.P15599434990377953241

/-! ## A347378.P18143113358842775333

`A003961(A266416(A266403(n+1)))-(n+1)`
-/

namespace A347378.P18143113358842775333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A266416 (A266403 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A347378.P18143113358842775333

/-! ## A347378.P14511626741103387548

`A003961(A266401(A266416(n+1)))-(n+1)`
-/

namespace A347378.P14511626741103387548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A266401 (A266416 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A347378.P14511626741103387548

/-!
# A347379: Möbius transform of A108951, the primorial inflation of n.

The programs for A347379, there is no canonical definition to state claims against.
-/

/-! ## A347379.P14024141610126074892

`A010848(lcm(2, A073039(n+1)))`
-/

namespace A347379.P14024141610126074892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (Int.lcm 2 (A073039 (n + 1)))

end

end A347379.P14024141610126074892

/-! ## A347379.P15101988007297905788

`A331289(4^n+2*n+1)+A329348(n+1)`
-/

namespace A347379.P15101988007297905788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331289 (4 ^ n + (2 * n + 1)) + A329348 (n + 1)

end

end A347379.P15101988007297905788

/-! ## A347379.P14521185584443443376

`A073039(n+1)-A005136(A317414(n))`
-/

namespace A347379.P14521185584443443376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073039 (n + 1) - A005136 (A317414 n).toNat

end

end A347379.P14521185584443443376

/-!
# A347380: Length of the common prefix in the binary expansions of A156552(n) and A332221(n) = A156552(sigma(n)).

The programs for A347380, there is no canonical definition to state claims against.
-/

/-! ## A347380.P10568065183543443825

`A252464(n+1)-A347381(n+1)`
-/

namespace A347380.P10568065183543443825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A347381 (n + 1)

end

end A347380.P10568065183543443825

/-! ## A347380.P16024515168696537640

`A252464(A347879(n+1))`
-/

namespace A347380.P16024515168696537640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A347879 (n + 1)).toNat

end

end A347380.P16024515168696537640

/-! ## A347380.P16176354299688384066

`A056239(A325351(n+1))-A347381(n+1)`
-/

namespace A347380.P16176354299688384066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat - A347381 (n + 1)

end

end A347380.P16176354299688384066

/-! ## A347380.P349578792560796472

`A324863(n+1)-(A347381(n+1)+A324870(n+1))`
-/

namespace A347380.P349578792560796472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - (A347381 (n + 1) + A324870 (n + 1))

end

end A347380.P349578792560796472

/-! ## A347380.P7609981498682944999

`A364569(n+1)+A364570(n+1)-A347381(n+1)`
-/

namespace A347380.P7609981498682944999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364569 (n + 1) + (A364570 (n + 1) - A347381 (n + 1))

end

end A347380.P7609981498682944999

/-! ## A347380.P14011994713840314340

`A297167(n+1)+∑{p}[n+1, A001222(#)]-A347381(n+1)`
-/

namespace A347380.P14011994713840314340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p - A347381 (n + 1)

end

end A347380.P14011994713840314340

/-! ## A347380.P17819669668247392000

`A001222(2*(n+1))+A061395(2*(n+1))-2-A347381(n+1)`
-/

namespace A347380.P17819669668247392000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1)) + (A061395 (2 * (n + 1)) - 2) - A347381 (n + 1)

end

end A347380.P17819669668247392000

/-! ## A347380.P2033121676948992554

`A061395(A332462(n+1))-A347381(n+1)`
-/

namespace A347380.P2033121676948992554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332462 (n + 1)).toNat - A347381 (n + 1)

end

end A347380.P2033121676948992554

/-! ## A347380.P10178863063092765769

`A252464(n+1)-A356321(A156552(n+1))`
-/

namespace A347380.P10178863063092765769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A356321 (A156552 (n + 1)).toNat

end

end A347380.P10178863063092765769

/-! ## A347380.P3725380984900119932

`A356320(A156552(n+1))`
-/

namespace A347380.P3725380984900119932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356320 (A156552 (n + 1)).toNat

end

end A347380.P3725380984900119932

/-!
# A347381: Distance from n to the nearest common ancestor of n and sigma(n) in the Doudna-tree (A005940).

The programs for A347381, there is no canonical definition to state claims against.
-/

/-! ## A347381.P7583867128095760039

`A252464(n+1)-A347380(n+1)`
-/

namespace A347381.P7583867128095760039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A347380 (n + 1)

end

end A347381.P7583867128095760039

/-! ## A347381.P1941893124954126604

`A374215(n+1)+A374214(n+1)`
-/

namespace A347381.P1941893124954126604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374215 (n + 1) + A374214 (n + 1)

end

end A347381.P1941893124954126604

/-! ## A347381.P16078755323146620448

`A056239(A325351(n+1))-A347380(n+1)`
-/

namespace A347381.P16078755323146620448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat - A347380 (n + 1)

end

end A347381.P16078755323146620448

/-! ## A347381.P415121332067607255

`A252464(n+1)-A252464(A347879(n+1))`
-/

namespace A347381.P415121332067607255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A347879 (n + 1)).toNat

end

end A347381.P415121332067607255

/-! ## A347381.P1706853055629129196

`A056239(n+1)-(A347380(n+1)+A325135(n+1))`
-/

namespace A347381.P1706853055629129196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - (A347380 (n + 1) + A325135 (n + 1))

end

end A347381.P1706853055629129196

/-! ## A347381.P5183102605133989024

`A324863(n+1)-(A347380(n+1)+A324870(n+1))`
-/

namespace A347381.P5183102605133989024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324863 (n + 1) - (A347380 (n + 1) + A324870 (n + 1))

end

end A347381.P5183102605133989024

/-! ## A347381.P12825143738184278947

`A364569(n+1)+A364570(n+1)-A347380(n+1)`
-/

namespace A347381.P12825143738184278947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364569 (n + 1) + (A364570 (n + 1) - A347380 (n + 1))

end

end A347381.P12825143738184278947

/-! ## A347381.P16831283328799936470

`A061395(2*(n+1))+A001222(n+1)-1-A347380(n+1)`
-/

namespace A347381.P16831283328799936470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) + (A001222 (n + 1) - 1) - A347380 (n + 1)

end

end A347381.P16831283328799936470

/-! ## A347381.P14946391274113512835

`A001222((n+1)/A020639(n+1))+1-A243291(n+1)+n-A347380(n+1)`
-/

namespace A347381.P14946391274113512835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat + (1 - A243291 (n + 1) + (n : ℤ) - A347380 (n + 1))

end

end A347381.P14946391274113512835

/-! ## A347381.P1948882577235163868

`A061395(A332462(n+1))-A347380(n+1)`
-/

namespace A347381.P1948882577235163868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A332462 (n + 1)).toNat - A347380 (n + 1)

end

end A347381.P1948882577235163868

/-!
# A347382: a(n) = A252464(n) - A252464(A000593(n)).

The programs for A347382, the canonical program `A347382.P9157316412378823865` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347382 has offset 1).

The definition of A347382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347382.P9157316412378823865

`A252464(n+1)-A252464(A000593(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A347382

/-- `A252464(n+1)-A252464(A000593(n+1))` -/
def P9157316412378823865.Spec : Prop :=
  ∀ n, P9157316412378823865.a n = A347382 (n + 1)

theorem P9157316412378823865.correct : P9157316412378823865.Spec := by
  intro n
  simp only [A347382, Nat.add_sub_cancel]

end A347382

/-! ## A347382.P12466733261533081924

`A252464(n+1)-A252464(∑{d}[n+1, #*#%2])`
-/

namespace A347382.P12466733261533081924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (∑ d ∈ Nat.divisors (f1 n), d * (d % 2))

end

end A347382.P12466733261533081924

namespace A347382

/-- `A252464(n+1)-A252464(∑{d}[n+1, #*#%2])` -/
def P12466733261533081924.Spec : Prop :=
  ∀ n, P12466733261533081924.a n = A347382 (n + 1)

end A347382

/-! ## A347382.P13723840638528394059

`A252464(n+1)-A252464(∑{d}[n+1, lcm(2, #)-#])`
-/

namespace A347382.P13723840638528394059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ))).toNat

end

end A347382.P13723840638528394059

namespace A347382

/-- `A252464(n+1)-A252464(∑{d}[n+1, lcm(2, #)-#])` -/
def P13723840638528394059.Spec : Prop :=
  ∀ n, P13723840638528394059.a n = A347382 (n + 1)

end A347382

/-! ## A347382.P15349778871549654032

`A325134(n+1)-A325134(A000593(n+1))`
-/

namespace A347382.P15349778871549654032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 1) - A325134 (A000593 (n + 1)).toNat

end

end A347382.P15349778871549654032

namespace A347382

/-- `A325134(n+1)-A325134(A000593(n+1))` -/
def P15349778871549654032.Spec : Prop :=
  ∀ n, P15349778871549654032.a n = A347382 (n + 1)

theorem P15349778871549654032.correct : P15349778871549654032.Spec := by
  intro n
  simp only [A347382, Nat.add_sub_cancel, A347382.P15349778871549654032.a, A347382.P9157316412378823865.a, A000593, A000593.P13640346029616979906.a, A252464, A252464.P11274602121942962009.a, A325134, A325134.P8946370293622767949.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038712, A038712.P3404197303190209645.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347382

/-! ## A347382.P12184848772082988931

`A252464(n+1)-A252464(A326990(n+1)+1)`
-/

namespace A347382.P12184848772082988931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A326990 (n + 1) + 1).toNat

end

end A347382.P12184848772082988931

namespace A347382

/-- `A252464(n+1)-A252464(A326990(n+1)+1)` -/
def P12184848772082988931.Spec : Prop :=
  ∀ n, P12184848772082988931.a n = A347382 (n + 1)

theorem P12184848772082988931.correct : P12184848772082988931.Spec := by
  intro n
  simp only [A347382, Nat.add_sub_cancel, A347382.P12184848772082988931.a, A347382.P9157316412378823865.a, A000593, A000593.P13640346029616979906.a, A252464, A252464.P11274602121942962009.a, A326990, A326990.P6670757131686068120.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038712, A038712.P3404197303190209645.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347382

/-! ## A347382.P6494707606753812880

`A252464(n+1)-A252464(A000203((n+1)/2^val(n+1, 2)))`
-/

namespace A347382.P6494707606753812880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A347382.P6494707606753812880

namespace A347382

/-- `A252464(n+1)-A252464(A000203((n+1)/2^val(n+1, 2)))` -/
def P6494707606753812880.Spec : Prop :=
  ∀ n, P6494707606753812880.a n = A347382 (n + 1)

end A347382

/-! ## A347382.P3657243210470501602

`A252464(n+1)-A252464(A000203(A000265(n+1)))`
-/

namespace A347382.P3657243210470501602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A000203 (A000265 (n + 1)).toNat).toNat

end

end A347382.P3657243210470501602

namespace A347382

/-- `A252464(n+1)-A252464(A000203(A000265(n+1)))` -/
def P3657243210470501602.Spec : Prop :=
  ∀ n, P3657243210470501602.a n = A347382 (n + 1)

end A347382

/-! ## A347382.P17601340268405899697

`A252464(n+1)-A252464(A091570(2*(n+1)))`
-/

namespace A347382.P17601340268405899697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A091570 (2 * (n + 1))).toNat

end

end A347382.P17601340268405899697

namespace A347382

/-- `A252464(n+1)-A252464(A091570(2*(n+1)))` -/
def P17601340268405899697.Spec : Prop :=
  ∀ n, P17601340268405899697.a n = A347382 (n + 1)

end A347382

/-!
# A347383: Odd composites k, not powers of primes, such that for all their nontrivial unitary divisors d it holds that A347381(d) > A347381(k).

The programs for A347383, there is no canonical definition to state claims against.
-/

/-! ## A347383.P1960677433123056458

`A347390(A271269(n+1)+A119709(2*(n+1)))`
-/

namespace A347383.P1960677433123056458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347390 (A271269 (n + 1) + A119709 (2 * (n + 1))).toNat

end

end A347383.P1960677433123056458

/-!
# A347385: Dedekind psi function applied to the odd part of n: a(n) = A001615(A000265(n)).

The programs for A347385, the canonical program `A347385.P6954403012432524974` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347385 has offset 1).

The definition of A347385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347385.P6954403012432524974

`A001615(A000265(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A347385

/-- `A001615(A000265(n+1))` -/
def P6954403012432524974.Spec : Prop :=
  ∀ n, P6954403012432524974.a n = A347385 (n + 1)

theorem P6954403012432524974.correct : P6954403012432524974.Spec := by
  intro n
  simp only [A347385, Nat.add_sub_cancel]

end A347385

/-! ## A347385.P11381247364045934133

`A206787(n+1)*A336651(n+1)`
-/

namespace A347385.P11381247364045934133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (n + 1) * A336651 (n + 1)

end

end A347385.P11381247364045934133

namespace A347385

/-- `A206787(n+1)*A336651(n+1)` -/
def P11381247364045934133.Spec : Prop :=
  ∀ n, P11381247364045934133.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P3836515108817617968

`A001615((n+1)/2^val(n+1, 2))`
-/

namespace A347385.P3836515108817617968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A347385.P3836515108817617968

namespace A347385

/-- `A001615((n+1)/2^val(n+1, 2))` -/
def P3836515108817617968.Spec : Prop :=
  ∀ n, P3836515108817617968.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P2252521680446042821

`A001615((n+1)/(or(n, n+1)-n))`
-/

namespace A347385.P2252521680446042821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A347385.P2252521680446042821

namespace A347385

/-- `A001615((n+1)/(or(n, n+1)-n))` -/
def P2252521680446042821.Spec : Prop :=
  ∀ n, P2252521680446042821.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P5401431037723159822

`A001615((n+1)/and(n+1, -(n+1)))`
-/

namespace A347385.P5401431037723159822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A347385.P5401431037723159822

namespace A347385

/-- `A001615((n+1)/and(n+1, -(n+1)))` -/
def P5401431037723159822.Spec : Prop :=
  ∀ n, P5401431037723159822.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P13690666762566132882

`∑{d}[(n+1)/and(n+1, -(n+1)), A063659(#)]`
-/

namespace A347385.P13690666762566132882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A063659 d

end

end A347385.P13690666762566132882

namespace A347385

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), A063659(#)]` -/
def P13690666762566132882.Spec : Prop :=
  ∀ n, P13690666762566132882.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P11881217839520393832

`A031359(A003602(n+1))`
-/

namespace A347385.P11881217839520393832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031359 (A003602 (n + 1)).toNat

end

end A347385.P11881217839520393832

namespace A347385

/-- `A031359(A003602(n+1))` -/
def P11881217839520393832.Spec : Prop :=
  ∀ n, P11881217839520393832.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P5851551861073064467

`A031359(A025480(n)+1)`
-/

namespace A347385.P5851551861073064467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031359 (A025480 n + 1).toNat

end

end A347385.P5851551861073064467

namespace A347385

/-- `A031359(A025480(n)+1)` -/
def P5851551861073064467.Spec : Prop :=
  ∀ n, P5851551861073064467.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P12679696827496892595

`A001615(A153733(n)+1)`
-/

namespace A347385.P12679696827496892595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A153733 n + 1).toNat

end

end A347385.P12679696827496892595

namespace A347385

/-- `A001615(A153733(n)+1)` -/
def P12679696827496892595.Spec : Prop :=
  ∀ n, P12679696827496892595.a n = A347385 (n + 1)

theorem P12679696827496892595.correct : P12679696827496892595.Spec := by
  intro n
  simp only [A347385, Nat.add_sub_cancel, A347385.P12679696827496892595.a, A347385.P6954403012432524974.a, A000265, A000265.P2772582252347773295.a, A001615, A001615.P12078511981713404634.a, A153733, A153733.P10755713114946739736.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003602, A003602.P7612175048291952394.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A331739, A331739.P457850794578440847.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347385

/-! ## A347385.P8960825359448035264

`A253629(A065883(n+1))`
-/

namespace A347385.P8960825359448035264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253629 (A065883 (n + 1)).toNat

end

end A347385.P8960825359448035264

namespace A347385

/-- `A253629(A065883(n+1))` -/
def P8960825359448035264.Spec : Prop :=
  ∀ n, P8960825359448035264.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P14874451770479087457

`A253629(A259445(n+1))`
-/

namespace A347385.P14874451770479087457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253629 (A259445 (n + 1)).toNat

end

end A347385.P14874451770479087457

namespace A347385

/-- `A253629(A259445(n+1))` -/
def P14874451770479087457.Spec : Prop :=
  ∀ n, P14874451770479087457.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P1364045092160194642

`A001615(or(1, A153733(n)))`
-/

namespace A347385.P1364045092160194642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (Int.lor 1 (A153733 n)).toNat

end

end A347385.P1364045092160194642

namespace A347385

/-- `A001615(or(1, A153733(n)))` -/
def P1364045092160194642.Spec : Prop :=
  ∀ n, P1364045092160194642.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P12563345159546147465

`A001615(2*A025480(n)+1)`
-/

namespace A347385.P12563345159546147465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (2 * A025480 n + 1).toNat

end

end A347385.P12563345159546147465

namespace A347385

/-- `A001615(2*A025480(n)+1)` -/
def P12563345159546147465.Spec : Prop :=
  ∀ n, P12563345159546147465.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P16452090822632922151

`A001615(xor(1, 2*A025480(n)))`
-/

namespace A347385.P16452090822632922151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (Int.xor 1 (2 * A025480 n)).toNat

end

end A347385.P16452090822632922151

namespace A347385

/-- `A001615(xor(1, 2*A025480(n)))` -/
def P16452090822632922151.Spec : Prop :=
  ∀ n, P16452090822632922151.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P11025302932604640518

`A001615((n+1)/A006519(n+1))`
-/

namespace A347385.P11025302932604640518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A347385.P11025302932604640518

namespace A347385

/-- `A001615((n+1)/A006519(n+1))` -/
def P11025302932604640518.Spec : Prop :=
  ∀ n, P11025302932604640518.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P16360079460866068758

`A159634(n+1)/A006519(n+1)`
-/

namespace A347385.P16360079460866068758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159634 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A347385.P16360079460866068758

namespace A347385

/-- `A159634(n+1)/A006519(n+1)` -/
def P16360079460866068758.Spec : Prop :=
  ∀ n, P16360079460866068758.a n = (A347385 (n + 1) : ℚ)

end A347385

/-! ## A347385.P12476035330937757833

`A253629(n+1)/A160467(n+1)`
-/

namespace A347385.P12476035330937757833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253629 (n + 1) : ℚ) / (A160467 (n + 1) : ℚ)

end

end A347385.P12476035330937757833

namespace A347385

/-- `A253629(n+1)/A160467(n+1)` -/
def P12476035330937757833.Spec : Prop :=
  ∀ n, P12476035330937757833.a n = (A347385 (n + 1) : ℚ)

end A347385

/-! ## A347385.P10589426572150112318

`∑{d}[n+1, A193356(#)*A353627((n+1)/#)]`
-/

namespace A347385.P10589426572150112318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347385.P10589426572150112318

namespace A347385

/-- `∑{d}[n+1, A193356(#)*A353627((n+1)/#)]` -/
def P10589426572150112318.Spec : Prop :=
  ∀ n, P10589426572150112318.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P6922962031254358073

`∑{d}[n+1, A264740(#)*A359548((n+1)/#)]`
-/

namespace A347385.P6922962031254358073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347385.P6922962031254358073

namespace A347385

/-- `∑{d}[n+1, A264740(#)*A359548((n+1)/#)]` -/
def P6922962031254358073.Spec : Prop :=
  ∀ n, P6922962031254358073.a n = A347385 (n + 1)

end A347385

/-! ## A347385.P5447193901420436887

`∑{d}[n+1, A309324(#)*A355689((n+1)/#)]`
-/

namespace A347385.P5447193901420436887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309324 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347385.P5447193901420436887

namespace A347385

/-- `∑{d}[n+1, A309324(#)*A355689((n+1)/#)]` -/
def P5447193901420436887.Spec : Prop :=
  ∀ n, P5447193901420436887.a n = A347385 (n + 1)

end A347385

/-!
# A347386: Number of iterations of A347385 (Dedekind psi function applied to the odd part of n) needed to reach a power of 2.

The programs for A347386, there is no canonical definition to state claims against.
-/

/-! ## A347386.P16846224246343635790

`A331410(n+1)-A076142(A128570(n))`
-/

namespace A347386.P16846224246343635790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A076142 (A128570 n).toNat

end

end A347386.P16846224246343635790

/-! ## A347386.P18287306140515347388

`A331410(A016116(n)*A053585(n+1))`
-/

namespace A347386.P18287306140515347388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A016116 n * A053585 (n + 1)).toNat

end

end A347386.P18287306140515347388

/-! ## A347386.P8179873818691538870

`A331410(A016116(n)*A347241(n+1))`
-/

namespace A347386.P8179873818691538870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A016116 n * A347241 (n + 1)).toNat

end

end A347386.P8179873818691538870

/-! ## A347386.P8821601565986504900

`A331410(lcm(A016116(n), A053585(n+1)))`
-/

namespace A347386.P8821601565986504900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (Int.lcm (A016116 n) (A053585 (n + 1)))

end

end A347386.P8821601565986504900

/-! ## A347386.P10768802784843695280

`A331410(A053585(n+1)%A093649(n+1))`
-/

namespace A347386.P10768802784843695280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (Int.tmod (A053585 (n + 1)) (A093649 (n + 1))).toNat

end

end A347386.P10768802784843695280

/-!
# A347389: Dirichlet convolution of A003415(n) and A003415(A276086(n)), where A003415(n) is the arithmetic derivative of n, and A276086(n) gives the prime product form of primorial base expansion of n.

The programs for A347389, there is no canonical definition to state claims against.
-/

/-! ## A347389.P11673076638041139109

`∑{d}[n+1, A003415(#)*A327860((n+1)/#)]`
-/

namespace A347389.P11673076638041139109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A327860 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347389.P11673076638041139109

/-!
# A347391: Numbers k such that sigma(k) is either their sibling in Doudna tree (A005940), or one of the sibling's descendants.

The programs for A347391, there is no canonical definition to state claims against.
-/

/-! ## A347391.P17864203172651100473

`eq[1, A347381(n+1)]+1`
-/

namespace A347391.P17864203172651100473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347391.P17864203172651100473

/-! ## A347391.P7604537367811767769

`eq[1, A347381(A028310(n))]`
-/

namespace A347391.P7604537367811767769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347391.P7604537367811767769

/-! ## A347391.P11650480366030580575

`A020725(eq[1, A347381(n+1)])`
-/

namespace A347391.P11650480366030580575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347391.P11650480366030580575

/-! ## A347391.P14792192326263511147

`A114637(eq[1, A347381(n+1)])`
-/

namespace A347391.P14792192326263511147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347391.P14792192326263511147

/-! ## A347391.P10804197181990668277

`eq[1, A347381(A000007(n)+n)]`
-/

namespace A347391.P10804197181990668277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347391.P10804197181990668277

/-!
# A347392: Numbers k such that nearest common ancestor of k and sigma(k) in Doudna tree (A347879) is the grandparent of k.

The programs for A347392, there is no canonical definition to state claims against.
-/

/-! ## A347392.P3452127725598465762

`eq[2, A347381(n+1)]+1`
-/

namespace A347392.P3452127725598465762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347392.P3452127725598465762

/-! ## A347392.P6026974988495161232

`eq[2, A347381(A028310(n))]`
-/

namespace A347392.P6026974988495161232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347392.P6026974988495161232

/-! ## A347392.P14388404189818691138

`A020725(eq[2, A347381(n+1)])`
-/

namespace A347392.P14388404189818691138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347392.P14388404189818691138

/-! ## A347392.P14098358576196061906

`A065475(eq[2, A347381(n+1)])`
-/

namespace A347392.P14098358576196061906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347392.P14098358576196061906

/-!
# A347393: Positions of 3's in A347381.

The programs for A347393, there is no canonical definition to state claims against.
-/

/-! ## A347393.P8751580954028756428

`eq[3, A347381(n+1)]+1`
-/

namespace A347393.P8751580954028756428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347393.P8751580954028756428

/-! ## A347393.P13767525197807757137

`eq[3, A347381(A028310(n))]`
-/

namespace A347393.P13767525197807757137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347393.P13767525197807757137

/-! ## A347393.P7970009354988731698

`eq[3, A347381(A065033(2*n))]`
-/

namespace A347393.P7970009354988731698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347393.P7970009354988731698

/-! ## A347393.P11952361296387955577

`eq[3, A347381(A123108(2*n))]`
-/

namespace A347393.P11952361296387955577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347393.P11952361296387955577

/-! ## A347393.P347888938878040507

`eq[3, A347381(A000007(n)+n)]`
-/

namespace A347393.P347888938878040507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347393.P347888938878040507

/-!
# A347394: Positions of 4's in A347381.

The programs for A347394, there is no canonical definition to state claims against.
-/

/-! ## A347394.P3205027512528676480

`eq[4, A347381(n+1)]+1`
-/

namespace A347394.P3205027512528676480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347394.P3205027512528676480

/-! ## A347394.P7234112347325523354

`eq[4, A347381(A028310(n))]`
-/

namespace A347394.P7234112347325523354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347394.P7234112347325523354

/-! ## A347394.P16637308065733941290

`A020725(eq[4, A347381(n+1)])`
-/

namespace A347394.P16637308065733941290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347394.P16637308065733941290

/-! ## A347394.P4234985816084280476

`A065475(eq[4, A347381(n+1)])`
-/

namespace A347394.P4234985816084280476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347394.P4234985816084280476

/-! ## A347394.P7607132219292814452

`eq[4, A347381(A233583(n+1))]`
-/

namespace A347394.P7607132219292814452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347394.P7607132219292814452

/-!
# A347395: Dirichlet convolution of Liouville's lambda (A008836) with A342001, where A342001(n) = A003415(n)/A003557(n).

The programs for A347395, the canonical program `A347395.P1852099900828685065` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347395 has offset 1).

The definition of A347395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347395.P1852099900828685065

`∑{d}[n+1, A008836(#)*A342001((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347395

/-- `∑{d}[n+1, A008836(#)*A342001((n+1)/#)]` -/
def P1852099900828685065.Spec : Prop :=
  ∀ n, P1852099900828685065.a n = A347395 (n + 1)

theorem P1852099900828685065.correct : P1852099900828685065.Spec := by
  intro n
  simp only [A347395, Nat.add_sub_cancel]

end A347395

/-! ## A347395.P5418492906924387245

`∑{d}[n+1, A010052(#)*A346485((n+1)/#)]`
-/

namespace A347395.P5418492906924387245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A346485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347395.P5418492906924387245

namespace A347395

/-- `∑{d}[n+1, A010052(#)*A346485((n+1)/#)]` -/
def P5418492906924387245.Spec : Prop :=
  ∀ n, P5418492906924387245.a n = A347395 (n + 1)

end A347395

/-! ## A347395.P12634809555515075786

`∑{d}[n+1, A206369(#)*A349396((n+1)/#)]`
-/

namespace A347395.P12634809555515075786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A349396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347395.P12634809555515075786

namespace A347395

/-- `∑{d}[n+1, A206369(#)*A349396((n+1)/#)]` -/
def P12634809555515075786.Spec : Prop :=
  ∀ n, P12634809555515075786.a n = A347395 (n + 1)

end A347395

/-! ## A347395.P6684979996053651246

`∑{d}[n+1, A349612(#)*A380163((n+1)/#)]`
-/

namespace A347395.P6684979996053651246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349612 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347395.P6684979996053651246

namespace A347395

/-- `∑{d}[n+1, A349612(#)*A380163((n+1)/#)]` -/
def P6684979996053651246.Spec : Prop :=
  ∀ n, P6684979996053651246.a n = A347395 (n + 1)

end A347395

/-! ## A347395.P12517379510258180109

`A366803(A156552(n+1))`
-/

namespace A347395.P12517379510258180109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366803 (A156552 (n + 1)).toNat

end

end A347395.P12517379510258180109

namespace A347395

/-- `A366803(A156552(n+1))` -/
def P12517379510258180109.Spec : Prop :=
  ∀ n, P12517379510258180109.a n = A347395 (n + 1)

end A347395

/-!
# A347396: a(n) = A347395(A276086(n)), where A347395 is Dirichlet convolution of Liouville's lambda with A342001.

The programs for A347396, there is no canonical definition to state claims against.
-/

/-! ## A347396.P2540584939725656193

`A347395(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347396.P2540584939725656193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A276086 n).toNat

end

end A347396.P2540584939725656193

/-! ## A347396.P6444025242099320671

`A366803(A277022(n))`
-/

namespace A347396.P6444025242099320671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366803 (A277022 n).toNat

end

end A347396.P6444025242099320671

/-! ## A347396.P16230355410667685936

`A347395(A351225(n)+n)`
-/

namespace A347396.P16230355410667685936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A351225 n + (n : ℤ)).toNat

end

end A347396.P16230355410667685936

/-! ## A347396.P15295125953922327104

`A369069(A351225(n)+n)`
-/

namespace A347396.P15295125953922327104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369069 (A351225 n + (n : ℤ)).toNat

end

end A347396.P15295125953922327104

/-! ## A347396.P508045685994319322

`A369069(A276086(2*n-n))`
-/

namespace A347396.P508045685994319322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369069 (A276086 (2 * n - n)).toNat

end

end A347396.P508045685994319322

/-! ## A347396.P2590644656029977323

`A347395(A328580(n)+A328476(n))`
-/

namespace A347396.P2590644656029977323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A328580 n + A328476 n).toNat

end

end A347396.P2590644656029977323

/-! ## A347396.P12646561869486045654

`A347395(A328844(n)+A328843(n))`
-/

namespace A347396.P12646561869486045654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A328844 n + A328843 n).toNat

end

end A347396.P12646561869486045654

/-! ## A347396.P1298024535670578698

`A347395(A327860(n)-A342016(n))`
-/

namespace A347396.P1298024535670578698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A327860 n - A342016 n).toNat

end

end A347396.P1298024535670578698

/-! ## A347396.P6323213477572487085

`A347395(A328475(n)*A328580(n))`
-/

namespace A347396.P6323213477572487085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A328475 n * A328580 n).toNat

end

end A347396.P6323213477572487085

/-! ## A347396.P8695084581831802676

`A347395(A328571(n)*A328572(n))`
-/

namespace A347396.P8695084581831802676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347395 (A328571 n * A328572 n).toNat

end

end A347396.P8695084581831802676

/-!
# A347397: a(n) = Sum_{k=1..n} k^k * floor(n/k^k).

The programs for A347397, there is no canonical definition to state claims against.
-/

/-! ## A347397.P15103753624339248522

`∑[A347398(n+1)]`
-/

namespace A347397.P15103753624339248522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347397.P15103753624339248522

/-! ## A347397.P141917789113439831

`A347398(A063524(n)+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A347397.P141917789113439831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347398 (A063524 n + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A347397.P141917789113439831

/-! ## A347397.P7412132183105253983

`a(n-1)+A033999(2*n)*A347398(n+1)` with `a(0)=1`
-/

namespace A347397.P7412132183105253983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A033999 (2 * n) * A347398 (n + 1)

end

end A347397.P7412132183105253983

/-! ## A347397.P6644368571767419720

`comp[or(2, n)-1]+((-1)^∑[n])^A145993(2*(n+2))`
-/

namespace A347397.P6644368571767419720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) + ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) ^ (A145993 (2 * (n + 2)) : ℤ)

end

end A347397.P6644368571767419720

/-! ## A347397.P13902246566996868789

`∑[A057864(A365635(n+1))]`
-/

namespace A347397.P13902246566996868789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057864 (A365635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347397.P13902246566996868789

/-!
# A347398: Expansion of g.f. Sum_{k>=1} k^k * x^(k^k)/(1 - x^(k^k)).

The programs for A347398, there is no canonical definition to state claims against.
-/

/-! ## A347398.P13671074534907971694

`A028310(Δ[A347397(A028310(n))])`
-/

namespace A347398.P13671074534907971694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347397 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A347398.P13671074534907971694

/-! ## A347398.P16676509564941213236

`A365635(n+1)+A127156(A365635(n+1))`
-/

namespace A347398.P16676509564941213236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365635 (n + 1) + A127156 (A365635 (n + 1)).toNat

end

end A347398.P16676509564941213236

/-! ## A347398.P10564477572612613192

`A241915(A002328(A327939(n+1)²))`
-/

namespace A347398.P10564477572612613192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241915 (A002328 (A327939 (n + 1) ^ 2).toNat).toNat

end

end A347398.P10564477572612613192

/-! ## A347398.P7421834559632374309

`A249784(A327936(n+1)+A147988(2*n+3))`
-/

namespace A347398.P7421834559632374309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249784 (A327936 (n + 1) + A147988 (2 * n + 3)).toNat

end

end A347398.P7421834559632374309

/-! ## A347398.P9978480690525974049

`A076844(A058039(n))`
-/

namespace A347398.P9978480690525974049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076844 (A058039 n).toNat

end

end A347398.P9978480690525974049

