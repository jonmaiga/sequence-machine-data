import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A198147: Numbers k for which there are non-isomorphic groups of order k whose core quandles are isomorphic.

The programs for A198147, there is no canonical definition to state claims against.
-/

/-! ## A198147.P12460993865450382384

`A122379(lt[∑[4*n], A110742(n+1)])`
-/

namespace A198147.P12460993865450382384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122379 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A198147.P12460993865450382384

/-!
# A198148: a(n) = n*(n+2)*(9 - 7*(-1)^n)/16.

The programs for A198148, the canonical program `A198148.P13819396041724237517` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198148 has offset 0).

The definition of A198148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*(9-7*(-1)^n)/16` (program `A198148.P3032729372621690630`, by `A198148.P3032729372621690630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198148.P3032729372621690630

`n*(n+2)*(9-7*(-1)^n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198148.P3032729372621690630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 2) : ℤ) * (9 - 7 * (-1) ^ n) : ℚ) / 16

end

end A198148.P3032729372621690630

namespace A198148

/-- `n*(n+2)*(9-7*(-1)^n)/16` -/
def P3032729372621690630.Spec : Prop :=
  ∀ n, P3032729372621690630.a n = (A198148 n : ℚ)

theorem P3032729372621690630.correct : P3032729372621690630.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A198148, Nat.add_sub_cancel, A198148.P3032729372621690630.a, A198148.P13819396041724237517.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A198148, Nat.add_sub_cancel, A198148.P3032729372621690630.a, A198148.P13819396041724237517.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198148

/-! ## A198148.P13819396041724237517

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=15, a(4)=3, a(5)=35`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198148

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P13819396041724237517.Spec : Prop :=
  ∀ n, P13819396041724237517.a n = A198148 n

theorem P13819396041724237517.correct : P13819396041724237517.Spec := by
  intro n
  simp only [A198148]

end A198148

/-! ## A198148.P798842072594425659

`gcd(n*(n+2), C(∑[n], 2))`
-/

namespace A198148.P798842072594425659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * (n + 2)) (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A198148.P798842072594425659

namespace A198148

/-- `gcd(n*(n+2), C(∑[n], 2))` -/
def P798842072594425659.Spec : Prop :=
  ∀ n, (P798842072594425659.a n : ℤ) = A198148 n

end A198148

/-! ## A198148.P330605547965582208

`gcd(1-(n+1)², ∑[∑[∑[3*n]]])`
-/

namespace A198148.P330605547965582208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((n + 1) ^ 2 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A198148.P330605547965582208

namespace A198148

/-- `gcd(1-(n+1)², ∑[∑[∑[3*n]]])` -/
def P330605547965582208.Spec : Prop :=
  ∀ n, (P330605547965582208.a n : ℤ) = A198148 n

end A198148

/-! ## A198148.P9996163843379734750

`sqrt(A181318(n+2)*A181318(n))`
-/

namespace A198148.P9996163843379734750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 (n + 2) * A181318 n : ℝ)

end

end A198148.P9996163843379734750

namespace A198148

/-- `sqrt(A181318(n+2)*A181318(n))` -/
def P9996163843379734750.Spec : Prop :=
  ∀ n, P9996163843379734750.a n = (A198148 n : ℝ)

end A198148

/-!
# A198149: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198149, there is no canonical definition to state claims against.
-/

/-! ## A198149.P436022187169499702

`A198155(∑[4*n]+1)`
-/

namespace A198149.P436022187169499702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198149.P436022187169499702

/-! ## A198149.P3030537466208280003

`record[A198155(Δ[A235355(n)])]`
-/

namespace A198149.P3030537466208280003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198149.P3030537466208280003

/-! ## A198149.P10752547423531663993

`record[A198155(A330613(n+1))]`
-/

namespace A198149.P10752547423531663993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198149.P10752547423531663993

/-! ## A198149.P15563342242241518998

`or(char[1], A198155(A001844(n)))`
-/

namespace A198149.P15563342242241518998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198155 (A001844 n).toNat)

end

end A198149.P15563342242241518998

/-!
# A198150: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198150, there is no canonical definition to state claims against.
-/

/-! ## A198150.P4084498422797912573

`A198155(∑[n+2]+4)`
-/

namespace A198150.P4084498422797912573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198150.P4084498422797912573

/-! ## A198150.P1262658425289687240

`A198155(A167614(n+1))+A086015(n)`
-/

namespace A198150.P1262658425289687240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A167614 (n + 1)).toNat + A086015 n

end

end A198150.P1262658425289687240

/-! ## A198150.P11383164693921982762

`A198155(A167614(n+1))%A016799(n)`
-/

namespace A198150.P11383164693921982762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198155 (A167614 (n + 1)).toNat) (A016799 n)

end

end A198150.P11383164693921982762

/-! ## A198150.P14413201358886129922

`gcd(A000038(n), A198155(A167614(n+1)))`
-/

namespace A198150.P14413201358886129922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A198155 (A167614 (n + 1)).toNat)

end

end A198150.P14413201358886129922

/-! ## A198150.P5644484404629808896

`lcm(A033999(n), A198155(A167614(n+1)))`
-/

namespace A198150.P5644484404629808896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A198155 (A167614 (n + 1)).toNat)

end

end A198150.P5644484404629808896

/-!
# A198151: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198151, there is no canonical definition to state claims against.
-/

/-! ## A198151.P1529273587072823471

`A198155(A374004(n+1))`
-/

namespace A198151.P1529273587072823471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A374004 (n + 1)).toNat

end

end A198151.P1529273587072823471

/-! ## A198151.P11821948341964696209

`A198155(A141214(n)+7)`
-/

namespace A198151.P11821948341964696209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A141214 n + 7).toNat

end

end A198151.P11821948341964696209

/-! ## A198151.P9044807101904483276

`A198155(A052905(n)+9)`
-/

namespace A198151.P9044807101904483276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A052905 n + 9).toNat

end

end A198151.P9044807101904483276

/-! ## A198151.P7952978583482885546

`A198155(A055999(n)+10)`
-/

namespace A198151.P7952978583482885546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A055999 n + 10).toNat

end

end A198151.P7952978583482885546

/-! ## A198151.P10085012645876171326

`A198155(A167614(n+2)+1)`
-/

namespace A198151.P10085012645876171326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A167614 (n + 2) + 1).toNat

end

end A198151.P10085012645876171326

/-!
# A198152: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198152, there is no canonical definition to state claims against.
-/

/-! ## A198152.P16220682943365630437

`A198155(∑[n+4]+11)`
-/

namespace A198152.P16220682943365630437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A198152.P16220682943365630437

/-! ## A198152.P2940743768090457039

`A198155(A167499(n+3))+A000038(n+1)`
-/

namespace A198152.P2940743768090457039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A167499 (n + 3)).toNat + A000038 (n + 1)

end

end A198152.P2940743768090457039

/-! ## A198152.P9949543668533185884

`A035115(n+1)*A198155(A000124(n+4)+4)`
-/

namespace A198152.P9949543668533185884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035115 (n + 1) * A198155 (A000124 (n + 4) + 4).toNat

end

end A198152.P9949543668533185884

/-! ## A198152.P3129732436102631433

`A198155(A000124(n+4)+4)%A035124(n+1)`
-/

namespace A198152.P3129732436102631433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198155 (A000124 (n + 4) + 4).toNat) (A035124 (n + 1))

end

end A198152.P3129732436102631433

/-! ## A198152.P5220642037023158486

`A198155(Δ[A264443(n)])%A079515(n+4)`
-/

namespace A198152.P5220642037023158486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198155 (f1 (n + 1) - f1 n).toNat) (A079515 (n + 4))

end

end A198152.P5220642037023158486

/-!
# A198153: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198153, there is no canonical definition to state claims against.
-/

/-! ## A198153.P9559910493253715312

`A198155(C(n+7, 2)-n)`
-/

namespace A198153.P9559910493253715312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (Nat.choose (n + 7) 2 - n)

end

end A198153.P9559910493253715312

/-! ## A198153.P1837566373654572510

`A198155(A374007(n+1))`
-/

namespace A198153.P1837566373654572510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A374007 (n + 1)).toNat

end

end A198153.P1837566373654572510

/-! ## A198153.P3846751346316391703

`A198155(A056115(n)+21)`
-/

namespace A198153.P3846751346316391703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A056115 n + 21).toNat

end

end A198153.P3846751346316391703

/-! ## A198153.P16600147770871971146

`A198155(A167499(n+4)+1)`
-/

namespace A198153.P16600147770871971146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A167499 (n + 4) + 1).toNat

end

end A198153.P16600147770871971146

/-! ## A198153.P17097647364207544075

`A198155(A000124(n+5)+5)`
-/

namespace A198153.P17097647364207544075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A000124 (n + 5) + 5).toNat

end

end A198153.P17097647364207544075

/-!
# A198154: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198154, there is no canonical definition to state claims against.
-/

/-! ## A198154.P17154471759584843268

`A198155(A374008(n+1))`
-/

namespace A198154.P17154471759584843268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A374008 (n + 1)).toNat

end

end A198154.P17154471759584843268

/-! ## A198154.P5327933754138825643

`A198155(A000217(n+6)+7)`
-/

namespace A198154.P5327933754138825643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A000217 (n + 6) + 7).toNat

end

end A198154.P5327933754138825643

/-! ## A198154.P12255904730455002106

`A198155(eq[8, A131818(n+1)])`
-/

namespace A198154.P12255904730455002106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198154.P12255904730455002106

/-! ## A198154.P9479116359299436207

`A198155(A055999(n+4))`
-/

namespace A198154.P9479116359299436207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (A055999 (n + 4)).toNat

end

end A198154.P9479116359299436207

/-! ## A198154.P10653473348349567945

`A198155(eq[6, A193592(n)])`
-/

namespace A198154.P10653473348349567945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198154.P10653473348349567945

/-!
# A198155: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,1,1 for x=0,1,2,3,4.

The programs for A198155, there is no canonical definition to state claims against.
-/

/-! ## A198155.P129032126807627671

`A197235(n+1)-A186034(A022167(n))`
-/

namespace A198155.P129032126807627671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (n + 1) - A186034 (A022167 n).toNat

end

end A198155.P129032126807627671

/-! ## A198155.P5255569544983028430

`A197235(n+1)-A037800(A176791(n))`
-/

namespace A198155.P5255569544983028430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (n + 1) - A037800 (A176791 n).toNat

end

end A198155.P5255569544983028430

/-! ## A198155.P12146812218189424716

`A197235(n+1)-A184159(A099594(n))`
-/

namespace A198155.P12146812218189424716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (n + 1) - A184159 (A099594 n).toNat

end

end A198155.P12146812218189424716

/-! ## A198155.P4711388162190277675

`A197235(n+1)-A318950(A008459(n))`
-/

namespace A198155.P4711388162190277675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197235 (n + 1) - A318950 (A008459 n).toNat

end

end A198155.P4711388162190277675

/-! ## A198155.P10774548397864682104

`A236109(A197235(n+1))+A197896(n+1)`
-/

namespace A198155.P10774548397864682104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236109 (A197235 (n + 1)).toNat + A197896 (n + 1)

end

end A198155.P10774548397864682104

/-!
# A198156: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 6,0,1,1,1,1,1 for x=0,1,2,3,4,5,6.

The programs for A198156, there is no canonical definition to state claims against.
-/

/-! ## A198156.P1813559223787818199

`A314339(A333982(n))-A178501(n)`
-/

namespace A198156.P1813559223787818199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314339 (A333982 n).toNat - A178501 n

end

end A198156.P1813559223787818199

/-!
# A198158: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 4,3,2,1,2,2,0 for x=0,1,2,3,4,5,6.

The programs for A198158, there is no canonical definition to state claims against.
-/

/-! ## A198158.P4065918322259722488

`A330124(n)+A000384(A000225(n))`
-/

namespace A198158.P4065918322259722488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330124 n + A000384 (A000225 n).toNat

end

end A198158.P4065918322259722488

/-!
# A198160: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,3,3,1,1,0,1 for x=0,1,2,3,4,5,6.

The programs for A198160, there is no canonical definition to state claims against.
-/

/-! ## A198160.P8851935964971801307

`A113581(A066357(n))-A105937(n)`
-/

namespace A198160.P8851935964971801307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 (A066357 n).toNat - A105937 n

end

end A198160.P8851935964971801307

/-!
# A198170: Primes from merging of 3 successive digits in decimal expansion of Pi.

The programs for A198170, there is no canonical definition to state claims against.
-/

/-! ## A198170.P9674439938354954113

`A104823(A032555(n+1))`
-/

namespace A198170.P9674439938354954113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104823 (A032555 (n + 1)).toNat

end

end A198170.P9674439938354954113

/-! ## A198170.P1004928467904122156

`A104823(A032559(n+1))`
-/

namespace A198170.P1004928467904122156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104823 (A032559 (n + 1)).toNat

end

end A198170.P1004928467904122156

/-! ## A198170.P2290041079898419682

`A104823(A077739(n+1))`
-/

namespace A198170.P2290041079898419682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104823 (A077739 (n + 1)).toNat

end

end A198170.P2290041079898419682

/-! ## A198170.P8430093728252048225

`A104823(A078213(n+1))`
-/

namespace A198170.P8430093728252048225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104823 (A078213 (n + 1)).toNat

end

end A198170.P8430093728252048225

/-! ## A198170.P13763966473400976038

`A104823(A082217(n+1))`
-/

namespace A198170.P13763966473400976038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104823 (A082217 (n + 1)).toNat

end

end A198170.P13763966473400976038

/-!
# A198171: Primes from merging of 7 successive digits in decimal expansion of Pi forbidding leading zeros.

The programs for A198171, there is no canonical definition to state claims against.
-/

/-! ## A198171.P17799017360217912230

`A104827(A051037(n+1)%A104791(n+1))`
-/

namespace A198171.P17799017360217912230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104827 (Int.tmod (A051037 (n + 1)) (A104791 (n + 1))).toNat

end

end A198171.P17799017360217912230

/-!
# A198172: Primes from merging of 8 successive digits in decimal expansion of Pi forbidding leading zeros.

The programs for A198172, there is no canonical definition to state claims against.
-/

/-! ## A198172.P13007733719662135445

`A104828(∑[A266158(n+1)!])`
-/

namespace A198172.P13007733719662135445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A266158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104828 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198172.P13007733719662135445

/-! ## A198172.P1541023696632148539

`A104828(A032559(n+1)+A002266(n))`
-/

namespace A198172.P1541023696632148539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104828 (A032559 (n + 1) + A002266 n).toNat

end

end A198172.P1541023696632148539

/-! ## A198172.P518436388571346352

`A104828(A077739(n+1)+A002266(n))`
-/

namespace A198172.P518436388571346352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104828 (A077739 (n + 1) + A002266 n).toNat

end

end A198172.P518436388571346352

/-! ## A198172.P16925202822349204862

`A104828(A082217(n+1)+A002266(n))`
-/

namespace A198172.P16925202822349204862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104828 (A082217 (n + 1) + A002266 n).toNat

end

end A198172.P16925202822349204862

/-! ## A198172.P14000443282610535587

`A104828(A161266(2*n+3)+A082217(n+1))`
-/

namespace A198172.P14000443282610535587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104828 (A161266 (2 * n + 3) + A082217 (n + 1)).toNat

end

end A198172.P14000443282610535587

/-!
# A198174: Primes from merging of 10 successive digits in decimal expansion of Pi, in the order of appearance.

The programs for A198174, there is no canonical definition to state claims against.
-/

/-! ## A198174.P1269951238356345018

`A104830(lt[A104843(n+1), A104855(2*(n+2))])`
-/

namespace A198174.P1269951238356345018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104855 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104830 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198174.P1269951238356345018

/-! ## A198174.P8436053212043828177

`A104830(lt[A198162(n+1), A104855(2*(n+2))])`
-/

namespace A198174.P8436053212043828177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104855 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104830 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198174.P8436053212043828177

/-! ## A198174.P10292382370589194846

`A104830(lt[A104820(3*n+4), A104782(n+1)])`
-/

namespace A198174.P10292382370589194846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104820 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104830 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198174.P10292382370589194846

/-!
# A198175: Primes from merging of 2 successive digits in decimal expansion of Pi.

The programs for A198175, there is no canonical definition to state claims against.
-/

/-! ## A198175.P2085685008598756293

`A104822(lt[7, A104822(n+1)]+1)`
-/

namespace A198175.P2085685008598756293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A198175.P2085685008598756293

/-! ## A198175.P16782444898755780452

`p?[A004216(A107114(n+1))*A107114(n+1)]`
-/

namespace A198175.P16782444898755780452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A107114 (n + 1)).toNat * A107114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198175.P16782444898755780452

/-! ## A198175.P17629129325726025420

`p?[A107114(n+1)-A097601(n)]`
-/

namespace A198175.P17629129325726025420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107114 (n + 1) - A097601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198175.P17629129325726025420

/-! ## A198175.P16728636632727897525

`p?[A349394(A318681(A107114(n+1)))]`
-/

namespace A198175.P16728636632727897525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (A318681 (A107114 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198175.P16728636632727897525

/-! ## A198175.P3426847564174112114

`A104822(A187829(n+1)+A161266(n+2))`
-/

namespace A198175.P3426847564174112114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104822 (A187829 (n + 1) + A161266 (n + 2)).toNat

end

end A198175.P3426847564174112114

/-!
# A198178: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198178, there is no canonical definition to state claims against.
-/

/-! ## A198178.P16315745971102844278

`A198185(∑[4*n]+1)`
-/

namespace A198178.P16315745971102844278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198178.P16315745971102844278

/-! ## A198178.P16592877234693464287

`3^C(n, 64)²*A198185((n+1)²+n²)`
-/

namespace A198178.P16592877234693464287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.choose n 64 ^ 2 : ℤ) * A198185 ((n + 1) ^ 2 + n ^ 2)

end

end A198178.P16592877234693464287

/-! ## A198178.P4791216780238657442

`record[A198185(Δ[A235355(n)])]`
-/

namespace A198178.P4791216780238657442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198178.P4791216780238657442

/-! ## A198178.P3110153885515847605

`A198185(A001844(n))+char[9]`
-/

namespace A198178.P3110153885515847605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198178.P3110153885515847605

/-! ## A198178.P9706226597495456551

`record[gcd(A003987(n), A198185(n+1))]`
-/

namespace A198178.P9706226597495456551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A198185 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198178.P9706226597495456551

/-!
# A198179: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198179, there is no canonical definition to state claims against.
-/

/-! ## A198179.P7499049741539634806

`A198185(∑[n+1]+2)`
-/

namespace A198179.P7499049741539634806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198179.P7499049741539634806

/-! ## A198179.P11676892043407027345

`A198185(A000096(n)+3)+char[18]`
-/

namespace A198179.P11676892043407027345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198179.P11676892043407027345

/-! ## A198179.P8340668076983425721

`A198185(A000096(n)+3)%A000041(5*n)`
-/

namespace A198179.P8340668076983425721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198185 (A000096 n + 3).toNat) (A000041 (5 * n))

end

end A198179.P8340668076983425721

/-! ## A198179.P939003368007177490

`A007318(C(2, n))*A198185(A000096(n)+3)`
-/

namespace A198179.P939003368007177490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A198185 (A000096 n + 3).toNat

end

end A198179.P939003368007177490

/-! ## A198179.P6707378309120814438

`A000041(C(2, n+2))*A198185(A000096(n)+3)`
-/

namespace A198179.P6707378309120814438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A198185 (A000096 n + 3).toNat

end

end A198179.P6707378309120814438

/-!
# A198180: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198180, there is no canonical definition to state claims against.
-/

/-! ## A198180.P15190997629226152564

`A198185(∑[n+2]+4)`
-/

namespace A198180.P15190997629226152564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198180.P15190997629226152564

/-! ## A198180.P3361000109857664706

`record[A198185(A016028(n+1))]`
-/

namespace A198180.P3361000109857664706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198180.P3361000109857664706

/-! ## A198180.P6695597229162691615

`or(char[1], A198185(A167614(n+1)))`
-/

namespace A198180.P6695597229162691615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198185 (A167614 (n + 1)).toNat)

end

end A198180.P6695597229162691615

/-! ## A198180.P7023717123542047315

`A198185(A046691(n)+7)+char[21]`
-/

namespace A198180.P7023717123542047315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198180.P7023717123542047315

/-! ## A198180.P5873017245850034686

`record[gcd(A198185(n+1), A303913(n))]`
-/

namespace A198180.P5873017245850034686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198185 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198180.P5873017245850034686

/-!
# A198181: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198181, there is no canonical definition to state claims against.
-/

/-! ## A198181.P12838698621876733863

`A198185(∑[n+3]+7)`
-/

namespace A198181.P12838698621876733863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198181.P12838698621876733863

/-! ## A198181.P454482419422745429

`A198185(A141214(n)+7)+char[16]`
-/

namespace A198181.P454482419422745429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198181.P454482419422745429

/-! ## A198181.P1264045917373133459

`A198185(A141214(n)+7)%A000108(n+5)`
-/

namespace A198181.P1264045917373133459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198185 (A141214 n + 7).toNat) (A000108 (n + 5))

end

end A198181.P1264045917373133459

/-! ## A198181.P6797982305172391488

`gcd(5, A007318(n))*A198185(A141214(n)+7)`
-/

namespace A198181.P6797982305172391488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A007318 n) : ℤ) * A198185 (A141214 n + 7).toNat

end

end A198181.P6797982305172391488

/-! ## A198181.P6750204809227399394

`A007318(∑{e}[n, #])*A198185(A141214(n)+7)`
-/

namespace A198181.P6750204809227399394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A198185 (A141214 n + 7).toNat

end

end A198181.P6750204809227399394

/-!
# A198182: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198182, there is no canonical definition to state claims against.
-/

/-! ## A198182.P1571413063978042985

`A198185(∑[n+4]+11)`
-/

namespace A198182.P1571413063978042985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A198182.P1571413063978042985

/-! ## A198182.P5504129309216113947

`A198185(A374005(n+1))%A206977(n+1)`
-/

namespace A198182.P5504129309216113947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198185 (A374005 (n + 1)).toNat) (A206977 (n + 1))

end

end A198182.P5504129309216113947

/-! ## A198182.P4860861126174953991

`A198185(A167499(n+3))%A001764(n+4)`
-/

namespace A198182.P4860861126174953991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198185 (A167499 (n + 3)).toNat) (A001764 (n + 4))

end

end A198182.P4860861126174953991

/-! ## A198182.P16227746663377850919

`or(A198185(A374005(n+1)), A198210(3*n+1))`
-/

namespace A198182.P16227746663377850919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198185 (A374005 (n + 1)).toNat) (A198210 (3 * n + 1))

end

end A198182.P16227746663377850919

/-!
# A198183: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198183, there is no canonical definition to state claims against.
-/

/-! ## A198183.P5237449855984222219

`A198185(A374007(n+1))`
-/

namespace A198183.P5237449855984222219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A374007 (n + 1)).toNat

end

end A198183.P5237449855984222219

/-! ## A198183.P2019662263043737136

`A198185(A056115(n)+21)`
-/

namespace A198183.P2019662263043737136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A056115 n + 21).toNat

end

end A198183.P2019662263043737136

/-! ## A198183.P7195281490490225045

`A198185(A167499(n+4)+1)`
-/

namespace A198183.P7195281490490225045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A167499 (n + 4) + 1).toNat

end

end A198183.P7195281490490225045

/-! ## A198183.P15335067173260610604

`A198185(A133263(n+5)+4)`
-/

namespace A198183.P15335067173260610604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A133263 (n + 5) + 4).toNat

end

end A198183.P15335067173260610604

/-! ## A198183.P17764888383981662468

`A198185(A000124(n+5)+5)`
-/

namespace A198183.P17764888383981662468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A000124 (n + 5) + 5).toNat

end

end A198183.P17764888383981662468

/-!
# A198184: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198184, there is no canonical definition to state claims against.
-/

/-! ## A198184.P10567045737038415826

`A198185(A374008(n+1))`
-/

namespace A198184.P10567045737038415826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A374008 (n + 1)).toNat

end

end A198184.P10567045737038415826

/-! ## A198184.P736007130235863212

`A198185(A167487(n+5))`
-/

namespace A198184.P736007130235863212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A167487 (n + 5)).toNat

end

end A198184.P736007130235863212

/-! ## A198184.P16734807272701558396

`A198185(A056119(n)+28)`
-/

namespace A198184.P16734807272701558396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A056119 n + 28).toNat

end

end A198184.P16734807272701558396

/-! ## A198184.P17354340823108576498

`A198185(eq[11, A066657(n)])`
-/

namespace A198184.P17354340823108576498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198184.P17354340823108576498

/-! ## A198184.P5956926201719598813

`A198185(A166136(n+5)+1)`
-/

namespace A198184.P5956926201719598813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198185 (A166136 (n + 5) + 1).toNat

end

end A198184.P5956926201719598813

/-!
# A198185: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,2,1,0,0 for x=0,1,2,3,4.

The programs for A198185, there is no canonical definition to state claims against.
-/

/-! ## A198185.P3379177364907500421

`A196138(n+1)+A186746(A240063(n))`
-/

namespace A198185.P3379177364907500421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (n + 1) + A186746 (A240063 n).toNat

end

end A198185.P3379177364907500421

/-! ## A198185.P14245987245855199536

`A257564(5*A197889(n+1))+A186746(A240063(n))`
-/

namespace A198185.P14245987245855199536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (5 * A197889 (n + 1)).toNat + A186746 (A240063 n).toNat

end

end A198185.P14245987245855199536

/-! ## A198185.P1962608001336521262

`A186746(A240063(n))+and(A005408(A038291(n)), A197889(n+1))`
-/

namespace A198185.P1962608001336521262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A240063 n).toNat + Int.land (A005408 (A038291 n).toNat) (A197889 (n + 1))

end

end A198185.P1962608001336521262

/-! ## A198185.P16125466911843407663

`A276570(A000051(n))+A196138(n+1)`
-/

namespace A198185.P16125466911843407663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276570 (A000051 n).toNat + A196138 (n + 1)

end

end A198185.P16125466911843407663

/-!
# A198186: Locations of records in A195199.

The programs for A198186, there is no canonical definition to state claims against.
-/

/-! ## A198186.P14493118869791338672

`∑[A064989(∏[A223025(n+1)])]`
-/

namespace A198186.P14493118869791338672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223025 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198186.P14493118869791338672

/-! ## A198186.P2041877859481235882

`A175027(A217660(n+1))`
-/

namespace A198186.P2041877859481235882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175027 (A217660 (n + 1)).toNat

end

end A198186.P2041877859481235882

/-! ## A198186.P7411463062657534730

`∑[∏[A050361(A018042(n))]]`
-/

namespace A198186.P7411463062657534730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A018042 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198186.P7411463062657534730

/-! ## A198186.P3594034818075081631

`∑[A015053(∏[A124927(n)])]`
-/

namespace A198186.P3594034818075081631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198186.P3594034818075081631

/-! ## A198186.P13966132648839894933

`∑[∏[A253051(A020707(n))]]`
-/

namespace A198186.P13966132648839894933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253051 (A020707 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198186.P13966132648839894933

/-!
# A198191: Start with sequence 1,2,3, after this a(n) is smallest number > a(n-1) coprime to sum of previous elements.

The programs for A198191, there is no canonical definition to state claims against.
-/

/-! ## A198191.P12602497938872137478

`∑[A304036(A303552(2*n+3))]`
-/

namespace A198191.P12602497938872137478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304036 (A303552 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198191.P12602497938872137478

/-! ## A198191.P3880550166338101567

`∑[gcd(A147947(n+1), A160137(n))]`
-/

namespace A198191.P3880550166338101567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147947 (n + 1)) (A160137 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198191.P3880550166338101567

/-! ## A198191.P5323666224710266645

`lt[A069607(A209164(n+3)), A060640(n+1)]`
-/

namespace A198191.P5323666224710266645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069607 (A209164 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A198191.P5323666224710266645

/-! ## A198191.P16899953876495163611

`lt[A158290(A000265(n+3)), A196184(n+5)]`
-/

namespace A198191.P16899953876495163611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158290 (A000265 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196184 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A198191.P16899953876495163611

/-! ## A198191.P1206391104472712737

`A229655(A113010(n))+∑[A274451(2*n+3)]`
-/

namespace A198191.P1206391104472712737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274451 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229655 (A113010 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198191.P1206391104472712737

/-!
# A198192: Replace 2^k in the binary representation of n with n-k (i.e. if n = 2^a + 2^b + 2^c + ... then a(n) = (n-a) + (n-b) + (n-c) + ...).

The programs for A198192, the canonical program `A198192.P297267374256015153` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198192 has offset 0).

The definition of A198192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A198192.P297267374256015153

`n*A000120(n)-A073642(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A198192

/-- `n*A000120(n)-A073642(n)` -/
def P297267374256015153.Spec : Prop :=
  ∀ n, P297267374256015153.a n = A198192 n

theorem P297267374256015153.correct : P297267374256015153.Spec := by
  intro n
  simp only [A198192]

end A198192

/-! ## A198192.P16862202513544469376

`A249154(n)-A029931(n)`
-/

namespace A198192.P16862202513544469376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A029931 n

end

end A198192.P16862202513544469376

namespace A198192

/-- `A249154(n)-A029931(n)` -/
def P16862202513544469376.Spec : Prop :=
  ∀ n, P16862202513544469376.a n = A198192 n

end A198192

/-! ## A198192.P15537089606125873322

`A245788(n)-A073642(n)`
-/

namespace A198192.P15537089606125873322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A073642 n

end

end A198192.P15537089606125873322

namespace A198192

/-- `A245788(n)-A073642(n)` -/
def P15537089606125873322.Spec : Prop :=
  ∀ n, P15537089606125873322.a n = A198192 n

end A198192

/-! ## A198192.P16368063200994109232

`(n+1)*A000120(n)-A029931(n)`
-/

namespace A198192.P16368063200994109232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 n - A029931 n

end

end A198192.P16368063200994109232

namespace A198192

/-- `(n+1)*A000120(n)-A029931(n)` -/
def P16368063200994109232.Spec : Prop :=
  ∀ n, P16368063200994109232.a n = A198192 n

end A198192

/-! ## A198192.P5348088770089238430

`n*A073642(A001316(n))-A073642(n)`
-/

namespace A198192.P5348088770089238430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073642 (A001316 n).toNat - A073642 n

end

end A198192.P5348088770089238430

namespace A198192

/-- `n*A073642(A001316(n))-A073642(n)` -/
def P5348088770089238430.Spec : Prop :=
  ∀ n, P5348088770089238430.a n = A198192 n

end A198192

/-! ## A198192.P2751395659968390516

`A359495(n)+A198193(n)`
-/

namespace A198192.P2751395659968390516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n + A198193 n

end

end A198192.P2751395659968390516

namespace A198192

/-- `A359495(n)+A198193(n)` -/
def P2751395659968390516.Spec : Prop :=
  ∀ n, P2751395659968390516.a n = A198192 n

end A198192

/-! ## A198192.P13175571512722806946

`A198193(n)+A231204(n)-A073642(n)`
-/

namespace A198192.P13175571512722806946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198193 n + (A231204 n - A073642 n)

end

end A198192.P13175571512722806946

namespace A198192

/-- `A198193(n)+A231204(n)-A073642(n)` -/
def P13175571512722806946.Spec : Prop :=
  ∀ n, P13175571512722806946.a n = A198192 n

end A198192

/-!
# A198193: Replace 2^k in the binary representation of n with n+(k-L) where L = floor(log(n)/log(2)).

The programs for A198193, there is no canonical definition to state claims against.
-/

/-! ## A198193.P608531403339675606

`n*∑[∑{e}[xor(n, -n), 2-#]]-A231204(n)`
-/

namespace A198193.P608531403339675606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A231204 n

end

end A198193.P608531403339675606

/-! ## A198193.P6012865760110761496

`(n+1)*∑[1-val(abs(1-n)+1, 2)]-A230877(n)`
-/

namespace A198193.P6012865760110761496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A230877 n

end

end A198193.P6012865760110761496

/-! ## A198193.P11316841495688021922

`A245788(n)-A231204(n)`
-/

namespace A198193.P11316841495688021922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A231204 n

end

end A198193.P11316841495688021922

/-! ## A198193.P16149216278511161120

`A249154(n)-A230877(n)`
-/

namespace A198193.P16149216278511161120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A230877 n

end

end A198193.P16149216278511161120

/-! ## A198193.P16152406811129995567

`A198192(n)-A359495(n)`
-/

namespace A198193.P16152406811129995567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198192 n - A359495 n

end

end A198193.P16152406811129995567

/-! ## A198193.P10353810753486593443

`n*A000120(n)-A231204(n)`
-/

namespace A198193.P10353810753486593443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A231204 n

end

end A198193.P10353810753486593443

/-! ## A198193.P13278162520181150803

`(n+1)*A000120(n)-A230877(n)`
-/

namespace A198193.P13278162520181150803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 n - A230877 n

end

end A198193.P13278162520181150803

/-! ## A198193.P2186293305137030915

`A249154(n)-A029931(A030101(n))`
-/

namespace A198193.P2186293305137030915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A029931 (A030101 n).toNat

end

end A198193.P2186293305137030915

/-! ## A198193.P18091491877603304968

`A245788(n)-A073642(A030101(n))`
-/

namespace A198193.P18091491877603304968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A073642 (A030101 n).toNat

end

end A198193.P18091491877603304968

/-! ## A198193.P806202364223681012

`A249154(n)-A055941(A196168(n))`
-/

namespace A198193.P806202364223681012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A055941 (A196168 n).toNat

end

end A198193.P806202364223681012

/-!
# A198194: Greatest number k such that p(k) <= n, p(k) being the number of unrestricted partitions of k.

The programs for A198194, the canonical program `A198194.P15362504229805961140` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198194 has offset 1).

The definition of A198194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198194.P13799260334434326431

`∑[char[A000065(n)]]`
-/

namespace A198194.P13799260334434326431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P13799260334434326431

namespace A198194

/-- `∑[char[A000065(n)]]` -/
def P13799260334434326431.Spec : Prop :=
  ∀ n, (P13799260334434326431.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P3845887667262823090

`∑[A167392(n+1)]`
-/

namespace A198194.P3845887667262823090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P3845887667262823090

namespace A198194

/-- `∑[A167392(n+1)]` -/
def P3845887667262823090.Spec : Prop :=
  ∀ n, P3845887667262823090.a n = A198194 (n + 1)

end A198194

/-! ## A198194.P16658813740476778872

`∑[char[Δ[A058682(n)]]]`
-/

namespace A198194.P16658813740476778872
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P16658813740476778872

namespace A198194

/-- `∑[char[Δ[A058682(n)]]]` -/
def P16658813740476778872.Spec : Prop :=
  ∀ n, (P16658813740476778872.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P3927990769185926725

`∑[char[Δ[A173238(n)]]]`
-/

namespace A198194.P3927990769185926725
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P3927990769185926725

namespace A198194

/-- `∑[char[Δ[A173238(n)]]]` -/
def P3927990769185926725.Spec : Prop :=
  ∀ n, (P3927990769185926725.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P15362504229805961140

`ceil(log2(A194602(n)+2))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A198194

/-- `ceil(log2(A194602(n)+2))` -/
def P15362504229805961140.Spec : Prop :=
  ∀ n, P15362504229805961140.a n = A198194 (n + 1)

theorem P15362504229805961140.correct : P15362504229805961140.Spec := by
  intro n
  simp only [A198194, Nat.add_sub_cancel]

end A198194

/-! ## A198194.P11586626699273527285

`∑[A186114(∑[n]+1)]`
-/

namespace A198194.P11586626699273527285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P11586626699273527285

namespace A198194

/-- `∑[A186114(∑[n]+1)]` -/
def P11586626699273527285.Spec : Prop :=
  ∀ n, P11586626699273527285.a n = A198194 (n + 1)

end A198194

/-! ## A198194.P4063200217505517475

`∑[A193870(∑[n+1])]`
-/

namespace A198194.P4063200217505517475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P4063200217505517475

namespace A198194

/-- `∑[A193870(∑[n+1])]` -/
def P4063200217505517475.Spec : Prop :=
  ∀ n, P4063200217505517475.a n = A198194 (n + 1)

end A198194

/-! ## A198194.P4740564551590416609

`∑[char[A000041(n)-1]]`
-/

namespace A198194.P4740564551590416609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P4740564551590416609

namespace A198194

/-- `∑[char[A000041(n)-1]]` -/
def P4740564551590416609.Spec : Prop :=
  ∀ n, (P4740564551590416609.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P15119852227962245672

`∑[char[A035363(n)-1]]`
-/

namespace A198194.P15119852227962245672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P15119852227962245672

namespace A198194

/-- `∑[char[A035363(n)-1]]` -/
def P15119852227962245672.Spec : Prop :=
  ∀ n, (P15119852227962245672.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P13277551428559759183

`∑[char[A035377(n)-1]]`
-/

namespace A198194.P13277551428559759183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P13277551428559759183

namespace A198194

/-- `∑[char[A035377(n)-1]]` -/
def P13277551428559759183.Spec : Prop :=
  ∀ n, (P13277551428559759183.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P9263909720866321784

`∑[char[A035444(n)-1]]`
-/

namespace A198194.P9263909720866321784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P9263909720866321784

namespace A198194

/-- `∑[char[A035444(n)-1]]` -/
def P9263909720866321784.Spec : Prop :=
  ∀ n, (P9263909720866321784.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P9514437281391586894

`∑[char[A119620(n)-1]]`
-/

namespace A198194.P9514437281391586894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P9514437281391586894

namespace A198194

/-- `∑[char[A119620(n)-1]]` -/
def P9514437281391586894.Spec : Prop :=
  ∀ n, (P9514437281391586894.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P6727039020366269520

`∑[char[A174712(n)-1]]`
-/

namespace A198194.P6727039020366269520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174712 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P6727039020366269520

namespace A198194

/-- `∑[char[A174712(n)-1]]` -/
def P6727039020366269520.Spec : Prop :=
  ∀ n, (P6727039020366269520.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P14352958639633922926

`∑[char[A213598(n)-1]]`
-/

namespace A198194.P14352958639633922926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P14352958639633922926

namespace A198194

/-- `∑[char[A213598(n)-1]]` -/
def P14352958639633922926.Spec : Prop :=
  ∀ n, (P14352958639633922926.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P8500727428649105037

`∑[char[A330642(n)-1]]`
-/

namespace A198194.P8500727428649105037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330642 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P8500727428649105037

namespace A198194

/-- `∑[char[A330642(n)-1]]` -/
def P8500727428649105037.Spec : Prop :=
  ∀ n, (P8500727428649105037.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P6374344450151420894

`∑[char[A330643(n)-1]]`
-/

namespace A198194.P6374344450151420894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P6374344450151420894

namespace A198194

/-- `∑[char[A330643(n)-1]]` -/
def P6374344450151420894.Spec : Prop :=
  ∀ n, (P6374344450151420894.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P14990919461360559388

`∑[char[∑[A002865(n+1)]]]`
-/

namespace A198194.P14990919461360559388
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P14990919461360559388

namespace A198194

/-- `∑[char[∑[A002865(n+1)]]]` -/
def P14990919461360559388.Spec : Prop :=
  ∀ n, (P14990919461360559388.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P3105959532061883644

`∑[char[∑[A035955(n+1)]]]`
-/

namespace A198194.P3105959532061883644
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P3105959532061883644

namespace A198194

/-- `∑[char[∑[A035955(n+1)]]]` -/
def P3105959532061883644.Spec : Prop :=
  ∀ n, (P3105959532061883644.a n : ℤ) = A198194 (n + 1)

end A198194

/-! ## A198194.P6951560531757742430

`∑[char[A027293(n+1)-1]]`
-/

namespace A198194.P6951560531757742430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198194.P6951560531757742430

namespace A198194

/-- `∑[char[A027293(n+1)-1]]` -/
def P6951560531757742430.Spec : Prop :=
  ∀ n, (P6951560531757742430.a n : ℤ) = A198194 (n + 1)

end A198194

/-!
# A198196: Numbers k such that [V(4,1,k)/4] = floor(cosh(k log(sqrt(3)+2))/2) = A004526(A001075(k)) is a prime.

The programs for A198196, there is no canonical definition to state claims against.
-/

/-! ## A198196.P8550842176272464946

`A106317(A347189(n+2))`
-/

namespace A198196.P8550842176272464946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A347189 (n + 2)).toNat

end

end A198196.P8550842176272464946

/-! ## A198196.P17896316142966685574

`A033875(∑[A306721(n)²])`
-/

namespace A198196.P17896316142966685574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306721 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198196.P17896316142966685574

/-! ## A198196.P15196425209319885680

`A000040(∑[A188431(C(n, 6))])`
-/

namespace A198196.P15196425209319885680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198196.P15196425209319885680

/-! ## A198196.P14276528046590170366

`A033875(A306721(n)²+n)`
-/

namespace A198196.P14276528046590170366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (A306721 n ^ 2 + (n : ℤ)).toNat

end

end A198196.P14276528046590170366

/-!
# A198198: E.g.f. satisfies: A(x) = ( exp(x*A(x)) + exp(x*A(-x)) )/2.

The programs for A198198, there is no canonical definition to state claims against.
-/

/-! ## A198198.P17565115555865658760

`(3^C(a(n-1), 68)+n)^floor(n-atan(n))` with `a(0)=1, a(1)=1`
-/

namespace A198198.P17565115555865658760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 ^ Nat.choose (SequenceMachineLib.roundAway (a (n - 1))).toNat 68 + n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

end

end A198198.P17565115555865658760

/-! ## A198198.P5969317840926580432

`(3^C(a(n-1), 68)+n)^floor((n+1)/(or(n, n+2)-n))` with `a(0)=1, a(1)=1`
-/

namespace A198198.P5969317840926580432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 ^ Nat.choose (SequenceMachineLib.roundAway (a (n - 1))).toNat 68 + n : ℚ) ^ (⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋ : ℤ)

end

end A198198.P5969317840926580432

