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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A175002: Number of stable n-celled patterns ("still lifes") in the Maze (B3/S12345) cellular automaton.

The programs for A175002, there is no canonical definition to state claims against.
-/

/-! ## A175002.P9300853618973141199

`A002372(xor(A117736(n), A194064(n+1)))`
-/

namespace A175002.P9300853618973141199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (Int.xor (A117736 n) (A194064 (n + 1))).toNat

end

end A175002.P9300853618973141199

/-!
# A175004: Interspersion related to the Wythoff Array.

The programs for A175004, there is no canonical definition to state claims against.
-/

/-! ## A175004.P13038235216757040563

`A035513(A066182(n+1)+1)-1`
-/

namespace A175004.P13038235216757040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A066182 (n + 1) + 1).toNat - 1

end

end A175004.P13038235216757040563

/-! ## A175004.P9441119222039599332

`A035513(2-A167407(n)+n)-1`
-/

namespace A175004.P9441119222039599332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (2 - A167407 n + (n : ℤ)).toNat - 1

end

end A175004.P9441119222039599332

/-! ## A175004.P5676430414386825511

`A035513(n+1)+A083047(n)-A126714(n+1)`
-/

namespace A175004.P5676430414386825511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + (A083047 n - A126714 (n + 1))

end

end A175004.P5676430414386825511

/-! ## A175004.P6445447324905467875

`A035513(n+1)+A094607(n+1)-A094608(n+1)`
-/

namespace A175004.P6445447324905467875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (n + 1) + (A094607 (n + 1) - A094608 (n + 1))

end

end A175004.P6445447324905467875

/-! ## A175004.P17358208352705181101

`A094607(n+1)+A114579(A083412(n))-A094608(n+1)`
-/

namespace A175004.P17358208352705181101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094607 (n + 1) + (A114579 (A083412 n).toNat - A094608 (n + 1))

end

end A175004.P17358208352705181101

/-! ## A175004.P11243306389949798682

`A094607(n+1)+A022290(A356875(n))-A094608(n+1)`
-/

namespace A175004.P11243306389949798682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094607 (n + 1) + (A022290 (A356875 n).toNat - A094608 (n + 1))

end

end A175004.P11243306389949798682

/-! ## A175004.P3668268075251355269

`A094607(n+1)-A094608(n+1)+A287870(n+1)+A287869(n+1)`
-/

namespace A175004.P3668268075251355269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094607 (n + 1) - A094608 (n + 1) + (A287870 (n + 1) + A287869 (n + 1))

end

end A175004.P3668268075251355269

/-!
# A175005: Expansion of x/(1 - 4*x + 3*x^2 - 2*x^3).

The programs for A175005, the canonical program `A175005.P14268083493197738549` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175005 has offset 0).

The definition of A175005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175005.P14268083493197738549

`4*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175005

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P14268083493197738549.Spec : Prop :=
  ∀ n, P14268083493197738549.a n = A175005 n

theorem P14268083493197738549.correct : P14268083493197738549.Spec := by
  intro n
  simp only [A175005]

end A175005

/-! ## A175005.P8647400771515011753

`∑[∑[A111285(n)]-1]`
-/

namespace A175005.P8647400771515011753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175005.P8647400771515011753

namespace A175005

/-- `∑[∑[A111285(n)]-1]` -/
def P8647400771515011753.Spec : Prop :=
  ∀ n, P8647400771515011753.a n = A175005 n

end A175005

/-! ## A175005.P13643202257651872226

`A111285(n+2)/2-A111285(n+1)`
-/

namespace A175005.P13643202257651872226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111285 (n + 2) : ℚ) / 2 - (A111285 (n + 1) : ℚ)

end

end A175005.P13643202257651872226

namespace A175005

/-- `A111285(n+2)/2-A111285(n+1)` -/
def P13643202257651872226.Spec : Prop :=
  ∀ n, P13643202257651872226.a n = (A175005 n : ℚ)

end A175005

/-!
# A175006: Row sums of triangle A175009.

The programs for A175006, the canonical program `A175006.P16840197932512029061` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175006 has offset 1).

The definition of A175006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175006.P16840197932512029061

`∑[∑[∑[gcd(n+1, ∑[n])]]-n]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175006

/-- `∑[∑[∑[gcd(n+1, ∑[n])]]-n]` -/
def P16840197932512029061.Spec : Prop :=
  ∀ n, P16840197932512029061.a n = A175006 (n + 1)

theorem P16840197932512029061.correct : P16840197932512029061.Spec := by
  intro n
  simp only [A175006, Nat.add_sub_cancel]

end A175006

/-! ## A175006.P17588679524931816881

`∑[∑[∑[∑[n]/a(n-1)]]]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A175006.P17588679524931816881
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 3] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ) / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P17588679524931816881

namespace A175006

/-- `∑[∑[∑[∑[n]/a(n-1)]]]` -/
def P17588679524931816881.Spec : Prop :=
  ∀ n, P17588679524931816881.a n = (A175006 (n + 1) : ℚ)

end A175006

/-! ## A175006.P9980751115067365456

`∑[∑[∑[lcm(2, n+1)/2]]]-∑[n]`
-/

namespace A175006.P9980751115067365456
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ)

end

end A175006.P9980751115067365456

namespace A175006

/-- `∑[∑[∑[lcm(2, n+1)/2]]]-∑[n]` -/
def P9980751115067365456.Spec : Prop :=
  ∀ n, P9980751115067365456.a n = (A175006 (n + 1) : ℚ)

end A175006

/-! ## A175006.P3070260520082205743

`floor(((n+2)/2)²²)-a(n-1)-n²` with `a(0)=1`
-/

namespace A175006.P3070260520082205743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((n + 2 : ℚ) / 2) ^ 2) ^ 2⌋ - a (n - 1) - (n ^ 2 : ℤ)

end

end A175006.P3070260520082205743

namespace A175006

/-- `floor(((n+2)/2)²²)-a(n-1)-n²` -/
def P3070260520082205743.Spec : Prop :=
  ∀ n, P3070260520082205743.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P11898391199724384483

`∑[∑[A144065(n)]+1]`
-/

namespace A175006.P11898391199724384483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P11898391199724384483

namespace A175006

/-- `∑[∑[A144065(n)]+1]` -/
def P11898391199724384483.Spec : Prop :=
  ∀ n, P11898391199724384483.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P6140073530943260040

`A007009(n+1)-∑[n]`
-/

namespace A175006.P6140073530943260040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A175006.P6140073530943260040

namespace A175006

/-- `A007009(n+1)-∑[n]` -/
def P6140073530943260040.Spec : Prop :=
  ∀ n, P6140073530943260040.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P3354749837188834149

`∑[A005996(n+1)/2-n]`
-/

namespace A175006.P3354749837188834149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005996 (n + 1) : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P3354749837188834149

namespace A175006

/-- `∑[A005996(n+1)/2-n]` -/
def P3354749837188834149.Spec : Prop :=
  ∀ n, P3354749837188834149.a n = (A175006 (n + 1) : ℚ)

end A175006

/-! ## A175006.P12345494270909357835

`∑[∑[floor(A135370(n+1)/2)]+1]`
-/

namespace A175006.P12345494270909357835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135370 (n + 1) : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P12345494270909357835

namespace A175006

/-- `∑[∑[floor(A135370(n+1)/2)]+1]` -/
def P12345494270909357835.Spec : Prop :=
  ∀ n, P12345494270909357835.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P16649175982885424061

`∑[A109900(n+1)-n]`
-/

namespace A175006.P16649175982885424061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P16649175982885424061

namespace A175006

/-- `∑[A109900(n+1)-n]` -/
def P16649175982885424061.Spec : Prop :=
  ∀ n, P16649175982885424061.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P10437374774938923231

`∑[∑[A001318(n+1)]-n]`
-/

namespace A175006.P10437374774938923231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P10437374774938923231

namespace A175006

/-- `∑[∑[A001318(n+1)]-n]` -/
def P10437374774938923231.Spec : Prop :=
  ∀ n, P10437374774938923231.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P4636208742675251681

`∑[A034828(n+2)-n]`
-/

namespace A175006.P4636208742675251681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P4636208742675251681

namespace A175006

/-- `∑[A034828(n+2)-n]` -/
def P4636208742675251681.Spec : Prop :=
  ∀ n, P4636208742675251681.a n = A175006 (n + 1)

end A175006

/-! ## A175006.P10664905866917425350

`∑[A001057(2*n)+∑[A001318(n+1)]]`
-/

namespace A175006.P10664905866917425350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175006.P10664905866917425350

namespace A175006

/-- `∑[A001057(2*n)+∑[A001318(n+1)]]` -/
def P10664905866917425350.Spec : Prop :=
  ∀ n, P10664905866917425350.a n = A175006 (n + 1)

end A175006

/-!
# A175007: Positions of nonnegative terms in A131389.

The programs for A175007, there is no canonical definition to state claims against.
-/

/-! ## A175007.P1584244511905540659

`comp[A131392(n+1)]+1`
-/

namespace A175007.P1584244511905540659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175007.P1584244511905540659

/-! ## A175007.P11084906718408595959

`comp[A175008(n+1)-1]+1`
-/

namespace A175007.P11084906718408595959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175008 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175007.P11084906718408595959

/-! ## A175007.P3358081015004511836

`A131391(A028310(n))+A057427(n)`
-/

namespace A175007.P3358081015004511836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131391 (A028310 n).toNat + A057427 n

end

end A175007.P3358081015004511836

/-! ## A175007.P3281913282209802536

`A131391(A028310(n))-A057428(n)`
-/

namespace A175007.P3281913282209802536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131391 (A028310 n).toNat - A057428 n

end

end A175007.P3281913282209802536

/-! ## A175007.P855666162904082405

`A131391(A028310(n))+and(1, A000040(n+1))`
-/

namespace A175007.P855666162904082405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131391 (A028310 n).toNat + Int.land 1 (A000040 (n + 1))

end

end A175007.P855666162904082405

/-! ## A175007.P4137168191949423840

`A020639(A000010(n+2))+A131391(A028310(n))-1`
-/

namespace A175007.P4137168191949423840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat + (A131391 (A028310 n).toNat - 1)

end

end A175007.P4137168191949423840

/-! ## A175007.P16888924785223461420

`lt[-1, A131389(n+1)]+1`
-/

namespace A175007.P16888924785223461420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A175007.P16888924785223461420

/-!
# A175008: Positions of negative terms in A131389.

The programs for A175008, there is no canonical definition to state claims against.
-/

/-! ## A175008.P12975158754815144151

`A131392(n+1)+1`
-/

namespace A175008.P12975158754815144151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131392 (n + 1) + 1

end

end A175008.P12975158754815144151

/-! ## A175008.P17408120308889341476

`A020725(A131392(n+1))`
-/

namespace A175008.P17408120308889341476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A131392 (n + 1)).toNat

end

end A175008.P17408120308889341476

/-! ## A175008.P7119930538412750185

`lt[A257706(n+1), A257705(n+1)]+2`
-/

namespace A175008.P7119930538412750185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A175008.P7119930538412750185

/-! ## A175008.P1275187876265161081

`lt[A257878(n+1), A257705(n+1)]+2`
-/

namespace A175008.P1275187876265161081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A175008.P1275187876265161081

/-! ## A175008.P2004044817362452221

`lt[A131389(n+1), 0]+1`
-/

namespace A175008.P2004044817362452221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175008.P2004044817362452221

/-! ## A175008.P1050827625627752659

`lt[A131389(abs(C(2, n)-n)), 0]`
-/

namespace A175008.P1050827625627752659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175008.P1050827625627752659

/-! ## A175008.P3983170167444571967

`lt[A131389(abs(n-a(2%n))), 0]` with `a(0)=3`
-/

namespace A175008.P3983170167444571967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A131389 |(n : ℤ) - f1 (2 % n)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175008.P3983170167444571967

/-! ## A175008.P4362018695171302877

`lt[A131389(abs(abs(1-n)-(n-1)-n)), 0]`
-/

namespace A175008.P4362018695171302877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 |(|1 - (n : ℤ)| - ((n : ℤ) - 1) - (n : ℤ))|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175008.P4362018695171302877

/-! ## A175008.P9460050315882220354

`A020725(lt[A131389(n+1), 0])`
-/

namespace A175008.P9460050315882220354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175008.P9460050315882220354

/-!
# A175009: Triangle read by rows, antidiagonals of an array formed from variants of A001318, generalized pentagonal numbers.

The programs for A175009, there is no canonical definition to state claims against.
-/

/-! ## A175009.P17844949491774286537

`A051904(A283432(n))+A008279(n)`
-/

namespace A175009.P17844949491774286537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A283432 n).toNat + A008279 n

end

end A175009.P17844949491774286537

/-! ## A175009.P9283377153227103681

`A029638(n+1)-A029694(A029723(n))`
-/

namespace A175009.P9283377153227103681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (n + 1) - A029694 (A029723 n).toNat

end

end A175009.P9283377153227103681

/-! ## A175009.P8968689052449124221

`A034699(C(A030237(n+1), A096465(n)))`
-/

namespace A175009.P8968689052449124221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Nat.choose (A030237 (n + 1)).toNat (A096465 n).toNat)

end

end A175009.P8968689052449124221

/-! ## A175009.P4396755361608165728

`A372546(A079474(n+1))`
-/

namespace A175009.P4396755361608165728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372546 (A079474 (n + 1)).toNat

end

end A175009.P4396755361608165728

/-!
# A175010: Triangle generated from INVERT transforms of variants of A080995.

The programs for A175010, there is no canonical definition to state claims against.
-/

/-! ## A175010.P10694990564216509154

`A070939(A181937(n)^A098568(n+1))`
-/

namespace A175010.P10694990564216509154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A181937 n : ℚ) ^ (A098568 (n + 1) : ℤ))).toNat

end

end A175010.P10694990564216509154

/-! ## A175010.P17642975001189832724

`A070939(A181937(n)%A211224(3*n+2))`
-/

namespace A175010.P17642975001189832724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A181937 n) (A211224 (3 * n + 2))).toNat

end

end A175010.P17642975001189832724

/-! ## A175010.P4874936926406526552

`A070939(A181937(n)%A111825(n+4))`
-/

namespace A175010.P4874936926406526552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A181937 n) (A111825 (n + 4))).toNat

end

end A175010.P4874936926406526552

/-! ## A175010.P5009679950140450733

`gcd(A070033(n+4), A070939(A181937(n)))`
-/

namespace A175010.P5009679950140450733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070033 (n + 4)) (A070939 (A181937 n).toNat)

end

end A175010.P5009679950140450733

/-!
# A175011: Triangle read by rows, antidiagonals of an array generated from INVERT transforms of variants of (1, 2, 3, ...).

The programs for A175011, there is no canonical definition to state claims against.
-/

/-! ## A175011.P4539249705306823439

`A296131(4^A067586(n))`
-/

namespace A175011.P4539249705306823439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296131 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A067586 n : ℤ))).toNat

end

end A175011.P4539249705306823439

/-! ## A175011.P10980992449943286831

`A299201(2*A129116(n+1))`
-/

namespace A175011.P10980992449943286831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (2 * A129116 (n + 1)).toNat

end

end A175011.P10980992449943286831

/-! ## A175011.P16455485826108264668

`A025660(2^A253572(n+1))`
-/

namespace A175011.P16455485826108264668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253572 (n + 1) : ℤ))).toNat

end

end A175011.P16455485826108264668

/-! ## A175011.P1424047759742086624

`A045778(A001359(n+1)*A129116(n+1))`
-/

namespace A175011.P1424047759742086624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A001359 (n + 1) * A129116 (n + 1)).toNat

end

end A175011.P1424047759742086624

/-! ## A175011.P1774504882309543022

`A111004(A353510(n+1)%A213321(3*n+1))`
-/

namespace A175011.P1774504882309543022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111004 (Int.tmod (A353510 (n + 1)) (A213321 (3 * n + 1))).toNat

end

end A175011.P1774504882309543022

/-!
# A175012: Triangle generated from the g.f of A000712 (i.e., 1/(1-x^m)^2) interleaved with zeros.

The programs for A175012, there is no canonical definition to state claims against.
-/

/-! ## A175012.P17620245630760479268

`A292977(A004884(n+1))+A003056(n)`
-/

namespace A175012.P17620245630760479268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 (A004884 (n + 1)).toNat + A003056 n

end

end A175012.P17620245630760479268

/-!
# A175013: Sum of digits of n-th semiprime.

The programs for A175013, the canonical program `A175013.P3428015782711023042` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175013 has offset 1).

The definition of A175013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175013.P3428015782711023042

`A007953(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175013

/-- `A007953(A001358(n+1))` -/
def P3428015782711023042.Spec : Prop :=
  ∀ n, P3428015782711023042.a n = A175013 (n + 1)

theorem P3428015782711023042.correct : P3428015782711023042.Spec := by
  intro n
  simp only [A175013, Nat.add_sub_cancel]

end A175013

/-! ## A175013.P15829198533874381250

`∑{digits}[A210616(n+1), #]`
-/

namespace A175013.P15829198533874381250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175013.P15829198533874381250

namespace A175013

/-- `∑{digits}[A210616(n+1), #]` -/
def P15829198533874381250.Spec : Prop :=
  ∀ n, (P15829198533874381250.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P2559194024648441500

`∑{digits}[sqrt(A074985(n+1)), #]`
-/

namespace A175013.P2559194024648441500
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A175013.P2559194024648441500

namespace A175013

/-- `∑{digits}[sqrt(A074985(n+1)), #]` -/
def P2559194024648441500.Spec : Prop :=
  ∀ n, (P2559194024648441500.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P13734746168321815272

`∑{digits}[1-A088707(n+1), #]`
-/

namespace A175013.P13734746168321815272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175013.P13734746168321815272

namespace A175013

/-- `∑{digits}[1-A088707(n+1), #]` -/
def P13734746168321815272.Spec : Prop :=
  ∀ n, (P13734746168321815272.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P13935166484564838086

`∑{digits}[eq[2, A001222(n+1)]+1, #]`
-/

namespace A175013.P13935166484564838086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A175013.P13935166484564838086

namespace A175013

/-- `∑{digits}[eq[2, A001222(n+1)]+1, #]` -/
def P13935166484564838086.Spec : Prop :=
  ∀ n, (P13935166484564838086.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P13931692364899231273

`A001358(n+1)-A206011(n+1)`
-/

namespace A175013.P13931692364899231273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A206011 (n + 1)

end

end A175013.P13931692364899231273

namespace A175013

/-- `A001358(n+1)-A206011(n+1)` -/
def P13931692364899231273.Spec : Prop :=
  ∀ n, P13931692364899231273.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P9819965263735623155

`∑{digits}[A176540(n+2), #]`
-/

namespace A175013.P9819965263735623155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175013.P9819965263735623155

namespace A175013

/-- `∑{digits}[A176540(n+2), #]` -/
def P9819965263735623155.Spec : Prop :=
  ∀ n, (P9819965263735623155.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P15420690481926689000

`∑{digits}[A129767(2*(n+1)), #]`
-/

namespace A175013.P15420690481926689000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A175013.P15420690481926689000

namespace A175013

/-- `∑{digits}[A129767(2*(n+1)), #]` -/
def P15420690481926689000.Spec : Prop :=
  ∀ n, (P15420690481926689000.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P4536168594055322443

`A308375(A176193(n+1))`
-/

namespace A175013.P4536168594055322443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308375 (A176193 (n + 1)).toNat

end

end A175013.P4536168594055322443

namespace A175013

/-- `A308375(A176193(n+1))` -/
def P4536168594055322443.Spec : Prop :=
  ∀ n, P4536168594055322443.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P10239761734246162585

`A181548(A140570(n+1))`
-/

namespace A175013.P10239761734246162585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181548 (A140570 (n + 1)).toNat

end

end A175013.P10239761734246162585

namespace A175013

/-- `A181548(A140570(n+1))` -/
def P10239761734246162585.Spec : Prop :=
  ∀ n, P10239761734246162585.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P2251312480318238005

`A007953(eq[2, ∑{e}[n, #]])`
-/

namespace A175013.P2251312480318238005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175013.P2251312480318238005

namespace A175013

/-- `A007953(eq[2, ∑{e}[n, #]])` -/
def P2251312480318238005.Spec : Prop :=
  ∀ n, P2251312480318238005.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P6638835903256340858

`∑{digits}[lt[1, A105700(n)], #]`
-/

namespace A175013.P6638835903256340858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A175013.P6638835903256340858

namespace A175013

/-- `∑{digits}[lt[1, A105700(n)], #]` -/
def P6638835903256340858.Spec : Prop :=
  ∀ n, (P6638835903256340858.a n : ℤ) = A175013 (n + 1)

end A175013

/-! ## A175013.P10683352236979043958

`A007953(A210616(n+1))`
-/

namespace A175013.P10683352236979043958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A210616 (n + 1)).toNat

end

end A175013.P10683352236979043958

namespace A175013

/-- `A007953(A210616(n+1))` -/
def P10683352236979043958.Spec : Prop :=
  ∀ n, P10683352236979043958.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P7386181145482239962

`A007953(A176540(n+2))`
-/

namespace A175013.P7386181145482239962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A176540 (n + 2)).toNat

end

end A175013.P7386181145482239962

namespace A175013

/-- `A007953(A176540(n+2))` -/
def P7386181145482239962.Spec : Prop :=
  ∀ n, P7386181145482239962.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P6042651645432228670

`A007953(lt[1, A105700(n)])`
-/

namespace A175013.P6042651645432228670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175013.P6042651645432228670

namespace A175013

/-- `A007953(lt[1, A105700(n)])` -/
def P6042651645432228670.Spec : Prop :=
  ∀ n, P6042651645432228670.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P12092552685096212640

`A007953(eq[2, A105700(n)])`
-/

namespace A175013.P12092552685096212640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175013.P12092552685096212640

namespace A175013

/-- `A007953(eq[2, A105700(n)])` -/
def P12092552685096212640.Spec : Prop :=
  ∀ n, P12092552685096212640.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P3409364712140882049

`A007953(eq[2, A226378(n)])`
-/

namespace A175013.P3409364712140882049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175013.P3409364712140882049

namespace A175013

/-- `A007953(eq[2, A226378(n)])` -/
def P3409364712140882049.Spec : Prop :=
  ∀ n, P3409364712140882049.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P14791784977986973513

`A007953(eq[2, A284289(n)])`
-/

namespace A175013.P14791784977986973513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175013.P14791784977986973513

namespace A175013

/-- `A007953(eq[2, A284289(n)])` -/
def P14791784977986973513.Spec : Prop :=
  ∀ n, P14791784977986973513.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P8730303917485652008

`A007953(A088707(n+1)-1)`
-/

namespace A175013.P8730303917485652008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A088707 (n + 1) - 1).toNat

end

end A175013.P8730303917485652008

namespace A175013

/-- `A007953(A088707(n+1)-1)` -/
def P8730303917485652008.Spec : Prop :=
  ∀ n, P8730303917485652008.a n = A175013 (n + 1)

end A175013

/-! ## A175013.P8131853827051928357

`A169805(lt[1, A105700(n)])/2`
-/

namespace A175013.P8131853827051928357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2

end

end A175013.P8131853827051928357

namespace A175013

/-- `A169805(lt[1, A105700(n)])/2` -/
def P8131853827051928357.Spec : Prop :=
  ∀ n, P8131853827051928357.a n = (A175013 (n + 1) : ℚ)

end A175013

/-!
# A175014: y-values in the solution to x^2-55*y^2=1.

The programs for A175014, the canonical program `A175014.P17869628739187651734` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175014 has offset 1).

The definition of A175014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175014.P17869628739187651734

`178*a(n-1)-a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175014

/-- `178*a(n-1)-a(n-2)` -/
def P17869628739187651734.Spec : Prop :=
  ∀ n, P17869628739187651734.a n = A175014 (n + 1)

theorem P17869628739187651734.correct : P17869628739187651734.Spec := by
  intro n
  simp only [A175014, Nat.add_sub_cancel]

end A175014

/-!
# A175015: y-values in the solution to x^2-57*y^2=1.

The programs for A175015, the canonical program `A175015.P12540698784949770807` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175015 has offset 1).

The definition of A175015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175015.P12540698784949770807

`302*a(n-1)-a(n-2)` with `a(0)=0, a(1)=20`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175015

/-- `302*a(n-1)-a(n-2)` -/
def P12540698784949770807.Spec : Prop :=
  ∀ n, P12540698784949770807.a n = A175015 (n + 1)

theorem P12540698784949770807.correct : P12540698784949770807.Spec := by
  intro n
  simp only [A175015, Nat.add_sub_cancel]

end A175015

/-! ## A175015.P1034299062737747271

`record[A010673(n)*A041425(n)]`
-/

namespace A175015.P1034299062737747271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A041425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175015.P1034299062737747271

namespace A175015

/-- `record[A010673(n)*A041425(n)]` -/
def P1034299062737747271.Spec : Prop :=
  ∀ n, P1034299062737747271.a n = A175015 (n + 1)

end A175015

/-! ## A175015.P2813623169897014388

`record[A010675(n)*A042763(n)]`
-/

namespace A175015.P2813623169897014388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n * A042763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175015.P2813623169897014388

namespace A175015

/-- `record[A010675(n)*A042763(n)]` -/
def P2813623169897014388.Spec : Prop :=
  ∀ n, P2813623169897014388.a n = A175015 (n + 1)

end A175015

/-! ## A175015.P16127725559814270193

`record[A010673(n)²*A042763(n)]`
-/

namespace A175015.P16127725559814270193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n ^ 2 * A042763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175015.P16127725559814270193

namespace A175015

/-- `record[A010673(n)²*A042763(n)]` -/
def P16127725559814270193.Spec : Prop :=
  ∀ n, P16127725559814270193.a n = A175015 (n + 1)

end A175015

/-! ## A175015.P18143038988459535685

`record[(1-A033999(n))*A041425(n)]`
-/

namespace A175015.P18143038988459535685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033999 n) * A041425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175015.P18143038988459535685

namespace A175015

/-- `record[(1-A033999(n))*A041425(n)]` -/
def P18143038988459535685.Spec : Prop :=
  ∀ n, P18143038988459535685.a n = A175015 (n + 1)

end A175015

/-!
# A175017: Primes p containing the string "13" and sum of digits sod(p) = 13.

The programs for A175017, there is no canonical definition to state claims against.
-/

/-! ## A175017.P10522026540748113704

`∩[A052019(n+1), A106755(n+1)]`
-/

namespace A175017.P10522026540748113704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175017.P10522026540748113704

/-! ## A175017.P5485694151615508419

`∩[A106755(n+1), A166573(n+1)]`
-/

namespace A175017.P5485694151615508419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175017.P5485694151615508419

/-! ## A175017.P6876844768879418863

`∩[A052019(n+1), A143164(n+1)]`
-/

namespace A175017.P6876844768879418863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175017.P6876844768879418863

/-! ## A175017.P11832030643475431744

`∩[A143164(n+1), A166573(n+1)]`
-/

namespace A175017.P11832030643475431744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175017.P11832030643475431744

/-! ## A175017.P7268170222952594665

`∩[A052018(n+1), A106755(n+1)]`
-/

namespace A175017.P7268170222952594665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175017.P7268170222952594665

/-! ## A175017.P1251289081460365007

`∩[A106755(n+1), A293873(n+1)]`
-/

namespace A175017.P1251289081460365007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175017.P1251289081460365007

/-!
# A175018: A005185(n)-floor(A005185(n)/2).

The programs for A175018, the canonical program `A175018.P17802482432848195588` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175018 has offset 1).

The definition of A175018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175018.P17802482432848195588

`A110654(A005185(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175018

/-- `A110654(A005185(n+1))` -/
def P17802482432848195588.Spec : Prop :=
  ∀ n, P17802482432848195588.a n = A175018 (n + 1)

theorem P17802482432848195588.correct : P17802482432848195588.Spec := by
  intro n
  simp only [A175018, Nat.add_sub_cancel]

end A175018

/-! ## A175018.P10197185306608550527

`round(A005185(Δ[n²]-n)/2)`
-/

namespace A175018.P10197185306608550527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005185 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A175018.P10197185306608550527

namespace A175018

/-- `round(A005185(Δ[n²]-n)/2)` -/
def P10197185306608550527.Spec : Prop :=
  ∀ n, P10197185306608550527.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P15938153446238699632

`A004526(A005185(n+1)+1)`
-/

namespace A175018.P15938153446238699632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005185 (n + 1) + 1).toNat

end

end A175018.P15938153446238699632

namespace A175018

/-- `A004526(A005185(n+1)+1)` -/
def P15938153446238699632.Spec : Prop :=
  ∀ n, P15938153446238699632.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P4965200814178940538

`A123108(A005185(n+1)+1)`
-/

namespace A175018.P4965200814178940538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A005185 (n + 1) + 1).toNat

end

end A175018.P4965200814178940538

namespace A175018

/-- `A123108(A005185(n+1)+1)` -/
def P4965200814178940538.Spec : Prop :=
  ∀ n, P4965200814178940538.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P508397843242912035

`A008619(A005185(n+1)-1)`
-/

namespace A175018.P508397843242912035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005185 (n + 1) - 1).toNat

end

end A175018.P508397843242912035

namespace A175018

/-- `A008619(A005185(n+1)-1)` -/
def P508397843242912035.Spec : Prop :=
  ∀ n, P508397843242912035.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P18402082678816875932

`A028242(xor(1, A005185(n+1)))`
-/

namespace A175018.P18402082678816875932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A005185 (n + 1))).toNat

end

end A175018.P18402082678816875932

namespace A175018

/-- `A028242(xor(1, A005185(n+1)))` -/
def P18402082678816875932.Spec : Prop :=
  ∀ n, P18402082678816875932.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P8874021394122925409

`A004524(or(1, A005185(n+1)+1))`
-/

namespace A175018.P8874021394122925409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A005185 (n + 1) + 1)).toNat

end

end A175018.P8874021394122925409

namespace A175018

/-- `A004524(or(1, A005185(n+1)+1))` -/
def P8874021394122925409.Spec : Prop :=
  ∀ n, P8874021394122925409.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P9957601257915001203

`A004526(n+2-A239913(n+1))`
-/

namespace A175018.P9957601257915001203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 2 : ℤ) - A239913 (n + 1)).toNat

end

end A175018.P9957601257915001203

namespace A175018

/-- `A004526(n+2-A239913(n+1))` -/
def P9957601257915001203.Spec : Prop :=
  ∀ n, P9957601257915001203.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P2481958806337678690

`ceil((A004001(n+1)-A284019(n+1))/2)`
-/

namespace A175018.P2481958806337678690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004001 (n + 1) - A284019 (n + 1) : ℚ) / 2⌉

end

end A175018.P2481958806337678690

namespace A175018

/-- `ceil((A004001(n+1)-A284019(n+1))/2)` -/
def P2481958806337678690.Spec : Prop :=
  ∀ n, P2481958806337678690.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P2783065803353610898

`round(A005185(n+1)/2)%A001567(n+1)`
-/

namespace A175018.P2783065803353610898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A005185 (n + 1) : ℚ) / 2)) (A001567 (n + 1))

end

end A175018.P2783065803353610898

namespace A175018

/-- `round(A005185(n+1)/2)%A001567(n+1)` -/
def P2783065803353610898.Spec : Prop :=
  ∀ n, P2783065803353610898.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P11948990912656380734

`A002265(2*(A005185(n+1)+1))`
-/

namespace A175018.P11948990912656380734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A005185 (n + 1) + 1)).toNat

end

end A175018.P11948990912656380734

namespace A175018

/-- `A002265(2*(A005185(n+1)+1))` -/
def P11948990912656380734.Spec : Prop :=
  ∀ n, P11948990912656380734.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P6654595978659917489

`A008621(2*(A005185(n+1)-1))`
-/

namespace A175018.P6654595978659917489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * (A005185 (n + 1) - 1)).toNat

end

end A175018.P6654595978659917489

namespace A175018

/-- `A008621(2*(A005185(n+1)-1))` -/
def P6654595978659917489.Spec : Prop :=
  ∀ n, P6654595978659917489.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P8205353173128181561

`A002265(A005185(n+1)+A005185(n+1)+2)`
-/

namespace A175018.P8205353173128181561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005185 (n + 1) + (A005185 (n + 1) + 2)).toNat

end

end A175018.P8205353173128181561

namespace A175018

/-- `A002265(A005185(n+1)+A005185(n+1)+2)` -/
def P8205353173128181561.Spec : Prop :=
  ∀ n, P8205353173128181561.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P6351301326635514546

`A008621(A005185(n+1)+A005185(n+1)-1)`
-/

namespace A175018.P6351301326635514546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A005185 (n + 1) + (A005185 (n + 1) - 1)).toNat

end

end A175018.P6351301326635514546

namespace A175018

/-- `A008621(A005185(n+1)+A005185(n+1)-1)` -/
def P6351301326635514546.Spec : Prop :=
  ∀ n, P6351301326635514546.a n = A175018 (n + 1)

end A175018

/-! ## A175018.P15107641550208454130

`A110656(4*A005185(n+1))`
-/

namespace A175018.P15107641550208454130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A005185 (n + 1)).toNat

end

end A175018.P15107641550208454130

namespace A175018

/-- `A110656(4*A005185(n+1))` -/
def P15107641550208454130.Spec : Prop :=
  ∀ n, P15107641550208454130.a n = A175018 (n + 1)

end A175018

/-!
# A175019: a(0)=a(1)=1; a(n) = a(n-a(n-2)) + 2.

The programs for A175019, the canonical program `A175019.P1764286059254060060` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175019 has offset 0).

The definition of A175019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+2` (program `A175019.P1764286059254060060`, by `A175019.P1764286059254060060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175019.P1764286059254060060

`a(n-a(n-2))+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175019

/-- `a(n-a(n-2))+2` -/
def P1764286059254060060.Spec : Prop :=
  ∀ n, (P1764286059254060060.a n : ℤ) = A175019 n

theorem P1764286059254060060.correct : P1764286059254060060.Spec := by
  intro n
  simp only [A175019]

end A175019

/-! ## A175019.P8532154259913666412

`2-floor(-a(n-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A175019.P8532154259913666412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (-a ((n : ℤ) - a (n - 2)).toNat)

end

end A175019.P8532154259913666412

namespace A175019

/-- `2-floor(-a(n-a(n-2)))` -/
def P8532154259913666412.Spec : Prop :=
  ∀ n, P8532154259913666412.a n = A175019 n

end A175019

/-! ## A175019.P8098837646089978445

`2-round(-a(n-a(n-2)))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A175019.P8098837646089978445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (-a ((n : ℤ) - a (n - 2)).toNat)

end

end A175019.P8098837646089978445

namespace A175019

/-- `2-round(-a(n-a(n-2)))` -/
def P8098837646089978445.Spec : Prop :=
  ∀ n, P8098837646089978445.a n = A175019 n

end A175019

/-! ## A175019.P9886354636725640511

`A065168(a(n-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A175019.P9886354636725640511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A065168 (a ((n : ℤ) - a (n - 2)).toNat).toNat

end

end A175019.P9886354636725640511

namespace A175019

/-- `A065168(a(n-a(n-2)))` -/
def P9886354636725640511.Spec : Prop :=
  ∀ n, P9886354636725640511.a n = A175019 n

end A175019

/-! ## A175019.P7481292715653063195

`A071054(a(n-a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A175019.P7481292715653063195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071054 (a ((n : ℤ) - a (n - 2)).toNat).toNat

end

end A175019.P7481292715653063195

namespace A175019

/-- `A071054(a(n-a(n-2)))` -/
def P7481292715653063195.Spec : Prop :=
  ∀ n, P7481292715653063195.a n = A175019 n

end A175019

/-! ## A175019.P18314371173089641426

`A020725(A020725(a(n-a(n-2))))` with `a(0)=1, a(1)=1`
-/

namespace A175019.P18314371173089641426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A020725 (A020725 (a ((n : ℤ) - a (n - 2)).toNat).toNat).toNat

end

end A175019.P18314371173089641426

namespace A175019

/-- `A020725(A020725(a(n-a(n-2))))` -/
def P18314371173089641426.Spec : Prop :=
  ∀ n, P18314371173089641426.a n = A175019 n

end A175019

/-! ## A175019.P12652422670642352009

`A052938(A103517(a(n-a(n-2))))` with `a(0)=1, a(1)=1`
-/

namespace A175019.P12652422670642352009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052938 (A103517 (a ((n : ℤ) - a (n - 2)).toNat).toNat).toNat

end

end A175019.P12652422670642352009

namespace A175019

/-- `A052938(A103517(a(n-a(n-2))))` -/
def P12652422670642352009.Spec : Prop :=
  ∀ n, P12652422670642352009.a n = A175019 n

end A175019

/-!
# A175020: An integer n is included if n is the smallest positive integer with its particular multiset of run-lengths (of either 0 or 1 considered together) in its binary representation.

The programs for A175020, there is no canonical definition to state claims against.
-/

/-! ## A175020.P16087550099519764867

`eq[char[A175021(n+1)], A000007(n)]`
-/

namespace A175020.P16087550099519764867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175020.P16087550099519764867

/-! ## A175020.P8190230482994704833

`eq[char[A175021(n+1)], A000038(n)]`
-/

namespace A175020.P8190230482994704833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175020.P8190230482994704833

/-! ## A175020.P13743697863486406463

`eq[char[A175021(n+1)], A036987(2*n)]`
-/

namespace A175020.P13743697863486406463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175021 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175020.P13743697863486406463

/-! ## A175020.P9824937770097121560

`eq[A000122(n)%2, char[A175021(n+1)]]`
-/

namespace A175020.P9824937770097121560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000122 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175021 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A175020.P9824937770097121560

/-! ## A175020.P18400146118865441082

`record[A361479(n+1)]`
-/

namespace A175020.P18400146118865441082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175020.P18400146118865441082

/-! ## A175020.P7202439867220655345

`eq[n, A361479(A028310(n))]`
-/

namespace A175020.P7202439867220655345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361479 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175020.P7202439867220655345

/-! ## A175020.P3364400107614033648

`record[A330091(A335834(n+1))]`
-/

namespace A175020.P3364400107614033648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330091 (A335834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175020.P3364400107614033648

/-!
# A175021: A positive integer k is included if k is not the smallest positive integer with its particular multiset of run-lengths (of either 0 or 1 considered together) in its binary representation.

The programs for A175021, there is no canonical definition to state claims against.
-/

/-! ## A175021.P6884646568788130637

`comp[A175020(n+1)-1]+1`
-/

namespace A175021.P6884646568788130637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175021.P6884646568788130637

/-! ## A175021.P14250961953982585097

`eq[char[A175020(n+1)], A000007(n)]`
-/

namespace A175021.P14250961953982585097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175021.P14250961953982585097

/-! ## A175021.P12653646722409975616

`eq[char[A175020(n+1)], A000038(n)]`
-/

namespace A175021.P12653646722409975616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175021.P12653646722409975616

/-! ## A175021.P9297064299895403606

`eq[char[A175020(n+1)], A169585(n)]`
-/

namespace A175021.P9297064299895403606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175021.P9297064299895403606

/-! ## A175021.P8509262654795435701

`eq[char[A175020(n+1)], A010051(2*(n+1))]`
-/

namespace A175021.P8509262654795435701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175021.P8509262654795435701

/-! ## A175021.P2358602958488172951

`eq[char[A175020(n+1)], A154724((n+1)²)]`
-/

namespace A175021.P2358602958488172951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175020 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175021.P2358602958488172951

/-!
# A175022: a(n) = the number of runs (those of 0 and of 1 considered together) in the binary representation of A175020(n).

The programs for A175022, there is no canonical definition to state claims against.
-/

/-! ## A175022.P6604405907806441577

`A005811(A175020(n+1))`
-/

namespace A175022.P6604405907806441577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A175020 (n + 1)).toNat

end

end A175022.P6604405907806441577

/-! ## A175022.P2358498548609885316

`A040001(2*n+1)+A037834(A175020(n+1))`
-/

namespace A175022.P2358498548609885316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) + A037834 (A175020 (n + 1)).toNat

end

end A175022.P2358498548609885316

/-! ## A175022.P15821245800137355210

`A037834(A175020(n+1))+A014577(A008574(n))`
-/

namespace A175022.P15821245800137355210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A175020 (n + 1)).toNat + A014577 (A008574 n).toNat

end

end A175022.P15821245800137355210

/-! ## A175022.P8318227083163341234

`A117494(A007918(n))+A037834(A175020(n+1))`
-/

namespace A175022.P8318227083163341234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A007918 n).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P8318227083163341234

/-! ## A175022.P7323209382269513610

`A037834(A175020(n+1))+A000034(A130824(n))`
-/

namespace A175022.P7323209382269513610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A175020 (n + 1)).toNat + A000034 (A130824 n).toNat

end

end A175022.P7323209382269513610

/-! ## A175022.P14108083067333459900

`A090740(A017293(n)+1)+A037834(A175020(n+1))`
-/

namespace A175022.P14108083067333459900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (A017293 n + 1).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P14108083067333459900

/-! ## A175022.P786292730193261854

`A117494(A000040(n+1))+A037834(A175020(n+1))`
-/

namespace A175022.P786292730193261854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A000040 (n + 1)).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P786292730193261854

/-! ## A175022.P7177610047007251911

`A117494(A002145(n+1))+A037834(A175020(n+1))`
-/

namespace A175022.P7177610047007251911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A002145 (n + 1)).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P7177610047007251911

/-! ## A175022.P5488251061619709876

`A117494(A074832(n+1))+A037834(A175020(n+1))`
-/

namespace A175022.P5488251061619709876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (A074832 (n + 1)).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P5488251061619709876

/-! ## A175022.P3455561981304518552

`A037834(A175020(n+1))+A006519(A128470(n))`
-/

namespace A175022.P3455561981304518552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A175020 (n + 1)).toNat + A006519 (A128470 n).toNat

end

end A175022.P3455561981304518552

/-! ## A175022.P18019220607380255055

`A037834(A175020(n+1))+A001221(A330491(n+1))`
-/

namespace A175022.P18019220607380255055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A175020 (n + 1)).toNat + A001221 (A330491 (n + 1)).toNat

end

end A175022.P18019220607380255055

/-! ## A175022.P9799631328883356747

`A089309((dr(5-n)-n)²)+A037834(A175020(n+1))`
-/

namespace A175022.P9799631328883356747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (((SequenceMachineLib.digitalRoot (5 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P9799631328883356747

/-! ## A175022.P6250931605614927923

`A099545((dr(5-n)-n)²)+A037834(A175020(n+1))`
-/

namespace A175022.P6250931605614927923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (((SequenceMachineLib.digitalRoot (5 - (n : ℤ)) : ℤ) - (n : ℤ)) ^ 2).toNat + A037834 (A175020 (n + 1)).toNat

end

end A175022.P6250931605614927923

/-!
# A175023: Irregular table read by rows: Row n (of A175022(n) terms) contains the run-lengths in the binary representation of A175020(n), reading left to right.

The programs for A175023, there is no canonical definition to state claims against.
-/

/-! ## A175023.P9831423160700212853

`∏{e}[A001611(A178861(n+1)), #]`
-/

namespace A175023.P9831423160700212853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A178861 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A175023.P9831423160700212853

/-! ## A175023.P14039006693957105509

`∏{e}[A001611(A178863(n+1)), #]`
-/

namespace A175023.P14039006693957105509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A178863 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A175023.P14039006693957105509

/-! ## A175023.P16770751457468589348

`∏{e}[A001611(A295235(n+2)), #]`
-/

namespace A175023.P16770751457468589348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A295235 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A175023.P16770751457468589348

/-! ## A175023.P2032550981316100493

`A326702(gcd(A051699(3*n+4), A275037(n+3)))`
-/

namespace A175023.P2032550981316100493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (Int.gcd (A051699 (3 * n + 4)) (A275037 (n + 3)))

end

end A175023.P2032550981316100493

/-! ## A175023.P10982864323519774451

`A344590(A022345(n)+2)`
-/

namespace A175023.P10982864323519774451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A022345 n + 2).toNat

end

end A175023.P10982864323519774451

/-!
# A175024: Irregular table read by rows: Row n (of A175022(n) terms) contains the terms of row n of table A175023 with these terms arranged in nondecreasing order.

The programs for A175024, there is no canonical definition to state claims against.
-/

/-! ## A175024.P12335713728501654749

`gcd(A004736(A324969(n+1)), A308302(3*n+5))`
-/

namespace A175024.P12335713728501654749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (A324969 (n + 1)).toNat) (A308302 (3 * n + 5))

end

end A175024.P12335713728501654749

/-! ## A175024.P3638423447025008249

`A332770(∑[A008619(A178337(n+1))])`
-/

namespace A175024.P3638423447025008249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A178337 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175024.P3638423447025008249

/-! ## A175024.P16905217543896864373

`A005361(record[A340190(A110751(n+1))])`
-/

namespace A175024.P16905217543896864373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340190 (A110751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175024.P16905217543896864373

/-! ## A175024.P2482021260451251913

`A003989(A135042(n)+A000071(n+1))`
-/

namespace A175024.P2482021260451251913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A135042 n + A000071 (n + 1)).toNat

end

end A175024.P2482021260451251913

/-! ## A175024.P15815435345548609523

`A352911(A337377(n+3)%A077428(2*n+5))`
-/

namespace A175024.P15815435345548609523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (Int.tmod (A337377 (n + 3)) (A077428 (2 * n + 5))).toNat

end

end A175024.P15815435345548609523

/-!
# A175027: Replace prime with its index!

The programs for A175027, there is no canonical definition to state claims against.
-/

/-! ## A175027.P14968682944013893304

`(1-A026233(n+1))*char[A000040(n+1)]+n`
-/

namespace A175027.P14968682944013893304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A026233 (n + 1)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A175027.P14968682944013893304

/-! ## A175027.P12221869500928353583

`A056924(A011782(n)*A118668(3*(n+1)))`
-/

namespace A175027.P12221869500928353583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A011782 n * A118668 (3 * (n + 1))).toNat

end

end A175027.P12221869500928353583

/-! ## A175027.P17743057384974669869

`∑{e}[A125080(A125021(n+1)), #]`
-/

namespace A175027.P17743057384974669869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125080 (A125021 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A175027.P17743057384974669869

/-!
# A175028: a(n)=n+1 if n is prime, otherwise a(n)=n-1.

The programs for A175028, the canonical program `A175028.P4239654969950042590` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175028 has offset 1).

The definition of A175028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175028.P2115374678912005976

`and(2, 2^∑{e}[n+1, #])+n`
-/

namespace A175028.P2115374678912005976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + n

end

end A175028.P2115374678912005976

namespace A175028

/-- `and(2, 2^∑{e}[n+1, #])+n` -/
def P2115374678912005976.Spec : Prop :=
  ∀ n, (P2115374678912005976.a n : ℤ) = A175028 (n + 1)

end A175028

/-! ## A175028.P4239654969950042590

`and(2, ∏{e}[n+1, 2^#])+n`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175028

/-- `and(2, ∏{e}[n+1, 2^#])+n` -/
def P4239654969950042590.Spec : Prop :=
  ∀ n, (P4239654969950042590.a n : ℤ) = A175028 (n + 1)

theorem P4239654969950042590.correct : P4239654969950042590.Spec := by
  intro n
  simp only [A175028, Nat.add_sub_cancel]

end A175028

/-! ## A175028.P8937871071560865057

`2*char[p?[floor(n/2)]-1]+n`
-/

namespace A175028.P8937871071560865057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A175028.P8937871071560865057

namespace A175028

/-- `2*char[p?[floor(n/2)]-1]+n` -/
def P8937871071560865057.Spec : Prop :=
  ∀ n, (P8937871071560865057.a n : ℤ) = A175028 (n + 1)

end A175028

/-! ## A175028.P1867538344679568908

`2*char[eq[1, ∑{e}[n+1, #]]]+n`
-/

namespace A175028.P1867538344679568908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = n then 1 else 0) + n

end

end A175028.P1867538344679568908

namespace A175028

/-- `2*char[eq[1, ∑{e}[n+1, #]]]+n` -/
def P1867538344679568908.Spec : Prop :=
  ∀ n, (P1867538344679568908.a n : ℤ) = A175028 (n + 1)

end A175028

/-! ## A175028.P9119047390102376789

`abs(2*∑{p}[n+1, C(#, n)]-n)`
-/

namespace A175028.P9119047390102376789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) : ℕ) : ℤ) - (n : ℤ)|

end

end A175028.P9119047390102376789

namespace A175028

/-- `abs(2*∑{p}[n+1, C(#, n)]-n)` -/
def P9119047390102376789.Spec : Prop :=
  ∀ n, P9119047390102376789.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P16151556553316502350

`2*char[lt[n, ∑{p}[n+1, #]]]+n`
-/

namespace A175028.P16151556553316502350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f1 j = n then 1 else 0) + n

end

end A175028.P16151556553316502350

namespace A175028

/-- `2*char[lt[n, ∑{p}[n+1, #]]]+n` -/
def P16151556553316502350.Spec : Prop :=
  ∀ n, (P16151556553316502350.a n : ℤ) = A175028 (n + 1)

end A175028

/-! ## A175028.P2796703318350253932

`round(acot(xor(2, 2^∑{e}[n+1, #]))+n)`
-/

namespace A175028.P2796703318350253932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.xor 2 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℝ) + (n : ℝ))

end

end A175028.P2796703318350253932

namespace A175028

/-- `round(acot(xor(2, 2^∑{e}[n+1, #]))+n)` -/
def P2796703318350253932.Spec : Prop :=
  ∀ n, P2796703318350253932.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P4517282101853705449

`log2((char[eq[1, ∑{e}[n+1, #]]]+1)²)+n`
-/

namespace A175028.P4517282101853705449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((if ∃ j, f1 j = n then 1 else 0) + 1) ^ 2 : ℕ) : ℝ) + (n : ℝ)

end

end A175028.P4517282101853705449

namespace A175028

/-- `log2((char[eq[1, ∑{e}[n+1, #]]]+1)²)+n` -/
def P4517282101853705449.Spec : Prop :=
  ∀ n, P4517282101853705449.a n = (A175028 (n + 1) : ℝ)

end A175028

/-! ## A175028.P15618903576920302532

`floor(acot(2-(∑{d}[n+1, #]-n))²+n)`
-/

namespace A175028.P15618903576920302532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ)) : ℝ) ^ 2 + (n : ℝ)⌋

end

end A175028.P15618903576920302532

namespace A175028

/-- `floor(acot(2-(∑{d}[n+1, #]-n))²+n)` -/
def P15618903576920302532.Spec : Prop :=
  ∀ n, P15618903576920302532.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P14280111067064105933

`∑{p}[n+1, val(#, n+1)]+∑{p}[n+1, val(#, n+1)]+n`
-/

namespace A175028.P14280111067064105933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) + (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1) + n)

end

end A175028.P14280111067064105933

namespace A175028

/-- `∑{p}[n+1, val(#, n+1)]+∑{p}[n+1, val(#, n+1)]+n` -/
def P14280111067064105933.Spec : Prop :=
  ∀ n, (P14280111067064105933.a n : ℤ) = A175028 (n + 1)

end A175028

/-! ## A175028.P9091432026631785095

`n+1-Δ[A118777(n)]`
-/

namespace A175028.P9091432026631785095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A175028.P9091432026631785095

namespace A175028

/-- `n+1-Δ[A118777(n)]` -/
def P9091432026631785095.Spec : Prop :=
  ∀ n, P9091432026631785095.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P8686148950095304601

`2*A010051(n+1)+n`
-/

namespace A175028.P8686148950095304601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010051 (n + 1) + (n : ℤ)

end

end A175028.P8686148950095304601

namespace A175028

/-- `2*A010051(n+1)+n` -/
def P8686148950095304601.Spec : Prop :=
  ∀ n, P8686148950095304601.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P16109902460373449452

`2*A113637(n+1)-n`
-/

namespace A175028.P16109902460373449452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113637 (n + 1) - (n : ℤ)

end

end A175028.P16109902460373449452

namespace A175028

/-- `2*A113637(n+1)-n` -/
def P16109902460373449452.Spec : Prop :=
  ∀ n, P16109902460373449452.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P15715341317097676821

`lcm(2, A129950(n+1))+n`
-/

namespace A175028.P15715341317097676821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A129950 (n + 1)) + n

end

end A175028.P15715341317097676821

namespace A175028

/-- `lcm(2, A129950(n+1))+n` -/
def P15715341317097676821.Spec : Prop :=
  ∀ n, (P15715341317097676821.a n : ℤ) = A175028 (n + 1)

end A175028

/-! ## A175028.P4842379308961710968

`and(2, A046644(n+1))+n`
-/

namespace A175028.P4842379308961710968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A046644 (n + 1)) + (n : ℤ)

end

end A175028.P4842379308961710968

namespace A175028

/-- `and(2, A046644(n+1))+n` -/
def P4842379308961710968.Spec : Prop :=
  ∀ n, P4842379308961710968.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P14917900918839651061

`and(2, A061142(n+1))+n`
-/

namespace A175028.P14917900918839651061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A061142 (n + 1)) + (n : ℤ)

end

end A175028.P14917900918839651061

namespace A175028

/-- `and(2, A061142(n+1))+n` -/
def P14917900918839651061.Spec : Prop :=
  ∀ n, P14917900918839651061.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P17864379758304944789

`and(2, A069158(n+1))+n`
-/

namespace A175028.P17864379758304944789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A069158 (n + 1)) + (n : ℤ)

end

end A175028.P17864379758304944789

namespace A175028

/-- `and(2, A069158(n+1))+n` -/
def P17864379758304944789.Spec : Prop :=
  ∀ n, P17864379758304944789.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P2988889087807210925

`and(2, A100577(n+1))+n`
-/

namespace A175028.P2988889087807210925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A100577 (n + 1)) + (n : ℤ)

end

end A175028.P2988889087807210925

namespace A175028

/-- `and(2, A100577(n+1))+n` -/
def P2988889087807210925.Spec : Prop :=
  ∀ n, P2988889087807210925.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P2341862832380268190

`and(2, A106743(n+1))+n`
-/

namespace A175028.P2341862832380268190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A106743 (n + 1)) + (n : ℤ)

end

end A175028.P2341862832380268190

namespace A175028

/-- `and(2, A106743(n+1))+n` -/
def P2341862832380268190.Spec : Prop :=
  ∀ n, P2341862832380268190.a n = A175028 (n + 1)

end A175028

/-! ## A175028.P4046983525905054767

`and(2, A165831(n+1))+n`
-/

namespace A175028.P4046983525905054767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A165831 (n + 1)) + (n : ℤ)

end

end A175028.P4046983525905054767

namespace A175028

/-- `and(2, A165831(n+1))+n` -/
def P4046983525905054767.Spec : Prop :=
  ∀ n, P4046983525905054767.a n = A175028 (n + 1)

end A175028

/-!
# A175029: a(n)=2*n if n is prime, otherwise a(n)=3*n.

The programs for A175029, the canonical program `A175029.P16748285344966930104` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175029 has offset 1).

The definition of A175029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175029.P16748285344966930104

`3*(n+1)-∑{p}[n+1, C(#, n)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175029

/-- `3*(n+1)-∑{p}[n+1, C(#, n)]` -/
def P16748285344966930104.Spec : Prop :=
  ∀ n, P16748285344966930104.a n = A175029 (n + 1)

theorem P16748285344966930104.correct : P16748285344966930104.Spec := by
  intro n
  simp only [A175029, Nat.add_sub_cancel]

end A175029

/-! ## A175029.P11469638719392588777

`(n+1)*(3-char[eq[1, ∑{e}[n+1, #]]])`
-/

namespace A175029.P11469638719392588777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A175029.P11469638719392588777

namespace A175029

/-- `(n+1)*(3-char[eq[1, ∑{e}[n+1, #]]])` -/
def P11469638719392588777.Spec : Prop :=
  ∀ n, P11469638719392588777.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P13918166379956843558

`(n+1)*xor(3, char[eq[1, ∑{e}[n+1, #]]])`
-/

namespace A175029.P13918166379956843558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 3 (if ∃ j, f1 j = n then 1 else 0)

end

end A175029.P13918166379956843558

namespace A175029

/-- `(n+1)*xor(3, char[eq[1, ∑{e}[n+1, #]]])` -/
def P13918166379956843558.Spec : Prop :=
  ∀ n, (P13918166379956843558.a n : ℤ) = A175029 (n + 1)

end A175029

/-! ## A175029.P9942848090866104870

`(n+1)*(∏{p}[n+1, C(#%n, #)]+2)`
-/

namespace A175029.P9942848090866104870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p + 2)

end

end A175029.P9942848090866104870

namespace A175029

/-- `(n+1)*(∏{p}[n+1, C(#%n, #)]+2)` -/
def P9942848090866104870.Spec : Prop :=
  ∀ n, (P9942848090866104870.a n : ℤ) = A175029 (n + 1)

end A175029

/-! ## A175029.P16017462453543660946

`(n+1)*(C(n, ∑{p}[n+1, C(#, n)])+2)`
-/

namespace A175029.P16017462453543660946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) + 2)

end

end A175029.P16017462453543660946

namespace A175029

/-- `(n+1)*(C(n, ∑{p}[n+1, C(#, n)])+2)` -/
def P16017462453543660946.Spec : Prop :=
  ∀ n, (P16017462453543660946.a n : ℤ) = A175029 (n + 1)

end A175029

/-! ## A175029.P7047235765567713823

`1-∑{p}[n+1, C(#, n)]+n-(xor(n+1, -1)-n)`
-/

namespace A175029.P7047235765567713823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ) - (Int.xor (n + 1 : ℤ) (-1) - (n : ℤ))

end

end A175029.P7047235765567713823

namespace A175029

/-- `1-∑{p}[n+1, C(#, n)]+n-(xor(n+1, -1)-n)` -/
def P7047235765567713823.Spec : Prop :=
  ∀ n, P7047235765567713823.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P8085339896734534296

`(n+1)*(A005171(n+1)+2)`
-/

namespace A175029.P8085339896734534296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A005171 (n + 1) + 2)

end

end A175029.P8085339896734534296

namespace A175029

/-- `(n+1)*(A005171(n+1)+2)` -/
def P8085339896734534296.Spec : Prop :=
  ∀ n, P8085339896734534296.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P18413937441875058666

`A191558(n+1)+2*(n+1)`
-/

namespace A175029.P18413937441875058666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) + (2 * (n + 1) : ℤ)

end

end A175029.P18413937441875058666

namespace A175029

/-- `A191558(n+1)+2*(n+1)` -/
def P18413937441875058666.Spec : Prop :=
  ∀ n, P18413937441875058666.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P8815618712097245174

`(n+1)*(3-A010051(n+1))`
-/

namespace A175029.P8815618712097245174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A010051 (n + 1))

end

end A175029.P8815618712097245174

namespace A175029

/-- `(n+1)*(3-A010051(n+1))` -/
def P8815618712097245174.Spec : Prop :=
  ∀ n, P8815618712097245174.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P17979839884204774321

`3*(n+1)-A061397(n+1)`
-/

namespace A175029.P17979839884204774321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A061397 (n + 1)

end

end A175029.P17979839884204774321

namespace A175029

/-- `3*(n+1)-A061397(n+1)` -/
def P17979839884204774321.Spec : Prop :=
  ∀ n, P17979839884204774321.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P1108145321838520404

`4*(n+1)-A143545(n+1)`
-/

namespace A175029.P1108145321838520404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A143545 (n + 1)

end

end A175029.P1108145321838520404

namespace A175029

/-- `4*(n+1)-A143545(n+1)` -/
def P1108145321838520404.Spec : Prop :=
  ∀ n, P1108145321838520404.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P10390777847800475933

`5*(n+1)-A175030(n+1)`
-/

namespace A175029.P10390777847800475933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A175030 (n + 1)

end

end A175029.P10390777847800475933

namespace A175029

/-- `5*(n+1)-A175030(n+1)` -/
def P10390777847800475933.Spec : Prop :=
  ∀ n, P10390777847800475933.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P8312404613526245093

`A016777(n)+2-A061397(n+1)`
-/

namespace A175029.P8312404613526245093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A061397 (n + 1))

end

end A175029.P8312404613526245093

namespace A175029

/-- `A016777(n)+2-A061397(n+1)` -/
def P8312404613526245093.Spec : Prop :=
  ∀ n, P8312404613526245093.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P8665744802486059533

`(n+1)*A118136(A118136(A105560(n+1)))`
-/

namespace A175029.P8665744802486059533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118136 (A118136 (A105560 (n + 1)).toNat).toNat

end

end A175029.P8665744802486059533

namespace A175029

/-- `(n+1)*A118136(A118136(A105560(n+1)))` -/
def P8665744802486059533.Spec : Prop :=
  ∀ n, P8665744802486059533.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P11719976813044730335

`(n+1)*A282900(A282900(A372330(n+1)))`
-/

namespace A175029.P11719976813044730335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A282900 (A282900 (A372330 (n + 1)).toNat).toNat

end

end A175029.P11719976813044730335

namespace A175029

/-- `(n+1)*A282900(A282900(A372330(n+1)))` -/
def P11719976813044730335.Spec : Prop :=
  ∀ n, P11719976813044730335.a n = A175029 (n + 1)

end A175029

/-! ## A175029.P4911241672254713677

`(2*n)%∏{d}[n+1, #]+n+3`
-/

namespace A175029.P4911241672254713677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % (∏ d ∈ Nat.divisors (f1 n), d) + (n + 3)

end

end A175029.P4911241672254713677

namespace A175029

/-- `(2*n)%∏{d}[n+1, #]+n+3` -/
def P4911241672254713677.Spec : Prop :=
  ∀ n, (P4911241672254713677.a n : ℤ) = A175029 (n + 1)

end A175029

/-! ## A175029.P7685470233802588675

`(n+1)*A000040(A360330(A000040(n+1)))`
-/

namespace A175029.P7685470233802588675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (A360330 (A000040 (n + 1)).toNat).toNat

end

end A175029.P7685470233802588675

namespace A175029

/-- `(n+1)*A000040(A360330(A000040(n+1)))` -/
def P7685470233802588675.Spec : Prop :=
  ∀ n, P7685470233802588675.a n = A175029 (n + 1)

end A175029

/-!
# A175030: a(n)=3*n if n is prime, otherwise a(n)=2*n.

The programs for A175030, the canonical program `A175030.P749436709066134057` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175030 has offset 1).

The definition of A175030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175030.P749436709066134057

`∑{p}[n+1, C(#, n)]+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175030

/-- `∑{p}[n+1, C(#, n)]+2*(n+1)` -/
def P749436709066134057.Spec : Prop :=
  ∀ n, (P749436709066134057.a n : ℤ) = A175030 (n + 1)

theorem P749436709066134057.correct : P749436709066134057.Spec := by
  intro n
  simp only [A175030, Nat.add_sub_cancel]

end A175030

/-! ## A175030.P3924957147884491034

`∑{p}[n+1, C(#, n)]+2+n+n`
-/

namespace A175030.P3924957147884491034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 2 + n + n

end

end A175030.P3924957147884491034

namespace A175030

/-- `∑{p}[n+1, C(#, n)]+2+n+n` -/
def P3924957147884491034.Spec : Prop :=
  ∀ n, (P3924957147884491034.a n : ℤ) = A175030 (n + 1)

theorem P3924957147884491034.correct : P3924957147884491034.Spec := by
  intro n
  simp only [A175030, Nat.add_sub_cancel, A175030.P3924957147884491034.f1, A175030.P3924957147884491034.a, A175030.P749436709066134057.f1, A175030.P749436709066134057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A175030

/-! ## A175030.P6097161649282238592

`(char[eq[1, ∑{e}[n+1, #]]]+2)*(n+1)`
-/

namespace A175030.P6097161649282238592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2) * (n + 1)

end

end A175030.P6097161649282238592

namespace A175030

/-- `(char[eq[1, ∑{e}[n+1, #]]]+2)*(n+1)` -/
def P6097161649282238592.Spec : Prop :=
  ∀ n, (P6097161649282238592.a n : ℤ) = A175030 (n + 1)

end A175030

/-! ## A175030.P8372677218221502044

`(n+1)*(char[lt[n, ∑{p}[n+1, #]]]+2)`
-/

namespace A175030.P8372677218221502044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((if ∃ j, f1 j = n then 1 else 0) + 2)

end

end A175030.P8372677218221502044

namespace A175030

/-- `(n+1)*(char[lt[n, ∑{p}[n+1, #]]]+2)` -/
def P8372677218221502044.Spec : Prop :=
  ∀ n, (P8372677218221502044.a n : ℤ) = A175030 (n + 1)

end A175030

/-! ## A175030.P163590576513660536

`(C(C(2, ∑{e}[n+1, #]), 2)+2)*(n+1)`
-/

namespace A175030.P163590576513660536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2 + 2) * (n + 1)

end

end A175030.P163590576513660536

namespace A175030

/-- `(C(C(2, ∑{e}[n+1, #]), 2)+2)*(n+1)` -/
def P163590576513660536.Spec : Prop :=
  ∀ n, (P163590576513660536.a n : ℤ) = A175030 (n + 1)

end A175030

/-! ## A175030.P9059475885718158608

`(∑{p}[n+1, val(#, n+1)]+2)*(n+1)`
-/

namespace A175030.P9059475885718158608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) + 2) * (n + 1)

end

end A175030.P9059475885718158608

namespace A175030

/-- `(∑{p}[n+1, val(#, n+1)]+2)*(n+1)` -/
def P9059475885718158608.Spec : Prop :=
  ∀ n, (P9059475885718158608.a n : ℤ) = A175030 (n + 1)

end A175030

/-! ## A175030.P17700246580982333567

`∏{p}[n+1, C(#, n)]+record[2-xor(1, -n)]`
-/

namespace A175030.P17700246580982333567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A175030.P17700246580982333567

namespace A175030

/-- `∏{p}[n+1, C(#, n)]+record[2-xor(1, -n)]` -/
def P17700246580982333567.Spec : Prop :=
  ∀ n, P17700246580982333567.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P9912777340334975462

`(floor(n/(∑{d}[n+1, #]-2))+2)*(n+1)`
-/

namespace A175030.P9912777340334975462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 2 : ℚ)⌋ + 2) * (n + 1 : ℤ)

end

end A175030.P9912777340334975462

namespace A175030

/-- `(floor(n/(∑{d}[n+1, #]-2))+2)*(n+1)` -/
def P9912777340334975462.Spec : Prop :=
  ∀ n, P9912777340334975462.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P5834866358059970191

`(floor(n^(1-∑{e}[n+1, #]))+2)*(n+1)`
-/

namespace A175030.P5834866358059970191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) ^ (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ)⌋ + 2) * (n + 1 : ℤ)

end

end A175030.P5834866358059970191

namespace A175030

/-- `(floor(n^(1-∑{e}[n+1, #]))+2)*(n+1)` -/
def P5834866358059970191.Spec : Prop :=
  ∀ n, P5834866358059970191.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P1486722694862311970

`(round(n^(1-∑{e}[n+1, #]))+2)*(n+1)`
-/

namespace A175030.P1486722694862311970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ)) + 2) * (n + 1 : ℤ)

end

end A175030.P1486722694862311970

namespace A175030

/-- `(round(n^(1-∑{e}[n+1, #]))+2)*(n+1)` -/
def P1486722694862311970.Spec : Prop :=
  ∀ n, P1486722694862311970.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P17008858491963106394

`A143545(n+1)+1+n`
-/

namespace A175030.P17008858491963106394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1) + 1 + (n : ℤ)

end

end A175030.P17008858491963106394

namespace A175030

/-- `A143545(n+1)+1+n` -/
def P17008858491963106394.Spec : Prop :=
  ∀ n, P17008858491963106394.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P6166207184283603938

`(n+1)*(A010051(n+1)+2)`
-/

namespace A175030.P6166207184283603938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A010051 (n + 1) + 2)

end

end A175030.P6166207184283603938

namespace A175030

/-- `(n+1)*(A010051(n+1)+2)` -/
def P6166207184283603938.Spec : Prop :=
  ∀ n, P6166207184283603938.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P12449189418458669158

`A061397(n+1)+2*(n+1)`
-/

namespace A175030.P12449189418458669158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + (2 * (n + 1) : ℤ)

end

end A175030.P12449189418458669158

namespace A175030

/-- `A061397(n+1)+2*(n+1)` -/
def P12449189418458669158.Spec : Prop :=
  ∀ n, P12449189418458669158.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P7468759934454879320

`(n+1)*(3-A005171(n+1))`
-/

namespace A175030.P7468759934454879320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A005171 (n + 1))

end

end A175030.P7468759934454879320

namespace A175030

/-- `(n+1)*(3-A005171(n+1))` -/
def P7468759934454879320.Spec : Prop :=
  ∀ n, P7468759934454879320.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P7828175362257077540

`3*(n+1)-A191558(n+1)`
-/

namespace A175030.P7828175362257077540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A191558 (n + 1)

end

end A175030.P7828175362257077540

namespace A175030

/-- `3*(n+1)-A191558(n+1)` -/
def P7828175362257077540.Spec : Prop :=
  ∀ n, P7828175362257077540.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P8526617323738299780

`5*(n+1)-A175029(n+1)`
-/

namespace A175030.P8526617323738299780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A175029 (n + 1)

end

end A175030.P8526617323738299780

namespace A175030

/-- `5*(n+1)-A175029(n+1)` -/
def P8526617323738299780.Spec : Prop :=
  ∀ n, P8526617323738299780.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P11012775262975024198

`(n+1)*A118136(A105560(n+1))`
-/

namespace A175030.P11012775262975024198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118136 (A105560 (n + 1)).toNat

end

end A175030.P11012775262975024198

namespace A175030

/-- `(n+1)*A118136(A105560(n+1))` -/
def P11012775262975024198.Spec : Prop :=
  ∀ n, P11012775262975024198.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P3673955761239881810

`(n+1)*A282900(A372330(n+1))`
-/

namespace A175030.P3673955761239881810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A282900 (A372330 (n + 1)).toNat

end

end A175030.P3673955761239881810

namespace A175030

/-- `(n+1)*A282900(A372330(n+1))` -/
def P3673955761239881810.Spec : Prop :=
  ∀ n, P3673955761239881810.a n = A175030 (n + 1)

end A175030

/-! ## A175030.P12037268792942492253

`A004767(n)-(A191558(n+1)+n)`
-/

namespace A175030.P12037268792942492253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - (A191558 (n + 1) + (n : ℤ))

end

end A175030.P12037268792942492253

namespace A175030

/-- `A004767(n)-(A191558(n+1)+n)` -/
def P12037268792942492253.Spec : Prop :=
  ∀ n, P12037268792942492253.a n = A175030 (n + 1)

end A175030

/-!
# A175031: Sequence of increasing positive perfect powers such that neighboring digits in the sequence are distinct.

The programs for A175031, there is no canonical definition to state claims against.
-/

/-! ## A175031.P4595145034462974374

`A001597(A277861(n+1))%A181375(n+1)`
-/

namespace A175031.P4595145034462974374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (A277861 (n + 1)).toNat) (A181375 (n + 1))

end

end A175031.P4595145034462974374

/-! ## A175031.P1712609128910176715

`record[A075309(n+1)%A171181(2*A134601(n+1))]`
-/

namespace A175031.P1712609128910176715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075309 (n + 1)) (A171181 (2 * A134601 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175031.P1712609128910176715

/-! ## A175031.P5056894352237244223

`A001694(lt[A337683(3*n+1), A278039(n)])`
-/

namespace A175031.P5056894352237244223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337683 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175031.P5056894352237244223

/-!
# A175032: a(n) is the difference between the n-th triangular number and the next perfect square.

The programs for A175032, the canonical program `A175032.P16998223547644010767` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175032 has offset 0).

The definition of A175032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175032.P16998223547644010767

`ceil(sqrt(n*(n+1)/2))²-n*(n+1)/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175032

/-- `ceil(sqrt(n*(n+1)/2))²-n*(n+1)/2` -/
def P16998223547644010767.Spec : Prop :=
  ∀ n, P16998223547644010767.a n = (A175032 n : ℚ)

end A175032

/-! ## A175032.P6651389700494978735

`∑[n+1]%ceil(sqrt(∑[n])+n+1)`
-/

namespace A175032.P6651389700494978735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) + (n + 1 : ℝ)⌉

end

end A175032.P6651389700494978735

namespace A175032

/-- `∑[n+1]%ceil(sqrt(∑[n])+n+1)` -/
def P6651389700494978735.Spec : Prop :=
  ∀ n, P6651389700494978735.a n = A175032 n

end A175032

/-! ## A175032.P13485085072277295600

`A068527(∑[n])`
-/

namespace A175032.P13485085072277295600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175032.P13485085072277295600

namespace A175032

/-- `A068527(∑[n])` -/
def P13485085072277295600.Spec : Prop :=
  ∀ n, P13485085072277295600.a n = A175032 n

end A175032

/-! ## A175032.P6032999232999090989

`abs(A048761(∑[n])-∑[n])`
-/

namespace A175032.P6032999232999090989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048761 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A175032.P6032999232999090989

namespace A175032

/-- `abs(A048761(∑[n])-∑[n])` -/
def P6032999232999090989.Spec : Prop :=
  ∀ n, P6032999232999090989.a n = A175032 n

end A175032

/-! ## A175032.P7471929854577937422

`and(-1, A068527(C(n+1, 2)))`
-/

namespace A175032.P7471929854577937422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A068527 (Nat.choose (n + 1) 2))

end

end A175032.P7471929854577937422

namespace A175032

/-- `and(-1, A068527(C(n+1, 2)))` -/
def P7471929854577937422.Spec : Prop :=
  ∀ n, P7471929854577937422.a n = A175032 n

end A175032

/-! ## A175032.P8936108485487458761

`A053186(A020703(∑[n]+1))`
-/

namespace A175032.P8936108485487458761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A020703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A175032.P8936108485487458761

namespace A175032

/-- `A053186(A020703(∑[n]+1))` -/
def P8936108485487458761.Spec : Prop :=
  ∀ n, P8936108485487458761.a n = A175032 n

end A175032

/-! ## A175032.P1736227693465806271

`A057427(n)*A068527(C(n+1, 2))`
-/

namespace A175032.P1736227693465806271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A068527 (Nat.choose (n + 1) 2)

end

end A175032.P1736227693465806271

namespace A175032

/-- `A057427(n)*A068527(C(n+1, 2))` -/
def P1736227693465806271.Spec : Prop :=
  ∀ n, P1736227693465806271.a n = A175032 n

end A175032

/-! ## A175032.P5020412296071024309

`∑{d}[A068527(C(n+1, 2)), A000010(#)]`
-/

namespace A175032.P5020412296071024309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A175032.P5020412296071024309

namespace A175032

/-- `∑{d}[A068527(C(n+1, 2)), A000010(#)]` -/
def P5020412296071024309.Spec : Prop :=
  ∀ n, P5020412296071024309.a n = A175032 n

end A175032

/-! ## A175032.P3021615891695872354

`A000038(n)!*A068527(C(n+1, 2))`
-/

namespace A175032.P3021615891695872354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A068527 (Nat.choose (n + 1) 2)

end

end A175032.P3021615891695872354

namespace A175032

/-- `A000038(n)!*A068527(C(n+1, 2))` -/
def P3021615891695872354.Spec : Prop :=
  ∀ n, P3021615891695872354.a n = A175032 n

end A175032

/-! ## A175032.P5260932497273876785

`xor(A000038(n+1), A068527(C(n+1, 2)))`
-/

namespace A175032.P5260932497273876785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 1)) (A068527 (Nat.choose (n + 1) 2))

end

end A175032.P5260932497273876785

namespace A175032

/-- `xor(A000038(n+1), A068527(C(n+1, 2)))` -/
def P5260932497273876785.Spec : Prop :=
  ∀ n, P5260932497273876785.a n = A175032 n

end A175032

/-! ## A175032.P14139319173339982879

`char[A000463(n+1)]*A068527(C(n+1, 2))`
-/

namespace A175032.P14139319173339982879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A068527 (Nat.choose (n + 1) 2)

end

end A175032.P14139319173339982879

namespace A175032

/-- `char[A000463(n+1)]*A068527(C(n+1, 2))` -/
def P14139319173339982879.Spec : Prop :=
  ∀ n, P14139319173339982879.a n = A175032 n

end A175032

/-! ## A175032.P11250611946247524875

`∑{d}[A068527(A000217(n)), A000010(#)]`
-/

namespace A175032.P11250611946247524875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A175032.P11250611946247524875

namespace A175032

/-- `∑{d}[A068527(A000217(n)), A000010(#)]` -/
def P11250611946247524875.Spec : Prop :=
  ∀ n, P11250611946247524875.a n = A175032 n

end A175032

/-!
# A175033: Numbers n such that (ceiling(sqrt(n*n/2)))^2 - n*n/2 = 17/2.

The programs for A175033, there is no canonical definition to state claims against.
-/

/-! ## A175033.P4881909971967377057

`Δ[Δ[A154144(n+1)]]`
-/

namespace A175033.P4881909971967377057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154144 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175033.P4881909971967377057

/-! ## A175033.P12503004168562505112

`A077241(n+2)+A077241(n)`
-/

namespace A175033.P12503004168562505112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077241 (n + 2) + A077241 n

end

end A175033.P12503004168562505112

/-! ## A175033.P2340558089883537627

`A105082(n)+A048654(xor(1, n))`
-/

namespace A175033.P2340558089883537627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105082 n + A048654 (Nat.xor 1 n)

end

end A175033.P2340558089883537627

/-! ## A175033.P10199548434938567943

`Δ[A364319(n+3)-A364319(n)]`
-/

namespace A175033.P10199548434938567943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364319 (n + 3) - A364319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175033.P10199548434938567943

/-! ## A175033.P972256697590977666

`A077242(n)+2*A144797(n+1)`
-/

namespace A175033.P972256697590977666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077242 n + 2 * A144797 (n + 1)

end

end A175033.P972256697590977666

/-!
# A175034: Offsets i such that i + n*(n+1)/2 is never a perfect square for any n>0.

The programs for A175034, there is no canonical definition to state claims against.
-/

/-! ## A175034.P6001292870889378760

`comp[n-C(ceil(sqrt(n))²-n, 2)]`
-/

namespace A175034.P6001292870889378760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P6001292870889378760

/-! ## A175034.P150430191409341590

`comp[C(n, 2)%(round(n/(2-sqrt(2)))+1)]`
-/

namespace A175034.P150430191409341590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose n 2 : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) / (2 - Real.sqrt (2 : ℝ))) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P150430191409341590

/-! ## A175034.P1638391059780356552

`comp[floor((n+1)*sqrt(2))²%(2*n+1)]`
-/

namespace A175034.P1638391059780356552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2) (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P1638391059780356552

/-! ## A175034.P15025038310134793410

`comp[A076816(n)]`
-/

namespace A175034.P15025038310134793410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P15025038310134793410

/-! ## A175034.P13316050693803601160

`comp[A175032(n)]`
-/

namespace A175034.P13316050693803601160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P13316050693803601160

/-! ## A175034.P16868524282762616149

`comp[A214859(n)]`
-/

namespace A175034.P16868524282762616149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P16868524282762616149

/-! ## A175034.P8305920420053248660

`eq[0, A161516(n)]`
-/

namespace A175034.P8305920420053248660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175034.P8305920420053248660

/-! ## A175034.P7911131083844873956

`comp[A055630(n)-n]`
-/

namespace A175034.P7911131083844873956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055630 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P7911131083844873956

/-! ## A175034.P9252871724975100084

`comp[A101492(n)-n]`
-/

namespace A175034.P9252871724975100084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101492 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P9252871724975100084

/-! ## A175034.P13298246270115951319

`comp[n-A143844(n)]`
-/

namespace A175034.P13298246270115951319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A143844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175034.P13298246270115951319

/-!
# A175035: Offsets i such that i + m*(m+1)/2 is a perfect square for some positive integer m.

The programs for A175035, the canonical program `A175035.P16765248234289683969` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175035 has offset 1).

The definition of A175035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175035.P16765248234289683969

`lt[1, abs(A161516(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A175035

/-- `lt[1, abs(A161516(n))]` -/
def P16765248234289683969.Spec : Prop :=
  ∀ n, (P16765248234289683969.a n : ℤ) = A175035 (n + 1)

theorem P16765248234289683969.correct : P16765248234289683969.Spec := by
  intro n
  simp only [A175035, Nat.add_sub_cancel]

end A175035

/-! ## A175035.P10788120594939554068

`lt[1, A000045(A161516(n)²)]`
-/

namespace A175035.P10788120594939554068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A161516 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175035.P10788120594939554068

namespace A175035

/-- `lt[1, A000045(A161516(n)²)]` -/
def P10788120594939554068.Spec : Prop :=
  ∀ n, (P10788120594939554068.a n : ℤ) = A175035 (n + 1)

end A175035

/-! ## A175035.P9106894746457003949

`A326917(n+1)+1`
-/

namespace A175035.P9106894746457003949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326917 (n + 1) + 1

end

end A175035.P9106894746457003949

namespace A175035

/-- `A326917(n+1)+1` -/
def P9106894746457003949.Spec : Prop :=
  ∀ n, P9106894746457003949.a n = A175035 (n + 1)

end A175035

/-!
# A175036: a(n) = 2^(n-1) mod prime(n).

The programs for A175036, the canonical program `A175036.P5810203869327028597` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175036 has offset 1).

The definition of A175036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175036.P15656588133630140308

`(2^n)%Δ[A007504(n)]`
-/

namespace A175036.P15656588133630140308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A175036.P15656588133630140308

namespace A175036

/-- `(2^n)%Δ[A007504(n)]` -/
def P15656588133630140308.Spec : Prop :=
  ∀ n, P15656588133630140308.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P16695670551637553415

`abs(((-2)^n)%record[A014963(n+2)])`
-/

namespace A175036.P16695670551637553415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((-2) ^ n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A175036.P16695670551637553415

namespace A175036

/-- `abs(((-2)^n)%record[A014963(n+2)])` -/
def P16695670551637553415.Spec : Prop :=
  ∀ n, P16695670551637553415.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P1624881141845836191

`--2^n%record[A006530(n+2)]`
-/

namespace A175036.P1624881141845836191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(2 ^ n : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175036.P1624881141845836191

namespace A175036

/-- `--2^n%record[A006530(n+2)]` -/
def P1624881141845836191.Spec : Prop :=
  ∀ n, P1624881141845836191.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P5810203869327028597

`A000079(n)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175036

/-- `A000079(n)%A000040(n+1)` -/
def P5810203869327028597.Spec : Prop :=
  ∀ n, P5810203869327028597.a n = A175036 (n + 1)

theorem P5810203869327028597.correct : P5810203869327028597.Spec := by
  intro n
  simp only [A175036, Nat.add_sub_cancel]

end A175036

/-! ## A175036.P8863260654819279443

`A171559(n)%A000040(n+1)`
-/

namespace A175036.P8863260654819279443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A000040 (n + 1))

end

end A175036.P8863260654819279443

namespace A175036

/-- `A171559(n)%A000040(n+1)` -/
def P8863260654819279443.Spec : Prop :=
  ∀ n, P8863260654819279443.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P17167717415682123073

`A000225(n)%A000040(n+1)+1`
-/

namespace A175036.P17167717415682123073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) (A000040 (n + 1)) + 1

end

end A175036.P17167717415682123073

namespace A175036

/-- `A000225(n)%A000040(n+1)+1` -/
def P17167717415682123073.Spec : Prop :=
  ∀ n, P17167717415682123073.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P4182557597265705236

`(A000225(n)+1)%record[A014963(n+2)]`
-/

namespace A175036.P4182557597265705236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n + 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175036.P4182557597265705236

namespace A175036

/-- `(A000225(n)+1)%record[A014963(n+2)]` -/
def P4182557597265705236.Spec : Prop :=
  ∀ n, P4182557597265705236.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P9101941525806267169

`A011782(n+1)%record[A014963(n+2)]`
-/

namespace A175036.P9101941525806267169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A175036.P9101941525806267169

namespace A175036

/-- `A011782(n+1)%record[A014963(n+2)]` -/
def P9101941525806267169.Spec : Prop :=
  ∀ n, P9101941525806267169.a n = A175036 (n + 1)

end A175036

/-! ## A175036.P778026110262077536

`A016116(2*n)%(A006093(n+1)+1)`
-/

namespace A175036.P778026110262077536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 (2 * n)) (A006093 (n + 1) + 1)

end

end A175036.P778026110262077536

namespace A175036

/-- `A016116(2*n)%(A006093(n+1)+1)` -/
def P778026110262077536.Spec : Prop :=
  ∀ n, P778026110262077536.a n = A175036 (n + 1)

end A175036

/-!
# A175037: Sum of primes between successive squares of primes.

The programs for A175037, there is no canonical definition to state claims against.
-/

/-! ## A175037.P4738988252637974830

`Δ[A007504(∑[A050216(n)])]`
-/

namespace A175037.P4738988252637974830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175037.P4738988252637974830

/-! ## A175037.P3993563889576357251

`Δ[A237589(∑[A050216(n)])]`
-/

namespace A175037.P3993563889576357251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175037.P3993563889576357251

/-! ## A175037.P2537712104597428826

`Δ[A139562(Δ[A007504(n)])]`
-/

namespace A175037.P2537712104597428826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175037.P2537712104597428826

/-! ## A175037.P6707561419987889490

`Δ[A007504(A000879(n+1))]`
-/

namespace A175037.P6707561419987889490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175037.P6707561419987889490

/-! ## A175037.P6490193187580815103

`Δ[A036439(A062773(n+1))]`
-/

namespace A175037.P6490193187580815103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A062773 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175037.P6490193187580815103

/-!
# A175038: In the sequence of positive integers A000027, number of digits between successive primes.

The programs for A175038, there is no canonical definition to state claims against.
-/

/-! ## A175038.P11937751430616947145

`Δ[A105930(n+2)]-A055642(A074895(n+1))`
-/

namespace A175038.P11937751430616947145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A055642 (A074895 (n + 1)).toNat

end

end A175038.P11937751430616947145

/-! ## A175038.P15175517695054304826

`A100803(n+1)-A035612(A001611(n))`
-/

namespace A175038.P15175517695054304826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100803 (n + 1) - A035612 (A001611 n).toNat

end

end A175038.P15175517695054304826

/-! ## A175038.P10415504505892565550

`A046933(n+1)+A046933(n+1)%A224917(n)`
-/

namespace A175038.P10415504505892565550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + Int.tmod (A046933 (n + 1)) (A224917 n)

end

end A175038.P10415504505892565550

/-!
# A175039: Minimum number of integer-sided squares needed to tile an n-row staircase (a figure with n unit squares in the n-th row, and the leftmost squares of each row vertically aligned).

The programs for A175039, there is no canonical definition to state claims against.
-/

/-! ## A175039.P13572065050170445568

`A346307(A346304(n+1)+2)+n`
-/

namespace A175039.P13572065050170445568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346307 (A346304 (n + 1) + 2).toNat + (n : ℤ)

end

end A175039.P13572065050170445568

/-! ## A175039.P7789315978650110902

`A280073(A309074(2*n+3))+n+1`
-/

namespace A175039.P7789315978650110902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280073 (A309074 (2 * n + 3)).toNat + (n + 1 : ℤ)

end

end A175039.P7789315978650110902

/-! ## A175039.P12881065197883543303

`A000005(A149921(A115378(n+1)))+n`
-/

namespace A175039.P12881065197883543303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A149921 (A115378 (n + 1)).toNat).toNat + (n : ℤ)

end

end A175039.P12881065197883543303

/-! ## A175039.P6324675968425652286

`A050378(A084608(A135540(n+1)))+n`
-/

namespace A175039.P6324675968425652286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (A084608 (A135540 (n + 1)).toNat).toNat + (n : ℤ)

end

end A175039.P6324675968425652286

/-! ## A175039.P12468691507614976301

`A003958(A166644(A166633(n+2)))+n`
-/

namespace A175039.P12468691507614976301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A166644 (A166633 (n + 2)).toNat).toNat + (n : ℤ)

end

end A175039.P12468691507614976301

/-!
# A175040: Product of the n-th block of identical consecutive values of A072000.

The programs for A175040, the canonical program `A175040.P1611985219509524283` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175040 has offset 1).

The definition of A175040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175040.P18398152611644890160

`n^Δ[A176540(n+1)]`
-/

namespace A175040.P18398152611644890160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A175040.P18398152611644890160

namespace A175040

/-- `n^Δ[A176540(n+1)]` -/
def P18398152611644890160.Spec : Prop :=
  ∀ n, P18398152611644890160.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P1611985219509524283

`n^A065516(A028310(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175040

/-- `n^A065516(A028310(n))` -/
def P1611985219509524283.Spec : Prop :=
  ∀ n, P1611985219509524283.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P14951191091771511555

`n^Δ[eq[1, A322232(A001222(n+1))]]`
-/

namespace A175040.P14951191091771511555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322232 (A001222 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A175040.P14951191091771511555

namespace A175040

/-- `n^Δ[eq[1, A322232(A001222(n+1))]]` -/
def P14951191091771511555.Spec : Prop :=
  ∀ n, P14951191091771511555.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P15834968642049891984

`n^(A176540(n+2)-A176540(n+1))`
-/

namespace A175040.P15834968642049891984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A176540 (n + 2) - A176540 (n + 1) : ℤ)

end

end A175040.P15834968642049891984

namespace A175040

/-- `n^(A176540(n+2)-A176540(n+1))` -/
def P15834968642049891984.Spec : Prop :=
  ∀ n, P15834968642049891984.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P9698713552115773231

`n^Δ[eq[1, A070821(n+1)]]`
-/

namespace A175040.P9698713552115773231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A175040.P9698713552115773231

namespace A175040

/-- `n^Δ[eq[1, A070821(n+1)]]` -/
def P9698713552115773231.Spec : Prop :=
  ∀ n, P9698713552115773231.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P9891551063918896232

`n^Δ[A207790(A131098(n+1))]`
-/

namespace A175040.P9891551063918896232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A131098 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A175040.P9891551063918896232

namespace A175040

/-- `n^Δ[A207790(A131098(n+1))]` -/
def P9891551063918896232.Spec : Prop :=
  ∀ n, P9891551063918896232.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P2101496258202270607

`n^A065516(A233583(n+1))`
-/

namespace A175040.P2101496258202270607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A065516 (A233583 (n + 1)).toNat : ℤ)

end

end A175040.P2101496258202270607

namespace A175040

/-- `n^A065516(A233583(n+1))` -/
def P2101496258202270607.Spec : Prop :=
  ∀ n, P2101496258202270607.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P11765626160920541126

`n^Δ[A037143(A176539(n+1))]`
-/

namespace A175040.P11765626160920541126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (A176539 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A175040.P11765626160920541126

namespace A175040

/-- `n^Δ[A037143(A176539(n+1))]` -/
def P11765626160920541126.Spec : Prop :=
  ∀ n, P11765626160920541126.a n = (A175040 (n + 1) : ℚ)

end A175040

/-! ## A175040.P2617179601312753115

`n^Δ[A175515(n+3)]`
-/

namespace A175040.P2617179601312753115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A175040.P2617179601312753115

namespace A175040

/-- `n^Δ[A175515(n+3)]` -/
def P2617179601312753115.Spec : Prop :=
  ∀ n, P2617179601312753115.a n = (A175040 (n + 1) : ℚ)

end A175040

/-!
# A175041: Length of longest A181391-suffix other than 11...1 with entries (0 <= a(n) <= d).

The programs for A175041, there is no canonical definition to state claims against.
-/

/-! ## A175041.P11839462973220335387

`A216194(A001008(n+1))+A002620(n+3)`
-/

namespace A175041.P11839462973220335387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (A001008 (n + 1)).toNat + A002620 (n + 3)

end

end A175041.P11839462973220335387

/-! ## A175041.P13325800600351552627

`record[A031216(2*n+1)-A000217(n)]`
-/

namespace A175041.P13325800600351552627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (2 * n + 1) - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175041.P13325800600351552627

/-! ## A175041.P11761948769974862455

`A186380(n+1)+record[A323607(3*(n+1))]`
-/

namespace A175041.P11761948769974862455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323607 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186380 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175041.P11761948769974862455

/-! ## A175041.P15391572328616176396

`A099859(A099858(n))+A008574(n)`
-/

namespace A175041.P15391572328616176396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099859 (A099858 n).toNat + A008574 n

end

end A175041.P15391572328616176396

/-! ## A175041.P3159199252546519628

`A070939(A344489(n))+A045572(n+1)`
-/

namespace A175041.P3159199252546519628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A344489 n).toNat + A045572 (n + 1)

end

end A175041.P3159199252546519628

/-!
# A175044: Lengths of runs of consecutive values in A168389(n).

The programs for A175044, the canonical program `A175044.P10867595090928897140` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175044 has offset 1).

The definition of A175044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175044.P10867595090928897140

`gcd(2, (p?[2*n+1]-(p?[xor(1, n)+1]+1))!)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175044

/-- `gcd(2, (p?[2*n+1]-(p?[xor(1, n)+1]+1))!)` -/
def P10867595090928897140.Spec : Prop :=
  ∀ n, (P10867595090928897140.a n : ℤ) = A175044 (n + 1)

theorem P10867595090928897140.correct : P10867595090928897140.Spec := by
  intro n
  simp only [A175044, Nat.add_sub_cancel]

end A175044

/-! ## A175044.P3784103602309807521

`ceil((p?[2*n+1]+2)/(p?[round(8*n/7)]+4))`
-/

namespace A175044.P3784103602309807521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2 : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 4 : ℚ)⌉

end

end A175044.P3784103602309807521

namespace A175044

/-- `ceil((p?[2*n+1]+2)/(p?[round(8*n/7)]+4))` -/
def P3784103602309807521.Spec : Prop :=
  ∀ n, P3784103602309807521.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P5479556391561608871

`floor((p?[2*n+1]-3)/(p?[round(8*n/7)]+1))+1`
-/

namespace A175044.P5479556391561608871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1 : ℚ)⌋ + 1

end

end A175044.P5479556391561608871

namespace A175044

/-- `floor((p?[2*n+1]-3)/(p?[round(8*n/7)]+1))+1` -/
def P5479556391561608871.Spec : Prop :=
  ∀ n, P5479556391561608871.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P16449086293087268126

`A106002(n+1)+1`
-/

namespace A175044.P16449086293087268126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1) + 1

end

end A175044.P16449086293087268126

namespace A175044

/-- `A106002(n+1)+1` -/
def P16449086293087268126.Spec : Prop :=
  ∀ n, P16449086293087268126.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P660595775603408875

`ceil(ratio[A129768(n+1)])`
-/

namespace A175044.P660595775603408875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A175044.P660595775603408875

namespace A175044

/-- `ceil(ratio[A129768(n+1)])` -/
def P660595775603408875.Spec : Prop :=
  ∀ n, P660595775603408875.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P6779562767142392557

`ceil(2/A049563(n+1))`
-/

namespace A175044.P6779562767142392557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A049563 (n + 1) : ℚ)⌉

end

end A175044.P6779562767142392557

namespace A175044

/-- `ceil(2/A049563(n+1))` -/
def P6779562767142392557.Spec : Prop :=
  ∀ n, P6779562767142392557.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P2241157136805394839

`(2%A001223(n+1))!`
-/

namespace A175044.P2241157136805394839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 (A001223 (n + 1))).toNat

end

end A175044.P2241157136805394839

namespace A175044

/-- `(2%A001223(n+1))!` -/
def P2241157136805394839.Spec : Prop :=
  ∀ n, (P2241157136805394839.a n : ℤ) = A175044 (n + 1)

end A175044

/-! ## A175044.P7698267578828782530

`char[A008508(n+1)]+1`
-/

namespace A175044.P7698267578828782530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A175044.P7698267578828782530

namespace A175044

/-- `char[A008508(n+1)]+1` -/
def P7698267578828782530.Spec : Prop :=
  ∀ n, (P7698267578828782530.a n : ℤ) = A175044 (n + 1)

end A175044

/-! ## A175044.P5448780959108968083

`round(sqrt(sqrt(A100803(n+1))))`
-/

namespace A175044.P5448780959108968083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A100803 (n + 1) : ℝ)))

end

end A175044.P5448780959108968083

namespace A175044

/-- `round(sqrt(sqrt(A100803(n+1))))` -/
def P5448780959108968083.Spec : Prop :=
  ∀ n, P5448780959108968083.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P8389650975767993782

`2-C(2, A345366(n+1))`
-/

namespace A175044.P8389650975767993782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A345366 (n + 1)).toNat : ℤ)

end

end A175044.P8389650975767993782

namespace A175044

/-- `2-C(2, A345366(n+1))` -/
def P8389650975767993782.Spec : Prop :=
  ∀ n, P8389650975767993782.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P4261829581176875937

`char[∑[A251092(n+1)]]+1`
-/

namespace A175044.P4261829581176875937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A175044.P4261829581176875937

namespace A175044

/-- `char[∑[A251092(n+1)]]+1` -/
def P4261829581176875937.Spec : Prop :=
  ∀ n, (P4261829581176875937.a n : ℤ) = A175044 (n + 1)

end A175044

/-! ## A175044.P8553886829617851986

`floor(atan(A046933(n+1)))+1`
-/

namespace A175044.P8553886829617851986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A046933 (n + 1) : ℝ)⌋ + 1

end

end A175044.P8553886829617851986

namespace A175044

/-- `floor(atan(A046933(n+1)))+1` -/
def P8553886829617851986.Spec : Prop :=
  ∀ n, P8553886829617851986.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P8103000112270796826

`floor(atan(A339270(n+1)))+1`
-/

namespace A175044.P8103000112270796826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A339270 (n + 1) : ℝ)⌋ + 1

end

end A175044.P8103000112270796826

namespace A175044

/-- `floor(atan(A339270(n+1)))+1` -/
def P8103000112270796826.Spec : Prop :=
  ∀ n, P8103000112270796826.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P4037683291105284359

`round(atan(Δ[A000040(n+1)]²))`
-/

namespace A175044.P4037683291105284359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((f1 (n + 1) - f1 n) ^ 2 : ℝ))

end

end A175044.P4037683291105284359

namespace A175044

/-- `round(atan(Δ[A000040(n+1)]²))` -/
def P4037683291105284359.Spec : Prop :=
  ∀ n, P4037683291105284359.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P10980731741991619244

`A121561(p?[xor(1, n)+1]+2)`
-/

namespace A175044.P10980731741991619244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2)

end

end A175044.P10980731741991619244

namespace A175044

/-- `A121561(p?[xor(1, n)+1]+2)` -/
def P10980731741991619244.Spec : Prop :=
  ∀ n, P10980731741991619244.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P5240044135801908963

`2-A122170(p?[xor(1, n)+1])`
-/

namespace A175044.P5240044135801908963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A122170 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A175044.P5240044135801908963

namespace A175044

/-- `2-A122170(p?[xor(1, n)+1])` -/
def P5240044135801908963.Spec : Prop :=
  ∀ n, P5240044135801908963.a n = A175044 (n + 1)

end A175044

/-! ## A175044.P374192002806181305

`char[A153238(n+1)-n]+1`
-/

namespace A175044.P374192002806181305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A175044.P374192002806181305

namespace A175044

/-- `char[A153238(n+1)-n]+1` -/
def P374192002806181305.Spec : Prop :=
  ∀ n, (P374192002806181305.a n : ℤ) = A175044 (n + 1)

end A175044

/-! ## A175044.P735729680576376224

`(A089027(n+1)+n)/(n+1)`
-/

namespace A175044.P735729680576376224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089027 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A175044.P735729680576376224

namespace A175044

/-- `(A089027(n+1)+n)/(n+1)` -/
def P735729680576376224.Spec : Prop :=
  ∀ n, P735729680576376224.a n = (A175044 (n + 1) : ℚ)

end A175044

/-! ## A175044.P6055710027783633896

`A053543(A014692(n+1))`
-/

namespace A175044.P6055710027783633896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053543 (A014692 (n + 1)).toNat

end

end A175044.P6055710027783633896

namespace A175044

/-- `A053543(A014692(n+1))` -/
def P6055710027783633896.Spec : Prop :=
  ∀ n, P6055710027783633896.a n = A175044 (n + 1)

end A175044

/-!
# A175045: a(n) = number of distinct values k of substrings in binary n where both k is prime and A030101(k) is prime.

The programs for A175045, there is no canonical definition to state claims against.
-/

/-! ## A175045.P1767598434965059812

`A305436(2*A078828(n))-1`
-/

namespace A175045.P1767598434965059812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (2 * A078828 n).toNat - 1

end

end A175045.P1767598434965059812

/-! ## A175045.P16144924998791426878

`A305436(A000265(A078828(n)))`
-/

namespace A175045.P16144924998791426878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (A000265 (A078828 n).toNat).toNat

end

end A175045.P16144924998791426878

/-! ## A175045.P18094095220963066371

`A004273(A033706(n+1))%A033666(n)`
-/

namespace A175045.P18094095220963066371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A033706 (n + 1)).toNat) (A033666 n)

end

end A175045.P18094095220963066371

/-! ## A175045.P16499889787161659776

`A037800(lcm(A269160(n), A269161(n)))`
-/

namespace A175045.P16499889787161659776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.lcm (A269160 n) (A269161 n))

end

end A175045.P16499889787161659776

/-! ## A175045.P5213856793823813685

`∑{p}[A078828(n), A066247(A111866(#))]`
-/

namespace A175045.P5213856793823813685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066247 (A111866 p).toNat

end

end A175045.P5213856793823813685

/-!
# A175046: Write n in binary, then increase each run of 0's by one 0, and increase each run of 1's by one 1. a(n) is the decimal equivalent of the result.

The programs for A175046, there is no canonical definition to state claims against.
-/

/-! ## A175046.P5511663559705098877

`A319407(n+1)+1+n`
-/

namespace A175046.P5511663559705098877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319407 (n + 1) + 1 + (n : ℤ)

end

end A175046.P5511663559705098877

/-! ## A175046.P740700643755928416

`2*A319408(n+1)+1+n`
-/

namespace A175046.P740700643755928416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319408 (n + 1) + 1 + (n : ℤ)

end

end A175046.P740700643755928416

/-! ## A175046.P14040567014339656098

`and(A320039(n+1), A320261(n+1))`
-/

namespace A175046.P14040567014339656098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320039 (n + 1)) (A320261 (n + 1))

end

end A175046.P14040567014339656098

/-! ## A175046.P2928841148712224649

`or(A320262(n+1), A320263(n+1))`
-/

namespace A175046.P2928841148712224649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320262 (n + 1)) (A320263 (n + 1))

end

end A175046.P2928841148712224649

/-! ## A175046.P6721775086084349594

`A320039(n+1)+A320262(n+1)-A320037(n+1)`
-/

namespace A175046.P6721775086084349594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320039 (n + 1) + (A320262 (n + 1) - A320037 (n + 1))

end

end A175046.P6721775086084349594

/-! ## A175046.P11518578690941194823

`A320261(n+1)+A320263(n+1)-A320038(n+1)`
-/

namespace A175046.P11518578690941194823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320261 (n + 1) + (A320263 (n + 1) - A320038 (n + 1))

end

end A175046.P11518578690941194823

/-! ## A175046.P4324564469915636337

`A319408(A154708(n+1))+1+n`
-/

namespace A175046.P4324564469915636337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319408 (A154708 (n + 1)).toNat + 1 + (n : ℤ)

end

end A175046.P4324564469915636337

/-! ## A175046.P1703263912739846003

`A320038(A014601(n+1))`
-/

namespace A175046.P1703263912739846003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (A014601 (n + 1)).toNat

end

end A175046.P1703263912739846003

/-! ## A175046.P13140335492011635371

`A320038(A154708(n+1))`
-/

namespace A175046.P13140335492011635371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320038 (A154708 (n + 1)).toNat

end

end A175046.P13140335492011635371

/-! ## A175046.P7434739221399679814

`and(A320038(A341522(n)+1), A320039(n+1))`
-/

namespace A175046.P7434739221399679814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320038 (A341522 n + 1).toNat) (A320039 (n + 1))

end

end A175046.P7434739221399679814

/-! ## A175046.P5312338035654078592

`A175048(A175047(n+1))`
-/

namespace A175046.P5312338035654078592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175048 (A175047 (n + 1)).toNat

end

end A175046.P5312338035654078592

/-! ## A175046.P5708205651529775353

`or(2*A320038(n+1), A175047(A175047(n+1)))`
-/

namespace A175046.P5708205651529775353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A320038 (n + 1)) (A175047 (A175047 (n + 1)).toNat)

end

end A175046.P5708205651529775353

/-! ## A175046.P516354024170989647

`A000027(A319408(n+1)+A319408(n+1)+n+1)`
-/

namespace A175046.P516354024170989647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A319408 (n + 1) + (A319408 (n + 1) + (n + 1 : ℤ))).toNat

end

end A175046.P516354024170989647

/-! ## A175046.P15384982070130692433

`A163617(A320263(n+1))`
-/

namespace A175046.P15384982070130692433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A320263 (n + 1)).toNat

end

end A175046.P15384982070130692433

/-! ## A175046.P15473204706015463166

`A269170(A320262(n+1))`
-/

namespace A175046.P15473204706015463166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A320262 (n + 1)).toNat

end

end A175046.P15473204706015463166

/-! ## A175046.P8900064596187254816

`A269170(2*A320263(n+1))`
-/

namespace A175046.P8900064596187254816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (2 * A320263 (n + 1)).toNat

end

end A175046.P8900064596187254816

/-! ## A175046.P1280333199696529818

`A004277(A319408(n+1))+1+n`
-/

namespace A175046.P1280333199696529818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A319408 (n + 1)).toNat + 1 + (n : ℤ)

end

end A175046.P1280333199696529818

/-!
# A175047: Write n in binary, then increase each run of 0's by one 0. a(n) is the decimal equivalent of the result.

The programs for A175047, there is no canonical definition to state claims against.
-/

/-! ## A175047.P5630634866184355099

`A000034(n)*A048735(A175048(n+1))`
-/

namespace A175047.P5630634866184355099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A048735 (A175048 (n + 1)).toNat

end

end A175047.P5630634866184355099

/-! ## A175047.P7088611687266196725

`(A000035(n)+1)*A048735(A175048(n+1))`
-/

namespace A175047.P7088611687266196725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A048735 (A175048 (n + 1)).toNat

end

end A175047.P7088611687266196725

/-! ## A175047.P15034531154407522087

`A040001(n+1)*A048735(A175048(n+1))`
-/

namespace A175047.P15034531154407522087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A048735 (A175048 (n + 1)).toNat

end

end A175047.P15034531154407522087

/-! ## A175047.P12853814202991876050

`A014709(2*n)*A048735(A175048(n+1))`
-/

namespace A175047.P12853814202991876050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * n) * A048735 (A175048 (n + 1)).toNat

end

end A175047.P12853814202991876050

/-! ## A175047.P5900165744716472885

`A048735(A175048(n+1))*A079116(and(1, -n))`
-/

namespace A175047.P5900165744716472885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A175048 (n + 1)).toNat * A079116 (Int.land 1 (-(n : ℤ))).toNat

end

end A175047.P5900165744716472885

/-! ## A175047.P335297805485961144

`A048735(A175048(n+1))*A112916(and(1, -n))`
-/

namespace A175047.P335297805485961144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A175048 (n + 1)).toNat * A112916 (Int.land 1 (-(n : ℤ))).toNat

end

end A175047.P335297805485961144

/-! ## A175047.P8901060982241345131

`A106151(A000034(n)*A320263(n+1))`
-/

namespace A175047.P8901060982241345131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A000034 n * A320263 (n + 1)).toNat

end

end A175047.P8901060982241345131

/-! ## A175047.P7590859807707779454

`A106151(A320262(n+1)/A040001(n))`
-/

namespace A175047.P7590859807707779454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (SequenceMachineLib.roundAway ((A320262 (n + 1) : ℚ) / (A040001 n : ℚ))).toNat

end

end A175047.P7590859807707779454

/-! ## A175047.P15853644805829599612

`A106151(A320262(n+1)/A000034(n+1))`
-/

namespace A175047.P15853644805829599612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (SequenceMachineLib.roundAway ((A320262 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ))).toNat

end

end A175047.P15853644805829599612

/-! ## A175047.P10306212262372319845

`A106151(A320263(n+1))*A225821(A225821(n+2)+1)`
-/

namespace A175047.P10306212262372319845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A320263 (n + 1)).toNat * A225821 (A225821 (n + 2) + 1).toNat

end

end A175047.P10306212262372319845

/-! ## A175047.P7663729013029984388

`A106151(A320262(n+1))`
-/

namespace A175047.P7663729013029984388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A320262 (n + 1)).toNat

end

end A175047.P7663729013029984388

/-! ## A175047.P13447738419079736872

`A106151(2*A320263(n+1))`
-/

namespace A175047.P13447738419079736872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (2 * A320263 (n + 1)).toNat

end

end A175047.P13447738419079736872

/-! ## A175047.P5064851985343414916

`A106151(A005843(A320263(n+1)))`
-/

namespace A175047.P5064851985343414916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A005843 (A320263 (n + 1)).toNat).toNat

end

end A175047.P5064851985343414916

/-!
# A175048: Write n in binary, then increase each run of 1's by one 1. a(n) is the decimal equivalent of the result.

The programs for A175048, there is no canonical definition to state claims against.
-/

/-! ## A175048.P9024735285928621048

`A163617(A175047(2*(n+1))/4)`
-/

namespace A175048.P9024735285928621048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (SequenceMachineLib.roundAway ((A175047 (2 * (n + 1)) : ℚ) / 4)).toNat

end

end A175048.P9024735285928621048

/-! ## A175048.P4918535239428491587

`A163617(A175047(n+1))/A000034(n)`
-/

namespace A175048.P4918535239428491587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163617 (A175047 (n + 1)).toNat : ℚ) / (A000034 n : ℚ)

end

end A175048.P4918535239428491587

/-! ## A175048.P18100283455529317071

`A269170(lcm(2, A175047(n+1)))`
-/

namespace A175048.P18100283455529317071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (Int.lcm 2 (A175047 (n + 1)))

end

end A175048.P18100283455529317071

/-! ## A175048.P296117275201033219

`A269170(A175047(2*(n+1))/2)`
-/

namespace A175048.P296117275201033219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (SequenceMachineLib.roundAway ((A175047 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A175048.P296117275201033219

/-! ## A175048.P9374371034416082387

`A269170(A000034(n+1)*A175047(n+1))`
-/

namespace A175048.P9374371034416082387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A000034 (n + 1) * A175047 (n + 1)).toNat

end

end A175048.P9374371034416082387

/-! ## A175048.P13699597054045796986

`A106151(A175046(n+1))`
-/

namespace A175048.P13699597054045796986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A175046 (n + 1)).toNat

end

end A175048.P13699597054045796986

/-! ## A175048.P804613109339430774

`A106151(A319407(n+1)+1+n)`
-/

namespace A175048.P804613109339430774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A319407 (n + 1) + 1 + (n : ℤ)).toNat

end

end A175048.P804613109339430774

/-! ## A175048.P11085088465197700715

`A106151(and(A320039(n+1), A320261(n+1)))`
-/

namespace A175048.P11085088465197700715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (Int.land (A320039 (n + 1)) (A320261 (n + 1))).toNat

end

end A175048.P11085088465197700715

/-! ## A175048.P2590860244293829501

`A106151(or(A320262(n+1), A320263(n+1)))`
-/

namespace A175048.P2590860244293829501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (Int.lor (A320262 (n + 1)) (A320263 (n + 1))).toNat

end

end A175048.P2590860244293829501

/-! ## A175048.P8318898860368747890

`A106151(or(2*A320263(n+1), A320263(n+1)))`
-/

namespace A175048.P8318898860368747890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (Int.lor (2 * A320263 (n + 1)) (A320263 (n + 1))).toNat

end

end A175048.P8318898860368747890

/-!
# A175049: y-values in the solution to x^2-59*y^2=1.

The programs for A175049, there is no canonical definition to state claims against.
-/

/-! ## A175049.P11583155468197488199

`record[n%2*A041103(A016789(n))]`
-/

namespace A175049.P11583155468197488199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A041103 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175049.P11583155468197488199

/-!
# A175050: Positive integers n where both n and the number of divisors of n are perfect powers. (Both n and d(n) are elements of A001597.)

The programs for A175050, there is no canonical definition to state claims against.
-/

/-! ## A175050.P9808479049478437089

`record[A001597(n+1)*A075802(A076400(n+1))]`
-/

namespace A175050.P9808479049478437089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) * A075802 (A076400 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175050.P9808479049478437089

/-! ## A175050.P14487015638549867978

`∩[A001597(n+1), A120497(n+1)]`
-/

namespace A175050.P14487015638549867978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175050.P14487015638549867978

/-! ## A175050.P9447902469046594506

`∩[A001694(n+1), A120497(n+1)]`
-/

namespace A175050.P9447902469046594506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175050.P9447902469046594506

/-!
# A175051: a(n) is the number of divisors of A175050(n).

The programs for A175051, there is no canonical definition to state claims against.
-/

/-! ## A175051.P12642001895986211896

`filter[A076400(n+1), A075802(#)]`
-/

namespace A175051.P12642001895986211896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A175051.P12642001895986211896

/-! ## A175051.P13099631137785249342

`filter[A076400(n+1), A112526(#)]`
-/

namespace A175051.P13099631137785249342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A175051.P13099631137785249342

/-! ## A175051.P6847851500025878639

`∏{e}[A175050(n+1), #+1]`
-/

namespace A175051.P6847851500025878639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A175051.P6847851500025878639

/-! ## A175051.P2403945208977790

`∑{d}[A175050(n+1), gcd(#, A020985(n))]`
-/

namespace A175051.P2403945208977790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A020985 n)

end

end A175051.P2403945208977790

/-! ## A175051.P10292625111106763395

`A000005(A175050(n+1))`
-/

namespace A175051.P10292625111106763395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175050 (n + 1)).toNat

end

end A175051.P10292625111106763395

/-! ## A175051.P877183138207096300

`∑{d}[A175050(n+1), A019425(A019425(#))]`
-/

namespace A175051.P877183138207096300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A019425 (A019425 d).toNat

end

end A175051.P877183138207096300

/-! ## A175051.P17275332295462972447

`∑{d}[A175050(n+1), A008836(#)²]`
-/

namespace A175051.P17275332295462972447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 d ^ 2

end

end A175051.P17275332295462972447

/-! ## A175051.P3544824767487786091

`∑{d}[A175050(n+1), A020985(#)²]`
-/

namespace A175051.P3544824767487786091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020985 d ^ 2

end

end A175051.P3544824767487786091

/-! ## A175051.P1147301494777870155

`A070824(A175050(n+1))+A020639(A008574(n))`
-/

namespace A175051.P1147301494777870155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A175050 (n + 1)).toNat + A020639 (A008574 n).toNat

end

end A175051.P1147301494777870155

/-!
# A175052: Perfect powers (members of A001597) n where the next larger perfect power is congruent mod 2 to n.

The programs for A175052, there is no canonical definition to state claims against.
-/

/-! ## A175052.P18246633160064621604

`A001597(eq[0, and(1, A076412(n))])`
-/

namespace A175052.P18246633160064621604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A076412 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175052.P18246633160064621604

/-! ## A175052.P9707082356866201685

`A001597(eq[2, gcd(2, A053289(n+1))]+1)`
-/

namespace A175052.P9707082356866201685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A053289 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A175052.P9707082356866201685

/-! ## A175052.P12811543224641018344

`A081676(A075454(n+1))`
-/

namespace A175052.P12811543224641018344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A075454 (n + 1)).toNat

end

end A175052.P12811543224641018344

/-! ## A175052.P169524650083686982

`A081676(A075456(comp[n-∏{digits}[n, #]]))`
-/

namespace A175052.P169524650083686982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A075456 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A175052.P169524650083686982

/-!
# A175053: Perfect powers (members of A001597) n where the next larger perfect power is not congruent mod 2 to n.

The programs for A175053, there is no canonical definition to state claims against.
-/

/-! ## A175053.P16473256114591011949

`record[A001597(n+1)/gcd(4, A053289(n+1))]`
-/

namespace A175053.P16473256114591011949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / (Int.gcd 4 (A053289 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175053.P16473256114591011949

/-! ## A175053.P2729218374149873612

`record[A000035(A053289(n+1))*A001597(n+1)]`
-/

namespace A175053.P2729218374149873612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053289 (n + 1)).toNat * A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175053.P2729218374149873612

/-! ## A175053.P1509710480123655087

`A081676(eq[A301573(n+1), A301573(n)])`
-/

namespace A175053.P1509710480123655087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175053.P1509710480123655087

/-!
# A175054: A positive integer n is included if there is no run of 0's in the binary representation of n that is only one digit long.

The programs for A175054, the canonical program `A175054.P10578105290765863374` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175054 has offset 1).

The definition of A175054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175054.P13151744825987797996

`∪[A144794(n+1), A219608(n+1)]`
-/

namespace A175054.P13151744825987797996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175054.P13151744825987797996

namespace A175054

/-- `∪[A144794(n+1), A219608(n+1)]` -/
def P13151744825987797996.Spec : Prop :=
  ∀ n, (P13151744825987797996.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P2037922587064728352

`∪[A144794(n+1), A226227(n+1)]`
-/

namespace A175054.P2037922587064728352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175054.P2037922587064728352

namespace A175054

/-- `∪[A144794(n+1), A226227(n+1)]` -/
def P2037922587064728352.Spec : Prop :=
  ∀ n, (P2037922587064728352.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P12293484279991871804

`∪[A144794(n+1), A391741(n+1)]`
-/

namespace A175054.P12293484279991871804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175054.P12293484279991871804

namespace A175054

/-- `∪[A144794(n+1), A391741(n+1)]` -/
def P12293484279991871804.Spec : Prop :=
  ∀ n, (P12293484279991871804.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P10578105290765863374

`record[and(2*n+3, n+1)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A175054

/-- `record[and(2*n+3, n+1)]` -/
def P10578105290765863374.Spec : Prop :=
  ∀ n, (P10578105290765863374.a n : ℤ) = A175054 (n + 1)

theorem P10578105290765863374.correct : P10578105290765863374.Spec := by
  intro n
  simp only [A175054, Nat.add_sub_cancel]

end A175054

/-! ## A175054.P18029339084817700381

`record[and(n+2, n+3+n)-1]`
-/

namespace A175054.P18029339084817700381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 2) (n + 3 + n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P18029339084817700381

namespace A175054

/-- `record[and(n+2, n+3+n)-1]` -/
def P18029339084817700381.Spec : Prop :=
  ∀ n, P18029339084817700381.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P7701293521631624191

`filter[A004742(n+2), A152822(#)]`
-/

namespace A175054.P7701293521631624191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A175054.P7701293521631624191

namespace A175054

/-- `filter[A004742(n+2), A152822(#)]` -/
def P7701293521631624191.Spec : Prop :=
  ∀ n, P7701293521631624191.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P12897544838462276145

`lt[A290260(n+1), 1]+1`
-/

namespace A175054.P12897544838462276145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175054.P12897544838462276145

namespace A175054

/-- `lt[A290260(n+1), 1]+1` -/
def P12897544838462276145.Spec : Prop :=
  ∀ n, (P12897544838462276145.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P7046094282813951922

`record[(and(n, 2*n)/2)^(n%2)]`
-/

namespace A175054.P7046094282813951922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land n (2 * n) : ℚ) / 2) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P7046094282813951922

namespace A175054

/-- `record[(and(n, 2*n)/2)^(n%2)]` -/
def P7046094282813951922.Spec : Prop :=
  ∀ n, P7046094282813951922.a n = (A175054 (n + 1) : ℚ)

end A175054

/-! ## A175054.P3003484024087076385

`eq[A036987(2*n), A290260(2*n+1)]`
-/

namespace A175054.P3003484024087076385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175054.P3003484024087076385

namespace A175054

/-- `eq[A036987(2*n), A290260(2*n+1)]` -/
def P3003484024087076385.Spec : Prop :=
  ∀ n, (P3003484024087076385.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P13176205407457311335

`A318518(record[A318515(2*(2*n+3))])`
-/

namespace A175054.P13176205407457311335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318515 (2 * (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175054.P13176205407457311335

namespace A175054

/-- `A318518(record[A318515(2*(2*n+3))])` -/
def P13176205407457311335.Spec : Prop :=
  ∀ n, P13176205407457311335.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P1348488202715237221

`record[A213370(n+1)+A121262(2*n)]`
-/

namespace A175054.P1348488202715237221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (n + 1) + A121262 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P1348488202715237221

namespace A175054

/-- `record[A213370(n+1)+A121262(2*n)]` -/
def P1348488202715237221.Spec : Prop :=
  ∀ n, P1348488202715237221.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P13003353165789995532

`A175047(A175057(n+1))`
-/

namespace A175054.P13003353165789995532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A175057 (n + 1)).toNat

end

end A175054.P13003353165789995532

namespace A175054

/-- `A175047(A175057(n+1))` -/
def P13003353165789995532.Spec : Prop :=
  ∀ n, P13003353165789995532.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P16453426878621826157

`record[A175047(A106151(n+1))]`
-/

namespace A175054.P16453426878621826157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A106151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P16453426878621826157

namespace A175054

/-- `record[A175047(A106151(n+1))]` -/
def P16453426878621826157.Spec : Prop :=
  ∀ n, P16453426878621826157.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P11120383866836716143

`filter[A004742(n+2), A014577(#)]`
-/

namespace A175054.P11120383866836716143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A175054.P11120383866836716143

namespace A175054

/-- `filter[A004742(n+2), A014577(#)]` -/
def P11120383866836716143.Spec : Prop :=
  ∀ n, P11120383866836716143.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P13190728730537793636

`eq[1, char[A175047(n+1)]]`
-/

namespace A175054.P13190728730537793636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175054.P13190728730537793636

namespace A175054

/-- `eq[1, char[A175047(n+1)]]` -/
def P13190728730537793636.Spec : Prop :=
  ∀ n, (P13190728730537793636.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P4909750522287961920

`record[A093178(n)-A292272(n)]`
-/

namespace A175054.P4909750522287961920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A292272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P4909750522287961920

namespace A175054

/-- `record[A093178(n)-A292272(n)]` -/
def P4909750522287961920.Spec : Prop :=
  ∀ n, P4909750522287961920.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P12368877702995755455

`record[A065033(n)+n-A003188(n)]`
-/

namespace A175054.P12368877702995755455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ((n : ℤ) - A003188 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P12368877702995755455

namespace A175054

/-- `record[A065033(n)+n-A003188(n)]` -/
def P12368877702995755455.Spec : Prop :=
  ∀ n, P12368877702995755455.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P11237184776700146705

`record[A213370(n+1)+A014577(A213370(2*n+1))]`
-/

namespace A175054.P11237184776700146705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (n + 1) + A014577 (A213370 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P11237184776700146705

namespace A175054

/-- `record[A213370(n+1)+A014577(A213370(2*n+1))]` -/
def P11237184776700146705.Spec : Prop :=
  ∀ n, P11237184776700146705.a n = A175054 (n + 1)

end A175054

/-! ## A175054.P8804146151757509852

`lt[n*A056979(2*n+1), n]`
-/

namespace A175054.P8804146151757509852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056979 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175054.P8804146151757509852

namespace A175054

/-- `lt[n*A056979(2*n+1), n]` -/
def P8804146151757509852.Spec : Prop :=
  ∀ n, (P8804146151757509852.a n : ℤ) = A175054 (n + 1)

end A175054

/-! ## A175054.P17841256331843639501

`record[A065033(A318518(2*n+1))]`
-/

namespace A175054.P17841256331843639501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A318518 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175054.P17841256331843639501

namespace A175054

/-- `record[A065033(A318518(2*n+1))]` -/
def P17841256331843639501.Spec : Prop :=
  ∀ n, P17841256331843639501.a n = A175054 (n + 1)

end A175054

/-!
# A175055: a(n) = decimal equivalent of {A033015(n) written in binary, and each run of 0's reduced in length by one digit, and each run of 1's reduced in length by one digit}.

The programs for A175055, there is no canonical definition to state claims against.
-/

/-! ## A175055.P15549842442733667134

`A227351(A343646(n+1))`
-/

namespace A175055.P15549842442733667134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227351 (A343646 (n + 1)).toNat

end

end A175055.P15549842442733667134

/-! ## A175055.P10860316201613109647

`A318921(A033015(n+1))`
-/

namespace A175055.P10860316201613109647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A033015 (n + 1)).toNat

end

end A175055.P10860316201613109647

/-! ## A175055.P3694845357674100823

`A319419(or(A000007(n), A033015(n+1)))`
-/

namespace A175055.P3694845357674100823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (Int.lor (A000007 n) (A033015 (n + 1))).toNat

end

end A175055.P3694845357674100823

/-! ## A175055.P260987255898844532

`A163575(eq[A136480(n)+1, A005811(n)])`
-/

namespace A175055.P260987255898844532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175055.P260987255898844532

/-! ## A175055.P6107566694913982725

`A163575(eq[1, A005811(n)-A136480(n)])`
-/

namespace A175055.P6107566694913982725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n - A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175055.P6107566694913982725

/-! ## A175055.P10603776237720765176

`A318921(eq[A233583(n+1), A318925(n)])`
-/

namespace A175055.P10603776237720765176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175055.P10603776237720765176

/-!
# A175056: Inverse permutation to A175055.

The programs for A175056, there is no canonical definition to state claims against.
-/

/-! ## A175056.P5377969651916618370

`A343647(A227352(n+1))`
-/

namespace A175056.P5377969651916618370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 (A227352 (n + 1)).toNat

end

end A175056.P5377969651916618370

/-! ## A175056.P15930932227402997494

`A356874(A320038(n+1))`
-/

namespace A175056.P15930932227402997494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A320038 (n + 1)).toNat

end

end A175056.P15930932227402997494

/-!
# A175057: a(n) = decimal equivalent of {A175054(n) written in binary, and each run of 0's reduced in length by one digit}.

The programs for A175057, the canonical program `A175057.P10451494009119504139` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175057 has offset 1).

The definition of A175057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175057.P10451792078756296345

`A106151(A175054(n+1))`
-/

namespace A175057.P10451792078756296345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A175054 (n + 1)).toNat

end

end A175057.P10451792078756296345

namespace A175057

/-- `A106151(A175054(n+1))` -/
def P10451792078756296345.Spec : Prop :=
  ∀ n, P10451792078756296345.a n = A175057 (n + 1)

end A175057

/-! ## A175057.P17042015251220859125

`A106151(record[A175047(A106151(n+1))])`
-/

namespace A175057.P17042015251220859125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A106151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175057.P17042015251220859125

namespace A175057

/-- `A106151(record[A175047(A106151(n+1))])` -/
def P17042015251220859125.Spec : Prop :=
  ∀ n, P17042015251220859125.a n = A175057 (n + 1)

end A175057

/-! ## A175057.P10614375501417919425

`A106151(eq[1, char[A175047(n+1)]])`
-/

namespace A175057.P10614375501417919425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175057.P10614375501417919425

namespace A175057

/-- `A106151(eq[1, char[A175047(n+1)]])` -/
def P10614375501417919425.Spec : Prop :=
  ∀ n, P10614375501417919425.a n = A175057 (n + 1)

end A175057

/-! ## A175057.P16112685983669648716

`A106151(record[A093178(n)-A292272(n)])`
-/

namespace A175057.P16112685983669648716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A292272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175057.P16112685983669648716

namespace A175057

/-- `A106151(record[A093178(n)-A292272(n)])` -/
def P16112685983669648716.Spec : Prop :=
  ∀ n, P16112685983669648716.a n = A175057 (n + 1)

end A175057

/-! ## A175057.P10451494009119504139

`A025480(eq[A069010(n+1), A135523(n+1)+1])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A175057

/-- `A025480(eq[A069010(n+1), A135523(n+1)+1])` -/
def P10451494009119504139.Spec : Prop :=
  ∀ n, P10451494009119504139.a n = A175057 (n + 1)

theorem P10451494009119504139.correct : P10451494009119504139.Spec := by
  intro n
  simp only [A175057, Nat.add_sub_cancel]

end A175057

/-! ## A175057.P2503105326203165996

`A106151(record[A213370(n+1)+A133872(2*n)])`
-/

namespace A175057.P2503105326203165996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (n + 1) + A133872 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175057.P2503105326203165996

namespace A175057

/-- `A106151(record[A213370(n+1)+A133872(2*n)])` -/
def P2503105326203165996.Spec : Prop :=
  ∀ n, P2503105326203165996.a n = A175057 (n + 1)

end A175057

/-!
# A175059: a(n) = decimal equivalent of {A144795(n) written in binary, and each run of 1's reduced in length by one digit}.

The programs for A175059, the canonical program `A175059.P4518377172309833936` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175059 has offset 1).

The definition of A175059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175059.P17534590219568921605

`A348710(A144795(n+1))`
-/

namespace A175059.P17534590219568921605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (A144795 (n + 1)).toNat

end

end A175059.P17534590219568921605

namespace A175059

/-- `A348710(A144795(n+1))` -/
def P17534590219568921605.Spec : Prop :=
  ∀ n, P17534590219568921605.a n = A175059 (n + 1)

end A175059

/-! ## A175059.P4518377172309833936

`A025480(eq[A007814(n+1), A087116(n)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175059

/-- `A025480(eq[A007814(n+1), A087116(n)])` -/
def P4518377172309833936.Spec : Prop :=
  ∀ n, P4518377172309833936.a n = A175059 (n + 1)

theorem P4518377172309833936.correct : P4518377172309833936.Spec := by
  intro n
  simp only [A175059, Nat.add_sub_cancel]

end A175059

/-! ## A175059.P4966965982656766435

`A025480(eq[A007814(n+2), A033264(n+1)]+1)`
-/

namespace A175059.P4966965982656766435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A175059.P4966965982656766435

namespace A175059

/-- `A025480(eq[A007814(n+2), A033264(n+1)]+1)` -/
def P4966965982656766435.Spec : Prop :=
  ∀ n, P4966965982656766435.a n = A175059 (n + 1)

end A175059

/-! ## A175059.P1913410642428006552

`A025480(eq[A007814(n+1)+1, A037800(2*n+1)])`
-/

namespace A175059.P1913410642428006552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175059.P1913410642428006552

namespace A175059

/-- `A025480(eq[A007814(n+1)+1, A037800(2*n+1)])` -/
def P1913410642428006552.Spec : Prop :=
  ∀ n, P1913410642428006552.a n = A175059 (n + 1)

end A175059

/-! ## A175059.P12765985806984314510

`A025480(eq[A069010(2*n+1), A135523(n+1)+1])`
-/

namespace A175059.P12765985806984314510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175059.P12765985806984314510

namespace A175059

/-- `A025480(eq[A069010(2*n+1), A135523(n+1)+1])` -/
def P12765985806984314510.Spec : Prop :=
  ∀ n, P12765985806984314510.a n = A175059 (n + 1)

end A175059

/-! ## A175059.P17002853886935355984

`A025480(eq[A069010(n), A135523(n+1)])`
-/

namespace A175059.P17002853886935355984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175059.P17002853886935355984

namespace A175059

/-- `A025480(eq[A069010(n), A135523(n+1)])` -/
def P17002853886935355984.Spec : Prop :=
  ∀ n, P17002853886935355984.a n = A175059 (n + 1)

end A175059

/-!
# A175060: Inverse permutation to A175059.

The programs for A175060, there is no canonical definition to state claims against.
-/

/-! ## A175060.P7104580113237414451

`A173022(A175048(n+1)-1)`
-/

namespace A175060.P7104580113237414451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 (A175048 (n + 1) - 1).toNat

end

end A175060.P7104580113237414451

/-! ## A175060.P4412772200015007364

`A008621(A175058(4*(n+1)))-1`
-/

namespace A175060.P4412772200015007364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A175058 (4 * (n + 1))).toNat - 1

end

end A175060.P4412772200015007364

/-! ## A175060.P6373363201365790385

`A107393(A000040(n+1))+A008621(A175058(4*(n+1)))`
-/

namespace A175060.P6373363201365790385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000040 (n + 1)).toNat + A008621 (A175058 (4 * (n + 1))).toNat

end

end A175060.P6373363201365790385

/-!
# A175061: A positive integer n is included if n, when written in binary, is made of run-lengths (lengths of runs of 0's as well as of runs of 1's) that form a permutation of some number of consecutive positive integers starting with 1.

The programs for A175061, there is no canonical definition to state claims against.
-/

/-! ## A175061.P15488854013311515327

`eq[A043276(n+1), A165414(n+1)]+1`
-/

namespace A175061.P15488854013311515327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175061.P15488854013311515327

/-!
# A175062: An arrangement of permutations. Irregular table read by rows: Read A175061(n) in binary from left to right. Row n contains the lengths of the runs of 0's and 1's.

The programs for A175062, there is no canonical definition to state claims against.
-/

/-! ## A175062.P2236940786356632416

`A288723(A227928(n+1))`
-/

namespace A175062.P2236940786356632416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288723 (A227928 (n + 1)).toNat

end

end A175062.P2236940786356632416

/-! ## A175062.P6956807771950264678

`A091412(A219802(n+1)+A123108(n+2))`
-/

namespace A175062.P6956807771950264678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091412 (A219802 (n + 1) + A123108 (n + 2)).toNat

end

end A175062.P6956807771950264678

/-! ## A175062.P14392487357983155372

`A210243(A060922(n+1))`
-/

namespace A175062.P14392487357983155372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210243 (A060922 (n + 1)).toNat

end

end A175062.P14392487357983155372

/-! ## A175062.P12424488421473844116

`A270788((2*n)²+A000203(3*n+5))`
-/

namespace A175062.P12424488421473844116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (((2 * n) ^ 2 : ℤ) + A000203 (3 * n + 5)).toNat

end

end A175062.P12424488421473844116

/-! ## A175062.P13349820888052684319

`∑{e}[A137325(2*(n+1))-A070082(A315239(3*(n+1))), #]`
-/

namespace A175062.P13349820888052684319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137325 (2 * (n + 1)) - A070082 (A315239 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A175062.P13349820888052684319

/-!
# A175063: Primes p such that 5*p^2 + 5*p + 1 is also prime.

The programs for A175063, the canonical program `A175063.P16562978643772503991` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175063 has offset 1).

The definition of A175063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175063.P16562978643772503991

`p?[A090563(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A175063

/-- `p?[A090563(n+1)]` -/
def P16562978643772503991.Spec : Prop :=
  ∀ n, P16562978643772503991.a n = A175063 (n + 1)

theorem P16562978643772503991.correct : P16562978643772503991.Spec := by
  intro n
  simp only [A175063, Nat.add_sub_cancel]

end A175063

/-! ## A175063.P16446623490905159681

`filter[A090563(n+1), A010051(#)]`
-/

namespace A175063.P16446623490905159681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175063.P16446623490905159681

namespace A175063

/-- `filter[A090563(n+1), A010051(#)]` -/
def P16446623490905159681.Spec : Prop :=
  ∀ n, P16446623490905159681.a n = A175063 (n + 1)

end A175063

/-! ## A175063.P11363378619384843867

`∩[A000040(n+1), A090563(n+1)]`
-/

namespace A175063.P11363378619384843867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P11363378619384843867

namespace A175063

/-- `∩[A000040(n+1), A090563(n+1)]` -/
def P11363378619384843867.Spec : Prop :=
  ∀ n, (P11363378619384843867.a n : ℤ) = A175063 (n + 1)

end A175063

/-! ## A175063.P1128676991857205944

`∩[A090563(n+1), A182986(n+1)]`
-/

namespace A175063.P1128676991857205944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P1128676991857205944

namespace A175063

/-- `∩[A090563(n+1), A182986(n+1)]` -/
def P1128676991857205944.Spec : Prop :=
  ∀ n, (P1128676991857205944.a n : ℤ) = A175063 (n + 1)

end A175063

/-! ## A175063.P7334275099449515246

`∩[A006093(n+1)+1, A090563(n+1)]`
-/

namespace A175063.P7334275099449515246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P7334275099449515246

namespace A175063

/-- `∩[A006093(n+1)+1, A090563(n+1)]` -/
def P7334275099449515246.Spec : Prop :=
  ∀ n, (P7334275099449515246.a n : ℤ) = A175063 (n + 1)

end A175063

/-! ## A175063.P8724302675596294681

`∩[A008864(n+1)-1, A090563(n+1)]`
-/

namespace A175063.P8724302675596294681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P8724302675596294681

namespace A175063

/-- `∩[A008864(n+1)-1, A090563(n+1)]` -/
def P8724302675596294681.Spec : Prop :=
  ∀ n, (P8724302675596294681.a n : ℤ) = A175063 (n + 1)

end A175063

/-! ## A175063.P6713918192033012373

`∩[A040976(n+1)+2, A090563(n+1)]`
-/

namespace A175063.P6713918192033012373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P6713918192033012373

namespace A175063

/-- `∩[A040976(n+1)+2, A090563(n+1)]` -/
def P6713918192033012373.Spec : Prop :=
  ∀ n, (P6713918192033012373.a n : ℤ) = A175063 (n + 1)

end A175063

/-! ## A175063.P12960976191110252249

`∩[A049543(n+1), A090563(n+1)]`
-/

namespace A175063.P12960976191110252249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P12960976191110252249

namespace A175063

/-- `∩[A049543(n+1), A090563(n+1)]` -/
def P12960976191110252249.Spec : Prop :=
  ∀ n, (P12960976191110252249.a n : ℤ) = A175063 (n + 1)

end A175063

/-! ## A175063.P3270330317215521952

`filter[A090563(n+2), A080339(#)]`
-/

namespace A175063.P3270330317215521952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175063.P3270330317215521952

namespace A175063

/-- `filter[A090563(n+2), A080339(#)]` -/
def P3270330317215521952.Spec : Prop :=
  ∀ n, P3270330317215521952.a n = A175063 (n + 1)

end A175063

/-! ## A175063.P3179593580361101645

`∩[A090563(n+1), A385492(n+1)]`
-/

namespace A175063.P3179593580361101645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175063.P3179593580361101645

namespace A175063

/-- `∩[A090563(n+1), A385492(n+1)]` -/
def P3179593580361101645.Spec : Prop :=
  ∀ n, (P3179593580361101645.a n : ℤ) = A175063 (n + 1)

end A175063

/-!
# A175064: a(1) = 1; for n >= 2, a(n) = number of ways h to write the n-th perfect power A001597(n) as m^k with m >= 2 and k >= 1.

The programs for A175064, there is no canonical definition to state claims against.
-/

/-! ## A175064.P11364166950057192845

`A253642(n+1)+1`
-/

namespace A175064.P11364166950057192845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253642 (n + 1) + 1

end

end A175064.P11364166950057192845

/-! ## A175064.P4505059106856514410

`A089723(∑[A076412(n)])`
-/

namespace A175064.P4505059106856514410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175064.P4505059106856514410

/-! ## A175064.P10069150164910060992

`A089723(A001597(n+1))`
-/

namespace A175064.P10069150164910060992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A001597 (n + 1)).toNat

end

end A175064.P10069150164910060992

/-! ## A175064.P1101133425208272233

`A089723(abs(A157985(n+1)))`
-/

namespace A175064.P1101133425208272233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 |A157985 (n + 1)|.toNat

end

end A175064.P1101133425208272233

/-! ## A175064.P16859897852352528797

`A089723(sqrt(A340588(n+1)))`
-/

namespace A175064.P16859897852352528797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A175064.P16859897852352528797

/-! ## A175064.P250171475171529156

`A000005(A025479(n+1)-floor(acot(n)))`
-/

namespace A175064.P250171475171529156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025479 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A175064.P250171475171529156

/-! ## A175064.P1143440035010683287

`A000005(ceil(A025479(n+1)-acot(n)))`
-/

namespace A175064.P1143440035010683287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(A025479 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A175064.P1143440035010683287

/-! ## A175064.P1914731723754905128

`A000005(A025479(n+1)/ceil(acot(n)))`
-/

namespace A175064.P1914731723754905128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A025479 (n + 1) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A175064.P1914731723754905128

/-! ## A175064.P12039831229176920627

`A000005(C(A025479(n+1), ceil(acot(n))))`
-/

namespace A175064.P12039831229176920627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (A025479 (n + 1)).toNat ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat)

end

end A175064.P12039831229176920627

/-! ## A175064.P14901560799809816559

`A000005(gcd(C(2, n²), A157986(n+1)))`
-/

namespace A175064.P14901560799809816559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (Nat.choose 2 (n ^ 2) : ℤ) (A157986 (n + 1)))

end

end A175064.P14901560799809816559

/-!
# A175065: Smallest number m for which there are exactly n ways to write m as x^y with x >= 2, y >= 1.

The programs for A175065, there is no canonical definition to state claims against.
-/

/-! ## A175065.P1699691426279350194

`2^A005179(n+1)`
-/

namespace A175065.P1699691426279350194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005179 (n + 1) : ℤ)

end

end A175065.P1699691426279350194

/-! ## A175065.P15080509040440654122

`A000079(A005179(n+1))`
-/

namespace A175065.P15080509040440654122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005179 (n + 1)).toNat

end

end A175065.P15080509040440654122

/-!
# A175066: a(1) = 1, for n >= 2: a(n) = number of ways h to write perfect powers A117453(n) as m^k (m >= 2, k >= 2).

The programs for A175066, there is no canonical definition to state claims against.
-/

/-! ## A175066.P7747627676993179570

`10%A089723(A117453(n+1))+1`
-/

namespace A175066.P7747627676993179570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (A089723 (A117453 (n + 1)).toNat) + 1

end

end A175066.P7747627676993179570

/-! ## A175066.P17986110451957603787

`A089723(A117453(n+1))-char[A007318(n)]`
-/

namespace A175066.P17986110451957603787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A117453 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175066.P17986110451957603787

/-! ## A175066.P10077712270552968052

`A089723(A117453(n+1))-and(1, A000040(n+1))`
-/

namespace A175066.P10077712270552968052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A117453 (n + 1)).toNat - Int.land 1 (A000040 (n + 1))

end

end A175066.P10077712270552968052

/-! ## A175066.P2465840199543961631

`A089723(A117453(n+1))-A000045(floor(n^(3/14)))`
-/

namespace A175066.P2465840199543961631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A117453 (n + 1)).toNat - A000045 ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋.toNat

end

end A175066.P2465840199543961631

/-! ## A175066.P11666894986951153177

`A089723(A117453(n+1))-A001221(A001222(n+1)+1)`
-/

namespace A175066.P11666894986951153177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A117453 (n + 1)).toNat - A001221 (A001222 (n + 1) + 1).toNat

end

end A175066.P11666894986951153177

/-!
# A175067: a(n) is the sum of perfect divisors of n, where a perfect divisor of n is a divisor d such that d^k = n for some k >= 1.

The programs for A175067, there is no canonical definition to state claims against.
-/

/-! ## A175067.P6822072535101493740

`A175070(n+1)+1+n`
-/

namespace A175067.P6822072535101493740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1) + 1 + (n : ℤ)

end

end A175067.P6822072535101493740

/-! ## A175067.P10150133382468956350

`∑{d}[n+1, #]-A178645(n+1)`
-/

namespace A175067.P10150133382468956350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A178645 (n + 1)

end

end A175067.P10150133382468956350

/-! ## A175067.P15919566415969002371

`A000203(n+1)-A178645(n+1)`
-/

namespace A175067.P15919566415969002371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A178645 (n + 1)

end

end A175067.P15919566415969002371

/-! ## A175067.P8380751914873220256

`A074400(n+1)/2-A178645(n+1)`
-/

namespace A175067.P8380751914873220256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A178645 (n + 1) : ℚ)

end

end A175067.P8380751914873220256

/-! ## A175067.P1043419416729525100

`∑{d}[n+1, A008683(#)*A168512((n+1)/#)]`
-/

namespace A175067.P1043419416729525100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A168512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A175067.P1043419416729525100

/-! ## A175067.P4374967631031494519

`A025480(A074400(n+1)-2*A178645(n+1))`
-/

namespace A175067.P4374967631031494519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A074400 (n + 1) - 2 * A178645 (n + 1)).toNat

end

end A175067.P4374967631031494519

/-! ## A175067.P3029121408243230748

`A025480(A074400(n+1)-A178645(n+1)-A178645(n+1))`
-/

namespace A175067.P3029121408243230748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A074400 (n + 1) - A178645 (n + 1) - A178645 (n + 1)).toNat

end

end A175067.P3029121408243230748

/-! ## A175067.P7933653016751023900

`A025480(A074400(n+1))-A178645(n+1)`
-/

namespace A175067.P7933653016751023900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A074400 (n + 1)).toNat - A178645 (n + 1)

end

end A175067.P7933653016751023900

/-!
# A175068: a(n) = product of perfect divisors of n.

The programs for A175068, there is no canonical definition to state claims against.
-/

/-! ## A175068.P17784446769686803602

`(n+1)*A175069(n+1)`
-/

namespace A175068.P17784446769686803602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175069 (n + 1)

end

end A175068.P17784446769686803602

/-! ## A175068.P4522649195329972628

`A052410(n+1)^∑{d}[A052409(n+1), #]`
-/

namespace A175068.P4522649195329972628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) ^ (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A175068.P4522649195329972628

/-! ## A175068.P1418859013098983540

`A052410(n+1)^∑{d}[A158052(n+1), #]`
-/

namespace A175068.P1418859013098983540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1) ^ (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A175068.P1418859013098983540

/-! ## A175068.P9013291065678529184

`A052410(n+1)^A000203(A253641(n+1))`
-/

namespace A175068.P9013291065678529184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) ^ (A000203 (A253641 (n + 1)).toNat : ℤ)

end

end A175068.P9013291065678529184

/-! ## A175068.P6236460265551378254

`A075362(A175069(n+1)+A000217(n))`
-/

namespace A175068.P6236460265551378254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A175069 (n + 1) + A000217 n).toNat

end

end A175068.P6236460265551378254

/-! ## A175068.P2225413348009756443

`A007955(n+1)/A178646(n+1)`
-/

namespace A175068.P2225413348009756443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A178646 (n + 1) : ℚ)

end

end A175068.P2225413348009756443

/-! ## A175068.P16416544661576145352

`(n+1)*A007956(n+1)/A178646(n+1)`
-/

namespace A175068.P16416544661576145352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007956 (n + 1) : ℚ) / (A178646 (n + 1) : ℚ))

end

end A175068.P16416544661576145352

/-!
# A175069: a(n) = product of perfect divisors of n / n.

The programs for A175069, there is no canonical definition to state claims against.
-/

/-! ## A175069.P11883358524687980575

`A175068(n+1)/(n+1)`
-/

namespace A175069.P11883358524687980575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175068 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A175069.P11883358524687980575

/-! ## A175069.P13442675501906424002

`A008574(A175068(n+1))%A004767(n)`
-/

namespace A175069.P13442675501906424002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A175068 (n + 1)).toNat) (A004767 n)

end

end A175069.P13442675501906424002

/-! ## A175069.P7986303393743257022

`A008486(A175068(n+1))%A016789(n)`
-/

namespace A175069.P7986303393743257022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A175068 (n + 1)).toNat) (A016789 n)

end

end A175069.P7986303393743257022

/-! ## A175069.P7070512766281464542

`A008588(A175068(n+1))%A016969(n)`
-/

namespace A175069.P7070512766281464542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008588 (A175068 (n + 1)).toNat) (A016969 n)

end

end A175069.P7070512766281464542

/-! ## A175069.P11495366455143514710

`A008706(A175068(n+1))%A016897(n)`
-/

namespace A175069.P11495366455143514710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A175068 (n + 1)).toNat) (A016897 n)

end

end A175069.P11495366455143514710

/-! ## A175069.P15524290757449786528

`A007956(n+1)/A178646(n+1)`
-/

namespace A175069.P15524290757449786528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A178646 (n + 1) : ℚ)

end

end A175069.P15524290757449786528

/-! ## A175069.P3684167599270717906

`A000188(A015052(n+1)^A295931(n+1))`
-/

namespace A175069.P3684167599270717906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A015052 (n + 1) : ℚ) ^ (A295931 (n + 1) : ℤ))).toNat

end

end A175069.P3684167599270717906

/-! ## A175069.P6009061019080862844

`A000188(A007947(n+1)^A316789(n+1))`
-/

namespace A175069.P6009061019080862844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A316789 (n + 1) : ℤ))).toNat

end

end A175069.P6009061019080862844

/-! ## A175069.P7692444927292299863

`A000188(A015052(n+1)^A316789(n+1))`
-/

namespace A175069.P7692444927292299863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A015052 (n + 1) : ℚ) ^ (A316789 (n + 1) : ℤ))).toNat

end

end A175069.P7692444927292299863

/-!
# A175070: a(n) is the sum of perfect divisors of n - n, where a perfect divisor of n is a divisor d such that d^k = n for some k >= 1.

The programs for A175070, there is no canonical definition to state claims against.
-/

/-! ## A175070.P7756901965004855871

`A175067(n+1)-(n+1)`
-/

namespace A175070.P7756901965004855871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175067 (n + 1) - (n + 1 : ℤ)

end

end A175070.P7756901965004855871

/-! ## A175070.P6740761944332490475

`A001065(n+1)-A178645(n+1)`
-/

namespace A175070.P6740761944332490475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A178645 (n + 1)

end

end A175070.P6740761944332490475

/-! ## A175070.P17487475111797955958

`A175067(n+1)%A000027(n+1)`
-/

namespace A175070.P17487475111797955958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175067 (n + 1)) (A000027 (n + 1))

end

end A175070.P17487475111797955958

/-! ## A175070.P12448770709873501576

`∑{d}[n+1, A008683(#)*A168512((n+1)/#)]-(n+1)`
-/

namespace A175070.P12448770709873501576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A168512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - (n + 1 : ℤ)

end

end A175070.P12448770709873501576

/-! ## A175070.P14043813180185950675

`(A175067(n+1)+A008585(n+1))%(n+1)`
-/

namespace A175070.P14043813180185950675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175067 (n + 1) + A008585 (n + 1)) (n + 1 : ℤ)

end

end A175070.P14043813180185950675

/-! ## A175070.P17133804347594335537

`(A175067(A175067(n+1))%(n+1))%A167832(n+1)`
-/

namespace A175070.P17133804347594335537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A175067 (A175067 (n + 1)).toNat) (n + 1 : ℤ)) (A167832 (n + 1))

end

end A175070.P17133804347594335537

/-! ## A175070.P16792577842571385239

`A130696(A175067(n+1)-n)`
-/

namespace A175070.P16792577842571385239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A175067 (n + 1) - (n : ℤ)).toNat

end

end A175070.P16792577842571385239

/-! ## A175070.P18109898691227850559

`A079781(n+1)%A175067(n+1)`
-/

namespace A175070.P18109898691227850559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079781 (n + 1)) (A175067 (n + 1))

end

end A175070.P18109898691227850559

/-! ## A175070.P135380093155777316

`A175067(n+1)%A126352(n)`
-/

namespace A175070.P135380093155777316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175067 (n + 1)) (A126352 n)

end

end A175070.P135380093155777316

/-!
# A175071: Natural numbers m with result 1 under iterations of {r mod (max prime p < r)} starting at r = m.

The programs for A175071, there is no canonical definition to state claims against.
-/

/-! ## A175071.P12031861702471217202

`comp[A175088(n+1)]+1`
-/

namespace A175071.P12031861702471217202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175071.P12031861702471217202

/-! ## A175071.P11749600196339186792

`eq[1, A175077(n+1)]+1`
-/

namespace A175071.P11749600196339186792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175071.P11749600196339186792

/-! ## A175071.P14121533981223030164

`comp[A175072(n+1)-1]+1`
-/

namespace A175071.P14121533981223030164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175072 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175071.P14121533981223030164

/-! ## A175071.P12210990363009511093

`record[(n+2)/A175077(n+2)]`
-/

namespace A175071.P12210990363009511093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A175077 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175071.P12210990363009511093

/-! ## A175071.P12510777540315065128

`comp[(n+2)*A121559(n+1)]`
-/

namespace A175071.P12510777540315065128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A121559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175071.P12510777540315065128

/-! ## A175071.P12786263065288674806

`eq[0, abs(a(A064722(n)))]+1` with `a(0)=0, a(1)=1`
-/

namespace A175071.P12786263065288674806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (A064722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175071.P12786263065288674806

/-! ## A175071.P17521121808915622938

`eq[A072491(n), A175078(n+1)]+1`
-/

namespace A175071.P17521121808915622938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175071.P17521121808915622938

/-! ## A175071.P5560142153270775633

`∪[A175073(n+1), A175074(n+1)]`
-/

namespace A175071.P5560142153270775633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175071.P5560142153270775633

/-! ## A175071.P4211503412260632125

`eq[1, A000045(a(A064722(n)))]+1` with `a(0)=1, a(1)=0`
-/

namespace A175071.P4211503412260632125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A000045 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175071.P4211503412260632125

/-! ## A175071.P3162175371633955781

`eq[1, A000010(a(A064722(n)))]+1` with `a(0)=1, a(1)=45`
-/

namespace A175071.P3162175371633955781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 45] fun n f2 =>
  A000010 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175071.P3162175371633955781

/-!
# A175072: Natural numbers m with result 2 under iterations of {r mod (max prime p < r)} starting at r = m.

The programs for A175072, there is no canonical definition to state claims against.
-/

/-! ## A175072.P144072908789559599

`A175088(n+1)+1`
-/

namespace A175072.P144072908789559599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1) + 1

end

end A175072.P144072908789559599

/-! ## A175072.P16250237170217385173

`lt[0, A121559(n+1)]+2`
-/

namespace A175072.P16250237170217385173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A175072.P16250237170217385173

/-! ## A175072.P8575026641311855962

`eq[1, A121559(abs(2-n)+1)]`
-/

namespace A175072.P8575026641311855962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175072.P8575026641311855962

/-! ## A175072.P11930495258739262070

`comp[A200947(n)%2+n]+1`
-/

namespace A175072.P11930495258739262070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200947 n) 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175072.P11930495258739262070

/-! ## A175072.P7339732337511965989

`eq[0, abs(a(A064722(n)))]+1` with `a(0)=1, a(1)=0`
-/

namespace A175072.P7339732337511965989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A064722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175072.P7339732337511965989

/-! ## A175072.P7249544114984324357

`a(n-1)+A121560(n)+1` with `a(0)=2`
-/

namespace A175072.P7249544114984324357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A121560 n + 1)

end

end A175072.P7249544114984324357

/-! ## A175072.P15067145212500510396

`A020725(A175088(n+1))`
-/

namespace A175072.P15067145212500510396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A175088 (n + 1)).toNat

end

end A175072.P15067145212500510396

/-! ## A175072.P14735231852729495001

`∪[A094743(n+1), A175076(n+1)]`
-/

namespace A175072.P14735231852729495001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175072.P14735231852729495001

/-! ## A175072.P2167384449394892315

`∪[A175075(n+1), A175076(n+1)]`
-/

namespace A175072.P2167384449394892315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175072.P2167384449394892315

/-! ## A175072.P2329839581554683454

`eq[0, A000045(a(A064722(n)))]+1` with `a(0)=1, a(1)=0`
-/

namespace A175072.P2329839581554683454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A000045 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175072.P2329839581554683454

/-!
# A175073: Primes q with result 1 under iterations of {r mod (max prime p < r)} starting at r = q.

The programs for A175073, there is no canonical definition to state claims against.
-/

/-! ## A175073.P8540205175466564621

`∩[A025584(n+1), A026481(n+1)]`
-/

namespace A175073.P8540205175466564621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P8540205175466564621

/-! ## A175073.P7630083201298422380

`∩[A025584(n+1), A231564(n+1)]`
-/

namespace A175073.P7630083201298422380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P7630083201298422380

/-! ## A175073.P12983862072202014502

`∩[A173708(n+1), A014092(n+1)]`
-/

namespace A175073.P12983862072202014502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P12983862072202014502

/-! ## A175073.P7200667744875839884

`A037277(A025584(n+2))`
-/

namespace A175073.P7200667744875839884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037277 (A025584 (n + 2)).toNat

end

end A175073.P7200667744875839884

/-! ## A175073.P3035529057018607327

`∩[A025584(n+1), A026482(n+1)]`
-/

namespace A175073.P3035529057018607327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P3035529057018607327

/-! ## A175073.P14361975014728440643

`p?[A168064(n+1)+1]`
-/

namespace A175073.P14361975014728440643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168064 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175073.P14361975014728440643

/-! ## A175073.P4921367351710052206

`A093574(A104279(n+1))`
-/

namespace A175073.P4921367351710052206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 (A104279 (n + 1)).toNat

end

end A175073.P4921367351710052206

/-! ## A175073.P17485974087766875847

`A025584(A117929(A006512(n+1))+n+1)`
-/

namespace A175073.P17485974087766875847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (A117929 (A006512 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A175073.P17485974087766875847

/-! ## A175073.P5766167513013407731

`∩[A025584(n+1), A160685(n+1)]`
-/

namespace A175073.P5766167513013407731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P5766167513013407731

/-! ## A175073.P14135563764943239849

`∩[A025584(n+1), A231711(n+1)]`
-/

namespace A175073.P14135563764943239849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P14135563764943239849

/-! ## A175073.P1668718826641537405

`∩[A025584(n+1), A213199(n+1)]`
-/

namespace A175073.P1668718826641537405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P1668718826641537405

/-! ## A175073.P1498344555505408602

`A342654(A227031(n+2))`
-/

namespace A175073.P1498344555505408602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342654 (A227031 (n + 2)).toNat

end

end A175073.P1498344555505408602

/-! ## A175073.P17234314094029229542

`∩[A025584(n+1), A217129(n+1)]`
-/

namespace A175073.P17234314094029229542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P17234314094029229542

/-! ## A175073.P12072733637469108483

`∩[A025584(n+1), A090864(n+1)]`
-/

namespace A175073.P12072733637469108483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P12072733637469108483

/-! ## A175073.P3499855552176031671

`filter[A025584(n+1), A179770(#)]`
-/

namespace A175073.P3499855552176031671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A175073.P3499855552176031671

/-! ## A175073.P13448041053333029608

`∩[A025584(n+1), A370421(n+1)]`
-/

namespace A175073.P13448041053333029608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175073.P13448041053333029608

/-! ## A175073.P17317413647733725157

`record[ratio[A219964(2*n+1)]]`
-/

namespace A175073.P17317413647733725157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175073.P17317413647733725157

/-! ## A175073.P12776030209992094532

`A194603(A025584(n+2)+1)`
-/

namespace A175073.P12776030209992094532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A025584 (n + 2) + 1).toNat

end

end A175073.P12776030209992094532

/-!
# A175074: Nonprimes b with result 1 under iterations of {r mod (max prime p < r)} starting at r = b.

The programs for A175074, there is no canonical definition to state claims against.
-/

/-! ## A175074.P8800445255441981013

`char[A097330(n+1)]+Δ[n²]`
-/

namespace A175074.P8800445255441981013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097330 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A175074.P8800445255441981013

/-! ## A175074.P10485357832498935938

`char[A147820(n+1)]+Δ[n²]`
-/

namespace A175074.P10485357832498935938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A175074.P10485357832498935938

/-! ## A175074.P16347092699435956142

`eq[1, a(A064722(n))!]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A175074.P16347092699435956142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 0] fun n f2 =>
  Nat.factorial (f2 (A064722 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175074.P16347092699435956142

/-! ## A175074.P17588776132586718318

`Δ[n²]-A121559(Δ[n²])+1`
-/

namespace A175074.P17588776132586718318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A121559 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

end

end A175074.P17588776132586718318

/-! ## A175074.P6009461790166632724

`char[A097330(n+2)]+n+1+n`
-/

namespace A175074.P6009461790166632724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097330 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n + 1 + n

end

end A175074.P6009461790166632724

/-! ## A175074.P7151743596078588841

`2*(n+1)-A121559(2*n+1)`
-/

namespace A175074.P7151743596078588841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A121559 (2 * n + 1)

end

end A175074.P7151743596078588841

/-! ## A175074.P5017607280520575461

`2*n+3-A175077(2*(n+1))`
-/

namespace A175074.P5017607280520575461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A175077 (2 * (n + 1))

end

end A175074.P5017607280520575461

/-! ## A175074.P17750142898786901051

`filter[A175071(n+1), A005171(#)]`
-/

namespace A175074.P17750142898786901051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A175074.P17750142898786901051

/-! ## A175074.P16551372657655468123

`A005408(n)+char[A097330(n+1)]`
-/

namespace A175074.P16551372657655468123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A175074.P16551372657655468123

/-! ## A175074.P18316328972366161247

`A064892(A377758(n+2))+2*n`
-/

namespace A175074.P18316328972366161247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064892 (A377758 (n + 2)).toNat + (2 * n : ℤ)

end

end A175074.P18316328972366161247

/-!
# A175075: Primes q with result 2 under iterations of {r mod (max prime p < r)} starting at r = q.

The programs for A175075, the canonical program `A175075.P750954924832815924` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175075 has offset 1).

The definition of A175075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175075.P750954924832815924

`eq[A121559(n+1), A181569(n+1)]+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A175075

/-- `eq[A121559(n+1), A181569(n+1)]+2` -/
def P750954924832815924.Spec : Prop :=
  ∀ n, (P750954924832815924.a n : ℤ) = A175075 (n + 1)

theorem P750954924832815924.correct : P750954924832815924.Spec := by
  intro n
  simp only [A175075, Nat.add_sub_cancel]

end A175075

/-!
# A175076: Composites c which end at 2 under iterations of {r mod (max prime p < r)} starting at r = c.

The programs for A175076, there is no canonical definition to state claims against.
-/

/-! ## A175076.P4027418884751632103

`lt[A049084(n+2), A121559(n+1)]+2`
-/

namespace A175076.P4027418884751632103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A175076.P4027418884751632103

/-! ## A175076.P16281308585639523778

`∩[A005381(n+1), a(n-1)+A121560(n)+1]` with `a(0)=2`
-/

namespace A175076.P16281308585639523778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + (A121560 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175076.P16281308585639523778

/-! ## A175076.P8880729351625698873

`∩[A175090(n+1), a(n-1)+A121560(n)+1]` with `a(0)=2`
-/

namespace A175076.P8880729351625698873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + (A121560 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175076.P8880729351625698873

/-! ## A175076.P11101922997949798175

`filter[A175072(n+1), A005171(#)]`
-/

namespace A175076.P11101922997949798175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A175076.P11101922997949798175

/-! ## A175076.P12937849354057892583

`filter[A175072(n+1), A066247(#)]`
-/

namespace A175076.P12937849354057892583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A175076.P12937849354057892583

/-!
# A175077: Final number reached by iterating r -> A049711(r) starting at r = n.

The programs for A175077, the canonical program `A175077.P1987853210808797040` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175077 has offset 1).

The definition of A175077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175077.P1987853210808797040

`a(A064722(n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175077

/-- `a(A064722(n))` -/
def P1987853210808797040.Spec : Prop :=
  ∀ n, (P1987853210808797040.a n : ℤ) = A175077 (n + 1)

theorem P1987853210808797040.correct : P1987853210808797040.Spec := by
  intro n
  simp only [A175077, Nat.add_sub_cancel]

end A175077

/-! ## A175077.P13700606505066926536

`A007924(n)%2+1`
-/

namespace A175077.P13700606505066926536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007924 n) 2 + 1

end

end A175077.P13700606505066926536

namespace A175077

/-- `A007924(n)%2+1` -/
def P13700606505066926536.Spec : Prop :=
  ∀ n, P13700606505066926536.a n = A175077 (n + 1)

end A175077

/-! ## A175077.P4702716516842526337

`A200947(n)%2+1`
-/

namespace A175077.P4702716516842526337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200947 n) 2 + 1

end

end A175077.P4702716516842526337

namespace A175077

/-- `A200947(n)%2+1` -/
def P4702716516842526337.Spec : Prop :=
  ∀ n, P4702716516842526337.a n = A175077 (n + 1)

end A175077

/-! ## A175077.P17934802762921746565

`a(A175851(n)-1)` with `a(0)=1, a(1)=2`
-/

namespace A175077.P17934802762921746565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A175851 n - 1).toNat

end

end A175077.P17934802762921746565

namespace A175077

/-- `a(A175851(n)-1)` -/
def P17934802762921746565.Spec : Prop :=
  ∀ n, (P17934802762921746565.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P2348494553026120182

`a(n-A007917(n))` with `a(0)=1, a(1)=2`
-/

namespace A175077.P2348494553026120182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((n : ℤ) - A007917 n).toNat

end

end A175077.P2348494553026120182

namespace A175077

/-- `a(n-A007917(n))` -/
def P2348494553026120182.Spec : Prop :=
  ∀ n, (P2348494553026120182.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P11431550432922257122

`char[A175088(n+1)]+1`
-/

namespace A175077.P11431550432922257122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A175077.P11431550432922257122

namespace A175077

/-- `char[A175088(n+1)]+1` -/
def P11431550432922257122.Spec : Prop :=
  ∀ n, (P11431550432922257122.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P7293378384728177920

`a(A049711(n+1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A175077.P7293378384728177920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A049711 (n + 1) - 1).toNat

end

end A175077.P7293378384728177920

namespace A175077

/-- `a(A049711(n+1)-1)` -/
def P7293378384728177920.Spec : Prop :=
  ∀ n, (P7293378384728177920.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P15081511768782123716

`a(n-A136548(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A175077.P15081511768782123716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((n : ℤ) - A136548 (n + 1)).toNat

end

end A175077.P15081511768782123716

namespace A175077

/-- `a(n-A136548(n+1))` -/
def P15081511768782123716.Spec : Prop :=
  ∀ n, (P15081511768782123716.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P3239988802182876367

`char[A175072(n+1)-1]+1`
-/

namespace A175077.P3239988802182876367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175072 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A175077.P3239988802182876367

namespace A175077

/-- `char[A175072(n+1)-1]+1` -/
def P3239988802182876367.Spec : Prop :=
  ∀ n, (P3239988802182876367.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P2640459497095034916

`a(n-1)*A121559(n)+1` with `a(0)=1`
-/

namespace A175077.P2640459497095034916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A121559 n + 1

end

end A175077.P2640459497095034916

namespace A175077

/-- `a(n-1)*A121559(n)+1` -/
def P2640459497095034916.Spec : Prop :=
  ∀ n, P2640459497095034916.a n = A175077 (n + 1)

end A175077

/-! ## A175077.P8016604486363349703

`a(A008554(A175851(n)))` with `a(0)=1, a(1)=2`
-/

namespace A175077.P8016604486363349703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A008554 (A175851 n).toNat).toNat

end

end A175077.P8016604486363349703

namespace A175077

/-- `a(A008554(A175851(n)))` -/
def P8016604486363349703.Spec : Prop :=
  ∀ n, (P8016604486363349703.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P7744991624552093555

`A075058(and(1, -A007924(n)))`
-/

namespace A175077.P7744991624552093555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (Int.land 1 (-A007924 n)).toNat

end

end A175077.P7744991624552093555

namespace A175077

/-- `A075058(and(1, -A007924(n)))` -/
def P7744991624552093555.Spec : Prop :=
  ∀ n, P7744991624552093555.a n = A175077 (n + 1)

end A175077

/-! ## A175077.P751538135197867117

`A075058(and(1, 2-A007924(n)))`
-/

namespace A175077.P751538135197867117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (Int.land 1 (2 - A007924 n)).toNat

end

end A175077.P751538135197867117

namespace A175077

/-- `A075058(and(1, 2-A007924(n)))` -/
def P751538135197867117.Spec : Prop :=
  ∀ n, P751538135197867117.a n = A175077 (n + 1)

end A175077

/-! ## A175077.P10501921718438929482

`char[A113520(A175072(n+1))]+1`
-/

namespace A175077.P10501921718438929482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A175072 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A175077.P10501921718438929482

namespace A175077

/-- `char[A113520(A175072(n+1))]+1` -/
def P10501921718438929482.Spec : Prop :=
  ∀ n, (P10501921718438929482.a n : ℤ) = A175077 (n + 1)

end A175077

/-! ## A175077.P14144222712478959133

`A072491(n)+1-A175078(n+1)`
-/

namespace A175077.P14144222712478959133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n + (1 - A175078 (n + 1))

end

end A175077.P14144222712478959133

namespace A175077

/-- `A072491(n)+1-A175078(n+1)` -/
def P14144222712478959133.Spec : Prop :=
  ∀ n, P14144222712478959133.a n = A175077 (n + 1)

end A175077

/-!
# A175078: Number of iterations of {r mod (max prime p < r)} needed to reach 1 or 2 starting at r = n.

The programs for A175078, the canonical program `A175078.P8983791659663241691` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175078 has offset 1).

The definition of A175078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175078.P8983791659663241691

`a(A064722(n))+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A175078

/-- `a(A064722(n))+1` -/
def P8983791659663241691.Spec : Prop :=
  ∀ n, (P8983791659663241691.a n : ℤ) = A175078 (n + 1)

theorem P8983791659663241691.correct : P8983791659663241691.Spec := by
  intro n
  simp only [A175078, Nat.add_sub_cancel]

end A175078

/-! ## A175078.P14524860840899294877

`a(A175851(n)-1)+1` with `a(0)=0, a(1)=0`
-/

namespace A175078.P14524860840899294877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A175851 n - 1).toNat + 1

end

end A175078.P14524860840899294877

namespace A175078

/-- `a(A175851(n)-1)+1` -/
def P14524860840899294877.Spec : Prop :=
  ∀ n, (P14524860840899294877.a n : ℤ) = A175078 (n + 1)

end A175078

/-! ## A175078.P16741909292572878161

`A121561(floor(1/(n+1)+n))`
-/

namespace A175078.P16741909292572878161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A175078.P16741909292572878161

namespace A175078

/-- `A121561(floor(1/(n+1)+n))` -/
def P16741909292572878161.Spec : Prop :=
  ∀ n, P16741909292572878161.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P4056880107329571586

`A121561(A028310(n))%4`
-/

namespace A175078.P4056880107329571586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121561 (A028310 n).toNat) 4

end

end A175078.P4056880107329571586

namespace A175078

/-- `A121561(A028310(n))%4` -/
def P4056880107329571586.Spec : Prop :=
  ∀ n, P4056880107329571586.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P1870791296721402832

`A007910(a(A064722(n)))` with `a(0)=0, a(1)=0`
-/

namespace A175078.P1870791296721402832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A007910 (a (A064722 n).toNat).toNat

end

end A175078.P1870791296721402832

namespace A175078

/-- `A007910(a(A064722(n)))` -/
def P1870791296721402832.Spec : Prop :=
  ∀ n, P1870791296721402832.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P5591948680095935701

`A055248(a(A064722(n))²)` with `a(0)=0, a(1)=0`
-/

namespace A175078.P5591948680095935701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A055248 (a (A064722 n).toNat ^ 2).toNat

end

end A175078.P5591948680095935701

namespace A175078

/-- `A055248(a(A064722(n))²)` -/
def P5591948680095935701.Spec : Prop :=
  ∀ n, P5591948680095935701.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P5779394744198674375

`A018142(a(A064722(n)))%n` with `a(0)=0`
-/

namespace A175078.P5779394744198674375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A018142 (a (A064722 n).toNat).toNat) (n : ℤ)

end

end A175078.P5779394744198674375

namespace A175078

/-- `A018142(a(A064722(n)))%n` -/
def P5779394744198674375.Spec : Prop :=
  ∀ n, P5779394744198674375.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P10618309899490854042

`A000005(3^a(A064722(n)))` with `a(0)=0, a(1)=0`
-/

namespace A175078.P10618309899490854042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (a (A064722 n).toNat : ℤ))).toNat

end

end A175078.P10618309899490854042

namespace A175078

/-- `A000005(3^a(A064722(n)))` -/
def P10618309899490854042.Spec : Prop :=
  ∀ n, P10618309899490854042.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P18340796043950359089

`A200272(3^a(A064722(n)))` with `a(0)=0, a(1)=0`
-/

namespace A175078.P18340796043950359089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A200272 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (a (A064722 n).toNat : ℤ))).toNat

end

end A175078.P18340796043950359089

namespace A175078

/-- `A200272(3^a(A064722(n)))` -/
def P18340796043950359089.Spec : Prop :=
  ∀ n, P18340796043950359089.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P8171460279259331826

`∑{p}[A008578(n+1), A121561(n-A121561(#+1)+1)]`
-/

namespace A175078.P8171460279259331826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A121561 ((n : ℤ) - A121561 (p + 1) + 1).toNat

end

end A175078.P8171460279259331826

namespace A175078

/-- `∑{p}[A008578(n+1), A121561(n-A121561(#+1)+1)]` -/
def P8171460279259331826.Spec : Prop :=
  ∀ n, P8171460279259331826.a n = A175078 (n + 1)

end A175078

/-! ## A175078.P2835231567762481953

`dr(A121561(A123108(2*n)))`
-/

namespace A175078.P2835231567762481953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A121561 (A123108 (2 * n)).toNat)

end

end A175078.P2835231567762481953

namespace A175078

/-- `dr(A121561(A123108(2*n)))` -/
def P2835231567762481953.Spec : Prop :=
  ∀ n, (P2835231567762481953.a n : ℤ) = A175078 (n + 1)

end A175078

/-! ## A175078.P10048768303021984471

`A072491(1-A175077(n+1)+n)`
-/

namespace A175078.P10048768303021984471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (1 - A175077 (n + 1) + (n : ℤ)).toNat

end

end A175078.P10048768303021984471

namespace A175078

/-- `A072491(1-A175077(n+1)+n)` -/
def P10048768303021984471.Spec : Prop :=
  ∀ n, P10048768303021984471.a n = A175078 (n + 1)

end A175078

/-!
# A175079: The smallest natural numbers m with first occurrence 0, 1, 2, 3, ... for number of steps of iterations of {r mod (max prime p < r)} needed to reach 1 or 2 starting at r = m.

The programs for A175079, there is no canonical definition to state claims against.
-/

/-! ## A175079.P9900779666939591827

`A075741(a(n-1))` with `a(0)=1`
-/

namespace A175079.P9900779666939591827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075741 (a (n - 1)).toNat

end

end A175079.P9900779666939591827

/-!
# A175081: Values taken by the sum of perfect divisors of n (A175067) sorted into ascending order.

The programs for A175081, there is no canonical definition to state claims against.
-/

/-! ## A175081.P4946896520904033371

`A001221(A299040(n+2))+round(1/acot(n))`
-/

namespace A175081.P4946896520904033371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299040 (n + 2)).toNat + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

end

end A175081.P4946896520904033371

/-! ## A175081.P9479415576579157686

`A028310(n)+A001221(A299040(n+2))`
-/

namespace A175081.P9479415576579157686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A001221 (A299040 (n + 2)).toNat

end

end A175081.P9479415576579157686

/-! ## A175081.P10673672586924380491

`A065033(2*n)+A001221(A299040(n+2))`
-/

namespace A175081.P10673672586924380491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + A001221 (A299040 (n + 2)).toNat

end

end A175081.P10673672586924380491

/-! ## A175081.P2772923465028850632

`A001221(A299040(n+2))+A000005(A011782(n))`
-/

namespace A175081.P2772923465028850632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A299040 (n + 2)).toNat + A000005 (A011782 n).toNat

end

end A175081.P2772923465028850632

/-!
# A175082: Possible values for sum of perfect divisors of n.

The programs for A175082, the canonical program `A175082.P4067203835093049919` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175082 has offset 1).

The definition of A175082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175082.P5243560170696457083

`record[A052410(n+1)]`
-/

namespace A175082.P5243560170696457083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175082.P5243560170696457083

namespace A175082

/-- `record[A052410(n+1)]` -/
def P5243560170696457083.Spec : Prop :=
  ∀ n, P5243560170696457083.a n = A175082 (n + 1)

end A175082

/-! ## A175082.P8065455629248611267

`∪[A007916(n+1), A000605(n)]`
-/

namespace A175082.P8065455629248611267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P8065455629248611267

namespace A175082

/-- `∪[A007916(n+1), A000605(n)]` -/
def P8065455629248611267.Spec : Prop :=
  ∀ n, (P8065455629248611267.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P4067203835093049919

`∪[A007916(n+1), A001287(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A175082

/-- `∪[A007916(n+1), A001287(n)]` -/
def P4067203835093049919.Spec : Prop :=
  ∀ n, (P4067203835093049919.a n : ℤ) = A175082 (n + 1)

theorem P4067203835093049919.correct : P4067203835093049919.Spec := by
  intro n
  simp only [A175082, Nat.add_sub_cancel]

end A175082

/-! ## A175082.P3910255357128293160

`∪[A007916(n+1), A001288(n)]`
-/

namespace A175082.P3910255357128293160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P3910255357128293160

namespace A175082

/-- `∪[A007916(n+1), A001288(n)]` -/
def P3910255357128293160.Spec : Prop :=
  ∀ n, (P3910255357128293160.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P11874940439690495452

`∪[A007916(n+1), A001386(n)]`
-/

namespace A175082.P11874940439690495452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P11874940439690495452

namespace A175082

/-- `∪[A007916(n+1), A001386(n)]` -/
def P11874940439690495452.Spec : Prop :=
  ∀ n, (P11874940439690495452.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P5073054141593647453

`∪[A007916(n+1), A001496(n)]`
-/

namespace A175082.P5073054141593647453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P5073054141593647453

namespace A175082

/-- `∪[A007916(n+1), A001496(n)]` -/
def P5073054141593647453.Spec : Prop :=
  ∀ n, (P5073054141593647453.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P9974562737544961246

`∪[A007916(n+1), A001779(n)]`
-/

namespace A175082.P9974562737544961246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P9974562737544961246

namespace A175082

/-- `∪[A007916(n+1), A001779(n)]` -/
def P9974562737544961246.Spec : Prop :=
  ∀ n, (P9974562737544961246.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P17999179530243036161

`∪[A007916(n+1), A001808(n)]`
-/

namespace A175082.P17999179530243036161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P17999179530243036161

namespace A175082

/-- `∪[A007916(n+1), A001808(n)]` -/
def P17999179530243036161.Spec : Prop :=
  ∀ n, (P17999179530243036161.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P11201116228094284770

`∪[A007916(n+1), A001847(n)]`
-/

namespace A175082.P11201116228094284770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P11201116228094284770

namespace A175082

/-- `∪[A007916(n+1), A001847(n)]` -/
def P11201116228094284770.Spec : Prop :=
  ∀ n, (P11201116228094284770.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P613648876621613525

`∪[A007916(n+1), A001848(n)]`
-/

namespace A175082.P613648876621613525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P613648876621613525

namespace A175082

/-- `∪[A007916(n+1), A001848(n)]` -/
def P613648876621613525.Spec : Prop :=
  ∀ n, (P613648876621613525.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P16076069842812596020

`∪[A007916(n+1), A001849(n)]`
-/

namespace A175082.P16076069842812596020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P16076069842812596020

namespace A175082

/-- `∪[A007916(n+1), A001849(n)]` -/
def P16076069842812596020.Spec : Prop :=
  ∀ n, (P16076069842812596020.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P3488676480318391713

`∪[A003878(n), A007916(n+1)]`
-/

namespace A175082.P3488676480318391713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175082.P3488676480318391713

namespace A175082

/-- `∪[A003878(n), A007916(n+1)]` -/
def P3488676480318391713.Spec : Prop :=
  ∀ n, (P3488676480318391713.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P286348476534717499

`record[A175781(n+1)]`
-/

namespace A175082.P286348476534717499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175082.P286348476534717499

namespace A175082

/-- `record[A175781(n+1)]` -/
def P286348476534717499.Spec : Prop :=
  ∀ n, P286348476534717499.a n = A175082 (n + 1)

end A175082

/-! ## A175082.P8518202370339253588

`record[A304491(n+1)]`
-/

namespace A175082.P8518202370339253588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175082.P8518202370339253588

namespace A175082

/-- `record[A304491(n+1)]` -/
def P8518202370339253588.Spec : Prop :=
  ∀ n, P8518202370339253588.a n = A175082 (n + 1)

end A175082

/-! ## A175082.P17713985497863625702

`record[A327501(n+1)]`
-/

namespace A175082.P17713985497863625702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175082.P17713985497863625702

namespace A175082

/-- `record[A327501(n+1)]` -/
def P17713985497863625702.Spec : Prop :=
  ∀ n, P17713985497863625702.a n = A175082 (n + 1)

end A175082

/-! ## A175082.P919156857714261800

`filter[n+1, A132350(#)]`
-/

namespace A175082.P919156857714261800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j) = 1) n)

end

end A175082.P919156857714261800

namespace A175082

/-- `filter[n+1, A132350(#)]` -/
def P919156857714261800.Spec : Prop :=
  ∀ n, (P919156857714261800.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P1713542803432992543

`record[sqrt(A073843(n+1))]`
-/

namespace A175082.P1713542803432992543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073843 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175082.P1713542803432992543

namespace A175082

/-- `record[sqrt(A073843(n+1))]` -/
def P1713542803432992543.Spec : Prop :=
  ∀ n, P1713542803432992543.a n = (A175082 (n + 1) : ℝ)

end A175082

/-! ## A175082.P3357963439300854446

`eq[A054977(n), A253641(n)]`
-/

namespace A175082.P3357963439300854446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175082.P3357963439300854446

namespace A175082

/-- `eq[A054977(n), A253641(n)]` -/
def P3357963439300854446.Spec : Prop :=
  ∀ n, (P3357963439300854446.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P2540836265860401311

`eq[A057427(n), A253641(n)]`
-/

namespace A175082.P2540836265860401311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175082.P2540836265860401311

namespace A175082

/-- `eq[A057427(n), A253641(n)]` -/
def P2540836265860401311.Spec : Prop :=
  ∀ n, (P2540836265860401311.a n : ℤ) = A175082 (n + 1)

end A175082

/-! ## A175082.P1454483637754592641

`eq[A158388(n), A253641(n)]`
-/

namespace A175082.P1454483637754592641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175082.P1454483637754592641

namespace A175082

/-- `eq[A158388(n), A253641(n)]` -/
def P1454483637754592641.Spec : Prop :=
  ∀ n, (P1454483637754592641.a n : ℤ) = A175082 (n + 1)

end A175082

/-!
# A175083: Number of numbers whose sum of perfect divisors is equal to n.

The programs for A175083, there is no canonical definition to state claims against.
-/

/-! ## A175083.P1544427257929498381

`A134451(A118977(A080367(n+1)^A073610(n+1)))`
-/

namespace A175083.P1544427257929498381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A118977 (SequenceMachineLib.roundAway ((A080367 (n + 1) : ℚ) ^ (A073610 (n + 1) : ℤ))).toNat).toNat

end

end A175083.P1544427257929498381

/-! ## A175083.P1813886793008578615

`A344858(A048671(n+1)^A032741(n))`
-/

namespace A175083.P1813886793008578615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 (SequenceMachineLib.roundAway ((A048671 (n + 1) : ℚ) ^ (A032741 n : ℤ))).toNat

end

end A175083.P1813886793008578615

/-! ## A175083.P12580011931666053784

`A354579(A050326(n+1)*A371186(n+2))`
-/

namespace A175083.P12580011931666053784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A050326 (n + 1) * A371186 (n + 2)).toNat

end

end A175083.P12580011931666053784

/-! ## A175083.P1951974072343340923

`A067694(A345371(n+1)^A098235(A100826(n+1)))`
-/

namespace A175083.P1951974072343340923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (SequenceMachineLib.roundAway ((A345371 (n + 1) : ℚ) ^ (A098235 (A100826 (n + 1)).toNat : ℤ))).toNat

end

end A175083.P1951974072343340923

/-! ## A175083.P12889861897067452310

`A332040(floor(Δ[(ϕ*n)²])²)+A332040(n+1)`
-/

namespace A175083.P12889861897067452310
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332040 (⌊f1 (n + 1) - f1 n⌋ ^ 2).toNat + A332040 (n + 1)

end

end A175083.P12889861897067452310

/-!
# A175084: Possible values for product of perfect divisors of n.

The programs for A175084, there is no canonical definition to state claims against.
-/

/-! ## A175084.P1677938749629654877

`comp[(a(round(n/3))+n)²]` with `a(0)=32, a(1)=-1, a(2)=0`
-/

namespace A175084.P1677938749629654877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [32, -1, 0] fun n f1 =>
  (f1 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + (n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175084.P1677938749629654877

/-! ## A175084.P8546556894231725354

`comp[xor(1, n)²*∑{p}[n+1, gcd(n, #)]]`
-/

namespace A175084.P8546556894231725354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175084.P8546556894231725354

/-! ## A175084.P2871393529991588865

`comp[round(((n+1)^3-1)/∏{p}[n+1, #])]`
-/

namespace A175084.P2871393529991588865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) ^ 3 : ℤ) - 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175084.P2871393529991588865

/-! ## A175084.P6837003987997420820

`comp[round(2*(n/3+1))²*(n-1)^(n%2)]`
-/

namespace A175084.P6837003987997420820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3 + 1)) ^ 2 * ((n : ℤ) - 1) ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175084.P6837003987997420820

/-! ## A175084.P8770545137679947838

`comp[∑{e}[2^n, A175085(#)]]`
-/

namespace A175084.P8770545137679947838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A175085 (Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175084.P8770545137679947838

/-! ## A175084.P6005115117352061243

`eq[1, A175087(n+1)]+1`
-/

namespace A175084.P6005115117352061243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175084.P6005115117352061243

/-! ## A175084.P13163967391794157960

`comp[(n+1)²*A000045(∑{e}[n+1, val((2*#)!, 2)])]`
-/

namespace A175084.P13163967391794157960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000045 (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f2 n) p)) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175084.P13163967391794157960

/-!
# A175085: Numbers m such that product of perfect divisors of x = m has no solution.

The programs for A175085, there is no canonical definition to state claims against.
-/

/-! ## A175085.P5076619536702025421

`eq[0, A175087(n+1)]+1`
-/

namespace A175085.P5076619536702025421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175085.P5076619536702025421

/-! ## A175085.P4605964599702285364

`eq[0, A175087(A028310(n))]`
-/

namespace A175085.P4605964599702285364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175085.P4605964599702285364

/-! ## A175085.P5189526133709405141

`eq[0, A051444(A253641(n))]`
-/

namespace A175085.P5189526133709405141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175085.P5189526133709405141

/-! ## A175085.P2764994049216935155

`A020725(eq[0, A175087(n+1)])`
-/

namespace A175085.P2764994049216935155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A175085.P2764994049216935155

/-! ## A175085.P306681275189954330

`eq[0, A175087(A233583(n+1))]`
-/

namespace A175085.P306681275189954330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175087 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175085.P306681275189954330

/-!
# A175086: Perfect powers m such that product of perfect divisors of x = m has solution.

The programs for A175086, there is no canonical definition to state claims against.
-/

/-! ## A175086.P13219323249558867531

`A036966(A275804(n+1))`
-/

namespace A175086.P13219323249558867531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A275804 (n + 1)).toNat

end

end A175086.P13219323249558867531

/-! ## A175086.P3402510371857990965

`A036966(A141825(n+2))`
-/

namespace A175086.P3402510371857990965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (A141825 (n + 2)).toNat

end

end A175086.P3402510371857990965

/-! ## A175086.P15760507483726493370

`A076467(∑[A279497(n+1)])`
-/

namespace A175086.P15760507483726493370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175086.P15760507483726493370

/-! ## A175086.P15996414023616016617

`A076467(∑[A106035(2*n)])`
-/

namespace A175086.P15996414023616016617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106035 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175086.P15996414023616016617

/-! ## A175086.P489108557764645242

`A076467(A356734(n+1)-1)`
-/

namespace A175086.P489108557764645242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (A356734 (n + 1) - 1).toNat

end

end A175086.P489108557764645242

/-!
# A175087: Number of numbers whose product of perfect divisors is equal to n.

The programs for A175087, there is no canonical definition to state claims against.
-/

/-! ## A175087.P5568904441371428602

`A276837(A052409(n+1))^A139013(n+1)`
-/

namespace A175087.P5568904441371428602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276837 (A052409 (n + 1)).toNat : ℚ) ^ (A139013 (n + 1) : ℤ)

end

end A175087.P5568904441371428602

/-! ## A175087.P14305191031343184844

`ceil(A180279(A052409(n+1)+1)/A346360(n+1))`
-/

namespace A175087.P14305191031343184844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180279 (A052409 (n + 1) + 1).toNat : ℚ) / (A346360 (n + 1) : ℚ)⌉

end

end A175087.P14305191031343184844

/-! ## A175087.P1078219934173991952

`A243081(A052409(n+1))^A259642(n+1)`
-/

namespace A175087.P1078219934173991952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243081 (A052409 (n + 1)).toNat : ℚ) ^ (A259642 (n + 1) : ℤ)

end

end A175087.P1078219934173991952

/-! ## A175087.P5641464674654170534

`A243081(A052409(n+1))^A252053(n+1)`
-/

namespace A175087.P5641464674654170534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243081 (A052409 (n + 1)).toNat : ℚ) ^ (A252053 (n + 1) : ℤ)

end

end A175087.P5641464674654170534

/-! ## A175087.P16129661035073431860

`A188068(3*∑{d}[A195507(A052409(n+1)+1), #]+1)`
-/

namespace A175087.P16129661035073431860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (A052409 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (3 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d) + 1)

end

end A175087.P16129661035073431860

/-! ## A175087.P7855280545114592168

`A000035(A079418(A295924((n+1)²))+1)`
-/

namespace A175087.P7855280545114592168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A079418 (A295924 ((n + 1) ^ 2)).toNat + 1).toNat

end

end A175087.P7855280545114592168

/-! ## A175087.P424292666319815133

`A187950(A052409(n+1)!)`
-/

namespace A175087.P424292666319815133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (Nat.factorial (A052409 (n + 1)).toNat)

end

end A175087.P424292666319815133

/-! ## A175087.P11984061352579283225

`A135830(lcm(7, A253641(n+1)))`
-/

namespace A175087.P11984061352579283225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135830 (Int.lcm 7 (A253641 (n + 1)))

end

end A175087.P11984061352579283225

/-! ## A175087.P7248889709710880451

`A286055(∏{e}[n+1, A286055(#+1)+A000005(n+1)]+1)`
-/

namespace A175087.P7248889709710880451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (∏ p ∈ Nat.primeFactors (f1 n), (A286055 (Nat.factorization (f1 n) p + 1) + A000005 (n + 1)) + 1).toNat

end

end A175087.P7248889709710880451

/-! ## A175087.P11045935018157273641

`A144074(A052409(n+1)%A198277(n))`
-/

namespace A175087.P11045935018157273641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (Int.tmod (A052409 (n + 1)) (A198277 n)).toNat

end

end A175087.P11045935018157273641

/-! ## A175087.P4709606174522162614

`A350529(A052409(n+1))+A073424(A051644(n+1))`
-/

namespace A175087.P4709606174522162614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 (A052409 (n + 1)).toNat + A073424 (A051644 (n + 1)).toNat

end

end A175087.P4709606174522162614

/-!
# A175088: Numbers m with result 1 under iterations of {r mod (max prime p <= r)} starting at r = m.

The programs for A175088, there is no canonical definition to state claims against.
-/

/-! ## A175088.P5556913760932953123

`eq[1, A007924(n)%2]`
-/

namespace A175088.P5556913760932953123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007924 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175088.P5556913760932953123

/-! ## A175088.P14489709774428727984

`filter[n+1, A121559(#)]`
-/

namespace A175088.P14489709774428727984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121559 (f1 j) = 1) n)

end

end A175088.P14489709774428727984

/-! ## A175088.P14137763592225157044

`lt[0, A121559(n+1)]+1`
-/

namespace A175088.P14137763592225157044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175088.P14137763592225157044

/-! ## A175088.P807519424033051657

`eq[0, abs(a(A064722(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A175088.P807519424033051657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (A064722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175088.P807519424033051657

/-! ## A175088.P17147957604179850771

`comp[val(A200947(n)+1, 2)+n]`
-/

namespace A175088.P17147957604179850771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A200947 n + 1).toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A175088.P17147957604179850771

/-! ## A175088.P18319122547352045212

`a(n-1)+A121560(n)+1` with `a(0)=1`
-/

namespace A175088.P18319122547352045212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A121560 n + 1)

end

end A175088.P18319122547352045212

/-! ## A175088.P1657014857673187165

`eq[0, A000045(a(A064722(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A175088.P1657014857673187165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A000045 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175088.P1657014857673187165

/-! ## A175088.P11367624490536261330

`eq[1, A000032(a(A064722(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A175088.P11367624490536261330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A000032 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175088.P11367624490536261330

/-! ## A175088.P10007049217414153823

`eq[1, A000005(a(A064722(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A175088.P10007049217414153823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000005 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175088.P10007049217414153823

/-! ## A175088.P18175897573815408253

`eq[1, A000041(a(A064722(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A175088.P18175897573815408253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000041 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175088.P18175897573815408253

/-!
# A175089: Numbers m with result 0 under iterations of {r mod (max prime p <= r)} starting at r = m.

The programs for A175089, there is no canonical definition to state claims against.
-/

/-! ## A175089.P8123585391968258531

`A175071(n+2)-1`
-/

namespace A175089.P8123585391968258531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175071 (n + 2) - 1

end

end A175089.P8123585391968258531

/-! ## A175089.P1543177295096032429

`eq[2, gcd(6, A007924(n))]`
-/

namespace A175089.P1543177295096032429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A007924 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175089.P1543177295096032429

/-! ## A175089.P13056703064048233731

`lt[Δ[A072491(n)], 1]+1`
-/

namespace A175089.P13056703064048233731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A175089.P13056703064048233731

/-! ## A175089.P9591688537942788026

`∑[abs(Δ[A175071(n+1)])]`
-/

namespace A175089.P9591688537942788026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175089.P9591688537942788026

/-! ## A175089.P1555833512118365366

`lt[A175077(n+1), atan(n)]`
-/

namespace A175089.P1555833512118365366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A175089.P1555833512118365366

/-! ## A175089.P4347187285386053514

`eq[0, A121559(n+1)]+1`
-/

namespace A175089.P4347187285386053514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175089.P4347187285386053514

/-! ## A175089.P18017642346868223609

`eq[1, A175077(n+2)]+1`
-/

namespace A175089.P18017642346868223609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175089.P18017642346868223609

/-! ## A175089.P6151870637388138391

`eq[1, a(A064722(n))!]` with `a(0)=0, a(1)=2`
-/

namespace A175089.P6151870637388138391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  Nat.factorial (f2 (A064722 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175089.P6151870637388138391

/-! ## A175089.P5350397664391653747

`A023443(A175071(n+2))`
-/

namespace A175089.P5350397664391653747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175071 (n + 2)).toNat

end

end A175089.P5350397664391653747

/-! ## A175089.P4541007612527345598

`eq[A054977(n), A175077(n+1)]`
-/

namespace A175089.P4541007612527345598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175089.P4541007612527345598

/-!
# A175090: Composites c with result 0 under iterations of {r mod (max prime p <= r)} starting at r = c.

The programs for A175090, the canonical program `A175090.P1060197383972460167` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175090 has offset 1).

The definition of A175090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175090.P1060197383972460167

`eq[or(2, A175078(n+1)), A072491(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A175090

/-- `eq[or(2, A175078(n+1)), A072491(n)]` -/
def P1060197383972460167.Spec : Prop :=
  ∀ n, (P1060197383972460167.a n : ℤ) = A175090 (n + 1)

theorem P1060197383972460167.correct : P1060197383972460167.Spec := by
  intro n
  simp only [A175090, Nat.add_sub_cancel]

end A175090

/-! ## A175090.P12032029678590956570

`eq[1, A000010(a(A064722(n)))]` with `a(0)=6, a(1)=45`
-/

namespace A175090.P12032029678590956570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 45] fun n f2 =>
  A000010 (f2 (A064722 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175090.P12032029678590956570

namespace A175090

/-- `eq[1, A000010(a(A064722(n)))]` -/
def P12032029678590956570.Spec : Prop :=
  ∀ n, (P12032029678590956570.a n : ℤ) = A175090 (n + 1)

end A175090

/-! ## A175090.P12595162333843870980

`eq[A010051(n+1), A121559(n+1)]+1`
-/

namespace A175090.P12595162333843870980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175090.P12595162333843870980

namespace A175090

/-- `eq[A010051(n+1), A121559(n+1)]+1` -/
def P12595162333843870980.Spec : Prop :=
  ∀ n, (P12595162333843870980.a n : ℤ) = A175090 (n + 1)

end A175090

/-! ## A175090.P3284438622399422719

`eq[A049084(n+1), A121559(n+1)]+1`
-/

namespace A175090.P3284438622399422719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175090.P3284438622399422719

namespace A175090

/-- `eq[A049084(n+1), A121559(n+1)]+1` -/
def P3284438622399422719.Spec : Prop :=
  ∀ n, (P3284438622399422719.a n : ℤ) = A175090 (n + 1)

end A175090

/-! ## A175090.P12050498652922547163

`A181569(eq[A010051(n+1), A121559(n+1)])`
-/

namespace A175090.P12050498652922547163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175090.P12050498652922547163

namespace A175090

/-- `A181569(eq[A010051(n+1), A121559(n+1)])` -/
def P12050498652922547163.Spec : Prop :=
  ∀ n, P12050498652922547163.a n = A175090 (n + 1)

end A175090

/-! ## A175090.P3889088819238092634

`A181569(eq[A049084(n+1), A121559(n+1)])`
-/

namespace A175090.P3889088819238092634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A175090.P3889088819238092634

namespace A175090

/-- `A181569(eq[A049084(n+1), A121559(n+1)])` -/
def P3889088819238092634.Spec : Prop :=
  ∀ n, P3889088819238092634.a n = A175090 (n + 1)

end A175090

/-! ## A175090.P9417398309435217576

`eq[A121559(A233583(n+1)), A339579(n+1)]`
-/

namespace A175090.P9417398309435217576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121559 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175090.P9417398309435217576

namespace A175090

/-- `eq[A121559(A233583(n+1)), A339579(n+1)]` -/
def P9417398309435217576.Spec : Prop :=
  ∀ n, (P9417398309435217576.a n : ℤ) = A175090 (n + 1)

end A175090

/-!
# A175092: 1 and the nonsquares in A167761, sorted to natural order.

The programs for A175092, there is no canonical definition to state claims against.
-/

/-! ## A175092.P2514521218544686715

`comp[A062602(3*n+2)^gcd(2, n)]`
-/

namespace A175092.P2514521218544686715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (3 * n + 2) ^ Nat.gcd 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175092.P2514521218544686715

/-! ## A175092.P16480823260857133121

`comp[A000720(2*n+1)^((n²+1)%3)]`
-/

namespace A175092.P16480823260857133121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) ^ ((n ^ 2 + 1) % 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175092.P16480823260857133121

/-! ## A175092.P9331228758906159529

`eq[A054541(n+1), A169695(n)]`
-/

namespace A175092.P9331228758906159529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175092.P9331228758906159529

/-! ## A175092.P9795095566931387590

`eq[A125266(n+1), A169695(n)]`
-/

namespace A175092.P9795095566931387590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175092.P9795095566931387590

/-! ## A175092.P11575510644396707075

`eq[A237260(n+1), A267635(n)]`
-/

namespace A175092.P11575510644396707075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175092.P11575510644396707075

/-! ## A175092.P11707875640230562273

`eq[A244797(n+1), A267635(n)]`
-/

namespace A175092.P11707875640230562273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175092.P11707875640230562273

/-!
# A175093: a(1) = 1, a(2) = 2, for n >= 3, a(n) = smallest prime > a(n-1) such that a(n) mod a(n-1) = a(n-2).

The programs for A175093, there is no canonical definition to state claims against.
-/

/-! ## A175093.P15139250792053784045

`A072999((n-1)%a(n-1))` with `a(0)=1`
-/

namespace A175093.P15139250792053784045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072999 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A175093.P15139250792053784045

/-! ## A175093.P5259842129299888325

`A072999(n-floor(atan(2*a(n-1))))` with `a(0)=1`
-/

namespace A175093.P5259842129299888325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072999 ((n : ℤ) - ⌊Real.arctan (2 * a (n - 1) : ℝ)⌋).toNat

end

end A175093.P5259842129299888325

/-! ## A175093.P6761577914976016383

`A072999(n-a(A000038(n)))` with `a(0)=1`
-/

namespace A175093.P6761577914976016383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072999 ((n : ℤ) - a (A000038 n).toNat).toNat

end

end A175093.P6761577914976016383

/-! ## A175093.P4362705547938785146

`Δ[A072999(n)]%A072999(n)`
-/

namespace A175093.P4362705547938785146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A072999 n)

end

end A175093.P4362705547938785146

/-! ## A175093.P11881589949931930987

`A072999(n+1)%A072999(n)`
-/

namespace A175093.P11881589949931930987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072999 (n + 1)) (A072999 n)

end

end A175093.P11881589949931930987

/-!
# A175094: a(1) = 1, a(2) = 3, for n >= 3, a(n) = smallest prime > a(n-1) such that a(n) mod a(n-1) = a(n-2).

The programs for A175094, there is no canonical definition to state claims against.
-/

/-! ## A175094.P7068819572972790258

`A088803(A152827(n)+n)`
-/

namespace A175094.P7068819572972790258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088803 (A152827 n + (n : ℤ)).toNat

end

end A175094.P7068819572972790258

/-! ## A175094.P2312492100367058438

`A006530(Δ[A228516(n)²])`
-/

namespace A175094.P2312492100367058438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228516 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A175094.P2312492100367058438

/-!
# A175095: Integers of the form (2^j - 1)*(2^k + 1), j >= 0, k >= 0.

The programs for A175095, there is no canonical definition to state claims against.
-/

/-! ## A175095.P1046757275263812779

`lt[0, char[A319785(n)]]`
-/

namespace A175095.P1046757275263812779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175095.P1046757275263812779

/-! ## A175095.P11896941567774800532

`eq[1, char[A055944(A342126(n))]]`
-/

namespace A175095.P11896941567774800532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A342126 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175095.P11896941567774800532

/-! ## A175095.P11195594188293648976

`eq[char[A319785(n)], A057427(n+1)]`
-/

namespace A175095.P11195594188293648976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175095.P11195594188293648976

/-! ## A175095.P113716863676471661

`eq[char[A319785(n)], A006519(2*n+1)]`
-/

namespace A175095.P113716863676471661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319785 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175095.P113716863676471661

/-! ## A175095.P59491293612868577

`lt[A000035(2*(n+2)), char[A274637(n)]]`
-/

namespace A175095.P59491293612868577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274637 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175095.P59491293612868577

/-!
# A175096: Write n in binary (without leading 0's). a(n) = the number of distinct numerical values made by permutating the runs of 0's and the runs of 1's, such that the runs (of nonzero length) of 1's alternate with the runs (of nonzero length) of 0's. The permutated binary numbers (those not equal to n) may start with leading 0's.

The programs for A175096, there is no canonical definition to state claims against.
-/

/-! ## A175096.P10839863071896237210

`(n%2+1)*A161895(n+1)`
-/

namespace A175096.P10839863071896237210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A161895 (n + 1)

end

end A175096.P10839863071896237210

/-! ## A175096.P15214334771489958749

`A000034(n)*A161895(n+1)`
-/

namespace A175096.P15214334771489958749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A161895 (n + 1)

end

end A175096.P15214334771489958749

/-! ## A175096.P16904896855166873920

`sqrt(A010685(n))*A161895(n+1)`
-/

namespace A175096.P16904896855166873920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A161895 (n + 1) : ℝ)

end

end A175096.P16904896855166873920

/-! ## A175096.P782367667560188396

`Δ[A032766(n)]*A161895(n+1)`
-/

namespace A175096.P782367667560188396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A161895 (n + 1)

end

end A175096.P782367667560188396

/-! ## A175096.P11756226907605340770

`ratio[A016116(n)]*A161895(n+1)`
-/

namespace A175096.P11756226907605340770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A161895 (n + 1) : ℚ)

end

end A175096.P11756226907605340770

/-! ## A175096.P2023022283543588622

`(A000035(n)+1)*A161895(n+1)`
-/

namespace A175096.P2023022283543588622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A161895 (n + 1)

end

end A175096.P2023022283543588622

/-! ## A175096.P2544630756120839600

`A040001(n+1)*A161895(n+1)`
-/

namespace A175096.P2544630756120839600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A161895 (n + 1)

end

end A175096.P2544630756120839600

/-! ## A175096.P12457895760983872145

`A134451(n+1)*A161895(n+1)`
-/

namespace A175096.P12457895760983872145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) * A161895 (n + 1)

end

end A175096.P12457895760983872145

/-! ## A175096.P5973993913180834769

`A014709(2*n)*A161895(n+1)`
-/

namespace A175096.P5973993913180834769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (2 * n) * A161895 (n + 1)

end

end A175096.P5973993913180834769

/-! ## A175096.P7975373567194800771

`Δ[A001651(n+1)]*A161895(n+1)`
-/

namespace A175096.P7975373567194800771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A161895 (n + 1)

end

end A175096.P7975373567194800771

/-! ## A175096.P15901945750456901090

`(Δ[A008619(n)]+1)*A161895(n+1)`
-/

namespace A175096.P15901945750456901090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A161895 (n + 1)

end

end A175096.P15901945750456901090

/-! ## A175096.P6994448064712875686

`A001222((4/gcd(2, n))^A161895(n+1))`
-/

namespace A175096.P6994448064712875686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 / (Nat.gcd 2 n : ℚ)) ^ (A161895 (n + 1) : ℤ))).toNat

end

end A175096.P6994448064712875686

/-! ## A175096.P13530412764097447202

`A000010(2-(-1)^n)*A161895(n+1)`
-/

namespace A175096.P13530412764097447202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 - (-1) ^ n).toNat * A161895 (n + 1)

end

end A175096.P13530412764097447202

/-! ## A175096.P16792350949308427681

`A000041(gcd(n+3, n+1))*A161895(n+1)`
-/

namespace A175096.P16792350949308427681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd (n + 3) (n + 1)) * A161895 (n + 1)

end

end A175096.P16792350949308427681

/-! ## A175096.P698951546647244465

`A057237(A008486(n))*A161895(n+1)`
-/

namespace A175096.P698951546647244465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A008486 n).toNat * A161895 (n + 1)

end

end A175096.P698951546647244465

/-! ## A175096.P17505144606094846734

`A014963(A006519(n+1))*A161895(n+1)`
-/

namespace A175096.P17505144606094846734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A161895 (n + 1)

end

end A175096.P17505144606094846734

/-! ## A175096.P16702100024135351125

`A006530(A060632(A271060(n)))*A161895(n+1)`
-/

namespace A175096.P16702100024135351125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060632 (A271060 n).toNat).toNat * A161895 (n + 1)

end

end A175096.P16702100024135351125

/-! ## A175096.P8619836130256014661

`A006519(n²+1)*A161895(n+1)`
-/

namespace A175096.P8619836130256014661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A161895 (n + 1)

end

end A175096.P8619836130256014661

/-!
# A175097: Primes in A139013.

The programs for A175097, there is no canonical definition to state claims against.
-/

/-! ## A175097.P6566515586539199600

`p?[A139013(n+1)]`
-/

namespace A175097.P6566515586539199600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175097.P6566515586539199600

/-! ## A175097.P1596781146807049536

`p?[ceil(sqrt(A061275(n+1)/2))]`
-/

namespace A175097.P1596781146807049536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A061275 (n + 1) : ℚ) / 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175097.P1596781146807049536

/-! ## A175097.P3284233867992436874

`filter[A139013(n+1), A010051(#)]`
-/

namespace A175097.P3284233867992436874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A175097.P3284233867992436874

/-! ## A175097.P2737871879778193694

`filter[A139013(n+1), A080339(#)]`
-/

namespace A175097.P2737871879778193694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A175097.P2737871879778193694

/-!
# A175098: Number of lattice points covered at the n-th stage of the leftist toothpicks A151566.

The programs for A175098, there is no canonical definition to state claims against.
-/

/-! ## A175098.P4800556635620100910

`A127722(n+1)-A010060(A277237(n))`
-/

namespace A175098.P4800556635620100910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127722 (n + 1) - A010060 (A277237 n).toNat

end

end A175098.P4800556635620100910

/-! ## A175098.P14430634037200611062

`A172471(A331242(n+1))-A137735(n)`
-/

namespace A175098.P14430634037200611062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A331242 (n + 1)).toNat - A137735 n

end

end A175098.P14430634037200611062

/-! ## A175098.P6877177282341546362

`A257121(2*n+1)-A008683(A003116(2*n+3))`
-/

namespace A175098.P6877177282341546362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257121 (2 * n + 1) - A008683 (A003116 (2 * n + 3)).toNat

end

end A175098.P6877177282341546362

/-! ## A175098.P1176351154957829443

`A186353(n+1)-A000035(A000108(n+1))`
-/

namespace A175098.P1176351154957829443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186353 (n + 1) - A000035 (A000108 (n + 1)).toNat

end

end A175098.P1176351154957829443

/-! ## A175098.P13026282255093540999

`lt[A022998(A327545(2*n+5)), A169849(n+1)]`
-/

namespace A175098.P13026282255093540999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A327545 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175098.P13026282255093540999

/-!
# A175099: Number of closed rectangles added at the n-th stage of the leftist toothpicks A151566.

The programs for A175099, there is no canonical definition to state claims against.
-/

/-! ## A175099.P8505605144741171845

`A160018(n-char[3])`
-/

namespace A175099.P8505605144741171845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A175099.P8505605144741171845

/-! ## A175099.P681209340560644905

`xor(char[3], A160018(n))`
-/

namespace A175099.P681209340560644905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A160018 n)

end

end A175099.P681209340560644905

/-! ## A175099.P2820854117947891914

`A160018(n)-A185013(n)`
-/

namespace A175099.P2820854117947891914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 n - A185013 n

end

end A175099.P2820854117947891914

/-! ## A175099.P4637023589405127698

`A130543(n)*A160018(n)`
-/

namespace A175099.P4637023589405127698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n * A160018 n

end

end A175099.P4637023589405127698

/-! ## A175099.P7759256446635383477

`A160018(n)*A185114(n)`
-/

namespace A175099.P7759256446635383477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 n * A185114 n

end

end A175099.P7759256446635383477

/-! ## A175099.P15398823227184182961

`A160018(n)*A267537(n)`
-/

namespace A175099.P15398823227184182961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 n * A267537 n

end

end A175099.P15398823227184182961

/-! ## A175099.P4101532887824096570

`A160018(n)*A267869(n)`
-/

namespace A175099.P4101532887824096570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 n * A267869 n

end

end A175099.P4101532887824096570

/-! ## A175099.P11939170243932804738

`A160018(n)*A267870(n)`
-/

namespace A175099.P11939170243932804738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 n * A267870 n

end

end A175099.P11939170243932804738

/-! ## A175099.P12122063017107779318

`A160018(n)*A267871(n)`
-/

namespace A175099.P12122063017107779318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160018 n * A267871 n

end

end A175099.P12122063017107779318

/-! ## A175099.P12598218976698774742

`A160018(n)%A000046(n)`
-/

namespace A175099.P12598218976698774742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160018 n) (A000046 n)

end

end A175099.P12598218976698774742

/-! ## A175099.P14664950646927689945

`and(A075427(n), A160018(n))`
-/

namespace A175099.P14664950646927689945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075427 n) (A160018 n)

end

end A175099.P14664950646927689945

/-! ## A175099.P16470219786245549540

`and(A141023(n), A160018(n))`
-/

namespace A175099.P16470219786245549540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141023 n) (A160018 n)

end

end A175099.P16470219786245549540

/-! ## A175099.P15259919474112288501

`and(A160018(n), A267539(n))`
-/

namespace A175099.P15259919474112288501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A267539 n)

end

end A175099.P15259919474112288501

/-! ## A175099.P17255842148709052632

`and(A160018(n), A267880(n))`
-/

namespace A175099.P17255842148709052632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A267880 n)

end

end A175099.P17255842148709052632

/-! ## A175099.P5668830657788751970

`and(A160018(n), A283523(n))`
-/

namespace A175099.P5668830657788751970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A283523 n)

end

end A175099.P5668830657788751970

/-! ## A175099.P4836420712111127179

`and(A160018(n), A288770(n))`
-/

namespace A175099.P4836420712111127179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A288770 n)

end

end A175099.P4836420712111127179

/-! ## A175099.P1682671920089341416

`and(A160018(n), A288803(n))`
-/

namespace A175099.P1682671920089341416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A288803 n)

end

end A175099.P1682671920089341416

/-! ## A175099.P6731689588122975430

`and(A160018(n), A290682(n))`
-/

namespace A175099.P6731689588122975430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A290682 n)

end

end A175099.P6731689588122975430

/-! ## A175099.P5009109694750618041

`lcm(A106752(n+1), A160018(n))`
-/

namespace A175099.P5009109694750618041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106752 (n + 1)) (A160018 n)

end

end A175099.P5009109694750618041

/-! ## A175099.P15867884006129848197

`and(A160018(n), A172254(n+1))`
-/

namespace A175099.P15867884006129848197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160018 n) (A172254 (n + 1))

end

end A175099.P15867884006129848197

