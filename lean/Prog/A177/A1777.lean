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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A177700: The n-th derivative of log(1+x)*tanh(x) evaluated at x = 0.

The programs for A177700, there is no canonical definition to state claims against.
-/

/-! ## A177700.P13909386338780438664

`A012652(n)%A018744(A016813(n))`
-/

namespace A177700.P13909386338780438664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012652 n) (A018744 (A016813 n).toNat)

end

end A177700.P13909386338780438664

/-! ## A177700.P8542037070409444183

`A012404(n)%A000006(A233818(n+1))`
-/

namespace A177700.P8542037070409444183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012404 n) (A000006 (A233818 (n + 1)).toNat)

end

end A177700.P8542037070409444183

/-! ## A177700.P2942147484448047964

`A012656(n)+40*A178926(A300974(n))`
-/

namespace A177700.P2942147484448047964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012656 n + 40 * A178926 (A300974 n).toNat

end

end A177700.P2942147484448047964

/-!
# A177701: Triangle of coefficients of polynomials P_n(z) defined by the recursion P_0(z) = z+1; for n>=1, P_n(z) = z + Product_{k=0..n-1} P_k(z).

The programs for A177701, there is no canonical definition to state claims against.
-/

/-! ## A177701.P3734058557329612521

`A057555(A176361(n)%A014551(n+3))`
-/

namespace A177701.P3734058557329612521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (Int.tmod (A176361 n) (A014551 (n + 3))).toNat

end

end A177701.P3734058557329612521

/-!
# A177702: Period 3: repeat [1, 1, 2].

The programs for A177702, the canonical program `A177702.P3114234873330636102` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177702 has offset 0).

The definition of A177702 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A177702.anchor (n : ℕ) : A177702 n = (([1, 1, 2].getD (n % 3) 0 : ℕ) : ℤ)` in `Proof.A177.A177702`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177702.P3114234873330636102

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177702

/-- `a(n-3)` -/
def P3114234873330636102.Spec : Prop :=
  ∀ n, (P3114234873330636102.a n : ℤ) = A177702 n

theorem P3114234873330636102.correct : P3114234873330636102.Spec := by
  intro n
  simp only [A177702]

end A177702

/-!
# A177704: Period 4: repeat [1, 1, 1, 2].

The programs for A177704, the canonical program `A177704.P8770811667183017524` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177704 has offset 0).

The definition of A177704 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A177704.anchor (n : ℕ) : A177704 n = (([1, 1, 1, 2].getD (n % 4) 0 : ℕ) : ℤ)` in `Proof.A177.A177704`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177704.P8770811667183017524

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177704

/-- `a(n-4)` -/
def P8770811667183017524.Spec : Prop :=
  ∀ n, (P8770811667183017524.a n : ℤ) = A177704 n

theorem P8770811667183017524.correct : P8770811667183017524.Spec := by
  intro n
  simp only [A177704]

end A177704

/-!
# A177706: Period 5: repeat [1, 1, 1, 1, 2].

The programs for A177706, the canonical program `A177706.P15820019009912401589` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177706 has offset 0).

The definition of A177706 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A177706.anchor (n : ℕ) : A177706 n = (([1, 1, 1, 1, 2].getD (n % 5) 0 : ℕ) : ℤ)` in `Proof.A177.A177706`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177706.P15820019009912401589

`a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177706

/-- `a(n-5)` -/
def P15820019009912401589.Spec : Prop :=
  ∀ n, (P15820019009912401589.a n : ℤ) = A177706 n

theorem P15820019009912401589.correct : P15820019009912401589.Spec := by
  intro n
  simp only [A177706]

end A177706

/-!
# A177709: Sums of 4 distinct primorials.

The programs for A177709, there is no canonical definition to state claims against.
-/

/-! ## A177709.P5583922476518017346

`A276156(eq[0, a(and(n, n-1))+1])` with `a(0)=-4`
-/

namespace A177709.P5583922476518017346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177709.P5583922476518017346

/-! ## A177709.P11322984941277445984

`A276156(A014312(n+1))`
-/

namespace A177709.P11322984941277445984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (A014312 (n + 1)).toNat

end

end A177709.P11322984941277445984

/-! ## A177709.P11680582435570010455

`A277021(A382631(n+1))`
-/

namespace A177709.P11680582435570010455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A382631 (n + 1)).toNat

end

end A177709.P11680582435570010455

/-! ## A177709.P853246474356317950

`A276156(eq[2, A238015(n)])`
-/

namespace A177709.P853246474356317950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177709.P853246474356317950

/-! ## A177709.P4950557159736129737

`A276156(eq[4, A000120(n)])`
-/

namespace A177709.P4950557159736129737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177709.P4950557159736129737

/-!
# A177710: Values of n where A046801(n) produces a record.

The programs for A177710, there is no canonical definition to state claims against.
-/

/-! ## A177710.P16604296024227387327

`record[gcd(A301413(n+1), A352434(n+1))]`
-/

namespace A177710.P16604296024227387327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301413 (n + 1)) (A352434 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177710.P16604296024227387327

/-! ## A177710.P85457935968388508

`record[A006530(A001227(n+1))*A001227(2*n+1)]`
-/

namespace A177710.P85457935968388508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001227 (n + 1)).toNat * A001227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177710.P85457935968388508

/-! ## A177710.P1893826163352563938

`record[A167489(A153006(2*n))]`
-/

namespace A177710.P1893826163352563938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A153006 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177710.P1893826163352563938

/-! ## A177710.P13383694082086923540

`record[A000005(A315558(n)+n)]`
-/

namespace A177710.P13383694082086923540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A315558 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177710.P13383694082086923540

/-! ## A177710.P4065609835440548994

`record[A039819(Δ[A237830(n+1)])]`
-/

namespace A177710.P4065609835440548994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039819 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177710.P4065609835440548994

/-!
# A177711: Natural numbers which are not sums of one or more distinct primorials.

The programs for A177711, there is no canonical definition to state claims against.
-/

/-! ## A177711.P6907570620790964912

`comp[A276156(n)]`
-/

namespace A177711.P6907570620790964912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177711.P6907570620790964912

/-!
# A177712: Even numbers divisible by an odd prime.

The programs for A177712, the canonical program `A177712.P17818057687902141564` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177712 has offset 1).

The definition of A177712 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177712.P17818057687902141564

`2*A057716(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177712

/-- `2*A057716(n+1)` -/
def P17818057687902141564.Spec : Prop :=
  ∀ n, P17818057687902141564.a n = A177712 (n + 1)

theorem P17818057687902141564.correct : P17818057687902141564.Spec := by
  intro n
  simp only [A177712, Nat.add_sub_cancel]

end A177712

/-! ## A177712.P1475332947620582131

`2*comp[and(n, -n)]`
-/

namespace A177712.P1475332947620582131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177712.P1475332947620582131

namespace A177712

/-- `2*comp[and(n, -n)]` -/
def P1475332947620582131.Spec : Prop :=
  ∀ n, (P1475332947620582131.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P7005148246800573198

`2*lt[and(n, -n), n]`
-/

namespace A177712.P7005148246800573198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A177712.P7005148246800573198

namespace A177712

/-- `2*lt[and(n, -n), n]` -/
def P7005148246800573198.Spec : Prop :=
  ∀ n, (P7005148246800573198.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P93238888430323852

`2*lt[0, and(n, n-1)]`
-/

namespace A177712.P93238888430323852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177712.P93238888430323852

namespace A177712

/-- `2*lt[0, and(n, n-1)]` -/
def P93238888430323852.Spec : Prop :=
  ∀ n, (P93238888430323852.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P17512647010322765164

`2*comp[floor(2^(n-1))]`
-/

namespace A177712.P17512647010322765164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177712.P17512647010322765164

namespace A177712

/-- `2*comp[floor(2^(n-1))]` -/
def P17512647010322765164.Spec : Prop :=
  ∀ n, (P17512647010322765164.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P13110471075968335705

`lt[1, (2*n)%or(n, n-1)]`
-/

namespace A177712.P13110471075968335705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (Int.lor (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177712.P13110471075968335705

namespace A177712

/-- `lt[1, (2*n)%or(n, n-1)]` -/
def P13110471075968335705.Spec : Prop :=
  ∀ n, (P13110471075968335705.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P2883368007455068539

`lt[or(n, n-1)%(n+1), n-2]`
-/

namespace A177712.P2883368007455068539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (n : ℤ) ((n : ℤ) - 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177712.P2883368007455068539

namespace A177712

/-- `lt[or(n, n-1)%(n+1), n-2]` -/
def P2883368007455068539.Spec : Prop :=
  ∀ n, (P2883368007455068539.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P1634267389335047562

`A398389(n+1)-2`
-/

namespace A177712.P1634267389335047562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398389 (n + 1) - 2

end

end A177712.P1634267389335047562

namespace A177712

/-- `A398389(n+1)-2` -/
def P1634267389335047562.Spec : Prop :=
  ∀ n, P1634267389335047562.a n = A177712 (n + 1)

theorem P1634267389335047562.correct : P1634267389335047562.Spec := by
  intro n
  simp only [A177712, Nat.add_sub_cancel, A177712.P1634267389335047562.a, A177712.P17818057687902141564.a, A057716, A057716.P12729927747178564493.f1, A057716.P12729927747178564493.f2, A057716.P12729927747178564493.a, A398389, A398389.P6222252586482190489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177712

/-! ## A177712.P742985261543409203

`A136724(n+1)/2`
-/

namespace A177712.P742985261543409203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136724 (n + 1) : ℚ) / 2

end

end A177712.P742985261543409203

namespace A177712

/-- `A136724(n+1)/2` -/
def P742985261543409203.Spec : Prop :=
  ∀ n, P742985261543409203.a n = (A177712 (n + 1) : ℚ)

end A177712

/-! ## A177712.P11433795886137797403

`2*A062289(n+1)+2`
-/

namespace A177712.P11433795886137797403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062289 (n + 1) + 2

end

end A177712.P11433795886137797403

namespace A177712

/-- `2*A062289(n+1)+2` -/
def P11433795886137797403.Spec : Prop :=
  ∀ n, P11433795886137797403.a n = A177712 (n + 1)

theorem P11433795886137797403.correct : P11433795886137797403.Spec := by
  intro n
  simp only [A177712, Nat.add_sub_cancel, A177712.P11433795886137797403.a, A177712.P17818057687902141564.a, A057716, A057716.P12729927747178564493.f1, A057716.P12729927747178564493.f2, A057716.P12729927747178564493.a, A062289, A062289.P3760834885258552887.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177712

/-! ## A177712.P10810529018323911139

`eq[1, A081729(n+1)]+1`
-/

namespace A177712.P10810529018323911139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177712.P10810529018323911139

namespace A177712

/-- `eq[1, A081729(n+1)]+1` -/
def P10810529018323911139.Spec : Prop :=
  ∀ n, (P10810529018323911139.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P7452924872366117415

`record[(n+3)*2%A006530(n+3)]`
-/

namespace A177712.P7452924872366117415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * Int.tmod 2 (A006530 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177712.P7452924872366117415

namespace A177712

/-- `record[(n+3)*2%A006530(n+3)]` -/
def P7452924872366117415.Spec : Prop :=
  ∀ n, P7452924872366117415.a n = A177712 (n + 1)

end A177712

/-! ## A177712.P1173805796229550039

`lcm(2, 2*(lt[2, A006530(n+1)]+1))`
-/

namespace A177712.P1173805796229550039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1))

end

end A177712.P1173805796229550039

namespace A177712

/-- `lcm(2, 2*(lt[2, A006530(n+1)]+1))` -/
def P1173805796229550039.Spec : Prop :=
  ∀ n, (P1173805796229550039.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P12215541603838410072

`eq[A073097(n), A209229(n)]`
-/

namespace A177712.P12215541603838410072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177712.P12215541603838410072

namespace A177712

/-- `eq[A073097(n), A209229(n)]` -/
def P12215541603838410072.Spec : Prop :=
  ∀ n, (P12215541603838410072.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P15809601000915326052

`A000027(2*comp[A131577(n)-1]+1)+1`
-/

namespace A177712.P15809601000915326052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A177712.P15809601000915326052

namespace A177712

/-- `A000027(2*comp[A131577(n)-1]+1)+1` -/
def P15809601000915326052.Spec : Prop :=
  ∀ n, P15809601000915326052.a n = A177712 (n + 1)

end A177712

/-! ## A177712.P6048963976017516648

`filter[A020739(n), A202238(#)]`
-/

namespace A177712.P6048963976017516648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A177712.P6048963976017516648

namespace A177712

/-- `filter[A020739(n), A202238(#)]` -/
def P6048963976017516648.Spec : Prop :=
  ∀ n, P6048963976017516648.a n = A177712 (n + 1)

end A177712

/-! ## A177712.P211917102160388743

`filter[A020739(n), A323170(#)]`
-/

namespace A177712.P211917102160388743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A177712.P211917102160388743

namespace A177712

/-- `filter[A020739(n), A323170(#)]` -/
def P211917102160388743.Spec : Prop :=
  ∀ n, P211917102160388743.a n = A177712 (n + 1)

end A177712

/-! ## A177712.P14065428159363457890

`filter[A020739(n), A347523(#)]`
-/

namespace A177712.P14065428159363457890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A177712.P14065428159363457890

namespace A177712

/-- `filter[A020739(n), A347523(#)]` -/
def P14065428159363457890.Spec : Prop :=
  ∀ n, P14065428159363457890.a n = A177712 (n + 1)

end A177712

/-! ## A177712.P7513222856899770966

`2*lt[Δ[A256249(n)], n+1]+4`
-/

namespace A177712.P7513222856899770966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 4

end

end A177712.P7513222856899770966

namespace A177712

/-- `2*lt[Δ[A256249(n)], n+1]+4` -/
def P7513222856899770966.Spec : Prop :=
  ∀ n, (P7513222856899770966.a n : ℤ) = A177712 (n + 1)

end A177712

/-! ## A177712.P16024912702234345739

`A004277(A057716(n+1))`
-/

namespace A177712.P16024912702234345739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A057716 (n + 1)).toNat

end

end A177712.P16024912702234345739

namespace A177712

/-- `A004277(A057716(n+1))` -/
def P16024912702234345739.Spec : Prop :=
  ∀ n, P16024912702234345739.a n = A177712 (n + 1)

end A177712

/-!
# A177713: Sums of two or more positive consecutive odd numbers.

The programs for A177713, there is no canonical definition to state claims against.
-/

/-! ## A177713.P11381525522459890269

`lt[0, A220400(n)]`
-/

namespace A177713.P11381525522459890269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177713.P11381525522459890269

/-! ## A177713.P12275581973645991201

`lt[1, (1-A217670(n))²]`
-/

namespace A177713.P12275581973645991201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A217670 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177713.P12275581973645991201

/-! ## A177713.P8259554025401618163

`lt[2, gcd(n, A107286(n)²)]`
-/

namespace A177713.P8259554025401618163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A107286 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177713.P8259554025401618163

/-! ## A177713.P13301315498925598903

`lt[1, A332032(n+1)]+1`
-/

namespace A177713.P13301315498925598903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A177713.P13301315498925598903

/-! ## A177713.P11699862315937881966

`eq[2, A380528(n+1)]+1`
-/

namespace A177713.P11699862315937881966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177713.P11699862315937881966

/-! ## A177713.P8554184402669037724

`lt[val(n+6, 2), A107393(n)]`
-/

namespace A177713.P8554184402669037724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 6) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177713.P8554184402669037724

/-! ## A177713.P14517684088873215784

`lt[1, A325939(n+1)²]+1`
-/

namespace A177713.P14517684088873215784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A177713.P14517684088873215784

/-! ## A177713.P17642907530732464226

`lt[n²%8, A001222(or(1, n))]`
-/

namespace A177713.P17642907530732464226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177713.P17642907530732464226

/-! ## A177713.P1853330437033453229

`∩[round(4*n/3), A018252(n+2)]`
-/

namespace A177713.P1853330437033453229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177713.P1853330437033453229

/-! ## A177713.P3402569735093691678

`lt[(n+1)²%8, A001222(n+1)]+1`
-/

namespace A177713.P3402569735093691678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A177713.P3402569735093691678

/-!
# A177714: a(n) = (A123571(n) - 2n - 1)/(2n).

The programs for A177714, there is no canonical definition to state claims against.
-/

/-! ## A177714.P9171691921197542657

`(A123571(n+1)-2*(n+1)-1)/(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177714.P9171691921197542657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123571 (n + 1) - (2 * (n + 1) : ℤ) - 1 : ℚ) / (2 * (n + 1) : ℚ)

end

end A177714.P9171691921197542657

/-!
# A177715: The position within sqrt(n) at which n first occurs.

The programs for A177715, there is no canonical definition to state claims against.
-/

/-! ## A177715.P12318710447148158255

`abs(A114344(n+1))-1`
-/

namespace A177715.P12318710447148158255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114344 (n + 1)| - 1

end

end A177715.P12318710447148158255

/-! ## A177715.P5506191765685073039

`abs(abs(A114344(Δ[n²]-n))-1)`
-/

namespace A177715.P5506191765685073039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A114344 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat| - 1)|

end

end A177715.P5506191765685073039

/-! ## A177715.P4762350183076791658

`A023443(abs(A114344(n+1)))`
-/

namespace A177715.P4762350183076791658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 |A114344 (n + 1)|.toNat

end

end A177715.P4762350183076791658

/-! ## A177715.P3704476725492418540

`A289207(A114344(n+1)+1)`
-/

namespace A177715.P3704476725492418540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A114344 (n + 1) + 1).toNat

end

end A177715.P3704476725492418540

/-! ## A177715.P3635452064739527072

`A140106(abs(2*A114344(n+1)))`
-/

namespace A177715.P3635452064739527072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 |2 * A114344 (n + 1)|.toNat

end

end A177715.P3635452064739527072

/-! ## A177715.P4489096910222378684

`A267182(abs(2*A114344(n+1)))`
-/

namespace A177715.P4489096910222378684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 |2 * A114344 (n + 1)|.toNat

end

end A177715.P4489096910222378684

/-! ## A177715.P17407917261296844764

`lcm(A033999(n), A114344(n+1))-1`
-/

namespace A177715.P17407917261296844764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A114344 (n + 1)) : ℤ) - 1

end

end A177715.P17407917261296844764

/-! ## A177715.P12920514606627105354

`(-1)^A027688(n)+abs(A114344(n+1))`
-/

namespace A177715.P12920514606627105354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A027688 n : ℤ) + (|A114344 (n + 1)| : ℚ)

end

end A177715.P12920514606627105354

/-! ## A177715.P14262554835685531043

`A008683(A073609(n))+abs(A114344(n+1))`
-/

namespace A177715.P14262554835685531043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073609 n).toNat + |A114344 (n + 1)|

end

end A177715.P14262554835685531043

/-! ## A177715.P7220474712526100863

`A008683(A001359(n+1))+abs(A114344(n+1))`
-/

namespace A177715.P7220474712526100863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + |A114344 (n + 1)|

end

end A177715.P7220474712526100863

/-!
# A177716: The k-th prime repeated A073124(k) times, k = 1,2,3....

The programs for A177716, the canonical program `A177716.P2261927231186975988` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177716 has offset 1).

The definition of A177716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177716.P2261927231186975988

`p?[A000720(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177716

/-- `p?[A000720(n+1)]` -/
def P2261927231186975988.Spec : Prop :=
  ∀ n, P2261927231186975988.a n = A177716 (n + 1)

theorem P2261927231186975988.correct : P2261927231186975988.Spec := by
  intro n
  simp only [A177716, Nat.add_sub_cancel]

end A177716

/-! ## A177716.P3056743915249766236

`A000720(A048989(n+1))`
-/

namespace A177716.P3056743915249766236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048989 (n + 1)).toNat

end

end A177716.P3056743915249766236

namespace A177716

/-- `A000720(A048989(n+1))` -/
def P3056743915249766236.Spec : Prop :=
  ∀ n, P3056743915249766236.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P5431982468384651351

`p?[A000720(A151800(n))-1]`
-/

namespace A177716.P5431982468384651351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P5431982468384651351

namespace A177716

/-- `p?[A000720(A151800(n))-1]` -/
def P5431982468384651351.Spec : Prop :=
  ∀ n, P5431982468384651351.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P15176693439568763094

`filter[A000720(n+2), A010051(#)]`
-/

namespace A177716.P15176693439568763094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A177716.P15176693439568763094

namespace A177716

/-- `filter[A000720(n+2), A010051(#)]` -/
def P15176693439568763094.Spec : Prop :=
  ∀ n, P15176693439568763094.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P17334041396152972742

`filter[A000720(n+3), A080339(#)]`
-/

namespace A177716.P17334041396152972742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A177716.P17334041396152972742

namespace A177716

/-- `filter[A000720(n+3), A080339(#)]` -/
def P17334041396152972742.Spec : Prop :=
  ∀ n, P17334041396152972742.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P16931061244749124219

`p?[n-A065855(n+1)]`
-/

namespace A177716.P16931061244749124219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P16931061244749124219

namespace A177716

/-- `p?[n-A065855(n+1)]` -/
def P16931061244749124219.Spec : Prop :=
  ∀ n, P16931061244749124219.a n = A177716 (n + 1)

theorem P16931061244749124219.correct : P16931061244749124219.Spec := by
  intro n
  simp only [A177716, Nat.add_sub_cancel, A177716.P16931061244749124219.f1, A177716.P16931061244749124219.a, A177716.P2261927231186975988.f1, A177716.P2261927231186975988.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177716

/-! ## A177716.P5499898287975603910

`p?[abs(A061009(n+1))]`
-/

namespace A177716.P5499898287975603910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061009 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P5499898287975603910

namespace A177716

/-- `p?[abs(A061009(n+1))]` -/
def P5499898287975603910.Spec : Prop :=
  ∀ n, P5499898287975603910.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P6048693375532069296

`p?[A033270(n+1)+1]`
-/

namespace A177716.P6048693375532069296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P6048693375532069296

namespace A177716

/-- `p?[A033270(n+1)+1]` -/
def P6048693375532069296.Spec : Prop :=
  ∀ n, P6048693375532069296.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P12833656214089049460

`p?[A036234(n+1)-1]`
-/

namespace A177716.P12833656214089049460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P12833656214089049460

namespace A177716

/-- `p?[A036234(n+1)-1]` -/
def P12833656214089049460.Spec : Prop :=
  ∀ n, P12833656214089049460.a n = A177716 (n + 1)

theorem P12833656214089049460.correct : P12833656214089049460.Spec := by
  intro n
  simp only [A177716, Nat.add_sub_cancel, A177716.P12833656214089049460.f1, A177716.P12833656214089049460.a, A177716.P2261927231186975988.f1, A177716.P2261927231186975988.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177716

/-! ## A177716.P7755916111952307674

`p?[A100486(n+1)-A000040(n+1)]`
-/

namespace A177716.P7755916111952307674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P7755916111952307674

namespace A177716

/-- `p?[A100486(n+1)-A000040(n+1)]` -/
def P7755916111952307674.Spec : Prop :=
  ∀ n, P7755916111952307674.a n = A177716 (n + 1)

theorem P7755916111952307674.correct : P7755916111952307674.Spec := by
  intro n
  simp only [A177716, Nat.add_sub_cancel, A177716.P7755916111952307674.f1, A177716.P7755916111952307674.a, A177716.P2261927231186975988.f1, A177716.P2261927231186975988.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100486, A100486.P14505039985477023089.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177716

/-! ## A177716.P15571070518851022865

`p?[A230980(n)]`
-/

namespace A177716.P15571070518851022865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P15571070518851022865

namespace A177716

/-- `p?[A230980(n)]` -/
def P15571070518851022865.Spec : Prop :=
  ∀ n, P15571070518851022865.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P14123311570563497809

`p?[A095117(n)-n]`
-/

namespace A177716.P14123311570563497809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P14123311570563497809

namespace A177716

/-- `p?[A095117(n)-n]` -/
def P14123311570563497809.Spec : Prop :=
  ∀ n, P14123311570563497809.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P10674667994448355589

`p?[A084360(A007918(n))+1]`
-/

namespace A177716.P10674667994448355589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A007918 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P10674667994448355589

namespace A177716

/-- `p?[A084360(A007918(n))+1]` -/
def P10674667994448355589.Spec : Prop :=
  ∀ n, P10674667994448355589.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P6778383298510717255

`filter[A230980(n+2), A010051(#)]`
-/

namespace A177716.P6778383298510717255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A177716.P6778383298510717255

namespace A177716

/-- `filter[A230980(n+2), A010051(#)]` -/
def P6778383298510717255.Spec : Prop :=
  ∀ n, P6778383298510717255.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P5787732649529620201

`p?[A242096(n)]`
-/

namespace A177716.P5787732649529620201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P5787732649529620201

namespace A177716

/-- `p?[A242096(n)]` -/
def P5787732649529620201.Spec : Prop :=
  ∀ n, P5787732649529620201.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P4766263104912775705

`p?[A056172(2*n+1)]`
-/

namespace A177716.P4766263104912775705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P4766263104912775705

namespace A177716

/-- `p?[A056172(2*n+1)]` -/
def P4766263104912775705.Spec : Prop :=
  ∀ n, P4766263104912775705.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P15634157332932597923

`p?[A294107(2*n+1)]`
-/

namespace A177716.P15634157332932597923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P15634157332932597923

namespace A177716

/-- `p?[A294107(2*n+1)]` -/
def P15634157332932597923.Spec : Prop :=
  ∀ n, P15634157332932597923.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P2368576995022169843

`p?[A056172(n+1)-A142150(n)]`
-/

namespace A177716.P2368576995022169843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (n + 1) - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P2368576995022169843

namespace A177716

/-- `p?[A056172(n+1)-A142150(n)]` -/
def P2368576995022169843.Spec : Prop :=
  ∀ n, P2368576995022169843.a n = A177716 (n + 1)

end A177716

/-! ## A177716.P7818333882831935114

`p?[A055679(2*(n+1))]`
-/

namespace A177716.P7818333882831935114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177716.P7818333882831935114

namespace A177716

/-- `p?[A055679(2*(n+1))]` -/
def P7818333882831935114.Spec : Prop :=
  ∀ n, P7818333882831935114.a n = A177716 (n + 1)

end A177716

/-!
# A177717: A symmetrical triangle based on the Fibonacci Polynomials: p(x,n)=f(n,x)+x^(n-1)*f(n,1/x).

The programs for A177717, there is no canonical definition to state claims against.
-/

/-! ## A177717.P2531695266517710266

`A168561(n)+abs(A053119(n))`
-/

namespace A177717.P2531695266517710266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n + |A053119 n|

end

end A177717.P2531695266517710266

/-! ## A177717.P4481488962091621107

`A168561(n)+A162515(n+1)`
-/

namespace A177717.P4481488962091621107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n + A162515 (n + 1)

end

end A177717.P4481488962091621107

/-! ## A177717.P9314719689986435888

`abs(A049310(n))+abs(A053119(n))`
-/

namespace A177717.P9314719689986435888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 n| + |A053119 n|

end

end A177717.P9314719689986435888

/-! ## A177717.P13757960932352266911

`A162515(n+1)+abs(A049310(n))`
-/

namespace A177717.P13757960932352266911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (n + 1) + |A049310 n|

end

end A177717.P13757960932352266911

/-! ## A177717.P9031844814099193834

`A168561(A061579(n))+A168561(n)`
-/

namespace A177717.P9031844814099193834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (A061579 n).toNat + A168561 n

end

end A177717.P9031844814099193834

/-! ## A177717.P3273086628038922728

`A168561(n)-A001489(abs(A053119(n)))`
-/

namespace A177717.P3273086628038922728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n - A001489 |A053119 n|.toNat

end

end A177717.P3273086628038922728

/-! ## A177717.P13325014857595097536

`A168561(A038722(n+2))+A168561(n)`
-/

namespace A177717.P13325014857595097536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (A038722 (n + 2)).toNat + A168561 n

end

end A177717.P13325014857595097536

/-! ## A177717.P8131104746651969973

`A162515(n+1)+∑{d}[A049310(n), A000010(#)]`
-/

namespace A177717.P8131104746651969973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A177717.P8131104746651969973

/-!
# A177718: a(n) = |(number of 1's in binary representation of prime(n)) - (number of 0's in binary representation of prime(n))|.

The programs for A177718, the canonical program `A177718.P13912368437558654364` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177718 has offset 1).

The definition of A177718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177718.P13912368437558654364

`abs(A014499(n+1)-A035103(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A177718

/-- `abs(A014499(n+1)-A035103(n+1))` -/
def P13912368437558654364.Spec : Prop :=
  ∀ n, P13912368437558654364.a n = A177718 (n + 1)

theorem P13912368437558654364.correct : P13912368437558654364.Spec := by
  intro n
  simp only [A177718, Nat.add_sub_cancel]

end A177718

/-! ## A177718.P4011339330026792485

`abs(A037861(A000040(n+1)))`
-/

namespace A177718.P4011339330026792485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (A000040 (n + 1)).toNat|

end

end A177718.P4011339330026792485

namespace A177718

/-- `abs(A037861(A000040(n+1)))` -/
def P4011339330026792485.Spec : Prop :=
  ∀ n, P4011339330026792485.a n = A177718 (n + 1)

end A177718

/-! ## A177718.P858357613294007416

`abs(A372516(n+1))`
-/

namespace A177718.P858357613294007416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A372516 (n + 1)|

end

end A177718.P858357613294007416

namespace A177718

/-- `abs(A372516(n+1))` -/
def P858357613294007416.Spec : Prop :=
  ∀ n, P858357613294007416.a n = A177718 (n + 1)

end A177718

/-! ## A177718.P837805323411016526

`gcd(A100050(3*(n+1)), A145037(A000040(n+1)))`
-/

namespace A177718.P837805323411016526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100050 (3 * (n + 1))) (A145037 (A000040 (n + 1)).toNat)

end

end A177718.P837805323411016526

namespace A177718

/-- `gcd(A100050(3*(n+1)), A145037(A000040(n+1)))` -/
def P837805323411016526.Spec : Prop :=
  ∀ n, (P837805323411016526.a n : ℤ) = A177718 (n + 1)

end A177718

/-! ## A177718.P18317824072747072753

`abs(A037861(Δ[A007504(n)]))`
-/

namespace A177718.P18317824072747072753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (f1 (n + 1) - f1 n).toNat|

end

end A177718.P18317824072747072753

namespace A177718

/-- `abs(A037861(Δ[A007504(n)]))` -/
def P18317824072747072753.Spec : Prop :=
  ∀ n, P18317824072747072753.a n = A177718 (n + 1)

end A177718

/-! ## A177718.P1382063946482788055

`abs(A037861(record[A051698(n)]))`
-/

namespace A177718.P1382063946482788055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A177718.P1382063946482788055

namespace A177718

/-- `abs(A037861(record[A051698(n)]))` -/
def P1382063946482788055.Spec : Prop :=
  ∀ n, P1382063946482788055.a n = A177718 (n + 1)

end A177718

/-! ## A177718.P579801665235351258

`abs(A037861(A008578(n+2)))`
-/

namespace A177718.P579801665235351258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (A008578 (n + 2)).toNat|

end

end A177718.P579801665235351258

namespace A177718

/-- `abs(A037861(A008578(n+2)))` -/
def P579801665235351258.Spec : Prop :=
  ∀ n, P579801665235351258.a n = A177718 (n + 1)

end A177718

/-! ## A177718.P626956776008415904

`abs(A037861(record[A006530(n+2)]))`
-/

namespace A177718.P626956776008415904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A177718.P626956776008415904

namespace A177718

/-- `abs(A037861(record[A006530(n+2)]))` -/
def P626956776008415904.Spec : Prop :=
  ∀ n, P626956776008415904.a n = A177718 (n + 1)

end A177718

/-! ## A177718.P17647656736881491899

`abs(A037861(record[A014963(n+2)]))`
-/

namespace A177718.P17647656736881491899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A177718.P17647656736881491899

namespace A177718

/-- `abs(A037861(record[A014963(n+2)]))` -/
def P17647656736881491899.Spec : Prop :=
  ∀ n, P17647656736881491899.a n = A177718 (n + 1)

end A177718

/-!
# A177719: Number of line segments connecting exactly 3 points in an n X n grid of points.

The programs for A177719, there is no canonical definition to state claims against.
-/

/-! ## A177719.P3839431585484166742

`2*A141255(n+1)%A290132(n+1)`
-/

namespace A177719.P3839431585484166742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A141255 (n + 1)) (A290132 (n + 1))

end

end A177719.P3839431585484166742

/-! ## A177719.P12312683510443218120

`A141255(n+1)-A018808(n+1)`
-/

namespace A177719.P12312683510443218120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) - A018808 (n + 1)

end

end A177719.P12312683510443218120

/-! ## A177719.P3842051437086654012

`A141255(n+1)-A331780(n+1)-A331780(n+1)`
-/

namespace A177719.P3842051437086654012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (n + 1) - A331780 (n + 1) - A331780 (n + 1)

end

end A177719.P3842051437086654012

/-! ## A177719.P13052138891274945336

`(4*A115005(n+1))%A290132(n+1)`
-/

namespace A177719.P13052138891274945336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A115005 (n + 1)) (A290132 (n + 1))

end

end A177719.P13052138891274945336

/-! ## A177719.P5050364887677692120

`A331771(n+1)%A290132(n+1)`
-/

namespace A177719.P5050364887677692120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331771 (n + 1)) (A290132 (n + 1))

end

end A177719.P5050364887677692120

/-! ## A177719.P16070062723550915681

`A331772(n+1)/2`
-/

namespace A177719.P16070062723550915681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331772 (n + 1) : ℚ) / 2

end

end A177719.P16070062723550915681

/-! ## A177719.P11196284652346595896

`4*A331773(n+1)`
-/

namespace A177719.P11196284652346595896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A331773 (n + 1)

end

end A177719.P11196284652346595896

/-! ## A177719.P10244879152823871085

`(A141255(n+1)-A159065(n+1))%A331755(n+1)`
-/

namespace A177719.P10244879152823871085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141255 (n + 1) - A159065 (n + 1)) (A331755 (n + 1))

end

end A177719.P10244879152823871085

/-! ## A177719.P10766577136331828314

`A332353(∑[n+1])`
-/

namespace A177719.P10766577136331828314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177719.P10766577136331828314

/-! ## A177719.P13483177865239470299

`A332352(∑[n+1])/2`
-/

namespace A177719.P13483177865239470299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332352 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A177719.P13483177865239470299

/-!
# A177720: Number of line segments connecting exactly 4 points in an n x n grid of points.

The programs for A177720, there is no canonical definition to state claims against.
-/

/-! ## A177720.P772215318207620342

`2*A331775(n+1)`
-/

namespace A177720.P772215318207620342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331775 (n + 1)

end

end A177720.P772215318207620342

/-! ## A177720.P12151895883343964262

`A331774(n+1)/2`
-/

namespace A177720.P12151895883343964262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331774 (n + 1) : ℚ) / 2

end

end A177720.P12151895883343964262

/-! ## A177720.P4084032405874936793

`A331775(A000027(n+1))+A331775(n+1)`
-/

namespace A177720.P4084032405874936793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331775 (A000027 (n + 1)).toNat + A331775 (n + 1)

end

end A177720.P4084032405874936793

/-!
# A177721: Number of line segments connecting exactly 5 points in an n x n grid of points.

The programs for A177721, there is no canonical definition to state claims against.
-/

/-! ## A177721.P15441211708112438099

`A177725(2*(n+1))/4`
-/

namespace A177721.P15441211708112438099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177725 (2 * (n + 1)) : ℚ) / 4

end

end A177721.P15441211708112438099

/-! ## A177721.P7122877314278777969

`4*∑[A233542(A108307(n))]`
-/

namespace A177721.P7122877314278777969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233542 (A108307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177721.P7122877314278777969

/-! ## A177721.P8411888740734687889

`A175381(n+1)*A340251(A241683(n))`
-/

namespace A177721.P8411888740734687889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175381 (n + 1) * A340251 (A241683 n).toNat

end

end A177721.P8411888740734687889

/-! ## A177721.P3629100498656882284

`A001222(A059865(n+1))*A077561(n+1)`
-/

namespace A177721.P3629100498656882284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059865 (n + 1)).toNat * A077561 (n + 1)

end

end A177721.P3629100498656882284

/-! ## A177721.P3811839051143279337

`A102441(3*n+5)*A303691(A221547(n))`
-/

namespace A177721.P3811839051143279337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (3 * n + 5) * A303691 (A221547 n).toNat

end

end A177721.P3811839051143279337

/-!
# A177722: Number of line segments connecting exactly 6 points in an n x n grid of points.

The programs for A177722, there is no canonical definition to state claims against.
-/

/-! ## A177722.P13110334611218647829

`∑[A327343(n²+1)]*A011867(n)`
-/

namespace A177722.P13110334611218647829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327343 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011867 n

end

end A177722.P13110334611218647829

/-! ## A177722.P7753077986263626475

`A004274(n)*A130260(A020063(n))`
-/

namespace A177722.P7753077986263626475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n * A130260 (A020063 n).toNat

end

end A177722.P7753077986263626475

/-! ## A177722.P7369357937103452912

`A196053(9^A011866(n))`
-/

namespace A177722.P7369357937103452912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196053 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A011866 n : ℤ))).toNat

end

end A177722.P7369357937103452912

/-! ## A177722.P2204705620427206271

`A196053(9^A011867(n))`
-/

namespace A177722.P2204705620427206271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196053 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A011867 n : ℤ))).toNat

end

end A177722.P2204705620427206271

/-! ## A177722.P15978808415000571478

`A000005(A054499(n))*A270031(2*(n+1))`
-/

namespace A177722.P15978808415000571478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054499 n).toNat * A270031 (2 * (n + 1))

end

end A177722.P15978808415000571478

/-!
# A177723: Number of line segments connecting exactly 7 points in an n X n grid of points.

The programs for A177723, there is no canonical definition to state claims against.
-/

/-! ## A177723.P246711515941094369

`8*A231347(A100135(n))`
-/

namespace A177723.P246711515941094369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A231347 (A100135 n).toNat

end

end A177723.P246711515941094369

/-! ## A177723.P7389778123185063610

`8*A048766(A178259(n+1))`
-/

namespace A177723.P7389778123185063610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A048766 (A178259 (n + 1)).toNat

end

end A177723.P7389778123185063610

/-! ## A177723.P6633081563416086029

`A000005(A084509(n))*A174709(n)`
-/

namespace A177723.P6633081563416086029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084509 n).toNat * A174709 n

end

end A177723.P6633081563416086029

/-! ## A177723.P16455851521713450489

`∑[and(A225629(3*n+1), A335279(n+1))]`
-/

namespace A177723.P16455851521713450489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225629 (3 * n + 1)) (A335279 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177723.P16455851521713450489

/-! ## A177723.P15676550368975865254

`A344837(A129156(n))`
-/

namespace A177723.P15676550368975865254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344837 (A129156 n).toNat

end

end A177723.P15676550368975865254

/-!
# A177724: Number of line segments connecting exactly 8 points in an n x n grid of points.

The programs for A177724, there is no canonical definition to state claims against.
-/

/-! ## A177724.P1419884243699227589

`∑{e}[A185293(n+3)+1, 2*#]*A277417(n+1)`
-/

namespace A177724.P1419884243699227589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185293 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A277417 (n + 1)

end

end A177724.P1419884243699227589

/-! ## A177724.P4538609333290869578

`A025442(A306558(n))*A083652(n)`
-/

namespace A177724.P4538609333290869578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A306558 n).toNat * A083652 n

end

end A177724.P4538609333290869578

/-! ## A177724.P7569746832838016616

`A211225(A000108(n))*A255056(n)`
-/

namespace A177724.P7569746832838016616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211225 (A000108 n).toNat * A255056 n

end

end A177724.P7569746832838016616

/-! ## A177724.P6937354391255455796

`A025442(A306558(n))*A255056(n)`
-/

namespace A177724.P6937354391255455796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A306558 n).toNat * A255056 n

end

end A177724.P6937354391255455796

/-! ## A177724.P4438063240690303827

`A221146(A078487(n))`
-/

namespace A177724.P4438063240690303827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 (A078487 n).toNat

end

end A177724.P4438063240690303827

/-!
# A177725: Number of line segments connecting exactly 9 points in an n x n grid of points.

The programs for A177725, there is no canonical definition to state claims against.
-/

/-! ## A177725.P11149854100045503944

`A080827(A298434(n)%A298424(3*n+2))-A080827(n+1)`
-/

namespace A177725.P11149854100045503944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (Int.tmod (A298434 n) (A298424 (3 * n + 2))).toNat - A080827 (n + 1)

end

end A177725.P11149854100045503944

/-! ## A177725.P319463950631297199

`4*(n-3)*A263364(A187829(n+1))`
-/

namespace A177725.P319463950631297199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((n : ℤ) - 3) * A263364 (A187829 (n + 1)).toNat)

end

end A177725.P319463950631297199

/-! ## A177725.P4417613883750256130

`∑[A307987(n+1)]*A022788(A187829(n+1))`
-/

namespace A177725.P4417613883750256130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A022788 (A187829 (n + 1)).toNat

end

end A177725.P4417613883750256130

/-! ## A177725.P18051612345757964158

`A000982(A008815(n))-A000982(A187829(n+1))`
-/

namespace A177725.P18051612345757964158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A008815 n).toNat - A000982 (A187829 (n + 1)).toNat

end

end A177725.P18051612345757964158

/-! ## A177725.P11236634256314520986

`filter[A007394(2*(n+1)), A143220(#)]`
-/

namespace A177725.P11236634256314520986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007394 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143220 (f1 j).toNat = 1) n)

end

end A177725.P11236634256314520986

/-!
# A177726: Number of line segments connecting exactly 10 points in an n x n grid of points.

The programs for A177726, there is no canonical definition to state claims against.
-/

/-! ## A177726.P1323627422795049906

`(2*n-7)*A093882(A190217(n+1))`
-/

namespace A177726.P1323627422795049906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 7) * A093882 (A190217 (n + 1)).toNat

end

end A177726.P1323627422795049906

/-! ## A177726.P12915460773892288228

`record[A143370(n+1)]*A143287(n)`
-/

namespace A177726.P12915460773892288228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A143287 n

end

end A177726.P12915460773892288228

/-! ## A177726.P6095460984575636683

`A137579(A000045(n))*A202138(n+1)`
-/

namespace A177726.P6095460984575636683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A000045 n).toNat * A202138 (n + 1)

end

end A177726.P6095460984575636683

/-! ## A177726.P1557294848000805768

`A132896(A260271(2*n+3))*A218470(n)`
-/

namespace A177726.P1557294848000805768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A260271 (2 * n + 3)).toNat * A218470 n

end

end A177726.P1557294848000805768

/-! ## A177726.P1571353318423017263

`A218855(A399035(n))`
-/

namespace A177726.P1571353318423017263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218855 (A399035 n).toNat

end

end A177726.P1571353318423017263

/-!
# A177727: a(0)=1; a(n) = a(n-1) * Fibonacci(3+n) * Fibonacci(1+n) / (Fibonacci(n))^2, n > 1.

The programs for A177727, the canonical program `A177727.P12814074522217695507` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177727 has offset 0).

The definition of A177727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177727.P9402117734760065977

`ogf((1-2x)/(1-5x-15x^2+15x^3+5x^4-x^5))`
-/

namespace A177727.P9402117734760065977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, -15, 15, 5, -1] n

end

end A177727.P9402117734760065977

namespace A177727

/-- `ogf((1-2x)/(1-5x-15x^2+15x^3+5x^4-x^5))` -/
def P9402117734760065977.Spec : Prop :=
  ∀ n, P9402117734760065977.a n = A177727 n

end A177727

/-! ## A177727.P12814074522217695507

`a(n-1)*A000045(3+n)*A000045(1+n)/A000045(n)²` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177727

/-- `a(n-1)*A000045(3+n)*A000045(1+n)/A000045(n)²` -/
def P12814074522217695507.Spec : Prop :=
  ∀ n, P12814074522217695507.a n = (A177727 n : ℚ)

end A177727

/-! ## A177727.P1573400248771430279

`∑[A212804(n)]*A001655(n)`
-/

namespace A177727.P1573400248771430279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001655 n

end

end A177727.P1573400248771430279

namespace A177727

/-- `∑[A212804(n)]*A001655(n)` -/
def P1573400248771430279.Spec : Prop :=
  ∀ n, P1573400248771430279.a n = A177727 n

end A177727

/-! ## A177727.P615805057200733225

`A000045(n+1)*A001655(n)`
-/

namespace A177727.P615805057200733225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001655 n

end

end A177727.P615805057200733225

namespace A177727

/-- `A000045(n+1)*A001655(n)` -/
def P615805057200733225.Spec : Prop :=
  ∀ n, P615805057200733225.a n = A177727 n

end A177727

/-! ## A177727.P14796100380683764108

`A001655(n)*A212804(n+2)`
-/

namespace A177727.P14796100380683764108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n * A212804 (n + 2)

end

end A177727.P14796100380683764108

namespace A177727

/-- `A001655(n)*A212804(n+2)` -/
def P14796100380683764108.Spec : Prop :=
  ∀ n, P14796100380683764108.a n = A177727 n

end A177727

/-! ## A177727.P10455138004570756411

`sqrt(Δ[A001654(n)])*A001655(n)`
-/

namespace A177727.P10455138004570756411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) * (A001655 n : ℝ)

end

end A177727.P10455138004570756411

namespace A177727

/-- `sqrt(Δ[A001654(n)])*A001655(n)` -/
def P10455138004570756411.Spec : Prop :=
  ∀ n, P10455138004570756411.a n = (A177727 n : ℝ)

end A177727

/-! ## A177727.P3770724106948606357

`sqrt(A007598(n+1))*A001655(n)`
-/

namespace A177727.P3770724106948606357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (n + 1) : ℝ) * (A001655 n : ℝ)

end

end A177727.P3770724106948606357

namespace A177727

/-- `sqrt(A007598(n+1))*A001655(n)` -/
def P3770724106948606357.Spec : Prop :=
  ∀ n, P3770724106948606357.a n = (A177727 n : ℝ)

end A177727

/-! ## A177727.P523242081990833469

`(A000071(n+1)+1)*A001655(n)`
-/

namespace A177727.P523242081990833469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A001655 n

end

end A177727.P523242081990833469

namespace A177727

/-- `(A000071(n+1)+1)*A001655(n)` -/
def P523242081990833469.Spec : Prop :=
  ∀ n, P523242081990833469.a n = A177727 n

end A177727

/-! ## A177727.P17092236435483137446

`A001654(n+1)/2*A059929(n+1)`
-/

namespace A177727.P17092236435483137446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 (n + 1) : ℚ) / 2 * (A059929 (n + 1) : ℚ)

end

end A177727.P17092236435483137446

namespace A177727

/-- `A001654(n+1)/2*A059929(n+1)` -/
def P17092236435483137446.Spec : Prop :=
  ∀ n, P17092236435483137446.a n = (A177727 n : ℚ)

end A177727

/-! ## A177727.P5375854501302870525

`A070550(2*n+1)/2*A001654(n+1)`
-/

namespace A177727.P5375854501302870525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070550 (2 * n + 1) : ℚ) / 2 * (A001654 (n + 1) : ℚ)

end

end A177727.P5375854501302870525

namespace A177727

/-- `A070550(2*n+1)/2*A001654(n+1)` -/
def P5375854501302870525.Spec : Prop :=
  ∀ n, P5375854501302870525.a n = (A177727 n : ℚ)

end A177727

/-! ## A177727.P17657124348459101114

`A070550(2*n+1)*A070550(2*n)/2`
-/

namespace A177727.P17657124348459101114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070550 (2 * n + 1) * A070550 (2 * n) : ℚ) / 2

end

end A177727.P17657124348459101114

namespace A177727

/-- `A070550(2*n+1)*A070550(2*n)/2` -/
def P17657124348459101114.Spec : Prop :=
  ∀ n, P17657124348459101114.a n = (A177727 n : ℚ)

end A177727

/-! ## A177727.P3189222672346867708

`A001655(n)*A091533(A000217(n))`
-/

namespace A177727.P3189222672346867708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n * A091533 (A000217 n).toNat

end

end A177727.P3189222672346867708

namespace A177727

/-- `A001655(n)*A091533(A000217(n))` -/
def P3189222672346867708.Spec : Prop :=
  ∀ n, P3189222672346867708.a n = A177727 n

end A177727

/-! ## A177727.P7185003019492836601

`(A001076(n+1)-A066258(n))*A000045(n+1)`
-/

namespace A177727.P7185003019492836601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001076 (n + 1) - A066258 n) * A000045 (n + 1)

end

end A177727.P7185003019492836601

namespace A177727

/-- `(A001076(n+1)-A066258(n))*A000045(n+1)` -/
def P7185003019492836601.Spec : Prop :=
  ∀ n, P7185003019492836601.a n = A177727 n

end A177727

/-! ## A177727.P13664453568455241071

`A066258(n+1)/A001654(n+1)*A001655(n)`
-/

namespace A177727.P13664453568455241071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066258 (n + 1) : ℚ) / (A001654 (n + 1) : ℚ) * (A001655 n : ℚ)

end

end A177727.P13664453568455241071

namespace A177727

/-- `A066258(n+1)/A001654(n+1)*A001655(n)` -/
def P13664453568455241071.Spec : Prop :=
  ∀ n, P13664453568455241071.a n = (A177727 n : ℚ)

end A177727

/-!
# A177728: Expansion of (1 + 14*x) / ((1 - x)*(1 - 2*x)*(1 - 4*x)*(1 - 8*x)*(1 - 16*x)).

The programs for A177728, there is no canonical definition to state claims against.
-/

/-! ## A177728.P5184670846537632157

`∑[2^n]*A006096(n+3)`
-/

namespace A177728.P5184670846537632157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006096 (n + 3)

end

end A177728.P5184670846537632157

/-! ## A177728.P529368899434108377

`∑[2*a(n-1)]*∑[2^n*A171477(n)]` with `a(0)=1`
-/

namespace A177728.P529368899434108377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A171477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A177728.P529368899434108377

/-! ## A177728.P9008204669319241619

`A006096(n+3)*A126646(n)`
-/

namespace A177728.P9008204669319241619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006096 (n + 3) * A126646 n

end

end A177728.P9008204669319241619

/-! ## A177728.P17993826338201810862

`∑[A000079(n)]*∑[A016290(n)]`
-/

namespace A177728.P17993826338201810862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A177728.P17993826338201810862

/-! ## A177728.P5096644027706132676

`∑[1/A000079(n)]*A028258(n)`
-/

namespace A177728.P5096644027706132676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A028258 n : ℚ)

end

end A177728.P5096644027706132676

/-! ## A177728.P11916732282324490968

`2*A028258(n)-A006096(n+3)`
-/

namespace A177728.P11916732282324490968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028258 n - A006096 (n + 3)

end

end A177728.P11916732282324490968

/-! ## A177728.P2115265556976316863

`A006096(n+3)+A000918(n+1)*A006096(n+3)`
-/

namespace A177728.P2115265556976316863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006096 (n + 3) + A000918 (n + 1) * A006096 (n + 3)

end

end A177728.P2115265556976316863

/-! ## A177728.P10280723020076040056

`A000079(n+1)*A006096(n+3)-A006096(n+3)`
-/

namespace A177728.P10280723020076040056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A006096 (n + 3) - A006096 (n + 3)

end

end A177728.P10280723020076040056

/-! ## A177728.P9090098811213957630

`A006096(n+3)*A160869(n+1)/A003462(n+1)`
-/

namespace A177728.P9090098811213957630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006096 (n + 3) * A160869 (n + 1) : ℚ) / (A003462 (n + 1) : ℚ)

end

end A177728.P9090098811213957630

/-!
# A177729: Positive integers which do not appear in a Collatz sequence starting from a smaller positive integer.

The programs for A177729, there is no canonical definition to state claims against.
-/

/-! ## A177729.P10566925948782634089

`A061641(n+1)+char[1-n²]`
-/

namespace A177729.P10566925948782634089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A177729.P10566925948782634089

/-! ## A177729.P4432528101532707237

`xor(A061641(n+1), A169585(n))`
-/

namespace A177729.P4432528101532707237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061641 (n + 1)) (A169585 n)

end

end A177729.P4432528101532707237

/-! ## A177729.P12891860252638369393

`A063524(A330036(n))+A061641(n+1)`
-/

namespace A177729.P12891860252638369393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A330036 n).toNat + A061641 (n + 1)

end

end A177729.P12891860252638369393

/-! ## A177729.P4876912120985739205

`A063524(A005185(n+1))+A061641(n+1)`
-/

namespace A177729.P4876912120985739205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A005185 (n + 1)).toNat + A061641 (n + 1)

end

end A177729.P4876912120985739205

/-! ## A177729.P6076625997882232023

`A063524(A240835(2*n+1))+A061641(n+1)`
-/

namespace A177729.P6076625997882232023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A240835 (2 * n + 1)).toNat + A061641 (n + 1)

end

end A177729.P6076625997882232023

/-! ## A177729.P7181559687672672543

`record[A070167(n+1)]`
-/

namespace A177729.P7181559687672672543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177729.P7181559687672672543

/-! ## A177729.P15599263976225867

`lt[A222617(n+1), 1]+1`
-/

namespace A177729.P15599263976225867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222617 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A177729.P15599263976225867

/-! ## A177729.P16268586725307365941

`eq[A008908(n+1), A008908(A070167(n+1))]+1`
-/

namespace A177729.P16268586725307365941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A070167 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177729.P16268586725307365941

/-! ## A177729.P17385918116094912481

`A070167(comp[comp[A070167(n+1)]-1]+1)`
-/

namespace A177729.P17385918116094912481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A177729.P17385918116094912481

/-! ## A177729.P2290631013891208564

`A235452(a(n-1))+1` with `a(0)=1`
-/

namespace A177729.P2290631013891208564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235452 (a (n - 1)).toNat + 1

end

end A177729.P2290631013891208564

/-!
# A177730: Expansion of (6*x + 1) / ((x - 1)*(2*x - 1)*(4*x - 1)*(8*x - 1)).

The programs for A177730, the canonical program `A177730.P17802875165745839644` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177730 has offset 0).

The definition of A177730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177730.P17802875165745839644

`(2^(n+1)-1)²*(2^(n+2)-1)/3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177730

/-- `(2^(n+1)-1)²*(2^(n+2)-1)/3` -/
def P17802875165745839644.Spec : Prop :=
  ∀ n, P17802875165745839644.a n = (A177730 n : ℚ)

end A177730

/-! ## A177730.P11688869612937208614

`A126646(n)*A171477(n)`
-/

namespace A177730.P11688869612937208614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n * A171477 n

end

end A177730.P11688869612937208614

namespace A177730

/-- `A126646(n)*A171477(n)` -/
def P11688869612937208614.Spec : Prop :=
  ∀ n, P11688869612937208614.a n = A177730 n

end A177730

/-! ## A177730.P15146376389026749535

`A000225(n+1)*A171477(n)`
-/

namespace A177730.P15146376389026749535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A171477 n

end

end A177730.P15146376389026749535

namespace A177730

/-- `A000225(n+1)*A171477(n)` -/
def P15146376389026749535.Spec : Prop :=
  ∀ n, P15146376389026749535.a n = A177730 n

end A177730

/-! ## A177730.P11387468937540050115

`or(1, ∑[A000079(n)]*A171477(n))`
-/

namespace A177730.P11387468937540050115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((∑ j ∈ Finset.range (n + 1), f1 j) * A171477 n)

end

end A177730.P11387468937540050115

namespace A177730

/-- `or(1, ∑[A000079(n)]*A171477(n))` -/
def P11387468937540050115.Spec : Prop :=
  ∀ n, P11387468937540050115.a n = A177730 n

end A177730

/-! ## A177730.P7439524962755007878

`A000225(n+1)*A006095(n+2)`
-/

namespace A177730.P7439524962755007878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A006095 (n + 2)

end

end A177730.P7439524962755007878

namespace A177730

/-- `A000225(n+1)*A006095(n+2)` -/
def P7439524962755007878.Spec : Prop :=
  ∀ n, P7439524962755007878.a n = A177730 n

end A177730

/-! ## A177730.P4624009381829514932

`A006095(n+2)*A255047(n+1)`
-/

namespace A177730.P4624009381829514932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2) * A255047 (n + 1)

end

end A177730.P4624009381829514932

namespace A177730

/-- `A006095(n+2)*A255047(n+1)` -/
def P4624009381829514932.Spec : Prop :=
  ∀ n, P4624009381829514932.a n = A177730 n

end A177730

/-! ## A177730.P15133977517611240219

`A006095(n+2)*A075427(2*n)`
-/

namespace A177730.P15133977517611240219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2) * A075427 (2 * n)

end

end A177730.P15133977517611240219

namespace A177730

/-- `A006095(n+2)*A075427(2*n)` -/
def P15133977517611240219.Spec : Prop :=
  ∀ n, P15133977517611240219.a n = A177730 n

end A177730

/-! ## A177730.P12391092772665109018

`A006095(n+2)*A316742(2*n)`
-/

namespace A177730.P12391092772665109018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (n + 2) * A316742 (2 * n)

end

end A177730.P12391092772665109018

namespace A177730

/-- `A006095(n+2)*A316742(2*n)` -/
def P12391092772665109018.Spec : Prop :=
  ∀ n, P12391092772665109018.a n = A177730 n

end A177730

/-! ## A177730.P17049648506378471229

`∑[A016290(n)+2*A160873(n+1)]`
-/

namespace A177730.P17049648506378471229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n + 2 * A160873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177730.P17049648506378471229

namespace A177730

/-- `∑[A016290(n)+2*A160873(n+1)]` -/
def P17049648506378471229.Spec : Prop :=
  ∀ n, P17049648506378471229.a n = A177730 n

end A177730

/-! ## A177730.P13113747186124446020

`(A020988(n+1)-A000225(n+1))*A000225(n+1)`
-/

namespace A177730.P13113747186124446020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020988 (n + 1) - A000225 (n + 1)) * A000225 (n + 1)

end

end A177730.P13113747186124446020

namespace A177730

/-- `(A020988(n+1)-A000225(n+1))*A000225(n+1)` -/
def P13113747186124446020.Spec : Prop :=
  ∀ n, P13113747186124446020.a n = A177730 n

end A177730

/-! ## A177730.P15132317535448162727

`A000225(n+1)*A213243(n+1)*A213243(n+2)`
-/

namespace A177730.P15132317535448162727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A213243 (n + 1) * A213243 (n + 2)

end

end A177730.P15132317535448162727

namespace A177730

/-- `A000225(n+1)*A213243(n+1)*A213243(n+2)` -/
def P15132317535448162727.Spec : Prop :=
  ∀ n, P15132317535448162727.a n = A177730 n

end A177730

/-! ## A177730.P7318265034814485413

`A060867(n+1)/A127509(n+2)*A128831(n+2)`
-/

namespace A177730.P7318265034814485413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060867 (n + 1) : ℚ) / (A127509 (n + 2) : ℚ) * (A128831 (n + 2) : ℚ)

end

end A177730.P7318265034814485413

namespace A177730

/-- `A060867(n+1)/A127509(n+2)*A128831(n+2)` -/
def P7318265034814485413.Spec : Prop :=
  ∀ n, P7318265034814485413.a n = (A177730 n : ℚ)

end A177730

/-!
# A177731: Numbers which can be written as a sum of consecutive numbers, where the largest term in the sum is an odd number >= 3.

The programs for A177731, there is no canonical definition to state claims against.
-/

/-! ## A177731.P3892321276879451049

`lt[A238130(n), A122288(A065221(n))]`
-/

namespace A177731.P3892321276879451049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122288 (A065221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177731.P3892321276879451049

/-! ## A177731.P12284286937004540678

`lt[A107772(A184992(n+4)), A107778(n+3)]`
-/

namespace A177731.P12284286937004540678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107772 (A184992 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107778 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177731.P12284286937004540678

/-! ## A177731.P12848829457305479774

`lt[2, A052126(A065666(n+3))]`
-/

namespace A177731.P12848829457305479774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A065666 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A177731.P12848829457305479774

/-! ## A177731.P18107044184164587931

`lt[A354931(n+2), A354908(2*(n+1))]`
-/

namespace A177731.P18107044184164587931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354931 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354908 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177731.P18107044184164587931

/-!
# A177733: Integers that can be expressed as the sum of two or more positive consecutive numbers (the largest being even) AND also as the sum of two or more positive consecutive numbers (the largest being odd).

The programs for A177733, the canonical program `A177733.P18146593740982256021` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177733 has offset 1).

The definition of A177733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177733.P18146593740982256021

`∩[A105441(n+1), A187811(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A177733

/-- `∩[A105441(n+1), A187811(n+1)]` -/
def P18146593740982256021.Spec : Prop :=
  ∀ n, (P18146593740982256021.a n : ℤ) = A177733 (n + 1)

theorem P18146593740982256021.correct : P18146593740982256021.Spec := by
  intro n
  simp only [A177733, Nat.add_sub_cancel]

end A177733

/-! ## A177733.P17831646182533028724

`∩[A187811(n+1), A347202(n+1)]`
-/

namespace A177733.P17831646182533028724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177733.P17831646182533028724

namespace A177733

/-- `∩[A187811(n+1), A347202(n+1)]` -/
def P17831646182533028724.Spec : Prop :=
  ∀ n, (P17831646182533028724.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P178285802382319654

`lt[A038189(n), A001842(n)]`
-/

namespace A177733.P178285802382319654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177733.P178285802382319654

namespace A177733

/-- `lt[A038189(n), A001842(n)]` -/
def P178285802382319654.Spec : Prop :=
  ∀ n, (P178285802382319654.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P3427038985668310298

`lt[tan(A260728(n)), A001842(n)]`
-/

namespace A177733.P3427038985668310298
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A260728 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P3427038985668310298

namespace A177733

/-- `lt[tan(A260728(n)), A001842(n)]` -/
def P3427038985668310298.Spec : Prop :=
  ∀ n, (P3427038985668310298.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P5829084929249342010

`lt[acot(A000161(n)), A001842(n)]`
-/

namespace A177733.P5829084929249342010
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000161 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P5829084929249342010

namespace A177733

/-- `lt[acot(A000161(n)), A001842(n)]` -/
def P5829084929249342010.Spec : Prop :=
  ∀ n, (P5829084929249342010.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P11037492201193320676

`lt[acot(A000925(n)), A001842(n)]`
-/

namespace A177733.P11037492201193320676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000925 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P11037492201193320676

namespace A177733

/-- `lt[acot(A000925(n)), A001842(n)]` -/
def P11037492201193320676.Spec : Prop :=
  ∀ n, (P11037492201193320676.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P4358150714989474341

`lt[acot(A004018(n)), A001842(n)]`
-/

namespace A177733.P4358150714989474341
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004018 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P4358150714989474341

namespace A177733

/-- `lt[acot(A004018(n)), A001842(n)]` -/
def P4358150714989474341.Spec : Prop :=
  ∀ n, (P4358150714989474341.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P896446851727288052

`lt[acot(A143574(n)), A001842(n)]`
-/

namespace A177733.P896446851727288052
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A143574 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P896446851727288052

namespace A177733

/-- `lt[acot(A143574(n)), A001842(n)]` -/
def P896446851727288052.Spec : Prop :=
  ∀ n, (P896446851727288052.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P12836479520411240472

`lt[atan(A219964(n)), A001842(n)]`
-/

namespace A177733.P12836479520411240472
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A219964 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P12836479520411240472

namespace A177733

/-- `lt[atan(A219964(n)), A001842(n)]` -/
def P12836479520411240472.Spec : Prop :=
  ∀ n, (P12836479520411240472.a n : ℤ) = A177733 (n + 1)

end A177733

/-! ## A177733.P13338395403240944924

`lt[atan(A219964(n)), A260728(n)]`
-/

namespace A177733.P13338395403240944924
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A219964 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A177733.P13338395403240944924

namespace A177733

/-- `lt[atan(A219964(n)), A260728(n)]` -/
def P13338395403240944924.Spec : Prop :=
  ∀ n, (P13338395403240944924.a n : ℤ) = A177733 (n + 1)

end A177733

/-!
# A177735: a(0)=1, a(n)=A002445(n)/6 for n>=1.

The programs for A177735, the canonical program `A177735.P15978522362492685645` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177735 has offset 0).

The definition of A177735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177735.P15978522362492685645

`∏{d}[n, A145737(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177735

/-- `∏{d}[n, A145737(#)]` -/
def P15978522362492685645.Spec : Prop :=
  ∀ n, P15978522362492685645.a n = A177735 n

theorem P15978522362492685645.correct : P15978522362492685645.Spec := by
  intro n
  simp only [A177735]

end A177735

/-! ## A177735.P9831164356763487689

`ceil(A277087(n)/2)`
-/

namespace A177735.P9831164356763487689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A277087 n : ℚ) / 2⌉

end

end A177735.P9831164356763487689

namespace A177735

/-- `ceil(A277087(n)/2)` -/
def P9831164356763487689.Spec : Prop :=
  ∀ n, P9831164356763487689.a n = A177735 n

end A177735

/-! ## A177735.P12648909798323569241

`ceil(A002445(n)/6)`
-/

namespace A177735.P12648909798323569241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002445 n : ℚ) / 6⌉

end

end A177735.P12648909798323569241

namespace A177735

/-- `ceil(A002445(n)/6)` -/
def P12648909798323569241.Spec : Prop :=
  ∀ n, P12648909798323569241.a n = A177735 n

end A177735

/-! ## A177735.P2261783014560718597

`∏{d}[2*n, A308090(#)]`
-/

namespace A177735.P2261783014560718597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A308090 d

end

end A177735.P2261783014560718597

namespace A177735

/-- `∏{d}[2*n, A308090(#)]` -/
def P2261783014560718597.Spec : Prop :=
  ∀ n, P2261783014560718597.a n = A177735 n

end A177735

/-! ## A177735.P16983093733381811074

`ceil(A141459(2*n)/3)`
-/

namespace A177735.P16983093733381811074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141459 (2 * n) : ℚ) / 3⌉

end

end A177735.P16983093733381811074

namespace A177735

/-- `ceil(A141459(2*n)/3)` -/
def P16983093733381811074.Spec : Prop :=
  ∀ n, P16983093733381811074.a n = A177735 n

end A177735

/-! ## A177735.P10156598030792821183

`ceil(A141056(2*n)/6)`
-/

namespace A177735.P10156598030792821183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141056 (2 * n) : ℚ) / 6⌉

end

end A177735.P10156598030792821183

namespace A177735

/-- `ceil(A141056(2*n)/6)` -/
def P10156598030792821183.Spec : Prop :=
  ∀ n, P10156598030792821183.a n = A177735 n

end A177735

/-! ## A177735.P8385760524172941536

`A002445(n)/A020793(n)`
-/

namespace A177735.P8385760524172941536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A020793 n : ℚ)

end

end A177735.P8385760524172941536

namespace A177735

/-- `A002445(n)/A020793(n)` -/
def P8385760524172941536.Spec : Prop :=
  ∀ n, P8385760524172941536.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P4268242448909058656

`A140814(n)/A040006(n)`
-/

namespace A177735.P4268242448909058656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140814 n : ℚ) / (A040006 n : ℚ)

end

end A177735.P4268242448909058656

namespace A177735

/-- `A140814(n)/A040006(n)` -/
def P4268242448909058656.Spec : Prop :=
  ∀ n, P4268242448909058656.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P8347611193213311206

`A002445(n)/A177057(n+1)`
-/

namespace A177735.P8347611193213311206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A177057 (n + 1 + 1) : ℚ)

end

end A177735.P8347611193213311206

namespace A177735

/-- `A002445(n)/A177057(n+1)` -/
def P8347611193213311206.Spec : Prop :=
  ∀ n, P8347611193213311206.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P17820984238224907586

`A027642(2*n)/A020793(n)`
-/

namespace A177735.P17820984238224907586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A020793 n : ℚ)

end

end A177735.P17820984238224907586

namespace A177735

/-- `A027642(2*n)/A020793(n)` -/
def P17820984238224907586.Spec : Prop :=
  ∀ n, P17820984238224907586.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P7993257489112261139

`A002445(n)/A002445(val(A002445(n), 2))`
-/

namespace A177735.P7993257489112261139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A002445 (SequenceMachineLib.valuation (A002445 n).toNat 2) : ℚ)

end

end A177735.P7993257489112261139

namespace A177735

/-- `A002445(n)/A002445(val(A002445(n), 2))` -/
def P7993257489112261139.Spec : Prop :=
  ∀ n, P7993257489112261139.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P2157039505558756703

`A002445(n)/A002445(n/A028310(n))`
-/

namespace A177735.P2157039505558756703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A002445 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat : ℚ)

end

end A177735.P2157039505558756703

namespace A177735

/-- `A002445(n)/A002445(n/A028310(n))` -/
def P2157039505558756703.Spec : Prop :=
  ∀ n, P2157039505558756703.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P13478167814118284369

`A002445(n)/A176591(A176591(2*n+1))`
-/

namespace A177735.P13478167814118284369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A176591 (A176591 (2 * n + 1)).toNat : ℚ)

end

end A177735.P13478167814118284369

namespace A177735

/-- `A002445(n)/A176591(A176591(2*n+1))` -/
def P13478167814118284369.Spec : Prop :=
  ∀ n, P13478167814118284369.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P314250078253274555

`A002445(n)/A002445(gcd(n, A020500(n+1)))`
-/

namespace A177735.P314250078253274555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A002445 (Int.gcd (n : ℤ) (A020500 (n + 1))) : ℚ)

end

end A177735.P314250078253274555

namespace A177735

/-- `A002445(n)/A002445(gcd(n, A020500(n+1)))` -/
def P314250078253274555.Spec : Prop :=
  ∀ n, P314250078253274555.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P11834000278988670252

`A027642(2*n)/A010171(A027642(2*n+1))`
-/

namespace A177735.P11834000278988670252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A010171 (A027642 (2 * n + 1)).toNat : ℚ)

end

end A177735.P11834000278988670252

namespace A177735

/-- `A027642(2*n)/A010171(A027642(2*n+1))` -/
def P11834000278988670252.Spec : Prop :=
  ∀ n, P11834000278988670252.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P3385943037454947192

`A176591(2*n)/A006516(A176591(2*n+1))`
-/

namespace A177735.P3385943037454947192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176591 (2 * n) : ℚ) / (A006516 (A176591 (2 * n + 1)).toNat : ℚ)

end

end A177735.P3385943037454947192

namespace A177735

/-- `A176591(2*n)/A006516(A176591(2*n+1))` -/
def P3385943037454947192.Spec : Prop :=
  ∀ n, P3385943037454947192.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P17561433472406415632

`A027642(2*n)/A176591(A176591(2*n+1))`
-/

namespace A177735.P17561433472406415632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A176591 (A176591 (2 * n + 1)).toNat : ℚ)

end

end A177735.P17561433472406415632

namespace A177735

/-- `A027642(2*n)/A176591(A176591(2*n+1))` -/
def P17561433472406415632.Spec : Prop :=
  ∀ n, P17561433472406415632.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P3680114048299460080

`A001897(n)/A122553(n)`
-/

namespace A177735.P3680114048299460080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001897 n : ℚ) / (A122553 n : ℚ)

end

end A177735.P3680114048299460080

namespace A177735

/-- `A001897(n)/A122553(n)` -/
def P3680114048299460080.Spec : Prop :=
  ∀ n, P3680114048299460080.a n = (A177735 n : ℚ)

end A177735

/-! ## A177735.P4349658120505011223

`2*A277087(n)-A001897(n)`
-/

namespace A177735.P4349658120505011223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277087 n - A001897 n

end

end A177735.P4349658120505011223

namespace A177735

/-- `2*A277087(n)-A001897(n)` -/
def P4349658120505011223.Spec : Prop :=
  ∀ n, P4349658120505011223.a n = A177735 n

end A177735

/-!
# A177736: Partial sums of A006156.

The programs for A177736, there is no canonical definition to state claims against.
-/

/-! ## A177736.P6660529737164451539

`∑[A006156(n)]`
-/

namespace A177736.P6660529737164451539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177736.P6660529737164451539

/-! ## A177736.P11083281926969761655

`A006156(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A177736.P11083281926969761655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006156 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A177736.P11083281926969761655

/-! ## A177736.P16938420453137784426

`∑[A000244(n)-A171761(n)]`
-/

namespace A177736.P16938420453137784426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A171761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177736.P16938420453137784426

/-! ## A177736.P8301890059886612965

`a(n-1)+A006156(n)+A000007(n)` with `a(0)=1`
-/

namespace A177736.P8301890059886612965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006156 n + A000007 n)

end

end A177736.P8301890059886612965

/-! ## A177736.P11453498023477212157

`a(n-1)+A006156(n)^A008683(A005117(n+1))²` with `a(0)=1`
-/

namespace A177736.P11453498023477212157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006156 n : ℚ) ^ (A008683 (A005117 (n + 1)).toNat ^ 2 : ℤ)

end

end A177736.P11453498023477212157

/-!
# A177737: Partial sums of A046878.

The programs for A177737, there is no canonical definition to state claims against.
-/

/-! ## A177737.P12358623421787282056

`∑[A046878(n)]`
-/

namespace A177737.P12358623421787282056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177737.P12358623421787282056

/-! ## A177737.P6923739589006622826

`A046878(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A177737.P6923739589006622826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A046878 n + a (A023443 n).toNat

end

end A177737.P6923739589006622826

/-! ## A177737.P15704469326277262681

`A046878(n)+a(floor((A092535(n+1)-1)/2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A177737.P15704469326277262681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A046878 n + a ⌊(A092535 (n + 1) - 1 : ℚ) / 2⌋.toNat

end

end A177737.P15704469326277262681

/-! ## A177737.P15907443082309380325

`A046878(n)+A000027(a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A177737.P15907443082309380325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A046878 n + A000027 (a (n - 1)).toNat

end

end A177737.P15907443082309380325

/-!
# A177738: a(n) = floor( (x^n - x^(-n)) / (x - x^(-1)) ) where x = Pi-2.

The programs for A177738, there is no canonical definition to state claims against.
-/

/-! ## A177738.P4847003244406519194

`∑[A103221(A029023(A242474(n+1)))]`
-/

namespace A177738.P4847003244406519194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A029023 (A242474 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177738.P4847003244406519194

/-!
# A177740: Triangle read by rows in which row n lists the number of parts in each of those partitions of n that have every part >=3.

The programs for A177740, there is no canonical definition to state claims against.
-/

/-! ## A177740.P598441223546130830

`∑{d}[A132787(A034548(n+1)+1), A272947(#+n+1)]`
-/

namespace A177740.P598441223546130830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132787 (A034548 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A272947 (d + n + 1)

end

end A177740.P598441223546130830

/-! ## A177740.P12859394889023621951

`A272947(A090110(n+1)+1)`
-/

namespace A177740.P12859394889023621951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (A090110 (n + 1) + 1).toNat

end

end A177740.P12859394889023621951

/-! ## A177740.P16011130386417010892

`A272947(A141213(n+1)-2)`
-/

namespace A177740.P16011130386417010892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (A141213 (n + 1) - 2).toNat

end

end A177740.P16011130386417010892

/-! ## A177740.P6349446772144118265

`A272947(n+2)+A000007(A000041(n))`
-/

namespace A177740.P6349446772144118265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (n + 2) + A000007 (A000041 n).toNat

end

end A177740.P6349446772144118265

/-! ## A177740.P3048167544503417153

`A099812(A328524(n))`
-/

namespace A177740.P3048167544503417153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (A328524 n).toNat

end

end A177740.P3048167544503417153

/-!
# A177742: The number of strong vertex magic total labelings of all 2-regular simple graphs on 2n+1 vertices.

The programs for A177742, there is no canonical definition to state claims against.
-/

/-! ## A177742.P12936433366485692105

`A077767(Δ[A211896(n)])`
-/

namespace A177742.P12936433366485692105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (f1 (n + 1) - f1 n).toNat

end

end A177742.P12936433366485692105

/-!
# A177743: The number of strong vertex magic total labelings of the cyclic graph on 2n+1 vertices.

The programs for A177743, there is no canonical definition to state claims against.
-/

/-! ## A177743.P6859079509246087462

`A177741(A182747(n)+1)`
-/

namespace A177743.P6859079509246087462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177741 (A182747 n + 1).toNat

end

end A177743.P6859079509246087462

/-! ## A177743.P15910786821666874345

`A177741(A002865(2*n+1)+1)`
-/

namespace A177743.P15910786821666874345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177741 (A002865 (2 * n + 1) + 1).toNat

end

end A177743.P15910786821666874345

/-! ## A177743.P9692492060158702220

`A177741(∑[A008483(2*n+1)]+1)`
-/

namespace A177743.P9692492060158702220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177741 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A177743.P9692492060158702220

/-!
# A177744: Number of conjugacy classes in PSL_2(q) as q runs through the primes and prime powers.

The programs for A177744, there is no canonical definition to state claims against.
-/

/-! ## A177744.P172690117401934872

`A073078(A246655(n+1))+2`
-/

namespace A177744.P172690117401934872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073078 (A246655 (n + 1)).toNat + 2

end

end A177744.P172690117401934872

/-! ## A177744.P614746563839680268

`A029578(A181062(n+2))+3`
-/

namespace A177744.P614746563839680268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A181062 (n + 2)).toNat + 3

end

end A177744.P614746563839680268

/-! ## A177744.P15349748241229514829

`A029579(∑[A057820(n+1)])+2`
-/

namespace A177744.P15349748241229514829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A177744.P15349748241229514829

/-! ## A177744.P16574834951075061579

`A029578(∑[A057820(n+1)])+3`
-/

namespace A177744.P16574834951075061579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 3

end

end A177744.P16574834951075061579

/-! ## A177744.P4617328612559034462

`A029579(record[A047994(n+1)])+2`
-/

namespace A177744.P4617328612559034462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A177744.P4617328612559034462

/-! ## A177744.P9010101758803650745

`A029579(record[A344005(n+1)])+2`
-/

namespace A177744.P9010101758803650745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A177744.P9010101758803650745

/-! ## A177744.P2784676896149691811

`A029579(record[A345998(n+1)])+2`
-/

namespace A177744.P2784676896149691811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A177744.P2784676896149691811

/-! ## A177744.P5192168286643763063

`A029578(record[A047994(n+1)])+3`
-/

namespace A177744.P5192168286643763063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 3

end

end A177744.P5192168286643763063

/-! ## A177744.P17381789046505975092

`A029579(record[A076388(n+2)])+2`
-/

namespace A177744.P17381789046505975092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076388 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A177744.P17381789046505975092

/-! ## A177744.P16215376767946299449

`A029578(eq[1, A001221(n+1)])+3`
-/

namespace A177744.P16215376767946299449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A177744.P16215376767946299449

/-!
# A177745: Semiprimes k that divide Fibonacci(k+1).

The programs for A177745, there is no canonical definition to state claims against.
-/

/-! ## A177745.P768389787520617600

`filter[A069107(n+1), A354927(#)]`
-/

namespace A177745.P768389787520617600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A177745.P768389787520617600

/-! ## A177745.P13326488075948298791

`filter[A069107(n+1), A359828(#)]`
-/

namespace A177745.P13326488075948298791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A177745.P13326488075948298791

/-! ## A177745.P12161376750067618035

`filter[A069107(n+1), A374128(#)]`
-/

namespace A177745.P12161376750067618035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A177745.P12161376750067618035

/-! ## A177745.P12117547805513580905

`filter[A182504(n+1), A354927(#)]`
-/

namespace A177745.P12117547805513580905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A177745.P12117547805513580905

/-! ## A177745.P12243351503350654893

`filter[A182504(n+1), A359828(#)]`
-/

namespace A177745.P12243351503350654893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A177745.P12243351503350654893

/-!
# A177746: Primes p such that prime(p-1) mod (p-1) = (prime(p) mod p) - 1.

The programs for A177746, there is no canonical definition to state claims against.
-/

/-! ## A177746.P13216073477967439104

`p?[∑[A046550(A046579(3*(n+1)))]]`
-/

namespace A177746.P13216073477967439104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046550 (A046579 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177746.P13216073477967439104

/-! ## A177746.P4611335092799613759

`A094746(A376843(n+1))`
-/

namespace A177746.P4611335092799613759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094746 (A376843 (n + 1)).toNat

end

end A177746.P4611335092799613759

/-!
# A177747: Convolution of A008805 (triangular numbers repeated) with itself.

The programs for A177747, the canonical program `A177747.P16551062077372779480` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177747 has offset 0).

The definition of A177747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177747.P16551062077372779480

`ogf(1/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177747

/-- `ogf(1/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))` -/
def P16551062077372779480.Spec : Prop :=
  ∀ n, P16551062077372779480.a n = A177747 n

theorem P16551062077372779480.correct : P16551062077372779480.Spec := by
  intro n
  simp only [A177747]

end A177747

/-! ## A177747.P8418798792489768579

`∑[C(floor(n/2)+4, 4)]`
-/

namespace A177747.P8418798792489768579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 4).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P8418798792489768579

namespace A177747

/-- `∑[C(floor(n/2)+4, 4)]` -/
def P8418798792489768579.Spec : Prop :=
  ∀ n, (P8418798792489768579.a n : ℤ) = A177747 n

end A177747

/-! ## A177747.P13724374086034066956

`a(n-1)+C(floor(n/2)+4, 4)` with `a(0)=1`
-/

namespace A177747.P13724374086034066956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (⌊(n : ℚ) / 2⌋ + 4).toNat 4

end

end A177747.P13724374086034066956

namespace A177747

/-- `a(n-1)+C(floor(n/2)+4, 4)` -/
def P13724374086034066956.Spec : Prop :=
  ∀ n, (P13724374086034066956.a n : ℤ) = A177747 n

end A177747

/-! ## A177747.P14664266720264102769

`∑[A189976(n+8)]`
-/

namespace A177747.P14664266720264102769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P14664266720264102769

namespace A177747

/-- `∑[A189976(n+8)]` -/
def P14664266720264102769.Spec : Prop :=
  ∀ n, P14664266720264102769.a n = A177747 n

end A177747

/-! ## A177747.P8442671027252712377

`A038163(n)-a(n-1)` with `a(0)=1`
-/

namespace A177747.P8442671027252712377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038163 n - a (n - 1)

end

end A177747.P8442671027252712377

namespace A177747

/-- `A038163(n)-a(n-1)` -/
def P8442671027252712377.Spec : Prop :=
  ∀ n, P8442671027252712377.a n = A177747 n

end A177747

/-! ## A177747.P16253665891386134889

`∑[∑[char[2*n]*A058187(n)]]`
-/

namespace A177747.P16253665891386134889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) * A058187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P16253665891386134889

namespace A177747

/-- `∑[∑[char[2*n]*A058187(n)]]` -/
def P16253665891386134889.Spec : Prop :=
  ∀ n, P16253665891386134889.a n = A177747 n

end A177747

/-! ## A177747.P17558934471832174088

`∑[∑[A000292(∑[n+1]%(n+2))]]`
-/

namespace A177747.P17558934471832174088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P17558934471832174088

namespace A177747

/-- `∑[∑[A000292(∑[n+1]%(n+2))]]` -/
def P17558934471832174088.Spec : Prop :=
  ∀ n, P17558934471832174088.a n = A177747 n

end A177747

/-! ## A177747.P9061557837672772815

`∑[∑[A000292(A027656(n))]]`
-/

namespace A177747.P9061557837672772815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A027656 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P9061557837672772815

namespace A177747

/-- `∑[∑[A000292(A027656(n))]]` -/
def P9061557837672772815.Spec : Prop :=
  ∀ n, P9061557837672772815.a n = A177747 n

end A177747

/-! ## A177747.P2063532636771844246

`2*A092091(n)-A052267(n)`
-/

namespace A177747.P2063532636771844246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092091 n - A052267 n

end

end A177747.P2063532636771844246

namespace A177747

/-- `2*A092091(n)-A052267(n)` -/
def P2063532636771844246.Spec : Prop :=
  ∀ n, P2063532636771844246.a n = A177747 n

end A177747

/-! ## A177747.P4099269154614358839

`2*A299336(n)-A060099(n)`
-/

namespace A177747.P4099269154614358839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299336 n - A060099 n

end

end A177747.P4099269154614358839

namespace A177747

/-- `2*A299336(n)-A060099(n)` -/
def P4099269154614358839.Spec : Prop :=
  ∀ n, P4099269154614358839.a n = A177747 n

end A177747

/-! ## A177747.P17463265621234026430

`∑[∑[A056594(n)²*A008804(n)]]`
-/

namespace A177747.P17463265621234026430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * A008804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P17463265621234026430

namespace A177747

/-- `∑[∑[A056594(n)²*A008804(n)]]` -/
def P17463265621234026430.Spec : Prop :=
  ∀ n, P17463265621234026430.a n = A177747 n

end A177747

/-! ## A177747.P12385220074875075284

`∑[A032094(n+9)-∑[A032093(n+8)]]`
-/

namespace A177747.P12385220074875075284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032093 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 9) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P12385220074875075284

namespace A177747

/-- `∑[A032094(n+9)-∑[A032093(n+8)]]` -/
def P12385220074875075284.Spec : Prop :=
  ∀ n, P12385220074875075284.a n = A177747 n

end A177747

/-! ## A177747.P7329108521978426916

`A189980(n+1)+A189980(n)-A189976(n+9)`
-/

namespace A177747.P7329108521978426916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (n + 1 + 10) + (A189980 (n + 10) - A189976 (n + 9))

end

end A177747.P7329108521978426916

namespace A177747

/-- `A189980(n+1)+A189980(n)-A189976(n+9)` -/
def P7329108521978426916.Spec : Prop :=
  ∀ n, P7329108521978426916.a n = A177747 n

end A177747

/-! ## A177747.P5105681954357804967

`∑[A000332(Δ[A002620(n+7)])]`
-/

namespace A177747.P5105681954357804967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P5105681954357804967

namespace A177747

/-- `∑[A000332(Δ[A002620(n+7)])]` -/
def P5105681954357804967.Spec : Prop :=
  ∀ n, P5105681954357804967.a n = A177747 n

end A177747

/-! ## A177747.P16582084522944266059

`∑[A051677(A008805(n))]`
-/

namespace A177747.P16582084522944266059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P16582084522944266059

namespace A177747

/-- `∑[A051677(A008805(n))]` -/
def P16582084522944266059.Spec : Prop :=
  ∀ n, P16582084522944266059.a n = A177747 n

end A177747

/-! ## A177747.P9271613984073850152

`∑[A194005(A052905(n+1))]`
-/

namespace A177747.P9271613984073850152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A052905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P9271613984073850152

namespace A177747

/-- `∑[A194005(A052905(n+1))]` -/
def P9271613984073850152.Spec : Prop :=
  ∀ n, P9271613984073850152.a n = A177747 n

end A177747

/-! ## A177747.P4991464563003481070

`∑[A109221(∑[n+3])]`
-/

namespace A177747.P4991464563003481070
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P4991464563003481070

namespace A177747

/-- `∑[A109221(∑[n+3])]` -/
def P4991464563003481070.Spec : Prop :=
  ∀ n, P4991464563003481070.a n = A177747 n

end A177747

/-! ## A177747.P18242904214448166137

`∑[A185785(A055802(n+3))]`
-/

namespace A177747.P18242904214448166137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185785 (A055802 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P18242904214448166137

namespace A177747

/-- `∑[A185785(A055802(n+3))]` -/
def P18242904214448166137.Spec : Prop :=
  ∀ n, P18242904214448166137.a n = A177747 n

end A177747

/-! ## A177747.P10084000193496344269

`∑[∑[A056594(n²)*A008804(n)]]`
-/

namespace A177747.P10084000193496344269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A008804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177747.P10084000193496344269

namespace A177747

/-- `∑[∑[A056594(n²)*A008804(n)]]` -/
def P10084000193496344269.Spec : Prop :=
  ∀ n, P10084000193496344269.a n = A177747 n

end A177747

/-!
# A177749: G.f. satisfies: A(A(A(x))) = (1 + A(x))^2 - (1+x).

The programs for A177749, there is no canonical definition to state claims against.
-/

/-! ## A177749.P3908177982236854341

`A334028(24*C(n, 4))+A291198(n+1)`
-/

namespace A177749.P3908177982236854341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (24 * Nat.choose n 4) + A291198 (n + 1)

end

end A177749.P3908177982236854341

/-!
# A177750: G.f. A(x) satisfies: A(A(A(x))) = A(A(x)) + x^2 = A^3(x)=A^2(x)+x^2, where A^n(x) denotes the n-th iteration of A(x).

The programs for A177750, there is no canonical definition to state claims against.
-/

/-! ## A177750.P1957002216533452075

`A309288(A278934(n))+A000035(n)`
-/

namespace A177750.P1957002216533452075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309288 (A278934 n).toNat + A000035 n

end

end A177750.P1957002216533452075

/-!
# A177752: a(n) = [x^n] A(x)^n/(n+1) for n>1 where g.f. A(x) = Sum_{n>=0} a(n)*x^n with A(0)=A'(0)=1.

The programs for A177752, there is no canonical definition to state claims against.
-/

/-! ## A177752.P50499367223725564

`A293864(n)/n!`
-/

namespace A177752.P50499367223725564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293864 n : ℚ) / (Nat.factorial n : ℚ)

end

end A177752.P50499367223725564

/-! ## A177752.P10566463626274590897

`A293864(n)/A000142(n)`
-/

namespace A177752.P10566463626274590897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293864 n : ℚ) / (A000142 n : ℚ)

end

end A177752.P10566463626274590897

/-! ## A177752.P10287913578803514355

`A293864(n)/Δ[A003422(n)]`
-/

namespace A177752.P10287913578803514355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293864 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A177752.P10287913578803514355

/-! ## A177752.P10677839842406539645

`A059826(n)/A219619(n)*A293864(n)`
-/

namespace A177752.P10677839842406539645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059826 n : ℚ) / (A219619 n : ℚ) * (A293864 n : ℚ)

end

end A177752.P10677839842406539645

/-!
# A177753: G.f.: A(x) = exp( Sum_{n>=1} (n+1)*A177752(n)*x^n/n - x ).

The programs for A177753, there is no canonical definition to state claims against.
-/

/-! ## A177753.P15176503674252162203

`A008619(A000681(n)-A333700(n+1))`
-/

namespace A177753.P15176503674252162203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000681 n - A333700 (n + 1)).toNat

end

end A177753.P15176503674252162203

/-! ## A177753.P6365701328404671574

`A277320(A181197(n+1)-A000073(n))`
-/

namespace A177753.P6365701328404671574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277320 (A181197 (n + 1) - A000073 n).toNat

end

end A177753.P6365701328404671574

/-!
# A177754: Partial sums of A047994.

The programs for A177754, the canonical program `A177754.P5543966575307144740` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177754 has offset 1).

The definition of A177754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177754.P5543966575307144740

`∑{#}[n, A396336(#+1)*A002088(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A177754

/-- `∑{#}[n, A396336(#+1)*A002088(floor((n+1)/(#+1)))]` -/
def P5543966575307144740.Spec : Prop :=
  ∀ n, P5543966575307144740.a n = A177754 (n + 1)

theorem P5543966575307144740.correct : P5543966575307144740.Spec := by
  intro n
  simp only [A177754, Nat.add_sub_cancel]

end A177754

/-! ## A177754.P10245631934257037110

`∑[A047994(n+1)]`
-/

namespace A177754.P10245631934257037110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P10245631934257037110

namespace A177754

/-- `∑[A047994(n+1)]` -/
def P10245631934257037110.Spec : Prop :=
  ∀ n, P10245631934257037110.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P6538884937346540537

`∑[1-A323410(n+1)+n]`
-/

namespace A177754.P6538884937346540537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323410 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P6538884937346540537

namespace A177754

/-- `∑[1-A323410(n+1)+n]` -/
def P6538884937346540537.Spec : Prop :=
  ∀ n, P6538884937346540537.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P3616303391498874982

`∑[A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]]`
-/

namespace A177754.P3616303391498874982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P3616303391498874982

namespace A177754

/-- `∑[A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]]` -/
def P3616303391498874982.Spec : Prop :=
  ∀ n, P3616303391498874982.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P17995209416366671804

`∑[A344875(A026741(n+1))]`
-/

namespace A177754.P17995209416366671804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P17995209416366671804

namespace A177754

/-- `∑[A344875(A026741(n+1))]` -/
def P17995209416366671804.Spec : Prop :=
  ∀ n, P17995209416366671804.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P4361992034363197459

`∑[A344874(n+1)+A011772(n+1)]`
-/

namespace A177754.P4361992034363197459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (n + 1) + A011772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P4361992034363197459

namespace A177754

/-- `∑[A344874(n+1)+A011772(n+1)]` -/
def P4361992034363197459.Spec : Prop :=
  ∀ n, P4361992034363197459.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P13899205576969699312

`∑[A323408(n+1)-A323407(n+1)]`
-/

namespace A177754.P13899205576969699312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (n + 1) - A323407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P13899205576969699312

namespace A177754

/-- `∑[A323408(n+1)-A323407(n+1)]` -/
def P13899205576969699312.Spec : Prop :=
  ∀ n, P13899205576969699312.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P16323580332078182253

`∑[A345937(n+1)*A345938(n+1)]`
-/

namespace A177754.P16323580332078182253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345937 (n + 1) * A345938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P16323580332078182253

namespace A177754

/-- `∑[A345937(n+1)*A345938(n+1)]` -/
def P16323580332078182253.Spec : Prop :=
  ∀ n, P16323580332078182253.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P12870683903022331194

`∑[A191414(n+1)/A034448(n+1)]`
-/

namespace A177754.P12870683903022331194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A034448 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P12870683903022331194

namespace A177754

/-- `∑[A191414(n+1)/A034448(n+1)]` -/
def P12870683903022331194.Spec : Prop :=
  ∀ n, P12870683903022331194.a n = (A177754 (n + 1) : ℚ)

end A177754

/-! ## A177754.P9357990166972664846

`∑[∑{d}[A003557(n+1), A000010((n+1)/#)]]`
-/

namespace A177754.P9357990166972664846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P9357990166972664846

namespace A177754

/-- `∑[∑{d}[A003557(n+1), A000010((n+1)/#)]]` -/
def P9357990166972664846.Spec : Prop :=
  ∀ n, P9357990166972664846.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P17880273377476774010

`∑[A000203(A003557(n+1))*A173557(n+1)]`
-/

namespace A177754.P17880273377476774010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003557 (n + 1)).toNat * A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P17880273377476774010

namespace A177754

/-- `∑[A000203(A003557(n+1))*A173557(n+1)]` -/
def P17880273377476774010.Spec : Prop :=
  ∀ n, P17880273377476774010.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P13039812215381554483

`∑[A344875(Δ[A001318(n)])]`
-/

namespace A177754.P13039812215381554483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P13039812215381554483

namespace A177754

/-- `∑[A344875(Δ[A001318(n)])]` -/
def P13039812215381554483.Spec : Prop :=
  ∀ n, P13039812215381554483.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P16297554155493079942

`∑[A344875(A344764(∑[n+1]))]`
-/

namespace A177754.P16297554155493079942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (A344764 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P16297554155493079942

namespace A177754

/-- `∑[A344875(A344764(∑[n+1]))]` -/
def P16297554155493079942.Spec : Prop :=
  ∀ n, P16297554155493079942.a n = A177754 (n + 1)

end A177754

/-! ## A177754.P1429989997545201586

`eq[A267084(n+1), A384046(n+1)]`
-/

namespace A177754.P1429989997545201586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177754.P1429989997545201586

namespace A177754

/-- `eq[A267084(n+1), A384046(n+1)]` -/
def P1429989997545201586.Spec : Prop :=
  ∀ n, (P1429989997545201586.a n : ℤ) = A177754 (n + 1)

end A177754

/-! ## A177754.P13454041074151160128

`eq[A054977(n), A384046(n+1)]`
-/

namespace A177754.P13454041074151160128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177754.P13454041074151160128

namespace A177754

/-- `eq[A054977(n), A384046(n+1)]` -/
def P13454041074151160128.Spec : Prop :=
  ∀ n, (P13454041074151160128.a n : ℤ) = A177754 (n + 1)

end A177754

/-! ## A177754.P2163332528060364117

`eq[A057427(n), A384046(n+1)]`
-/

namespace A177754.P2163332528060364117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177754.P2163332528060364117

namespace A177754

/-- `eq[A057427(n), A384046(n+1)]` -/
def P2163332528060364117.Spec : Prop :=
  ∀ n, (P2163332528060364117.a n : ℤ) = A177754 (n + 1)

end A177754

/-! ## A177754.P17800025579597095777

`eq[A158388(n), A384046(n+1)]`
-/

namespace A177754.P17800025579597095777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384046 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177754.P17800025579597095777

namespace A177754

/-- `eq[A158388(n), A384046(n+1)]` -/
def P17800025579597095777.Spec : Prop :=
  ∀ n, (P17800025579597095777.a n : ℤ) = A177754 (n + 1)

end A177754

/-! ## A177754.P15931408765240416986

`∑[A392085((n+1)²)]`
-/

namespace A177754.P15931408765240416986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392085 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P15931408765240416986

namespace A177754

/-- `∑[A392085((n+1)²)]` -/
def P15931408765240416986.Spec : Prop :=
  ∀ n, P15931408765240416986.a n = A177754 (n + 1)

end A177754

/-!
# A177755: Number of ways to place 2 nonattacking bishops on an n X n toroidal board.

The programs for A177755, the canonical program `A177755.P15746514770599142484` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177755 has offset 1).

The definition of A177755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177755.P4850249450690577747

`ogf((4x+10x^2+36x^3+28x^4+16x^5+2x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`
-/

namespace A177755.P4850249450690577747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 10, 36, 28, 16, 2] [1, -2, -2, 6, 0, -6, 2, 2, -1] n

end

end A177755.P4850249450690577747

namespace A177755

/-- `ogf((4x+10x^2+36x^3+28x^4+16x^5+2x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P4850249450690577747.Spec : Prop :=
  ∀ n, P4850249450690577747.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P15746514770599142484

`(n+1)²*(2*(n+1)²-4*(n+1)+3+(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177755

/-- `(n+1)²*(2*(n+1)²-4*(n+1)+3+(-1)^(n+1))/4` -/
def P15746514770599142484.Spec : Prop :=
  ∀ n, P15746514770599142484.a n = (A177755 (n + 1) : ℚ)

end A177755

/-! ## A177755.P17681032682948376054

`lcm((n+1)², ceil(n²/2))`
-/

namespace A177755.P17681032682948376054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) ⌈(n ^ 2 : ℚ) / 2⌉

end

end A177755.P17681032682948376054

namespace A177755

/-- `lcm((n+1)², ceil(n²/2))` -/
def P17681032682948376054.Spec : Prop :=
  ∀ n, (P17681032682948376054.a n : ℤ) = A177755 (n + 1)

end A177755

/-! ## A177755.P8146661402122133862

`(∑[n]+1)*(n+1)²-(n+1)²*∑[log2(gcd(2, n))]`
-/

namespace A177755.P8146661402122133862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1) ^ 2 : ℕ) : ℝ) - ((n + 1) ^ 2 : ℝ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A177755.P8146661402122133862

namespace A177755

/-- `(∑[n]+1)*(n+1)²-(n+1)²*∑[log2(gcd(2, n))]` -/
def P8146661402122133862.Spec : Prop :=
  ∀ n, P8146661402122133862.a n = (A177755 (n + 1) : ℝ)

end A177755

/-! ## A177755.P6492324454275741212

`(n+1)²*A000982(n)`
-/

namespace A177755.P6492324454275741212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000982 n

end

end A177755.P6492324454275741212

namespace A177755

/-- `(n+1)²*A000982(n)` -/
def P6492324454275741212.Spec : Prop :=
  ∀ n, P6492324454275741212.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P6078401548232425176

`(n+1)*A323724(n+1)`
-/

namespace A177755.P6078401548232425176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323724 (n + 1)

end

end A177755.P6078401548232425176

namespace A177755

/-- `(n+1)*A323724(n+1)` -/
def P6078401548232425176.Spec : Prop :=
  ∀ n, P6078401548232425176.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P11462960492182551662

`A210379(n)-n*(n+1)²`
-/

namespace A177755.P11462960492182551662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210379 n - (n * (n + 1) ^ 2 : ℤ)

end

end A177755.P11462960492182551662

namespace A177755

/-- `A210379(n)-n*(n+1)²` -/
def P11462960492182551662.Spec : Prop :=
  ∀ n, P11462960492182551662.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P12161464059889996979

`(n²-A007590(n))*(n+1)²`
-/

namespace A177755.P12161464059889996979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A007590 n) * ((n + 1) ^ 2 : ℤ)

end

end A177755.P12161464059889996979

namespace A177755

/-- `(n²-A007590(n))*(n+1)²` -/
def P12161464059889996979.Spec : Prop :=
  ∀ n, P12161464059889996979.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P900849290889278770

`A172517(n+1)+n*(n+1)²`
-/

namespace A177755.P900849290889278770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172517 (n + 1) + (n * (n + 1) ^ 2 : ℤ)

end

end A177755.P900849290889278770

namespace A177755

/-- `A172517(n+1)+n*(n+1)²` -/
def P900849290889278770.Spec : Prop :=
  ∀ n, P900849290889278770.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P7417806931012180804

`A137933(n+1)*A147685(n)`
-/

namespace A177755.P7417806931012180804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137933 (n + 1) * A147685 n

end

end A177755.P7417806931012180804

namespace A177755

/-- `A137933(n+1)*A147685(n)` -/
def P7417806931012180804.Spec : Prop :=
  ∀ n, P7417806931012180804.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P10790308828378092642

`A092365(n+1)-A130656(n+1)`
-/

namespace A177755.P10790308828378092642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092365 (n + 1) - A130656 (n + 1)

end

end A177755.P10790308828378092642

namespace A177755

/-- `A092365(n+1)-A130656(n+1)` -/
def P10790308828378092642.Spec : Prop :=
  ∀ n, P10790308828378092642.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P15659053868371518923

`A092364(n+1)-A303692(n+1)`
-/

namespace A177755.P15659053868371518923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092364 (n + 1) - A303692 (n + 1)

end

end A177755.P15659053868371518923

namespace A177755

/-- `A092364(n+1)-A303692(n+1)` -/
def P15659053868371518923.Spec : Prop :=
  ∀ n, P15659053868371518923.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P17219741035931892679

`A031878(n+1)*A238411(n+1)`
-/

namespace A177755.P17219741035931892679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031878 (n + 1) * A238411 (n + 1)

end

end A177755.P17219741035931892679

namespace A177755

/-- `A031878(n+1)*A238411(n+1)` -/
def P17219741035931892679.Spec : Prop :=
  ∀ n, P17219741035931892679.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P13349758632256363954

`abs((A004526(n)-A000217(n))*(n+1)²)`
-/

namespace A177755.P13349758632256363954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004526 n - A000217 n) * ((n + 1) ^ 2 : ℤ)|

end

end A177755.P13349758632256363954

namespace A177755

/-- `abs((A004526(n)-A000217(n))*(n+1)²)` -/
def P13349758632256363954.Spec : Prop :=
  ∀ n, P13349758632256363954.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P9602211135829188292

`(A008794(n+1)+A008794(n))*(n+1)²`
-/

namespace A177755.P9602211135829188292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008794 (n + 1) + A008794 n) * ((n + 1) ^ 2 : ℤ)

end

end A177755.P9602211135829188292

namespace A177755

/-- `(A008794(n+1)+A008794(n))*(n+1)²` -/
def P9602211135829188292.Spec : Prop :=
  ∀ n, P9602211135829188292.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P14038148700494484926

`A172123(n+1)+A172517(n+1)-A036464(n+1)`
-/

namespace A177755.P14038148700494484926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172123 (n + 1) + (A172517 (n + 1) - A036464 (n + 1))

end

end A177755.P14038148700494484926

namespace A177755

/-- `A172123(n+1)+A172517(n+1)-A036464(n+1)` -/
def P14038148700494484926.Spec : Prop :=
  ∀ n, P14038148700494484926.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P13615394604319328771

`(n+1)²*A001971(2*n)`
-/

namespace A177755.P13615394604319328771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A001971 (2 * n)

end

end A177755.P13615394604319328771

namespace A177755

/-- `(n+1)²*A001971(2*n)` -/
def P13615394604319328771.Spec : Prop :=
  ∀ n, P13615394604319328771.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P8763994340242503240

`record[A036406(n)*A051494(n)]`
-/

namespace A177755.P8763994340242503240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n * A051494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177755.P8763994340242503240

namespace A177755

/-- `record[A036406(n)*A051494(n)]` -/
def P8763994340242503240.Spec : Prop :=
  ∀ n, P8763994340242503240.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P17075753310340769257

`A000982(n)*A212988(2*n+1)`
-/

namespace A177755.P17075753310340769257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n * A212988 (2 * n + 1)

end

end A177755.P17075753310340769257

namespace A177755

/-- `A000982(n)*A212988(2*n+1)` -/
def P17075753310340769257.Spec : Prop :=
  ∀ n, P17075753310340769257.a n = A177755 (n + 1)

end A177755

/-! ## A177755.P6536886802669471008

`(n+1)²*A116941(∑[n])`
-/

namespace A177755.P6536886802669471008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A116941 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177755.P6536886802669471008

namespace A177755

/-- `(n+1)²*A116941(∑[n])` -/
def P6536886802669471008.Spec : Prop :=
  ∀ n, P6536886802669471008.a n = A177755 (n + 1)

end A177755

/-!
# A177756: Number of ways to place 3 nonattacking bishops on an n X n toroidal board.

The programs for A177756, the canonical program `A177756.P15272795354350671764` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177756 has offset 1).

The definition of A177756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177756.P15272795354350671764

`1/12*(n-1)²*(n+1)²*(2*(n+1)²-4*(n+1)+5+3*(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177756

/-- `1/12*(n-1)²*(n+1)²*(2*(n+1)²-4*(n+1)+5+3*(-1)^(n+1))` -/
def P15272795354350671764.Spec : Prop :=
  ∀ n, P15272795354350671764.a n = (A177756 (n + 1) : ℚ)

end A177756

/-!
# A177757: Number of ways to place 4 nonattacking bishops on an n X n toroidal board.

The programs for A177757, there is no canonical definition to state claims against.
-/

/-! ## A177757.P1893121522962578488

`A000005(A001813(n))*A278640(n)`
-/

namespace A177757.P1893121522962578488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001813 n).toNat * A278640 n

end

end A177757.P1893121522962578488

/-! ## A177757.P12554421396427270256

`A008586(A209970(n)*A278640(n))`
-/

namespace A177757.P12554421396427270256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A209970 n * A278640 n).toNat

end

end A177757.P12554421396427270256

/-!
# A177758: Number of ways to place 5 nonattacking bishops on an n X n toroidal board.

The programs for A177758, there is no canonical definition to state claims against.
-/

/-! ## A177758.P11502062101980506451

`A048720(2*A322884(n))`
-/

namespace A177758.P11502062101980506451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (2 * A322884 n).toNat

end

end A177758.P11502062101980506451

/-! ## A177758.P12194095855679266754

`8*A192211(A003724(n))`
-/

namespace A177758.P12194095855679266754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A192211 (A003724 n).toNat

end

end A177758.P12194095855679266754

/-!
# A177759: Number of ways to place 6 nonattacking bishops on an n X n toroidal board.

The programs for A177759, there is no canonical definition to state claims against.
-/

/-! ## A177759.P13136214780297900136

`A135538(A350009(n+1))`
-/

namespace A177759.P13136214780297900136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135538 (A350009 (n + 1)).toNat

end

end A177759.P13136214780297900136

/-! ## A177759.P11864577288731404332

`and(A234681(A007097(n)), A325506(n))`
-/

namespace A177759.P11864577288731404332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A234681 (A007097 n).toNat) (A325506 n)

end

end A177759.P11864577288731404332

/-! ## A177759.P17259701098179817270

`A000010(A154638(n+2))*A115981(n)`
-/

namespace A177759.P17259701098179817270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A154638 (n + 2)).toNat * A115981 n

end

end A177759.P17259701098179817270

/-!
# A177763: Numbers of the form m^5-s^2, m>=1, s >= 0.

The programs for A177763, there is no canonical definition to state claims against.
-/

/-! ## A177763.P567906090606072431

`eq[char[A179439(n+1)], A151933(n)]`
-/

namespace A177763.P567906090606072431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179439 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177763.P567906090606072431

/-!
# A177767: Triangle read by rows: T(n,k) = binomial(n - 1, k - 1), 1 <= k <= n, and T(n,0) = A153881(n+1), n >= 0.

The programs for A177767, the canonical program `A177767.P10065368362006185369` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177767 has offset 0).

The definition of A177767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177767.P11793613582701406729

`A097805(n)-char[∑[n+1]]`
-/

namespace A177767.P11793613582701406729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A177767.P11793613582701406729

namespace A177767

/-- `A097805(n)-char[∑[n+1]]` -/
def P11793613582701406729.Spec : Prop :=
  ∀ n, P11793613582701406729.a n = A177767 n

end A177767

/-! ## A177767.P4898443231583525433

`A029635(n)-A132749(n)`
-/

namespace A177767.P4898443231583525433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A132749 n

end

end A177767.P4898443231583525433

namespace A177767

/-- `A029635(n)-A132749(n)` -/
def P4898443231583525433.Spec : Prop :=
  ∀ n, P4898443231583525433.a n = A177767 n

end A177767

/-! ## A177767.P10065368362006185369

`or(A097805(n), A103452(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A177767

/-- `or(A097805(n), A103452(n))` -/
def P10065368362006185369.Spec : Prop :=
  ∀ n, P10065368362006185369.a n = A177767 n

theorem P10065368362006185369.correct : P10065368362006185369.Spec := by
  intro n
  simp only [A177767]

end A177767

/-! ## A177767.P6155923339073559106

`or(Δ[A010054(n)], A097805(n))`
-/

namespace A177767.P6155923339073559106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A097805 n)

end

end A177767.P6155923339073559106

namespace A177767

/-- `or(Δ[A010054(n)], A097805(n))` -/
def P6155923339073559106.Spec : Prop :=
  ∀ n, P6155923339073559106.a n = A177767 n

end A177767

/-! ## A177767.P7525526449096951814

`A206735(n)-A097805(n+1)`
-/

namespace A177767.P7525526449096951814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n - A097805 (n + 1)

end

end A177767.P7525526449096951814

namespace A177767

/-- `A206735(n)-A097805(n+1)` -/
def P7525526449096951814.Spec : Prop :=
  ∀ n, P7525526449096951814.a n = A177767 n

end A177767

/-! ## A177767.P17569376455332958746

`A135225(n)-2*A073424(n)`
-/

namespace A177767.P17569376455332958746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n - 2 * A073424 n

end

end A177767.P17569376455332958746

namespace A177767

/-- `A135225(n)-2*A073424(n)` -/
def P17569376455332958746.Spec : Prop :=
  ∀ n, P17569376455332958746.a n = A177767 n

end A177767

/-! ## A177767.P16196645598552298996

`2*A097805(n)-A135225(n)`
-/

namespace A177767.P16196645598552298996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 n - A135225 n

end

end A177767.P16196645598552298996

namespace A177767

/-- `2*A097805(n)-A135225(n)` -/
def P16196645598552298996.Spec : Prop :=
  ∀ n, P16196645598552298996.a n = A177767 n

end A177767

/-! ## A177767.P18018123738713323084

`A071919(n)+A008482(n)-char[∑[n+1]]`
-/

namespace A177767.P18018123738713323084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A008482 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A177767.P18018123738713323084

namespace A177767

/-- `A071919(n)+A008482(n)-char[∑[n+1]]` -/
def P18018123738713323084.Spec : Prop :=
  ∀ n, P18018123738713323084.a n = A177767 n

end A177767

/-! ## A177767.P17759840378035733273

`A208510(n+1)-A097805(n+1)-A097805(n+1)`
-/

namespace A177767.P17759840378035733273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1) - A097805 (n + 1) - A097805 (n + 1)

end

end A177767.P17759840378035733273

namespace A177767

/-- `A208510(n+1)-A097805(n+1)-A097805(n+1)` -/
def P17759840378035733273.Spec : Prop :=
  ∀ n, P17759840378035733273.a n = A177767 n

end A177767

/-! ## A177767.P16540229047203842379

`A002024(A028310(n))+A097805(n)-A002024(n+1)`
-/

namespace A177767.P16540229047203842379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A028310 n).toNat + (A097805 n - A002024 (n + 1))

end

end A177767.P16540229047203842379

namespace A177767

/-- `A002024(A028310(n))+A097805(n)-A002024(n+1)` -/
def P16540229047203842379.Spec : Prop :=
  ∀ n, P16540229047203842379.a n = A177767 n

end A177767

/-! ## A177767.P7849912982735309111

`A087156(A097805(n)+1)-1`
-/

namespace A177767.P7849912982735309111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A097805 n + 1).toNat - 1

end

end A177767.P7849912982735309111

namespace A177767

/-- `A087156(A097805(n)+1)-1` -/
def P7849912982735309111.Spec : Prop :=
  ∀ n, P7849912982735309111.a n = A177767 n

end A177767

/-! ## A177767.P17450469823283818573

`A199969(A097805(n)+2)-1`
-/

namespace A177767.P17450469823283818573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A097805 n + 2).toNat - 1

end

end A177767.P17450469823283818573

namespace A177767

/-- `A199969(A097805(n)+2)-1` -/
def P17450469823283818573.Spec : Prop :=
  ∀ n, P17450469823283818573.a n = A177767 n

end A177767

/-!
# A177768: Positions of decreases in sequence A061712 (related to Hamming weights of primes).

The programs for A177768, there is no canonical definition to state claims against.
-/

/-! ## A177768.P10071851853784111567

`A211998(n+1)+1`
-/

namespace A177768.P10071851853784111567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211998 (n + 1) + 1

end

end A177768.P10071851853784111567

/-! ## A177768.P10556107127273060729

`or(1, A211998(Δ[n²]-n))`
-/

namespace A177768.P10556107127273060729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A211998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A177768.P10556107127273060729

/-! ## A177768.P6985576001689461763

`A004442(A211998(n+1))`
-/

namespace A177768.P6985576001689461763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A211998 (n + 1)).toNat

end

end A177768.P6985576001689461763

/-! ## A177768.P8872872108537420403

`xor(A033999(n)², A211998(Δ[n²]-n))`
-/

namespace A177768.P8872872108537420403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A211998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A177768.P8872872108537420403

/-! ## A177768.P4389736089131062687

`xor((A115358(n)^(2*n))!, A211998(Δ[n²]-n))`
-/

namespace A177768.P4389736089131062687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A115358 n ^ (2 * n)).toNat : ℤ) (A211998 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A177768.P4389736089131062687

/-!
# A177769: a(n) = 111*n.

The programs for A177769, the canonical program `A177769.P9128237477351893085` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177769 has offset 1).

The definition of A177769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `111*(n+1)` (program `A177769.P9128237477351893085`, by `A177769.P9128237477351893085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177769.P9128237477351893085

`111*(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177769

/-- `111*(n+1)` -/
def P9128237477351893085.Spec : Prop :=
  ∀ n, (P9128237477351893085.a n : ℤ) = A177769 (n + 1)

theorem P9128237477351893085.correct : P9128237477351893085.Spec := by
  intro n
  simp only [A177769, Nat.add_sub_cancel]

end A177769

/-!
# A177771: a(n) = (prime(n) - 1)!.

The programs for A177771, the canonical program `A177771.P1242841821282446096` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177771 has offset 1).

The definition of A177771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)-1)!` (program `A177771.P1242841821282446096`, by `A177771.P1242841821282446096.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177771.P1242841821282446096

`(A000040(n+1)-1)!`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177771

/-- `(A000040(n+1)-1)!` -/
def P1242841821282446096.Spec : Prop :=
  ∀ n, (P1242841821282446096.a n : ℤ) = A177771 (n + 1)

theorem P1242841821282446096.correct : P1242841821282446096.Spec := by
  intro n
  simp only [A177771, Nat.add_sub_cancel]

end A177771

/-! ## A177771.P17688090892343381655

`record[∑{p}[n, #-1]!]`
-/

namespace A177771.P17688090892343381655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177771.P17688090892343381655

namespace A177771

/-- `record[∑{p}[n, #-1]!]` -/
def P17688090892343381655.Spec : Prop :=
  ∀ n, (P17688090892343381655.a n : ℤ) = A177771 (n + 1)

end A177771

/-! ## A177771.P13333677824814674308

`record[∏{p}[n, (#-1)!]]`
-/

namespace A177771.P13333677824814674308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial ((p : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177771.P13333677824814674308

namespace A177771

/-- `record[∏{p}[n, (#-1)!]]` -/
def P13333677824814674308.Spec : Prop :=
  ∀ n, (P13333677824814674308.a n : ℤ) = A177771 (n + 1)

end A177771

/-! ## A177771.P8489840413150106675

`record[∏{p}[n, #!/n]]`
-/

namespace A177771.P8489840413150106675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorial p : ℚ) / (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177771.P8489840413150106675

namespace A177771

/-- `record[∏{p}[n, #!/n]]` -/
def P8489840413150106675.Spec : Prop :=
  ∀ n, P8489840413150106675.a n = (A177771 (n + 1) : ℚ)

end A177771

/-! ## A177771.P11375580167042225358

`eq[1, ∑{e}[n+1, #]]!`
-/

namespace A177771.P11375580167042225358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177771.P11375580167042225358

namespace A177771

/-- `eq[1, ∑{e}[n+1, #]]!` -/
def P11375580167042225358.Spec : Prop :=
  ∀ n, (P11375580167042225358.a n : ℤ) = A177771 (n + 1)

end A177771

/-!
# A177773: a(n) = [x^n] A_{n-1}(x)/n for n>2 where g.f. A(x) = Sum_{n>=1} a(n)*x^n and where A_{n+1}(x) = A_{n}(A(x)) denotes iteration with A_0(x)=x.

The programs for A177773, there is no canonical definition to state claims against.
-/

/-! ## A177773.P13860520104543057670

`A039960(A015001(n))`
-/

namespace A177773.P13860520104543057670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (A015001 n).toNat

end

end A177773.P13860520104543057670

/-!
# A177774: G.f. A(x) satisfies: [x^n] A_{n-1}(x) = [x^n] A_{n-2}(x) for n>2 where A_{n+1}(x) = A_{n}(A(x)) denotes iteration with A_0(x)=x.

The programs for A177774, there is no canonical definition to state claims against.
-/

/-! ## A177774.P9762816177982748549

`(n*(n*(n-5)+5)²)!*A107086(n)`
-/

namespace A177774.P9762816177982748549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat : ℤ) * A107086 n

end

end A177774.P9762816177982748549

/-!
# A177775: G.f. A(x) satisfies: [x^n] A^{n}(x) = [x^n] A^{n-1}(x) for n > 2 where A^{n+1}(x) = A^{n}(A(x)) denotes iteration with A^0(x)=x.

The programs for A177775, there is no canonical definition to state claims against.
-/

/-! ## A177775.P10521475650576875710

`A181983(A364981(n))`
-/

namespace A177775.P10521475650576875710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A364981 n).toNat

end

end A177775.P10521475650576875710

/-!
# A177776: G.f. A(x) satisfies: [x^n] A_{n}(x) = [x^n] A_{n+1}(x) for n>2 where A_{n+1}(x) = A_{n}(A(x)) denotes iteration with A_0(x)=x.

The programs for A177776, there is no canonical definition to state claims against.
-/

/-! ## A177776.P6218649096209316223

`A349657(n)+A308979(A038052(n))`
-/

namespace A177776.P6218649096209316223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349657 n + A308979 (A038052 n).toNat

end

end A177776.P6218649096209316223

/-!
# A177777: E.g.f. satisfies: L(x) = x*Sum_{n>=0} (1/n!)*Product_{k=0..n-1} L(2^k*x).

The programs for A177777, there is no canonical definition to state claims against.
-/

/-! ## A177777.P7280555484332001922

`(n+1)*A001187(n+1)`
-/

namespace A177777.P7280555484332001922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001187 (n + 1)

end

end A177777.P7280555484332001922

/-! ## A177777.P16006587752344807534

`A053549(n+1)`
-/

namespace A177777.P16006587752344807534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053549 (n + 1)

end

end A177777.P16006587752344807534

/-! ## A177777.P6283626100922887399

`A228315(∑[n+1])`
-/

namespace A177777.P6283626100922887399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228315 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177777.P6283626100922887399

/-! ## A177777.P14038369519786591663

`∑[abs(Δ[A053549(n)])]`
-/

namespace A177777.P14038369519786591663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177777.P14038369519786591663

/-! ## A177777.P4565240309678484039

`A401182(∑[n+1]+1)`
-/

namespace A177777.P4565240309678484039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177777.P4565240309678484039

/-!
# A177778: E.g.f.: A(x) = Sum_{n>=0} 2^n/n!*Product_{k=0..n-1} L(2^k*x), where L(x) is the e.g.f. of A177777.

The programs for A177778, there is no canonical definition to state claims against.
-/

/-! ## A177778.P16908090848610664839

`A053214(n*A003580(n))`
-/

namespace A177778.P16908090848610664839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 ((n : ℤ) * A003580 n).toNat

end

end A177778.P16908090848610664839

/-!
# A177780: E.g.f. satisfies: L(x) = x*Sum_{n>=0} (2^n/n!)*Product_{k=0..n-1} L(3^k*x).

The programs for A177780, there is no canonical definition to state claims against.
-/

/-! ## A177780.P15155666704861212322

`(n+1)*A054941(n+1)`
-/

namespace A177780.P15155666704861212322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054941 (n + 1)

end

end A177780.P15155666704861212322

/-! ## A177780.P9721466692261965737

`A054941(n+1)*A348553(n)`
-/

namespace A177780.P9721466692261965737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054941 (n + 1) * A348553 n

end

end A177780.P9721466692261965737

/-! ## A177780.P15061220981443728253

`(A054943(n+1)+A054942(n+1))*(n+1)`
-/

namespace A177780.P15061220981443728253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054943 (n + 1) + A054942 (n + 1)) * (n + 1 : ℤ)

end

end A177780.P15061220981443728253

/-! ## A177780.P3654210228432394720

`(n+1)*A308460(∑[n+3]+1)`
-/

namespace A177780.P3654210228432394720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177780.P3654210228432394720

/-! ## A177780.P7240278092141544103

`record[A308460(A237519(n+1))]*(n+1)`
-/

namespace A177780.P7240278092141544103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308460 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n + 1 : ℤ)

end

end A177780.P7240278092141544103

/-!
# A177781: E.g.f. satisfies: L(x) = x*Sum_{n>=0} 3^n/n!*Product_{k=0..n-1} L(4^k*x).

The programs for A177781, there is no canonical definition to state claims against.
-/

/-! ## A177781.P12605559136738103019

`(n+1)*A003027(n+1)`
-/

namespace A177781.P12605559136738103019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003027 (n + 1)

end

end A177781.P12605559136738103019

/-! ## A177781.P13698305507298809656

`(n+1)*A189898(∑[n]+1)`
-/

namespace A177781.P13698305507298809656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177781.P13698305507298809656

/-! ## A177781.P17815711976028284610

`(n+1)*record[A189898(n+1)]`
-/

namespace A177781.P17815711976028284610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177781.P17815711976028284610

/-! ## A177781.P7277795364103852113

`A003027(n+1)*A348553(n)`
-/

namespace A177781.P7277795364103852113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003027 (n + 1) * A348553 n

end

end A177781.P7277795364103852113

/-! ## A177781.P16328942626563845809

`record[A051597(n)*A189898(n+1)]`
-/

namespace A177781.P16328942626563845809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n * A189898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177781.P16328942626563845809

/-!
# A177784: a(n) = binomial(n^2, n) / ( n*(n+1) ).

The programs for A177784, the canonical program `A177784.P2066892306272755620` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177784 has offset 2).

The definition of A177784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177784.P2066892306272755620

`C((n+2)², n+2)/(2*C(n+3, 2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177784

/-- `C((n+2)², n+2)/(2*C(n+3, 2))` -/
def P2066892306272755620.Spec : Prop :=
  ∀ n, P2066892306272755620.a n = (A177784 (n + 2) : ℚ)

end A177784

/-! ## A177784.P7690523631426812467

`C((n+2)², n+2)/((n+2)*(n+3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177784.P7690523631426812467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) (n + 2) : ℚ) / ((n + 2) * (n + 3) : ℚ)

end

end A177784.P7690523631426812467

namespace A177784

/-- `C((n+2)², n+2)/((n+2)*(n+3))` -/
def P7690523631426812467.Spec : Prop :=
  ∀ n, P7690523631426812467.a n = (A177784 (n + 2) : ℚ)

end A177784

/-! ## A177784.P13842580771895652281

`C((n+2)²-2, n)`
-/

namespace A177784.P13842580771895652281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 2) ^ 2 : ℤ) - 2).toNat n

end

end A177784.P13842580771895652281

namespace A177784

/-- `C((n+2)²-2, n)` -/
def P13842580771895652281.Spec : Prop :=
  ∀ n, (P13842580771895652281.a n : ℤ) = A177784 (n + 2)

end A177784

/-! ## A177784.P9958363818073109603

`floor(C(∑[2*n+3], n+1)/(n+3))`
-/

namespace A177784.P9958363818073109603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1) : ℚ) / (n + 3 : ℚ)⌋

end

end A177784.P9958363818073109603

namespace A177784

/-- `floor(C(∑[2*n+3], n+1)/(n+3))` -/
def P9958363818073109603.Spec : Prop :=
  ∀ n, P9958363818073109603.a n = A177784 (n + 2)

end A177784

/-! ## A177784.P12187381592924049320

`ceil(C((n+3)*(n+1), n+1)/(n+3))`
-/

namespace A177784.P12187381592924049320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose ((n + 3) * (n + 1)) (n + 1) : ℚ) / (n + 3 : ℚ)⌉

end

end A177784.P12187381592924049320

namespace A177784

/-- `ceil(C((n+3)*(n+1), n+1)/(n+3))` -/
def P12187381592924049320.Spec : Prop :=
  ∀ n, P12187381592924049320.a n = A177784 (n + 2)

end A177784

/-!
# A177785: a(n) = a(n-1)^2 - a(n-2) for n > 2; a(1)=3, a(2)=0.

The programs for A177785, the canonical program `A177785.P14439202525696818677` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177785 has offset 1).

The definition of A177785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)` (program `A177785.P14439202525696818677`, by `A177785.P14439202525696818677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177785.P14439202525696818677

`a(n-1)²-a(n-2)` with `a(0)=3, a(1)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177785

/-- `a(n-1)²-a(n-2)` -/
def P14439202525696818677.Spec : Prop :=
  ∀ n, P14439202525696818677.a n = A177785 (n + 1)

theorem P14439202525696818677.correct : P14439202525696818677.Spec := by
  intro n
  simp only [A177785, Nat.add_sub_cancel]

end A177785

/-! ## A177785.P4256575422346475811

`a(n-1)^2-a(n-2)` with `a(0)=3, a(1)=0`
-/

namespace A177785.P4256575422346475811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  a (n - 1) ^ 2 - a (n - 2)

end

end A177785.P4256575422346475811

namespace A177785

/-- `a(n-1)^2-a(n-2)` -/
def P4256575422346475811.Spec : Prop :=
  ∀ n, P4256575422346475811.a n = A177785 (n + 1)

theorem P4256575422346475811.correct : P4256575422346475811.Spec := by
  intro n
  simp only [A177785, Nat.add_sub_cancel, A177785.P4256575422346475811.a, A177785.P14439202525696818677.a, SequenceMachineLib.memo_apply]

end A177785

/-! ## A177785.P10325858468008088587

`a(n-1)*a(n-1)-a(n-2)` with `a(0)=3, a(1)=0`
-/

namespace A177785.P10325858468008088587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  a (n - 1) * a (n - 1) - a (n - 2)

end

end A177785.P10325858468008088587

namespace A177785

/-- `a(n-1)*a(n-1)-a(n-2)` -/
def P10325858468008088587.Spec : Prop :=
  ∀ n, P10325858468008088587.a n = A177785 (n + 1)

theorem P10325858468008088587.correct : P10325858468008088587.Spec := by
  intro n
  simp only [A177785, Nat.add_sub_cancel, A177785.P10325858468008088587.a, A177785.P14439202525696818677.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A177785

/-!
# A177787: Number of paths from (0,0) to (n+2,n) using only up and right steps and avoiding two or more consecutive moves up or three or more consecutive moves right.

The programs for A177787, the canonical program `A177787.P18203894524224014824` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177787 has offset 1).

The definition of A177787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177787.P17995691571733423774

`ogf((2-3x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A177787.P17995691571733423774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 2] [1, -4, 6, -4, 1] n

end

end A177787.P17995691571733423774

namespace A177787

/-- `ogf((2-3x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17995691571733423774.Spec : Prop :=
  ∀ n, P17995691571733423774.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P1575057268504456422

`(n+1)/6*(11+(n+1)²)`
-/

namespace A177787.P1575057268504456422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * (11 + (n + 1) ^ 2 : ℚ)

end

end A177787.P1575057268504456422

namespace A177787

/-- `(n+1)/6*(11+(n+1)²)` -/
def P1575057268504456422.Spec : Prop :=
  ∀ n, P1575057268504456422.a n = (A177787 (n + 1) : ℚ)

theorem P1575057268504456422.correct : P1575057268504456422.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A177787, Nat.add_sub_cancel, A177787.P1575057268504456422.a, A177787.P18203894524224014824.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A177787, Nat.add_sub_cancel, A177787.P1575057268504456422.a, A177787.P18203894524224014824.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177787

/-! ## A177787.P18203894524224014824

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=10, a(3)=18`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A177787

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18203894524224014824.Spec : Prop :=
  ∀ n, P18203894524224014824.a n = A177787 (n + 1)

theorem P18203894524224014824.correct : P18203894524224014824.Spec := by
  intro n
  simp only [A177787, Nat.add_sub_cancel]

end A177787

/-! ## A177787.P6168882276426586925

`A140226(n+1)/2`
-/

namespace A177787.P6168882276426586925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140226 (n + 1) : ℚ) / 2

end

end A177787.P6168882276426586925

namespace A177787

/-- `A140226(n+1)/2` -/
def P6168882276426586925.Spec : Prop :=
  ∀ n, P6168882276426586925.a n = (A177787 (n + 1) : ℚ)

end A177787

/-! ## A177787.P5400562511369443890

`(n+1)²+C(n, 3)+1`
-/

namespace A177787.P5400562511369443890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (Nat.choose n 3 + 1)

end

end A177787.P5400562511369443890

namespace A177787

/-- `(n+1)²+C(n, 3)+1` -/
def P5400562511369443890.Spec : Prop :=
  ∀ n, (P5400562511369443890.a n : ℤ) = A177787 (n + 1)

end A177787

/-! ## A177787.P9793255936574329235

`∑[∑[ogf((2-3x+2x^2)/(1-2x+x^2))]]`
-/

namespace A177787.P9793255936574329235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177787.P9793255936574329235

namespace A177787

/-- `∑[∑[ogf((2-3x+2x^2)/(1-2x+x^2))]]` -/
def P9793255936574329235.Spec : Prop :=
  ∀ n, P9793255936574329235.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P4536326770550027778

`C(n+2, 3)+2*(n+1)`
-/

namespace A177787.P4536326770550027778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 2 * (n + 1)

end

end A177787.P4536326770550027778

namespace A177787

/-- `C(n+2, 3)+2*(n+1)` -/
def P4536326770550027778.Spec : Prop :=
  ∀ n, (P4536326770550027778.a n : ℤ) = A177787 (n + 1)

end A177787

/-! ## A177787.P9194351108012311611

`a(n-2)+n²+4` with `a(0)=2, a(1)=5`
-/

namespace A177787.P9194351108012311611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + (n ^ 2 + 4)

end

end A177787.P9194351108012311611

namespace A177787

/-- `a(n-2)+n²+4` -/
def P9194351108012311611.Spec : Prop :=
  ∀ n, (P9194351108012311611.a n : ℤ) = A177787 (n + 1)

end A177787

/-! ## A177787.P17169162369978445762

`C(n+2, 3)+n+2+n`
-/

namespace A177787.P17169162369978445762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + (n + 2) + n

end

end A177787.P17169162369978445762

namespace A177787

/-- `C(n+2, 3)+n+2+n` -/
def P17169162369978445762.Spec : Prop :=
  ∀ n, (P17169162369978445762.a n : ℤ) = A177787 (n + 1)

end A177787

/-! ## A177787.P3709126138998090794

`2-∑[a(n-1)-n]` with `a(0)=0, a(1)=-3`
-/

namespace A177787.P3709126138998090794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -3] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177787.P3709126138998090794

namespace A177787

/-- `2-∑[a(n-1)-n]` -/
def P3709126138998090794.Spec : Prop :=
  ∀ n, P3709126138998090794.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P12031004310523268392

`∑[2*n]-∑[n-2-C(n, 2)]`
-/

namespace A177787.P12031004310523268392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A177787.P12031004310523268392

namespace A177787

/-- `∑[2*n]-∑[n-2-C(n, 2)]` -/
def P12031004310523268392.Spec : Prop :=
  ∀ n, P12031004310523268392.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P12590185400905321371

`(n+1)*n/2+a(n-1)+2` with `a(0)=2`
-/

namespace A177787.P12590185400905321371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℚ) * ((n : ℚ) / 2) + (a (n - 1) + 2)

end

end A177787.P12590185400905321371

namespace A177787

/-- `(n+1)*n/2+a(n-1)+2` -/
def P12590185400905321371.Spec : Prop :=
  ∀ n, P12590185400905321371.a n = (A177787 (n + 1) : ℚ)

end A177787

/-! ## A177787.P17375915057855538991

`2*a(n-1)-a(n-2)+n` with `a(0)=2, a(1)=5`
-/

namespace A177787.P17375915057855538991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) - a (n - 2) + (n : ℤ)

end

end A177787.P17375915057855538991

namespace A177787

/-- `2*a(n-1)-a(n-2)+n` -/
def P17375915057855538991.Spec : Prop :=
  ∀ n, P17375915057855538991.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P11189792447918118149

`floor(2*a(n-1)-(a(n-2)-n))` with `a(0)=2, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A177787.P11189792447918118149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) - (a (n - 2) - (n : ℤ))

end

end A177787.P11189792447918118149

namespace A177787

/-- `floor(2*a(n-1)-(a(n-2)-n))` -/
def P11189792447918118149.Spec : Prop :=
  ∀ n, P11189792447918118149.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P8005903745880253573

`a(n-1)+a(n-1)-a(n-2)+n` with `a(0)=2, a(1)=5`
-/

namespace A177787.P8005903745880253573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 2)) + (n : ℤ)

end

end A177787.P8005903745880253573

namespace A177787

/-- `a(n-1)+a(n-1)-a(n-2)+n` -/
def P8005903745880253573.Spec : Prop :=
  ∀ n, P8005903745880253573.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P10427993940573357452

`n-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A177787.P10427993940573357452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (n : ℤ) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A177787.P10427993940573357452

namespace A177787

/-- `n-(a(n-2)-a(n-1)-a(n-1))` -/
def P10427993940573357452.Spec : Prop :=
  ∀ n, P10427993940573357452.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P15967758601591959784

`∑[A027689(n)]/2`
-/

namespace A177787.P15967758601591959784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A177787.P15967758601591959784

namespace A177787

/-- `∑[A027689(n)]/2` -/
def P15967758601591959784.Spec : Prop :=
  ∀ n, P15967758601591959784.a n = (A177787 (n + 1) : ℚ)

end A177787

/-! ## A177787.P6961662262346019369

`A188554(n+1)-2`
-/

namespace A177787.P6961662262346019369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188554 (n + 1) - 2

end

end A177787.P6961662262346019369

namespace A177787

/-- `A188554(n+1)-2` -/
def P6961662262346019369.Spec : Prop :=
  ∀ n, P6961662262346019369.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P18033258001598246507

`A349417(n)+3*n`
-/

namespace A177787.P18033258001598246507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 n + (3 * n : ℤ)

end

end A177787.P18033258001598246507

namespace A177787

/-- `A349417(n)+3*n` -/
def P18033258001598246507.Spec : Prop :=
  ∀ n, P18033258001598246507.a n = A177787 (n + 1)

end A177787

/-! ## A177787.P6492704532505304647

`A008778(n)+1-n²`
-/

namespace A177787.P6492704532505304647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + (1 - (n ^ 2 : ℤ))

end

end A177787.P6492704532505304647

namespace A177787

/-- `A008778(n)+1-n²` -/
def P6492704532505304647.Spec : Prop :=
  ∀ n, P6492704532505304647.a n = A177787 (n + 1)

end A177787

/-!
# A177788: a(n) = binomial(n^2, n+1)/(n-1).

The programs for A177788, the canonical program `A177788.P1309928515328305027` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177788 has offset 2).

The definition of A177788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177788.P1309928515328305027

`(n+2)*A177234(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177788

/-- `(n+2)*A177234(n+2)` -/
def P1309928515328305027.Spec : Prop :=
  ∀ n, P1309928515328305027.a n = A177788 (n + 2)

theorem P1309928515328305027.correct : P1309928515328305027.Spec := by
  intro n
  simp only [A177788, Nat.add_sub_cancel]

end A177788

/-! ## A177788.P11625583954013284643

`A178842(n+3)/(n+1)`
-/

namespace A177788.P11625583954013284643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178842 (n + 3) : ℚ) / (n + 1 : ℚ)

end

end A177788.P11625583954013284643

namespace A177788

/-- `A178842(n+3)/(n+1)` -/
def P11625583954013284643.Spec : Prop :=
  ∀ n, P11625583954013284643.a n = (A177788 (n + 2) : ℚ)

end A177788

/-! ## A177788.P15727629821339147113

`(n+2)²*A177784(n+2)`
-/

namespace A177788.P15727629821339147113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A177784 (n + 2)

end

end A177788.P15727629821339147113

namespace A177788

/-- `(n+2)²*A177784(n+2)` -/
def P15727629821339147113.Spec : Prop :=
  ∀ n, P15727629821339147113.a n = A177788 (n + 2)

end A177788

/-! ## A177788.P14236819623277783160

`C((n+2)², n+3)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177788.P14236819623277783160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) (n + 3) : ℚ) / (n + 1 : ℚ)

end

end A177788.P14236819623277783160

namespace A177788

/-- `C((n+2)², n+3)/(n+1)` -/
def P14236819623277783160.Spec : Prop :=
  ∀ n, P14236819623277783160.a n = (A177788 (n + 2) : ℚ)

end A177788

/-! ## A177788.P11472279108537211251

`(n+2)²*C((n+2)²-2, n)`
-/

namespace A177788.P11472279108537211251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 * Nat.choose (((n + 2) ^ 2 : ℤ) - 2).toNat n

end

end A177788.P11472279108537211251

namespace A177788

/-- `(n+2)²*C((n+2)²-2, n)` -/
def P11472279108537211251.Spec : Prop :=
  ∀ n, (P11472279108537211251.a n : ℤ) = A177788 (n + 2)

end A177788

/-!
# A177790: Number of paths from (0,0) to (n,n) avoiding 3 or more consecutive east steps and 3 or more consecutive north steps.

The programs for A177790, the canonical program `A177790.P194406365397747439` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177790 has offset 0).

The definition of A177790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177790.P2677837569080871356

`A003440(n)*A036453(n+1)`
-/

namespace A177790.P2677837569080871356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003440 n * A036453 (n + 1)

end

end A177790.P2677837569080871356

namespace A177790

/-- `A003440(n)*A036453(n+1)` -/
def P2677837569080871356.Spec : Prop :=
  ∀ n, P2677837569080871356.a n = A177790 n

end A177790

/-! ## A177790.P194406365397747439

`(A057427(n)+1)*A003440(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A177790

/-- `(A057427(n)+1)*A003440(n)` -/
def P194406365397747439.Spec : Prop :=
  ∀ n, P194406365397747439.a n = A177790 n

theorem P194406365397747439.correct : P194406365397747439.Spec := by
  intro n
  simp only [A177790]

end A177790

/-! ## A177790.P2384361863976663013

`gcd(2, A000079(n))*A003440(n)`
-/

namespace A177790.P2384361863976663013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A003440 n

end

end A177790.P2384361863976663013

namespace A177790

/-- `gcd(2, A000079(n))*A003440(n)` -/
def P2384361863976663013.Spec : Prop :=
  ∀ n, P2384361863976663013.a n = A177790 n

end A177790

/-! ## A177790.P7039335346887165670

`A006530(A001316(n))*A003440(n)`
-/

namespace A177790.P7039335346887165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A003440 n

end

end A177790.P7039335346887165670

namespace A177790

/-- `A006530(A001316(n))*A003440(n)` -/
def P7039335346887165670.Spec : Prop :=
  ∀ n, P7039335346887165670.a n = A177790 n

end A177790

/-! ## A177790.P13851569090457308941

`A003440(n)*A060594(A060264(n))`
-/

namespace A177790.P13851569090457308941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003440 n * A060594 (A060264 n).toNat

end

end A177790.P13851569090457308941

namespace A177790

/-- `A003440(n)*A060594(A060264(n))` -/
def P13851569090457308941.Spec : Prop :=
  ∀ n, P13851569090457308941.a n = A177790 n

end A177790

/-! ## A177790.P8220801755794786355

`A003440(n)*A020639(A278219(n))`
-/

namespace A177790.P8220801755794786355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003440 n * A020639 (A278219 n).toNat

end

end A177790.P8220801755794786355

namespace A177790

/-- `A003440(n)*A020639(A278219(n))` -/
def P8220801755794786355.Spec : Prop :=
  ∀ n, P8220801755794786355.a n = A177790 n

end A177790

/-! ## A177790.P9450519961216717299

`A020639(A001223(n+1))*A003440(n)`
-/

namespace A177790.P9450519961216717299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001223 (n + 1)).toNat * A003440 n

end

end A177790.P9450519961216717299

namespace A177790

/-- `A020639(A001223(n+1))*A003440(n)` -/
def P9450519961216717299.Spec : Prop :=
  ∀ n, P9450519961216717299.a n = A177790 n

end A177790

/-! ## A177790.P16473247189644741689

`A003440(n)+A003440(n)%A003440(n+1)`
-/

namespace A177790.P16473247189644741689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003440 n + Int.tmod (A003440 n) (A003440 (n + 1))

end

end A177790.P16473247189644741689

namespace A177790

/-- `A003440(n)+A003440(n)%A003440(n+1)` -/
def P16473247189644741689.Spec : Prop :=
  ∀ n, P16473247189644741689.a n = A177790 n

end A177790

/-! ## A177790.P4111266989897531019

`Δ[Δ[A078678(n)]]`
-/

namespace A177790.P4111266989897531019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177790.P4111266989897531019

namespace A177790

/-- `Δ[Δ[A078678(n)]]` -/
def P4111266989897531019.Spec : Prop :=
  ∀ n, P4111266989897531019.a n = A177790 n

end A177790

/-!
# A177791: Partial sums of A050705.

The programs for A177791, there is no canonical definition to state claims against.
-/

/-! ## A177791.P3608834124667491477

`∑[A050705(n+1)]`
-/

namespace A177791.P3608834124667491477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P3608834124667491477

/-! ## A177791.P7219963895865017063

`∑[record[A050705(A324347(n))]]`
-/

namespace A177791.P7219963895865017063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P7219963895865017063

/-! ## A177791.P4628077942705907334

`∑[A000027(A050705(-xor(n, -1)))]`
-/

namespace A177791.P4628077942705907334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A050705 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P4628077942705907334

/-! ## A177791.P335917668661346378

`∑[record[A050705(A133310(n))]]`
-/

namespace A177791.P335917668661346378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P335917668661346378

/-! ## A177791.P14198421870342385725

`∑[record[A050705(A286626(n))]]`
-/

namespace A177791.P14198421870342385725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A286626 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P14198421870342385725

/-! ## A177791.P1041718024483040012

`∑[record[A050705(A126759(n))]]`
-/

namespace A177791.P1041718024483040012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P1041718024483040012

/-! ## A177791.P16996273643809434061

`∑[record[A050705(A154958(n))]]`
-/

namespace A177791.P16996273643809434061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P16996273643809434061

/-! ## A177791.P10368324679614330177

`∑[record[A050705(A262519(n))]]`
-/

namespace A177791.P10368324679614330177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P10368324679614330177

/-! ## A177791.P4558039060311676125

`∑[∩[A050703(n+1), A050704(n+1)]]`
-/

namespace A177791.P4558039060311676125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050703 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P4558039060311676125

/-! ## A177791.P6193568173912369326

`∑[record[A050705(A038569(n))]]`
-/

namespace A177791.P6193568173912369326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050705 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177791.P6193568173912369326

/-!
# A177792: Number of paths from (0,0) to (n,n) avoiding 4 or more consecutive east steps and 4 or more consecutive north steps.

The programs for A177792, there is no canonical definition to state claims against.
-/

/-! ## A177792.P9931076057211300936

`∑[A024417(A003714((n-1)*2^n+2))]`
-/

namespace A177792.P9931076057211300936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A003714 (((n : ℤ) - 1) * (2 ^ n : ℤ) + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177792.P9931076057211300936

/-! ## A177792.P8945709008991472873

`A275867(n+1)+A194640(A001672(n))`
-/

namespace A177792.P8945709008991472873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275867 (n + 1) + A194640 (A001672 n).toNat

end

end A177792.P8945709008991472873

/-! ## A177792.P6202999460963887054

`A325166(A284542(2*n))+A247076(n)`
-/

namespace A177792.P6202999460963887054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A284542 (2 * n)).toNat + A247076 n

end

end A177792.P6202999460963887054

/-!
# A177793: Partial sums of A054247.

The programs for A177793, there is no canonical definition to state claims against.
-/

/-! ## A177793.P7554371771328570789

`∑[A054247(n)]`
-/

namespace A177793.P7554371771328570789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177793.P7554371771328570789

/-! ## A177793.P1414819810910178730

`a(n-1)+A054247(A000007(n)+n)` with `a(0)=1`
-/

namespace A177793.P1414819810910178730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054247 (A000007 n + (n : ℤ)).toNat

end

end A177793.P1414819810910178730

/-! ## A177793.P11947994895359263092

`a(n-1)+A000010(A014963(2*(n+1)))*A054247(n)` with `a(0)=1`
-/

namespace A177793.P11947994895359263092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000010 (A014963 (2 * (n + 1))).toNat * A054247 n

end

end A177793.P11947994895359263092

/-! ## A177793.P18332697075834080345

`∑[A343097(∑[n+3])]`
-/

namespace A177793.P18332697075834080345
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177793.P18332697075834080345

/-! ## A177793.P9441687792383263935

`or(1, ∑[A343097(A141214(n))])`
-/

namespace A177793.P9441687792383263935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177793.P9441687792383263935

/-!
# A177794: G.f. A satisfies -x+(1+x^3-x)*A+(x^4-x^2)*A^2+(x^5-x^3)*A^3-x^4*A^4 = 0.

The programs for A177794, there is no canonical definition to state claims against.
-/

/-! ## A177794.P11268827366846977451

`ceil(A136750(n)/ratio[A206720(3*n+2)])`
-/

namespace A177794.P11268827366846977451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206720 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136750 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉

end

end A177794.P11268827366846977451

/-! ## A177794.P18266450993978983304

`A004149(n)-A351870(A324099(n+1))`
-/

namespace A177794.P18266450993978983304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004149 n - A351870 (A324099 (n + 1)).toNat

end

end A177794.P18266450993978983304

/-! ## A177794.P14701529937823074541

`floor(root(A247053(n), log2(14)))`
-/

namespace A177794.P14701529937823074541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247053 n : ℝ) ^ (1 / Real.logb 2 (14 : ℝ))⌋

end

end A177794.P14701529937823074541

/-! ## A177794.P11127647129003827317

`A177849(15*A092886(n))`
-/

namespace A177794.P11127647129003827317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (15 * A092886 n).toNat

end

end A177794.P11127647129003827317

/-! ## A177794.P2008537865673465572

`A004149(n)-A139689(A137390(n+1))`
-/

namespace A177794.P2008537865673465572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004149 n - A139689 (A137390 (n + 1)).toNat

end

end A177794.P2008537865673465572

/-!
# A177795: Number of length n binary words that have at least one maximal run of 1's having length two.

The programs for A177795, the canonical program `A177795.P10719503522809026642` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177795 has offset 1).

The definition of A177795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177795.P12109739331120153224

`ogf((x-2x^2+x^3)/(1-4x+4x^2+x^3-3x^4+2x^5))`
-/

namespace A177795.P12109739331120153224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -4, 4, 1, -3, 2] n

end

end A177795.P12109739331120153224

namespace A177795

/-- `ogf((x-2x^2+x^3)/(1-4x+4x^2+x^3-3x^4+2x^5))` -/
def P12109739331120153224.Spec : Prop :=
  ∀ n, P12109739331120153224.a n = A177795 (n + 1)

end A177795

/-! ## A177795.P10719503522809026642

`2^(n+1)-A049856(n+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A177795

/-- `2^(n+1)-A049856(n+4)` -/
def P10719503522809026642.Spec : Prop :=
  ∀ n, P10719503522809026642.a n = A177795 (n + 1)

theorem P10719503522809026642.correct : P10719503522809026642.Spec := by
  intro n
  simp only [A177795, Nat.add_sub_cancel]

end A177795

/-! ## A177795.P8960323062756374018

`record[A186949(n)-A049856(n+3)]`
-/

namespace A177795.P8960323062756374018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 n - A049856 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177795.P8960323062756374018

namespace A177795

/-- `record[A186949(n)-A049856(n+3)]` -/
def P8960323062756374018.Spec : Prop :=
  ∀ n, P8960323062756374018.a n = A177795 (n + 1)

end A177795

/-! ## A177795.P8281090569800429616

`A000079(n+1)-(A059633(n+3)+A049864(n+1))`
-/

namespace A177795.P8281090569800429616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A059633 (n + 3) + A049864 (n + 1))

end

end A177795.P8281090569800429616

namespace A177795

/-- `A000079(n+1)-(A059633(n+3)+A049864(n+1))` -/
def P8281090569800429616.Spec : Prop :=
  ∀ n, P8281090569800429616.a n = A177795 (n + 1)

end A177795

/-! ## A177795.P16871960820080130496

`A123621(A077864(n))`
-/

namespace A177795.P16871960820080130496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A077864 n).toNat

end

end A177795.P16871960820080130496

namespace A177795

/-- `A123621(A077864(n))` -/
def P16871960820080130496.Spec : Prop :=
  ∀ n, P16871960820080130496.a n = A177795 (n + 1)

end A177795

/-!
# A177796: Numbers n such that number of 1's in binary representation of n-th prime = number of 0's in binary representation of n-th prime.

The programs for A177796, the canonical program `A177796.P16609661293602541890` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177796 has offset 1).

The definition of A177796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 772 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177796.P4406058433842250530

`A000720(A066196(n+1))`
-/

namespace A177796.P4406058433842250530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066196 (n + 1)).toNat

end

end A177796.P4406058433842250530

namespace A177796

/-- `A000720(A066196(n+1))` -/
def P4406058433842250530.Spec : Prop :=
  ∀ n, P4406058433842250530.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P11464614339516349004

`A000720(p?[A031443(n+1)])`
-/

namespace A177796.P11464614339516349004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P11464614339516349004

namespace A177796

/-- `A000720(p?[A031443(n+1)])` -/
def P11464614339516349004.Spec : Prop :=
  ∀ n, P11464614339516349004.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P18438986267241746451

`A061395(p?[A031443(n+1)])`
-/

namespace A177796.P18438986267241746451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P18438986267241746451

namespace A177796

/-- `A061395(p?[A031443(n+1)])` -/
def P18438986267241746451.Spec : Prop :=
  ∀ n, P18438986267241746451.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P8584747912219867996

`A066328(p?[A031443(n+1)])`
-/

namespace A177796.P8584747912219867996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P8584747912219867996

namespace A177796

/-- `A066328(p?[A031443(n+1)])` -/
def P8584747912219867996.Spec : Prop :=
  ∀ n, P8584747912219867996.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P12266469424247446996

`A297109(p?[A031443(n+1)])`
-/

namespace A177796.P12266469424247446996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P12266469424247446996

namespace A177796

/-- `A297109(p?[A031443(n+1)])` -/
def P12266469424247446996.Spec : Prop :=
  ∀ n, P12266469424247446996.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P16609661293602541890

`eq[A014499(n+1), A035103(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A177796

/-- `eq[A014499(n+1), A035103(n+1)]+1` -/
def P16609661293602541890.Spec : Prop :=
  ∀ n, (P16609661293602541890.a n : ℤ) = A177796 (n + 1)

theorem P16609661293602541890.correct : P16609661293602541890.Spec := by
  intro n
  simp only [A177796, Nat.add_sub_cancel]

end A177796

/-! ## A177796.P6303658600699299129

`A058933(p?[A031443(n+1)])`
-/

namespace A177796.P6303658600699299129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P6303658600699299129

namespace A177796

/-- `A058933(p?[A031443(n+1)])` -/
def P6303658600699299129.Spec : Prop :=
  ∀ n, P6303658600699299129.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P16538447997965570272

`A289508(p?[A031443(n+1)])`
-/

namespace A177796.P16538447997965570272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P16538447997965570272

namespace A177796

/-- `A289508(p?[A031443(n+1)])` -/
def P16538447997965570272.Spec : Prop :=
  ∀ n, P16538447997965570272.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P18093435828928688934

`A049084(p?[A031443(n+1)])`
-/

namespace A177796.P18093435828928688934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P18093435828928688934

namespace A177796

/-- `A049084(p?[A031443(n+1)])` -/
def P18093435828928688934.Spec : Prop :=
  ∀ n, P18093435828928688934.a n = A177796 (n + 1)

end A177796

/-! ## A177796.P5774193094378212055

`A055396(p?[A031443(n+1)])`
-/

namespace A177796.P5774193094378212055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177796.P5774193094378212055

namespace A177796

/-- `A055396(p?[A031443(n+1)])` -/
def P5774193094378212055.Spec : Prop :=
  ∀ n, P5774193094378212055.a n = A177796 (n + 1)

end A177796

/-!
# A177797: Number of decomposable fixed-point free involutions, also the number of disconnected chord diagrams with 2n nodes on an open string.

The programs for A177797, there is no canonical definition to state claims against.
-/

/-! ## A177797.P2789034454719276051

`∏[abs(1-2*n)]%A185971(n)`
-/

namespace A177797.P2789034454719276051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A185971 n)

end

end A177797.P2789034454719276051

/-! ## A177797.P2173396322828311481

`-∏[xor(1, 2*(n-1))]%A286781(∑[n]-n)`
-/

namespace A177797.P2173396322828311481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((n : ℤ) - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(∏ j ∈ Finset.range (n + 1), f1 j)) (A286781 (∑ j ∈ Finset.range (n + 1), f2 j - n))

end

end A177797.P2173396322828311481

/-! ## A177797.P14401154726189390782

`A001147(n)-A000698(n)`
-/

namespace A177797.P14401154726189390782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A000698 n

end

end A177797.P14401154726189390782

/-! ## A177797.P5250581831378212999

`A102625(∑[n])-abs(A185971(n))`
-/

namespace A177797.P5250581831378212999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102625 (∑ j ∈ Finset.range (n + 1), f1 j) - |A185971 n|

end

end A177797.P5250581831378212999

/-! ## A177797.P4772635208765703275

`A334823(∑[n])-abs(A185971(n))`
-/

namespace A177797.P4772635208765703275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334823 (∑ j ∈ Finset.range (n + 1), f1 j) - |A185971 n|

end

end A177797.P4772635208765703275

/-! ## A177797.P408357200652277483

`A001147(n)-A286781(∑[n]-n)`
-/

namespace A177797.P408357200652277483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A286781 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A177797.P408357200652277483

/-! ## A177797.P18093983057780798848

`A185971(round(sqrt(n²+1)))+A001147(n)`
-/

namespace A177797.P18093983057780798848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A001147 n

end

end A177797.P18093983057780798848

/-! ## A177797.P8908197557039488970

`∏[abs(1-2*n)]-A286781(A161680(n))`
-/

namespace A177797.P8908197557039488970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A286781 (A161680 n).toNat

end

end A177797.P8908197557039488970

/-! ## A177797.P5479023904315469656

`xor(-2, ∏[2*n-1])%((-A000698(n))^A178334(n))`
-/

namespace A177797.P5479023904315469656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (-2) (∏ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.roundAway ((-A000698 n : ℚ) ^ (A178334 n : ℤ)))

end

end A177797.P5479023904315469656

/-! ## A177797.P2536734561447894716

`∏[n+1]/2^n*A000108(n)-A286781(∑[n]-n)`
-/

namespace A177797.P2536734561447894716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 ^ n : ℚ) * (A000108 n : ℚ) - (A286781 (∑ j ∈ Finset.range (n + 1), f2 j - n) : ℚ)

end

end A177797.P2536734561447894716

/-!
# A177799: Primes of the form prime(prime(n)) mod prime(n), sorted by increasing n.

The programs for A177799, there is no canonical definition to state claims against.
-/

/-! ## A177799.P8609030144255709218

`p?[A076240(n+1)]`
-/

namespace A177799.P8609030144255709218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P8609030144255709218

/-! ## A177799.P3777865415152737731

`p?[A004648(p?[2*n+1])]`
-/

namespace A177799.P3777865415152737731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P3777865415152737731

/-! ## A177799.P2628648121432779700

`p?[A077254(p?[2*n+1])]`
-/

namespace A177799.P2628648121432779700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P2628648121432779700

/-! ## A177799.P7871793302834323126

`p?[A318660(p?[2*n+1])]`
-/

namespace A177799.P7871793302834323126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318660 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P7871793302834323126

/-! ## A177799.P12160537844497867786

`p?[A004648(A000040(n+1))]`
-/

namespace A177799.P12160537844497867786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P12160537844497867786

/-! ## A177799.P4244848226898914755

`p?[A004648(A089026(n+1))]`
-/

namespace A177799.P4244848226898914755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P4244848226898914755

/-! ## A177799.P11901761317859366733

`p?[A077254(A000040(n+2))]`
-/

namespace A177799.P11901761317859366733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P11901761317859366733

/-! ## A177799.P15334413154434347807

`filter[A076240(n+1), A010051(#)]`
-/

namespace A177799.P15334413154434347807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A177799.P15334413154434347807

/-! ## A177799.P14740473308377957837

`p?[A077254(record[A014963(n+1)])]`
-/

namespace A177799.P14740473308377957837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077254 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P14740473308377957837

/-! ## A177799.P4429101266188424677

`p?[A006450(n+1)%A000040(n+1)]`
-/

namespace A177799.P4429101266188424677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177799.P4429101266188424677

