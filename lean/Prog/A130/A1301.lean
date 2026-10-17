import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A130100: Perfect powers m^e such that m+e is prime, e>1.

The programs for A130100, there is no canonical definition to state claims against.
-/

/-! ## A130100.P10153451690608518815

`∩[A001597(n+1), A130099(n+1)]`
-/

namespace A130100.P10153451690608518815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130100.P10153451690608518815

/-! ## A130100.P10021326765952409501

`∩[A060462(n+1), A130099(n+1)]`
-/

namespace A130100.P10021326765952409501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130100.P10021326765952409501

/-! ## A130100.P7640472971384744188

`∩[A130099(n+1), A166460(n+1)]`
-/

namespace A130100.P7640472971384744188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130100.P7640472971384744188

/-! ## A130100.P4798055582462470000

`filter[A130099(n+1), A075802(#)]`
-/

namespace A130100.P4798055582462470000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A130100.P4798055582462470000

/-! ## A130100.P14510863784883351593

`∩[A130099(n+1), A359493(n+1)]`
-/

namespace A130100.P14510863784883351593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130100.P14510863784883351593

/-!
# A130101: Primes prime(k) such that 10*prime(k) + prime(k+1) is not prime.

The programs for A130101, there is no canonical definition to state claims against.
-/

/-! ## A130101.P7495582638246496292

`record[A123252(A005097(n+1)-A094076(n+1))]`
-/

namespace A130101.P7495582638246496292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123252 (A005097 (n + 1) - A094076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130101.P7495582638246496292

/-! ## A130101.P11369277832784281176

`p?[comp[∑[A177864(3*n+4)]]]`
-/

namespace A130101.P11369277832784281176
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177864 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A130101.P11369277832784281176

/-! ## A130101.P5779339290850636273

`A065091(lt[A139758(n+1), A047924(n)])`
-/

namespace A130101.P5779339290850636273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130101.P5779339290850636273

/-! ## A130101.P17630970434327121933

`A230775(A051743(n+2))`
-/

namespace A130101.P17630970434327121933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A051743 (n + 2)).toNat

end

end A130101.P17630970434327121933

/-!
# A130102: E.g.f.: (e^x - x)^2.

The programs for A130102, the canonical program `A130102.P12697466543698061106` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130102 has offset 0).

The definition of A130102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130102.P12697466543698061106

`2*(a(n-1)-2+n)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130102

/-- `2*(a(n-1)-2+n)` -/
def P12697466543698061106.Spec : Prop :=
  ∀ n, P12697466543698061106.a n = A130102 n

theorem P12697466543698061106.correct : P12697466543698061106.Spec := by
  intro n
  simp only [A130102]

end A130102

/-! ## A130102.P16140320662131099820

`2*(a(n-1)-(2-n))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A130102.P16140320662131099820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  2 * (a (n - 1) - (2 - (n : ℤ)))

end

end A130102.P16140320662131099820

namespace A130102

/-- `2*(a(n-1)-(2-n))` -/
def P16140320662131099820.Spec : Prop :=
  ∀ n, P16140320662131099820.a n = A130102 n

theorem P16140320662131099820.correct : P16140320662131099820.Spec := by
  intro n
  simp only [A130102, Nat.add_sub_cancel, A130102.P16140320662131099820.a, A130102.P12697466543698061106.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A130102

/-! ## A130102.P2172808514036676287

`abs(2^n-(2*n+n-1))+n-1`
-/

namespace A130102.P2172808514036676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - ((2 * n : ℤ) + ((n : ℤ) - 1))| + ((n : ℤ) - 1)

end

end A130102.P2172808514036676287

namespace A130102

/-- `abs(2^n-(2*n+n-1))+n-1` -/
def P2172808514036676287.Spec : Prop :=
  ∀ n, P2172808514036676287.a n = A130102 n

end A130102

/-! ## A130102.P17207157878626841279

`A005803(char[2]+n)`
-/

namespace A130102.P17207157878626841279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A130102.P17207157878626841279

namespace A130102

/-- `A005803(char[2]+n)` -/
def P17207157878626841279.Spec : Prop :=
  ∀ n, P17207157878626841279.a n = A130102 n

end A130102

/-! ## A130102.P8418763380618925310

`abs(2*n/(char[2]+1)-Δ[A000225(n)])`
-/

namespace A130102.P8418763380618925310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) - (f2 (n + 1) - f2 n : ℚ)|

end

end A130102.P8418763380618925310

namespace A130102

/-- `abs(2*n/(char[2]+1)-Δ[A000225(n)])` -/
def P8418763380618925310.Spec : Prop :=
  ∀ n, P8418763380618925310.a n = (A130102 n : ℚ)

end A130102

/-! ## A130102.P8026571075909677137

`xor(A061761(n), A286521(n))`
-/

namespace A130102.P8026571075909677137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061761 n) (A286521 n)

end

end A130102.P8026571075909677137

namespace A130102

/-- `xor(A061761(n), A286521(n))` -/
def P8026571075909677137.Spec : Prop :=
  ∀ n, P8026571075909677137.a n = A130102 n

end A130102

/-! ## A130102.P14214182567475250096

`round(sqrt(xor(n, (2*n-A155559(n))²+1)))`
-/

namespace A130102.P14214182567475250096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.xor (n : ℤ) (((2 * n : ℤ) - A155559 n) ^ 2 + 1) : ℝ))

end

end A130102.P14214182567475250096

namespace A130102

/-- `round(sqrt(xor(n, (2*n-A155559(n))²+1)))` -/
def P14214182567475250096.Spec : Prop :=
  ∀ n, P14214182567475250096.a n = A130102 n

end A130102

/-!
# A130103: Expansion of e.g.f. e^(2x)-(1+x)*e^x+x.

The programs for A130103, the canonical program `A130103.P14855528586207028289` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130103 has offset 0).

The definition of A130103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130102, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130103.P14855528586207028289

`A130102(n+1)/2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130103

/-- `A130102(n+1)/2` -/
def P14855528586207028289.Spec : Prop :=
  ∀ n, P14855528586207028289.a n = (A130103 n : ℚ)

end A130103

/-! ## A130103.P6827736309461556547

`char[1]+2^n-(n+1)`
-/

namespace A130103.P6827736309461556547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((2 ^ n : ℤ) - (n + 1 : ℤ))

end

end A130103.P6827736309461556547

namespace A130103

/-- `char[1]+2^n-(n+1)` -/
def P6827736309461556547.Spec : Prop :=
  ∀ n, P6827736309461556547.a n = A130103 n

end A130103

/-! ## A130103.P17803420067252667546

`xor(xor(n, 2^n-1), char[1])`
-/

namespace A130103.P17803420067252667546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (n : ℤ) ((2 ^ n : ℤ) - 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130103.P17803420067252667546

namespace A130103

/-- `xor(xor(n, 2^n-1), char[1])` -/
def P17803420067252667546.Spec : Prop :=
  ∀ n, P17803420067252667546.a n = A130103 n

end A130103

/-! ## A130103.P4585360955223235856

`∑[2*a(n-1)+1]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A130103.P4585360955223235856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 3] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130103.P4585360955223235856

namespace A130103

/-- `∑[2*a(n-1)+1]` -/
def P4585360955223235856.Spec : Prop :=
  ∀ n, (P4585360955223235856.a n : ℤ) = A130103 n

end A130103

/-! ## A130103.P1955891483807848909

`abs(1-(2*a(n-1)+n))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A130103.P1955891483807848909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  |1 - (2 * a (n - 1) + (n : ℤ))|

end

end A130103.P1955891483807848909

namespace A130103

/-- `abs(1-(2*a(n-1)+n))` -/
def P1955891483807848909.Spec : Prop :=
  ∀ n, P1955891483807848909.a n = A130103 n

end A130103

/-! ## A130103.P8301628844978510025

`∑[a(n-1)+a(n-1)+1]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A130103.P8301628844978510025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130103.P8301628844978510025

namespace A130103

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P8301628844978510025.Spec : Prop :=
  ∀ n, (P8301628844978510025.a n : ℤ) = A130103 n

end A130103

/-! ## A130103.P1356588792204862084

`floor(a(n-1)-1+a(n-1)+n)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130103.P1356588792204862084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + (n : ℤ))

end

end A130103.P1356588792204862084

namespace A130103

/-- `floor(a(n-1)-1+a(n-1)+n)` -/
def P1356588792204862084.Spec : Prop :=
  ∀ n, P1356588792204862084.a n = A130103 n

end A130103

/-! ## A130103.P6625293578350617527

`floor(n-(1-a(n-1)-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130103.P6625293578350617527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A130103.P6625293578350617527

namespace A130103

/-- `floor(n-(1-a(n-1)-a(n-1)))` -/
def P6625293578350617527.Spec : Prop :=
  ∀ n, P6625293578350617527.a n = A130103 n

end A130103

/-! ## A130103.P11704824044007795156

`A000295(char[1]+n)`
-/

namespace A130103.P11704824044007795156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A130103.P11704824044007795156

namespace A130103

/-- `A000295(char[1]+n)` -/
def P11704824044007795156.Spec : Prop :=
  ∀ n, P11704824044007795156.a n = A130103 n

end A130103

/-! ## A130103.P5351326680337110729

`or(char[1], A000295(n))`
-/

namespace A130103.P5351326680337110729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000295 n)

end

end A130103.P5351326680337110729

namespace A130103

/-- `or(char[1], A000295(n))` -/
def P5351326680337110729.Spec : Prop :=
  ∀ n, P5351326680337110729.a n = A130103 n

end A130103

/-! ## A130103.P2810197388938402241

`xor(∑[1-A122958(n)], char[1])`
-/

namespace A130103.P2810197388938402241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A122958 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130103.P2810197388938402241

namespace A130103

/-- `xor(∑[1-A122958(n)], char[1])` -/
def P2810197388938402241.Spec : Prop :=
  ∀ n, P2810197388938402241.a n = A130103 n

end A130103

/-! ## A130103.P667834016612134377

`abs(char[1]+∑[A131577(n)]-n)`
-/

namespace A130103.P667834016612134377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)|

end

end A130103.P667834016612134377

namespace A130103

/-- `abs(char[1]+∑[A131577(n)]-n)` -/
def P667834016612134377.Spec : Prop :=
  ∀ n, P667834016612134377.a n = A130103 n

end A130103

/-! ## A130103.P8439264790801801664

`xor(abs(2-A000051(n)+n), char[1])`
-/

namespace A130103.P8439264790801801664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |2 - A000051 n + (n : ℤ)| ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A130103.P8439264790801801664

namespace A130103

/-- `xor(abs(2-A000051(n)+n), char[1])` -/
def P8439264790801801664.Spec : Prop :=
  ∀ n, P8439264790801801664.a n = A130103 n

end A130103

/-! ## A130103.P9533802294723054781

`xor(A000295(n), A063524(n))`
-/

namespace A130103.P9533802294723054781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000295 n) (A063524 n)

end

end A130103.P9533802294723054781

namespace A130103

/-- `xor(A000295(n), A063524(n))` -/
def P9533802294723054781.Spec : Prop :=
  ∀ n, P9533802294723054781.a n = A130103 n

end A130103

/-! ## A130103.P13635406111911652783

`xor(A000225(n), A199969(n+1))`
-/

namespace A130103.P13635406111911652783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A199969 (n + 1))

end

end A130103.P13635406111911652783

namespace A130103

/-- `xor(A000225(n), A199969(n+1))` -/
def P13635406111911652783.Spec : Prop :=
  ∀ n, P13635406111911652783.a n = A130103 n

end A130103

/-! ## A130103.P4565484161307038487

`xor(n, A000225(n*A157928(n)))`
-/

namespace A130103.P4565484161307038487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000225 ((n : ℤ) * A157928 n).toNat)

end

end A130103.P4565484161307038487

namespace A130103

/-- `xor(n, A000225(n*A157928(n)))` -/
def P4565484161307038487.Spec : Prop :=
  ∀ n, P4565484161307038487.a n = A130103 n

end A130103

/-! ## A130103.P2504998349640749898

`xor(∑[2^n]%(2^n+n), char[1])`
-/

namespace A130103.P2504998349640749898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((∑ j ∈ Finset.range (n + 1), f1 j) % (2 ^ n + n)) (if ∃ j, f2 j = n then 1 else 0)

end

end A130103.P2504998349640749898

namespace A130103

/-- `xor(∑[2^n]%(2^n+n), char[1])` -/
def P2504998349640749898.Spec : Prop :=
  ∀ n, (P2504998349640749898.a n : ℤ) = A130103 n

end A130103

/-! ## A130103.P5935733132994299584

`A258935(n+1)%A005126(n)`
-/

namespace A130103.P5935733132994299584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258935 (n + 1)) (A005126 n)

end

end A130103.P5935733132994299584

namespace A130103

/-- `A258935(n+1)%A005126(n)` -/
def P5935733132994299584.Spec : Prop :=
  ∀ n, P5935733132994299584.a n = A130103 n

end A130103

/-! ## A130103.P6627295535425251131

`A188589(n)%A369491(n)`
-/

namespace A130103.P6627295535425251131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188589 n) (A369491 n)

end

end A130103.P6627295535425251131

namespace A130103

/-- `A188589(n)%A369491(n)` -/
def P6627295535425251131.Spec : Prop :=
  ∀ n, P6627295535425251131.a n = A130103 n

end A130103

/-!
# A130104: Expansion of x(1-3x+5x^2-2x^3)/((1-x)^3*(1-2x)).

The programs for A130104, the canonical program `A130104.P1989113367333884729` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130104 has offset 0).

The definition of A130104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130104.P10248219629835831682

`∑[char[1]+2^n-(n+1)]`
-/

namespace A130104.P10248219629835831682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ((2 ^ n : ℤ) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130104.P10248219629835831682

namespace A130104

/-- `∑[char[1]+2^n-(n+1)]` -/
def P10248219629835831682.Spec : Prop :=
  ∀ n, P10248219629835831682.a n = A130104 n

end A130104

/-! ## A130104.P1989113367333884729

`∑[n-1]+2*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130104

/-- `∑[n-1]+2*a(n-1)` -/
def P1989113367333884729.Spec : Prop :=
  ∀ n, P1989113367333884729.a n = A130104 n

theorem P1989113367333884729.correct : P1989113367333884729.Spec := by
  intro n
  simp only [A130104]

end A130104

/-! ## A130104.P3100345756405667248

`2*a(n-1)-∑[1-n]` with `a(0)=0, a(1)=1`
-/

namespace A130104.P3100345756405667248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130104.P3100345756405667248

namespace A130104

/-- `2*a(n-1)-∑[1-n]` -/
def P3100345756405667248.Spec : Prop :=
  ∀ n, P3100345756405667248.a n = A130104 n

end A130104

/-! ## A130104.P1690538204840440788

`record[or(2, 2^n)]-(n+3)-∑[n]`
-/

namespace A130104.P1690538204840440788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (2 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n + 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A130104.P1690538204840440788

namespace A130104

/-- `record[or(2, 2^n)]-(n+3)-∑[n]` -/
def P1690538204840440788.Spec : Prop :=
  ∀ n, P1690538204840440788.a n = A130104 n

end A130104

/-! ## A130104.P13299130985701711797

`2^n+a(n-1)-(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A130104.P13299130985701711797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - (n + 1 : ℤ))

end

end A130104.P13299130985701711797

namespace A130104

/-- `2^n+a(n-1)-(n+1)` -/
def P13299130985701711797.Spec : Prop :=
  ∀ n, P13299130985701711797.a n = A130104 n

end A130104

/-! ## A130104.P3318141811671475871

`∑[lcm(2, a(n-1))+1]-∑[n]` with `a(0)=0, a(1)=2`
-/

namespace A130104.P3318141811671475871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A130104.P3318141811671475871

namespace A130104

/-- `∑[lcm(2, a(n-1))+1]-∑[n]` -/
def P3318141811671475871.Spec : Prop :=
  ∀ n, P3318141811671475871.a n = A130104 n

end A130104

/-! ## A130104.P2054136747478449536

`ceil(atan(n+1))^(n+1)-∑[n+1]`
-/

namespace A130104.P2054136747478449536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P2054136747478449536

namespace A130104

/-- `ceil(atan(n+1))^(n+1)-∑[n+1]` -/
def P2054136747478449536.Spec : Prop :=
  ∀ n, P2054136747478449536.a n = A130104 n

end A130104

/-! ## A130104.P16347240377703316022

`2^((n+1)%(n+1)²)-∑[n+1]`
-/

namespace A130104.P16347240377703316022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((n + 1) % (n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P16347240377703316022

namespace A130104

/-- `2^((n+1)%(n+1)²)-∑[n+1]` -/
def P16347240377703316022.Spec : Prop :=
  ∀ n, P16347240377703316022.a n = A130104 n

end A130104

/-! ## A130104.P2561161628947215357

`a(n-1)+∑[n-1]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A130104.P2561161628947215357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A130104.P2561161628947215357

namespace A130104

/-- `a(n-1)+∑[n-1]+a(n-1)` -/
def P2561161628947215357.Spec : Prop :=
  ∀ n, P2561161628947215357.a n = A130104 n

end A130104

/-! ## A130104.P12082273341359338635

`2*∑[A130103(n)/2]`
-/

namespace A130104.P12082273341359338635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130103 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130104.P12082273341359338635

namespace A130104

/-- `2*∑[A130103(n)/2]` -/
def P12082273341359338635.Spec : Prop :=
  ∀ n, P12082273341359338635.a n = (A130104 n : ℚ)

end A130104

/-! ## A130104.P14837851293518753350

`A076878(n+1)-∑[n]`
-/

namespace A130104.P14837851293518753350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076878 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P14837851293518753350

namespace A130104

/-- `A076878(n+1)-∑[n]` -/
def P14837851293518753350.Spec : Prop :=
  ∀ n, P14837851293518753350.a n = A130104 n

end A130104

/-! ## A130104.P16441208376798664623

`∑[A296965(n)-n]+n`
-/

namespace A130104.P16441208376798664623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A130104.P16441208376798664623

namespace A130104

/-- `∑[A296965(n)-n]+n` -/
def P16441208376798664623.Spec : Prop :=
  ∀ n, P16441208376798664623.a n = A130104 n

end A130104

/-! ## A130104.P1408991038215872674

`A080522(n+1)-(n+1)`
-/

namespace A130104.P1408991038215872674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080522 (n + 1) - (n + 1 : ℤ)

end

end A130104.P1408991038215872674

namespace A130104

/-- `A080522(n+1)-(n+1)` -/
def P1408991038215872674.Spec : Prop :=
  ∀ n, P1408991038215872674.a n = A130104 n

end A130104

/-! ## A130104.P3207588793412892424

`A132732(n)-(C(n, 2)+1)`
-/

namespace A130104.P3207588793412892424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132732 n - (Nat.choose n 2 + 1 : ℤ)

end

end A130104.P3207588793412892424

namespace A130104

/-- `A132732(n)-(C(n, 2)+1)` -/
def P3207588793412892424.Spec : Prop :=
  ∀ n, P3207588793412892424.a n = A130104 n

end A130104

/-! ## A130104.P7837606028541512776

`A000295(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A130104.P7837606028541512776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000295 n + a (n - 1)

end

end A130104.P7837606028541512776

namespace A130104

/-- `A000295(n)+a(n-1)` -/
def P7837606028541512776.Spec : Prop :=
  ∀ n, P7837606028541512776.a n = A130104 n

end A130104

/-! ## A130104.P17838063049555736910

`A151821(n+1)-∑[n+1]`
-/

namespace A130104.P17838063049555736910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P17838063049555736910

namespace A130104

/-- `A151821(n+1)-∑[n+1]` -/
def P17838063049555736910.Spec : Prop :=
  ∀ n, P17838063049555736910.a n = A130104 n

end A130104

/-! ## A130104.P10885006579780333204

`A029746(2*n)-∑[n+1]`
-/

namespace A130104.P10885006579780333204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P10885006579780333204

namespace A130104

/-- `A029746(2*n)-∑[n+1]` -/
def P10885006579780333204.Spec : Prop :=
  ∀ n, P10885006579780333204.a n = A130104 n

end A130104

/-! ## A130104.P4939229203695557762

`A063759(2*n)-∑[n+1]`
-/

namespace A130104.P4939229203695557762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P4939229203695557762

namespace A130104

/-- `A063759(2*n)-∑[n+1]` -/
def P4939229203695557762.Spec : Prop :=
  ∀ n, P4939229203695557762.a n = A130104 n

end A130104

/-! ## A130104.P657878258245303879

`∑[2^n-n]-A028310(n)`
-/

namespace A130104.P657878258245303879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A130104.P657878258245303879

namespace A130104

/-- `∑[2^n-n]-A028310(n)` -/
def P657878258245303879.Spec : Prop :=
  ∀ n, P657878258245303879.a n = A130104 n

end A130104

/-! ## A130104.P9331396850860294349

`A094958(2*n+1)-∑[n+1]`
-/

namespace A130104.P9331396850860294349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (2 * n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130104.P9331396850860294349

namespace A130104

/-- `A094958(2*n+1)-∑[n+1]` -/
def P9331396850860294349.Spec : Prop :=
  ∀ n, P9331396850860294349.a n = A130104 n

end A130104

/-!
# A130105: a(n) = (2n)! * B_n, where B_n = n-th Bernoulli number.

The programs for A130105, there is no canonical definition to state claims against.
-/

/-! ## A130105.P13180631189919652599

`A134833(n)*A152768(A148774(n))`
-/

namespace A130105.P13180631189919652599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134833 n * A152768 (A148774 n).toNat

end

end A130105.P13180631189919652599

/-!
# A130106: A051731 * diagonalized matrix of A063659.

The programs for A130106, the canonical program `A130106.P5653707462542104831` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130106 has offset 1).

The definition of A130106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130106.P4332765922438442317

`∑{d}[A127093(n+1), A130107(#)]`
-/

namespace A130106.P4332765922438442317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A130107 d

end

end A130106.P4332765922438442317

namespace A130106

/-- `∑{d}[A127093(n+1), A130107(#)]` -/
def P4332765922438442317.Spec : Prop :=
  ∀ n, P4332765922438442317.a n = A130106 (n + 1)

end A130106

/-! ## A130106.P5653707462542104831

`A051731(n+1)*A063659(A002260(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130106

/-- `A051731(n+1)*A063659(A002260(n+1))` -/
def P5653707462542104831.Spec : Prop :=
  ∀ n, P5653707462542104831.a n = A130106 (n + 1)

theorem P5653707462542104831.correct : P5653707462542104831.Spec := by
  intro n
  simp only [A130106, Nat.add_sub_cancel]

end A130106

/-! ## A130106.P15248630742497547626

`A051731(n+1)*A063659(A050873(n+1))`
-/

namespace A130106.P15248630742497547626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A050873 (n + 1)).toNat

end

end A130106.P15248630742497547626

namespace A130106

/-- `A051731(n+1)*A063659(A050873(n+1))` -/
def P15248630742497547626.Spec : Prop :=
  ∀ n, P15248630742497547626.a n = A130106 (n + 1)

end A130106

/-! ## A130106.P2231730208392112357

`A051731(n+1)*A063659(A123275(n+1))`
-/

namespace A130106.P2231730208392112357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A123275 (n + 1)).toNat

end

end A130106.P2231730208392112357

namespace A130106

/-- `A051731(n+1)*A063659(A123275(n+1))` -/
def P2231730208392112357.Spec : Prop :=
  ∀ n, P2231730208392112357.a n = A130106 (n + 1)

end A130106

/-! ## A130106.P8426210392545099234

`A051731(n+1)*A063659(A307662(n+1))`
-/

namespace A130106.P8426210392545099234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A307662 (n + 1)).toNat

end

end A130106.P8426210392545099234

namespace A130106

/-- `A051731(n+1)*A063659(A307662(n+1))` -/
def P8426210392545099234.Spec : Prop :=
  ∀ n, P8426210392545099234.a n = A130106 (n + 1)

end A130106

/-! ## A130106.P15670879614776155120

`A051731(n+1)*A063659(A112544(n+1))`
-/

namespace A130106.P15670879614776155120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A063659 (A112544 (n + 1)).toNat

end

end A130106.P15670879614776155120

namespace A130106

/-- `A051731(n+1)*A063659(A112544(n+1))` -/
def P15670879614776155120.Spec : Prop :=
  ∀ n, P15670879614776155120.a n = A130106 (n + 1)

end A130106

/-!
# A130107: Möbius transform of A063659.

The programs for A130107, the canonical program `A130107.P1988406999421660602` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130107 has offset 1).

The definition of A130107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130107.P13814175775054144449

`∑{d}[n+1, #*A307445((n+1)/#)]`
-/

namespace A130107.P13814175775054144449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P13814175775054144449

namespace A130107

/-- `∑{d}[n+1, #*A307445((n+1)/#)]` -/
def P13814175775054144449.Spec : Prop :=
  ∀ n, P13814175775054144449.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P1632316519779515587

`∑{d}[n+1, A001615(#)*A007427((n+1)/#)]`
-/

namespace A130107.P1632316519779515587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P1632316519779515587

namespace A130107

/-- `∑{d}[n+1, A001615(#)*A007427((n+1)/#)]` -/
def P1632316519779515587.Spec : Prop :=
  ∀ n, P1632316519779515587.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P16223997083271008653

`∑{d}[n+1, A007431(#)*A008966((n+1)/#)]`
-/

namespace A130107.P16223997083271008653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P16223997083271008653

namespace A130107

/-- `∑{d}[n+1, A007431(#)*A008966((n+1)/#)]` -/
def P16223997083271008653.Spec : Prop :=
  ∀ n, P16223997083271008653.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P9572911427615682127

`∑{d}[n+1, A007432(#)*A034444((n+1)/#)]`
-/

namespace A130107.P9572911427615682127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P9572911427615682127

namespace A130107

/-- `∑{d}[n+1, A007432(#)*A034444((n+1)/#)]` -/
def P9572911427615682127.Spec : Prop :=
  ∀ n, P9572911427615682127.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P1988406999421660602

`∑{d}[n+1, A007428(#)*A060648((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130107

/-- `∑{d}[n+1, A007428(#)*A060648((n+1)/#)]` -/
def P1988406999421660602.Spec : Prop :=
  ∀ n, P1988406999421660602.a n = A130107 (n + 1)

theorem P1988406999421660602.correct : P1988406999421660602.Spec := by
  intro n
  simp only [A130107, Nat.add_sub_cancel]

end A130107

/-! ## A130107.P17476072340266577974

`∑{d}[n+1, A008683(#)*A063659((n+1)/#)]`
-/

namespace A130107.P17476072340266577974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P17476072340266577974

namespace A130107

/-- `∑{d}[n+1, A008683(#)*A063659((n+1)/#)]` -/
def P17476072340266577974.Spec : Prop :=
  ∀ n, P17476072340266577974.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P4965709023616471461

`∑{d}[n+1, A000010(#)*A271102((n+1)/#)]`
-/

namespace A130107.P4965709023616471461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P4965709023616471461

namespace A130107

/-- `∑{d}[n+1, A000010(#)*A271102((n+1)/#)]` -/
def P4965709023616471461.Spec : Prop :=
  ∀ n, P4965709023616471461.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P10059929958805484404

`∑{d}[n+1, A060724(#)*A247343((n+1)/#)]`
-/

namespace A130107.P10059929958805484404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P10059929958805484404

namespace A130107

/-- `∑{d}[n+1, A060724(#)*A247343((n+1)/#)]` -/
def P10059929958805484404.Spec : Prop :=
  ∀ n, P10059929958805484404.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P13099622807102242575

`∑{d}[n+1, A029935(#)*A328729((n+1)/#)]`
-/

namespace A130107.P13099622807102242575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P13099622807102242575

namespace A130107

/-- `∑{d}[n+1, A029935(#)*A328729((n+1)/#)]` -/
def P13099622807102242575.Spec : Prop :=
  ∀ n, P13099622807102242575.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P15380059113883922844

`∑{d}[n+1, A046692(#)*A322577((n+1)/#)]`
-/

namespace A130107.P15380059113883922844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P15380059113883922844

namespace A130107

/-- `∑{d}[n+1, A046692(#)*A322577((n+1)/#)]` -/
def P15380059113883922844.Spec : Prop :=
  ∀ n, P15380059113883922844.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P5799847369527234325

`∑{d}[n+1, A038040(#)*A347090((n+1)/#)]`
-/

namespace A130107.P5799847369527234325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P5799847369527234325

namespace A130107

/-- `∑{d}[n+1, A038040(#)*A347090((n+1)/#)]` -/
def P5799847369527234325.Spec : Prop :=
  ∀ n, P5799847369527234325.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P8859702083185687475

`∑{d}[n+1, A062369(#)*A341831((n+1)/#)]`
-/

namespace A130107.P8859702083185687475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062369 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P8859702083185687475

namespace A130107

/-- `∑{d}[n+1, A062369(#)*A341831((n+1)/#)]` -/
def P8859702083185687475.Spec : Prop :=
  ∀ n, P8859702083185687475.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P5021321522374595549

`∑{d}[n+1, A126246(#)*A359548((n+1)/#)]`
-/

namespace A130107.P5021321522374595549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P5021321522374595549

namespace A130107

/-- `∑{d}[n+1, A126246(#)*A359548((n+1)/#)]` -/
def P5021321522374595549.Spec : Prop :=
  ∀ n, P5021321522374595549.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P5845377376210301493

`∑{d}[n+1, A254926(#)*A307427((n+1)/#)]`
-/

namespace A130107.P5845377376210301493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254926 d * A307427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P5845377376210301493

namespace A130107

/-- `∑{d}[n+1, A254926(#)*A307427((n+1)/#)]` -/
def P5845377376210301493.Spec : Prop :=
  ∀ n, P5845377376210301493.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P14941688221346731671

`∑{d}[n+1, A291784(#)*A369453((n+1)/#)]`
-/

namespace A130107.P14941688221346731671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A291784 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P14941688221346731671

namespace A130107

/-- `∑{d}[n+1, A291784(#)*A369453((n+1)/#)]` -/
def P14941688221346731671.Spec : Prop :=
  ∀ n, P14941688221346731671.a n = A130107 (n + 1)

end A130107

/-! ## A130107.P84793249040483339

`∑{d}[n+1, A355837(#)*A385134((n+1)/#)]`
-/

namespace A130107.P84793249040483339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A385134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130107.P84793249040483339

namespace A130107

/-- `∑{d}[n+1, A355837(#)*A385134((n+1)/#)]` -/
def P84793249040483339.Spec : Prop :=
  ∀ n, P84793249040483339.a n = A130107 (n + 1)

end A130107

/-!
# A130112: Primes prime(n) such that 10*prime(n)+prime(n+2) is not prime.

The programs for A130112, there is no canonical definition to state claims against.
-/

/-! ## A130112.P7158980673132686576

`p?[A132042(A028310(n))*A248195(n)]`
-/

namespace A130112.P7158980673132686576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132042 (A028310 n).toNat * A248195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130112.P7158980673132686576

/-! ## A130112.P16697019284961948121

`p?[A213711(A000124(n))+A133137(n+1)]`
-/

namespace A130112.P16697019284961948121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A000124 n).toNat + A133137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130112.P16697019284961948121

/-! ## A130112.P6039381862428102674

`A333242(n+4)%A333244(A333261(n+1))`
-/

namespace A130112.P6039381862428102674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333242 (n + 4)) (A333244 (A333261 (n + 1)).toNat)

end

end A130112.P6039381862428102674

/-! ## A130112.P13889639583772341940

`A020632(n+5)%A000040(A020627(2*n+1))`
-/

namespace A130112.P13889639583772341940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020632 (n + 5)) (A000040 (A020627 (2 * n + 1)).toNat)

end

end A130112.P13889639583772341940

/-! ## A130112.P2552446925295495845

`filter[A133137(2*(n+1)), A373338(#)]`
-/

namespace A130112.P2552446925295495845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373338 (f1 j).toNat = 1) n)

end

end A130112.P2552446925295495845

/-!
# A130113: Moebius transform of A037019.

The programs for A130113, there is no canonical definition to state claims against.
-/

/-! ## A130113.P6758153245099936171

`A130115(∑[n+1])`
-/

namespace A130113.P6758153245099936171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130115 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130113.P6758153245099936171

/-! ## A130113.P1241427227918989521

`A130115(A000217(n+1))%A350678(n+4)`
-/

namespace A130113.P1241427227918989521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130115 (A000217 (n + 1)).toNat) (A350678 (n + 4))

end

end A130113.P1241427227918989521

/-! ## A130113.P14901975753831163175

`A130115(A000217(n+1))+A000007(2*n+1)`
-/

namespace A130113.P14901975753831163175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130115 (A000217 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A130113.P14901975753831163175

/-! ## A130113.P6441202813556185364

`A130115(A000217(n+1))+A010054(3*n+2)`
-/

namespace A130113.P6441202813556185364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130115 (A000217 (n + 1)).toNat + A010054 (3 * n + 2)

end

end A130113.P6441202813556185364

/-! ## A130113.P7681027403958119339

`A130115(A000217(n+1))+A111406(A301913(n+1))`
-/

namespace A130113.P7681027403958119339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130115 (A000217 (n + 1)).toNat + A111406 (A301913 (n + 1)).toNat

end

end A130113.P7681027403958119339

/-!
# A130114: Inverse Moebius transform of A037019.

The programs for A130114, there is no canonical definition to state claims against.
-/

/-! ## A130114.P12977283751534081656

`∑{d}[n+1, A037019(#)]`
-/

namespace A130114.P12977283751534081656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037019 d

end

end A130114.P12977283751534081656

/-! ## A130114.P6503177245479422454

`∑{d}[A290641(n+1), A181821(#)]`
-/

namespace A130114.P6503177245479422454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A181821 d

end

end A130114.P6503177245479422454

/-! ## A130114.P7155000611693915180

`∑{d}[A187829(n+1), A131886(A096276(#))]`
-/

namespace A130114.P7155000611693915180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A131886 (A096276 d).toNat

end

end A130114.P7155000611693915180

/-! ## A130114.P16230284861070512258

`∑{d}[n+1, A093819(A276044(#))]`
-/

namespace A130114.P16230284861070512258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093819 (A276044 d).toNat

end

end A130114.P16230284861070512258

/-!
# A130115: Inverse Moebius transform of A130113 as a diagonalized matrix.

The programs for A130115, there is no canonical definition to state claims against.
-/

/-! ## A130115.P11197064808210459584

`A051731(n+1)*A130113(A002260(n+1))`
-/

namespace A130115.P11197064808210459584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130113 (A002260 (n + 1)).toNat

end

end A130115.P11197064808210459584

/-! ## A130115.P15041090342478995304

`A051731(n+1)*A130113(A050873(n+1))`
-/

namespace A130115.P15041090342478995304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130113 (A050873 (n + 1)).toNat

end

end A130115.P15041090342478995304

/-! ## A130115.P2338814470887021611

`C(2, A173541(n+1)²)*A130113(A002260(n+1))`
-/

namespace A130115.P2338814470887021611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A173541 (n + 1) ^ 2).toNat : ℤ) * A130113 (A002260 (n + 1)).toNat

end

end A130115.P2338814470887021611

/-! ## A130115.P7563790071669067916

`C(2, A173541(n+1)²)*A130113(A050873(n+1))`
-/

namespace A130115.P7563790071669067916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A173541 (n + 1) ^ 2).toNat : ℤ) * A130113 (A050873 (n + 1)).toNat

end

end A130115.P7563790071669067916

/-! ## A130115.P9306594472892468976

`floor(1/A107435(n+1))*A130113(A002260(n+1))`
-/

namespace A130115.P9306594472892468976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A107435 (n + 1) : ℚ)⌋ * A130113 (A002260 (n + 1)).toNat

end

end A130115.P9306594472892468976

/-! ## A130115.P7892892944017389268

`floor(1/A107435(n+1))*A130113(A050873(n+1))`
-/

namespace A130115.P7892892944017389268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A107435 (n + 1) : ℚ)⌋ * A130113 (A050873 (n + 1)).toNat

end

end A130115.P7892892944017389268

/-! ## A130115.P6220041840066462480

`C(2, A048158(n+1)+2)*A130113(A002260(n+1))`
-/

namespace A130115.P6220041840066462480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A048158 (n + 1) + 2).toNat : ℤ) * A130113 (A002260 (n + 1)).toNat

end

end A130115.P6220041840066462480

/-! ## A130115.P301974704006726887

`C(2, A048158(n+1)+2)*A130113(A050873(n+1))`
-/

namespace A130115.P301974704006726887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A048158 (n + 1) + 2).toNat : ℤ) * A130113 (A050873 (n + 1)).toNat

end

end A130115.P301974704006726887

/-! ## A130115.P15795730568297045950

`ceil(A286239(n+1)/(n+1))*A130113(A002260(n+1))`
-/

namespace A130115.P15795730568297045950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286239 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ * A130113 (A002260 (n + 1)).toNat

end

end A130115.P15795730568297045950

/-! ## A130115.P10068876951134518859

`A051731(n+1)*A130113(A134840(n+1))`
-/

namespace A130115.P10068876951134518859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130113 (A134840 (n + 1)).toNat

end

end A130115.P10068876951134518859

/-!
# A130116: Inverse Moebius transform of a diagonalized matrix of A007436.

The programs for A130116, the canonical program `A130116.P11405849371930154849` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130116 has offset 1).

The definition of A130116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130116.P11405849371930154849

`A007436(A002260(n+1))*A051731(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130116

/-- `A007436(A002260(n+1))*A051731(n+1)` -/
def P11405849371930154849.Spec : Prop :=
  ∀ n, P11405849371930154849.a n = A130116 (n + 1)

theorem P11405849371930154849.correct : P11405849371930154849.Spec := by
  intro n
  simp only [A130116, Nat.add_sub_cancel]

end A130116

/-! ## A130116.P7764437204944875639

`A007436(A002262(n)+1)*A051731(n+1)`
-/

namespace A130116.P7764437204944875639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A130116.P7764437204944875639

namespace A130116

/-- `A007436(A002262(n)+1)*A051731(n+1)` -/
def P7764437204944875639.Spec : Prop :=
  ∀ n, P7764437204944875639.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P6670841592636903222

`A007436(A050873(n+1))*A051731(n+1)`
-/

namespace A130116.P6670841592636903222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A130116.P6670841592636903222

namespace A130116

/-- `A007436(A050873(n+1))*A051731(n+1)` -/
def P6670841592636903222.Spec : Prop :=
  ∀ n, P6670841592636903222.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P5580542649340112329

`A007436(A123275(n+1))*A051731(n+1)`
-/

namespace A130116.P5580542649340112329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A130116.P5580542649340112329

namespace A130116

/-- `A007436(A123275(n+1))*A051731(n+1)` -/
def P5580542649340112329.Spec : Prop :=
  ∀ n, P5580542649340112329.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P7614976242206510252

`A007436(val(A018900(n+1), 2)+1)*A051731(n+1)`
-/

namespace A130116.P7614976242206510252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (SequenceMachineLib.valuation (A018900 (n + 1)).toNat 2 + 1) * A051731 (n + 1)

end

end A130116.P7614976242206510252

namespace A130116

/-- `A007436(val(A018900(n+1), 2)+1)*A051731(n+1)` -/
def P7614976242206510252.Spec : Prop :=
  ∀ n, P7614976242206510252.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P17781766916243213888

`A000007(A048158(n+1))*A007436(A002260(n+1))`
-/

namespace A130116.P17781766916243213888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A048158 (n + 1)).toNat * A007436 (A002260 (n + 1)).toNat

end

end A130116.P17781766916243213888

namespace A130116

/-- `A000007(A048158(n+1))*A007436(A002260(n+1))` -/
def P17781766916243213888.Spec : Prop :=
  ∀ n, P17781766916243213888.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P1242471125552073870

`A007436(A112544(n+1))*A051731(n+1)`
-/

namespace A130116.P1242471125552073870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007436 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A130116.P1242471125552073870

namespace A130116

/-- `A007436(A112544(n+1))*A051731(n+1)` -/
def P1242471125552073870.Spec : Prop :=
  ∀ n, P1242471125552073870.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P15022744029286099122

`A000120(A143425(n+1))*A007436(A002260(n+1))`
-/

namespace A130116.P15022744029286099122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A143425 (n + 1)).toNat * A007436 (A002260 (n + 1)).toNat

end

end A130116.P15022744029286099122

namespace A130116

/-- `A000120(A143425(n+1))*A007436(A002260(n+1))` -/
def P15022744029286099122.Spec : Prop :=
  ∀ n, P15022744029286099122.a n = A130116 (n + 1)

end A130116

/-! ## A130116.P4497380181674206022

`A000120(A143425(n+1))*A007436(A050873(n+1))`
-/

namespace A130116.P4497380181674206022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A143425 (n + 1)).toNat * A007436 (A050873 (n + 1)).toNat

end

end A130116.P4497380181674206022

namespace A130116

/-- `A000120(A143425(n+1))*A007436(A050873(n+1))` -/
def P4497380181674206022.Spec : Prop :=
  ∀ n, P4497380181674206022.a n = A130116 (n + 1)

end A130116

/-!
# A130117: Numerators of the central moments of the distribution of areas for triangles picked at random in a triangle of unit area.

The programs for A130117, there is no canonical definition to state claims against.
-/

/-! ## A130117.P8919157300890218809

`A004086(A362760(n)^A207383(3*n+1))`
-/

namespace A130117.P8919157300890218809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A362760 n : ℚ) ^ (A207383 (3 * n + 1) : ℤ))).toNat

end

end A130117.P8919157300890218809

/-!
# A130119: a(n) = gcd(n^2 - 19, 45).

The programs for A130119, the canonical program `A130119.P7449372504791322625` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130119 has offset 1).

The definition of A130119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130119.P7449372504791322625

`gcd(45, 19-(n+1)²)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130119

/-- `gcd(45, 19-(n+1)²)` -/
def P7449372504791322625.Spec : Prop :=
  ∀ n, (P7449372504791322625.a n : ℤ) = A130119 (n + 1)

theorem P7449372504791322625.correct : P7449372504791322625.Spec := by
  intro n
  simp only [A130119, Nat.add_sub_cancel]

end A130119

/-!
# A130122: Primes prime(n) such that 10*prime(n)+prime(n+2) is prime.

The programs for A130122, there is no canonical definition to state claims against.
-/

/-! ## A130122.P6195610541743253673

`p?[∑[A188903(A315801(n))]]`
-/

namespace A130122.P6195610541743253673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188903 (A315801 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130122.P6195610541743253673

/-! ## A130122.P16145016813150911077

`p?[A326980(A116069(n+1))]`
-/

namespace A130122.P16145016813150911077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326980 (A116069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130122.P16145016813150911077

/-! ## A130122.P14121829331876736830

`p?[A000196(A264443(n))-2]`
-/

namespace A130122.P14121829331876736830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A264443 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130122.P14121829331876736830

/-! ## A130122.P152463636879159791

`p?[A196546(record[A091602(n+1)])]`
-/

namespace A130122.P152463636879159791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196546 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130122.P152463636879159791

/-! ## A130122.P12109061600178217886

`A006530(A108814(n+1)*A108816(n+1))`
-/

namespace A130122.P12109061600178217886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A108814 (n + 1) * A108816 (n + 1)).toNat

end

end A130122.P12109061600178217886

/-!
# A130123: Infinite lower triangular matrix with 2^k in the right diagonal and the rest zeros. Triangle, T(n,k), n zeros followed by the term 2^k. Triangle by columns, (2^k, 0, 0, 0, ...).

The programs for A130123, the canonical program `A130123.P13186316548061333637` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130123 has offset 0).

The definition of A130123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130123.P5669605226071430054

`Δ[2^(round(sqrt(2*n+1))-1)]`
-/

namespace A130123.P5669605226071430054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A130123.P5669605226071430054

namespace A130123

/-- `Δ[2^(round(sqrt(2*n+1))-1)]` -/
def P5669605226071430054.Spec : Prop :=
  ∀ n, P5669605226071430054.a n = (A130123 n : ℚ)

end A130123

/-! ## A130123.P17219642867562939536

`abs(Δ[2^A003056(n)])`
-/

namespace A130123.P17219642867562939536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A130123.P17219642867562939536

namespace A130123

/-- `abs(Δ[2^A003056(n)])` -/
def P17219642867562939536.Spec : Prop :=
  ∀ n, P17219642867562939536.a n = (A130123 n : ℚ)

end A130123

/-! ## A130123.P13186316548061333637

`ceil(A131436(n+1)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A130123

/-- `ceil(A131436(n+1)/2)` -/
def P13186316548061333637.Spec : Prop :=
  ∀ n, P13186316548061333637.a n = A130123 n

theorem P13186316548061333637.correct : P13186316548061333637.Spec := by
  intro n
  simp only [A130123]

end A130123

/-! ## A130123.P16454414754233073867

`A131577(A127648(n))`
-/

namespace A130123.P16454414754233073867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A127648 n).toNat

end

end A130123.P16454414754233073867

namespace A130123

/-- `A131577(A127648(n))` -/
def P16454414754233073867.Spec : Prop :=
  ∀ n, P16454414754233073867.a n = A130123 n

end A130123

/-! ## A130123.P7587453709893437579

`A008949(n)*A023531(n)`
-/

namespace A130123.P7587453709893437579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n * A023531 n

end

end A130123.P7587453709893437579

namespace A130123

/-- `A008949(n)*A023531(n)` -/
def P7587453709893437579.Spec : Prop :=
  ∀ n, P7587453709893437579.a n = A130123 n

end A130123

/-! ## A130123.P798527835766488348

`A013609(n)*A023531(n)`
-/

namespace A130123.P798527835766488348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A023531 n

end

end A130123.P798527835766488348

namespace A130123

/-- `A013609(n)*A023531(n)` -/
def P798527835766488348.Spec : Prop :=
  ∀ n, P798527835766488348.a n = A130123 n

end A130123

/-! ## A130123.P4689089136576198546

`A023531(n)*A038208(n)`
-/

namespace A130123.P4689089136576198546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A038208 n

end

end A130123.P4689089136576198546

namespace A130123

/-- `A023531(n)*A038208(n)` -/
def P4689089136576198546.Spec : Prop :=
  ∀ n, P4689089136576198546.a n = A130123 n

end A130123

/-! ## A130123.P15843484982663161433

`A023531(n)*A038220(n)`
-/

namespace A130123.P15843484982663161433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A038220 n

end

end A130123.P15843484982663161433

namespace A130123

/-- `A023531(n)*A038220(n)` -/
def P15843484982663161433.Spec : Prop :=
  ∀ n, P15843484982663161433.a n = A130123 n

end A130123

/-! ## A130123.P12637656824604809763

`A061290(n)*A103452(n)`
-/

namespace A130123.P12637656824604809763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061290 n * A103452 n

end

end A130123.P12637656824604809763

namespace A130123

/-- `A061290(n)*A103452(n)` -/
def P12637656824604809763.Spec : Prop :=
  ∀ n, P12637656824604809763.a n = A130123 n

end A130123

/-! ## A130123.P7529633561767276464

`A023531(n)*A182059(n)`
-/

namespace A130123.P7529633561767276464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A182059 n

end

end A130123.P7529633561767276464

namespace A130123

/-- `A023531(n)*A182059(n)` -/
def P7529633561767276464.Spec : Prop :=
  ∀ n, P7529633561767276464.a n = A130123 n

end A130123

/-! ## A130123.P8084379580278386917

`A099089(n)*A114002(n)`
-/

namespace A130123.P8084379580278386917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A114002 n

end

end A130123.P8084379580278386917

namespace A130123

/-- `A099089(n)*A114002(n)` -/
def P8084379580278386917.Spec : Prop :=
  ∀ n, P8084379580278386917.a n = A130123 n

end A130123

/-! ## A130123.P14484280305321564204

`A122960(n)*A130125(n)`
-/

namespace A130123.P14484280305321564204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122960 n * A130125 n

end

end A130123.P14484280305321564204

namespace A130123

/-- `A122960(n)*A130125(n)` -/
def P14484280305321564204.Spec : Prop :=
  ∀ n, P14484280305321564204.a n = A130123 n

end A130123

/-! ## A130123.P17460301687598005200

`A134318(n)*A136521(n)`
-/

namespace A130123.P17460301687598005200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134318 n * A136521 n

end

end A130123.P17460301687598005200

namespace A130123

/-- `A134318(n)*A136521(n)` -/
def P17460301687598005200.Spec : Prop :=
  ∀ n, P17460301687598005200.a n = A130123 n

end A130123

/-! ## A130123.P12353131813320866019

`A106344(n)*A166555(n)`
-/

namespace A130123.P12353131813320866019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106344 n * A166555 n

end

end A130123.P12353131813320866019

namespace A130123

/-- `A106344(n)*A166555(n)` -/
def P12353131813320866019.Spec : Prop :=
  ∀ n, P12353131813320866019.a n = A130123 n

end A130123

/-! ## A130123.P8181815198526012422

`A106346(n)*A166555(n)`
-/

namespace A130123.P8181815198526012422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106346 n * A166555 n

end

end A130123.P8181815198526012422

namespace A130123

/-- `A106346(n)*A166555(n)` -/
def P8181815198526012422.Spec : Prop :=
  ∀ n, P8181815198526012422.a n = A130123 n

end A130123

/-! ## A130123.P16492857720443716459

`lcm(A008949(n), A134309(n))`
-/

namespace A130123.P16492857720443716459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008949 n) (A134309 n)

end

end A130123.P16492857720443716459

namespace A130123

/-- `lcm(A008949(n), A134309(n))` -/
def P16492857720443716459.Spec : Prop :=
  ∀ n, (P16492857720443716459.a n : ℤ) = A130123 n

end A130123

/-! ## A130123.P6108023801968956239

`lcm(A013609(n), A136521(n))`
-/

namespace A130123.P6108023801968956239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013609 n) (A136521 n)

end

end A130123.P6108023801968956239

namespace A130123

/-- `lcm(A013609(n), A136521(n))` -/
def P6108023801968956239.Spec : Prop :=
  ∀ n, (P6108023801968956239.a n : ℤ) = A130123 n

end A130123

/-! ## A130123.P10960727692972326264

`A131572(A198954(n+1))/2`
-/

namespace A130123.P10960727692972326264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131572 (A198954 (n + 1)).toNat : ℚ) / 2

end

end A130123.P10960727692972326264

namespace A130123

/-- `A131572(A198954(n+1))/2` -/
def P10960727692972326264.Spec : Prop :=
  ∀ n, P10960727692972326264.a n = (A130123 n : ℚ)

end A130123

/-! ## A130123.P7583746167312896685

`A010054(n+1)*A013609(n)`
-/

namespace A130123.P7583746167312896685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A013609 n

end

end A130123.P7583746167312896685

namespace A130123

/-- `A010054(n+1)*A013609(n)` -/
def P7583746167312896685.Spec : Prop :=
  ∀ n, P7583746167312896685.a n = A130123 n

end A130123

/-!
# A130124: Triangle defined by A130123 * A002260, read by rows.

The programs for A130124, the canonical program `A130124.P14933336199190030298` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130124 has offset 1).

The definition of A130124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130124.P12448609028845048072

`∏[char[∑[n+1]]+1]*A002260(n+1)`
-/

namespace A130124.P12448609028845048072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (n + 1)

end

end A130124.P12448609028845048072

namespace A130124

/-- `∏[char[∑[n+1]]+1]*A002260(n+1)` -/
def P12448609028845048072.Spec : Prop :=
  ∀ n, P12448609028845048072.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P14933336199190030298

`A002260(n+1)*A137688(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130124

/-- `A002260(n+1)*A137688(n)` -/
def P14933336199190030298.Spec : Prop :=
  ∀ n, P14933336199190030298.a n = A130124 (n + 1)

theorem P14933336199190030298.correct : P14933336199190030298.Spec := by
  intro n
  simp only [A130124, Nat.add_sub_cancel]

end A130124

/-! ## A130124.P15341963915068325347

`(A002262(n)+1)*A137688(n)`
-/

namespace A130124.P15341963915068325347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A137688 n

end

end A130124.P15341963915068325347

namespace A130124

/-- `(A002262(n)+1)*A137688(n)` -/
def P15341963915068325347.Spec : Prop :=
  ∀ n, P15341963915068325347.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P13810377164699198144

`A130453(n+1)*A296612(n)`
-/

namespace A130124.P13810377164699198144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130453 (n + 1) * A296612 n

end

end A130124.P13810377164699198144

namespace A130124

/-- `A130453(n+1)*A296612(n)` -/
def P13810377164699198144.Spec : Prop :=
  ∀ n, P13810377164699198144.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P13147542772268154698

`(A002262(n)+1)*Δ[A007664(n)]`
-/

namespace A130124.P13147542772268154698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * (f1 (n + 1) - f1 n)

end

end A130124.P13147542772268154698

namespace A130124

/-- `(A002262(n)+1)*Δ[A007664(n)]` -/
def P13147542772268154698.Spec : Prop :=
  ∀ n, P13147542772268154698.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P68913567940797192

`A002260(n+1)/2*A140513(n)`
-/

namespace A130124.P68913567940797192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2 * (A140513 n : ℚ)

end

end A130124.P68913567940797192

namespace A130124

/-- `A002260(n+1)/2*A140513(n)` -/
def P68913567940797192.Spec : Prop :=
  ∀ n, P68913567940797192.a n = (A130124 (n + 1) : ℚ)

end A130124

/-! ## A130124.P16866631706246919912

`(A002262(n)+1)*A000079(A003056(n))`
-/

namespace A130124.P16866631706246919912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000079 (A003056 n).toNat

end

end A130124.P16866631706246919912

namespace A130124

/-- `(A002262(n)+1)*A000079(A003056(n))` -/
def P16866631706246919912.Spec : Prop :=
  ∀ n, P16866631706246919912.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P2290269283023651206

`A002260(n+1)*A011782(A002024(n+1))`
-/

namespace A130124.P2290269283023651206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A011782 (A002024 (n + 1)).toNat

end

end A130124.P2290269283023651206

namespace A130124

/-- `A002260(n+1)*A011782(A002024(n+1))` -/
def P2290269283023651206.Spec : Prop :=
  ∀ n, P2290269283023651206.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P6047428836509121450

`(A002262(n)+1)*A011782(A002024(n+1))`
-/

namespace A130124.P6047428836509121450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A011782 (A002024 (n + 1)).toNat

end

end A130124.P6047428836509121450

namespace A130124

/-- `(A002262(n)+1)*A011782(A002024(n+1))` -/
def P6047428836509121450.Spec : Prop :=
  ∀ n, P6047428836509121450.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P3401314442918043465

`A002260(n+1)*A011782(A003056(n)+1)`
-/

namespace A130124.P3401314442918043465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A011782 (A003056 n + 1).toNat

end

end A130124.P3401314442918043465

namespace A130124

/-- `A002260(n+1)*A011782(A003056(n)+1)` -/
def P3401314442918043465.Spec : Prop :=
  ∀ n, P3401314442918043465.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P6368522883128448058

`A002260(n+1)*A131577(A003056(n)+1)`
-/

namespace A130124.P6368522883128448058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A131577 (A003056 n + 1).toNat

end

end A130124.P6368522883128448058

namespace A130124

/-- `A002260(n+1)*A131577(A003056(n)+1)` -/
def P6368522883128448058.Spec : Prop :=
  ∀ n, P6368522883128448058.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P14709037680162280554

`A002260(n+1)*A135764(A127739(n+1))`
-/

namespace A130124.P14709037680162280554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A135764 (A127739 (n + 1)).toNat

end

end A130124.P14709037680162280554

namespace A130124

/-- `A002260(n+1)*A135764(A127739(n+1))` -/
def P14709037680162280554.Spec : Prop :=
  ∀ n, P14709037680162280554.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P7064879285923440324

`A002260(n+1)*A130321(n-A002262(n))`
-/

namespace A130124.P7064879285923440324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130321 ((n : ℤ) - A002262 n).toNat

end

end A130124.P7064879285923440324

namespace A130124

/-- `A002260(n+1)*A130321(n-A002262(n))` -/
def P7064879285923440324.Spec : Prop :=
  ∀ n, P7064879285923440324.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P18206164285610292950

`(A002024(n+1)-A025581(n))*A137688(n)`
-/

namespace A130124.P18206164285610292950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A025581 n) * A137688 n

end

end A130124.P18206164285610292950

namespace A130124

/-- `(A002024(n+1)-A025581(n))*A137688(n)` -/
def P18206164285610292950.Spec : Prop :=
  ∀ n, P18206164285610292950.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P3357819168702385181

`A002260(n+1)/A007318(n)*A038208(n)`
-/

namespace A130124.P3357819168702385181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A007318 n : ℚ) * (A038208 n : ℚ)

end

end A130124.P3357819168702385181

namespace A130124

/-- `A002260(n+1)/A007318(n)*A038208(n)` -/
def P3357819168702385181.Spec : Prop :=
  ∀ n, P3357819168702385181.a n = (A130124 (n + 1) : ℚ)

end A130124

/-! ## A130124.P7802465623845780012

`A002260(n+1)*A054582(n+1-A002260(n+1))`
-/

namespace A130124.P7802465623845780012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054582 ((n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A130124.P7802465623845780012

namespace A130124

/-- `A002260(n+1)*A054582(n+1-A002260(n+1))` -/
def P7802465623845780012.Spec : Prop :=
  ∀ n, P7802465623845780012.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P13682666766548725994

`A054073(A054077(n+1))*A137688(n)`
-/

namespace A130124.P13682666766548725994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054073 (A054077 (n + 1)).toNat * A137688 n

end

end A130124.P13682666766548725994

namespace A130124

/-- `A054073(A054077(n+1))*A137688(n)` -/
def P13682666766548725994.Spec : Prop :=
  ∀ n, P13682666766548725994.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P11983277486699062653

`A054065(A054069(n+1))*A137688(n)`
-/

namespace A130124.P11983277486699062653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (A054069 (n + 1)).toNat * A137688 n

end

end A130124.P11983277486699062653

namespace A130124

/-- `A054065(A054069(n+1))*A137688(n)` -/
def P11983277486699062653.Spec : Prop :=
  ∀ n, P11983277486699062653.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P15970969314038504069

`A059268(n)*A130128(A038722(n+1))`
-/

namespace A130124.P15970969314038504069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A130128 (A038722 (n + 1)).toNat

end

end A130124.P15970969314038504069

namespace A130124

/-- `A059268(n)*A130128(A038722(n+1))` -/
def P15970969314038504069.Spec : Prop :=
  ∀ n, P15970969314038504069.a n = A130124 (n + 1)

end A130124

/-! ## A130124.P17483822826583676435

`(A002262(n)+1)*A223541(A057944(n))`
-/

namespace A130124.P17483822826583676435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A223541 (A057944 n).toNat

end

end A130124.P17483822826583676435

namespace A130124

/-- `(A002262(n)+1)*A223541(A057944(n))` -/
def P17483822826583676435.Spec : Prop :=
  ∀ n, P17483822826583676435.a n = A130124 (n + 1)

end A130124

/-!
# A130125: Triangle defined by A128174 * A130123, read by rows.

The programs for A130125, the canonical program `A130125.P17852879652556337111` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130125 has offset 0).

The definition of A130125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130125.P17852879652556337111

`A131577(A128179(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130125

/-- `A131577(A128179(n+1))` -/
def P17852879652556337111.Spec : Prop :=
  ∀ n, P17852879652556337111.a n = A130125 n

theorem P17852879652556337111.correct : P17852879652556337111.Spec := by
  intro n
  simp only [A130125]

end A130125

/-! ## A130125.P3347408104639458243

`A131575(A131225(n+1))`
-/

namespace A130125.P3347408104639458243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A131225 (n + 1)).toNat

end

end A130125.P3347408104639458243

namespace A130125

/-- `A131575(A131225(n+1))` -/
def P3347408104639458243.Spec : Prop :=
  ∀ n, P3347408104639458243.a n = A130125 n

end A130125

/-! ## A130125.P18155252784371776567

`A131572(A133728(n+1))`
-/

namespace A130125.P18155252784371776567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A133728 (n + 1)).toNat

end

end A130125.P18155252784371776567

namespace A130125

/-- `A131572(A133728(n+1))` -/
def P18155252784371776567.Spec : Prop :=
  ∀ n, P18155252784371776567.a n = A130125 n

end A130125

/-! ## A130125.P17624485071350126007

`A053117(n)/A130777(n)`
-/

namespace A130125.P17624485071350126007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053117 n : ℚ) / (A130777 n : ℚ)

end

end A130125.P17624485071350126007

namespace A130125

/-- `A053117(n)/A130777(n)` -/
def P17624485071350126007.Spec : Prop :=
  ∀ n, P17624485071350126007.a n = (A130125 n : ℚ)

end A130125

/-! ## A130125.P4188947868046719326

`A134352(n)/A130321(n)`
-/

namespace A130125.P4188947868046719326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134352 n : ℚ) / (A130321 n : ℚ)

end

end A130125.P4188947868046719326

namespace A130125

/-- `A134352(n)/A130321(n)` -/
def P4188947868046719326.Spec : Prop :=
  ∀ n, P4188947868046719326.a n = (A130125 n : ℚ)

end A130125

/-! ## A130125.P477628820407861515

`lcm(A059268(n), A369736(n))`
-/

namespace A130125.P477628820407861515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A369736 n)

end

end A130125.P477628820407861515

namespace A130125

/-- `lcm(A059268(n), A369736(n))` -/
def P477628820407861515.Spec : Prop :=
  ∀ n, (P477628820407861515.a n : ℤ) = A130125 n

end A130125

/-! ## A130125.P9447883171960002219

`and(A059268(n), A128971(n))`
-/

namespace A130125.P9447883171960002219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A128971 n)

end

end A130125.P9447883171960002219

namespace A130125

/-- `and(A059268(n), A128971(n))` -/
def P9447883171960002219.Spec : Prop :=
  ∀ n, P9447883171960002219.a n = A130125 n

end A130125

/-! ## A130125.P6769465103575040993

`A059268(n)*A128174(n+1)`
-/

namespace A130125.P6769465103575040993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A128174 (n + 1)

end

end A130125.P6769465103575040993

namespace A130125

/-- `A059268(n)*A128174(n+1)` -/
def P6769465103575040993.Spec : Prop :=
  ∀ n, P6769465103575040993.a n = A130125 n

end A130125

/-! ## A130125.P18267157680148390761

`A123641(n+1)*A238303(n)`
-/

namespace A130125.P18267157680148390761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123641 (n + 1) * A238303 n

end

end A130125.P18267157680148390761

namespace A130125

/-- `A123641(n+1)*A238303(n)` -/
def P18267157680148390761.Spec : Prop :=
  ∀ n, P18267157680148390761.a n = A130125 n

end A130125

/-! ## A130125.P12758642674640752192

`A115322(n+1)/A046854(n)`
-/

namespace A130125.P12758642674640752192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115322 (n + 1) : ℚ) / (A046854 n : ℚ)

end

end A130125.P12758642674640752192

namespace A130125

/-- `A115322(n+1)/A046854(n)` -/
def P12758642674640752192.Spec : Prop :=
  ∀ n, P12758642674640752192.a n = (A130125 n : ℚ)

end A130125

/-! ## A130125.P9228377731380802719

`A115322(n+1)/A134513(n)`
-/

namespace A130125.P9228377731380802719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115322 (n + 1) : ℚ) / (A134513 n : ℚ)

end

end A130125.P9228377731380802719

namespace A130125

/-- `A115322(n+1)/A134513(n)` -/
def P9228377731380802719.Spec : Prop :=
  ∀ n, P9228377731380802719.a n = (A130125 n : ℚ)

end A130125

/-! ## A130125.P1276859803046840569

`and(A018900(n+1), A128971(n))`
-/

namespace A130125.P1276859803046840569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018900 (n + 1)) (A128971 n)

end

end A130125.P1276859803046840569

namespace A130125

/-- `and(A018900(n+1), A128971(n))` -/
def P1276859803046840569.Spec : Prop :=
  ∀ n, P1276859803046840569.a n = A130125 n

end A130125

/-! ## A130125.P9636055467786530903

`and(A059268(n), A130128(n+1))`
-/

namespace A130125.P9636055467786530903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A130128 (n + 1))

end

end A130125.P9636055467786530903

namespace A130125

/-- `and(A059268(n), A130128(n+1))` -/
def P9636055467786530903.Spec : Prop :=
  ∀ n, P9636055467786530903.a n = A130125 n

end A130125

/-! ## A130125.P12971360074498524873

`and(A128971(n), A136318(n+1))`
-/

namespace A130125.P12971360074498524873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128971 n) (A136318 (n + 1))

end

end A130125.P12971360074498524873

namespace A130125

/-- `and(A128971(n), A136318(n+1))` -/
def P12971360074498524873.Spec : Prop :=
  ∀ n, P12971360074498524873.a n = A130125 n

end A130125

/-! ## A130125.P1506641808119937243

`A115322(n+1)/A134505(n+1)`
-/

namespace A130125.P1506641808119937243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115322 (n + 1) : ℚ) / (A134505 (n + 1) : ℚ)

end

end A130125.P1506641808119937243

namespace A130125

/-- `A115322(n+1)/A134505(n+1)` -/
def P1506641808119937243.Spec : Prop :=
  ∀ n, P1506641808119937243.a n = (A130125 n : ℚ)

end A130125

/-! ## A130125.P1248325113687930695

`A004736(n+1)%2*A059268(n)`
-/

namespace A130125.P1248325113687930695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) 2 * A059268 n

end

end A130125.P1248325113687930695

namespace A130125

/-- `A004736(n+1)%2*A059268(n)` -/
def P1248325113687930695.Spec : Prop :=
  ∀ n, P1248325113687930695.a n = A130125 n

end A130125

/-! ## A130125.P7516965674671964382

`and(A018900(n+1), A130128(n+1))`
-/

namespace A130125.P7516965674671964382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018900 (n + 1)) (A130128 (n + 1))

end

end A130125.P7516965674671964382

namespace A130125

/-- `and(A018900(n+1), A130128(n+1))` -/
def P7516965674671964382.Spec : Prop :=
  ∀ n, P7516965674671964382.a n = A130125 n

end A130125

/-! ## A130125.P7285867033315368584

`and(A130128(n+1), A136318(n+1))`
-/

namespace A130125.P7285867033315368584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130128 (n + 1)) (A136318 (n + 1))

end

end A130125.P7285867033315368584

namespace A130125

/-- `and(A130128(n+1), A136318(n+1))` -/
def P7285867033315368584.Spec : Prop :=
  ∀ n, P7285867033315368584.a n = A130125 n

end A130125

/-! ## A130125.P9985713084080731394

`2*A130127(n+1)-A130128(n+1)`
-/

namespace A130125.P9985713084080731394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130127 (n + 1) - A130128 (n + 1)

end

end A130125.P9985713084080731394

namespace A130125

/-- `2*A130127(n+1)-A130128(n+1)` -/
def P9985713084080731394.Spec : Prop :=
  ∀ n, P9985713084080731394.a n = A130125 n

end A130125

/-! ## A130125.P16033553775446728374

`A128174(n+1)/A007318(n)*A013609(n)`
-/

namespace A130125.P16033553775446728374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128174 (n + 1) : ℚ) / (A007318 n : ℚ) * (A013609 n : ℚ)

end

end A130125.P16033553775446728374

namespace A130125

/-- `A128174(n+1)/A007318(n)*A013609(n)` -/
def P16033553775446728374.Spec : Prop :=
  ∀ n, P16033553775446728374.a n = (A130125 n : ℚ)

end A130125

/-!
# A130126: Number of partitions of n in which each even part has odd multiplicity.

The programs for A130126, there is no canonical definition to state claims against.
-/

/-! ## A130126.P11424365760450055032

`A118759(A046682(n))+A116680(n)`
-/

namespace A130126.P11424365760450055032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A046682 n).toNat + A116680 n

end

end A130126.P11424365760450055032

/-! ## A130126.P13571636909492328753

`A316495(A305630(n))`
-/

namespace A130126.P13571636909492328753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A305630 n).toNat

end

end A130126.P13571636909492328753

/-! ## A130126.P6105684542539338017

`A327534(∑[A277579(n)])`
-/

namespace A130126.P6105684542539338017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327534 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130126.P6105684542539338017

/-! ## A130126.P12802280540554106611

`A316495(A073576(n)+∑{digits}[2^n, C(#, 9)])`
-/

namespace A130126.P12802280540554106611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A073576 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)).toNat

end

end A130126.P12802280540554106611

/-! ## A130126.P3136986126317478584

`A112318(A325856(n)+A116680(n))`
-/

namespace A130126.P3136986126317478584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A325856 n + A116680 n).toNat

end

end A130126.P3136986126317478584

/-!
# A130127: Triangle defined by A000012 * A130125, read by rows.

The programs for A130127, the canonical program `A130127.P7684455108122293938` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130127 has offset 1).

The definition of A130127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130127.P7684455108122293938

`A059268(n)*A115514(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130127

/-- `A059268(n)*A115514(n+1)` -/
def P7684455108122293938.Spec : Prop :=
  ∀ n, P7684455108122293938.a n = A130127 (n + 1)

theorem P7684455108122293938.correct : P7684455108122293938.Spec := by
  intro n
  simp only [A130127, Nat.add_sub_cancel]

end A130127

/-! ## A130127.P15779862949045831729

`A008619(A025581(n))*A059268(n)`
-/

namespace A130127.P15779862949045831729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n).toNat * A059268 n

end

end A130127.P15779862949045831729

namespace A130127

/-- `A008619(A025581(n))*A059268(n)` -/
def P15779862949045831729.Spec : Prop :=
  ∀ n, P15779862949045831729.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P11184082077420796061

`A008621(A099375(n))*A059268(n)`
-/

namespace A130127.P11184082077420796061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A099375 n).toNat * A059268 n

end

end A130127.P11184082077420796061

namespace A130127

/-- `A008621(A099375(n))*A059268(n)` -/
def P11184082077420796061.Spec : Prop :=
  ∀ n, P11184082077420796061.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P13171748339564651837

`A059268(n)*A065033(A004736(n+1))`
-/

namespace A130127.P13171748339564651837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A065033 (A004736 (n + 1)).toNat

end

end A130127.P13171748339564651837

namespace A130127

/-- `A059268(n)*A065033(A004736(n+1))` -/
def P13171748339564651837.Spec : Prop :=
  ∀ n, P13171748339564651837.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P8996468378501745029

`A004526(A004736(n+1)+1)*A059268(n)`
-/

namespace A130127.P8996468378501745029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004736 (n + 1) + 1).toNat * A059268 n

end

end A130127.P8996468378501745029

namespace A130127

/-- `A004526(A004736(n+1)+1)*A059268(n)` -/
def P8996468378501745029.Spec : Prop :=
  ∀ n, P8996468378501745029.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P9795174793017897175

`A000079(A002262(n))*A008619(A025581(n))`
-/

namespace A130127.P9795174793017897175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A008619 (A025581 n).toNat

end

end A130127.P9795174793017897175

namespace A130127

/-- `A000079(A002262(n))*A008619(A025581(n))` -/
def P9795174793017897175.Spec : Prop :=
  ∀ n, P9795174793017897175.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P15296098027668664493

`A004526(A004736(A014132(n+1)))*A059268(n)`
-/

namespace A130127.P15296098027668664493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004736 (A014132 (n + 1)).toNat).toNat * A059268 n

end

end A130127.P15296098027668664493

namespace A130127

/-- `A004526(A004736(A014132(n+1)))*A059268(n)` -/
def P15296098027668664493.Spec : Prop :=
  ∀ n, P15296098027668664493.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P4142112043121346135

`A059268(n)*A130260(A104762(n+1))`
-/

namespace A130127.P4142112043121346135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A130260 (A104762 (n + 1)).toNat

end

end A130127.P4142112043121346135

namespace A130127

/-- `A059268(n)*A130260(A104762(n+1))` -/
def P4142112043121346135.Spec : Prop :=
  ∀ n, P4142112043121346135.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P7081836933742251804

`A059268(n)*A174273(A130321(n))`
-/

namespace A130127.P7081836933742251804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A174273 (A130321 n).toNat

end

end A130127.P7081836933742251804

namespace A130127

/-- `A059268(n)*A174273(A130321(n))` -/
def P7081836933742251804.Spec : Prop :=
  ∀ n, P7081836933742251804.a n = A130127 (n + 1)

end A130127

/-! ## A130127.P16568231317923478478

`A038548(A130321(n))*A130321(A061579(n))`
-/

namespace A130127.P16568231317923478478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A130321 n).toNat * A130321 (A061579 n).toNat

end

end A130127.P16568231317923478478

namespace A130127

/-- `A038548(A130321(n))*A130321(A061579(n))` -/
def P16568231317923478478.Spec : Prop :=
  ∀ n, P16568231317923478478.a n = A130127 (n + 1)

end A130127

/-!
# A130128: Triangle read by rows: T(n,k) = (n - k + 1)*2^(k-1).

The programs for A130128, the canonical program `A130128.P12382566472116718112` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130128 has offset 1).

The definition of A130128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130128.P12382566472116718112

`A004736(n+1)*A059268(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130128

/-- `A004736(n+1)*A059268(n)` -/
def P12382566472116718112.Spec : Prop :=
  ∀ n, P12382566472116718112.a n = A130128 (n + 1)

theorem P12382566472116718112.correct : P12382566472116718112.Spec := by
  intro n
  simp only [A130128, Nat.add_sub_cancel]

end A130128

/-! ## A130128.P13613578824173727266

`(A025581(n)+1)*A059268(n)`
-/

namespace A130128.P13613578824173727266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A059268 n

end

end A130128.P13613578824173727266

namespace A130128

/-- `(A025581(n)+1)*A059268(n)` -/
def P13613578824173727266.Spec : Prop :=
  ∀ n, P13613578824173727266.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P1446541402844456691

`A143595(n+1)*A232089(n)`
-/

namespace A130128.P1446541402844456691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143595 (n + 1) * A232089 n

end

end A130128.P1446541402844456691

namespace A130128

/-- `A143595(n+1)*A232089(n)` -/
def P1446541402844456691.Spec : Prop :=
  ∀ n, P1446541402844456691.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P12312016336519685692

`A238303(n)*A357213(n+1)`
-/

namespace A130128.P12312016336519685692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n * A357213 (n + 1)

end

end A130128.P12312016336519685692

namespace A130128

/-- `A238303(n)*A357213(n+1)` -/
def P12312016336519685692.Spec : Prop :=
  ∀ n, P12312016336519685692.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P958091001813805930

`(A135764(n+1)+A059268(n))/2`
-/

namespace A130128.P958091001813805930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135764 (n + 1) + A059268 n : ℚ) / 2

end

end A130128.P958091001813805930

namespace A130128

/-- `(A135764(n+1)+A059268(n))/2` -/
def P958091001813805930.Spec : Prop :=
  ∀ n, P958091001813805930.a n = (A130128 (n + 1) : ℚ)

end A130128

/-! ## A130128.P294690510085961293

`A212012(n+1)/2*A059268(n)`
-/

namespace A130128.P294690510085961293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) : ℚ) / 2 * (A059268 n : ℚ)

end

end A130128.P294690510085961293

namespace A130128

/-- `A212012(n+1)/2*A059268(n)` -/
def P294690510085961293.Spec : Prop :=
  ∀ n, P294690510085961293.a n = (A130128 (n + 1) : ℚ)

end A130128

/-! ## A130128.P15238489602215586835

`2^A002262(n)*A004736(n+1)`
-/

namespace A130128.P15238489602215586835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A004736 (n + 1) : ℚ)

end

end A130128.P15238489602215586835

namespace A130128

/-- `2^A002262(n)*A004736(n+1)` -/
def P15238489602215586835.Spec : Prop :=
  ∀ n, P15238489602215586835.a n = (A130128 (n + 1) : ℚ)

end A130128

/-! ## A130128.P6707830596229765048

`(A127739(n+1)-n)*A059268(n)`
-/

namespace A130128.P6707830596229765048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A059268 n

end

end A130128.P6707830596229765048

namespace A130128

/-- `(A127739(n+1)-n)*A059268(n)` -/
def P6707830596229765048.Spec : Prop :=
  ∀ n, P6707830596229765048.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P4539971200240548991

`2^A002260(n+1)/2*A004736(n+1)`
-/

namespace A130128.P4539971200240548991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) / 2 * (A004736 (n + 1) : ℚ)

end

end A130128.P4539971200240548991

namespace A130128

/-- `2^A002260(n+1)/2*A004736(n+1)` -/
def P4539971200240548991.Spec : Prop :=
  ∀ n, P4539971200240548991.a n = (A130128 (n + 1) : ℚ)

end A130128

/-! ## A130128.P5510891905978015500

`2^(A002260(2*n+1-n)-1)*A004736(n+1)`
-/

namespace A130128.P5510891905978015500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (2 * n + 1 - n) - 1 : ℤ) * (A004736 (n + 1) : ℚ)

end

end A130128.P5510891905978015500

namespace A130128

/-- `2^(A002260(2*n+1-n)-1)*A004736(n+1)` -/
def P5510891905978015500.Spec : Prop :=
  ∀ n, P5510891905978015500.a n = (A130128 (n + 1) : ℚ)

end A130128

/-! ## A130128.P3994310359770831377

`A000079(A002262(n))*A004736(n+1)`
-/

namespace A130128.P3994310359770831377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A004736 (n + 1)

end

end A130128.P3994310359770831377

namespace A130128

/-- `A000079(A002262(n))*A004736(n+1)` -/
def P3994310359770831377.Spec : Prop :=
  ∀ n, P3994310359770831377.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P2710718174538932777

`(A025581(n)+1)*A000079(A002262(n))`
-/

namespace A130128.P2710718174538932777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A000079 (A002262 n).toNat

end

end A130128.P2710718174538932777

namespace A130128

/-- `(A025581(n)+1)*A000079(A002262(n))` -/
def P2710718174538932777.Spec : Prop :=
  ∀ n, P2710718174538932777.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P10010896966310728873

`(A004524(A099375(n))+1)*A059268(n)`
-/

namespace A130128.P10010896966310728873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004524 (A099375 n).toNat + 1) * A059268 n

end

end A130128.P10010896966310728873

namespace A130128

/-- `(A004524(A099375(n))+1)*A059268(n)` -/
def P10010896966310728873.Spec : Prop :=
  ∀ n, P10010896966310728873.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P7549703788717126860

`(A059252(A163359(n))+1)*A059268(n)`
-/

namespace A130128.P7549703788717126860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059252 (A163359 n).toNat + 1) * A059268 n

end

end A130128.P7549703788717126860

namespace A130128

/-- `(A059252(A163359(n))+1)*A059268(n)` -/
def P7549703788717126860.Spec : Prop :=
  ∀ n, P7549703788717126860.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P7342597504367981766

`A008619(2*A025581(n))*A059268(n)`
-/

namespace A130128.P7342597504367981766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A025581 n).toNat * A059268 n

end

end A130128.P7342597504367981766

namespace A130128

/-- `A008619(2*A025581(n))*A059268(n)` -/
def P7342597504367981766.Spec : Prop :=
  ∀ n, P7342597504367981766.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P17595113430648588415

`A008621(2*A099375(n))*A059268(n)`
-/

namespace A130128.P17595113430648588415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A099375 n).toNat * A059268 n

end

end A130128.P17595113430648588415

namespace A130128

/-- `A008621(2*A099375(n))*A059268(n)` -/
def P17595113430648588415.Spec : Prop :=
  ∀ n, P17595113430648588415.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P3854573793401382331

`sqrt(A055461(n+1))*A000079(A002262(n))`
-/

namespace A130128.P3854573793401382331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A000079 (A002262 n).toNat : ℝ)

end

end A130128.P3854573793401382331

namespace A130128

/-- `sqrt(A055461(n+1))*A000079(A002262(n))` -/
def P3854573793401382331.Spec : Prop :=
  ∀ n, P3854573793401382331.a n = (A130128 (n + 1) : ℝ)

end A130128

/-! ## A130128.P5996254518916842299

`log2(A140513(n)/A059268(n))*A059268(n)`
-/

namespace A130128.P5996254518916842299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A140513 n : ℚ) / (A059268 n : ℚ) : ℝ) * (A059268 n : ℝ)

end

end A130128.P5996254518916842299

namespace A130128

/-- `log2(A140513(n)/A059268(n))*A059268(n)` -/
def P5996254518916842299.Spec : Prop :=
  ∀ n, P5996254518916842299.a n = (A130128 (n + 1) : ℝ)

end A130128

/-! ## A130128.P13588512154673961922

`A004736(n+1)*A011782(A002260(n+1))`
-/

namespace A130128.P13588512154673961922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A011782 (A002260 (n + 1)).toNat

end

end A130128.P13588512154673961922

namespace A130128

/-- `A004736(n+1)*A011782(A002260(n+1))` -/
def P13588512154673961922.Spec : Prop :=
  ∀ n, P13588512154673961922.a n = A130128 (n + 1)

end A130128

/-! ## A130128.P15813200226101688547

`A004736(n+1)*A011782(A002262(n)+1)`
-/

namespace A130128.P15813200226101688547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A011782 (A002262 n + 1).toNat

end

end A130128.P15813200226101688547

namespace A130128

/-- `A004736(n+1)*A011782(A002262(n)+1)` -/
def P15813200226101688547.Spec : Prop :=
  ∀ n, P15813200226101688547.a n = A130128 (n + 1)

end A130128

/-!
# A130129: a(n) = (3*n+1)*2^n.

The programs for A130129, the canonical program `A130129.P15972518367349299231` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130129 has offset 0).

The definition of A130129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130129.P15972518367349299231

`2^n*(3*n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130129

/-- `2^n*(3*n+1)` -/
def P15972518367349299231.Spec : Prop :=
  ∀ n, (P15972518367349299231.a n : ℤ) = A130129 n

theorem P15972518367349299231.correct : P15972518367349299231.Spec := by
  intro n
  simp only [A130129]

end A130129

/-! ## A130129.P11414596241902519801

`record[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=8`
-/

namespace A130129.P11414596241902519801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 8] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130129.P11414596241902519801

namespace A130129

/-- `record[4*(a(n-1)-a(n-2))]` -/
def P11414596241902519801.Spec : Prop :=
  ∀ n, P11414596241902519801.a n = A130129 n

end A130129

/-! ## A130129.P13096553107208819035

`xor(1, 4*(a(n-1)-a(n-2))+1)` with `a(0)=1, a(1)=8`
-/

namespace A130129.P13096553107208819035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.xor 1 (4 * (a (n - 1) - a (n - 2)) + 1)

end

end A130129.P13096553107208819035

namespace A130129

/-- `xor(1, 4*(a(n-1)-a(n-2))+1)` -/
def P13096553107208819035.Spec : Prop :=
  ∀ n, P13096553107208819035.a n = A130129 n

end A130129

/-! ## A130129.P8339128115109727034

`abs(4*(a(n-1)-a(n-2))+1)-1` with `a(0)=1, a(1)=8`
-/

namespace A130129.P8339128115109727034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  |4 * (a (n - 1) - a (n - 2)) + 1| - 1

end

end A130129.P8339128115109727034

namespace A130129

/-- `abs(4*(a(n-1)-a(n-2))+1)-1` -/
def P8339128115109727034.Spec : Prop :=
  ∀ n, P8339128115109727034.a n = A130129 n

end A130129

/-! ## A130129.P4895947320460891748

`A058582(2*n)`
-/

namespace A130129.P4895947320460891748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058582 (2 * n)

end

end A130129.P4895947320460891748

namespace A130129

/-- `A058582(2*n)` -/
def P4895947320460891748.Spec : Prop :=
  ∀ n, P4895947320460891748.a n = A130129 n

end A130129

/-! ## A130129.P12959824767633600333

`∑[A066373(n+2)]-1`
-/

namespace A130129.P12959824767633600333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130129.P12959824767633600333

namespace A130129

/-- `∑[A066373(n+2)]-1` -/
def P12959824767633600333.Spec : Prop :=
  ∀ n, P12959824767633600333.a n = A130129 n

end A130129

/-! ## A130129.P5858385729729375764

`record[(n+1)*A077958(n)]`
-/

namespace A130129.P5858385729729375764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130129.P5858385729729375764

namespace A130129

/-- `record[(n+1)*A077958(n)]` -/
def P5858385729729375764.Spec : Prop :=
  ∀ n, P5858385729729375764.a n = A130129 n

end A130129

/-! ## A130129.P17269930173876740719

`record[(n+1)*A078029(n)]`
-/

namespace A130129.P17269930173876740719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130129.P17269930173876740719

namespace A130129

/-- `record[(n+1)*A078029(n)]` -/
def P17269930173876740719.Spec : Prop :=
  ∀ n, P17269930173876740719.a n = A130129 n

end A130129

/-! ## A130129.P17218643262782073835

`∑[∑[A098156(n+1)]]-1`
-/

namespace A130129.P17218643262782073835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A130129.P17218643262782073835

namespace A130129

/-- `∑[∑[A098156(n+1)]]-1` -/
def P17218643262782073835.Spec : Prop :=
  ∀ n, P17218643262782073835.a n = A130129 n

end A130129

/-! ## A130129.P1405452998600725020

`A053565(n+1)+2^(n+1)`
-/

namespace A130129.P1405452998600725020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053565 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A130129.P1405452998600725020

namespace A130129

/-- `A053565(n+1)+2^(n+1)` -/
def P1405452998600725020.Spec : Prop :=
  ∀ n, P1405452998600725020.a n = A130129 n

end A130129

/-! ## A130129.P12287011361666347178

`A167667(n+1)-2^(n+1)`
-/

namespace A130129.P12287011361666347178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A130129.P12287011361666347178

namespace A130129

/-- `A167667(n+1)-2^(n+1)` -/
def P12287011361666347178.Spec : Prop :=
  ∀ n, P12287011361666347178.a n = A130129 n

end A130129

/-! ## A130129.P15943973842513914324

`A053220(n+2)-2^(n+2)`
-/

namespace A130129.P15943973842513914324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A130129.P15943973842513914324

namespace A130129

/-- `A053220(n+2)-2^(n+2)` -/
def P15943973842513914324.Spec : Prop :=
  ∀ n, P15943973842513914324.a n = A130129 n

end A130129

/-! ## A130129.P5430256026355797403

`A084858(n+2)-2^(n+3)`
-/

namespace A130129.P5430256026355797403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 (n + 2) - (2 ^ (n + 3) : ℤ)

end

end A130129.P5430256026355797403

namespace A130129

/-- `A084858(n+2)-2^(n+3)` -/
def P5430256026355797403.Spec : Prop :=
  ∀ n, P5430256026355797403.a n = A130129 n

end A130129

/-! ## A130129.P1282683320134339617

`A007283(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A130129.P1282683320134339617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007283 n + 2 * a (n - 1)

end

end A130129.P1282683320134339617

namespace A130129

/-- `A007283(n)+2*a(n-1)` -/
def P1282683320134339617.Spec : Prop :=
  ∀ n, P1282683320134339617.a n = A130129 n

end A130129

/-! ## A130129.P10607334902624330739

`A042950(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A130129.P10607334902624330739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A042950 (n + 1) + 2 * a (n - 1)

end

end A130129.P10607334902624330739

namespace A130129

/-- `A042950(n+1)+2*a(n-1)` -/
def P10607334902624330739.Spec : Prop :=
  ∀ n, P10607334902624330739.a n = A130129 n

end A130129

/-! ## A130129.P8182424523010300550

`A251687(A062545(n))`
-/

namespace A130129.P8182424523010300550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251687 (A062545 n).toNat

end

end A130129.P8182424523010300550

namespace A130129

/-- `A251687(A062545(n))` -/
def P8182424523010300550.Spec : Prop :=
  ∀ n, P8182424523010300550.a n = A130129 n

end A130129

/-! ## A130129.P7943430338144627312

`A251687(A130773(n+1))`
-/

namespace A130129.P7943430338144627312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251687 (A130773 (n + 1)).toNat

end

end A130129.P7943430338144627312

namespace A130129

/-- `A251687(A130773(n+1))` -/
def P7943430338144627312.Spec : Prop :=
  ∀ n, P7943430338144627312.a n = A130129 n

end A130129

/-! ## A130129.P5044686713115141569

`A251687(A267872(n+1))`
-/

namespace A130129.P5044686713115141569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251687 (A267872 (n + 1)).toNat

end

end A130129.P5044686713115141569

namespace A130129

/-- `A251687(A267872(n+1))` -/
def P5044686713115141569.Spec : Prop :=
  ∀ n, P5044686713115141569.a n = A130129 n

end A130129

/-! ## A130129.P8971838315092046661

`A251687(A267873(n+1))`
-/

namespace A130129.P8971838315092046661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251687 (A267873 (n + 1)).toNat

end

end A130129.P8971838315092046661

namespace A130129

/-- `A251687(A267873(n+1))` -/
def P8971838315092046661.Spec : Prop :=
  ∀ n, P8971838315092046661.a n = A130129 n

end A130129

/-!
# A130131: Number of n-lobsters.

The programs for A130131, there is no canonical definition to state claims against.
-/

/-! ## A130131.P6896889922797052318

`A000055(n+1)-A130132(n+1)`
-/

namespace A130131.P6896889922797052318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - A130132 (n + 1)

end

end A130131.P6896889922797052318

/-! ## A130131.P8676297743330832746

`A136605(∑[n+1])-A130132(n+1)`
-/

namespace A130131.P8676297743330832746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (∑ j ∈ Finset.range (n + 1), f1 j) - A130132 (n + 1)

end

end A130131.P8676297743330832746

/-! ## A130131.P14758258341736819483

`A095133(A000124(n))-A130132(n+1)`
-/

namespace A130131.P14758258341736819483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (A000124 n).toNat - A130132 (n + 1)

end

end A130131.P14758258341736819483

/-! ## A130131.P9137087828129885139

`A105821(A133263(n+1))-A130132(n+1)`
-/

namespace A130131.P9137087828129885139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 (n + 1)).toNat - A130132 (n + 1)

end

end A130131.P9137087828129885139

/-! ## A130131.P761238397269191931

`sqrt(A001256(n+1))-A130132(n+1)`
-/

namespace A130131.P761238397269191931
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001256 (n + 1) : ℝ) - (A130132 (n + 1) : ℝ)

end

end A130131.P761238397269191931

/-!
# A130132: Number of trees on n vertices which are not lobsters.

The programs for A130132, there is no canonical definition to state claims against.
-/

/-! ## A130132.P6124182670662643522

`A000055(n+1)-A130131(n+1)`
-/

namespace A130132.P6124182670662643522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - A130131 (n + 1)

end

end A130132.P6124182670662643522

/-! ## A130132.P15193571416002335837

`A095133(∑[n]+1)-A130131(n+1)`
-/

namespace A130132.P15193571416002335837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A130131 (n + 1)

end

end A130132.P15193571416002335837

/-! ## A130132.P14336965448982795669

`A136605(∑[n+1])-A130131(n+1)`
-/

namespace A130132.P14336965448982795669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (∑ j ∈ Finset.range (n + 1), f1 j) - A130131 (n + 1)

end

end A130132.P14336965448982795669

/-! ## A130132.P767073242515467824

`A105821(A133263(n+1))-A130131(n+1)`
-/

namespace A130132.P767073242515467824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 (n + 1)).toNat - A130131 (n + 1)

end

end A130132.P767073242515467824

/-! ## A130132.P2667753028600984810

`A325106(A011854(n)+2)`
-/

namespace A130132.P2667753028600984810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A011854 n + 2).toNat

end

end A130132.P2667753028600984810

/-!
# A130133: Terms in A015922 not divisible by 3.

The programs for A130133, there is no canonical definition to state claims against.
-/

/-! ## A130133.P16305700414219116070

`record[A038502(A033554(n+1))]`
-/

namespace A130133.P16305700414219116070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A033554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130133.P16305700414219116070

/-! ## A130133.P12138650755426019992

`record[A091684(A015922(n+1))]`
-/

namespace A130133.P12138650755426019992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A015922 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130133.P12138650755426019992

/-! ## A130133.P11628292892640094494

`filter[A033554(n+1), A011655(#)]`
-/

namespace A130133.P11628292892640094494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A130133.P11628292892640094494

/-! ## A130133.P17204224652038844427

`filter[A033554(n+1), A267208(#)]`
-/

namespace A130133.P17204224652038844427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A130133.P17204224652038844427

/-!
# A130134: Even terms in A015922.

The programs for A130134, there is no canonical definition to state claims against.
-/

/-! ## A130134.P13702912531447924526

`filter[A033554(n+1), A120325(#)]`
-/

namespace A130134.P13702912531447924526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A130134.P13702912531447924526

/-! ## A130134.P13632250360691377830

`filter[A130133(n+1), A120325(#)]`
-/

namespace A130134.P13632250360691377830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A130134.P13632250360691377830

/-!
# A130137: Number of Fibonacci binary words of length n having no 0110 subword. A Fibonacci binary word is a binary word having no 00 subword.

The programs for A130137, the canonical program `A130137.P4256883416811079212` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130137 has offset 0).

The definition of A130137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130137.P4256883416811079212

`a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130137

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P4256883416811079212.Spec : Prop :=
  ∀ n, P4256883416811079212.a n = A130137 n

theorem P4256883416811079212.correct : P4256883416811079212.Spec := by
  intro n
  simp only [A130137]

end A130137

/-! ## A130137.P11545647976412052186

`a(n-5)+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A130137.P11545647976412052186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 7] fun n a =>
  a (n - 5) + 2 * a (n - 2)

end

end A130137.P11545647976412052186

namespace A130137

/-- `a(n-5)+2*a(n-2)` -/
def P11545647976412052186.Spec : Prop :=
  ∀ n, (P11545647976412052186.a n : ℤ) = A130137 n

end A130137

/-! ## A130137.P1157945268590584288

`a(n-1)-(a(n-3)-a(n-2)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A130137.P1157945268590584288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 4))

end

end A130137.P1157945268590584288

namespace A130137

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-4))` -/
def P1157945268590584288.Spec : Prop :=
  ∀ n, P1157945268590584288.a n = A130137 n

end A130137

/-! ## A130137.P8962824766762161272

`∑[A124280(abs(1-n))]`
-/

namespace A130137.P8962824766762161272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124280 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130137.P8962824766762161272

namespace A130137

/-- `∑[A124280(abs(1-n))]` -/
def P8962824766762161272.Spec : Prop :=
  ∀ n, P8962824766762161272.a n = A130137 n

end A130137

/-! ## A130137.P4706282632156771465

`A124280(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A130137.P4706282632156771465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124280 (n - 1) + a (n - 1)

end

end A130137.P4706282632156771465

namespace A130137

/-- `A124280(n-1)+a(n-1)` -/
def P4706282632156771465.Spec : Prop :=
  ∀ n, P4706282632156771465.a n = A130137 n

end A130137

/-! ## A130137.P2858838578578170644

`∑[A124280(n)]+1-A124280(n)`
-/

namespace A130137.P2858838578578170644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A124280 n)

end

end A130137.P2858838578578170644

namespace A130137

/-- `∑[A124280(n)]+1-A124280(n)` -/
def P2858838578578170644.Spec : Prop :=
  ∀ n, P2858838578578170644.a n = A130137 n

end A130137

/-! ## A130137.P4364817788439293296

`A124280(n+3)-A124280(n+1)`
-/

namespace A130137.P4364817788439293296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124280 (n + 3) - A124280 (n + 1)

end

end A130137.P4364817788439293296

namespace A130137

/-- `A124280(n+3)-A124280(n+1)` -/
def P4364817788439293296.Spec : Prop :=
  ∀ n, P4364817788439293296.a n = A130137 n

end A130137

/-!
# A130139: Let f denote the map that replaces k with the concatenation of its nontrivial divisors, written in increasing order, each divisor being written in base 10 in the normal way. Then a(n) = prime reached when starting at 2n+1 and iterating f.

The programs for A130139, there is no canonical definition to state claims against.
-/

/-! ## A130139.P14039956798016984493

`∏{p}[A248713(2*n+1), #]`
-/

namespace A130139.P14039956798016984493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248713 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A130139.P14039956798016984493

/-! ## A130139.P11757929753412472889

`A006530(A248713(Δ[n²]))`
-/

namespace A130139.P11757929753412472889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248713 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A130139.P11757929753412472889

/-! ## A130139.P30316164172343676

`A085307(A248713(2*n+1))`
-/

namespace A130139.P30316164172343676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085307 (A248713 (2 * n + 1)).toNat

end

end A130139.P30316164172343676

/-! ## A130139.P8637513306006187580

`A006530(or(1, A248713(2*n+1)))`
-/

namespace A130139.P8637513306006187580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A248713 (2 * n + 1))).toNat

end

end A130139.P8637513306006187580

/-! ## A130139.P4402158826150432478

`A014963(or(1, A248713(2*n+1)))`
-/

namespace A130139.P4402158826150432478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 (A248713 (2 * n + 1))).toNat

end

end A130139.P4402158826150432478

/-!
# A130141: Let f denote the map that replaces k with the concatenation of its nontrivial divisors, written in decreasing order, each divisor being written in base 10 in the normal way. Then a(n) = prime reached when starting at 2n+1 and iterating f.

The programs for A130141, there is no canonical definition to state claims against.
-/

/-! ## A130141.P12009652754910983230

`A361580(A361580(2*n+1))`
-/

namespace A130141.P12009652754910983230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361580 (A361580 (2 * n + 1)).toNat

end

end A130141.P12009652754910983230

/-! ## A130141.P8428810822989524076

`A361580(A361581(n+1+n))`
-/

namespace A130141.P8428810822989524076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361580 (A361581 (n + 1 + n)).toNat

end

end A130141.P8428810822989524076

/-! ## A130141.P14199468354562256641

`A130142(n)%A128396(n+4)`
-/

namespace A130141.P14199468354562256641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130142 n) (A128396 (n + 4))

end

end A130141.P14199468354562256641

/-! ## A130141.P10664702502496167508

`A006530(A085307(2*n+1)*A331568(n+4))`
-/

namespace A130141.P10664702502496167508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085307 (2 * n + 1) * A331568 (n + 4)).toNat

end

end A130141.P10664702502496167508

/-! ## A130141.P8006040702267436927

`A007955(A130142(n))`
-/

namespace A130141.P8006040702267436927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A130142 n).toNat

end

end A130141.P8006040702267436927

/-!
# A130145: Number of nonisomorphic orthogonal arrays OA(8*n+4,4,2,2).

The programs for A130145, the canonical program `A130145.P14923829588217701246` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130145 has offset 1).

The definition of A130145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130145.P14923829588217701246

`∑[A115266(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130145

/-- `∑[A115266(n)]` -/
def P14923829588217701246.Spec : Prop :=
  ∀ n, P14923829588217701246.a n = A130145 (n + 1)

theorem P14923829588217701246.correct : P14923829588217701246.Spec := by
  intro n
  simp only [A130145, Nat.add_sub_cancel]

end A130145

/-! ## A130145.P13039129750302791876

`∑[∑[A028289(n)]]`
-/

namespace A130145.P13039129750302791876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130145.P13039129750302791876

namespace A130145

/-- `∑[∑[A028289(n)]]` -/
def P13039129750302791876.Spec : Prop :=
  ∀ n, P13039129750302791876.a n = A130145 (n + 1)

end A130145

/-! ## A130145.P2327070105930548790

`A011779(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130145.P2327070105930548790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A011779 n + a (n - 2)

end

end A130145.P2327070105930548790

namespace A130145

/-- `A011779(n)+a(n-2)` -/
def P2327070105930548790.Spec : Prop :=
  ∀ n, P2327070105930548790.a n = A130145 (n + 1)

end A130145

/-! ## A130145.P10555458624306465689

`A057524(n)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A130145.P10555458624306465689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  A057524 n + a (n - 3)

end

end A130145.P10555458624306465689

namespace A130145

/-- `A057524(n)+a(n-3)` -/
def P10555458624306465689.Spec : Prop :=
  ∀ n, P10555458624306465689.a n = A130145 (n + 1)

end A130145

/-! ## A130145.P6606690798677129993

`∑[∑[A307872(n+3)]]`
-/

namespace A130145.P6606690798677129993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130145.P6606690798677129993

namespace A130145

/-- `∑[∑[A307872(n+3)]]` -/
def P6606690798677129993.Spec : Prop :=
  ∀ n, P6606690798677129993.a n = A130145 (n + 1)

end A130145

/-! ## A130145.P13674839658759603851

`∑[∑[A029136(2*n)]]`
-/

namespace A130145.P13674839658759603851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130145.P13674839658759603851

namespace A130145

/-- `∑[∑[A029136(2*n)]]` -/
def P13674839658759603851.Spec : Prop :=
  ∀ n, P13674839658759603851.a n = A130145 (n + 1)

end A130145

/-! ## A130145.P9323051613642725332

`∑[∑[A029046(2*n)]]`
-/

namespace A130145.P9323051613642725332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130145.P9323051613642725332

namespace A130145

/-- `∑[∑[A029046(2*n)]]` -/
def P9323051613642725332.Spec : Prop :=
  ∀ n, P9323051613642725332.a n = A130145 (n + 1)

end A130145

/-! ## A130145.P4182823476297960610

`∑[∑[A029265(4*n)]]`
-/

namespace A130145.P4182823476297960610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130145.P4182823476297960610

namespace A130145

/-- `∑[∑[A029265(4*n)]]` -/
def P4182823476297960610.Spec : Prop :=
  ∀ n, P4182823476297960610.a n = A130145 (n + 1)

end A130145

/-!
# A130146: n appears k times, where k = last digit of n.

The programs for A130146, the canonical program `A130146.P6976315121697162262` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130146 has offset 1).

The definition of A130146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130146.P6976315121697162262

`comp[∑[n%11]]-(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130146

/-- `comp[∑[n%11]]-(n+1)` -/
def P6976315121697162262.Spec : Prop :=
  ∀ n, P6976315121697162262.a n = A130146 (n + 1)

theorem P6976315121697162262.correct : P6976315121697162262.Spec := by
  intro n
  simp only [A130146, Nat.add_sub_cancel]

end A130146

/-! ## A130146.P6160959257367295784

`abs(comp[∑[(n-1)%11]]-n)`
-/

namespace A130146.P6160959257367295784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)|

end

end A130146.P6160959257367295784

namespace A130146

/-- `abs(comp[∑[(n-1)%11]]-n)` -/
def P6160959257367295784.Spec : Prop :=
  ∀ n, P6160959257367295784.a n = A130146 (n + 1)

end A130146

/-! ## A130146.P5872081804387296498

`comp[∑[1-(2-n)%10]]-n`
-/

namespace A130146.P5872081804387296498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (2 - (n : ℤ)) 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A130146.P5872081804387296498

namespace A130146

/-- `comp[∑[1-(2-n)%10]]-n` -/
def P5872081804387296498.Spec : Prop :=
  ∀ n, P5872081804387296498.a n = A130146 (n + 1)

end A130146

/-! ## A130146.P12724490103995702091

`comp[A130489(n)]-(n+1)`
-/

namespace A130146.P12724490103995702091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130489 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A130146.P12724490103995702091

namespace A130146

/-- `comp[A130489(n)]-(n+1)` -/
def P12724490103995702091.Spec : Prop :=
  ∀ n, P12724490103995702091.a n = A130146 (n + 1)

end A130146

/-! ## A130146.P9934352780897575447

`comp[∑[A010880(n)]]-(n+1)`
-/

namespace A130146.P9934352780897575447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A130146.P9934352780897575447

namespace A130146

/-- `comp[∑[A010880(n)]]-(n+1)` -/
def P9934352780897575447.Spec : Prop :=
  ∀ n, P9934352780897575447.a n = A130146 (n + 1)

end A130146

/-!
# A130147: a(0)=1. a(n+1) = a(floor(n/a(n))) + 1.

The programs for A130147, the canonical program `A130147.P13595082498004345796` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130147 has offset 0).

The definition of A130147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130147.P13595082498004345796

`1+a(floor((n-1)/a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130147

/-- `1+a(floor((n-1)/a(n-1)))` -/
def P13595082498004345796.Spec : Prop :=
  ∀ n, (P13595082498004345796.a n : ℤ) = A130147 n

theorem P13595082498004345796.correct : P13595082498004345796.Spec := by
  intro n
  simp only [A130147]

end A130147

/-! ## A130147.P14978184228364454810

`a(ceil(n/a(n-1))-1)+1` with `a(0)=1`
-/

namespace A130147.P14978184228364454810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / (a (n - 1) : ℚ)⌉ - 1).toNat + 1

end

end A130147.P14978184228364454810

namespace A130147

/-- `a(ceil(n/a(n-1))-1)+1` -/
def P14978184228364454810.Spec : Prop :=
  ∀ n, (P14978184228364454810.a n : ℤ) = A130147 n

end A130147

/-! ## A130147.P13330663184252448191

`19%(18-a(floor((n-1)/a(n-1))))` with `a(0)=1`
-/

namespace A130147.P13330663184252448191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod 19 (18 - a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat)

end

end A130147.P13330663184252448191

namespace A130147

/-- `19%(18-a(floor((n-1)/a(n-1))))` -/
def P13330663184252448191.Spec : Prop :=
  ∀ n, P13330663184252448191.a n = A130147 n

end A130147

/-! ## A130147.P711043621139705554

`A261333(a(floor((n-1)/a(n-1))))` with `a(0)=1`
-/

namespace A130147.P711043621139705554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261333 (a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat).toNat

end

end A130147.P711043621139705554

namespace A130147

/-- `A261333(a(floor((n-1)/a(n-1))))` -/
def P711043621139705554.Spec : Prop :=
  ∀ n, P711043621139705554.a n = A130147 n

end A130147

/-! ## A130147.P6847096131035231089

`A058321(a(floor((n-1)/a(n-1))))-1` with `a(0)=1`
-/

namespace A130147.P6847096131035231089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058321 (a ⌊((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat).toNat - 1

end

end A130147.P6847096131035231089

namespace A130147

/-- `A058321(a(floor((n-1)/a(n-1))))-1` -/
def P6847096131035231089.Spec : Prop :=
  ∀ n, P6847096131035231089.a n = A130147 n

end A130147

/-!
# A130148: a(1) = a(2) = 1. For n > 1, n is repeated (a(n)+a(n-1)) times.

The programs for A130148, there is no canonical definition to state claims against.
-/

/-! ## A130148.P16508163012512035898

`A107436(lt[A293616(n), n+1])`
-/

namespace A130148.P16508163012512035898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130148.P16508163012512035898

/-! ## A130148.P16463497332964044151

`A107436(lt[A293616(n)-1, n])`
-/

namespace A130148.P16463497332964044151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293616 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A130148.P16463497332964044151

/-! ## A130148.P15372978003973896468

`A070939(or(A191925(n+1), A266480(n)))`
-/

namespace A130148.P15372978003973896468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lor (A191925 (n + 1)) (A266480 n)).toNat

end

end A130148.P15372978003973896468

/-! ## A130148.P10864453219500662001

`floor(sqrt(A137910(n+1)-A000267(n)))`
-/

namespace A130148.P10864453219500662001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A137910 (n + 1) - A000267 n)

end

end A130148.P10864453219500662001

/-! ## A130148.P96589938913068596

`A000523(A370808(n)+A248357(n+1))`
-/

namespace A130148.P96589938913068596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A370808 n + A248357 (n + 1)).toNat

end

end A130148.P96589938913068596

/-! ## A130148.P2027852496138123828

`A000196(A137910(n+1)-A000267(n))`
-/

namespace A130148.P2027852496138123828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A137910 (n + 1) - A000267 n).toNat

end

end A130148.P2027852496138123828

/-! ## A130148.P15229940767719270678

`A000196(A137910(n+1)-Δ[A109512(n)])`
-/

namespace A130148.P15229940767719270678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A137910 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A130148.P15229940767719270678

/-! ## A130148.P5087551096650630160

`A003056(floor((n+1)*sqrt(ϕ))%A038123(n+1))`
-/

namespace A130148.P5087551096650630160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod ⌊(n + 1 : ℝ) * Real.sqrt Real.goldenRatio⌋ (A038123 (n + 1))).toNat

end

end A130148.P5087551096650630160

/-! ## A130148.P5212007312704328105

`A003056(A000196(∑[A100464(n+1)]))`
-/

namespace A130148.P5212007312704328105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A130148.P5212007312704328105

/-! ## A130148.P14019720267394813836

`A130255(A349060(n))`
-/

namespace A130148.P14019720267394813836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130255 (A349060 n).toNat

end

end A130148.P14019720267394813836

/-!
# A130150: Smallest prime with number of digits equal to n-th Fibonacci number.

The programs for A130150, there is no canonical definition to state claims against.
-/

/-! ## A130150.P14011533020508544848

`A101592(A001595(n+1))`
-/

namespace A130150.P14011533020508544848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (A001595 (n + 1)).toNat

end

end A130150.P14011533020508544848

/-! ## A130150.P982698210529942252

`A139053(A111314(n+1))`
-/

namespace A130150.P982698210529942252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A111314 (n + 1)).toNat

end

end A130150.P982698210529942252

/-! ## A130150.P41577137614651144

`A003617(A000045(n+2))`
-/

namespace A130150.P41577137614651144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000045 (n + 2)).toNat

end

end A130150.P41577137614651144

/-! ## A130150.P5234917248237651558

`A003617(A000071(n+2)+1)`
-/

namespace A130150.P5234917248237651558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (A000071 (n + 2) + 1).toNat

end

end A130150.P5234917248237651558

/-! ## A130150.P9823055874955941990

`A003617((∑[A055389(n)]+1)/2)`
-/

namespace A130150.P9823055874955941990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2)).toNat

end

end A130150.P9823055874955941990

/-!
# A130151: Period 6: repeat [1, 1, 1, -1, -1, -1].

The programs for A130151, the canonical program `A130151.P4053434824360605867` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130151 has offset 0).

The definition of A130151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130151.P4053434824360605867

`(-1)^floor(n/3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130151

/-- `(-1)^floor(n/3)` -/
def P4053434824360605867.Spec : Prop :=
  ∀ n, P4053434824360605867.a n = (A130151 n : ℚ)

end A130151

/-!
# A130153: For each permutation p of {1,2,...,n} define maxabsjump(p) = max(|p(i) - i|, 1<=i<=n); a(n) is the sum of maxabsjumps of all p.

The programs for A130153, there is no canonical definition to state claims against.
-/

/-! ## A130153.P586131323642129865

`record[n%A066060(2*n+5)]`
-/

namespace A130153.P586131323642129865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A066060 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130153.P586131323642129865

/-!
# A130154: Triangle read by rows: T(n, k) = 1 + 2*(n-k)*(k-1) (1 <= k <= n).

The programs for A130154, the canonical program `A130154.P3699466404011928819` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130154 has offset 1).

The definition of A130154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130154.P6223577793120190619

`or(1, A157528(n))`
-/

namespace A130154.P6223577793120190619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157528 n)

end

end A130154.P6223577793120190619

namespace A130154

/-- `or(1, A157528(n))` -/
def P6223577793120190619.Spec : Prop :=
  ∀ n, P6223577793120190619.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P118153227519612574

`ceil(A287326(n)/3)`
-/

namespace A130154.P118153227519612574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287326 n : ℚ) / 3⌉

end

end A130154.P118153227519612574

namespace A130154

/-- `ceil(A287326(n)/3)` -/
def P118153227519612574.Spec : Prop :=
  ∀ n, P118153227519612574.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P3699466404011928819

`2*A004247(n)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130154

/-- `2*A004247(n)+1` -/
def P3699466404011928819.Spec : Prop :=
  ∀ n, P3699466404011928819.a n = A130154 (n + 1)

theorem P3699466404011928819.correct : P3699466404011928819.Spec := by
  intro n
  simp only [A130154, Nat.add_sub_cancel]

end A130154

/-! ## A130154.P8050791115602642387

`2*A077028(n)-1`
-/

namespace A130154.P8050791115602642387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077028 n - 1

end

end A130154.P8050791115602642387

namespace A130154

/-- `2*A077028(n)-1` -/
def P8050791115602642387.Spec : Prop :=
  ∀ n, P8050791115602642387.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P9779798529141023061

`3-2*A176270(n)`
-/

namespace A130154.P9779798529141023061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A176270 n

end

end A130154.P9779798529141023061

namespace A130154

/-- `3-2*A176270(n)` -/
def P9779798529141023061.Spec : Prop :=
  ∀ n, P9779798529141023061.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P1334797169503822328

`2*A309555(n)-5`
-/

namespace A130154.P1334797169503822328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309555 n - 5

end

end A130154.P1334797169503822328

namespace A130154

/-- `2*A309555(n)-5` -/
def P1334797169503822328.Spec : Prop :=
  ∀ n, P1334797169503822328.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P3001787475165188158

`2*sqrt(A082043(n))-1`
-/

namespace A130154.P3001787475165188158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A082043 n : ℝ) - 1

end

end A130154.P3001787475165188158

namespace A130154

/-- `2*sqrt(A082043(n))-1` -/
def P3001787475165188158.Spec : Prop :=
  ∀ n, P3001787475165188158.a n = (A130154 (n + 1) : ℝ)

end A130154

/-! ## A130154.P6732637181267743389

`A005408(A004247(n))`
-/

namespace A130154.P6732637181267743389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A004247 n).toNat

end

end A130154.P6732637181267743389

namespace A130154

/-- `A005408(A004247(n))` -/
def P6732637181267743389.Spec : Prop :=
  ∀ n, P6732637181267743389.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P7151829805505504350

`A004273(A077028(n))`
-/

namespace A130154.P7151829805505504350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A077028 n).toNat

end

end A130154.P7151829805505504350

namespace A130154

/-- `A004273(A077028(n))` -/
def P7151829805505504350.Spec : Prop :=
  ∀ n, P7151829805505504350.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P15106761858672541291

`A065190(A157528(n))`
-/

namespace A130154.P15106761858672541291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A157528 n).toNat

end

end A130154.P15106761858672541291

namespace A130154

/-- `A065190(A157528(n))` -/
def P15106761858672541291.Spec : Prop :=
  ∀ n, P15106761858672541291.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P8752149117953829698

`A004273(A004247(n)+1)`
-/

namespace A130154.P8752149117953829698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004247 n + 1).toNat

end

end A130154.P8752149117953829698

namespace A130154

/-- `A004273(A004247(n)+1)` -/
def P8752149117953829698.Spec : Prop :=
  ∀ n, P8752149117953829698.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P1317853431531607863

`A060747(A004247(n)+1)`
-/

namespace A130154.P1317853431531607863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A004247 n + 1).toNat

end

end A130154.P1317853431531607863

namespace A130154

/-- `A060747(A004247(n)+1)` -/
def P1317853431531607863.Spec : Prop :=
  ∀ n, P1317853431531607863.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P3446031939591870345

`A005408(A077028(n)-1)`
-/

namespace A130154.P3446031939591870345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A077028 n - 1).toNat

end

end A130154.P3446031939591870345

namespace A130154

/-- `A005408(A077028(n)-1)` -/
def P3446031939591870345.Spec : Prop :=
  ∀ n, P3446031939591870345.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P10332067124064702032

`A004442(2*A004247(n))`
-/

namespace A130154.P10332067124064702032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A004247 n).toNat

end

end A130154.P10332067124064702032

namespace A130154

/-- `A004442(2*A004247(n))` -/
def P10332067124064702032.Spec : Prop :=
  ∀ n, P10332067124064702032.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P11004244838103075137

`A023443(2*A077028(n))`
-/

namespace A130154.P11004244838103075137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A077028 n).toNat

end

end A130154.P11004244838103075137

namespace A130154

/-- `A023443(2*A077028(n))` -/
def P11004244838103075137.Spec : Prop :=
  ∀ n, P11004244838103075137.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P4055709411297241582

`A141310(2*A004247(n))`
-/

namespace A130154.P4055709411297241582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A004247 n).toNat

end

end A130154.P4055709411297241582

namespace A130154

/-- `A141310(2*A004247(n))` -/
def P4055709411297241582.Spec : Prop :=
  ∀ n, P4055709411297241582.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P9716567499936206634

`A077028(n)+A004247(n)`
-/

namespace A130154.P9716567499936206634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A004247 n

end

end A130154.P9716567499936206634

namespace A130154

/-- `A077028(n)+A004247(n)` -/
def P9716567499936206634.Spec : Prop :=
  ∀ n, P9716567499936206634.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P17821736671747691022

`A101447(n)-A051162(n)`
-/

namespace A130154.P17821736671747691022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n - A051162 n

end

end A130154.P17821736671747691022

namespace A130154

/-- `A101447(n)-A051162(n)` -/
def P17821736671747691022.Spec : Prop :=
  ∀ n, P17821736671747691022.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P5146900663030542980

`A296180(n)-A004247(n)`
-/

namespace A130154.P5146900663030542980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296180 n - A004247 n

end

end A130154.P5146900663030542980

namespace A130154

/-- `A296180(n)-A004247(n)` -/
def P5146900663030542980.Spec : Prop :=
  ∀ n, P5146900663030542980.a n = A130154 (n + 1)

end A130154

/-! ## A130154.P5780989961359350322

`A082043(n)-A004247(n)²`
-/

namespace A130154.P5780989961359350322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n - A004247 n ^ 2

end

end A130154.P5780989961359350322

namespace A130154

/-- `A082043(n)-A004247(n)²` -/
def P5780989961359350322.Spec : Prop :=
  ∀ n, P5780989961359350322.a n = A130154 (n + 1)

end A130154

/-!
# A130156: a(0)=1. a(n) = number of earlier terms of the sequence that divide the n-th Fibonacci number.

The programs for A130156, there is no canonical definition to state claims against.
-/

/-! ## A130156.P2931425955044760978

`A076982(ceil((n+3)*2^(n-2))-∑[n])`
-/

namespace A130156.P2931425955044760978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A130156.P2931425955044760978

/-! ## A130156.P10531534552286412370

`A166497(A152911(n+2))`
-/

namespace A130156.P10531534552286412370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166497 (A152911 (n + 2)).toNat

end

end A130156.P10531534552286412370

/-! ## A130156.P5451241313897514016

`A217921(A323729(n+2))`
-/

namespace A130156.P5451241313897514016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217921 (A323729 (n + 2)).toNat

end

end A130156.P5451241313897514016

/-! ## A130156.P16754198866137281443

`A054988((n+1)*A271665(2*(n+1)))`
-/

namespace A130156.P16754198866137281443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054988 ((n + 1 : ℤ) * A271665 (2 * (n + 1))).toNat

end

end A130156.P16754198866137281443

/-! ## A130156.P6699817219384257276

`A292262(A292290(n))+A054992(n+1)`
-/

namespace A130156.P6699817219384257276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (A292290 n).toNat + A054992 (n + 1)

end

end A130156.P6699817219384257276

/-!
# A130157: a(1)=1. a(n) = number of earlier terms of {a(k)} that are coprime to A130158(n-1).

The programs for A130157, there is no canonical definition to state claims against.
-/

/-! ## A130157.P13442520157818259352

`A130158(eq[1, A130158(n+2)]+1)`
-/

namespace A130157.P13442520157818259352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A130157.P13442520157818259352

/-! ## A130157.P6661684940648972361

`A130158(record[n+2-A130158(n+2)])`
-/

namespace A130157.P6661684940648972361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A130158 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130157.P6661684940648972361

/-! ## A130157.P11137909185142531818

`A130158(eq[A040404(n), A130158(n+1)])`
-/

namespace A130157.P11137909185142531818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130157.P11137909185142531818

/-! ## A130157.P12521088897873747213

`A130158(eq[A054977(n), A130158(n+1)])`
-/

namespace A130157.P12521088897873747213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130157.P12521088897873747213

/-! ## A130157.P9937796770705578429

`A130158(eq[A057427(n), A130158(n+1)])`
-/

namespace A130157.P9937796770705578429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130158 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A130157.P9937796770705578429

/-!
# A130158: Table read by rows in which row n lists the positive divisors of A130157(n).

The programs for A130158, there is no canonical definition to state claims against.
-/

/-! ## A130158.P13401519451177966929

`gcd(A002620(n), A028338(A187829(n+1)))`
-/

namespace A130158.P13401519451177966929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 n) (A028338 (A187829 (n + 1)).toNat)

end

end A130158.P13401519451177966929

/-! ## A130158.P5809620798776683393

`A010783(A082827(n+1))`
-/

namespace A130158.P5809620798776683393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A082827 (n + 1)).toNat

end

end A130158.P5809620798776683393

/-! ## A130158.P16241508046251971674

`gcd(floor((n/2)²), A060162(A077168(n)))`
-/

namespace A130158.P16241508046251971674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊((n : ℚ) / 2) ^ 2⌋ (A060162 (A077168 n).toNat)

end

end A130158.P16241508046251971674

/-! ## A130158.P4791858191505854268

`gcd(A002620(n), A028338(A077168(n)))`
-/

namespace A130158.P4791858191505854268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002620 n) (A028338 (A077168 n).toNat)

end

end A130158.P4791858191505854268

/-! ## A130158.P18259532289561988890

`A154402(A264365(n+1)-A210982(n))`
-/

namespace A130158.P18259532289561988890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A264365 (n + 1) - A210982 n).toNat

end

end A130158.P18259532289561988890

/-!
# A130159: A054525 * A000069.

The programs for A130159, the canonical program `A130159.P6657811149609093730` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130159 has offset 1).

The definition of A130159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130159.P6657811149609093730

`∑{d}[n+1, A000069(#)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A130159

/-- `∑{d}[n+1, A000069(#)*A008683((n+1)/#)]` -/
def P6657811149609093730.Spec : Prop :=
  ∀ n, P6657811149609093730.a n = A130159 (n + 1)

theorem P6657811149609093730.correct : P6657811149609093730.Spec := by
  intro n
  simp only [A130159, Nat.add_sub_cancel]

end A130159

/-! ## A130159.P15333650530558980594

`A004277(A000010(n+1))-A029881(n+1)`
-/

namespace A130159.P15333650530558980594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000010 (n + 1)).toNat - A029881 (n + 1)

end

end A130159.P15333650530558980594

namespace A130159

/-- `A004277(A000010(n+1))-A029881(n+1)` -/
def P15333650530558980594.Spec : Prop :=
  ∀ n, P15333650530558980594.a n = A130159 (n + 1)

end A130159

/-! ## A130159.P1556541279785650440

`A130160(∑[n+1])`
-/

namespace A130159.P1556541279785650440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130160 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130159.P1556541279785650440

namespace A130159

/-- `A130160(∑[n+1])` -/
def P1556541279785650440.Spec : Prop :=
  ∀ n, P1556541279785650440.a n = A130159 (n + 1)

end A130159

/-!
# A130160: A051731 * A130159 as a diagonalized matrix.

The programs for A130160, the canonical program `A130160.P15806770847118490500` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130160 has offset 1).

The definition of A130160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130160.P15806770847118490500

`A051731(n+1)*A130159(A002260(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A130160

/-- `A051731(n+1)*A130159(A002260(n+1))` -/
def P15806770847118490500.Spec : Prop :=
  ∀ n, P15806770847118490500.a n = A130160 (n + 1)

theorem P15806770847118490500.correct : P15806770847118490500.Spec := by
  intro n
  simp only [A130160, Nat.add_sub_cancel]

end A130160

/-! ## A130160.P5827939661168888835

`A051731(n+1)*A130159(A050873(n+1))`
-/

namespace A130160.P5827939661168888835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130159 (A050873 (n + 1)).toNat

end

end A130160.P5827939661168888835

namespace A130160

/-- `A051731(n+1)*A130159(A050873(n+1))` -/
def P5827939661168888835.Spec : Prop :=
  ∀ n, P5827939661168888835.a n = A130160 (n + 1)

end A130160

/-! ## A130160.P208401004493029307

`A051731(n+1)*A130159(A134868(n+1))`
-/

namespace A130160.P208401004493029307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130159 (A134868 (n + 1)).toNat

end

end A130160.P208401004493029307

namespace A130160

/-- `A051731(n+1)*A130159(A134868(n+1))` -/
def P208401004493029307.Spec : Prop :=
  ∀ n, P208401004493029307.a n = A130160 (n + 1)

end A130160

/-! ## A130160.P4111222631224770317

`A051731(n+1)*A130159(A307662(n+1))`
-/

namespace A130160.P4111222631224770317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130159 (A307662 (n + 1)).toNat

end

end A130160.P4111222631224770317

namespace A130160

/-- `A051731(n+1)*A130159(A307662(n+1))` -/
def P4111222631224770317.Spec : Prop :=
  ∀ n, P4111222631224770317.a n = A130160 (n + 1)

end A130160

/-! ## A130160.P1785581220018513661

`A051731(n+1)*A130159(A057555(Δ[n²]))`
-/

namespace A130160.P1785581220018513661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130159 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A130160.P1785581220018513661

namespace A130160

/-- `A051731(n+1)*A130159(A057555(Δ[n²]))` -/
def P1785581220018513661.Spec : Prop :=
  ∀ n, P1785581220018513661.a n = A130160 (n + 1)

end A130160

/-!
# A130161: A054525 * A036989 as a diagonalized matrix.

The programs for A130161, there is no canonical definition to state claims against.
-/

/-! ## A130161.P7213927791377389487

`A036989(A002262(n))*A054525(n+1)`
-/

namespace A130161.P7213927791377389487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A002262 n).toNat * A054525 (n + 1)

end

end A130161.P7213927791377389487

/-! ## A130161.P5400070234653167208

`A125093(n+1)/A049840(n+1)*A328318(A132442(n+1))`
-/

namespace A130161.P5400070234653167208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ) * (A328318 (A132442 (n + 1)).toNat : ℚ)

end

end A130161.P5400070234653167208

/-! ## A130161.P1177587366917657874

`A054525(n+1)*A126387(A036561(n))`
-/

namespace A130161.P1177587366917657874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A126387 (A036561 n).toNat

end

end A130161.P1177587366917657874

/-! ## A130161.P14127145105247614240

`A126387(A036561(n))*A271102(A085383(n+1))`
-/

namespace A130161.P14127145105247614240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A036561 n).toNat * A271102 (A085383 (n + 1)).toNat

end

end A130161.P14127145105247614240

/-! ## A130161.P14003452196144439587

`A054525(n+1)*A316978(A083140(n+2))`
-/

namespace A130161.P14003452196144439587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A316978 (A083140 (n + 2)).toNat

end

end A130161.P14003452196144439587

/-!
# A130162: Triangle read by rows: A051731 * A000837 as a diagonalized matrix.

The programs for A130162, there is no canonical definition to state claims against.
-/

/-! ## A130162.P2205056355237120286

`∑{d}[A127093(n+1), A100953(#)]`
-/

namespace A130162.P2205056355237120286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A100953 d

end

end A130162.P2205056355237120286

/-! ## A130162.P16216182862482489283

`A000837(A002260(n+1))*A051731(n+1)`
-/

namespace A130162.P16216182862482489283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A130162.P16216182862482489283

/-! ## A130162.P5136826658454233001

`A000837(A002262(n)+1)*A051731(n+1)`
-/

namespace A130162.P5136826658454233001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A130162.P5136826658454233001

/-! ## A130162.P7545432392777915284

`A000837(A050873(n+1))*A051731(n+1)`
-/

namespace A130162.P7545432392777915284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A130162.P7545432392777915284

/-! ## A130162.P9272994889058523430

`A000837(A123275(n+1))*A051731(n+1)`
-/

namespace A130162.P9272994889058523430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A130162.P9272994889058523430

/-! ## A130162.P14426570973662994415

`A000837(A127093(n+1))*A051731(n+1)`
-/

namespace A130162.P14426570973662994415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A127093 (n + 1)).toNat * A051731 (n + 1)

end

end A130162.P14426570973662994415

/-! ## A130162.P4132348679739809648

`A182720(n+1)-A018783(A307662(n+1))`
-/

namespace A130162.P4132348679739809648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182720 (n + 1) - A018783 (A307662 (n + 1)).toNat

end

end A130162.P4132348679739809648

/-! ## A130162.P10810844928554023287

`A000837(A112544(n+1))*A051731(n+1)`
-/

namespace A130162.P10810844928554023287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A112544 (n + 1)).toNat * A051731 (n + 1)

end

end A130162.P10810844928554023287

/-! ## A130162.P10044568545184615928

`A168532(A120913(n+1))`
-/

namespace A130162.P10044568545184615928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A120913 (n + 1)).toNat

end

end A130162.P10044568545184615928

/-!
# A130163: Numbers k such that k^2 divides 2*Fibonacci(k).

The programs for A130163, there is no canonical definition to state claims against.
-/

/-! ## A130163.P339137900337888455

`A231290(a(n-2))-24` with `a(0)=1, a(1)=12, a(2)=24`
-/

namespace A130163.P339137900337888455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 24] fun n a =>
  A231290 (a (n - 2)).toNat - 24

end

end A130163.P339137900337888455

/-!
# A130164: Numbers k such that k^2 divides 3*Fibonacci(k).

The programs for A130164, there is no canonical definition to state claims against.
-/

/-! ## A130164.P15712489307155360986

`Δ[A147552(n)]*A160121(A118970(n))`
-/

namespace A130164.P15712489307155360986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A160121 (A118970 n).toNat

end

end A130164.P15712489307155360986

/-!
# A130165: a(1)=1; a(n)=prime(mod(a(n-1),10)).

The programs for A130165, the canonical program `A130165.P3508562373318474553` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130165 has offset 1).

The definition of A130165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130165.P3508562373318474553

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130165

/-- `a(n-4)` -/
def P3508562373318474553.Spec : Prop :=
  ∀ n, (P3508562373318474553.a n : ℤ) = A130165 (n + 1)

theorem P3508562373318474553.correct : P3508562373318474553.Spec := by
  intro n
  simp only [A130165, Nat.add_sub_cancel]

end A130165

/-!
# A130166: a(1)=1; a(n)=prime(mod(a(n-1),1000)).

The programs for A130166, there is no canonical definition to state claims against.
-/

/-! ## A130166.P10329325993187033911

`A007097(n)%A006881(sqrt(A253912(n+1)))`
-/

namespace A130166.P10329325993187033911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007097 n) (A006881 (SequenceMachineLib.roundAway (Real.sqrt (A253912 (n + 1) : ℝ))).toNat)

end

end A130166.P10329325993187033911

/-!
# A130167: Another version of triangle in A127743.

The programs for A130167, there is no canonical definition to state claims against.
-/

/-! ## A130167.P2985547567443341536

`A269396(A084938(n)+1)-1`
-/

namespace A130167.P2985547567443341536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269396 (A084938 n + 1).toNat - 1

end

end A130167.P2985547567443341536

/-! ## A130167.P18137940106685476838

`A084938(n)-A010893(A069777(n))`
-/

namespace A130167.P18137940106685476838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n - A010893 ((A069777 n).toNat + 13)

end

end A130167.P18137940106685476838

/-! ## A130167.P4704691655650360588

`A084938(n)-A010893(A091351(n))`
-/

namespace A130167.P4704691655650360588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n - A010893 ((A091351 n).toNat + 13)

end

end A130167.P4704691655650360588

/-! ## A130167.P16889780170450049477

`A084938(n)-A010893(A125781(n))`
-/

namespace A130167.P16889780170450049477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n - A010893 ((A125781 n).toNat + 13)

end

end A130167.P16889780170450049477

/-! ## A130167.P5147844552786605275

`A084938(n)-A010893(A213275(n))`
-/

namespace A130167.P5147844552786605275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n - A010893 ((A213275 n).toNat + 13)

end

end A130167.P5147844552786605275

/-!
# A130168: a(n) = (b(n) + b(n+1))/3, where b(n) = A000366(n).

The programs for A130168, there is no canonical definition to state claims against.
-/

/-! ## A130168.P721494045458634999

`A343198(∑[n+1])`
-/

namespace A130168.P721494045458634999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130168.P721494045458634999

/-! ## A130168.P3339558907782991921

`record[A343198(∑[char[∑[n]]]²-n)]`
-/

namespace A130168.P3339558907782991921
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130168.P3339558907782991921

/-! ## A130168.P1120052930242614464

`or(1, A343198(A025747(n)))`
-/

namespace A130168.P1120052930242614464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A343198 (A025747 n).toNat)

end

end A130168.P1120052930242614464

/-! ## A130168.P15125404217853326051

`or(1, A343198(A179865(n+2)))`
-/

namespace A130168.P15125404217853326051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A343198 (A179865 (n + 2)).toNat)

end

end A130168.P15125404217853326051

/-! ## A130168.P16821052896671782592

`record[A023531(n)*A343198(n+1)]`
-/

namespace A130168.P16821052896671782592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A343198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130168.P16821052896671782592

/-!
# A130169: a(1) = 1; for n>1, a(n) = (c(n) + c(n+1))/2, where c(n) = A130168(n).

The programs for A130169, there is no canonical definition to state claims against.
-/

/-! ## A130169.P12865365631732993672

`A343198(record[a(n-1)+n])` with `a(0)=1, a(1)=0`
-/

namespace A130169.P12865365631732993672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A130169.P12865365631732993672

/-! ## A130169.P8600671415068353824

`A343198(eq[C(comp[∑[n]]-n, 2)-(n+1), char[∑[n]]])`
-/

namespace A130169.P8600671415068353824
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (SequenceMachineLib.nth (fun j => f1 j = (f4 j : ℤ)) n)

end

end A130169.P8600671415068353824

/-! ## A130169.P15161880482487405247

`A343198(A134189(n+1))`
-/

namespace A130169.P15161880482487405247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (A134189 (n + 1)).toNat

end

end A130169.P15161880482487405247

/-! ## A130169.P320601620280740698

`A343198(A212342(n+1))`
-/

namespace A130169.P320601620280740698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (A212342 (n + 1)).toNat

end

end A130169.P320601620280740698

/-! ## A130169.P13746813102652724529

`A343198(A027379(n)-n)`
-/

namespace A130169.P13746813102652724529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343198 (A027379 n - (n : ℤ)).toNat

end

end A130169.P13746813102652724529

/-!
# A130170: "Stapled" intervals are defined in A090318. Call a stapled interval "maximal" if it is not a proper subinterval of any other stapled interval. Sequence gives starting points of maximal stapled intervals.

The programs for A130170, there is no canonical definition to state claims against.
-/

/-! ## A130170.P10796583734104304133

`and(A130171(n+1), A260196(A001006(n)))`
-/

namespace A130170.P10796583734104304133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130171 (n + 1)) (A260196 (A001006 n).toNat)

end

end A130170.P10796583734104304133

/-! ## A130170.P15842046300637282059

`and(A130171(n+1), A260196(A194563(n+1)))`
-/

namespace A130170.P15842046300637282059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130171 (n + 1)) (A260196 (A194563 (n + 1)).toNat)

end

end A130170.P15842046300637282059

/-! ## A130170.P11764178512861717116

`A130171(n+1)-A002448(A051440(n))`
-/

namespace A130170.P11764178512861717116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130171 (n + 1) - A002448 (A051440 n).toNat

end

end A130170.P11764178512861717116

/-! ## A130170.P6275213390152831065

`A130171(n+1)-A295976(A003462(n))`
-/

namespace A130170.P6275213390152831065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130171 (n + 1) - A295976 (A003462 n).toNat

end

end A130170.P6275213390152831065

/-! ## A130170.P8711191990007734384

`A130171(n+1)-A049084(A026532(n+1))`
-/

namespace A130170.P8711191990007734384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130171 (n + 1) - A049084 (A026532 (n + 1)).toNat

end

end A130170.P8711191990007734384

/-!
# A130171: "Stapled" intervals are defined in A090318. Call a stapled interval "minimal" if it does not contain any proper stapled subinterval. Sequence gives starting points of minimal stapled intervals.

The programs for A130171, there is no canonical definition to state claims against.
-/

/-! ## A130171.P17965541486799747841

`A130170(n+1)+A002448(A051440(n))`
-/

namespace A130171.P17965541486799747841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130170 (n + 1) + A002448 (A051440 n).toNat

end

end A130171.P17965541486799747841

/-! ## A130171.P15071619065540218283

`A151930(A005183(n))+A130170(n+1)`
-/

namespace A130171.P15071619065540218283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (A005183 n).toNat + A130170 (n + 1)

end

end A130171.P15071619065540218283

/-! ## A130171.P3933152788465820056

`A130170(n+1)+A130123(A106515(n))`
-/

namespace A130171.P3933152788465820056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130170 (n + 1) + A130123 (A106515 n).toNat

end

end A130171.P3933152788465820056

/-! ## A130171.P7240371813602306873

`A295976(A003462(n))+A130170(n+1)`
-/

namespace A130171.P7240371813602306873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295976 (A003462 n).toNat + A130170 (n + 1)

end

end A130171.P7240371813602306873

/-! ## A130171.P7055492596469247881

`A130170(n+1)+A049084(A026532(n+1))`
-/

namespace A130171.P7055492596469247881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130170 (n + 1) + A049084 (A026532 (n + 1)).toNat

end

end A130171.P7055492596469247881

/-!
# A130172: Let f(i) = prime( f(i - 1) (modulo 10^n) ) with f(0) = 1; a(n) is the term where the period of the sequence f(i) begins to repeat.

The programs for A130172, there is no canonical definition to state claims against.
-/

/-! ## A130172.P17741507604809710917

`A361523(A277551(n+1))+1`
-/

namespace A130172.P17741507604809710917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361523 (A277551 (n + 1)).toNat + 1

end

end A130172.P17741507604809710917

/-!
# A130174: a(n) = n-1 + (total number of digits in a(1), ..., a(n-1)).

The programs for A130174, the canonical program `A130174.P14029234356887490653` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130174 has offset 1).

The definition of A130174 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130174.P14029234356887490653

`a(n-1)+1+A055642(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130174

/-- `a(n-1)+1+A055642(a(n-1))` -/
def P14029234356887490653.Spec : Prop :=
  ∀ n, P14029234356887490653.a n = A130174 (n + 1)

theorem P14029234356887490653.correct : P14029234356887490653.Spec := by
  intro n
  simp only [A130174, Nat.add_sub_cancel]

end A130174

/-! ## A130174.P9699409545873546417

`A337843(a(n-1)+1)` with `a(0)=0`
-/

namespace A130174.P9699409545873546417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A337843 (a (n - 1) + 1).toNat

end

end A130174.P9699409545873546417

namespace A130174

/-- `A337843(a(n-1)+1)` -/
def P9699409545873546417.Spec : Prop :=
  ∀ n, P9699409545873546417.a n = A130174 (n + 1)

end A130174

/-! ## A130174.P17874385472590107574

`∑[A055642(A055999(n+6)-3)]-2`
-/

namespace A130174.P17874385472590107574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055999 (n + 6) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A130174.P17874385472590107574

namespace A130174

/-- `∑[A055642(A055999(n+6)-3)]-2` -/
def P17874385472590107574.Spec : Prop :=
  ∀ n, P17874385472590107574.a n = A130174 (n + 1)

end A130174

/-! ## A130174.P13675561915721553883

`A318919(n+1)-1`
-/

namespace A130174.P13675561915721553883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318919 (n + 1) - 1

end

end A130174.P13675561915721553883

namespace A130174

/-- `A318919(n+1)-1` -/
def P13675561915721553883.Spec : Prop :=
  ∀ n, P13675561915721553883.a n = A130174 (n + 1)

end A130174

/-! ## A130174.P11032193560834693896

`A023443(A318919(n+1))`
-/

namespace A130174.P11032193560834693896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A318919 (n + 1)).toNat

end

end A130174.P11032193560834693896

namespace A130174

/-- `A023443(A318919(n+1))` -/
def P11032193560834693896.Spec : Prop :=
  ∀ n, P11032193560834693896.a n = A130174 (n + 1)

end A130174

/-! ## A130174.P287171078669652258

`A023444(A318919(n+1)+1)`
-/

namespace A130174.P287171078669652258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A318919 (n + 1) + 1).toNat

end

end A130174.P287171078669652258

namespace A130174

/-- `A023444(A318919(n+1)+1)` -/
def P287171078669652258.Spec : Prop :=
  ∀ n, P287171078669652258.a n = A130174 (n + 1)

end A130174

/-! ## A130174.P15242928289091784877

`A348508(A055396(3*(n+1)))+A318919(n+1)`
-/

namespace A130174.P15242928289091784877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (A055396 (3 * (n + 1))).toNat + A318919 (n + 1)

end

end A130174.P15242928289091784877

namespace A130174

/-- `A348508(A055396(3*(n+1)))+A318919(n+1)` -/
def P15242928289091784877.Spec : Prop :=
  ∀ n, P15242928289091784877.a n = A130174 (n + 1)

end A130174

/-!
# A130175: 2n+1 appears (last digit of 2n+1) times .

The programs for A130175, there is no canonical definition to state claims against.
-/

/-! ## A130175.P15885628374982511184

`A001650(∑[11^A184946(n)])`
-/

namespace A130175.P15885628374982511184
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A184946 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A130175.P15885628374982511184

/-!
# A130176: Numbers n with property that the largest prime factor is a Sophie Germain prime.

The programs for A130176, there is no canonical definition to state claims against.
-/

/-! ## A130176.P13260062126640939169

`eq[1, A156542(A006530(n+1))]+1`
-/

namespace A130176.P13260062126640939169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A130176.P13260062126640939169

/-! ## A130176.P11319263011252995063

`eq[1, A050412(A006530(n+2))]+2`
-/

namespace A130176.P11319263011252995063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A006530 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A130176.P11319263011252995063

/-! ## A130176.P4007596626381602076

`∪[A018252(A002378(n+1)), A156541(n+2)]`
-/

namespace A130176.P4007596626381602076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A002378 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130176.P4007596626381602076

/-! ## A130176.P4837014563695945561

`∪[A018252(A045944(n+1)), A156541(n+2)]`
-/

namespace A130176.P4837014563695945561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A045944 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A130176.P4837014563695945561

/-! ## A130176.P5210862794732901262

`lt[2*A006530(n+2), A006530(2*A006530(n+2)+1)]+2`
-/

namespace A130176.P5210862794732901262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A006530 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A130176.P5210862794732901262

/-!
# A130178: Triangular numbers which are the average of two consecutive primes.

The programs for A130178, there is no canonical definition to state claims against.
-/

/-! ## A130178.P3913536468015875520

`A298077(n+1)/2`
-/

namespace A130178.P3913536468015875520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298077 (n + 1) : ℚ) / 2

end

end A130178.P3913536468015875520

/-! ## A130178.P11020814113397771293

`A000217(A181902(n+2))`
-/

namespace A130178.P11020814113397771293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A181902 (n + 2)).toNat

end

end A130178.P11020814113397771293

/-! ## A130178.P2433541117472801945

`A000217(floor(sqrt(A298077(n+1))))`
-/

namespace A130178.P2433541117472801945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.sqrt (A298077 (n + 1))).toNat

end

end A130178.P2433541117472801945

/-! ## A130178.P6633604425250734161

`A000217(round(sqrt(A298077(n+1))))`
-/

namespace A130178.P6633604425250734161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (A298077 (n + 1) : ℝ))).toNat

end

end A130178.P6633604425250734161

/-! ## A130178.P5277402089638820851

`A161680(A181902(n+2)+1)`
-/

namespace A130178.P5277402089638820851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A181902 (n + 2) + 1).toNat

end

end A130178.P5277402089638820851

/-! ## A130178.P11270288080714941746

`A002378(A181902(n+2))/A000005(A126715(n))`
-/

namespace A130178.P11270288080714941746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A181902 (n + 2)).toNat : ℚ) / (A000005 (A126715 n).toNat : ℚ)

end

end A130178.P11270288080714941746

/-! ## A130178.P1379799043766485692

`∩[A024675(n+1), A000217(n)]`
-/

namespace A130178.P1379799043766485692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130178.P1379799043766485692

/-! ## A130178.P13623263344014663065

`∩[A145025(n+1), A000217(n)]`
-/

namespace A130178.P13623263344014663065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130178.P13623263344014663065

/-! ## A130178.P17869999404546575070

`∩[A024675(n+1), A253145(n)]`
-/

namespace A130178.P17869999404546575070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130178.P17869999404546575070

/-! ## A130178.P11588759102816994950

`∩[A145025(n+1), A253145(n)]`
-/

namespace A130178.P11588759102816994950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130178.P11588759102816994950

/-!
# A130179: Largest k such that k <= 81*(number of digits of k^n)*(number of digits of k^(n+1)).

The programs for A130179, there is no canonical definition to state claims against.
-/

/-! ## A130179.P4402076818274231517

`81*A130085(n+1)`
-/

namespace A130179.P4402076818274231517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A130085 (n + 1)

end

end A130179.P4402076818274231517

/-! ## A130179.P10843299552927667414

`A097399(A130085(n+1))`
-/

namespace A130179.P10843299552927667414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097399 (A130085 (n + 1)).toNat

end

end A130179.P10843299552927667414

/-!
# A130183: Row sums of triangle A130182.

The programs for A130183, there is no canonical definition to state claims against.
-/

/-! ## A130183.P11038108699545950177

`A079415(n+1)-A079438(A224239(n+1))`
-/

namespace A130183.P11038108699545950177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079415 (n + 1) - A079438 (A224239 (n + 1)).toNat

end

end A130183.P11038108699545950177

/-!
# A130184: Row sums of unsigned triangle A130182.

The programs for A130184, there is no canonical definition to state claims against.
-/

/-! ## A130184.P14931890009373545174

`or(A008619(A132473(n)), A186372(n))`
-/

namespace A130184.P14931890009373545174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A132473 n).toNat) (A186372 n)

end

end A130184.P14931890009373545174

/-! ## A130184.P4376436967144330142

`or(A008619(A132473(n)), A123260(n+1))`
-/

namespace A130184.P4376436967144330142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A132473 n).toNat) (A123260 (n + 1))

end

end A130184.P4376436967144330142

/-!
# A130185: Third column (m=2) of triangle A130182.

The programs for A130185, there is no canonical definition to state claims against.
-/

/-! ## A130185.P14184461976748968613

`A129465(n)+(n+2)*n*a(n-1)` with `a(0)=1`
-/

namespace A130185.P14184461976748968613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129465 n + (n + 2 : ℤ) * ((n : ℤ) * a (n - 1))

end

end A130185.P14184461976748968613

/-! ## A130185.P12471954503895459360

`(n+2)*n*a(n-1)+A142070(A000217(n))*A323618(n+4)` with `a(0)=1`
-/

namespace A130185.P12471954503895459360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) * ((n : ℤ) * a (n - 1)) + A142070 (A000217 n).toNat * A323618 (n + 4)

end

end A130185.P12471954503895459360

/-! ## A130185.P8783616439544241137

`A130182(∑[n+2]+3)`
-/

namespace A130185.P8783616439544241137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130182 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A130185.P8783616439544241137

/-!
# A130186: Fourth column (m=3) of triangle A130182.

The programs for A130186, there is no canonical definition to state claims against.
-/

/-! ## A130186.P3984775744022873990

`A130182(∑[n+3]+6)`
-/

namespace A130186.P3984775744022873990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130182 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A130186.P3984775744022873990

/-!
# A130187: Numerators of rationals r(n) related to the z-sequence of the Sheffer matrix A060821 for Hermite polynomials.

The programs for A130187, there is no canonical definition to state claims against.
-/

/-! ## A130187.P4908067510714670820

`∏[gcd(2*n, -∏[-n^(n%2)])]*A036069(2*(n+1))`
-/

namespace A130187.P4908067510714670820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (-(∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A036069 (2 * (n + 1))

end

end A130187.P4908067510714670820

/-! ## A130187.P15480698397019062159

`ratio[A001790(n)]*A001147(n)`
-/

namespace A130187.P15480698397019062159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A001147 n : ℚ)

end

end A130187.P15480698397019062159

/-! ## A130187.P10178318692993564194

`A001790(n+1)*A049606(n)`
-/

namespace A130187.P10178318692993564194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (n + 1) * A049606 n

end

end A130187.P10178318692993564194

/-! ## A130187.P9714458590627532913

`A004730(2*n+1)*A049606(n)`
-/

namespace A130187.P9714458590627532913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * n + 1) * A049606 n

end

end A130187.P9714458590627532913

/-! ## A130187.P11280349989087474330

`A004730(2*n+1)*A095987(2*n)`
-/

namespace A130187.P11280349989087474330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * n + 1) * A095987 (2 * n)

end

end A130187.P11280349989087474330

/-! ## A130187.P11301379638164781493

`∏[gcd(n, A046983(n))]*A036069(2*(n+1))`
-/

namespace A130187.P11301379638164781493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046983 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A036069 (2 * (n + 1))

end

end A130187.P11301379638164781493

/-! ## A130187.P17921018937785128190

`∏[gcd(2*n, A290716(n))]*A036069(2*(n+1))`
-/

namespace A130187.P17921018937785128190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A290716 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A036069 (2 * (n + 1))

end

end A130187.P17921018937785128190

/-! ## A130187.P12358014230847206633

`A001790(n+1)/A001790(n)*A001147(n)`
-/

namespace A130187.P12358014230847206633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 (n + 1) : ℚ) / (A001790 n : ℚ) * (A001147 n : ℚ)

end

end A130187.P12358014230847206633

/-! ## A130187.P3608246750033080863

`A001790(n+1)/A046161(n)*A000165(n)`
-/

namespace A130187.P3608246750033080863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 (n + 1) : ℚ) / (A046161 n : ℚ) * (A000165 n : ℚ)

end

end A130187.P3608246750033080863

/-! ## A130187.P1374540206995672434

`A001790(n+1)/A060818(n)*A000142(n)`
-/

namespace A130187.P1374540206995672434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 (n + 1) : ℚ) / (A060818 n : ℚ) * (A000142 n : ℚ)

end

end A130187.P1374540206995672434

/-!
# A130188: Denominators of rationals r(n) related to the z-sequence of the Sheffer matrix A060821 for Hermite polynomials.

The programs for A130188, the canonical program `A130188.P13311901401856637767` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130188 has offset 0).

The definition of A130188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130188.P7931597747972062193

`2^(val(n+1, 2)+n)`
-/

namespace A130188.P7931597747972062193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + n)

end

end A130188.P7931597747972062193

namespace A130188

/-- `2^(val(n+1, 2)+n)` -/
def P7931597747972062193.Spec : Prop :=
  ∀ n, (P7931597747972062193.a n : ℤ) = A130188 n

end A130188

/-! ## A130188.P13311901401856637767

`2^n*gcd(n+1, 2^n)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130188

/-- `2^n*gcd(n+1, 2^n)` -/
def P13311901401856637767.Spec : Prop :=
  ∀ n, (P13311901401856637767.a n : ℤ) = A130188 n

theorem P13311901401856637767.correct : P13311901401856637767.Spec := by
  intro n
  simp only [A130188]

end A130188

/-! ## A130188.P10982273322761146219

`2^n*and(n+1, -(n+1))`
-/

namespace A130188.P10982273322761146219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A130188.P10982273322761146219

namespace A130188

/-- `2^n*and(n+1, -(n+1))` -/
def P10982273322761146219.Spec : Prop :=
  ∀ n, P10982273322761146219.a n = A130188 n

end A130188

/-! ## A130188.P4187283454903636040

`2^(A007814(n+1)+n)`
-/

namespace A130188.P4187283454903636040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) + (n : ℤ) : ℤ)

end

end A130188.P4187283454903636040

namespace A130188

/-- `2^(A007814(n+1)+n)` -/
def P4187283454903636040.Spec : Prop :=
  ∀ n, P4187283454903636040.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P11714464880218588720

`2^n*A006519(n+1)`
-/

namespace A130188.P11714464880218588720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006519 (n + 1)

end

end A130188.P11714464880218588720

namespace A130188

/-- `2^n*A006519(n+1)` -/
def P11714464880218588720.Spec : Prop :=
  ∀ n, P11714464880218588720.a n = A130188 n

end A130188

/-! ## A130188.P14265936881837694739

`2^(A085058(n)-2+n)`
-/

namespace A130188.P14265936881837694739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A085058 n - 2 + (n : ℤ) : ℤ)

end

end A130188.P14265936881837694739

namespace A130188

/-- `2^(A085058(n)-2+n)` -/
def P14265936881837694739.Spec : Prop :=
  ∀ n, P14265936881837694739.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P245779159859319448

`2^(A001511(n+1)+n-1)`
-/

namespace A130188.P245779159859319448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001511 (n + 1) + ((n : ℤ) - 1) : ℤ)

end

end A130188.P245779159859319448

namespace A130188

/-- `2^(A001511(n+1)+n-1)` -/
def P245779159859319448.Spec : Prop :=
  ∀ n, P245779159859319448.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P15954315443170399260

`2^(n+1-A088705(n+1))`
-/

namespace A130188.P15954315443170399260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A088705 (n + 1) : ℤ)

end

end A130188.P15954315443170399260

namespace A130188

/-- `2^(n+1-A088705(n+1))` -/
def P15954315443170399260.Spec : Prop :=
  ∀ n, P15954315443170399260.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P7115978918625544461

`2^(A089080(n+2)+n-2)`
-/

namespace A130188.P7115978918625544461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A089080 (n + 2) + ((n : ℤ) - 2) : ℤ)

end

end A130188.P7115978918625544461

namespace A130188

/-- `2^(A089080(n+2)+n-2)` -/
def P7115978918625544461.Spec : Prop :=
  ∀ n, P7115978918625544461.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P16694710466216316831

`2^(n-1)*A171977(n+1)`
-/

namespace A130188.P16694710466216316831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A171977 (n + 1) : ℚ)

end

end A130188.P16694710466216316831

namespace A130188

/-- `2^(n-1)*A171977(n+1)` -/
def P16694710466216316831.Spec : Prop :=
  ∀ n, P16694710466216316831.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P2325922981020236205

`2^(n-2)*A059159(n+1)`
-/

namespace A130188.P2325922981020236205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A059159 (n + 1) : ℚ)

end

end A130188.P2325922981020236205

namespace A130188

/-- `2^(n-2)*A059159(n+1)` -/
def P2325922981020236205.Spec : Prop :=
  ∀ n, P2325922981020236205.a n = (A130188 n : ℚ)

end A130188

/-! ## A130188.P8794551779228412166

`A000079(A007814(n+1)+n)`
-/

namespace A130188.P8794551779228412166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1) + (n : ℤ)).toNat

end

end A130188.P8794551779228412166

namespace A130188

/-- `A000079(A007814(n+1)+n)` -/
def P8794551779228412166.Spec : Prop :=
  ∀ n, P8794551779228412166.a n = A130188 n

end A130188

/-! ## A130188.P2075370117792253926

`A011782(A001511(n+1)+n)`
-/

namespace A130188.P2075370117792253926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A001511 (n + 1) + (n : ℤ)).toNat

end

end A130188.P2075370117792253926

namespace A130188

/-- `A011782(A001511(n+1)+n)` -/
def P2075370117792253926.Spec : Prop :=
  ∀ n, P2075370117792253926.a n = A130188 n

end A130188

/-! ## A130188.P11490162154242662187

`A001316(n)*A060818(n+1)`
-/

namespace A130188.P11490162154242662187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A060818 (n + 1)

end

end A130188.P11490162154242662187

namespace A130188

/-- `A001316(n)*A060818(n+1)` -/
def P11490162154242662187.Spec : Prop :=
  ∀ n, P11490162154242662187.a n = A130188 n

end A130188

/-! ## A130188.P4007761612394863322

`A056450(n)*A160467(n+1)`
-/

namespace A130188.P4007761612394863322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A160467 (n + 1)

end

end A130188.P4007761612394863322

namespace A130188

/-- `A056450(n)*A160467(n+1)` -/
def P4007761612394863322.Spec : Prop :=
  ∀ n, P4007761612394863322.a n = A130188 n

end A130188

/-! ## A130188.P14860972173656549711

`A118827(n+1)*A122803(n)`
-/

namespace A130188.P14860972173656549711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) * A122803 n

end

end A130188.P14860972173656549711

namespace A130188

/-- `A118827(n+1)*A122803(n)` -/
def P14860972173656549711.Spec : Prop :=
  ∀ n, P14860972173656549711.a n = A130188 n

end A130188

/-! ## A130188.P6722159538751431188

`A060632(n)*A240988(n+1)`
-/

namespace A130188.P6722159538751431188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n * A240988 (n + 1)

end

end A130188.P6722159538751431188

namespace A130188

/-- `A060632(n)*A240988(n+1)` -/
def P6722159538751431188.Spec : Prop :=
  ∀ n, P6722159538751431188.a n = A130188 n

end A130188

/-! ## A130188.P16565802960469127545

`A213173(n)*A297402(n+1)`
-/

namespace A130188.P16565802960469127545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n * A297402 (n + 1)

end

end A130188.P16565802960469127545

namespace A130188

/-- `A213173(n)*A297402(n+1)` -/
def P16565802960469127545.Spec : Prop :=
  ∀ n, P16565802960469127545.a n = A130188 n

end A130188

/-! ## A130188.P15594935456923130670

`A000079(A050605(2*n)+n)`
-/

namespace A130188.P15594935456923130670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A050605 (2 * n) + (n : ℤ)).toNat

end

end A130188.P15594935456923130670

namespace A130188

/-- `A000079(A050605(2*n)+n)` -/
def P15594935456923130670.Spec : Prop :=
  ∀ n, P15594935456923130670.a n = A130188 n

end A130188

/-! ## A130188.P13149489106606181534

`A131577(A094267(2*n)+n)`
-/

namespace A130188.P13149489106606181534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A094267 (2 * n) + (n : ℤ)).toNat

end

end A130188.P13149489106606181534

namespace A130188

/-- `A131577(A094267(2*n)+n)` -/
def P13149489106606181534.Spec : Prop :=
  ∀ n, P13149489106606181534.a n = A130188 n

end A130188

/-!
# A130190: Denominators of z-sequence for the Sheffer matrix (triangle) A094816 (coefficients of Poisson-Charlier polynomials).

The programs for A130190, there is no canonical definition to state claims against.
-/

/-! ## A130190.P3438243570490961001

`(n+1)*A333226(A007661(n))`
-/

namespace A130190.P3438243570490961001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333226 (A007661 n).toNat

end

end A130190.P3438243570490961001

/-! ## A130190.P4309239802813509651

`lcm(n+1, A289236(A182522(n)))`
-/

namespace A130190.P4309239802813509651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A289236 (A182522 n).toNat)

end

end A130190.P4309239802813509651

/-! ## A130190.P17472685040427466007

`A064538(n)/A053383(A026641(n))`
-/

namespace A130190.P17472685040427466007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064538 n : ℚ) / (A053383 (A026641 n).toNat : ℚ)

end

end A130190.P17472685040427466007

/-! ## A130190.P17101057968911701996

`A064538(n)/A091717(A003946(n))`
-/

namespace A130190.P17101057968911701996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064538 n : ℚ) / (A091717 (A003946 n).toNat : ℚ)

end

end A130190.P17101057968911701996

/-! ## A130190.P8248913622849686786

`A064538(n)/A091717(A169161(n))`
-/

namespace A130190.P8248913622849686786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064538 n : ℚ) / (A091717 (A169161 n).toNat : ℚ)

end

end A130190.P8248913622849686786

/-!
# A130191: Square of the Stirling2 matrix A048993.

The programs for A130191, there is no canonical definition to state claims against.
-/

/-! ## A130191.P17953676720776320570

`A298213(n)+A067169(A130534(n))`
-/

namespace A130191.P17953676720776320570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298213 n + A067169 ((A130534 n).toNat + 11)

end

end A130191.P17953676720776320570

/-! ## A130191.P1595385420846181433

`A067169(A130534(n))+A004248(n)*A204330(A094587(n))`
-/

namespace A130191.P1595385420846181433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067169 ((A130534 n).toNat + 11) + A004248 n * A204330 (A094587 n).toNat

end

end A130191.P1595385420846181433

/-! ## A130191.P8159075251953370948

`A298213(n)+A067169(A097331(n))`
-/

namespace A130191.P8159075251953370948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298213 n + A067169 ((A097331 n).toNat + 11)

end

end A130191.P8159075251953370948

/-! ## A130191.P16298471813359340107

`A067169(A097331(n))+A004248(n)*A204330(A094587(n))`
-/

namespace A130191.P16298471813359340107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067169 ((A097331 n).toNat + 11) + A004248 n * A204330 (A094587 n).toNat

end

end A130191.P16298471813359340107

/-! ## A130191.P4197089694992427723

`A102705(A298213(n))`
-/

namespace A130191.P4197089694992427723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A298213 n).toNat

end

end A130191.P4197089694992427723

/-!
# A130192: Smallest k with k*nextPrime(n) > nextPrime(k*n).

The programs for A130192, there is no canonical definition to state claims against.
-/

/-! ## A130192.P7990124841288197929

`A080224(n+9)+A000005(A337649(n+9))`
-/

namespace A130192.P7990124841288197929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 9) + A000005 (A337649 (n + 9)).toNat

end

end A130192.P7990124841288197929

/-! ## A130192.P1242822752972886893

`val(A156253(A216348(comp[2*n])), 8)+2`
-/

namespace A130192.P1242822752972886893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A156253 (A216348 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat).toNat 8 + 2

end

end A130192.P1242822752972886893

/-!
# A130193: a(0)=1. a(n+1) = a(ceiling(n/a(n))) + 1.

The programs for A130193, the canonical program `A130193.P2954068372247020023` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130193 has offset 0).

The definition of A130193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130193.P2954068372247020023

`a(ceil((n-1)/a(n-1)))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130193

/-- `a(ceil((n-1)/a(n-1)))+1` -/
def P2954068372247020023.Spec : Prop :=
  ∀ n, (P2954068372247020023.a n : ℤ) = A130193 n

theorem P2954068372247020023.correct : P2954068372247020023.Spec := by
  intro n
  simp only [A130193]

end A130193

/-! ## A130193.P16425557725895245053

`a(floor((n-2)/a(n-1))+1)+1` with `a(0)=1`
-/

namespace A130193.P16425557725895245053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊((n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋ + 1).toNat + 1

end

end A130193.P16425557725895245053

namespace A130193

/-- `a(floor((n-2)/a(n-1))+1)+1` -/
def P16425557725895245053.Spec : Prop :=
  ∀ n, (P16425557725895245053.a n : ℤ) = A130193 n

end A130193

/-! ## A130193.P1518616284189318253

`1-floor(-a(ceil((n-1)/a(n-1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130193.P1518616284189318253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (-a ⌈((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌉.toNat)

end

end A130193.P1518616284189318253

namespace A130193

/-- `1-floor(-a(ceil((n-1)/a(n-1))))` -/
def P1518616284189318253.Spec : Prop :=
  ∀ n, P1518616284189318253.a n = A130193 n

end A130193

/-! ## A130193.P12431020192274235520

`A325044(a(ceil((n-1)/a(n-1))))` with `a(0)=1`
-/

namespace A130193.P12431020192274235520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325044 (a ⌈((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌉.toNat).toNat

end

end A130193.P12431020192274235520

namespace A130193

/-- `A325044(a(ceil((n-1)/a(n-1))))` -/
def P12431020192274235520.Spec : Prop :=
  ∀ n, P12431020192274235520.a n = A130193 n

end A130193

/-! ## A130193.P11365622491384091586

`A070939(A206916(n)+A140358(n))`
-/

namespace A130193.P11365622491384091586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A206916 n + A140358 n).toNat

end

end A130193.P11365622491384091586

namespace A130193

/-- `A070939(A206916(n)+A140358(n))` -/
def P11365622491384091586.Spec : Prop :=
  ∀ n, P11365622491384091586.a n = A130193 n

end A130193

/-! ## A130193.P3922417239292373958

`A244160(or(A106466(n), A324333(n+1)))`
-/

namespace A130193.P3922417239292373958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (Int.lor (A106466 n) (A324333 (n + 1))).toNat

end

end A130193.P3922417239292373958

namespace A130193

/-- `A244160(or(A106466(n), A324333(n+1)))` -/
def P3922417239292373958.Spec : Prop :=
  ∀ n, P3922417239292373958.a n = A130193 n

end A130193

/-! ## A130193.P6194290387949412816

`A084506(A352520(n)+A073757(n+1))`
-/

namespace A130193.P6194290387949412816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (A352520 n + A073757 (n + 1)).toNat

end

end A130193.P6194290387949412816

namespace A130193

/-- `A084506(A352520(n)+A073757(n+1))` -/
def P6194290387949412816.Spec : Prop :=
  ∀ n, P6194290387949412816.a n = A130193 n

end A130193

/-! ## A130193.P15720399062504958042

`A213711(A337243(A323436(n)²)+A213711(n))`
-/

namespace A130193.P15720399062504958042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A337243 (A323436 n ^ 2).toNat + A213711 n).toNat

end

end A130193.P15720399062504958042

namespace A130193

/-- `A213711(A337243(A323436(n)²)+A213711(n))` -/
def P15720399062504958042.Spec : Prop :=
  ∀ n, P15720399062504958042.a n = A130193 n

end A130193

/-! ## A130193.P10381570669246559804

`A258198(lcm(2, A007623(n+1)))`
-/

namespace A130193.P10381570669246559804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (Int.lcm 2 (A007623 (n + 1)))

end

end A130193.P10381570669246559804

namespace A130193

/-- `A258198(lcm(2, A007623(n+1)))` -/
def P10381570669246559804.Spec : Prop :=
  ∀ n, P10381570669246559804.a n = A130193 n

end A130193

/-!
# A130194: Let M = lower triangular matrix with 1's on and below the main diagonal, with columns multiplied by +1, +1, -1, -1, repeated; form M^2; read across rows of resulting triangle.

The programs for A130194, the canonical program `A130194.P2127097529341530346` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130194 has offset 1).

The definition of A130194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130194.P5389409070348600412

`A009531(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A130194.P5389409070348600412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A130194.P5389409070348600412

namespace A130194

/-- `A009531(C(comp[∑[n]]-n, 2)-n)` -/
def P5389409070348600412.Spec : Prop :=
  ∀ n, P5389409070348600412.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P12918581380789146326

`A009531(∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A130194.P12918581380789146326
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A130194.P12918581380789146326

namespace A130194

/-- `A009531(∑[char[∑[n]]]-(n-C(∑[char[∑[n]]], 2)))` -/
def P12918581380789146326.Spec : Prop :=
  ∀ n, P12918581380789146326.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P2127097529341530346

`A009531(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A130194

/-- `A009531(A004736(n+1))` -/
def P2127097529341530346.Spec : Prop :=
  ∀ n, P2127097529341530346.a n = A130194 (n + 1)

theorem P2127097529341530346.correct : P2127097529341530346.Spec := by
  intro n
  simp only [A130194, Nat.add_sub_cancel]

end A130194

/-! ## A130194.P12482751312545555709

`A009531(A025581(n)+1)`
-/

namespace A130194.P12482751312545555709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A025581 n + 1).toNat

end

end A130194.P12482751312545555709

namespace A130194

/-- `A009531(A025581(n)+1)` -/
def P12482751312545555709.Spec : Prop :=
  ∀ n, P12482751312545555709.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P5475275337761751767

`A009531(sqrt(A055461(n+1)))`
-/

namespace A130194.P5475275337761751767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat

end

end A130194.P5475275337761751767

namespace A130194

/-- `A009531(sqrt(A055461(n+1)))` -/
def P5475275337761751767.Spec : Prop :=
  ∀ n, P5475275337761751767.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P3787091955689687251

`A009531(log2(A090988(n+1)))`
-/

namespace A130194.P3787091955689687251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat

end

end A130194.P3787091955689687251

namespace A130194

/-- `A009531(log2(A090988(n+1)))` -/
def P3787091955689687251.Spec : Prop :=
  ∀ n, P3787091955689687251.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P5256408184397751256

`A009531(log2(A130321(n))+1)`
-/

namespace A130194.P5256408184397751256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat

end

end A130194.P5256408184397751256

namespace A130194

/-- `A009531(log2(A130321(n))+1)` -/
def P5256408184397751256.Spec : Prop :=
  ∀ n, P5256408184397751256.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P15547409177935005435

`A009531(log2(A130330(n)+1))`
-/

namespace A130194.P15547409177935005435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n + 1 : ℝ))).toNat

end

end A130194.P15547409177935005435

namespace A130194

/-- `A009531(log2(A130330(n)+1))` -/
def P15547409177935005435.Spec : Prop :=
  ∀ n, P15547409177935005435.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P1365791916026744884

`A009531(log2(2*A130321(n)))`
-/

namespace A130194.P1365791916026744884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A130321 n : ℝ))).toNat

end

end A130194.P1365791916026744884

namespace A130194

/-- `A009531(log2(2*A130321(n)))` -/
def P1365791916026744884.Spec : Prop :=
  ∀ n, P1365791916026744884.a n = A130194 (n + 1)

end A130194

/-! ## A130194.P11681429537479382849

`A009531(A193592(comp[∑[n]]))`
-/

namespace A130194.P11681429537479382849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A130194.P11681429537479382849

namespace A130194

/-- `A009531(A193592(comp[∑[n]]))` -/
def P11681429537479382849.Spec : Prop :=
  ∀ n, P11681429537479382849.a n = A130194 (n + 1)

end A130194

/-!
# A130195: Row sums of triangle A130194.

The programs for A130195, the canonical program `A130195.P7263040017319937097` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130195 has offset 1).

The definition of A130195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130195.P7263040017319937097

`a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=-2, a(4)=-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130195

/-- `a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P7263040017319937097.Spec : Prop :=
  ∀ n, P7263040017319937097.a n = A130195 (n + 1)

theorem P7263040017319937097.correct : P7263040017319937097.Spec := by
  intro n
  simp only [A130195, Nat.add_sub_cancel]

end A130195

/-! ## A130195.P16517246847427054956

`∑[∑[xor(n, 1-n%4)]]`
-/

namespace A130195.P16517246847427054956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - ((n % 4 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130195.P16517246847427054956

namespace A130195

/-- `∑[∑[xor(n, 1-n%4)]]` -/
def P16517246847427054956.Spec : Prop :=
  ∀ n, P16517246847427054956.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P5544980417559935861

`∑[∑[xor(n, 1-and(3, n))]]`
-/

namespace A130195.P5544980417559935861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - (Nat.land 3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130195.P5544980417559935861

namespace A130195

/-- `∑[∑[xor(n, 1-and(3, n))]]` -/
def P5544980417559935861.Spec : Prop :=
  ∀ n, P5544980417559935861.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P4646528545490088115

`a(∑[n]%2)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P4646528545490088115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) - a (n - 2)

end

end A130195.P4646528545490088115

namespace A130195

/-- `a(∑[n]%2)-a(n-2)` -/
def P4646528545490088115.Spec : Prop :=
  ∀ n, P4646528545490088115.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P12705329082576057855

`2-(a(n-2)+(-1)^∑[n])` with `a(0)=1, a(1)=3`
-/

namespace A130195.P12705329082576057855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (a (n - 2) + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130195.P12705329082576057855

namespace A130195

/-- `2-(a(n-2)+(-1)^∑[n])` -/
def P12705329082576057855.Spec : Prop :=
  ∀ n, P12705329082576057855.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P14686048303916438213

`2-a(n-2)-(-1)^∑[n]` with `a(0)=1, a(1)=3`
-/

namespace A130195.P14686048303916438213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - a (n - 2) - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130195.P14686048303916438213

namespace A130195

/-- `2-a(n-2)-(-1)^∑[n]` -/
def P14686048303916438213.Spec : Prop :=
  ∀ n, P14686048303916438213.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P10685985749756686826

`and(2, n+1)+1-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P10685985749756686826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Nat.land 2 (n + 1) : ℤ) + (1 - a (n - 2))

end

end A130195.P10685985749756686826

namespace A130195

/-- `and(2, n+1)+1-a(n-2)` -/
def P10685985749756686826.Spec : Prop :=
  ∀ n, P10685985749756686826.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P9433795953075843726

`gcd(3, (n+2)%4)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P9433795953075843726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Nat.gcd 3 ((n + 2) % 4) : ℤ) - a (n - 2)

end

end A130195.P9433795953075843726

namespace A130195

/-- `gcd(3, (n+2)%4)-a(n-2)` -/
def P9433795953075843726.Spec : Prop :=
  ∀ n, P9433795953075843726.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P14309813315989766246

`∏[1/a(n-2)]-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P14309813315989766246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  1 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A130195.P14309813315989766246

namespace A130195

/-- `∏[1/a(n-2)]-a(n-2)` -/
def P14309813315989766246.Spec : Prop :=
  ∀ n, P14309813315989766246.a n = (A130195 (n + 1) : ℚ)

end A130195

/-! ## A130195.P5158831757447005175

`a(and(1, a(n-1)))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P5158831757447005175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (Int.land 1 (a (n - 1))).toNat - a (n - 2)

end

end A130195.P5158831757447005175

namespace A130195

/-- `a(and(1, a(n-1)))-a(n-2)` -/
def P5158831757447005175.Spec : Prop :=
  ∀ n, P5158831757447005175.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P10036615536271675778

`(n²+1+n)%4-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P10036615536271675778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (((n ^ 2 + 1 + n) % 4 : ℕ) : ℤ) - a (n - 2)

end

end A130195.P10036615536271675778

namespace A130195

/-- `(n²+1+n)%4-a(n-2)` -/
def P10036615536271675778.Spec : Prop :=
  ∀ n, P10036615536271675778.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P10186179285715350319

`2-(-1)^a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P10186179285715350319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (-1 : ℝ) ^ (a (n - 1)) - a (n - 2)

end

end A130195.P10186179285715350319

namespace A130195

/-- `2-(-1)^a(n-1)-a(n-2)` -/
def P10186179285715350319.Spec : Prop :=
  ∀ n, P10186179285715350319.a n = (A130195 (n + 1) : ℝ)

end A130195

/-! ## A130195.P2093537361193671615

`a(2-gcd(2, a(n-1)))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P2093537361193671615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (2 - Int.gcd 2 (a (n - 1))) - a (n - 2)

end

end A130195.P2093537361193671615

namespace A130195

/-- `a(2-gcd(2, a(n-1)))-a(n-2)` -/
def P2093537361193671615.Spec : Prop :=
  ∀ n, P2093537361193671615.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P12949209352366541971

`a(floor(1/a(n-2))²)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P12949209352366541971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (⌊1 / (a (n - 2) : ℚ)⌋ ^ 2).toNat - a (n - 2)

end

end A130195.P12949209352366541971

namespace A130195

/-- `a(floor(1/a(n-2))²)-a(n-2)` -/
def P12949209352366541971.Spec : Prop :=
  ∀ n, P12949209352366541971.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P17252206874464033095

`∑[∑[A127630(n)]]`
-/

namespace A130195.P17252206874464033095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130195.P17252206874464033095

namespace A130195

/-- `∑[∑[A127630(n)]]` -/
def P17252206874464033095.Spec : Prop :=
  ∀ n, P17252206874464033095.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P10556435755746922559

`∑[A009531(n+1)]`
-/

namespace A130195.P10556435755746922559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130195.P10556435755746922559

namespace A130195

/-- `∑[A009531(n+1)]` -/
def P10556435755746922559.Spec : Prop :=
  ∀ n, P10556435755746922559.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P8044747265359796456

`A084101(n)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A130195.P8044747265359796456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A084101 n - a (n - 2)

end

end A130195.P8044747265359796456

namespace A130195

/-- `A084101(n)-a(n-2)` -/
def P8044747265359796456.Spec : Prop :=
  ∀ n, P8044747265359796456.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P3557294398157821280

`∑[∑[A009001(A109613(n))]]`
-/

namespace A130195.P3557294398157821280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A109613 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130195.P3557294398157821280

namespace A130195

/-- `∑[∑[A009001(A109613(n))]]` -/
def P3557294398157821280.Spec : Prop :=
  ∀ n, P3557294398157821280.a n = A130195 (n + 1)

end A130195

/-! ## A130195.P7720870943666660873

`∑[∑[A009001(2*n+1)]/A009001(n+1)]`
-/

namespace A130195.P7720870943666660873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A009001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130195.P7720870943666660873

namespace A130195

/-- `∑[∑[A009001(2*n+1)]/A009001(n+1)]` -/
def P7720870943666660873.Spec : Prop :=
  ∀ n, P7720870943666660873.a n = (A130195 (n + 1) : ℚ)

end A130195

/-!
# A130196: Period 3: repeat [1, 2, 2].

The programs for A130196, the canonical program `A130196.P16023145605552771640` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130196 has offset 0).

The definition of A130196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130196.P16023145605552771640

`floor(5*(n+1)/3)-floor(5*n/3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130196

/-- `floor(5*(n+1)/3)-floor(5*n/3)` -/
def P16023145605552771640.Spec : Prop :=
  ∀ n, P16023145605552771640.a n = A130196 n

theorem P16023145605552771640.correct : P16023145605552771640.Spec := by
  intro n
  simp only [A130196]

end A130196

/-!
# A130197: Binomial transform of A130196.

The programs for A130197, the canonical program `A130197.P1298093891695330778` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130197 has offset 1).

The definition of A130197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130197.P1298093891695330778

`2*A055248(n)-A135278(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A130197

/-- `2*A055248(n)-A135278(n)` -/
def P1298093891695330778.Spec : Prop :=
  ∀ n, P1298093891695330778.a n = A130197 (n + 1)

theorem P1298093891695330778.correct : P1298093891695330778.Spec := by
  intro n
  simp only [A130197, Nat.add_sub_cancel]

end A130197

/-! ## A130197.P9643577209823933795

`2*A055248(n)-A074909(n+1)`
-/

namespace A130197.P9643577209823933795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 n - A074909 (n + 1)

end

end A130197.P9643577209823933795

namespace A130197

/-- `2*A055248(n)-A074909(n+1)` -/
def P9643577209823933795.Spec : Prop :=
  ∀ n, P9643577209823933795.a n = A130197 (n + 1)

end A130197

/-! ## A130197.P5208722235027305141

`A104709(n)-A206735(n+1)`
-/

namespace A130197.P5208722235027305141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 n - A206735 (n + 1)

end

end A130197.P5208722235027305141

namespace A130197

/-- `A104709(n)-A206735(n+1)` -/
def P5208722235027305141.Spec : Prop :=
  ∀ n, P5208722235027305141.a n = A130197 (n + 1)

end A130197

/-! ## A130197.P2406088960444891277

`A129689(A080036(n+1))`
-/

namespace A130197.P2406088960444891277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129689 (A080036 (n + 1)).toNat

end

end A130197.P2406088960444891277

namespace A130197

/-- `A129689(A080036(n+1))` -/
def P2406088960444891277.Spec : Prop :=
  ∀ n, P2406088960444891277.a n = A130197 (n + 1)

end A130197

/-! ## A130197.P1880097255965077640

`A055248(A014132(n+1))-A071919(A014132(n+1))`
-/

namespace A130197.P1880097255965077640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A014132 (n + 1)).toNat - A071919 (A014132 (n + 1)).toNat

end

end A130197.P1880097255965077640

namespace A130197

/-- `A055248(A014132(n+1))-A071919(A014132(n+1))` -/
def P1880097255965077640.Spec : Prop :=
  ∀ n, P1880097255965077640.a n = A130197 (n + 1)

end A130197

/-!
# A130198: Single paradiddle. In percussion, the paradiddle is a four-note drum sticking pattern consisting of two alternating notes followed by two notes on the same hand.

The programs for A130198, the canonical program `A130198.P16515444823779795468` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130198 has offset 0).

The definition of A130198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130198.P16515444823779795468

`a(n-8)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A130198

/-- `a(n-8)` -/
def P16515444823779795468.Spec : Prop :=
  ∀ n, (P16515444823779795468.a n : ℤ) = A130198 n

theorem P16515444823779795468.correct : P16515444823779795468.Spec := by
  intro n
  simp only [A130198]

end A130198

/-!
# A130199: Evil oblong (promic) numbers.

The programs for A130199, the canonical program `A130199.P3088622024897580555` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130199 has offset 1).

The definition of A130199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130199.P2358789379460068258

`2*A130200(n+1)`
-/

namespace A130199.P2358789379460068258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130200 (n + 1)

end

end A130199.P2358789379460068258

namespace A130199

/-- `2*A130200(n+1)` -/
def P2358789379460068258.Spec : Prop :=
  ∀ n, P2358789379460068258.a n = A130199 (n + 1)

end A130199

/-! ## A130199.P3088622024897580555

`record[(n+1)*n*A228039(2*n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130199

/-- `record[(n+1)*n*A228039(2*n+1)]` -/
def P3088622024897580555.Spec : Prop :=
  ∀ n, P3088622024897580555.a n = A130199 (n + 1)

theorem P3088622024897580555.correct : P3088622024897580555.Spec := by
  intro n
  simp only [A130199, Nat.add_sub_cancel]

end A130199

/-! ## A130199.P10840013536155706918

`A130200(A000027(n+1))+A130200(n+1)`
-/

namespace A130199.P10840013536155706918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130200 (A000027 (n + 1)).toNat + A130200 (n + 1)

end

end A130199.P10840013536155706918

namespace A130199

/-- `A130200(A000027(n+1))+A130200(n+1)` -/
def P10840013536155706918.Spec : Prop :=
  ∀ n, P10840013536155706918.a n = A130199 (n + 1)

end A130199

/-! ## A130199.P10537038913810586716

`A130200(A028310(n+1))+A130200(n+1)`
-/

namespace A130199.P10537038913810586716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130200 (A028310 (n + 1)).toNat + A130200 (n + 1)

end

end A130199.P10537038913810586716

namespace A130199

/-- `A130200(A028310(n+1))+A130200(n+1)` -/
def P10537038913810586716.Spec : Prop :=
  ∀ n, P10537038913810586716.a n = A130199 (n + 1)

end A130199

/-! ## A130199.P1211685252837361489

`A130200(n+1)+A130200((n+1)%A000028(n+1))`
-/

namespace A130199.P1211685252837361489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130200 (n + 1) + A130200 (Int.tmod (n + 1 : ℤ) (A000028 (n + 1))).toNat

end

end A130199.P1211685252837361489

namespace A130199

/-- `A130200(n+1)+A130200((n+1)%A000028(n+1))` -/
def P1211685252837361489.Spec : Prop :=
  ∀ n, P1211685252837361489.a n = A130199 (n + 1)

end A130199

/-! ## A130199.P5959466020377133546

`A130200(n+1)+A130200(n+1)%A006010(n+1)`
-/

namespace A130199.P5959466020377133546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130200 (n + 1) + Int.tmod (A130200 (n + 1)) (A006010 (n + 1))

end

end A130199.P5959466020377133546

namespace A130199

/-- `A130200(n+1)+A130200(n+1)%A006010(n+1)` -/
def P5959466020377133546.Spec : Prop :=
  ∀ n, P5959466020377133546.a n = A130199 (n + 1)

end A130199

/-! ## A130199.P2156070239361269606

`filter[n²+n, A254651(#)]`
-/

namespace A130199.P2156070239361269606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j) = 1) n)

end

end A130199.P2156070239361269606

namespace A130199

/-- `filter[n²+n, A254651(#)]` -/
def P2156070239361269606.Spec : Prop :=
  ∀ n, (P2156070239361269606.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P3509263827144784718

`record[(n+1)*n*A254651(n²+n)]`
-/

namespace A130199.P3509263827144784718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A254651 (n ^ 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130199.P3509263827144784718

namespace A130199

/-- `record[(n+1)*n*A254651(n²+n)]` -/
def P3509263827144784718.Spec : Prop :=
  ∀ n, P3509263827144784718.a n = A130199 (n + 1)

end A130199

/-! ## A130199.P9314006313925899323

`∩[A125592(n+1), A002378(n)]`
-/

namespace A130199.P9314006313925899323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P9314006313925899323

namespace A130199

/-- `∩[A125592(n+1), A002378(n)]` -/
def P9314006313925899323.Spec : Prop :=
  ∀ n, (P9314006313925899323.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P17930447741692934616

`∩[A125592(n+1), A226023(n)]`
-/

namespace A130199.P17930447741692934616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P17930447741692934616

namespace A130199

/-- `∩[A125592(n+1), A226023(n)]` -/
def P17930447741692934616.Spec : Prop :=
  ∀ n, (P17930447741692934616.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P7868912273442917152

`∩[A125592(n+1), A302488(n)]`
-/

namespace A130199.P7868912273442917152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P7868912273442917152

namespace A130199

/-- `∩[A125592(n+1), A302488(n)]` -/
def P7868912273442917152.Spec : Prop :=
  ∀ n, (P7868912273442917152.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P10680213738693766461

`∩[A125592(n+1), A349895(n)]`
-/

namespace A130199.P10680213738693766461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349895 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P10680213738693766461

namespace A130199

/-- `∩[A125592(n+1), A349895(n)]` -/
def P10680213738693766461.Spec : Prop :=
  ∀ n, (P10680213738693766461.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P2791288509177247989

`2*∩[A001969(n+1), A000217(n)]`
-/

namespace A130199.P2791288509177247989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P2791288509177247989

namespace A130199

/-- `2*∩[A001969(n+1), A000217(n)]` -/
def P2791288509177247989.Spec : Prop :=
  ∀ n, (P2791288509177247989.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P5213115097184039216

`∩[2*A001969(n+1), A002378(n)]`
-/

namespace A130199.P5213115097184039216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P5213115097184039216

namespace A130199

/-- `∩[2*A001969(n+1), A002378(n)]` -/
def P5213115097184039216.Spec : Prop :=
  ∀ n, (P5213115097184039216.a n : ℤ) = A130199 (n + 1)

end A130199

/-! ## A130199.P7745036534710984942

`2*∩[A001969(n+1), A253145(n)]`
-/

namespace A130199.P7745036534710984942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130199.P7745036534710984942

namespace A130199

/-- `2*∩[A001969(n+1), A253145(n)]` -/
def P7745036534710984942.Spec : Prop :=
  ∀ n, (P7745036534710984942.a n : ℤ) = A130199 (n + 1)

end A130199

