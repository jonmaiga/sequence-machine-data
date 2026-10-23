import SequenceMachineLib
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A167601: G.f.: 1/(1-3*x-40*x^2-192*x^3).

The programs for A167601, the canonical program `A167601.P14616259265337226660` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167601 has offset 0).

The definition of A167601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167601.P14616259265337226660

`3*a(n-1)+40*a(n-2)+192*a(n-3)` with `a(0)=1, a(1)=3, a(2)=49`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167601

/-- `3*a(n-1)+40*a(n-2)+192*a(n-3)` -/
def P14616259265337226660.Spec : Prop :=
  ∀ n, (P14616259265337226660.a n : ℤ) = A167601 n

theorem P14616259265337226660.correct : P14616259265337226660.Spec := by
  intro n
  simp only [A167601]

end A167601

/-!
# A167602: Expansion of 1/(1+14*x+72*x^2+384*x^3+512*x^4).

The programs for A167602, the canonical program `A167602.P6250694960849435246` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167602 has offset 0).

The definition of A167602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+14x+72x^2+384x^3+512x^4))` (program `A167602.P6250694960849435246`, by `A167602.P6250694960849435246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167602.P6250694960849435246

`ogf(1/(1+14x+72x^2+384x^3+512x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167602

/-- `ogf(1/(1+14x+72x^2+384x^3+512x^4))` -/
def P6250694960849435246.Spec : Prop :=
  ∀ n, P6250694960849435246.a n = A167602 n

theorem P6250694960849435246.correct : P6250694960849435246.Spec := by
  intro n
  simp only [A167602]

end A167602

/-!
# A167605: Positive integers n such that the first n terms of A167604 form a permutation of the first n primes.

The programs for A167605, there is no canonical definition to state claims against.
-/

/-! ## A167605.P4141078205846179626

`∑[A350029(A332762(3*n))]`
-/

namespace A167605.P4141078205846179626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (A332762 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167605.P4141078205846179626

/-! ## A167605.P667149946829453171

`∑[A000005(A238157(3*n)^A238161(n+2))]`
-/

namespace A167605.P667149946829453171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A238157 (3 * n) : ℚ) ^ (A238161 (n + 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167605.P667149946829453171

/-!
# A167606: Number of compositions of n where each pair of adjacent parts is relatively prime.

The programs for A167606, there is no canonical definition to state claims against.
-/

/-! ## A167606.P6481653052145799191

`A316864(A000957(n))+A072810(n)`
-/

namespace A167606.P6481653052145799191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A000957 n).toNat + A072810 n

end

end A167606.P6481653052145799191

/-! ## A167606.P15293365398884204203

`or(A072810(n), A081120(A006452(n)))`
-/

namespace A167606.P15293365398884204203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072810 n) (A081120 (A006452 n).toNat)

end

end A167606.P15293365398884204203

/-! ## A167606.P5662773052060851053

`or(A045698(A129921(n)), A072810(n))`
-/

namespace A167606.P5662773052060851053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045698 (A129921 n).toNat) (A072810 n)

end

end A167606.P5662773052060851053

/-! ## A167606.P6984261402721626599

`A072810(n)+A025469(A005409(n+1))`
-/

namespace A167606.P6984261402721626599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072810 n + A025469 (A005409 (n + 1)).toNat

end

end A167606.P6984261402721626599

/-! ## A167606.P13323366899715876260

`or(A072810(n), A352366(A298971(2*n+3)))`
-/

namespace A167606.P13323366899715876260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072810 n) (A352366 (A298971 (2 * n + 3)).toNat)

end

end A167606.P13323366899715876260

/-!
# A167607: Sum of cousin prime pairs.

The programs for A167607, the canonical program `A167607.P13390879685489196630` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167607 has offset 1).

The definition of A167607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167607.P6499301465483871078

`2*A087679(n+1)`
-/

namespace A167607.P6499301465483871078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087679 (n + 1)

end

end A167607.P6499301465483871078

namespace A167607

/-- `2*A087679(n+1)` -/
def P6499301465483871078.Spec : Prop :=
  ∀ n, P6499301465483871078.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P10449328560476546551

`A165986(n+1)+4`
-/

namespace A167607.P10449328560476546551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165986 (n + 1) + 4

end

end A167607.P10449328560476546551

namespace A167607

/-- `A165986(n+1)+4` -/
def P10449328560476546551.Spec : Prop :=
  ∀ n, P10449328560476546551.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P816822445521623737

`2*(A015913(n+1)+2)`
-/

namespace A167607.P816822445521623737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A015913 (n + 1) + 2)

end

end A167607.P816822445521623737

namespace A167607

/-- `2*(A015913(n+1)+2)` -/
def P816822445521623737.Spec : Prop :=
  ∀ n, P816822445521623737.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P11625939735890164668

`2*(A046132(n+1)-2)`
-/

namespace A167607.P11625939735890164668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046132 (n + 1) - 2)

end

end A167607.P11625939735890164668

namespace A167607

/-- `2*(A046132(n+1)-2)` -/
def P11625939735890164668.Spec : Prop :=
  ∀ n, P11625939735890164668.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P4067509674722698237

`4*A088762(n+1)+2`
-/

namespace A167607.P4067509674722698237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088762 (n + 1) + 2

end

end A167607.P4067509674722698237

namespace A167607

/-- `4*A088762(n+1)+2` -/
def P4067509674722698237.Spec : Prop :=
  ∀ n, P4067509674722698237.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P10345789979757634296

`ceil(2*sqrt(A143206(n+1)))`
-/

namespace A167607.P10345789979757634296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A143206 (n + 1) : ℝ)⌉

end

end A167607.P10345789979757634296

namespace A167607

/-- `ceil(2*sqrt(A143206(n+1)))` -/
def P10345789979757634296.Spec : Prop :=
  ∀ n, P10345789979757634296.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P11186965372687840388

`2*(p?[A056772(n+1)]+2)`
-/

namespace A167607.P11186965372687840388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2)

end

end A167607.P11186965372687840388

namespace A167607

/-- `2*(p?[A056772(n+1)]+2)` -/
def P11186965372687840388.Spec : Prop :=
  ∀ n, P11186965372687840388.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P10979314890249497179

`2*(p?[A172367(n+1)]+2)`
-/

namespace A167607.P10979314890249497179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2)

end

end A167607.P10979314890249497179

namespace A167607

/-- `2*(p?[A172367(n+1)]+2)` -/
def P10979314890249497179.Spec : Prop :=
  ∀ n, P10979314890249497179.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P7460214749202044178

`2*(p?[A175221(n+1)]-2)`
-/

namespace A167607.P7460214749202044178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2)

end

end A167607.P7460214749202044178

namespace A167607

/-- `2*(p?[A175221(n+1)]-2)` -/
def P7460214749202044178.Spec : Prop :=
  ∀ n, P7460214749202044178.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P13203492010779609075

`2*(A072541(2*n+1)+1)`
-/

namespace A167607.P13203492010779609075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072541 (2 * n + 1) + 1)

end

end A167607.P13203492010779609075

namespace A167607

/-- `2*(A072541(2*n+1)+1)` -/
def P13203492010779609075.Spec : Prop :=
  ∀ n, P13203492010779609075.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P18355843311437738043

`2*(A094343(2*n+1)+2)`
-/

namespace A167607.P18355843311437738043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094343 (2 * n + 1) + 2)

end

end A167607.P18355843311437738043

namespace A167607

/-- `2*(A094343(2*n+1)+2)` -/
def P18355843311437738043.Spec : Prop :=
  ∀ n, P18355843311437738043.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P13390879685489196630

`2*(p?[A000040(n+1)+4]-2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167607

/-- `2*(p?[A000040(n+1)+4]-2)` -/
def P13390879685489196630.Spec : Prop :=
  ∀ n, P13390879685489196630.a n = A167607 (n + 1)

theorem P13390879685489196630.correct : P13390879685489196630.Spec := by
  intro n
  simp only [A167607, Nat.add_sub_cancel]

end A167607

/-! ## A167607.P18415919779173942813

`2*p?[abs(4-record[A006530(n+3)])]+4`
-/

namespace A167607.P18415919779173942813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A167607.P18415919779173942813

namespace A167607

/-- `2*p?[abs(4-record[A006530(n+3)])]+4` -/
def P18415919779173942813.Spec : Prop :=
  ∀ n, P18415919779173942813.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P16467602968709601751

`lcm(A010696(n), A087679(n+1))`
-/

namespace A167607.P16467602968709601751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A087679 (n + 1))

end

end A167607.P16467602968709601751

namespace A167607

/-- `lcm(A010696(n), A087679(n+1))` -/
def P16467602968709601751.Spec : Prop :=
  ∀ n, (P16467602968709601751.a n : ℤ) = A167607 (n + 1)

end A167607

/-! ## A167607.P3859675319109934225

`A046132(n+1)+A015913(n+1)`
-/

namespace A167607.P3859675319109934225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) + A015913 (n + 1)

end

end A167607.P3859675319109934225

namespace A167607

/-- `A046132(n+1)+A015913(n+1)` -/
def P3859675319109934225.Spec : Prop :=
  ∀ n, P3859675319109934225.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P1839650452936184801

`A046132(n+1)+A087679(n+1)-2`
-/

namespace A167607.P1839650452936184801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1) + (A087679 (n + 1) - 2)

end

end A167607.P1839650452936184801

namespace A167607

/-- `A046132(n+1)+A087679(n+1)-2` -/
def P1839650452936184801.Spec : Prop :=
  ∀ n, P1839650452936184801.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P13136176362883823919

`2*(A029708(n+1)-A053320(n+1))`
-/

namespace A167607.P13136176362883823919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029708 (n + 1) - A053320 (n + 1))

end

end A167607.P13136176362883823919

namespace A167607

/-- `2*(A029708(n+1)-A053320(n+1))` -/
def P13136176362883823919.Spec : Prop :=
  ∀ n, P13136176362883823919.a n = A167607 (n + 1)

end A167607

/-! ## A167607.P10324624529086829233

`2*∩[A040976(n+1), A048974(n+1)]`
-/

namespace A167607.P10324624529086829233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167607.P10324624529086829233

namespace A167607

/-- `2*∩[A040976(n+1), A048974(n+1)]` -/
def P10324624529086829233.Spec : Prop :=
  ∀ n, (P10324624529086829233.a n : ℤ) = A167607 (n + 1)

end A167607

/-! ## A167607.P1722023585487846940

`2*∩[A040976(n+1), A052147(n+1)]`
-/

namespace A167607.P1722023585487846940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167607.P1722023585487846940

namespace A167607

/-- `2*∩[A040976(n+1), A052147(n+1)]` -/
def P1722023585487846940.Spec : Prop :=
  ∀ n, (P1722023585487846940.a n : ℤ) = A167607 (n + 1)

end A167607

/-! ## A167607.P7755051718885326071

`A087679(n+1)+record[A087679(A054576(n+1))]`
-/

namespace A167607.P7755051718885326071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167607.P7755051718885326071

namespace A167607

/-- `A087679(n+1)+record[A087679(A054576(n+1))]` -/
def P7755051718885326071.Spec : Prop :=
  ∀ n, P7755051718885326071.a n = A167607 (n + 1)

end A167607

/-!
# A167608: Digit sum of cousin prime pairs.

The programs for A167608, there is no canonical definition to state claims against.
-/

/-! ## A167608.P17167071257237271541

`∑{digits}[A103195(n+1), #]`
-/

namespace A167608.P17167071257237271541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A167608.P17167071257237271541

/-! ## A167608.P10505657489562417939

`∑{digits}[A032609(A015913(n+1)), #]`
-/

namespace A167608.P10505657489562417939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (A015913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A167608.P10505657489562417939

/-! ## A167608.P5154999419055967815

`∑{digits}[A032609(p?[A056772(n+1)]), #]`
-/

namespace A167608.P5154999419055967815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A167608.P5154999419055967815

/-! ## A167608.P17113878977903345458

`∑{digits}[A032609(p?[A172367(n+1)]), #]`
-/

namespace A167608.P17113878977903345458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A167608.P17113878977903345458

/-! ## A167608.P11724824906671839715

`∑{digits}[A032609(p?[A282354(n+1)]), #]`
-/

namespace A167608.P11724824906671839715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282354 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A167608.P11724824906671839715

/-! ## A167608.P17574204853308703158

`A007953(A015913(n+1))+A007953(A046132(n+1))`
-/

namespace A167608.P17574204853308703158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A015913 (n + 1)).toNat + A007953 (A046132 (n + 1)).toNat

end

end A167608.P17574204853308703158

/-!
# A167609: Primes which are not the sum of two consecutive nonprimes A141468.

The programs for A167609, there is no canonical definition to state claims against.
-/

/-! ## A167609.P3703101318434860336

`A079149(A326178(n+1))`
-/

namespace A167609.P3703101318434860336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (A326178 (n + 1)).toNat

end

end A167609.P3703101318434860336

/-! ## A167609.P8930422347553417337

`∩[A040116(n+1), A079149(n+1)]`
-/

namespace A167609.P8930422347553417337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P8930422347553417337

/-! ## A167609.P8988443900484163981

`A045319(eq[1, A115766(n+1)])`
-/

namespace A167609.P8988443900484163981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167609.P8988443900484163981

/-! ## A167609.P9775390828526997634

`A045319(lt[A115766(n+1), 2])`
-/

namespace A167609.P9775390828526997634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115766 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A167609.P9775390828526997634

/-! ## A167609.P3793010219373251300

`∩[A045319(n+1), A079149(n+1)]`
-/

namespace A167609.P3793010219373251300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P3793010219373251300

/-! ## A167609.P7899353322238820159

`filter[A079149(n+1), A358847(#)]`
-/

namespace A167609.P7899353322238820159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A167609.P7899353322238820159

/-! ## A167609.P12771343644200965989

`filter[A079149(n+1), A011558(#)]`
-/

namespace A167609.P12771343644200965989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A167609.P12771343644200965989

/-! ## A167609.P11278460368056603488

`∩[A079149(n+1), A279071(n+1)]`
-/

namespace A167609.P11278460368056603488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P11278460368056603488

/-! ## A167609.P8795661409395286414

`∩[A079149(n+1), A366641(n+1)]`
-/

namespace A167609.P8795661409395286414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P8795661409395286414

/-! ## A167609.P6940013175847125407

`∩[A079149(n+1), A274546(n+1)]`
-/

namespace A167609.P6940013175847125407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P6940013175847125407

/-! ## A167609.P2547808959754013668

`p?[comp[A018252(n+1)+A018252(n+2)]]`
-/

namespace A167609.P2547808959754013668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167609.P2547808959754013668

/-! ## A167609.P8868382699239129607

`∩[A074215(n+1), A079149(n+1)]`
-/

namespace A167609.P8868382699239129607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P8868382699239129607

/-! ## A167609.P4536929665739592732

`∩[A047201(n+1), A079149(n+1)]`
-/

namespace A167609.P4536929665739592732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P4536929665739592732

/-! ## A167609.P14249479789698368383

`∩[A079149(n+1), A382744(n+1)]`
-/

namespace A167609.P14249479789698368383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P14249479789698368383

/-! ## A167609.P2917509501383937103

`∩[A079149(n+1), A183217(n+1)]`
-/

namespace A167609.P2917509501383937103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P2917509501383937103

/-! ## A167609.P7341370150678349278

`∩[A079149(n+1), A183302(n+1)]`
-/

namespace A167609.P7341370150678349278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P7341370150678349278

/-! ## A167609.P16284054966713165029

`∩[A079149(n+1), A302058(n+1)]`
-/

namespace A167609.P16284054966713165029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P16284054966713165029

/-! ## A167609.P13484433545956803163

`∩[A079149(n+1), A387644(n+1)]`
-/

namespace A167609.P13484433545956803163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P13484433545956803163

/-! ## A167609.P1769872935750884447

`∩[A079149(n+1), A388077(n+1)]`
-/

namespace A167609.P1769872935750884447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167609.P1769872935750884447

/-! ## A167609.P10048651381700247548

`record[A076605(A074399(n+1)+n+1)]`
-/

namespace A167609.P10048651381700247548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A074399 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167609.P10048651381700247548

/-!
# A167610: Primes that are the sum of three consecutive nonprimes.

The programs for A167610, there is no canonical definition to state claims against.
-/

/-! ## A167610.P5319970890490996467

`∪[A060328(n+1), A303549(n+1)]`
-/

namespace A167610.P5319970890490996467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P5319970890490996467

/-! ## A167610.P10793394435637697919

`p?[A166039(n+1)]`
-/

namespace A167610.P10793394435637697919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167610.P10793394435637697919

/-! ## A167610.P9362449510758863550

`filter[A166039(n+1), A010051(#)]`
-/

namespace A167610.P9362449510758863550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167610.P9362449510758863550

/-! ## A167610.P11041140987384027010

`filter[A166039(n+1), A323153(#)]`
-/

namespace A167610.P11041140987384027010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A167610.P11041140987384027010

/-! ## A167610.P9484201039551285653

`record[A006530(2*A166039(n+1))]`
-/

namespace A167610.P9484201039551285653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A166039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167610.P9484201039551285653

/-! ## A167610.P9163155877813807642

`record[A006530(lcm(2, A166039(n+1)))]`
-/

namespace A167610.P9163155877813807642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A166039 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167610.P9163155877813807642

/-! ## A167610.P15233749303118444607

`∩[A000040(n+1), A166039(n+1)]`
-/

namespace A167610.P15233749303118444607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P15233749303118444607

/-! ## A167610.P4649070221641710429

`∩[A001751(n+1), A166039(n+1)]`
-/

namespace A167610.P4649070221641710429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P4649070221641710429

/-! ## A167610.P10021852735735890818

`∩[A006005(n+1), A166039(n+1)]`
-/

namespace A167610.P10021852735735890818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P10021852735735890818

/-! ## A167610.P9070538989673138913

`∩[A008578(n+1), A166039(n+1)]`
-/

namespace A167610.P9070538989673138913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P9070538989673138913

/-! ## A167610.P4748168646271705955

`∩[A045344(n+1), A166039(n+1)]`
-/

namespace A167610.P4748168646271705955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P4748168646271705955

/-! ## A167610.P14798438981265608442

`∩[A046022(n+1), A166039(n+1)]`
-/

namespace A167610.P14798438981265608442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P14798438981265608442

/-! ## A167610.P9230569645134140518

`∩[A051948(n+1), A166039(n+1)]`
-/

namespace A167610.P9230569645134140518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P9230569645134140518

/-! ## A167610.P3112621953227318512

`∩[A053813(n+1), A166039(n+1)]`
-/

namespace A167610.P3112621953227318512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P3112621953227318512

/-! ## A167610.P1723206226819929843

`∩[A058363(n+1), A166039(n+1)]`
-/

namespace A167610.P1723206226819929843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P1723206226819929843

/-! ## A167610.P2369858382966381631

`∩[A065091(n+1), A166039(n+1)]`
-/

namespace A167610.P2369858382966381631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P2369858382966381631

/-! ## A167610.P264140512108959728

`∩[A066050(n+1), A166039(n+1)]`
-/

namespace A167610.P264140512108959728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P264140512108959728

/-! ## A167610.P5359523872721299866

`∩[A066542(n+1), A166039(n+1)]`
-/

namespace A167610.P5359523872721299866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P5359523872721299866

/-! ## A167610.P5870522572502359441

`∩[A067126(n+1), A166039(n+1)]`
-/

namespace A167610.P5870522572502359441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P5870522572502359441

/-! ## A167610.P15648359641931589550

`∩[A067133(n+1), A166039(n+1)]`
-/

namespace A167610.P15648359641931589550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167610.P15648359641931589550

/-!
# A167611: Nonprimes that are the sum of two consecutive nonprimes.

The programs for A167611, the canonical program `A167611.P18150780174357713727` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167611 has offset 1).

The definition of A167611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167611.P15650308843900212253

`A151740(n)%(a(n-1)+11)` with `a(0)=1`
-/

namespace A167611.P15650308843900212253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A151740 n) (a (n - 1) + 11)

end

end A167611.P15650308843900212253

namespace A167611

/-- `A151740(n)%(a(n-1)+11)` -/
def P15650308843900212253.Spec : Prop :=
  ∀ n, P15650308843900212253.a n = A167611 (n + 1)

end A167611

/-! ## A167611.P17183726867628775271

`∪[A151740(n+1), A014799(n)]`
-/

namespace A167611.P17183726867628775271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P17183726867628775271

namespace A167611

/-- `∪[A151740(n+1), A014799(n)]` -/
def P17183726867628775271.Spec : Prop :=
  ∀ n, (P17183726867628775271.a n : ℤ) = A167611 (n + 1)

end A167611

/-! ## A167611.P12771556589560360285

`∪[A151740(n+1), A016757(n)]`
-/

namespace A167611.P12771556589560360285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P12771556589560360285

namespace A167611

/-- `∪[A151740(n+1), A016757(n)]` -/
def P12771556589560360285.Spec : Prop :=
  ∀ n, (P12771556589560360285.a n : ℤ) = A167611 (n + 1)

end A167611

/-! ## A167611.P5493371625723741572

`∪[A151740(n+1), A016758(n)]`
-/

namespace A167611.P5493371625723741572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P5493371625723741572

namespace A167611

/-- `∪[A151740(n+1), A016758(n)]` -/
def P5493371625723741572.Spec : Prop :=
  ∀ n, (P5493371625723741572.a n : ℤ) = A167611 (n + 1)

end A167611

/-! ## A167611.P14754842783680357551

`∪[A151740(n+1), A016760(n)]`
-/

namespace A167611.P14754842783680357551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P14754842783680357551

namespace A167611

/-- `∪[A151740(n+1), A016760(n)]` -/
def P14754842783680357551.Spec : Prop :=
  ∀ n, (P14754842783680357551.a n : ℤ) = A167611 (n + 1)

end A167611

/-! ## A167611.P2557713118685853283

`∪[A151740(n+1), A016815(n)]`
-/

namespace A167611.P2557713118685853283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P2557713118685853283

namespace A167611

/-- `∪[A151740(n+1), A016815(n)]` -/
def P2557713118685853283.Spec : Prop :=
  ∀ n, (P2557713118685853283.a n : ℤ) = A167611 (n + 1)

end A167611

/-! ## A167611.P16016048940204022314

`∪[A151740(n+1), A016817(n)]`
-/

namespace A167611.P16016048940204022314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016817 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P16016048940204022314

namespace A167611

/-- `∪[A151740(n+1), A016817(n)]` -/
def P16016048940204022314.Spec : Prop :=
  ∀ n, (P16016048940204022314.a n : ℤ) = A167611 (n + 1)

end A167611

/-! ## A167611.P18150780174357713727

`filter[A166037(n+1), A005171(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167611

/-- `filter[A166037(n+1), A005171(#)]` -/
def P18150780174357713727.Spec : Prop :=
  ∀ n, P18150780174357713727.a n = A167611 (n + 1)

theorem P18150780174357713727.correct : P18150780174357713727.Spec := by
  intro n
  simp only [A167611, Nat.add_sub_cancel]

end A167611

/-! ## A167611.P481078491381483384

`filter[A166037(n+1), A292438(#)]`
-/

namespace A167611.P481078491381483384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A167611.P481078491381483384

namespace A167611

/-- `filter[A166037(n+1), A292438(#)]` -/
def P481078491381483384.Spec : Prop :=
  ∀ n, P481078491381483384.a n = A167611 (n + 1)

end A167611

/-! ## A167611.P14964823937038330562

`∩[A018252(n+1), A166037(n+1)]`
-/

namespace A167611.P14964823937038330562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167611.P14964823937038330562

namespace A167611

/-- `∩[A018252(n+1), A166037(n+1)]` -/
def P14964823937038330562.Spec : Prop :=
  ∀ n, (P14964823937038330562.a n : ℤ) = A167611 (n + 1)

end A167611

/-!
# A167612: Numbers k (between 2^(m-1) and 2^m) such that 2^(k-1) == 1 (mod k) and 2^(k-1-m) == k - 2^p (mod k) for some p > 0 with 2^p < k.

The programs for A167612, there is no canonical definition to state claims against.
-/

/-! ## A167612.P6500627932531490454

`p?[record[A304590(A304714(n+1))]]`
-/

namespace A167612.P6500627932531490454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304590 (A304714 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167612.P6500627932531490454

/-!
# A167614: a(n) = (n^2 + 3*n + 8)/2.

The programs for A167614, the canonical program `A167614.P16420558875026492301` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167614 has offset 1).

The definition of A167614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167614.P649610279031293706

`(n+1)*(n+4)/2+4`
-/

namespace A167614.P649610279031293706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 4) : ℚ) / 2 + 4

end

end A167614.P649610279031293706

namespace A167614

/-- `(n+1)*(n+4)/2+4` -/
def P649610279031293706.Spec : Prop :=
  ∀ n, P649610279031293706.a n = (A167614 (n + 1) : ℚ)

end A167614

/-! ## A167614.P7015627710382589755

`((n+1)²+3*(n+1)+8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167614.P7015627710382589755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 3 * (n + 1) + 8 : ℚ) / 2

end

end A167614.P7015627710382589755

namespace A167614

/-- `((n+1)²+3*(n+1)+8)/2` -/
def P7015627710382589755.Spec : Prop :=
  ∀ n, P7015627710382589755.a n = (A167614 (n + 1) : ℚ)

end A167614

/-! ## A167614.P16420558875026492301

`A152950(n+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167614

/-- `A152950(n+3)` -/
def P16420558875026492301.Spec : Prop :=
  ∀ n, P16420558875026492301.a n = A167614 (n + 1)

theorem P16420558875026492301.correct : P16420558875026492301.Spec := by
  intro n
  simp only [A167614, Nat.add_sub_cancel]

end A167614

/-! ## A167614.P9492602417233818159

`A152949(n+4)`
-/

namespace A167614.P9492602417233818159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152949 (n + 4)

end

end A167614.P9492602417233818159

namespace A167614

/-- `A152949(n+4)` -/
def P9492602417233818159.Spec : Prop :=
  ∀ n, P9492602417233818159.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P4910210967933835937

`A016028(n+5)`
-/

namespace A167614.P4910210967933835937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (n + 5)

end

end A167614.P4910210967933835937

namespace A167614

/-- `A016028(n+5)` -/
def P4910210967933835937.Spec : Prop :=
  ∀ n, P4910210967933835937.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P7923570398439764045

`abs(C(n+4, 2)-n)`
-/

namespace A167614.P7923570398439764045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 4) 2 : ℤ) - (n : ℤ)|

end

end A167614.P7923570398439764045

namespace A167614

/-- `abs(C(n+4, 2)-n)` -/
def P7923570398439764045.Spec : Prop :=
  ∀ n, P7923570398439764045.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P11944293889924872995

`record[a(n-1)+n]` with `a(0)=6, a(1)=4`
-/

namespace A167614.P11944293889924872995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 4] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167614.P11944293889924872995

namespace A167614

/-- `record[a(n-1)+n]` -/
def P11944293889924872995.Spec : Prop :=
  ∀ n, (P11944293889924872995.a n : ℤ) = A167614 (n + 1)

end A167614

/-! ## A167614.P16841305179914776037

`∑[ogf((6-9x+4x^2)/(1-2x+x^2))]`
-/

namespace A167614.P16841305179914776037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167614.P16841305179914776037

namespace A167614

/-- `∑[ogf((6-9x+4x^2)/(1-2x+x^2))]` -/
def P16841305179914776037.Spec : Prop :=
  ∀ n, P16841305179914776037.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P15046424497010587886

`ogf((6-9x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A167614.P15046424497010587886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9, 4] [1, -3, 3, -1] n

end

end A167614.P15046424497010587886

namespace A167614

/-- `ogf((6-9x+4x^2)/(1-3x+3x^2-x^3))` -/
def P15046424497010587886.Spec : Prop :=
  ∀ n, P15046424497010587886.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P9706855563200252846

`abs(a(n-1)+2+n)` with `a(0)=6`
-/

namespace A167614.P9706855563200252846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 2 + n

end

end A167614.P9706855563200252846

namespace A167614

/-- `abs(a(n-1)+2+n)` -/
def P9706855563200252846.Spec : Prop :=
  ∀ n, (P9706855563200252846.a n : ℤ) = A167614 (n + 1)

end A167614

/-! ## A167614.P1371828801577914514

`floor(a(n-1)+2+n)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A167614.P1371828801577914514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 2 + n

end

end A167614.P1371828801577914514

namespace A167614

/-- `floor(a(n-1)+2+n)` -/
def P1371828801577914514.Spec : Prop :=
  ∀ n, (P1371828801577914514.a n : ℤ) = A167614 (n + 1)

end A167614

/-! ## A167614.P9155696812792122621

`ceil(a(n-1)+2+n)` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A167614.P9155696812792122621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 2 + n

end

end A167614.P9155696812792122621

namespace A167614

/-- `ceil(a(n-1)+2+n)` -/
def P9155696812792122621.Spec : Prop :=
  ∀ n, (P9155696812792122621.a n : ℤ) = A167614 (n + 1)

end A167614

/-! ## A167614.P6681367959618218463

`round(a(n-1)+2+n)` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A167614.P6681367959618218463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 2 + n

end

end A167614.P6681367959618218463

namespace A167614

/-- `round(a(n-1)+2+n)` -/
def P6681367959618218463.Spec : Prop :=
  ∀ n, (P6681367959618218463.a n : ℤ) = A167614 (n + 1)

end A167614

/-! ## A167614.P5582597244660032859

`Δ[C(n+3, 3)+3*n]`
-/

namespace A167614.P5582597244660032859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167614.P5582597244660032859

namespace A167614

/-- `Δ[C(n+3, 3)+3*n]` -/
def P5582597244660032859.Spec : Prop :=
  ∀ n, P5582597244660032859.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P17056817757090412283

`record[C(n, 2)-2*(n-3)]`
-/

namespace A167614.P17056817757090412283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2 * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167614.P17056817757090412283

namespace A167614

/-- `record[C(n, 2)-2*(n-3)]` -/
def P17056817757090412283.Spec : Prop :=
  ∀ n, P17056817757090412283.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P6469257267173644363

`record[n-(3-a(n-1))]` with `a(0)=6`
-/

namespace A167614.P6469257267173644363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  (n : ℤ) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167614.P6469257267173644363

namespace A167614

/-- `record[n-(3-a(n-1))]` -/
def P6469257267173644363.Spec : Prop :=
  ∀ n, P6469257267173644363.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P5960195282571538795

`floor(C(n+3, 2)+ϕ+ϕ)`
-/

namespace A167614.P5960195282571538795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℝ) + Real.goldenRatio + Real.goldenRatio⌋

end

end A167614.P5960195282571538795

namespace A167614

/-- `floor(C(n+3, 2)+ϕ+ϕ)` -/
def P5960195282571538795.Spec : Prop :=
  ∀ n, P5960195282571538795.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P14605334897322484281

`round(C(n+3, 2)+ϕ+ϕ)`
-/

namespace A167614.P14605334897322484281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℝ) + Real.goldenRatio + Real.goldenRatio)

end

end A167614.P14605334897322484281

namespace A167614

/-- `round(C(n+3, 2)+ϕ+ϕ)` -/
def P14605334897322484281.Spec : Prop :=
  ∀ n, P14605334897322484281.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P12874044987608303665

`∑[2*a(n-1)-n]` with `a(0)=6, a(1)=3`
-/

namespace A167614.P12874044987608303665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 3] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167614.P12874044987608303665

namespace A167614

/-- `∑[2*a(n-1)-n]` -/
def P12874044987608303665.Spec : Prop :=
  ∀ n, P12874044987608303665.a n = A167614 (n + 1)

end A167614

/-! ## A167614.P12889608379347646681

`∑[floor(a(n-1)²/n)]` with `a(0)=6, a(1)=3`
-/

namespace A167614.P12889608379347646681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 3] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167614.P12889608379347646681

namespace A167614

/-- `∑[floor(a(n-1)²/n)]` -/
def P12889608379347646681.Spec : Prop :=
  ∀ n, P12889608379347646681.a n = A167614 (n + 1)

end A167614

/-!
# A167615: Total number of positive integers below 10^n with 4 positive squares in their representation as sum of squares.

The programs for A167615, there is no canonical definition to state claims against.
-/

/-! ## A167615.P4670423377128651841

`∑[A180347(n+1)]`
-/

namespace A167615.P4670423377128651841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167615.P4670423377128651841

/-! ## A167615.P16507761938451766286

`∑[record[A180347(A020986(n))]]`
-/

namespace A167615.P16507761938451766286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180347 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167615.P16507761938451766286

/-! ## A167615.P3314549851304578307

`∑[record[A180347(A117910(n))]]`
-/

namespace A167615.P3314549851304578307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180347 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167615.P3314549851304578307

/-! ## A167615.P4421926716560808133

`∑[record[A180347(A193739(n))]]`
-/

namespace A167615.P4421926716560808133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180347 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167615.P4421926716560808133

/-! ## A167615.P3505504423664727428

`∑[record[A180347(A344180(n))]]`
-/

namespace A167615.P3505504423664727428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180347 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167615.P3505504423664727428

/-!
# A167616: a(n) = Fibonacci(n) - 5.

The programs for A167616, the canonical program `A167616.P18293485560103443928` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167616 has offset 5).

The definition of A167616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167616.P18293485560103443928

`a(n-1)+a(n-2)+5` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167616

/-- `a(n-1)+a(n-2)+5` -/
def P18293485560103443928.Spec : Prop :=
  ∀ n, (P18293485560103443928.a n : ℤ) = A167616 (n + 5)

theorem P18293485560103443928.correct : P18293485560103443928.Spec := by
  intro n
  simp only [A167616, Nat.add_sub_cancel]

end A167616

/-! ## A167616.P17113983149799771595

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=8`
-/

namespace A167616.P17113983149799771595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A167616.P17113983149799771595

namespace A167616

/-- `2*a(n-1)-a(n-3)` -/
def P17113983149799771595.Spec : Prop :=
  ∀ n, P17113983149799771595.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P2720193003574147053

`ogf((3x+2x^2)/(1-2x+x^3))`
-/

namespace A167616.P2720193003574147053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2] [1, -2, 0, 1] n

end

end A167616.P2720193003574147053

namespace A167616

/-- `ogf((3x+2x^2)/(1-2x+x^3))` -/
def P2720193003574147053.Spec : Prop :=
  ∀ n, P2720193003574147053.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P16244329210162540306

`floor(ϕ*(a(n-1)+2))` with `a(0)=0`
-/

namespace A167616.P16244329210162540306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 2 : ℝ)⌋

end

end A167616.P16244329210162540306

namespace A167616

/-- `floor(ϕ*(a(n-1)+2))` -/
def P16244329210162540306.Spec : Prop :=
  ∀ n, P16244329210162540306.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P9857924948489256862

`round(ϕ*(a(n-1)+2))` with `a(0)=0`
-/

namespace A167616.P9857924948489256862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + 2 : ℝ))

end

end A167616.P9857924948489256862

namespace A167616

/-- `round(ϕ*(a(n-1)+2))` -/
def P9857924948489256862.Spec : Prop :=
  ∀ n, P9857924948489256862.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P3883169581133984338

`ceil(ϕ*a(n-1))+3` with `a(0)=0`
-/

namespace A167616.P3883169581133984338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 3

end

end A167616.P3883169581133984338

namespace A167616

/-- `ceil(ϕ*a(n-1))+3` -/
def P3883169581133984338.Spec : Prop :=
  ∀ n, P3883169581133984338.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P14630206276644993934

`3-floor(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A167616.P14630206276644993934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - ⌊-(Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A167616.P14630206276644993934

namespace A167616

/-- `3-floor(-(ϕ*a(n-1)))` -/
def P14630206276644993934.Spec : Prop :=
  ∀ n, P14630206276644993934.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P12161851807213674371

`3-round(-(ϕ*a(n-1)))` with `a(0)=0`
-/

namespace A167616.P12161851807213674371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A167616.P12161851807213674371

namespace A167616

/-- `3-round(-(ϕ*a(n-1)))` -/
def P12161851807213674371.Spec : Prop :=
  ∀ n, P12161851807213674371.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P18276759269201659765

`floor((a(n-1)+2)/(ϕ-1))` with `a(0)=0`
-/

namespace A167616.P18276759269201659765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + 2 : ℝ) / (Real.goldenRatio - 1)⌋

end

end A167616.P18276759269201659765

namespace A167616

/-- `floor((a(n-1)+2)/(ϕ-1))` -/
def P18276759269201659765.Spec : Prop :=
  ∀ n, P18276759269201659765.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P4602695563049133629

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=3, a(2)=8`
-/

namespace A167616.P4602695563049133629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A167616.P4602695563049133629

namespace A167616

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P4602695563049133629.Spec : Prop :=
  ∀ n, P4602695563049133629.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P2071546376672153886

`A020732(n)-4`
-/

namespace A167616.P2071546376672153886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n - 4

end

end A167616.P2071546376672153886

namespace A167616

/-- `A020732(n)-4` -/
def P2071546376672153886.Spec : Prop :=
  ∀ n, P2071546376672153886.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P17932325402182868379

`A020712(n)-5`
-/

namespace A167616.P17932325402182868379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - 5

end

end A167616.P17932325402182868379

namespace A167616

/-- `A020712(n)-5` -/
def P17932325402182868379.Spec : Prop :=
  ∀ n, P17932325402182868379.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P11089996123624827337

`A020717(n)-6`
-/

namespace A167616.P11089996123624827337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n - 6

end

end A167616.P11089996123624827337

namespace A167616

/-- `A020717(n)-6` -/
def P11089996123624827337.Spec : Prop :=
  ∀ n, P11089996123624827337.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P4820443359344891415

`A020743(n)-7`
-/

namespace A167616.P4820443359344891415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n - 7

end

end A167616.P4820443359344891415

namespace A167616

/-- `A020743(n)-7` -/
def P4820443359344891415.Spec : Prop :=
  ∀ n, P4820443359344891415.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P1940463417879765585

`∑[A020695(n)]-2`
-/

namespace A167616.P1940463417879765585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A167616.P1940463417879765585

namespace A167616

/-- `∑[A020695(n)]-2` -/
def P1940463417879765585.Spec : Prop :=
  ∀ n, P1940463417879765585.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P12490824296787753897

`record[A065220(n)]+n`
-/

namespace A167616.P12490824296787753897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A167616.P12490824296787753897

namespace A167616

/-- `record[A065220(n)]+n` -/
def P12490824296787753897.Spec : Prop :=
  ∀ n, P12490824296787753897.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P6551091366470236397

`A001911(n+2)-3`
-/

namespace A167616.P6551091366470236397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 2) - 3

end

end A167616.P6551091366470236397

namespace A167616

/-- `A001911(n+2)-3` -/
def P6551091366470236397.Spec : Prop :=
  ∀ n, P6551091366470236397.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P7994879408563528472

`A238374(2*n)-1`
-/

namespace A167616.P7994879408563528472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 (2 * n) - 1

end

end A167616.P7994879408563528472

namespace A167616

/-- `A238374(2*n)-1` -/
def P7994879408563528472.Spec : Prop :=
  ∀ n, P7994879408563528472.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P4189810411256984311

`A020701(n+1)-5`
-/

namespace A167616.P4189810411256984311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (n + 1) - 5

end

end A167616.P4189810411256984311

namespace A167616

/-- `A020701(n+1)-5` -/
def P4189810411256984311.Spec : Prop :=
  ∀ n, P4189810411256984311.a n = A167616 (n + 5)

end A167616

/-! ## A167616.P1466125489202636990

`A157728(n+5)-1`
-/

namespace A167616.P1466125489202636990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 5) - 1

end

end A167616.P1466125489202636990

namespace A167616

/-- `A157728(n+5)-1` -/
def P1466125489202636990.Spec : Prop :=
  ∀ n, P1466125489202636990.a n = A167616 (n + 5)

end A167616

/-!
# A167617: G.f.: x^2*(3+3*x+x^2) / ( (2*x+1) * (1+x) * (1+x+x^2) * (x^2-x+1) ) .

The programs for A167617, the canonical program `A167617.P352576770255971121` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167617 has offset 0).

The definition of A167617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167617.P352576770255971121

`(-1)^n*A024495(n+1)+A131531(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167617

/-- `(-1)^n*A024495(n+1)+A131531(n+2)` -/
def P352576770255971121.Spec : Prop :=
  ∀ n, P352576770255971121.a n = A167617 n

theorem P352576770255971121.correct : P352576770255971121.Spec := by
  intro n
  simp only [A167617]

end A167617

/-! ## A167617.P11805760760726109160

`A077925(n)-A049347(n)^n`
-/

namespace A167617.P11805760760726109160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - A049347 n ^ n

end

end A167617.P11805760760726109160

namespace A167617

/-- `A077925(n)-A049347(n)^n` -/
def P11805760760726109160.Spec : Prop :=
  ∀ n, P11805760760726109160.a n = A167617 n

end A167617

/-! ## A167617.P903598929504192171

`A077925(n)-and(A033999(n), A049347(n))`
-/

namespace A167617.P903598929504192171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - Int.land (A033999 n) (A049347 n)

end

end A167617.P903598929504192171

namespace A167617

/-- `A077925(n)-and(A033999(n), A049347(n))` -/
def P903598929504192171.Spec : Prop :=
  ∀ n, P903598929504192171.a n = A167617 n

end A167617

/-! ## A167617.P13765852277318430907

`A077925(n)-A008683(A001906(n+1))`
-/

namespace A167617.P13765852277318430907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - A008683 (A001906 (n + 1)).toNat

end

end A167617.P13765852277318430907

namespace A167617

/-- `A077925(n)-A008683(A001906(n+1))` -/
def P13765852277318430907.Spec : Prop :=
  ∀ n, P13765852277318430907.a n = A167617 n

end A167617

/-! ## A167617.P6445515074114485216

`A077925(n)-A008683(A135343(n))`
-/

namespace A167617.P6445515074114485216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - A008683 (A135343 n).toNat

end

end A167617.P6445515074114485216

namespace A167617

/-- `A077925(n)-A008683(A135343(n))` -/
def P6445515074114485216.Spec : Prop :=
  ∀ n, P6445515074114485216.a n = A167617 n

end A167617

/-!
# A167618: Convolution of A010054 with A052343.

The programs for A167618, there is no canonical definition to state claims against.
-/

/-! ## A167618.P5366190780553758358

`(A033761(n)+A008443(n))/2`
-/

namespace A167618.P5366190780553758358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033761 n + A008443 n : ℚ) / 2

end

end A167618.P5366190780553758358

/-! ## A167618.P12286077967202577119

`A001281(A033761(n)+A008443(n))`
-/

namespace A167618.P12286077967202577119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033761 n + A008443 n).toNat

end

end A167618.P12286077967202577119

/-! ## A167618.P13152532723317696647

`A004525(A033761(n)+A008443(n))`
-/

namespace A167618.P13152532723317696647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A033761 n + A008443 n).toNat

end

end A167618.P13152532723317696647

/-! ## A167618.P8007090233780544087

`A004526(A033761(n)+A008443(n))`
-/

namespace A167618.P8007090233780544087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A033761 n + A008443 n).toNat

end

end A167618.P8007090233780544087

/-! ## A167618.P806457965901875018

`A006370(A033761(n)+A008443(n))`
-/

namespace A167618.P806457965901875018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A033761 n + A008443 n).toNat

end

end A167618.P806457965901875018

/-! ## A167618.P17057063627201572946

`A025480(A033761(n)+A008443(n))`
-/

namespace A167618.P17057063627201572946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A033761 n + A008443 n).toNat

end

end A167618.P17057063627201572946

/-! ## A167618.P3542058522326093615

`A026741(A033761(n)+A008443(n))`
-/

namespace A167618.P3542058522326093615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A033761 n + A008443 n).toNat

end

end A167618.P3542058522326093615

/-! ## A167618.P17153412242320687202

`abs(A001057(A033761(n)+A008443(n)))`
-/

namespace A167618.P17153412242320687202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A033761 n + A008443 n).toNat|

end

end A167618.P17153412242320687202

/-! ## A167618.P10465484591978180180

`A001057(A008443(n)+A033761(n)-1)`
-/

namespace A167618.P10465484591978180180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008443 n + (A033761 n - 1)).toNat

end

end A167618.P10465484591978180180

/-! ## A167618.P7344409073045283256

`(A008443(n)+A002325(8*(n-1)+11)/2)/2`
-/

namespace A167618.P7344409073045283256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008443 n : ℚ) + (A002325 (8 * ((n : ℤ) - 1) + 11).toNat : ℚ) / 2) / 2

end

end A167618.P7344409073045283256

/-!
# A167619: Numbers k which have nonzero digital product equal to the last digits of k.

The programs for A167619, there is no canonical definition to state claims against.
-/

/-! ## A167619.P9717727593045859840

`∩[A227510(n+1), A352464(n+1)]`
-/

namespace A167619.P9717727593045859840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167619.P9717727593045859840

/-! ## A167619.P18148543176467498854

`∩[A052382(n+1), A352464(n+1)]`
-/

namespace A167619.P18148543176467498854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167619.P18148543176467498854

/-! ## A167619.P8468179182501161169

`∩[A352464(n+1), A367733(n+1)]`
-/

namespace A167619.P8468179182501161169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167619.P8468179182501161169

/-! ## A167619.P7903463990081162706

`∩[A067251(n+1), A352464(n+1)]`
-/

namespace A167619.P7903463990081162706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167619.P7903463990081162706

/-! ## A167619.P5960508393263559764

`record[A004151(A352464(n+1))]`
-/

namespace A167619.P5960508393263559764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A352464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167619.P5960508393263559764

/-! ## A167619.P2609477276115979670

`filter[A352464(n+1), A168046(#)]`
-/

namespace A167619.P2609477276115979670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A167619.P2609477276115979670

/-! ## A167619.P16230334105436057286

`filter[A352464(n+1), A168184(#)]`
-/

namespace A167619.P16230334105436057286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A167619.P16230334105436057286

/-! ## A167619.P2611334428521610321

`∩[A342851(n+1), A352464(n+1)]`
-/

namespace A167619.P2611334428521610321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167619.P2611334428521610321

/-!
# A167620: Numbers that are multiples of their digital product, where this digital product also appears as their least significant digits.

The programs for A167620, there is no canonical definition to state claims against.
-/

/-! ## A167620.P3617594617789538571

`∩[A007602(n+1), A167619(n+1)]`
-/

namespace A167620.P3617594617789538571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167620.P3617594617789538571

/-! ## A167620.P15164063237394753857

`∩[A167619(n+1), A288069(n+1)*A360075(n+1)]`
-/

namespace A167620.P15164063237394753857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (n + 1) * A360075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167620.P15164063237394753857

/-! ## A167620.P4496269072608071455

`∩[A055471(n+1), A167619(n+1)]`
-/

namespace A167620.P4496269072608071455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167620.P4496269072608071455

/-! ## A167620.P15609483182445848069

`∩[A007602(n+1), A352464(n+1)]`
-/

namespace A167620.P15609483182445848069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167620.P15609483182445848069

/-! ## A167620.P2229876969080952322

`record[A360073(A167619(n+1))]`
-/

namespace A167620.P2229876969080952322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360073 (A167619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167620.P2229876969080952322

/-!
# A167621: Numbers whose Spanish names begin with a vowel.

The programs for A167621, there is no canonical definition to state claims against.
-/

/-! ## A167621.P8099430370343149920

`lt[A000040(n+1), A117816(A161377(n))]`
-/

namespace A167621.P8099430370343149920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (A161377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167621.P8099430370343149920

/-! ## A167621.P9672488061720560119

`77%(A061978(2*n+1)+1)+n`
-/

namespace A167621.P9672488061720560119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 77 (A061978 (2 * n + 1) + 1) + (n : ℤ)

end

end A167621.P9672488061720560119

/-! ## A167621.P10314981327691837434

`record[A289287(n+1)]-A067441(n+1)`
-/

namespace A167621.P10314981327691837434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A067441 (n + 1)

end

end A167621.P10314981327691837434

/-! ## A167621.P13396830330646485146

`A037378(n+1)-A109004(A051667(n))`
-/

namespace A167621.P13396830330646485146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037378 (n + 1) - A109004 (A051667 n).toNat

end

end A167621.P13396830330646485146

/-! ## A167621.P8668491636184699107

`∑[gcd(A247688(n+1), A259487(2*(n+1)))]`
-/

namespace A167621.P8668491636184699107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247688 (n + 1)) (A259487 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167621.P8668491636184699107

/-!
# A167622: a(n) = n^3 mod n-th prime.

The programs for A167622, the canonical program `A167622.P16334936875259400761` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167622 has offset 1).

The definition of A167622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167622.P15874041462598623743

`((n+1)^3)%Δ[A007504(n)]`
-/

namespace A167622.P15874041462598623743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 3 : ℤ) (f1 (n + 1) - f1 n)

end

end A167622.P15874041462598623743

namespace A167622

/-- `((n+1)^3)%Δ[A007504(n)]` -/
def P15874041462598623743.Spec : Prop :=
  ∀ n, P15874041462598623743.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P16334936875259400761

`∑[A003215(n)]%A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167622

/-- `∑[A003215(n)]%A000040(n+1)` -/
def P16334936875259400761.Spec : Prop :=
  ∀ n, P16334936875259400761.a n = A167622 (n + 1)

theorem P16334936875259400761.correct : P16334936875259400761.Spec := by
  intro n
  simp only [A167622, Nat.add_sub_cancel]

end A167622

/-! ## A167622.P268941591311349476

`A089620(n+1)%Δ[A022837(n)]`
-/

namespace A167622.P268941591311349476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089620 (n + 1)) (f1 (n + 1) - f1 n)

end

end A167622.P268941591311349476

namespace A167622

/-- `A089620(n+1)%Δ[A022837(n)]` -/
def P268941591311349476.Spec : Prop :=
  ∀ n, P268941591311349476.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P17575346967141432022

`A000578(n+1)%A000040(n+1)`
-/

namespace A167622.P17575346967141432022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (n + 1)) (A000040 (n + 1))

end

end A167622.P17575346967141432022

namespace A167622

/-- `A000578(n+1)%A000040(n+1)` -/
def P17575346967141432022.Spec : Prop :=
  ∀ n, P17575346967141432022.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P4366961018389410452

`A167623(n+1)%A000040(n+1)`
-/

namespace A167622.P4366961018389410452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167623 (n + 1)) (A000040 (n + 1))

end

end A167622.P4366961018389410452

namespace A167622

/-- `A167623(n+1)%A000040(n+1)` -/
def P4366961018389410452.Spec : Prop :=
  ∀ n, P4366961018389410452.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P2234390217691549434

`A068601(n+1)%A000040(n+1)+1`
-/

namespace A167622.P2234390217691549434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068601 (n + 1)) (A000040 (n + 1)) + 1

end

end A167622.P2234390217691549434

namespace A167622

/-- `A068601(n+1)%A000040(n+1)+1` -/
def P2234390217691549434.Spec : Prop :=
  ∀ n, P2234390217691549434.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P1180196252011328677

`((n+1)*(n+1)²)%A008578(n+2)`
-/

namespace A167622.P1180196252011328677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * (n + 1) ^ 2 : ℤ) (A008578 (n + 2))

end

end A167622.P1180196252011328677

namespace A167622

/-- `((n+1)*(n+1)²)%A008578(n+2)` -/
def P1180196252011328677.Spec : Prop :=
  ∀ n, P1180196252011328677.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P17484624628936417058

`Δ[A000537(n)]%A000040(n+1)`
-/

namespace A167622.P17484624628936417058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A167622.P17484624628936417058

namespace A167622

/-- `Δ[A000537(n)]%A000040(n+1)` -/
def P17484624628936417058.Spec : Prop :=
  ∀ n, P17484624628936417058.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P7958343239683628557

`∑[A077043(2*n+1)]%record[A020639(n+2)]`
-/

namespace A167622.P7958343239683628557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A167622.P7958343239683628557

namespace A167622

/-- `∑[A077043(2*n+1)]%record[A020639(n+2)]` -/
def P7958343239683628557.Spec : Prop :=
  ∀ n, P7958343239683628557.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P2750971494289679362

`A000578(A014688(n+1))%(A001748(n+1)/3)`
-/

namespace A167622.P2750971494289679362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A014688 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3))

end

end A167622.P2750971494289679362

namespace A167622

/-- `A000578(A014688(n+1))%(A001748(n+1)/3)` -/
def P2750971494289679362.Spec : Prop :=
  ∀ n, P2750971494289679362.a n = A167622 (n + 1)

end A167622

/-! ## A167622.P8881734267902297710

`A066023(n+1)%A000040(n+1)`
-/

namespace A167622.P8881734267902297710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066023 (n + 1)) (A000040 (n + 1))

end

end A167622.P8881734267902297710

namespace A167622

/-- `A066023(n+1)%A000040(n+1)` -/
def P8881734267902297710.Spec : Prop :=
  ∀ n, P8881734267902297710.a n = A167622 (n + 1)

end A167622

/-!
# A167623: a(n) = n^3 mod (n-th prime squared).

The programs for A167623, the canonical program `A167623.P17572008884092007140` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167623 has offset 1).

The definition of A167623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167623.P17572008884092007140

`((n+1)^3)%A001248(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167623

/-- `((n+1)^3)%A001248(n+1)` -/
def P17572008884092007140.Spec : Prop :=
  ∀ n, P17572008884092007140.a n = A167623 (n + 1)

theorem P17572008884092007140.correct : P17572008884092007140.Spec := by
  intro n
  simp only [A167623, Nat.add_sub_cancel]

end A167623

/-! ## A167623.P9342297917983132256

`∑[A003215(n)]%A000040(n+1)²`
-/

namespace A167623.P9342297917983132256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1) ^ 2)

end

end A167623.P9342297917983132256

namespace A167623

/-- `∑[A003215(n)]%A000040(n+1)²` -/
def P9342297917983132256.Spec : Prop :=
  ∀ n, P9342297917983132256.a n = A167623 (n + 1)

end A167623

/-! ## A167623.P6103452445239545846

`A000578(n+1)%A000040(n+1)²`
-/

namespace A167623.P6103452445239545846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (n + 1)) (A000040 (n + 1) ^ 2)

end

end A167623.P6103452445239545846

namespace A167623

/-- `A000578(n+1)%A000040(n+1)²` -/
def P6103452445239545846.Spec : Prop :=
  ∀ n, P6103452445239545846.a n = A167623 (n + 1)

end A167623

/-! ## A167623.P6521207595453938798

`1+A068601(n+1)%A001248(n+1)`
-/

namespace A167623.P6521207595453938798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A068601 (n + 1)) (A001248 (n + 1))

end

end A167623.P6521207595453938798

namespace A167623

/-- `1+A068601(n+1)%A001248(n+1)` -/
def P6521207595453938798.Spec : Prop :=
  ∀ n, P6521207595453938798.a n = A167623 (n + 1)

end A167623

/-! ## A167623.P10797206590502530554

`Δ[A000537(n)]%A000040(n+1)²`
-/

namespace A167623.P10797206590502530554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1) ^ 2)

end

end A167623.P10797206590502530554

namespace A167623

/-- `Δ[A000537(n)]%A000040(n+1)²` -/
def P10797206590502530554.Spec : Prop :=
  ∀ n, P10797206590502530554.a n = A167623 (n + 1)

end A167623

/-! ## A167623.P16168114521186281541

`∑[A077043(2*n+1)]%A000040(n+1)²`
-/

namespace A167623.P16168114521186281541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1) ^ 2)

end

end A167623.P16168114521186281541

namespace A167623

/-- `∑[A077043(2*n+1)]%A000040(n+1)²` -/
def P16168114521186281541.Spec : Prop :=
  ∀ n, P16168114521186281541.a n = A167623 (n + 1)

end A167623

/-! ## A167623.P13388939709763735691

`(A109594(3*n+2)-1)%A001248(n+1)+1`
-/

namespace A167623.P13388939709763735691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109594 (3 * n + 2) - 1) (A001248 (n + 1)) + 1

end

end A167623.P13388939709763735691

namespace A167623

/-- `(A109594(3*n+2)-1)%A001248(n+1)+1` -/
def P13388939709763735691.Spec : Prop :=
  ∀ n, P13388939709763735691.a n = A167623 (n + 1)

end A167623

/-! ## A167623.P8653391953991124052

`∑[∑[6*n]+1]%record[A093074(n+1)²]`
-/

namespace A167623.P8653391953991124052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

end

end A167623.P8653391953991124052

namespace A167623

/-- `∑[∑[6*n]+1]%record[A093074(n+1)²]` -/
def P8653391953991124052.Spec : Prop :=
  ∀ n, P8653391953991124052.a n = A167623 (n + 1)

end A167623

/-!
# A167624: a(n) = n^6 mod 32.

The programs for A167624, the canonical program `A167624.P9156131011233997012` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167624 has offset 0).

The definition of A167624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167624.P9156131011233997012

`(n^6)%32`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167624

/-- `(n^6)%32` -/
def P9156131011233997012.Spec : Prop :=
  ∀ n, (P9156131011233997012.a n : ℤ) = A167624 n

theorem P9156131011233997012.correct : P9156131011233997012.Spec := by
  intro n
  simp only [A167624]

end A167624

/-!
# A167625: Square array T(n,k), read by upward antidiagonals, counting isomorphism classes of k-regular multigraphs of order n, loops allowed.

The programs for A167625, there is no canonical definition to state claims against.
-/

/-! ## A167625.P4073842255965648453

`∑{e}[A290628(A113949(n+1)), #]`
-/

namespace A167625.P4073842255965648453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290628 (A113949 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A167625.P4073842255965648453

/-! ## A167625.P5287401856536488779

`and(A060475(n), A105150(A156953(n)))`
-/

namespace A167625.P5287401856536488779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060475 n) (A105150 (A156953 n).toNat)

end

end A167625.P5287401856536488779

/-! ## A167625.P7618977971132437446

`A001221(∑{d}[3^A113949(n+1), #])`
-/

namespace A167625.P7618977971132437446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A113949 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A167625.P7618977971132437446

/-! ## A167625.P3947654686142033073

`A001221(A000203(3^A113949(n+1)))`
-/

namespace A167625.P3947654686142033073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A113949 (n + 1) : ℤ))).toNat).toNat

end

end A167625.P3947654686142033073

/-! ## A167625.P5407022581407755263

`A354907(and(A077425(3*n+1), A266455(n+1)))`
-/

namespace A167625.P5407022581407755263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (Int.land (A077425 (3 * n + 1)) (A266455 (n + 1))).toNat

end

end A167625.P5407022581407755263

/-!
# A167626: Prime numbers ending in the prime number 101.

The programs for A167626, the canonical program `A167626.P6697217771751986165` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167626 has offset 1).

The definition of A167626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105106, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167626.P6697217771751986165

`1000*A105106(n+1)+101`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A167626

/-- `1000*A105106(n+1)+101` -/
def P6697217771751986165.Spec : Prop :=
  ∀ n, P6697217771751986165.a n = A167626 (n + 1)

theorem P6697217771751986165.correct : P6697217771751986165.Spec := by
  intro n
  simp only [A167626, Nat.add_sub_cancel]

end A167626

/-! ## A167626.P5611746847239728722

`p?[10*10*(10*n+1)+1]`
-/

namespace A167626.P5611746847239728722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * (10 * n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167626.P5611746847239728722

namespace A167626

/-- `p?[10*10*(10*n+1)+1]` -/
def P5611746847239728722.Spec : Prop :=
  ∀ n, (P5611746847239728722.a n : ℤ) = A167626 (n + 1)

end A167626

/-! ## A167626.P3020852297621778719

`∑{p}[p?[A158128(10*n+1)], #]`
-/

namespace A167626.P3020852297621778719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (10 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A167626.P3020852297621778719

namespace A167626

/-- `∑{p}[p?[A158128(10*n+1)], #]` -/
def P3020852297621778719.Spec : Prop :=
  ∀ n, (P3020852297621778719.a n : ℤ) = A167626 (n + 1)

end A167626

/-! ## A167626.P3917287481477981030

`or(1, p?[A158128(A017281(n))])`
-/

namespace A167626.P3917287481477981030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A167626.P3917287481477981030

namespace A167626

/-- `or(1, p?[A158128(A017281(n))])` -/
def P3917287481477981030.Spec : Prop :=
  ∀ n, P3917287481477981030.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P15408505007514819872

`p?[A158128(A017281(n))]%A016949(n)`
-/

namespace A167626.P15408505007514819872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016949 n)

end

end A167626.P15408505007514819872

namespace A167626

/-- `p?[A158128(A017281(n))]%A016949(n)` -/
def P15408505007514819872.Spec : Prop :=
  ∀ n, P15408505007514819872.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P9471793335261494192

`A000038(n+1)+p?[A158128(A017281(n))]`
-/

namespace A167626.P9471793335261494192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167626.P9471793335261494192

namespace A167626

/-- `A000038(n+1)+p?[A158128(A017281(n))]` -/
def P9471793335261494192.Spec : Prop :=
  ∀ n, P9471793335261494192.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P6494843102658287539

`p?[A158128(A017281(n))]+n%A028310(n)`
-/

namespace A167626.P6494843102658287539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n : ℤ) (A028310 n)

end

end A167626.P6494843102658287539

namespace A167626

/-- `p?[A158128(A017281(n))]+n%A028310(n)` -/
def P6494843102658287539.Spec : Prop :=
  ∀ n, P6494843102658287539.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P16651380396976238536

`p?[A158128(A005408(5*n))]*A057427(n+1)`
-/

namespace A167626.P16651380396976238536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A005408 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (n + 1)

end

end A167626.P16651380396976238536

namespace A167626

/-- `p?[A158128(A005408(5*n))]*A057427(n+1)` -/
def P16651380396976238536.Spec : Prop :=
  ∀ n, P16651380396976238536.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P12760630239292569025

`A008683(n+2)²!*p?[A158128(A017281(n))]`
-/

namespace A167626.P12760630239292569025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 2) ^ 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167626.P12760630239292569025

namespace A167626

/-- `A008683(n+2)²!*p?[A158128(A017281(n))]` -/
def P12760630239292569025.Spec : Prop :=
  ∀ n, P12760630239292569025.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P3405597835200217694

`A000027(p?[A158128(10*n+1)])`
-/

namespace A167626.P3405597835200217694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167626.P3405597835200217694

namespace A167626

/-- `A000027(p?[A158128(10*n+1)])` -/
def P3405597835200217694.Spec : Prop :=
  ∀ n, P3405597835200217694.a n = A167626 (n + 1)

end A167626

/-! ## A167626.P14343536983057231437

`p?[A158128(A005408(5*n))]*A001492(n²)`
-/

namespace A167626.P14343536983057231437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A005408 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001492 (n ^ 2)

end

end A167626.P14343536983057231437

namespace A167626

/-- `p?[A158128(A005408(5*n))]*A001492(n²)` -/
def P14343536983057231437.Spec : Prop :=
  ∀ n, P14343536983057231437.a n = A167626 (n + 1)

end A167626

/-!
# A167627: Prime numbers ending in the prime number 163.

The programs for A167627, the canonical program `A167627.P4832978969137311705` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167627 has offset 1).

The definition of A167627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167627.P4832978969137311705

`p?[A158128(A017293(n))-38]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167627

/-- `p?[A158128(A017293(n))-38]` -/
def P4832978969137311705.Spec : Prop :=
  ∀ n, P4832978969137311705.a n = A167627 (n + 1)

theorem P4832978969137311705.correct : P4832978969137311705.Spec := by
  intro n
  simp only [A167627, Nat.add_sub_cancel]

end A167627

/-! ## A167627.P1880478626798703946

`p?[A158128(A005408(5*n))+62]`
-/

namespace A167627.P1880478626798703946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A005408 (5 * n)).toNat + 62

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167627.P1880478626798703946

namespace A167627

/-- `p?[A158128(A005408(5*n))+62]` -/
def P1880478626798703946.Spec : Prop :=
  ∀ n, P1880478626798703946.a n = A167627 (n + 1)

end A167627

/-! ## A167627.P10146669842688328069

`p?[A017305(A139280(n+1)+A017353(n))]`
-/

namespace A167627.P10146669842688328069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A139280 (n + 1) + A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167627.P10146669842688328069

namespace A167627

/-- `p?[A017305(A139280(n+1)+A017353(n))]` -/
def P10146669842688328069.Spec : Prop :=
  ∀ n, P10146669842688328069.a n = A167627 (n + 1)

end A167627

/-! ## A167627.P542775302753543377

`p?[A056849(n+1)*A322490(A322490(n+2))]`
-/

namespace A167627.P542775302753543377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056849 (n + 1) * A322490 (A322490 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167627.P542775302753543377

namespace A167627

/-- `p?[A056849(n+1)*A322490(A322490(n+2))]` -/
def P542775302753543377.Spec : Prop :=
  ∀ n, P542775302753543377.a n = A167627 (n + 1)

end A167627

/-! ## A167627.P16373304926152376786

`p?[A019428(A004773(A053742(n)))]`
-/

namespace A167627.P16373304926152376786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A004773 (A053742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167627.P16373304926152376786

namespace A167627

/-- `p?[A019428(A004773(A053742(n)))]` -/
def P16373304926152376786.Spec : Prop :=
  ∀ n, P16373304926152376786.a n = A167627 (n + 1)

end A167627

/-!
# A167628: n^11 mod 13.

The programs for A167628, the canonical program `A167628.P17381705792500700096` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167628 has offset 0).

The definition of A167628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167628.P17381705792500700096

`(n^11)%13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167628

/-- `(n^11)%13` -/
def P17381705792500700096.Spec : Prop :=
  ∀ n, (P17381705792500700096.a n : ℤ) = A167628 n

theorem P17381705792500700096.correct : P17381705792500700096.Spec := by
  intro n
  simp only [A167628]

end A167628

/-!
# A167630: Riordan array (1/(1-x),xm(x)) where m(x) is the g.f. of Motzkin numbers A001006.

The programs for A167630, there is no canonical definition to state claims against.
-/

/-! ## A167630.P1608451213340321572

`A383609(A061579(n))`
-/

namespace A167630.P1608451213340321572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383609 (A061579 n).toNat

end

end A167630.P1608451213340321572

/-! ## A167630.P17103279519277488288

`A383609(A038722(n+2))`
-/

namespace A167630.P17103279519277488288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383609 (A038722 (n + 2)).toNat

end

end A167630.P17103279519277488288

/-! ## A167630.P4895749349416392558

`A316843(A091351(n)²+1)-1`
-/

namespace A167630.P4895749349416392558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A091351 n ^ 2 + 1).toNat - 1

end

end A167630.P4895749349416392558

/-! ## A167630.P2253003566092956571

`A055587(n)+A011731(A113081(n))`
-/

namespace A167630.P2253003566092956571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 n + A011731 (A113081 n).toNat

end

end A167630.P2253003566092956571

/-! ## A167630.P9111700718632220060

`A185236(A055807(n))+A055587(n)`
-/

namespace A167630.P9111700718632220060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A055807 n).toNat + A055587 n

end

end A167630.P9111700718632220060

/-!
# A167631: Emirps A006567 with a sum of digits and a number of digits which are both primes.

The programs for A167631, there is no canonical definition to state claims against.
-/

/-! ## A167631.P7348899141581402965

`∩[A109981(n+1), A230255(n+1)]`
-/

namespace A167631.P7348899141581402965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167631.P7348899141581402965

/-! ## A167631.P14888793843453396564

`∩[A120533(n+1), A230255(n+1)]`
-/

namespace A167631.P14888793843453396564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167631.P14888793843453396564

/-! ## A167631.P17996400229831739105

`∩[A006567(n+1), A109981(n+1)]`
-/

namespace A167631.P17996400229831739105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167631.P17996400229831739105

/-! ## A167631.P16456153034856796750

`∩[A068893(n+1), A109981(n+1)]`
-/

namespace A167631.P16456153034856796750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167631.P16456153034856796750

/-! ## A167631.P1067579707214309290

`∩[A109019(n+1), A109981(n+1)]`
-/

namespace A167631.P1067579707214309290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167631.P1067579707214309290

/-! ## A167631.P13686396746618437818

`∩[A109981(n+1), A350867(n+1)]`
-/

namespace A167631.P13686396746618437818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167631.P13686396746618437818

/-!
# A167632: Smallest m such that A033183(m) = n.

The programs for A167632, the canonical program `A167632.P13854631949881962862` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167632 has offset 0).

The definition of A167632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167632.P13854631949881962862

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4, a(2)=36, a(3)=72`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167632

/-- `2*a(n-1)-a(n-2)` -/
def P13854631949881962862.Spec : Prop :=
  ∀ n, P13854631949881962862.a n = A167632 n

theorem P13854631949881962862.correct : P13854631949881962862.Spec := by
  intro n
  simp only [A167632]

end A167632

/-!
# A167633: Number of ordered n-tuples of positive integers such that the largest value is n and the first value is odd.

The programs for A167633, there is no canonical definition to state claims against.
-/

/-! ## A167633.P5340631336323502262

`A123685(∑[4*n]+1)`
-/

namespace A167633.P5340631336323502262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A167633.P5340631336323502262

/-! ## A167633.P6783642716775758974

`A123685(A001844(n))*A304042(n)`
-/

namespace A167633.P6783642716775758974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123685 (A001844 n).toNat * A304042 n

end

end A167633.P6783642716775758974

/-! ## A167633.P3603458904781332198

`lcm(A057077(n), A123685(A001844(n)))`
-/

namespace A167633.P3603458904781332198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A123685 (A001844 n).toNat)

end

end A167633.P3603458904781332198

/-! ## A167633.P11523790960391981917

`or(A000007(n), A123685(A001844(n)))`
-/

namespace A167633.P11523790960391981917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A123685 (A001844 n).toNat)

end

end A167633.P11523790960391981917

/-! ## A167633.P2234437109612503914

`A123685(A001844(n))+A000007(n+4)`
-/

namespace A167633.P2234437109612503914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123685 (A001844 n).toNat + A000007 (n + 4)

end

end A167633.P2234437109612503914

/-!
# A167634: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having k peaks at odd level.

The programs for A167634, there is no canonical definition to state claims against.
-/

/-! ## A167634.P10095442493338440968

`A000166(n)%A109201(A000045(n))`
-/

namespace A167634.P10095442493338440968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000166 n) (A109201 (A000045 n).toNat)

end

end A167634.P10095442493338440968

/-! ## A167634.P4604965452248127319

`A029224(eq[A025843(n), A029277(n)])`
-/

namespace A167634.P4604965452248127319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167634.P4604965452248127319

/-! ## A167634.P13098075634446929075

`A000607(n)%A116369(A061577(n+1))`
-/

namespace A167634.P13098075634446929075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000607 n) (A116369 (A061577 (n + 1)).toNat)

end

end A167634.P13098075634446929075

/-! ## A167634.P15570405997412851932

`A300397(n+1)%A267592(A006921(n))`
-/

namespace A167634.P15570405997412851932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300397 (n + 1)) (A267592 (A006921 n).toNat)

end

end A167634.P15570405997412851932

/-! ## A167634.P10919818146458663485

`and(A134869(A233217(n+1)), A233206(n+2))`
-/

namespace A167634.P10919818146458663485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134869 (A233217 (n + 1)).toNat) (A233206 (n + 2))

end

end A167634.P10919818146458663485

/-!
# A167635: Number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having no peaks at odd level.

The programs for A167635, there is no canonical definition to state claims against.
-/

/-! ## A167635.P9079994771700545703

`A167634(floor((n/2)²)-(C(2, n+2)-1))`
-/

namespace A167635.P9079994771700545703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167634 (⌊((n : ℚ) / 2) ^ 2⌋ - ((Nat.choose 2 (n + 2) : ℤ) - 1)).toNat

end

end A167635.P9079994771700545703

/-! ## A167635.P17071795843892689803

`A167634(A033638(n)%∑[n+1])`
-/

namespace A167635.P17071795843892689803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167634 (Int.tmod (A033638 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A167635.P17071795843892689803

/-! ## A167635.P12879509734828818999

`A167634(A002620(n)-(floor(acot(n))-1))`
-/

namespace A167635.P12879509734828818999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167634 (A002620 n - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A167635.P12879509734828818999

/-! ## A167635.P4044781963342637418

`A167634(A033638(n+2-ceil(atan(2*n))))`
-/

namespace A167635.P4044781963342637418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167634 (A033638 ((n + 2 : ℤ) - ⌈Real.arctan (2 * n : ℝ)⌉).toNat).toNat

end

end A167635.P4044781963342637418

/-! ## A167635.P18039414581469283377

`A167634(A033638(n)+A000007(n))`
-/

namespace A167635.P18039414581469283377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167634 (A033638 n + A000007 n).toNat

end

end A167635.P18039414581469283377

/-!
# A167636: Number of peaks at odd level in all Dyck paths of semilength n that have no ascents and no descents of length 1.

The programs for A167636, there is no canonical definition to state claims against.
-/

/-! ## A167636.P6323504954330202334

`A199920(or(3, A286076(n)))`
-/

namespace A167636.P6323504954330202334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199920 (Int.lor 3 (A286076 n)).toNat

end

end A167636.P6323504954330202334

/-! ## A167636.P7633342623875501243

`A122369(n)%A000196(A000110(n))`
-/

namespace A167636.P7633342623875501243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122369 n) (A000196 (A000110 n).toNat)

end

end A167636.P7633342623875501243

/-! ## A167636.P5005357115832677135

`A088707(A000110(n))%A191526(n)`
-/

namespace A167636.P5005357115832677135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088707 (A000110 n).toNat) (A191526 n)

end

end A167636.P5005357115832677135

/-! ## A167636.P6479275963442776243

`A119042(A125053(n))%A187741(n)`
-/

namespace A167636.P6479275963442776243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119042 (A125053 n).toNat) (A187741 n)

end

end A167636.P6479275963442776243

/-! ## A167636.P12389387447701893771

`A162947(2*(n+1))%A378033(A284280(n+1)+A052907(n))`
-/

namespace A167636.P12389387447701893771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162947 (2 * (n + 1))) (A378033 (A284280 (n + 1) + A052907 n).toNat)

end

end A167636.P12389387447701893771

/-!
# A167637: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having k peaks at even level.

The programs for A167637, there is no canonical definition to state claims against.
-/

/-! ## A167637.P15663441867973353817

`A096587(lt[A244154(3*n+1), A093712(3*n+4)])`
-/

namespace A167637.P15663441867973353817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093712 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167637.P15663441867973353817

/-!
# A167638: Number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having no peaks at even level.

The programs for A167638, there is no canonical definition to state claims against.
-/

/-! ## A167638.P11921111281883949530

`A028310(A329700(n)-a(n-1))-A329699(n)` with `a(0)=1`
-/

namespace A167638.P11921111281883949530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A329700 n - a (n - 1)).toNat - A329699 n

end

end A167638.P11921111281883949530

/-! ## A167638.P13185064354504402481

`A167637(∑[ceil(n/2)])`
-/

namespace A167638.P13185064354504402481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167637 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167638.P13185064354504402481

/-! ## A167638.P2737642141257521908

`floor(A167637(A076921(n+1))+acot(n))`
-/

namespace A167638.P2737642141257521908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167637 (A076921 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A167638.P2737642141257521908

/-! ## A167638.P11595336461721276300

`A167637(A076921(n+1))+A000007(n)`
-/

namespace A167638.P11595336461721276300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167637 (A076921 (n + 1)).toNat + A000007 n

end

end A167638.P11595336461721276300

/-! ## A167638.P13149501882461723686

`A167637(A002620(n+1))^A178489(n)`
-/

namespace A167638.P13149501882461723686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167637 (A002620 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A167638.P13149501882461723686

/-!
# A167639: Number of peaks at even level in all Dyck paths of semilength n that have no ascents and no descents of length 1.

The programs for A167639, there is no canonical definition to state claims against.
-/

/-! ## A167639.P12925222893418707998

`∑[A167636(n+1)]-A166287(n)`
-/

namespace A167639.P12925222893418707998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A166287 n

end

end A167639.P12925222893418707998

/-! ## A167639.P11299629571468108380

`A113205(n+6)-A010054(A167649(n))`
-/

namespace A167639.P11299629571468108380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113205 (n + 6) - A010054 (A167649 n).toNat

end

end A167639.P11299629571468108380

/-! ## A167639.P8502565561628345484

`A113205(n+6)-A010054(A255286(n))`
-/

namespace A167639.P8502565561628345484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113205 (n + 6) - A010054 (A255286 n).toNat

end

end A167639.P8502565561628345484

/-! ## A167639.P10548746965277186275

`A113205(n+6)-A010054(A258347(n))`
-/

namespace A167639.P10548746965277186275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113205 (n + 6) - A010054 (A258347 n).toNat

end

end A167639.P10548746965277186275

/-! ## A167639.P16283716499353914072

`A113205(n+6)-A178225(A291981(n))`
-/

namespace A167639.P16283716499353914072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113205 (n + 6) - A178225 (A291981 n).toNat

end

end A167639.P16283716499353914072

/-!
# A167648: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^15 = I.

The programs for A167648, there is no canonical definition to state claims against.
-/

/-! ## A167648.P16081769373827085654

`2*a(n-1)-A018843(A000009(n))` with `a(0)=1, a(1)=3`
-/

namespace A167648.P16081769373827085654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - A018843 (A000009 n).toNat

end

end A167648.P16081769373827085654

/-! ## A167648.P15614606957213754249

`A003945(n)-A212172(A116406(n))`
-/

namespace A167648.P15614606957213754249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A212172 (A116406 n).toNat

end

end A167648.P15614606957213754249

/-! ## A167648.P5302799775439969860

`A003945(n)-A294927(A298287(3*(n+1)))`
-/

namespace A167648.P5302799775439969860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A294927 (A298287 (3 * (n + 1))).toNat

end

end A167648.P5302799775439969860

/-! ## A167648.P14144054681573178396

`A003945(n)-A103309(A103267(3*n+4))`
-/

namespace A167648.P14144054681573178396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A103309 (A103267 (3 * n + 4)).toNat

end

end A167648.P14144054681573178396

/-!
# A167649: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^15 = I.

The programs for A167649, there is no canonical definition to state claims against.
-/

/-! ## A167649.P1180277016964780157

`floor(4*3^(n-1))-A000387(A184955(n))`
-/

namespace A167649.P1180277016964780157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A000387 (A184955 n).toNat

end

end A167649.P1180277016964780157

/-! ## A167649.P7961370918171928305

`floor(4*3^(n-1))-A034432(A008578(n+1))`
-/

namespace A167649.P7961370918171928305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A008578 (n + 1)).toNat

end

end A167649.P7961370918171928305

/-! ## A167649.P8562335656078340796

`A003946(n)-A151755(A293724(n+3))`
-/

namespace A167649.P8562335656078340796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A151755 (A293724 (n + 3)).toNat

end

end A167649.P8562335656078340796

/-! ## A167649.P7688239519660079610

`A003946(n)-A187794(A361600(2*n+3))`
-/

namespace A167649.P7688239519660079610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A187794 (A361600 (2 * n + 3)).toNat

end

end A167649.P7688239519660079610

/-!
# A167650: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^15 = I.

The programs for A167650, there is no canonical definition to state claims against.
-/

/-! ## A167650.P13303909784313343345

`floor(5*4^(n-1))-A185255(2*n)`
-/

namespace A167650.P13303909784313343345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (2 * n)

end

end A167650.P13303909784313343345

/-! ## A167650.P6410620015714006127

`record[Δ[A134683(n)]-A185255(n)]`
-/

namespace A167650.P6410620015714006127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A185255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167650.P6410620015714006127

/-! ## A167650.P16059020641683613233

`record[Δ[A284354(n)-A185255(n)]]`
-/

namespace A167650.P16059020641683613233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 n - A185255 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167650.P16059020641683613233

/-! ## A167650.P5200129782624778867

`abs(A185255(2*n)-A003947(n))`
-/

namespace A167650.P5200129782624778867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185255 (2 * n) - A003947 n|

end

end A167650.P5200129782624778867

/-! ## A167650.P15365612964330225305

`abs(A185255(2*n)+A166577(2*n))`
-/

namespace A167650.P15365612964330225305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185255 (2 * n) + A166577 (2 * n)|

end

end A167650.P15365612964330225305

/-!
# A167652: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^15 = I.

The programs for A167652, there is no canonical definition to state claims against.
-/

/-! ## A167652.P14891872197869821033

`A003949(n)-A160170(A184955(n))`
-/

namespace A167652.P14891872197869821033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n - A160170 (A184955 n).toNat

end

end A167652.P14891872197869821033

/-!
# A167654: Simple zero-divisors of Cayley-Dickson algebras.

The programs for A167654, there is no canonical definition to state claims against.
-/

/-! ## A167654.P538767717805974813

`6*A090030(A000219(n))`
-/

namespace A167654.P538767717805974813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A090030 (A000219 n).toNat

end

end A167654.P538767717805974813

/-! ## A167654.P18115066884981698914

`A104362(n+6)%A272027(p?[A328522(n)+1])`
-/

namespace A167654.P18115066884981698914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328522 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104362 (n + 6)) (A272027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A167654.P18115066884981698914

/-!
# A167655: Riordan array (1-u,u) where u=x/(1+x+x^2).

The programs for A167655, there is no canonical definition to state claims against.
-/

/-! ## A167655.P1592229895406421938

`Δ[-A344566(n)]`
-/

namespace A167655.P1592229895406421938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167655.P1592229895406421938

/-! ## A167655.P2219582883937003560

`Δ[A304042(n)-A344566(n)]`
-/

namespace A167655.P2219582883937003560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n - A344566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167655.P2219582883937003560

/-! ## A167655.P9375649718743254141

`A344566(n)-A344566(n+1)`
-/

namespace A167655.P9375649718743254141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344566 n - A344566 (n + 1)

end

end A167655.P9375649718743254141

/-! ## A167655.P9035451882617819446

`Δ[A020985(n)²-A344566(n)]`
-/

namespace A167655.P9035451882617819446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 - A344566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167655.P9035451882617819446

/-! ## A167655.P7982643818068954627

`Δ[A007318(C(2, n))-A344566(n)]`
-/

namespace A167655.P7982643818068954627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) - A344566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167655.P7982643818068954627

/-! ## A167655.P9867557227804284928

`A008683(Δ[(2*n)²])-Δ[A344566(n)]`
-/

namespace A167655.P9867557227804284928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (f2 (n + 1) - f2 n)

end

end A167655.P9867557227804284928

/-! ## A167655.P14156871719552224356

`Δ[A000005(A007918(n))-A344566(n)]`
-/

namespace A167655.P14156871719552224356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007918 n).toNat - A344566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167655.P14156871719552224356

/-!
# A167657: Product of n-th block of identical consecutive values of A000720.

The programs for A167657, the canonical program `A167657.P13884500863494241506` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167657 has offset 1).

The definition of A167657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1059 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167657.P13884500863494241506

`n^A075526(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A167657

/-- `n^A075526(n)` -/
def P13884500863494241506.Spec : Prop :=
  ∀ n, P13884500863494241506.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P11486186047027582796

`A167761(n+1)²`
-/

namespace A167657.P11486186047027582796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167761 (n + 1) ^ 2

end

end A167657.P11486186047027582796

namespace A167657

/-- `A167761(n+1)²` -/
def P11486186047027582796.Spec : Prop :=
  ∀ n, P11486186047027582796.a n = A167657 (n + 1)

end A167657

/-! ## A167657.P10192451610746462461

`n^Δ[A028815(n)]`
-/

namespace A167657.P10192451610746462461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P10192451610746462461

namespace A167657

/-- `n^Δ[A028815(n)]` -/
def P10192451610746462461.Spec : Prop :=
  ∀ n, P10192451610746462461.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P1128384564155227406

`n^A054541(n+1)`
-/

namespace A167657.P1128384564155227406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A054541 (n + 1) : ℤ)

end

end A167657.P1128384564155227406

namespace A167657

/-- `n^A054541(n+1)` -/
def P1128384564155227406.Spec : Prop :=
  ∀ n, P1128384564155227406.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P15268493672979541553

`n^A125266(n+1)`
-/

namespace A167657.P15268493672979541553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A125266 (n + 1) : ℤ)

end

end A167657.P15268493672979541553

namespace A167657

/-- `n^A125266(n+1)` -/
def P15268493672979541553.Spec : Prop :=
  ∀ n, P15268493672979541553.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P11377378133435092271

`n^A181346(n+1)`
-/

namespace A167657.P11377378133435092271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A181346 (n + 1) : ℤ)

end

end A167657.P11377378133435092271

namespace A167657

/-- `n^A181346(n+1)` -/
def P11377378133435092271.Spec : Prop :=
  ∀ n, P11377378133435092271.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P7222579256856435640

`n^A230849(Δ[n²])`
-/

namespace A167657.P7222579256856435640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A230849 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A167657.P7222579256856435640

namespace A167657

/-- `n^A230849(Δ[n²])` -/
def P7222579256856435640.Spec : Prop :=
  ∀ n, P7222579256856435640.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P10409982979300622414

`n^A230850(Δ[n²])`
-/

namespace A167657.P10409982979300622414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A230850 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A167657.P10409982979300622414

namespace A167657

/-- `n^A230850(Δ[n²])` -/
def P10409982979300622414.Spec : Prop :=
  ∀ n, P10409982979300622414.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P1372852850259697564

`n^Δ[A008578(n+1)]`
-/

namespace A167657.P1372852850259697564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P1372852850259697564

namespace A167657

/-- `n^Δ[A008578(n+1)]` -/
def P1372852850259697564.Spec : Prop :=
  ∀ n, P1372852850259697564.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P5103988450804468157

`n^Δ[A182986(n+1)]`
-/

namespace A167657.P5103988450804468157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P5103988450804468157

namespace A167657

/-- `n^Δ[A182986(n+1)]` -/
def P5103988450804468157.Spec : Prop :=
  ∀ n, P5103988450804468157.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P2960805459455671952

`n^Δ[A299763(n+1)]`
-/

namespace A167657.P2960805459455671952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P2960805459455671952

namespace A167657

/-- `n^Δ[A299763(n+1)]` -/
def P2960805459455671952.Spec : Prop :=
  ∀ n, P2960805459455671952.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P16063587587758101487

`n^Δ[A158611(n+2)]`
-/

namespace A167657.P16063587587758101487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P16063587587758101487

namespace A167657

/-- `n^Δ[A158611(n+2)]` -/
def P16063587587758101487.Spec : Prop :=
  ∀ n, P16063587587758101487.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P4519399578581710610

`n^(A230846(n+1)-1)`
-/

namespace A167657.P4519399578581710610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A230846 (n + 1) - 1 : ℤ)

end

end A167657.P4519399578581710610

namespace A167657

/-- `n^(A230846(n+1)-1)` -/
def P4519399578581710610.Spec : Prop :=
  ∀ n, P4519399578581710610.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P15977151482765293756

`n^(A230847(n+1)-1)`
-/

namespace A167657.P15977151482765293756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A230847 (n + 1) - 1 : ℤ)

end

end A167657.P15977151482765293756

namespace A167657

/-- `n^(A230847(n+1)-1)` -/
def P15977151482765293756.Spec : Prop :=
  ∀ n, P15977151482765293756.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P14101673693564492340

`n^Δ[record[A006530(n+1)]]`
-/

namespace A167657.P14101673693564492340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P14101673693564492340

namespace A167657

/-- `n^Δ[record[A006530(n+1)]]` -/
def P14101673693564492340.Spec : Prop :=
  ∀ n, P14101673693564492340.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P5787208146005370178

`n^Δ[record[A014963(n+1)]]`
-/

namespace A167657.P5787208146005370178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P5787208146005370178

namespace A167657

/-- `n^Δ[record[A014963(n+1)]]` -/
def P5787208146005370178.Spec : Prop :=
  ∀ n, P5787208146005370178.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P12427490469695244003

`n^Δ[record[A020639(n+1)]]`
-/

namespace A167657.P12427490469695244003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A167657.P12427490469695244003

namespace A167657

/-- `n^Δ[record[A020639(n+1)]]` -/
def P12427490469695244003.Spec : Prop :=
  ∀ n, P12427490469695244003.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P10837954862632554794

`n^Δ[comp[A018252(n+1)]]`
-/

namespace A167657.P10837954862632554794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A167657.P10837954862632554794

namespace A167657

/-- `n^Δ[comp[A018252(n+1)]]` -/
def P10837954862632554794.Spec : Prop :=
  ∀ n, P10837954862632554794.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P5252286897251954289

`n^Δ[eq[n, A006530(xor(1, n)+1)]]`
-/

namespace A167657.P5252286897251954289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 1 n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A167657.P5252286897251954289

namespace A167657

/-- `n^Δ[eq[n, A006530(xor(1, n)+1)]]` -/
def P5252286897251954289.Spec : Prop :=
  ∀ n, P5252286897251954289.a n = (A167657 (n + 1) : ℚ)

end A167657

/-! ## A167657.P8968489137944018394

`n^A001223(A028310(n))`
-/

namespace A167657.P8968489137944018394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001223 (A028310 n).toNat : ℤ)

end

end A167657.P8968489137944018394

namespace A167657

/-- `n^A001223(A028310(n))` -/
def P8968489137944018394.Spec : Prop :=
  ∀ n, P8968489137944018394.a n = (A167657 (n + 1) : ℚ)

end A167657

/-!
# A167660: Chocolate dove bar numerator: a(n) = (Sum_{k=0..floor(n/2)} k*binomial(n+k,k)*binomial(n,n-2*k)) + (Sum_{k=0..ceiling(n/2)} k*binomial(n+k-1,k-1)*binomial(n,n-2*k+1)).

The programs for A167660, there is no canonical definition to state claims against.
-/

/-! ## A167660.P4643321545924923602

`A145051(A000045(3*n+1))-A036765(n)`
-/

namespace A167660.P4643321545924923602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A000045 (3 * n + 1)).toNat - A036765 n

end

end A167660.P4643321545924923602

/-! ## A167660.P664782528474323010

`A004526(A000045(3*n+1)-A107480(2*n))`
-/

namespace A167660.P664782528474323010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000045 (3 * n + 1) - A107480 (2 * n)).toNat

end

end A167660.P664782528474323010

/-!
# A167661: Number of partitions of n into odd squares.

The programs for A167661, there is no canonical definition to state claims against.
-/

/-! ## A167661.P1305400535623312514

`∑[char[A067666(2*n+1)]]`
-/

namespace A167661.P1305400535623312514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167661.P1305400535623312514

/-! ## A167661.P466574603478178179

`A000700(ceil(log2(A270929(n+5))))`
-/

namespace A167661.P466574603478178179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 ⌈Real.logb 2 (A270929 (n + 5) : ℝ)⌉.toNat

end

end A167661.P466574603478178179

/-! ## A167661.P12846098632550671804

`A000700(floor(log2(A270929(n+5)))+1)`
-/

namespace A167661.P12846098632550671804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Nat.log 2 (A270929 (n + 5)).toNat + 1)

end

end A167661.P12846098632550671804

/-! ## A167661.P9188260711804832804

`A279220(A057356(2*n)%A141214(n))`
-/

namespace A167661.P9188260711804832804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279220 (Int.tmod (A057356 (2 * n)) (A141214 n)).toNat

end

end A167661.P9188260711804832804

/-! ## A167661.P5178267391710678768

`ceil(A333222(A285302(n+2)+4)/63)`
-/

namespace A167661.P5178267391710678768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333222 (A285302 (n + 2) + 4).toNat : ℚ) / 63⌉

end

end A167661.P5178267391710678768

/-!
# A167662: Records for partitions into odd squares, cf. A167661.

The programs for A167662, there is no canonical definition to state claims against.
-/

/-! ## A167662.P15052725116270584288

`lt[0, char[A167661(n)]]`
-/

namespace A167662.P15052725116270584288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167662.P15052725116270584288

/-! ## A167662.P2504028598334081417

`record[A167661(ceil(xor(1, n)/2))]`
-/

namespace A167662.P2504028598334081417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P2504028598334081417

/-! ## A167662.P14487119509519005101

`record[A167661(n+1)%(n+3)]`
-/

namespace A167662.P14487119509519005101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167661 (n + 1)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P14487119509519005101

/-! ## A167662.P8677754591166661886

`record[A167661(floor(lcm(2, n)/4)+1)]`
-/

namespace A167662.P8677754591166661886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P8677754591166661886

/-! ## A167662.P14637860730149465394

`record[A167661(gcd(1-n, floor(n/2)))]`
-/

namespace A167662.P14637860730149465394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P14637860730149465394

/-! ## A167662.P8379641475429023449

`record[A167661(ceil(C(or(1, n), n)/2))]`
-/

namespace A167662.P8379641475429023449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P8379641475429023449

/-! ## A167662.P414295781459021801

`record[A167661(floor(n/(xor(n, n+1)+1)))]`
-/

namespace A167662.P414295781459021801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P414295781459021801

/-! ## A167662.P7054534088749020296

`record[A167661(floor((n+1)/(or(n, n+2)-n)))]`
-/

namespace A167662.P7054534088749020296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 ⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P7054534088749020296

/-! ## A167662.P17681241650608722200

`record[A167661(A008611(n))]`
-/

namespace A167662.P17681241650608722200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P17681241650608722200

/-! ## A167662.P1800371044238060499

`record[A167661(A008624(n))]`
-/

namespace A167662.P1800371044238060499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167662.P1800371044238060499

/-!
# A167663: Where records occur for partitions into odd squares, cf. A167661.

The programs for A167663, there is no canonical definition to state claims against.
-/

/-! ## A167663.P2882103707703856952

`record[A004159(A098848(n))]`
-/

namespace A167663.P2882103707703856952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A098848 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167663.P2882103707703856952

/-! ## A167663.P12955530024724290967

`record[A004159(A061047(n+7))]`
-/

namespace A167663.P12955530024724290967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A061047 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167663.P12955530024724290967

/-! ## A167663.P2853491636783245567

`record[A004159(A132760(n)-n)]`
-/

namespace A167663.P2853491636783245567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A132760 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167663.P2853491636783245567

/-! ## A167663.P11684627145381043108

`record[∑{digits}[A028560(A014105(n)), #]]`
-/

namespace A167663.P11684627145381043108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (A014105 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167663.P11684627145381043108

/-! ## A167663.P6043000516317771255

`record[A160941(n+1)-A097615(n)]`
-/

namespace A167663.P6043000516317771255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1) - A097615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167663.P6043000516317771255

/-!
# A167666: Triangle read by rows given by [1,1,-4,2,0,0,0,0,0,0,0,...] DELTA [1,0,0,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A167666, the canonical program `A167666.P3519015945170238925` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167666 has offset 0).

The definition of A167666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167666.P6638151135878181899

`round(A134478(n)/A213998(n+2))`
-/

namespace A167666.P6638151135878181899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134478 n : ℚ) / (A213998 (n + 2) : ℚ))

end

end A167666.P6638151135878181899

namespace A167666

/-- `round(A134478(n)/A213998(n+2))` -/
def P6638151135878181899.Spec : Prop :=
  ∀ n, P6638151135878181899.a n = A167666 n

end A167666

/-! ## A167666.P11769842433627966724

`A039599(n)%A005408(A113125(n))`
-/

namespace A167666.P11769842433627966724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039599 n) (A005408 (A113125 n).toNat)

end

end A167666.P11769842433627966724

namespace A167666

/-- `A039599(n)%A005408(A113125(n))` -/
def P11769842433627966724.Spec : Prop :=
  ∀ n, P11769842433627966724.a n = A167666 n

end A167666

/-! ## A167666.P3519015945170238925

`A185868(n+1)%A005408(A113125(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167666

/-- `A185868(n+1)%A005408(A113125(n))` -/
def P3519015945170238925.Spec : Prop :=
  ∀ n, P3519015945170238925.a n = A167666 n

theorem P3519015945170238925.correct : P3519015945170238925.Spec := by
  intro n
  simp only [A167666]

end A167666

/-! ## A167666.P9541557601108058357

`abs(Δ[abs(1-A134082(n))])`
-/

namespace A167666.P9541557601108058357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A134082 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167666.P9541557601108058357

namespace A167666

/-- `abs(Δ[abs(1-A134082(n))])` -/
def P9541557601108058357.Spec : Prop :=
  ∀ n, P9541557601108058357.a n = A167666 n

end A167666

/-! ## A167666.P12490572935581665676

`abs(Δ[A097806(n)*A110509(n)])`
-/

namespace A167666.P12490572935581665676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167666.P12490572935581665676

namespace A167666

/-- `abs(Δ[A097806(n)*A110509(n)])` -/
def P12490572935581665676.Spec : Prop :=
  ∀ n, P12490572935581665676.a n = A167666 n

end A167666

/-! ## A167666.P10006357455224250998

`A000196(Δ[A097806(n)*A110509(n)]²)`
-/

namespace A167666.P10006357455224250998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A167666.P10006357455224250998

namespace A167666

/-- `A000196(Δ[A097806(n)*A110509(n)]²)` -/
def P10006357455224250998.Spec : Prop :=
  ∀ n, P10006357455224250998.a n = A167666 n

end A167666

/-! ## A167666.P12822599215587405357

`gcd(A112295(n), A132774(A122797(n+1)))`
-/

namespace A167666.P12822599215587405357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112295 n) (A132774 (A122797 (n + 1)).toNat)

end

end A167666.P12822599215587405357

namespace A167666

/-- `gcd(A112295(n), A132774(A122797(n+1)))` -/
def P12822599215587405357.Spec : Prop :=
  ∀ n, (P12822599215587405357.a n : ℤ) = A167666 n

end A167666

/-! ## A167666.P11390759033989519618

`abs(Δ[A129184(n+1)+A112295(n)])`
-/

namespace A167666.P11390759033989519618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129184 (n + 1) + A112295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167666.P11390759033989519618

namespace A167666

/-- `abs(Δ[A129184(n+1)+A112295(n)])` -/
def P11390759033989519618.Spec : Prop :=
  ∀ n, P11390759033989519618.a n = A167666 n

end A167666

/-!
# A167667: Expansion of (1-x+4*x^2)/(1-2*x)^2.

The programs for A167667, the canonical program `A167667.P4266764128492986020` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167667 has offset 0).

The definition of A167667 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+4x^2)/(1-4x+4x^2))` (program `A167667.P4266764128492986020`, by `A167667.P4266764128492986020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167667.P4266764128492986020

`ogf((1-x+4x^2)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167667

/-- `ogf((1-x+4x^2)/(1-4x+4x^2))` -/
def P4266764128492986020.Spec : Prop :=
  ∀ n, P4266764128492986020.a n = A167667 n

theorem P4266764128492986020.correct : P4266764128492986020.Spec := by
  intro n
  simp only [A167667]

end A167667

/-! ## A167667.P5673081513910061652

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A167667.P5673081513910061652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A167667.P5673081513910061652

namespace A167667

/-- `4*a(n-1)-4*a(n-2)` -/
def P5673081513910061652.Spec : Prop :=
  ∀ n, P5673081513910061652.a n = A167667 n

end A167667

/-! ## A167667.P8682355136419308953

`(2/(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A167667.P8682355136419308953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 / ((n : ℤ) - 1 : ℚ) + 2) * a (n - 1)

end

end A167667.P8682355136419308953

namespace A167667

/-- `(2/(n-1)+2)*a(n-1)` -/
def P8682355136419308953.Spec : Prop :=
  ∀ n, P8682355136419308953.a n = (A167667 n : ℚ)

end A167667

/-! ## A167667.P7094889884954451432

`2*a(n-1)/(1-1/n)` with `a(0)=1, a(1)=3`
-/

namespace A167667.P7094889884954451432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) / (1 - 1 / (n : ℚ)))

end

end A167667.P7094889884954451432

namespace A167667

/-- `2*a(n-1)/(1-1/n)` -/
def P7094889884954451432.Spec : Prop :=
  ∀ n, P7094889884954451432.a n = (A167667 n : ℚ)

end A167667

/-! ## A167667.P11431090837974310201

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A167667.P11431090837974310201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A167667.P11431090837974310201

namespace A167667

/-- `4*(a(n-1)-a(n-2))` -/
def P11431090837974310201.Spec : Prop :=
  ∀ n, P11431090837974310201.a n = A167667 n

end A167667

/-! ## A167667.P4288172328939627382

`(abs(1-3*n)+1)*2^(n-1)`
-/

namespace A167667.P4288172328939627382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - (3 * n : ℤ)| + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A167667.P4288172328939627382

namespace A167667

/-- `(abs(1-3*n)+1)*2^(n-1)` -/
def P4288172328939627382.Spec : Prop :=
  ∀ n, P4288172328939627382.a n = (A167667 n : ℚ)

end A167667

/-! ## A167667.P12347557019744209691

`A084858(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A167667.P12347557019744209691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A084858 n + a (n - 1)

end

end A167667.P12347557019744209691

namespace A167667

/-- `A084858(n)+a(n-1)` -/
def P12347557019744209691.Spec : Prop :=
  ∀ n, P12347557019744209691.a n = A167667 n

end A167667

/-! ## A167667.P7695813699089339867

`∑[(n+1)*A122391(n+1)]`
-/

namespace A167667.P7695813699089339867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167667.P7695813699089339867

namespace A167667

/-- `∑[(n+1)*A122391(n+1)]` -/
def P7695813699089339867.Spec : Prop :=
  ∀ n, P7695813699089339867.a n = A167667 n

end A167667

/-! ## A167667.P18067029298069911100

`A082505(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A167667.P18067029298069911100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082505 n + 2 * a (n - 1)

end

end A167667.P18067029298069911100

namespace A167667

/-- `A082505(n)+2*a(n-1)` -/
def P18067029298069911100.Spec : Prop :=
  ∀ n, P18067029298069911100.a n = A167667 n

end A167667

/-! ## A167667.P11886715479325948144

`A058582(A004273(n))`
-/

namespace A167667.P11886715479325948144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058582 (A004273 n).toNat

end

end A167667.P11886715479325948144

namespace A167667

/-- `A058582(A004273(n))` -/
def P11886715479325948144.Spec : Prop :=
  ∀ n, P11886715479325948144.a n = A167667 n

end A167667

/-! ## A167667.P12251228251336440008

`A203150(A004277(n))`
-/

namespace A167667.P12251228251336440008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203150 (A004277 n).toNat

end

end A167667.P12251228251336440008

namespace A167667

/-- `A203150(A004277(n))` -/
def P12251228251336440008.Spec : Prop :=
  ∀ n, P12251228251336440008.a n = A167667 n

end A167667

/-! ## A167667.P14424877077820199072

`A203150(A004275(n+1))`
-/

namespace A167667.P14424877077820199072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203150 (A004275 (n + 1)).toNat

end

end A167667.P14424877077820199072

namespace A167667

/-- `A203150(A004275(n+1))` -/
def P14424877077820199072.Spec : Prop :=
  ∀ n, P14424877077820199072.a n = A167667 n

end A167667

/-! ## A167667.P1370272942902402388

`A057428(n)+A048474(n)`
-/

namespace A167667.P1370272942902402388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A048474 n

end

end A167667.P1370272942902402388

namespace A167667

/-- `A057428(n)+A048474(n)` -/
def P1370272942902402388.Spec : Prop :=
  ∀ n, P1370272942902402388.a n = A167667 n

end A167667

/-! ## A167667.P9724316212248080456

`A134401(n)+A001787(n)`
-/

namespace A167667.P9724316212248080456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n + A001787 n

end

end A167667.P9724316212248080456

namespace A167667

/-- `A134401(n)+A001787(n)` -/
def P9724316212248080456.Spec : Prop :=
  ∀ n, P9724316212248080456.a n = A167667 n

end A167667

/-! ## A167667.P417761973751145266

`A198633(n)+A053565(n)`
-/

namespace A167667.P417761973751145266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n + A053565 n

end

end A167667.P417761973751145266

namespace A167667

/-- `A198633(n)+A053565(n)` -/
def P417761973751145266.Spec : Prop :=
  ∀ n, P417761973751145266.a n = A167667 n

end A167667

/-! ## A167667.P17822389043711392294

`A048474(n)-A057427(n)`
-/

namespace A167667.P17822389043711392294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 n - A057427 n

end

end A167667.P17822389043711392294

namespace A167667

/-- `A048474(n)-A057427(n)` -/
def P17822389043711392294.Spec : Prop :=
  ∀ n, P17822389043711392294.a n = A167667 n

end A167667

/-! ## A167667.P11105615258531011620

`∑[A084858(n)]-A057427(n)`
-/

namespace A167667.P11105615258531011620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A167667.P11105615258531011620

namespace A167667

/-- `∑[A084858(n)]-A057427(n)` -/
def P11105615258531011620.Spec : Prop :=
  ∀ n, P11105615258531011620.a n = A167667 n

end A167667

/-! ## A167667.P12766614478077041369

`A000007(n)+A048474(n)-1`
-/

namespace A167667.P12766614478077041369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A048474 n - 1)

end

end A167667.P12766614478077041369

namespace A167667

/-- `A000007(n)+A048474(n)-1` -/
def P12766614478077041369.Spec : Prop :=
  ∀ n, P12766614478077041369.a n = A167667 n

end A167667

/-!
# A167677: Replace prime digits with 1 and nonprime digits with 2.

The programs for A167677, there is no canonical definition to state claims against.
-/

/-! ## A167677.P4543006664688526636

`A035043(A167678(n))`
-/

namespace A167677.P4543006664688526636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A167678 n).toNat

end

end A167677.P4543006664688526636

/-! ## A167677.P4870378222362111159

`A167679(A167678(n)+2)`
-/

namespace A167677.P4870378222362111159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (A167678 n + 2).toNat

end

end A167677.P4870378222362111159

/-! ## A167677.P2583503225886738374

`A167678(2*A167678(n))`
-/

namespace A167677.P2583503225886738374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167678 (2 * A167678 n).toNat

end

end A167677.P2583503225886738374

/-! ## A167677.P16764299533484959357

`A107130(A167678(n)+11)`
-/

namespace A167677.P16764299533484959357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A167678 n + 11).toNat

end

end A167677.P16764299533484959357

/-! ## A167677.P16157303390032766689

`A167679(lcm(3, A167678(n)))`
-/

namespace A167677.P16157303390032766689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (Int.lcm 3 (A167678 n))

end

end A167677.P16157303390032766689

/-! ## A167677.P16233696840540538603

`A167679(or(2, A167678(n)))`
-/

namespace A167677.P16233696840540538603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (Int.lor 2 (A167678 n)).toNat

end

end A167677.P16233696840540538603

/-! ## A167677.P15051666870893864311

`A167678(A167678(n)+A167678(n))`
-/

namespace A167677.P15051666870893864311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167678 (A167678 n + A167678 n).toNat

end

end A167677.P15051666870893864311

/-! ## A167677.P2391152778022288663

`A167679(A167678(n)/A055641(n)!)`
-/

namespace A167677.P2391152778022288663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (SequenceMachineLib.roundAway ((A167678 n : ℚ) / (Nat.factorial (A055641 n).toNat : ℚ))).toNat

end

end A167677.P2391152778022288663

/-! ## A167677.P11490851616853979409

`A167679(A167678(n)^A055641(n)!)`
-/

namespace A167677.P11490851616853979409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (A167678 n ^ Nat.factorial (A055641 n).toNat).toNat

end

end A167677.P11490851616853979409

/-! ## A167677.P17271735615191750379

`A167679(A167678(n)%∑[A065031(n)])`
-/

namespace A167677.P17271735615191750379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (Int.tmod (A167678 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A167677.P17271735615191750379

/-!
# A167678: Replace prime digits with 2 and nonprime digits with 1.

The programs for A167678, there is no canonical definition to state claims against.
-/

/-! ## A167678.P14765570928201890185

`A035043(A167677(n))`
-/

namespace A167678.P14765570928201890185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A167677 n).toNat

end

end A167678.P14765570928201890185

/-! ## A167678.P9112727280878854414

`A167679(A167677(n)+2)`
-/

namespace A167678.P9112727280878854414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (A167677 n + 2).toNat

end

end A167678.P9112727280878854414

/-! ## A167678.P8448788326871484693

`A167677(A167677(n)+3)`
-/

namespace A167678.P8448788326871484693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 (A167677 n + 3).toNat

end

end A167678.P8448788326871484693

/-! ## A167678.P13190718535983599316

`A222221(2*A167677(n))`
-/

namespace A167678.P13190718535983599316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (2 * A167677 n).toNat

end

end A167678.P13190718535983599316

/-! ## A167678.P8410995651869188082

`A167679(3*A167677(n))`
-/

namespace A167678.P8410995651869188082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (3 * A167677 n).toNat

end

end A167678.P8410995651869188082

/-! ## A167678.P11809719310775986615

`A167679(lcm(3, A167677(n)))`
-/

namespace A167678.P11809719310775986615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (Int.lcm 3 (A167677 n))

end

end A167678.P11809719310775986615

/-! ## A167678.P15406624626953081324

`A167677(or(1, A167677(n)))`
-/

namespace A167678.P15406624626953081324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 (Int.lor 1 (A167677 n)).toNat

end

end A167678.P15406624626953081324

/-! ## A167678.P14476351394598036147

`A167679(A167677(n)%A000041(n))`
-/

namespace A167678.P14476351394598036147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (Int.tmod (A167677 n) (A000041 n)).toNat

end

end A167678.P14476351394598036147

/-! ## A167678.P4227308878463841591

`∑{d}[A167677(A167677(n)), A000010(#)]`
-/

namespace A167678.P4227308878463841591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 (A167677 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A167678.P4227308878463841591

/-!
# A167679: Replace odd digits with 2 and even digits with 1.

The programs for A167679, there is no canonical definition to state claims against.
-/

/-! ## A167679.P16550922795594988269

`A035043(A065031(n))`
-/

namespace A167679.P16550922795594988269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A065031 n).toNat

end

end A167679.P16550922795594988269

/-!
# A167682: Expansion of (1 - 2*x + 5*x^2) / (1 - 3*x)^2.

The programs for A167682, the canonical program `A167682.P8810433178756319471` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167682 has offset 0).

The definition of A167682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+5x^2)/(1-6x+9x^2))` (program `A167682.P8810433178756319471`, by `A167682.P8810433178756319471.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167682.P8810433178756319471

`ogf((1-2x+5x^2)/(1-6x+9x^2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167682

/-- `ogf((1-2x+5x^2)/(1-6x+9x^2))` -/
def P8810433178756319471.Spec : Prop :=
  ∀ n, P8810433178756319471.a n = A167682 n

theorem P8810433178756319471.correct : P8810433178756319471.Spec := by
  intro n
  simp only [A167682]

end A167682

/-! ## A167682.P1561611067181579758

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=4, a(2)=20`
-/

namespace A167682.P1561611067181579758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 20] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A167682.P1561611067181579758

namespace A167682

/-- `6*a(n-1)-9*a(n-2)` -/
def P1561611067181579758.Spec : Prop :=
  ∀ n, P1561611067181579758.a n = A167682 n

end A167682

/-! ## A167682.P8590003189834251733

`ceil(3^(n-2)*(8*n+4))`
-/

namespace A167682.P8590003189834251733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (8 * n + 4 : ℚ)⌉

end

end A167682.P8590003189834251733

namespace A167682

/-- `ceil(3^(n-2)*(8*n+4))` -/
def P8590003189834251733.Spec : Prop :=
  ∀ n, P8590003189834251733.a n = A167682 n

end A167682

/-! ## A167682.P16083727644070138411

`floor((A113071(n)+1)/2)`
-/

namespace A167682.P16083727644070138411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113071 n + 1 : ℚ) / 2⌋

end

end A167682.P16083727644070138411

namespace A167682

/-- `floor((A113071(n)+1)/2)` -/
def P16083727644070138411.Spec : Prop :=
  ∀ n, P16083727644070138411.a n = A167682 n

end A167682

/-! ## A167682.P8582414616949360850

`Δ[(n-1)*A052156(n)]`
-/

namespace A167682.P8582414616949360850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167682.P8582414616949360850

namespace A167682

/-- `Δ[(n-1)*A052156(n)]` -/
def P8582414616949360850.Spec : Prop :=
  ∀ n, P8582414616949360850.a n = A167682 n

end A167682

/-! ## A167682.P14140641237631035547

`Δ[(n-1)*A025579(n+1)]`
-/

namespace A167682.P14140641237631035547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A025579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167682.P14140641237631035547

namespace A167682

/-- `Δ[(n-1)*A025579(n+1)]` -/
def P14140641237631035547.Spec : Prop :=
  ∀ n, P14140641237631035547.a n = A167682 n

end A167682

/-! ## A167682.P11071898488772144070

`A052156(n)*A223134(n)`
-/

namespace A167682.P11071898488772144070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n * A223134 n

end

end A167682.P11071898488772144070

namespace A167682

/-- `A052156(n)*A223134(n)` -/
def P11071898488772144070.Spec : Prop :=
  ∀ n, P11071898488772144070.a n = A167682 n

end A167682

/-! ## A167682.P6544257029440105991

`A113071(n)/A036453(n+1)`
-/

namespace A167682.P6544257029440105991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113071 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A167682.P6544257029440105991

namespace A167682

/-- `A113071(n)/A036453(n+1)` -/
def P6544257029440105991.Spec : Prop :=
  ∀ n, P6544257029440105991.a n = (A167682 n : ℚ)

end A167682

/-! ## A167682.P6293941844009918455

`abs(Δ[A024000(n)*A052156(n)])`
-/

namespace A167682.P6293941844009918455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n * A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A167682.P6293941844009918455

namespace A167682

/-- `abs(Δ[A024000(n)*A052156(n)])` -/
def P6293941844009918455.Spec : Prop :=
  ∀ n, P6293941844009918455.a n = A167682 n

end A167682

/-! ## A167682.P10186990407346923104

`A025579(n+1)*A140139(n+1)`
-/

namespace A167682.P10186990407346923104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) * A140139 (n + 1)

end

end A167682.P10186990407346923104

namespace A167682

/-- `A025579(n+1)*A140139(n+1)` -/
def P10186990407346923104.Spec : Prop :=
  ∀ n, P10186990407346923104.a n = A167682 n

end A167682

/-! ## A167682.P3871581904278302522

`A199923(n)+2*A027471(n+1)`
-/

namespace A167682.P3871581904278302522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199923 n + 2 * A027471 (n + 1)

end

end A167682.P3871581904278302522

namespace A167682

/-- `A199923(n)+2*A027471(n+1)` -/
def P3871581904278302522.Spec : Prop :=
  ∀ n, P3871581904278302522.a n = A167682 n

end A167682

/-! ## A167682.P13882620928826464404

`A052156(n)+n*∑[A257970(n+1)]`
-/

namespace A167682.P13882620928826464404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167682.P13882620928826464404

namespace A167682

/-- `A052156(n)+n*∑[A257970(n+1)]` -/
def P13882620928826464404.Spec : Prop :=
  ∀ n, P13882620928826464404.a n = A167682 n

end A167682

/-! ## A167682.P12197520944162127848

`A113071(n)/A000034(A004273(n))`
-/

namespace A167682.P12197520944162127848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113071 n : ℚ) / (A000034 (A004273 n).toNat : ℚ)

end

end A167682.P12197520944162127848

namespace A167682

/-- `A113071(n)/A000034(A004273(n))` -/
def P12197520944162127848.Spec : Prop :=
  ∀ n, P12197520944162127848.a n = (A167682 n : ℚ)

end A167682

/-! ## A167682.P2421580084924879816

`A113071(n)/A006530(A267584(n))`
-/

namespace A167682.P2421580084924879816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113071 n : ℚ) / (A006530 (A267584 n).toNat : ℚ)

end

end A167682.P2421580084924879816

namespace A167682

/-- `A113071(n)/A006530(A267584(n))` -/
def P2421580084924879816.Spec : Prop :=
  ∀ n, P2421580084924879816.a n = (A167682 n : ℚ)

end A167682

/-! ## A167682.P11046713058817023444

`A113071(n)/A267584(A267584(n)-1)`
-/

namespace A167682.P11046713058817023444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113071 n : ℚ) / (A267584 (A267584 n - 1).toNat : ℚ)

end

end A167682.P11046713058817023444

namespace A167682

/-- `A113071(n)/A267584(A267584(n)-1)` -/
def P11046713058817023444.Spec : Prop :=
  ∀ n, P11046713058817023444.a n = (A167682 n : ℚ)

end A167682

/-! ## A167682.P16172122216490644686

`A268633(n+1)/A040006(n)`
-/

namespace A167682.P16172122216490644686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268633 (n + 1) : ℚ) / (A040006 n : ℚ)

end

end A167682.P16172122216490644686

namespace A167682

/-- `A268633(n+1)/A040006(n)` -/
def P16172122216490644686.Spec : Prop :=
  ∀ n, P16172122216490644686.a n = (A167682 n : ℚ)

end A167682

/-! ## A167682.P17158366545709287953

`(A113071(n)+A097805(∑[n]))/2`
-/

namespace A167682.P17158366545709287953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113071 n + A097805 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A167682.P17158366545709287953

namespace A167682

/-- `(A113071(n)+A097805(∑[n]))/2` -/
def P17158366545709287953.Spec : Prop :=
  ∀ n, P17158366545709287953.a n = (A167682 n : ℚ)

end A167682

/-! ## A167682.P6544592237367762876

`(A124647(n)-A229277(n))²/A124647(n)`
-/

namespace A167682.P6544592237367762876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A124647 n - A229277 n) ^ 2 : ℚ) / (A124647 n : ℚ)

end

end A167682.P6544592237367762876

namespace A167682

/-- `(A124647(n)-A229277(n))²/A124647(n)` -/
def P6544592237367762876.Spec : Prop :=
  ∀ n, P6544592237367762876.a n = (A167682 n : ℚ)

end A167682

/-!
# A167683: Hankel transform of A007325.

The programs for A167683, the canonical program `A167683.P15759584013371215298` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167683 has offset 0).

The definition of A167683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167683.P4673799126895644936

`Δ[-floor(2*sqrt(n))]^∑[n]`
-/

namespace A167683.P4673799126895644936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊2 * Real.sqrt (n : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A167683.P4673799126895644936

namespace A167683

/-- `Δ[-floor(2*sqrt(n))]^∑[n]` -/
def P4673799126895644936.Spec : Prop :=
  ∀ n, P4673799126895644936.a n = A167683 n

end A167683

/-! ## A167683.P1549541232064639837

`((-1)^∑[n])%Δ[floor((sqrt(n)+1)²)]`
-/

namespace A167683.P1549541232064639837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (n : ℝ) + 1) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (f2 (n + 1) - f2 n)

end

end A167683.P1549541232064639837

namespace A167683

/-- `((-1)^∑[n])%Δ[floor((sqrt(n)+1)²)]` -/
def P1549541232064639837.Spec : Prop :=
  ∀ n, P1549541232064639837.a n = A167683 n

end A167683

/-! ## A167683.P426003831211996671

`(-1)^∑[n]*Δ[A293137(n)]`
-/

namespace A167683.P426003831211996671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A167683.P426003831211996671

namespace A167683

/-- `(-1)^∑[n]*Δ[A293137(n)]` -/
def P426003831211996671.Spec : Prop :=
  ∀ n, P426003831211996671.a n = A167683 n

end A167683

/-! ## A167683.P11899247220584777118

`round((1-and(2, -n))/A183162(n))`
-/

namespace A167683.P11899247220584777118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - Int.land 2 (-(n : ℤ)) : ℚ) / (A183162 n : ℚ))

end

end A167683.P11899247220584777118

namespace A167683

/-- `round((1-and(2, -n))/A183162(n))` -/
def P11899247220584777118.Spec : Prop :=
  ∀ n, P11899247220584777118.a n = A167683 n

end A167683

/-! ## A167683.P11999160702347203870

`(-1)^∑[n]*char[A198442(n+1)]`
-/

namespace A167683.P11999160702347203870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167683.P11999160702347203870

namespace A167683

/-- `(-1)^∑[n]*char[A198442(n+1)]` -/
def P11999160702347203870.Spec : Prop :=
  ∀ n, P11999160702347203870.a n = A167683 n

end A167683

/-! ## A167683.P18342730463935222712

`char[ceil(record[((n+1)/2)²-(n+1)])]*A034947(n+1)`
-/

namespace A167683.P18342730463935222712
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2) ^ 2 - (n + 1 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A034947 (n + 1)

end

end A167683.P18342730463935222712

namespace A167683

/-- `char[ceil(record[((n+1)/2)²-(n+1)])]*A034947(n+1)` -/
def P18342730463935222712.Spec : Prop :=
  ∀ n, P18342730463935222712.a n = A167683 n

end A167683

/-! ## A167683.P9571938554616892941

`A167752(A028392(n+1))`
-/

namespace A167683.P9571938554616892941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167752 (A028392 (n + 1)).toNat

end

end A167683.P9571938554616892941

namespace A167683

/-- `A167752(A028392(n+1))` -/
def P9571938554616892941.Spec : Prop :=
  ∀ n, P9571938554616892941.a n = A167683 n

end A167683

/-! ## A167683.P1494548810838742343

`A167752(A164386(n+1))`
-/

namespace A167683.P1494548810838742343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167752 (A164386 (n + 1)).toNat

end

end A167683.P1494548810838742343

namespace A167683

/-- `A167752(A164386(n+1))` -/
def P1494548810838742343.Spec : Prop :=
  ∀ n, P1494548810838742343.a n = A167683 n

end A167683

/-! ## A167683.P17584674834030694679

`round(A087960(n)/A183162(n))`
-/

namespace A167683.P17584674834030694679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087960 n : ℚ) / (A183162 n : ℚ))

end

end A167683.P17584674834030694679

namespace A167683

/-- `round(A087960(n)/A183162(n))` -/
def P17584674834030694679.Spec : Prop :=
  ∀ n, P17584674834030694679.a n = A167683 n

end A167683

/-! ## A167683.P15759584013371215298

`Δ[A293137(n)]*A087960(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167683

/-- `Δ[A293137(n)]*A087960(n)` -/
def P15759584013371215298.Spec : Prop :=
  ∀ n, P15759584013371215298.a n = A167683 n

theorem P15759584013371215298.correct : P15759584013371215298.Spec := by
  intro n
  simp only [A167683]

end A167683

/-! ## A167683.P5546738637078511174

`A167687(n)+A167686(n)`
-/

namespace A167683.P5546738637078511174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167687 n + A167686 n

end

end A167683.P5546738637078511174

namespace A167683

/-- `A167687(n)+A167686(n)` -/
def P5546738637078511174.Spec : Prop :=
  ∀ n, P5546738637078511174.a n = A167683 n

end A167683

/-!
# A167684: Triangle read by rows given by [2,-1,1,-2,0,0,0,0,0,0,0,...] DELTA [1,0,1,-1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A167684, the canonical program `A167684.P2154934591697718303` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167684 has offset 0).

The definition of A167684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167684.P8980110367256154361

`and(A130452(n+1), A158799(n))`
-/

namespace A167684.P8980110367256154361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130452 (n + 1)) (A158799 n)

end

end A167684.P8980110367256154361

namespace A167684

/-- `and(A130452(n+1), A158799(n))` -/
def P8980110367256154361.Spec : Prop :=
  ∀ n, P8980110367256154361.a n = A167684 n

end A167684

/-! ## A167684.P11541718111706163050

`and(A003945(A025581(n)), A158799(n))`
-/

namespace A167684.P11541718111706163050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 (A025581 n).toNat) (A158799 n)

end

end A167684.P11541718111706163050

namespace A167684

/-- `and(A003945(A025581(n)), A158799(n))` -/
def P11541718111706163050.Spec : Prop :=
  ∀ n, P11541718111706163050.a n = A167684 n

end A167684

/-! ## A167684.P8661979882561619817

`and(A029744(A099375(n)), A158799(n))`
-/

namespace A167684.P8661979882561619817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029744 (A099375 n).toNat) (A158799 n)

end

end A167684.P8661979882561619817

namespace A167684

/-- `and(A029744(A099375(n)), A158799(n))` -/
def P8661979882561619817.Spec : Prop :=
  ∀ n, P8661979882561619817.a n = A167684 n

end A167684

/-! ## A167684.P2154934591697718303

`A097806(n)+A046698(n)*A097806(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167684

/-- `A097806(n)+A046698(n)*A097806(n+1)` -/
def P2154934591697718303.Spec : Prop :=
  ∀ n, P2154934591697718303.a n = A167684 n

theorem P2154934591697718303.correct : P2154934591697718303.Spec := by
  intro n
  simp only [A167684]

end A167684

/-! ## A167684.P520216707819825222

`A167371(n)+2*A167371(n+1)`
-/

namespace A167684.P520216707819825222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167371 n + 2 * A167371 (n + 1)

end

end A167684.P520216707819825222

namespace A167684

/-- `A167371(n)+2*A167371(n+1)` -/
def P520216707819825222.Spec : Prop :=
  ∀ n, P520216707819825222.a n = A167684 n

end A167684

/-! ## A167684.P12050580353138625977

`A339600(A185782(n+1))%4`
-/

namespace A167684.P12050580353138625977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339600 (A185782 (n + 1)).toNat) 4

end

end A167684.P12050580353138625977

namespace A167684

/-- `A339600(A185782(n+1))%4` -/
def P12050580353138625977.Spec : Prop :=
  ∀ n, P12050580353138625977.a n = A167684 n

end A167684

/-! ## A167684.P11594055271237439158

`C(A347602(a(n-1))+2, A287822(n+1))` with `a(0)=1`
-/

namespace A167684.P11594055271237439158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A347602 (a (n - 1)) + 2).toNat (A287822 (n + 1)).toNat

end

end A167684.P11594055271237439158

namespace A167684

/-- `C(A347602(a(n-1))+2, A287822(n+1))` -/
def P11594055271237439158.Spec : Prop :=
  ∀ n, (P11594055271237439158.a n : ℤ) = A167684 n

end A167684

/-! ## A167684.P10043600585460395418

`A173012(A194961(n+2))`
-/

namespace A167684.P10043600585460395418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (A194961 (n + 2)).toNat

end

end A167684.P10043600585460395418

namespace A167684

/-- `A173012(A194961(n+2))` -/
def P10043600585460395418.Spec : Prop :=
  ∀ n, P10043600585460395418.a n = A167684 n

end A167684

/-! ## A167684.P1244131480639581621

`and(A000217(A130321(n)), A158799(n))`
-/

namespace A167684.P1244131480639581621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A130321 n).toNat) (A158799 n)

end

end A167684.P1244131480639581621

namespace A167684

/-- `and(A000217(A130321(n)), A158799(n))` -/
def P1244131480639581621.Spec : Prop :=
  ∀ n, P1244131480639581621.a n = A167684 n

end A167684

/-! ## A167684.P15546255749331648780

`A244544(A173787(n))`
-/

namespace A167684.P15546255749331648780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (A173787 n).toNat

end

end A167684.P15546255749331648780

namespace A167684

/-- `A244544(A173787(n))` -/
def P15546255749331648780.Spec : Prop :=
  ∀ n, P15546255749331648780.a n = A167684 n

end A167684

/-!
# A167686: Hankel transform of A003823.

The programs for A167686, there is no canonical definition to state claims against.
-/

/-! ## A167686.P10927549270368631450

`A167683(n)-A167687(n)`
-/

namespace A167686.P10927549270368631450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167683 n - A167687 n

end

end A167686.P10927549270368631450

/-! ## A167686.P16866357394230957287

`(-1)^∑[n]*Δ[A293137(n)]-A167687(n)`
-/

namespace A167686.P16866357394230957287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n) - A167687 n

end

end A167686.P16866357394230957287

/-! ## A167686.P18239251104362460097

`round((1-and(2, -n))/A183162(n))-A167687(n)`
-/

namespace A167686.P18239251104362460097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - Int.land 2 (-(n : ℤ)) : ℚ) / (A183162 n : ℚ)) - A167687 n

end

end A167686.P18239251104362460097

/-! ## A167686.P13566771437580253423

`(-1)^∑[n]*char[A198442(n+1)]-A167687(n)`
-/

namespace A167686.P13566771437580253423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A167687 n

end

end A167686.P13566771437580253423

/-! ## A167686.P11676329526775617456

`round(A087960(n)/A183162(n)-A167687(n))`
-/

namespace A167686.P11676329526775617456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087960 n : ℚ) / (A183162 n : ℚ) - (A167687 n : ℚ))

end

end A167686.P11676329526775617456

/-! ## A167686.P13882182658083662251

`Δ[A293137(n)]*A087960(n)-A167687(n)`
-/

namespace A167686.P13882182658083662251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A087960 n - A167687 n

end

end A167686.P13882182658083662251

/-!
# A167687: a(n)=A167683(n)-A167686(n).

The programs for A167687, there is no canonical definition to state claims against.
-/

/-! ## A167687.P6226734711938888178

`A167683(n)-A167686(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167687.P6226734711938888178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167683 n - A167686 n

end

end A167687.P6226734711938888178

/-! ## A167687.P14803851525277400841

`A143379(A090187(n+1)*A329606(n+1))`
-/

namespace A167687.P14803851525277400841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143379 (A090187 (n + 1) * A329606 (n + 1)).toNat

end

end A167687.P14803851525277400841

/-! ## A167687.P7654915468611407622

`A083093(A325849(2*(n+1)))-A284957(n+1)`
-/

namespace A167687.P7654915468611407622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083093 (A325849 (2 * (n + 1))).toNat - A284957 (n + 1)

end

end A167687.P7654915468611407622

/-!
# A167688: Number of ways of factoring n with all factors greater than 1 (a(1)=1 by convention) minus number of nonprime divisors of n.

The programs for A167688, there is no canonical definition to state claims against.
-/

/-! ## A167688.P10536331596805160985

`A001055(n+1)-A033273(n+1)`
-/

namespace A167688.P10536331596805160985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A033273 (n + 1)

end

end A167688.P10536331596805160985

/-! ## A167688.P5077625967855811616

`Δ[A096276(n)]-A033273(n+1)`
-/

namespace A167688.P5077625967855811616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033273 (n + 1)

end

end A167688.P5077625967855811616

/-! ## A167688.P16183589249835031690

`A028422(n+1)-A055212(n+1)`
-/

namespace A167688.P16183589249835031690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) - A055212 (n + 1)

end

end A167688.P16183589249835031690

/-! ## A167688.P18026430187778828077

`A028422(n+1)+1-A033273(n+1)`
-/

namespace A167688.P18026430187778828077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A033273 (n + 1))

end

end A167688.P18026430187778828077

/-! ## A167688.P11638896577482265090

`A028422(n+1)+A024000(A033273(n+1))`
-/

namespace A167688.P11638896577482265090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + A024000 (A033273 (n + 1)).toNat

end

end A167688.P11638896577482265090

/-! ## A167688.P4838901313743128855

`A096276(n+1)-(A096276(n)+A033273(n+1))`
-/

namespace A167688.P4838901313743128855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1) - (A096276 n + A033273 (n + 1))

end

end A167688.P4838901313743128855

/-! ## A167688.P4655362189786007163

`A001055(n+1)+A001221(n+1)-A000005(n+1)`
-/

namespace A167688.P4655362189786007163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) + (A001221 (n + 1) - A000005 (n + 1))

end

end A167688.P4655362189786007163

/-! ## A167688.P10078430304757985830

`A330936(n+1)-A321516(n+1)`
-/

namespace A167688.P10078430304757985830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330936 (n + 1) - A321516 (n + 1)

end

end A167688.P10078430304757985830

/-! ## A167688.P16420026530887543039

`A001221(A206244(A281118(n+1))!)`
-/

namespace A167688.P16420026530887543039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A206244 (A281118 (n + 1)).toNat).toNat)

end

end A167688.P16420026530887543039

/-!
# A167690: The even composites c such that c=q*g*j*y and q+g=j*y where q,g,j,y are primes.

The programs for A167690, there is no canonical definition to state claims against.
-/

/-! ## A167690.P16806054426079516623

`filter[A349241(n+1), A327861(#)]`
-/

namespace A167690.P16806054426079516623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A167690.P16806054426079516623

/-! ## A167690.P18055713673905796321

`A115585(n+1)*A124785(A153678(n+1))`
-/

namespace A167690.P18055713673905796321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1) * A124785 (A153678 (n + 1)).toNat

end

end A167690.P18055713673905796321

/-!
# A167692: The even nonisolated nonprimes.

The programs for A167692, the canonical program `A167692.P14273374061267607574` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167692 has offset 1).

The definition of A167692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167692.P14663419819898519388

`comp[or(n, A292438(n))]`
-/

namespace A167692.P14663419819898519388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A292438 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167692.P14663419819898519388

namespace A167692

/-- `comp[or(n, A292438(n))]` -/
def P14663419819898519388.Spec : Prop :=
  ∀ n, (P14663419819898519388.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P7897024591241049752

`2*A168044(n+1)`
-/

namespace A167692.P7897024591241049752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168044 (n + 1)

end

end A167692.P7897024591241049752

namespace A167692

/-- `2*A168044(n+1)` -/
def P7897024591241049752.Spec : Prop :=
  ∀ n, P7897024591241049752.a n = A167692 (n + 1)

end A167692

/-! ## A167692.P14273374061267607574

`filter[2*n, A292438(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A167692

/-- `filter[2*n, A292438(#)]` -/
def P14273374061267607574.Spec : Prop :=
  ∀ n, (P14273374061267607574.a n : ℤ) = A167692 (n + 1)

theorem P14273374061267607574.correct : P14273374061267607574.Spec := by
  intro n
  simp only [A167692, Nat.add_sub_cancel]

end A167692

/-! ## A167692.P5892709270712289433

`2*comp[A168497(n+1)]`
-/

namespace A167692.P5892709270712289433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167692.P5892709270712289433

namespace A167692

/-- `2*comp[A168497(n+1)]` -/
def P5892709270712289433.Spec : Prop :=
  ∀ n, (P5892709270712289433.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P3093108436938566487

`2*eq[1, A292438(2*n)]`
-/

namespace A167692.P3093108436938566487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167692.P3093108436938566487

namespace A167692

/-- `2*eq[1, A292438(2*n)]` -/
def P3093108436938566487.Spec : Prop :=
  ∀ n, (P3093108436938566487.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P11381069020632378580

`∩[2*n, A164276(n+1)]`
-/

namespace A167692.P11381069020632378580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167692.P11381069020632378580

namespace A167692

/-- `∩[2*n, A164276(n+1)]` -/
def P11381069020632378580.Spec : Prop :=
  ∀ n, (P11381069020632378580.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P5200231252718604685

`A005843(A168044(n+1))`
-/

namespace A167692.P5200231252718604685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A168044 (n + 1)).toNat

end

end A167692.P5200231252718604685

namespace A167692

/-- `A005843(A168044(n+1))` -/
def P5200231252718604685.Spec : Prop :=
  ∀ n, P5200231252718604685.a n = A167692 (n + 1)

end A167692

/-! ## A167692.P6599970043217874718

`eq[A000034(n), A292438(n)]`
-/

namespace A167692.P6599970043217874718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P6599970043217874718

namespace A167692

/-- `eq[A000034(n), A292438(n)]` -/
def P6599970043217874718.Spec : Prop :=
  ∀ n, (P6599970043217874718.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P15885965874641693312

`eq[A010684(n), A292438(n)]`
-/

namespace A167692.P15885965874641693312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P15885965874641693312

namespace A167692

/-- `eq[A010684(n), A292438(n)]` -/
def P15885965874641693312.Spec : Prop :=
  ∀ n, (P15885965874641693312.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P18014205729549615772

`eq[A010685(n), A292438(n)]`
-/

namespace A167692.P18014205729549615772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P18014205729549615772

namespace A167692

/-- `eq[A010685(n), A292438(n)]` -/
def P18014205729549615772.Spec : Prop :=
  ∀ n, (P18014205729549615772.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P17843446780302832662

`eq[A010686(n), A292438(n)]`
-/

namespace A167692.P17843446780302832662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P17843446780302832662

namespace A167692

/-- `eq[A010686(n), A292438(n)]` -/
def P17843446780302832662.Spec : Prop :=
  ∀ n, (P17843446780302832662.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P10718421273777523426

`eq[A010687(n), A292438(n)]`
-/

namespace A167692.P10718421273777523426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P10718421273777523426

namespace A167692

/-- `eq[A010687(n), A292438(n)]` -/
def P10718421273777523426.Spec : Prop :=
  ∀ n, (P10718421273777523426.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P3433928156127518217

`eq[A010688(n), A292438(n)]`
-/

namespace A167692.P3433928156127518217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P3433928156127518217

namespace A167692

/-- `eq[A010688(n), A292438(n)]` -/
def P3433928156127518217.Spec : Prop :=
  ∀ n, (P3433928156127518217.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P6928270767908625264

`eq[A010689(n), A292438(n)]`
-/

namespace A167692.P6928270767908625264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P6928270767908625264

namespace A167692

/-- `eq[A010689(n), A292438(n)]` -/
def P6928270767908625264.Spec : Prop :=
  ∀ n, (P6928270767908625264.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P10855050037557068902

`eq[A010690(n), A292438(n)]`
-/

namespace A167692.P10855050037557068902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P10855050037557068902

namespace A167692

/-- `eq[A010690(n), A292438(n)]` -/
def P10855050037557068902.Spec : Prop :=
  ∀ n, (P10855050037557068902.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P970987249021293189

`eq[A010691(n), A292438(n)]`
-/

namespace A167692.P970987249021293189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P970987249021293189

namespace A167692

/-- `eq[A010691(n), A292438(n)]` -/
def P970987249021293189.Spec : Prop :=
  ∀ n, (P970987249021293189.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P8232331021674995707

`eq[A019303(n), A292438(n)]`
-/

namespace A167692.P8232331021674995707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P8232331021674995707

namespace A167692

/-- `eq[A019303(n), A292438(n)]` -/
def P8232331021674995707.Spec : Prop :=
  ∀ n, (P8232331021674995707.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P4298364689942812351

`eq[A019304(n), A292438(n)]`
-/

namespace A167692.P4298364689942812351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P4298364689942812351

namespace A167692

/-- `eq[A019304(n), A292438(n)]` -/
def P4298364689942812351.Spec : Prop :=
  ∀ n, (P4298364689942812351.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P5208219913252156119

`eq[A028920(n), A292438(n)]`
-/

namespace A167692.P5208219913252156119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P5208219913252156119

namespace A167692

/-- `eq[A028920(n), A292438(n)]` -/
def P5208219913252156119.Spec : Prop :=
  ∀ n, (P5208219913252156119.a n : ℤ) = A167692 (n + 1)

end A167692

/-! ## A167692.P6342475302984125875

`eq[A033999(n), A292438(n)]`
-/

namespace A167692.P6342475302984125875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167692.P6342475302984125875

namespace A167692

/-- `eq[A033999(n), A292438(n)]` -/
def P6342475302984125875.Spec : Prop :=
  ∀ n, (P6342475302984125875.a n : ℤ) = A167692 (n + 1)

end A167692

