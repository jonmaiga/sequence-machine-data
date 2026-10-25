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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A226400: Number of nondecreasing -n..n vectors of length 3 whose dot product with some nonincreasing -n..n vector equals 3.

The programs for A226400, there is no canonical definition to state claims against.
-/

/-! ## A226400.P6483474227201573954

`A226398(∑[n+2]+4)`
-/

namespace A226400.P6483474227201573954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226400.P6483474227201573954

/-! ## A226400.P6402339886074768821

`lcm(2, A226398(A167614(n+1)))`
-/

namespace A226400.P6402339886074768821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A226398 (A167614 (n + 1)).toNat)

end

end A226400.P6402339886074768821

/-! ## A226400.P3735889335541003773

`record[A010054(n)*A226398(n+3)]`
-/

namespace A226400.P3735889335541003773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A226398 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226400.P3735889335541003773

/-! ## A226400.P1225118772674611497

`record[gcd(A139600(n), A226398(n+3))]`
-/

namespace A226400.P1225118772674611497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139600 n) (A226398 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226400.P1225118772674611497

/-! ## A226400.P14554958410588813036

`record[gcd(A092921(n), A226398(n+4))]`
-/

namespace A226400.P14554958410588813036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A226398 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226400.P14554958410588813036

/-!
# A226401: Number of nondecreasing -n..n vectors of length 4 whose dot product with some nonincreasing -n..n vector equals 4.

The programs for A226401, there is no canonical definition to state claims against.
-/

/-! ## A226401.P6530341563404807923

`A226398(A141214(n)+7)`
-/

namespace A226401.P6530341563404807923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A141214 n + 7).toNat

end

end A226401.P6530341563404807923

/-! ## A226401.P12758667770856047878

`A226398(A052905(n)+9)`
-/

namespace A226401.P12758667770856047878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A052905 n + 9).toNat

end

end A226401.P12758667770856047878

/-! ## A226401.P4294828210538765668

`A226398(A055999(n)+10)`
-/

namespace A226401.P4294828210538765668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A055999 n + 10).toNat

end

end A226401.P4294828210538765668

/-! ## A226401.P4829304372095390860

`A226398(eq[5, A066657(n)])`
-/

namespace A226401.P4829304372095390860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226401.P4829304372095390860

/-! ## A226401.P12429474044105468849

`A226398(A167614(n+2)+1)`
-/

namespace A226401.P12429474044105468849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A167614 (n + 2) + 1).toNat

end

end A226401.P12429474044105468849

/-!
# A226402: Number of nondecreasing -n..n vectors of length 5 whose dot product with some nonincreasing -n..n vector equals 5.

The programs for A226402, there is no canonical definition to state claims against.
-/

/-! ## A226402.P690712661827651948

`A226398(A167499(n+3))`
-/

namespace A226402.P690712661827651948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A167499 (n + 3)).toNat

end

end A226402.P690712661827651948

/-! ## A226402.P13308770906237726547

`A226398(A155212(n)+13)`
-/

namespace A226402.P13308770906237726547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A155212 n + 13).toNat

end

end A226402.P13308770906237726547

/-! ## A226402.P13264857765578667801

`A226398(A056000(n)+15)`
-/

namespace A226402.P13264857765578667801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A056000 n + 15).toNat

end

end A226402.P13264857765578667801

/-! ## A226402.P3698116756693879743

`A226398(eq[7, A066657(n)])`
-/

namespace A226402.P3698116756693879743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226402.P3698116756693879743

/-! ## A226402.P13394246983476594984

`A226398(A167614(n+3)+2)`
-/

namespace A226402.P13394246983476594984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A167614 (n + 3) + 2).toNat

end

end A226402.P13394246983476594984

/-!
# A226403: Number of nondecreasing -n..n vectors of length 6 whose dot product with some nonincreasing -n..n vector equals 6.

The programs for A226403, there is no canonical definition to state claims against.
-/

/-! ## A226403.P17619693557283442519

`A226398(∑[n+5]+16)`
-/

namespace A226403.P17619693557283442519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A226403.P17619693557283442519

/-!
# A226404: Number of nondecreasing -n..n vectors of length 7 whose dot product with some nonincreasing -n..n vector equals 7.

The programs for A226404, there is no canonical definition to state claims against.
-/

/-! ## A226404.P3157923255423060590

`A226398(eq[11, A066657(n)])`
-/

namespace A226404.P3157923255423060590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226404.P3157923255423060590

/-! ## A226404.P7213052292274319952

`A226398(A000124(n+6)+6)`
-/

namespace A226404.P7213052292274319952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A000124 (n + 6) + 6).toNat

end

end A226404.P7213052292274319952

/-! ## A226404.P16757121898250248565

`A226398(A000217(n+6)+7)`
-/

namespace A226404.P16757121898250248565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A000217 (n + 6) + 7).toNat

end

end A226404.P16757121898250248565

/-!
# A226405: Expansion of x/((1-x-x^3)*(1-x)^3).

The programs for A226405, the canonical program `A226405.P568443305054866655` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226405 has offset 0).

The definition of A226405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))` (program `A226405.P568443305054866655`, by `A226405.P568443305054866655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226405.P568443305054866655

`ogf(x/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226405

/-- `ogf(x/(1-4x+6x^2-5x^3+4x^4-3x^5+x^6))` -/
def P568443305054866655.Spec : Prop :=
  ∀ n, P568443305054866655.a n = A226405 n

theorem P568443305054866655.correct : P568443305054866655.Spec := by
  intro n
  simp only [A226405]

end A226405

/-! ## A226405.P5687052617846058809

`∑[a(n-1)+a(n-3)+n]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A226405.P5687052617846058809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 3) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P5687052617846058809

namespace A226405

/-- `∑[a(n-1)+a(n-3)+n]` -/
def P5687052617846058809.Spec : Prop :=
  ∀ n, (P5687052617846058809.a n : ℤ) = A226405 n

end A226405

/-! ## A226405.P12130848312687837817

`∑[A020745(n)-(n+3)]`
-/

namespace A226405.P12130848312687837817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020745 n - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P12130848312687837817

namespace A226405

/-- `∑[A020745(n)-(n+3)]` -/
def P12130848312687837817.Spec : Prop :=
  ∀ n, P12130848312687837817.a n = A226405 n

end A226405

/-! ## A226405.P10658727039442559587

`∑[A020711(n)-(n+5)]`
-/

namespace A226405.P10658727039442559587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020711 n - (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P10658727039442559587

namespace A226405

/-- `∑[A020711(n)-(n+5)]` -/
def P10658727039442559587.Spec : Prop :=
  ∀ n, P10658727039442559587.a n = A226405 n

end A226405

/-! ## A226405.P4376167777282780541

`∑[∑[∑[A078012(n+2)]]]`
-/

namespace A226405.P4376167777282780541
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P4376167777282780541

namespace A226405

/-- `∑[∑[∑[A078012(n+2)]]]` -/
def P4376167777282780541.Spec : Prop :=
  ∀ n, P4376167777282780541.a n = A226405 n

end A226405

/-! ## A226405.P14644270181832634918

`∑[∑[Δ[A048588(n)]-1]]`
-/

namespace A226405.P14644270181832634918
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P14644270181832634918

namespace A226405

/-- `∑[∑[Δ[A048588(n)]-1]]` -/
def P14644270181832634918.Spec : Prop :=
  ∀ n, P14644270181832634918.a n = A226405 n

end A226405

/-! ## A226405.P3096085886737273691

`∑[∑[A068921(n+1)-1]]`
-/

namespace A226405.P3096085886737273691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P3096085886737273691

namespace A226405

/-- `∑[∑[A068921(n+1)-1]]` -/
def P3096085886737273691.Spec : Prop :=
  ∀ n, P3096085886737273691.a n = A226405 n

end A226405

/-! ## A226405.P15005718821574037936

`∑[∑[A000930(n+2)-1]]`
-/

namespace A226405.P15005718821574037936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P15005718821574037936

namespace A226405

/-- `∑[∑[A000930(n+2)-1]]` -/
def P15005718821574037936.Spec : Prop :=
  ∀ n, P15005718821574037936.a n = A226405 n

end A226405

/-! ## A226405.P16657765664107449164

`∑[A077868(n+2)-(n+3)]`
-/

namespace A226405.P16657765664107449164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (n + 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P16657765664107449164

namespace A226405

/-- `∑[A077868(n+2)-(n+3)]` -/
def P16657765664107449164.Spec : Prop :=
  ∀ n, P16657765664107449164.a n = A226405 n

end A226405

/-! ## A226405.P2259378302813028215

`∑[∑[A077868(n)]-A077868(n)]`
-/

namespace A226405.P2259378302813028215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A077868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P2259378302813028215

namespace A226405

/-- `∑[∑[A077868(n)]-A077868(n)]` -/
def P2259378302813028215.Spec : Prop :=
  ∀ n, P2259378302813028215.a n = A226405 n

end A226405

/-! ## A226405.P4542313979313310372

`A050228(n+3)-A000217(n+3)`
-/

namespace A226405.P4542313979313310372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 3) - A000217 (n + 3)

end

end A226405.P4542313979313310372

namespace A226405

/-- `A050228(n+3)-A000217(n+3)` -/
def P4542313979313310372.Spec : Prop :=
  ∀ n, P4542313979313310372.a n = A226405 n

end A226405

/-! ## A226405.P16325560491159756484

`∑[A050228(n+1)]-A050228(n+1)`
-/

namespace A226405.P16325560491159756484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A050228 (n + 1)

end

end A226405.P16325560491159756484

namespace A226405

/-- `∑[A050228(n+1)]-A050228(n+1)` -/
def P16325560491159756484.Spec : Prop :=
  ∀ n, P16325560491159756484.a n = A226405 n

end A226405

/-! ## A226405.P12367493903401231981

`A144898(n+1)-(A144898(n)+A050228(n+1))`
-/

namespace A226405.P12367493903401231981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 (n + 1) - (A144898 n + A050228 (n + 1))

end

end A226405.P12367493903401231981

namespace A226405

/-- `A144898(n+1)-(A144898(n)+A050228(n+1))` -/
def P12367493903401231981.Spec : Prop :=
  ∀ n, P12367493903401231981.a n = A226405 n

end A226405

/-! ## A226405.P6112716605079416364

`∑[∑[A144903(∑[n+3])]]`
-/

namespace A226405.P6112716605079416364
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P6112716605079416364

namespace A226405

/-- `∑[∑[A144903(∑[n+3])]]` -/
def P6112716605079416364.Spec : Prop :=
  ∀ n, P6112716605079416364.a n = A226405 n

end A226405

/-! ## A226405.P1660710601133930528

`∑[A241619(∑[n+1])-2*(n+2)+n]`
-/

namespace A226405.P1660710601133930528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241619 (∑ j ∈ Finset.range (n + 1), f2 j) - (2 * (n + 2) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226405.P1660710601133930528

namespace A226405

/-- `∑[A241619(∑[n+1])-2*(n+2)+n]` -/
def P1660710601133930528.Spec : Prop :=
  ∀ n, P1660710601133930528.a n = A226405 n

end A226405

/-!
# A226406: Number of nondecreasing -3..3 vectors of length n whose dot product with some nondecreasing -3..3 vector equals n.

The programs for A226406, there is no canonical definition to state claims against.
-/

/-! ## A226406.P11244056344865072270

`A226410(∑[n+3]+1)`
-/

namespace A226406.P11244056344865072270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226406.P11244056344865072270

/-! ## A226406.P11127894290099494308

`record[A010054(n+3)*A226410(n+1)]`
-/

namespace A226406.P11127894290099494308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A226410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226406.P11127894290099494308

/-! ## A226406.P5557785720338118759

`record[A226410(n+1)/A110441(n+2)]`
-/

namespace A226406.P5557785720338118759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226410 (n + 1) : ℚ) / (A110441 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226406.P5557785720338118759

/-! ## A226406.P3802449492312804859

`record[gcd(A097805(n+3), A226410(n+1))]`
-/

namespace A226406.P3802449492312804859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 (n + 3)) (A226410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226406.P3802449492312804859

/-!
# A226407: Number of nondecreasing -4..4 vectors of length n whose dot product with some nondecreasing -4..4 vector equals n.

The programs for A226407, there is no canonical definition to state claims against.
-/

/-! ## A226407.P1744889068546712794

`A226410(A141214(n+1))`
-/

namespace A226407.P1744889068546712794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A141214 (n + 1)).toNat

end

end A226407.P1744889068546712794

/-! ## A226407.P10554740136833728208

`A226410(A027379(n+2))`
-/

namespace A226407.P10554740136833728208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A027379 (n + 2)).toNat

end

end A226407.P10554740136833728208

/-! ## A226407.P14306071214402666439

`A226410(A055998(n+2))`
-/

namespace A226407.P14306071214402666439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A055998 (n + 2)).toNat

end

end A226407.P14306071214402666439

/-! ## A226407.P1359773365764236099

`A226410(A155212(n)+5)`
-/

namespace A226407.P1359773365764236099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A155212 n + 5).toNat

end

end A226407.P1359773365764236099

/-! ## A226407.P2539953737593714289

`A226410(A056000(n)+7)`
-/

namespace A226407.P2539953737593714289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A056000 n + 7).toNat

end

end A226407.P2539953737593714289

/-!
# A226408: Number of nondecreasing -5..5 vectors of length n whose dot product with some nondecreasing -5..5 vector equals n.

The programs for A226408, there is no canonical definition to state claims against.
-/

/-! ## A226408.P4360006453375646654

`A226410(∑[n+5]+6)`
-/

namespace A226408.P4360006453375646654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A226408.P4360006453375646654

/-!
# A226409: Number of nondecreasing -6..6 vectors of length n whose dot product with some nondecreasing -6..6 vector equals n.

The programs for A226409, there is no canonical definition to state claims against.
-/

/-! ## A226409.P17932366619098507927

`A226410(A052905(n+3))`
-/

namespace A226409.P17932366619098507927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A052905 (n + 3)).toNat

end

end A226409.P17932366619098507927

/-! ## A226409.P16879100645858068025

`A226410(eq[3, A219347(n)])`
-/

namespace A226409.P16879100645858068025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226409.P16879100645858068025

/-! ## A226409.P2337351571745098376

`A226410(eq[5, A152157(n)])`
-/

namespace A226409.P2337351571745098376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226409.P2337351571745098376

/-! ## A226409.P1883671083289249394

`A226410(eq[5, A193592(n)])`
-/

namespace A226409.P1883671083289249394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226409.P1883671083289249394

/-! ## A226409.P8301052324918023714

`A226410(A055999(n+3)+1)`
-/

namespace A226409.P8301052324918023714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A055999 (n + 3) + 1).toNat

end

end A226409.P8301052324918023714

/-!
# A226410: T(n,k)=Number of nondecreasing -k..k vectors of length n whose dot product with some nondecreasing -k..k vector equals n.

The programs for A226410, there is no canonical definition to state claims against.
-/

/-! ## A226410.P15775741463972199667

`A226340(n+1)-A010894(A344391(n))`
-/

namespace A226410.P15775741463972199667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (n + 1) - A010894 ((A344391 n).toNat + 21)

end

end A226410.P15775741463972199667

/-! ## A226410.P16968593947235641818

`A226340(n+1)-A225099(A352366(n))`
-/

namespace A226410.P16968593947235641818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (n + 1) - A225099 (A352366 n).toNat

end

end A226410.P16968593947235641818

/-! ## A226410.P14569713491511140175

`A226340(n+1)-A010894(A000203(n+1))`
-/

namespace A226410.P14569713491511140175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (n + 1) - A010894 ((A000203 (n + 1)).toNat + 21)

end

end A226410.P14569713491511140175

/-! ## A226410.P9206735982822898065

`A226340(n+1)-A277007(A166643(n+1))`
-/

namespace A226410.P9206735982822898065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (n + 1) - A277007 (A166643 (n + 1)).toNat

end

end A226410.P9206735982822898065

/-! ## A226410.P9962977551137970570

`A226340(n+1)-A358841(A301922(n+1))`
-/

namespace A226410.P9962977551137970570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (n + 1) - A358841 (A301922 (n + 1)).toNat

end

end A226410.P9962977551137970570

/-!
# A226411: Number of nondecreasing -n..n vectors of length 3 whose dot product with some nondecreasing -n..n vector equals 3.

The programs for A226411, there is no canonical definition to state claims against.
-/

/-! ## A226411.P3132211791542746025

`A226410(∑[n+2]+4)`
-/

namespace A226411.P3132211791542746025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226411.P3132211791542746025

/-! ## A226411.P522997821063273164

`lcm((-1)^n, A226410(A167614(n+1)))`
-/

namespace A226411.P522997821063273164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A226410 (A167614 (n + 1)).toNat)

end

end A226411.P522997821063273164

/-! ## A226411.P15193080233774465506

`A226410(A167614(n+1))+A025437(n)`
-/

namespace A226411.P15193080233774465506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167614 (n + 1)).toNat + A025437 n

end

end A226411.P15193080233774465506

/-! ## A226411.P664304313175601285

`A226410(A167614(n+1))+A025469(n)`
-/

namespace A226411.P664304313175601285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167614 (n + 1)).toNat + A025469 n

end

end A226411.P664304313175601285

/-! ## A226411.P9289409532149120267

`A226410(A167614(n+1))+A178798(n)`
-/

namespace A226411.P9289409532149120267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167614 (n + 1)).toNat + A178798 n

end

end A226411.P9289409532149120267

/-!
# A226412: Number of nondecreasing -n..n vectors of length 4 whose dot product with some nondecreasing -n..n vector equals 4.

The programs for A226412, there is no canonical definition to state claims against.
-/

/-! ## A226412.P7995755153471646354

`A226410(A145018(n+4))`
-/

namespace A226412.P7995755153471646354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A145018 (n + 4)).toNat

end

end A226412.P7995755153471646354

/-! ## A226412.P16825501964194500051

`A226410(A141214(n)+7)`
-/

namespace A226412.P16825501964194500051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A141214 n + 7).toNat

end

end A226412.P16825501964194500051

/-! ## A226412.P3791104886285921848

`A226410(A052905(n)+9)`
-/

namespace A226412.P3791104886285921848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A052905 n + 9).toNat

end

end A226412.P3791104886285921848

/-! ## A226412.P5907505011302198839

`A226410(A055999(n)+10)`
-/

namespace A226412.P5907505011302198839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A055999 n + 10).toNat

end

end A226412.P5907505011302198839

/-! ## A226412.P4774870053126971004

`A226410(eq[5, A066657(n)])`
-/

namespace A226412.P4774870053126971004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226412.P4774870053126971004

/-!
# A226413: Number of nondecreasing -n..n vectors of length 5 whose dot product with some nondecreasing -n..n vector equals 5.

The programs for A226413, there is no canonical definition to state claims against.
-/

/-! ## A226413.P14409860921487067743

`A226410(A167499(n+3))`
-/

namespace A226413.P14409860921487067743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167499 (n + 3)).toNat

end

end A226413.P14409860921487067743

/-! ## A226413.P12963866507047088773

`A226410(A155212(n)+13)`
-/

namespace A226413.P12963866507047088773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A155212 n + 13).toNat

end

end A226413.P12963866507047088773

/-! ## A226413.P13169434978233264373

`A226410(A056000(n)+15)`
-/

namespace A226413.P13169434978233264373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A056000 n + 15).toNat

end

end A226413.P13169434978233264373

/-! ## A226413.P1087206062408207506

`A226410(eq[7, A066657(n)])`
-/

namespace A226413.P1087206062408207506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226413.P1087206062408207506

/-! ## A226413.P602833817336858805

`A226410(A000217(n+4)+5)`
-/

namespace A226413.P602833817336858805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A000217 (n + 4) + 5).toNat

end

end A226413.P602833817336858805

/-!
# A226414: Number of nondecreasing -n..n vectors of length 6 whose dot product with some nondecreasing -n..n vector equals 6.

The programs for A226414, there is no canonical definition to state claims against.
-/

/-! ## A226414.P10957669360988711973

`A226410(A166136(n+4))`
-/

namespace A226414.P10957669360988711973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A166136 (n + 4)).toNat

end

end A226414.P10957669360988711973

/-! ## A226414.P15479641405657760454

`A226410(A056115(n)+21)`
-/

namespace A226414.P15479641405657760454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A056115 n + 21).toNat

end

end A226414.P15479641405657760454

/-! ## A226414.P3392602562992556697

`A226410(A167499(n+4)+1)`
-/

namespace A226414.P3392602562992556697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167499 (n + 4) + 1).toNat

end

end A226414.P3392602562992556697

/-! ## A226414.P12975597682662028461

`A226410(A167614(n+4)+3)`
-/

namespace A226414.P12975597682662028461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167614 (n + 4) + 3).toNat

end

end A226414.P12975597682662028461

/-! ## A226414.P872373669699556612

`A226410(A000124(n+5)+5)`
-/

namespace A226414.P872373669699556612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A000124 (n + 5) + 5).toNat

end

end A226414.P872373669699556612

/-!
# A226415: Number of nondecreasing -n..n vectors of length 7 whose dot product with some nondecreasing -n..n vector equals 7.

The programs for A226415, there is no canonical definition to state claims against.
-/

/-! ## A226415.P2185140406233893487

`A226410(A056119(n)+28)`
-/

namespace A226415.P2185140406233893487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A056119 n + 28).toNat

end

end A226415.P2185140406233893487

/-! ## A226415.P13659949897266945972

`A226410(eq[11, A066657(n)])`
-/

namespace A226415.P13659949897266945972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226415.P13659949897266945972

/-! ## A226415.P16314561225102343065

`A226410(A167614(n+5)+4)`
-/

namespace A226415.P16314561225102343065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A167614 (n + 5) + 4).toNat

end

end A226415.P16314561225102343065

/-! ## A226415.P1488411111779815986

`A226410(A000217(n+6)+7)`
-/

namespace A226415.P1488411111779815986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A000217 (n + 6) + 7).toNat

end

end A226415.P1488411111779815986

/-! ## A226415.P11432461681671187115

`A226410(eq[8, A131818(n+1)])`
-/

namespace A226415.P11432461681671187115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226415.P11432461681671187115

/-!
# A226416: Number of nondecreasing -2..2 vectors of length n whose dot product with some lexicographically greater or equal nondecreasing -2..2 vector equals n.

The programs for A226416, there is no canonical definition to state claims against.
-/

/-! ## A226416.P1907328300561435692

`A226422(∑[n+2])`
-/

namespace A226416.P1907328300561435692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226416.P1907328300561435692

/-! ## A226416.P2574005055088137342

`record[A226422(A237519(n+1)+1)]`
-/

namespace A226416.P2574005055088137342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A237519 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226416.P2574005055088137342

/-! ## A226416.P1923452165284385091

`A226422(A000096(n+1))+char[20]`
-/

namespace A226416.P1923452165284385091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226416.P1923452165284385091

/-! ## A226416.P16747738036108256855

`record[A129186(n)*A226422(n+1)]`
-/

namespace A226416.P16747738036108256855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A226422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226416.P16747738036108256855

/-! ## A226416.P8674975727998548897

`record[A226422(gcd(n, A185782(n+1)))]`
-/

namespace A226416.P8674975727998548897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (Int.gcd (n : ℤ) (A185782 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226416.P8674975727998548897

/-!
# A226417: Number of nondecreasing -3..3 vectors of length n whose dot product with some lexicographically greater or equal nondecreasing -3..3 vector equals n.

The programs for A226417, there is no canonical definition to state claims against.
-/

/-! ## A226417.P15763595697783152567

`A226422(∑[n+3]+1)`
-/

namespace A226417.P15763595697783152567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226417.P15763595697783152567

/-! ## A226417.P5174656003195744327

`record[A226422(A130297(n+1))]`
-/

namespace A226417.P5174656003195744327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226417.P5174656003195744327

/-! ## A226417.P6528591842706246412

`record[A226422(A237519(n+1))]`
-/

namespace A226417.P6528591842706246412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226417.P6528591842706246412

/-! ## A226417.P5823481535493642933

`A226422(Δ[A008778(n)])+char[15]`
-/

namespace A226417.P5823481535493642933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226417.P5823481535493642933

/-! ## A226417.P2402313385614723771

`A226422(A055999(n)+4)+char[16]`
-/

namespace A226417.P2402313385614723771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A055999 n + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226417.P2402313385614723771

/-!
# A226418: Number of nondecreasing -4..4 vectors of length n whose dot product with some lexicographically greater or equal nondecreasing -4..4 vector equals n.

The programs for A226418, there is no canonical definition to state claims against.
-/

/-! ## A226418.P2056265013217050646

`A226422(∑[n+4]+3)`
-/

namespace A226418.P2056265013217050646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A226418.P2056265013217050646

/-! ## A226418.P14188040681004599170

`A226422(A141214(n+1))+A178780(n)`
-/

namespace A226418.P14188040681004599170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A141214 (n + 1)).toNat + A178780 n

end

end A226418.P14188040681004599170

/-! ## A226418.P2407537596146051804

`A226422(A141214(n+1))^A291168(n)`
-/

namespace A226418.P2407537596146051804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226422 (A141214 (n + 1)).toNat : ℚ) ^ (A291168 n : ℤ)

end

end A226418.P2407537596146051804

/-! ## A226418.P3787760981521697405

`lcm(A226422(A141214(n+1)), A291168(n+4))`
-/

namespace A226418.P3787760981521697405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226422 (A141214 (n + 1)).toNat) (A291168 (n + 4))

end

end A226418.P3787760981521697405

/-!
# A226419: Number of nondecreasing -5..5 vectors of length n whose dot product with some lexicographically greater or equal nondecreasing -5..5 vector equals n.

The programs for A226419, there is no canonical definition to state claims against.
-/

/-! ## A226419.P9159167699834622480

`A226422(∑[n+5]+6)`
-/

namespace A226419.P9159167699834622480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A226419.P9159167699834622480

/-!
# A226420: Number of nondecreasing -6..6 vectors of length n whose dot product with some lexicographically greater or equal nondecreasing -6..6 vector equals n.

The programs for A226420, there is no canonical definition to state claims against.
-/

/-! ## A226420.P14836800072705605357

`A226422(A052905(n+3))`
-/

namespace A226420.P14836800072705605357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A052905 (n + 3)).toNat

end

end A226420.P14836800072705605357

/-! ## A226420.P8360525517224777606

`A226422(A056119(n)+16)`
-/

namespace A226420.P8360525517224777606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A056119 n + 16).toNat

end

end A226420.P8360525517224777606

/-! ## A226420.P17708408684345211193

`A226422(eq[3, A219347(n)])`
-/

namespace A226420.P17708408684345211193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226420.P17708408684345211193

/-! ## A226420.P5820844121222153945

`A226422(eq[5, A152157(n)])`
-/

namespace A226420.P5820844121222153945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226420.P5820844121222153945

/-! ## A226420.P5705801985494986098

`A226422(eq[5, A193592(n)])`
-/

namespace A226420.P5705801985494986098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226420.P5705801985494986098

/-!
# A226421: Number of nondecreasing -7..7 vectors of length n whose dot product with some lexicographically greater or equal nondecreasing -7..7 vector equals n.

The programs for A226421, there is no canonical definition to state claims against.
-/

/-! ## A226421.P2793927049469047706

`A226422(A055999(n+4))`
-/

namespace A226421.P2793927049469047706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A055999 (n + 4)).toNat

end

end A226421.P2793927049469047706

/-! ## A226421.P3565486603736063725

`A226422(eq[4, A219347(n)])`
-/

namespace A226421.P3565486603736063725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226421.P3565486603736063725

/-! ## A226421.P7789126057571883419

`A226422(eq[5, A332954(n)])`
-/

namespace A226421.P7789126057571883419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226421.P7789126057571883419

/-! ## A226421.P10036934157401992322

`A226422(eq[6, A193592(n)])`
-/

namespace A226421.P10036934157401992322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226421.P10036934157401992322

/-! ## A226421.P16804661456039995088

`A226422(eq[7, A152157(n)])`
-/

namespace A226421.P16804661456039995088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226421.P16804661456039995088

/-!
# A226423: Number of nondecreasing -n..n vectors of length 2 whose dot product with some lexicographically greater or equal nondecreasing -n..n vector equals 2.

The programs for A226423, there is no canonical definition to state claims against.
-/

/-! ## A226423.P12272099254161728811

`A226422(∑[n+1]+2)`
-/

namespace A226423.P12272099254161728811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A226423.P12272099254161728811

/-! ## A226423.P5176695273813347653

`record[A127244(n)*A226422(n+3)]`
-/

namespace A226423.P5176695273813347653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 n * A226422 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226423.P5176695273813347653

/-! ## A226423.P7348246622178582683

`record[A127247(n)*A226422(n+3)]`
-/

namespace A226423.P7348246622178582683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127247 n * A226422 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226423.P7348246622178582683

/-! ## A226423.P6577935550092964502

`record[A226422(n+3)/A073370(n)]`
-/

namespace A226423.P6577935550092964502
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226422 (n + 3) : ℚ) / (A073370 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226423.P6577935550092964502

/-! ## A226423.P1403347215418486401

`record[A226422(n+3)/A216294(n)]`
-/

namespace A226423.P1403347215418486401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226422 (n + 3) : ℚ) / (A216294 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226423.P1403347215418486401

/-!
# A226424: Number of nondecreasing -n..n vectors of length 3 whose dot product with some lexicographically greater than or equal to nondecreasing -n..n vector equals 3.

The programs for A226424, there is no canonical definition to state claims against.
-/

/-! ## A226424.P7616207306504308263

`A226422(∑[n+2]+4)`
-/

namespace A226424.P7616207306504308263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226424.P7616207306504308263

/-! ## A226424.P5761739523896998611

`A226422(A167614(n+1))+char[23]`
-/

namespace A226424.P5761739523896998611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226424.P5761739523896998611

/-! ## A226424.P15428235898580113415

`or(char[2], A226422(A046691(n)+7))`
-/

namespace A226424.P15428235898580113415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A226422 (A046691 n + 7).toNat)

end

end A226424.P15428235898580113415

/-! ## A226424.P12046978074281912005

`A226422(A055998(n)+6)%(n+3)!`
-/

namespace A226424.P12046978074281912005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226422 (A055998 n + 6).toNat) (Nat.factorial (n + 3) : ℤ)

end

end A226424.P12046978074281912005

/-! ## A226424.P10534174672238830148

`A226422(A167614(n+1))%A074907(n)`
-/

namespace A226424.P10534174672238830148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226422 (A167614 (n + 1)).toNat) (A074907 n)

end

end A226424.P10534174672238830148

/-!
# A226425: Number of nondecreasing -n..n vectors of length 4 whose dot product with some lexicographically greater or equal nondecreasing -n..n vector equals 4.

The programs for A226425, there is no canonical definition to state claims against.
-/

/-! ## A226425.P1026519437781189195

`A226422(∑[n+3]+7)`
-/

namespace A226425.P1026519437781189195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A226425.P1026519437781189195

/-! ## A226425.P16293604571274089589

`A226422(A052905(n)+9)+char[27]`
-/

namespace A226425.P16293604571274089589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226425.P16293604571274089589

/-! ## A226425.P4011020193719753651

`A226422(A000124(n+3)+3)+char[20]`
-/

namespace A226425.P4011020193719753651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A226425.P4011020193719753651

/-! ## A226425.P13058176591261046173

`∑{d}[A226422(A052905(n)+9), A000010(#)]`
-/

namespace A226425.P13058176591261046173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A226425.P13058176591261046173

/-! ## A226425.P10856685558881002328

`A226422(A052905(n)+9)%A000108(n+9)`
-/

namespace A226425.P10856685558881002328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226422 (A052905 n + 9).toNat) (A000108 (n + 9))

end

end A226425.P10856685558881002328

/-!
# A226426: Number of nondecreasing -n..n vectors of length 5 whose dot product with some lexicographically greater or equal nondecreasing -n..n vector equals 5.

The programs for A226426, there is no canonical definition to state claims against.
-/

/-! ## A226426.P1826032155015799031

`A226422(A167499(n+3))`
-/

namespace A226426.P1826032155015799031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A167499 (n + 3)).toNat

end

end A226426.P1826032155015799031

/-! ## A226426.P4784808690757971415

`A226422(A155212(n)+13)`
-/

namespace A226426.P4784808690757971415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A155212 n + 13).toNat

end

end A226426.P4784808690757971415

/-! ## A226426.P11262181581262671868

`A226422(A056000(n)+15)`
-/

namespace A226426.P11262181581262671868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A056000 n + 15).toNat

end

end A226426.P11262181581262671868

/-! ## A226426.P17862206132527387066

`A226422(eq[7, A066657(n)])`
-/

namespace A226426.P17862206132527387066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226426.P17862206132527387066

/-! ## A226426.P12043018088578919328

`A226422(A166136(n+3)-1)`
-/

namespace A226426.P12043018088578919328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A166136 (n + 3) - 1).toNat

end

end A226426.P12043018088578919328

/-!
# A226427: Number of nondecreasing -n..n vectors of length 6 whose dot product with some lexicographically greater or equal nondecreasing -n..n vector equals 6.

The programs for A226427, there is no canonical definition to state claims against.
-/

/-! ## A226427.P11302510909724500937

`A226422(A056115(n)+21)`
-/

namespace A226427.P11302510909724500937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A056115 n + 21).toNat

end

end A226427.P11302510909724500937

/-! ## A226427.P14087558426048890152

`A226422(A167614(n+4)+3)`
-/

namespace A226427.P14087558426048890152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A167614 (n + 4) + 3).toNat

end

end A226427.P14087558426048890152

/-! ## A226427.P18152357075463233804

`A226422(A000096(n+4)+7)`
-/

namespace A226427.P18152357075463233804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A000096 (n + 4) + 7).toNat

end

end A226427.P18152357075463233804

/-! ## A226427.P6027569758091506137

`A226422(A000217(n+5)+6)`
-/

namespace A226427.P6027569758091506137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A000217 (n + 5) + 6).toNat

end

end A226427.P6027569758091506137

/-! ## A226427.P3358744913304635635

`A226422(A027379(n+3)+9)`
-/

namespace A226427.P3358744913304635635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A027379 (n + 3) + 9).toNat

end

end A226427.P3358744913304635635

/-!
# A226428: Number of nondecreasing -n..n vectors of length 7 whose dot product with some lexicographically greater or equal nondecreasing -n..n vector equals 7.

The programs for A226428, there is no canonical definition to state claims against.
-/

/-! ## A226428.P6756946095116136367

`A226422(A167487(n+5))`
-/

namespace A226428.P6756946095116136367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A167487 (n + 5)).toNat

end

end A226428.P6756946095116136367

/-! ## A226428.P4205054132450443102

`A226422(A056119(n)+28)`
-/

namespace A226428.P4205054132450443102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A056119 n + 28).toNat

end

end A226428.P4205054132450443102

/-! ## A226428.P13462799892875015169

`A226422(eq[11, A066657(n)])`
-/

namespace A226428.P13462799892875015169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226428.P13462799892875015169

/-! ## A226428.P2138112668815680812

`A226422(A166136(n+5)+1)`
-/

namespace A226428.P2138112668815680812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A166136 (n + 5) + 1).toNat

end

end A226428.P2138112668815680812

/-! ## A226428.P5740741655231676027

`A226422(A167499(n+5)+2)`
-/

namespace A226428.P5740741655231676027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226422 (A167499 (n + 5) + 2).toNat

end

end A226428.P5740741655231676027

/-!
# A226431: The number of permutations of length n in a particular geometric grid class.

The programs for A226431, the canonical program `A226431.P13429507690692959901` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226431 has offset 1).

The definition of A226431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226431.P13429507690692959901

`3*A001871(n)-A001871(n+1)+2*A001906(n+1)+2^n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226431

/-- `3*A001871(n)-A001871(n+1)+2*A001906(n+1)+2^n+1` -/
def P13429507690692959901.Spec : Prop :=
  ∀ n, P13429507690692959901.a n = A226431 (n + 1)

theorem P13429507690692959901.correct : P13429507690692959901.Spec := by
  intro n
  simp only [A226431, Nat.add_sub_cancel]

end A226431

/-! ## A226431.P11451360291414804102

`A261226(A288834(n+1)+A020067(n))`
-/

namespace A226431.P11451360291414804102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A288834 (n + 1) + A020067 n).toNat

end

end A226431.P11451360291414804102

namespace A226431

/-- `A261226(A288834(n+1)+A020067(n))` -/
def P11451360291414804102.Spec : Prop :=
  ∀ n, P11451360291414804102.a n = A226431 (n + 1)

end A226431

/-! ## A226431.P3083060507202391650

`A116802(n+1)-A185284(A063005(n))`
-/

namespace A226431.P3083060507202391650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116802 (n + 1) - A185284 (A063005 n).toNat

end

end A226431.P3083060507202391650

namespace A226431

/-- `A116802(n+1)-A185284(A063005(n))` -/
def P3083060507202391650.Spec : Prop :=
  ∀ n, P3083060507202391650.a n = A226431 (n + 1)

end A226431

/-!
# A226432: The number of simple permutations of length n in a particular geometric grid class.

The programs for A226432, the canonical program `A226432.P6741597299688805071` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226432 has offset 1).

The definition of A226432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226432.P6741597299688805071

`A208354(A233583(n+1))-A006355(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226432

/-- `A208354(A233583(n+1))-A006355(n)` -/
def P6741597299688805071.Spec : Prop :=
  ∀ n, P6741597299688805071.a n = A226432 (n + 1)

theorem P6741597299688805071.correct : P6741597299688805071.Spec := by
  intro n
  simp only [A226432, Nat.add_sub_cancel]

end A226432

/-! ## A226432.P4442008632594209617

`A001629(n)-a(n-1)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A226432.P4442008632594209617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  A001629 n - a (n - 1)

end

end A226432.P4442008632594209617

namespace A226432

/-- `A001629(n)-a(n-1)` -/
def P4442008632594209617.Spec : Prop :=
  ∀ n, P4442008632594209617.a n = A226432 (n + 1)

end A226432

/-! ## A226432.P10769554421682292977

`A029907(A233583(n+1))-A006367(n)`
-/

namespace A226432.P10769554421682292977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A233583 (n + 1)).toNat - A006367 n

end

end A226432.P10769554421682292977

namespace A226432

/-- `A029907(A233583(n+1))-A006367(n)` -/
def P10769554421682292977.Spec : Prop :=
  ∀ n, P10769554421682292977.a n = A226432 (n + 1)

end A226432

/-! ## A226432.P5614170370724761233

`A029907(A233583(n+1))-Δ[A010049(n)]`
-/

namespace A226432.P5614170370724761233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (A233583 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A226432.P5614170370724761233

namespace A226432

/-- `A029907(A233583(n+1))-Δ[A010049(n)]` -/
def P5614170370724761233.Spec : Prop :=
  ∀ n, P5614170370724761233.a n = A226432 (n + 1)

end A226432

/-! ## A226432.P17129689569920175428

`A099920(C(n, n²)+n)-A055244(n)`
-/

namespace A226432.P17129689569920175428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (Nat.choose n (n ^ 2) + n) - A055244 n

end

end A226432.P17129689569920175428

namespace A226432

/-- `A099920(C(n, n²)+n)-A055244(n)` -/
def P17129689569920175428.Spec : Prop :=
  ∀ n, P17129689569920175428.a n = A226432 (n + 1)

end A226432

/-!
# A226433: The number of permutations of length n in a particular geometric grid class.

The programs for A226433, the canonical program `A226433.P15475771026139554794` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226433 has offset 1).

The definition of A226433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226433.P15475771026139554794

`A142586(n)+A054452(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226433

/-- `A142586(n)+A054452(n)` -/
def P15475771026139554794.Spec : Prop :=
  ∀ n, P15475771026139554794.a n = A226433 (n + 1)

theorem P15475771026139554794.correct : P15475771026139554794.Spec := by
  intro n
  simp only [A226433, Nat.add_sub_cancel]

end A226433

/-! ## A226433.P4381025170942792820

`A126358(n)-(A131577(n)+n)`
-/

namespace A226433.P4381025170942792820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 n - (A131577 n + (n : ℤ))

end

end A226433.P4381025170942792820

namespace A226433

/-- `A126358(n)-(A131577(n)+n)` -/
def P4381025170942792820.Spec : Prop :=
  ∀ n, P4381025170942792820.a n = A226433 (n + 1)

end A226433

/-! ## A226433.P2960197645407261509

`A001588(2*n+1)-A052968(n)`
-/

namespace A226433.P2960197645407261509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (2 * n + 1) - A052968 n

end

end A226433.P2960197645407261509

namespace A226433

/-- `A001588(2*n+1)-A052968(n)` -/
def P2960197645407261509.Spec : Prop :=
  ∀ n, P2960197645407261509.a n = A226433 (n + 1)

end A226433

/-! ## A226433.P2109827419121966898

`A052995(n+1)-(A011782(n)+n)`
-/

namespace A226433.P2109827419121966898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 (n + 1) - (A011782 n + (n : ℤ))

end

end A226433.P2109827419121966898

namespace A226433

/-- `A052995(n+1)-(A011782(n)+n)` -/
def P2109827419121966898.Spec : Prop :=
  ∀ n, P2109827419121966898.a n = A226433 (n + 1)

end A226433

/-! ## A226433.P16464132039870929740

`A126358(n)-(A094373(n)-1+n)`
-/

namespace A226433.P16464132039870929740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 n - (A094373 n - 1 + (n : ℤ))

end

end A226433.P16464132039870929740

namespace A226433

/-- `A126358(n)-(A094373(n)-1+n)` -/
def P16464132039870929740.Spec : Prop :=
  ∀ n, P16464132039870929740.a n = A226433 (n + 1)

end A226433

/-!
# A226434: The number of sum decomposable permutations which avoid the patterns 3124 and 4312.

The programs for A226434, there is no canonical definition to state claims against.
-/

/-! ## A226434.P12454965134940582607

`A165534(n+1)-A228770(n+1)`
-/

namespace A226434.P12454965134940582607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165534 (n + 1) - A228770 (n + 1)

end

end A226434.P12454965134940582607

/-! ## A226434.P15543620084481055641

`A228769(n+1)+A228771(n+1)-A228770(n+1)`
-/

namespace A226434.P15543620084481055641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228769 (n + 1) + (A228771 (n + 1) - A228770 (n + 1))

end

end A226434.P15543620084481055641

/-! ## A226434.P8862280367375205549

`A054899(A069008(n))+n`
-/

namespace A226434.P8862280367375205549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A069008 n).toNat + (n : ℤ)

end

end A226434.P8862280367375205549

/-!
# A226435: Number of permutations of {1..n} with fewer than 2 interior elements having values lying between the values of their neighbors.

The programs for A226435, there is no canonical definition to state claims against.
-/

/-! ## A226435.P13182889120025276136

`A226441(A212342(n+1))`
-/

namespace A226435.P13182889120025276136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A212342 (n + 1)).toNat

end

end A226435.P13182889120025276136

/-! ## A226435.P9831348419289475441

`A226441(A347553(n+3))`
-/

namespace A226435.P9831348419289475441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A347553 (n + 3)).toNat

end

end A226435.P9831348419289475441

/-! ## A226435.P16574444096001812779

`A226441(A027379(n)-n)`
-/

namespace A226435.P16574444096001812779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A027379 n - (n : ℤ)).toNat

end

end A226435.P16574444096001812779

/-! ## A226435.P3828336584547128409

`A226441(A028310(∑[n]+n))`
-/

namespace A226435.P3828336584547128409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A226435.P3828336584547128409

/-! ## A226435.P14977473687748022813

`A226441(A179865(n+1)+n)`
-/

namespace A226435.P14977473687748022813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A226435.P14977473687748022813

/-! ## A226435.P7015623789631990079

`A001250(n+1)+A000007(n)-A001250(n)`
-/

namespace A226435.P7015623789631990079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 1) + (A000007 n - A001250 n)

end

end A226435.P7015623789631990079

/-! ## A226435.P4512935928239454909

`A000111(n+1)+A000111(n+1)-A001250(n)`
-/

namespace A226435.P4512935928239454909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) + (A000111 (n + 1) - A001250 n)

end

end A226435.P4512935928239454909

/-! ## A226435.P2585186026294662489

`A185421(A238531(n))`
-/

namespace A226435.P2585186026294662489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185421 (A238531 n).toNat

end

end A226435.P2585186026294662489

/-! ## A226435.P18296402217150219880

`A185421(A089071(n+1))`
-/

namespace A226435.P18296402217150219880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185421 (A089071 (n + 1)).toNat

end

end A226435.P18296402217150219880

/-! ## A226435.P6659314375203140770

`A185421(A152948(n+1))`
-/

namespace A226435.P6659314375203140770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185421 (A152948 (n + 1)).toNat

end

end A226435.P6659314375203140770

/-!
# A226436: Number of permutations of {1..n} with fewer than 3 interior elements having values lying between the values of their neighbors.

The programs for A226436, there is no canonical definition to state claims against.
-/

/-! ## A226436.P6800235636568337332

`A226441(∑[n+1]+n)`
-/

namespace A226436.P6800235636568337332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A226436.P6800235636568337332

/-! ## A226436.P12541592928348858915

`A088713(n)-A184955(2*n+3)²`
-/

namespace A226436.P12541592928348858915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088713 n - A184955 (2 * n + 3) ^ 2

end

end A226436.P12541592928348858915

/-! ## A226436.P2288257746186342181

`A000142(n)-A079694(A058837(n))`
-/

namespace A226436.P2288257746186342181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A079694 (A058837 n).toNat

end

end A226436.P2288257746186342181

/-!
# A226437: Number of permutations of {1..n} with fewer than 4 interior elements having values lying between the values of their neighbors.

The programs for A226437, there is no canonical definition to state claims against.
-/

/-! ## A226437.P10537352126612844715

`A226441(eq[2, A008284(n+1)])`
-/

namespace A226437.P10537352126612844715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226437.P10537352126612844715

/-! ## A226437.P10742281842034835271

`A226441(A055998(n+1)-A000038(n))`
-/

namespace A226437.P10742281842034835271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A055998 (n + 1) - A000038 n).toNat

end

end A226437.P10742281842034835271

/-! ## A226437.P267653304124636545

`n!-A025456(Δ[n!])`
-/

namespace A226437.P267653304124636545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A025456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A226437.P267653304124636545

/-!
# A226438: Number of permutations of {1..n} with fewer than 5 interior elements having values lying between the values of their neighbors.

The programs for A226438, there is no canonical definition to state claims against.
-/

/-! ## A226438.P15597972025721116790

`A226441(A028310(n)+A000217(n+3))`
-/

namespace A226438.P15597972025721116790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A028310 n + A000217 (n + 3)).toNat

end

end A226438.P15597972025721116790

/-! ## A226438.P15398496612503987

`A226441(lt[A010054(n), A010054(n+4)])`
-/

namespace A226438.P15398496612503987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226438.P15398496612503987

/-! ## A226438.P13494818968681653472

`A000142(n)-A373073(A306860(n+3))`
-/

namespace A226438.P13494818968681653472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A373073 (A306860 (n + 3)).toNat

end

end A226438.P13494818968681653472

/-!
# A226439: Number of permutations of {1..n} with fewer than 6 interior elements having values lying between the values of their neighbors.

The programs for A226439, there is no canonical definition to state claims against.
-/

/-! ## A226439.P10895975772737231127

`n!-A358007((n+1)²)`
-/

namespace A226439.P10895975772737231127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A358007 ((n + 1) ^ 2 + 53)

end

end A226439.P10895975772737231127

/-! ## A226439.P12641430552017309170

`n!-A022337(A309861(n))`
-/

namespace A226439.P12641430552017309170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A022337 (A309861 n).toNat

end

end A226439.P12641430552017309170

/-! ## A226439.P1556913772687068375

`A000142(n)-A358007((n+1)²)`
-/

namespace A226439.P1556913772687068375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A358007 ((n + 1) ^ 2 + 53)

end

end A226439.P1556913772687068375

/-! ## A226439.P8002184189432535864

`n!-A119559(A022564(n+1))`
-/

namespace A226439.P8002184189432535864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A119559 (A022564 (n + 1)).toNat

end

end A226439.P8002184189432535864

/-!
# A226440: Number of permutations of {1..n} with fewer than 7 interior elements having values lying between the values of their neighbors.

The programs for A226440, there is no canonical definition to state claims against.
-/

/-! ## A226440.P4952746642923673381

`n!-A294927(A018041(n))`
-/

namespace A226440.P4952746642923673381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A294927 (A018041 n).toNat

end

end A226440.P4952746642923673381

/-! ## A226440.P9477037986073739167

`A039723(n)!-A309469(n)`
-/

namespace A226440.P9477037986073739167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A039723 n).toNat : ℤ) - A309469 n

end

end A226440.P9477037986073739167

/-! ## A226440.P5464668776873937801

`n!-A330936(A077949(n))`
-/

namespace A226440.P5464668776873937801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A330936 (A077949 n).toNat

end

end A226440.P5464668776873937801

/-! ## A226440.P10077898711972929386

`A051022(n)!-A318447(n+1)`
-/

namespace A226440.P10077898711972929386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A051022 n).toNat : ℤ) - A318447 (n + 1)

end

end A226440.P10077898711972929386

/-! ## A226440.P2154624010631276612

`n!-A179391(A000045(n+2))`
-/

namespace A226440.P2154624010631276612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A179391 (A000045 (n + 2)).toNat

end

end A226440.P2154624010631276612

/-!
# A226441: T(n,k) = number of permutations of {1..n} with fewer than k interior elements having values lying between the values of their neighbors.

The programs for A226441, there is no canonical definition to state claims against.
-/

/-! ## A226441.P5193393262888943913

`A113793(A225419(n))`
-/

namespace A226441.P5193393262888943913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113793 (A225419 n).toNat

end

end A226441.P5193393262888943913

/-! ## A226441.P4052580190115538930

`A289236(A101486(n))`
-/

namespace A226441.P4052580190115538930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289236 (A101486 n).toNat

end

end A226441.P4052580190115538930

/-! ## A226441.P9725807781240149518

`A343384(A387597(n))`
-/

namespace A226441.P9725807781240149518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343384 (A387597 n).toNat

end

end A226441.P9725807781240149518

/-! ## A226441.P5284180822398222299

`A028825(A209566(n+1))`
-/

namespace A226441.P5284180822398222299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028825 (A209566 (n + 1)).toNat

end

end A226441.P5284180822398222299

/-! ## A226441.P17162864851210008410

`A076634(A271969(n+1))`
-/

namespace A226441.P17162864851210008410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076634 (A271969 (n + 1)).toNat

end

end A226441.P17162864851210008410

/-!
# A226443: Number of distinct shadow transforms for sequences of length n.

The programs for A226443, there is no canonical definition to state claims against.
-/

/-! ## A226443.P10051809301857086318

`A023022(3*n!)`
-/

namespace A226443.P10051809301857086318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (3 * Nat.factorial n)

end

end A226443.P10051809301857086318

/-! ## A226443.P15045690260458621502

`A172245(3*n!)`
-/

namespace A226443.P15045690260458621502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172245 (3 * Nat.factorial n)

end

end A226443.P15045690260458621502

/-! ## A226443.P6215612180153605616

`A001616(abs(1-n)!²)`
-/

namespace A226443.P6215612180153605616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (Nat.factorial |1 - (n : ℤ)|.toNat ^ 2)

end

end A226443.P6215612180153605616

/-!
# A226444: Number A(n,k) of tilings of a k X n rectangle using 1 X 1 squares and L-tiles; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A226444, there is no canonical definition to state claims against.
-/

/-! ## A226444.P1009277830989049150

`A004438(A219924(n)%A020534(n))`
-/

namespace A226444.P1009277830989049150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (Int.tmod (A219924 n) (A020534 n)).toNat

end

end A226444.P1009277830989049150

/-! ## A226444.P17789756330852417790

`A219924(n)+A025466(A219924(2*(n+2)))`
-/

namespace A226444.P17789756330852417790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 n + A025466 (A219924 (2 * (n + 2))).toNat

end

end A226444.P17789756330852417790

/-! ## A226444.P838366240252160459

`A004438(A219924(n))%A020535(n)`
-/

namespace A226444.P838366240252160459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004438 (A219924 n).toNat) (A020535 n)

end

end A226444.P838366240252160459

/-! ## A226444.P6962819681722097913

`A004438(A219924(n)^Δ[A004438(n+1)])`
-/

namespace A226444.P6962819681722097913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (SequenceMachineLib.roundAway ((A219924 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A226444.P6962819681722097913

/-!
# A226447: Expansion of (1-x+x^3)/(1-x^2+2*x^3-x^4).

The programs for A226447, the canonical program `A226447.P14556735285155305354` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226447 has offset 0).

The definition of A226447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^3)/(1-x^2+2x^3-x^4))` (program `A226447.P14556735285155305354`, by `A226447.P14556735285155305354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226447.P14556735285155305354

`ogf((1-x+x^3)/(1-x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226447

/-- `ogf((1-x+x^3)/(1-x^2+2x^3-x^4))` -/
def P14556735285155305354.Spec : Prop :=
  ∀ n, P14556735285155305354.a n = A226447 n

theorem P14556735285155305354.correct : P14556735285155305354.Spec := by
  intro n
  simp only [A226447]

end A226447

/-! ## A226447.P11175338382465168900

`a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-2`
-/

namespace A226447.P11175338382465168900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -2] fun n a =>
  a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A226447.P11175338382465168900

namespace A226447

/-- `a(n-2)-2*a(n-3)+a(n-4)` -/
def P11175338382465168900.Spec : Prop :=
  ∀ n, P11175338382465168900.a n = A226447 n

end A226447

/-! ## A226447.P11778444033776230464

`a(n-2)-a(n-1)+A010892(n+2)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A226447.P11778444033776230464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 2) - a (n - 1) + A010892 (n + 2)

end

end A226447.P11778444033776230464

namespace A226447

/-- `a(n-2)-a(n-1)+A010892(n+2)` -/
def P11778444033776230464.Spec : Prop :=
  ∀ n, P11778444033776230464.a n = A226447 n

end A226447

/-! ## A226447.P6942092450013092215

`Δ[A173714(n)]*A033999(n)`
-/

namespace A226447.P6942092450013092215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A226447.P6942092450013092215

namespace A226447

/-- `Δ[A173714(n)]*A033999(n)` -/
def P6942092450013092215.Spec : Prop :=
  ∀ n, P6942092450013092215.a n = A226447 n

end A226447

/-! ## A226447.P12790441480690498105

`(A004442(n)-n)*Δ[A173714(n)]`
-/

namespace A226447.P12790441480690498105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A226447.P12790441480690498105

namespace A226447

/-- `(A004442(n)-n)*Δ[A173714(n)]` -/
def P12790441480690498105.Spec : Prop :=
  ∀ n, P12790441480690498105.a n = A226447 n

end A226447

/-! ## A226447.P853595402981146818

`(-1)^n*Δ[floor(A000032(n+1)/2)]`
-/

namespace A226447.P853595402981146818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A226447.P853595402981146818

namespace A226447

/-- `(-1)^n*Δ[floor(A000032(n+1)/2)]` -/
def P853595402981146818.Spec : Prop :=
  ∀ n, P853595402981146818.a n = A226447 n

end A226447

/-!
# A226449: a(n) = n*(5*n^2-8*n+5)/2.

The programs for A226449, the canonical program `A226449.P15921394856314699982` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226449 has offset 0).

The definition of A226449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n²-8*n+5)/2` (program `A226449.P16962566072536217380`, by `A226449.P16962566072536217380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226449.P16962566072536217380

`n*(5*n²-8*n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226449.P16962566072536217380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((5 * n ^ 2 : ℤ) - (8 * n : ℤ) + 5) : ℚ) / 2

end

end A226449.P16962566072536217380

namespace A226449

/-- `n*(5*n²-8*n+5)/2` -/
def P16962566072536217380.Spec : Prop :=
  ∀ n, P16962566072536217380.a n = (A226449 n : ℚ)

theorem P16962566072536217380.correct : P16962566072536217380.Spec := by
  intro n
  simp only [A226449, Nat.add_sub_cancel, A226449.P16962566072536217380.a, A226449.P15921394856314699982.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226449

/-! ## A226449.P17400299090068832013

`∑[∑[a(n-1)+15]]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A226449.P17400299090068832013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226449.P17400299090068832013

namespace A226449

/-- `∑[∑[a(n-1)+15]]` -/
def P17400299090068832013.Spec : Prop :=
  ∀ n, (P17400299090068832013.a n : ℤ) = A226449 n

end A226449

/-! ## A226449.P15921394856314699982

`(5*n-3)*C(n, 2)+n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226449

/-- `(5*n-3)*C(n, 2)+n` -/
def P15921394856314699982.Spec : Prop :=
  ∀ n, P15921394856314699982.a n = A226449 n

theorem P15921394856314699982.correct : P15921394856314699982.Spec := by
  intro n
  simp only [A226449]

end A226449

/-! ## A226449.P1954446937546944480

`∑[∑[ogf((x+5x^2+9x^3)/(1-2x+x^2))]]`
-/

namespace A226449.P1954446937546944480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 9] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226449.P1954446937546944480

namespace A226449

/-- `∑[∑[ogf((x+5x^2+9x^3)/(1-2x+x^2))]]` -/
def P1954446937546944480.Spec : Prop :=
  ∀ n, P1954446937546944480.a n = A226449 n

end A226449

/-! ## A226449.P418197136712721

`(n-1)*A192136(n)+1`
-/

namespace A226449.P418197136712721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A192136 n + 1

end

end A226449.P418197136712721

namespace A226449

/-- `(n-1)*A192136(n)+1` -/
def P418197136712721.Spec : Prop :=
  ∀ n, P418197136712721.a n = A226449 n

end A226449

/-! ## A226449.P4156763247759297204

`(n-1)*A000566(n)+n`
-/

namespace A226449.P4156763247759297204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000566 n + (n : ℤ)

end

end A226449.P4156763247759297204

namespace A226449

/-- `(n-1)*A000566(n)+n` -/
def P4156763247759297204.Spec : Prop :=
  ∀ n, P4156763247759297204.a n = A226449 n

end A226449

/-! ## A226449.P7780406774436035573

`A006597(n+1)-((3*n)²+(n+1)²)`
-/

namespace A226449.P7780406774436035573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 (n + 1) - ((3 * n) ^ 2 + (n + 1) ^ 2 : ℤ)

end

end A226449.P7780406774436035573

namespace A226449

/-- `A006597(n+1)-((3*n)²+(n+1)²)` -/
def P7780406774436035573.Spec : Prop :=
  ∀ n, P7780406774436035573.a n = A226449 n

end A226449

/-! ## A226449.P9771368833609980984

`A267370(n)+A015242(n)`
-/

namespace A226449.P9771368833609980984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n + A015242 n

end

end A226449.P9771368833609980984

namespace A226449

/-- `A267370(n)+A015242(n)` -/
def P9771368833609980984.Spec : Prop :=
  ∀ n, P9771368833609980984.a n = A226449 n

end A226449

/-! ## A226449.P13048228496518886364

`2*A226450(n)-A226451(n)`
-/

namespace A226449.P13048228496518886364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226450 n - A226451 n

end

end A226449.P13048228496518886364

namespace A226449

/-- `2*A226450(n)-A226451(n)` -/
def P13048228496518886364.Spec : Prop :=
  ∀ n, P13048228496518886364.a n = A226449 n

end A226449

/-! ## A226449.P13087099239142700428

`A237616(n)+n-A051682(n)`
-/

namespace A226449.P13087099239142700428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n + ((n : ℤ) - A051682 n)

end

end A226449.P13087099239142700428

namespace A226449

/-- `A237616(n)+n-A051682(n)` -/
def P13087099239142700428.Spec : Prop :=
  ∀ n, P13087099239142700428.a n = A226449 n

end A226449

/-! ## A226449.P13281862656816284555

`n*A005476(n)-A001106(n)`
-/

namespace A226449.P13281862656816284555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005476 n - A001106 n

end

end A226449.P13281862656816284555

namespace A226449

/-- `n*A005476(n)-A001106(n)` -/
def P13281862656816284555.Spec : Prop :=
  ∀ n, P13281862656816284555.a n = A226449 n

end A226449

/-! ## A226449.P7361151470040531031

`n*A005475(n)-A062708(n)`
-/

namespace A226449.P7361151470040531031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005475 n - A062708 n

end

end A226449.P7361151470040531031

namespace A226449

/-- `n*A005475(n)-A062708(n)` -/
def P7361151470040531031.Spec : Prop :=
  ∀ n, P7361151470040531031.a n = A226449 n

end A226449

/-! ## A226449.P17204950612001946916

`n²+A006597(n)-A001106(n)`
-/

namespace A226449.P17204950612001946916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A006597 n - A001106 n)

end

end A226449.P17204950612001946916

namespace A226449

/-- `n²+A006597(n)-A001106(n)` -/
def P17204950612001946916.Spec : Prop :=
  ∀ n, P17204950612001946916.a n = A226449 n

end A226449

/-! ## A226449.P15214221340420133317

`A006003(n)+A212133(n)-n²`
-/

namespace A226449.P15214221340420133317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (A212133 n - (n ^ 2 : ℤ))

end

end A226449.P15214221340420133317

namespace A226449

/-- `A006003(n)+A212133(n)-n²` -/
def P15214221340420133317.Spec : Prop :=
  ∀ n, P15214221340420133317.a n = A226449 n

end A226449

/-! ## A226449.P2296871010521621258

`n²+A226450(n)-A006003(n)`
-/

namespace A226449.P2296871010521621258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A226450 n - A006003 n)

end

end A226449.P2296871010521621258

namespace A226449

/-- `n²+A226450(n)-A006003(n)` -/
def P2296871010521621258.Spec : Prop :=
  ∀ n, P2296871010521621258.a n = A226449 n

end A226449

/-! ## A226449.P15664733033459961914

`∑[A022272(n)]+n-A022272(n)`
-/

namespace A226449.P15664733033459961914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A022272 n)

end

end A226449.P15664733033459961914

namespace A226449

/-- `∑[A022272(n)]+n-A022272(n)` -/
def P15664733033459961914.Spec : Prop :=
  ∀ n, P15664733033459961914.a n = A226449 n

end A226449

/-! ## A226449.P5872402587920914335

`(n-1)*(A056106(n)-A000217(n))+1`
-/

namespace A226449.P5872402587920914335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A056106 n - A000217 n) + 1

end

end A226449.P5872402587920914335

namespace A226449

/-- `(n-1)*(A056106(n)-A000217(n))+1` -/
def P5872402587920914335.Spec : Prop :=
  ∀ n, P5872402587920914335.a n = A226449 n

end A226449

/-! ## A226449.P9241755992666720083

`A002411(n)+A015237(n)-A001106(n)`
-/

namespace A226449.P9241755992666720083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + (A015237 n - A001106 n)

end

end A226449.P9241755992666720083

namespace A226449

/-- `A002411(n)+A015237(n)-A001106(n)` -/
def P9241755992666720083.Spec : Prop :=
  ∀ n, P9241755992666720083.a n = A226449 n

end A226449

/-! ## A226449.P8038376826916785792

`A000217(n)+A237616(n)-A051624(n)`
-/

namespace A226449.P8038376826916785792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A237616 n - A051624 n)

end

end A226449.P8038376826916785792

namespace A226449

/-- `A000217(n)+A237616(n)-A051624(n)` -/
def P8038376826916785792.Spec : Prop :=
  ∀ n, P8038376826916785792.a n = A226449 n

end A226449

/-! ## A226449.P892791070593336659

`A212133(n)+A226451(n)-A226450(n)`
-/

namespace A226449.P892791070593336659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n + (A226451 n - A226450 n)

end

end A226449.P892791070593336659

namespace A226449

/-- `A212133(n)+A226451(n)-A226450(n)` -/
def P892791070593336659.Spec : Prop :=
  ∀ n, P892791070593336659.a n = A226449 n

end A226449

/-!
# A226450: a(n) = n*(3*n^2 - 5*n + 3).

The programs for A226450, the canonical program `A226450.P15708609786639552732` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226450 has offset 0).

The definition of A226450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n²-5*n+3)` (program `A226450.P15708609786639552732`, by `A226450.P15708609786639552732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226450.P15708609786639552732

`n*(3*n²-5*n+3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226450

/-- `n*(3*n²-5*n+3)` -/
def P15708609786639552732.Spec : Prop :=
  ∀ n, P15708609786639552732.a n = A226450 n

theorem P15708609786639552732.correct : P15708609786639552732.Spec := by
  intro n
  simp only [A226450]

end A226450

/-! ## A226450.P1657954299062659405

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=45`
-/

namespace A226450.P1657954299062659405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10, 45] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A226450.P1657954299062659405

namespace A226450

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1657954299062659405.Spec : Prop :=
  ∀ n, P1657954299062659405.a n = A226450 n

theorem P1657954299062659405.correct : P1657954299062659405.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A226450, Nat.add_sub_cancel, A226450.P1657954299062659405.a, A226450.P15708609786639552732.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A226450, Nat.add_sub_cancel, A226450.P1657954299062659405.a, A226450.P15708609786639552732.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226450

/-! ## A226450.P11912043094573843823

`A270205(n)+n²`
-/

namespace A226450.P11912043094573843823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n + (n ^ 2 : ℤ)

end

end A226450.P11912043094573843823

namespace A226450

/-- `A270205(n)+n²` -/
def P11912043094573843823.Spec : Prop :=
  ∀ n, P11912043094573843823.a n = A226450 n

theorem P11912043094573843823.correct : P11912043094573843823.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P11912043094573843823.a, A226450.P15708609786639552732.a, A270205, A270205.P4965580866994252023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P2973200913051803399

`(n-1)*A056105(n)+1`
-/

namespace A226450.P2973200913051803399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A056105 n + 1

end

end A226450.P2973200913051803399

namespace A226450

/-- `(n-1)*A056105(n)+1` -/
def P2973200913051803399.Spec : Prop :=
  ∀ n, P2973200913051803399.a n = A226450 n

theorem P2973200913051803399.correct : P2973200913051803399.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P2973200913051803399.a, A226450.P15708609786639552732.a, A056105, A056105.P6848475420530033714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P251060644340115810

`(n-1)*A000567(n)+n`
-/

namespace A226450.P251060644340115810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000567 n + (n : ℤ)

end

end A226450.P251060644340115810

namespace A226450

/-- `(n-1)*A000567(n)+n` -/
def P251060644340115810.Spec : Prop :=
  ∀ n, P251060644340115810.a n = A226450 n

theorem P251060644340115810.correct : P251060644340115810.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P251060644340115810.a, A226450.P15708609786639552732.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P3182998765462948252

`A060884(n)-(1-n)²²`
-/

namespace A226450.P3182998765462948252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 n - ((1 - (n : ℤ)) ^ 2) ^ 2

end

end A226450.P3182998765462948252

namespace A226450

/-- `A060884(n)-(1-n)²²` -/
def P3182998765462948252.Spec : Prop :=
  ∀ n, P3182998765462948252.a n = A226450 n

theorem P3182998765462948252.correct : P3182998765462948252.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P3182998765462948252.a, A226450.P15708609786639552732.a, A060884, A060884.P17835107360669808419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P5349522690863120188

`(n-1)*A271740(n)-(n-2)`
-/

namespace A226450.P5349522690863120188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A271740 n - ((n : ℤ) - 2)

end

end A226450.P5349522690863120188

namespace A226450

/-- `(n-1)*A271740(n)-(n-2)` -/
def P5349522690863120188.Spec : Prop :=
  ∀ n, P5349522690863120188.a n = A226450 n

theorem P5349522690863120188.correct : P5349522690863120188.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P5349522690863120188.a, A226450.P15708609786639552732.a, A271740, A271740.P6949473724138630553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P14264717920153608331

`abs(A052762(n)-n²-n²²)/2`
-/

namespace A226450.P14264717920153608331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A052762 n - (n ^ 2 : ℤ) - ((n ^ 2) ^ 2 : ℤ)| : ℚ) / 2

end

end A226450.P14264717920153608331

namespace A226450

/-- `abs(A052762(n)-n²-n²²)/2` -/
def P14264717920153608331.Spec : Prop :=
  ∀ n, P14264717920153608331.a n = (A226450 n : ℚ)

end A226450

/-! ## A226450.P16940530321866641691

`A059722(n)+A007531(n)`
-/

namespace A226450.P16940530321866641691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n + A007531 n

end

end A226450.P16940530321866641691

namespace A226450

/-- `A059722(n)+A007531(n)` -/
def P16940530321866641691.Spec : Prop :=
  ∀ n, P16940530321866641691.a n = A226450 n

theorem P16940530321866641691.correct : P16940530321866641691.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P16940530321866641691.a, A226450.P15708609786639552732.a, A007531, A007531.P15538264737483534371.a, A059722, A059722.P11059442351168334169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P13419686937850610470

`A317637(n)+A015243(n)`
-/

namespace A226450.P13419686937850610470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n + A015243 n

end

end A226450.P13419686937850610470

namespace A226450

/-- `A317637(n)+A015243(n)` -/
def P13419686937850610470.Spec : Prop :=
  ∀ n, P13419686937850610470.a n = A226450 n

theorem P13419686937850610470.correct : P13419686937850610470.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P13419686937850610470.a, A226450.P15708609786639552732.a, A015243, A015243.P656564678258870490.a, A317637, A317637.P12410921374359631461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P15551594956939572600

`A280058(n)+A085490(n)`
-/

namespace A226450.P15551594956939572600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n + A085490 n

end

end A226450.P15551594956939572600

namespace A226450

/-- `A280058(n)+A085490(n)` -/
def P15551594956939572600.Spec : Prop :=
  ∀ n, P15551594956939572600.a n = A226450 n

theorem P15551594956939572600.correct : P15551594956939572600.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P15551594956939572600.a, A226450.P15708609786639552732.a, A085490, A085490.P10919642999791457831.a, A280058, A280058.P16968223727792884466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P570544590452727752

`A027903(n)-A013656(n)`
-/

namespace A226450.P570544590452727752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - A013656 n

end

end A226450.P570544590452727752

namespace A226450

/-- `A027903(n)-A013656(n)` -/
def P570544590452727752.Spec : Prop :=
  ∀ n, P570544590452727752.a n = A226450 n

theorem P570544590452727752.correct : P570544590452727752.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P570544590452727752.a, A226450.P15708609786639552732.a, A013656, A013656.P11559324039876728310.a, A027903, A027903.P4209147286881915011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P2807179133597660944

`A059986(n)-A033584(n)`
-/

namespace A226450.P2807179133597660944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n - A033584 n

end

end A226450.P2807179133597660944

namespace A226450

/-- `A059986(n)-A033584(n)` -/
def P2807179133597660944.Spec : Prop :=
  ∀ n, P2807179133597660944.a n = A226450 n

theorem P2807179133597660944.correct : P2807179133597660944.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P2807179133597660944.a, A226450.P15708609786639552732.a, A033584, A033584.P5749212620470657919.a, A059986, A059986.P854937850389378493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P12970230133199598633

`A119536(n)-A033429(n)`
-/

namespace A226450.P12970230133199598633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 n - A033429 n

end

end A226450.P12970230133199598633

namespace A226450

/-- `A119536(n)-A033429(n)` -/
def P12970230133199598633.Spec : Prop :=
  ∀ n, P12970230133199598633.a n = A226450 n

theorem P12970230133199598633.correct : P12970230133199598633.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P12970230133199598633.a, A226450.P15708609786639552732.a, A033429, A033429.P6959806467874002675.a, A119536, A119536.P17684524526440716851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P12841006351485625940

`A163833(n)-A022282(n)`
-/

namespace A226450.P12841006351485625940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163833 n - A022282 n

end

end A226450.P12841006351485625940

namespace A226450

/-- `A163833(n)-A022282(n)` -/
def P12841006351485625940.Spec : Prop :=
  ∀ n, P12841006351485625940.a n = A226450 n

end A226450

/-! ## A226450.P2527664503521132951

`A067389(n)-A135703(n)`
-/

namespace A226450.P2527664503521132951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n - A135703 n

end

end A226450.P2527664503521132951

namespace A226450

/-- `A067389(n)-A135703(n)` -/
def P2527664503521132951.Spec : Prop :=
  ∀ n, P2527664503521132951.a n = A226450 n

theorem P2527664503521132951.correct : P2527664503521132951.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P2527664503521132951.a, A226450.P15708609786639552732.a, A067389, A067389.P14097551594125527113.a, A135703, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P14345735131233032272

`A117642(n)-A135706(n)`
-/

namespace A226450.P14345735131233032272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n - A135706 n

end

end A226450.P14345735131233032272

namespace A226450

/-- `A117642(n)-A135706(n)` -/
def P14345735131233032272.Spec : Prop :=
  ∀ n, P14345735131233032272.a n = A226450 n

theorem P14345735131233032272.correct : P14345735131233032272.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P14345735131233032272.a, A226450.P15708609786639552732.a, A117642, A117642.P2206942344561243653.a, A135706, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P7184508770234743770

`A249354(n)-A014635(n)`
-/

namespace A226450.P7184508770234743770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n - A014635 n

end

end A226450.P7184508770234743770

namespace A226450

/-- `A249354(n)-A014635(n)` -/
def P7184508770234743770.Spec : Prop :=
  ∀ n, P7184508770234743770.a n = A226450 n

theorem P7184508770234743770.correct : P7184508770234743770.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P7184508770234743770.a, A226450.P15708609786639552732.a, A014635, A014635.P12617269699985302371.a, A249354, A249354.P14794765986060037338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P6489599210880119244

`A257042(n)-A062783(n)`
-/

namespace A226450.P6489599210880119244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257042 n - A062783 n

end

end A226450.P6489599210880119244

namespace A226450

/-- `A257042(n)-A062783(n)` -/
def P6489599210880119244.Spec : Prop :=
  ∀ n, P6489599210880119244.a n = A226450 n

theorem P6489599210880119244.correct : P6489599210880119244.Spec := by
  intro n
  simp only [A226450, Nat.add_sub_cancel, A226450.P6489599210880119244.a, A226450.P15708609786639552732.a, A062783, A062783.P15889295991207525073.a, A257042, A257042.P6657327043587294459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226450

/-! ## A226450.P11256352170945247336

`A168547(n)-A161702(n)`
-/

namespace A226450.P11256352170945247336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n - A161702 n

end

end A226450.P11256352170945247336

namespace A226450

/-- `A168547(n)-A161702(n)` -/
def P11256352170945247336.Spec : Prop :=
  ∀ n, P11256352170945247336.a n = A226450 n

end A226450

/-!
# A226451: a(n) = n*(7*n^2-12*n+7)/2.

The programs for A226451, the canonical program `A226451.P3970364843688918067` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226451 has offset 0).

The definition of A226451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n²-12*n+7)/2` (program `A226451.P8156099811679411617`, by `A226451.P8156099811679411617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226451.P8156099811679411617

`n*(7*n²-12*n+7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226451.P8156099811679411617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n ^ 2 : ℤ) - (12 * n : ℤ) + 7) : ℚ) / 2

end

end A226451.P8156099811679411617

namespace A226451

/-- `n*(7*n²-12*n+7)/2` -/
def P8156099811679411617.Spec : Prop :=
  ∀ n, P8156099811679411617.a n = (A226451 n : ℚ)

theorem P8156099811679411617.correct : P8156099811679411617.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A226451, Nat.add_sub_cancel, A226451.P8156099811679411617.a, A226451.P3970364843688918067.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A226451, Nat.add_sub_cancel, A226451.P8156099811679411617.a, A226451.P3970364843688918067.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226451

/-! ## A226451.P3970364843688918067

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=51`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226451

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3970364843688918067.Spec : Prop :=
  ∀ n, P3970364843688918067.a n = A226451 n

theorem P3970364843688918067.correct : P3970364843688918067.Spec := by
  intro n
  simp only [A226451]

end A226451

/-! ## A226451.P16369281843137605497

`∑[∑[a(n-1)+21]]` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A226451.P16369281843137605497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226451.P16369281843137605497

namespace A226451

/-- `∑[∑[a(n-1)+21]]` -/
def P16369281843137605497.Spec : Prop :=
  ∀ n, (P16369281843137605497.a n : ℤ) = A226451 n

end A226451

/-! ## A226451.P6434338400540703692

`3*∑[∑[ogf((3x^2+4x^3)/(1-2x+x^2))]]+n`
-/

namespace A226451.P6434338400540703692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A226451.P6434338400540703692

namespace A226451

/-- `3*∑[∑[ogf((3x^2+4x^3)/(1-2x+x^2))]]+n` -/
def P6434338400540703692.Spec : Prop :=
  ∀ n, P6434338400540703692.a n = A226451 n

end A226451

/-! ## A226451.P8807506003398801395

`(n-1)*A001106(n)+n`
-/

namespace A226451.P8807506003398801395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001106 n + (n : ℤ)

end

end A226451.P8807506003398801395

namespace A226451

/-- `(n-1)*A001106(n)+n` -/
def P8807506003398801395.Spec : Prop :=
  ∀ n, P8807506003398801395.a n = A226451 n

end A226451

/-! ## A226451.P14358122293230757054

`A270205(n)+A006003(n)`
-/

namespace A226451.P14358122293230757054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n + A006003 n

end

end A226451.P14358122293230757054

namespace A226451

/-- `A270205(n)+A006003(n)` -/
def P14358122293230757054.Spec : Prop :=
  ∀ n, P14358122293230757054.a n = A226451 n

end A226451

/-! ## A226451.P15678744806139588614

`A280058(n)+A004188(n)`
-/

namespace A226451.P15678744806139588614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n + A004188 n

end

end A226451.P15678744806139588614

namespace A226451

/-- `A280058(n)+A004188(n)` -/
def P15678744806139588614.Spec : Prop :=
  ∀ n, P15678744806139588614.a n = A226451 n

end A226451

/-! ## A226451.P6428695920814376292

`A100171(n+1)-A158480(n)`
-/

namespace A226451.P6428695920814376292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100171 (n + 1) - A158480 n

end

end A226451.P6428695920814376292

namespace A226451

/-- `A100171(n+1)-A158480(n)` -/
def P6428695920814376292.Spec : Prop :=
  ∀ n, P6428695920814376292.a n = A226451 n

end A226451

/-! ## A226451.P830483436132824517

`A271828(n+1)-A158842(n)`
-/

namespace A226451.P830483436132824517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271828 (n + 1) - A158842 n

end

end A226451.P830483436132824517

namespace A226451

/-- `A271828(n+1)-A158842(n)` -/
def P830483436132824517.Spec : Prop :=
  ∀ n, P830483436132824517.a n = A226451 n

end A226451

/-! ## A226451.P13972125970591525727

`A004188(n)+2*A007531(n)`
-/

namespace A226451.P13972125970591525727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n + 2 * A007531 n

end

end A226451.P13972125970591525727

namespace A226451

/-- `A004188(n)+2*A007531(n)` -/
def P13972125970591525727.Spec : Prop :=
  ∀ n, P13972125970591525727.a n = A226451 n

end A226451

/-! ## A226451.P16790667231753433658

`2*A212133(n)-A006003(n)`
-/

namespace A226451.P16790667231753433658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212133 n - A006003 n

end

end A226451.P16790667231753433658

namespace A226451

/-- `2*A212133(n)-A006003(n)` -/
def P16790667231753433658.Spec : Prop :=
  ∀ n, P16790667231753433658.a n = A226451 n

end A226451

/-! ## A226451.P2395691152955707000

`2*A226450(n)-A226449(n)`
-/

namespace A226451.P2395691152955707000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226450 n - A226449 n

end

end A226451.P2395691152955707000

namespace A226451

/-- `2*A226450(n)-A226449(n)` -/
def P2395691152955707000.Spec : Prop :=
  ∀ n, P2395691152955707000.a n = A226451 n

end A226451

/-! ## A226451.P12531614798093010827

`A262000(n)+n-A001106(n)`
-/

namespace A226451.P12531614798093010827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262000 n + ((n : ℤ) - A001106 n)

end

end A226451.P12531614798093010827

namespace A226451

/-- `A262000(n)+n-A001106(n)` -/
def P12531614798093010827.Spec : Prop :=
  ∀ n, P12531614798093010827.a n = A226451 n

end A226451

/-! ## A226451.P4362268724915130010

`A006003(n)+A226450(n)-n²`
-/

namespace A226451.P4362268724915130010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (A226450 n - (n ^ 2 : ℤ))

end

end A226451.P4362268724915130010

namespace A226451

/-- `A006003(n)+A226450(n)-n²` -/
def P4362268724915130010.Spec : Prop :=
  ∀ n, P4362268724915130010.a n = A226451 n

end A226451

/-! ## A226451.P4851444249277304602

`A005945(n)+A006003(n)-A001106(n)`
-/

namespace A226451.P4851444249277304602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n + (A006003 n - A001106 n)

end

end A226451.P4851444249277304602

namespace A226451

/-- `A005945(n)+A006003(n)-A001106(n)` -/
def P4851444249277304602.Spec : Prop :=
  ∀ n, P4851444249277304602.a n = A226451 n

end A226451

/-! ## A226451.P575769247498218888

`A007584(n)+A172076(n)-A051868(n)`
-/

namespace A226451.P575769247498218888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n + (A172076 n - A051868 n)

end

end A226451.P575769247498218888

namespace A226451

/-- `A007584(n)+A172076(n)-A051868(n)` -/
def P575769247498218888.Spec : Prop :=
  ∀ n, P575769247498218888.a n = A226451 n

end A226451

/-! ## A226451.P17837491482419057556

`A000217(n)+A262000(n)-A001107(n)`
-/

namespace A226451.P17837491482419057556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A262000 n - A001107 n)

end

end A226451.P17837491482419057556

namespace A226451

/-- `A000217(n)+A262000(n)-A001107(n)` -/
def P17837491482419057556.Spec : Prop :=
  ∀ n, P17837491482419057556.a n = A226451 n

end A226451

/-! ## A226451.P11535875207138841085

`A000217(n)+A329530(n)-A000567(n)`
-/

namespace A226451.P11535875207138841085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A329530 n - A000567 n)

end

end A226451.P11535875207138841085

namespace A226451

/-- `A000217(n)+A329530(n)-A000567(n)` -/
def P11535875207138841085.Spec : Prop :=
  ∀ n, P11535875207138841085.a n = A226451 n

end A226451

/-! ## A226451.P16054973942122758699

`A226449(n)+A226450(n)-A212133(n)`
-/

namespace A226451.P16054973942122758699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226449 n + (A226450 n - A212133 n)

end

end A226451.P16054973942122758699

namespace A226451

/-- `A226449(n)+A226450(n)-A212133(n)` -/
def P16054973942122758699.Spec : Prop :=
  ∀ n, P16054973942122758699.a n = A226451 n

end A226451

/-! ## A226451.P12014951360394758301

`A060354(2*n)-A006003(n)`
-/

namespace A226451.P12014951360394758301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (2 * n) - A006003 n

end

end A226451.P12014951360394758301

namespace A226451

/-- `A060354(2*n)-A006003(n)` -/
def P12014951360394758301.Spec : Prop :=
  ∀ n, P12014951360394758301.a n = A226451 n

end A226451

/-!
# A226452: Number of closed binary words of length n.

The programs for A226452, there is no canonical definition to state claims against.
-/

/-! ## A226452.P5224556435419359248

`2^n-A297183(n)`
-/

namespace A226452.P5224556435419359248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A297183 n

end

end A226452.P5224556435419359248

/-! ## A226452.P13980468412468204504

`A297184(n)+A231208(n)`
-/

namespace A226452.P13980468412468204504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297184 n + A231208 n

end

end A226452.P13980468412468204504

/-! ## A226452.P1817032704602706821

`abs(A000079(n)-A297183(n))`
-/

namespace A226452.P1817032704602706821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A297183 n|

end

end A226452.P1817032704602706821

/-! ## A226452.P6066068274810870923

`A000051(n)-(A297183(n)+1)`
-/

namespace A226452.P6066068274810870923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A297183 n + 1)

end

end A226452.P6066068274810870923

/-! ## A226452.P3892813983513443080

`A000225(n)+1-A297183(n)`
-/

namespace A226452.P3892813983513443080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A297183 n)

end

end A226452.P3892813983513443080

/-!
# A226453: Integer areas of integer-sided triangles where at least one side is of prime length.

The programs for A226453, there is no canonical definition to state claims against.
-/

/-! ## A226453.P12589967872736070595

`6*A083875(∑[A230915(n+1)!])`
-/

namespace A226453.P12589967872736070595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083875 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226453.P12589967872736070595

/-! ## A226453.P14429723577811556347

`record[A224301(A194055(n+1))]`
-/

namespace A226453.P14429723577811556347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224301 (A194055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226453.P14429723577811556347

/-! ## A226453.P15297211235488831597

`record[A224301(A334945(n+1))]`
-/

namespace A226453.P15297211235488831597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224301 (A334945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226453.P15297211235488831597

/-! ## A226453.P3152469020856756912

`record[A224301(n+1)%A060033(n+1)]`
-/

namespace A226453.P3152469020856756912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224301 (n + 1)) (A060033 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226453.P3152469020856756912

/-! ## A226453.P6463236192952998361

`6*A083875(n+1)%A160508(n+1)`
-/

namespace A226453.P6463236192952998361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A083875 (n + 1)) (A160508 (n + 1))

end

end A226453.P6463236192952998361

/-!
# A226454: The number of squares added in the n-th step of a Pythagoras tree of the 30-60-90 triangle.

The programs for A226454, there is no canonical definition to state claims against.
-/

/-! ## A226454.P8288002561874891446

`A284359(A113301(n))`
-/

namespace A226454.P8288002561874891446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A113301 n).toNat

end

end A226454.P8288002561874891446

/-! ## A226454.P17114862791723879956

`A057142(A148704(n+1))`
-/

namespace A226454.P17114862791723879956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A148704 (n + 1)).toNat

end

end A226454.P17114862791723879956

/-! ## A226454.P5119526729015567289

`A161205(A188175(n+1))`
-/

namespace A226454.P5119526729015567289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A188175 (n + 1)).toNat

end

end A226454.P5119526729015567289

/-! ## A226454.P17236470196976702479

`A161205(A341072(n+1))`
-/

namespace A226454.P17236470196976702479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A341072 (n + 1)).toNat

end

end A226454.P17236470196976702479

/-! ## A226454.P15214826433140013715

`A161205(A046919(n+4))`
-/

namespace A226454.P15214826433140013715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A046919 (n + 4)).toNat

end

end A226454.P15214826433140013715

/-!
# A226456: Array by antidiagonals: D(m,n) = binary distance between m and n.

The programs for A226456, there is no canonical definition to state claims against.
-/

/-! ## A226456.P16476418530439400529

`A249071(n+4)%A116111(A141809(3*n+1))`
-/

namespace A226456.P16476418530439400529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249071 (n + 4)) (A116111 (A141809 (3 * n + 1)).toNat)

end

end A226456.P16476418530439400529

/-!
# A226458: G.f.: exp( Sum_{n>=1} A226459(n)*x^n/n ), where A226459(n) = Sum_{d|n} phi(d^d).

The programs for A226458, there is no canonical definition to state claims against.
-/

/-! ## A226458.P3938734921056719655

`A353336(28*(3*a(n-1)+2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8`
-/

namespace A226458.P3938734921056719655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 8] fun n a =>
  A353336 (28 * (3 * a (n - 1) + 2 * a (n - 2))).toNat

end

end A226458.P3938734921056719655

/-! ## A226458.P6640110974418257452

`A302602(A052870(n))`
-/

namespace A226458.P6640110974418257452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302602 (A052870 n).toNat

end

end A226458.P6640110974418257452

/-!
# A226459: a(n) = Sum_{d|n} phi(d^d), where phi(n) is the Euler totient function A000010(n).

The programs for A226459, there is no canonical definition to state claims against.
-/

/-! ## A226459.P2513206977255789534

`∑{d}[n+1, A064447(#)]`
-/

namespace A226459.P2513206977255789534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064447 d

end

end A226459.P2513206977255789534

/-! ## A226459.P1357391420122646446

`record[∑{d}[A065648(n), A064447(#)]]`
-/

namespace A226459.P1357391420122646446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A064447 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226459.P1357391420122646446

/-! ## A226459.P12702476225600285611

`record[∑{d}[A025581(n)-1, A064447(#)]]`
-/

namespace A226459.P12702476225600285611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A064447 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226459.P12702476225600285611

/-! ## A226459.P15532128884251399306

`record[∑{d}[A123578(n)-1, A064447(#)]]`
-/

namespace A226459.P15532128884251399306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A064447 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226459.P15532128884251399306

/-! ## A226459.P6564418426306486365

`record[∑{d}[n-A008619(n), A064447(#)]]`
-/

namespace A226459.P6564418426306486365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A064447 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226459.P6564418426306486365

/-!
# A226460: Let m! have prime factorization Product (p_j^e_j); a(n) = number of distinct prime factors p_j such that e_j = n has no solution for any m!.

The programs for A226460, there is no canonical definition to state claims against.
-/

/-! ## A226460.P8137131454079571776

`A163510(A022144(n))-A010051(2^n)`
-/

namespace A226460.P8137131454079571776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (A022144 n).toNat - A010051 (2 ^ n)

end

end A226460.P8137131454079571776

/-! ## A226460.P4965036892276769854

`A163510(A022144(n))*A325401(A034008(n))`
-/

namespace A226460.P4965036892276769854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (A022144 n).toNat * A325401 (A034008 n).toNat

end

end A226460.P4965036892276769854

/-! ## A226460.P13785119213169865141

`A163510(A022144(n))%A000124(A131666(n))`
-/

namespace A226460.P13785119213169865141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163510 (A022144 n).toNat) (A000124 (A131666 n).toNat)

end

end A226460.P13785119213169865141

/-! ## A226460.P18034284716085872610

`A187730(A347448(2*(n+1)))%(A000120(n)+1)`
-/

namespace A226460.P18034284716085872610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187730 (A347448 (2 * (n + 1))).toNat) (A000120 n + 1)

end

end A226460.P18034284716085872610

/-! ## A226460.P5171044408383642274

`and(A023416(A007916(n+1)), A102131(n+1))`
-/

namespace A226460.P5171044408383642274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023416 (A007916 (n + 1)).toNat) (A102131 (n + 1))

end

end A226460.P5171044408383642274

/-!
# A226462: Smallest number m such that A226460(m) = n.

The programs for A226462, there is no canonical definition to state claims against.
-/

/-! ## A226462.P15765079869231645938

`A293313(n)-A084192(A002663(n))`
-/

namespace A226462.P15765079869231645938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293313 n - A084192 (A002663 n).toNat

end

end A226462.P15765079869231645938

/-! ## A226462.P3656834975667483753

`A192871(n)-A112739(A192860(n))`
-/

namespace A226462.P3656834975667483753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 n - A112739 (A192860 n).toNat

end

end A226462.P3656834975667483753

/-! ## A226462.P8577337796765415778

`A003945(n)-A193092(A309301(n))`
-/

namespace A226462.P8577337796765415778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A193092 (A309301 n).toNat

end

end A226462.P8577337796765415778

/-! ## A226462.P4927401563830736777

`A192871(n)-A192650(A192652(n))`
-/

namespace A226462.P4927401563830736777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 n - A192650 (A192652 n).toNat

end

end A226462.P4927401563830736777

/-!
# A226463: Triangle read by rows giving successive states of cellular automaton generated by "Rule 135" within range n from the origin.

The programs for A226463, there is no canonical definition to state claims against.
-/

/-! ## A226463.P247498412646659636

`1-A070950(n)`
-/

namespace A226463.P247498412646659636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070950 n

end

end A226463.P247498412646659636

/-! ## A226463.P17579362316354277337

`A226464(A020703(n+2))`
-/

namespace A226463.P17579362316354277337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A020703 (n + 2)).toNat

end

end A226463.P17579362316354277337

/-! ## A226463.P798968106439124777

`xor(A033999(n)², A070950(n))`
-/

namespace A226463.P798968106439124777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A070950 n)

end

end A226463.P798968106439124777

/-! ## A226463.P7221970252850219544

`xor(A057077(n)², A070950(n))`
-/

namespace A226463.P7221970252850219544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057077 n ^ 2) (A070950 n)

end

end A226463.P7221970252850219544

/-! ## A226463.P5802424088895613212

`A085854(Δ[floor(ϕ*(n+1))]*A070950(n))`
-/

namespace A226463.P5802424088895613212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 ((f1 (n + 1) - f1 n) * A070950 n).toNat

end

end A226463.P5802424088895613212

/-! ## A226463.P15645560822519721265

`A000007(A028310(n)*A070950(n))`
-/

namespace A226463.P15645560822519721265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A028310 n * A070950 n).toNat

end

end A226463.P15645560822519721265

/-! ## A226463.P14485523040306198508

`A000007(A004736(n+1)*A070950(n))`
-/

namespace A226463.P14485523040306198508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004736 (n + 1) * A070950 n).toNat

end

end A226463.P14485523040306198508

/-! ## A226463.P8139728713148408198

`A051023(A070950(n)*A327985(n+1))`
-/

namespace A226463.P8139728713148408198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (A070950 n * A327985 (n + 1)).toNat

end

end A226463.P8139728713148408198

/-! ## A226463.P12630039840055387621

`A000035(A070950(n)+2*n+1)`
-/

namespace A226463.P12630039840055387621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A070950 n + (2 * n + 1 : ℤ)).toNat

end

end A226463.P12630039840055387621

/-! ## A226463.P3716364395719303040

`A000007(A016789(n)*A070950(n))`
-/

namespace A226463.P3716364395719303040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A016789 n * A070950 n).toNat

end

end A226463.P3716364395719303040

/-! ## A226463.P10351232989820409353

`A000007(A008578(n+1)*A070950(n))`
-/

namespace A226463.P10351232989820409353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A008578 (n + 1) * A070950 n).toNat

end

end A226463.P10351232989820409353

/-! ## A226463.P11523961160586514333

`and(1, A192958(n)+A070950(n))`
-/

namespace A226463.P11523961160586514333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A192958 n + A070950 n)

end

end A226463.P11523961160586514333

/-! ## A226463.P7763216696381897779

`A126120(and(A070950(n), A192958(n)))`
-/

namespace A226463.P7763216696381897779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (Int.land (A070950 n) (A192958 n)).toNat

end

end A226463.P7763216696381897779

/-! ## A226463.P5029326510063905148

`A192956(and(A070950(n), A192958(n)))`
-/

namespace A226463.P5029326510063905148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 (Int.land (A070950 n) (A192958 n)).toNat

end

end A226463.P5029326510063905148

/-! ## A226463.P2812191613034919093

`A192964(and(A070950(n), A192958(n)))`
-/

namespace A226463.P2812191613034919093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 (Int.land (A070950 n) (A192958 n)).toNat

end

end A226463.P2812191613034919093

/-! ## A226463.P13510914263114743872

`xor(A007318(A000217(n)), A070950(n))`
-/

namespace A226463.P13510914263114743872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (A000217 n).toNat) (A070950 n)

end

end A226463.P13510914263114743872

/-!
# A226464: Triangle read by rows giving successive states of cellular automaton generated by "Rule 149" within range n from the origin.

The programs for A226464, there is no canonical definition to state claims against.
-/

/-! ## A226464.P14045988941787616010

`1-A071032(n)`
-/

namespace A226464.P14045988941787616010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071032 n

end

end A226464.P14045988941787616010

/-! ## A226464.P12681863531502224060

`A226463(A020703(n+2))`
-/

namespace A226464.P12681863531502224060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226463 (A020703 (n + 2)).toNat

end

end A226464.P12681863531502224060

/-! ## A226464.P2038025623904741312

`xor(1, A071032(n))^A070952(n)`
-/

namespace A226464.P2038025623904741312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A071032 n) : ℚ) ^ (A070952 n : ℤ)

end

end A226464.P2038025623904741312

/-! ## A226464.P13980609925596496487

`xor(or(1, A000035(n)), A071032(n))`
-/

namespace A226464.P13980609925596496487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor 1 (A000035 n)) (A071032 n)

end

end A226464.P13980609925596496487

/-! ## A226464.P3877277041616118469

`xor(or(1, A051023(n)), A071032(n))`
-/

namespace A226464.P3877277041616118469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor 1 (A051023 n)) (A071032 n)

end

end A226464.P3877277041616118469

/-! ## A226464.P1303818799798625916

`xor(or(1, A327974(n+1)), A071032(n))`
-/

namespace A226464.P1303818799798625916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor 1 (A327974 (n + 1))) (A071032 n)

end

end A226464.P1303818799798625916

/-! ## A226464.P13956646553541766589

`A051023(A071032(n)*A327985(n+1))`
-/

namespace A226464.P13956646553541766589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (A071032 n * A327985 (n + 1)).toNat

end

end A226464.P13956646553541766589

/-! ## A226464.P4763239998757555716

`A007814(∏{p}[A071043(n+3)+A071032(n)+1, #])`
-/

namespace A226464.P4763239998757555716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071043 (n + 3) + A071032 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A226464.P4763239998757555716

/-! ## A226464.P9713733169300193358

`A000035(A071032(n)+2*n+1)`
-/

namespace A226464.P9713733169300193358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A071032 n + (2 * n + 1 : ℤ)).toNat

end

end A226464.P9713733169300193358

/-! ## A226464.P998371553305678631

`xor(1, A071032(n))^A092539(n)`
-/

namespace A226464.P998371553305678631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A071032 n) : ℚ) ^ (A092539 n : ℤ)

end

end A226464.P998371553305678631

/-!
# A226466: The number of endomorphisms of the symmetric inverse monoid on the set {1..n}.

The programs for A226466, there is no canonical definition to state claims against.
-/

/-! ## A226466.P8937035640283720149

`A365271(A073371(n))`
-/

namespace A226466.P8937035640283720149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365271 (A073371 n).toNat

end

end A226466.P8937035640283720149

/-!
# A226467: Numbers in which each digit equals the product (mod 10) of the other digits.

The programs for A226467, there is no canonical definition to state claims against.
-/

/-! ## A226467.P11785129329378262837

`lt[A028242(n), A321804(n)+2]`
-/

namespace A226467.P11785129329378262837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226467.P11785129329378262837

/-! ## A226467.P7488357564795174665

`lt[A023444(A028242(n)), A321804(n)]`
-/

namespace A226467.P7488357564795174665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A028242 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226467.P7488357564795174665

/-!
# A226468: Numbers in which each digit equals the sum (mod 10) of the other digits.

The programs for A226468, there is no canonical definition to state claims against.
-/

/-! ## A226468.P8523840025002034293

`A337240(A344822(n+2))`
-/

namespace A226468.P8523840025002034293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337240 (A344822 (n + 2)).toNat

end

end A226468.P8523840025002034293

/-! ## A226468.P1592248823679765470

`A343444(A281745(n+1)+1)`
-/

namespace A226468.P1592248823679765470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343444 (A281745 (n + 1) + 1).toNat

end

end A226468.P1592248823679765470

/-! ## A226468.P4636960524628215863

`record[A020338(n+1)/A027828(n)]`
-/

namespace A226468.P4636960524628215863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (A027828 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226468.P4636960524628215863

/-! ## A226468.P4549862881725113569

`record[A020338(n+1)/A322298(n)]`
-/

namespace A226468.P4549862881725113569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (A322298 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226468.P4549862881725113569

/-!
# A226470: a(n) = n^2 XOR triangular(n), where XOR is the bitwise logical exclusive-or operator.

The programs for A226470, the canonical program `A226470.P15138140115578380666` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226470 has offset 0).

The definition of A226470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226470.P15138140115578380666

`xor(n², n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226470

/-- `xor(n², n*(n+1)/2)` -/
def P15138140115578380666.Spec : Prop :=
  ∀ n, P15138140115578380666.a n = A226470 n

theorem P15138140115578380666.correct : P15138140115578380666.Spec := by
  intro n
  simp only [A226470]

end A226470

/-! ## A226470.P16141256078691813866

`abs(xor((-n)^2, ∑[n]))`
-/

namespace A226470.P16141256078691813866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((-(n : ℤ)) ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A226470.P16141256078691813866

namespace A226470

/-- `abs(xor((-n)^2, ∑[n]))` -/
def P16141256078691813866.Spec : Prop :=
  ∀ n, P16141256078691813866.a n = A226470 n

end A226470

/-! ## A226470.P12340753400528103744

`or(xor(n*n, ∑[n]), char[2])`
-/

namespace A226470.P12340753400528103744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.xor (n * n) (∑ j ∈ Finset.range (n + 1), f1 j)) (if ∃ j, f2 j = n then 1 else 0)

end

end A226470.P12340753400528103744

namespace A226470

/-- `or(xor(n*n, ∑[n]), char[2])` -/
def P12340753400528103744.Spec : Prop :=
  ∀ n, (P12340753400528103744.a n : ℤ) = A226470 n

end A226470

/-! ## A226470.P16512686300816248913

`xor(2*n², ∑[2*n])/2`
-/

namespace A226470.P16512686300816248913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A226470.P16512686300816248913

namespace A226470

/-- `xor(2*n², ∑[2*n])/2` -/
def P16512686300816248913.Spec : Prop :=
  ∀ n, P16512686300816248913.a n = (A226470 n : ℚ)

end A226470

/-! ## A226470.P12531939816355106044

`∑{d}[xor(n*n, ∑[n]), A000010(#)]`
-/

namespace A226470.P12531939816355106044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n * n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A226470.P12531939816355106044

namespace A226470

/-- `∑{d}[xor(n*n, ∑[n]), A000010(#)]` -/
def P12531939816355106044.Spec : Prop :=
  ∀ n, P12531939816355106044.a n = A226470 n

end A226470

/-! ## A226470.P5024178048664539021

`A007318(∑[n])*xor(n*n, ∑[n])`
-/

namespace A226470.P5024178048664539021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (Nat.xor (n * n) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A226470.P5024178048664539021

namespace A226470

/-- `A007318(∑[n])*xor(n*n, ∑[n])` -/
def P5024178048664539021.Spec : Prop :=
  ∀ n, P5024178048664539021.a n = A226470 n

end A226470

/-! ## A226470.P17347280704612962189

`xor(n*n, ∑[n])*A014963(∑[n+1])`
-/

namespace A226470.P17347280704612962189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n * n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A014963 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A226470.P17347280704612962189

namespace A226470

/-- `xor(n*n, ∑[n])*A014963(∑[n+1])` -/
def P17347280704612962189.Spec : Prop :=
  ∀ n, P17347280704612962189.a n = A226470 n

end A226470

/-!
# A226471: Numbers k such that k^2 XOR triangular(k) is a triangular number. XOR is the bitwise logical exclusive-or operator.

The programs for A226471, there is no canonical definition to state claims against.
-/

/-! ## A226471.P14899442902140709113

`eq[A025480(A245180(n+1)), A335587(n)]`
-/

namespace A226471.P14899442902140709113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A245180 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226471.P14899442902140709113

/-! ## A226471.P10748301528288978377

`eq[A010054(A290254(n+1)), A144790(n+1)]`
-/

namespace A226471.P10748301528288978377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A290254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226471.P10748301528288978377

/-! ## A226471.P6328784323325337904

`lt[A051953(n+1), A142872(A331184(n+1))]`
-/

namespace A226471.P6328784323325337904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142872 (A331184 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226471.P6328784323325337904

/-!
# A226472: Numbers n such that n^2 XOR triangular(n) is a perfect square. XOR is the bitwise logical exclusive-or operator.

The programs for A226472, there is no canonical definition to state claims against.
-/

/-! ## A226472.P18317383980612305789

`A228086((char[1]+n)^xor(n, floor(n/2)))`
-/

namespace A226472.P18317383980612305789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (SequenceMachineLib.roundAway ((((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℚ) ^ (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A226472.P18317383980612305789

/-!
# A226474: Central terms of triangles A226463 and A226464.

The programs for A226474, there is no canonical definition to state claims against.
-/

/-! ## A226474.P4635600392990987270

`1-A051023(n)`
-/

namespace A226474.P4635600392990987270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051023 n

end

end A226474.P4635600392990987270

/-! ## A226474.P1512078965445177708

`char[A327985(n+1)]`
-/

namespace A226474.P1512078965445177708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A226474.P1512078965445177708

/-! ## A226474.P17154790559198869

`char[comp[A327984(n+1)]]`
-/

namespace A226474.P17154790559198869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A226474.P17154790559198869

/-! ## A226474.P4356150520312368427

`xor(abs(A033999(n)), A051023(n))`
-/

namespace A226474.P4356150520312368427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A033999 n| (A051023 n)

end

end A226474.P4356150520312368427

/-! ## A226474.P18098970800976777583

`and(A051023(n)+1, A057427(n))`
-/

namespace A226474.P18098970800976777583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051023 n + 1) (A057427 n)

end

end A226474.P18098970800976777583

/-! ## A226474.P8750859307234632116

`and(A051023(n)+1, A002144(n+1))`
-/

namespace A226474.P8750859307234632116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051023 n + 1) (A002144 (n + 1))

end

end A226474.P8750859307234632116

/-! ## A226474.P715665332571075441

`and(A051023(n)+1, A280076(n+1))`
-/

namespace A226474.P715665332571075441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051023 n + 1) (A280076 (n + 1))

end

end A226474.P715665332571075441

/-! ## A226474.P15117542387453517853

`A000007(A000010(n+1)*A051023(n))`
-/

namespace A226474.P15117542387453517853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000010 (n + 1) * A051023 n).toNat

end

end A226474.P15117542387453517853

/-! ## A226474.P4965568902941924399

`A051023(A051023(n)*A327985(n+1))`
-/

namespace A226474.P4965568902941924399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (A051023 n * A327985 (n + 1)).toNat

end

end A226474.P4965568902941924399

/-! ## A226474.P11035419794425574084

`xor(A051023(n*A051023(n)), A051023(n))`
-/

namespace A226474.P11035419794425574084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051023 ((n : ℤ) * A051023 n).toNat) (A051023 n)

end

end A226474.P11035419794425574084

/-! ## A226474.P9597443850302015495

`char[lt[A051023(n), A157928(n)]]`
-/

namespace A226474.P9597443850302015495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A226474.P9597443850302015495

/-! ## A226474.P5584802018375949165

`A000035(A051023(n)+2*n+1)`
-/

namespace A226474.P5584802018375949165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051023 n + (2 * n + 1 : ℤ)).toNat

end

end A226474.P5584802018375949165

/-! ## A226474.P5940150180445088757

`xor(A001222(A051074(n+1)), A051023(n))`
-/

namespace A226474.P5940150180445088757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A051074 (n + 1)).toNat) (A051023 n)

end

end A226474.P5940150180445088757

/-! ## A226474.P1904173321853235675

`xor(A001222(A051071(n+1)), A051023(n))`
-/

namespace A226474.P1904173321853235675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A051071 (n + 1)).toNat) (A051023 n)

end

end A226474.P1904173321853235675

/-! ## A226474.P12229207230510598656

`xor(A001222(A051073(n+1)), A051023(n))`
-/

namespace A226474.P12229207230510598656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A051073 (n + 1)).toNat) (A051023 n)

end

end A226474.P12229207230510598656

/-! ## A226474.P11950491487828117559

`xor(A001222(A051079(n+1)), A051023(n))`
-/

namespace A226474.P11950491487828117559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A051079 (n + 1)).toNat) (A051023 n)

end

end A226474.P11950491487828117559

/-! ## A226474.P7872832475409242534

`A182492(or(1, n)*A051023(n)+3)`
-/

namespace A226474.P7872832475409242534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 ((Nat.lor 1 n : ℤ) * A051023 n + 3).toNat

end

end A226474.P7872832475409242534

/-! ## A226474.P7965032539308885307

`(A092539(n)+1)%2`
-/

namespace A226474.P7965032539308885307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092539 n + 1) 2

end

end A226474.P7965032539308885307

/-! ## A226474.P11502163340350639537

`and(1, A048578(n)-A092539(n))`
-/

namespace A226474.P11502163340350639537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048578 n - A092539 n)

end

end A226474.P11502163340350639537

/-! ## A226474.P17221964478060834048

`1-and(A092539(n), A158388(n))`
-/

namespace A226474.P17221964478060834048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A092539 n) (A158388 n)

end

end A226474.P17221964478060834048

/-!
# A226476: Numbers n with the property that, if tau(n) = k = number of divisors of n, and the d(i) are the divisors [arranged in increasing order], then the sum 1/d(k) + 1/d(k-1) + 1/d(k-2) + ... + 1/d(q) is an integer for some q.

The programs for A226476, there is no canonical definition to state claims against.
-/

/-! ## A226476.P6031604481216144694

`∪[A064510(n+1), A306373(n+1)]%A306373(n+1)`
-/

namespace A226476.P6031604481216144694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A306373 (n + 1))

end

end A226476.P6031604481216144694

/-! ## A226476.P6036645253130706059

`A028310(∪[A064510(n+1), A306373(n+1)])`
-/

namespace A226476.P6036645253130706059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306373 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A226476.P6036645253130706059

/-!
# A226478: A085192(n)/2.

The programs for A226478, there is no canonical definition to state claims against.
-/

/-! ## A226478.P1791572217259166663

`A085192(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226478.P1791572217259166663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085192 n : ℚ) / 2

end

end A226478.P1791572217259166663

/-! ## A226478.P15357589008570739995

`Δ[A014486(n)/2]`
-/

namespace A226478.P15357589008570739995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014486 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226478.P15357589008570739995

/-! ## A226478.P13210908230625037502

`Δ[A057520(n)]`
-/

namespace A226478.P13210908230625037502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226478.P13210908230625037502

/-! ## A226478.P8018870570083799839

`Δ[A194045(n)/4]`
-/

namespace A226478.P8018870570083799839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226478.P8018870570083799839

/-! ## A226478.P2436765475293082795

`A057520(n+1)-A057520(n)`
-/

namespace A226478.P2436765475293082795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (n + 1) - A057520 n

end

end A226478.P2436765475293082795

/-! ## A226478.P1548405595741402931

`Δ[lt[0, A080116(2*n)]]`
-/

namespace A226478.P1548405595741402931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A226478.P1548405595741402931

/-! ## A226478.P6291670969147487776

`A014682(Δ[A014486(n)])`
-/

namespace A226478.P6291670969147487776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A226478.P6291670969147487776

/-! ## A226478.P4562059531138735555

`A014682(A014486(n+1)-A014486(n))`
-/

namespace A226478.P4562059531138735555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A014486 (n + 1) - A014486 n).toNat

end

end A226478.P4562059531138735555

/-! ## A226478.P13874680161550050351

`Δ[lt[0, A080116(n)]/2]`
-/

namespace A226478.P13874680161550050351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226478.P13874680161550050351

/-! ## A226478.P10569635488708854989

`A001281(A085192(n))`
-/

namespace A226478.P10569635488708854989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085192 n).toNat

end

end A226478.P10569635488708854989

/-! ## A226478.P4855167294187558510

`A001281(Δ[A014486(n)])`
-/

namespace A226478.P4855167294187558510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A226478.P4855167294187558510

/-! ## A226478.P5103460666773966546

`A004525(Δ[A014486(n)])`
-/

namespace A226478.P5103460666773966546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A226478.P5103460666773966546

/-! ## A226478.P10874110662931886546

`A004526(Δ[A014486(n)])`
-/

namespace A226478.P10874110662931886546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A226478.P10874110662931886546

/-! ## A226478.P3895267577959107093

`A025480(Δ[A014486(n)])`
-/

namespace A226478.P3895267577959107093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A226478.P3895267577959107093

/-! ## A226478.P8759329742436167574

`A026741(Δ[A014486(n)])`
-/

namespace A226478.P8759329742436167574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A226478.P8759329742436167574

/-! ## A226478.P6454303338005814263

`A029578(Δ[A014486(n)])`
-/

namespace A226478.P6454303338005814263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (n + 1) - f1 n).toNat

end

end A226478.P6454303338005814263

/-! ## A226478.P13191398651442656894

`A032742(Δ[A014486(n)])`
-/

namespace A226478.P13191398651442656894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (n + 1) - f1 n).toNat

end

end A226478.P13191398651442656894

/-! ## A226478.P8843768948153155245

`A060681(Δ[A014486(n)])`
-/

namespace A226478.P8843768948153155245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (f1 (n + 1) - f1 n).toNat

end

end A226478.P8843768948153155245

/-! ## A226478.P16239067380166990030

`A246277(Δ[A014486(n)])`
-/

namespace A226478.P16239067380166990030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (f1 (n + 1) - f1 n).toNat

end

end A226478.P16239067380166990030

/-! ## A226478.P11857984307032911301

`A004524(Δ[A014486(n)]+1)`
-/

namespace A226478.P11857984307032911301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n + 1).toNat

end

end A226478.P11857984307032911301

/-!
# A226480: Squarefree numbers n such that (sopf(n)*d(n))^2 = sigma(n) where sopf(n) = sum of prime factors of n and d(n) = number of divisors of n.

The programs for A226480, there is no canonical definition to state claims against.
-/

/-! ## A226480.P4798066731149798279

`∩[A126028(n+1), A226479(n+1)]`
-/

namespace A226480.P4798066731149798279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226480.P4798066731149798279

/-! ## A226480.P4634051217805078611

`A126028(A318991(n+1)%A182976(n+1))`
-/

namespace A226480.P4634051217805078611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126028 (Int.tmod (A318991 (n + 1)) (A182976 (n + 1))).toNat

end

end A226480.P4634051217805078611

/-! ## A226480.P14588635762130714521

`A126028(A343822(n+1)%A336781(3*(n+1)))`
-/

namespace A226480.P14588635762130714521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126028 (Int.tmod (A343822 (n + 1)) (A336781 (3 * (n + 1)))).toNat

end

end A226480.P14588635762130714521

/-! ## A226480.P6411099284301609108

`A126028(A187829(n+1)+A025437(n))`
-/

namespace A226480.P6411099284301609108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126028 (A187829 (n + 1) + A025437 n).toNat

end

end A226480.P6411099284301609108

/-!
# A226481: Table read by rows: run lengths in rows of A070950.

The programs for A226481, there is no canonical definition to state claims against.
-/

/-! ## A226481.P7608707528516728989

`A237271(xor(∑{d}[n+1, #], A078715(n+4)))`
-/

namespace A226481.P7608707528516728989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (Int.xor ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A078715 (n + 4))).toNat

end

end A226481.P7608707528516728989

/-! ## A226481.P15989779175474019793

`A046660(∑[A266383(A016969(n))])`
-/

namespace A226481.P15989779175474019793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266383 (A016969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226481.P15989779175474019793

/-! ## A226481.P876724332755875503

`A336041(n+1)+A010054(A276087(n))`
-/

namespace A226481.P876724332755875503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + A010054 (A276087 n).toNat

end

end A226481.P876724332755875503

/-! ## A226481.P16540567448087368004

`A237271(xor(A000203(n+1), A078715(n+4)))`
-/

namespace A226481.P16540567448087368004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (Int.xor (A000203 (n + 1)) (A078715 (n + 4))).toNat

end

end A226481.P16540567448087368004

/-! ## A226481.P6237970355727243248

`A293433(A100549(n+1)*A358247(3*n+2))`
-/

namespace A226481.P6237970355727243248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293433 (A100549 (n + 1) * A358247 (3 * n + 2)).toNat

end

end A226481.P6237970355727243248

/-!
# A226482: Number of runs of consecutive ones and zeros in successive states of cellular automaton generated by "Rule 30".

The programs for A226482, there is no canonical definition to state claims against.
-/

/-! ## A226482.P17182780707036556089

`2*(A328105(n)-A070952(n))-1`
-/

namespace A226482.P17182780707036556089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A328105 n - A070952 n) - 1

end

end A226482.P17182780707036556089

/-! ## A226482.P5559082760417219903

`2*A110266(n+1)-1`
-/

namespace A226482.P5559082760417219903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110266 (n + 1) - 1

end

end A226482.P5559082760417219903

/-! ## A226482.P3148623826988323746

`A004273(A110266(n+1))`
-/

namespace A226482.P3148623826988323746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A110266 (n + 1)).toNat

end

end A226482.P3148623826988323746

/-! ## A226482.P2513537272633230889

`A005408(A110266(n+1)-1)`
-/

namespace A226482.P2513537272633230889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A110266 (n + 1) - 1).toNat

end

end A226482.P2513537272633230889

/-! ## A226482.P3709915765348065110

`A014681(2*A110266(n+1))`
-/

namespace A226482.P3709915765348065110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A110266 (n + 1)).toNat

end

end A226482.P3709915765348065110

/-! ## A226482.P15808784762087231212

`A023443(2*A110266(n+1))`
-/

namespace A226482.P15808784762087231212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A110266 (n + 1)).toNat

end

end A226482.P15808784762087231212

/-! ## A226482.P10389042083353813776

`A046667(2*2*A110266(n+1))`
-/

namespace A226482.P10389042083353813776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * (2 * A110266 (n + 1))).toNat

end

end A226482.P10389042083353813776

/-! ## A226482.P2159866165368217062

`A005843(A110266(n+1))-A064179(n+1)²`
-/

namespace A226482.P2159866165368217062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110266 (n + 1)).toNat - A064179 (n + 1) ^ 2

end

end A226482.P2159866165368217062

/-! ## A226482.P7721465020795282208

`A000265(A110266(n+1)+A110266(n+1)-1)`
-/

namespace A226482.P7721465020795282208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A110266 (n + 1) + (A110266 (n + 1) - 1)).toNat

end

end A226482.P7721465020795282208

/-! ## A226482.P16740021467766263153

`A110266(n+1)+A110266(n+1)-A000120(A001316(n))`
-/

namespace A226482.P16740021467766263153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) + (A110266 (n + 1) - A000120 (A001316 n).toNat)

end

end A226482.P16740021467766263153

/-! ## A226482.P1352957332484938217

`A110266(n+1)+A110266(n+1)-A272901(A182008(n+1))`
-/

namespace A226482.P1352957332484938217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) + (A110266 (n + 1) - A272901 (A182008 (n + 1)).toNat)

end

end A226482.P1352957332484938217

/-! ## A226482.P14192938421571262966

`A064179(A053001(n+2))+2*A110266(n+1)`
-/

namespace A226482.P14192938421571262966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A053001 (n + 2)).toNat + 2 * A110266 (n + 1)

end

end A226482.P14192938421571262966

/-! ## A226482.P12218375990678814076

`A064179(A053001(n+2))+A005843(A110266(n+1))`
-/

namespace A226482.P12218375990678814076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (A053001 (n + 2)).toNat + A005843 (A110266 (n + 1)).toNat

end

end A226482.P12218375990678814076

/-! ## A226482.P11895418711508794536

`A003056(2*A110266(n+1)²)`
-/

namespace A226482.P11895418711508794536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A110266 (n + 1) ^ 2).toNat

end

end A226482.P11895418711508794536

/-! ## A226482.P7906089213100045235

`A003056(2*A110266(n+1)*A110266(n+1))`
-/

namespace A226482.P7906089213100045235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A110266 (n + 1) * A110266 (n + 1)).toNat

end

end A226482.P7906089213100045235

/-!
# A226484: Odd numbers not of the form p + q^2 + r^3 with p, q, and r prime.

The programs for A226484, there is no canonical definition to state claims against.
-/

/-! ## A226484.P10061638002830748348

`∑[A181819(∑[A348958(n)])]`
-/

namespace A226484.P10061638002830748348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226484.P10061638002830748348

/-! ## A226484.P1546236452538569371

`record[gcd(A156724(n+1), A183011(n))]`
-/

namespace A226484.P1546236452538569371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156724 (n + 1)) (A183011 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226484.P1546236452538569371

/-! ## A226484.P119022328709519313

`eq[A116933(n+1), A116937(A081580(n))]`
-/

namespace A226484.P119022328709519313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116937 (A081580 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226484.P119022328709519313

/-! ## A226484.P5539109090619309263

`eq[A000035(n), A094526(A299595(n+1))]`
-/

namespace A226484.P5539109090619309263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094526 (A299595 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226484.P5539109090619309263

/-! ## A226484.P6764617122317689254

`lt[A254440(A229994(n+1)), A001057(3*n+2)]`
-/

namespace A226484.P6764617122317689254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254440 (A229994 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226484.P6764617122317689254

/-!
# A226485: Integer part of length of median to hypotenuse of primitive Pythagorean triangles sorted on hypotenuse.

The programs for A226485, there is no canonical definition to state claims against.
-/

/-! ## A226485.P4347839012249375109

`floor(A020882(n+1)/2)`
-/

namespace A226485.P4347839012249375109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020882 (n + 1) : ℚ) / 2⌋

end

end A226485.P4347839012249375109

/-! ## A226485.P15089857315285398691

`(A020882(Δ[n²]-n)-1)/2`
-/

namespace A226485.P15089857315285398691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 : ℚ) / 2

end

end A226485.P15089857315285398691

/-! ## A226485.P13803763107922695247

`floor(A132981(Δ[n²])/2)`
-/

namespace A226485.P13803763107922695247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A226485.P13803763107922695247

/-! ## A226485.P12269481655652205073

`(A132981(record[xor(1, n)])-1)/2`
-/

namespace A226485.P12269481655652205073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1 : ℚ) / 2

end

end A226485.P12269481655652205073

/-! ## A226485.P6278643948197858406

`(A132981(2*(n+1))-1)/2`
-/

namespace A226485.P6278643948197858406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132981 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A226485.P6278643948197858406

/-! ## A226485.P7668847532679159087

`A004524(A020882(n+1))`
-/

namespace A226485.P7668847532679159087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A020882 (n + 1)).toNat

end

end A226485.P7668847532679159087

/-! ## A226485.P12906767906064039224

`A046667(A020882(n+1)+1)`
-/

namespace A226485.P12906767906064039224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A020882 (n + 1) + 1).toNat

end

end A226485.P12906767906064039224

/-! ## A226485.P14029152295467183411

`A065423(A020882(n+1)+1)`
-/

namespace A226485.P14029152295467183411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A020882 (n + 1) + 1).toNat

end

end A226485.P14029152295467183411

/-! ## A226485.P1476142241485484252

`A140106(A020882(n+1)+1)`
-/

namespace A226485.P1476142241485484252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A020882 (n + 1) + 1).toNat

end

end A226485.P1476142241485484252

/-! ## A226485.P17405363376545493430

`A001281(A020882(n+1)-1)`
-/

namespace A226485.P17405363376545493430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A020882 (n + 1) - 1).toNat

end

end A226485.P17405363376545493430

/-!
# A226486: First available increasing palindromes (A002113) found in the decimal expansion of Pi-3 (A000796).

The programs for A226486, there is no canonical definition to state claims against.
-/

/-! ## A226486.P326242081300825545

`A145999(a(n-1))²+n+2` with `a(0)=1`
-/

namespace A226486.P326242081300825545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145999 (a (n - 1)).toNat ^ 2 + (n + 2 : ℤ)

end

end A226486.P326242081300825545

/-!
# A226488: a(n) = n*(13*n - 9)/2.

The programs for A226488, the canonical program `A226488.P16937017010371018835` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226488 has offset 0).

The definition of A226488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-9)/2` (program `A226488.P9749903216463916152`, by `A226488.P9749903216463916152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226488.P9749903216463916152

`n*(13*n-9)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226488.P9749903216463916152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((13 * n : ℤ) - 9) : ℚ) / 2

end

end A226488.P9749903216463916152

namespace A226488

/-- `n*(13*n-9)/2` -/
def P9749903216463916152.Spec : Prop :=
  ∀ n, P9749903216463916152.a n = (A226488 n : ℚ)

theorem P9749903216463916152.correct : P9749903216463916152.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226488, Nat.add_sub_cancel, A226488.P9749903216463916152.a, A226488.P16937017010371018835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226488, Nat.add_sub_cancel, A226488.P9749903216463916152.a, A226488.P16937017010371018835.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226488

/-! ## A226488.P16937017010371018835

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226488

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16937017010371018835.Spec : Prop :=
  ∀ n, P16937017010371018835.a n = A226488 n

theorem P16937017010371018835.correct : P16937017010371018835.Spec := by
  intro n
  simp only [A226488]

end A226488

/-! ## A226488.P1685919879783905168

`A000567(n)+A001106(n)`
-/

namespace A226488.P1685919879783905168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + A001106 n

end

end A226488.P1685919879783905168

namespace A226488

/-- `A000567(n)+A001106(n)` -/
def P1685919879783905168.Spec : Prop :=
  ∀ n, P1685919879783905168.a n = A226488 n

end A226488

/-! ## A226488.P4170844827998512497

`∑[a(n-1)+13]` with `a(0)=0, a(1)=2`
-/

namespace A226488.P4170844827998512497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226488.P4170844827998512497

namespace A226488

/-- `∑[a(n-1)+13]` -/
def P4170844827998512497.Spec : Prop :=
  ∀ n, (P4170844827998512497.a n : ℤ) = A226488 n

end A226488

/-! ## A226488.P10759109491075022603

`11-∑[a(n-1)-13]` with `a(0)=11`
-/

namespace A226488.P10759109491075022603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226488.P10759109491075022603

namespace A226488

/-- `11-∑[a(n-1)-13]` -/
def P10759109491075022603.Spec : Prop :=
  ∀ n, P10759109491075022603.a n = A226488 n

end A226488

/-! ## A226488.P15762513568279554514

`A051867(n)+n`
-/

namespace A226488.P15762513568279554514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + (n : ℤ)

end

end A226488.P15762513568279554514

namespace A226488

/-- `A051867(n)+n` -/
def P15762513568279554514.Spec : Prop :=
  ∀ n, P15762513568279554514.a n = A226488 n

end A226488

/-! ## A226488.P7477888714326420649

`A051865(n)+n²`
-/

namespace A226488.P7477888714326420649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + (n ^ 2 : ℤ)

end

end A226488.P7477888714326420649

namespace A226488

/-- `A051865(n)+n²` -/
def P7477888714326420649.Spec : Prop :=
  ∀ n, P7477888714326420649.a n = A226488 n

end A226488

/-! ## A226488.P1454774944977860787

`A152773(n)-n²`
-/

namespace A226488.P1454774944977860787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n - (n ^ 2 : ℤ)

end

end A226488.P1454774944977860787

namespace A226488

/-- `A152773(n)-n²` -/
def P1454774944977860787.Spec : Prop :=
  ∀ n, P1454774944977860787.a n = A226488 n

end A226488

/-! ## A226488.P14120783413093031404

`A051866(n)+∑[n]`
-/

namespace A226488.P14120783413093031404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226488.P14120783413093031404

namespace A226488

/-- `A051866(n)+∑[n]` -/
def P14120783413093031404.Spec : Prop :=
  ∀ n, P14120783413093031404.a n = A226488 n

end A226488

/-! ## A226488.P17087782807792847514

`A186030(n)-3*n`
-/

namespace A226488.P17087782807792847514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n - (3 * n : ℤ)

end

end A226488.P17087782807792847514

namespace A226488

/-- `A186030(n)-3*n` -/
def P17087782807792847514.Spec : Prop :=
  ∀ n, P17087782807792847514.a n = A226488 n

end A226488

/-! ## A226488.P4279976751891697744

`A022270(n)-4*n`
-/

namespace A226488.P4279976751891697744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n - (4 * n : ℤ)

end

end A226488.P4279976751891697744

namespace A226488

/-- `A022270(n)-4*n` -/
def P4279976751891697744.Spec : Prop :=
  ∀ n, P4279976751891697744.a n = A226488 n

end A226488

/-! ## A226488.P10041681427920460191

`A022271(n)-5*n`
-/

namespace A226488.P10041681427920460191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n - (5 * n : ℤ)

end

end A226488.P10041681427920460191

namespace A226488

/-- `A022271(n)-5*n` -/
def P10041681427920460191.Spec : Prop :=
  ∀ n, P10041681427920460191.a n = A226488 n

end A226488

/-! ## A226488.P3740900060169528336

`A103115(n)+∑[n+1]`
-/

namespace A226488.P3740900060169528336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226488.P3740900060169528336

namespace A226488

/-- `A103115(n)+∑[n+1]` -/
def P3740900060169528336.Spec : Prop :=
  ∀ n, P3740900060169528336.a n = A226488 n

end A226488

/-! ## A226488.P14549445401062174109

`A001107(n)+A000566(n)`
-/

namespace A226488.P14549445401062174109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + A000566 n

end

end A226488.P14549445401062174109

namespace A226488

/-- `A001107(n)+A000566(n)` -/
def P14549445401062174109.Spec : Prop :=
  ∀ n, P14549445401062174109.a n = A226488 n

end A226488

/-! ## A226488.P12073695352536182864

`A051624(n)+A000326(n)`
-/

namespace A226488.P12073695352536182864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + A000326 n

end

end A226488.P12073695352536182864

namespace A226488

/-- `A051624(n)+A000326(n)` -/
def P12073695352536182864.Spec : Prop :=
  ∀ n, P12073695352536182864.a n = A226488 n

end A226488

/-! ## A226488.P7809057319580751745

`A051682(n)+A000384(n)`
-/

namespace A226488.P7809057319580751745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + A000384 n

end

end A226488.P7809057319580751745

namespace A226488

/-- `A051682(n)+A000384(n)` -/
def P7809057319580751745.Spec : Prop :=
  ∀ n, P7809057319580751745.a n = A226488 n

end A226488

/-! ## A226488.P4964342626239028645

`A000217(n)+A051866(n)`
-/

namespace A226488.P4964342626239028645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A051866 n

end

end A226488.P4964342626239028645

namespace A226488

/-- `A000217(n)+A051866(n)` -/
def P4964342626239028645.Spec : Prop :=
  ∀ n, P4964342626239028645.a n = A226488 n

end A226488

/-! ## A226488.P211758168479687776

`A062741(n)+A014107(n)`
-/

namespace A226488.P211758168479687776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + A014107 n

end

end A226488.P211758168479687776

namespace A226488

/-- `A062741(n)+A014107(n)` -/
def P211758168479687776.Spec : Prop :=
  ∀ n, P211758168479687776.a n = A226488 n

end A226488

/-! ## A226488.P13314703611646619954

`A226492(n)+A067998(n)`
-/

namespace A226488.P13314703611646619954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + A067998 n

end

end A226488.P13314703611646619954

namespace A226488

/-- `A226492(n)+A067998(n)` -/
def P13314703611646619954.Spec : Prop :=
  ∀ n, P13314703611646619954.a n = A226488 n

end A226488

/-! ## A226488.P16655366809159107513

`A161680(n)+A139267(n)`
-/

namespace A226488.P16655366809159107513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A139267 n

end

end A226488.P16655366809159107513

namespace A226488

/-- `A161680(n)+A139267(n)` -/
def P16655366809159107513.Spec : Prop :=
  ∀ n, P16655366809159107513.a n = A226488 n

end A226488

/-!
# A226489: a(n) = n*(15*n-11)/2.

The programs for A226489, the canonical program `A226489.P8381247043211521888` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226489 has offset 0).

The definition of A226489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-11)/2` (program `A226489.P5010540305646410062`, by `A226489.P5010540305646410062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226489.P5010540305646410062

`n*(15*n-11)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226489.P5010540305646410062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((15 * n : ℤ) - 11) : ℚ) / 2

end

end A226489.P5010540305646410062

namespace A226489

/-- `n*(15*n-11)/2` -/
def P5010540305646410062.Spec : Prop :=
  ∀ n, P5010540305646410062.a n = (A226489 n : ℚ)

theorem P5010540305646410062.correct : P5010540305646410062.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226489, Nat.add_sub_cancel, A226489.P5010540305646410062.a, A226489.P8381247043211521888.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226489, Nat.add_sub_cancel, A226489.P5010540305646410062.a, A226489.P8381247043211521888.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226489

/-! ## A226489.P8381247043211521888

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226489

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8381247043211521888.Spec : Prop :=
  ∀ n, P8381247043211521888.a n = A226489 n

theorem P8381247043211521888.correct : P8381247043211521888.Spec := by
  intro n
  simp only [A226489]

end A226489

/-! ## A226489.P16057798978067723385

`∑[a(n-1)+15]` with `a(0)=0, a(1)=2`
-/

namespace A226489.P16057798978067723385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226489.P16057798978067723385

namespace A226489

/-- `∑[a(n-1)+15]` -/
def P16057798978067723385.Spec : Prop :=
  ∀ n, (P16057798978067723385.a n : ℤ) = A226489 n

end A226489

/-! ## A226489.P2921488157726898907

`13-∑[a(n-1)-15]` with `a(0)=13`
-/

namespace A226489.P2921488157726898907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226489.P2921488157726898907

namespace A226489

/-- `13-∑[a(n-1)-15]` -/
def P2921488157726898907.Spec : Prop :=
  ∀ n, P2921488157726898907.a n = A226489 n

end A226489

/-! ## A226489.P13882273269048425295

`abs(5*C(n, 2)-n-n*(10*n-9))`
-/

namespace A226489.P13882273269048425295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * Nat.choose n 2 : ℤ) - (n : ℤ) - (n : ℤ) * ((10 * n : ℤ) - 9)|

end

end A226489.P13882273269048425295

namespace A226489

/-- `abs(5*C(n, 2)-n-n*(10*n-9))` -/
def P13882273269048425295.Spec : Prop :=
  ∀ n, P13882273269048425295.a n = A226489 n

end A226489

/-! ## A226489.P954100327180402725

`A051869(n)+n`
-/

namespace A226489.P954100327180402725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + (n : ℤ)

end

end A226489.P954100327180402725

namespace A226489

/-- `A051869(n)+n` -/
def P954100327180402725.Spec : Prop :=
  ∀ n, P954100327180402725.a n = A226489 n

end A226489

/-! ## A226489.P2129957110882744156

`A152773(n)-n`
-/

namespace A226489.P2129957110882744156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n - (n : ℤ)

end

end A226489.P2129957110882744156

namespace A226489

/-- `A152773(n)-n` -/
def P2129957110882744156.Spec : Prop :=
  ∀ n, P2129957110882744156.a n = A226489 n

end A226489

/-! ## A226489.P8229885833923819669

`A051867(n)+n²`
-/

namespace A226489.P8229885833923819669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + (n ^ 2 : ℤ)

end

end A226489.P8229885833923819669

namespace A226489

/-- `A051867(n)+n²` -/
def P8229885833923819669.Spec : Prop :=
  ∀ n, P8229885833923819669.a n = A226489 n

end A226489

/-! ## A226489.P15157157910679375503

`A051868(n)+∑[n]`
-/

namespace A226489.P15157157910679375503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226489.P15157157910679375503

namespace A226489

/-- `A051868(n)+∑[n]` -/
def P15157157910679375503.Spec : Prop :=
  ∀ n, P15157157910679375503.a n = A226489 n

end A226489

/-! ## A226489.P3208646326670438086

`A139272(n)-∑[n]`
-/

namespace A226489.P3208646326670438086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226489.P3208646326670438086

namespace A226489

/-- `A139272(n)-∑[n]` -/
def P3208646326670438086.Spec : Prop :=
  ∀ n, P3208646326670438086.a n = A226489 n

end A226489

/-! ## A226489.P6600965266121659957

`A263226(n)/2+n`
-/

namespace A226489.P6600965266121659957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263226 n : ℚ) / 2 + (n : ℚ)

end

end A226489.P6600965266121659957

namespace A226489

/-- `A263226(n)/2+n` -/
def P6600965266121659957.Spec : Prop :=
  ∀ n, P6600965266121659957.a n = (A226489 n : ℚ)

theorem P6600965266121659957.correct : P6600965266121659957.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226489, Nat.add_sub_cancel, A226489.P6600965266121659957.a, A226489.P8381247043211521888.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226489, Nat.add_sub_cancel, A226489.P6600965266121659957.a, A226489.P8381247043211521888.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A226489

/-! ## A226489.P12871851551852964455

`3*A000566(n)-n`
-/

namespace A226489.P12871851551852964455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000566 n - (n : ℤ)

end

end A226489.P12871851551852964455

namespace A226489

/-- `3*A000566(n)-n` -/
def P12871851551852964455.Spec : Prop :=
  ∀ n, P12871851551852964455.a n = A226489 n

end A226489

/-! ## A226489.P7806502688649125889

`A152734(n)-3*n`
-/

namespace A226489.P7806502688649125889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152734 n - (3 * n : ℤ)

end

end A226489.P7806502688649125889

namespace A226489

/-- `A152734(n)-3*n` -/
def P7806502688649125889.Spec : Prop :=
  ∀ n, P7806502688649125889.a n = A226489 n

end A226489

/-! ## A226489.P5218363192626730773

`A153786(n)/2-n`
-/

namespace A226489.P5218363192626730773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153786 n : ℚ) / 2 - (n : ℚ)

end

end A226489.P5218363192626730773

namespace A226489

/-- `A153786(n)/2-n` -/
def P5218363192626730773.Spec : Prop :=
  ∀ n, P5218363192626730773.a n = (A226489 n : ℚ)

theorem P5218363192626730773.correct : P5218363192626730773.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226489, Nat.add_sub_cancel, A226489.P5218363192626730773.a, A226489.P8381247043211521888.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226489, Nat.add_sub_cancel, A226489.P5218363192626730773.a, A226489.P8381247043211521888.a, A153786, A153786.P15842201399555844801.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A226489

/-! ## A226489.P15561698532910217179

`A022272(n)-5*n`
-/

namespace A226489.P15561698532910217179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n - (5 * n : ℤ)

end

end A226489.P15561698532910217179

namespace A226489

/-- `A022272(n)-5*n` -/
def P15561698532910217179.Spec : Prop :=
  ∀ n, P15561698532910217179.a n = A226489 n

end A226489

/-! ## A226489.P4323513697089263048

`A080856(n)-∑[n+1]`
-/

namespace A226489.P4323513697089263048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226489.P4323513697089263048

namespace A226489

/-- `A080856(n)-∑[n+1]` -/
def P4323513697089263048.Spec : Prop :=
  ∀ n, P4323513697089263048.a n = A226489 n

end A226489

/-! ## A226489.P10121735984864238352

`Δ[(n-2)*A192136(n)]`
-/

namespace A226489.P10121735984864238352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226489.P10121735984864238352

namespace A226489

/-- `Δ[(n-2)*A192136(n)]` -/
def P10121735984864238352.Spec : Prop :=
  ∀ n, P10121735984864238352.a n = A226489 n

end A226489

/-! ## A226489.P3189037004667836975

`A001107(n)+A001106(n)`
-/

namespace A226489.P3189037004667836975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + A001106 n

end

end A226489.P3189037004667836975

namespace A226489

/-- `A001107(n)+A001106(n)` -/
def P3189037004667836975.Spec : Prop :=
  ∀ n, P3189037004667836975.a n = A226489 n

end A226489

/-! ## A226489.P10037185819977934796

`A051624(n)+A000566(n)`
-/

namespace A226489.P10037185819977934796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + A000566 n

end

end A226489.P10037185819977934796

namespace A226489

/-- `A051624(n)+A000566(n)` -/
def P10037185819977934796.Spec : Prop :=
  ∀ n, P10037185819977934796.a n = A226489 n

end A226489

/-! ## A226489.P16170773402222705642

`A051866(n)+A000326(n)`
-/

namespace A226489.P16170773402222705642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A000326 n

end

end A226489.P16170773402222705642

namespace A226489

/-- `A051866(n)+A000326(n)` -/
def P16170773402222705642.Spec : Prop :=
  ∀ n, P16170773402222705642.a n = A226489 n

end A226489

/-!
# A226490: a(n) = n*(19*n-15)/2.

The programs for A226490, the canonical program `A226490.P444683112853693021` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226490 has offset 0).

The definition of A226490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-15)/2` (program `A226490.P6844474942131870802`, by `A226490.P6844474942131870802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226490.P6844474942131870802

`n*(19*n-15)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226490.P6844474942131870802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((19 * n : ℤ) - 15) : ℚ) / 2

end

end A226490.P6844474942131870802

namespace A226490

/-- `n*(19*n-15)/2` -/
def P6844474942131870802.Spec : Prop :=
  ∀ n, P6844474942131870802.a n = (A226490 n : ℚ)

theorem P6844474942131870802.correct : P6844474942131870802.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226490, Nat.add_sub_cancel, A226490.P6844474942131870802.a, A226490.P444683112853693021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226490, Nat.add_sub_cancel, A226490.P6844474942131870802.a, A226490.P444683112853693021.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226490

/-! ## A226490.P444683112853693021

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=23`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226490

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P444683112853693021.Spec : Prop :=
  ∀ n, P444683112853693021.a n = A226490 n

theorem P444683112853693021.correct : P444683112853693021.Spec := by
  intro n
  simp only [A226490]

end A226490

/-! ## A226490.P3788110679627161987

`n+A051873(n)`
-/

namespace A226490.P3788110679627161987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A051873 n

end

end A226490.P3788110679627161987

namespace A226490

/-- `n+A051873(n)` -/
def P3788110679627161987.Spec : Prop :=
  ∀ n, P3788110679627161987.a n = A226490 n

end A226490

/-! ## A226490.P7498435666878169414

`∑[a(n-1)+19]` with `a(0)=0, a(1)=2`
-/

namespace A226490.P7498435666878169414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226490.P7498435666878169414

namespace A226490

/-- `∑[a(n-1)+19]` -/
def P7498435666878169414.Spec : Prop :=
  ∀ n, (P7498435666878169414.a n : ℤ) = A226490 n

end A226490

/-! ## A226490.P5305894636277655069

`2*n+19*C(n, 2)`
-/

namespace A226490.P5305894636277655069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 19 * Nat.choose n 2

end

end A226490.P5305894636277655069

namespace A226490

/-- `2*n+19*C(n, 2)` -/
def P5305894636277655069.Spec : Prop :=
  ∀ n, (P5305894636277655069.a n : ℤ) = A226490 n

end A226490

/-! ## A226490.P9001236372232734289

`17-∑[a(n-1)-19]` with `a(0)=17`
-/

namespace A226490.P9001236372232734289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226490.P9001236372232734289

namespace A226490

/-- `17-∑[a(n-1)-19]` -/
def P9001236372232734289.Spec : Prop :=
  ∀ n, P9001236372232734289.a n = A226490 n

end A226490

/-! ## A226490.P4708192543753793637

`n*(14*n-10)-(C(3*n, 2)-n)`
-/

namespace A226490.P4708192543753793637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((14 * n : ℤ) - 10) - ((Nat.choose (3 * n) 2 : ℤ) - (n : ℤ))

end

end A226490.P4708192543753793637

namespace A226490

/-- `n*(14*n-10)-(C(3*n, 2)-n)` -/
def P4708192543753793637.Spec : Prop :=
  ∀ n, P4708192543753793637.a n = A226490 n

end A226490

/-! ## A226490.P5435987212284834201

`A051871(n)+n²`
-/

namespace A226490.P5435987212284834201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + (n ^ 2 : ℤ)

end

end A226490.P5435987212284834201

namespace A226490

/-- `A051871(n)+n²` -/
def P5435987212284834201.Spec : Prop :=
  ∀ n, P5435987212284834201.a n = A226490 n

end A226490

/-! ## A226490.P17548268974347726491

`A152759(n)-n²`
-/

namespace A226490.P17548268974347726491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n - (n ^ 2 : ℤ)

end

end A226490.P17548268974347726491

namespace A226490

/-- `A152759(n)-n²` -/
def P17548268974347726491.Spec : Prop :=
  ∀ n, P17548268974347726491.a n = A226490 n

end A226490

/-! ## A226490.P96383396036364631

`A051872(n)+∑[n]`
-/

namespace A226490.P96383396036364631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226490.P96383396036364631

namespace A226490

/-- `A051872(n)+∑[n]` -/
def P96383396036364631.Spec : Prop :=
  ∀ n, P96383396036364631.a n = A226490 n

end A226490

/-! ## A226490.P5984528976564321649

`A152995(n)+C(n, 2)`
-/

namespace A226490.P5984528976564321649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n + (Nat.choose n 2 : ℤ)

end

end A226490.P5984528976564321649

namespace A226490

/-- `A152995(n)+C(n, 2)` -/
def P5984528976564321649.Spec : Prop :=
  ∀ n, P5984528976564321649.a n = A226490 n

end A226490

/-! ## A226490.P9198340370051330344

`A158186(n)-(∑[n]+1)`
-/

namespace A226490.P9198340370051330344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A226490.P9198340370051330344

namespace A226490

/-- `A158186(n)-(∑[n]+1)` -/
def P9198340370051330344.Spec : Prop :=
  ∀ n, P9198340370051330344.a n = A226490 n

end A226490

/-! ## A226490.P5757720291163873758

`∑[n]+A154254(n)-2`
-/

namespace A226490.P5757720291163873758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A154254 n - 2)

end

end A226490.P5757720291163873758

namespace A226490

/-- `∑[n]+A154254(n)-2` -/
def P5757720291163873758.Spec : Prop :=
  ∀ n, P5757720291163873758.a n = A226490 n

end A226490

/-! ## A226490.P8859205085310613687

`n²+A180232(n)-n`
-/

namespace A226490.P8859205085310613687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A180232 n - (n : ℤ))

end

end A226490.P8859205085310613687

namespace A226490

/-- `n²+A180232(n)-n` -/
def P8859205085310613687.Spec : Prop :=
  ∀ n, P8859205085310613687.a n = A226490 n

end A226490

/-! ## A226490.P14482921922672484905

`A226491(n)+n-n²`
-/

namespace A226490.P14482921922672484905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A226490.P14482921922672484905

namespace A226490

/-- `A226491(n)+n-n²` -/
def P14482921922672484905.Spec : Prop :=
  ∀ n, P14482921922672484905.a n = A226490 n

end A226490

/-! ## A226490.P12743328015473680748

`A152965(n)+n-∑[n]`
-/

namespace A226490.P12743328015473680748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152965 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A226490.P12743328015473680748

namespace A226490

/-- `A152965(n)+n-∑[n]` -/
def P12743328015473680748.Spec : Prop :=
  ∀ n, P12743328015473680748.a n = A226490 n

end A226490

/-! ## A226490.P8940273912145514160

`A153784(n)-(∑[n]+n)`
-/

namespace A226490.P8940273912145514160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A226490.P8940273912145514160

namespace A226490

/-- `A153784(n)-(∑[n]+n)` -/
def P8940273912145514160.Spec : Prop :=
  ∀ n, P8940273912145514160.a n = A226490 n

end A226490

/-! ## A226490.P17087371577223299477

`A051875(n)-n*(n-2)`
-/

namespace A226490.P17087371577223299477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n - (n : ℤ) * ((n : ℤ) - 2)

end

end A226490.P17087371577223299477

namespace A226490

/-- `A051875(n)-n*(n-2)` -/
def P17087371577223299477.Spec : Prop :=
  ∀ n, P17087371577223299477.a n = A226490 n

end A226490

/-! ## A226490.P6911763623677457505

`A022278(n)-n*(n+7)`
-/

namespace A226490.P6911763623677457505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022278 n - (n * (n + 7) : ℤ)

end

end A226490.P6911763623677457505

namespace A226490

/-- `A022278(n)-n*(n+7)` -/
def P6911763623677457505.Spec : Prop :=
  ∀ n, P6911763623677457505.a n = A226490 n

end A226490

/-! ## A226490.P8426625538520598680

`A051870(n)+A000326(n)`
-/

namespace A226490.P8426625538520598680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + A000326 n

end

end A226490.P8426625538520598680

namespace A226490

/-- `A051870(n)+A000326(n)` -/
def P8426625538520598680.Spec : Prop :=
  ∀ n, P8426625538520598680.a n = A226490 n

end A226490

/-!
# A226491: a(n) = n*(21*n-17)/2.

The programs for A226491, the canonical program `A226491.P2007351030128465345` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226491 has offset 0).

The definition of A226491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-17)/2` (program `A226491.P8696290887308803044`, by `A226491.P8696290887308803044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226491.P8696290887308803044

`n*(21*n-17)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226491.P8696290887308803044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((21 * n : ℤ) - 17) : ℚ) / 2

end

end A226491.P8696290887308803044

namespace A226491

/-- `n*(21*n-17)/2` -/
def P8696290887308803044.Spec : Prop :=
  ∀ n, P8696290887308803044.a n = (A226491 n : ℚ)

theorem P8696290887308803044.correct : P8696290887308803044.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226491, Nat.add_sub_cancel, A226491.P8696290887308803044.a, A226491.P2007351030128465345.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226491, Nat.add_sub_cancel, A226491.P8696290887308803044.a, A226491.P2007351030128465345.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226491

/-! ## A226491.P2007351030128465345

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=25`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226491

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2007351030128465345.Spec : Prop :=
  ∀ n, P2007351030128465345.a n = A226491 n

theorem P2007351030128465345.correct : P2007351030128465345.Spec := by
  intro n
  simp only [A226491]

end A226491

/-! ## A226491.P820910600555309461

`∑[a(n-1)+21]` with `a(0)=0, a(1)=2`
-/

namespace A226491.P820910600555309461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226491.P820910600555309461

namespace A226491

/-- `∑[a(n-1)+21]` -/
def P820910600555309461.Spec : Prop :=
  ∀ n, (P820910600555309461.a n : ℤ) = A226491 n

end A226491

/-! ## A226491.P15081510105110166250

`n*(6*n-5)+9*C(n, 2)+n`
-/

namespace A226491.P15081510105110166250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * n : ℤ) - 5) + (9 * Nat.choose n 2 + n : ℤ)

end

end A226491.P15081510105110166250

namespace A226491

/-- `n*(6*n-5)+9*C(n, 2)+n` -/
def P15081510105110166250.Spec : Prop :=
  ∀ n, P15081510105110166250.a n = A226491 n

end A226491

/-! ## A226491.P258104740930374105

`abs(5*C(n, 2)-n-n*(13*n-12))`
-/

namespace A226491.P258104740930374105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * Nat.choose n 2 : ℤ) - (n : ℤ) - (n : ℤ) * ((13 * n : ℤ) - 12)|

end

end A226491.P258104740930374105

namespace A226491

/-- `abs(5*C(n, 2)-n-n*(13*n-12))` -/
def P258104740930374105.Spec : Prop :=
  ∀ n, P258104740930374105.a n = A226491 n

end A226491

/-! ## A226491.P16766960746357850266

`A051875(n)+n`
-/

namespace A226491.P16766960746357850266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + (n : ℤ)

end

end A226491.P16766960746357850266

namespace A226491

/-- `A051875(n)+n` -/
def P16766960746357850266.Spec : Prop :=
  ∀ n, P16766960746357850266.a n = A226491 n

end A226491

/-! ## A226491.P13745660766946699739

`A152759(n)-n`
-/

namespace A226491.P13745660766946699739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n - (n : ℤ)

end

end A226491.P13745660766946699739

namespace A226491

/-- `A152759(n)-n` -/
def P13745660766946699739.Spec : Prop :=
  ∀ n, P13745660766946699739.a n = A226491 n

end A226491

/-! ## A226491.P1284888884820434934

`A051873(n)+n²`
-/

namespace A226491.P1284888884820434934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051873 n + (n ^ 2 : ℤ)

end

end A226491.P1284888884820434934

namespace A226491

/-- `A051873(n)+n²` -/
def P1284888884820434934.Spec : Prop :=
  ∀ n, P1284888884820434934.a n = A226491 n

end A226491

/-! ## A226491.P841049568063009521

`A051874(n)+∑[n]`
-/

namespace A226491.P841049568063009521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226491.P841049568063009521

namespace A226491

/-- `A051874(n)+∑[n]` -/
def P841049568063009521.Spec : Prop :=
  ∀ n, P841049568063009521.a n = A226491 n

end A226491

/-! ## A226491.P5404085548061899651

`3*A001106(n)-n`
-/

namespace A226491.P5404085548061899651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001106 n - (n : ℤ)

end

end A226491.P5404085548061899651

namespace A226491

/-- `3*A001106(n)-n` -/
def P5404085548061899651.Spec : Prop :=
  ∀ n, P5404085548061899651.a n = A226491 n

end A226491

/-! ## A226491.P6176946047251444043

`A152744(n)-5*n`
-/

namespace A226491.P6176946047251444043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152744 n - (5 * n : ℤ)

end

end A226491.P6176946047251444043

namespace A226491

/-- `A152744(n)-5*n` -/
def P6176946047251444043.Spec : Prop :=
  ∀ n, P6176946047251444043.a n = A226491 n

end A226491

/-! ## A226491.P16988262596980907019

`A051872(n)+A000326(n)`
-/

namespace A226491.P16988262596980907019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051872 n + A000326 n

end

end A226491.P16988262596980907019

namespace A226491

/-- `A051872(n)+A000326(n)` -/
def P16988262596980907019.Spec : Prop :=
  ∀ n, P16988262596980907019.a n = A226491 n

end A226491

/-! ## A226491.P2611129573149759051

`A051871(n)+A000384(n)`
-/

namespace A226491.P2611129573149759051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051871 n + A000384 n

end

end A226491.P2611129573149759051

namespace A226491

/-- `A051871(n)+A000384(n)` -/
def P2611129573149759051.Spec : Prop :=
  ∀ n, P2611129573149759051.a n = A226491 n

end A226491

/-! ## A226491.P1205991455716504328

`A051869(n)+A000567(n)`
-/

namespace A226491.P1205991455716504328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051869 n + A000567 n

end

end A226491.P1205991455716504328

namespace A226491

/-- `A051869(n)+A000567(n)` -/
def P1205991455716504328.Spec : Prop :=
  ∀ n, P1205991455716504328.a n = A226491 n

end A226491

/-! ## A226491.P4139560214189939795

`A051870(n)+A000566(n)`
-/

namespace A226491.P4139560214189939795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + A000566 n

end

end A226491.P4139560214189939795

namespace A226491

/-- `A051870(n)+A000566(n)` -/
def P4139560214189939795.Spec : Prop :=
  ∀ n, P4139560214189939795.a n = A226491 n

end A226491

/-! ## A226491.P13422869722090222567

`A051867(n)+A001107(n)`
-/

namespace A226491.P13422869722090222567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + A001107 n

end

end A226491.P13422869722090222567

namespace A226491

/-- `A051867(n)+A001107(n)` -/
def P13422869722090222567.Spec : Prop :=
  ∀ n, P13422869722090222567.a n = A226491 n

end A226491

/-! ## A226491.P10583825876747515507

`A051868(n)+A001106(n)`
-/

namespace A226491.P10583825876747515507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051868 n + A001106 n

end

end A226491.P10583825876747515507

namespace A226491

/-- `A051868(n)+A001106(n)` -/
def P10583825876747515507.Spec : Prop :=
  ∀ n, P10583825876747515507.a n = A226491 n

end A226491

/-! ## A226491.P7429292483351610491

`A051865(n)+A051624(n)`
-/

namespace A226491.P7429292483351610491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + A051624 n

end

end A226491.P7429292483351610491

namespace A226491

/-- `A051865(n)+A051624(n)` -/
def P7429292483351610491.Spec : Prop :=
  ∀ n, P7429292483351610491.a n = A226491 n

end A226491

/-! ## A226491.P13942449606852850697

`A051866(n)+A051682(n)`
-/

namespace A226491.P13942449606852850697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A051682 n

end

end A226491.P13942449606852850697

namespace A226491

/-- `A051866(n)+A051682(n)` -/
def P13942449606852850697.Spec : Prop :=
  ∀ n, P13942449606852850697.a n = A226491 n

end A226491

/-! ## A226491.P18165163609018616814

`A140064(n)+A103115(n)`
-/

namespace A226491.P18165163609018616814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n + A103115 n

end

end A226491.P18165163609018616814

namespace A226491

/-- `A140064(n)+A103115(n)` -/
def P18165163609018616814.Spec : Prop :=
  ∀ n, P18165163609018616814.a n = A226491 n

end A226491

/-!
# A226492: a(n) = n*(11*n-5)/2.

The programs for A226492, the canonical program `A226492.P5755862298223284097` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226492 has offset 0).

The definition of A226492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-5)/2` (program `A226492.P10972139252155988793`, by `A226492.P10972139252155988793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226492.P10972139252155988793

`n*(11*n-5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226492.P10972139252155988793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((11 * n : ℤ) - 5) : ℚ) / 2

end

end A226492.P10972139252155988793

namespace A226492

/-- `n*(11*n-5)/2` -/
def P10972139252155988793.Spec : Prop :=
  ∀ n, P10972139252155988793.a n = (A226492 n : ℚ)

theorem P10972139252155988793.correct : P10972139252155988793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A226492, Nat.add_sub_cancel, A226492.P10972139252155988793.a, A226492.P5755862298223284097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A226492, Nat.add_sub_cancel, A226492.P10972139252155988793.a, A226492.P5755862298223284097.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226492

/-! ## A226492.P5755862298223284097

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226492

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5755862298223284097.Spec : Prop :=
  ∀ n, P5755862298223284097.a n = A226492 n

theorem P5755862298223284097.correct : P5755862298223284097.Spec := by
  intro n
  simp only [A226492]

end A226492

/-! ## A226492.P467495045232564064

`n+A180223(n)`
-/

namespace A226492.P467495045232564064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A180223 n

end

end A226492.P467495045232564064

namespace A226492

/-- `n+A180223(n)` -/
def P467495045232564064.Spec : Prop :=
  ∀ n, P467495045232564064.a n = A226492 n

end A226492

/-! ## A226492.P4859963061381122842

`∑[a(n-1)+11]` with `a(0)=0, a(1)=3`
-/

namespace A226492.P4859963061381122842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226492.P4859963061381122842

namespace A226492

/-- `∑[a(n-1)+11]` -/
def P4859963061381122842.Spec : Prop :=
  ∀ n, (P4859963061381122842.a n : ℤ) = A226492 n

end A226492

/-! ## A226492.P11312357812022656297

`∑[ogf((3x+8x^2)/(1-2x+x^2))]`
-/

namespace A226492.P11312357812022656297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226492.P11312357812022656297

namespace A226492

/-- `∑[ogf((3x+8x^2)/(1-2x+x^2))]` -/
def P11312357812022656297.Spec : Prop :=
  ∀ n, P11312357812022656297.a n = A226492 n

end A226492

/-! ## A226492.P18138719196780091194

`ogf((3x+8x^2)/(1-3x+3x^2-x^3))`
-/

namespace A226492.P18138719196780091194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 8] [1, -3, 3, -1] n

end

end A226492.P18138719196780091194

namespace A226492

/-- `ogf((3x+8x^2)/(1-3x+3x^2-x^3))` -/
def P18138719196780091194.Spec : Prop :=
  ∀ n, P18138719196780091194.a n = A226492 n

end A226492

/-! ## A226492.P15273400235436381033

`∑[29*n+2]%((9*n+1)*(n+2))`
-/

namespace A226492.P15273400235436381033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % ((9 * n + 1) * (n + 2))

end

end A226492.P15273400235436381033

namespace A226492

/-- `∑[29*n+2]%((9*n+1)*(n+2))` -/
def P15273400235436381033.Spec : Prop :=
  ∀ n, (P15273400235436381033.a n : ℤ) = A226492 n

end A226492

/-! ## A226492.P16557044757491762534

`A062708(n)+n²`
-/

namespace A226492.P16557044757491762534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + (n ^ 2 : ℤ)

end

end A226492.P16557044757491762534

namespace A226492

/-- `A062708(n)+n²` -/
def P16557044757491762534.Spec : Prop :=
  ∀ n, P16557044757491762534.a n = A226492 n

end A226492

/-! ## A226492.P16015454352048176193

`A135706(n)+∑[n]`
-/

namespace A226492.P16015454352048176193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226492.P16015454352048176193

namespace A226492

/-- `A135706(n)+∑[n]` -/
def P16015454352048176193.Spec : Prop :=
  ∀ n, P16015454352048176193.a n = A226492 n

end A226492

/-! ## A226492.P12280763084462708982

`A033579(n)-∑[n]`
-/

namespace A226492.P12280763084462708982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226492.P12280763084462708982

namespace A226492

/-- `A033579(n)-∑[n]` -/
def P12280763084462708982.Spec : Prop :=
  ∀ n, P12280763084462708982.a n = A226492 n

end A226492

/-! ## A226492.P11875825730155836837

`A051865(n)+2*n`
-/

namespace A226492.P11875825730155836837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + (2 * n : ℤ)

end

end A226492.P11875825730155836837

namespace A226492

/-- `A051865(n)+2*n` -/
def P11875825730155836837.Spec : Prop :=
  ∀ n, P11875825730155836837.a n = A226492 n

end A226492

/-! ## A226492.P15350000710991279668

`A022268(n)-2*n`
-/

namespace A226492.P15350000710991279668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n - (2 * n : ℤ)

end

end A226492.P15350000710991279668

namespace A226492

/-- `A022268(n)-2*n` -/
def P15350000710991279668.Spec : Prop :=
  ∀ n, P15350000710991279668.a n = A226492 n

end A226492

/-! ## A226492.P999647818121055155

`A022269(n)-3*n`
-/

namespace A226492.P999647818121055155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n - (3 * n : ℤ)

end

end A226492.P999647818121055155

namespace A226492

/-- `A022269(n)-3*n` -/
def P999647818121055155.Spec : Prop :=
  ∀ n, P999647818121055155.a n = A226492 n

end A226492

/-! ## A226492.P11478878036334245331

`A254963(n)-4*n`
-/

namespace A226492.P11478878036334245331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n - (4 * n : ℤ)

end

end A226492.P11478878036334245331

namespace A226492

/-- `A254963(n)-4*n` -/
def P11478878036334245331.Spec : Prop :=
  ∀ n, P11478878036334245331.a n = A226492 n

end A226492

/-! ## A226492.P2350248128080178085

`abs(C(n, 2)-A094159(n))`
-/

namespace A226492.P2350248128080178085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - A094159 n|

end

end A226492.P2350248128080178085

namespace A226492

/-- `abs(C(n, 2)-A094159(n))` -/
def P2350248128080178085.Spec : Prop :=
  ∀ n, P2350248128080178085.a n = A226492 n

end A226492

/-! ## A226492.P16091422613301574129

`A051682(n)+n²+n`
-/

namespace A226492.P16091422613301574129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + (n ^ 2 + n : ℤ)

end

end A226492.P16091422613301574129

namespace A226492

/-- `A051682(n)+n²+n` -/
def P16091422613301574129.Spec : Prop :=
  ∀ n, P16091422613301574129.a n = A226492 n

end A226492

/-! ## A226492.P604424950673466930

`A186030(n)-(n²+n)`
-/

namespace A226492.P604424950673466930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186030 n - (n ^ 2 + n : ℤ)

end

end A226492.P604424950673466930

namespace A226492

/-- `A186030(n)-(n²+n)` -/
def P604424950673466930.Spec : Prop :=
  ∀ n, P604424950673466930.a n = A226492 n

end A226492

/-! ## A226492.P9146111336938278365

`A001106(n)+A001105(n)`
-/

namespace A226492.P9146111336938278365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + A001105 n

end

end A226492.P9146111336938278365

namespace A226492

/-- `A001106(n)+A001105(n)` -/
def P9146111336938278365.Spec : Prop :=
  ∀ n, P9146111336938278365.a n = A226492 n

end A226492

/-! ## A226492.P6246016664872579757

`A002939(n)+A000326(n)`
-/

namespace A226492.P6246016664872579757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n + A000326 n

end

end A226492.P6246016664872579757

namespace A226492

/-- `A002939(n)+A000326(n)` -/
def P6246016664872579757.Spec : Prop :=
  ∀ n, P6246016664872579757.a n = A226492 n

end A226492

/-! ## A226492.P12859212585725517080

`A005476(n)+A000567(n)`
-/

namespace A226492.P12859212585725517080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + A000567 n

end

end A226492.P12859212585725517080

namespace A226492

/-- `A005476(n)+A000567(n)` -/
def P12859212585725517080.Spec : Prop :=
  ∀ n, P12859212585725517080.a n = A226492 n

end A226492

/-!
# A226493: Closed walks of length n in K_4 graph.

The programs for A226493, the canonical program `A226493.P13246878929426534135` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226493 has offset 1).

The definition of A226493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226493.P991819759637692401

`3*(-1)^(n+1)+3^(n+1)`
-/

namespace A226493.P991819759637692401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ (n + 1) + (3 ^ (n + 1) : ℤ)

end

end A226493.P991819759637692401

namespace A226493

/-- `3*(-1)^(n+1)+3^(n+1)` -/
def P991819759637692401.Spec : Prop :=
  ∀ n, P991819759637692401.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P13246878929426534135

`12*A015518(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A226493

/-- `12*A015518(n)` -/
def P13246878929426534135.Spec : Prop :=
  ∀ n, P13246878929426534135.a n = A226493 (n + 1)

theorem P13246878929426534135.correct : P13246878929426534135.Spec := by
  intro n
  simp only [A226493, Nat.add_sub_cancel]

end A226493

/-! ## A226493.P5849885382133894678

`ogf(12x/(1-2x-3x^2))`
-/

namespace A226493.P5849885382133894678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12] [1, -2, -3] n

end

end A226493.P5849885382133894678

namespace A226493

/-- `ogf(12x/(1-2x-3x^2))` -/
def P5849885382133894678.Spec : Prop :=
  ∀ n, P5849885382133894678.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P11964871172962644074

`lcm(3, 1-(-3)^n)`
-/

namespace A226493.P11964871172962644074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (-3) ^ n)

end

end A226493.P11964871172962644074

namespace A226493

/-- `lcm(3, 1-(-3)^n)` -/
def P11964871172962644074.Spec : Prop :=
  ∀ n, (P11964871172962644074.a n : ℤ) = A226493 (n + 1)

end A226493

/-! ## A226493.P6487082102886909896

`3*xor(4, a(n-1))` with `a(0)=0`
-/

namespace A226493.P6487082102886909896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * Nat.xor 4 (a (n - 1))

end

end A226493.P6487082102886909896

namespace A226493

/-- `3*xor(4, a(n-1))` -/
def P6487082102886909896.Spec : Prop :=
  ∀ n, (P6487082102886909896.a n : ℤ) = A226493 (n + 1)

end A226493

/-! ## A226493.P507477125656468208

`abs(3*xor(1, (-3)^n))`
-/

namespace A226493.P507477125656468208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * Int.xor 1 ((-3) ^ n)|

end

end A226493.P507477125656468208

namespace A226493

/-- `abs(3*xor(1, (-3)^n))` -/
def P507477125656468208.Spec : Prop :=
  ∀ n, P507477125656468208.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P7001895057563641603

`Δ[or(3, ∑[3^n]-1)]`
-/

namespace A226493.P7001895057563641603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P7001895057563641603

namespace A226493

/-- `Δ[or(3, ∑[3^n]-1)]` -/
def P7001895057563641603.Spec : Prop :=
  ∀ n, P7001895057563641603.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P9124176656208409058

`2*A120471(n)`
-/

namespace A226493.P9124176656208409058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120471 n

end

end A226493.P9124176656208409058

namespace A226493

/-- `2*A120471(n)` -/
def P9124176656208409058.Spec : Prop :=
  ∀ n, P9124176656208409058.a n = A226493 (n + 1)

theorem P9124176656208409058.correct : P9124176656208409058.Spec := by
  intro n
  simp only [A226493, Nat.add_sub_cancel, A226493.P9124176656208409058.a, A226493.P13246878929426534135.a, A015518, A015518.P6264788535366608161.a, A120471, A120471.P1065442861071889028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226493

/-! ## A226493.P4873399530938441509

`3*A105723(n)`
-/

namespace A226493.P4873399530938441509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A105723 n

end

end A226493.P4873399530938441509

namespace A226493

/-- `3*A105723(n)` -/
def P4873399530938441509.Spec : Prop :=
  ∀ n, P4873399530938441509.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P4183382918449417288

`abs(12*A014983(n))`
-/

namespace A226493.P4183382918449417288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 * A014983 n|

end

end A226493.P4183382918449417288

namespace A226493

/-- `abs(12*A014983(n))` -/
def P4183382918449417288.Spec : Prop :=
  ∀ n, P4183382918449417288.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P13875140183069855880

`Δ[3*A046717(n)]`
-/

namespace A226493.P13875140183069855880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P13875140183069855880

namespace A226493

/-- `Δ[3*A046717(n)]` -/
def P13875140183069855880.Spec : Prop :=
  ∀ n, P13875140183069855880.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P15452976711064275634

`Δ[4*A006342(n)]`
-/

namespace A226493.P15452976711064275634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P15452976711064275634

namespace A226493

/-- `Δ[4*A006342(n)]` -/
def P15452976711064275634.Spec : Prop :=
  ∀ n, P15452976711064275634.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P17612233805270525753

`Δ[6*A122983(n)]`
-/

namespace A226493.P17612233805270525753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A122983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P17612233805270525753

namespace A226493

/-- `Δ[6*A122983(n)]` -/
def P17612233805270525753.Spec : Prop :=
  ∀ n, P17612233805270525753.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P2218409672782756224

`4*A054878(n+1)`
-/

namespace A226493.P2218409672782756224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A054878 (n + 1)

end

end A226493.P2218409672782756224

namespace A226493

/-- `4*A054878(n+1)` -/
def P2218409672782756224.Spec : Prop :=
  ∀ n, P2218409672782756224.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P1552296602105983472

`xor(4, A105723(n+1))`
-/

namespace A226493.P1552296602105983472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A105723 (n + 1))

end

end A226493.P1552296602105983472

namespace A226493

/-- `xor(4, A105723(n+1))` -/
def P1552296602105983472.Spec : Prop :=
  ∀ n, P1552296602105983472.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P16869537711552575347

`Δ[abs(A165553(n+1))]`
-/

namespace A226493.P16869537711552575347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165553 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P16869537711552575347

namespace A226493

/-- `Δ[abs(A165553(n+1))]` -/
def P16869537711552575347.Spec : Prop :=
  ∀ n, P16869537711552575347.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P1771862609451130089

`abs(4*A084567(n+1))`
-/

namespace A226493.P1771862609451130089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A084567 (n + 1)|

end

end A226493.P1771862609451130089

namespace A226493

/-- `abs(4*A084567(n+1))` -/
def P1771862609451130089.Spec : Prop :=
  ∀ n, P1771862609451130089.a n = A226493 (n + 1)

end A226493

/-! ## A226493.P15580342703690251472

`Δ[A102345(n)+A102345(n)/2]`
-/

namespace A226493.P15580342703690251472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102345 n : ℚ) + (A102345 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P15580342703690251472

namespace A226493

/-- `Δ[A102345(n)+A102345(n)/2]` -/
def P15580342703690251472.Spec : Prop :=
  ∀ n, P15580342703690251472.a n = (A226493 (n + 1) : ℚ)

end A226493

/-! ## A226493.P10403359041033257169

`Δ[Δ[3^n-a(n-1)]]` with `a(0)=0`
-/

namespace A226493.P10403359041033257169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (3 ^ n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226493.P10403359041033257169

namespace A226493

/-- `Δ[Δ[3^n-a(n-1)]]` -/
def P10403359041033257169.Spec : Prop :=
  ∀ n, P10403359041033257169.a n = A226493 (n + 1)

end A226493

/-!
# A226494: Composite squarefree numbers that are not the sum of two (distinct) smaller composite squarefree numbers.

The programs for A226494, there is no canonical definition to state claims against.
-/

/-! ## A226494.P7829164912956054203

`A162409(A154771(n)+1)`
-/

namespace A226494.P7829164912956054203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (A154771 n + 1).toNat

end

end A226494.P7829164912956054203

/-! ## A226494.P15310450230773169659

`A162409(A249575(n+1))`
-/

namespace A226494.P15310450230773169659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (A249575 (n + 1)).toNat

end

end A226494.P15310450230773169659

/-! ## A226494.P13672813736550011023

`A162409(A191889(n+2))`
-/

namespace A226494.P13672813736550011023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (A191889 (n + 2)).toNat

end

end A226494.P13672813736550011023

/-! ## A226494.P7264212675132104757

`A162409(A382053(n+2))`
-/

namespace A226494.P7264212675132104757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (A382053 (n + 2)).toNat

end

end A226494.P7264212675132104757

/-! ## A226494.P16515209081658175659

`∩[A329481(n+1), A371811(n+1)]`
-/

namespace A226494.P16515209081658175659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226494.P16515209081658175659

/-!
# A226495: The number of primes of the form i^2+j^4 (A028916) <= 10^n, counted with multiplicity.

The programs for A226495, there is no canonical definition to state claims against.
-/

/-! ## A226495.P4644704472354336554

`A161154(A161154(a(n-1)+1)+1)-3` with `a(0)=2`
-/

namespace A226495.P4644704472354336554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A161154 (A161154 (a (n - 1) + 1).toNat + 1).toNat - 3

end

end A226495.P4644704472354336554

/-!
# A226496: The number of primes of the form i^2 + j^4 (A028916) <= 2^n, counted with multiplicity.

The programs for A226496, there is no canonical definition to state claims against.
-/

/-! ## A226496.P15853276454715324436

`A305025(2*A347776(n))`
-/

namespace A226496.P15853276454715324436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (2 * A347776 n).toNat

end

end A226496.P15853276454715324436

/-! ## A226496.P2559599437716398141

`A121900(A242452(n))`
-/

namespace A226496.P2559599437716398141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A242452 n).toNat

end

end A226496.P2559599437716398141

/-! ## A226496.P17575756986350170371

`A373811(A047101(n))`
-/

namespace A226496.P17575756986350170371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A047101 n).toNat

end

end A226496.P17575756986350170371

/-! ## A226496.P9897340889689607519

`A276611(A148200(n))`
-/

namespace A226496.P9897340889689607519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A148200 n).toNat

end

end A226496.P9897340889689607519

/-! ## A226496.P1106656675824379722

`A162190(A347207(n))`
-/

namespace A226496.P1106656675824379722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162190 (A347207 n).toNat

end

end A226496.P1106656675824379722

/-!
# A226497: The number of primes of the form i^2+j^4 (A028916) <= 10^n.

The programs for A226497, there is no canonical definition to state claims against.
-/

/-! ## A226497.P12272675413255013180

`A212219((2^n-1)*abs(1-n)!)+A007691(n+1)`
-/

namespace A226497.P12272675413255013180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212219 (((2 ^ n : ℤ) - 1) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)).toNat + A007691 (n + 1)

end

end A226497.P12272675413255013180

/-!
# A226498: The number of primes of the form i^2 + j^4 (A028916) <= 2^n.

The programs for A226498, there is no canonical definition to state claims against.
-/

/-! ## A226498.P17224502585003235284

`A259361(A112577(n)+3+n)`
-/

namespace A226498.P17224502585003235284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A112577 n + 3 + (n : ℤ)).toNat

end

end A226498.P17224502585003235284

/-! ## A226498.P5353436663610478492

`A000196(or(2*n, A238436(n)))`
-/

namespace A226498.P5353436663610478492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (2 * n : ℤ) (A238436 n)).toNat

end

end A226498.P5353436663610478492

/-! ## A226498.P796862209504751835

`A000196(or(A238436(n), A347451(n+1)))`
-/

namespace A226498.P796862209504751835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A238436 n) (A347451 (n + 1))).toNat

end

end A226498.P796862209504751835

/-! ## A226498.P4533915537024672644

`A085761(A387600(n))`
-/

namespace A226498.P4533915537024672644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A387600 n).toNat

end

end A226498.P4533915537024672644

/-! ## A226498.P5752718849802711700

`A373810(A053263(∑[n]))`
-/

namespace A226498.P5752718849802711700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A053263 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A226498.P5752718849802711700

