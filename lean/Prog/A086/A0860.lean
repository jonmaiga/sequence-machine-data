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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B006.C000
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
# A086000: For p = prime(n), a(n) is the smallest N such that pN is a base-2 pseudoprime (that is, 2^(pN-1) = 1 mod pN).

The programs for A086000, there is no canonical definition to state claims against.
-/

/-! ## A086000.P12766854354621849260

`A085999(n+2)/p?[2*n+1]`
-/

namespace A086000.P12766854354621849260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085999 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ)

end

end A086000.P12766854354621849260

/-! ## A086000.P13750791841729817712

`A085999(n+2)/A065091(n+1)`
-/

namespace A086000.P13750791841729817712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085999 (n + 2) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A086000.P13750791841729817712

/-! ## A086000.P797710330940499439

`A085999(n+2)/A000040(n+2)`
-/

namespace A086000.P797710330940499439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085999 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A086000.P797710330940499439

/-! ## A086000.P3029048913419681137

`A085999(n+2)/record[A006530(3*(n+1))]`
-/

namespace A086000.P3029048913419681137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085999 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A086000.P3029048913419681137

/-! ## A086000.P8349379212378660193

`A085999(n+2)/A006530(Δ[A124669(n+1)])`
-/

namespace A086000.P8349379212378660193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085999 (n + 2) : ℚ) / (A006530 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A086000.P8349379212378660193

/-! ## A086000.P6748635988231359036

`A085999(n+2)/A006530(A124669(n+1)+2)`
-/

namespace A086000.P6748635988231359036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085999 (n + 2) : ℚ) / (A006530 (A124669 (n + 1) + 2).toNat : ℚ)

end

end A086000.P6748635988231359036

/-!
# A086005: Semiprimes sandwiched between semiprimes.

The programs for A086005, the canonical program `A086005.P8028588650396263204` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086005 has offset 1).

The definition of A086005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056809, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086005.P8028588650396263204

`A056809(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086005

/-- `A056809(n+1)+1` -/
def P8028588650396263204.Spec : Prop :=
  ∀ n, P8028588650396263204.a n = A086005 (n + 1)

theorem P8028588650396263204.correct : P8028588650396263204.Spec := by
  intro n
  simp only [A086005, Nat.add_sub_cancel]

end A086005

/-! ## A086005.P10425629410792594447

`2*A086006(n+1)`
-/

namespace A086005.P10425629410792594447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086006 (n + 1)

end

end A086005.P10425629410792594447

namespace A086005

/-- `2*A086006(n+1)` -/
def P10425629410792594447.Spec : Prop :=
  ∀ n, P10425629410792594447.a n = A086005 (n + 1)

end A086005

/-! ## A086005.P13370047598381084704

`A115393(n+1)-1`
-/

namespace A086005.P13370047598381084704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115393 (n + 1) - 1

end

end A086005.P13370047598381084704

namespace A086005

/-- `A115393(n+1)-1` -/
def P13370047598381084704.Spec : Prop :=
  ∀ n, P13370047598381084704.a n = A086005 (n + 1)

theorem P13370047598381084704.correct : P13370047598381084704.Spec := by
  intro n
  simp only [A086005, Nat.add_sub_cancel, A086005.P13370047598381084704.a, A086005.P8028588650396263204.a, A056809, A056809.P5257664665188293059.a, A115393, A115393.P13485975269135048129.a, A123255, A123255.P11098668165499929543.f1, A123255.P11098668165499929543.a, A082130, A082130.P5668457322223937576.a, A198327, A198327.P891835078259736494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086005

/-! ## A086005.P16214656318166396129

`or(2, A056809(-xor(n, -1)))-1`
-/

namespace A086005.P16214656318166396129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A056809 (-Int.xor (n : ℤ) (-1)).toNat) - 1

end

end A086005.P16214656318166396129

namespace A086005

/-- `or(2, A056809(-xor(n, -1)))-1` -/
def P16214656318166396129.Spec : Prop :=
  ∀ n, P16214656318166396129.a n = A086005 (n + 1)

end A086005

/-! ## A086005.P11262660847220605697

`A086006(A000027(n+1))+A086006(n+1)`
-/

namespace A086005.P11262660847220605697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086006 (A000027 (n + 1)).toNat + A086006 (n + 1)

end

end A086005.P11262660847220605697

namespace A086005

/-- `A086006(A000027(n+1))+A086006(n+1)` -/
def P11262660847220605697.Spec : Prop :=
  ∀ n, P11262660847220605697.a n = A086005 (n + 1)

end A086005

/-! ## A086005.P17284984995769439695

`A086006(n+1)+A086006(n+1)/A008836(n+1)²`
-/

namespace A086005.P17284984995769439695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086006 (n + 1) : ℚ) + (A086006 (n + 1) : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A086005.P17284984995769439695

namespace A086005

/-- `A086006(n+1)+A086006(n+1)/A008836(n+1)²` -/
def P17284984995769439695.Spec : Prop :=
  ∀ n, P17284984995769439695.a n = (A086005 (n + 1) : ℚ)

end A086005

/-! ## A086005.P18383202794765299589

`∩[A110300(n+1), A278311(n+1)]`
-/

namespace A086005.P18383202794765299589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P18383202794765299589

namespace A086005

/-- `∩[A110300(n+1), A278311(n+1)]` -/
def P18383202794765299589.Spec : Prop :=
  ∀ n, (P18383202794765299589.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P9505327580830990908

`∩[A039832(n+1), A278311(n+1)]`
-/

namespace A086005.P9505327580830990908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P9505327580830990908

namespace A086005

/-- `∩[A039832(n+1), A278311(n+1)]` -/
def P9505327580830990908.Spec : Prop :=
  ∀ n, (P9505327580830990908.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P12555993878531269855

`∩[A263990(n+1), A278311(n+1)]`
-/

namespace A086005.P12555993878531269855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P12555993878531269855

namespace A086005

/-- `∩[A263990(n+1), A278311(n+1)]` -/
def P12555993878531269855.Spec : Prop :=
  ∀ n, (P12555993878531269855.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P7053922522624620519

`∩[A039832(n+1), A045939(n+1)+1]`
-/

namespace A086005.P7053922522624620519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P7053922522624620519

namespace A086005

/-- `∩[A039832(n+1), A045939(n+1)+1]` -/
def P7053922522624620519.Spec : Prop :=
  ∀ n, (P7053922522624620519.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P5507012419443812072

`∩[A045939(n+1)+1, A263990(n+1)]`
-/

namespace A086005.P5507012419443812072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P5507012419443812072

namespace A086005

/-- `∩[A045939(n+1)+1, A263990(n+1)]` -/
def P5507012419443812072.Spec : Prop :=
  ∀ n, (P5507012419443812072.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P17575689538257119175

`∩[A070552(n+1), A109373(n+1)]`
-/

namespace A086005.P17575689538257119175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P17575689538257119175

namespace A086005

/-- `∩[A070552(n+1), A109373(n+1)]` -/
def P17575689538257119175.Spec : Prop :=
  ∀ n, (P17575689538257119175.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P7715017100942928708

`∩[A070552(n+1), A278311(n+1)]`
-/

namespace A086005.P7715017100942928708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P7715017100942928708

namespace A086005

/-- `∩[A070552(n+1), A278311(n+1)]` -/
def P7715017100942928708.Spec : Prop :=
  ∀ n, (P7715017100942928708.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P10434498326994648759

`∩[A109373(n+1), A263990(n+1)]`
-/

namespace A086005.P10434498326994648759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P10434498326994648759

namespace A086005

/-- `∩[A109373(n+1), A263990(n+1)]` -/
def P10434498326994648759.Spec : Prop :=
  ∀ n, (P10434498326994648759.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P2078703578583685667

`∩[A109373(n+1), A278311(n+1)]`
-/

namespace A086005.P2078703578583685667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P2078703578583685667

namespace A086005

/-- `∩[A109373(n+1), A278311(n+1)]` -/
def P2078703578583685667.Spec : Prop :=
  ∀ n, (P2078703578583685667.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P14634001085974116793

`∩[A045939(n+1)+1, A070552(n+1)]`
-/

namespace A086005.P14634001085974116793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P14634001085974116793

namespace A086005

/-- `∩[A045939(n+1)+1, A070552(n+1)]` -/
def P14634001085974116793.Spec : Prop :=
  ∀ n, (P14634001085974116793.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P6473512859849647481

`∩[A070552(n+2)+1, A070552(n+2)]`
-/

namespace A086005.P6473512859849647481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P6473512859849647481

namespace A086005

/-- `∩[A070552(n+2)+1, A070552(n+2)]` -/
def P6473512859849647481.Spec : Prop :=
  ∀ n, (P6473512859849647481.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P12828772178512916579

`∩[A109373(n+2)-1, A109373(n+2)]`
-/

namespace A086005.P12828772178512916579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P12828772178512916579

namespace A086005

/-- `∩[A109373(n+2)-1, A109373(n+2)]` -/
def P12828772178512916579.Spec : Prop :=
  ∀ n, (P12828772178512916579.a n : ℤ) = A086005 (n + 1)

end A086005

/-! ## A086005.P18361863419684995858

`4*A123255(n+1)+2`
-/

namespace A086005.P18361863419684995858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123255 (n + 1) + 2

end

end A086005.P18361863419684995858

namespace A086005

/-- `4*A123255(n+1)+2` -/
def P18361863419684995858.Spec : Prop :=
  ∀ n, P18361863419684995858.a n = A086005 (n + 1)

theorem P18361863419684995858.correct : P18361863419684995858.Spec := by
  intro n
  simp only [A086005, Nat.add_sub_cancel, A086005.P18361863419684995858.a, A086005.P8028588650396263204.a, A056809, A056809.P5257664665188293059.a, A123255, A123255.P11098668165499929543.f1, A123255.P11098668165499929543.a, A082130, A082130.P5668457322223937576.a, A198327, A198327.P891835078259736494.a, A092207, A092207.P2317231063323524439.f1, A092207.P2317231063323524439.f2, A092207.P2317231063323524439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086005

/-! ## A086005.P14680545612236984564

`∩[A039832(n+1), A213025(n+1)]`
-/

namespace A086005.P14680545612236984564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086005.P14680545612236984564

namespace A086005

/-- `∩[A039832(n+1), A213025(n+1)]` -/
def P14680545612236984564.Spec : Prop :=
  ∀ n, (P14680545612236984564.a n : ℤ) = A086005 (n + 1)

end A086005

/-!
# A086006: Primes p such that 2*p-1 and 2*p+1 are semiprimes.

The programs for A086006, the canonical program `A086006.P5375373941995092136` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086006 has offset 1).

The definition of A086006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086006.P3603697308969440761

`A086005(n+1)/2`
-/

namespace A086006.P3603697308969440761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086005 (n + 1) : ℚ) / 2

end

end A086006.P3603697308969440761

namespace A086006

/-- `A086005(n+1)/2` -/
def P3603697308969440761.Spec : Prop :=
  ∀ n, P3603697308969440761.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P10774888912740035502

`floor(A115393(n+1)/2)`
-/

namespace A086006.P10774888912740035502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115393 (n + 1) : ℚ) / 2⌋

end

end A086006.P10774888912740035502

namespace A086006

/-- `floor(A115393(n+1)/2)` -/
def P10774888912740035502.Spec : Prop :=
  ∀ n, P10774888912740035502.a n = A086006 (n + 1)

end A086006

/-! ## A086006.P5375373941995092136

`ceil(A056809(n+1)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086006

/-- `ceil(A056809(n+1)/2)` -/
def P5375373941995092136.Spec : Prop :=
  ∀ n, P5375373941995092136.a n = A086006 (n + 1)

theorem P5375373941995092136.correct : P5375373941995092136.Spec := by
  intro n
  simp only [A086006, Nat.add_sub_cancel]

end A086006

/-! ## A086006.P15145479374574898489

`(or(2, A056809(-xor(n, -1)))-1)/2`
-/

namespace A086006.P15145479374574898489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (A056809 (-Int.xor (n : ℤ) (-1)).toNat) - 1 : ℚ) / 2

end

end A086006.P15145479374574898489

namespace A086006

/-- `(or(2, A056809(-xor(n, -1)))-1)/2` -/
def P15145479374574898489.Spec : Prop :=
  ∀ n, P15145479374574898489.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P2358789130909916441

`(A115393(n+1)-1)/(A045533(n+1)%2+1)`
-/

namespace A086006.P2358789130909916441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115393 (n + 1) - 1 : ℚ) / (Int.tmod (A045533 (n + 1)) 2 + 1 : ℚ)

end

end A086006.P2358789130909916441

namespace A086006

/-- `(A115393(n+1)-1)/(A045533(n+1)%2+1)` -/
def P2358789130909916441.Spec : Prop :=
  ∀ n, P2358789130909916441.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P13033017064169124582

`(A115393(n+1)-1)/(A142755(n+1)%2+1)`
-/

namespace A086006.P13033017064169124582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115393 (n + 1) - 1 : ℚ) / (Int.tmod (A142755 (n + 1)) 2 + 1 : ℚ)

end

end A086006.P13033017064169124582

namespace A086006

/-- `(A115393(n+1)-1)/(A142755(n+1)%2+1)` -/
def P13033017064169124582.Spec : Prop :=
  ∀ n, P13033017064169124582.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P430639044004764809

`(A115393(n+1)-1)/A130130(2*n+3)`
-/

namespace A086006.P430639044004764809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115393 (n + 1) - 1 : ℚ) / (A130130 (2 * n + 3) : ℚ)

end

end A086006.P430639044004764809

namespace A086006

/-- `(A115393(n+1)-1)/A130130(2*n+3)` -/
def P430639044004764809.Spec : Prop :=
  ∀ n, P430639044004764809.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P10927894161395043576

`∩[A234095(n+1), A328058(n+1)]`
-/

namespace A086006.P10927894161395043576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086006.P10927894161395043576

namespace A086006

/-- `∩[A234095(n+1), A328058(n+1)]` -/
def P10927894161395043576.Spec : Prop :=
  ∀ n, (P10927894161395043576.a n : ℤ) = A086006 (n + 1)

end A086006

/-! ## A086006.P2506331587528169706

`∩[A039832(n+1), A278311(n+1)]/2`
-/

namespace A086006.P2506331587528169706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P2506331587528169706

namespace A086006

/-- `∩[A039832(n+1), A278311(n+1)]/2` -/
def P2506331587528169706.Spec : Prop :=
  ∀ n, P2506331587528169706.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P357014630076386498

`∩[A263990(n+1), A278311(n+1)]/2`
-/

namespace A086006.P357014630076386498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P357014630076386498

namespace A086006

/-- `∩[A263990(n+1), A278311(n+1)]/2` -/
def P357014630076386498.Spec : Prop :=
  ∀ n, P357014630076386498.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P4775696926530476267

`∩[A070552(n+1), A109373(n+1)]/2`
-/

namespace A086006.P4775696926530476267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P4775696926530476267

namespace A086006

/-- `∩[A070552(n+1), A109373(n+1)]/2` -/
def P4775696926530476267.Spec : Prop :=
  ∀ n, P4775696926530476267.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P15573179581912426757

`∩[A070552(n+1), A278311(n+1)]/2`
-/

namespace A086006.P15573179581912426757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P15573179581912426757

namespace A086006

/-- `∩[A070552(n+1), A278311(n+1)]/2` -/
def P15573179581912426757.Spec : Prop :=
  ∀ n, P15573179581912426757.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P14712705215367278977

`∩[A109373(n+1), A263990(n+1)]/2`
-/

namespace A086006.P14712705215367278977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P14712705215367278977

namespace A086006

/-- `∩[A109373(n+1), A263990(n+1)]/2` -/
def P14712705215367278977.Spec : Prop :=
  ∀ n, P14712705215367278977.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P4715308986509134657

`∩[A109373(n+1), A278311(n+1)]/2`
-/

namespace A086006.P4715308986509134657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278311 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P4715308986509134657

namespace A086006

/-- `∩[A109373(n+1), A278311(n+1)]/2` -/
def P4715308986509134657.Spec : Prop :=
  ∀ n, P4715308986509134657.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P8230837352419283515

`∩[A114454(n+1), A234095(n+1)]`
-/

namespace A086006.P8230837352419283515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086006.P8230837352419283515

namespace A086006

/-- `∩[A114454(n+1), A234095(n+1)]` -/
def P8230837352419283515.Spec : Prop :=
  ∀ n, (P8230837352419283515.a n : ℤ) = A086006 (n + 1)

end A086006

/-! ## A086006.P17932772245133805349

`2*A123255(n+1)+1`
-/

namespace A086006.P17932772245133805349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123255 (n + 1) + 1

end

end A086006.P17932772245133805349

namespace A086006

/-- `2*A123255(n+1)+1` -/
def P17932772245133805349.Spec : Prop :=
  ∀ n, P17932772245133805349.a n = A086006 (n + 1)

end A086006

/-! ## A086006.P351330123872174584

`A056809(n+1)-(A123255(n+1)+A123255(n+1))`
-/

namespace A086006.P351330123872174584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1) - (A123255 (n + 1) + A123255 (n + 1))

end

end A086006.P351330123872174584

namespace A086006

/-- `A056809(n+1)-(A123255(n+1)+A123255(n+1))` -/
def P351330123872174584.Spec : Prop :=
  ∀ n, P351330123872174584.a n = A086006 (n + 1)

end A086006

/-! ## A086006.P5001054523973328891

`∩[A039832(n+1), A213025(n+1)]/2`
-/

namespace A086006.P5001054523973328891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P5001054523973328891

namespace A086006

/-- `∩[A039832(n+1), A213025(n+1)]/2` -/
def P5001054523973328891.Spec : Prop :=
  ∀ n, P5001054523973328891.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P16754052787710605991

`∩[A070552(n+1), A213025(n+1)]/2`
-/

namespace A086006.P16754052787710605991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P16754052787710605991

namespace A086006

/-- `∩[A070552(n+1), A213025(n+1)]/2` -/
def P16754052787710605991.Spec : Prop :=
  ∀ n, P16754052787710605991.a n = (A086006 (n + 1) : ℚ)

end A086006

/-! ## A086006.P11533912856268477648

`∩[A109373(n+1), A213025(n+1)]/2`
-/

namespace A086006.P11533912856268477648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213025 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086006.P11533912856268477648

namespace A086006

/-- `∩[A109373(n+1), A213025(n+1)]/2` -/
def P11533912856268477648.Spec : Prop :=
  ∀ n, P11533912856268477648.a n = (A086006 (n + 1) : ℚ)

end A086006

/-!
# A086007: Number of semiprime triples <= n.

The programs for A086007, the canonical program `A086007.P10445381698783917302` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086007 has offset 1).

The definition of A086007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086007.P10445381698783917302

`∑[char[A056809(n+1)-1]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A086007

/-- `∑[char[A056809(n+1)-1]]` -/
def P10445381698783917302.Spec : Prop :=
  ∀ n, (P10445381698783917302.a n : ℤ) = A086007 (n + 1)

theorem P10445381698783917302.correct : P10445381698783917302.Spec := by
  intro n
  simp only [A086007, Nat.add_sub_cancel]

end A086007

/-! ## A086007.P1071522728058971548

`A010060(∑[A335462(n+4)])`
-/

namespace A086007.P1071522728058971548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086007.P1071522728058971548

namespace A086007

/-- `A010060(∑[A335462(n+4)])` -/
def P1071522728058971548.Spec : Prop :=
  ∀ n, P1071522728058971548.a n = A086007 (n + 1)

end A086007

/-! ## A086007.P14218646653423965917

`A059841(∏[A330098(n+3)])`
-/

namespace A086007.P14218646653423965917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086007.P14218646653423965917

namespace A086007

/-- `A059841(∏[A330098(n+3)])` -/
def P14218646653423965917.Spec : Prop :=
  ∀ n, P14218646653423965917.a n = A086007 (n + 1)

end A086007

/-! ## A086007.P11019065629751731369

`A333381(∑[A335462(n+4)]²)`
-/

namespace A086007.P11019065629751731369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A086007.P11019065629751731369

namespace A086007

/-- `A333381(∑[A335462(n+4)]²)` -/
def P11019065629751731369.Spec : Prop :=
  ∀ n, P11019065629751731369.a n = A086007 (n + 1)

end A086007

/-! ## A086007.P1662350420591840450

`∑[A010054(∑[A081145(2*(n+1))])]`
-/

namespace A086007.P1662350420591840450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086007.P1662350420591840450

namespace A086007

/-- `∑[A010054(∑[A081145(2*(n+1))])]` -/
def P1662350420591840450.Spec : Prop :=
  ∀ n, P1662350420591840450.a n = A086007 (n + 1)

end A086007

/-! ## A086007.P1525214671670016614

`A003415(floor(n^(1/5)))^A329316(n)`
-/

namespace A086007.P1525214671670016614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat : ℚ) ^ (A329316 n : ℤ)

end

end A086007.P1525214671670016614

namespace A086007

/-- `A003415(floor(n^(1/5)))^A329316(n)` -/
def P1525214671670016614.Spec : Prop :=
  ∀ n, P1525214671670016614.a n = (A086007 (n + 1) : ℚ)

end A086007

/-! ## A086007.P11661394280420921990

`A065715(floor(n^(1/5)))^A329316(n)`
-/

namespace A086007.P11661394280420921990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065715 ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat : ℚ) ^ (A329316 n : ℤ)

end

end A086007.P11661394280420921990

namespace A086007

/-- `A065715(floor(n^(1/5)))^A329316(n)` -/
def P11661394280420921990.Spec : Prop :=
  ∀ n, P11661394280420921990.a n = (A086007 (n + 1) : ℚ)

end A086007

/-! ## A086007.P4101963293822986193

`∑[val(A137918(n+3), A073760(n+1))]`
-/

namespace A086007.P4101963293822986193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137918 (n + 3)).toNat (A073760 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086007.P4101963293822986193

namespace A086007

/-- `∑[val(A137918(n+3), A073760(n+1))]` -/
def P4101963293822986193.Spec : Prop :=
  ∀ n, (P4101963293822986193.a n : ℤ) = A086007 (n + 1)

end A086007

/-! ## A086007.P8952387704597229297

`A002262(floor(n^(1/5)))^A262319(n+1)`
-/

namespace A086007.P8952387704597229297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat : ℚ) ^ (A262319 (n + 1) : ℤ)

end

end A086007.P8952387704597229297

namespace A086007

/-- `A002262(floor(n^(1/5)))^A262319(n+1)` -/
def P8952387704597229297.Spec : Prop :=
  ∀ n, P8952387704597229297.a n = (A086007 (n + 1) : ℚ)

end A086007

/-!
# A086008: Number of 0's in decimal expansion of n^2.

The programs for A086008, the canonical program `A086008.P9136863621012963463` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086008 has offset 0).

The definition of A086008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086008.P11247217272707378691

`∑{digits}[n², floor(acot(#))]`
-/

namespace A086008.P11247217272707378691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

end

end A086008.P11247217272707378691

namespace A086008

/-- `∑{digits}[n², floor(acot(#))]` -/
def P11247217272707378691.Spec : Prop :=
  ∀ n, P11247217272707378691.a n = A086008 n

end A086008

/-! ## A086008.P9136863621012963463

`∑{digits}[n², C(2, #+2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086008

/-- `∑{digits}[n², C(2, #+2)]` -/
def P9136863621012963463.Spec : Prop :=
  ∀ n, (P9136863621012963463.a n : ℤ) = A086008 n

theorem P9136863621012963463.correct : P9136863621012963463.Spec := by
  intro n
  simp only [A086008]

end A086008

/-! ## A086008.P18419654009995041745

`∑{digits}[n², (2^#)%2]`
-/

namespace A086008.P18419654009995041745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x % 2).sum

end

end A086008.P18419654009995041745

namespace A086008

/-- `∑{digits}[n², (2^#)%2]` -/
def P18419654009995041745.Spec : Prop :=
  ∀ n, (P18419654009995041745.a n : ℤ) = A086008 n

end A086008

/-! ## A086008.P3125586417476921110

`∑{digits}[n², and(1, 2^#)]`
-/

namespace A086008.P3125586417476921110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (2 ^ x)).sum

end

end A086008.P3125586417476921110

namespace A086008

/-- `∑{digits}[n², and(1, 2^#)]` -/
def P3125586417476921110.Spec : Prop :=
  ∀ n, (P3125586417476921110.a n : ℤ) = A086008 n

end A086008

/-! ## A086008.P17034409683887151682

`∑{digits}[n², floor(2^-#)]`
-/

namespace A086008.P17034409683887151682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(2 : ℚ) ^ (-(x : ℤ) : ℤ)⌋).sum

end

end A086008.P17034409683887151682

namespace A086008

/-- `∑{digits}[n², floor(2^-#)]` -/
def P17034409683887151682.Spec : Prop :=
  ∀ n, P17034409683887151682.a n = A086008 n

end A086008

/-! ## A086008.P10435625934357734376

`A055641(n²)`
-/

namespace A086008.P10435625934357734376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n ^ 2)

end

end A086008.P10435625934357734376

namespace A086008

/-- `A055641(n²)` -/
def P10435625934357734376.Spec : Prop :=
  ∀ n, P10435625934357734376.a n = A086008 n

end A086008

/-! ## A086008.P626562363735807954

`val(A359802(n²), 2)`
-/

namespace A086008.P626562363735807954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359802 (n ^ 2)).toNat 2

end

end A086008.P626562363735807954

namespace A086008

/-- `val(A359802(n²), 2)` -/
def P626562363735807954.Spec : Prop :=
  ∀ n, (P626562363735807954.a n : ℤ) = A086008 n

end A086008

/-!
# A086009: Number of 1's in decimal expansion of n^2.

The programs for A086009, the canonical program `A086009.P5175277794228975289` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086009 has offset 0).

The definition of A086009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086009.P5175277794228975289

`∑{digits}[n², C(C(2, #), 2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086009

/-- `∑{digits}[n², C(C(2, #), 2)]` -/
def P5175277794228975289.Spec : Prop :=
  ∀ n, (P5175277794228975289.a n : ℤ) = A086009 n

theorem P5175277794228975289.correct : P5175277794228975289.Spec := by
  intro n
  simp only [A086009]

end A086009

/-! ## A086009.P14288286109017561997

`∑{digits}[n², and(#, #!²)]`
-/

namespace A086009.P14288286109017561997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land x (Nat.factorial x ^ 2)).sum

end

end A086009.P14288286109017561997

namespace A086009

/-- `∑{digits}[n², and(#, #!²)]` -/
def P14288286109017561997.Spec : Prop :=
  ∀ n, (P14288286109017561997.a n : ℤ) = A086009 n

end A086009

/-! ## A086009.P3727177618218919683

`∑{digits}[n², val(n+1+#, n+2)]`
-/

namespace A086009.P3727177618218919683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (n + 1 + x) (n + 2)).sum

end

end A086009.P3727177618218919683

namespace A086009

/-- `∑{digits}[n², val(n+1+#, n+2)]` -/
def P3727177618218919683.Spec : Prop :=
  ∀ n, (P3727177618218919683.a n : ℤ) = A086009 n

end A086009

/-! ## A086009.P16179329649535459331

`∑{digits}[n², A030215(#)]`
-/

namespace A086009.P16179329649535459331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A030215 x).sum

end

end A086009.P16179329649535459331

namespace A086009

/-- `∑{digits}[n², A030215(#)]` -/
def P16179329649535459331.Spec : Prop :=
  ∀ n, P16179329649535459331.a n = A086009 n

end A086009

/-! ## A086009.P13029312030461487075

`∑{digits}[n², A030217(#)]`
-/

namespace A086009.P13029312030461487075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A030217 x).sum

end

end A086009.P13029312030461487075

namespace A086009

/-- `∑{digits}[n², A030217(#)]` -/
def P13029312030461487075.Spec : Prop :=
  ∀ n, P13029312030461487075.a n = A086009 n

end A086009

/-! ## A086009.P12601845555865983834

`∑{digits}[n², A033683(#)]`
-/

namespace A086009.P12601845555865983834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A033683 x).sum

end

end A086009.P12601845555865983834

namespace A086009

/-- `∑{digits}[n², A033683(#)]` -/
def P12601845555865983834.Spec : Prop :=
  ∀ n, P12601845555865983834.a n = A086009 n

end A086009

/-! ## A086009.P8762341627579872035

`∑{digits}[n², A063524(#)]`
-/

namespace A086009.P8762341627579872035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A063524 x).sum

end

end A086009.P8762341627579872035

namespace A086009

/-- `∑{digits}[n², A063524(#)]` -/
def P8762341627579872035.Spec : Prop :=
  ∀ n, P8762341627579872035.a n = A086009 n

end A086009

/-! ## A086009.P673339694608092394

`∑{digits}[n², A178333(#)]`
-/

namespace A086009.P673339694608092394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A178333 x).sum

end

end A086009.P673339694608092394

namespace A086009

/-- `∑{digits}[n², A178333(#)]` -/
def P673339694608092394.Spec : Prop :=
  ∀ n, P673339694608092394.a n = A086009 n

end A086009

/-! ## A086009.P14554953874075772906

`∑{digits}[n², A181499(#)]`
-/

namespace A086009.P14554953874075772906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181499 x).sum

end

end A086009.P14554953874075772906

namespace A086009

/-- `∑{digits}[n², A181499(#)]` -/
def P14554953874075772906.Spec : Prop :=
  ∀ n, P14554953874075772906.a n = A086009 n

end A086009

/-! ## A086009.P8515228513437066925

`∑{digits}[n², A181500(#)]`
-/

namespace A086009.P8515228513437066925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181500 x).sum

end

end A086009.P8515228513437066925

namespace A086009

/-- `∑{digits}[n², A181500(#)]` -/
def P8515228513437066925.Spec : Prop :=
  ∀ n, P8515228513437066925.a n = A086009 n

end A086009

/-! ## A086009.P11963981799139603471

`∑{digits}[n², A181501(#)]`
-/

namespace A086009.P11963981799139603471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181501 x).sum

end

end A086009.P11963981799139603471

namespace A086009

/-- `∑{digits}[n², A181501(#)]` -/
def P11963981799139603471.Spec : Prop :=
  ∀ n, P11963981799139603471.a n = A086009 n

end A086009

/-! ## A086009.P18294208045154791582

`∑{digits}[n², A251766(#)]`
-/

namespace A086009.P18294208045154791582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251766 x).sum

end

end A086009.P18294208045154791582

namespace A086009

/-- `∑{digits}[n², A251766(#)]` -/
def P18294208045154791582.Spec : Prop :=
  ∀ n, P18294208045154791582.a n = A086009 n

end A086009

/-! ## A086009.P8900791517369367024

`∑{digits}[n², A259567(#)]`
-/

namespace A086009.P8900791517369367024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A259567 x).sum

end

end A086009.P8900791517369367024

namespace A086009

/-- `∑{digits}[n², A259567(#)]` -/
def P8900791517369367024.Spec : Prop :=
  ∀ n, P8900791517369367024.a n = A086009 n

end A086009

/-! ## A086009.P1212687574561805524

`∑{digits}[n², A326168(#)]`
-/

namespace A086009.P1212687574561805524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A326168 x).sum

end

end A086009.P1212687574561805524

namespace A086009

/-- `∑{digits}[n², A326168(#)]` -/
def P1212687574561805524.Spec : Prop :=
  ∀ n, P1212687574561805524.a n = A086009 n

end A086009

/-! ## A086009.P18171655382923966603

`∑{digits}[n², A339629(#)]`
-/

namespace A086009.P18171655382923966603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A339629 x).sum

end

end A086009.P18171655382923966603

namespace A086009

/-- `∑{digits}[n², A339629(#)]` -/
def P18171655382923966603.Spec : Prop :=
  ∀ n, P18171655382923966603.a n = A086009 n

end A086009

/-! ## A086009.P14370069438162673937

`∑{digits}[n*n, A268643(#)]`
-/

namespace A086009.P14370069438162673937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A268643 x).sum

end

end A086009.P14370069438162673937

namespace A086009

/-- `∑{digits}[n*n, A268643(#)]` -/
def P14370069438162673937.Spec : Prop :=
  ∀ n, P14370069438162673937.a n = A086009 n

end A086009

/-! ## A086009.P18293400493953074423

`∑{digits}[n², A000007(A007359(#))]`
-/

namespace A086009.P18293400493953074423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 (A007359 x).toNat).sum

end

end A086009.P18293400493953074423

namespace A086009

/-- `∑{digits}[n², A000007(A007359(#))]` -/
def P18293400493953074423.Spec : Prop :=
  ∀ n, P18293400493953074423.a n = A086009 n

end A086009

/-! ## A086009.P7771924680699101857

`∑{digits}[n², A010057(A000032(#))]`
-/

namespace A086009.P7771924680699101857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A010057 (A000032 x).toNat).sum

end

end A086009.P7771924680699101857

namespace A086009

/-- `∑{digits}[n², A010057(A000032(#))]` -/
def P7771924680699101857.Spec : Prop :=
  ∀ n, P7771924680699101857.a n = A086009 n

end A086009

/-! ## A086009.P13246297849366303212

`∑{digits}[n², A010054(A000230(#))]`
-/

namespace A086009.P13246297849366303212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A010054 (A000230 x).toNat).sum

end

end A086009.P13246297849366303212

namespace A086009

/-- `∑{digits}[n², A010054(A000230(#))]` -/
def P13246297849366303212.Spec : Prop :=
  ∀ n, P13246297849366303212.a n = A086009 n

end A086009

/-! ## A086009.P16396396980917435551

`∑{digits}[n², A010057(A016934(#))]`
-/

namespace A086009.P16396396980917435551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A010057 (A016934 x).toNat).sum

end

end A086009.P16396396980917435551

namespace A086009

/-- `∑{digits}[n², A010057(A016934(#))]` -/
def P16396396980917435551.Spec : Prop :=
  ∀ n, P16396396980917435551.a n = A086009 n

end A086009

/-!
# A086010: Number of 2's in decimal expansion of n^2.

The programs for A086010, the canonical program `A086010.P17267856587033653596` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086010 has offset 0).

The definition of A086010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086010.P17267856587033653596

`∑{digits}[n², val(n+1+#, n+3)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086010

/-- `∑{digits}[n², val(n+1+#, n+3)]` -/
def P17267856587033653596.Spec : Prop :=
  ∀ n, (P17267856587033653596.a n : ℤ) = A086010 n

theorem P17267856587033653596.correct : P17267856587033653596.Spec := by
  intro n
  simp only [A086010]

end A086010

/-! ## A086010.P13447827476276959025

`∑{digits}[n², A080300(#)]`
-/

namespace A086010.P13447827476276959025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A080300 x).sum

end

end A086010.P13447827476276959025

namespace A086010

/-- `∑{digits}[n², A080300(#)]` -/
def P13447827476276959025.Spec : Prop :=
  ∀ n, P13447827476276959025.a n = A086010 n

end A086010

/-! ## A086010.P3255575007129056163

`∑{digits}[n², A083927(#)]`
-/

namespace A086010.P3255575007129056163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083927 x).sum

end

end A086010.P3255575007129056163

namespace A086010

/-- `∑{digits}[n², A083927(#)]` -/
def P3255575007129056163.Spec : Prop :=
  ∀ n, P3255575007129056163.a n = A086010 n

end A086010

/-! ## A086010.P359025769349652240

`∑{digits}[n², A181502(#)]`
-/

namespace A086010.P359025769349652240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181502 x).sum

end

end A086010.P359025769349652240

namespace A086010

/-- `∑{digits}[n², A181502(#)]` -/
def P359025769349652240.Spec : Prop :=
  ∀ n, P359025769349652240.a n = A086010 n

end A086010

/-! ## A086010.P10536709933983492018

`∑{digits}[n², A185012(#)]`
-/

namespace A086010.P10536709933983492018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185012 x).sum

end

end A086010.P10536709933983492018

namespace A086010

/-- `∑{digits}[n², A185012(#)]` -/
def P10536709933983492018.Spec : Prop :=
  ∀ n, P10536709933983492018.a n = A086010 n

end A086010

/-! ## A086010.P5127304078833644348

`∑{digits}[n², A209640(#)]`
-/

namespace A086010.P5127304078833644348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A209640 x).sum

end

end A086010.P5127304078833644348

namespace A086010

/-- `∑{digits}[n², A209640(#)]` -/
def P5127304078833644348.Spec : Prop :=
  ∀ n, P5127304078833644348.a n = A086010 n

end A086010

/-! ## A086010.P7880191294538499538

`∑{digits}[n², A251765(#)]`
-/

namespace A086010.P7880191294538499538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251765 x).sum

end

end A086010.P7880191294538499538

namespace A086010

/-- `∑{digits}[n², A251765(#)]` -/
def P7880191294538499538.Spec : Prop :=
  ∀ n, P7880191294538499538.a n = A086010 n

end A086010

/-! ## A086010.P16874412278987335883

`∑{digits}[n², A269248(#)]`
-/

namespace A086010.P16874412278987335883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A269248 x).sum

end

end A086010.P16874412278987335883

namespace A086010

/-- `∑{digits}[n², A269248(#)]` -/
def P16874412278987335883.Spec : Prop :=
  ∀ n, P16874412278987335883.a n = A086010 n

end A086010

/-! ## A086010.P17507663497155534235

`∑{digits}[n², A290081(#)]`
-/

namespace A086010.P17507663497155534235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A290081 x).sum

end

end A086010.P17507663497155534235

namespace A086010

/-- `∑{digits}[n², A290081(#)]` -/
def P17507663497155534235.Spec : Prop :=
  ∀ n, P17507663497155534235.a n = A086010 n

end A086010

/-! ## A086010.P11059211181171513667

`∑{digits}[n², A316863(#)]`
-/

namespace A086010.P11059211181171513667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316863 x).sum

end

end A086010.P11059211181171513667

namespace A086010

/-- `∑{digits}[n², A316863(#)]` -/
def P11059211181171513667.Spec : Prop :=
  ∀ n, P11059211181171513667.a n = A086010 n

end A086010

/-! ## A086010.P4052310394539424477

`∑{digits}[n², A328794(#)]`
-/

namespace A086010.P4052310394539424477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A328794 x).sum

end

end A086010.P4052310394539424477

namespace A086010

/-- `∑{digits}[n², A328794(#)]` -/
def P4052310394539424477.Spec : Prop :=
  ∀ n, P4052310394539424477.a n = A086010 n

end A086010

/-! ## A086010.P12151896440149714424

`∑{digits}[n², A358759(#)]`
-/

namespace A086010.P12151896440149714424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A358759 x).sum

end

end A086010.P12151896440149714424

namespace A086010

/-- `∑{digits}[n², A358759(#)]` -/
def P12151896440149714424.Spec : Prop :=
  ∀ n, P12151896440149714424.a n = A086010 n

end A086010

/-! ## A086010.P17765009726212524578

`∑{digits}[n², A185014(#²)]`
-/

namespace A086010.P17765009726212524578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185014 (x ^ 2)).sum

end

end A086010.P17765009726212524578

namespace A086010

/-- `∑{digits}[n², A185014(#²)]` -/
def P17765009726212524578.Spec : Prop :=
  ∀ n, P17765009726212524578.a n = A086010 n

end A086010

/-! ## A086010.P7871416155088399369

`∑{digits}[n², A274950(#²)]`
-/

namespace A086010.P7871416155088399369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A274950 (x ^ 2)).sum

end

end A086010.P7871416155088399369

namespace A086010

/-- `∑{digits}[n², A274950(#²)]` -/
def P7871416155088399369.Spec : Prop :=
  ∀ n, P7871416155088399369.a n = A086010 n

end A086010

/-! ## A086010.P4330123792474175631

`∑{digits}[n², A045840(#+1)]`
-/

namespace A086010.P4330123792474175631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045840 (x + 1)).sum

end

end A086010.P4330123792474175631

namespace A086010

/-- `∑{digits}[n², A045840(#+1)]` -/
def P4330123792474175631.Spec : Prop :=
  ∀ n, P4330123792474175631.a n = A086010 n

end A086010

/-! ## A086010.P14796958499773310430

`∑{digits}[n², A316864(#+1)]`
-/

namespace A086010.P14796958499773310430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316864 (x + 1)).sum

end

end A086010.P14796958499773310430

namespace A086010

/-- `∑{digits}[n², A316864(#+1)]` -/
def P14796958499773310430.Spec : Prop :=
  ∀ n, P14796958499773310430.a n = A086010 n

end A086010

/-! ## A086010.P5841997476780069372

`∑{digits}[n², A316867(#+4)]`
-/

namespace A086010.P5841997476780069372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316867 (x + 4)).sum

end

end A086010.P5841997476780069372

namespace A086010

/-- `∑{digits}[n², A316867(#+4)]` -/
def P5841997476780069372.Spec : Prop :=
  ∀ n, P5841997476780069372.a n = A086010 n

end A086010

/-! ## A086010.P4799617757599720968

`∑{digits}[n², A051344(A006369(#))]`
-/

namespace A086010.P4799617757599720968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 (A006369 x).toNat).sum

end

end A086010.P4799617757599720968

namespace A086010

/-- `∑{digits}[n², A051344(A006369(#))]` -/
def P4799617757599720968.Spec : Prop :=
  ∀ n, P4799617757599720968.a n = A086010 n

end A086010

/-! ## A086010.P7638708997639074867

`∑{digits}[n², A130125(A227571(#))]`
-/

namespace A086010.P7638708997639074867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A130125 (A227571 x).toNat).sum

end

end A086010.P7638708997639074867

namespace A086010

/-- `∑{digits}[n², A130125(A227571(#))]` -/
def P7638708997639074867.Spec : Prop :=
  ∀ n, P7638708997639074867.a n = A086010 n

end A086010

/-! ## A086010.P13155963617910679442

`A316863(A056865(n))`
-/

namespace A086010.P13155963617910679442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A056865 n).toNat

end

end A086010.P13155963617910679442

namespace A086010

/-- `A316863(A056865(n))` -/
def P13155963617910679442.Spec : Prop :=
  ∀ n, P13155963617910679442.a n = A086010 n

end A086010

/-!
# A086011: Number of 3's in decimal expansion of n^2.

The programs for A086011, the canonical program `A086011.P2844651599198525403` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086011 has offset 0).

The definition of A086011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086011.P2844651599198525403

`∑{digits}[n², val(2*n+1+#, n+2)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086011

/-- `∑{digits}[n², val(2*n+1+#, n+2)]` -/
def P2844651599198525403.Spec : Prop :=
  ∀ n, (P2844651599198525403.a n : ℤ) = A086011 n

theorem P2844651599198525403.correct : P2844651599198525403.Spec := by
  intro n
  simp only [A086011]

end A086011

/-! ## A086011.P7564696757653955138

`∑{digits}[n², A008437(#)]`
-/

namespace A086011.P7564696757653955138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008437 x).sum

end

end A086011.P7564696757653955138

namespace A086011

/-- `∑{digits}[n², A008437(#)]` -/
def P7564696757653955138.Spec : Prop :=
  ∀ n, P7564696757653955138.a n = A086011 n

end A086011

/-! ## A086011.P15461379241132778367

`∑{digits}[n², A025456(#)]`
-/

namespace A086011.P15461379241132778367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025456 x).sum

end

end A086011.P15461379241132778367

namespace A086011

/-- `∑{digits}[n², A025456(#)]` -/
def P15461379241132778367.Spec : Prop :=
  ∀ n, P15461379241132778367.a n = A086011 n

end A086011

/-! ## A086011.P12390429827055659038

`∑{digits}[n², A045840(#)]`
-/

namespace A086011.P12390429827055659038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045840 x).sum

end

end A086011.P12390429827055659038

namespace A086011

/-- `∑{digits}[n², A045840(#)]` -/
def P12390429827055659038.Spec : Prop :=
  ∀ n, P12390429827055659038.a n = A086011 n

end A086011

/-! ## A086011.P1083498904259537589

`∑{digits}[n², A051344(#)]`
-/

namespace A086011.P1083498904259537589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A051344 x).sum

end

end A086011.P1083498904259537589

namespace A086011

/-- `∑{digits}[n², A051344(#)]` -/
def P1083498904259537589.Spec : Prop :=
  ∀ n, P1083498904259537589.a n = A086011 n

end A086011

/-! ## A086011.P18296158896147267181

`∑{digits}[n², A083935(#)]`
-/

namespace A086011.P18296158896147267181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083935 x).sum

end

end A086011.P18296158896147267181

namespace A086011

/-- `∑{digits}[n², A083935(#)]` -/
def P18296158896147267181.Spec : Prop :=
  ∀ n, P18296158896147267181.a n = A086011 n

end A086011

/-! ## A086011.P11188706348425488583

`∑{digits}[n², A160753(#)]`
-/

namespace A086011.P11188706348425488583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160753 x).sum

end

end A086011.P11188706348425488583

namespace A086011

/-- `∑{digits}[n², A160753(#)]` -/
def P11188706348425488583.Spec : Prop :=
  ∀ n, P11188706348425488583.a n = A086011 n

end A086011

/-! ## A086011.P18201152155223227096

`∑{digits}[n², A185013(#)]`
-/

namespace A086011.P18201152155223227096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185013 x).sum

end

end A086011.P18201152155223227096

namespace A086011

/-- `∑{digits}[n², A185013(#)]` -/
def P18201152155223227096.Spec : Prop :=
  ∀ n, P18201152155223227096.a n = A086011 n

end A086011

/-! ## A086011.P6482988577898802965

`∑{digits}[n², A193243(#)]`
-/

namespace A086011.P6482988577898802965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A193243 x).sum

end

end A086011.P6482988577898802965

namespace A086011

/-- `∑{digits}[n², A193243(#)]` -/
def P6482988577898802965.Spec : Prop :=
  ∀ n, P6482988577898802965.a n = A086011 n

end A086011

/-! ## A086011.P6284593020947581804

`∑{digits}[n², A251764(#)]`
-/

namespace A086011.P6284593020947581804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251764 x).sum

end

end A086011.P6284593020947581804

namespace A086011

/-- `∑{digits}[n², A251764(#)]` -/
def P6284593020947581804.Spec : Prop :=
  ∀ n, P6284593020947581804.a n = A086011 n

end A086011

/-! ## A086011.P6118905174514853064

`∑{digits}[n², A316864(#)]`
-/

namespace A086011.P6118905174514853064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316864 x).sum

end

end A086011.P6118905174514853064

namespace A086011

/-- `∑{digits}[n², A316864(#)]` -/
def P6118905174514853064.Spec : Prop :=
  ∀ n, P6118905174514853064.a n = A086011 n

end A086011

/-! ## A086011.P1890898837281388046

`∑{digits}[n², A011702(#²)]`
-/

namespace A086011.P1890898837281388046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011702 (x ^ 2)).sum

end

end A086011.P1890898837281388046

namespace A086011

/-- `∑{digits}[n², A011702(#²)]` -/
def P1890898837281388046.Spec : Prop :=
  ∀ n, P1890898837281388046.a n = A086011 n

end A086011

/-! ## A086011.P10213692684844901487

`∑{digits}[n², A011713(#²)]`
-/

namespace A086011.P10213692684844901487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011713 (x ^ 2)).sum

end

end A086011.P10213692684844901487

namespace A086011

/-- `∑{digits}[n², A011713(#²)]` -/
def P10213692684844901487.Spec : Prop :=
  ∀ n, P10213692684844901487.a n = A086011 n

end A086011

/-! ## A086011.P2233362525362532062

`∑{digits}[n², A011717(#²)]`
-/

namespace A086011.P2233362525362532062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011717 (x ^ 2)).sum

end

end A086011.P2233362525362532062

namespace A086011

/-- `∑{digits}[n², A011717(#²)]` -/
def P2233362525362532062.Spec : Prop :=
  ∀ n, P2233362525362532062.a n = A086011 n

end A086011

/-! ## A086011.P4747918194896744689

`∑{digits}[n², A025468(#²)]`
-/

namespace A086011.P4747918194896744689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025468 (x ^ 2)).sum

end

end A086011.P4747918194896744689

namespace A086011

/-- `∑{digits}[n², A025468(#²)]` -/
def P4747918194896744689.Spec : Prop :=
  ∀ n, P4747918194896744689.a n = A086011 n

end A086011

/-! ## A086011.P10905030474790825782

`∑{digits}[n², A277158(#²)]`
-/

namespace A086011.P10905030474790825782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A277158 (x ^ 2)).sum

end

end A086011.P10905030474790825782

namespace A086011

/-- `∑{digits}[n², A277158(#²)]` -/
def P10905030474790825782.Spec : Prop :=
  ∀ n, P10905030474790825782.a n = A086011 n

end A086011

/-! ## A086011.P502719662336705589

`∑{digits}[n², A025458(#+2)]`
-/

namespace A086011.P502719662336705589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025458 (x + 2)).sum

end

end A086011.P502719662336705589

namespace A086011

/-- `∑{digits}[n², A025458(#+2)]` -/
def P502719662336705589.Spec : Prop :=
  ∀ n, P502719662336705589.a n = A086011 n

end A086011

/-! ## A086011.P12678362008715799996

`∑{digits}[n², A014082(#+4)]`
-/

namespace A086011.P12678362008715799996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014082 (x + 4)).sum

end

end A086011.P12678362008715799996

namespace A086011

/-- `∑{digits}[n², A014082(#+4)]` -/
def P12678362008715799996.Spec : Prop :=
  ∀ n, P12678362008715799996.a n = A086011 n

end A086011

/-! ## A086011.P17525992899803784876

`∑{digits}[n², A101659(2*#)]`
-/

namespace A086011.P17525992899803784876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A101659 (2 * x)).sum

end

end A086011.P17525992899803784876

namespace A086011

/-- `∑{digits}[n², A101659(2*#)]` -/
def P17525992899803784876.Spec : Prop :=
  ∀ n, P17525992899803784876.a n = A086011 n

end A086011

/-! ## A086011.P1469592219401354899

`∑{digits}[n², A059648(A000045(#))]`
-/

namespace A086011.P1469592219401354899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A059648 (A000045 x).toNat).sum

end

end A086011.P1469592219401354899

namespace A086011

/-- `∑{digits}[n², A059648(A000045(#))]` -/
def P1469592219401354899.Spec : Prop :=
  ∀ n, P1469592219401354899.a n = A086011 n

end A086011

/-!
# A086012: Number of 4's in decimal expansion of n^2.

The programs for A086012, the canonical program `A086012.P17409156348527157203` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086012 has offset 0).

The definition of A086012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086012.P17409156348527157203

`∑{digits}[n², val(#+2, 6)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086012

/-- `∑{digits}[n², val(#+2, 6)]` -/
def P17409156348527157203.Spec : Prop :=
  ∀ n, (P17409156348527157203.a n : ℤ) = A086012 n

theorem P17409156348527157203.correct : P17409156348527157203.Spec := by
  intro n
  simp only [A086012]

end A086012

/-! ## A086012.P12140612278079352221

`∑{digits}[n², A004198(#)]`
-/

namespace A086012.P12140612278079352221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 x).sum

end

end A086012.P12140612278079352221

namespace A086012

/-- `∑{digits}[n², A004198(#)]` -/
def P12140612278079352221.Spec : Prop :=
  ∀ n, P12140612278079352221.a n = A086012 n

end A086012

/-! ## A086012.P13375451774763267186

`∑{digits}[n², A025457(#)]`
-/

namespace A086012.P13375451774763267186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025457 x).sum

end

end A086012.P13375451774763267186

namespace A086012

/-- `∑{digits}[n², A025457(#)]` -/
def P13375451774763267186.Spec : Prop :=
  ∀ n, P13375451774763267186.a n = A086012 n

end A086012

/-! ## A086012.P11688695121982802518

`∑{digits}[n², A050602(#)]`
-/

namespace A086012.P11688695121982802518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A050602 x).sum

end

end A086012.P11688695121982802518

namespace A086012

/-- `∑{digits}[n², A050602(#)]` -/
def P11688695121982802518.Spec : Prop :=
  ∀ n, P11688695121982802518.a n = A086012 n

end A086012

/-! ## A086012.P4175086589015673651

`∑{digits}[n², A065040(#)]`
-/

namespace A086012.P4175086589015673651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065040 x).sum

end

end A086012.P4175086589015673651

namespace A086012

/-- `∑{digits}[n², A065040(#)]` -/
def P4175086589015673651.Spec : Prop :=
  ∀ n, P4175086589015673651.a n = A086012 n

end A086012

/-! ## A086012.P1051649577853671652

`∑{digits}[n², A102037(#)]`
-/

namespace A086012.P1051649577853671652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A102037 x).sum

end

end A086012.P1051649577853671652

namespace A086012

/-- `∑{digits}[n², A102037(#)]` -/
def P1051649577853671652.Spec : Prop :=
  ∀ n, P1051649577853671652.a n = A086012 n

end A086012

/-! ## A086012.P3883541907895636451

`∑{digits}[n², A185014(#)]`
-/

namespace A086012.P3883541907895636451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185014 x).sum

end

end A086012.P3883541907895636451

namespace A086012

/-- `∑{digits}[n², A185014(#)]` -/
def P3883541907895636451.Spec : Prop :=
  ∀ n, P3883541907895636451.a n = A086012 n

end A086012

/-! ## A086012.P10865370682615720940

`∑{digits}[n², A196096(#)]`
-/

namespace A086012.P10865370682615720940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196096 x).sum

end

end A086012.P10865370682615720940

namespace A086012

/-- `∑{digits}[n², A196096(#)]` -/
def P10865370682615720940.Spec : Prop :=
  ∀ n, P10865370682615720940.a n = A086012 n

end A086012

/-! ## A086012.P6438065244328946854

`∑{digits}[n², A219463(#)]`
-/

namespace A086012.P6438065244328946854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219463 x).sum

end

end A086012.P6438065244328946854

namespace A086012

/-- `∑{digits}[n², A219463(#)]` -/
def P6438065244328946854.Spec : Prop :=
  ∀ n, P6438065244328946854.a n = A086012 n

end A086012

/-! ## A086012.P12506876903069172253

`∑{digits}[n², A221152(#)]`
-/

namespace A086012.P12506876903069172253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A221152 x).sum

end

end A086012.P12506876903069172253

namespace A086012

/-- `∑{digits}[n², A221152(#)]` -/
def P12506876903069172253.Spec : Prop :=
  ∀ n, P12506876903069172253.a n = A086012 n

end A086012

/-! ## A086012.P2666937120863065148

`∑{digits}[n², A251763(#)]`
-/

namespace A086012.P2666937120863065148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251763 x).sum

end

end A086012.P2666937120863065148

namespace A086012

/-- `∑{digits}[n², A251763(#)]` -/
def P2666937120863065148.Spec : Prop :=
  ∀ n, P2666937120863065148.a n = A086012 n

end A086012

/-! ## A086012.P11808000365193425099

`∑{digits}[n², A257685(#)]`
-/

namespace A086012.P11808000365193425099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A257685 x).sum

end

end A086012.P11808000365193425099

namespace A086012

/-- `∑{digits}[n², A257685(#)]` -/
def P11808000365193425099.Spec : Prop :=
  ∀ n, P11808000365193425099.a n = A086012 n

end A086012

/-! ## A086012.P11712871850953706326

`∑{digits}[n², A261084(#)]`
-/

namespace A086012.P11712871850953706326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A261084 x).sum

end

end A086012.P11712871850953706326

namespace A086012

/-- `∑{digits}[n², A261084(#)]` -/
def P11712871850953706326.Spec : Prop :=
  ∀ n, P11712871850953706326.a n = A086012 n

end A086012

/-! ## A086012.P8108541675379327655

`∑{digits}[n², A285118(#)]`
-/

namespace A086012.P8108541675379327655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A285118 x).sum

end

end A086012.P8108541675379327655

namespace A086012

/-- `∑{digits}[n², A285118(#)]` -/
def P8108541675379327655.Spec : Prop :=
  ∀ n, P8108541675379327655.a n = A086012 n

end A086012

/-! ## A086012.P5323395010259725833

`∑{digits}[n², A316865(#)]`
-/

namespace A086012.P5323395010259725833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316865 x).sum

end

end A086012.P5323395010259725833

namespace A086012

/-- `∑{digits}[n², A316865(#)]` -/
def P5323395010259725833.Spec : Prop :=
  ∀ n, P5323395010259725833.a n = A086012 n

end A086012

/-! ## A086012.P2317326735818200188

`∑{digits}[n², A324351(#)]`
-/

namespace A086012.P2317326735818200188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A324351 x).sum

end

end A086012.P2317326735818200188

namespace A086012

/-- `∑{digits}[n², A324351(#)]` -/
def P2317326735818200188.Spec : Prop :=
  ∀ n, P2317326735818200188.a n = A086012 n

end A086012

/-! ## A086012.P719059080572537574

`∑{digits}[n², A331902(#)]`
-/

namespace A086012.P719059080572537574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A331902 x).sum

end

end A086012.P719059080572537574

namespace A086012

/-- `∑{digits}[n², A331902(#)]` -/
def P719059080572537574.Spec : Prop :=
  ∀ n, P719059080572537574.a n = A086012 n

end A086012

/-! ## A086012.P1421372142131771994

`∑{digits}[n², A334348(#)]`
-/

namespace A086012.P1421372142131771994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A334348 x).sum

end

end A086012.P1421372142131771994

namespace A086012

/-- `∑{digits}[n², A334348(#)]` -/
def P1421372142131771994.Spec : Prop :=
  ∀ n, P1421372142131771994.a n = A086012 n

end A086012

/-! ## A086012.P11074093232802846538

`∑{digits}[n², A340391(#)]`
-/

namespace A086012.P11074093232802846538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A340391 x).sum

end

end A086012.P11074093232802846538

namespace A086012

/-- `∑{digits}[n², A340391(#)]` -/
def P11074093232802846538.Spec : Prop :=
  ∀ n, P11074093232802846538.a n = A086012 n

end A086012

/-! ## A086012.P5888117716452942773

`∑{digits}[n², A025456(A000045(#))]`
-/

namespace A086012.P5888117716452942773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025456 (A000045 x).toNat).sum

end

end A086012.P5888117716452942773

namespace A086012

/-- `∑{digits}[n², A025456(A000045(#))]` -/
def P5888117716452942773.Spec : Prop :=
  ∀ n, P5888117716452942773.a n = A086012 n

end A086012

/-!
# A086013: Number of 5's in decimal expansion of n^2.

The programs for A086013, the canonical program `A086013.P12771550660744428136` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086013 has offset 0).

The definition of A086013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086013.P12771550660744428136

`∑{digits}[n², val(#+1, 6)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086013

/-- `∑{digits}[n², val(#+1, 6)]` -/
def P12771550660744428136.Spec : Prop :=
  ∀ n, (P12771550660744428136.a n : ℤ) = A086013 n

theorem P12771550660744428136.correct : P12771550660744428136.Spec := by
  intro n
  simp only [A086013]

end A086013

/-! ## A086013.P5702488824515255041

`∑{digits}[n², A011673(#)]`
-/

namespace A086013.P5702488824515255041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011673 x).sum

end

end A086013.P5702488824515255041

namespace A086013

/-- `∑{digits}[n², A011673(#)]` -/
def P5702488824515255041.Spec : Prop :=
  ∀ n, P5702488824515255041.a n = A086013 n

end A086013

/-! ## A086013.P13153040594738822285

`∑{digits}[n², A025436(#)]`
-/

namespace A086013.P13153040594738822285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025436 x).sum

end

end A086013.P13153040594738822285

namespace A086013

/-- `∑{digits}[n², A025436(#)]` -/
def P13153040594738822285.Spec : Prop :=
  ∀ n, P13153040594738822285.a n = A086013 n

end A086013

/-! ## A086013.P14131474198815209391

`∑{digits}[n², A025441(#)]`
-/

namespace A086013.P14131474198815209391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025441 x).sum

end

end A086013.P14131474198815209391

namespace A086013

/-- `∑{digits}[n², A025441(#)]` -/
def P14131474198815209391.Spec : Prop :=
  ∀ n, P14131474198815209391.a n = A086013 n

end A086013

/-! ## A086013.P13398090055832611466

`∑{digits}[n², A025458(#)]`
-/

namespace A086013.P13398090055832611466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025458 x).sum

end

end A086013.P13398090055832611466

namespace A086013

/-- `∑{digits}[n², A025458(#)]` -/
def P13398090055832611466.Spec : Prop :=
  ∀ n, P13398090055832611466.a n = A086013 n

end A086013

/-! ## A086013.P17928230880481425339

`∑{digits}[n², A026826(#)]`
-/

namespace A086013.P17928230880481425339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026826 x).sum

end

end A086013.P17928230880481425339

namespace A086013

/-- `∑{digits}[n², A026826(#)]` -/
def P17928230880481425339.Spec : Prop :=
  ∀ n, P17928230880481425339.a n = A086013 n

end A086013

/-! ## A086013.P1582761888900824589

`∑{digits}[n², A065714(#)]`
-/

namespace A086013.P1582761888900824589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065714 x).sum

end

end A086013.P1582761888900824589

namespace A086013

/-- `∑{digits}[n², A065714(#)]` -/
def P1582761888900824589.Spec : Prop :=
  ∀ n, P1582761888900824589.a n = A086013 n

end A086013

/-! ## A086013.P8952379678312326846

`∑{digits}[n², A085859(#)]`
-/

namespace A086013.P8952379678312326846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085859 x).sum

end

end A086013.P8952379678312326846

namespace A086013

/-- `∑{digits}[n², A085859(#)]` -/
def P8952379678312326846.Spec : Prop :=
  ∀ n, P8952379678312326846.a n = A086013 n

end A086013

/-! ## A086013.P4532028782810578407

`∑{digits}[n², A086010(#)]`
-/

namespace A086013.P4532028782810578407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A086010 x).sum

end

end A086013.P4532028782810578407

namespace A086013

/-- `∑{digits}[n², A086010(#)]` -/
def P4532028782810578407.Spec : Prop :=
  ∀ n, P4532028782810578407.a n = A086013 n

end A086013

/-! ## A086013.P17507688652167609861

`∑{digits}[n², A094912(#)]`
-/

namespace A086013.P17507688652167609861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A094912 x).sum

end

end A086013.P17507688652167609861

namespace A086013

/-- `∑{digits}[n², A094912(#)]` -/
def P17507688652167609861.Spec : Prop :=
  ∀ n, P17507688652167609861.a n = A086013 n

end A086013

/-! ## A086013.P15389063648436543493

`∑{digits}[n², A103673(#)]`
-/

namespace A086013.P15389063648436543493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A103673 x).sum

end

end A086013.P15389063648436543493

namespace A086013

/-- `∑{digits}[n², A103673(#)]` -/
def P15389063648436543493.Spec : Prop :=
  ∀ n, P15389063648436543493.a n = A086013 n

end A086013

/-! ## A086013.P18415687890511828132

`∑{digits}[n², A185015(#)]`
-/

namespace A086013.P18415687890511828132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185015 x).sum

end

end A086013.P18415687890511828132

namespace A086013

/-- `∑{digits}[n², A185015(#)]` -/
def P18415687890511828132.Spec : Prop :=
  ∀ n, P18415687890511828132.a n = A086013 n

end A086013

/-! ## A086013.P8472264627101153129

`∑{digits}[n², A186745(#)]`
-/

namespace A086013.P8472264627101153129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A186745 x).sum

end

end A086013.P8472264627101153129

namespace A086013

/-- `∑{digits}[n², A186745(#)]` -/
def P8472264627101153129.Spec : Prop :=
  ∀ n, P8472264627101153129.a n = A086013 n

end A086013

/-! ## A086013.P2402715502408150805

`∑{digits}[n², A196272(#)]`
-/

namespace A086013.P2402715502408150805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196272 x).sum

end

end A086013.P2402715502408150805

namespace A086013

/-- `∑{digits}[n², A196272(#)]` -/
def P2402715502408150805.Spec : Prop :=
  ∀ n, P2402715502408150805.a n = A086013 n

end A086013

/-! ## A086013.P17922083823745216240

`∑{digits}[n², A198315(#)]`
-/

namespace A086013.P17922083823745216240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A198315 x).sum

end

end A086013.P17922083823745216240

namespace A086013

/-- `∑{digits}[n², A198315(#)]` -/
def P17922083823745216240.Spec : Prop :=
  ∀ n, P17922083823745216240.a n = A086013 n

end A086013

/-! ## A086013.P1896265844573780951

`∑{digits}[n², A224447(#)]`
-/

namespace A086013.P1896265844573780951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A224447 x).sum

end

end A086013.P1896265844573780951

namespace A086013

/-- `∑{digits}[n², A224447(#)]` -/
def P1896265844573780951.Spec : Prop :=
  ∀ n, P1896265844573780951.a n = A086013 n

end A086013

/-! ## A086013.P18394444435526201379

`∑{digits}[n², A229656(#)]`
-/

namespace A086013.P18394444435526201379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A229656 x).sum

end

end A086013.P18394444435526201379

namespace A086013

/-- `∑{digits}[n², A229656(#)]` -/
def P18394444435526201379.Spec : Prop :=
  ∀ n, P18394444435526201379.a n = A086013 n

end A086013

/-! ## A086013.P1813678393372510594

`∑{digits}[n², A251762(#)]`
-/

namespace A086013.P1813678393372510594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251762 x).sum

end

end A086013.P1813678393372510594

namespace A086013

/-- `∑{digits}[n², A251762(#)]` -/
def P1813678393372510594.Spec : Prop :=
  ∀ n, P1813678393372510594.a n = A086013 n

end A086013

/-! ## A086013.P11371976702496675408

`∑{digits}[n², A275936(#)]`
-/

namespace A086013.P11371976702496675408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A275936 x).sum

end

end A086013.P11371976702496675408

namespace A086013

/-- `∑{digits}[n², A275936(#)]` -/
def P11371976702496675408.Spec : Prop :=
  ∀ n, P11371976702496675408.a n = A086013 n

end A086013

/-! ## A086013.P1475705519069074720

`∑{digits}[n², A275947(#)]`
-/

namespace A086013.P1475705519069074720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A275947 x).sum

end

end A086013.P1475705519069074720

namespace A086013

/-- `∑{digits}[n², A275947(#)]` -/
def P1475705519069074720.Spec : Prop :=
  ∀ n, P1475705519069074720.a n = A086013 n

end A086013

/-!
# A086014: Number of 6's in decimal expansion of n^2.

The programs for A086014, the canonical program `A086014.P12741057087969494046` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086014 has offset 0).

The definition of A086014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086014.P14872794198118961412

`∑{digits}[n², A002924(#)]`
-/

namespace A086014.P14872794198118961412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A002924 x).sum

end

end A086014.P14872794198118961412

namespace A086014

/-- `∑{digits}[n², A002924(#)]` -/
def P14872794198118961412.Spec : Prop :=
  ∀ n, P14872794198118961412.a n = A086014 n

end A086014

/-! ## A086014.P12741057087969494046

`∑{digits}[n², A011675(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086014

/-- `∑{digits}[n², A011675(#)]` -/
def P12741057087969494046.Spec : Prop :=
  ∀ n, P12741057087969494046.a n = A086014 n

theorem P12741057087969494046.correct : P12741057087969494046.Spec := by
  intro n
  simp only [A086014]

end A086014

/-! ## A086014.P9883269990971660266

`∑{digits}[n², A011686(#)]`
-/

namespace A086014.P9883269990971660266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011686 x).sum

end

end A086014.P9883269990971660266

namespace A086014

/-- `∑{digits}[n², A011686(#)]` -/
def P9883269990971660266.Spec : Prop :=
  ∀ n, P9883269990971660266.a n = A086014 n

end A086014

/-! ## A086014.P15149471263561416298

`∑{digits}[n², A011687(#)]`
-/

namespace A086014.P15149471263561416298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011687 x).sum

end

end A086014.P15149471263561416298

namespace A086014

/-- `∑{digits}[n², A011687(#)]` -/
def P15149471263561416298.Spec : Prop :=
  ∀ n, P15149471263561416298.a n = A086014 n

end A086014

/-! ## A086014.P1189167922907281936

`∑{digits}[n², A025459(#)]`
-/

namespace A086014.P1189167922907281936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025459 x).sum

end

end A086014.P1189167922907281936

namespace A086014

/-- `∑{digits}[n², A025459(#)]` -/
def P1189167922907281936.Spec : Prop :=
  ∀ n, P1189167922907281936.a n = A086014 n

end A086014

/-! ## A086014.P8553789882961308766

`∑{digits}[n², A026799(#)]`
-/

namespace A086014.P8553789882961308766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026799 x).sum

end

end A086014.P8553789882961308766

namespace A086014

/-- `∑{digits}[n², A026799(#)]` -/
def P8553789882961308766.Spec : Prop :=
  ∀ n, P8553789882961308766.a n = A086014 n

end A086014

/-! ## A086014.P4805963333964852346

`∑{digits}[n², A026827(#)]`
-/

namespace A086014.P4805963333964852346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026827 x).sum

end

end A086014.P4805963333964852346

namespace A086014

/-- `∑{digits}[n², A026827(#)]` -/
def P4805963333964852346.Spec : Prop :=
  ∀ n, P4805963333964852346.a n = A086014 n

end A086014

/-! ## A086014.P2581618406763405913

`∑{digits}[n², A035588(#)]`
-/

namespace A086014.P2581618406763405913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A035588 x).sum

end

end A086014.P2581618406763405913

namespace A086014

/-- `∑{digits}[n², A035588(#)]` -/
def P2581618406763405913.Spec : Prop :=
  ∀ n, P2581618406763405913.a n = A086014 n

end A086014

/-! ## A086014.P9844045270148792415

`∑{digits}[n², A046781(#)]`
-/

namespace A086014.P9844045270148792415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A046781 x).sum

end

end A086014.P9844045270148792415

namespace A086014

/-- `∑{digits}[n², A046781(#)]` -/
def P9844045270148792415.Spec : Prop :=
  ∀ n, P9844045270148792415.a n = A086014 n

end A086014

/-! ## A086014.P6867716232150355705

`∑{digits}[n², A059782(#)]`
-/

namespace A086014.P6867716232150355705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A059782 x).sum

end

end A086014.P6867716232150355705

namespace A086014

/-- `∑{digits}[n², A059782(#)]` -/
def P6867716232150355705.Spec : Prop :=
  ∀ n, P6867716232150355705.a n = A086014 n

end A086014

/-! ## A086014.P14414214899642959381

`∑{digits}[n², A079071(#)]`
-/

namespace A086014.P14414214899642959381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079071 x).sum

end

end A086014.P14414214899642959381

namespace A086014

/-- `∑{digits}[n², A079071(#)]` -/
def P14414214899642959381.Spec : Prop :=
  ∀ n, P14414214899642959381.a n = A086014 n

end A086014

/-! ## A086014.P16714482988067154178

`∑{digits}[n², A079365(#)]`
-/

namespace A086014.P16714482988067154178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079365 x).sum

end

end A086014.P16714482988067154178

namespace A086014

/-- `∑{digits}[n², A079365(#)]` -/
def P16714482988067154178.Spec : Prop :=
  ∀ n, P16714482988067154178.a n = A086014 n

end A086014

/-! ## A086014.P13460163565640174841

`∑{digits}[n², A079692(#)]`
-/

namespace A086014.P13460163565640174841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079692 x).sum

end

end A086014.P13460163565640174841

namespace A086014

/-- `∑{digits}[n², A079692(#)]` -/
def P13460163565640174841.Spec : Prop :=
  ∀ n, P13460163565640174841.a n = A086014 n

end A086014

/-! ## A086014.P16319524295194868106

`∑{digits}[n², A083928(#)]`
-/

namespace A086014.P16319524295194868106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083928 x).sum

end

end A086014.P16319524295194868106

namespace A086014

/-- `∑{digits}[n², A083928(#)]` -/
def P16319524295194868106.Spec : Prop :=
  ∀ n, P16319524295194868106.a n = A086014 n

end A086014

/-! ## A086014.P14361675472894379820

`∑{digits}[n², A085862(#)]`
-/

namespace A086014.P14361675472894379820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A085862 x).sum

end

end A086014.P14361675472894379820

namespace A086014

/-- `∑{digits}[n², A085862(#)]` -/
def P14361675472894379820.Spec : Prop :=
  ∀ n, P14361675472894379820.a n = A086014 n

end A086014

/-! ## A086014.P3941749103173636066

`∑{digits}[n², A086011(#)]`
-/

namespace A086014.P3941749103173636066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A086011 x).sum

end

end A086014.P3941749103173636066

namespace A086014

/-- `∑{digits}[n², A086011(#)]` -/
def P3941749103173636066.Spec : Prop :=
  ∀ n, P3941749103173636066.a n = A086014 n

end A086014

/-! ## A086014.P7242715562046506265

`∑{digits}[n², A087773(#)]`
-/

namespace A086014.P7242715562046506265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A087773 x).sum

end

end A086014.P7242715562046506265

namespace A086014

/-- `∑{digits}[n², A087773(#)]` -/
def P7242715562046506265.Spec : Prop :=
  ∀ n, P7242715562046506265.a n = A086014 n

end A086014

/-! ## A086014.P10627949792629171186

`∑{digits}[n², A103674(#)]`
-/

namespace A086014.P10627949792629171186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A103674 x).sum

end

end A086014.P10627949792629171186

namespace A086014

/-- `∑{digits}[n², A103674(#)]` -/
def P10627949792629171186.Spec : Prop :=
  ∀ n, P10627949792629171186.a n = A086014 n

end A086014

/-! ## A086014.P1235987489388564867

`∑{digits}[n², A124760(#)]`
-/

namespace A086014.P1235987489388564867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A124760 x).sum

end

end A086014.P1235987489388564867

namespace A086014

/-- `∑{digits}[n², A124760(#)]` -/
def P1235987489388564867.Spec : Prop :=
  ∀ n, P1235987489388564867.a n = A086014 n

end A086014

/-! ## A086014.P11655699278418700053

`∑{digits}[n², A185016(#)]`
-/

namespace A086014.P11655699278418700053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A185016 x).sum

end

end A086014.P11655699278418700053

namespace A086014

/-- `∑{digits}[n², A185016(#)]` -/
def P11655699278418700053.Spec : Prop :=
  ∀ n, P11655699278418700053.a n = A086014 n

end A086014

/-!
# A086015: Number of 7's in decimal expansion of n^2.

The programs for A086015, the canonical program `A086015.P8185681382737640833` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086015 has offset 0).

The definition of A086015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086015.P17195953270760915897

`∑{digits}[n², A011693(#)]`
-/

namespace A086015.P17195953270760915897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011693 x).sum

end

end A086015.P17195953270760915897

namespace A086015

/-- `∑{digits}[n², A011693(#)]` -/
def P17195953270760915897.Spec : Prop :=
  ∀ n, P17195953270760915897.a n = A086015 n

end A086015

/-! ## A086015.P16104950411378284269

`∑{digits}[n², A011694(#)]`
-/

namespace A086015.P16104950411378284269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011694 x).sum

end

end A086015.P16104950411378284269

namespace A086015

/-- `∑{digits}[n², A011694(#)]` -/
def P16104950411378284269.Spec : Prop :=
  ∀ n, P16104950411378284269.a n = A086015 n

end A086015

/-! ## A086015.P17528067842398132191

`∑{digits}[n², A011696(#)]`
-/

namespace A086015.P17528067842398132191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011696 x).sum

end

end A086015.P17528067842398132191

namespace A086015

/-- `∑{digits}[n², A011696(#)]` -/
def P17528067842398132191.Spec : Prop :=
  ∀ n, P17528067842398132191.a n = A086015 n

end A086015

/-! ## A086015.P2312280337084560789

`∑{digits}[n², A011712(#)]`
-/

namespace A086015.P2312280337084560789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011712 x).sum

end

end A086015.P2312280337084560789

namespace A086015

/-- `∑{digits}[n², A011712(#)]` -/
def P2312280337084560789.Spec : Prop :=
  ∀ n, P2312280337084560789.a n = A086015 n

end A086015

/-! ## A086015.P13861566424920954282

`∑{digits}[n², A011715(#)]`
-/

namespace A086015.P13861566424920954282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011715 x).sum

end

end A086015.P13861566424920954282

namespace A086015

/-- `∑{digits}[n², A011715(#)]` -/
def P13861566424920954282.Spec : Prop :=
  ∀ n, P13861566424920954282.a n = A086015 n

end A086015

/-! ## A086015.P14220567222272037546

`∑{digits}[n², A011721(#)]`
-/

namespace A086015.P14220567222272037546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011721 x).sum

end

end A086015.P14220567222272037546

namespace A086015

/-- `∑{digits}[n², A011721(#)]` -/
def P14220567222272037546.Spec : Prop :=
  ∀ n, P14220567222272037546.a n = A086015 n

end A086015

/-! ## A086015.P8185681382737640833

`∑{digits}[n², A014082(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086015

/-- `∑{digits}[n², A014082(#)]` -/
def P8185681382737640833.Spec : Prop :=
  ∀ n, P8185681382737640833.a n = A086015 n

theorem P8185681382737640833.correct : P8185681382737640833.Spec := by
  intro n
  simp only [A086015]

end A086015

/-! ## A086015.P17608497842573778877

`∑{digits}[n², A025431(#)]`
-/

namespace A086015.P17608497842573778877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025431 x).sum

end

end A086015.P17608497842573778877

namespace A086015

/-- `∑{digits}[n², A025431(#)]` -/
def P17608497842573778877.Spec : Prop :=
  ∀ n, P17608497842573778877.a n = A086015 n

end A086015

/-! ## A086015.P10587848809441182846

`∑{digits}[n², A025460(#)]`
-/

namespace A086015.P10587848809441182846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025460 x).sum

end

end A086015.P10587848809441182846

namespace A086015

/-- `∑{digits}[n², A025460(#)]` -/
def P10587848809441182846.Spec : Prop :=
  ∀ n, P10587848809441182846.a n = A086015 n

end A086015

/-! ## A086015.P14499821245570899016

`∑{digits}[n², A026800(#)]`
-/

namespace A086015.P14499821245570899016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026800 x).sum

end

end A086015.P14499821245570899016

namespace A086015

/-- `∑{digits}[n², A026800(#)]` -/
def P14499821245570899016.Spec : Prop :=
  ∀ n, P14499821245570899016.a n = A086015 n

end A086015

/-! ## A086015.P6685200850047643254

`∑{digits}[n², A026828(#)]`
-/

namespace A086015.P6685200850047643254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026828 x).sum

end

end A086015.P6685200850047643254

namespace A086015

/-- `∑{digits}[n², A026828(#)]` -/
def P6685200850047643254.Spec : Prop :=
  ∀ n, P6685200850047643254.a n = A086015 n

end A086015

/-! ## A086015.P2430456760265379554

`∑{digits}[n², A035589(#)]`
-/

namespace A086015.P2430456760265379554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A035589 x).sum

end

end A086015.P2430456760265379554

namespace A086015

/-- `∑{digits}[n², A035589(#)]` -/
def P2430456760265379554.Spec : Prop :=
  ∀ n, P2430456760265379554.a n = A086015 n

end A086015

/-! ## A086015.P1125924546282532926

`∑{digits}[n², A046778(#)]`
-/

namespace A086015.P1125924546282532926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A046778 x).sum

end

end A086015.P1125924546282532926

namespace A086015

/-- `∑{digits}[n², A046778(#)]` -/
def P1125924546282532926.Spec : Prop :=
  ∀ n, P1125924546282532926.a n = A086015 n

end A086015

/-! ## A086015.P15424592639125536220

`∑{digits}[n², A064873(#)]`
-/

namespace A086015.P15424592639125536220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A064873 x).sum

end

end A086015.P15424592639125536220

namespace A086015

/-- `∑{digits}[n², A064873(#)]` -/
def P15424592639125536220.Spec : Prop :=
  ∀ n, P15424592639125536220.a n = A086015 n

end A086015

/-! ## A086015.P8479509494653913058

`∑{digits}[n², A072401(#)]`
-/

namespace A086015.P8479509494653913058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A072401 x).sum

end

end A086015.P8479509494653913058

namespace A086015

/-- `∑{digits}[n², A072401(#)]` -/
def P8479509494653913058.Spec : Prop :=
  ∀ n, P8479509494653913058.a n = A086015 n

end A086015

/-! ## A086015.P393105090701545629

`∑{digits}[n², A079690(#)]`
-/

namespace A086015.P393105090701545629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079690 x).sum

end

end A086015.P393105090701545629

namespace A086015

/-- `∑{digits}[n², A079690(#)]` -/
def P393105090701545629.Spec : Prop :=
  ∀ n, P393105090701545629.a n = A086015 n

end A086015

/-! ## A086015.P13353130197184703521

`∑{digits}[n², A083929(#)]`
-/

namespace A086015.P13353130197184703521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083929 x).sum

end

end A086015.P13353130197184703521

namespace A086015

/-- `∑{digits}[n², A083929(#)]` -/
def P13353130197184703521.Spec : Prop :=
  ∀ n, P13353130197184703521.a n = A086015 n

end A086015

/-! ## A086015.P1252093264547034362

`∑{digits}[n², A086079(#)]`
-/

namespace A086015.P1252093264547034362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A086079 x).sum

end

end A086015.P1252093264547034362

namespace A086015

/-- `∑{digits}[n², A086079(#)]` -/
def P1252093264547034362.Spec : Prop :=
  ∀ n, P1252093264547034362.a n = A086015 n

end A086015

/-! ## A086015.P11438510957088560100

`∑{digits}[n², A109527(#)]`
-/

namespace A086015.P11438510957088560100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A109527 x).sum

end

end A086015.P11438510957088560100

namespace A086015

/-- `∑{digits}[n², A109527(#)]` -/
def P11438510957088560100.Spec : Prop :=
  ∀ n, P11438510957088560100.a n = A086015 n

end A086015

/-! ## A086015.P11814963960589777234

`∑{digits}[n², A115790(#)]`
-/

namespace A086015.P11814963960589777234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A115790 x).sum

end

end A086015.P11814963960589777234

namespace A086015

/-- `∑{digits}[n², A115790(#)]` -/
def P11814963960589777234.Spec : Prop :=
  ∀ n, P11814963960589777234.a n = A086015 n

end A086015

/-!
# A086016: Number of 8's in decimal expansion of n^2.

The programs for A086016, the canonical program `A086016.P424081892112326700` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086016 has offset 0).

The definition of A086016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086016.P16833996795263458307

`∑{digits}[n², A011722(#)]`
-/

namespace A086016.P16833996795263458307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011722 x).sum

end

end A086016.P16833996795263458307

namespace A086016

/-- `∑{digits}[n², A011722(#)]` -/
def P16833996795263458307.Spec : Prop :=
  ∀ n, P16833996795263458307.a n = A086016 n

end A086016

/-! ## A086016.P17942648265026639223

`∑{digits}[n², A025432(#)]`
-/

namespace A086016.P17942648265026639223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025432 x).sum

end

end A086016.P17942648265026639223

namespace A086016

/-- `∑{digits}[n², A025432(#)]` -/
def P17942648265026639223.Spec : Prop :=
  ∀ n, P17942648265026639223.a n = A086016 n

end A086016

/-! ## A086016.P1973887947567571004

`∑{digits}[n², A025461(#)]`
-/

namespace A086016.P1973887947567571004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025461 x).sum

end

end A086016.P1973887947567571004

namespace A086016

/-- `∑{digits}[n², A025461(#)]` -/
def P1973887947567571004.Spec : Prop :=
  ∀ n, P1973887947567571004.a n = A086016 n

end A086016

/-! ## A086016.P4852555299272569084

`∑{digits}[n², A026829(#)]`
-/

namespace A086016.P4852555299272569084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A026829 x).sum

end

end A086016.P4852555299272569084

namespace A086016

/-- `∑{digits}[n², A026829(#)]` -/
def P4852555299272569084.Spec : Prop :=
  ∀ n, P4852555299272569084.a n = A086016 n

end A086016

/-! ## A086016.P14292540642011213660

`∑{digits}[n², A035582(#)]`
-/

namespace A086016.P14292540642011213660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A035582 x).sum

end

end A086016.P14292540642011213660

namespace A086016

/-- `∑{digits}[n², A035582(#)]` -/
def P14292540642011213660.Spec : Prop :=
  ∀ n, P14292540642011213660.a n = A086016 n

end A086016

/-! ## A086016.P706587309372147901

`∑{digits}[n², A035590(#)]`
-/

namespace A086016.P706587309372147901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A035590 x).sum

end

end A086016.P706587309372147901

namespace A086016

/-- `∑{digits}[n², A035590(#)]` -/
def P706587309372147901.Spec : Prop :=
  ∀ n, P706587309372147901.a n = A086016 n

end A086016

/-! ## A086016.P8384363023933322710

`∑{digits}[n², A037217(#)]`
-/

namespace A086016.P8384363023933322710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A037217 x).sum

end

end A086016.P8384363023933322710

namespace A086016

/-- `∑{digits}[n², A037217(#)]` -/
def P8384363023933322710.Spec : Prop :=
  ∀ n, P8384363023933322710.a n = A086016 n

end A086016

/-! ## A086016.P546190004056659285

`∑{digits}[n², A045698(#)]`
-/

namespace A086016.P546190004056659285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045698 x).sum

end

end A086016.P546190004056659285

namespace A086016

/-- `∑{digits}[n², A045698(#)]` -/
def P546190004056659285.Spec : Prop :=
  ∀ n, P546190004056659285.a n = A086016 n

end A086016

/-! ## A086016.P15048939032746013349

`∑{digits}[n², A046779(#)]`
-/

namespace A086016.P15048939032746013349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A046779 x).sum

end

end A086016.P15048939032746013349

namespace A086016

/-- `∑{digits}[n², A046779(#)]` -/
def P15048939032746013349.Spec : Prop :=
  ∀ n, P15048939032746013349.a n = A086016 n

end A086016

/-! ## A086016.P424081892112326700

`∑{digits}[n², A054438(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A086016

/-- `∑{digits}[n², A054438(#)]` -/
def P424081892112326700.Spec : Prop :=
  ∀ n, P424081892112326700.a n = A086016 n

theorem P424081892112326700.correct : P424081892112326700.Spec := by
  intro n
  simp only [A086016]

end A086016

/-! ## A086016.P13450021790060514128

`∑{digits}[n², A072931(#)]`
-/

namespace A086016.P13450021790060514128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A072931 x).sum

end

end A086016.P13450021790060514128

namespace A086016

/-- `∑{digits}[n², A072931(#)]` -/
def P13450021790060514128.Spec : Prop :=
  ∀ n, P13450021790060514128.a n = A086016 n

end A086016

/-! ## A086016.P13878935794955693972

`∑{digits}[n², A081130(#)]`
-/

namespace A086016.P13878935794955693972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A081130 x).sum

end

end A086016.P13878935794955693972

namespace A086016

/-- `∑{digits}[n², A081130(#)]` -/
def P13878935794955693972.Spec : Prop :=
  ∀ n, P13878935794955693972.a n = A086016 n

end A086016

/-! ## A086016.P14577589436537079620

`∑{digits}[n², A160086(#)]`
-/

namespace A086016.P14577589436537079620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A160086 x).sum

end

end A086016.P14577589436537079620

namespace A086016

/-- `∑{digits}[n², A160086(#)]` -/
def P14577589436537079620.Spec : Prop :=
  ∀ n, P14577589436537079620.a n = A086016 n

end A086016

/-! ## A086016.P6296509423868803606

`∑{digits}[n², A165091(#)]`
-/

namespace A086016.P6296509423868803606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A165091 x).sum

end

end A086016.P6296509423868803606

namespace A086016

/-- `∑{digits}[n², A165091(#)]` -/
def P6296509423868803606.Spec : Prop :=
  ∀ n, P6296509423868803606.a n = A086016 n

end A086016

/-! ## A086016.P2736038857177691785

`∑{digits}[n², A169674(#)]`
-/

namespace A086016.P2736038857177691785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A169674 x).sum

end

end A086016.P2736038857177691785

namespace A086016

/-- `∑{digits}[n², A169674(#)]` -/
def P2736038857177691785.Spec : Prop :=
  ∀ n, P2736038857177691785.a n = A086016 n

end A086016

/-! ## A086016.P12808865906133020121

`∑{digits}[n², A186748(#)]`
-/

namespace A086016.P12808865906133020121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A186748 x).sum

end

end A086016.P12808865906133020121

namespace A086016

/-- `∑{digits}[n², A186748(#)]` -/
def P12808865906133020121.Spec : Prop :=
  ∀ n, P12808865906133020121.a n = A086016 n

end A086016

/-! ## A086016.P18209227236020154226

`∑{digits}[n², A187451(#)]`
-/

namespace A086016.P18209227236020154226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A187451 x).sum

end

end A086016.P18209227236020154226

namespace A086016

/-- `∑{digits}[n², A187451(#)]` -/
def P18209227236020154226.Spec : Prop :=
  ∀ n, P18209227236020154226.a n = A086016 n

end A086016

/-! ## A086016.P12253150795786357219

`∑{digits}[n², A198318(#)]`
-/

namespace A086016.P12253150795786357219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A198318 x).sum

end

end A086016.P12253150795786357219

namespace A086016

/-- `∑{digits}[n², A198318(#)]` -/
def P12253150795786357219.Spec : Prop :=
  ∀ n, P12253150795786357219.a n = A086016 n

end A086016

/-! ## A086016.P5077899212050255450

`∑{digits}[n², A241319(#)]`
-/

namespace A086016.P5077899212050255450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A241319 x).sum

end

end A086016.P5077899212050255450

namespace A086016

/-- `∑{digits}[n², A241319(#)]` -/
def P5077899212050255450.Spec : Prop :=
  ∀ n, P5077899212050255450.a n = A086016 n

end A086016

/-! ## A086016.P14228323622140047368

`∑{digits}[n², A251759(#)]`
-/

namespace A086016.P14228323622140047368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251759 x).sum

end

end A086016.P14228323622140047368

namespace A086016

/-- `∑{digits}[n², A251759(#)]` -/
def P14228323622140047368.Spec : Prop :=
  ∀ n, P14228323622140047368.a n = A086016 n

end A086016

/-!
# A086017: Number of 9's in decimal expansion of n^2.

The programs for A086017, the canonical program `A086017.P3190811218351209493` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086017 has offset 0).

The definition of A086017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086017.P3190811218351209493

`∑{digits}[n², C(#, 9)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086017

/-- `∑{digits}[n², C(#, 9)]` -/
def P3190811218351209493.Spec : Prop :=
  ∀ n, (P3190811218351209493.a n : ℤ) = A086017 n

theorem P3190811218351209493.correct : P3190811218351209493.Spec := by
  intro n
  simp only [A086017]

end A086017

/-! ## A086017.P11064292094646115701

`∑{digits}[n², floor(#/9)]`
-/

namespace A086017.P11064292094646115701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 9⌋).sum

end

end A086017.P11064292094646115701

namespace A086017

/-- `∑{digits}[n², floor(#/9)]` -/
def P11064292094646115701.Spec : Prop :=
  ∀ n, P11064292094646115701.a n = A086017 n

end A086017

/-! ## A086017.P16246441924128261663

`dr(∑{digits}[n², A036640(#)])`
-/

namespace A086017.P16246441924128261663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036640 x).sum

end

end A086017.P16246441924128261663

namespace A086017

/-- `dr(∑{digits}[n², A036640(#)])` -/
def P16246441924128261663.Spec : Prop :=
  ∀ n, (P16246441924128261663.a n : ℤ) = A086017 n

end A086017

/-! ## A086017.P3670556330796571211

`A057889(∑{digits}[n², A102683(#)])`
-/

namespace A086017.P3670556330796571211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A102683 x).sum.toNat

end

end A086017.P3670556330796571211

namespace A086017

/-- `A057889(∑{digits}[n², A102683(#)])` -/
def P3670556330796571211.Spec : Prop :=
  ∀ n, P3670556330796571211.a n = A086017 n

end A086017

/-! ## A086017.P6807798491329987198

`A093110(∑{digits}[n², A102683(#)])`
-/

namespace A086017.P6807798491329987198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A102683 x).sum.toNat

end

end A086017.P6807798491329987198

namespace A086017

/-- `A093110(∑{digits}[n², A102683(#)])` -/
def P6807798491329987198.Spec : Prop :=
  ∀ n, P6807798491329987198.a n = A086017 n

end A086017

/-! ## A086017.P17434047073196899661

`A320063(2*∑{digits}[n², A036640(#)])`
-/

namespace A086017.P17434047073196899661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320063 (2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036640 x).sum).toNat

end

end A086017.P17434047073196899661

namespace A086017

/-- `A320063(2*∑{digits}[n², A036640(#)])` -/
def P17434047073196899661.Spec : Prop :=
  ∀ n, P17434047073196899661.a n = A086017 n

end A086017

/-! ## A086017.P15092992117747483881

`A001222(2^∑{digits}[n², A036640(#)])`
-/

namespace A086017.P15092992117747483881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036640 x).sum : ℤ))).toNat

end

end A086017.P15092992117747483881

namespace A086017

/-- `A001222(2^∑{digits}[n², A036640(#)])` -/
def P15092992117747483881.Spec : Prop :=
  ∀ n, P15092992117747483881.a n = A086017 n

end A086017

/-! ## A086017.P7818561242149517541

`∑{digits}[n², A036640(#)]%A000124(n)`
-/

namespace A086017.P7818561242149517541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036640 x).sum (A000124 n)

end

end A086017.P7818561242149517541

namespace A086017

/-- `∑{digits}[n², A036640(#)]%A000124(n)` -/
def P7818561242149517541.Spec : Prop :=
  ∀ n, P7818561242149517541.a n = A086017 n

end A086017

/-! ## A086017.P1927854108909328641

`A000038(n+1)+∑{digits}[A000290(n), A036640(#)]`
-/

namespace A086017.P1927854108909328641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum

end

end A086017.P1927854108909328641

namespace A086017

/-- `A000038(n+1)+∑{digits}[A000290(n), A036640(#)]` -/
def P1927854108909328641.Spec : Prop :=
  ∀ n, P1927854108909328641.a n = A086017 n

end A086017

/-! ## A086017.P9684342479909743436

`∑{digits}[A000290(n), A036640(#)]%A000041(n)`
-/

namespace A086017.P9684342479909743436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum (A000041 n)

end

end A086017.P9684342479909743436

namespace A086017

/-- `∑{digits}[A000290(n), A036640(#)]%A000041(n)` -/
def P9684342479909743436.Spec : Prop :=
  ∀ n, P9684342479909743436.a n = A086017 n

end A086017

/-! ## A086017.P6076189255325878028

`∑{digits}[A000290(n), A036640(#)]*A005131(3*n)`
-/

namespace A086017.P6076189255325878028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum * A005131 (3 * n)

end

end A086017.P6076189255325878028

namespace A086017

/-- `∑{digits}[A000290(n), A036640(#)]*A005131(3*n)` -/
def P6076189255325878028.Spec : Prop :=
  ∀ n, P6076189255325878028.a n = A086017 n

end A086017

/-! ## A086017.P15780579834567719403

`A102683(A028907(n))`
-/

namespace A086017.P15780579834567719403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A028907 n).toNat

end

end A086017.P15780579834567719403

namespace A086017

/-- `A102683(A028907(n))` -/
def P15780579834567719403.Spec : Prop :=
  ∀ n, P15780579834567719403.a n = A086017 n

end A086017

/-! ## A086017.P9688998806609172051

`A055641(A028907(n)+1)`
-/

namespace A086017.P9688998806609172051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A028907 n + 1).toNat

end

end A086017.P9688998806609172051

namespace A086017

/-- `A055641(A028907(n)+1)` -/
def P9688998806609172051.Spec : Prop :=
  ∀ n, P9688998806609172051.a n = A086017 n

end A086017

/-! ## A086017.P10374646355513626432

`A122840(A028907(n)+1)`
-/

namespace A086017.P10374646355513626432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A028907 n + 1).toNat

end

end A086017.P10374646355513626432

namespace A086017

/-- `A122840(A028907(n)+1)` -/
def P10374646355513626432.Spec : Prop :=
  ∀ n, P10374646355513626432.a n = A086017 n

end A086017

/-! ## A086017.P6912280587582920840

`A102683(n²)`
-/

namespace A086017.P6912280587582920840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (n ^ 2)

end

end A086017.P6912280587582920840

namespace A086017

/-- `A102683(n²)` -/
def P6912280587582920840.Spec : Prop :=
  ∀ n, P6912280587582920840.a n = A086017 n

end A086017

/-! ## A086017.P6228064618417000339

`A102683(n^(4/2))%3`
-/

namespace A086017.P6228064618417000339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102683 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((4 : ℚ) / 2 : ℝ))).toNat) 3

end

end A086017.P6228064618417000339

namespace A086017

/-- `A102683(n^(4/2))%3` -/
def P6228064618417000339.Spec : Prop :=
  ∀ n, P6228064618417000339.a n = A086017 n

end A086017

/-! ## A086017.P10959026712802692634

`A102681(A107128(n²))`
-/

namespace A086017.P10959026712802692634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A107128 (n ^ 2)).toNat

end

end A086017.P10959026712802692634

namespace A086017

/-- `A102681(A107128(n²))` -/
def P10959026712802692634.Spec : Prop :=
  ∀ n, P10959026712802692634.a n = A086017 n

end A086017

/-! ## A086017.P3644616849046327318

`A102681(A235049(n²))`
-/

namespace A086017.P3644616849046327318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A235049 (n ^ 2)).toNat

end

end A086017.P3644616849046327318

namespace A086017

/-- `A102681(A235049(n²))` -/
def P3644616849046327318.Spec : Prop :=
  ∀ n, P3644616849046327318.a n = A086017 n

end A086017

/-! ## A086017.P7604142257625251870

`lcm(A033999(n), A102683(A000290(n)))`
-/

namespace A086017.P7604142257625251870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A102683 (A000290 n).toNat)

end

end A086017.P7604142257625251870

namespace A086017

/-- `lcm(A033999(n), A102683(A000290(n)))` -/
def P7604142257625251870.Spec : Prop :=
  ∀ n, (P7604142257625251870.a n : ℤ) = A086017 n

end A086017

/-! ## A086017.P6105788963546558390

`A102681(A004183(n²))`
-/

namespace A086017.P6105788963546558390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A004183 (n ^ 2)).toNat

end

end A086017.P6105788963546558390

namespace A086017

/-- `A102681(A004183(n²))` -/
def P6105788963546558390.Spec : Prop :=
  ∀ n, P6105788963546558390.a n = A086017 n

end A086017

/-!
# A086018: Number of cyclic numbers (A001913) <= 10^n.

The programs for A086018, there is no canonical definition to state claims against.
-/

/-! ## A086018.P17837581438182370562

`floor(A054429(7^n)/comp[∑[n]])`
-/

namespace A086018.P17837581438182370562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054429 (7 ^ n) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)⌋

end

end A086018.P17837581438182370562

/-!
# A086019: For p = prime(n), a(n) is the largest prime q such that pq is a base-2 pseudoprime; that is, 2^(pq-1) = 1 mod pq; a(n) is 0 if no such prime exists.

The programs for A086019, there is no canonical definition to state claims against.
-/

/-! ## A086019.P1113852820693223832

`A287945(n+2)%A287992(A287987(n))`
-/

namespace A086019.P1113852820693223832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287945 (n + 2)) (A287992 (A287987 n).toNat)

end

end A086019.P1113852820693223832

/-! ## A086019.P5309625555090374297

`A005614(A001349(n))*A358699(n+2)`
-/

namespace A086019.P5309625555090374297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A001349 n).toNat * A358699 (n + 2)

end

end A086019.P5309625555090374297

/-!
# A086020: a(n) = Sum_(i=1..n) binomial(i+2,3)^2 [ Sequential sums of the tetragonal numbers or "tetras" (pyramidal, square) raised to power 2 (drawn from the 4th diagonal - left or right - of Pascal's Triangle) ].

The programs for A086020, the canonical program `A086020.P3754016581396841392` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086020 has offset 1).

The definition of A086020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086020.P3754016581396841392

`∑[C(n+3, 3)²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086020

/-- `∑[C(n+3, 3)²]` -/
def P3754016581396841392.Spec : Prop :=
  ∀ n, (P3754016581396841392.a n : ℤ) = A086020 (n + 1)

theorem P3754016581396841392.correct : P3754016581396841392.Spec := by
  intro n
  simp only [A086020, Nat.add_sub_cancel]

end A086020

/-! ## A086020.P17652510157514363420

`∑[∑[∑[n+1]]²]`
-/

namespace A086020.P17652510157514363420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086020.P17652510157514363420

namespace A086020

/-- `∑[∑[∑[n+1]]²]` -/
def P17652510157514363420.Spec : Prop :=
  ∀ n, (P17652510157514363420.a n : ℤ) = A086020 (n + 1)

end A086020

/-! ## A086020.P15138998555418547110

`a(n-1)+C(n+3, 3)²` with `a(0)=1`
-/

namespace A086020.P15138998555418547110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 3) 3 ^ 2

end

end A086020.P15138998555418547110

namespace A086020

/-- `a(n-1)+C(n+3, 3)²` -/
def P15138998555418547110.Spec : Prop :=
  ∀ n, (P15138998555418547110.a n : ℤ) = A086020 (n + 1)

end A086020

/-! ## A086020.P18059415751129619711

`floor(∑[∑[∑[a(n-1)-1]]²])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A086020.P18059415751129619711
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086020.P18059415751129619711

namespace A086020

/-- `floor(∑[∑[∑[a(n-1)-1]]²])` -/
def P18059415751129619711.Spec : Prop :=
  ∀ n, P18059415751129619711.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P18327248377388040671

`a(n-1)+∑[∑[n+1]]^2` with `a(0)=1`
-/

namespace A086020.P18327248377388040671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A086020.P18327248377388040671

namespace A086020

/-- `a(n-1)+∑[∑[n+1]]^2` -/
def P18327248377388040671.Spec : Prop :=
  ∀ n, (P18327248377388040671.a n : ℤ) = A086020 (n + 1)

end A086020

/-! ## A086020.P10821457838736281729

`A001249(n)+a(n-1)` with `a(0)=1`
-/

namespace A086020.P10821457838736281729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001249 n + a (n - 1)

end

end A086020.P10821457838736281729

namespace A086020

/-- `A001249(n)+a(n-1)` -/
def P10821457838736281729.Spec : Prop :=
  ∀ n, P10821457838736281729.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P9145629813387220600

`gcd(∑[A001249(n)], A000038(n))`
-/

namespace A086020.P9145629813387220600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A086020.P9145629813387220600

namespace A086020

/-- `gcd(∑[A001249(n)], A000038(n))` -/
def P9145629813387220600.Spec : Prop :=
  ∀ n, (P9145629813387220600.a n : ℤ) = A086020 (n + 1)

end A086020

/-! ## A086020.P14344122894430386011

`or(∑[A001249(n)], A000007(n))`
-/

namespace A086020.P14344122894430386011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A086020.P14344122894430386011

namespace A086020

/-- `or(∑[A001249(n)], A000007(n))` -/
def P14344122894430386011.Spec : Prop :=
  ∀ n, P14344122894430386011.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P3120200061169706476

`∑[A001249(n)]+val(n+1, A004767(n))`
-/

namespace A086020.P3120200061169706476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (n + 1) (A004767 n).toNat : ℤ)

end

end A086020.P3120200061169706476

namespace A086020

/-- `∑[A001249(n)]+val(n+1, A004767(n))` -/
def P3120200061169706476.Spec : Prop :=
  ∀ n, P3120200061169706476.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P3959013766270135186

`∑[A001249(n)]+val(n+1, A000040(n+1))`
-/

namespace A086020.P3959013766270135186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (n + 1) (A000040 (n + 1)).toNat : ℤ)

end

end A086020.P3959013766270135186

namespace A086020

/-- `∑[A001249(n)]+val(n+1, A000040(n+1))` -/
def P3959013766270135186.Spec : Prop :=
  ∀ n, P3959013766270135186.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P10900595368917212198

`A014744(A014744(n)+n)+∑[A001249(n)]`
-/

namespace A086020.P10900595368917212198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A014744 n + (n : ℤ)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086020.P10900595368917212198

namespace A086020

/-- `A014744(A014744(n)+n)+∑[A001249(n)]` -/
def P10900595368917212198.Spec : Prop :=
  ∀ n, P10900595368917212198.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P8379760667048311437

`∑[A001249(n)]%A288876(n+1)`
-/

namespace A086020.P8379760667048311437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A288876 (n + 1))

end

end A086020.P8379760667048311437

namespace A086020

/-- `∑[A001249(n)]%A288876(n+1)` -/
def P8379760667048311437.Spec : Prop :=
  ∀ n, P8379760667048311437.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P1567106369775484555

`∑[A001249(n)]*A135517(2*n)`
-/

namespace A086020.P1567106369775484555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A135517 (2 * n)

end

end A086020.P1567106369775484555

namespace A086020

/-- `∑[A001249(n)]*A135517(2*n)` -/
def P1567106369775484555.Spec : Prop :=
  ∀ n, P1567106369775484555.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P5163212354874318306

`∑[A001249(n)]+val(n+1, A001950(2*(n+1)))`
-/

namespace A086020.P5163212354874318306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (n + 1) (A001950 (2 * (n + 1))).toNat : ℤ)

end

end A086020.P5163212354874318306

namespace A086020

/-- `∑[A001249(n)]+val(n+1, A001950(2*(n+1)))` -/
def P5163212354874318306.Spec : Prop :=
  ∀ n, P5163212354874318306.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P12430975978437344461

`∑[A001249(n)]+val(n+1, A047384(2*(n+2)))`
-/

namespace A086020.P12430975978437344461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (n + 1) (A047384 (2 * (n + 2))).toNat : ℤ)

end

end A086020.P12430975978437344461

namespace A086020

/-- `∑[A001249(n)]+val(n+1, A047384(2*(n+2)))` -/
def P12430975978437344461.Spec : Prop :=
  ∀ n, P12430975978437344461.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P11717638135781561162

`∑[A001249(n)]+val(n+1, A037640(n+1))`
-/

namespace A086020.P11717638135781561162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (n + 1) (A037640 (n + 1)).toNat : ℤ)

end

end A086020.P11717638135781561162

namespace A086020

/-- `∑[A001249(n)]+val(n+1, A037640(n+1))` -/
def P11717638135781561162.Spec : Prop :=
  ∀ n, P11717638135781561162.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P16009551486965857212

`A007318(∑[n])*∑[A001249(n)]`
-/

namespace A086020.P16009551486965857212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A086020.P16009551486965857212

namespace A086020

/-- `A007318(∑[n])*∑[A001249(n)]` -/
def P16009551486965857212.Spec : Prop :=
  ∀ n, P16009551486965857212.a n = A086020 (n + 1)

end A086020

/-! ## A086020.P14149472953446606037

`A110197(A167614(n+2))`
-/

namespace A086020.P14149472953446606037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (A167614 (n + 2)).toNat

end

end A086020.P14149472953446606037

namespace A086020

/-- `A110197(A167614(n+2))` -/
def P14149472953446606037.Spec : Prop :=
  ∀ n, P14149472953446606037.a n = A086020 (n + 1)

end A086020

/-!
# A086021: a(n) = Sum_{i=1..n} C(i+2,3)^3.

The programs for A086021, the canonical program `A086021.P10945047919083550118` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086021 has offset 1).

The definition of A086021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086021.P10945047919083550118

`∑[C(n+3, 3)^3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086021

/-- `∑[C(n+3, 3)^3]` -/
def P10945047919083550118.Spec : Prop :=
  ∀ n, (P10945047919083550118.a n : ℤ) = A086021 (n + 1)

theorem P10945047919083550118.correct : P10945047919083550118.Spec := by
  intro n
  simp only [A086021, Nat.add_sub_cancel]

end A086021

/-! ## A086021.P3892868067972407464

`∑[∑[∑[n+1]]^3]`
-/

namespace A086021.P3892868067972407464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086021.P3892868067972407464

namespace A086021

/-- `∑[∑[∑[n+1]]^3]` -/
def P3892868067972407464.Spec : Prop :=
  ∀ n, (P3892868067972407464.a n : ℤ) = A086021 (n + 1)

end A086021

/-! ## A086021.P1703225721845187534

`a(n-1)+C(n+3, 3)^3` with `a(0)=1`
-/

namespace A086021.P1703225721845187534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 3) 3 ^ 3

end

end A086021.P1703225721845187534

namespace A086021

/-- `a(n-1)+C(n+3, 3)^3` -/
def P1703225721845187534.Spec : Prop :=
  ∀ n, (P1703225721845187534.a n : ℤ) = A086021 (n + 1)

end A086021

/-! ## A086021.P13697996065781089518

`∑[A202109(n+1)]/3`
-/

namespace A086021.P13697996065781089518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202109 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A086021.P13697996065781089518

namespace A086021

/-- `∑[A202109(n+1)]/3` -/
def P13697996065781089518.Spec : Prop :=
  ∀ n, P13697996065781089518.a n = (A086021 (n + 1) : ℚ)

end A086021

/-! ## A086021.P15523537474830381616

`A270272(n)+a(n-1)` with `a(0)=1`
-/

namespace A086021.P15523537474830381616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270272 n + a (n - 1)

end

end A086021.P15523537474830381616

namespace A086021

/-- `A270272(n)+a(n-1)` -/
def P15523537474830381616.Spec : Prop :=
  ∀ n, P15523537474830381616.a n = A086021 (n + 1)

end A086021

/-! ## A086021.P9194296350206616569

`or(∑[A270272(n)], A000007(n))`
-/

namespace A086021.P9194296350206616569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A086021.P9194296350206616569

namespace A086021

/-- `or(∑[A270272(n)], A000007(n))` -/
def P9194296350206616569.Spec : Prop :=
  ∀ n, P9194296350206616569.a n = A086021 (n + 1)

end A086021

/-! ## A086021.P15858415122232782760

`∑[A270272(n)]*A090001(A071044(n))`
-/

namespace A086021.P15858415122232782760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A090001 (A071044 n).toNat

end

end A086021.P15858415122232782760

namespace A086021

/-- `∑[A270272(n)]*A090001(A071044(n))` -/
def P15858415122232782760.Spec : Prop :=
  ∀ n, P15858415122232782760.a n = A086021 (n + 1)

end A086021

/-! ## A086021.P2297041764285427433

`∑[C(n+3, 3)²*C(n+3, 3)]*A135517(2*n)`
-/

namespace A086021.P2297041764285427433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 ^ 2 * Nat.choose (n + 3) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A135517 (2 * n)

end

end A086021.P2297041764285427433

namespace A086021

/-- `∑[C(n+3, 3)²*C(n+3, 3)]*A135517(2*n)` -/
def P2297041764285427433.Spec : Prop :=
  ∀ n, P2297041764285427433.a n = A086021 (n + 1)

end A086021

/-! ## A086021.P3741170400265447605

`∑[∑[∑[n+1]]]*A060099(2*n)`
-/

namespace A086021.P3741170400265447605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A060099 (2 * n)

end

end A086021.P3741170400265447605

namespace A086021

/-- `∑[∑[∑[n+1]]]*A060099(2*n)` -/
def P3741170400265447605.Spec : Prop :=
  ∀ n, P3741170400265447605.a n = A086021 (n + 1)

end A086021

/-! ## A086021.P6445832105055319311

`∑[A270272(n)]+A008683(A270296(n+1))`
-/

namespace A086021.P6445832105055319311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008683 (A270296 (n + 1)).toNat

end

end A086021.P6445832105055319311

namespace A086021

/-- `∑[A270272(n)]+A008683(A270296(n+1))` -/
def P6445832105055319311.Spec : Prop :=
  ∀ n, P6445832105055319311.a n = A086021 (n + 1)

end A086021

/-!
# A086022: a(n) = Sum_{i=1..n} C(i+2,3)^4.

The programs for A086022, the canonical program `A086022.P817934333631169326` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086022 has offset 1).

The definition of A086022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086022.P817934333631169326

`∑[C(n+3, 3)^4]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086022

/-- `∑[C(n+3, 3)^4]` -/
def P817934333631169326.Spec : Prop :=
  ∀ n, (P817934333631169326.a n : ℤ) = A086022 (n + 1)

theorem P817934333631169326.correct : P817934333631169326.Spec := by
  intro n
  simp only [A086022, Nat.add_sub_cancel]

end A086022

/-! ## A086022.P11208521699420568945

`∑[C(n+3, 3)²²]`
-/

namespace A086022.P11208521699420568945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086022.P11208521699420568945

namespace A086022

/-- `∑[C(n+3, 3)²²]` -/
def P11208521699420568945.Spec : Prop :=
  ∀ n, (P11208521699420568945.a n : ℤ) = A086022 (n + 1)

theorem P11208521699420568945.correct : P11208521699420568945.Spec := by
  intro n
  simp only [A086022, Nat.add_sub_cancel, A086022.P11208521699420568945.f1, A086022.P11208521699420568945.a, A086022.P817934333631169326.f1, A086022.P817934333631169326.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A086022

/-! ## A086022.P11042275605466080921

`∑[∑[∑[n+1]]^4]`
-/

namespace A086022.P11042275605466080921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086022.P11042275605466080921

namespace A086022

/-- `∑[∑[∑[n+1]]^4]` -/
def P11042275605466080921.Spec : Prop :=
  ∀ n, (P11042275605466080921.a n : ℤ) = A086022 (n + 1)

end A086022

/-! ## A086022.P5929456417092501183

`a(n-1)+C(n+3, 3)^4` with `a(0)=1`
-/

namespace A086022.P5929456417092501183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 3) 3 ^ 4

end

end A086022.P5929456417092501183

namespace A086022

/-- `a(n-1)+C(n+3, 3)^4` -/
def P5929456417092501183.Spec : Prop :=
  ∀ n, (P5929456417092501183.a n : ℤ) = A086022 (n + 1)

end A086022

/-! ## A086022.P7819404627090099009

`a(n-1)+C(n+3, 3)²²` with `a(0)=1`
-/

namespace A086022.P7819404627090099009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose (n + 3) 3 ^ 2) ^ 2

end

end A086022.P7819404627090099009

namespace A086022

/-- `a(n-1)+C(n+3, 3)²²` -/
def P7819404627090099009.Spec : Prop :=
  ∀ n, (P7819404627090099009.a n : ℤ) = A086022 (n + 1)

end A086022

/-! ## A086022.P6271298337160275484

`a(n-1)+∑[∑[n+1]]²²` with `a(0)=1`
-/

namespace A086022.P6271298337160275484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A086022.P6271298337160275484

namespace A086022

/-- `a(n-1)+∑[∑[n+1]]²²` -/
def P6271298337160275484.Spec : Prop :=
  ∀ n, (P6271298337160275484.a n : ℤ) = A086022 (n + 1)

end A086022

/-! ## A086022.P18331870090102212166

`floor(∑[∑[∑[a(n-1)-1]]²²])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A086022.P18331870090102212166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086022.P18331870090102212166

namespace A086022

/-- `floor(∑[∑[∑[a(n-1)-1]]²²])` -/
def P18331870090102212166.Spec : Prop :=
  ∀ n, P18331870090102212166.a n = A086022 (n + 1)

end A086022

/-! ## A086022.P13265423884540272284

`∑[∑[∑[n+1]]²²]/gcd(n, n+1)`
-/

namespace A086022.P13265423884540272284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A086022.P13265423884540272284

namespace A086022

/-- `∑[∑[∑[n+1]]²²]/gcd(n, n+1)` -/
def P13265423884540272284.Spec : Prop :=
  ∀ n, P13265423884540272284.a n = (A086022 (n + 1) : ℚ)

end A086022

/-!
# A086023: a(n) = Sum_{i=1..n} C(i+3,4)^2.

The programs for A086023, the canonical program `A086023.P11049615372794625716` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086023 has offset 1).

The definition of A086023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086023.P11049615372794625716

`∑[C(n+4, 4)²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086023

/-- `∑[C(n+4, 4)²]` -/
def P11049615372794625716.Spec : Prop :=
  ∀ n, (P11049615372794625716.a n : ℤ) = A086023 (n + 1)

theorem P11049615372794625716.correct : P11049615372794625716.Spec := by
  intro n
  simp only [A086023, Nat.add_sub_cancel]

end A086023

/-! ## A086023.P9637274019738916194

`∑[∑[∑[∑[n+1]]]²]`
-/

namespace A086023.P9637274019738916194
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086023.P9637274019738916194

namespace A086023

/-- `∑[∑[∑[∑[n+1]]]²]` -/
def P9637274019738916194.Spec : Prop :=
  ∀ n, (P9637274019738916194.a n : ℤ) = A086023 (n + 1)

end A086023

/-! ## A086023.P18381054484422163913

`a(n-1)+C(n+4, 4)²` with `a(0)=1`
-/

namespace A086023.P18381054484422163913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 4) 4 ^ 2

end

end A086023.P18381054484422163913

namespace A086023

/-- `a(n-1)+C(n+4, 4)²` -/
def P18381054484422163913.Spec : Prop :=
  ∀ n, (P18381054484422163913.a n : ℤ) = A086023 (n + 1)

end A086023

/-! ## A086023.P16976360991606642511

`floor(∑[∑[∑[∑[a(n-1)-1]]]²])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A086023.P16976360991606642511
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f4 =>
  f4 (n - 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086023.P16976360991606642511

namespace A086023

/-- `floor(∑[∑[∑[∑[a(n-1)-1]]]²])` -/
def P16976360991606642511.Spec : Prop :=
  ∀ n, P16976360991606642511.a n = A086023 (n + 1)

end A086023

/-! ## A086023.P5449592991095163095

`A288876(n)+a(n-1)` with `a(0)=1`
-/

namespace A086023.P5449592991095163095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288876 n + a (n - 1)

end

end A086023.P5449592991095163095

namespace A086023

/-- `A288876(n)+a(n-1)` -/
def P5449592991095163095.Spec : Prop :=
  ∀ n, P5449592991095163095.a n = A086023 (n + 1)

end A086023

/-! ## A086023.P1721025077134346553

`gcd(∑[A288876(n)], A000038(n))`
-/

namespace A086023.P1721025077134346553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A086023.P1721025077134346553

namespace A086023

/-- `gcd(∑[A288876(n)], A000038(n))` -/
def P1721025077134346553.Spec : Prop :=
  ∀ n, (P1721025077134346553.a n : ℤ) = A086023 (n + 1)

end A086023

/-! ## A086023.P2520925472870095765

`or(∑[A288876(n)], A000007(n))`
-/

namespace A086023.P2520925472870095765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A086023.P2520925472870095765

namespace A086023

/-- `or(∑[A288876(n)], A000007(n))` -/
def P2520925472870095765.Spec : Prop :=
  ∀ n, P2520925472870095765.a n = A086023 (n + 1)

end A086023

/-! ## A086023.P8551782233252230563

`∑[A288876(n)]%∑[A027771(n)]`
-/

namespace A086023.P8551782233252230563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027771 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A086023.P8551782233252230563

namespace A086023

/-- `∑[A288876(n)]%∑[A027771(n)]` -/
def P8551782233252230563.Spec : Prop :=
  ∀ n, P8551782233252230563.a n = A086023 (n + 1)

end A086023

/-! ## A086023.P2341350844039171566

`A007318(C(2, n))*∑[A288876(n)]`
-/

namespace A086023.P2341350844039171566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086023.P2341350844039171566

namespace A086023

/-- `A007318(C(2, n))*∑[A288876(n)]` -/
def P2341350844039171566.Spec : Prop :=
  ∀ n, P2341350844039171566.a n = A086023 (n + 1)

end A086023

/-! ## A086023.P7806520027854698880

`∑[∑[A027480(n+1)]^2]/9`
-/

namespace A086023.P7806520027854698880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9

end

end A086023.P7806520027854698880

namespace A086023

/-- `∑[∑[A027480(n+1)]^2]/9` -/
def P7806520027854698880.Spec : Prop :=
  ∀ n, P7806520027854698880.a n = (A086023 (n + 1) : ℚ)

end A086023

/-! ## A086023.P7147392912414031814

`a(n-1)+A000332(n+4)²` with `a(0)=1`
-/

namespace A086023.P7147392912414031814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000332 (n + 4) ^ 2

end

end A086023.P7147392912414031814

namespace A086023

/-- `a(n-1)+A000332(n+4)²` -/
def P7147392912414031814.Spec : Prop :=
  ∀ n, P7147392912414031814.a n = A086023 (n + 1)

end A086023

/-!
# A086024: a(n) = Sum_{i=1..n} C(i+3,4)^3.

The programs for A086024, the canonical program `A086024.P17752172971539000302` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086024 has offset 1).

The definition of A086024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086024.P17752172971539000302

`∑[C(n+4, 4)^3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086024

/-- `∑[C(n+4, 4)^3]` -/
def P17752172971539000302.Spec : Prop :=
  ∀ n, (P17752172971539000302.a n : ℤ) = A086024 (n + 1)

theorem P17752172971539000302.correct : P17752172971539000302.Spec := by
  intro n
  simp only [A086024, Nat.add_sub_cancel]

end A086024

/-! ## A086024.P1766036444875960872

`∑[∑[∑[∑[n+1]]]^3]`
-/

namespace A086024.P1766036444875960872
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086024.P1766036444875960872

namespace A086024

/-- `∑[∑[∑[∑[n+1]]]^3]` -/
def P1766036444875960872.Spec : Prop :=
  ∀ n, (P1766036444875960872.a n : ℤ) = A086024 (n + 1)

end A086024

/-! ## A086024.P4399666787728809004

`a(n-1)+C(n+4, 4)^3` with `a(0)=1`
-/

namespace A086024.P4399666787728809004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 4) 4 ^ 3

end

end A086024.P4399666787728809004

namespace A086024

/-- `a(n-1)+C(n+4, 4)^3` -/
def P4399666787728809004.Spec : Prop :=
  ∀ n, (P4399666787728809004.a n : ℤ) = A086024 (n + 1)

end A086024

/-! ## A086024.P3942855893721423017

`∑[A033431(C(n+4, 4))]/2`
-/

namespace A086024.P3942855893721423017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (Nat.choose (n + 4) 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A086024.P3942855893721423017

namespace A086024

/-- `∑[A033431(C(n+4, 4))]/2` -/
def P3942855893721423017.Spec : Prop :=
  ∀ n, P3942855893721423017.a n = (A086024 (n + 1) : ℚ)

end A086024

/-! ## A086024.P17406917671537245968

`A000578(C(n+4, 4))+a(n-1)` with `a(0)=1`
-/

namespace A086024.P17406917671537245968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000578 (Nat.choose (n + 4) 4) + a (n - 1)

end

end A086024.P17406917671537245968

namespace A086024

/-- `A000578(C(n+4, 4))+a(n-1)` -/
def P17406917671537245968.Spec : Prop :=
  ∀ n, P17406917671537245968.a n = A086024 (n + 1)

end A086024

/-!
# A086025: a(n) = Sum_{i=1..n} C(i+4,5)^2.

The programs for A086025, the canonical program `A086025.P8309552937771761519` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086025 has offset 1).

The definition of A086025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086025.P8309552937771761519

`∑[C(n+5, 5)²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086025

/-- `∑[C(n+5, 5)²]` -/
def P8309552937771761519.Spec : Prop :=
  ∀ n, (P8309552937771761519.a n : ℤ) = A086025 (n + 1)

theorem P8309552937771761519.correct : P8309552937771761519.Spec := by
  intro n
  simp only [A086025, Nat.add_sub_cancel]

end A086025

/-! ## A086025.P5157614466639209103

`∑[∑[∑[∑[∑[n+1]]]]²]`
-/

namespace A086025.P5157614466639209103
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086025.P5157614466639209103

namespace A086025

/-- `∑[∑[∑[∑[∑[n+1]]]]²]` -/
def P5157614466639209103.Spec : Prop :=
  ∀ n, (P5157614466639209103.a n : ℤ) = A086025 (n + 1)

end A086025

/-! ## A086025.P1398451977971178849

`a(n-1)+C(n+5, 5)²` with `a(0)=1`
-/

namespace A086025.P1398451977971178849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 5) 5 ^ 2

end

end A086025.P1398451977971178849

namespace A086025

/-- `a(n-1)+C(n+5, 5)²` -/
def P1398451977971178849.Spec : Prop :=
  ∀ n, (P1398451977971178849.a n : ℤ) = A086025 (n + 1)

end A086025

/-! ## A086025.P2990366920609995479

`a(n-1)+C(n+5, 5)^2` with `a(0)=1`
-/

namespace A086025.P2990366920609995479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 5) 5 ^ 2

end

end A086025.P2990366920609995479

namespace A086025

/-- `a(n-1)+C(n+5, 5)^2` -/
def P2990366920609995479.Spec : Prop :=
  ∀ n, (P2990366920609995479.a n : ℤ) = A086025 (n + 1)

end A086025

/-! ## A086025.P16488890782339236166

`a(n-1)+A000389(n+5)²` with `a(0)=1`
-/

namespace A086025.P16488890782339236166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000389 (n + 5) ^ 2

end

end A086025.P16488890782339236166

namespace A086025

/-- `a(n-1)+A000389(n+5)²` -/
def P16488890782339236166.Spec : Prop :=
  ∀ n, P16488890782339236166.a n = A086025 (n + 1)

end A086025

/-! ## A086025.P12548599851993544233

`a(n-1)+A007318(A055999(n+3))²` with `a(0)=1`
-/

namespace A086025.P12548599851993544233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (A055999 (n + 3)).toNat ^ 2

end

end A086025.P12548599851993544233

namespace A086025

/-- `a(n-1)+A007318(A055999(n+3))²` -/
def P12548599851993544233.Spec : Prop :=
  ∀ n, P12548599851993544233.a n = A086025 (n + 1)

end A086025

/-! ## A086025.P1455871560920878356

`a(n-1)+A007318(A167499(n+4))²` with `a(0)=1`
-/

namespace A086025.P1455871560920878356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (A167499 (n + 4)).toNat ^ 2

end

end A086025.P1455871560920878356

namespace A086025

/-- `a(n-1)+A007318(A167499(n+4))²` -/
def P1455871560920878356.Spec : Prop :=
  ∀ n, P1455871560920878356.a n = A086025 (n + 1)

end A086025

/-!
# A086026: a(n) = Sum_{i=1..n} C(i+4,5)^3.

The programs for A086026, the canonical program `A086026.P8067064159546314819` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086026 has offset 1).

The definition of A086026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086026.P8067064159546314819

`∑[C(n+5, 5)^3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086026

/-- `∑[C(n+5, 5)^3]` -/
def P8067064159546314819.Spec : Prop :=
  ∀ n, (P8067064159546314819.a n : ℤ) = A086026 (n + 1)

theorem P8067064159546314819.correct : P8067064159546314819.Spec := by
  intro n
  simp only [A086026, Nat.add_sub_cancel]

end A086026

/-! ## A086026.P17261096951613995052

`∑[∑[∑[∑[∑[n+1]]]]^3]`
-/

namespace A086026.P17261096951613995052
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086026.P17261096951613995052

namespace A086026

/-- `∑[∑[∑[∑[∑[n+1]]]]^3]` -/
def P17261096951613995052.Spec : Prop :=
  ∀ n, (P17261096951613995052.a n : ℤ) = A086026 (n + 1)

end A086026

/-! ## A086026.P12783980092780328394

`a(n-1)+C(n+5, 5)^3` with `a(0)=1`
-/

namespace A086026.P12783980092780328394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 5) 5 ^ 3

end

end A086026.P12783980092780328394

namespace A086026

/-- `a(n-1)+C(n+5, 5)^3` -/
def P12783980092780328394.Spec : Prop :=
  ∀ n, (P12783980092780328394.a n : ℤ) = A086026 (n + 1)

end A086026

/-! ## A086026.P8287730907174943615

`a(n-1)+A213551(A000124(n))^3` with `a(0)=1`
-/

namespace A086026.P8287730907174943615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A213551 (A000124 n).toNat ^ 3

end

end A086026.P8287730907174943615

namespace A086026

/-- `a(n-1)+A213551(A000124(n))^3` -/
def P8287730907174943615.Spec : Prop :=
  ∀ n, P8287730907174943615.a n = A086026 (n + 1)

end A086026

/-! ## A086026.P15080298691400869229

`a(n-1)+(A001725(n+5)/A000142(n))^3` with `a(0)=1`
-/

namespace A086026.P15080298691400869229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((A001725 (n + 5) : ℚ) / (A000142 n : ℚ)) ^ 3

end

end A086026.P15080298691400869229

namespace A086026

/-- `a(n-1)+(A001725(n+5)/A000142(n))^3` -/
def P15080298691400869229.Spec : Prop :=
  ∀ n, P15080298691400869229.a n = (A086026 (n + 1) : ℚ)

end A086026

/-!
# A086027: a(n) = Sum_{i=1..n} binomial(i+5,6)^2.

The programs for A086027, the canonical program `A086027.P4973331490199693232` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086027 has offset 1).

The definition of A086027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086027.P4973331490199693232

`∑[C(n+6, 6)²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086027

/-- `∑[C(n+6, 6)²]` -/
def P4973331490199693232.Spec : Prop :=
  ∀ n, (P4973331490199693232.a n : ℤ) = A086027 (n + 1)

theorem P4973331490199693232.correct : P4973331490199693232.Spec := by
  intro n
  simp only [A086027, Nat.add_sub_cancel]

end A086027

/-! ## A086027.P17899148894271276582

`∑[C(n+6, 6)^2]`
-/

namespace A086027.P17899148894271276582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 6 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086027.P17899148894271276582

namespace A086027

/-- `∑[C(n+6, 6)^2]` -/
def P17899148894271276582.Spec : Prop :=
  ∀ n, (P17899148894271276582.a n : ℤ) = A086027 (n + 1)

theorem P17899148894271276582.correct : P17899148894271276582.Spec := by
  intro n
  simp only [A086027, Nat.add_sub_cancel, A086027.P17899148894271276582.f1, A086027.P17899148894271276582.a, A086027.P4973331490199693232.f1, A086027.P4973331490199693232.a, SequenceMachineLib.memo_apply]

end A086027

/-! ## A086027.P9937812021869241715

`∑[∑[∑[∑[∑[∑[n+1]]]]]²]`
-/

namespace A086027.P9937812021869241715
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086027.P9937812021869241715

namespace A086027

/-- `∑[∑[∑[∑[∑[∑[n+1]]]]]²]` -/
def P9937812021869241715.Spec : Prop :=
  ∀ n, (P9937812021869241715.a n : ℤ) = A086027 (n + 1)

end A086027

/-! ## A086027.P12059954936070523603

`a(n-1)+C(n+6, 6)²` with `a(0)=1`
-/

namespace A086027.P12059954936070523603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 6) 6 ^ 2

end

end A086027.P12059954936070523603

namespace A086027

/-- `a(n-1)+C(n+6, 6)²` -/
def P12059954936070523603.Spec : Prop :=
  ∀ n, (P12059954936070523603.a n : ℤ) = A086027 (n + 1)

end A086027

/-! ## A086027.P190311413290917610

`a(n-1)+A000579(n+6)²` with `a(0)=1`
-/

namespace A086027.P190311413290917610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000579 (n + 6) ^ 2

end

end A086027.P190311413290917610

namespace A086027

/-- `a(n-1)+A000579(n+6)²` -/
def P190311413290917610.Spec : Prop :=
  ∀ n, P190311413290917610.a n = A086027 (n + 1)

end A086027

/-!
# A086028: a(n) = Sum_{i=1..n} C(i+5,6)^3.

The programs for A086028, the canonical program `A086028.P11862648635236438441` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086028 has offset 1).

The definition of A086028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086028.P11862648635236438441

`∑[C(n+6, 6)^3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086028

/-- `∑[C(n+6, 6)^3]` -/
def P11862648635236438441.Spec : Prop :=
  ∀ n, (P11862648635236438441.a n : ℤ) = A086028 (n + 1)

theorem P11862648635236438441.correct : P11862648635236438441.Spec := by
  intro n
  simp only [A086028, Nat.add_sub_cancel]

end A086028

/-! ## A086028.P17304484118528997364

`∑[∑[∑[∑[∑[∑[n+1]]]]]^3]`
-/

namespace A086028.P17304484118528997364
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086028.P17304484118528997364

namespace A086028

/-- `∑[∑[∑[∑[∑[∑[n+1]]]]]^3]` -/
def P17304484118528997364.Spec : Prop :=
  ∀ n, (P17304484118528997364.a n : ℤ) = A086028 (n + 1)

end A086028

/-! ## A086028.P4370995731847692029

`a(n-1)+C(n+6, 6)^3` with `a(0)=1`
-/

namespace A086028.P4370995731847692029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 6) 6 ^ 3

end

end A086028.P4370995731847692029

namespace A086028

/-- `a(n-1)+C(n+6, 6)^3` -/
def P4370995731847692029.Spec : Prop :=
  ∀ n, (P4370995731847692029.a n : ℤ) = A086028 (n + 1)

end A086028

/-! ## A086028.P11052723005045963384

`a(n-1)+A000579(n+6)^3` with `a(0)=1`
-/

namespace A086028.P11052723005045963384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000579 (n + 6) ^ 3

end

end A086028.P11052723005045963384

namespace A086028

/-- `a(n-1)+A000579(n+6)^3` -/
def P11052723005045963384.Spec : Prop :=
  ∀ n, P11052723005045963384.a n = A086028 (n + 1)

end A086028

/-! ## A086028.P3450074830164189722

`gcd(∑[A000579(n+6)^3], A000038(n))`
-/

namespace A086028.P3450074830164189722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A086028.P3450074830164189722

namespace A086028

/-- `gcd(∑[A000579(n+6)^3], A000038(n))` -/
def P3450074830164189722.Spec : Prop :=
  ∀ n, (P3450074830164189722.a n : ℤ) = A086028 (n + 1)

end A086028

/-! ## A086028.P18259186960621890779

`a(n-1)+A007318(A000217(n+7)-7)^3` with `a(0)=1`
-/

namespace A086028.P18259186960621890779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (A000217 (n + 7) - 7).toNat ^ 3

end

end A086028.P18259186960621890779

namespace A086028

/-- `a(n-1)+A007318(A000217(n+7)-7)^3` -/
def P18259186960621890779.Spec : Prop :=
  ∀ n, P18259186960621890779.a n = A086028 (n + 1)

end A086028

/-!
# A086029: a(n) = Sum_{i=1..n} C(i+6,7)^2.

The programs for A086029, the canonical program `A086029.P11430665292704435997` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086029 has offset 1).

The definition of A086029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086029.P11430665292704435997

`∑[C(n+7, 7)²]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086029

/-- `∑[C(n+7, 7)²]` -/
def P11430665292704435997.Spec : Prop :=
  ∀ n, (P11430665292704435997.a n : ℤ) = A086029 (n + 1)

theorem P11430665292704435997.correct : P11430665292704435997.Spec := by
  intro n
  simp only [A086029, Nat.add_sub_cancel]

end A086029

/-! ## A086029.P15488372382926275218

`∑[C(n+7, 7)^2]`
-/

namespace A086029.P15488372382926275218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086029.P15488372382926275218

namespace A086029

/-- `∑[C(n+7, 7)^2]` -/
def P15488372382926275218.Spec : Prop :=
  ∀ n, (P15488372382926275218.a n : ℤ) = A086029 (n + 1)

theorem P15488372382926275218.correct : P15488372382926275218.Spec := by
  intro n
  simp only [A086029, Nat.add_sub_cancel, A086029.P15488372382926275218.f1, A086029.P15488372382926275218.a, A086029.P11430665292704435997.f1, A086029.P11430665292704435997.a, SequenceMachineLib.memo_apply]

end A086029

/-! ## A086029.P14238188944559228237

`∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]²]`
-/

namespace A086029.P14238188944559228237
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086029.P14238188944559228237

namespace A086029

/-- `∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]²]` -/
def P14238188944559228237.Spec : Prop :=
  ∀ n, (P14238188944559228237.a n : ℤ) = A086029 (n + 1)

end A086029

/-! ## A086029.P14937670608844786766

`a(n-1)+C(n+7, 7)²` with `a(0)=1`
-/

namespace A086029.P14937670608844786766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 7) 7 ^ 2

end

end A086029.P14937670608844786766

namespace A086029

/-- `a(n-1)+C(n+7, 7)²` -/
def P14937670608844786766.Spec : Prop :=
  ∀ n, (P14937670608844786766.a n : ℤ) = A086029 (n + 1)

end A086029

/-! ## A086029.P17419262705093747357

`a(n-1)+A000580(n+7)²` with `a(0)=1`
-/

namespace A086029.P17419262705093747357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000580 (n + 7) ^ 2

end

end A086029.P17419262705093747357

namespace A086029

/-- `a(n-1)+A000580(n+7)²` -/
def P17419262705093747357.Spec : Prop :=
  ∀ n, P17419262705093747357.a n = A086029 (n + 1)

end A086029

/-!
# A086030: a(n) = Sum_{i=1..n} C(i+6,7)^3.

The programs for A086030, the canonical program `A086030.P7426691196486950775` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086030 has offset 1).

The definition of A086030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086030.P7426691196486950775

`∑[C(n+7, 7)^3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086030

/-- `∑[C(n+7, 7)^3]` -/
def P7426691196486950775.Spec : Prop :=
  ∀ n, (P7426691196486950775.a n : ℤ) = A086030 (n + 1)

theorem P7426691196486950775.correct : P7426691196486950775.Spec := by
  intro n
  simp only [A086030, Nat.add_sub_cancel]

end A086030

/-! ## A086030.P7632722536114552793

`∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]^3]`
-/

namespace A086030.P7632722536114552793
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086030.P7632722536114552793

namespace A086030

/-- `∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]^3]` -/
def P7632722536114552793.Spec : Prop :=
  ∀ n, (P7632722536114552793.a n : ℤ) = A086030 (n + 1)

end A086030

/-! ## A086030.P6701919227981844649

`a(n-1)+C(n+7, 7)^3` with `a(0)=1`
-/

namespace A086030.P6701919227981844649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 7) 7 ^ 3

end

end A086030.P6701919227981844649

namespace A086030

/-- `a(n-1)+C(n+7, 7)^3` -/
def P6701919227981844649.Spec : Prop :=
  ∀ n, (P6701919227981844649.a n : ℤ) = A086030 (n + 1)

end A086030

/-! ## A086030.P14410135965562296131

`a(n-1)+A000580(n+7)^3` with `a(0)=1`
-/

namespace A086030.P14410135965562296131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000580 (n + 7) ^ 3

end

end A086030.P14410135965562296131

namespace A086030

/-- `a(n-1)+A000580(n+7)^3` -/
def P14410135965562296131.Spec : Prop :=
  ∀ n, P14410135965562296131.a n = A086030 (n + 1)

end A086030

/-! ## A086030.P8730990806638799259

`gcd(∑[A000580(n+7)^3], A000038(n))`
-/

namespace A086030.P8730990806638799259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A086030.P8730990806638799259

namespace A086030

/-- `gcd(∑[A000580(n+7)^3], A000038(n))` -/
def P8730990806638799259.Spec : Prop :=
  ∀ n, (P8730990806638799259.a n : ℤ) = A086030 (n + 1)

end A086030

/-! ## A086030.P8883756351891285278

`or(∑[A000580(n+7)^3], A000007(n))`
-/

namespace A086030.P8883756351891285278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A086030.P8883756351891285278

namespace A086030

/-- `or(∑[A000580(n+7)^3], A000007(n))` -/
def P8883756351891285278.Spec : Prop :=
  ∀ n, P8883756351891285278.a n = A086030 (n + 1)

end A086030

/-!
# A086031: Number of nonisomorphic ways a loop can cross two parallel roads 2n times.

The programs for A086031, there is no canonical definition to state claims against.
-/

/-! ## A086031.P8799584844224636043

`or(A008621(A036919(n)), A286098(n))`
-/

namespace A086031.P8799584844224636043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A036919 n).toNat) (A286098 n)

end

end A086031.P8799584844224636043

/-! ## A086031.P7702589416012725539

`or(A001401(n), A004526(A180191(n+1)))`
-/

namespace A086031.P7702589416012725539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001401 n) (A004526 (A180191 (n + 1)).toNat)

end

end A086031.P7702589416012725539

/-! ## A086031.P12816272036803009083

`or(A004526(A180191(n+1)), A008581(n))`
-/

namespace A086031.P12816272036803009083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A180191 (n + 1)).toNat) (A008581 n)

end

end A086031.P12816272036803009083

/-!
# A086040: Prime p concatenated with next 4 primes is also prime.

The programs for A086040, there is no canonical definition to state claims against.
-/

/-! ## A086040.P9908458911105242116

`p?[∑[A159820(A197602(n+1))]]`
-/

namespace A086040.P9908458911105242116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159820 (A197602 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086040.P9908458911105242116

/-! ## A086040.P9009815940507214670

`filter[A277417(2*n+1), A145573(#)]`
-/

namespace A086040.P9009815940507214670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277417 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145573 (f1 j).toNat = 1) n)

end

end A086040.P9009815940507214670

/-!
# A086042: Nontrivial numbers which are prime and yield another prime when their digits are sorted in ascending order.

The programs for A086042, there is no canonical definition to state claims against.
-/

/-! ## A086042.P3871853009130677015

`∩[comp[A009994(n+1)], A211654(n+1)]`
-/

namespace A086042.P3871853009130677015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A086042.P3871853009130677015

/-! ## A086042.P204433236183389156

`∩[comp[A190221(n+1)], A211654(n+1)]`
-/

namespace A086042.P204433236183389156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A086042.P204433236183389156

/-! ## A086042.P10018316419485446708

`∩[lt[9, A193581(n)], A211654(n+1)]`
-/

namespace A086042.P10018316419485446708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A086042.P10018316419485446708

/-! ## A086042.P11860196595648613621

`∩[A211654(n+5), lt[A004185(n), n]]`
-/

namespace A086042.P11860196595648613621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A086042.P11860196595648613621

/-! ## A086042.P18345722718999653181

`∩[A211654(n+1), lt[A070196(n), (2*n)^(n%2)]]`
-/

namespace A086042.P18345722718999653181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A086042.P18345722718999653181

/-! ## A086042.P14386610505595011792

`∩[A211654(n+1), comp[A004185(n)]]`
-/

namespace A086042.P14386610505595011792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211654 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A086042.P14386610505595011792

/-!
# A086043: Concatenation of first n twin primes.

The programs for A086043, there is no canonical definition to state claims against.
-/

/-! ## A086043.P4548769381996594529

`A089933(n+1)+A000120(A058832(n))`
-/

namespace A086043.P4548769381996594529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089933 (n + 1) + A000120 (A058832 n).toNat

end

end A086043.P4548769381996594529

/-!
# A086044: Position of the first occurrence of n in concatenated numbers (A007376, Champernowne constant).

The programs for A086044, there is no canonical definition to state claims against.
-/

/-! ## A086044.P64254294983415540

`A057427(n)*A229186(n)+1`
-/

namespace A086044.P64254294983415540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A229186 n + 1

end

end A086044.P64254294983415540

/-! ## A086044.P16653782267730285206

`A229186(n)%A005897(n)+1`
-/

namespace A086044.P16653782267730285206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229186 n) (A005897 n) + 1

end

end A086044.P16653782267730285206

/-! ## A086044.P3114450435961665372

`(A229186(n)+1)%A154106(n)`
-/

namespace A086044.P3114450435961665372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229186 n + 1) (A154106 n)

end

end A086044.P3114450435961665372

/-! ## A086044.P1889094006330209116

`A031297(floor(57^-A006530(a(n-1))+n))+1` with `a(0)=1`
-/

namespace A086044.P1889094006330209116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031297 ⌊(57 : ℚ) ^ (-A006530 (a (n - 1)).toNat : ℤ) + (n : ℚ)⌋.toNat + 1

end

end A086044.P1889094006330209116

/-! ## A086044.P11832140458562543145

`A057427(n)+A031297(A028310(n))`
-/

namespace A086044.P11832140458562543145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A031297 (A028310 n).toNat

end

end A086044.P11832140458562543145

/-! ## A086044.P4800300335119020812

`A031297(A028310(n))-A057428(n)`
-/

namespace A086044.P4800300335119020812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A028310 n).toNat - A057428 n

end

end A086044.P4800300335119020812

/-! ## A086044.P16639677719208750

`A239700(a(A085980(n)))+A229186(n)` with `a(0)=1`
-/

namespace A086044.P16639677719208750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239700 (a (A085980 n).toNat).toNat + A229186 n

end

end A086044.P16639677719208750

/-! ## A086044.P5693331819485941003

`char[A038722(n+1)]*A229186(n)+1`
-/

namespace A086044.P5693331819485941003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229186 n + 1

end

end A086044.P5693331819485941003

/-! ## A086044.P6413066310056574321

`A020725(A229186(n))%Δ[A023545(n+1)]`
-/

namespace A086044.P6413066310056574321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (A229186 n).toNat) (f1 (n + 1) - f1 n)

end

end A086044.P6413066310056574321

/-! ## A086044.P12076807863819807095

`A229186(n)+a(A245842(∑[n]))` with `a(0)=1`
-/

namespace A086044.P12076807863819807095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229186 n + a (A245842 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086044.P12076807863819807095

/-! ## A086044.P1887406591051790801

`A229186(n)+A062513(A062513(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A086044.P1887406591051790801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229186 n + A062513 (A062513 (a (n - 1) + 1).toNat + 1).toNat

end

end A086044.P1887406591051790801

/-!
# A086045: Position of the second occurrence of n in concatenated numbers (A007376, Champernowne constant).

The programs for A086045, there is no canonical definition to state claims against.
-/

/-! ## A086045.P12813588626422239020

`A342162(n)+A086044(n)`
-/

namespace A086045.P12813588626422239020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 n + A086044 n

end

end A086045.P12813588626422239020

/-! ## A086045.P15619680703764769599

`A342162(n)+A229186(n)%A008574(n)+1`
-/

namespace A086045.P15619680703764769599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 n + (Int.tmod (A229186 n) (A008574 n) + 1)

end

end A086045.P15619680703764769599

/-! ## A086045.P11185249242789609513

`A342162(n)+(A229186(n)+1)%A154106(n)`
-/

namespace A086045.P11185249242789609513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 n + Int.tmod (A229186 n + 1) (A154106 n)

end

end A086045.P11185249242789609513

/-! ## A086045.P15755367488302440741

`A342162(n)+char[A038722(n+1)]*A229186(n)+1`
-/

namespace A086045.P15755367488302440741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 n + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229186 n + 1)

end

end A086045.P15755367488302440741

/-! ## A086045.P9176082840563815022

`A031297(A028310(n))+A342162(n)+A057427(n)`
-/

namespace A086045.P9176082840563815022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A028310 n).toNat + (A342162 n + A057427 n)

end

end A086045.P9176082840563815022

/-! ## A086045.P5365249899612465536

`A342162(n)+A229186(A065033(2*n))+A057427(n)`
-/

namespace A086045.P5365249899612465536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342162 n + (A229186 (A065033 (2 * n)).toNat + A057427 n)

end

end A086045.P5365249899612465536

/-!
# A086046: Sum of first n 4-almost primes.

The programs for A086046, the canonical program `A086046.P12566534839293457463` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086046 has offset 1).

The definition of A086046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086046.P12566534839293457463

`∑[A014613(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086046

/-- `∑[A014613(n+1)]` -/
def P12566534839293457463.Spec : Prop :=
  ∀ n, P12566534839293457463.a n = A086046 (n + 1)

theorem P12566534839293457463.correct : P12566534839293457463.Spec := by
  intro n
  simp only [A086046, Nat.add_sub_cancel]

end A086046

/-! ## A086046.P9046874218831985500

`A110226(n+1)-1`
-/

namespace A086046.P9046874218831985500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110226 (n + 1) - 1

end

end A086046.P9046874218831985500

namespace A086046

/-- `A110226(n+1)-1` -/
def P9046874218831985500.Spec : Prop :=
  ∀ n, P9046874218831985500.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P14667456429963398277

`∑[eq[4, A001222(n+1)]+1]`
-/

namespace A086046.P14667456429963398277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P14667456429963398277

namespace A086046

/-- `∑[eq[4, A001222(n+1)]+1]` -/
def P14667456429963398277.Spec : Prop :=
  ∀ n, (P14667456429963398277.a n : ℤ) = A086046 (n + 1)

end A086046

/-! ## A086046.P16394817624136540268

`∑[record[A033987(n+1)*A101637(A033987(n+1))]]`
-/

namespace A086046.P16394817624136540268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1) * A101637 (A033987 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P16394817624136540268

namespace A086046

/-- `∑[record[A033987(n+1)*A101637(A033987(n+1))]]` -/
def P16394817624136540268.Spec : Prop :=
  ∀ n, P16394817624136540268.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P15495498200371586670

`∑[record[A014613(A304740(n))]]`
-/

namespace A086046.P15495498200371586670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A304740 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P15495498200371586670

namespace A086046

/-- `∑[record[A014613(A304740(n))]]` -/
def P15495498200371586670.Spec : Prop :=
  ∀ n, P15495498200371586670.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P830056762971054902

`∑[record[A014613(A126759(n))]]`
-/

namespace A086046.P830056762971054902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P830056762971054902

namespace A086046

/-- `∑[record[A014613(A126759(n))]]` -/
def P830056762971054902.Spec : Prop :=
  ∀ n, P830056762971054902.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P6071423731020716459

`∑[eq[4, A001222(A004277(n)-n)]]`
-/

namespace A086046.P6071423731020716459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n - (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P6071423731020716459

namespace A086046

/-- `∑[eq[4, A001222(A004277(n)-n)]]` -/
def P6071423731020716459.Spec : Prop :=
  ∀ n, (P6071423731020716459.a n : ℤ) = A086046 (n + 1)

end A086046

/-! ## A086046.P10401698318779581989

`∑[A000720(A124282(n+1))]`
-/

namespace A086046.P10401698318779581989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P10401698318779581989

namespace A086046

/-- `∑[A000720(A124282(n+1))]` -/
def P10401698318779581989.Spec : Prop :=
  ∀ n, P10401698318779581989.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P8700414865148621485

`∑[record[A025480(A014614(n+1))]]`
-/

namespace A086046.P8700414865148621485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A014614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P8700414865148621485

namespace A086046

/-- `∑[record[A025480(A014614(n+1))]]` -/
def P8700414865148621485.Spec : Prop :=
  ∀ n, P8700414865148621485.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P8980962948365522335

`∑[record[A152271(A014614(n+1)-1)]]`
-/

namespace A086046.P8980962948365522335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A014614 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P8980962948365522335

namespace A086046

/-- `∑[record[A152271(A014614(n+1)-1)]]` -/
def P8980962948365522335.Spec : Prop :=
  ∀ n, P8980962948365522335.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P15534010791621964007

`∑[A207790(8*(2*n+1)+1)]`
-/

namespace A086046.P15534010791621964007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (8 * (2 * n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P15534010791621964007

namespace A086046

/-- `∑[A207790(8*(2*n+1)+1)]` -/
def P15534010791621964007.Spec : Prop :=
  ∀ n, P15534010791621964007.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P9019008494540410222

`∑[record[A054576(A046306(n+1))]]`
-/

namespace A086046.P9019008494540410222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A046306 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P9019008494540410222

namespace A086046

/-- `∑[record[A054576(A046306(n+1))]]` -/
def P9019008494540410222.Spec : Prop :=
  ∀ n, P9019008494540410222.a n = A086046 (n + 1)

end A086046

/-! ## A086046.P14461001774393406806

`∑[A078840(A167614(n+2)+1)]`
-/

namespace A086046.P14461001774393406806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086046.P14461001774393406806

namespace A086046

/-- `∑[A078840(A167614(n+2)+1)]` -/
def P14461001774393406806.Spec : Prop :=
  ∀ n, P14461001774393406806.a n = A086046 (n + 1)

end A086046

/-!
# A086047: Sum of first n 5-almost primes.

The programs for A086047, the canonical program `A086047.P8456514765759007664` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086047 has offset 1).

The definition of A086047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086047.P8456514765759007664

`∑[A014614(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A086047

/-- `∑[A014614(n+1)]` -/
def P8456514765759007664.Spec : Prop :=
  ∀ n, P8456514765759007664.a n = A086047 (n + 1)

theorem P8456514765759007664.correct : P8456514765759007664.Spec := by
  intro n
  simp only [A086047, Nat.add_sub_cancel]

end A086047

/-! ## A086047.P12177865840765395400

`∑[A114966(n+1)-A114944(n+1)]`
-/

namespace A086047.P12177865840765395400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - A114944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P12177865840765395400

namespace A086047

/-- `∑[A114966(n+1)-A114944(n+1)]` -/
def P12177865840765395400.Spec : Prop :=
  ∀ n, P12177865840765395400.a n = A086047 (n + 1)

theorem P12177865840765395400.correct : P12177865840765395400.Spec := by
  intro n
  simp only [A086047, Nat.add_sub_cancel, A086047.P12177865840765395400.f1, A086047.P12177865840765395400.a, A086047.P8456514765759007664.f1, A086047.P8456514765759007664.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A114944, A114944.P5745295539132009725.a, A114966, A114966.P15379347381698072828.a, A001222, A001222.P11318177267732088261.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A088707, A088707.P7291141647877559993.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A318473, A318473.P15254297892022099386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086047

/-! ## A086047.P3699049115386973856

`∑[∪[A110229(n+1), A110230(n+1)]]`
-/

namespace A086047.P3699049115386973856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110229 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110230 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P3699049115386973856

namespace A086047

/-- `∑[∪[A110229(n+1), A110230(n+1)]]` -/
def P3699049115386973856.Spec : Prop :=
  ∀ n, (P3699049115386973856.a n : ℤ) = A086047 (n + 1)

end A086047

/-! ## A086047.P16604889732984500416

`∑[record[A014614(A133310(n))]]`
-/

namespace A086047.P16604889732984500416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P16604889732984500416

namespace A086047

/-- `∑[record[A014614(A133310(n))]]` -/
def P16604889732984500416.Spec : Prop :=
  ∀ n, P16604889732984500416.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P15623760120114296938

`∑[record[A273943(A046306(n+1))]]`
-/

namespace A086047.P15623760120114296938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046306 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P15623760120114296938

namespace A086047

/-- `∑[record[A273943(A046306(n+1))]]` -/
def P15623760120114296938.Spec : Prop :=
  ∀ n, P15623760120114296938.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P13531579585045882778

`∑[eq[5, A001222(n+1)]+1]`
-/

namespace A086047.P13531579585045882778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P13531579585045882778

namespace A086047

/-- `∑[eq[5, A001222(n+1)]+1]` -/
def P13531579585045882778.Spec : Prop :=
  ∀ n, (P13531579585045882778.a n : ℤ) = A086047 (n + 1)

theorem P13531579585045882778.correct : P13531579585045882778.Spec := by
  intro n
  simp only [A086047, Nat.add_sub_cancel, A086047.P13531579585045882778.f2, A086047.P13531579585045882778.f3, A086047.P13531579585045882778.f1, A086047.P13531579585045882778.a, A086047.P8456514765759007664.f1, A086047.P8456514765759007664.a, A001222, A001222.P11318177267732088261.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086047

/-! ## A086047.P968635060678174184

`∑[record[A014614(A152271(n))]]`
-/

namespace A086047.P968635060678174184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P968635060678174184

namespace A086047

/-- `∑[record[A014614(A152271(n))]]` -/
def P968635060678174184.Spec : Prop :=
  ∀ n, P968635060678174184.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P16996109423690821701

`∑[record[A014614(A126759(n))]]`
-/

namespace A086047.P16996109423690821701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P16996109423690821701

namespace A086047

/-- `∑[record[A014614(A126759(n))]]` -/
def P16996109423690821701.Spec : Prop :=
  ∀ n, P16996109423690821701.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P13534709571210016288

`∑[record[A014614(A286552(n))]]`
-/

namespace A086047.P13534709571210016288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A286552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P13534709571210016288

namespace A086047

/-- `∑[record[A014614(A286552(n))]]` -/
def P13534709571210016288.Spec : Prop :=
  ∀ n, P13534709571210016288.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P1264095856065392846

`∑[record[A117358(A046310(n+1))]]`
-/

namespace A086047.P1264095856065392846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046310 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P1264095856065392846

namespace A086047

/-- `∑[record[A117358(A046310(n+1))]]` -/
def P1264095856065392846.Spec : Prop :=
  ∀ n, P1264095856065392846.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P8871538337802418023

`∑[record[A152271(A046306(n+1)-1)]]`
-/

namespace A086047.P8871538337802418023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A046306 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P8871538337802418023

namespace A086047

/-- `∑[record[A152271(A046306(n+1)-1)]]` -/
def P8871538337802418023.Spec : Prop :=
  ∀ n, P8871538337802418023.a n = A086047 (n + 1)

end A086047

/-! ## A086047.P8423714376044408951

`∑[record[A054576(2*A046306(n+1))]]`
-/

namespace A086047.P8423714376044408951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A046306 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086047.P8423714376044408951

namespace A086047

/-- `∑[record[A054576(2*A046306(n+1))]]` -/
def P8423714376044408951.Spec : Prop :=
  ∀ n, P8423714376044408951.a n = A086047 (n + 1)

end A086047

/-!
# A086048: Position of first occurrence of n in concatenated primes (A033308, Copeland-Erdos constant).

The programs for A086048, there is no canonical definition to state claims against.
-/

/-! ## A086048.P10513338666838026862

`gcd(A229190(n)+1, floor(acot(n)))`
-/

namespace A086048.P10513338666838026862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229190 n + 1) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A086048.P10513338666838026862

/-! ## A086048.P9745737460866816797

`A057427(n)*A229190(n)+1`
-/

namespace A086048.P9745737460866816797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A229190 n + 1

end

end A086048.P9745737460866816797

/-! ## A086048.P6052794395253503589

`1-A057428(n)*A229190(n)`
-/

namespace A086048.P6052794395253503589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A229190 n

end

end A086048.P6052794395253503589

/-! ## A086048.P17589494018611699899

`A229190(n)%A005897(n)+1`
-/

namespace A086048.P17589494018611699899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229190 n) (A005897 n) + 1

end

end A086048.P17589494018611699899

/-! ## A086048.P5005605952882616055

`(A229190(n)+1)%A166911(n)`
-/

namespace A086048.P5005605952882616055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229190 n + 1) (A166911 n)

end

end A086048.P5005605952882616055

/-! ## A086048.P11985651321998182755

`gcd(A229190(n)+1, A000038(n))`
-/

namespace A086048.P11985651321998182755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229190 n + 1) (A000038 n)

end

end A086048.P11985651321998182755

/-! ## A086048.P4177086200889822878

`A000040(n+1)%2*A229190(n)+1`
-/

namespace A086048.P4177086200889822878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A229190 n + 1

end

end A086048.P4177086200889822878

/-! ## A086048.P6128396218442753835

`(A229190(n)+1)^A000045(ceil(n/(n+1)))`
-/

namespace A086048.P6128396218442753835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229190 n + 1 : ℚ) ^ (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A086048.P6128396218442753835

/-! ## A086048.P7519489568878075927

`val(a(n-1), A000040(n+2))+A229190(n)+1` with `a(0)=1`
-/

namespace A086048.P7519489568878075927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (a (n - 1)).toNat (A000040 (n + 2)).toNat : ℤ) + (A229190 n + 1)

end

end A086048.P7519489568878075927

/-! ## A086048.P9610950981999921574

`(A229190(n)+1)^A008683(2*A000040(n+1))`
-/

namespace A086048.P9610950981999921574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229190 n + 1 : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A086048.P9610950981999921574

/-!
# A086049: Position of first occurrence of n-th prime in concatenated primes (A033308, Copeland-Erdos constant).

The programs for A086049, there is no canonical definition to state claims against.
-/

/-! ## A086049.P4006064612550349770

`A086048(A000040(n+1))`
-/

namespace A086049.P4006064612550349770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086048 (A000040 (n + 1)).toNat

end

end A086049.P4006064612550349770

/-! ## A086049.P2254499978543689876

`A086048(A008578(n+2))`
-/

namespace A086049.P2254499978543689876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086048 (A008578 (n + 2)).toNat

end

end A086049.P2254499978543689876

/-! ## A086049.P12961184561670025000

`A086048(A182986(n+2))`
-/

namespace A086049.P12961184561670025000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086048 (A182986 (n + 2)).toNat

end

end A086049.P12961184561670025000

/-! ## A086049.P3806221931274192006

`A165449(Δ[A007504(n)])+1`
-/

namespace A086049.P3806221931274192006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165449 (f1 (n + 1) - f1 n).toNat + 1

end

end A086049.P3806221931274192006

/-! ## A086049.P14431428881741726476

`A165449(p?[A186891(n+1)])+1`
-/

namespace A086049.P14431428881741726476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165449 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P14431428881741726476

/-! ## A086049.P13834921370548596393

`A165449(p?[A326136(n+1)])+1`
-/

namespace A086049.P13834921370548596393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165449 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P13834921370548596393

/-! ## A086049.P14645508310627554249

`A165449(p?[A342768(n+1)])+1`
-/

namespace A086049.P14645508310627554249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165449 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P14645508310627554249

/-! ## A086049.P1070571756074841976

`A229190(p?[A014681(n)])+1`
-/

namespace A086049.P1070571756074841976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P1070571756074841976

/-! ## A086049.P8032154604810099796

`A229190(p?[A000961(n+1)])+1`
-/

namespace A086049.P8032154604810099796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P8032154604810099796

/-! ## A086049.P7705805280039383082

`A229190(p?[A004275(n)+1])+1`
-/

namespace A086049.P7705805280039383082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P7705805280039383082

/-! ## A086049.P16879889010398853416

`A229190(p?[A045965(n+1)])+1`
-/

namespace A086049.P16879889010398853416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P16879889010398853416

/-! ## A086049.P11662588885779091057

`A229190(p?[A087441(n+1)])+1`
-/

namespace A086049.P11662588885779091057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P11662588885779091057

/-! ## A086049.P13133009019441036566

`A229190(p?[A324050(n+1)])+1`
-/

namespace A086049.P13133009019441036566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P13133009019441036566

/-! ## A086049.P15948044098112411382

`A229190(p?[A326136(n+1)])+1`
-/

namespace A086049.P15948044098112411382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P15948044098112411382

/-! ## A086049.P11934700926534582410

`A229190(p?[A247225(n+1)])+1`
-/

namespace A086049.P11934700926534582410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229190 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A086049.P11934700926534582410

/-!
# A086051: Nontrivial numbers which are prime, contain no zero digits and yield another prime when their digits are sorted in ascending order.

The programs for A086051, there is no canonical definition to state claims against.
-/

/-! ## A086051.P2266338881756278661

`∩[A038618(n+1), A086042(n+1)]`
-/

namespace A086051.P2266338881756278661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086051.P2266338881756278661

/-! ## A086051.P5790814610411634555

`∩[A086042(n+1), A195943(n+1)]`
-/

namespace A086051.P5790814610411634555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086051.P5790814610411634555

/-! ## A086051.P7923292573050813523

`∩[A086042(n+1), A392375(n+1)]`
-/

namespace A086051.P7923292573050813523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086051.P7923292573050813523

/-! ## A086051.P13251691772303560941

`∩[A061116(n+1), A086042(n+1)]`
-/

namespace A086051.P13251691772303560941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086051.P13251691772303560941

/-! ## A086051.P10983262460525355186

`filter[A086042(n+1), A209929(#)]`
-/

namespace A086051.P10983262460525355186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A086051.P10983262460525355186

/-! ## A086051.P5613147493570959067

`∩[A052382(n+1), A086042(n+1)]`
-/

namespace A086051.P5613147493570959067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086051.P5613147493570959067

/-! ## A086051.P15295953616317599625

`∩[A086042(n+1), A125290(n+1)]`
-/

namespace A086051.P15295953616317599625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086051.P15295953616317599625

/-! ## A086051.P1625916569037790557

`record[A004719(A086042(n+1))]`
-/

namespace A086051.P1625916569037790557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A086042 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086051.P1625916569037790557

/-! ## A086051.P4462136690009245632

`filter[A086042(n+1), A168046(#)]`
-/

namespace A086051.P4462136690009245632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A086051.P4462136690009245632

/-!
# A086052: Sum of first n 6-almost primes.

The programs for A086052, there is no canonical definition to state claims against.
-/

/-! ## A086052.P53955997001337869

`∑[A046306(n+1)]`
-/

namespace A086052.P53955997001337869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P53955997001337869

/-! ## A086052.P3054402046949730054

`∑[∪[A110231(n+1), A110232(n+1)]]`
-/

namespace A086052.P3054402046949730054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110231 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110232 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P3054402046949730054

/-! ## A086052.P1754168637922583314

`∑[record[A046306(A152271(n))]]`
-/

namespace A086052.P1754168637922583314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P1754168637922583314

/-! ## A086052.P8923645230067198808

`∑[record[A046306(A158416(n))]]`
-/

namespace A086052.P8923645230067198808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P8923645230067198808

/-! ## A086052.P15109398931093905206

`∑[record[A046306(A126759(n))]]`
-/

namespace A086052.P15109398931093905206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P15109398931093905206

/-! ## A086052.P6066042148294420301

`∑[record[A046306(A154958(n))]]`
-/

namespace A086052.P6066042148294420301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P6066042148294420301

/-! ## A086052.P9867570437052718641

`∑[eq[6, A001222(n+1)]+1]`
-/

namespace A086052.P9867570437052718641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P9867570437052718641

/-! ## A086052.P7852825617508406321

`∑[record[A046308(n+1)/A020639(A046308(n+1))]]`
-/

namespace A086052.P7852825617508406321
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046308 (n + 1) : ℚ) / (A020639 (A046308 (n + 1)).toNat : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P7852825617508406321

/-! ## A086052.P3155871564463154938

`∑[eq[6, A001222(A028310(n))]]`
-/

namespace A086052.P3155871564463154938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P3155871564463154938

/-! ## A086052.P1959893105634749140

`∑[record[A117358(2*A046310(n+1))]]`
-/

namespace A086052.P1959893105634749140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A046310 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P1959893105634749140

/-! ## A086052.P11152726373935255392

`∑[record[A278529(A046308(n+1))]]`
-/

namespace A086052.P11152726373935255392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A046308 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P11152726373935255392

/-! ## A086052.P17111900494391464667

`∑[record[A152271(A046308(n+1)-1)]]`
-/

namespace A086052.P17111900494391464667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A046308 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P17111900494391464667

/-! ## A086052.P8406705408161419749

`∑[record[A174571(A046310(n+1))]]`
-/

namespace A086052.P8406705408161419749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A046310 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086052.P8406705408161419749

/-!
# A086059: Sum of first n 7-almost primes.

The programs for A086059, there is no canonical definition to state claims against.
-/

/-! ## A086059.P11993437893784615126

`∑[A046308(n+1)]`
-/

namespace A086059.P11993437893784615126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P11993437893784615126

/-! ## A086059.P13565075726207538258

`∑[record[A046308(A324347(n))]]`
-/

namespace A086059.P13565075726207538258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P13565075726207538258

/-! ## A086059.P11300348102336097152

`∑[record[A046308(A344180(n))]]`
-/

namespace A086059.P11300348102336097152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P11300348102336097152

/-! ## A086059.P1990511591353977455

`∑[A000027(A046308(-xor(n, -1)))]`
-/

namespace A086059.P1990511591353977455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A046308 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P1990511591353977455

/-! ## A086059.P12048076627839874568

`∑[record[A046308(A152271(n))]]`
-/

namespace A086059.P12048076627839874568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P12048076627839874568

/-! ## A086059.P8696264020590663236

`∑[record[A046308(A126759(n))]]`
-/

namespace A086059.P8696264020590663236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P8696264020590663236

/-! ## A086059.P14014877884738139586

`∑[record[A046308(A154958(n))]]`
-/

namespace A086059.P14014877884738139586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P14014877884738139586

/-! ## A086059.P12548731595864875039

`∑[record[A046308(A328388(n))]]`
-/

namespace A086059.P12548731595864875039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (A328388 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P12548731595864875039

/-! ## A086059.P3702813312033317495

`∑[record[A332893(A046310(n+1))]]`
-/

namespace A086059.P3702813312033317495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A046310 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P3702813312033317495

/-! ## A086059.P2383666656606918384

`∑[record[A117358(A046314(n+1))]]`
-/

namespace A086059.P2383666656606918384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046314 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086059.P2383666656606918384

/-!
# A086061: Sum of first n 8-almost primes.

The programs for A086061, there is no canonical definition to state claims against.
-/

/-! ## A086061.P11881878396903678223

`∑[A046310(n+1)]`
-/

namespace A086061.P11881878396903678223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P11881878396903678223

/-! ## A086061.P13716971822946383229

`∑[record[A046310(A324346(n))]]`
-/

namespace A086061.P13716971822946383229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P13716971822946383229

/-! ## A086061.P11986869254496781617

`∑[record[A046310(A324347(n))]]`
-/

namespace A086061.P11986869254496781617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P11986869254496781617

/-! ## A086061.P10621364813369832408

`∑[record[A046310(A133310(n))]]`
-/

namespace A086061.P10621364813369832408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P10621364813369832408

/-! ## A086061.P2460488224221037919

`∑[record[A046310(A152271(n))]]`
-/

namespace A086061.P2460488224221037919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P2460488224221037919

/-! ## A086061.P17833457142213734408

`∑[record[A046310(A126759(n))]]`
-/

namespace A086061.P17833457142213734408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P17833457142213734408

/-! ## A086061.P79501836030831037

`∑[record[A273943(A046312(n+1))]]`
-/

namespace A086061.P79501836030831037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046312 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P79501836030831037

/-! ## A086061.P11841587260864997731

`∑[record[A046310(A134478(n))]]`
-/

namespace A086061.P11841587260864997731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P11841587260864997731

/-! ## A086061.P7312804209461206908

`∑[A046312(A000196((n+1)²))/2]`
-/

namespace A086061.P7312804209461206908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046312 (A000196 ((n + 1) ^ 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086061.P7312804209461206908

/-!
# A086062: Sum of first n 3-almost primes.

The programs for A086062, the canonical program `A086062.P3763696700270825147` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086062 has offset 1).

The definition of A086062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086062.P3763696700270825147

`∑[A014612(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A086062

/-- `∑[A014612(n+1)]` -/
def P3763696700270825147.Spec : Prop :=
  ∀ n, P3763696700270825147.a n = A086062 (n + 1)

theorem P3763696700270825147.correct : P3763696700270825147.Spec := by
  intro n
  simp only [A086062, Nat.add_sub_cancel]

end A086062

/-! ## A086062.P13943546239988196445

`∑[eq[3, A001222(n+1)]+1]`
-/

namespace A086062.P13943546239988196445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P13943546239988196445

namespace A086062

/-- `∑[eq[3, A001222(n+1)]+1]` -/
def P13943546239988196445.Spec : Prop :=
  ∀ n, (P13943546239988196445.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P11885962847528085930

`∑[eq[3, A008481(n+1)]+1]`
-/

namespace A086062.P11885962847528085930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P11885962847528085930

namespace A086062

/-- `∑[eq[3, A008481(n+1)]+1]` -/
def P11885962847528085930.Spec : Prop :=
  ∀ n, (P11885962847528085930.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P5643650734404108643

`∑[eq[n, n-a(A001222(n))]]` with `a(0)=1, a(1)=3`
-/

namespace A086062.P5643650734404108643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  (n : ℤ) - f3 (A001222 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P5643650734404108643

namespace A086062

/-- `∑[eq[n, n-a(A001222(n))]]` -/
def P5643650734404108643.Spec : Prop :=
  ∀ n, (P5643650734404108643.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P4745207082879583396

`∑[eq[4, A318473(n+1)+1]+1]`
-/

namespace A086062.P4745207082879583396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318473 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P4745207082879583396

namespace A086062

/-- `∑[eq[4, A318473(n+1)+1]+1]` -/
def P4745207082879583396.Spec : Prop :=
  ∀ n, (P4745207082879583396.a n : ℤ) = A086062 (n + 1)

theorem P4745207082879583396.correct : P4745207082879583396.Spec := by
  intro n
  simp only [A086062, Nat.add_sub_cancel, A086062.P4745207082879583396.f2, A086062.P4745207082879583396.f3, A086062.P4745207082879583396.f1, A086062.P4745207082879583396.a, A086062.P3763696700270825147.f1, A086062.P3763696700270825147.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A318472, A318472.P17460137329707848954.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A318471, A318471.P10974853522261478504.f1, A318471.P10974853522261478504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086062

/-! ## A086062.P14528085264087613009

`∑[∪[A217856(n+1), A033477(n)]]`
-/

namespace A086062.P14528085264087613009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P14528085264087613009

namespace A086062

/-- `∑[∪[A217856(n+1), A033477(n)]]` -/
def P14528085264087613009.Spec : Prop :=
  ∀ n, (P14528085264087613009.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P14501445798536406794

`∑[∪[A046316(n+1), A075818(n+1)]]`
-/

namespace A086062.P14501445798536406794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P14501445798536406794

namespace A086062

/-- `∑[∪[A046316(n+1), A075818(n+1)]]` -/
def P14501445798536406794.Spec : Prop :=
  ∀ n, (P14501445798536406794.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P16110855488146935841

`A014612(A028310(n)+1)+a(n-1)` with `a(0)=8`
-/

namespace A086062.P16110855488146935841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A014612 (A028310 n + 1).toNat + a (n - 1)

end

end A086062.P16110855488146935841

namespace A086062

/-- `A014612(A028310(n)+1)+a(n-1)` -/
def P16110855488146935841.Spec : Prop :=
  ∀ n, P16110855488146935841.a n = A086062 (n + 1)

end A086062

/-! ## A086062.P7308321284848350053

`∑[lt[A065273(A001222(n+1)+2)², 2]+1]`
-/

namespace A086062.P7308321284848350053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065273 (A001222 (n + 1) + 2).toNat ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P7308321284848350053

namespace A086062

/-- `∑[lt[A065273(A001222(n+1)+2)², 2]+1]` -/
def P7308321284848350053.Spec : Prop :=
  ∀ n, (P7308321284848350053.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P12163862926711442661

`A110209(n+1)-1`
-/

namespace A086062.P12163862926711442661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 (n + 1) - 1

end

end A086062.P12163862926711442661

namespace A086062

/-- `A110209(n+1)-1` -/
def P12163862926711442661.Spec : Prop :=
  ∀ n, P12163862926711442661.a n = A086062 (n + 1)

end A086062

/-! ## A086062.P11063790258322618882

`∑[A165712(a(n-1))]` with `a(0)=8`
-/

namespace A086062.P11063790258322618882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P11063790258322618882

namespace A086062

/-- `∑[A165712(a(n-1))]` -/
def P11063790258322618882.Spec : Prop :=
  ∀ n, P11063790258322618882.a n = A086062 (n + 1)

end A086062

/-! ## A086062.P5412274415204172200

`∑[eq[3, ∑{e}[n, #]]]`
-/

namespace A086062.P5412274415204172200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P5412274415204172200

namespace A086062

/-- `∑[eq[3, ∑{e}[n, #]]]` -/
def P5412274415204172200.Spec : Prop :=
  ∀ n, (P5412274415204172200.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P16001933933479363301

`∑[eq[2, A252736(n+1)]+1]`
-/

namespace A086062.P16001933933479363301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P16001933933479363301

namespace A086062

/-- `∑[eq[2, A252736(n+1)]+1]` -/
def P16001933933479363301.Spec : Prop :=
  ∀ n, (P16001933933479363301.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P3820950178218008248

`∑[eq[3, A001222(A028310(n))]]`
-/

namespace A086062.P3820950178218008248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P3820950178218008248

namespace A086062

/-- `∑[eq[3, A001222(A028310(n))]]` -/
def P3820950178218008248.Spec : Prop :=
  ∀ n, (P3820950178218008248.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P7328143579175877903

`∑[eq[4, A001222(A004277(n))]]`
-/

namespace A086062.P7328143579175877903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P7328143579175877903

namespace A086062

/-- `∑[eq[4, A001222(A004277(n))]]` -/
def P7328143579175877903.Spec : Prop :=
  ∀ n, (P7328143579175877903.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P172674744076903655

`∑[eq[4, A001222(A008486(n))]]`
-/

namespace A086062.P172674744076903655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P172674744076903655

namespace A086062

/-- `∑[eq[4, A001222(A008486(n))]]` -/
def P172674744076903655.Spec : Prop :=
  ∀ n, (P172674744076903655.a n : ℤ) = A086062 (n + 1)

end A086062

/-! ## A086062.P6284807279439213522

`∑[A000720(A124268(n+1))]`
-/

namespace A086062.P6284807279439213522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P6284807279439213522

namespace A086062

/-- `∑[A000720(A124268(n+1))]` -/
def P6284807279439213522.Spec : Prop :=
  ∀ n, P6284807279439213522.a n = A086062 (n + 1)

end A086062

/-! ## A086062.P1462397889061619786

`∑[A058933(A105346(n+1))]`
-/

namespace A086062.P1462397889061619786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A105346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P1462397889061619786

namespace A086062

/-- `∑[A058933(A105346(n+1))]` -/
def P1462397889061619786.Spec : Prop :=
  ∀ n, P1462397889061619786.a n = A086062 (n + 1)

end A086062

/-! ## A086062.P16751056394323822532

`∑[A058933(A124317(n+1))]`
-/

namespace A086062.P16751056394323822532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A124317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P16751056394323822532

namespace A086062

/-- `∑[A058933(A124317(n+1))]` -/
def P16751056394323822532.Spec : Prop :=
  ∀ n, P16751056394323822532.a n = A086062 (n + 1)

end A086062

/-! ## A086062.P1831264033443172049

`∑[A207790(8*n+5)]`
-/

namespace A086062.P1831264033443172049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086062.P1831264033443172049

namespace A086062

/-- `∑[A207790(8*n+5)]` -/
def P1831264033443172049.Spec : Prop :=
  ∀ n, P1831264033443172049.a n = A086062 (n + 1)

end A086062

/-!
# A086063: a(n) = if n<=1 then 1 else smallest k>1 such that in binary representation n is contained in n^k.

The programs for A086063, there is no canonical definition to state claims against.
-/

/-! ## A086063.P1600604971230098514

`A136510(n)-C(a(n-1), n)` with `a(0)=1`
-/

namespace A086063.P1600604971230098514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136510 n - (Nat.choose (a (n - 1)).toNat n : ℤ)

end

end A086063.P1600604971230098514

/-! ## A086063.P1551391498547935651

`A136510(round(acot(n)+n))-C(n, n²)`
-/

namespace A086063.P1551391498547935651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136510 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A086063.P1551391498547935651

/-! ## A086063.P12922823940386889917

`A136510(round(acot(a(n-1))+n))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A086063.P12922823940386889917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A136510 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ))).toNat

end

end A086063.P12922823940386889917

/-! ## A086063.P13233058526390670332

`A136510(abs(1-n)+1)-C(n, n²)`
-/

namespace A086063.P13233058526390670332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136510 (|1 - (n : ℤ)| + 1).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A086063.P13233058526390670332

/-! ## A086063.P4768082344090851845

`A136510(round(sqrt(n²+1)))-char[1-n²]`
-/

namespace A086063.P4768082344090851845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136510 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A086063.P4768082344090851845

/-! ## A086063.P10658215963715634254

`A136510(n)%A029579(a(n-1)+n)` with `a(0)=1, a(1)=1`
-/

namespace A086063.P10658215963715634254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A136510 n) (A029579 (a (n - 1) + (n : ℤ)).toNat)

end

end A086063.P10658215963715634254

/-! ## A086063.P16993978855831836093

`A136510(A028310(gcd(n, n*a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A086063.P16993978855831836093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A136510 (A028310 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))).toNat

end

end A086063.P16993978855831836093

/-! ## A086063.P6558950613493892407

`A136510(A028310(n))/A141044(n)`
-/

namespace A086063.P6558950613493892407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136510 (A028310 n).toNat : ℚ) / (A141044 n : ℚ)

end

end A086063.P6558950613493892407

/-! ## A086063.P5357255498411391209

`A136510(A028310(n))/A000005(C(n, n²)+1)`
-/

namespace A086063.P5357255498411391209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136510 (A028310 n).toNat : ℚ) / (A000005 (Nat.choose n (n ^ 2) + 1) : ℚ)

end

end A086063.P5357255498411391209

/-! ## A086063.P15621443886597489789

`A136510(A233583(n+1))/A141044(n)`
-/

namespace A086063.P15621443886597489789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136510 (A233583 (n + 1)).toNat : ℚ) / (A141044 n : ℚ)

end

end A086063.P15621443886597489789

/-! ## A086063.P619968446353407629

`A136510(A233583(n+1))/A054977(A090223(n))`
-/

namespace A086063.P619968446353407629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136510 (A233583 (n + 1)).toNat : ℚ) / (A054977 (A090223 n).toNat : ℚ)

end

end A086063.P619968446353407629

/-! ## A086063.P2768340651208066813

`A136510(A233583(n+1))/A162514(C(n, 2))`
-/

namespace A086063.P2768340651208066813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136510 (A233583 (n + 1)).toNat : ℚ) / (A162514 (Nat.choose n 2) : ℚ)

end

end A086063.P2768340651208066813

/-! ## A086063.P13087353743206820465

`A136510(A008574(n)-3*n)/A014963(2*A191163(n+1))`
-/

namespace A086063.P13087353743206820465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136510 (A008574 n - (3 * n : ℤ)).toNat : ℚ) / (A014963 (2 * A191163 (n + 1)).toNat : ℚ)

end

end A086063.P13087353743206820465

/-!
# A086064: In decimal representation: smallest k>1 such that n is a substring of n*k.

The programs for A086064, there is no canonical definition to state claims against.
-/

/-! ## A086064.P9833954878047712757

`A160755(A241146(n+1)+Δ[A051885(n)])`
-/

namespace A086064.P9833954878047712757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A241146 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A086064.P9833954878047712757

/-!
# A086065: Permanent of the n X n matrix whose element (i,j) equals sigma(|i-j|) where sigma(n) is the sum of divisors of n and sigma(0) = 0.

The programs for A086065, there is no canonical definition to state claims against.
-/

/-! ## A086065.P13476190898813275932

`A110090(A003274(n)*A055793(n+1))`
-/

namespace A086065.P13476190898813275932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 (A003274 n * A055793 (n + 1)).toNat

end

end A086065.P13476190898813275932

/-!
# A086066: a(n) = Sum_{d in D(n)} 2^d, where D(n) = set of digits of n in decimal representation.

The programs for A086066, there is no canonical definition to state claims against.
-/

/-! ## A086066.P15585663239595196110

`A397768(A137564(n))`
-/

namespace A086066.P15585663239595196110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397768 (A137564 n).toNat

end

end A086066.P15585663239595196110

/-! ## A086066.P7612043322553501303

`A397768(A227362(n))`
-/

namespace A086066.P7612043322553501303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397768 (A227362 n).toNat

end

end A086066.P7612043322553501303

/-! ## A086066.P8114923971916203779

`∑{digits}[A137564(n), A000079(#)]`
-/

namespace A086066.P8114923971916203779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).sum

end

end A086066.P8114923971916203779

/-! ## A086066.P4481024340571954719

`∑{digits}[A137564(n), A008862(#)]`
-/

namespace A086066.P4481024340571954719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008862 x).sum

end

end A086066.P4481024340571954719

/-! ## A086066.P12200055636411739963

`∑{digits}[A137564(n), A054842(#)]`
-/

namespace A086066.P12200055636411739963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054842 x).sum

end

end A086066.P12200055636411739963

/-! ## A086066.P7498161040572600621

`∑{digits}[A227362(n), A000079(#)]`
-/

namespace A086066.P7498161040572600621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).sum

end

end A086066.P7498161040572600621

/-! ## A086066.P3449294503328508168

`∑{digits}[A227362(n), A054842(#)]`
-/

namespace A086066.P3449294503328508168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054842 x).sum

end

end A086066.P3449294503328508168

/-! ## A086066.P11255152404403237454

`A087207(A359802(n))`
-/

namespace A086066.P11255152404403237454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A359802 n).toNat

end

end A086066.P11255152404403237454

/-!
# A086067: Bit string encoding occurrence of digits of n in decimal representation: d-th bit is set iff d occurs in (n)10, 0 <= d < 10.

The programs for A086067, there is no canonical definition to state claims against.
-/

/-! ## A086067.P4137899695810931887

`A007088(A086066(n))`
-/

namespace A086067.P4137899695810931887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A086066 n).toNat

end

end A086067.P4137899695810931887

/-! ## A086067.P13936252049640391500

`A348783(A137564(n))`
-/

namespace A086067.P13936252049640391500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A137564 n).toNat

end

end A086067.P13936252049640391500

/-! ## A086067.P474773344327468913

`A348783(A227362(n))`
-/

namespace A086067.P474773344327468913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A227362 n).toNat

end

end A086067.P474773344327468913

/-! ## A086067.P4842511529325570401

`∑{digits}[n, 10^#]/(∑{p}[n^3, val(#, 11)]+1)`
-/

namespace A086067.P4842511529325570401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℚ) / ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 11 + 1 : ℕ) : ℚ)

end

end A086067.P4842511529325570401

/-! ## A086067.P17527491839632927480

`A276379(A359802(n))`
-/

namespace A086067.P17527491839632927480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276379 (A359802 n).toNat

end

end A086067.P17527491839632927480

/-!
# A086068: Min{k: A086066(k) = n}.

The programs for A086068, there is no canonical definition to state claims against.
-/

/-! ## A086068.P2265670238722247934

`A257128(A263328(n+1))`
-/

namespace A086068.P2265670238722247934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257128 (A263328 (n + 1)).toNat

end

end A086068.P2265670238722247934

/-! ## A086068.P1164133401844119726

`A328447(A262557(n+1))`
-/

namespace A086068.P1164133401844119726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A262557 (n + 1)).toNat

end

end A086068.P1164133401844119726

/-! ## A086068.P10199174947505421814

`A333659(A016192(n)*A262557(n+1))`
-/

namespace A086068.P10199174947505421814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A016192 n * A262557 (n + 1)).toNat

end

end A086068.P10199174947505421814

/-! ## A086068.P3054887121015307433

`A333659(A262557(n+1)^A016192(n))`
-/

namespace A086068.P3054887121015307433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (SequenceMachineLib.roundAway ((A262557 (n + 1) : ℚ) ^ (A016192 n : ℤ))).toNat

end

end A086068.P3054887121015307433

/-! ## A086068.P8326884716826189578

`A333659(A262557(n+1)%A002409(n))`
-/

namespace A086068.P8326884716826189578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (Int.tmod (A262557 (n + 1)) (A002409 n)).toNat

end

end A086068.P8326884716826189578

/-!
# A086069: Records in A086068.

The programs for A086069, there is no canonical definition to state claims against.
-/

/-! ## A086069.P17682322119625574702

`record[A086068(n+1)]`
-/

namespace A086069.P17682322119625574702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086069.P17682322119625574702

/-! ## A086069.P12315829135118746534

`A086068(A086070(n+1))`
-/

namespace A086069.P12315829135118746534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A086070 (n + 1)).toNat

end

end A086069.P12315829135118746534

/-! ## A086069.P1246217082934989885

`record[A257128(A263328(n+1))]`
-/

namespace A086069.P1246217082934989885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257128 (A263328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086069.P1246217082934989885

/-! ## A086069.P11625444132181014433

`record[A086068(A008619(n))]%A059737(n)`
-/

namespace A086069.P11625444132181014433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A059737 n)

end

end A086069.P11625444132181014433

/-! ## A086069.P2859671086129633175

`A086068(eq[A079981(n), A334045(n+1)])`
-/

namespace A086069.P2859671086129633175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A086069.P2859671086129633175

/-!
# A086070: Where records in A086068 occur.

The programs for A086070, there is no canonical definition to state claims against.
-/

/-! ## A086070.P7157191342376124992

`or(a(n-1)+2, floor(a(n-1)/2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A086070.P7157191342376124992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.lor (a (n - 1) + 2) ⌊(a (n - 1) : ℚ) / 2⌋

end

end A086070.P7157191342376124992

/-! ## A086070.P17072585610537638612

`record[A193902(n)-floor(atan(n))]`
-/

namespace A086070.P17072585610537638612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193902 n - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086070.P17072585610537638612

/-! ## A086070.P6029584708622164814

`A329303(a(n-1)+2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A086070.P6029584708622164814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A329303 (a (n - 1) + 2).toNat

end

end A086070.P6029584708622164814

/-! ## A086070.P1218844173338452505

`A330091(a(n-1)+2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A086070.P1218844173338452505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A330091 (a (n - 1) + 2).toNat

end

end A086070.P1218844173338452505

/-! ## A086070.P14311632415949504043

`A081118(round(sqrt(n²+1)))+char[1]`
-/

namespace A086070.P14311632415949504043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086070.P14311632415949504043

/-!
# A086071: Number of 0's in decimal expansion of triangular number n(n+1)/2.

The programs for A086071, the canonical program `A086071.P7702164004293222843` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086071 has offset 0).

The definition of A086071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086071.P6403387914432836662

`∑{digits}[∑[n], floor(acot(#))]`
-/

namespace A086071.P6403387914432836662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

end

end A086071.P6403387914432836662

namespace A086071

/-- `∑{digits}[∑[n], floor(acot(#))]` -/
def P6403387914432836662.Spec : Prop :=
  ∀ n, P6403387914432836662.a n = A086071 n

end A086071

/-! ## A086071.P12506207805758869392

`∑{digits}[∑[n], floor(γ^#)]`
-/

namespace A086071.P12506207805758869392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊Real.eulerMascheroniConstant ^ x⌋).sum

end

end A086071.P12506207805758869392

namespace A086071

/-- `∑{digits}[∑[n], floor(γ^#)]` -/
def P12506207805758869392.Spec : Prop :=
  ∀ n, P12506207805758869392.a n = A086071 n

end A086071

/-! ## A086071.P7702164004293222843

`val(∏{digits}[∑[n], #+65], 13)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086071

/-- `val(∏{digits}[∑[n], #+65], 13)` -/
def P7702164004293222843.Spec : Prop :=
  ∀ n, (P7702164004293222843.a n : ℤ) = A086071 n

theorem P7702164004293222843.correct : P7702164004293222843.Spec := by
  intro n
  simp only [A086071]

end A086071

/-! ## A086071.P973613982308089149

`dr(∑{digits}[A000217(n), A000007(#)])`
-/

namespace A086071.P973613982308089149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A086071.P973613982308089149

namespace A086071

/-- `dr(∑{digits}[A000217(n), A000007(#)])` -/
def P973613982308089149.Spec : Prop :=
  ∀ n, (P973613982308089149.a n : ℤ) = A086071 n

end A086071

/-! ## A086071.P1359160537619458957

`A032517(∑{digits}[A000217(n), A000007(#)])`
-/

namespace A086071.P1359160537619458957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032517 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum.toNat

end

end A086071.P1359160537619458957

namespace A086071

/-- `A032517(∑{digits}[A000217(n), A000007(#)])` -/
def P1359160537619458957.Spec : Prop :=
  ∀ n, P1359160537619458957.a n = A086071 n

end A086071

/-! ## A086071.P8775078010584060146

`A055641(∑[n])`
-/

namespace A086071.P8775078010584060146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086071.P8775078010584060146

namespace A086071

/-- `A055641(∑[n])` -/
def P8775078010584060146.Spec : Prop :=
  ∀ n, P8775078010584060146.a n = A086071 n

end A086071

/-! ## A086071.P13894077145734019079

`A348783(∑[n])%5`
-/

namespace A086071.P13894077145734019079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348783 (∑ j ∈ Finset.range (n + 1), f1 j)) 5

end

end A086071.P13894077145734019079

namespace A086071

/-- `A348783(∑[n])%5` -/
def P13894077145734019079.Spec : Prop :=
  ∀ n, P13894077145734019079.a n = A086071 n

end A086071

/-! ## A086071.P18031219193049421925

`dr(A055641(A000217(n)))`
-/

namespace A086071.P18031219193049421925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A055641 (A000217 n).toNat)

end

end A086071.P18031219193049421925

namespace A086071

/-- `dr(A055641(A000217(n)))` -/
def P18031219193049421925.Spec : Prop :=
  ∀ n, (P18031219193049421925.a n : ℤ) = A086071 n

end A086071

/-! ## A086071.P10419549230254426256

`A064692(A064770(∑[n]))`
-/

namespace A086071.P10419549230254426256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A064770 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086071.P10419549230254426256

namespace A086071

/-- `A064692(A064770(∑[n]))` -/
def P10419549230254426256.Spec : Prop :=
  ∀ n, P10419549230254426256.a n = A086071 n

end A086071

/-! ## A086071.P15441430861574619120

`A102683(A061601(∑[n]))`
-/

namespace A086071.P15441430861574619120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A061601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086071.P15441430861574619120

namespace A086071

/-- `A102683(A061601(∑[n]))` -/
def P15441430861574619120.Spec : Prop :=
  ∀ n, P15441430861574619120.a n = A086071 n

end A086071

/-! ## A086071.P2717717314868237044

`A268643(A048379(∑[n]))`
-/

namespace A086071.P2717717314868237044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A048379 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086071.P2717717314868237044

namespace A086071

/-- `A268643(A048379(∑[n]))` -/
def P2717717314868237044.Spec : Prop :=
  ∀ n, P2717717314868237044.a n = A086071 n

end A086071

/-! ## A086071.P17049077430233960574

`A316864(A222212(∑[n]))`
-/

namespace A086071.P17049077430233960574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222212 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086071.P17049077430233960574

namespace A086071

/-- `A316864(A222212(∑[n]))` -/
def P17049077430233960574.Spec : Prop :=
  ∀ n, P17049077430233960574.a n = A086071 n

end A086071

/-! ## A086071.P1977981474397708455

`A316869(A222217(∑[n]))`
-/

namespace A086071.P1977981474397708455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222217 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086071.P1977981474397708455

namespace A086071

/-- `A316869(A222217(∑[n]))` -/
def P1977981474397708455.Spec : Prop :=
  ∀ n, P1977981474397708455.a n = A086071 n

end A086071

/-! ## A086071.P12540810247547718252

`A055641(A179865(n+1))+A055641(A000120(n))`
-/

namespace A086071.P12540810247547718252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A179865 (n + 1)).toNat + A055641 (A000120 n).toNat

end

end A086071.P12540810247547718252

namespace A086071

/-- `A055641(A179865(n+1))+A055641(A000120(n))` -/
def P12540810247547718252.Spec : Prop :=
  ∀ n, P12540810247547718252.a n = A086071 n

end A086071

/-!
# A086072: Number of 1's in decimal expansion of triangular number n(n+1)/2.

The programs for A086072, the canonical program `A086072.P15851860755181142395` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086072 has offset 0).

The definition of A086072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086072.P15851860755181142395

`∑{digits}[∑[n], val(#+8, 9)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086072

/-- `∑{digits}[∑[n], val(#+8, 9)]` -/
def P15851860755181142395.Spec : Prop :=
  ∀ n, (P15851860755181142395.a n : ℤ) = A086072 n

theorem P15851860755181142395.correct : P15851860755181142395.Spec := by
  intro n
  simp only [A086072]

end A086072

/-! ## A086072.P15158882177684397214

`∑{digits}[∑[n], C(C(2, #), 2)]`
-/

namespace A086072.P15158882177684397214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose (Nat.choose 2 x) 2).sum

end

end A086072.P15158882177684397214

namespace A086072

/-- `∑{digits}[∑[n], C(C(2, #), 2)]` -/
def P15158882177684397214.Spec : Prop :=
  ∀ n, (P15158882177684397214.a n : ℤ) = A086072 n

end A086072

/-! ## A086072.P998606204041496519

`∑{digits}[∑[n], A033683(#)]`
-/

namespace A086072.P998606204041496519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A033683 x).sum

end

end A086072.P998606204041496519

namespace A086072

/-- `∑{digits}[∑[n], A033683(#)]` -/
def P998606204041496519.Spec : Prop :=
  ∀ n, P998606204041496519.a n = A086072 n

end A086072

/-! ## A086072.P6927545651570826562

`∑{digits}[∑[n], A063524(#)]`
-/

namespace A086072.P6927545651570826562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A063524 x).sum

end

end A086072.P6927545651570826562

namespace A086072

/-- `∑{digits}[∑[n], A063524(#)]` -/
def P6927545651570826562.Spec : Prop :=
  ∀ n, P6927545651570826562.a n = A086072 n

end A086072

/-! ## A086072.P16442667130167006730

`∑{digits}[∑[n], A251766(#)]`
-/

namespace A086072.P16442667130167006730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A251766 x).sum

end

end A086072.P16442667130167006730

namespace A086072

/-- `∑{digits}[∑[n], A251766(#)]` -/
def P16442667130167006730.Spec : Prop :=
  ∀ n, P16442667130167006730.a n = A086072 n

end A086072

/-! ## A086072.P1814119092119319174

`∑{digits}[∑[n], A339629(#)]`
-/

namespace A086072.P1814119092119319174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A339629 x).sum

end

end A086072.P1814119092119319174

namespace A086072

/-- `∑{digits}[∑[n], A339629(#)]` -/
def P1814119092119319174.Spec : Prop :=
  ∀ n, P1814119092119319174.a n = A086072 n

end A086072

/-! ## A086072.P4153976522250168106

`∑{digits}[∑[n], C(#, A000032(#))]`
-/

namespace A086072.P4153976522250168106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (A000032 x).toNat).sum

end

end A086072.P4153976522250168106

namespace A086072

/-- `∑{digits}[∑[n], C(#, A000032(#))]` -/
def P4153976522250168106.Spec : Prop :=
  ∀ n, (P4153976522250168106.a n : ℤ) = A086072 n

end A086072

/-! ## A086072.P15114601573544090446

`∑{digits}[A000217(n), A178333(#)]`
-/

namespace A086072.P15114601573544090446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 x).sum

end

end A086072.P15114601573544090446

namespace A086072

/-- `∑{digits}[A000217(n), A178333(#)]` -/
def P15114601573544090446.Spec : Prop :=
  ∀ n, P15114601573544090446.a n = A086072 n

end A086072

/-! ## A086072.P5873377782825518940

`∑{digits}[∑[n], A023416(A109036(#))]`
-/

namespace A086072.P5873377782825518940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A023416 (A109036 x).toNat).sum

end

end A086072.P5873377782825518940

namespace A086072

/-- `∑{digits}[∑[n], A023416(A109036(#))]` -/
def P5873377782825518940.Spec : Prop :=
  ∀ n, P5873377782825518940.a n = A086072 n

end A086072

/-! ## A086072.P13983358656454875135

`A268643(∑[n])`
-/

namespace A086072.P13983358656454875135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086072.P13983358656454875135

namespace A086072

/-- `A268643(∑[n])` -/
def P13983358656454875135.Spec : Prop :=
  ∀ n, P13983358656454875135.a n = A086072 n

end A086072

/-!
# A086073: Number of 2's in decimal expansion of triangular number n(n+1)/2.

The programs for A086073, the canonical program `A086073.P17005907188828282987` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086073 has offset 0).

The definition of A086073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086073.P17005907188828282987

`∑{digits}[∑[n], val(#+6, 8)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086073

/-- `∑{digits}[∑[n], val(#+6, 8)]` -/
def P17005907188828282987.Spec : Prop :=
  ∀ n, (P17005907188828282987.a n : ℤ) = A086073 n

theorem P17005907188828282987.correct : P17005907188828282987.Spec := by
  intro n
  simp only [A086073]

end A086073

/-! ## A086073.P18042380017431102493

`∑{digits}[∑[n], C(C(4, #), 6)]`
-/

namespace A086073.P18042380017431102493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose (Nat.choose 4 x) 6).sum

end

end A086073.P18042380017431102493

namespace A086073

/-- `∑{digits}[∑[n], C(C(4, #), 6)]` -/
def P18042380017431102493.Spec : Prop :=
  ∀ n, (P18042380017431102493.a n : ℤ) = A086073 n

end A086073

/-! ## A086073.P8112479854543410729

`val(∏{digits}[∑[n], #+53], 11)`
-/

namespace A086073.P8112479854543410729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 53).prod 11

end

end A086073.P8112479854543410729

namespace A086073

/-- `val(∏{digits}[∑[n], #+53], 11)` -/
def P8112479854543410729.Spec : Prop :=
  ∀ n, (P8112479854543410729.a n : ℤ) = A086073 n

end A086073

/-! ## A086073.P6210955952481713454

`∑{digits}[∑[n], (3%A000041(#))%3]`
-/

namespace A086073.P6210955952481713454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (Int.tmod 3 (A000041 x)) 3).sum

end

end A086073.P6210955952481713454

namespace A086073

/-- `∑{digits}[∑[n], (3%A000041(#))%3]` -/
def P6210955952481713454.Spec : Prop :=
  ∀ n, P6210955952481713454.a n = A086073 n

end A086073

/-! ## A086073.P15138115004778282749

`A316863(A011873(n+1))`
-/

namespace A086073.P15138115004778282749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A011873 (n + 1)).toNat

end

end A086073.P15138115004778282749

namespace A086073

/-- `A316863(A011873(n+1))` -/
def P15138115004778282749.Spec : Prop :=
  ∀ n, P15138115004778282749.a n = A086073 n

end A086073

/-! ## A086073.P4483806288558499105

`A316863(∑[n])`
-/

namespace A086073.P4483806288558499105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086073.P4483806288558499105

namespace A086073

/-- `A316863(∑[n])` -/
def P4483806288558499105.Spec : Prop :=
  ∀ n, P4483806288558499105.a n = A086073 n

end A086073

/-!
# A086074: Number of 3's in decimal expansion of triangular number n(n+1)/2.

The programs for A086074, the canonical program `A086074.P8072701003905495789` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086074 has offset 0).

The definition of A086074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086074.P8072701003905495789

`∑{digits}[∑[n], val(#+4, 7)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086074

/-- `∑{digits}[∑[n], val(#+4, 7)]` -/
def P8072701003905495789.Spec : Prop :=
  ∀ n, (P8072701003905495789.a n : ℤ) = A086074 n

theorem P8072701003905495789.correct : P8072701003905495789.Spec := by
  intro n
  simp only [A086074]

end A086074

/-! ## A086074.P17782365210254574083

`val(∏{digits}[∑[n], #+4], 7)`
-/

namespace A086074.P17782365210254574083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 4).prod 7

end

end A086074.P17782365210254574083

namespace A086074

/-- `val(∏{digits}[∑[n], #+4], 7)` -/
def P17782365210254574083.Spec : Prop :=
  ∀ n, (P17782365210254574083.a n : ℤ) = A086074 n

end A086074

/-! ## A086074.P5350179052210842504

`∑{digits}[∑[n], and(4, #!)/4]`
-/

namespace A086074.P5350179052210842504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 4 (Nat.factorial x) : ℚ) / 4).sum

end

end A086074.P5350179052210842504

namespace A086074

/-- `∑{digits}[∑[n], and(4, #!)/4]` -/
def P5350179052210842504.Spec : Prop :=
  ∀ n, P5350179052210842504.a n = (A086074 n : ℚ)

end A086074

/-! ## A086074.P7002058392018163715

`∑{digits}[∑[n], A008437(#)]`
-/

namespace A086074.P7002058392018163715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008437 x).sum

end

end A086074.P7002058392018163715

namespace A086074

/-- `∑{digits}[∑[n], A008437(#)]` -/
def P7002058392018163715.Spec : Prop :=
  ∀ n, P7002058392018163715.a n = A086074 n

end A086074

/-! ## A086074.P17610476626773150971

`∑{digits}[∑[n], A025456(#)]`
-/

namespace A086074.P17610476626773150971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025456 x).sum

end

end A086074.P17610476626773150971

namespace A086074

/-- `∑{digits}[∑[n], A025456(#)]` -/
def P17610476626773150971.Spec : Prop :=
  ∀ n, P17610476626773150971.a n = A086074 n

end A086074

/-! ## A086074.P12038649727438780605

`∑{digits}[∑[n], A083935(#)]`
-/

namespace A086074.P12038649727438780605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083935 x).sum

end

end A086074.P12038649727438780605

namespace A086074

/-- `∑{digits}[∑[n], A083935(#)]` -/
def P12038649727438780605.Spec : Prop :=
  ∀ n, P12038649727438780605.a n = A086074 n

end A086074

/-! ## A086074.P8962529495556481832

`∑{digits}[∑[n], (4%A000041(#))%2]`
-/

namespace A086074.P8962529495556481832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (Int.tmod 4 (A000041 x)) 2).sum

end

end A086074.P8962529495556481832

namespace A086074

/-- `∑{digits}[∑[n], (4%A000041(#))%2]` -/
def P8962529495556481832.Spec : Prop :=
  ∀ n, P8962529495556481832.a n = A086074 n

end A086074

/-! ## A086074.P17344658044148509059

`∑{digits}[∑[n], and(#², A000005(#+1))]`
-/

namespace A086074.P17344658044148509059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.land (x ^ 2 : ℤ) (A000005 (x + 1))).sum

end

end A086074.P17344658044148509059

namespace A086074

/-- `∑{digits}[∑[n], and(#², A000005(#+1))]` -/
def P17344658044148509059.Spec : Prop :=
  ∀ n, P17344658044148509059.a n = A086074 n

end A086074

/-! ## A086074.P3576984044918534060

`∑{digits}[A000217(n), A025457(#+1)]`
-/

namespace A086074.P3576984044918534060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025457 (x + 1)).sum

end

end A086074.P3576984044918534060

namespace A086074

/-- `∑{digits}[A000217(n), A025457(#+1)]` -/
def P3576984044918534060.Spec : Prop :=
  ∀ n, P3576984044918534060.a n = A086074 n

end A086074

/-! ## A086074.P5903579988462419463

`A316864(∑[n])`
-/

namespace A086074.P5903579988462419463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086074.P5903579988462419463

namespace A086074

/-- `A316864(∑[n])` -/
def P5903579988462419463.Spec : Prop :=
  ∀ n, P5903579988462419463.a n = A086074 n

end A086074

/-!
# A086075: Number of 4's in decimal expansion of triangular number n(n+1)/2.

The programs for A086075, the canonical program `A086075.P3378055930301315132` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086075 has offset 0).

The definition of A086075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086075.P3378055930301315132

`∑{digits}[∑[n], val(#+2, 6)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086075

/-- `∑{digits}[∑[n], val(#+2, 6)]` -/
def P3378055930301315132.Spec : Prop :=
  ∀ n, (P3378055930301315132.a n : ℤ) = A086075 n

theorem P3378055930301315132.correct : P3378055930301315132.Spec := by
  intro n
  simp only [A086075]

end A086075

/-! ## A086075.P12031539678818007793

`val(∏{digits}[∑[n], #+3], 7)`
-/

namespace A086075.P12031539678818007793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 3).prod 7

end

end A086075.P12031539678818007793

namespace A086075

/-- `val(∏{digits}[∑[n], #+3], 7)` -/
def P12031539678818007793.Spec : Prop :=
  ∀ n, (P12031539678818007793.a n : ℤ) = A086075 n

end A086075

/-! ## A086075.P7598395340308063588

`∑{digits}[∑[n], and(1, 6%(#+1))]`
-/

namespace A086075.P7598395340308063588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (6 % (x + 1))).sum

end

end A086075.P7598395340308063588

namespace A086075

/-- `∑{digits}[∑[n], and(1, 6%(#+1))]` -/
def P7598395340308063588.Spec : Prop :=
  ∀ n, (P7598395340308063588.a n : ℤ) = A086075 n

end A086075

/-! ## A086075.P192413592266916255

`∑{digits}[∑[n], A004198(#)]`
-/

namespace A086075.P192413592266916255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 x).sum

end

end A086075.P192413592266916255

namespace A086075

/-- `∑{digits}[∑[n], A004198(#)]` -/
def P192413592266916255.Spec : Prop :=
  ∀ n, P192413592266916255.a n = A086075 n

end A086075

/-! ## A086075.P2884400542872788106

`∑{digits}[∑[n], A025457(#)]`
-/

namespace A086075.P2884400542872788106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025457 x).sum

end

end A086075.P2884400542872788106

namespace A086075

/-- `∑{digits}[∑[n], A025457(#)]` -/
def P2884400542872788106.Spec : Prop :=
  ∀ n, P2884400542872788106.a n = A086075 n

end A086075

/-! ## A086075.P15475762996717990358

`∑{digits}[∑[n], 3%A007318(#)]`
-/

namespace A086075.P15475762996717990358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod 3 (A007318 x)).sum

end

end A086075.P15475762996717990358

namespace A086075

/-- `∑{digits}[∑[n], 3%A007318(#)]` -/
def P15475762996717990358.Spec : Prop :=
  ∀ n, P15475762996717990358.a n = A086075 n

end A086075

/-! ## A086075.P2117097477434831009

`∑{digits}[∑[n], A256551(A007318(#))]`
-/

namespace A086075.P2117097477434831009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A256551 (A007318 x).toNat).sum

end

end A086075.P2117097477434831009

namespace A086075

/-- `∑{digits}[∑[n], A256551(A007318(#))]` -/
def P2117097477434831009.Spec : Prop :=
  ∀ n, P2117097477434831009.a n = A086075 n

end A086075

/-! ## A086075.P14667051281154188202

`∑{digits}[A000217(n), A318880(#+2)]`
-/

namespace A086075.P14667051281154188202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A318880 (x + 2)).sum

end

end A086075.P14667051281154188202

namespace A086075

/-- `∑{digits}[A000217(n), A318880(#+2)]` -/
def P14667051281154188202.Spec : Prop :=
  ∀ n, P14667051281154188202.a n = A086075 n

end A086075

/-! ## A086075.P7301882314081637499

`A316865(A011873(n+1))`
-/

namespace A086075.P7301882314081637499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A011873 (n + 1)).toNat

end

end A086075.P7301882314081637499

namespace A086075

/-- `A316865(A011873(n+1))` -/
def P7301882314081637499.Spec : Prop :=
  ∀ n, P7301882314081637499.a n = A086075 n

end A086075

/-! ## A086075.P1517547947776051319

`A316865(∑[n])`
-/

namespace A086075.P1517547947776051319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086075.P1517547947776051319

namespace A086075

/-- `A316865(∑[n])` -/
def P1517547947776051319.Spec : Prop :=
  ∀ n, P1517547947776051319.a n = A086075 n

end A086075

/-!
# A086076: Number of 5's in decimal expansion of triangular number n(n+1)/2.

The programs for A086076, the canonical program `A086076.P9018478349866679760` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086076 has offset 0).

The definition of A086076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086076.P9018478349866679760

`∑{digits}[∑[n], val(#+1, 6)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086076

/-- `∑{digits}[∑[n], val(#+1, 6)]` -/
def P9018478349866679760.Spec : Prop :=
  ∀ n, (P9018478349866679760.a n : ℤ) = A086076 n

theorem P9018478349866679760.correct : P9018478349866679760.Spec := by
  intro n
  simp only [A086076]

end A086076

/-! ## A086076.P14943887436543450515

`val(∏{digits}[∑[n], #+2], 7)`
-/

namespace A086076.P14943887436543450515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 2).prod 7

end

end A086076.P14943887436543450515

namespace A086076

/-- `val(∏{digits}[∑[n], #+2], 7)` -/
def P14943887436543450515.Spec : Prop :=
  ∀ n, (P14943887436543450515.a n : ℤ) = A086076 n

end A086076

/-! ## A086076.P6556877437477746278

`∑{digits}[∑[n], A025436(#)]`
-/

namespace A086076.P6556877437477746278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025436 x).sum

end

end A086076.P6556877437477746278

namespace A086076

/-- `∑{digits}[∑[n], A025436(#)]` -/
def P6556877437477746278.Spec : Prop :=
  ∀ n, P6556877437477746278.a n = A086076 n

end A086076

/-! ## A086076.P1947812588070337758

`∑{digits}[∑[n], A025458(#)]`
-/

namespace A086076.P1947812588070337758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025458 x).sum

end

end A086076.P1947812588070337758

namespace A086076

/-- `∑{digits}[∑[n], A025458(#)]` -/
def P1947812588070337758.Spec : Prop :=
  ∀ n, P1947812588070337758.a n = A086076 n

end A086076

/-! ## A086076.P17852223821202240228

`∑{digits}[A000217(n), A318880(#+1)]`
-/

namespace A086076.P17852223821202240228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A318880 (x + 1)).sum

end

end A086076.P17852223821202240228

namespace A086076

/-- `∑{digits}[A000217(n), A318880(#+1)]` -/
def P17852223821202240228.Spec : Prop :=
  ∀ n, P17852223821202240228.a n = A086076 n

end A086076

/-! ## A086076.P12261915331109833507

`A316866(∑[n])`
-/

namespace A086076.P12261915331109833507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086076.P12261915331109833507

namespace A086076

/-- `A316866(∑[n])` -/
def P12261915331109833507.Spec : Prop :=
  ∀ n, P12261915331109833507.a n = A086076 n

end A086076

/-!
# A086077: Number of 6's in decimal expansion of triangular number n(n+1)/2.

The programs for A086077, the canonical program `A086077.P15598010479834388040` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086077 has offset 0).

The definition of A086077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086077.P15598010479834388040

`∑{digits}[∑[n], val(#+1, 7)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086077

/-- `∑{digits}[∑[n], val(#+1, 7)]` -/
def P15598010479834388040.Spec : Prop :=
  ∀ n, (P15598010479834388040.a n : ℤ) = A086077 n

theorem P15598010479834388040.correct : P15598010479834388040.Spec := by
  intro n
  simp only [A086077]

end A086077

/-! ## A086077.P2185555104180321179

`val(∏{digits}[∑[n], #+1], 7)`
-/

namespace A086077.P2185555104180321179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod 7

end

end A086077.P2185555104180321179

namespace A086077

/-- `val(∏{digits}[∑[n], #+1], 7)` -/
def P2185555104180321179.Spec : Prop :=
  ∀ n, (P2185555104180321179.a n : ℤ) = A086077 n

end A086077

/-! ## A086077.P2362753830083255999

`∑{digits}[∑[n], A025459(#)]`
-/

namespace A086077.P2362753830083255999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025459 x).sum

end

end A086077.P2362753830083255999

namespace A086077

/-- `∑{digits}[∑[n], A025459(#)]` -/
def P2362753830083255999.Spec : Prop :=
  ∀ n, P2362753830083255999.a n = A086077 n

end A086077

/-! ## A086077.P17945033818778314761

`∑{digits}[∑[n], A124760(#)]`
-/

namespace A086077.P17945033818778314761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A124760 x).sum

end

end A086077.P17945033818778314761

namespace A086077

/-- `∑{digits}[∑[n], A124760(#)]` -/
def P17945033818778314761.Spec : Prop :=
  ∀ n, P17945033818778314761.a n = A086077 n

end A086077

/-! ## A086077.P10458340383445407155

`∑{digits}[∑[n], A226517(#)]`
-/

namespace A086077.P10458340383445407155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A226517 x).sum

end

end A086077.P10458340383445407155

namespace A086077

/-- `∑{digits}[∑[n], A226517(#)]` -/
def P10458340383445407155.Spec : Prop :=
  ∀ n, P10458340383445407155.a n = A086077 n

end A086077

/-! ## A086077.P2343354204782767763

`∑{digits}[∑[n], A341995(#)]`
-/

namespace A086077.P2343354204782767763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A341995 x).sum

end

end A086077.P2343354204782767763

namespace A086077

/-- `∑{digits}[∑[n], A341995(#)]` -/
def P2343354204782767763.Spec : Prop :=
  ∀ n, P2343354204782767763.a n = A086077 n

end A086077

/-! ## A086077.P11382062446029292282

`∑{digits}[∑[n], A070108(#+1)]`
-/

namespace A086077.P11382062446029292282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A070108 (x + 1)).sum

end

end A086077.P11382062446029292282

namespace A086077

/-- `∑{digits}[∑[n], A070108(#+1)]` -/
def P11382062446029292282.Spec : Prop :=
  ∀ n, P11382062446029292282.a n = A086077 n

end A086077

/-! ## A086077.P5526650143017807639

`∑{digits}[∑[n], A000005(#+10)%2]`
-/

namespace A086077.P5526650143017807639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (A000005 (x + 10)) 2).sum

end

end A086077.P5526650143017807639

namespace A086077

/-- `∑{digits}[∑[n], A000005(#+10)%2]` -/
def P5526650143017807639.Spec : Prop :=
  ∀ n, P5526650143017807639.a n = A086077 n

end A086077

/-! ## A086077.P10378470505312046849

`∑{digits}[∑[n], A001877(A001876(#))]`
-/

namespace A086077.P10378470505312046849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001877 (A001876 x).toNat).sum

end

end A086077.P10378470505312046849

namespace A086077

/-- `∑{digits}[∑[n], A001877(A001876(#))]` -/
def P10378470505312046849.Spec : Prop :=
  ∀ n, P10378470505312046849.a n = A086077 n

end A086077

/-! ## A086077.P16571053094791236962

`∑{digits}[∑[n], A079126(A108756(#))]`
-/

namespace A086077.P16571053094791236962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A079126 (A108756 x).toNat).sum

end

end A086077.P16571053094791236962

namespace A086077

/-- `∑{digits}[∑[n], A079126(A108756(#))]` -/
def P16571053094791236962.Spec : Prop :=
  ∀ n, P16571053094791236962.a n = A086077 n

end A086077

/-! ## A086077.P1002349163769141271

`∑{digits}[A000217(n), A152489(#+2)]`
-/

namespace A086077.P1002349163769141271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A152489 (x + 2)).sum

end

end A086077.P1002349163769141271

namespace A086077

/-- `∑{digits}[A000217(n), A152489(#+2)]` -/
def P1002349163769141271.Spec : Prop :=
  ∀ n, P1002349163769141271.a n = A086077 n

end A086077

/-! ## A086077.P16720858186920060723

`A316867(∑[n])`
-/

namespace A086077.P16720858186920060723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086077.P16720858186920060723

namespace A086077

/-- `A316867(∑[n])` -/
def P16720858186920060723.Spec : Prop :=
  ∀ n, P16720858186920060723.a n = A086077 n

end A086077

/-!
# A086078: Number of 7's in decimal expansion of triangular number n(n+1)/2.

The programs for A086078, the canonical program `A086078.P6566729029655083049` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086078 has offset 0).

The definition of A086078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086078.P6566729029655083049

`∑{digits}[∑[n], val(#+1, 8)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086078

/-- `∑{digits}[∑[n], val(#+1, 8)]` -/
def P6566729029655083049.Spec : Prop :=
  ∀ n, (P6566729029655083049.a n : ℤ) = A086078 n

theorem P6566729029655083049.correct : P6566729029655083049.Spec := by
  intro n
  simp only [A086078]

end A086078

/-! ## A086078.P7398009564525514787

`val(∏{digits}[∑[n], #+4], 11)`
-/

namespace A086078.P7398009564525514787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 4).prod 11

end

end A086078.P7398009564525514787

namespace A086078

/-- `val(∏{digits}[∑[n], #+4], 11)` -/
def P7398009564525514787.Spec : Prop :=
  ∀ n, (P7398009564525514787.a n : ℤ) = A086078 n

end A086078

/-! ## A086078.P875678048352735997

`∑{digits}[∑[n], C(#, 7)%2]`
-/

namespace A086078.P875678048352735997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 7 % 2).sum

end

end A086078.P875678048352735997

namespace A086078

/-- `∑{digits}[∑[n], C(#, 7)%2]` -/
def P875678048352735997.Spec : Prop :=
  ∀ n, (P875678048352735997.a n : ℤ) = A086078 n

end A086078

/-! ## A086078.P13871979773342010856

`∑{digits}[∑[n], C(#, or(7, #))]`
-/

namespace A086078.P13871979773342010856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (Nat.lor 7 x)).sum

end

end A086078.P13871979773342010856

namespace A086078

/-- `∑{digits}[∑[n], C(#, or(7, #))]` -/
def P13871979773342010856.Spec : Prop :=
  ∀ n, (P13871979773342010856.a n : ℤ) = A086078 n

end A086078

/-! ## A086078.P41368957893593469

`∑{digits}[∑[n], A025431(#)]`
-/

namespace A086078.P41368957893593469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025431 x).sum

end

end A086078.P41368957893593469

namespace A086078

/-- `∑{digits}[∑[n], A025431(#)]` -/
def P41368957893593469.Spec : Prop :=
  ∀ n, P41368957893593469.a n = A086078 n

end A086078

/-! ## A086078.P10655375418390873301

`∑{digits}[∑[n], A025460(#)]`
-/

namespace A086078.P10655375418390873301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025460 x).sum

end

end A086078.P10655375418390873301

namespace A086078

/-- `∑{digits}[∑[n], A025460(#)]` -/
def P10655375418390873301.Spec : Prop :=
  ∀ n, P10655375418390873301.a n = A086078 n

end A086078

/-! ## A086078.P7570142468573871663

`∑{digits}[∑[n], A046778(#)]`
-/

namespace A086078.P7570142468573871663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A046778 x).sum

end

end A086078.P7570142468573871663

namespace A086078

/-- `∑{digits}[∑[n], A046778(#)]` -/
def P7570142468573871663.Spec : Prop :=
  ∀ n, P7570142468573871663.a n = A086078 n

end A086078

/-! ## A086078.P4254454079174257776

`∑{digits}[∑[n], A169673(#)]`
-/

namespace A086078.P4254454079174257776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A169673 x).sum

end

end A086078.P4254454079174257776

namespace A086078

/-- `∑{digits}[∑[n], A169673(#)]` -/
def P4254454079174257776.Spec : Prop :=
  ∀ n, P4254454079174257776.a n = A086078 n

end A086078

/-! ## A086078.P2255396454903160782

`∑{digits}[∑[n], A316868(#)]`
-/

namespace A086078.P2255396454903160782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A316868 x).sum

end

end A086078.P2255396454903160782

namespace A086078

/-- `∑{digits}[∑[n], A316868(#)]` -/
def P2255396454903160782.Spec : Prop :=
  ∀ n, P2255396454903160782.a n = A086078 n

end A086078

/-! ## A086078.P10349942930428948759

`∑{digits}[∑[n], A004524(A008315(#))]`
-/

namespace A086078.P10349942930428948759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004524 (A008315 x).toNat).sum

end

end A086078.P10349942930428948759

namespace A086078

/-- `∑{digits}[∑[n], A004524(A008315(#))]` -/
def P10349942930428948759.Spec : Prop :=
  ∀ n, P10349942930428948759.a n = A086078 n

end A086078

/-! ## A086078.P18020745999904214625

`∑{digits}[∑[n], A008615(A005044(#))]`
-/

namespace A086078.P18020745999904214625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008615 (A005044 x).toNat).sum

end

end A086078.P18020745999904214625

namespace A086078

/-- `∑{digits}[∑[n], A008615(A005044(#))]` -/
def P18020745999904214625.Spec : Prop :=
  ∀ n, P18020745999904214625.a n = A086078 n

end A086078

/-! ## A086078.P6690830198054133869

`∑{digits}[∑[n], A001222(A130580(#))]`
-/

namespace A086078.P6690830198054133869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001222 (A130580 x).toNat).sum

end

end A086078.P6690830198054133869

namespace A086078

/-- `∑{digits}[∑[n], A001222(A130580(#))]` -/
def P6690830198054133869.Spec : Prop :=
  ∀ n, P6690830198054133869.a n = A086078 n

end A086078

/-! ## A086078.P16475244121130245280

`∑{digits}[A000217(n), A152489(#+1)]`
-/

namespace A086078.P16475244121130245280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A152489 (x + 1)).sum

end

end A086078.P16475244121130245280

namespace A086078

/-- `∑{digits}[A000217(n), A152489(#+1)]` -/
def P16475244121130245280.Spec : Prop :=
  ∀ n, P16475244121130245280.a n = A086078 n

end A086078

/-! ## A086078.P6253232454565390406

`∑{digits}[∑[n], #%A000005(A007318(#))]`
-/

namespace A086078.P6253232454565390406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (x : ℤ) (A000005 (A007318 x).toNat)).sum

end

end A086078.P6253232454565390406

namespace A086078

/-- `∑{digits}[∑[n], #%A000005(A007318(#))]` -/
def P6253232454565390406.Spec : Prop :=
  ∀ n, P6253232454565390406.a n = A086078 n

end A086078

/-! ## A086078.P10931214100548086010

`A316868(A011873(n+1))`
-/

namespace A086078.P10931214100548086010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A011873 (n + 1)).toNat

end

end A086078.P10931214100548086010

namespace A086078

/-- `A316868(A011873(n+1))` -/
def P10931214100548086010.Spec : Prop :=
  ∀ n, P10931214100548086010.a n = A086078 n

end A086078

/-! ## A086078.P17124093185324534777

`A316868(∑[n])`
-/

namespace A086078.P17124093185324534777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086078.P17124093185324534777

namespace A086078

/-- `A316868(∑[n])` -/
def P17124093185324534777.Spec : Prop :=
  ∀ n, P17124093185324534777.a n = A086078 n

end A086078

/-! ## A086078.P6518274845547900578

`A214411(A051801(∑[n]))`
-/

namespace A086078.P6518274845547900578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A051801 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086078.P6518274845547900578

namespace A086078

/-- `A214411(A051801(∑[n]))` -/
def P6518274845547900578.Spec : Prop :=
  ∀ n, P6518274845547900578.a n = A086078 n

end A086078

/-! ## A086078.P6755032515716551030

`A316864(A055120(∑[n]))`
-/

namespace A086078.P6755032515716551030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A055120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086078.P6755032515716551030

namespace A086078

/-- `A316864(A055120(∑[n]))` -/
def P6755032515716551030.Spec : Prop :=
  ∀ n, P6755032515716551030.a n = A086078 n

end A086078

/-!
# A086079: Number of 8's in decimal expansion of triangular number n(n+1)/2.

The programs for A086079, the canonical program `A086079.P7004619169964190015` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086079 has offset 0).

The definition of A086079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086079.P7004619169964190015

`∑{digits}[∑[n], val(#+1, 9)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086079

/-- `∑{digits}[∑[n], val(#+1, 9)]` -/
def P7004619169964190015.Spec : Prop :=
  ∀ n, (P7004619169964190015.a n : ℤ) = A086079 n

theorem P7004619169964190015.correct : P7004619169964190015.Spec := by
  intro n
  simp only [A086079]

end A086079

/-! ## A086079.P11435823963459590123

`∑{digits}[∑[n], A011722(#)]`
-/

namespace A086079.P11435823963459590123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011722 x).sum

end

end A086079.P11435823963459590123

namespace A086079

/-- `∑{digits}[∑[n], A011722(#)]` -/
def P11435823963459590123.Spec : Prop :=
  ∀ n, P11435823963459590123.a n = A086079 n

end A086079

/-! ## A086079.P5197384422499086708

`∑{digits}[∑[n], A025432(#)]`
-/

namespace A086079.P5197384422499086708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025432 x).sum

end

end A086079.P5197384422499086708

namespace A086079

/-- `∑{digits}[∑[n], A025432(#)]` -/
def P5197384422499086708.Spec : Prop :=
  ∀ n, P5197384422499086708.a n = A086079 n

end A086079

/-! ## A086079.P11471357829440831078

`∑{digits}[∑[n], A045698(#)]`
-/

namespace A086079.P11471357829440831078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A045698 x).sum

end

end A086079.P11471357829440831078

namespace A086079

/-- `∑{digits}[∑[n], A045698(#)]` -/
def P11471357829440831078.Spec : Prop :=
  ∀ n, P11471357829440831078.a n = A086079 n

end A086079

/-! ## A086079.P7413710244019762783

`∑{digits}[∑[n], A253638(#)]`
-/

namespace A086079.P7413710244019762783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A253638 x).sum

end

end A086079.P7413710244019762783

namespace A086079

/-- `∑{digits}[∑[n], A253638(#)]` -/
def P7413710244019762783.Spec : Prop :=
  ∀ n, P7413710244019762783.a n = A086079 n

end A086079

/-! ## A086079.P8856011399602644592

`∑{digits}[∑[n], A025458(#²)]`
-/

namespace A086079.P8856011399602644592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025458 (x ^ 2)).sum

end

end A086079.P8856011399602644592

namespace A086079

/-- `∑{digits}[∑[n], A025458(#²)]` -/
def P8856011399602644592.Spec : Prop :=
  ∀ n, P8856011399602644592.a n = A086079 n

end A086079

/-! ## A086079.P12349443768014928573

`∑{digits}[∑[n], A004526(A008615(#))]`
-/

namespace A086079.P12349443768014928573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004526 (A008615 x).toNat).sum

end

end A086079.P12349443768014928573

namespace A086079

/-- `∑{digits}[∑[n], A004526(A008615(#))]` -/
def P12349443768014928573.Spec : Prop :=
  ∀ n, P12349443768014928573.a n = A086079 n

end A086079

/-! ## A086079.P322734917396008525

`∑{digits}[∑[n], A053616(A053616(#))]`
-/

namespace A086079.P322734917396008525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A053616 (A053616 x).toNat).sum

end

end A086079.P322734917396008525

namespace A086079

/-- `∑{digits}[∑[n], A053616(A053616(#))]` -/
def P322734917396008525.Spec : Prop :=
  ∀ n, P322734917396008525.a n = A086079 n

end A086079

/-! ## A086079.P889786191120171707

`∑{digits}[A000217(n), A287214(#)-1]`
-/

namespace A086079.P889786191120171707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A287214 x - 1).sum

end

end A086079.P889786191120171707

namespace A086079

/-- `∑{digits}[A000217(n), A287214(#)-1]` -/
def P889786191120171707.Spec : Prop :=
  ∀ n, P889786191120171707.a n = A086079 n

end A086079

/-! ## A086079.P9722998317757811798

`A316869(∑[n])`
-/

namespace A086079.P9722998317757811798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086079.P9722998317757811798

namespace A086079

/-- `A316869(∑[n])` -/
def P9722998317757811798.Spec : Prop :=
  ∀ n, P9722998317757811798.a n = A086079 n

end A086079

/-! ## A086079.P16501583626880430295

`A102683(A048379(∑[n]))`
-/

namespace A086079.P16501583626880430295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A048379 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086079.P16501583626880430295

namespace A086079

/-- `A102683(A048379(∑[n]))` -/
def P16501583626880430295.Spec : Prop :=
  ∀ n, P16501583626880430295.a n = A086079 n

end A086079

/-! ## A086079.P10574471746118723698

`A102683(A222254(∑[n]))`
-/

namespace A086079.P10574471746118723698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A222254 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086079.P10574471746118723698

namespace A086079

/-- `A102683(A222254(∑[n]))` -/
def P10574471746118723698.Spec : Prop :=
  ∀ n, P10574471746118723698.a n = A086079 n

end A086079

/-! ## A086079.P11849888096965750361

`A268643(A061601(∑[n]))`
-/

namespace A086079.P11849888096965750361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A061601 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086079.P11849888096965750361

namespace A086079

/-- `A268643(A061601(∑[n]))` -/
def P11849888096965750361.Spec : Prop :=
  ∀ n, P11849888096965750361.a n = A086079 n

end A086079

/-! ## A086079.P1441623618327664175

`A316863(A055120(∑[n]))`
-/

namespace A086079.P1441623618327664175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A055120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086079.P1441623618327664175

namespace A086079

/-- `A316863(A055120(∑[n]))` -/
def P1441623618327664175.Spec : Prop :=
  ∀ n, P1441623618327664175.a n = A086079 n

end A086079

/-!
# A086080: Number of 9's in decimal expansion of triangular number n(n+1)/2.

The programs for A086080, the canonical program `A086080.P16656148236238981192` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086080 has offset 0).

The definition of A086080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086080.P16656148236238981192

`∑{digits}[∑[n], C(#, 9)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086080

/-- `∑{digits}[∑[n], C(#, 9)]` -/
def P16656148236238981192.Spec : Prop :=
  ∀ n, (P16656148236238981192.a n : ℤ) = A086080 n

theorem P16656148236238981192.correct : P16656148236238981192.Spec := by
  intro n
  simp only [A086080]

end A086080

/-! ## A086080.P12798376489386847266

`∑{digits}[∑[n], A025462(#)]`
-/

namespace A086080.P12798376489386847266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A025462 x).sum

end

end A086080.P12798376489386847266

namespace A086080

/-- `∑{digits}[∑[n], A025462(#)]` -/
def P12798376489386847266.Spec : Prop :=
  ∀ n, P12798376489386847266.a n = A086080 n

end A086080

/-! ## A086080.P14008980915305088908

`∑{digits}[∑[n], A090418(#²)]`
-/

namespace A086080.P14008980915305088908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A090418 (x ^ 2)).sum

end

end A086080.P14008980915305088908

namespace A086080

/-- `∑{digits}[∑[n], A090418(#²)]` -/
def P14008980915305088908.Spec : Prop :=
  ∀ n, P14008980915305088908.a n = A086080 n

end A086080

/-! ## A086080.P12950377935312663477

`∑{digits}[∑[n], #%A177740(#+3)]`
-/

namespace A086080.P12950377935312663477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod (x : ℤ) (A177740 (x + 3))).sum

end

end A086080.P12950377935312663477

namespace A086080

/-- `∑{digits}[∑[n], #%A177740(#+3)]` -/
def P12950377935312663477.Spec : Prop :=
  ∀ n, P12950377935312663477.a n = A086080 n

end A086080

/-! ## A086080.P13451023436053910732

`∑{digits}[∑[n], A002264(A002264(#))]`
-/

namespace A086080.P13451023436053910732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A002264 (A002264 x).toNat).sum

end

end A086080.P13451023436053910732

namespace A086080

/-- `∑{digits}[∑[n], A002264(A002264(#))]` -/
def P13451023436053910732.Spec : Prop :=
  ∀ n, P13451023436053910732.a n = A086080 n

end A086080

/-! ## A086080.P13304072951373221007

`∑{digits}[∑[n], A004198(A002487(#))]`
-/

namespace A086080.P13304072951373221007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 (A002487 x).toNat).sum

end

end A086080.P13304072951373221007

namespace A086080

/-- `∑{digits}[∑[n], A004198(A002487(#))]` -/
def P13304072951373221007.Spec : Prop :=
  ∀ n, P13304072951373221007.a n = A086080 n

end A086080

/-! ## A086080.P7837449921213377376

`∑{digits}[∑[n], A005044(A005044(#))]`
-/

namespace A086080.P7837449921213377376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A005044 (A005044 x).toNat).sum

end

end A086080.P7837449921213377376

namespace A086080

/-- `∑{digits}[∑[n], A005044(A005044(#))]` -/
def P7837449921213377376.Spec : Prop :=
  ∀ n, P7837449921213377376.a n = A086080 n

end A086080

/-! ## A086080.P13138956920941347222

`∑{digits}[∑[n], A083892(A000601(#))]`
-/

namespace A086080.P13138956920941347222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083892 (A000601 x).toNat).sum

end

end A086080.P13138956920941347222

namespace A086080

/-- `∑{digits}[∑[n], A083892(A000601(#))]` -/
def P13138956920941347222.Spec : Prop :=
  ∀ n, P13138956920941347222.a n = A086080 n

end A086080

/-! ## A086080.P12319868753111734952

`∑{digits}[∑[n], A014081(A080018(#))]`
-/

namespace A086080.P12319868753111734952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014081 (A080018 x).toNat).sum

end

end A086080.P12319868753111734952

namespace A086080

/-- `∑{digits}[∑[n], A014081(A080018(#))]` -/
def P12319868753111734952.Spec : Prop :=
  ∀ n, P12319868753111734952.a n = A086080 n

end A086080

/-! ## A086080.P6256029560177936200

`∑{digits}[∑[n], A130520(A130520(#))]`
-/

namespace A086080.P6256029560177936200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A130520 (A130520 x).toNat).sum

end

end A086080.P6256029560177936200

namespace A086080

/-- `∑{digits}[∑[n], A130520(A130520(#))]` -/
def P6256029560177936200.Spec : Prop :=
  ∀ n, P6256029560177936200.a n = A086080 n

end A086080

/-! ## A086080.P11799539073504462580

`∑{digits}[∑[n], A011885(A341144(#))]`
-/

namespace A086080.P11799539073504462580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011885 (A341144 (x + 30)).toNat).sum

end

end A086080.P11799539073504462580

namespace A086080

/-- `∑{digits}[∑[n], A011885(A341144(#))]` -/
def P11799539073504462580.Spec : Prop :=
  ∀ n, P11799539073504462580.a n = A086080 n

end A086080

/-! ## A086080.P16622874051061527244

`∑{digits}[∑[n], A318944(A289831(#))]`
-/

namespace A086080.P16622874051061527244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A318944 (A289831 x).toNat).sum

end

end A086080.P16622874051061527244

namespace A086080

/-- `∑{digits}[∑[n], A318944(A289831(#))]` -/
def P16622874051061527244.Spec : Prop :=
  ∀ n, P16622874051061527244.a n = A086080 n

end A086080

/-! ## A086080.P1289338517901844292

`∑{digits}[A000124(n)+1, A036640(#)]`
-/

namespace A086080.P1289338517901844292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036640 x).sum

end

end A086080.P1289338517901844292

namespace A086080

/-- `∑{digits}[A000124(n)+1, A036640(#)]` -/
def P1289338517901844292.Spec : Prop :=
  ∀ n, P1289338517901844292.a n = A086080 n

end A086080

/-! ## A086080.P8441165044738013373

`∑{digits}[∑[n], A083206(A027750(#+1)+1)]`
-/

namespace A086080.P8441165044738013373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A083206 (A027750 (x + 1) + 1).toNat).sum

end

end A086080.P8441165044738013373

namespace A086080

/-- `∑{digits}[∑[n], A083206(A027750(#+1)+1)]` -/
def P8441165044738013373.Spec : Prop :=
  ∀ n, P8441165044738013373.a n = A086080 n

end A086080

/-! ## A086080.P12030044964133414033

`A102683(A011873(n+1))`
-/

namespace A086080.P12030044964133414033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A011873 (n + 1)).toNat

end

end A086080.P12030044964133414033

namespace A086080

/-- `A102683(A011873(n+1))` -/
def P12030044964133414033.Spec : Prop :=
  ∀ n, P12030044964133414033.a n = A086080 n

end A086080

/-! ## A086080.P9372517785207959890

`A102683(∑[n])`
-/

namespace A086080.P9372517785207959890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086080.P9372517785207959890

namespace A086080

/-- `A102683(∑[n])` -/
def P9372517785207959890.Spec : Prop :=
  ∀ n, P9372517785207959890.a n = A086080 n

end A086080

/-! ## A086080.P9342220392710913526

`A316869(A222254(∑[n]))`
-/

namespace A086080.P9342220392710913526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222254 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A086080.P9342220392710913526

namespace A086080

/-- `A316869(A222254(∑[n]))` -/
def P9342220392710913526.Spec : Prop :=
  ∀ n, P9342220392710913526.a n = A086080 n

end A086080

/-!
# A086081: Numbers m such that m and its 2's complement are both primes. In other words, m and 2^k - m (where k is the smallest power of 2 such that 2^k > m) are primes.

The programs for A086081, the canonical program `A086081.P7991024386945292785` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086081 has offset 1).

The definition of A086081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086081.P7991024386945292785

`p?[n*A001222(1-A006257(n)+n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A086081

/-- `p?[n*A001222(1-A006257(n)+n)]` -/
def P7991024386945292785.Spec : Prop :=
  ∀ n, P7991024386945292785.a n = A086081 (n + 1)

theorem P7991024386945292785.correct : P7991024386945292785.Spec := by
  intro n
  simp only [A086081, Nat.add_sub_cancel]

end A086081

/-! ## A086081.P9277368999158688813

`p?[n*A001222(A035327(n)+1)]`
-/

namespace A086081.P9277368999158688813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A035327 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P9277368999158688813

namespace A086081

/-- `p?[n*A001222(A035327(n)+1)]` -/
def P9277368999158688813.Spec : Prop :=
  ∀ n, P9277368999158688813.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P6281749244146162066

`p?[n*A010051(A003817(n)+1-n)]`
-/

namespace A086081.P6281749244146162066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A003817 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P6281749244146162066

namespace A086081

/-- `p?[n*A010051(A003817(n)+1-n)]` -/
def P6281749244146162066.Spec : Prop :=
  ∀ n, P6281749244146162066.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P4584250762895269914

`p?[(n+1)*(2-A195150(A035327(n+1)+1))]`
-/

namespace A086081.P4584250762895269914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A195150 (A035327 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P4584250762895269914

namespace A086081

/-- `p?[(n+1)*(2-A195150(A035327(n+1)+1))]` -/
def P4584250762895269914.Spec : Prop :=
  ∀ n, P4584250762895269914.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P10394798033641012428

`p?[A131738(n)-A292438(A035327(n))]`
-/

namespace A086081.P10394798033641012428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n - A292438 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P10394798033641012428

namespace A086081

/-- `p?[A131738(n)-A292438(A035327(n))]` -/
def P10394798033641012428.Spec : Prop :=
  ∀ n, P10394798033641012428.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P16730859706524282257

`p?[A005843(n+1)-A105700(A035327(2*n))]`
-/

namespace A086081.P16730859706524282257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A105700 (A035327 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P16730859706524282257

namespace A086081

/-- `p?[A005843(n+1)-A105700(A035327(2*n))]` -/
def P16730859706524282257.Spec : Prop :=
  ∀ n, P16730859706524282257.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P14552723015527179537

`p?[A292438(A035327(2*n))+A079097(2*n)]`
-/

namespace A086081.P14552723015527179537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A035327 (2 * n)).toNat + A079097 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P14552723015527179537

namespace A086081

/-- `p?[A292438(A035327(2*n))+A079097(2*n)]` -/
def P14552723015527179537.Spec : Prop :=
  ∀ n, P14552723015527179537.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P13318524279985544729

`p?[A292438(A080079(2*n+1))+A079097(2*n)]`
-/

namespace A086081.P13318524279985544729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A080079 (2 * n + 1)).toNat + A079097 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P13318524279985544729

namespace A086081

/-- `p?[A292438(A080079(2*n+1))+A079097(2*n)]` -/
def P13318524279985544729.Spec : Prop :=
  ∀ n, P13318524279985544729.a n = A086081 (n + 1)

end A086081

/-! ## A086081.P16569713901936321744

`p?[A079097(n)-A292438(A080079(n+1))]`
-/

namespace A086081.P16569713901936321744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n - A292438 (A080079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086081.P16569713901936321744

namespace A086081

/-- `p?[A079097(n)-A292438(A080079(n+1))]` -/
def P16569713901936321744.Spec : Prop :=
  ∀ n, P16569713901936321744.a n = A086081 (n + 1)

end A086081

/-!
# A086083: Primitive members of A084687. That is, members which cannot be generated by inserting digits into previous members in recognized patterns.

The programs for A086083, there is no canonical definition to state claims against.
-/

/-! ## A086083.P13991154109184607542

`A084687(A067661(3*(n+1))^A084656(n+1))`
-/

namespace A086083.P13991154109184607542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084687 (SequenceMachineLib.roundAway ((A067661 (3 * (n + 1)) : ℚ) ^ (A084656 (n + 1) : ℤ))).toNat

end

end A086083.P13991154109184607542

/-!
# A086084: A086070 in binary.

The programs for A086084, there is no canonical definition to state claims against.
-/

/-! ## A086084.P2316505825138656502

`A007088(A086070(n+1))`
-/

namespace A086084.P2316505825138656502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A086070 (n + 1)).toNat

end

end A086084.P2316505825138656502

/-! ## A086084.P17143631143572375436

`A185544(2*A086070(n+1))`
-/

namespace A086084.P17143631143572375436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A086070 (n + 1)).toNat

end

end A086084.P17143631143572375436

/-! ## A086084.P16461090511905386966

`∑{digits}[A086069(n+1), A011557(#)]`
-/

namespace A086084.P16461090511905386966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011557 x).sum

end

end A086084.P16461090511905386966

/-! ## A086084.P2828398266858264986

`∑{digits}[A086069(n+1), A086067(#)]`
-/

namespace A086084.P2828398266858264986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A086067 x).sum

end

end A086084.P2828398266858264986

/-! ## A086084.P829641112165711283

`∑{digits}[A086069(n+1), A348783(#)]`
-/

namespace A086084.P829641112165711283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A348783 x).sum

end

end A086084.P829641112165711283

/-!
# A086085: Primes p such that p + floor(sqrt(p)) is prime.

The programs for A086085, the canonical program `A086085.P5689504261399692228` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086085 has offset 1).

The definition of A086085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086085.P5689504261399692228

`p?[A001614(A006254(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086085

/-- `p?[A001614(A006254(n+1))]` -/
def P5689504261399692228.Spec : Prop :=
  ∀ n, P5689504261399692228.a n = A086085 (n + 1)

theorem P5689504261399692228.correct : P5689504261399692228.Spec := by
  intro n
  simp only [A086085, Nat.add_sub_cancel]

end A086085

/-! ## A086085.P7434458298937999569

`p?[A133280(A102781(n+1))+1]`
-/

namespace A086085.P7434458298937999569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A102781 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P7434458298937999569

namespace A086085

/-- `p?[A133280(A102781(n+1))+1]` -/
def P7434458298937999569.Spec : Prop :=
  ∀ n, P7434458298937999569.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P16534423247321070806

`p?[A056847(A028815(n))]`
-/

namespace A086085.P16534423247321070806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P16534423247321070806

namespace A086085

/-- `p?[A056847(A028815(n))]` -/
def P16534423247321070806.Spec : Prop :=
  ∀ n, P16534423247321070806.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P4666657797045920534

`p?[A056847(A008864(n+1))]`
-/

namespace A086085.P4666657797045920534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P4666657797045920534

namespace A086085

/-- `p?[A056847(A008864(n+1))]` -/
def P4666657797045920534.Spec : Prop :=
  ∀ n, P4666657797045920534.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P17956793519311717680

`p?[A056847(A055670(n+1))]`
-/

namespace A086085.P17956793519311717680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A055670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P17956793519311717680

namespace A086085

/-- `p?[A056847(A055670(n+1))]` -/
def P17956793519311717680.Spec : Prop :=
  ∀ n, P17956793519311717680.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P6727688454636376246

`p?[A056847(A000040(n+1)+1)]`
-/

namespace A086085.P6727688454636376246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P6727688454636376246

namespace A086085

/-- `p?[A056847(A000040(n+1)+1)]` -/
def P6727688454636376246.Spec : Prop :=
  ∀ n, P6727688454636376246.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P3219948187193591288

`p?[A056847(A004139(n+1)+1)]`
-/

namespace A086085.P3219948187193591288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A004139 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P3219948187193591288

namespace A086085

/-- `p?[A056847(A004139(n+1)+1)]` -/
def P3219948187193591288.Spec : Prop :=
  ∀ n, P3219948187193591288.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P14046089367878960032

`p?[A056847(A008578(n+1)+1)]`
-/

namespace A086085.P14046089367878960032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A008578 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P14046089367878960032

namespace A086085

/-- `p?[A056847(A008578(n+1)+1)]` -/
def P14046089367878960032.Spec : Prop :=
  ∀ n, P14046089367878960032.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P14932856333357739745

`p?[A056847(A065091(n+1)+1)]`
-/

namespace A086085.P14932856333357739745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A065091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P14932856333357739745

namespace A086085

/-- `p?[A056847(A065091(n+1)+1)]` -/
def P14932856333357739745.Spec : Prop :=
  ∀ n, P14932856333357739745.a n = A086085 (n + 1)

end A086085

/-! ## A086085.P514878597429300800

`p?[A056847(A006093(n+1)+2)]`
-/

namespace A086085.P514878597429300800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A006093 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086085.P514878597429300800

namespace A086085

/-- `p?[A056847(A006093(n+1)+2)]` -/
def P514878597429300800.Spec : Prop :=
  ∀ n, P514878597429300800.a n = A086085 (n + 1)

end A086085

/-!
# A086086: Primes p such that p - floor(sqrt(p)) is prime.

The programs for A086086, the canonical program `A086086.P3994852289549069615` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086086 has offset 1).

The definition of A086086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086086.P3994852289549069615

`round(A173830(n+1)+sqrt(A173830(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086086

/-- `round(A173830(n+1)+sqrt(A173830(n+1)))` -/
def P3994852289549069615.Spec : Prop :=
  ∀ n, P3994852289549069615.a n = A086086 (n + 1)

theorem P3994852289549069615.correct : P3994852289549069615.Spec := by
  intro n
  simp only [A086086, Nat.add_sub_cancel]

end A086086

/-! ## A086086.P3709908726129442595

`p?[A002024(A111333(n+1))+A000040(n+1)]`
-/

namespace A086086.P3709908726129442595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A111333 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086086.P3709908726129442595

namespace A086086

/-- `p?[A002024(A111333(n+1))+A000040(n+1)]` -/
def P3709908726129442595.Spec : Prop :=
  ∀ n, P3709908726129442595.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P17576353871339363552

`p?[A008864(n+1)+A003056(A102781(n+1))]`
-/

namespace A086086.P17576353871339363552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A003056 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086086.P17576353871339363552

namespace A086086

/-- `p?[A008864(n+1)+A003056(A102781(n+1))]` -/
def P17576353871339363552.Spec : Prop :=
  ∀ n, P17576353871339363552.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P6345495980644747429

`record[A006530(A130855(n+1)+A006530(2*n+1))]`
-/

namespace A086086.P6345495980644747429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130855 (n + 1) + A006530 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086086.P6345495980644747429

namespace A086086

/-- `record[A006530(A130855(n+1)+A006530(2*n+1))]` -/
def P6345495980644747429.Spec : Prop :=
  ∀ n, P6345495980644747429.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P15009532643175413740

`record[A020639(A130855(n+1)+A020639(2*n+1))]`
-/

namespace A086086.P15009532643175413740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130855 (n + 1) + A020639 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086086.P15009532643175413740

namespace A086086

/-- `record[A020639(A130855(n+1)+A020639(2*n+1))]` -/
def P15009532643175413740.Spec : Prop :=
  ∀ n, P15009532643175413740.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P11259376722781081102

`A000037(A173830(n+1))`
-/

namespace A086086.P11259376722781081102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A173830 (n + 1)).toNat

end

end A086086.P11259376722781081102

namespace A086086

/-- `A000037(A173830(n+1))` -/
def P11259376722781081102.Spec : Prop :=
  ∀ n, P11259376722781081102.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P8151552995682725388

`p?[A000037(A000040(n+1))]`
-/

namespace A086086.P8151552995682725388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086086.P8151552995682725388

namespace A086086

/-- `p?[A000037(A000040(n+1))]` -/
def P8151552995682725388.Spec : Prop :=
  ∀ n, P8151552995682725388.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P7898593736364979145

`p?[A000037(A050376(n+1))]`
-/

namespace A086086.P7898593736364979145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A050376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086086.P7898593736364979145

namespace A086086

/-- `p?[A000037(A050376(n+1))]` -/
def P7898593736364979145.Spec : Prop :=
  ∀ n, P7898593736364979145.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P9988544520253582934

`p?[A000037(A008578(n+2))]`
-/

namespace A086086.P9988544520253582934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086086.P9988544520253582934

namespace A086086

/-- `p?[A000037(A008578(n+2))]` -/
def P9988544520253582934.Spec : Prop :=
  ∀ n, P9988544520253582934.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P10741719580183685153

`p?[A000037(p?[A000037(n+1)])]`
-/

namespace A086086.P10741719580183685153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086086.P10741719580183685153

namespace A086086

/-- `p?[A000037(p?[A000037(n+1)])]` -/
def P10741719580183685153.Spec : Prop :=
  ∀ n, P10741719580183685153.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P3008689163523322420

`A002734(A173830(2*n+1-n))`
-/

namespace A086086.P3008689163523322420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 (A173830 (2 * n + 1 - n)).toNat

end

end A086086.P3008689163523322420

namespace A086086

/-- `A002734(A173830(2*n+1-n))` -/
def P3008689163523322420.Spec : Prop :=
  ∀ n, P3008689163523322420.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P18294262067000654314

`record[A006530(A000194(n+1)+A006530(2*(n+1)))]`
-/

namespace A086086.P18294262067000654314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000194 (n + 1) + A006530 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086086.P18294262067000654314

namespace A086086

/-- `record[A006530(A000194(n+1)+A006530(2*(n+1)))]` -/
def P18294262067000654314.Spec : Prop :=
  ∀ n, P18294262067000654314.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P18127437781210903558

`record[A014963(A000037(A162753(n)))]`
-/

namespace A086086.P18127437781210903558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000037 (A162753 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086086.P18127437781210903558

namespace A086086

/-- `record[A014963(A000037(A162753(n)))]` -/
def P18127437781210903558.Spec : Prop :=
  ∀ n, P18127437781210903558.a n = A086086 (n + 1)

end A086086

/-! ## A086086.P16118492204572382059

`record[A014963(A130855(n+1)+A014963(2*n+1))]`
-/

namespace A086086.P16118492204572382059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A130855 (n + 1) + A014963 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086086.P16118492204572382059

namespace A086086

/-- `record[A014963(A130855(n+1)+A014963(2*n+1))]` -/
def P16118492204572382059.Spec : Prop :=
  ∀ n, P16118492204572382059.a n = A086086 (n + 1)

end A086086

/-!
# A086087: a(n) is the minimal m such that the group GL(m,3) has an element of order n.

The programs for A086087, there is no canonical definition to state claims against.
-/

/-! ## A086087.P357316055746480425

`A000120(A193861(3*n+1)-A293616(n))`
-/

namespace A086087.P357316055746480425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A193861 (3 * n + 1) - A293616 n).toNat

end

end A086087.P357316055746480425

/-! ## A086087.P16027425448681474923

`A000120(C(A160680(3*(n+2)), A123603(n)))`
-/

namespace A086087.P16027425448681474923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A160680 (3 * (n + 2))).toNat (A123603 n).toNat)

end

end A086087.P16027425448681474923

/-! ## A086087.P265572832503016579

`A000005(lt[A062329(3*(n+1)), A179198(2*(n+1))])`
-/

namespace A086087.P265572832503016579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179198 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086087.P265572832503016579

/-!
# A086090: a(n) = 2^n + n*3^n.

The programs for A086090, the canonical program `A086090.P1910188759893739702` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086090 has offset 0).

The definition of A086090 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n*3^n` (program `A086090.P1910188759893739702`, by `A086090.P1910188759893739702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086090.P1910188759893739702

`2^n+n*3^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086090

/-- `2^n+n*3^n` -/
def P1910188759893739702.Spec : Prop :=
  ∀ n, (P1910188759893739702.a n : ℤ) = A086090 n

theorem P1910188759893739702.correct : P1910188759893739702.Spec := by
  intro n
  simp only [A086090]

end A086090

/-! ## A086090.P14302740764192197448

`abs(A084859(n)+n/(ceil(acot(n-1))+2)^(1-n))`
-/

namespace A086090.P14302740764192197448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A084859 n : ℚ) + (n : ℚ) / (⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉ + 2 : ℚ) ^ (1 - (n : ℤ) : ℤ)|

end

end A086090.P14302740764192197448

namespace A086090

/-- `abs(A084859(n)+n/(ceil(acot(n-1))+2)^(1-n))` -/
def P14302740764192197448.Spec : Prop :=
  ∀ n, P14302740764192197448.a n = (A086090 n : ℚ)

end A086090

/-! ## A086090.P17747489267037206829

`∑[A229277(n)+A011782(n)]`
-/

namespace A086090.P17747489267037206829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086090.P17747489267037206829

namespace A086090

/-- `∑[A229277(n)+A011782(n)]` -/
def P17747489267037206829.Spec : Prop :=
  ∀ n, P17747489267037206829.a n = A086090 n

end A086090

/-! ## A086090.P8172919333749222596

`abs(A036290(n)+record[A117575(n)])`
-/

namespace A086090.P8172919333749222596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036290 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A086090.P8172919333749222596

namespace A086090

/-- `abs(A036290(n)+record[A117575(n)])` -/
def P8172919333749222596.Spec : Prop :=
  ∀ n, P8172919333749222596.a n = A086090 n

end A086090

/-! ## A086090.P8163605032282811193

`floor(A084859(n)+∑[A229277(n)/3])`
-/

namespace A086090.P8163605032282811193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229277 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084859 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A086090.P8163605032282811193

namespace A086090

/-- `floor(A084859(n)+∑[A229277(n)/3])` -/
def P8163605032282811193.Spec : Prop :=
  ∀ n, P8163605032282811193.a n = A086090 n

end A086090

/-! ## A086090.P7918265804078157432

`abs(A084859(n)+2*A082133(n)-n)`
-/

namespace A086090.P7918265804078157432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084859 n + (2 * A082133 n - (n : ℤ))|

end

end A086090.P7918265804078157432

namespace A086090

/-- `abs(A084859(n)+2*A082133(n)-n)` -/
def P7918265804078157432.Spec : Prop :=
  ∀ n, P7918265804078157432.a n = A086090 n

end A086090

/-! ## A086090.P11823081915725470614

`abs(A084859(n)+n*Δ[A094388(n)]/2)`
-/

namespace A086090.P11823081915725470614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A084859 n : ℚ) + ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2|

end

end A086090.P11823081915725470614

namespace A086090

/-- `abs(A084859(n)+n*Δ[A094388(n)]/2)` -/
def P11823081915725470614.Spec : Prop :=
  ∀ n, P11823081915725470614.a n = (A086090 n : ℚ)

end A086090

/-! ## A086090.P1186849172065240237

`(A036290(n)+A000079(n))*A001221(A229708(n+1))`
-/

namespace A086090.P1186849172065240237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036290 n + A000079 n) * A001221 (A229708 (n + 1)).toNat

end

end A086090.P1186849172065240237

namespace A086090

/-- `(A036290(n)+A000079(n))*A001221(A229708(n+1))` -/
def P1186849172065240237.Spec : Prop :=
  ∀ n, P1186849172065240237.a n = A086090 n

end A086090

/-!
# A086091: a(n) = 3^n + 3*n*4^(n-1).

The programs for A086091, the canonical program `A086091.P3154457619635186415` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086091 has offset 0).

The definition of A086091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086091.P3154457619635186415

`3^n+3*n*4^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086091

/-- `3^n+3*n*4^(n-1)` -/
def P3154457619635186415.Spec : Prop :=
  ∀ n, P3154457619635186415.a n = (A086091 n : ℚ)

end A086091

/-! ## A086091.P2346370418674289683

`abs(4^n-3^n-A081039(n))`
-/

namespace A086091.P2346370418674289683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - (3 ^ n : ℤ) - A081039 n|

end

end A086091.P2346370418674289683

namespace A086091

/-- `abs(4^n-3^n-A081039(n))` -/
def P2346370418674289683.Spec : Prop :=
  ∀ n, P2346370418674289683.a n = A086091 n

end A086091

/-! ## A086091.P13830814223648019951

`abs(A081039(n)-A005061(n))`
-/

namespace A086091.P13830814223648019951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081039 n - A005061 n|

end

end A086091.P13830814223648019951

namespace A086091

/-- `abs(A081039(n)-A005061(n))` -/
def P13830814223648019951.Spec : Prop :=
  ∀ n, P13830814223648019951.a n = A086091 n

end A086091

/-! ## A086091.P301637651219509653

`Δ[A002699(n)/2-A162725(n)]`
-/

namespace A086091.P301637651219509653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002699 n : ℚ) / 2 - (A162725 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086091.P301637651219509653

namespace A086091

/-- `Δ[A002699(n)/2-A162725(n)]` -/
def P301637651219509653.Spec : Prop :=
  ∀ n, P301637651219509653.a n = (A086091 n : ℚ)

end A086091

/-! ## A086091.P13265089476766547990

`(A002250(n)+Δ[A002699(n)-A002250(n)])/2`
-/

namespace A086091.P13265089476766547990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n - A002250 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002250 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A086091.P13265089476766547990

namespace A086091

/-- `(A002250(n)+Δ[A002699(n)-A002250(n)])/2` -/
def P13265089476766547990.Spec : Prop :=
  ∀ n, P13265089476766547990.a n = (A086091 n : ℚ)

end A086091

/-! ## A086091.P3548325608775138154

`(A002250(n)+Δ[A057711(2*n)-A002250(n)])/2`
-/

namespace A086091.P3548325608775138154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n) - A002250 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002250 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A086091.P3548325608775138154

namespace A086091

/-- `(A002250(n)+Δ[A057711(2*n)-A002250(n)])/2` -/
def P3548325608775138154.Spec : Prop :=
  ∀ n, P3548325608775138154.a n = (A086091 n : ℚ)

end A086091

/-!
# A086092: a(n) = 4^n+3n5^(n-1).

The programs for A086092, the canonical program `A086092.P3462842077011608418` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086092 has offset 0).

The definition of A086092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086092.P3462842077011608418

`3*n*5^(n-1)+4^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086092

/-- `3*n*5^(n-1)+4^n` -/
def P3462842077011608418.Spec : Prop :=
  ∀ n, P3462842077011608418.a n = (A086092 n : ℚ)

end A086092

/-!
# A086093: a(n) = 3^n + 2*n*4^(n-1).

The programs for A086093, the canonical program `A086093.P6734917064426738367` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086093 has offset 0).

The definition of A086093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086093.P6734917064426738367

`3^n+2*n*4^(n-1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086093

/-- `3^n+2*n*4^(n-1)` -/
def P6734917064426738367.Spec : Prop :=
  ∀ n, P6734917064426738367.a n = (A086093 n : ℚ)

end A086093

/-! ## A086093.P4286105454862084145

`abs(A002697(n)-A086091(n))`
-/

namespace A086093.P4286105454862084145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002697 n - A086091 n|

end

end A086093.P4286105454862084145

namespace A086093

/-- `abs(A002697(n)-A086091(n))` -/
def P4286105454862084145.Spec : Prop :=
  ∀ n, P4286105454862084145.a n = A086093 n

end A086093

/-! ## A086093.P15407910307976313199

`or(1, A002699(n)+A000244(n))`
-/

namespace A086093.P15407910307976313199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002699 n + A000244 n)

end

end A086093.P15407910307976313199

namespace A086093

/-- `or(1, A002699(n)+A000244(n))` -/
def P15407910307976313199.Spec : Prop :=
  ∀ n, P15407910307976313199.a n = A086093 n

end A086093

/-! ## A086093.P8141309504473455215

`floor(A000244(n)+A050915(n)/2)`
-/

namespace A086093.P8141309504473455215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 n : ℚ) + (A050915 n : ℚ) / 2⌋

end

end A086093.P8141309504473455215

namespace A086093

/-- `floor(A000244(n)+A050915(n)/2)` -/
def P8141309504473455215.Spec : Prop :=
  ∀ n, P8141309504473455215.a n = A086093 n

end A086093

/-! ## A086093.P9575567839044423629

`(A139756(2*n+1)+A025192(n+1))/2`
-/

namespace A086093.P9575567839044423629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139756 (2 * n + 1) + A025192 (n + 1) : ℚ) / 2

end

end A086093.P9575567839044423629

namespace A086093

/-- `(A139756(2*n+1)+A025192(n+1))/2` -/
def P9575567839044423629.Spec : Prop :=
  ∀ n, P9575567839044423629.a n = (A086093 n : ℚ)

end A086093

/-! ## A086093.P12460305105461547048

`lcm(A002697(n)-A086091(n), A033999(n))`
-/

namespace A086093.P12460305105461547048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002697 n - A086091 n) (A033999 n)

end

end A086093.P12460305105461547048

namespace A086093

/-- `lcm(A002697(n)-A086091(n), A033999(n))` -/
def P12460305105461547048.Spec : Prop :=
  ∀ n, (P12460305105461547048.a n : ℤ) = A086093 n

end A086093

/-! ## A086093.P3726463475923273499

`(A002699(n)+A000244(n))%A002700(n+1)`
-/

namespace A086093.P3726463475923273499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002699 n + A000244 n) (A002700 (n + 1))

end

end A086093.P3726463475923273499

namespace A086093

/-- `(A002699(n)+A000244(n))%A002700(n+1)` -/
def P3726463475923273499.Spec : Prop :=
  ∀ n, P3726463475923273499.a n = A086093 n

end A086093

/-! ## A086093.P12803505194710018928

`(A002699(n)+A000244(n))%A054322(n)`
-/

namespace A086093.P12803505194710018928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002699 n + A000244 n) (A054322 n)

end

end A086093.P12803505194710018928

namespace A086093

/-- `(A002699(n)+A000244(n))%A054322(n)` -/
def P12803505194710018928.Spec : Prop :=
  ∀ n, P12803505194710018928.a n = A086093 n

end A086093

/-!
# A086094: Permanent of the n X n matrix whose element (i,j) equals t(|i-j|) where t(n) is the number of divisors of n and t(0) = 0.

The programs for A086094, there is no canonical definition to state claims against.
-/

/-! ## A086094.P13381146819102654054

`A339842(a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A086094.P13381146819102654054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  A339842 (a (n - 1)).toNat

end

end A086094.P13381146819102654054

/-!
# A086096: Semiprimes with a semiprime number of 1's in their binary representation.

The programs for A086096, the canonical program `A086096.P6781603370646093491` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086096 has offset 1).

The definition of A086096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1045 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086096.P6781603370646093491

`lt[2, A105700(A000120(n))*A105700(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086096

/-- `lt[2, A105700(A000120(n))*A105700(n)]` -/
def P6781603370646093491.Spec : Prop :=
  ∀ n, (P6781603370646093491.a n : ℤ) = A086096 (n + 1)

theorem P6781603370646093491.correct : P6781603370646093491.Spec := by
  intro n
  simp only [A086096, Nat.add_sub_cancel]

end A086096

/-! ## A086096.P822711078998202660

`lt[A362451(A050315(n))+1, A105700(n)]`
-/

namespace A086096.P822711078998202660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362451 (A050315 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086096.P822711078998202660

namespace A086096

/-- `lt[A362451(A050315(n))+1, A105700(n)]` -/
def P822711078998202660.Spec : Prop :=
  ∀ n, (P822711078998202660.a n : ℤ) = A086096 (n + 1)

end A086096

/-! ## A086096.P4179345594971404849

`eq[A001842(A050315(n)), A226378(n)]`
-/

namespace A086096.P4179345594971404849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A050315 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086096.P4179345594971404849

namespace A086096

/-- `eq[A001842(A050315(n)), A226378(n)]` -/
def P4179345594971404849.Spec : Prop :=
  ∀ n, (P4179345594971404849.a n : ℤ) = A086096 (n + 1)

end A086096

/-! ## A086096.P8762322748882783353

`eq[A001842(A050315(n)), A166974(n)]`
-/

namespace A086096.P8762322748882783353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A050315 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086096.P8762322748882783353

namespace A086096

/-- `eq[A001842(A050315(n)), A166974(n)]` -/
def P8762322748882783353.Spec : Prop :=
  ∀ n, (P8762322748882783353.a n : ℤ) = A086096 (n + 1)

end A086096

/-! ## A086096.P14089725395831967801

`eq[A107393(A000120(n)), A166974(n)]`
-/

namespace A086096.P14089725395831967801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086096.P14089725395831967801

namespace A086096

/-- `eq[A107393(A000120(n)), A166974(n)]` -/
def P14089725395831967801.Spec : Prop :=
  ∀ n, (P14089725395831967801.a n : ℤ) = A086096 (n + 1)

end A086096

/-!
# A086097: Numbers n such that n and n+1 are semiprimes with a semiprime number of 1's in their binary representation.

The programs for A086097, the canonical program `A086097.P11743620789435279125` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086097 has offset 1).

The definition of A086097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086097.P11743620789435279125

`A086096(eq[1, Δ[A086096(n+1)]]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086097

/-- `A086096(eq[1, Δ[A086096(n+1)]]+1)` -/
def P11743620789435279125.Spec : Prop :=
  ∀ n, P11743620789435279125.a n = A086097 (n + 1)

theorem P11743620789435279125.correct : P11743620789435279125.Spec := by
  intro n
  simp only [A086097, Nat.add_sub_cancel]

end A086097

/-! ## A086097.P9405949024706472491

`∩[A086096(n+2), A086096(n+1)-1]`
-/

namespace A086097.P9405949024706472491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086097.P9405949024706472491

namespace A086097

/-- `∩[A086096(n+2), A086096(n+1)-1]` -/
def P9405949024706472491.Spec : Prop :=
  ∀ n, (P9405949024706472491.a n : ℤ) = A086097 (n + 1)

end A086097

/-! ## A086097.P5820465794056310950

`A086096(eq[1, A086096(n+2)-A086096(n+1)]+1)`
-/

namespace A086097.P5820465794056310950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 2) - A086096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086097.P5820465794056310950

namespace A086097

/-- `A086096(eq[1, A086096(n+2)-A086096(n+1)]+1)` -/
def P5820465794056310950.Spec : Prop :=
  ∀ n, P5820465794056310950.a n = A086097 (n + 1)

theorem P5820465794056310950.correct : P5820465794056310950.Spec := by
  intro n
  simp only [A086097, Nat.add_sub_cancel, A086097.P5820465794056310950.f1, A086097.P5820465794056310950.f2, A086097.P5820465794056310950.a, A086097.P11743620789435279125.f1, A086097.P11743620789435279125.f3, A086097.P11743620789435279125.f2, A086097.P11743620789435279125.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A086097

/-! ## A086097.P4921564117714434679

`A086096(eq[1, A086096(n+2)%A086096(n+1)]+1)`
-/

namespace A086097.P4921564117714434679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086096 (n + 2)) (A086096 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086097.P4921564117714434679

namespace A086097

/-- `A086096(eq[1, A086096(n+2)%A086096(n+1)]+1)` -/
def P4921564117714434679.Spec : Prop :=
  ∀ n, P4921564117714434679.a n = A086097 (n + 1)

end A086097

/-! ## A086097.P5703900804616074487

`∩[A086096(n+1), A233562(n+1)]`
-/

namespace A086097.P5703900804616074487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086097.P5703900804616074487

namespace A086097

/-- `∩[A086096(n+1), A233562(n+1)]` -/
def P5703900804616074487.Spec : Prop :=
  ∀ n, (P5703900804616074487.a n : ℤ) = A086097 (n + 1)

end A086097

/-!
# A086099: a(n) = OR(k AND (n-k): 0<=k<=n), AND and OR bitwise.

The programs for A086099, the canonical program `A086099.P5552536160841423092` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086099 has offset 0).

The definition of A086099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086099.P5552536160841423092

`A053644(n+1)-A006519(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086099

/-- `A053644(n+1)-A006519(n+1)` -/
def P5552536160841423092.Spec : Prop :=
  ∀ n, P5552536160841423092.a n = A086099 n

theorem P5552536160841423092.correct : P5552536160841423092.Spec := by
  intro n
  simp only [A086099]

end A086099

/-! ## A086099.P12003798211931549130

`2^floor(log2(n+1))-1-and(n, -(n+2))`
-/

namespace A086099.P12003798211931549130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.log 2 (n + 1) : ℤ) - 1 - Int.land (n : ℤ) (-(n + 2 : ℤ))

end

end A086099.P12003798211931549130

namespace A086099

/-- `2^floor(log2(n+1))-1-and(n, -(n+2))` -/
def P12003798211931549130.Spec : Prop :=
  ∀ n, P12003798211931549130.a n = A086099 n

end A086099

/-! ## A086099.P1224304333329246994

`xor(n, A035327(n+1))/2`
-/

namespace A086099.P1224304333329246994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A035327 (n + 1)) : ℚ) / 2

end

end A086099.P1224304333329246994

namespace A086099

/-- `xor(n, A035327(n+1))/2` -/
def P1224304333329246994.Spec : Prop :=
  ∀ n, P1224304333329246994.a n = (A086099 n : ℚ)

end A086099

/-! ## A086099.P9064776246351174520

`A131577(ceil(log2(n+2)))-2^val(n+1, 2)`
-/

namespace A086099.P9064776246351174520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A086099.P9064776246351174520

namespace A086099

/-- `A131577(ceil(log2(n+2)))-2^val(n+1, 2)` -/
def P9064776246351174520.Spec : Prop :=
  ∀ n, P9064776246351174520.a n = A086099 n

end A086099

/-! ## A086099.P5764805938283732784

`A092323(n+1)-A135481(n)`
-/

namespace A086099.P5764805938283732784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (n + 1) - A135481 n

end

end A086099.P5764805938283732784

namespace A086099

/-- `A092323(n+1)-A135481(n)` -/
def P5764805938283732784.Spec : Prop :=
  ∀ n, P5764805938283732784.a n = A086099 n

end A086099

/-! ## A086099.P3065617893847065968

`A142151(n)-A092323(n+1)`
-/

namespace A086099.P3065617893847065968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142151 n - A092323 (n + 1)

end

end A086099.P3065617893847065968

namespace A086099

/-- `A142151(n)-A092323(n+1)` -/
def P3065617893847065968.Spec : Prop :=
  ∀ n, P3065617893847065968.a n = A086099 n

end A086099

/-! ## A086099.P10459578737430189969

`A048967(and(n, A054429(n+1)))`
-/

namespace A086099.P10459578737430189969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (Int.land (n : ℤ) (A054429 (n + 1))).toNat

end

end A086099.P10459578737430189969

namespace A086099

/-- `A048967(and(n, A054429(n+1)))` -/
def P10459578737430189969.Spec : Prop :=
  ∀ n, P10459578737430189969.a n = A086099 n

end A086099

/-! ## A086099.P4012195675253817557

`A038572(xor(n, A035327(n+1)))`
-/

namespace A086099.P4012195675253817557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor (n : ℤ) (A035327 (n + 1))).toNat

end

end A086099.P4012195675253817557

namespace A086099

/-- `A038572(xor(n, A035327(n+1)))` -/
def P4012195675253817557.Spec : Prop :=
  ∀ n, P4012195675253817557.a n = A086099 n

end A086099

/-! ## A086099.P15907833543870384131

`A092754(n+1)-A086799(n+1)`
-/

namespace A086099.P15907833543870384131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1) - A086799 (n + 1)

end

end A086099.P15907833543870384131

namespace A086099

/-- `A092754(n+1)-A086799(n+1)` -/
def P15907833543870384131.Spec : Prop :=
  ∀ n, P15907833543870384131.a n = A086099 n

end A086099

/-! ## A086099.P6773181929839388231

`A129760(n+1)-A053645(n+1)`
-/

namespace A086099.P6773181929839388231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1) - A053645 (n + 1)

end

end A086099.P6773181929839388231

namespace A086099

/-- `A129760(n+1)-A053645(n+1)` -/
def P6773181929839388231.Spec : Prop :=
  ∀ n, P6773181929839388231.a n = A086099 n

end A086099

/-! ## A086099.P14590494982781482837

`(A082908(n)-1)*A006519(n+1)`
-/

namespace A086099.P14590494982781482837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082908 n - 1) * A006519 (n + 1)

end

end A086099.P14590494982781482837

namespace A086099

/-- `(A082908(n)-1)*A006519(n+1)` -/
def P14590494982781482837.Spec : Prop :=
  ∀ n, P14590494982781482837.a n = A086099 n

end A086099

/-! ## A086099.P214984554008070179

`xor(A054429(n+1), A086799(n+1))`
-/

namespace A086099.P214984554008070179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054429 (n + 1)) (A086799 (n + 1))

end

end A086099.P214984554008070179

namespace A086099

/-- `xor(A054429(n+1), A086799(n+1))` -/
def P214984554008070179.Spec : Prop :=
  ∀ n, P214984554008070179.a n = A086099 n

end A086099

/-! ## A086099.P18014733711030846024

`n-(A135481(n)+A053645(n+1))`
-/

namespace A086099.P18014733711030846024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A135481 n + A053645 (n + 1))

end

end A086099.P18014733711030846024

namespace A086099

/-- `n-(A135481(n)+A053645(n+1))` -/
def P18014733711030846024.Spec : Prop :=
  ∀ n, P18014733711030846024.a n = A086099 n

end A086099

/-! ## A086099.P10332661813726306962

`A004754(n+1)+n-A341522(n)`
-/

namespace A086099.P10332661813726306962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) + ((n : ℤ) - A341522 n)

end

end A086099.P10332661813726306962

namespace A086099

/-- `A004754(n+1)+n-A341522(n)` -/
def P10332661813726306962.Spec : Prop :=
  ∀ n, P10332661813726306962.a n = A086099 n

end A086099

/-! ## A086099.P17486404197092010707

`xor(A004526(n)-A053645(n+1), A004526(n))`
-/

namespace A086099.P17486404197092010707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n - A053645 (n + 1)) (A004526 n)

end

end A086099.P17486404197092010707

namespace A086099

/-- `xor(A004526(n)-A053645(n+1), A004526(n))` -/
def P17486404197092010707.Spec : Prop :=
  ∀ n, P17486404197092010707.a n = A086099 n

end A086099

/-! ## A086099.P1763531333902709856

`xor(A038572(n)-A053645(n+1), A038572(n))`
-/

namespace A086099.P1763531333902709856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038572 n - A053645 (n + 1)) (A038572 n)

end

end A086099.P1763531333902709856

namespace A086099

/-- `xor(A038572(n)-A053645(n+1), A038572(n))` -/
def P1763531333902709856.Spec : Prop :=
  ∀ n, P1763531333902709856.a n = A086099 n

end A086099

/-! ## A086099.P15370995252099025945

`xor(A065033(n)-A053645(n+1), A065033(n))`
-/

namespace A086099.P15370995252099025945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065033 n - A053645 (n + 1)) (A065033 n)

end

end A086099.P15370995252099025945

namespace A086099

/-- `xor(A065033(n)-A053645(n+1), A065033(n))` -/
def P15370995252099025945.Spec : Prop :=
  ∀ n, P15370995252099025945.a n = A086099 n

end A086099

/-! ## A086099.P5349477862425209709

`xor(A110654(n)-A053645(n+1), A110654(n))`
-/

namespace A086099.P5349477862425209709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110654 n - A053645 (n + 1)) (A110654 n)

end

end A086099.P5349477862425209709

namespace A086099

/-- `xor(A110654(n)-A053645(n+1), A110654(n))` -/
def P5349477862425209709.Spec : Prop :=
  ∀ n, P5349477862425209709.a n = A086099 n

end A086099

/-! ## A086099.P13374250689052574009

`(A129760(A080079(n+1))+A129760(n+1))/2`
-/

namespace A086099.P13374250689052574009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129760 (A080079 (n + 1)).toNat + A129760 (n + 1) : ℚ) / 2

end

end A086099.P13374250689052574009

namespace A086099

/-- `(A129760(A080079(n+1))+A129760(n+1))/2` -/
def P13374250689052574009.Spec : Prop :=
  ∀ n, P13374250689052574009.a n = (A086099 n : ℚ)

end A086099

/-! ## A086099.P5030843592387162856

`A053644(n+1)+A142151(n)-A003817(n+1)`
-/

namespace A086099.P5030843592387162856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + (A142151 n - A003817 (n + 1))

end

end A086099.P5030843592387162856

namespace A086099

/-- `A053644(n+1)+A142151(n)-A003817(n+1)` -/
def P5030843592387162856.Spec : Prop :=
  ∀ n, P5030843592387162856.a n = A086099 n

end A086099

