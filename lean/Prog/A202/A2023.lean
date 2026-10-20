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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A202301: Next prime after the partial sum of the first n primes.

The programs for A202301, the canonical program `A202301.P8679729127631786445` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202301 has offset 1).

The definition of A202301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202301.P8679729127631786445

`A151800(A007504(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A202301

/-- `A151800(A007504(n+1))` -/
def P8679729127631786445.Spec : Prop :=
  ∀ n, P8679729127631786445.a n = A202301 (n + 1)

theorem P8679729127631786445.correct : P8679729127631786445.Spec := by
  intro n
  simp only [A202301, Nat.add_sub_cancel]

end A202301

/-! ## A202301.P927873345026608306

`A066039(n+1)+A001223(A061568(n+1))`
-/

namespace A202301.P927873345026608306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1) + A001223 (A061568 (n + 1)).toNat

end

end A202301.P927873345026608306

namespace A202301

/-- `A066039(n+1)+A001223(A061568(n+1))` -/
def P927873345026608306.Spec : Prop :=
  ∀ n, P927873345026608306.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P15605400035513021510

`A066039(n+1)+A001223(∑[A225854(n+1)])`
-/

namespace A202301.P15605400035513021510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1) + A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P15605400035513021510

namespace A202301

/-- `A066039(n+1)+A001223(∑[A225854(n+1)])` -/
def P15605400035513021510.Spec : Prop :=
  ∀ n, P15605400035513021510.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P6124768189648580698

`A001748(∑[A225854(n+1)]+1)/3`
-/

namespace A202301.P6124768189648580698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ) / 3

end

end A202301.P6124768189648580698

namespace A202301

/-- `A001748(∑[A225854(n+1)]+1)/3` -/
def P6124768189648580698.Spec : Prop :=
  ∀ n, P6124768189648580698.a n = (A202301 (n + 1) : ℚ)

end A202301

/-! ## A202301.P12465129930073315446

`A065091(A061568(n+1))`
-/

namespace A202301.P12465129930073315446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A061568 (n + 1)).toNat

end

end A202301.P12465129930073315446

namespace A202301

/-- `A065091(A061568(n+1))` -/
def P12465129930073315446.Spec : Prop :=
  ∀ n, P12465129930073315446.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P7058761403556925725

`A065091(∑[A225854(n+1)])`
-/

namespace A202301.P7058761403556925725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P7058761403556925725

namespace A202301

/-- `A065091(∑[A225854(n+1)])` -/
def P7058761403556925725.Spec : Prop :=
  ∀ n, P7058761403556925725.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P7385851220193770402

`A000040(A061568(n+1)+1)`
-/

namespace A202301.P7385851220193770402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061568 (n + 1) + 1).toNat

end

end A202301.P7385851220193770402

namespace A202301

/-- `A000040(A061568(n+1)+1)` -/
def P7385851220193770402.Spec : Prop :=
  ∀ n, P7385851220193770402.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P5838062458210227010

`A008578(A061568(n+1)+2)`
-/

namespace A202301.P5838062458210227010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061568 (n + 1) + 2).toNat

end

end A202301.P5838062458210227010

namespace A202301

/-- `A008578(A061568(n+1)+2)` -/
def P5838062458210227010.Spec : Prop :=
  ∀ n, P5838062458210227010.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P1463726774968428805

`A000040(∑[A225854(n+1)]+1)`
-/

namespace A202301.P1463726774968428805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A202301.P1463726774968428805

namespace A202301

/-- `A000040(∑[A225854(n+1)]+1)` -/
def P1463726774968428805.Spec : Prop :=
  ∀ n, P1463726774968428805.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P530798465498726851

`A008578(∑[A225854(n+1)]+2)`
-/

namespace A202301.P530798465498726851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A202301.P530798465498726851

namespace A202301

/-- `A008578(∑[A225854(n+1)]+2)` -/
def P530798465498726851.Spec : Prop :=
  ∀ n, P530798465498726851.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P14662260235647201956

`∑{d}[A061568(n+1)+1, A007444(#)]`
-/

namespace A202301.P14662260235647201956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061568 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A202301.P14662260235647201956

namespace A202301

/-- `∑{d}[A061568(n+1)+1, A007444(#)]` -/
def P14662260235647201956.Spec : Prop :=
  ∀ n, P14662260235647201956.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P13319784686515474444

`A151800(∑[p?[A090223(n)]])`
-/

namespace A202301.P13319784686515474444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P13319784686515474444

namespace A202301

/-- `A151800(∑[p?[A090223(n)]])` -/
def P13319784686515474444.Spec : Prop :=
  ∀ n, P13319784686515474444.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P7338235352365937369

`A151800(∑[A000040(n+1)])`
-/

namespace A202301.P7338235352365937369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P7338235352365937369

namespace A202301

/-- `A151800(∑[A000040(n+1)])` -/
def P7338235352365937369.Spec : Prop :=
  ∀ n, P7338235352365937369.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P855570022702049415

`A151800(∑[A008578(n+2)])`
-/

namespace A202301.P855570022702049415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P855570022702049415

namespace A202301

/-- `A151800(∑[A008578(n+2)])` -/
def P855570022702049415.Spec : Prop :=
  ∀ n, P855570022702049415.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P8875076976411947271

`A151800(A237589(n+1)+1)`
-/

namespace A202301.P8875076976411947271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A237589 (n + 1) + 1).toNat

end

end A202301.P8875076976411947271

namespace A202301

/-- `A151800(A237589(n+1)+1)` -/
def P8875076976411947271.Spec : Prop :=
  ∀ n, P8875076976411947271.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P14090136789495089925

`A151800(A160793(2*(n+1)))`
-/

namespace A202301.P14090136789495089925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A160793 (2 * (n + 1))).toNat

end

end A202301.P14090136789495089925

namespace A202301

/-- `A151800(A160793(2*(n+1)))` -/
def P14090136789495089925.Spec : Prop :=
  ∀ n, P14090136789495089925.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P17649553896673586756

`A151800(∑[record[A006530(n+2)]])`
-/

namespace A202301.P17649553896673586756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P17649553896673586756

namespace A202301

/-- `A151800(∑[record[A006530(n+2)]])` -/
def P17649553896673586756.Spec : Prop :=
  ∀ n, P17649553896673586756.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P12136230632143136767

`A151800(∑[record[A014963(n+2)]])`
-/

namespace A202301.P12136230632143136767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P12136230632143136767

namespace A202301

/-- `A151800(∑[record[A014963(n+2)]])` -/
def P12136230632143136767.Spec : Prop :=
  ∀ n, P12136230632143136767.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P10191046675387876486

`A151800(∑[record[A020639(n+2)]])`
-/

namespace A202301.P10191046675387876486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P10191046675387876486

namespace A202301

/-- `A151800(∑[record[A020639(n+2)]])` -/
def P10191046675387876486.Spec : Prop :=
  ∀ n, P10191046675387876486.a n = A202301 (n + 1)

end A202301

/-! ## A202301.P3634725078479553789

`A151800(∑[p?[A111234(n+1)]])`
-/

namespace A202301.P3634725078479553789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202301.P3634725078479553789

namespace A202301

/-- `A151800(∑[p?[A111234(n+1)]])` -/
def P3634725078479553789.Spec : Prop :=
  ∀ n, P3634725078479553789.a n = A202301 (n + 1)

end A202301

/-!
# A202302: Number of parameter sequences of length n for which a certain 2-factor contains a Hamiltonian path (see reference for precise definition).

The programs for A202302, there is no canonical definition to state claims against.
-/

/-! ## A202302.P6032983440714049535

`A331167(A063959(n))+A000120(n)`
-/

namespace A202302.P6032983440714049535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331167 (A063959 n).toNat + A000120 n

end

end A202302.P6032983440714049535

/-! ## A202302.P1455665774369960288

`A000720(A007134(n+1)+A000081(n))`
-/

namespace A202302.P1455665774369960288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007134 (n + 1) + A000081 n).toNat

end

end A202302.P1455665774369960288

/-!
# A202303: Drop the last digit of A023110(n).

The programs for A202303, there is no canonical definition to state claims against.
-/

/-! ## A202303.P17639493854268735438

`floor(A023110(n+1)/10)`
-/

namespace A202303.P17639493854268735438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023110 (n + 1) : ℚ) / 10⌋

end

end A202303.P17639493854268735438

/-! ## A202303.P7595707617664843055

`floor(A031149(n+1)²/10)`
-/

namespace A202303.P7595707617664843055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031149 (n + 1) ^ 2 : ℚ) / 10⌋

end

end A202303.P7595707617664843055

/-! ## A202303.P10076058948037103679

`floor(A031149(n+1)^A000034(A005408(n))/10)`
-/

namespace A202303.P10076058948037103679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031149 (n + 1) : ℚ) ^ (A000034 (A005408 n).toNat : ℤ) / 10⌋

end

end A202303.P10076058948037103679

/-! ## A202303.P14621891931244117959

`floor(A031149(n+1)^A000005(A002233(n+1))/10)`
-/

namespace A202303.P14621891931244117959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031149 (n + 1) : ℚ) ^ (A000005 (A002233 (n + 1)).toNat : ℤ) / 10⌋

end

end A202303.P14621891931244117959

/-! ## A202303.P16839891611989345017

`floor(A031149(n+1)^A000005(A008578(n+1))/10)`
-/

namespace A202303.P16839891611989345017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031149 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ) / 10⌋

end

end A202303.P16839891611989345017

/-!
# A202304: a(n) = floor(sqrt(3*n)).

The programs for A202304, the canonical program `A202304.P14584685305587752593` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202304 has offset 0).

The definition of A202304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(3*n))` (program `A202304.P14584685305587752593`, by `A202304.P14584685305587752593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202304.P14584685305587752593

`floor(sqrt(3*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202304

/-- `floor(sqrt(3*n))` -/
def P14584685305587752593.Spec : Prop :=
  ∀ n, (P14584685305587752593.a n : ℤ) = A202304 n

theorem P14584685305587752593.correct : P14584685305587752593.Spec := by
  intro n
  simp only [A202304]

end A202304

/-! ## A202304.P2374063271529617830

`A000196(3*n)`
-/

namespace A202304.P2374063271529617830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * n)

end

end A202304.P2374063271529617830

namespace A202304

/-- `A000196(3*n)` -/
def P2374063271529617830.Spec : Prop :=
  ∀ n, P2374063271529617830.a n = A202304 n

end A202304

/-! ## A202304.P18444671512912626973

`comp[∑[∑[and(2, n%3)]]]-(n+1)`
-/

namespace A202304.P18444671512912626973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A202304.P18444671512912626973

namespace A202304

/-- `comp[∑[∑[and(2, n%3)]]]-(n+1)` -/
def P18444671512912626973.Spec : Prop :=
  ∀ n, P18444671512912626973.a n = A202304 n

end A202304

/-! ## A202304.P10640978002440285750

`(ceil(sqrt(3*n+1))-1)%(n+1)`
-/

namespace A202304.P10640978002440285750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.sqrt (3 * n + 1 : ℝ)⌉ - 1) (n + 1 : ℤ)

end

end A202304.P10640978002440285750

namespace A202304

/-- `(ceil(sqrt(3*n+1))-1)%(n+1)` -/
def P10640978002440285750.Spec : Prop :=
  ∀ n, P10640978002440285750.a n = A202304 n

end A202304

/-! ## A202304.P15367453471095836170

`A278814(n)-1`
-/

namespace A202304.P15367453471095836170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 n - 1

end

end A202304.P15367453471095836170

namespace A202304

/-- `A278814(n)-1` -/
def P15367453471095836170.Spec : Prop :=
  ∀ n, P15367453471095836170.a n = A202304 n

end A202304

/-! ## A202304.P8368568948375809346

`ceil(sqrt(A047932(n+1)))`
-/

namespace A202304.P8368568948375809346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A047932 (n + 1) : ℝ)⌉

end

end A202304.P8368568948375809346

namespace A202304

/-- `ceil(sqrt(A047932(n+1)))` -/
def P8368568948375809346.Spec : Prop :=
  ∀ n, P8368568948375809346.a n = A202304 n

end A202304

/-! ## A202304.P5732094629696341382

`ceil(sqrt(A016777(n)))-1`
-/

namespace A202304.P5732094629696341382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016777 n : ℝ)⌉ - 1

end

end A202304.P5732094629696341382

namespace A202304

/-- `ceil(sqrt(A016777(n)))-1` -/
def P5732094629696341382.Spec : Prop :=
  ∀ n, P5732094629696341382.a n = A202304 n

end A202304

/-! ## A202304.P14058727109380599361

`ceil(sqrt(A276283(n)))-1`
-/

namespace A202304.P14058727109380599361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A276283 n : ℝ)⌉ - 1

end

end A202304.P14058727109380599361

namespace A202304

/-- `ceil(sqrt(A276283(n)))-1` -/
def P14058727109380599361.Spec : Prop :=
  ∀ n, P14058727109380599361.a n = A202304 n

end A202304

/-! ## A202304.P2270381516183501788

`∑[char[A008810(n+1)]]`
-/

namespace A202304.P2270381516183501788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202304.P2270381516183501788

namespace A202304

/-- `∑[char[A008810(n+1)]]` -/
def P2270381516183501788.Spec : Prop :=
  ∀ n, (P2270381516183501788.a n : ℤ) = A202304 n

end A202304

/-! ## A202304.P14801717228166690582

`∑[char[A032765(n)+1]]`
-/

namespace A202304.P14801717228166690582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202304.P14801717228166690582

namespace A202304

/-- `∑[char[A032765(n)+1]]` -/
def P14801717228166690582.Spec : Prop :=
  ∀ n, (P14801717228166690582.a n : ℤ) = A202304 n

end A202304

/-! ## A202304.P6910633157058183336

`∑[char[A008810(n)]]-1`
-/

namespace A202304.P6910633157058183336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A202304.P6910633157058183336

namespace A202304

/-- `∑[char[A008810(n)]]-1` -/
def P6910633157058183336.Spec : Prop :=
  ∀ n, P6910633157058183336.a n = A202304 n

end A202304

/-! ## A202304.P16800113207332927357

`∑[char[A008806(2*n)]]`
-/

namespace A202304.P16800113207332927357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008806 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202304.P16800113207332927357

namespace A202304

/-- `∑[char[A008806(2*n)]]` -/
def P16800113207332927357.Spec : Prop :=
  ∀ n, (P16800113207332927357.a n : ℤ) = A202304 n

end A202304

/-! ## A202304.P17342467026323564704

`ceil(sqrt(sqrt(A010002(n))))-1`
-/

namespace A202304.P17342467026323564704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A010002 n : ℝ))⌉ - 1

end

end A202304.P17342467026323564704

namespace A202304

/-- `ceil(sqrt(sqrt(A010002(n))))-1` -/
def P17342467026323564704.Spec : Prop :=
  ∀ n, P17342467026323564704.a n = A202304 n

end A202304

/-! ## A202304.P10138889124353272127

`ceil(sqrt(sqrt(A016778(n))))-1`
-/

namespace A202304.P10138889124353272127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A016778 n : ℝ))⌉ - 1

end

end A202304.P10138889124353272127

namespace A202304

/-- `ceil(sqrt(sqrt(A016778(n))))-1` -/
def P10138889124353272127.Spec : Prop :=
  ∀ n, P10138889124353272127.a n = A202304 n

end A202304

/-! ## A202304.P15229678075169575956

`ceil(sqrt(sqrt(A082040(n))))-1`
-/

namespace A202304.P15229678075169575956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A082040 n : ℝ))⌉ - 1

end

end A202304.P15229678075169575956

namespace A202304

/-- `ceil(sqrt(sqrt(A082040(n))))-1` -/
def P15229678075169575956.Spec : Prop :=
  ∀ n, P15229678075169575956.a n = A202304 n

end A202304

/-! ## A202304.P17405490032783165878

`comp[A208994(n)-2]-n`
-/

namespace A202304.P17405490032783165878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A202304.P17405490032783165878

namespace A202304

/-- `comp[A208994(n)-2]-n` -/
def P17405490032783165878.Spec : Prop :=
  ∀ n, P17405490032783165878.a n = A202304 n

end A202304

/-! ## A202304.P9617269730748403438

`A183855(n+1)-(n+1)`
-/

namespace A202304.P9617269730748403438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183855 (n + 1) - (n + 1 : ℤ)

end

end A202304.P9617269730748403438

namespace A202304

/-- `A183855(n+1)-(n+1)` -/
def P9617269730748403438.Spec : Prop :=
  ∀ n, P9617269730748403438.a n = A202304 n

end A202304

/-! ## A202304.P13230185849973761423

`ceil(sqrt(A112652(n+1)))-1`
-/

namespace A202304.P13230185849973761423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A112652 (n + 1) : ℝ)⌉ - 1

end

end A202304.P13230185849973761423

namespace A202304

/-- `ceil(sqrt(A112652(n+1)))-1` -/
def P13230185849973761423.Spec : Prop :=
  ∀ n, P13230185849973761423.a n = A202304 n

end A202304

/-! ## A202304.P9651187326816531735

`∑[char[A036410(2*n+1)]]`
-/

namespace A202304.P9651187326816531735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202304.P9651187326816531735

namespace A202304

/-- `∑[char[A036410(2*n+1)]]` -/
def P9651187326816531735.Spec : Prop :=
  ∀ n, (P9651187326816531735.a n : ℤ) = A202304 n

end A202304

/-! ## A202304.P8584866387787919745

`comp[A128422(n+1)]-(n+1)`
-/

namespace A202304.P8584866387787919745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A202304.P8584866387787919745

namespace A202304

/-- `comp[A128422(n+1)]-(n+1)` -/
def P8584866387787919745.Spec : Prop :=
  ∀ n, P8584866387787919745.a n = A202304 n

end A202304

/-!
# A202305: a(n) = floor(sqrt(5*n)).

The programs for A202305, the canonical program `A202305.P10701456073860480280` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202305 has offset 0).

The definition of A202305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(5*n))` (program `A202305.P10701456073860480280`, by `A202305.P10701456073860480280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202305.P10701456073860480280

`floor(sqrt(5*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202305

/-- `floor(sqrt(5*n))` -/
def P10701456073860480280.Spec : Prop :=
  ∀ n, (P10701456073860480280.a n : ℤ) = A202305 n

theorem P10701456073860480280.correct : P10701456073860480280.Spec := by
  intro n
  simp only [A202305]

end A202305

/-! ## A202305.P16637791623266517594

`A000196(5*n)`
-/

namespace A202305.P16637791623266517594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (5 * n)

end

end A202305.P16637791623266517594

namespace A202305

/-- `A000196(5*n)` -/
def P16637791623266517594.Spec : Prop :=
  ∀ n, P16637791623266517594.a n = A202305 n

end A202305

/-! ## A202305.P2381868850946655590

`ceil(sqrt(A016861(n)))-1`
-/

namespace A202305.P2381868850946655590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016861 n : ℝ)⌉ - 1

end

end A202305.P2381868850946655590

namespace A202305

/-- `ceil(sqrt(A016861(n)))-1` -/
def P2381868850946655590.Spec : Prop :=
  ∀ n, P2381868850946655590.a n = A202305 n

end A202305

/-! ## A202305.P18201014992589844661

`comp[A183873(n+1)]-n`
-/

namespace A202305.P18201014992589844661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183873 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A202305.P18201014992589844661

namespace A202305

/-- `comp[A183873(n+1)]-n` -/
def P18201014992589844661.Spec : Prop :=
  ∀ n, P18201014992589844661.a n = A202305 n

end A202305

/-! ## A202305.P14653595762946917798

`A183870(n+1)-(n+1)`
-/

namespace A202305.P14653595762946917798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183870 (n + 1) - (n + 1 : ℤ)

end

end A202305.P14653595762946917798

namespace A202305

/-- `A183870(n+1)-(n+1)` -/
def P14653595762946917798.Spec : Prop :=
  ∀ n, P14653595762946917798.a n = A202305 n

end A202305

/-! ## A202305.P2810930309008620247

`ceil(sqrt(A016873(n)-1))-1`
-/

namespace A202305.P2810930309008620247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016873 n - 1 : ℝ)⌉ - 1

end

end A202305.P2810930309008620247

namespace A202305

/-- `ceil(sqrt(A016873(n)-1))-1` -/
def P2810930309008620247.Spec : Prop :=
  ∀ n, P2810930309008620247.a n = A202305 n

end A202305

/-! ## A202305.P11500062194952430329

`ceil(sqrt(A000027(n+1)+4*n))-1`
-/

namespace A202305.P11500062194952430329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000027 (n + 1) + (4 * n : ℤ) : ℝ)⌉ - 1

end

end A202305.P11500062194952430329

namespace A202305

/-- `ceil(sqrt(A000027(n+1)+4*n))-1` -/
def P11500062194952430329.Spec : Prop :=
  ∀ n, P11500062194952430329.a n = A202305 n

end A202305

/-! ## A202305.P13916062219854476807

`A023443(A183870(n+1)-n)`
-/

namespace A202305.P13916062219854476807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183870 (n + 1) - (n : ℤ)).toNat

end

end A202305.P13916062219854476807

namespace A202305

/-- `A023443(A183870(n+1)-n)` -/
def P13916062219854476807.Spec : Prop :=
  ∀ n, P13916062219854476807.a n = A202305 n

end A202305

/-! ## A202305.P4541948625681660194

`A172471(A047229(n+1)+n)`
-/

namespace A202305.P4541948625681660194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047229 (n + 1) + (n : ℤ)).toNat

end

end A202305.P4541948625681660194

namespace A202305

/-- `A172471(A047229(n+1)+n)` -/
def P4541948625681660194.Spec : Prop :=
  ∀ n, P4541948625681660194.a n = A202305 n

end A202305

/-! ## A202305.P9137026869467661004

`A172471(A004525(n)+2*n)`
-/

namespace A202305.P9137026869467661004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004525 n + (2 * n : ℤ)).toNat

end

end A202305.P9137026869467661004

namespace A202305

/-- `A172471(A004525(n)+2*n)` -/
def P9137026869467661004.Spec : Prop :=
  ∀ n, P9137026869467661004.a n = A202305 n

end A202305

/-! ## A202305.P5491419961664738296

`A172471(A004525(n)+n+n)`
-/

namespace A202305.P5491419961664738296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004525 n + (n : ℤ) + (n : ℤ)).toNat

end

end A202305.P5491419961664738296

namespace A202305

/-- `A172471(A004525(n)+n+n)` -/
def P5491419961664738296.Spec : Prop :=
  ∀ n, P5491419961664738296.a n = A202305 n

end A202305

/-! ## A202305.P14996931969662143248

`sqrt(A048760(5*n))`
-/

namespace A202305.P14996931969662143248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 (5 * n) : ℝ)

end

end A202305.P14996931969662143248

namespace A202305

/-- `sqrt(A048760(5*n))` -/
def P14996931969662143248.Spec : Prop :=
  ∀ n, P14996931969662143248.a n = (A202305 n : ℝ)

end A202305

/-! ## A202305.P5921352589584139392

`5*n-A028391(5*n)`
-/

namespace A202305.P5921352589584139392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A028391 (5 * n)

end

end A202305.P5921352589584139392

namespace A202305

/-- `5*n-A028391(5*n)` -/
def P5921352589584139392.Spec : Prop :=
  ∀ n, P5921352589584139392.a n = A202305 n

end A202305

/-! ## A202305.P3433764421550196438

`A172471(A004525(5*n))`
-/

namespace A202305.P3433764421550196438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A004525 (5 * n)).toNat

end

end A202305.P3433764421550196438

namespace A202305

/-- `A172471(A004525(5*n))` -/
def P3433764421550196438.Spec : Prop :=
  ∀ n, P3433764421550196438.a n = A202305 n

end A202305

/-! ## A202305.P4432657139169121686

`A339186(A016861(n))`
-/

namespace A202305.P4432657139169121686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A016861 n).toNat

end

end A202305.P4432657139169121686

namespace A202305

/-- `A339186(A016861(n))` -/
def P4432657139169121686.Spec : Prop :=
  ∀ n, P4432657139169121686.a n = A202305 n

end A202305

/-! ## A202305.P529356969424786759

`A003059(Δ[A000566(n)])-1`
-/

namespace A202305.P529356969424786759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (f1 (n + 1) - f1 n).toNat - 1

end

end A202305.P529356969424786759

namespace A202305

/-- `A003059(Δ[A000566(n)])-1` -/
def P529356969424786759.Spec : Prop :=
  ∀ n, P529356969424786759.a n = A202305 n

end A202305

/-! ## A202305.P12977340751426543142

`A003059(A008587(n)+1)-1`
-/

namespace A202305.P12977340751426543142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A008587 n + 1).toNat - 1

end

end A202305.P12977340751426543142

namespace A202305

/-- `A003059(A008587(n)+1)-1` -/
def P12977340751426543142.Spec : Prop :=
  ∀ n, P12977340751426543142.a n = A202305 n

end A202305

/-! ## A202305.P10712887097401189552

`A004526(A116939(10*n))`
-/

namespace A202305.P10712887097401189552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116939 (10 * n)).toNat

end

end A202305.P10712887097401189552

namespace A202305

/-- `A004526(A116939(10*n))` -/
def P10712887097401189552.Spec : Prop :=
  ∀ n, P10712887097401189552.a n = A202305 n

end A202305

/-! ## A202305.P6053797152170704066

`A339183(10*n)`
-/

namespace A202305.P6053797152170704066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (10 * n)

end

end A202305.P6053797152170704066

namespace A202305

/-- `A339183(10*n)` -/
def P6053797152170704066.Spec : Prop :=
  ∀ n, P6053797152170704066.a n = A202305 n

end A202305

/-! ## A202305.P12102466214671265626

`A268173(A008602(n))`
-/

namespace A202305.P12102466214671265626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (A008602 n).toNat

end

end A202305.P12102466214671265626

namespace A202305

/-- `A268173(A008602(n))` -/
def P12102466214671265626.Spec : Prop :=
  ∀ n, P12102466214671265626.a n = A202305 n

end A202305

/-!
# A202306: a(n) = floor(sqrt(7*n)).

The programs for A202306, the canonical program `A202306.P9468829336865901350` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202306 has offset 0).

The definition of A202306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(7*n))` (program `A202306.P9468829336865901350`, by `A202306.P9468829336865901350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202306.P9468829336865901350

`floor(sqrt(7*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202306

/-- `floor(sqrt(7*n))` -/
def P9468829336865901350.Spec : Prop :=
  ∀ n, (P9468829336865901350.a n : ℤ) = A202306 n

theorem P9468829336865901350.correct : P9468829336865901350.Spec := by
  intro n
  simp only [A202306]

end A202306

/-! ## A202306.P12577039600578273905

`A000196(7*n)`
-/

namespace A202306.P12577039600578273905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (7 * n)

end

end A202306.P12577039600578273905

namespace A202306

/-- `A000196(7*n)` -/
def P12577039600578273905.Spec : Prop :=
  ∀ n, P12577039600578273905.a n = A202306 n

end A202306

/-! ## A202306.P6192601596088349425

`ceil(sqrt(A016993(n)))-1`
-/

namespace A202306.P6192601596088349425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016993 n : ℝ)⌉ - 1

end

end A202306.P6192601596088349425

namespace A202306

/-- `ceil(sqrt(A016993(n)))-1` -/
def P6192601596088349425.Spec : Prop :=
  ∀ n, P6192601596088349425.a n = A202306 n

end A202306

/-! ## A202306.P16121699203936183267

`ceil(sqrt(A184552(n)+1))-1`
-/

namespace A202306.P16121699203936183267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A184552 n + 1 : ℝ)⌉ - 1

end

end A202306.P16121699203936183267

namespace A202306

/-- `ceil(sqrt(A184552(n)+1))-1` -/
def P16121699203936183267.Spec : Prop :=
  ∀ n, P16121699203936183267.a n = A202306 n

end A202306

/-! ## A202306.P10211770416780382097

`ceil(sqrt(A016921(n)+n))-1`
-/

namespace A202306.P10211770416780382097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016921 n + (n : ℤ) : ℝ)⌉ - 1

end

end A202306.P10211770416780382097

namespace A202306

/-- `ceil(sqrt(A016921(n)+n))-1` -/
def P10211770416780382097.Spec : Prop :=
  ∀ n, P10211770416780382097.a n = A202306 n

end A202306

/-! ## A202306.P9391542607775770467

`comp[∑[A242062(2*n)]]-n-2`
-/

namespace A202306.P9391542607775770467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - 2

end

end A202306.P9391542607775770467

namespace A202306

/-- `comp[∑[A242062(2*n)]]-n-2` -/
def P9391542607775770467.Spec : Prop :=
  ∀ n, P9391542607775770467.a n = A202306 n

end A202306

/-! ## A202306.P1079677458188927652

`A060018(A047372(n+2))`
-/

namespace A202306.P1079677458188927652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A047372 (n + 2)).toNat

end

end A202306.P1079677458188927652

namespace A202306

/-- `A060018(A047372(n+2))` -/
def P1079677458188927652.Spec : Prop :=
  ∀ n, P1079677458188927652.a n = A202306 n

end A202306

/-! ## A202306.P8981763629213607080

`A172471(A047269(n+1)+2*n)`
-/

namespace A202306.P8981763629213607080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047269 (n + 1) + (2 * n : ℤ)).toNat

end

end A202306.P8981763629213607080

namespace A202306

/-- `A172471(A047269(n+1)+2*n)` -/
def P8981763629213607080.Spec : Prop :=
  ∀ n, P8981763629213607080.a n = A202306 n

end A202306

/-! ## A202306.P10392698170029730794

`A172471(A047273(n+1)+2*n)`
-/

namespace A202306.P10392698170029730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047273 (n + 1) + (2 * n : ℤ)).toNat

end

end A202306.P10392698170029730794

namespace A202306

/-- `A172471(A047273(n+1)+2*n)` -/
def P10392698170029730794.Spec : Prop :=
  ∀ n, P10392698170029730794.a n = A202306 n

end A202306

/-! ## A202306.P11748671015785195258

`A172471(A047269(n+1)+n+n)`
-/

namespace A202306.P11748671015785195258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047269 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A202306.P11748671015785195258

namespace A202306

/-- `A172471(A047269(n+1)+n+n)` -/
def P11748671015785195258.Spec : Prop :=
  ∀ n, P11748671015785195258.a n = A202306 n

end A202306

/-! ## A202306.P3804801396894948957

`A172471(A047273(n+1)+n+n)`
-/

namespace A202306.P3804801396894948957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047273 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A202306.P3804801396894948957

namespace A202306

/-- `A172471(A047273(n+1)+n+n)` -/
def P3804801396894948957.Spec : Prop :=
  ∀ n, P3804801396894948957.a n = A202306 n

end A202306

/-! ## A202306.P4706710795236924376

`ceil(sqrt(A016777(2*n)+n))-1`
-/

namespace A202306.P4706710795236924376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016777 (2 * n) + (n : ℤ) : ℝ)⌉ - 1

end

end A202306.P4706710795236924376

namespace A202306

/-- `ceil(sqrt(A016777(2*n)+n))-1` -/
def P4706710795236924376.Spec : Prop :=
  ∀ n, P4706710795236924376.a n = A202306 n

end A202306

/-! ## A202306.P12485583819526275467

`round(A055086(7*n)/2)`
-/

namespace A202306.P12485583819526275467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055086 (7 * n) : ℚ) / 2)

end

end A202306.P12485583819526275467

namespace A202306

/-- `round(A055086(7*n)/2)` -/
def P12485583819526275467.Spec : Prop :=
  ∀ n, P12485583819526275467.a n = A202306 n

end A202306

/-! ## A202306.P9249619254035884354

`(A001650(7*n+1)-1)/2`
-/

namespace A202306.P9249619254035884354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001650 (7 * n + 1) - 1 : ℚ) / 2

end

end A202306.P9249619254035884354

namespace A202306

/-- `(A001650(7*n+1)-1)/2` -/
def P9249619254035884354.Spec : Prop :=
  ∀ n, P9249619254035884354.a n = (A202306 n : ℚ)

end A202306

/-! ## A202306.P10384008267773151931

`A000196(A008458(n)+n)-A000007(n)`
-/

namespace A202306.P10384008267773151931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008458 n + (n : ℤ)).toNat - A000007 n

end

end A202306.P10384008267773151931

namespace A202306

/-- `A000196(A008458(n)+n)-A000007(n)` -/
def P10384008267773151931.Spec : Prop :=
  ∀ n, P10384008267773151931.a n = A202306 n

end A202306

/-! ## A202306.P7397584070992364962

`A339183(2*7*n)`
-/

namespace A202306.P7397584070992364962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (2 * (7 * n))

end

end A202306.P7397584070992364962

namespace A202306

/-- `A339183(2*7*n)` -/
def P7397584070992364962.Spec : Prop :=
  ∀ n, P7397584070992364962.a n = A202306 n

end A202306

/-! ## A202306.P1725007524126191165

`A268173(A135628(n))`
-/

namespace A202306.P1725007524126191165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (A135628 n).toNat

end

end A202306.P1725007524126191165

namespace A202306

/-- `A268173(A135628(n))` -/
def P1725007524126191165.Spec : Prop :=
  ∀ n, P1725007524126191165.a n = A202306 n

end A202306

/-!
# A202307: a(n) = floor(sqrt(11*n)).

The programs for A202307, the canonical program `A202307.P12884795837608224914` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202307 has offset 0).

The definition of A202307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(11*n))` (program `A202307.P12884795837608224914`, by `A202307.P12884795837608224914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202307.P12884795837608224914

`floor(sqrt(11*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202307

/-- `floor(sqrt(11*n))` -/
def P12884795837608224914.Spec : Prop :=
  ∀ n, (P12884795837608224914.a n : ℤ) = A202307 n

theorem P12884795837608224914.correct : P12884795837608224914.Spec := by
  intro n
  simp only [A202307]

end A202307

/-! ## A202307.P17705046325676484491

`A000196(11*n)`
-/

namespace A202307.P17705046325676484491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (11 * n)

end

end A202307.P17705046325676484491

namespace A202307

/-- `A000196(11*n)` -/
def P17705046325676484491.Spec : Prop :=
  ∀ n, P17705046325676484491.a n = A202307 n

end A202307

/-! ## A202307.P13483990885627143529

`ceil(sqrt(A017401(n)))-1`
-/

namespace A202307.P13483990885627143529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017401 n : ℝ)⌉ - 1

end

end A202307.P13483990885627143529

namespace A202307

/-- `ceil(sqrt(A017401(n)))-1` -/
def P13483990885627143529.Spec : Prop :=
  ∀ n, P13483990885627143529.a n = A202307 n

end A202307

/-! ## A202307.P3932549327512785574

`floor(sqrt(A008593(n)))%A287004(n+1)`
-/

namespace A202307.P3932549327512785574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A008593 n)) (A287004 (n + 1))

end

end A202307.P3932549327512785574

namespace A202307

/-- `floor(sqrt(A008593(n)))%A287004(n+1)` -/
def P3932549327512785574.Spec : Prop :=
  ∀ n, P3932549327512785574.a n = A202307 n

end A202307

/-! ## A202307.P14646921671440368344

`ceil(sqrt(A016777(3*n)+2*n))-1`
-/

namespace A202307.P14646921671440368344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016777 (3 * n) + (2 * n : ℤ) : ℝ)⌉ - 1

end

end A202307.P14646921671440368344

namespace A202307

/-- `ceil(sqrt(A016777(3*n)+2*n))-1` -/
def P14646921671440368344.Spec : Prop :=
  ∀ n, P14646921671440368344.a n = A202307 n

end A202307

/-! ## A202307.P769520773178452789

`A202304(A047395(n+1)+n)`
-/

namespace A202307.P769520773178452789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A047395 (n + 1) + (n : ℤ)).toNat

end

end A202307.P769520773178452789

namespace A202307

/-- `A202304(A047395(n+1)+n)` -/
def P769520773178452789.Spec : Prop :=
  ∀ n, P769520773178452789.a n = A202307 n

end A202307

/-! ## A202307.P6133897484326480766

`A202304(A047513(2*n+1)+n)`
-/

namespace A202307.P6133897484326480766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A047513 (2 * n + 1) + (n : ℤ)).toNat

end

end A202307.P6133897484326480766

namespace A202307

/-- `A202304(A047513(2*n+1)+n)` -/
def P6133897484326480766.Spec : Prop :=
  ∀ n, P6133897484326480766.a n = A202307 n

end A202307

/-! ## A202307.P534280320632836631

`11*n-A028391(11*n)`
-/

namespace A202307.P534280320632836631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - A028391 (11 * n)

end

end A202307.P534280320632836631

namespace A202307

/-- `11*n-A028391(11*n)` -/
def P534280320632836631.Spec : Prop :=
  ∀ n, P534280320632836631.a n = A202307 n

end A202307

/-! ## A202307.P7406627545729143926

`A000196(A008593(n))%(n+3)`
-/

namespace A202307.P7406627545729143926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A008593 n).toNat) (n + 3 : ℤ)

end

end A202307.P7406627545729143926

namespace A202307

/-- `A000196(A008593(n))%(n+3)` -/
def P7406627545729143926.Spec : Prop :=
  ∀ n, P7406627545729143926.a n = A202307 n

end A202307

/-! ## A202307.P7088789670774400422

`A000196(A008593(n))/A054977(n)`
-/

namespace A202307.P7088789670774400422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 (A008593 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A202307.P7088789670774400422

namespace A202307

/-- `A000196(A008593(n))/A054977(n)` -/
def P7088789670774400422.Spec : Prop :=
  ∀ n, P7088789670774400422.a n = (A202307 n : ℚ)

end A202307

/-! ## A202307.P11009134667704685652

`A339186(A017401(n))`
-/

namespace A202307.P11009134667704685652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A017401 n).toNat

end

end A202307.P11009134667704685652

namespace A202307

/-- `A339186(A017401(n))` -/
def P11009134667704685652.Spec : Prop :=
  ∀ n, P11009134667704685652.a n = A202307 n

end A202307

/-! ## A202307.P11092815526778730448

`A339183(A008604(n))`
-/

namespace A202307.P11092815526778730448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A008604 n).toNat

end

end A202307.P11092815526778730448

namespace A202307

/-- `A339183(A008604(n))` -/
def P11092815526778730448.Spec : Prop :=
  ∀ n, P11092815526778730448.a n = A202307 n

end A202307

/-! ## A202307.P1660849845803241486

`A339183(A161709(n))`
-/

namespace A202307.P1660849845803241486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A161709 n).toNat

end

end A202307.P1660849845803241486

namespace A202307

/-- `A339183(A161709(n))` -/
def P1660849845803241486.Spec : Prop :=
  ∀ n, P1660849845803241486.a n = A202307 n

end A202307

/-!
# A202308: a(n) = floor(sqrt(13*n)).

The programs for A202308, the canonical program `A202308.P15715900096849258275` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202308 has offset 0).

The definition of A202308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(13*n))` (program `A202308.P15715900096849258275`, by `A202308.P15715900096849258275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A202308.P15715900096849258275

`floor(sqrt(13*n))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202308

/-- `floor(sqrt(13*n))` -/
def P15715900096849258275.Spec : Prop :=
  ∀ n, (P15715900096849258275.a n : ℤ) = A202308 n

theorem P15715900096849258275.correct : P15715900096849258275.Spec := by
  intro n
  simp only [A202308]

end A202308

/-! ## A202308.P7110971737099573347

`A000196(13*n)`
-/

namespace A202308.P7110971737099573347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (13 * n)

end

end A202308.P7110971737099573347

namespace A202308

/-- `A000196(13*n)` -/
def P7110971737099573347.Spec : Prop :=
  ∀ n, P7110971737099573347.a n = A202308 n

end A202308

/-! ## A202308.P1457248303047407206

`ceil(sqrt(A017533(n)+n))-1`
-/

namespace A202308.P1457248303047407206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017533 n + (n : ℤ) : ℝ)⌉ - 1

end

end A202308.P1457248303047407206

namespace A202308

/-- `ceil(sqrt(A017533(n)+n))-1` -/
def P1457248303047407206.Spec : Prop :=
  ∀ n, P1457248303047407206.a n = A202308 n

end A202308

/-! ## A202308.P4142176138851057456

`A172471(A047229(n+1)+5*n)`
-/

namespace A202308.P4142176138851057456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047229 (n + 1) + (5 * n : ℤ)).toNat

end

end A202308.P4142176138851057456

namespace A202308

/-- `A172471(A047229(n+1)+5*n)` -/
def P4142176138851057456.Spec : Prop :=
  ∀ n, P4142176138851057456.a n = A202308 n

end A202308

/-! ## A202308.P7033063343475753368

`13*n-A028391(13*n)`
-/

namespace A202308.P7033063343475753368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * n : ℤ) - A028391 (13 * n)

end

end A202308.P7033063343475753368

namespace A202308

/-- `13*n-A028391(13*n)` -/
def P7033063343475753368.Spec : Prop :=
  ∀ n, P7033063343475753368.a n = A202308 n

end A202308

/-! ## A202308.P5421426696749540983

`(A001650(13*n+1)-1)/2`
-/

namespace A202308.P5421426696749540983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001650 (13 * n + 1) - 1 : ℚ) / 2

end

end A202308.P5421426696749540983

namespace A202308

/-- `(A001650(13*n+1)-1)/2` -/
def P5421426696749540983.Spec : Prop :=
  ∀ n, P5421426696749540983.a n = (A202308 n : ℚ)

end A202308

/-! ## A202308.P10176285319392167047

`A339186(A190991(n))`
-/

namespace A202308.P10176285319392167047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A190991 n).toNat

end

end A202308.P10176285319392167047

namespace A202308

/-- `A339186(A190991(n))` -/
def P10176285319392167047.Spec : Prop :=
  ∀ n, P10176285319392167047.a n = A202308 n

end A202308

/-! ## A202308.P6303704671874025441

`A339183(A252994(n))`
-/

namespace A202308.P6303704671874025441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A252994 n).toNat

end

end A202308.P6303704671874025441

namespace A202308

/-- `A339183(A252994(n))` -/
def P6303704671874025441.Spec : Prop :=
  ∀ n, P6303704671874025441.a n = A202308 n

end A202308

/-!
# A202309: Number of (n+2)X(n+2) binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202309, there is no canonical definition to state claims against.
-/

/-! ## A202309.P16162131559940620834

`A202317(∑[4*n]+1)`
-/

namespace A202309.P16162131559940620834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202309.P16162131559940620834

/-! ## A202309.P3825589736082544810

`lcm(2, A202317(A001844(n)))`
-/

namespace A202309.P3825589736082544810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A202317 (A001844 n).toNat)

end

end A202309.P3825589736082544810

/-! ## A202309.P12800047912547948444

`record[gcd(A003987(n), A202317(n+1))]`
-/

namespace A202309.P12800047912547948444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A202317 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202309.P12800047912547948444

/-! ## A202309.P6618090090496746750

`A007318(floor(n/10))*A202317(A001844(n))`
-/

namespace A202309.P6618090090496746750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 10⌋.toNat * A202317 (A001844 n).toNat

end

end A202309.P6618090090496746750

/-! ## A202309.P17444265860565241705

`A202317(A001844(n))/A007318(floor(n/11))`
-/

namespace A202309.P17444265860565241705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202317 (A001844 n).toNat : ℚ) / (A007318 ⌊(n : ℚ) / 11⌋.toNat : ℚ)

end

end A202309.P17444265860565241705

/-!
# A202310: Number of (n+2) X 3 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202310, there is no canonical definition to state claims against.
-/

/-! ## A202310.P9873851714425166571

`A207437(n+3)`
-/

namespace A202310.P9873851714425166571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207437 (n + 3)

end

end A202310.P9873851714425166571

/-! ## A202310.P15262219237330730943

`record[A207437(A262672(n))]`
-/

namespace A202310.P15262219237330730943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207437 (A262672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202310.P15262219237330730943

/-! ## A202310.P16839034747442725745

`record[A207437(A032742(A020715(n)))]`
-/

namespace A202310.P16839034747442725745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207437 (A032742 (A020715 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202310.P16839034747442725745

/-! ## A202310.P5393495328257487426

`record[A207437(A052938(A034887(n)))]`
-/

namespace A202310.P5393495328257487426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207437 (A052938 (A034887 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202310.P5393495328257487426

/-! ## A202310.P8244716965391624095

`record[A207437(A052938(A052938(n)))]`
-/

namespace A202310.P8244716965391624095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207437 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202310.P8244716965391624095

/-!
# A202311: Number of (n+2)X4 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202311, there is no canonical definition to state claims against.
-/

/-! ## A202311.P16385024183477117135

`A202317(∑[n+1]+2)`
-/

namespace A202311.P16385024183477117135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202311.P16385024183477117135

/-! ## A202311.P1159357913359207729

`A202317(A133263(n+1))+A185284(n)`
-/

namespace A202311.P1159357913359207729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A133263 (n + 1)).toNat + A185284 n

end

end A202311.P1159357913359207729

/-! ## A202311.P18027422620263981699

`record[A202317(Δ[A003453(n+5)])]`
-/

namespace A202311.P18027422620263981699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202311.P18027422620263981699

/-! ## A202311.P5076807231574862456

`char[A249144(n+1)-1]*A202317(A000096(n+1))`
-/

namespace A202311.P5076807231574862456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249144 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202317 (A000096 (n + 1)).toNat

end

end A202311.P5076807231574862456

/-!
# A202312: Number of (n+2)X5 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202312, there is no canonical definition to state claims against.
-/

/-! ## A202312.P16933174972570418794

`A202317(∑[n+2]+4)`
-/

namespace A202312.P16933174972570418794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202312.P16933174972570418794

/-! ## A202312.P12102636942722168049

`A264668(n)+A202317(A167614(n+1))`
-/

namespace A202312.P12102636942722168049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A202317 (A167614 (n + 1)).toNat

end

end A202312.P12102636942722168049

/-! ## A202312.P1679101091727791253

`lcm(A057077(n), A202317(A167614(n+1)))`
-/

namespace A202312.P1679101091727791253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A202317 (A167614 (n + 1)).toNat)

end

end A202312.P1679101091727791253

/-! ## A202312.P205208883066574354

`A062513(n+1)*A202317(A167614(n+1))`
-/

namespace A202312.P205208883066574354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A202317 (A167614 (n + 1)).toNat

end

end A202312.P205208883066574354

/-! ## A202312.P1163493806703071648

`A202317(A167614(n+1))%A202313(n+1)`
-/

namespace A202312.P1163493806703071648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202317 (A167614 (n + 1)).toNat) (A202313 (n + 1))

end

end A202312.P1163493806703071648

/-!
# A202313: Number of (n+2)X6 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202313, there is no canonical definition to state claims against.
-/

/-! ## A202313.P12867606309447200688

`A202317(A374004(n+1))`
-/

namespace A202313.P12867606309447200688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A374004 (n + 1)).toNat

end

end A202313.P12867606309447200688

/-! ## A202313.P13232614675767785771

`A202317(A141214(n)+7)`
-/

namespace A202313.P13232614675767785771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A141214 n + 7).toNat

end

end A202313.P13232614675767785771

/-! ## A202313.P12599688241725813869

`A202317(A052905(n)+9)`
-/

namespace A202313.P12599688241725813869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A052905 n + 9).toNat

end

end A202313.P12599688241725813869

/-! ## A202313.P15844854697498210628

`A202317(A055999(n)+10)`
-/

namespace A202313.P15844854697498210628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A055999 n + 10).toNat

end

end A202313.P15844854697498210628

/-! ## A202313.P13851759571212060672

`A202317(A167614(n+2)+1)`
-/

namespace A202313.P13851759571212060672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A167614 (n + 2) + 1).toNat

end

end A202313.P13851759571212060672

/-!
# A202314: Number of (n+2)X7 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202314, there is no canonical definition to state claims against.
-/

/-! ## A202314.P2341329288237375342

`A202317(A374005(n+1))`
-/

namespace A202314.P2341329288237375342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A374005 (n + 1)).toNat

end

end A202314.P2341329288237375342

/-! ## A202314.P4946713024604897856

`A202317(A167499(n+3))`
-/

namespace A202314.P4946713024604897856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A167499 (n + 3)).toNat

end

end A202314.P4946713024604897856

/-! ## A202314.P8120944404686453716

`A202317(eq[7, A066657(n)])`
-/

namespace A202314.P8120944404686453716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202314.P8120944404686453716

/-! ## A202314.P7789036610371745853

`A202317(Δ[A264443(n)])`
-/

namespace A202314.P7789036610371745853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (f1 (n + 1) - f1 n).toNat

end

end A202314.P7789036610371745853

/-! ## A202314.P11256662761543301186

`A202317(A056115(n)+11)`
-/

namespace A202314.P11256662761543301186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A056115 n + 11).toNat

end

end A202314.P11256662761543301186

/-!
# A202315: Number of (n+2)X8 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202315, there is no canonical definition to state claims against.
-/

/-! ## A202315.P58063020395323142

`A202317(A374007(n+1))`
-/

namespace A202315.P58063020395323142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A374007 (n + 1)).toNat

end

end A202315.P58063020395323142

/-! ## A202315.P10557436011412595565

`A202317(A166136(n+4))`
-/

namespace A202315.P10557436011412595565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A166136 (n + 4)).toNat

end

end A202315.P10557436011412595565

/-! ## A202315.P6116823215747425052

`A202317(A167614(n+4)+3)`
-/

namespace A202315.P6116823215747425052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A167614 (n + 4) + 3).toNat

end

end A202315.P6116823215747425052

/-! ## A202315.P10746614817341730107

`A202317(eq[7, A131818(n+1)])`
-/

namespace A202315.P10746614817341730107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202315.P10746614817341730107

/-! ## A202315.P5602265744338630179

`A202317(eq[3, A219347(n)])`
-/

namespace A202315.P5602265744338630179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202315.P5602265744338630179

/-!
# A202316: Number of (n+2)X9 binary arrays avoiding patterns 001 and 100 in rows and columns.

The programs for A202316, there is no canonical definition to state claims against.
-/

/-! ## A202316.P2410915489622560103

`A202317(A374008(n+1))`
-/

namespace A202316.P2410915489622560103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A374008 (n + 1)).toNat

end

end A202316.P2410915489622560103

/-! ## A202316.P9056399049299709417

`A202317(A167499(n+5)+2)`
-/

namespace A202316.P9056399049299709417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A167499 (n + 5) + 2).toNat

end

end A202316.P9056399049299709417

/-! ## A202316.P12520344563449435377

`A202317(eq[8, A131818(n+1)])`
-/

namespace A202316.P12520344563449435377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202316.P12520344563449435377

/-! ## A202316.P699061800518226103

`A202317(A055999(n+4))`
-/

namespace A202316.P699061800518226103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (A055999 (n + 4)).toNat

end

end A202316.P699061800518226103

/-! ## A202316.P1402424934357773101

`A202317(eq[4, A219347(n)])`
-/

namespace A202316.P1402424934357773101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A202316.P1402424934357773101

/-!
# A202318: Let (n)_p denote the exponent of prime p in the prime power factorization of n. Then a(n) is defined by the formulas a(1)=1; for n >= 2, (a(n))_2 = (n)_2, (a(n))_3 = (n)_3 and, for p >= 5, (a(n))_p = 1 + ((2n)/(p-1))_p if p-1|2*n, and (a(n))_p = 0 otherwise.

The programs for A202318, there is no canonical definition to state claims against.
-/

/-! ## A202318.P14768255193049502190

`floor(A006863(n+1)/4)/6`
-/

namespace A202318.P14768255193049502190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A006863 (n + 1) : ℚ) / 4⌋ : ℚ) / 6

end

end A202318.P14768255193049502190

/-! ## A202318.P1277770915744507458

`A075180(2*n+1)/12`
-/

namespace A202318.P1277770915744507458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) : ℚ) / 12

end

end A202318.P1277770915744507458

/-! ## A202318.P14264438880040927022

`A185633(2*(n+1))/12`
-/

namespace A202318.P14264438880040927022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (2 * (n + 1)) : ℚ) / 12

end

end A202318.P14264438880040927022

/-! ## A202318.P2928624730088535165

`A079612(2*(n+1))/24`
-/

namespace A202318.P2928624730088535165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * (n + 1)) : ℚ) / 24

end

end A202318.P2928624730088535165

/-! ## A202318.P5295185961934239188

`A036283(n+1)/A040214(2*n+1)`
-/

namespace A202318.P5295185961934239188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A040214 (2 * n + 1) : ℚ)

end

end A202318.P5295185961934239188

/-! ## A202318.P16722564134426993119

`A036283(n+1)/A040879(2*n+1)`
-/

namespace A202318.P16722564134426993119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A040879 (2 * n + 1) : ℚ)

end

end A202318.P16722564134426993119

/-! ## A202318.P17382170924030847319

`A036283(n+1)/A165734(2*n+1)`
-/

namespace A202318.P17382170924030847319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A165734 (2 * n + 1) : ℚ)

end

end A202318.P17382170924030847319

/-! ## A202318.P3635492483378358064

`A006863(n+1)/gcd(A006863(2*n+1), A006863(n+1))`
-/

namespace A202318.P3635492483378358064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006863 (n + 1) : ℚ) / (Int.gcd (A006863 (2 * n + 1)) (A006863 (n + 1)) : ℚ)

end

end A202318.P3635492483378358064

/-! ## A202318.P13482161991989237589

`2*A036283(n+1)/A059161(A059161(n))`
-/

namespace A202318.P13482161991989237589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A036283 (n + 1) : ℚ) / (A059161 (A059161 n).toNat : ℚ))

end

end A202318.P13482161991989237589

/-! ## A202318.P13589648278213613369

`A006953(n+1)/12`
-/

namespace A202318.P13589648278213613369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006953 (n + 1) : ℚ) / 12

end

end A202318.P13589648278213613369

/-! ## A202318.P18195231313635972214

`A036283(n+1)/A002445(A045979(n+1))`
-/

namespace A202318.P18195231313635972214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A002445 (A045979 (n + 1)).toNat : ℚ)

end

end A202318.P18195231313635972214

/-!
# A202319: Lesser of two semiprimes sandwiched each between semiprimes thus forming a twin semiprime-triple.

The programs for A202319, there is no canonical definition to state claims against.
-/

/-! ## A202319.P7366956162168522694

`A242804(n+1)+1`
-/

namespace A202319.P7366956162168522694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242804 (n + 1) + 1

end

end A202319.P7366956162168522694

/-! ## A202319.P2278558314023243819

`A358657(n+1)-2`
-/

namespace A202319.P2278558314023243819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358657 (n + 1) - 2

end

end A202319.P2278558314023243819

/-! ## A202319.P12152106423697279504

`2*A158476(n+1)`
-/

namespace A202319.P12152106423697279504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158476 (n + 1)

end

end A202319.P12152106423697279504

/-! ## A202319.P16538114515028197237

`2*(6*A257044(n+1)+5)`
-/

namespace A202319.P16538114515028197237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (6 * A257044 (n + 1) + 5)

end

end A202319.P16538114515028197237

/-! ## A202319.P7799362946388557364

`xor(3, A242804(A008619(2*n)))`
-/

namespace A202319.P7799362946388557364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A242804 (A008619 (2 * n)).toNat)

end

end A202319.P7799362946388557364

/-! ## A202319.P3727459836878696830

`xor(3, A242804(A266981(2*n)))`
-/

namespace A202319.P3727459836878696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A242804 (A266981 (2 * n)).toNat)

end

end A202319.P3727459836878696830

/-! ## A202319.P14265455323938958570

`A158476(A000027(n+1))+A158476(n+1)`
-/

namespace A202319.P14265455323938958570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158476 (A000027 (n + 1)).toNat + A158476 (n + 1)

end

end A202319.P14265455323938958570

/-! ## A202319.P3058049493959409286

`2-(A291168(A000120(n))-A242804(A008619(2*n)))`
-/

namespace A202319.P3058049493959409286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A291168 (A000120 n).toNat - A242804 (A008619 (2 * n)).toNat)

end

end A202319.P3058049493959409286

/-! ## A202319.P16534913303425981449

`and(n, A198275(n))-(n-1-A242804(A008619(2*n)))`
-/

namespace A202319.P16534913303425981449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A198275 n) - ((n : ℤ) - 1 - A242804 (A008619 (2 * n)).toNat)

end

end A202319.P16534913303425981449

/-!
# A202321: Decimal expansion of x > 0 satisfying x + 2 = exp(x).

The programs for A202321, there is no canonical definition to state claims against.
-/

/-! ## A202321.P12515712203773797082

`A226572(floor(acot(n)+n))`
-/

namespace A202321.P12515712203773797082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1)

end

end A202321.P12515712203773797082

/-! ## A202321.P18211405621671658908

`gcd(floor(acot(n)), A226572(n))`
-/

namespace A202321.P18211405621671658908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A226572 (n + 1))

end

end A202321.P18211405621671658908

/-! ## A202321.P13610446134860736277

`A226572(A028310(n))`
-/

namespace A202321.P13610446134860736277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((A028310 n).toNat + 1)

end

end A202321.P13610446134860736277

/-! ## A202321.P3746696579564642583

`A226572(A000007(n)+n)`
-/

namespace A202321.P3746696579564642583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A202321.P3746696579564642583

/-! ## A202321.P18196356921914220558

`A226572(gcd(n, A008574(n)))`
-/

namespace A202321.P18196356921914220558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 (Int.gcd (n : ℤ) (A008574 n) + 1)

end

end A202321.P18196356921914220558

/-! ## A202321.P13775175802705711412

`A226572(or(n, A000007(n)))`
-/

namespace A202321.P13775175802705711412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A202321.P13775175802705711412

/-! ## A202321.P12419212826384087570

`A226572(A004273(n)+1-n)`
-/

namespace A202321.P12419212826384087570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((A004273 n + (1 - (n : ℤ))).toNat + 1)

end

end A202321.P12419212826384087570

/-! ## A202321.P9738358815198947918

`A226572(1-(n-A004273(n)))`
-/

namespace A202321.P9738358815198947918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((1 - ((n : ℤ) - A004273 n)).toNat + 1)

end

end A202321.P9738358815198947918

/-! ## A202321.P14529424542618535921

`A226572(n)-2*A000007(n)`
-/

namespace A202321.P14529424542618535921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 (n + 1) - 2 * A000007 n

end

end A202321.P14529424542618535921

/-! ## A202321.P16694250126852093251

`A226572(A008574(n)-3*n)`
-/

namespace A202321.P16694250126852093251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((A008574 n - (3 * n : ℤ)).toNat + 1)

end

end A202321.P16694250126852093251

/-! ## A202321.P9878846739730170371

`A226572(A065033(2*n))`
-/

namespace A202321.P9878846739730170371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((A065033 (2 * n)).toNat + 1)

end

end A202321.P9878846739730170371

/-! ## A202321.P8680406024664733736

`A226572(ceil(n^tanh(n)))`
-/

namespace A202321.P8680406024664733736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 (⌈(n : ℝ) ^ (Real.tanh (n : ℝ))⌉.toNat + 1)

end

end A202321.P8680406024664733736

/-! ## A202321.P9023514267611300675

`A226572(A008574(n²)/A008574(n))`
-/

namespace A202321.P9023514267611300675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226572 ((SequenceMachineLib.roundAway ((A008574 (n ^ 2) : ℚ) / (A008574 n : ℚ))).toNat + 1)

end

end A202321.P9023514267611300675

/-!
# A202322: Decimal expansion of x satisfying x+2=exp(-x).

The programs for A202322, there is no canonical definition to state claims against.
-/

/-! ## A202322.P7999278302872866902

`9-A226571(n+1)`
-/

namespace A202322.P7999278302872866902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A226571 (n + 1 + 1)

end

end A202322.P7999278302872866902

/-!
# A202326: Number of regular polygons constructable by straightedge and compass up to 10^n.

The programs for A202326, there is no canonical definition to state claims against.
-/

/-! ## A202326.P10983273609001177570

`A254963(n+1)-A135549(A110092(n+1))`
-/

namespace A202326.P10983273609001177570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 (n + 1) - A135549 (A110092 (n + 1)).toNat

end

end A202326.P10983273609001177570

/-! ## A202326.P5824160578278419940

`A140090(2*n+1)-A328169(A001333(n))`
-/

namespace A202326.P5824160578278419940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 (2 * n + 1) - A328169 (A001333 n).toNat

end

end A202326.P5824160578278419940

/-!
# A202327: Triangle read by rows, T(n, k) is the coefficient of x^n in expansion of ((-1 - x + sqrt(1 + 2*x + 5*x^2)) /2)^k.

The programs for A202327, there is no canonical definition to state claims against.
-/

/-! ## A202327.P14012302642300396996

`or(A181472(n), A189476(A073817(n)))`
-/

namespace A202327.P14012302642300396996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181472 n) (A189476 (A073817 n).toNat)

end

end A202327.P14012302642300396996

/-! ## A202327.P13575007690817135660

`or(A005369(A330456(n)), A181472(n))`
-/

namespace A202327.P13575007690817135660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (A330456 n).toNat) (A181472 n)

end

end A202327.P13575007690817135660

/-! ## A202327.P17019284120856511148

`A185284(A090988(n+1))+A181472(n)`
-/

namespace A202327.P17019284120856511148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A090988 (n + 1)).toNat + A181472 n

end

end A202327.P17019284120856511148

/-! ## A202327.P14873123648254997627

`A181472(n)+A107846(A187829(n+1))`
-/

namespace A202327.P14873123648254997627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181472 n + A107846 (A187829 (n + 1)).toNat

end

end A202327.P14873123648254997627

/-! ## A202327.P14297882209712775157

`or(A010051(A293517(3*n+4)), A181472(n))`
-/

namespace A202327.P14297882209712775157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A293517 (3 * n + 4)).toNat) (A181472 n)

end

end A202327.P14297882209712775157

/-!
# A202328: Triangle T(n,k) = coefficient of x^n in expansion of [x(1+x^2)/(1-x^2)]^k = sum(n>=k, T(n,k) x^n).

The programs for A202328, there is no canonical definition to state claims against.
-/

/-! ## A202328.P8755934650808697997

`∑{d}[A108045(n), A068063(A015518(#))]`
-/

namespace A202328.P8755934650808697997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A068063 (A015518 d).toNat

end

end A202328.P8755934650808697997

/-! ## A202328.P16433592606833215892

`A275868(A117436(n)+1)`
-/

namespace A202328.P16433592606833215892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275868 (A117436 n + 1).toNat

end

end A202328.P16433592606833215892

/-! ## A202328.P16876585371298234222

`A005811(A124321(n)*A130534(n))`
-/

namespace A202328.P16876585371298234222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A124321 n * A130534 n).toNat

end

end A202328.P16876585371298234222

/-! ## A202328.P14875492748054593190

`A111959(n)/A026791(A009766(3*n+1))`
-/

namespace A202328.P14875492748054593190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111959 n : ℚ) / (A026791 (A009766 (3 * n + 1)).toNat : ℚ)

end

end A202328.P14875492748054593190

/-! ## A202328.P15468180331735788530

`A132610(n)%A090376(A185249(n))`
-/

namespace A202328.P15468180331735788530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132610 n) (A090376 (A185249 n).toNat)

end

end A202328.P15468180331735788530

/-!
# A202329: Number of (n+1)X(n+1) binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202329, the canonical program `A202329.P17245974937698880964` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202329 has offset 1).

The definition of A202329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202329.P17245974937698880964

`A081496(n+2)+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202329

/-- `A081496(n+2)+2` -/
def P17245974937698880964.Spec : Prop :=
  ∀ n, P17245974937698880964.a n = A202329 (n + 1)

theorem P17245974937698880964.correct : P17245974937698880964.Spec := by
  intro n
  simp only [A202329, Nat.add_sub_cancel]

end A202329

/-! ## A202329.P13964315584682495969

`A027171(n+1)+6`
-/

namespace A202329.P13964315584682495969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027171 (n + 1) + 6

end

end A202329.P13964315584682495969

namespace A202329

/-- `A027171(n+1)+6` -/
def P13964315584682495969.Spec : Prop :=
  ∀ n, P13964315584682495969.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P10999825516858106275

`2*(A027172(n+1)+3)`
-/

namespace A202329.P10999825516858106275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027172 (n + 1) + 3)

end

end A202329.P10999825516858106275

namespace A202329

/-- `2*(A027172(n+1)+3)` -/
def P10999825516858106275.Spec : Prop :=
  ∀ n, P10999825516858106275.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P8665855774967184035

`2*(A027175(n+1)+5)`
-/

namespace A202329.P8665855774967184035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027175 (n + 1) + 5)

end

end A202329.P8665855774967184035

namespace A202329

/-- `2*(A027175(n+1)+5)` -/
def P8665855774967184035.Spec : Prop :=
  ∀ n, P8665855774967184035.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P13742268574215979595

`A027172(n+2)-A027173(n+1)`
-/

namespace A202329.P13742268574215979595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027172 (n + 2) - A027173 (n + 1)

end

end A202329.P13742268574215979595

namespace A202329

/-- `A027172(n+2)-A027173(n+1)` -/
def P13742268574215979595.Spec : Prop :=
  ∀ n, P13742268574215979595.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P6569659545279386079

`A051945(n+1)+A240530(n+1)+2`
-/

namespace A202329.P6569659545279386079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051945 (n + 1) + (A240530 (n + 1) + 2)

end

end A202329.P6569659545279386079

namespace A202329

/-- `A051945(n+1)+A240530(n+1)+2` -/
def P6569659545279386079.Spec : Prop :=
  ∀ n, P6569659545279386079.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P4307555381829443505

`A051960(n+1)+A003409(n+2)+2`
-/

namespace A202329.P4307555381829443505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 (n + 1) + (A003409 (n + 2) + 2)

end

end A202329.P4307555381829443505

namespace A202329

/-- `A051960(n+1)+A003409(n+2)+2` -/
def P4307555381829443505.Spec : Prop :=
  ∀ n, P4307555381829443505.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P4617337283713750817

`A000108(n+1)*A017221(n+1)+2`
-/

namespace A202329.P4617337283713750817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A017221 (n + 1) + 2

end

end A202329.P4617337283713750817

namespace A202329

/-- `A000108(n+1)*A017221(n+1)+2` -/
def P4617337283713750817.Spec : Prop :=
  ∀ n, P4617337283713750817.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P113492611736238891

`2*(A030662(n+2)+A010763(n)+3)`
-/

namespace A202329.P113492611736238891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A030662 (n + 2) + A010763 n + 3)

end

end A202329.P113492611736238891

namespace A202329

/-- `2*(A030662(n+2)+A010763(n)+3)` -/
def P113492611736238891.Spec : Prop :=
  ∀ n, P113492611736238891.a n = A202329 (n + 1)

end A202329

/-! ## A202329.P4548180346428762109

`A202335(∑[4*n]+1)`
-/

namespace A202329.P4548180346428762109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202329.P4548180346428762109

namespace A202329

/-- `A202335(∑[4*n]+1)` -/
def P4548180346428762109.Spec : Prop :=
  ∀ n, P4548180346428762109.a n = A202329 (n + 1)

end A202329

/-!
# A202330: Number of (n+1) X 4 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202330, the canonical program `A202330.P1727022110853934125` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202330 has offset 1).

The definition of A202330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202330.P1727022110853934125

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=36, a(1)=82, a(2)=162, a(3)=289, a(4)=478`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202330

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1727022110853934125.Spec : Prop :=
  ∀ n, P1727022110853934125.a n = A202330 (n + 1)

theorem P1727022110853934125.correct : P1727022110853934125.Spec := by
  intro n
  simp only [A202330, Nat.add_sub_cancel]

end A202330

/-! ## A202330.P15412724639137507204

`1/12*(n+1)^4+4/3*(n+1)^3+83/12*(n+1)²+44/3*(n+1)+13`
-/

namespace A202330.P15412724639137507204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 12 * ((n + 1) ^ 4 : ℚ) + (4 : ℚ) / 3 * ((n + 1) ^ 3 : ℚ) + (83 : ℚ) / 12 * ((n + 1) ^ 2 : ℚ) + (44 : ℚ) / 3 * (n + 1 : ℚ) + 13

end

end A202330.P15412724639137507204

namespace A202330

/-- `1/12*(n+1)^4+4/3*(n+1)^3+83/12*(n+1)²+44/3*(n+1)+13` -/
def P15412724639137507204.Spec : Prop :=
  ∀ n, P15412724639137507204.a n = (A202330 (n + 1) : ℚ)

theorem P15412724639137507204.correct : P15412724639137507204.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A202330, Nat.add_sub_cancel, A202330.P15412724639137507204.a, A202330.P1727022110853934125.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A202330, Nat.add_sub_cancel, A202330.P15412724639137507204.a, A202330.P1727022110853934125.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A202330

/-! ## A202330.P10569066328920599533

`A202335(A167614(n+1))`
-/

namespace A202330.P10569066328920599533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A167614 (n + 1)).toNat

end

end A202330.P10569066328920599533

namespace A202330

/-- `A202335(A167614(n+1))` -/
def P10569066328920599533.Spec : Prop :=
  ∀ n, P10569066328920599533.a n = A202330 (n + 1)

end A202330

/-! ## A202330.P14601481643905466779

`A202335(A167499(n)+n)`
-/

namespace A202330.P14601481643905466779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A167499 n + (n : ℤ)).toNat

end

end A202330.P14601481643905466779

namespace A202330

/-- `A202335(A167499(n)+n)` -/
def P14601481643905466779.Spec : Prop :=
  ∀ n, P14601481643905466779.a n = A202330 (n + 1)

end A202330

/-! ## A202330.P3477129973266395688

`A202335(∑[n+3]+1)`
-/

namespace A202330.P3477129973266395688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202330.P3477129973266395688

namespace A202330

/-- `A202335(∑[n+3]+1)` -/
def P3477129973266395688.Spec : Prop :=
  ∀ n, P3477129973266395688.a n = A202330 (n + 1)

end A202330

/-!
# A202331: Number of (n+1) X 5 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202331, the canonical program `A202331.P4481714851461192435` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202331 has offset 1).

The definition of A202331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202331.P18101116794376954832

`A133263(n+1)+Δ[A252815(n+2)]`
-/

namespace A202331.P18101116794376954832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (n + 1) + (f1 (n + 1) - f1 n)

end

end A202331.P18101116794376954832

namespace A202331

/-- `A133263(n+1)+Δ[A252815(n+2)]` -/
def P18101116794376954832.Spec : Prop :=
  ∀ n, P18101116794376954832.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P4481714851461192435

`A005583(n+2)+A005583(n+3)+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202331

/-- `A005583(n+2)+A005583(n+3)+2` -/
def P4481714851461192435.Spec : Prop :=
  ∀ n, P4481714851461192435.a n = A202331 (n + 1)

theorem P4481714851461192435.correct : P4481714851461192435.Spec := by
  intro n
  simp only [A202331, Nat.add_sub_cancel]

end A202331

/-! ## A202331.P5044266144635230163

`A005584(n+3)+2-A005584(n+1)`
-/

namespace A202331.P5044266144635230163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 3) + (2 - A005584 (n + 1))

end

end A202331.P5044266144635230163

namespace A202331

/-- `A005584(n+3)+2-A005584(n+1)` -/
def P5044266144635230163.Spec : Prop :=
  ∀ n, P5044266144635230163.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P12327225935699390121

`Δ[A005584(n+2)+A005584(n+1)]+2`
-/

namespace A202331.P12327225935699390121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 2) + A005584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A202331.P12327225935699390121

namespace A202331

/-- `Δ[A005584(n+2)+A005584(n+1)]+2` -/
def P12327225935699390121.Spec : Prop :=
  ∀ n, P12327225935699390121.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P762160624339038964

`A005585(n+4)+2-A000330(n+4)`
-/

namespace A202331.P762160624339038964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 4) + (2 - A000330 (n + 4))

end

end A202331.P762160624339038964

namespace A202331

/-- `A005585(n+4)+2-A000330(n+4)` -/
def P762160624339038964.Spec : Prop :=
  ∀ n, P762160624339038964.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P8777746315648763098

`A202335(A052905(n)+9)`
-/

namespace A202331.P8777746315648763098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A052905 n + 9).toNat

end

end A202331.P8777746315648763098

namespace A202331

/-- `A202335(A052905(n)+9)` -/
def P8777746315648763098.Spec : Prop :=
  ∀ n, P8777746315648763098.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P15621381847109773464

`A202335(A167614(n+2)+1)`
-/

namespace A202331.P15621381847109773464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A167614 (n + 2) + 1).toNat

end

end A202331.P15621381847109773464

namespace A202331

/-- `A202335(A167614(n+2)+1)` -/
def P15621381847109773464.Spec : Prop :=
  ∀ n, P15621381847109773464.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P3314982374058011112

`A202335(A000217(n+3)+4)`
-/

namespace A202331.P3314982374058011112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A000217 (n + 3) + 4).toNat

end

end A202331.P3314982374058011112

namespace A202331

/-- `A202335(A000217(n+3)+4)` -/
def P3314982374058011112.Spec : Prop :=
  ∀ n, P3314982374058011112.a n = A202331 (n + 1)

end A202331

/-! ## A202331.P6704342303261954142

`A202335(∑[n+4]+3)`
-/

namespace A202331.P6704342303261954142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A202331.P6704342303261954142

namespace A202331

/-- `A202335(∑[n+4]+3)` -/
def P6704342303261954142.Spec : Prop :=
  ∀ n, P6704342303261954142.a n = A202331 (n + 1)

end A202331

/-!
# A202332: Number of (n+1) X 6 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202332, the canonical program `A202332.P936961628327573372` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202332 has offset 1).

The definition of A202332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202332.P1437752548962981172

`A252815(n+3)+∑[∑[n+1]]`
-/

namespace A202332.P1437752548962981172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252815 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A202332.P1437752548962981172

namespace A202332

/-- `A252815(n+3)+∑[∑[n+1]]` -/
def P1437752548962981172.Spec : Prop :=
  ∀ n, P1437752548962981172.a n = A202332 (n + 1)

end A202332

/-! ## A202332.P936961628327573372

`A005584(n+2)+A005584(n+3)+2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202332

/-- `A005584(n+2)+A005584(n+3)+2` -/
def P936961628327573372.Spec : Prop :=
  ∀ n, P936961628327573372.a n = A202332 (n + 1)

theorem P936961628327573372.correct : P936961628327573372.Spec := by
  intro n
  simp only [A202332, Nat.add_sub_cancel]

end A202332

/-! ## A202332.P14931658759490063453

`A202752(n+4)+∑[∑[n+2]]`
-/

namespace A202332.P14931658759490063453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 4) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A202332.P14931658759490063453

namespace A202332

/-- `A202752(n+4)+∑[∑[n+2]]` -/
def P14931658759490063453.Spec : Prop :=
  ∀ n, P14931658759490063453.a n = A202332 (n + 1)

end A202332

/-! ## A202332.P10605379132479645133

`A005408(n)+A202752(n+4)+A027378(n)`
-/

namespace A202332.P10605379132479645133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A202752 (n + 4) + A027378 n)

end

end A202332.P10605379132479645133

namespace A202332

/-- `A005408(n)+A202752(n+4)+A027378(n)` -/
def P10605379132479645133.Spec : Prop :=
  ∀ n, P10605379132479645133.a n = A202332 (n + 1)

end A202332

/-! ## A202332.P14277027907937373183

`A040977(n+3)+2-A002415(n+5)`
-/

namespace A202332.P14277027907937373183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 (n + 3) + (2 - A002415 (n + 5))

end

end A202332.P14277027907937373183

namespace A202332

/-- `A040977(n+3)+2-A002415(n+5)` -/
def P14277027907937373183.Spec : Prop :=
  ∀ n, P14277027907937373183.a n = A202332 (n + 1)

end A202332

/-! ## A202332.P4327833906897196904

`A202335(A167499(n+3))`
-/

namespace A202332.P4327833906897196904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A167499 (n + 3)).toNat

end

end A202332.P4327833906897196904

namespace A202332

/-- `A202335(A167499(n+3))` -/
def P4327833906897196904.Spec : Prop :=
  ∀ n, P4327833906897196904.a n = A202332 (n + 1)

end A202332

/-! ## A202332.P14674370901064981620

`A202335(A056000(n)+15)`
-/

namespace A202332.P14674370901064981620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A056000 n + 15).toNat

end

end A202332.P14674370901064981620

namespace A202332

/-- `A202335(A056000(n)+15)` -/
def P14674370901064981620.Spec : Prop :=
  ∀ n, P14674370901064981620.a n = A202332 (n + 1)

end A202332

/-! ## A202332.P14583510799070414917

`A202335(∑[n+5]+6)`
-/

namespace A202332.P14583510799070414917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A202332.P14583510799070414917

namespace A202332

/-- `A202335(∑[n+5]+6)` -/
def P14583510799070414917.Spec : Prop :=
  ∀ n, P14583510799070414917.a n = A202332 (n + 1)

end A202332

/-!
# A202333: Number of (n+1) X 7 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202333, the canonical program `A202333.P13249908490991948429` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202333 has offset 1).

The definition of A202333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202333.P13249908490991948429

`A050486(n+3)+2-A005585(n+4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A202333

/-- `A050486(n+3)+2-A005585(n+4)` -/
def P13249908490991948429.Spec : Prop :=
  ∀ n, P13249908490991948429.a n = A202333 (n + 1)

theorem P13249908490991948429.correct : P13249908490991948429.Spec := by
  intro n
  simp only [A202333, Nat.add_sub_cancel]

end A202333

/-! ## A202333.P12771022367875346129

`A202335(A246172(n+1)+20)`
-/

namespace A202333.P12771022367875346129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A246172 (n + 1) + 20).toNat

end

end A202333.P12771022367875346129

namespace A202333

/-- `A202335(A246172(n+1)+20)` -/
def P12771022367875346129.Spec : Prop :=
  ∀ n, P12771022367875346129.a n = A202333 (n + 1)

end A202333

/-! ## A202333.P9378544797504501724

`A202335((n+4)²-∑[n+1]+1)`
-/

namespace A202333.P9378544797504501724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A202333.P9378544797504501724

namespace A202333

/-- `A202335((n+4)²-∑[n+1]+1)` -/
def P9378544797504501724.Spec : Prop :=
  ∀ n, P9378544797504501724.a n = A202333 (n + 1)

end A202333

/-! ## A202333.P1840050742836089787

`or(char[23], A202335(A052905(n+3)))`
-/

namespace A202333.P1840050742836089787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A202335 (A052905 (n + 3)).toNat)

end

end A202333.P1840050742836089787

namespace A202333

/-- `or(char[23], A202335(A052905(n+3)))` -/
def P1840050742836089787.Spec : Prop :=
  ∀ n, P1840050742836089787.a n = A202333 (n + 1)

end A202333

/-! ## A202333.P14007693850567639835

`A202335(A052905(n+3))+A000007(n+1)`
-/

namespace A202333.P14007693850567639835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A052905 (n + 3)).toNat + A000007 (n + 1)

end

end A202333.P14007693850567639835

namespace A202333

/-- `A202335(A052905(n+3))+A000007(n+1)` -/
def P14007693850567639835.Spec : Prop :=
  ∀ n, P14007693850567639835.a n = A202333 (n + 1)

end A202333

/-! ## A202333.P16709214822818485034

`A057979(2*n)*A202335(A052905(n+3))`
-/

namespace A202333.P16709214822818485034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A202335 (A052905 (n + 3)).toNat

end

end A202333.P16709214822818485034

namespace A202333

/-- `A057979(2*n)*A202335(A052905(n+3))` -/
def P16709214822818485034.Spec : Prop :=
  ∀ n, P16709214822818485034.a n = A202333 (n + 1)

end A202333

/-! ## A202333.P12313633811370558363

`lcm(A077008(n+2), A202335(A052905(n+3)))`
-/

namespace A202333.P12313633811370558363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077008 (n + 2)) (A202335 (A052905 (n + 3)).toNat)

end

end A202333.P12313633811370558363

namespace A202333

/-- `lcm(A077008(n+2), A202335(A052905(n+3)))` -/
def P12313633811370558363.Spec : Prop :=
  ∀ n, (P12313633811370558363.a n : ℤ) = A202333 (n + 1)

end A202333

/-! ## A202333.P2089587688416147501

`-(A057428(A107975(n+1))*A202335(A052905(n+3)))`
-/

namespace A202333.P2089587688416147501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A057428 (A107975 (n + 1)).toNat * A202335 (A052905 (n + 3)).toNat)

end

end A202333.P2089587688416147501

namespace A202333

/-- `-(A057428(A107975(n+1))*A202335(A052905(n+3)))` -/
def P2089587688416147501.Spec : Prop :=
  ∀ n, P2089587688416147501.a n = A202333 (n + 1)

end A202333

/-! ## A202333.P11289219230838897918

`A202335(A052905(n+3))%A252882(n+1)`
-/

namespace A202333.P11289219230838897918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202335 (A052905 (n + 3)).toNat) (A252882 (n + 1))

end

end A202333.P11289219230838897918

namespace A202333

/-- `A202335(A052905(n+3))%A252882(n+1)` -/
def P11289219230838897918.Spec : Prop :=
  ∀ n, P11289219230838897918.a n = A202333 (n + 1)

end A202333

/-!
# A202334: Number of (n+1) X 8 binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202334, the canonical program `A202334.P8072250924669287975` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202334 has offset 1).

The definition of A202334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202334.P8072250924669287975

`A202335(∑[n+6]+22)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A202334

/-- `A202335(∑[n+6]+22)` -/
def P8072250924669287975.Spec : Prop :=
  ∀ n, P8072250924669287975.a n = A202334 (n + 1)

theorem P8072250924669287975.correct : P8072250924669287975.Spec := by
  intro n
  simp only [A202334, Nat.add_sub_cancel]

end A202334

/-! ## A202334.P12362044099878173104

`A202335(A000217(n+7)-6)%Δ[A017297(n)]`
-/

namespace A202334.P12362044099878173104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202335 (A000217 (n + 7) - 6).toNat) (f1 (n + 1) - f1 n)

end

end A202334.P12362044099878173104

namespace A202334

/-- `A202335(A000217(n+7)-6)%Δ[A017297(n)]` -/
def P12362044099878173104.Spec : Prop :=
  ∀ n, P12362044099878173104.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P8249926297102614870

`A202335(A055998(n+5)-3)%A252125(n+1)`
-/

namespace A202334.P8249926297102614870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202335 (A055998 (n + 5) - 3).toNat) (A252125 (n + 1))

end

end A202334.P8249926297102614870

namespace A202334

/-- `A202335(A055998(n+5)-3)%A252125(n+1)` -/
def P8249926297102614870.Spec : Prop :=
  ∀ n, P8249926297102614870.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P17787780391580626171

`lcm(A056594(2*n), A202335(A000217(n+7)-6))`
-/

namespace A202334.P17787780391580626171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A202335 (A000217 (n + 7) - 6).toNat)

end

end A202334.P17787780391580626171

namespace A202334

/-- `lcm(A056594(2*n), A202335(A000217(n+7)-6))` -/
def P17787780391580626171.Spec : Prop :=
  ∀ n, (P17787780391580626171.a n : ℤ) = A202334 (n + 1)

end A202334

/-! ## A202334.P15230226543078271347

`A202335(A000217(n+7)-6)+A007814(2*n+1)`
-/

namespace A202334.P15230226543078271347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A000217 (n + 7) - 6).toNat + A007814 (2 * n + 1)

end

end A202334.P15230226543078271347

namespace A202334

/-- `A202335(A000217(n+7)-6)+A007814(2*n+1)` -/
def P15230226543078271347.Spec : Prop :=
  ∀ n, P15230226543078271347.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P11922640443070045517

`A202335(A000217(n+7)-6)+A010816(9*n+4)`
-/

namespace A202334.P11922640443070045517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A000217 (n + 7) - 6).toNat + A010816 (9 * n + 4)

end

end A202334.P11922640443070045517

namespace A202334

/-- `A202335(A000217(n+7)-6)+A010816(9*n+4)` -/
def P11922640443070045517.Spec : Prop :=
  ∀ n, P11922640443070045517.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P16579066411038862439

`A088855(A000124(n))*A202335(A000217(n+7)-6)`
-/

namespace A202334.P16579066411038862439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A000124 n).toNat * A202335 (A000217 (n + 7) - 6).toNat

end

end A202334.P16579066411038862439

namespace A202334

/-- `A088855(A000124(n))*A202335(A000217(n+7)-6)` -/
def P16579066411038862439.Spec : Prop :=
  ∀ n, P16579066411038862439.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P5259335432899977521

`A007799(A046951(n+1))*A202335(A000217(n+7)-6)`
-/

namespace A202334.P5259335432899977521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007799 (A046951 (n + 1)).toNat * A202335 (A000217 (n + 7) - 6).toNat

end

end A202334.P5259335432899977521

namespace A202334

/-- `A007799(A046951(n+1))*A202335(A000217(n+7)-6)` -/
def P5259335432899977521.Spec : Prop :=
  ∀ n, P5259335432899977521.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P5700268921032941272

`A014963(A000217(n+6))*A202335(A000217(n+7)-6)`
-/

namespace A202334.P5700268921032941272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A202335 (A000217 (n + 7) - 6).toNat

end

end A202334.P5700268921032941272

namespace A202334

/-- `A014963(A000217(n+6))*A202335(A000217(n+7)-6)` -/
def P5700268921032941272.Spec : Prop :=
  ∀ n, P5700268921032941272.a n = A202334 (n + 1)

end A202334

/-! ## A202334.P15577569092433304743

`A202335(A055998(n+5)-3)+A127647(A246944(n+2))`
-/

namespace A202334.P15577569092433304743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202335 (A055998 (n + 5) - 3).toNat + A127647 (A246944 (n + 2)).toNat

end

end A202334.P15577569092433304743

namespace A202334

/-- `A202335(A055998(n+5)-3)+A127647(A246944(n+2))` -/
def P15577569092433304743.Spec : Prop :=
  ∀ n, P15577569092433304743.a n = A202334 (n + 1)

end A202334

/-!
# A202335: T(n,k)=Number of (n+1)X(k+1) binary arrays with consecutive windows of two bits considered as a binary number nondecreasing in every row and column.

The programs for A202335, the canonical program `A202335.P3583749144337499304` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202335 has offset 1).

The definition of A202335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202335.P3583749144337499304

`A027170(eq[0, A103451(n)])+6`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A202335

/-- `A027170(eq[0, A103451(n)])+6` -/
def P3583749144337499304.Spec : Prop :=
  ∀ n, P3583749144337499304.a n = A202335 (n + 1)

theorem P3583749144337499304.correct : P3583749144337499304.Spec := by
  intro n
  simp only [A202335, Nat.add_sub_cancel]

end A202335

/-! ## A202335.P13284931576916408695

`A027170(eq[0, A103516(n)])+6`
-/

namespace A202335.P13284931576916408695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 6

end

end A202335.P13284931576916408695

namespace A202335

/-- `A027170(eq[0, A103516(n)])+6` -/
def P13284931576916408695.Spec : Prop :=
  ∀ n, P13284931576916408695.a n = A202335 (n + 1)

end A202335

/-! ## A202335.P5327852555714593941

`A103517(A144394(n+4))+A014410(n+2)`
-/

namespace A202335.P5327852555714593941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A144394 (n + 4)).toNat + A014410 (n + 2)

end

end A202335.P5327852555714593941

namespace A202335

/-- `A103517(A144394(n+4))+A014410(n+2)` -/
def P5327852555714593941.Spec : Prop :=
  ∀ n, P5327852555714593941.a n = A202335 (n + 1)

end A202335

/-!
# A202336: Number of digits in n^(n!).

The programs for A202336, there is no canonical definition to state claims against.
-/

/-! ## A202336.P10882081337644246602

`A070548(4*A001495(n))`
-/

namespace A202336.P10882081337644246602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (4 * A001495 n).toNat

end

end A202336.P10882081337644246602

/-! ## A202336.P17982360278878632359

`A070548(4*A003319(n))`
-/

namespace A202336.P17982360278878632359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (4 * A003319 n).toNat

end

end A202336.P17982360278878632359

/-! ## A202336.P13076878303345674883

`A260273((n-A011597(n))!)`
-/

namespace A202336.P13076878303345674883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260273 (Nat.factorial ((n : ℤ) - A011597 n).toNat)

end

end A202336.P13076878303345674883

/-!
# A202337: Range of A062723.

The programs for A202337, the canonical program `A202337.P14038781161250011621` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202337 has offset 1).

The definition of A202337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202337.P14038781161250011621

`3*a(n-1)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202337

/-- `3*a(n-1)` -/
def P14038781161250011621.Spec : Prop :=
  ∀ n, (P14038781161250011621.a n : ℤ) = A202337 (n + 1)

theorem P14038781161250011621.correct : P14038781161250011621.Spec := by
  intro n
  simp only [A202337, Nat.add_sub_cancel]

end A202337

/-! ## A202337.P17229086156129368973

`ogf((-1+x+6x^3)/(-1+3x))`
-/

namespace A202337.P17229086156129368973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -6] [1, -3] n

end

end A202337.P17229086156129368973

namespace A202337

/-- `ogf((-1+x+6x^3)/(-1+3x))` -/
def P17229086156129368973.Spec : Prop :=
  ∀ n, P17229086156129368973.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P10476673236663918211

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2, a(4)=3`
-/

namespace A202337.P10476673236663918211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A202337.P10476673236663918211

namespace A202337

/-- `abs(∏[-a(n-1)])` -/
def P10476673236663918211.Spec : Prop :=
  ∀ n, P10476673236663918211.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P6952111798963879286

`a(n-1)+a(n-1)+lcm(3%n, a(n-1))` with `a(0)=1`
-/

namespace A202337.P6952111798963879286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + Nat.lcm (3 % n) (a (n - 1)))

end

end A202337.P6952111798963879286

namespace A202337

/-- `a(n-1)+a(n-1)+lcm(3%n, a(n-1))` -/
def P6952111798963879286.Spec : Prop :=
  ∀ n, (P6952111798963879286.a n : ℤ) = A202337 (n + 1)

end A202337

/-! ## A202337.P15366404750754213179

`A025579(n+1)+2*char[2]`
-/

namespace A202337.P15366404750754213179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A202337.P15366404750754213179

namespace A202337

/-- `A025579(n+1)+2*char[2]` -/
def P15366404750754213179.Spec : Prop :=
  ∀ n, P15366404750754213179.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P7937590309028462642

`A068911(A058992(n+1))`
-/

namespace A202337.P7937590309028462642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A058992 (n + 1)).toNat

end

end A202337.P7937590309028462642

namespace A202337

/-- `A068911(A058992(n+1))` -/
def P7937590309028462642.Spec : Prop :=
  ∀ n, P7937590309028462642.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P17773299529428925858

`A062723(A204502(n+2))`
-/

namespace A202337.P17773299529428925858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (A204502 (n + 2)).toNat

end

end A202337.P17773299529428925858

namespace A202337

/-- `A062723(A204502(n+2))` -/
def P17773299529428925858.Spec : Prop :=
  ∀ n, P17773299529428925858.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P10440116233772809291

`record[A062723(A053645(n+1))]`
-/

namespace A202337.P10440116233772809291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202337.P10440116233772809291

namespace A202337

/-- `record[A062723(A053645(n+1))]` -/
def P10440116233772809291.Spec : Prop :=
  ∀ n, P10440116233772809291.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P10493135299744210111

`record[A062723(A304112(n+1))]`
-/

namespace A202337.P10493135299744210111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (A304112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202337.P10493135299744210111

namespace A202337

/-- `record[A062723(A304112(n+1))]` -/
def P10493135299744210111.Spec : Prop :=
  ∀ n, P10493135299744210111.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P3221846856169582592

`A052156(n)+and(n, A011782(n))`
-/

namespace A202337.P3221846856169582592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n + Int.land (n : ℤ) (A011782 n)

end

end A202337.P3221846856169582592

namespace A202337

/-- `A052156(n)+and(n, A011782(n))` -/
def P3221846856169582592.Spec : Prop :=
  ∀ n, P3221846856169582592.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P17949881714022412460

`record[A062723(n+1-A252736(n+1))]`
-/

namespace A202337.P17949881714022412460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 ((n + 1 : ℤ) - A252736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202337.P17949881714022412460

namespace A202337

/-- `record[A062723(n+1-A252736(n+1))]` -/
def P17949881714022412460.Spec : Prop :=
  ∀ n, P17949881714022412460.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P17927709692358682463

`A062723(∑[A062723(n)/A000792(n)])`
-/

namespace A202337.P17927709692358682463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062723 n : ℚ) / (A000792 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A202337.P17927709692358682463

namespace A202337

/-- `A062723(∑[A062723(n)/A000792(n)])` -/
def P17927709692358682463.Spec : Prop :=
  ∀ n, P17927709692358682463.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P10330502292202100309

`record[A062723(A015829(n)+A004396(n))]`
-/

namespace A202337.P10330502292202100309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (A015829 n + A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202337.P10330502292202100309

namespace A202337

/-- `record[A062723(A015829(n)+A004396(n))]` -/
def P10330502292202100309.Spec : Prop :=
  ∀ n, P10330502292202100309.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P8487144645992947218

`record[A062723(A004396(n)-A046094(n+1))]`
-/

namespace A202337.P8487144645992947218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062723 (A004396 n - A046094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202337.P8487144645992947218

namespace A202337

/-- `record[A062723(A004396(n)-A046094(n+1))]` -/
def P8487144645992947218.Spec : Prop :=
  ∀ n, P8487144645992947218.a n = A202337 (n + 1)

end A202337

/-! ## A202337.P7086943332939889788

`record[A062723(n)/A062723(A046094(n+1))]`
-/

namespace A202337.P7086943332939889788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062723 n : ℚ) / (A062723 (A046094 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202337.P7086943332939889788

namespace A202337

/-- `record[A062723(n)/A062723(A046094(n+1))]` -/
def P7086943332939889788.Spec : Prop :=
  ∀ n, P7086943332939889788.a n = (A202337 (n + 1) : ℚ)

end A202337

/-! ## A202337.P11256713589850979272

`A003946(n)/A006530(A003946(A000194(n)))`
-/

namespace A202337.P11256713589850979272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003946 n : ℚ) / (A006530 (A003946 (A000194 n).toNat).toNat : ℚ)

end

end A202337.P11256713589850979272

namespace A202337

/-- `A003946(n)/A006530(A003946(A000194(n)))` -/
def P11256713589850979272.Spec : Prop :=
  ∀ n, P11256713589850979272.a n = (A202337 (n + 1) : ℚ)

end A202337

/-!
# A202338: Smallest Fibonacci number which when appended to n produces a prime number.

The programs for A202338, there is no canonical definition to state claims against.
-/

/-! ## A202338.P7283529588437107456

`A006218(gcd(A086922(n), A218712(n)))`
-/

namespace A202338.P7283529588437107456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Int.gcd (A086922 n) (A218712 n))

end

end A202338.P7283529588437107456

/-! ## A202338.P14418071009704671036

`A143953(C(A143969(n), A054390(n)))`
-/

namespace A202338.P14418071009704671036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143953 (Nat.choose (A143969 n).toNat (A054390 n).toNat)

end

end A202338.P14418071009704671036

/-! ## A202338.P2665119946666758082

`or(A000122(n), A274163(A335514(n)))`
-/

namespace A202338.P2665119946666758082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A274163 (A335514 n).toNat)

end

end A202338.P2665119946666758082

/-! ## A202338.P178792601119317896

`A274163(A335514(n)+A000122(n)²)`
-/

namespace A202338.P178792601119317896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274163 (A335514 n + A000122 n ^ 2).toNat

end

end A202338.P178792601119317896

/-! ## A202338.P15679944371948371179

`gcd(A132127(n+1), A200520(A319778(n+2)))`
-/

namespace A202338.P15679944371948371179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132127 (n + 1)) (A200520 (A319778 (n + 2)).toNat)

end

end A202338.P15679944371948371179

/-!
# A202340: Number of times n occurs in Hofstadter H-sequence A005374.

The programs for A202340, the canonical program `A202340.P12710682154038267641` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202340 has offset 0).

The definition of A202340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202340.P10584564785982339782

`char[A202342(n+1)]+1`
-/

namespace A202340.P10584564785982339782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A202340.P10584564785982339782

namespace A202340

/-- `char[A202342(n+1)]+1` -/
def P10584564785982339782.Spec : Prop :=
  ∀ n, (P10584564785982339782.a n : ℤ) = A202340 n

end A202340

/-! ## A202340.P1946184541420704562

`2-char[A202341(n+1)]`
-/

namespace A202340.P1946184541420704562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A202340.P1946184541420704562

namespace A202340

/-- `2-char[A202341(n+1)]` -/
def P1946184541420704562.Spec : Prop :=
  ∀ n, P1946184541420704562.a n = A202340 n

end A202340

/-! ## A202340.P9907483406430288174

`char[A020942(n+1)-n]+1`
-/

namespace A202340.P9907483406430288174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A202340.P9907483406430288174

namespace A202340

/-- `char[A020942(n+1)-n]+1` -/
def P9907483406430288174.Spec : Prop :=
  ∀ n, (P9907483406430288174.a n : ℤ) = A202340 n

end A202340

/-! ## A202340.P9558075886248393040

`char[A288428(n+1)-1-n]+1`
-/

namespace A202340.P9558075886248393040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288428 (n + 1) - 1 - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A202340.P9558075886248393040

namespace A202340

/-- `char[A288428(n+1)-1-n]+1` -/
def P9558075886248393040.Spec : Prop :=
  ∀ n, (P9558075886248393040.a n : ℤ) = A202340 n

end A202340

/-! ## A202340.P12710682154038267641

`char[A136495(A136495(n+1))]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A202340

/-- `char[A136495(A136495(n+1))]+1` -/
def P12710682154038267641.Spec : Prop :=
  ∀ n, (P12710682154038267641.a n : ℤ) = A202340 n

theorem P12710682154038267641.correct : P12710682154038267641.Spec := by
  intro n
  simp only [A202340]

end A202340

/-! ## A202340.P11020462624032010541

`Δ[comp[A288696(2*n+1)-n]]`
-/

namespace A202340.P11020462624032010541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (2 * n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A202340.P11020462624032010541

namespace A202340

/-- `Δ[comp[A288696(2*n+1)-n]]` -/
def P11020462624032010541.Spec : Prop :=
  ∀ n, P11020462624032010541.a n = A202340 n

end A202340

/-! ## A202340.P10654509243736448509

`A000005(Δ[comp[A288696(n+1)]])`
-/

namespace A202340.P10654509243736448509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A202340.P10654509243736448509

namespace A202340

/-- `A000005(Δ[comp[A288696(n+1)]])` -/
def P10654509243736448509.Spec : Prop :=
  ∀ n, P10654509243736448509.a n = A202340 n

end A202340

/-! ## A202340.P1523603812818610234

`A000010(Δ[comp[A288696(n+1)]])`
-/

namespace A202340.P1523603812818610234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A202340.P1523603812818610234

namespace A202340

/-- `A000010(Δ[comp[A288696(n+1)]])` -/
def P1523603812818610234.Spec : Prop :=
  ∀ n, P1523603812818610234.a n = A202340 n

end A202340

/-! ## A202340.P3119735479688198520

`A000045(Δ[comp[A288696(n+1)]])`
-/

namespace A202340.P3119735479688198520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A202340.P3119735479688198520

namespace A202340

/-- `A000045(Δ[comp[A288696(n+1)]])` -/
def P3119735479688198520.Spec : Prop :=
  ∀ n, P3119735479688198520.a n = A202340 n

end A202340

/-! ## A202340.P12258191232445643692

`A288723(Δ[comp[A288696(n+1)]])`
-/

namespace A202340.P12258191232445643692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A202340.P12258191232445643692

namespace A202340

/-- `A288723(Δ[comp[A288696(n+1)]])` -/
def P12258191232445643692.Spec : Prop :=
  ∀ n, P12258191232445643692.a n = A202340 n

end A202340

/-!
# A202341: Numbers occurring exactly once in Hofstadter H-sequence A005374.

The programs for A202341, the canonical program `A202341.P2903062940164643080` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202341 has offset 1).

The definition of A202341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202341.P8599079724822801392

`comp[A202342(n+1)]`
-/

namespace A202341.P8599079724822801392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202341.P8599079724822801392

namespace A202341

/-- `comp[A202342(n+1)]` -/
def P8599079724822801392.Spec : Prop :=
  ∀ n, (P8599079724822801392.a n : ℤ) = A202341 (n + 1)

end A202341

/-! ## A202341.P7281658780146204782

`comp[A020942(n+1)-n]`
-/

namespace A202341.P7281658780146204782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A202341.P7281658780146204782

namespace A202341

/-- `comp[A020942(n+1)-n]` -/
def P7281658780146204782.Spec : Prop :=
  ∀ n, (P7281658780146204782.a n : ℤ) = A202341 (n + 1)

end A202341

/-! ## A202341.P2903062940164643080

`comp[A136495(n+1)+A005374(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A202341

/-- `comp[A136495(n+1)+A005374(n)]` -/
def P2903062940164643080.Spec : Prop :=
  ∀ n, (P2903062940164643080.a n : ℤ) = A202341 (n + 1)

theorem P2903062940164643080.correct : P2903062940164643080.Spec := by
  intro n
  simp only [A202341, Nat.add_sub_cancel]

end A202341

/-! ## A202341.P3642107033217002378

`eq[1, A202340(n)]`
-/

namespace A202341.P3642107033217002378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A202341.P3642107033217002378

namespace A202341

/-- `eq[1, A202340(n)]` -/
def P3642107033217002378.Spec : Prop :=
  ∀ n, (P3642107033217002378.a n : ℤ) = A202341 (n + 1)

end A202341

/-! ## A202341.P6861435393297196939

`lt[A202340(2*n-n), 2]`
-/

namespace A202341.P6861435393297196939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A202341.P6861435393297196939

namespace A202341

/-- `lt[A202340(2*n-n), 2]` -/
def P6861435393297196939.Spec : Prop :=
  ∀ n, (P6861435393297196939.a n : ℤ) = A202341 (n + 1)

end A202341

/-! ## A202341.P1898333346596520008

`record[(n*A202340(n))%A136495(n+1)]`
-/

namespace A202341.P1898333346596520008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A202340 n) (A136495 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202341.P1898333346596520008

namespace A202341

/-- `record[(n*A202340(n))%A136495(n+1)]` -/
def P1898333346596520008.Spec : Prop :=
  ∀ n, P1898333346596520008.a n = A202341 (n + 1)

end A202341

/-!
# A202342: Numbers occurring exactly twice in Hofstadter H-sequence A005374.

The programs for A202342, the canonical program `A202342.P5796561117243952660` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202342 has offset 1).

The definition of A202342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202342.P3698593300646700042

`A136495(A136495(n+1))`
-/

namespace A202342.P3698593300646700042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (n + 1)).toNat

end

end A202342.P3698593300646700042

namespace A202342

/-- `A136495(A136495(n+1))` -/
def P3698593300646700042.Spec : Prop :=
  ∀ n, P3698593300646700042.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P5796561117243952660

`A005374(A136496(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A202342

/-- `A005374(A136496(n+1))` -/
def P5796561117243952660.Spec : Prop :=
  ∀ n, P5796561117243952660.a n = A202342 (n + 1)

theorem P5796561117243952660.correct : P5796561117243952660.Spec := by
  intro n
  simp only [A202342, Nat.add_sub_cancel]

end A202342

/-! ## A202342.P10487596383510943414

`A020942(n+1)-n`
-/

namespace A202342.P10487596383510943414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) - (n : ℤ)

end

end A202342.P10487596383510943414

namespace A202342

/-- `A020942(n+1)-n` -/
def P10487596383510943414.Spec : Prop :=
  ∀ n, P10487596383510943414.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P82527143403076927

`A005374(n)+∑[A202340(n)]`
-/

namespace A202342.P82527143403076927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202342.P82527143403076927

namespace A202342

/-- `A005374(n)+∑[A202340(n)]` -/
def P82527143403076927.Spec : Prop :=
  ∀ n, P82527143403076927.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P13617248552651963014

`A136496(n+1)+A001478(n+1)`
-/

namespace A202342.P13617248552651963014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (n + 1) + A001478 (n + 1)

end

end A202342.P13617248552651963014

namespace A202342

/-- `A136496(n+1)+A001478(n+1)` -/
def P13617248552651963014.Spec : Prop :=
  ∀ n, P13617248552651963014.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P14030853130954378811

`A064106(n+1)-A064105(n+1)`
-/

namespace A202342.P14030853130954378811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - A064105 (n + 1)

end

end A202342.P14030853130954378811

namespace A202342

/-- `A064106(n+1)-A064105(n+1)` -/
def P14030853130954378811.Spec : Prop :=
  ∀ n, P14030853130954378811.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P15817246369955371706

`A136496(n+1)-A000027(n+1)`
-/

namespace A202342.P15817246369955371706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (n + 1) - A000027 (n + 1)

end

end A202342.P15817246369955371706

namespace A202342

/-- `A136496(n+1)-A000027(n+1)` -/
def P15817246369955371706.Spec : Prop :=
  ∀ n, P15817246369955371706.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P5582127779945416121

`A372756(n+1)%A372750(n+1)`
-/

namespace A202342.P5582127779945416121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372756 (n + 1)) (A372750 (n + 1))

end

end A202342.P5582127779945416121

namespace A202342

/-- `A372756(n+1)%A372750(n+1)` -/
def P5582127779945416121.Spec : Prop :=
  ∀ n, P5582127779945416121.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P7513539517726796980

`A372757(n+1)%A372750(n+1)`
-/

namespace A202342.P7513539517726796980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372757 (n + 1)) (A372750 (n + 1))

end

end A202342.P7513539517726796980

namespace A202342

/-- `A372757(n+1)%A372750(n+1)` -/
def P7513539517726796980.Spec : Prop :=
  ∀ n, P7513539517726796980.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P6267173149242930621

`A372758(n+1)+A005374(n)+n`
-/

namespace A202342.P6267173149242930621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (n + 1) + (A005374 n + (n : ℤ))

end

end A202342.P6267173149242930621

namespace A202342

/-- `A372758(n+1)+A005374(n)+n` -/
def P6267173149242930621.Spec : Prop :=
  ∀ n, P6267173149242930621.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P15962171346632756520

`A136495(∑[A202340(n)])`
-/

namespace A202342.P15962171346632756520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202342.P15962171346632756520

namespace A202342

/-- `A136495(∑[A202340(n)])` -/
def P15962171346632756520.Spec : Prop :=
  ∀ n, P15962171346632756520.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P11779305985567376944

`A288696(Δ[n²])-Δ[n²]`
-/

namespace A202342.P11779305985567376944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A202342.P11779305985567376944

namespace A202342

/-- `A288696(Δ[n²])-Δ[n²]` -/
def P11779305985567376944.Spec : Prop :=
  ∀ n, P11779305985567376944.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P13838258512043693520

`A136496(A110119(A110119(n+1)))-(n+1)`
-/

namespace A202342.P13838258512043693520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A110119 (A110119 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A202342.P13838258512043693520

namespace A202342

/-- `A136496(A110119(A110119(n+1)))-(n+1)` -/
def P13838258512043693520.Spec : Prop :=
  ∀ n, P13838258512043693520.a n = A202342 (n + 1)

end A202342

/-! ## A202342.P7640749411742368274

`eq[1, A105083(n)]+1`
-/

namespace A202342.P7640749411742368274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A202342.P7640749411742368274

namespace A202342

/-- `eq[1, A105083(n)]+1` -/
def P7640749411742368274.Spec : Prop :=
  ∀ n, (P7640749411742368274.a n : ℤ) = A202342 (n + 1)

end A202342

/-! ## A202342.P18372190019276073685

`eq[2, A202340(n+1)]+1`
-/

namespace A202342.P18372190019276073685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A202342.P18372190019276073685

namespace A202342

/-- `eq[2, A202340(n+1)]+1` -/
def P18372190019276073685.Spec : Prop :=
  ∀ n, (P18372190019276073685.a n : ℤ) = A202342 (n + 1)

end A202342

/-!
# A202348: Decimal expansion of x satisfying x = exp(x-2).

The programs for A202348, there is no canonical definition to state claims against.
-/

/-! ## A202348.P12723311312666175265

`9-A202320(n+1)`
-/

namespace A202348.P12723311312666175265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A202320 (n + 1 + 1)

end

end A202348.P12723311312666175265

/-!
# A202349: Lexicographically earliest sequence such that the sequence and its first and second differences share no terms, and the 3rd differences are equal to the original sequence.

The programs for A202349, the canonical program `A202349.P10784188370040134369` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202349 has offset 1).

The definition of A202349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202349.P10784188370040134369

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A202349

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P10784188370040134369.Spec : Prop :=
  ∀ n, P10784188370040134369.a n = A202349 (n + 1)

theorem P10784188370040134369.correct : P10784188370040134369.Spec := by
  intro n
  simp only [A202349, Nat.add_sub_cancel]

end A202349

/-! ## A202349.P16797594343828039993

`ogf((1+3x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A202349.P16797594343828039993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -3, 3, -2] n

end

end A202349.P16797594343828039993

namespace A202349

/-- `ogf((1+3x^2)/(1-3x+3x^2-2x^3))` -/
def P16797594343828039993.Spec : Prop :=
  ∀ n, P16797594343828039993.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P7657653321424755819

`A130624(n)+2^n`
-/

namespace A202349.P7657653321424755819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130624 n + (2 ^ n : ℤ)

end

end A202349.P7657653321424755819

namespace A202349

/-- `A130624(n)+2^n` -/
def P7657653321424755819.Spec : Prop :=
  ∀ n, P7657653321424755819.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P8606643031604765000

`A119910(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A202349.P8606643031604765000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119910 n + 2 * a (n - 1)

end

end A202349.P8606643031604765000

namespace A202349

/-- `A119910(n)+2*a(n-1)` -/
def P8606643031604765000.Spec : Prop :=
  ∀ n, P8606643031604765000.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P4593461703037263582

`A138034(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A202349.P4593461703037263582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138034 n + 2 * a (n - 1)

end

end A202349.P4593461703037263582

namespace A202349

/-- `A138034(n)+2*a(n-1)` -/
def P4593461703037263582.Spec : Prop :=
  ∀ n, P4593461703037263582.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P13173870966975032402

`2*a(n-1)-A174737(n)` with `a(0)=1`
-/

namespace A202349.P13173870966975032402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A174737 n

end

end A202349.P13173870966975032402

namespace A202349

/-- `2*a(n-1)-A174737(n)` -/
def P13173870966975032402.Spec : Prop :=
  ∀ n, P13173870966975032402.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P9786365168815754791

`A130750(n)+A024495(n)`
-/

namespace A202349.P9786365168815754791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + A024495 n

end

end A202349.P9786365168815754791

namespace A202349

/-- `A130750(n)+A024495(n)` -/
def P9786365168815754791.Spec : Prop :=
  ∀ n, P9786365168815754791.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P17559857807168229768

`A168673(n)-A128834(n)`
-/

namespace A202349.P17559857807168229768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168673 n - A128834 n

end

end A202349.P17559857807168229768

namespace A202349

/-- `A168673(n)-A128834(n)` -/
def P17559857807168229768.Spec : Prop :=
  ∀ n, P17559857807168229768.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P5077517492552158984

`A281166(n+1)+A024495(n)`
-/

namespace A202349.P5077517492552158984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281166 (n + 1) + A024495 n

end

end A202349.P5077517492552158984

namespace A202349

/-- `A281166(n+1)+A024495(n)` -/
def P5077517492552158984.Spec : Prop :=
  ∀ n, P5077517492552158984.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P6725689302111764853

`A168673(n)+A010892(n+2)`
-/

namespace A202349.P6725689302111764853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168673 n + A010892 (n + 2)

end

end A202349.P6725689302111764853

namespace A202349

/-- `A168673(n)+A010892(n+2)` -/
def P6725689302111764853.Spec : Prop :=
  ∀ n, P6725689302111764853.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P7185987578765753065

`A130750(n)+A130781(n)-A024493(n)`
-/

namespace A202349.P7185987578765753065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n + (A130781 n - A024493 n)

end

end A202349.P7185987578765753065

namespace A202349

/-- `A130750(n)+A130781(n)-A024493(n)` -/
def P7185987578765753065.Spec : Prop :=
  ∀ n, P7185987578765753065.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P5791860279453505184

`A000079(n+1)+A024495(n)-A010892(n)`
-/

namespace A202349.P5791860279453505184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A024495 n - A010892 n)

end

end A202349.P5791860279453505184

namespace A202349

/-- `A000079(n+1)+A024495(n)-A010892(n)` -/
def P5791860279453505184.Spec : Prop :=
  ∀ n, P5791860279453505184.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P3166305470173435355

`A007283(n)-(A024494(n+1)+A010892(n))`
-/

namespace A202349.P3166305470173435355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - (A024494 (n + 1) + A010892 n)

end

end A202349.P3166305470173435355

namespace A202349

/-- `A007283(n)-(A024494(n+1)+A010892(n))` -/
def P3166305470173435355.Spec : Prop :=
  ∀ n, P3166305470173435355.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P1321895722642928735

`A024493(n+1)+A130750(n)-A024493(n)`
-/

namespace A202349.P1321895722642928735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) + (A130750 n - A024493 n)

end

end A202349.P1321895722642928735

namespace A202349

/-- `A024493(n+1)+A130750(n)-A024493(n)` -/
def P1321895722642928735.Spec : Prop :=
  ∀ n, P1321895722642928735.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P15593367983324372226

`A135350(n+1)+A135350(n)-A131708(n)`
-/

namespace A202349.P15593367983324372226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135350 (n + 1) + (A135350 n - A131708 n)

end

end A202349.P15593367983324372226

namespace A202349

/-- `A135350(n+1)+A135350(n)-A131708(n)` -/
def P15593367983324372226.Spec : Prop :=
  ∀ n, P15593367983324372226.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P6394389932936642208

`A130781(n+1)+A130785(n)-A141775(n)`
-/

namespace A202349.P6394389932936642208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (n + 1) + (A130785 n - A141775 n)

end

end A202349.P6394389932936642208

namespace A202349

/-- `A130781(n+1)+A130785(n)-A141775(n)` -/
def P6394389932936642208.Spec : Prop :=
  ∀ n, P6394389932936642208.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P13843038881273410759

`A062092(n)-(A131531(n+2)+A010892(n))`
-/

namespace A202349.P13843038881273410759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - (A131531 (n + 2) + A010892 n)

end

end A202349.P13843038881273410759

namespace A202349

/-- `A062092(n)-(A131531(n+2)+A010892(n))` -/
def P13843038881273410759.Spec : Prop :=
  ∀ n, P13843038881273410759.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P1049792004720556862

`A024495(n+1)+A130781(n+1)+A024495(n)`
-/

namespace A202349.P1049792004720556862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) + (A130781 (n + 1) + A024495 n)

end

end A202349.P1049792004720556862

namespace A202349

/-- `A024495(n+1)+A130781(n+1)+A024495(n)` -/
def P1049792004720556862.Spec : Prop :=
  ∀ n, P1049792004720556862.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P10456427169103131198

`A130781(n+1)+A130781(n+1)-A024493(n)`
-/

namespace A202349.P10456427169103131198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (n + 1) + (A130781 (n + 1) - A024493 n)

end

end A202349.P10456427169103131198

namespace A202349

/-- `A130781(n+1)+A130781(n+1)-A024493(n)` -/
def P10456427169103131198.Spec : Prop :=
  ∀ n, P10456427169103131198.a n = A202349 (n + 1)

end A202349

/-! ## A202349.P797779095925073088

`A111927(n+1)+A281166(n+1)-A111927(n)`
-/

namespace A202349.P797779095925073088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111927 (n + 1) + (A281166 (n + 1) - A111927 n)

end

end A202349.P797779095925073088

namespace A202349

/-- `A111927(n+1)+A281166(n+1)-A111927(n)` -/
def P797779095925073088.Spec : Prop :=
  ∀ n, P797779095925073088.a n = A202349 (n + 1)

end A202349

/-!
# A202355: Decimal expansion of the number x satisfying x-1=exp(-x).

The programs for A202355, there is no canonical definition to state claims against.
-/

/-! ## A202355.P881737371198328370

`A202357(n-a(A000038(n)))` with `a(0)=1`
-/

namespace A202355.P881737371198328370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A202357 ((n : ℤ) - a (A000038 n).toNat).toNat

end

end A202355.P881737371198328370

/-!
# A202357: Decimal expansion of the number x satisfying e*x = e^(-x).

The programs for A202357, there is no canonical definition to state claims against.
-/

/-! ## A202357.P9055472827324979490

`A202355(n+1)`
-/

namespace A202357.P9055472827324979490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202355 (n + 1 + 1)

end

end A202357.P9055472827324979490

/-!
# A202358: Sum of digits of n^(n!).

The programs for A202358, there is no canonical definition to state claims against.
-/

/-! ## A202358.P2386021196024365884

`∑{digits}[n^n!, #]`
-/

namespace A202358.P2386021196024365884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A202358.P2386021196024365884

/-! ## A202358.P1286651246751273665

`∑{digits}[A053986(n), #]`
-/

namespace A202358.P1286651246751273665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A202358.P1286651246751273665

/-!
# A202359: Denominators of coefficients in Taylor series expansion of arccosh(exp(x)-sin(x)).

The programs for A202359, there is no canonical definition to state claims against.
-/

/-! ## A202359.P16734695428609837530

`3^(n-1)*A209631(round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A202359.P16734695428609837530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A209631 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat : ℚ)

end

end A202359.P16734695428609837530

/-! ## A202359.P3909301542948456353

`A026741(A170859(n)^(n-1))`
-/

namespace A202359.P3909301542948456353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A170859 n : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A202359.P3909301542948456353

/-!
# A202360: Expansion of e.g.f. A(x) = Sum_{n>=0} 2^n * binomial(x^n + n-1, n).

The programs for A202360, there is no canonical definition to state claims against.
-/

/-! ## A202360.P13891164485161740296

`A062401(∑[ceil((atan(42)+n)^(n-1))])`
-/

namespace A202360.P13891164485161740296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (42 : ℝ) + (n : ℝ)) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202360.P13891164485161740296

/-! ## A202360.P9713362827755902557

`A333787(∑[A002866(n)])`
-/

namespace A202360.P9713362827755902557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A202360.P9713362827755902557

/-!
# A202361: Record (maximal) gaps between prime decuplets (p+0,2,6,12,14,20,24,26,30,32).

The programs for A202361, there is no canonical definition to state claims against.
-/

/-! ## A202361.P10470323708802516957

`record[Δ[A027570(n+1)]]`
-/

namespace A202361.P10470323708802516957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027570 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202361.P10470323708802516957

/-! ## A202361.P13814619275725625711

`record[A027570(n+2)-A027570(n+1)]`
-/

namespace A202361.P13814619275725625711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027570 (n + 2) - A027570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202361.P13814619275725625711

/-!
# A202363: Triangular array read by rows: T(n,k) is the number of inversion pairs ( p(i) < p(j) with i>j ) that are separated by exactly k elements in all n-permutations (where the permutation is represented in one line notation); n>=2, 0<=k<=n-2.

The programs for A202363, the canonical program `A202363.P4425557384897359934` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202363 has offset 2).

The definition of A202363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202363.P14375808629627331331

`A094310(n+1)*A107985(n)`
-/

namespace A202363.P14375808629627331331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1) * A107985 n

end

end A202363.P14375808629627331331

namespace A202363

/-- `A094310(n+1)*A107985(n)` -/
def P14375808629627331331.Spec : Prop :=
  ∀ n, P14375808629627331331.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P4866403728043214069

`A004736(n+1)*A062139(A057944(n))`
-/

namespace A202363.P4866403728043214069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A062139 (A057944 n).toNat

end

end A202363.P4866403728043214069

namespace A202363

/-- `A004736(n+1)*A062139(A057944(n))` -/
def P4866403728043214069.Spec : Prop :=
  ∀ n, P4866403728043214069.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P6507324202575270242

`A094305(n)*A098361(A007401(n+1))`
-/

namespace A202363.P6507324202575270242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094305 n * A098361 (A007401 (n + 1)).toNat

end

end A202363.P6507324202575270242

namespace A202363

/-- `A094305(n)*A098361(A007401(n+1))` -/
def P6507324202575270242.Spec : Prop :=
  ∀ n, P6507324202575270242.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P4425557384897359934

`A127739(n+1)*A162608(A061579(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A202363

/-- `A127739(n+1)*A162608(A061579(n))` -/
def P4425557384897359934.Spec : Prop :=
  ∀ n, P4425557384897359934.a n = A202363 (n + 2)

theorem P4425557384897359934.correct : P4425557384897359934.Spec := by
  intro n
  simp only [A202363, Nat.add_sub_cancel]

end A202363

/-! ## A202363.P660337890472490917

`A001710(A003057(n+2))*A004736(n+1)`
-/

namespace A202363.P660337890472490917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (A003057 (n + 2)).toNat * A004736 (n + 1)

end

end A202363.P660337890472490917

namespace A202363

/-- `A001710(A003057(n+2))*A004736(n+1)` -/
def P660337890472490917.Spec : Prop :=
  ∀ n, P660337890472490917.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P7121052128150752528

`A004736(n+1)*A247500(A004736(n+1)+n+1)`
-/

namespace A202363.P7121052128150752528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A247500 (A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A202363.P7121052128150752528

namespace A202363

/-- `A004736(n+1)*A247500(A004736(n+1)+n+1)` -/
def P7121052128150752528.Spec : Prop :=
  ∀ n, P7121052128150752528.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P16636922965710280475

`A057944(A007401(n+1))*A162608(A061579(n))`
-/

namespace A202363.P16636922965710280475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A007401 (n + 1)).toNat * A162608 (A061579 n).toNat

end

end A202363.P16636922965710280475

namespace A202363

/-- `A057944(A007401(n+1))*A162608(A061579(n))` -/
def P16636922965710280475.Spec : Prop :=
  ∀ n, P16636922965710280475.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P11563465641527921887

`A004736(n+1)*A156584(A004736(n+1)+n+1)`
-/

namespace A202363.P11563465641527921887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A156584 (A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A202363.P11563465641527921887

namespace A202363

/-- `A004736(n+1)*A156584(A004736(n+1)+n+1)` -/
def P11563465641527921887.Spec : Prop :=
  ∀ n, P11563465641527921887.a n = A202363 (n + 2)

end A202363

/-! ## A202363.P7712909007820001302

`A123316(A380649(n+1))`
-/

namespace A202363.P7712909007820001302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123316 (A380649 (n + 1)).toNat

end

end A202363.P7712909007820001302

namespace A202363

/-- `A123316(A380649(n+1))` -/
def P7712909007820001302.Spec : Prop :=
  ∀ n, P7712909007820001302.a n = A202363 (n + 2)

end A202363

/-!
# A202364: Number of n-permutations with at least one cycle of length >=4.

The programs for A202364, there is no canonical definition to state claims against.
-/

/-! ## A202364.P5575125613903619375

`n!-A057693(n)`
-/

namespace A202364.P5575125613903619375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A057693 n

end

end A202364.P5575125613903619375

/-! ## A202364.P530699262858389341

`A000142(n)-A057693(n)`
-/

namespace A202364.P530699262858389341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A057693 n

end

end A202364.P530699262858389341

/-! ## A202364.P3851793277492409472

`A094587(∑[n])-A057693(n)`
-/

namespace A202364.P3851793277492409472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j) - A057693 n

end

end A202364.P3851793277492409472

/-! ## A202364.P9017435001195622079

`∏[A028310(n)]-A057693(n)`
-/

namespace A202364.P9017435001195622079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A057693 n

end

end A202364.P9017435001195622079

/-! ## A202364.P12799146397071097195

`n!-(A071007(n)+A000085(n))`
-/

namespace A202364.P12799146397071097195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A071007 n + A000085 n)

end

end A202364.P12799146397071097195

/-! ## A202364.P5459431662756244709

`A008279(A000096(n))-A057693(n)`
-/

namespace A202364.P5459431662756244709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A000096 n).toNat - A057693 n

end

end A202364.P5459431662756244709

/-! ## A202364.P2578116213819154561

`A068424(A179865(n+1))-A057693(n)`
-/

namespace A202364.P2578116213819154561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (A179865 (n + 1)).toNat - A057693 n

end

end A202364.P2578116213819154561

/-! ## A202364.P10021969582467070234

`A000142(n)-(A071007(n)+A000085(n))`
-/

namespace A202364.P10021969582467070234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A071007 n + A000085 n)

end

end A202364.P10021969582467070234

/-!
# A202365: G.f.: Sum_{n>=0} (n-x)^n * x^n / (1 + n*x - x^2)^n.

The programs for A202365, there is no canonical definition to state claims against.
-/

/-! ## A202365.P13000318365981610640

`n!+(n-1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A202365.P13000318365981610640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (Nat.factorial n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A202365.P13000318365981610640

/-! ## A202365.P3840709576183781464

`A098361(A000124(n))*A212342(n)`
-/

namespace A202365.P3840709576183781464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat * A212342 n

end

end A202365.P3840709576183781464

/-! ## A202365.P14209747908908370551

`A047920(A161680(n))*A212342(n)`
-/

namespace A202365.P14209747908908370551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A161680 n).toNat * A212342 n

end

end A202365.P14209747908908370551

/-! ## A202365.P3619798721484864098

`A000196(A002061(n))!*A212342(n)`
-/

namespace A202365.P3619798721484864098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000196 (A002061 n).toNat).toNat : ℤ) * A212342 n

end

end A202365.P3619798721484864098

/-! ## A202365.P846800239335441963

`A212342(n)*A220884(A000217(n))`
-/

namespace A202365.P846800239335441963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n * A220884 (A000217 n).toNat

end

end A202365.P846800239335441963

/-!
# A202366: Approximate series expansion of arccosh(exp(3*x) - sin(3*x)).

The programs for A202366, there is no canonical definition to state claims against.
-/

/-! ## A202366.P13647146085041850331

`∑[6*n]*A144032(A144010(n))`
-/

namespace A202366.P13647146085041850331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A144032 (A144010 n).toNat

end

end A202366.P13647146085041850331

/-!
# A202367: LCM of denominators of the coefficients of polynomials Q^(2)_m(n) defined by the recursion Q^(2)_0(n)=1; for m >= 1, Q^(2)_m(n) = Sum_{i=1..n} i^2*Q^(2)_(m-1)(i).

The programs for A202367, there is no canonical definition to state claims against.
-/

/-! ## A202367.P1862629163232331655

`∏[ceil(A006863(n)/4)]`
-/

namespace A202367.P1862629163232331655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006863 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202367.P1862629163232331655

/-! ## A202367.P9058328686886480502

`record[n!*A290030(n)]`
-/

namespace A202367.P9058328686886480502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A290030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202367.P9058328686886480502

/-! ## A202367.P16960195704017150438

`a(n-1)*A036283(n)` with `a(0)=1`
-/

namespace A202367.P16960195704017150438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A036283 n

end

end A202367.P16960195704017150438

/-! ## A202367.P13068729573818167184

`∏[A344918(A004273(n))]`
-/

namespace A202367.P13068729573818167184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344918 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A202367.P13068729573818167184

/-! ## A202367.P14574961932885939557

`∏[A006863(n)]/A000302(n)`
-/

namespace A202367.P14574961932885939557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000302 n : ℚ)

end

end A202367.P14574961932885939557

/-!
# A202370: Number of (n+2)X(n+2) binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202370, there is no canonical definition to state claims against.
-/

/-! ## A202370.P13165440307418505680

`A202378(∑[4*n]+1)`
-/

namespace A202370.P13165440307418505680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202370.P13165440307418505680

/-! ## A202370.P12198681088427268864

`record[A202378(Δ[A235355(n)])]`
-/

namespace A202370.P12198681088427268864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202370.P12198681088427268864

/-! ## A202370.P976949448568259138

`record[A202378(A330613(n+1))]`
-/

namespace A202370.P976949448568259138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202370.P976949448568259138

/-! ## A202370.P8626050241367993415

`A202378(A001844(n))+char[20]`
-/

namespace A202370.P8626050241367993415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202370.P8626050241367993415

/-! ## A202370.P7564374082518314614

`record[A202378(n+1)*A214509(2*n+1)]`
-/

namespace A202370.P7564374082518314614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (n + 1) * A214509 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202370.P7564374082518314614

/-!
# A202371: Number of (n+2)X3 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202371, there is no canonical definition to state claims against.
-/

/-! ## A202371.P3312872113040463851

`A207785(∑[n+4]+9)`
-/

namespace A202371.P3312872113040463851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A202371.P3312872113040463851

/-! ## A202371.P7103355638017289640

`A207785(A167614(n+3))+A096268(2*n)`
-/

namespace A202371.P7103355638017289640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A167614 (n + 3)).toNat + A096268 (2 * n)

end

end A202371.P7103355638017289640

/-! ## A202371.P11214456864274384880

`A207785(A167614(n+3))%A202372(n+1)`
-/

namespace A202371.P11214456864274384880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207785 (A167614 (n + 3)).toNat) (A202372 (n + 1))

end

end A202371.P11214456864274384880

/-! ## A202371.P2099182590008027076

`A202378(∑[n]+1)`
-/

namespace A202371.P2099182590008027076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202371.P2099182590008027076

/-! ## A202371.P13346480747578478143

`record[A202378(A056534(n+1))]`
-/

namespace A202371.P13346480747578478143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202371.P13346480747578478143

/-!
# A202372: Number of (n+2)X4 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202372, there is no canonical definition to state claims against.
-/

/-! ## A202372.P2017127898232571237

`A202378(∑[n+1]+2)`
-/

namespace A202372.P2017127898232571237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A202372.P2017127898232571237

/-! ## A202372.P9162153716122225919

`record[root(A202378(n+2), A027555(n))]`
-/

namespace A202372.P9162153716122225919
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202378 (n + 2) : ℝ) ^ (1 / (A027555 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202372.P9162153716122225919

/-! ## A202372.P8518057722338593137

`record[A202378(n+2)/A092107(n+1)]`
-/

namespace A202372.P8518057722338593137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202378 (n + 2) : ℚ) / (A092107 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202372.P8518057722338593137

/-! ## A202372.P17401706558504643457

`record[root(A202378(n+2), A002260(n+1))]`
-/

namespace A202372.P17401706558504643457
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202378 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202372.P17401706558504643457

/-! ## A202372.P12286983319716855237

`record[gcd(A202378(n+3), A206306(n+1))]`
-/

namespace A202372.P12286983319716855237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202378 (n + 3)) (A206306 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202372.P12286983319716855237

/-!
# A202373: Number of (n+2)X5 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202373, there is no canonical definition to state claims against.
-/

/-! ## A202373.P2702817464110789021

`A202378(∑[n+2]+4)`
-/

namespace A202373.P2702817464110789021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A202373.P2702817464110789021

/-! ## A202373.P8929669239564030956

`and(-1, A202378(A167614(n+1)))`
-/

namespace A202373.P8929669239564030956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A202378 (A167614 (n + 1)).toNat)

end

end A202373.P8929669239564030956

/-! ## A202373.P15898771908542112187

`A202378(A046691(n)+7)+char[23]`
-/

namespace A202373.P15898771908542112187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202373.P15898771908542112187

/-! ## A202373.P3265460701821845911

`record[A202378(n+4)/A118976(n+1)]`
-/

namespace A202373.P3265460701821845911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202378 (n + 4) : ℚ) / (A118976 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202373.P3265460701821845911

/-! ## A202373.P2435904923694576727

`A202378(A167614(n+1))+A096268(2*n)`
-/

namespace A202373.P2435904923694576727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A167614 (n + 1)).toNat + A096268 (2 * n)

end

end A202373.P2435904923694576727

/-!
# A202374: Number of (n+2)X6 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202374, there is no canonical definition to state claims against.
-/

/-! ## A202374.P14754342716856169644

`A202378(∑[n+3]+7)`
-/

namespace A202374.P14754342716856169644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A202374.P14754342716856169644

/-! ## A202374.P15051977625525368926

`A202378(A055999(n)+10)+char[20]`
-/

namespace A202374.P15051977625525368926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202374.P15051977625525368926

/-! ## A202374.P8920491923130801660

`A202378(A000124(n+3)+3)+char[20]`
-/

namespace A202374.P8920491923130801660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A202374.P8920491923130801660

/-! ## A202374.P6989066888899476481

`A007318(C(n, 2))*A202378(A055999(n)+10)`
-/

namespace A202374.P6989066888899476481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A202378 (A055999 n + 10).toNat

end

end A202374.P6989066888899476481

/-! ## A202374.P12169468448614188684

`A000108(round(n/39))*A202378(A055999(n)+10)`
-/

namespace A202374.P12169468448614188684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A202378 (A055999 n + 10).toNat

end

end A202374.P12169468448614188684

/-!
# A202375: Number of (n+2)X7 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202375, there is no canonical definition to state claims against.
-/

/-! ## A202375.P14213335086109322414

`A202378(∑[n+4]+11)`
-/

namespace A202375.P14213335086109322414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A202375.P14213335086109322414

/-! ## A202375.P16982355544178404973

`A320742(n+1)+A202378(A374005(n+1))`
-/

namespace A202375.P16982355544178404973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A202378 (A374005 (n + 1)).toNat

end

end A202375.P16982355544178404973

/-!
# A202376: Number of (n+2)X8 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202376, there is no canonical definition to state claims against.
-/

/-! ## A202376.P9506911850148733597

`A202378(A374007(n+1))`
-/

namespace A202376.P9506911850148733597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A374007 (n + 1)).toNat

end

end A202376.P9506911850148733597

/-! ## A202376.P5243991723616503390

`A202378(A166136(n+4))`
-/

namespace A202376.P5243991723616503390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A166136 (n + 4)).toNat

end

end A202376.P5243991723616503390

/-! ## A202376.P2341497952914647626

`A202378(A167499(n+4)+1)`
-/

namespace A202376.P2341497952914647626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A167499 (n + 4) + 1).toNat

end

end A202376.P2341497952914647626

/-! ## A202376.P7300147923025730558

`A202378(A167614(n+4)+3)`
-/

namespace A202376.P7300147923025730558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A167614 (n + 4) + 3).toNat

end

end A202376.P7300147923025730558

/-! ## A202376.P7909460856407969888

`A202378(A000124(n+5)+5)`
-/

namespace A202376.P7909460856407969888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A000124 (n + 5) + 5).toNat

end

end A202376.P7909460856407969888

/-!
# A202377: Number of (n+2)X9 binary arrays avoiding patterns 001 and 111 in rows and columns.

The programs for A202377, there is no canonical definition to state claims against.
-/

/-! ## A202377.P6219849174834270652

`A202378(A374008(n+1))`
-/

namespace A202377.P6219849174834270652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A374008 (n + 1)).toNat

end

end A202377.P6219849174834270652

/-! ## A202377.P15633551732457097851

`A202378(A000124(n+6)+6)`
-/

namespace A202377.P15633551732457097851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A000124 (n + 6) + 6).toNat

end

end A202377.P15633551732457097851

/-! ## A202377.P6633301140761346381

`A202378(A000217(n+6)+7)`
-/

namespace A202377.P6633301140761346381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A000217 (n + 6) + 7).toNat

end

end A202377.P6633301140761346381

/-! ## A202377.P8340832561391302452

`A202378(A055998(n+4)+10)`
-/

namespace A202377.P8340832561391302452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A055998 (n + 4) + 10).toNat

end

end A202377.P8340832561391302452

/-! ## A202377.P4685572288894571010

`A202378(A046691(n+4)+11)`
-/

namespace A202377.P4685572288894571010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202378 (A046691 (n + 4) + 11).toNat

end

end A202377.P4685572288894571010

/-!
# A202379: Denominators of coefficients in Taylor series expansion of log(cosec(x)*log(x+1)).

The programs for A202379, there is no canonical definition to state claims against.
-/

/-! ## A202379.P12503466519745613670

`A074206(A202617(n))*A202619(n)`
-/

namespace A202379.P12503466519745613670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A202617 n).toNat * A202619 n

end

end A202379.P12503466519745613670

/-! ## A202379.P5173478835296314898

`A202619(n)*A339278(A001423(n))`
-/

namespace A202379.P5173478835296314898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202619 n * A339278 (A001423 n).toNat

end

end A202379.P5173478835296314898

/-!
# A202380: Denominators of coefficients in Taylor series expansion of log(cosec(x)*arcsin(x)).

The programs for A202380, there is no canonical definition to state claims against.
-/

/-! ## A202380.P17721544618335209745

`A004719(A202621(n))*A135880(n)`
-/

namespace A202380.P17721544618335209745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A202621 n).toNat * A135880 n

end

end A202380.P17721544618335209745

/-!
# A202382: Denominators of coefficients in Taylor series expansion of exp(cosec(x)-cotanh(x)).

The programs for A202382, there is no canonical definition to state claims against.
-/

/-! ## A202382.P17848297608286180341

`lcm(A047058(n), A336915(A069749(2*n+1)))`
-/

namespace A202382.P17848297608286180341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047058 n) (A336915 (A069749 (2 * n + 1)).toNat)

end

end A202382.P17848297608286180341

/-! ## A202382.P6355125291847566410

`lcm(A047058(n), A186099(A004117(n)))`
-/

namespace A202382.P6355125291847566410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047058 n) (A186099 (A004117 n).toNat)

end

end A202382.P6355125291847566410

/-! ## A202382.P13482214233953392607

`A047058(n)*A184348(A003418(n))`
-/

namespace A202382.P13482214233953392607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047058 n * A184348 (A003418 n).toNat

end

end A202382.P13482214233953392607

/-!
# A202383: Denominators of coefficients in Taylor series expansion of log(cosec(x)*tanh(x)).

The programs for A202383, there is no canonical definition to state claims against.
-/

/-! ## A202383.P5395198187883592998

`A046989(n)/A233554(A330964(2*n)²)`
-/

namespace A202383.P5395198187883592998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046989 n : ℚ) / (A233554 (A330964 (2 * n) ^ 2).toNat : ℚ)

end

end A202383.P5395198187883592998

/-!
# A202384: Denominators of coefficients in Taylor series expansion of arccosh(cosec(x)*arctanh(x)).

The programs for A202384, there is no canonical definition to state claims against.
-/

/-! ## A202384.P2338473589360092003

`A000265(A202382(n))*A279833(n)`
-/

namespace A202384.P2338473589360092003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A202382 n).toNat * A279833 n

end

end A202384.P2338473589360092003

/-!
# A202385: Number of partitions of n into distinct parts having pairwise common factors but no overall common factor.

The programs for A202385, there is no canonical definition to state claims against.
-/

/-! ## A202385.P17146405001124453489

`A318715(n+31)`
-/

namespace A202385.P17146405001124453489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318715 (n + 31)

end

end A202385.P17146405001124453489

/-! ## A202385.P1415767284072198762

`C(A336570(A095699(n)), A355584(n+1))`
-/

namespace A202385.P1415767284072198762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336570 (A095699 n).toNat).toNat (A355584 (n + 1)).toNat

end

end A202385.P1415767284072198762

/-! ## A202385.P9630787128644346477

`and(A004540(n+1), A030102(lcm(6, (n+1)^3)/6))`
-/

namespace A202385.P9630787128644346477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004540 (n + 1)) (A030102 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat)

end

end A202385.P9630787128644346477

/-! ## A202385.P11102481781693452308

`and(A000203(A006499(n)), A029391(n))`
-/

namespace A202385.P11102481781693452308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A006499 n).toNat) (A029391 n)

end

end A202385.P11102481781693452308

/-! ## A202385.P13201250668552177275

`and(A029391(n), A173052(A026351(n)))`
-/

namespace A202385.P13201250668552177275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029391 n) (A173052 (A026351 n).toNat)

end

end A202385.P13201250668552177275

/-!
# A202387: Squarefree Smith numbers, cf. A006753.

The programs for A202387, there is no canonical definition to state claims against.
-/

/-! ## A202387.P3669789949564597308

`A006753(eq[1, ∏{e}[A006753(n+1), #]]+1)`
-/

namespace A202387.P3669789949564597308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A202387.P3669789949564597308

/-! ## A202387.P14038034488901490405

`∩[A006753(n+1), A019506(n+1)]`
-/

namespace A202387.P14038034488901490405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P14038034488901490405

/-! ## A202387.P10564554490281051188

`record[A007913(A019506(n+1))]`
-/

namespace A202387.P10564554490281051188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A019506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202387.P10564554490281051188

/-! ## A202387.P2629533847586519127

`record[A007947(A006753(n+2))]`
-/

namespace A202387.P2629533847586519127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006753 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202387.P2629533847586519127

/-! ## A202387.P6952996311443237112

`filter[A006753(n+1), A008966(#)]`
-/

namespace A202387.P6952996311443237112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A202387.P6952996311443237112

/-! ## A202387.P7019449502482534058

`filter[A019506(n+1), A008966(#)]`
-/

namespace A202387.P7019449502482534058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A202387.P7019449502482534058

/-! ## A202387.P16243163875712074104

`filter[A006753(n+1), A354819(#)]`
-/

namespace A202387.P16243163875712074104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A202387.P16243163875712074104

/-! ## A202387.P4633421182510937326

`filter[A019506(n+1), A354819(#)]`
-/

namespace A202387.P4633421182510937326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A202387.P4633421182510937326

/-! ## A202387.P1496082147233305913

`record[A007947(A019506(A000027(n+1)))]`
-/

namespace A202387.P1496082147233305913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A019506 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202387.P1496082147233305913

/-! ## A202387.P15823292013344623788

`filter[A006753(n+1), A323154(#)]`
-/

namespace A202387.P15823292013344623788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A202387.P15823292013344623788

/-! ## A202387.P12504647681279883383

`filter[A019506(n+1), A323154(#)]`
-/

namespace A202387.P12504647681279883383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A202387.P12504647681279883383

/-! ## A202387.P5723944469100106784

`∩[A006753(n+1), A073486(n+1)]`
-/

namespace A202387.P5723944469100106784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P5723944469100106784

/-! ## A202387.P7148590239734815547

`∩[A019506(n+1), A073486(n+1)]`
-/

namespace A202387.P7148590239734815547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P7148590239734815547

/-! ## A202387.P13634793252499154973

`∩[A000469(n+1), A006753(n+1)]`
-/

namespace A202387.P13634793252499154973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P13634793252499154973

/-! ## A202387.P4205621483860448912

`∩[A000469(n+1), A019506(n+1)]`
-/

namespace A202387.P4205621483860448912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P4205621483860448912

/-! ## A202387.P5491699264747986677

`∩[A006753(n+1), A120944(n+1)]`
-/

namespace A202387.P5491699264747986677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P5491699264747986677

/-! ## A202387.P4731381688004745450

`∩[A019506(n+1), A120944(n+1)]`
-/

namespace A202387.P4731381688004745450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P4731381688004745450

/-! ## A202387.P10465311102610301278

`∩[A006753(n+1), A366413(n+1)]`
-/

namespace A202387.P10465311102610301278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P10465311102610301278

/-! ## A202387.P4901590990346980336

`∩[A019506(n+1), A366413(n+1)]`
-/

namespace A202387.P4901590990346980336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P4901590990346980336

/-! ## A202387.P7441991055320687672

`∩[A019506(n+1), A182853(n+1)]`
-/

namespace A202387.P7441991055320687672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A202387.P7441991055320687672

/-!
# A202388: Digital root of Smith numbers A006753.

The programs for A202388, there is no canonical definition to state claims against.
-/

/-! ## A202388.P10335924814509951732

`dr(A006753(n+1))`
-/

namespace A202388.P10335924814509951732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006753 (n + 1))

end

end A202388.P10335924814509951732

/-! ## A202388.P1258379599984313806

`dr(A050218(n+1))`
-/

namespace A202388.P1258379599984313806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050218 (n + 1))

end

end A202388.P1258379599984313806

/-! ## A202388.P17908096589394260618

`A010888(A050218(2*n+1-n))`
-/

namespace A202388.P17908096589394260618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A050218 (2 * n + 1 - n)).toNat

end

end A202388.P17908096589394260618

/-! ## A202388.P4137127761989463158

`dr(∪[A036924(n+1), A036925(n+1)])`
-/

namespace A202388.P4137127761989463158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A202388.P4137127761989463158

/-! ## A202388.P12444756282753691968

`A010888(A050218(n+1)%A019506(n+1))`
-/

namespace A202388.P12444756282753691968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (Int.tmod (A050218 (n + 1)) (A019506 (n + 1))).toNat

end

end A202388.P12444756282753691968

/-! ## A202388.P13426549164463199219

`A010888(A006753(n+1)%A050224(n+1))`
-/

namespace A202388.P13426549164463199219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (Int.tmod (A006753 (n + 1)) (A050224 (n + 1))).toNat

end

end A202388.P13426549164463199219

/-! ## A202388.P13742904890362404831

`A007953(A050218(n+1))%A002808(A050224(n+1))`
-/

namespace A202388.P13742904890362404831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (A050218 (n + 1)).toNat) (A002808 (A050224 (n + 1)).toNat)

end

end A202388.P13742904890362404831

/-!
# A202389: Triangle T(n,k), read by rows, given by (1, -2, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202389, there is no canonical definition to state claims against.
-/

/-! ## A202389.P2110507433408635001

`A057077(A025581(n))*A210868(n+1)`
-/

namespace A202389.P2110507433408635001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n).toNat * A210868 (n + 1)

end

end A202389.P2110507433408635001

/-! ## A202389.P4310675290816305784

`A165326(A213750(n+1))*A210868(n+1)`
-/

namespace A202389.P4310675290816305784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A213750 (n + 1)).toNat * A210868 (n + 1)

end

end A202389.P4310675290816305784

/-!
# A202390: Triangle T(n,k), read by rows, given by (1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (1, 1, -1, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938.

The programs for A202390, there is no canonical definition to state claims against.
-/

/-! ## A202390.P11514883989359050909

`A209419(A038722(n+1))`
-/

namespace A202390.P11514883989359050909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (A038722 (n + 1)).toNat

end

end A202390.P11514883989359050909

/-! ## A202390.P16951682266134136312

`A209419(A061579(n)+1)`
-/

namespace A202390.P16951682266134136312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (A061579 n + 1).toNat

end

end A202390.P16951682266134136312

/-! ## A202390.P15334157941753909407

`A209419(∑[A198954(n)]-n)`
-/

namespace A202390.P15334157941753909407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A202390.P15334157941753909407

/-! ## A202390.P15184792717137525367

`A209419(A114327(n)+1+n)`
-/

namespace A202390.P15184792717137525367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (A114327 n + 1 + (n : ℤ)).toNat

end

end A202390.P15184792717137525367

/-! ## A202390.P12886024287082969352

`A209419(A093995(n+1)-n)`
-/

namespace A202390.P12886024287082969352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209419 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A202390.P12886024287082969352

/-!
# A202391: Indices of the smallest of four consecutive triangular numbers summing up to a square.

The programs for A202391, the canonical program `A202391.P10189480784492636824` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202391 has offset 1).

The definition of A202391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A202391.P10189480784492636824

`A002315(n+1)-2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A202391

/-- `A002315(n+1)-2` -/
def P10189480784492636824.Spec : Prop :=
  ∀ n, P10189480784492636824.a n = A202391 (n + 1)

theorem P10189480784492636824.correct : P10189480784492636824.Spec := by
  intro n
  simp only [A202391, Nat.add_sub_cancel]

end A202391

/-! ## A202391.P6597632560075641075

`∑[ogf((5+4x-x^2)/(1-6x+x^2))]`
-/

namespace A202391.P6597632560075641075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, -1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A202391.P6597632560075641075

namespace A202391

/-- `∑[ogf((5+4x-x^2)/(1-6x+x^2))]` -/
def P6597632560075641075.Spec : Prop :=
  ∀ n, P6597632560075641075.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P10999210268775188978

`ogf((5+4x-x^2)/(1-7x+7x^2-x^3))`
-/

namespace A202391.P10999210268775188978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, -1] [1, -7, 7, -1] n

end

end A202391.P10999210268775188978

namespace A202391

/-- `ogf((5+4x-x^2)/(1-7x+7x^2-x^3))` -/
def P10999210268775188978.Spec : Prop :=
  ∀ n, P10999210268775188978.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P3642252861496682454

`floor(a(n-1)/(3-sqrt(8)))+10` with `a(0)=5`
-/

namespace A202391.P3642252861496682454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 10

end

end A202391.P3642252861496682454

namespace A202391

/-- `floor(a(n-1)/(3-sqrt(8)))+10` -/
def P3642252861496682454.Spec : Prop :=
  ∀ n, P3642252861496682454.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P16096856609443095290

`round(a(n-1)/(3-sqrt(8)))+10` with `a(0)=5`
-/

namespace A202391.P16096856609443095290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 10

end

end A202391.P16096856609443095290

namespace A202391

/-- `round(a(n-1)/(3-sqrt(8)))+10` -/
def P16096856609443095290.Spec : Prop :=
  ∀ n, P16096856609443095290.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P2407621456900844978

`∑[floor(a(n-1)/(3-sqrt(8)))]-1` with `a(0)=6`
-/

namespace A202391.P2407621456900844978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A202391.P2407621456900844978

namespace A202391

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]-1` -/
def P2407621456900844978.Spec : Prop :=
  ∀ n, P2407621456900844978.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P17016062376423466421

`abs(1-2*∑[6*a(n-1)-a(n-2)])` with `a(0)=3, a(1)=17`
-/

namespace A202391.P17016062376423466421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 17] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A202391.P17016062376423466421

namespace A202391

/-- `abs(1-2*∑[6*a(n-1)-a(n-2)])` -/
def P17016062376423466421.Spec : Prop :=
  ∀ n, P17016062376423466421.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P721412532974677411

`A065113(n+1)-1`
-/

namespace A202391.P721412532974677411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065113 (n + 1) - 1

end

end A202391.P721412532974677411

namespace A202391

/-- `A065113(n+1)-1` -/
def P721412532974677411.Spec : Prop :=
  ∀ n, P721412532974677411.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P3339990694796993940

`A034182(2*(n+1))`
-/

namespace A202391.P3339990694796993940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (2 * (n + 1))

end

end A202391.P3339990694796993940

namespace A202391

/-- `A034182(2*(n+1))` -/
def P3339990694796993940.Spec : Prop :=
  ∀ n, P3339990694796993940.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P4330046675240085635

`A114696(Δ[n²])-1`
-/

namespace A202391.P4330046675240085635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A202391.P4330046675240085635

namespace A202391

/-- `A114696(Δ[n²])-1` -/
def P4330046675240085635.Spec : Prop :=
  ∀ n, P4330046675240085635.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P16557439882551302010

`∑[A003499(n+1)]-1`
-/

namespace A202391.P16557439882551302010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A202391.P16557439882551302010

namespace A202391

/-- `∑[A003499(n+1)]-1` -/
def P16557439882551302010.Spec : Prop :=
  ∀ n, P16557439882551302010.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P16045396719341227346

`Δ[A001108(n+1)]-2`
-/

namespace A202391.P16045396719341227346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A202391.P16045396719341227346

namespace A202391

/-- `Δ[A001108(n+1)]-2` -/
def P16045396719341227346.Spec : Prop :=
  ∀ n, P16045396719341227346.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P14643272004909840392

`Δ[A115598(n+1)]-2`
-/

namespace A202391.P14643272004909840392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A202391.P14643272004909840392

namespace A202391

/-- `Δ[A115598(n+1)]-2` -/
def P14643272004909840392.Spec : Prop :=
  ∀ n, P14643272004909840392.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P14690458104373905640

`Δ[A115599(n+1)]-2`
-/

namespace A202391.P14690458104373905640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A202391.P14690458104373905640

namespace A202391

/-- `Δ[A115599(n+1)]-2` -/
def P14690458104373905640.Spec : Prop :=
  ∀ n, P14690458104373905640.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P11915483272631120430

`Δ[A055997(n+2)]-2`
-/

namespace A202391.P11915483272631120430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055997 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A202391.P11915483272631120430

namespace A202391

/-- `Δ[A055997(n+2)]-2` -/
def P11915483272631120430.Spec : Prop :=
  ∀ n, P11915483272631120430.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P18396488261715351208

`Δ[2*A089950(n)]-1`
-/

namespace A202391.P18396488261715351208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A202391.P18396488261715351208

namespace A202391

/-- `Δ[2*A089950(n)]-1` -/
def P18396488261715351208.Spec : Prop :=
  ∀ n, P18396488261715351208.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P3477610607701266775

`Δ[A048739(2*n)]-2`
-/

namespace A202391.P3477610607701266775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A202391.P3477610607701266775

namespace A202391

/-- `Δ[A048739(2*n)]-2` -/
def P3477610607701266775.Spec : Prop :=
  ∀ n, P3477610607701266775.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P10159266790066800160

`∑[abs(Δ[A002315(n)])]-1`
-/

namespace A202391.P10159266790066800160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A202391.P10159266790066800160

namespace A202391

/-- `∑[abs(Δ[A002315(n)])]-1` -/
def P10159266790066800160.Spec : Prop :=
  ∀ n, P10159266790066800160.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P11399778301796654186

`2*A082291(n+1)+1`
-/

namespace A202391.P11399778301796654186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082291 (n + 1) + 1

end

end A202391.P11399778301796654186

namespace A202391

/-- `2*A082291(n+1)+1` -/
def P11399778301796654186.Spec : Prop :=
  ∀ n, P11399778301796654186.a n = A202391 (n + 1)

end A202391

/-! ## A202391.P1588065642557977715

`2*A001652(n+1)-1`
-/

namespace A202391.P1588065642557977715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001652 (n + 1) - 1

end

end A202391.P1588065642557977715

namespace A202391

/-- `2*A001652(n+1)-1` -/
def P1588065642557977715.Spec : Prop :=
  ∀ n, P1588065642557977715.a n = A202391 (n + 1)

end A202391

/-!
# A202393: Digital root of Hoax Numbers A019506.

The programs for A202393, the canonical program `A202393.P11597859668486268077` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202393 has offset 1).

The definition of A202393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019506, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A202393.P11597859668486268077

`A010888(A019506(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A202393

/-- `A010888(A019506(n+1))` -/
def P11597859668486268077.Spec : Prop :=
  ∀ n, P11597859668486268077.a n = A202393 (n + 1)

theorem P11597859668486268077.correct : P11597859668486268077.Spec := by
  intro n
  simp only [A202393, Nat.add_sub_cancel]

end A202393

/-! ## A202393.P377527458131220232

`dr(A050223(n+1))`
-/

namespace A202393.P377527458131220232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A050223 (n + 1))

end

end A202393.P377527458131220232

namespace A202393

/-- `dr(A050223(n+1))` -/
def P377527458131220232.Spec : Prop :=
  ∀ n, (P377527458131220232.a n : ℤ) = A202393 (n + 1)

end A202393

/-! ## A202393.P4542206467522512891

`A010888(A050223(2*n+1-n))`
-/

namespace A202393.P4542206467522512891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A050223 (2 * n + 1 - n)).toNat

end

end A202393.P4542206467522512891

namespace A202393

/-- `A010888(A050223(2*n+1-n))` -/
def P4542206467522512891.Spec : Prop :=
  ∀ n, P4542206467522512891.a n = A202393 (n + 1)

end A202393

/-! ## A202393.P8622516594951096314

`A010888(A050223(n+1)+A000007(n+1))`
-/

namespace A202393.P8622516594951096314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A050223 (n + 1) + A000007 (n + 1)).toNat

end

end A202393.P8622516594951096314

namespace A202393

/-- `A010888(A050223(n+1)+A000007(n+1))` -/
def P8622516594951096314.Spec : Prop :=
  ∀ n, P8622516594951096314.a n = A202393 (n + 1)

end A202393

/-! ## A202393.P17871936789119684449

`A010888(A050223(n+1)*A055396(2*(n+1)))`
-/

namespace A202393.P17871936789119684449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A050223 (n + 1) * A055396 (2 * (n + 1))).toNat

end

end A202393.P17871936789119684449

namespace A202393

/-- `A010888(A050223(n+1)*A055396(2*(n+1)))` -/
def P17871936789119684449.Spec : Prop :=
  ∀ n, P17871936789119684449.a n = A202393 (n + 1)

end A202393

/-! ## A202393.P11252024369832302502

`A007953(∑{p}[A019506(n+1)², A007953(#)])`
-/

namespace A202393.P11252024369832302502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019506 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007953 p).toNat

end

end A202393.P11252024369832302502

namespace A202393

/-- `A007953(∑{p}[A019506(n+1)², A007953(#)])` -/
def P11252024369832302502.Spec : Prop :=
  ∀ n, P11252024369832302502.a n = A202393 (n + 1)

end A202393

/-!
# A202394: Expansion of f(-x)^3 + 9 * x * f(-x^9)^3 in powers of x where f() is a Ramanujan theta function.

The programs for A202394, the canonical program `A202394.P10766434799180443179` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A202394 has offset 0).

The definition of A202394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A202394.P10766434799180443179

`A010816(n)*A089812(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A202394

/-- `A010816(n)*A089812(n)` -/
def P10766434799180443179.Spec : Prop :=
  ∀ n, P10766434799180443179.a n = A202394 n

theorem P10766434799180443179.correct : P10766434799180443179.Spec := by
  intro n
  simp only [A202394]

end A202394

/-! ## A202394.P9021043524898269720

`A010816(n)*A131713(n)`
-/

namespace A202394.P9021043524898269720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A131713 n

end

end A202394.P9021043524898269720

namespace A202394

/-- `A010816(n)*A131713(n)` -/
def P9021043524898269720.Spec : Prop :=
  ∀ n, P9021043524898269720.a n = A202394 n

end A202394

/-! ## A202394.P8070648019077949581

`A084930(n)*A089812(n)`
-/

namespace A202394.P8070648019077949581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084930 n * A089812 n

end

end A202394.P8070648019077949581

namespace A202394

/-- `A084930(n)*A089812(n)` -/
def P8070648019077949581.Spec : Prop :=
  ∀ n, P8070648019077949581.a n = A202394 n

end A202394

/-! ## A202394.P16243952834273970194

`A057079(n)*A133089(n)`
-/

namespace A202394.P16243952834273970194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A133089 n

end

end A202394.P16243952834273970194

namespace A202394

/-- `A057079(n)*A133089(n)` -/
def P16243952834273970194.Spec : Prop :=
  ∀ n, P16243952834273970194.a n = A202394 n

end A202394

/-! ## A202394.P1807969948696119420

`A132954(n)*A133089(n)`
-/

namespace A202394.P1807969948696119420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A133089 n

end

end A202394.P1807969948696119420

namespace A202394

/-- `A132954(n)*A133089(n)` -/
def P1807969948696119420.Spec : Prop :=
  ∀ n, P1807969948696119420.a n = A202394 n

end A202394

/-! ## A202394.P492147144939153124

`A133089(n)*A133988(n)`
-/

namespace A202394.P492147144939153124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133089 n * A133988 n

end

end A202394.P492147144939153124

namespace A202394

/-- `A133089(n)*A133988(n)` -/
def P492147144939153124.Spec : Prop :=
  ∀ n, P492147144939153124.a n = A202394 n

end A202394

/-! ## A202394.P8107904002132898868

`A057079(4*n)*A010816(n)`
-/

namespace A202394.P8107904002132898868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (4 * n) * A010816 n

end

end A202394.P8107904002132898868

namespace A202394

/-- `A057079(4*n)*A010816(n)` -/
def P8107904002132898868.Spec : Prop :=
  ∀ n, P8107904002132898868.a n = A202394 n

end A202394

/-! ## A202394.P16023949390996054458

`(2-A132954(n)²)*A010816(n)`
-/

namespace A202394.P16023949390996054458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A010816 n

end

end A202394.P16023949390996054458

namespace A202394

/-- `(2-A132954(n)²)*A010816(n)` -/
def P16023949390996054458.Spec : Prop :=
  ∀ n, P16023949390996054458.a n = A202394 n

end A202394

/-! ## A202394.P13680672782677716893

`(2-A133988(n)²)*A010816(n)`
-/

namespace A202394.P13680672782677716893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A133988 n ^ 2) * A010816 n

end

end A202394.P13680672782677716893

namespace A202394

/-- `(2-A133988(n)²)*A010816(n)` -/
def P13680672782677716893.Spec : Prop :=
  ∀ n, P13680672782677716893.a n = A202394 n

end A202394

/-! ## A202394.P15900994998735203249

`A033999(n)*A204850(n)`
-/

namespace A202394.P15900994998735203249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A204850 n

end

end A202394.P15900994998735203249

namespace A202394

/-- `A033999(n)*A204850(n)` -/
def P15900994998735203249.Spec : Prop :=
  ∀ n, P15900994998735203249.a n = A202394 n

end A202394

/-! ## A202394.P8193483545985427776

`A106459(n)*A204850(n)`
-/

namespace A202394.P8193483545985427776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n * A204850 n

end

end A202394.P8193483545985427776

namespace A202394

/-- `A106459(n)*A204850(n)` -/
def P8193483545985427776.Spec : Prop :=
  ∀ n, P8193483545985427776.a n = A202394 n

end A202394

/-! ## A202394.P13951560636223787631

`A108086(n)*A204850(n)`
-/

namespace A202394.P13951560636223787631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A204850 n

end

end A202394.P13951560636223787631

namespace A202394

/-- `A108086(n)*A204850(n)` -/
def P13951560636223787631.Spec : Prop :=
  ∀ n, P13951560636223787631.a n = A202394 n

end A202394

/-! ## A202394.P11831050580864052612

`A130777(n)*A204850(n)`
-/

namespace A202394.P11831050580864052612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 n * A204850 n

end

end A202394.P11831050580864052612

namespace A202394

/-- `A130777(n)*A204850(n)` -/
def P11831050580864052612.Spec : Prop :=
  ∀ n, P11831050580864052612.a n = A202394 n

end A202394

/-! ## A202394.P1843273884418032766

`A204172(n+1)*A204850(n)`
-/

namespace A202394.P1843273884418032766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204172 (n + 1) * A204850 n

end

end A202394.P1843273884418032766

namespace A202394

/-- `A204172(n+1)*A204850(n)` -/
def P1843273884418032766.Spec : Prop :=
  ∀ n, P1843273884418032766.a n = A202394 n

end A202394

/-! ## A202394.P9513161773713216038

`A057079(n+2)*A204850(n)`
-/

namespace A202394.P9513161773713216038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A204850 n

end

end A202394.P9513161773713216038

namespace A202394

/-- `A057079(n+2)*A204850(n)` -/
def P9513161773713216038.Spec : Prop :=
  ∀ n, P9513161773713216038.a n = A202394 n

end A202394

/-! ## A202394.P1159864575926729064

`A085143(n+1)*A204850(n)`
-/

namespace A202394.P1159864575926729064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085143 (n + 1) * A204850 n

end

end A202394.P1159864575926729064

namespace A202394

/-- `A085143(n+1)*A204850(n)` -/
def P1159864575926729064.Spec : Prop :=
  ∀ n, P1159864575926729064.a n = A202394 n

end A202394

/-!
# A202398: Number of (n+2)X(n+2) binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202398, there is no canonical definition to state claims against.
-/

/-! ## A202398.P11508886707618459103

`A202406(∑[4*n]+1)`
-/

namespace A202398.P11508886707618459103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202398.P11508886707618459103

/-! ## A202398.P17989731272519066134

`record[root(A202406(n+1), A143182(n))]`
-/

namespace A202398.P17989731272519066134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202406 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202398.P17989731272519066134

/-! ## A202398.P12791661714771944109

`record[gcd(A049581(n), A202406(n+1))]`
-/

namespace A202398.P12791661714771944109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A202406 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202398.P12791661714771944109

/-! ## A202398.P9072168200965700590

`A202406(A001844(n))*A269301(n)`
-/

namespace A202398.P9072168200965700590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (A001844 n).toNat * A269301 n

end

end A202398.P9072168200965700590

/-! ## A202398.P9676980328447834925

`or(A000038(n), A202406(A001844(n)))`
-/

namespace A202398.P9676980328447834925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A202406 (A001844 n).toNat)

end

end A202398.P9676980328447834925

/-!
# A202399: Number of (n+2)X3 binary arrays avoiding patterns 000 and 010 in rows and columns.

The programs for A202399, there is no canonical definition to state claims against.
-/

/-! ## A202399.P11946186752699851227

`A208078(Δ[A023545(n+1)]+2)`
-/

namespace A202399.P11946186752699851227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (f1 (n + 1) - f1 n + 2).toNat

end

end A202399.P11946186752699851227

/-! ## A202399.P11289048693337954124

`A208078(Δ[A034857(n+2)]+1)`
-/

namespace A202399.P11289048693337954124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208078 (f1 (n + 1) - f1 n + 1).toNat

end

end A202399.P11289048693337954124

/-! ## A202399.P3004789309939986679

`A202406(∑[n]+1)`
-/

namespace A202399.P3004789309939986679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A202399.P3004789309939986679

/-! ## A202399.P1308070248074367965

`record[A202406(n+1)/A154337(n)]`
-/

namespace A202399.P1308070248074367965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202406 (n + 1) : ℚ) / (A154337 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202399.P1308070248074367965

/-! ## A202399.P17668075639357347188

`record[root(A202406(n+1), A013609(n))]`
-/

namespace A202399.P17668075639357347188
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202406 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202399.P17668075639357347188

