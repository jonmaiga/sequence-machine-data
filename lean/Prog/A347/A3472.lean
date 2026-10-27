import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A347202: Numbers whose number of odd divisors is not equal to 2.

The programs for A347202, the canonical program `A347202.P15825861999241065422` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347202 has offset 1).

The definition of A347202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347202.P15825861999241065422

`eq[0, A353670(n+1)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A347202

/-- `eq[0, A353670(n+1)]+1` -/
def P15825861999241065422.Spec : Prop :=
  ∀ n, (P15825861999241065422.a n : ℤ) = A347202 (n + 1)

theorem P15825861999241065422.correct : P15825861999241065422.Spec := by
  intro n
  simp only [A347202, Nat.add_sub_cancel]

end A347202

/-! ## A347202.P16542402289832679769

`comp[A038550(n+1)-1]+1`
-/

namespace A347202.P16542402289832679769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347202.P16542402289832679769

namespace A347202

/-- `comp[A038550(n+1)-1]+1` -/
def P16542402289832679769.Spec : Prop :=
  ∀ n, (P16542402289832679769.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P16854315452723796392

`lt[A353671(2*(n+1)), 1]+1`
-/

namespace A347202.P16854315452723796392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353671 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347202.P16854315452723796392

namespace A347202

/-- `lt[A353671(2*(n+1)), 1]+1` -/
def P16854315452723796392.Spec : Prop :=
  ∀ n, (P16854315452723796392.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P6980706572425759037

`comp[ceil(n/2)*A353671(n+1)]`
-/

namespace A347202.P6980706572425759037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A353671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A347202.P6980706572425759037

namespace A347202

/-- `comp[ceil(n/2)*A353671(n+1)]` -/
def P6980706572425759037.Spec : Prop :=
  ∀ n, (P6980706572425759037.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P3413199354970200697

`∪[A000079(n), A105441(n+1)]`
-/

namespace A347202.P3413199354970200697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347202.P3413199354970200697

namespace A347202

/-- `∪[A000079(n), A105441(n+1)]` -/
def P3413199354970200697.Spec : Prop :=
  ∀ n, (P3413199354970200697.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P5913082493869137624

`lt[and(2, A126865(n+1)), 2]+1`
-/

namespace A347202.P5913082493869137624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A126865 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347202.P5913082493869137624

namespace A347202

/-- `lt[and(2, A126865(n+1)), 2]+1` -/
def P5913082493869137624.Spec : Prop :=
  ∀ n, (P5913082493869137624.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P4599766814061291766

`lt[3, A051497(∑{d}[n, #%2]+1)]`
-/

namespace A347202.P4599766814061291766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051497 (∑ d ∈ Nat.divisors (f3 n), d % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347202.P4599766814061291766

namespace A347202

/-- `lt[3, A051497(∑{d}[n, #%2]+1)]` -/
def P4599766814061291766.Spec : Prop :=
  ∀ n, (P4599766814061291766.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P12280991216319881663

`∪[A000079(n), A110473(n+1)]`
-/

namespace A347202.P12280991216319881663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347202.P12280991216319881663

namespace A347202

/-- `∪[A000079(n), A110473(n+1)]` -/
def P12280991216319881663.Spec : Prop :=
  ∀ n, (P12280991216319881663.a n : ℤ) = A347202 (n + 1)

end A347202

/-! ## A347202.P1172537351213377944

`∪[A008860(n), A110473(n+1)]`
-/

namespace A347202.P1172537351213377944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347202.P1172537351213377944

namespace A347202

/-- `∪[A008860(n), A110473(n+1)]` -/
def P1172537351213377944.Spec : Prop :=
  ∀ n, (P1172537351213377944.a n : ℤ) = A347202 (n + 1)

end A347202

/-!
# A347204: a(n) = a(f(n)/2) + a(floor((n+f(n))/2)) for n > 0 with a(0) = 1 where f(n) = A129760(n).

The programs for A347204, the canonical program `A347204.P9262415258510155147` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347204 has offset 0).

The definition of A347204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347204.P9262415258510155147

`a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A347204

/-- `a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` -/
def P9262415258510155147.Spec : Prop :=
  ∀ n, (P9262415258510155147.a n : ℤ) = A347204 n

theorem P9262415258510155147.correct : P9262415258510155147.Spec := by
  intro n
  simp only [A347204]

end A347204

/-! ## A347204.P17784455894195356371

`A372205(4*n)`
-/

namespace A347204.P17784455894195356371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372205 (4 * n)

end

end A347204.P17784455894195356371

namespace A347204

/-- `A372205(4*n)` -/
def P17784455894195356371.Spec : Prop :=
  ∀ n, P17784455894195356371.a n = A347204 n

end A347204

/-! ## A347204.P13358256097740892350

`A181796(A362227(n))`
-/

namespace A347204.P13358256097740892350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A362227 n).toNat

end

end A347204.P13358256097740892350

namespace A347204

/-- `A181796(A362227(n))` -/
def P13358256097740892350.Spec : Prop :=
  ∀ n, P13358256097740892350.a n = A347204 n

end A347204

/-! ## A347204.P12050985568493534065

`A181796(A387465(n))`
-/

namespace A347204.P12050985568493534065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A387465 n).toNat

end

end A347204.P12050985568493534065

namespace A347204

/-- `A181796(A387465(n))` -/
def P12050985568493534065.Spec : Prop :=
  ∀ n, P12050985568493534065.a n = A347204 n

end A347204

/-!
# A347205: a(2n+1) = a(n) for n >= 0, a(2n) = a(n) + a(n - 2^A007814(n)) for n > 0 with a(0) = 1.

The programs for A347205, there is no canonical definition to state claims against.
-/

/-! ## A347205.P16621313129360366407

`A125644(A010078(n+1))`
-/

namespace A347205.P16621313129360366407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A010078 (n + 1)).toNat

end

end A347205.P16621313129360366407

/-! ## A347205.P18025200833184777811

`A125644(A145341(n+1))`
-/

namespace A347205.P18025200833184777811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A145341 (n + 1)).toNat

end

end A347205.P18025200833184777811

/-! ## A347205.P6237326740733434904

`A125644(A057889(2*n+1))`
-/

namespace A347205.P6237326740733434904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A057889 (2 * n + 1)).toNat

end

end A347205.P6237326740733434904

/-! ## A347205.P2813424457475036082

`A125644(A035327(2*n)+n)`
-/

namespace A347205.P2813424457475036082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A035327 (2 * n) + (n : ℤ)).toNat

end

end A347205.P2813424457475036082

/-! ## A347205.P10952871713506451598

`A125644(A003817(2*n)-n)`
-/

namespace A347205.P10952871713506451598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A003817 (2 * n) - (n : ℤ)).toNat

end

end A347205.P10952871713506451598

/-! ## A347205.P1916741263601854573

`A125644(A030101(2*n+1))`
-/

namespace A347205.P1916741263601854573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A030101 (2 * n + 1)).toNat

end

end A347205.P1916741263601854573

/-! ## A347205.P6951306137297059862

`A125644(A080079(2*n+1)+n)`
-/

namespace A347205.P6951306137297059862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A080079 (2 * n + 1) + (n : ℤ)).toNat

end

end A347205.P6951306137297059862

/-! ## A347205.P16476666202981142134

`A125644(A062383(2*n)-(n+1))`
-/

namespace A347205.P16476666202981142134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (A062383 (2 * n) - (n + 1 : ℤ)).toNat

end

end A347205.P16476666202981142134

/-!
# A347207: The number of overpartitions of n whose Frobenius symbols have only positive parts in the top row.

The programs for A347207, there is no canonical definition to state claims against.
-/

/-! ## A347207.P17042618420982989293

`and(A016777(A153894(n)), A025149(3*n+4))`
-/

namespace A347207.P17042618420982989293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016777 (A153894 n).toNat) (A025149 (3 * n + 4))

end

end A347207.P17042618420982989293

/-! ## A347207.P2206669176800914984

`A000720(A358841(n)+A194439(2*n+1))`
-/

namespace A347207.P2206669176800914984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A358841 n + A194439 (2 * n + 1)).toNat

end

end A347207.P2206669176800914984

/-! ## A347207.P17469214444388161951

`A000720(A194439(2*n+1)+A171894(n+1))`
-/

namespace A347207.P17469214444388161951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A194439 (2 * n + 1) + A171894 (n + 1)).toNat

end

end A347207.P17469214444388161951

/-! ## A347207.P11614492383715372729

`A000720(A218245(3*n+5)+A194439(2*n+1))`
-/

namespace A347207.P11614492383715372729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A218245 (3 * n + 5) + A194439 (2 * n + 1)).toNat

end

end A347207.P11614492383715372729

/-! ## A347207.P8614428997170688072

`A232749(A328262(n+2))`
-/

namespace A347207.P8614428997170688072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (A328262 (n + 2)).toNat

end

end A347207.P8614428997170688072

/-!
# A347209: Emirps in both base 2 and base 10.

The programs for A347209, there is no canonical definition to state claims against.
-/

/-! ## A347209.P11187968222347070976

`∩[A006567(n+1), A080790(n+1)]`
-/

namespace A347209.P11187968222347070976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P11187968222347070976

/-! ## A347209.P2055840514033123105

`∩[A080790(n+1), A000040(A156793(n+1))]`
-/

namespace A347209.P2055840514033123105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P2055840514033123105

/-! ## A347209.P7898398538037064067

`∩[A068893(n+1), A080790(n+1)]`
-/

namespace A347209.P7898398538037064067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P7898398538037064067

/-! ## A347209.P7435993610722685108

`∩[A080790(n+1), A109019(n+1)]`
-/

namespace A347209.P7435993610722685108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P7435993610722685108

/-! ## A347209.P15703352530037857744

`∩[A006567(n+1), A377421(n+1)]`
-/

namespace A347209.P15703352530037857744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P15703352530037857744

/-! ## A347209.P15623734385695909992

`∩[A080790(n+1), A350867(n+1)]`
-/

namespace A347209.P15623734385695909992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P15623734385695909992

/-! ## A347209.P13471917222308346577

`∩[A162753(2*A156793(n+1)), A080790(n+1)]`
-/

namespace A347209.P13471917222308346577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347209.P13471917222308346577

/-!
# A347210: Expansion of the e.g.f. (1 - 2*x - 2*log(1 - x) - exp(2*x)*(1 - x)^2) / 4 - 1.

The programs for A347210, there is no canonical definition to state claims against.
-/

/-! ## A347210.P3672105526031530241

`A353863(A139514(n))+n-2`
-/

namespace A347210.P3672105526031530241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353863 (A139514 n).toNat + ((n : ℤ) - 2)

end

end A347210.P3672105526031530241

/-! ## A347210.P5303710657407615296

`(n-1)*A018271(A018242(n))`
-/

namespace A347210.P5303710657407615296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A018271 (A018242 n).toNat

end

end A347210.P5303710657407615296

/-! ## A347210.P3935715060272888445

`(n-1)*A104445(A261983(n))`
-/

namespace A347210.P3935715060272888445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A104445 (A261983 n).toNat

end

end A347210.P3935715060272888445

/-! ## A347210.P4783455183713224719

`(n-1)*A347385(A264791(2*n+3))`
-/

namespace A347210.P4783455183713224719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A347385 (A264791 (2 * n + 3)).toNat

end

end A347210.P4783455183713224719

/-!
# A347212: a(n) is the next Ulam number (A002858) after 2^(n-1).

The programs for A347212, there is no canonical definition to state claims against.
-/

/-! ## A347212.P1861910855922767662

`A289626(n+1)+A003056(A015519(n))`
-/

namespace A347212.P1861910855922767662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (n + 1) + A003056 (A015519 n).toNat

end

end A347212.P1861910855922767662

/-! ## A347212.P6624665227969517259

`record[A034008(n)+A001221(A063179(n+1))]`
-/

namespace A347212.P6624665227969517259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + A001221 (A063179 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347212.P6624665227969517259

/-!
# A347221: Square array T(s,t), s >= 0, t >= 0, read by downward antidiagonals: T(s,t) is the number of nonnegative ordered triples (a,b,c) satisfying a+b+c <= s and a*b*c <= t.

The programs for A347221, there is no canonical definition to state claims against.
-/

/-! ## A347221.P1003427472393703158

`A304382(A195644(n+1))+3*A112367(n)`
-/

namespace A347221.P1003427472393703158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304382 (A195644 (n + 1)).toNat + 3 * A112367 n

end

end A347221.P1003427472393703158

/-! ## A347221.P1677153006745855101

`A261466(A183534(n+1)²)`
-/

namespace A347221.P1677153006745855101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A183534 (n + 1) ^ 2).toNat

end

end A347221.P1677153006745855101

/-! ## A347221.P7823828392557702278

`A022905(A002260(n+1)%A242323(n))`
-/

namespace A347221.P7823828392557702278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (Int.tmod (A002260 (n + 1)) (A242323 (n + 36))).toNat

end

end A347221.P7823828392557702278

/-! ## A347221.P16846807107585879298

`A007814(A286331(n))+A002260(n+1)²`
-/

namespace A347221.P16846807107585879298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A286331 n).toNat + A002260 (n + 1) ^ 2

end

end A347221.P16846807107585879298

/-! ## A347221.P4871322150591902526

`A007077(gcd(A002260(n+1), A094101(n+1)))`
-/

namespace A347221.P4871322150591902526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007077 (Int.gcd (A002260 (n + 1)) (A094101 (n + 1)))

end

end A347221.P4871322150591902526

/-!
# A347222: Numbers k for which sigma(k)/k = 12/5.

The programs for A347222, there is no canonical definition to state claims against.
-/

/-! ## A347222.P15517035371583314353

`lcm(5, A370789(n+1))`
-/

namespace A347222.P15517035371583314353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A370789 (n + 1))

end

end A347222.P15517035371583314353

/-! ## A347222.P14609976475016537106

`A218407(∑[A062494(n)])`
-/

namespace A347222.P14609976475016537106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347222.P14609976475016537106

/-!
# A347224: Irregular triangle whose n-th row lists the integers m such that the n-th necklace polynomial is divisible by the m-th cyclotomic polynomial.

The programs for A347224, there is no canonical definition to state claims against.
-/

/-! ## A347224.P7331781251047314684

`A347256(A328617(n+1)+1)`
-/

namespace A347224.P7331781251047314684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347256 (A328617 (n + 1) + 1).toNat

end

end A347224.P7331781251047314684

/-! ## A347224.P17841335233627252543

`A347256(n+2)%A087973(n+1)`
-/

namespace A347224.P17841335233627252543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347256 (n + 2)) (A087973 (n + 1))

end

end A347224.P17841335233627252543

/-! ## A347224.P13753891887653392954

`A347256(n+2)+A000007(A003404(n))`
-/

namespace A347224.P13753891887653392954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347256 (n + 2) + A000007 (A003404 n).toNat

end

end A347224.P13753891887653392954

/-! ## A347224.P4125036477670186843

`A347256(n+2)+A144553(A016825(n))`
-/

namespace A347224.P4125036477670186843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347256 (n + 2) + A144553 (A016825 n).toNat

end

end A347224.P4125036477670186843

/-! ## A347224.P8081534804671505933

`A347256(n+2)+A347245(A002961(n+1))`
-/

namespace A347224.P8081534804671505933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347256 (n + 2) + A347245 (A002961 (n + 1)).toNat

end

end A347224.P8081534804671505933

/-!
# A347225: Lesser of twin primes (A001359) being both half-period primes (A097443).

The programs for A347225, there is no canonical definition to state claims against.
-/

/-! ## A347225.P16290903499177223260

`∩[A001914(n+1)-2, A001914(n+1)]`
-/

namespace A347225.P16290903499177223260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347225.P16290903499177223260

/-! ## A347225.P12104673644691083163

`∩[A097443(n+1)-2, A097443(n+1)]`
-/

namespace A347225.P12104673644691083163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347225.P12104673644691083163

/-! ## A347225.P5782485882980803645

`∩[A001914(n+1), A083254(A001914(n+1))]`
-/

namespace A347225.P5782485882980803645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A001914 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347225.P5782485882980803645

/-! ## A347225.P9872728872470518082

`∩[A097443(n+1), A049820(A097443(n+1))]`
-/

namespace A347225.P9872728872470518082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A097443 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347225.P9872728872470518082

/-!
# A347226: Safe primes (A005385) that are half-period primes (A097443).

The programs for A347226, there is no canonical definition to state claims against.
-/

/-! ## A347226.P8103663047512774156

`∩[A001914(n+1), A005385(n+1)]`
-/

namespace A347226.P8103663047512774156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P8103663047512774156

/-! ## A347226.P8675919966551594632

`∩[A001914(n+1), A065966(n+1)]`
-/

namespace A347226.P8675919966551594632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P8675919966551594632

/-! ## A347226.P11395535350343401627

`∩[A001914(n+1), A072859(n+1)]`
-/

namespace A347226.P11395535350343401627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P11395535350343401627

/-! ## A347226.P9911161672465055007

`∩[A005385(n+1), A097443(n+1)]`
-/

namespace A347226.P9911161672465055007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P9911161672465055007

/-! ## A347226.P14607117714670324706

`∩[A065966(n+1), A097443(n+1)]`
-/

namespace A347226.P14607117714670324706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P14607117714670324706

/-! ## A347226.P3984110212114597936

`∩[A072859(n+1), A097443(n+1)]`
-/

namespace A347226.P3984110212114597936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P3984110212114597936

/-! ## A347226.P3175989425364304754

`∩[A001914(n+1), A395563(n+1)]`
-/

namespace A347226.P3175989425364304754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P3175989425364304754

/-! ## A347226.P18051432433918631916

`∩[A097443(n+1), A395563(n+1)]`
-/

namespace A347226.P18051432433918631916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P18051432433918631916

/-! ## A347226.P562696401890159362

`∩[A072859(n+1), A381590(n+1)]`
-/

namespace A347226.P562696401890159362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P562696401890159362

/-! ## A347226.P3819793371154269356

`∩[A005385(n+1), A007348(n+1)]`
-/

namespace A347226.P3819793371154269356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P3819793371154269356

/-! ## A347226.P7282984723496655943

`∩[A007348(n+1), A065966(n+1)]`
-/

namespace A347226.P7282984723496655943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P7282984723496655943

/-! ## A347226.P18319046298025492118

`∩[A007348(n+1), A072859(n+1)]`
-/

namespace A347226.P18319046298025492118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P18319046298025492118

/-! ## A347226.P16073340275056074500

`∩[A007348(n+1), A395563(n+1)]`
-/

namespace A347226.P16073340275056074500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P16073340275056074500

/-! ## A347226.P8319661410661551037

`∩[A005385(n+1), A105912(n+1)]`
-/

namespace A347226.P8319661410661551037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P8319661410661551037

/-! ## A347226.P4026857699253791895

`∩[A065966(n+1), A105912(n+1)]`
-/

namespace A347226.P4026857699253791895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P4026857699253791895

/-! ## A347226.P14192741670408681845

`∩[A105912(n+1), A395563(n+1)]`
-/

namespace A347226.P14192741670408681845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P14192741670408681845

/-! ## A347226.P14612373535065362600

`∩[A005385(n+1), A167806(n+1)]`
-/

namespace A347226.P14612373535065362600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P14612373535065362600

/-! ## A347226.P13707207853609220736

`∩[A065966(n+1), A167806(n+1)]`
-/

namespace A347226.P13707207853609220736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P13707207853609220736

/-! ## A347226.P15712935967781552373

`∩[A072859(n+1), A167806(n+1)]`
-/

namespace A347226.P15712935967781552373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P15712935967781552373

/-! ## A347226.P15752308472550886075

`∩[A167806(n+1), A395563(n+1)]`
-/

namespace A347226.P15752308472550886075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347226.P15752308472550886075

/-!
# A347227: Square array T(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{d|n} mu(d)*mu(n/d)*d^k.

The programs for A347227, there is no canonical definition to state claims against.
-/

/-! ## A347227.P11412489355832161823

`A130151(A112492(2*n+1))*A322083(n+1)`
-/

namespace A347227.P11412489355832161823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (A112492 (2 * n + 1)).toNat * A322083 (n + 1)

end

end A347227.P11412489355832161823

/-!
# A347228: Dirichlet inverse of A344695, gcd(sigma(n), psi(n)).

The programs for A347228, there is no canonical definition to state claims against.
-/

/-! ## A347228.P14430972634160709123

`A347229(n+1)-A344695(n+1)`
-/

namespace A347228.P14430972634160709123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) - A344695 (n + 1)

end

end A347228.P14430972634160709123

/-! ## A347228.P9072055440019095025

`A347229(n+1)-(A347231(n+1)+A347230(n+1))`
-/

namespace A347228.P9072055440019095025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) - (A347231 (n + 1) + A347230 (n + 1))

end

end A347228.P9072055440019095025

/-! ## A347228.P6975229679973884881

`A347229(n+1)-A000203(n+1)/A344696(n+1)`
-/

namespace A347228.P6975229679973884881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347229 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ)

end

end A347228.P6975229679973884881

/-! ## A347228.P13942648422390392668

`A347229(n+1)-A001615(n+1)/A344697(n+1)`
-/

namespace A347228.P13942648422390392668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347229 (n + 1) : ℚ) - (A001615 (n + 1) : ℚ) / (A344697 (n + 1) : ℚ)

end

end A347228.P13942648422390392668

/-! ## A347228.P1181477110275947592

`A347229(n+1)-(A244963(n+1)+A001615(n+1))/A344696(n+1)`
-/

namespace A347228.P1181477110275947592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347229 (n + 1) : ℚ) - (A244963 (n + 1) + A001615 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ)

end

end A347228.P1181477110275947592

/-! ## A347228.P17777704375147663194

`A347229(n+1)+A001489(A000203(n+1)/A344696(n+1))`
-/

namespace A347228.P17777704375147663194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) + A001489 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ))).toNat

end

end A347228.P17777704375147663194

/-! ## A347228.P3492782311292061138

`A347229(n+1)-A048250(A071975(n+1)²)`
-/

namespace A347228.P3492782311292061138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) - A048250 (A071975 (n + 1) ^ 2).toNat

end

end A347228.P3492782311292061138

/-!
# A347229: Sum of A344695 [gcd(sigma(n), psi(n))] and its Dirichlet inverse.

The programs for A347229, there is no canonical definition to state claims against.
-/

/-! ## A347229.P13572072060444835032

`A344695(n+1)+A347228(n+1)`
-/

namespace A347229.P13572072060444835032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (n + 1) + A347228 (n + 1)

end

end A347229.P13572072060444835032

/-! ## A347229.P6361567762566857328

`A347228(n+1)+∑{d}[n+1, A347230(#)]`
-/

namespace A347229.P6361567762566857328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347228 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A347230 d

end

end A347229.P6361567762566857328

/-! ## A347229.P4956884300469068462

`A347228(n+1)+A347231(n+1)+A347230(n+1)`
-/

namespace A347229.P4956884300469068462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347228 (n + 1) + (A347231 (n + 1) + A347230 (n + 1))

end

end A347229.P4956884300469068462

/-! ## A347229.P18011457306129825882

`A347228(n+1)+A001615(n+1)/A344697(n+1)`
-/

namespace A347229.P18011457306129825882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347228 (n + 1) : ℚ) + (A001615 (n + 1) : ℚ) / (A344697 (n + 1) : ℚ)

end

end A347229.P18011457306129825882

/-! ## A347229.P485531422500623005

`A347228(n+1)+gcd(A000203(n+1), A001615(n+1))`
-/

namespace A347229.P485531422500623005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347228 (n + 1) + (Int.gcd (A000203 (n + 1)) (A001615 (n + 1)) : ℤ)

end

end A347229.P485531422500623005

/-! ## A347229.P16750091232427476163

`A347228(n+1)+(A048146(n+1)+A034448(n+1))/A344696(n+1)`
-/

namespace A347229.P16750091232427476163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347228 (n + 1) : ℚ) + (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A344696 (n + 1) : ℚ)

end

end A347229.P16750091232427476163

/-! ## A347229.P2522745439153011224

`A347228(n+1)+A048250(A071975(n+1)²)`
-/

namespace A347229.P2522745439153011224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347228 (n + 1) + A048250 (A071975 (n + 1) ^ 2).toNat

end

end A347229.P2522745439153011224

/-!
# A347230: Möbius transform of A344695, gcd(sigma(n), psi(n)).

The programs for A347230, the canonical program `A347230.P544154842865914241` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347230 has offset 1).

The definition of A347230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347230.P12394803404088996240

`A344695(n+1)-A347231(n+1)`
-/

namespace A347230.P12394803404088996240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (n + 1) - A347231 (n + 1)

end

end A347230.P12394803404088996240

namespace A347230

/-- `A344695(n+1)-A347231(n+1)` -/
def P12394803404088996240.Spec : Prop :=
  ∀ n, P12394803404088996240.a n = A347230 (n + 1)

theorem P12394803404088996240.correct : P12394803404088996240.Spec := by
  intro n
  simp only [A347230, Nat.add_sub_cancel, A347230.P12394803404088996240.a, A347230.P544154842865914241.f1, A347230.P544154842865914241.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A344695, A344695.P9470126833009122734.a, A347231, A347231.P3260467072259426006.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347230

/-! ## A347230.P544154842865914241

`∑{d}[n+1, A008683(#)*A344695((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A347230

/-- `∑{d}[n+1, A008683(#)*A344695((n+1)/#)]` -/
def P544154842865914241.Spec : Prop :=
  ∀ n, P544154842865914241.a n = A347230 (n + 1)

theorem P544154842865914241.correct : P544154842865914241.Spec := by
  intro n
  simp only [A347230, Nat.add_sub_cancel]

end A347230

/-! ## A347230.P17577143582661293548

`A347229(n+1)-(A347231(n+1)+A347228(n+1))`
-/

namespace A347230.P17577143582661293548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) - (A347231 (n + 1) + A347228 (n + 1))

end

end A347230.P17577143582661293548

namespace A347230

/-- `A347229(n+1)-(A347231(n+1)+A347228(n+1))` -/
def P17577143582661293548.Spec : Prop :=
  ∀ n, P17577143582661293548.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P6933611730010636923

`A001615(n+1)/A344697(n+1)-A347231(n+1)`
-/

namespace A347230.P6933611730010636923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A344697 (n + 1) : ℚ) - (A347231 (n + 1) : ℚ)

end

end A347230.P6933611730010636923

namespace A347230

/-- `A001615(n+1)/A344697(n+1)-A347231(n+1)` -/
def P6933611730010636923.Spec : Prop :=
  ∀ n, P6933611730010636923.a n = (A347230 (n + 1) : ℚ)

end A347230

/-! ## A347230.P4807011553699260689

`gcd(A000203(n+1), A001615(n+1))-A347231(n+1)`
-/

namespace A347230.P4807011553699260689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000203 (n + 1)) (A001615 (n + 1)) : ℤ) - A347231 (n + 1)

end

end A347230.P4807011553699260689

namespace A347230

/-- `gcd(A000203(n+1), A001615(n+1))-A347231(n+1)` -/
def P4807011553699260689.Spec : Prop :=
  ∀ n, P4807011553699260689.a n = A347230 (n + 1)

theorem P4807011553699260689.correct : P4807011553699260689.Spec := by
  intro n
  simp only [A347230, Nat.add_sub_cancel, A347230.P4807011553699260689.a, A347230.P544154842865914241.f1, A347230.P544154842865914241.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001615, A001615.P12078511981713404634.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A344695, A344695.P9470126833009122734.a, A347231, A347231.P3260467072259426006.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347230

/-! ## A347230.P11501381941870913394

`A344695(n+1)-∑{d}[n+1, A157658(#)*A344695((n+1)/#)]`
-/

namespace A347230.P11501381941870913394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A157658 d * A344695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347230.P11501381941870913394

namespace A347230

/-- `A344695(n+1)-∑{d}[n+1, A157658(#)*A344695((n+1)/#)]` -/
def P11501381941870913394.Spec : Prop :=
  ∀ n, P11501381941870913394.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P6206050107284967913

`A008836(n+1)*A062953(A326578(n+1))`
-/

namespace A347230.P6206050107284967913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A062953 (A326578 (n + 1)).toNat

end

end A347230.P6206050107284967913

namespace A347230

/-- `A008836(n+1)*A062953(A326578(n+1))` -/
def P6206050107284967913.Spec : Prop :=
  ∀ n, P6206050107284967913.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P1048769507264480005

`A008836(n+1)*A062953(A129202(n))`
-/

namespace A347230.P1048769507264480005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A062953 (A129202 n).toNat

end

end A347230.P1048769507264480005

namespace A347230

/-- `A008836(n+1)*A062953(A129202(n))` -/
def P1048769507264480005.Spec : Prop :=
  ∀ n, P1048769507264480005.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P17516984219877303474

`A007947(n+1)*A008836(A064549(n+1))`
-/

namespace A347230.P17516984219877303474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008836 (A064549 (n + 1)).toNat

end

end A347230.P17516984219877303474

namespace A347230

/-- `A007947(n+1)*A008836(A064549(n+1))` -/
def P17516984219877303474.Spec : Prop :=
  ∀ n, P17516984219877303474.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P12710578427853142586

`A008836(n+1)*A062953(A064549(n+1))`
-/

namespace A347230.P12710578427853142586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A062953 (A064549 (n + 1)).toNat

end

end A347230.P12710578427853142586

namespace A347230

/-- `A008836(n+1)*A062953(A064549(n+1))` -/
def P12710578427853142586.Spec : Prop :=
  ∀ n, P12710578427853142586.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P13579701455082457387

`A008836(n+1)*A062953(A078615(n+1))`
-/

namespace A347230.P13579701455082457387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A062953 (A078615 (n + 1)).toNat

end

end A347230.P13579701455082457387

namespace A347230

/-- `A008836(n+1)*A062953(A078615(n+1))` -/
def P13579701455082457387.Spec : Prop :=
  ∀ n, P13579701455082457387.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P12883300408325285209

`A062953(n+1)*A076479(A055491(n+1))`
-/

namespace A347230.P12883300408325285209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) * A076479 (A055491 (n + 1)).toNat

end

end A347230.P12883300408325285209

namespace A347230

/-- `A062953(n+1)*A076479(A055491(n+1))` -/
def P12883300408325285209.Spec : Prop :=
  ∀ n, P12883300408325285209.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P10879654191425284068

`A008836(n+1)*A062953(A062953(n+1)²)`
-/

namespace A347230.P10879654191425284068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A062953 (A062953 (n + 1) ^ 2).toNat

end

end A347230.P10879654191425284068

namespace A347230

/-- `A008836(n+1)*A062953(A062953(n+1)²)` -/
def P10879654191425284068.Spec : Prop :=
  ∀ n, P10879654191425284068.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P17357719875366114601

`A015052(A015052(n+1)²)*A162511(n+1)`
-/

namespace A347230.P17357719875366114601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1) ^ 2).toNat * A162511 (n + 1)

end

end A347230.P17357719875366114601

namespace A347230

/-- `A015052(A015052(n+1)²)*A162511(n+1)` -/
def P17357719875366114601.Spec : Prop :=
  ∀ n, P17357719875366114601.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P16107803331778364860

`A015053(A015053(n+1)²)*A162511(n+1)`
-/

namespace A347230.P16107803331778364860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1) ^ 2).toNat * A162511 (n + 1)

end

end A347230.P16107803331778364860

namespace A347230

/-- `A015053(A015053(n+1)²)*A162511(n+1)` -/
def P16107803331778364860.Spec : Prop :=
  ∀ n, P16107803331778364860.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P13886973046271283266

`A007947(n+1)*A008836((n+1)*A007947(n+1))`
-/

namespace A347230.P13886973046271283266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008836 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A347230.P13886973046271283266

namespace A347230

/-- `A007947(n+1)*A008836((n+1)*A007947(n+1))` -/
def P13886973046271283266.Spec : Prop :=
  ∀ n, P13886973046271283266.a n = A347230 (n + 1)

end A347230

/-! ## A347230.P8344181702290550064

`A003557(A007947(n+1)²)*A008836(A003557(n+1))`
-/

namespace A347230.P8344181702290550064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007947 (n + 1) ^ 2).toNat * A008836 (A003557 (n + 1)).toNat

end

end A347230.P8344181702290550064

namespace A347230

/-- `A003557(A007947(n+1)²)*A008836(A003557(n+1))` -/
def P8344181702290550064.Spec : Prop :=
  ∀ n, P8344181702290550064.a n = A347230 (n + 1)

end A347230

/-!
# A347231: Difference between A344695 [gcd(psi(n),sigma(n))] and its Möbius transform.

The programs for A347231, the canonical program `A347231.P3260467072259426006` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347231 has offset 1).

The definition of A347231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347230, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347231.P3260467072259426006

`A344695(n+1)-A347230(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A347231

/-- `A344695(n+1)-A347230(n+1)` -/
def P3260467072259426006.Spec : Prop :=
  ∀ n, P3260467072259426006.a n = A347231 (n + 1)

theorem P3260467072259426006.correct : P3260467072259426006.Spec := by
  intro n
  simp only [A347231, Nat.add_sub_cancel]

end A347231

/-! ## A347231.P17227024716777539657

`∑{d}[n+1, A157658(#)*A344695((n+1)/#)]`
-/

namespace A347231.P17227024716777539657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A344695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347231.P17227024716777539657

namespace A347231

/-- `∑{d}[n+1, A157658(#)*A344695((n+1)/#)]` -/
def P17227024716777539657.Spec : Prop :=
  ∀ n, P17227024716777539657.a n = A347231 (n + 1)

end A347231

/-! ## A347231.P12852861300865896145

`∑{d}[n+1, A057427(#-1)*A347230((n+1)/#)]`
-/

namespace A347231.P12852861300865896145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A347230 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347231.P12852861300865896145

namespace A347231

/-- `∑{d}[n+1, A057427(#-1)*A347230((n+1)/#)]` -/
def P12852861300865896145.Spec : Prop :=
  ∀ n, P12852861300865896145.a n = A347231 (n + 1)

end A347231

/-! ## A347231.P10940445858286756810

`A347229(n+1)-(A347230(n+1)+A347228(n+1))`
-/

namespace A347231.P10940445858286756810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347229 (n + 1) - (A347230 (n + 1) + A347228 (n + 1))

end

end A347231.P10940445858286756810

namespace A347231

/-- `A347229(n+1)-(A347230(n+1)+A347228(n+1))` -/
def P10940445858286756810.Spec : Prop :=
  ∀ n, P10940445858286756810.a n = A347231 (n + 1)

end A347231

/-! ## A347231.P17204092057701805279

`A001615(n+1)/A344697(n+1)-A347230(n+1)`
-/

namespace A347231.P17204092057701805279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A344697 (n + 1) : ℚ) - (A347230 (n + 1) : ℚ)

end

end A347231.P17204092057701805279

namespace A347231

/-- `A001615(n+1)/A344697(n+1)-A347230(n+1)` -/
def P17204092057701805279.Spec : Prop :=
  ∀ n, P17204092057701805279.a n = (A347231 (n + 1) : ℚ)

end A347231

/-! ## A347231.P12235863618446298913

`gcd(A000203(n+1), A001615(n+1))-A347230(n+1)`
-/

namespace A347231.P12235863618446298913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000203 (n + 1)) (A001615 (n + 1)) : ℤ) - A347230 (n + 1)

end

end A347231.P12235863618446298913

namespace A347231

/-- `gcd(A000203(n+1), A001615(n+1))-A347230(n+1)` -/
def P12235863618446298913.Spec : Prop :=
  ∀ n, P12235863618446298913.a n = A347231 (n + 1)

end A347231

/-! ## A347231.P3432393216450499764

`A048250(A055491(n+1))-A347230(n+1)`
-/

namespace A347231.P3432393216450499764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A055491 (n + 1)).toNat - A347230 (n + 1)

end

end A347231.P3432393216450499764

namespace A347231

/-- `A048250(A055491(n+1))-A347230(n+1)` -/
def P3432393216450499764.Spec : Prop :=
  ∀ n, P3432393216450499764.a n = A347231 (n + 1)

end A347231

/-!
# A347232: a(n) = A346485(A276086(n)), where A346485 is Möbius transform of A342001.

The programs for A347232, there is no canonical definition to state claims against.
-/

/-! ## A347232.P13320072310435119837

`A346485(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347232.P13320072310435119837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346485 (A276086 n).toNat

end

end A347232.P13320072310435119837

/-! ## A347232.P15422220696137936574

`A346485(gcd(A328571(n)², A346101(n)))`
-/

namespace A347232.P15422220696137936574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346485 (Int.gcd (A328571 n ^ 2) (A346101 n))

end

end A347232.P15422220696137936574

/-! ## A347232.P12610434886423553593

`A369068(A346101(n))`
-/

namespace A347232.P12610434886423553593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369068 (A346101 n).toNat

end

end A347232.P12610434886423553593

/-! ## A347232.P18413205659194068822

`A369068(A351225(n)+n)`
-/

namespace A347232.P18413205659194068822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369068 (A351225 n + (n : ℤ)).toNat

end

end A347232.P18413205659194068822

/-! ## A347232.P1846556460057719373

`A369068(A276086(n))%A005993(n)`
-/

namespace A347232.P1846556460057719373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369068 (A276086 n).toNat) (A005993 n)

end

end A347232.P1846556460057719373

/-! ## A347232.P15542679103394457201

`A369068(A276086(n)%A107601(n))`
-/

namespace A347232.P15542679103394457201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369068 (Int.tmod (A276086 n) (A107601 n)).toNat

end

end A347232.P15542679103394457201

/-!
# A347233: Möbius transform of A126760.

The programs for A347233, there is no canonical definition to state claims against.
-/

/-! ## A347233.P16584370118575749050

`A126760(n+1)-A359165(n+1)`
-/

namespace A347233.P16584370118575749050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (n + 1) - A359165 (n + 1)

end

end A347233.P16584370118575749050

/-! ## A347233.P4632720053269741351

`∑{d}[n+1, A008683(#)*A126760((n+1)/#)]`
-/

namespace A347233.P4632720053269741351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A126760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347233.P4632720053269741351

/-! ## A347233.P6768552691550140310

`∑{d}[n+1, A007427(#)*A349393((n+1)/#)]`
-/

namespace A347233.P6768552691550140310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A349393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347233.P6768552691550140310

/-! ## A347233.P6689460427297675611

`∑{d}[n+1, A007428(#)*A349392((n+1)/#)]`
-/

namespace A347233.P6689460427297675611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A349392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347233.P6689460427297675611

/-! ## A347233.P11495656549282586918

`∑{d}[n+1, A271102(#)*A349395((n+1)/#)]`
-/

namespace A347233.P11495656549282586918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A349395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347233.P11495656549282586918

/-! ## A347233.P851383174881221438

`∑{d}[n+1, A349136(#)*A353460((n+1)/#)]`
-/

namespace A347233.P851383174881221438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349136 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347233.P851383174881221438

/-! ## A347233.P6432665439766513178

`A323882(n+1)-(A359165(n+1)+A323881(n+1))`
-/

namespace A347233.P6432665439766513178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - (A359165 (n + 1) + A323881 (n + 1))

end

end A347233.P6432665439766513178

/-! ## A347233.P16272737063931499101

`A359165(2*(n+1))-A359165(n+1)`
-/

namespace A347233.P16272737063931499101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (2 * (n + 1)) - A359165 (n + 1)

end

end A347233.P16272737063931499101

/-! ## A347233.P2750821650488630747

`A349339(A174571(2*n)+1)`
-/

namespace A347233.P2750821650488630747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349339 (A174571 (2 * n) + 1).toNat

end

end A347233.P2750821650488630747

/-! ## A347233.P14884017270975532888

`A059841(n)*A349339(A008619(n))`
-/

namespace A347233.P14884017270975532888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A349339 (A008619 n).toNat

end

end A347233.P14884017270975532888

/-! ## A347233.P4976789383203097448

`A059841(n)*A349339(∑[A059841(n)])`
-/

namespace A347233.P4976789383203097448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A349339 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A347233.P4976789383203097448

/-!
# A347234: Dirichlet convolution of A126760 with A342001.

The programs for A347234, there is no canonical definition to state claims against.
-/

/-! ## A347234.P17893155633828386946

`∑{d}[n+1, A126760(#)*A342001((n+1)/#)]`
-/

namespace A347234.P17893155633828386946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126760 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347234.P17893155633828386946

/-! ## A347234.P835712488671139485

`∑{d}[n+1, A346485(#)*A349393((n+1)/#)]`
-/

namespace A347234.P835712488671139485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346485 d * A349393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347234.P835712488671139485

/-! ## A347234.P2862394499826602295

`∑{d}[n+1, A347954(#)*A353460((n+1)/#)]`
-/

namespace A347234.P2862394499826602295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347954 d * A353460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347234.P2862394499826602295

/-!
# A347235: Dirichlet convolution of Euler phi with A342001, where A342001(n) = A003415(n) / A003557(n).

The programs for A347235, the canonical program `A347235.P16853851459347298711` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347235 has offset 1).

The definition of A347235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347235.P16853851459347298711

`∑{d}[n+1, #*A346485((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A347235

/-- `∑{d}[n+1, #*A346485((n+1)/#)]` -/
def P16853851459347298711.Spec : Prop :=
  ∀ n, P16853851459347298711.a n = A347235 (n + 1)

theorem P16853851459347298711.correct : P16853851459347298711.Spec := by
  intro n
  simp only [A347235, Nat.add_sub_cancel]

end A347235

/-! ## A347235.P11131156010046275508

`∑{d}[n+1, A000010(#)*A342001((n+1)/#)]`
-/

namespace A347235.P11131156010046275508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A342001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347235.P11131156010046275508

namespace A347235

/-- `∑{d}[n+1, A000010(#)*A342001((n+1)/#)]` -/
def P11131156010046275508.Spec : Prop :=
  ∀ n, P11131156010046275508.a n = A347235 (n + 1)

end A347235

/-! ## A347235.P11044320766872851028

`∑{d}[n+1, A003966(#)*A347963((n+1)/#)]`
-/

namespace A347235.P11044320766872851028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A347963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347235.P11044320766872851028

namespace A347235

/-- `∑{d}[n+1, A003966(#)*A347963((n+1)/#)]` -/
def P11044320766872851028.Spec : Prop :=
  ∀ n, P11044320766872851028.a n = A347235 (n + 1)

end A347235

/-! ## A347235.P16933970736760101724

`∑{d}[n+1, A018804(#)*A349396((n+1)/#)]`
-/

namespace A347235.P16933970736760101724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A349396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347235.P16933970736760101724

namespace A347235

/-- `∑{d}[n+1, A018804(#)*A349396((n+1)/#)]` -/
def P16933970736760101724.Spec : Prop :=
  ∀ n, P16933970736760101724.a n = A347235 (n + 1)

end A347235

/-! ## A347235.P6248656659463793335

`∑{d}[n+1, A063659(#)*A347395((n+1)/#)]`
-/

namespace A347235.P6248656659463793335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A347395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347235.P6248656659463793335

namespace A347235

/-- `∑{d}[n+1, A063659(#)*A347395((n+1)/#)]` -/
def P6248656659463793335.Spec : Prop :=
  ∀ n, P6248656659463793335.a n = A347235 (n + 1)

end A347235

/-! ## A347235.P11784371522223203693

`∑{d}[n+1, A176345(#)*A349612((n+1)/#)]`
-/

namespace A347235.P11784371522223203693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176345 d * A349612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347235.P11784371522223203693

namespace A347235

/-- `∑{d}[n+1, A176345(#)*A349612((n+1)/#)]` -/
def P11784371522223203693.Spec : Prop :=
  ∀ n, P11784371522223203693.a n = A347235 (n + 1)

end A347235

/-!
# A347236: a(n) = Sum_{d|n} A061019(d) * A003961(n/d), where A061019 negates the primes in the prime factorization, while A003961 shifts the factorization one step towards larger primes.

The programs for A347236, the canonical program `A347236.P7854495597392681081` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347236 has offset 1).

The definition of A347236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347236.P13892655488517127951

`A347239(n+1)-A347238(n+1)`
-/

namespace A347236.P13892655488517127951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347239 (n + 1) - A347238 (n + 1)

end

end A347236.P13892655488517127951

namespace A347236

/-- `A347239(n+1)-A347238(n+1)` -/
def P13892655488517127951.Spec : Prop :=
  ∀ n, P13892655488517127951.a n = A347236 (n + 1)

theorem P13892655488517127951.correct : P13892655488517127951.Spec := by
  intro n
  simp only [A347236, Nat.add_sub_cancel, A347236.P13892655488517127951.a, A347236.P7854495597392681081.f1, A347236.P7854495597392681081.a, A298473, A298473.P4129261461603736948.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A347238, A347238.P10622730690257648846.f1, A347238.P10622730690257648846.a, A347239, A347239.P8303490879322250829.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A336845, A336845.P11271818747595827461.a, A346234, A346234.P13693537449081961436.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347236

/-! ## A347236.P13002537531639077731

`∑{d}[n+1, A347237(#)]`
-/

namespace A347236.P13002537531639077731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347237 d

end

end A347236.P13002537531639077731

namespace A347236

/-- `∑{d}[n+1, A347237(#)]` -/
def P13002537531639077731.Spec : Prop :=
  ∀ n, P13002537531639077731.a n = A347236 (n + 1)

end A347236

/-! ## A347236.P5573800311499744888

`∑{d}[n+1, A003961(#)*A061019((n+1)/#)]`
-/

namespace A347236.P5573800311499744888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P5573800311499744888

namespace A347236

/-- `∑{d}[n+1, A003961(#)*A061019((n+1)/#)]` -/
def P5573800311499744888.Spec : Prop :=
  ∀ n, P5573800311499744888.a n = A347236 (n + 1)

end A347236

/-! ## A347236.P586075186664068728

`∑{d}[n+1, A003972(#)*A061020((n+1)/#)]`
-/

namespace A347236.P586075186664068728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P586075186664068728

namespace A347236

/-- `∑{d}[n+1, A003972(#)*A061020((n+1)/#)]` -/
def P586075186664068728.Spec : Prop :=
  ∀ n, P586075186664068728.a n = A347236 (n + 1)

end A347236

/-! ## A347236.P4124979852975332464

`∑{d}[n+1, A003973(#)*A158523((n+1)/#)]`
-/

namespace A347236.P4124979852975332464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P4124979852975332464

namespace A347236

/-- `∑{d}[n+1, A003973(#)*A158523((n+1)/#)]` -/
def P4124979852975332464.Spec : Prop :=
  ∀ n, P4124979852975332464.a n = A347236 (n + 1)

end A347236

/-! ## A347236.P12749120220818451850

`∑{d}[n+1, A035316(#)*A378606((n+1)/#)]`
-/

namespace A347236.P12749120220818451850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P12749120220818451850

namespace A347236

/-- `∑{d}[n+1, A035316(#)*A378606((n+1)/#)]` -/
def P12749120220818451850.Spec : Prop :=
  ∀ n, P12749120220818451850.a n = A347236 (n + 1)

end A347236

/-! ## A347236.P7854495597392681081

`∑{d}[n+1, A298473(#)*A347136((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347236

/-- `∑{d}[n+1, A298473(#)*A347136((n+1)/#)]` -/
def P7854495597392681081.Spec : Prop :=
  ∀ n, P7854495597392681081.a n = A347236 (n + 1)

theorem P7854495597392681081.correct : P7854495597392681081.Spec := by
  intro n
  simp only [A347236, Nat.add_sub_cancel]

end A347236

/-! ## A347236.P8906372640298117334

`A347239(n+1)-∑{d}[A007947(n+1), #*A346234((n+1)/#)]`
-/

namespace A347236.P8906372640298117334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347239 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347236.P8906372640298117334

namespace A347236

/-- `A347239(n+1)-∑{d}[A007947(n+1), #*A346234((n+1)/#)]` -/
def P8906372640298117334.Spec : Prop :=
  ∀ n, P8906372640298117334.a n = A347236 (n + 1)

theorem P8906372640298117334.correct : P8906372640298117334.Spec := by
  intro n
  simp only [A347236, Nat.add_sub_cancel, A347236.P8906372640298117334.f1, A347236.P8906372640298117334.a, A347236.P7854495597392681081.f1, A347236.P7854495597392681081.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A298473, A298473.P4129261461603736948.a, A346234, A346234.P13693537449081961436.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A347239, A347239.P8303490879322250829.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003961, A003961.P5996473960037614004.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A336845, A336845.P11271818747595827461.a, A347238, A347238.P10622730690257648846.f1, A347238.P10622730690257648846.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347236

/-!
# A347237: Möbius transform of A347236.

The programs for A347237, the canonical program `A347237.P399102674569037639` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347237 has offset 1).

The definition of A347237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347237.P1598700001111661817

`∑{d}[n+1, A003972(#)*A061019((n+1)/#)]`
-/

namespace A347237.P1598700001111661817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347237.P1598700001111661817

namespace A347237

/-- `∑{d}[n+1, A003972(#)*A061019((n+1)/#)]` -/
def P1598700001111661817.Spec : Prop :=
  ∀ n, P1598700001111661817.a n = A347237 (n + 1)

end A347237

/-! ## A347237.P6891302886944875108

`∑{d}[n+1, A003961(#)*A158523((n+1)/#)]`
-/

namespace A347237.P6891302886944875108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347237.P6891302886944875108

namespace A347237

/-- `∑{d}[n+1, A003961(#)*A158523((n+1)/#)]` -/
def P6891302886944875108.Spec : Prop :=
  ∀ n, P6891302886944875108.a n = A347237 (n + 1)

end A347237

/-! ## A347237.P399102674569037639

`∑{d}[n+1, A008683(#)*A347236((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347237

/-- `∑{d}[n+1, A008683(#)*A347236((n+1)/#)]` -/
def P399102674569037639.Spec : Prop :=
  ∀ n, P399102674569037639.a n = A347237 (n + 1)

theorem P399102674569037639.correct : P399102674569037639.Spec := by
  intro n
  simp only [A347237, Nat.add_sub_cancel]

end A347237

/-! ## A347237.P3567188960088226192

`∑{d}[n+1, A298473(#)*A347137((n+1)/#)]`
-/

namespace A347237.P3567188960088226192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A347137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347237.P3567188960088226192

namespace A347237

/-- `∑{d}[n+1, A298473(#)*A347137((n+1)/#)]` -/
def P3567188960088226192.Spec : Prop :=
  ∀ n, P3567188960088226192.a n = A347237 (n + 1)

end A347237

/-! ## A347237.P5598187075842603441

`∑{d}[n+1, A349387(#)*A358272((n+1)/#)]`
-/

namespace A347237.P5598187075842603441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349387 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347237.P5598187075842603441

namespace A347237

/-- `∑{d}[n+1, A349387(#)*A358272((n+1)/#)]` -/
def P5598187075842603441.Spec : Prop :=
  ∀ n, P5598187075842603441.a n = A347237 (n + 1)

end A347237

/-!
# A347238: Dirichlet inverse of A347236.

The programs for A347238, the canonical program `A347238.P10622730690257648846` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347238 has offset 1).

The definition of A347238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347238.P2506390857452182279

`A347239(n+1)-A347236(n+1)`
-/

namespace A347238.P2506390857452182279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347239 (n + 1) - A347236 (n + 1)

end

end A347238.P2506390857452182279

namespace A347238

/-- `A347239(n+1)-A347236(n+1)` -/
def P2506390857452182279.Spec : Prop :=
  ∀ n, P2506390857452182279.a n = A347238 (n + 1)

theorem P2506390857452182279.correct : P2506390857452182279.Spec := by
  intro n
  simp only [A347238, Nat.add_sub_cancel, A347238.P2506390857452182279.a, A347238.P10622730690257648846.f1, A347238.P10622730690257648846.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A346234, A346234.P13693537449081961436.a, A347236, A347236.P7854495597392681081.f1, A347236.P7854495597392681081.a, A347239, A347239.P8303490879322250829.a, A003961, A003961.P5996473960037614004.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A298473, A298473.P4129261461603736948.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A336845, A336845.P11271818747595827461.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347238

/-! ## A347238.P10622730690257648846

`∑{d}[A007947(n+1), #*A346234((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347238

/-- `∑{d}[A007947(n+1), #*A346234((n+1)/#)]` -/
def P10622730690257648846.Spec : Prop :=
  ∀ n, P10622730690257648846.a n = A347238 (n + 1)

theorem P10622730690257648846.correct : P10622730690257648846.Spec := by
  intro n
  simp only [A347238, Nat.add_sub_cancel]

end A347238

/-! ## A347238.P8365227538723834854

`∑{d}[n+1, A048250(#)*A378221((n+1)/#)]`
-/

namespace A347238.P8365227538723834854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347238.P8365227538723834854

namespace A347238

/-- `∑{d}[n+1, A048250(#)*A378221((n+1)/#)]` -/
def P8365227538723834854.Spec : Prop :=
  ∀ n, P8365227538723834854.a n = A347238 (n + 1)

end A347238

/-! ## A347238.P1371311881157468179

`A347239(n+1)-∑{d}[n+1, A003972(#)*A061020((n+1)/#)]`
-/

namespace A347238.P1371311881157468179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347239 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A003972 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347238.P1371311881157468179

namespace A347238

/-- `A347239(n+1)-∑{d}[n+1, A003972(#)*A061020((n+1)/#)]` -/
def P1371311881157468179.Spec : Prop :=
  ∀ n, P1371311881157468179.a n = A347238 (n + 1)

end A347238

/-! ## A347238.P9451124474609753981

`A347239(n+1)-∑{d}[n+1, A003973(#)*A158523((n+1)/#)]`
-/

namespace A347238.P9451124474609753981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347239 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A003973 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347238.P9451124474609753981

namespace A347238

/-- `A347239(n+1)-∑{d}[n+1, A003973(#)*A158523((n+1)/#)]` -/
def P9451124474609753981.Spec : Prop :=
  ∀ n, P9451124474609753981.a n = A347238 (n + 1)

end A347238

/-!
# A347239: Sum of A347236 and its Dirichlet inverse.

The programs for A347239, the canonical program `A347239.P8303490879322250829` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347239 has offset 1).

The definition of A347239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347239.P8303490879322250829

`A347236(n+1)+A347238(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347239

/-- `A347236(n+1)+A347238(n+1)` -/
def P8303490879322250829.Spec : Prop :=
  ∀ n, P8303490879322250829.a n = A347239 (n + 1)

theorem P8303490879322250829.correct : P8303490879322250829.Spec := by
  intro n
  simp only [A347239, Nat.add_sub_cancel]

end A347239

/-! ## A347239.P9241326127568316467

`A347238(n+1)+∑{d}[n+1, A347237(#)]`
-/

namespace A347239.P9241326127568316467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347238 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A347237 d

end

end A347239.P9241326127568316467

namespace A347239

/-- `A347238(n+1)+∑{d}[n+1, A347237(#)]` -/
def P9241326127568316467.Spec : Prop :=
  ∀ n, P9241326127568316467.a n = A347239 (n + 1)

end A347239

/-! ## A347239.P45523117595036305

`A347238(n+1)+∑{d}[n+1, A003972(#)*A061020((n+1)/#)]`
-/

namespace A347239.P45523117595036305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347238 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003972 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347239.P45523117595036305

namespace A347239

/-- `A347238(n+1)+∑{d}[n+1, A003972(#)*A061020((n+1)/#)]` -/
def P45523117595036305.Spec : Prop :=
  ∀ n, P45523117595036305.a n = A347239 (n + 1)

end A347239

/-! ## A347239.P12168970328300184905

`A347238(n+1)+∑{d}[n+1, A003973(#)*A158523((n+1)/#)]`
-/

namespace A347239.P12168970328300184905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347238 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A003973 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347239.P12168970328300184905

namespace A347239

/-- `A347238(n+1)+∑{d}[n+1, A003973(#)*A158523((n+1)/#)]` -/
def P12168970328300184905.Spec : Prop :=
  ∀ n, P12168970328300184905.a n = A347239 (n + 1)

end A347239

/-! ## A347239.P4210879040700753650

`A347238(n+1)+∑{d}[n+1, A298473(#)*A347136((n+1)/#)]`
-/

namespace A347239.P4210879040700753650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347238 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A298473 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347239.P4210879040700753650

namespace A347239

/-- `A347238(n+1)+∑{d}[n+1, A298473(#)*A347136((n+1)/#)]` -/
def P4210879040700753650.Spec : Prop :=
  ∀ n, P4210879040700753650.a n = A347239 (n + 1)

theorem P4210879040700753650.correct : P4210879040700753650.Spec := by
  intro n
  simp only [A347239, Nat.add_sub_cancel, A347239.P4210879040700753650.f1, A347239.P4210879040700753650.a, A347239.P8303490879322250829.a, A298473, A298473.P4129261461603736948.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A347236, A347236.P7854495597392681081.f1, A347236.P7854495597392681081.a, A347238, A347238.P10622730690257648846.f1, A347238.P10622730690257648846.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A336845, A336845.P11271818747595827461.a, A346234, A346234.P13693537449081961436.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347239

/-!
# A347240: a(n) is the largest prime factor (A006530) of all terms encountered when iterating the map x -> A000593(x), when starting from x = n, but excluding the n itself. If n is a power of 2, then a(n) = 1. If 1 is never reached, then a(n) = -1.

The programs for A347240, there is no canonical definition to state claims against.
-/

/-! ## A347240.P15291711878689285426

`A347241(A000593(n+1))`
-/

namespace A347240.P15291711878689285426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (A000593 (n + 1)).toNat

end

end A347240.P15291711878689285426

/-! ## A347240.P9321920530375415844

`A347241(A326990(n+1)+1)`
-/

namespace A347240.P9321920530375415844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (A326990 (n + 1) + 1).toNat

end

end A347240.P9321920530375415844

/-! ## A347240.P14658777392590371375

`A347241(∑{d}[A000265(n+1), #])`
-/

namespace A347240.P14658777392590371375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A347240.P14658777392590371375

/-! ## A347240.P10003358327993884072

`A347241(A326125(n+1)/(n+1))`
-/

namespace A347240.P10003358327993884072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (SequenceMachineLib.roundAway ((A326125 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A347240.P10003358327993884072

/-! ## A347240.P17258856905609435664

`A347241(∑{d}[2*A025480(n)+1, #])`
-/

namespace A347240.P17258856905609435664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A347240.P17258856905609435664

/-! ## A347240.P13158506786867751223

`A347241(A146076(n+1)+A002129(n+1))`
-/

namespace A347240.P13158506786867751223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347241 (A146076 (n + 1) + A002129 (n + 1)).toNat

end

end A347240.P13158506786867751223

/-! ## A347240.P11050301822658832109

`A006530(A000593(lcm(n+1, A000593(n+1))))`
-/

namespace A347240.P11050301822658832109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000593 (Int.lcm (n + 1 : ℤ) (A000593 (n + 1)))).toNat

end

end A347240.P11050301822658832109

/-! ## A347240.P12037222355956321290

`A085392(A000593(n+1)*A000593(A000593(n+1)))`
-/

namespace A347240.P12037222355956321290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A000593 (n + 1) * A000593 (A000593 (n + 1)).toNat).toNat

end

end A347240.P12037222355956321290

/-!
# A347241: a(1) = 1, and for n > 1, a(n) is the largest prime factor (A006530) of all terms encountered when iterating the map x -> A000593(x), when starting from x = n, and including the n itself. If 1 is never reached when starting from n, then a(n) = -1.

The programs for A347241, there is no canonical definition to state claims against.
-/

/-! ## A347241.P15158267233919947507

`A006530((n+1)*A347240(n+1))`
-/

namespace A347241.P15158267233919947507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A347240 (n + 1)).toNat

end

end A347241.P15158267233919947507

/-! ## A347241.P1961823373893746251

`A006530(lcm(n+1, A347240(n+1)))`
-/

namespace A347241.P1961823373893746251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (n + 1 : ℤ) (A347240 (n + 1)))

end

end A347241.P1961823373893746251

/-! ## A347241.P8737143959031858176

`A025492(A053585(∏{p}[n+1, #])*A347240(n+1))`
-/

namespace A347241.P8737143959031858176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p) * A347240 (n + 1)).toNat

end

end A347241.P8737143959031858176

/-! ## A347241.P647072686656133820

`A053585(∏{p}[A053585(n+1)*A347240(n+1), #])`
-/

namespace A347241.P647072686656133820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) * A347240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A347241.P647072686656133820

/-! ## A347241.P739048862600623189

`A025492(A088387(∏{p}[n+1, #])*A347240(n+1))`
-/

namespace A347241.P739048862600623189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A088387 (∏ p ∈ Nat.primeFactors (f1 n), p) * A347240 (n + 1)).toNat

end

end A347241.P739048862600623189

/-! ## A347241.P15124948200939398876

`A025492(A223491(∏{p}[n+1, #])*A347240(n+1))`
-/

namespace A347241.P15124948200939398876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A223491 (∏ p ∈ Nat.primeFactors (f1 n), p) * A347240 (n + 1)).toNat

end

end A347241.P15124948200939398876

/-! ## A347241.P4366686571918439415

`A284695(A223491(∏{p}[n+1, #])*A347240(n+1))`
-/

namespace A347241.P4366686571918439415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A223491 (∏ p ∈ Nat.primeFactors (f1 n), p) * A347240 (n + 1)).toNat

end

end A347241.P4366686571918439415

/-! ## A347241.P6362919262459876588

`A085392(A103517(n)*A347240(n+1))`
-/

namespace A347241.P6362919262459876588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A103517 n * A347240 (n + 1)).toNat

end

end A347241.P6362919262459876588

/-! ## A347241.P6238587629230790149

`A085392(lcm(A103517(n), A347240(n+1)))`
-/

namespace A347241.P6238587629230790149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Int.lcm (A103517 n) (A347240 (n + 1)))

end

end A347241.P6238587629230790149

/-!
# A347242: Numbers k such that when iterating the map x -> A000593(x), at some point before 1 is reached (after starting from x=k), a term is encountered whose largest prime factor is at least as large as A006530(k).

The programs for A347242, there is no canonical definition to state claims against.
-/

/-! ## A347242.P2243141194350749254

`eq[1, A347244(n+1)]+1`
-/

namespace A347242.P2243141194350749254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347242.P2243141194350749254

/-! ## A347242.P16519757375340588768

`comp[n-n*A347245(n+1)]+1`
-/

namespace A347242.P16519757375340588768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * A347245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347242.P16519757375340588768

/-! ## A347242.P9852314288444069979

`eq[1, A347244(A004277(n))]`
-/

namespace A347242.P9852314288444069979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347242.P9852314288444069979

/-! ## A347242.P15922406865782030407

`eq[1, A347244(A008574(n))]`
-/

namespace A347242.P15922406865782030407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347242.P15922406865782030407

/-! ## A347242.P13127292348734156764

`eq[1, A347244(A028310(n))]`
-/

namespace A347242.P13127292348734156764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347242.P13127292348734156764

/-! ## A347242.P6119170133579485078

`filter[A089088(n), A347244(#)]`
-/

namespace A347242.P6119170133579485078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347244 (f1 j).toNat = 1) n)

end

end A347242.P6119170133579485078

/-! ## A347242.P3375502502806788005

`filter[A116451(n), A347244(#)]`
-/

namespace A347242.P3375502502806788005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347244 (f1 j).toNat = 1) n)

end

end A347242.P3375502502806788005

/-! ## A347242.P3403598379982776297

`A020725(eq[1, A347244(n+1)])`
-/

namespace A347242.P3403598379982776297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347242.P3403598379982776297

/-! ## A347242.P8197528667680148990

`A061767(eq[1, A347244(n+1)])`
-/

namespace A347242.P8197528667680148990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347242.P8197528667680148990

/-! ## A347242.P7037943296846571568

`A113484(eq[1, A347244(n+1)])`
-/

namespace A347242.P7037943296846571568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A347242.P7037943296846571568

/-!
# A347243: Numbers k such that when iterating the map x -> A000593(x), we will not encounter a term x (after the starting point x=k) whose largest prime factor would be at least as large as A006530(k), before 1 is eventually reached.

The programs for A347243, there is no canonical definition to state claims against.
-/

/-! ## A347243.P1086928892488244128

`eq[0, A347244(n+1)]+1`
-/

namespace A347243.P1086928892488244128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347243.P1086928892488244128

/-! ## A347243.P4524928419265667119

`eq[0, A347245(n+1)]+1`
-/

namespace A347243.P4524928419265667119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347243.P4524928419265667119

/-! ## A347243.P14701098978626010388

`comp[A347242(n+1)-1]+1`
-/

namespace A347243.P14701098978626010388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347242 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347243.P14701098978626010388

/-! ## A347243.P7385948640169149405

`lt[A347244(2*(n+1)), 1]+1`
-/

namespace A347243.P7385948640169149405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347244 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347243.P7385948640169149405

/-! ## A347243.P9498829975915338362

`lt[A347245(2*(n+1)), 1]+1`
-/

namespace A347243.P9498829975915338362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347243.P9498829975915338362

/-! ## A347243.P9512206588861390483

`A122132(comp[A121929(n)])`
-/

namespace A347243.P9512206588861390483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121929 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A347243.P9512206588861390483

/-! ## A347243.P12147198810225843970

`lt[n*A347244(A008574(n)), n]`
-/

namespace A347243.P12147198810225843970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A347244 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347243.P12147198810225843970

/-! ## A347243.P16275738856479655905

`A122132(comp[A044232(n+1)]+1)`
-/

namespace A347243.P16275738856479655905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A347243.P16275738856479655905

/-! ## A347243.P17458751301166210234

`comp[A023443(A347242(n+1))]+1`
-/

namespace A347243.P17458751301166210234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A347242 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347243.P17458751301166210234

/-! ## A347243.P11936127773528737205

`record[n+1-A000203(n+1)*A347245(n+1)]`
-/

namespace A347243.P11936127773528737205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (n + 1) * A347245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347243.P11936127773528737205

/-!
# A347244: Characteristic function of A347242.

The programs for A347244, there is no canonical definition to state claims against.
-/

/-! ## A347244.P9388158818594482399

`floor(sqrt(A347245(n+1)))`
-/

namespace A347244.P9388158818594482399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A347245 (n + 1))

end

end A347244.P9388158818594482399

/-! ## A347244.P13636642971042606272

`ceil(A347245(2*(n+1))/3)`
-/

namespace A347244.P13636642971042606272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347245 (2 * (n + 1)) : ℚ) / 3⌉

end

end A347244.P13636642971042606272

/-! ## A347244.P3525723110563172041

`A057427(A038573(n)*A347245(n+1))`
-/

namespace A347244.P3525723110563172041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A038573 n * A347245 (n + 1)).toNat

end

end A347244.P3525723110563172041

/-! ## A347244.P11123825871653049962

`A057427(A053735(n)*A347245(n+1))`
-/

namespace A347244.P11123825871653049962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A053735 n * A347245 (n + 1)).toNat

end

end A347244.P11123825871653049962

/-! ## A347244.P11458291192981517578

`A057427(A027746(n+1)*A347245(n+1))`
-/

namespace A347244.P11458291192981517578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A027746 (n + 1) * A347245 (n + 1)).toNat

end

end A347244.P11458291192981517578

/-! ## A347244.P5858262623391356141

`A057427(A342414(n+4)*A347245(n+1))`
-/

namespace A347244.P5858262623391356141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A342414 (n + 4) * A347245 (n + 1)).toNat

end

end A347244.P5858262623391356141

/-! ## A347244.P1737857657625081541

`A043545(n*A347245(n+1))`
-/

namespace A347244.P1737857657625081541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 ((n : ℤ) * A347245 (n + 1)).toNat

end

end A347244.P1737857657625081541

/-! ## A347244.P4127270531093630976

`A057427(n*A347245(n+1))`
-/

namespace A347244.P4127270531093630976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n : ℤ) * A347245 (n + 1)).toNat

end

end A347244.P4127270531093630976

/-! ## A347244.P4207808122812082666

`A043545(lcm(n, A347245(n+1)))`
-/

namespace A347244.P4207808122812082666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (Int.lcm (n : ℤ) (A347245 (n + 1)))

end

end A347244.P4207808122812082666

/-! ## A347244.P13673669579619589297

`A347245((n+1)^A347245(n+1))`
-/

namespace A347244.P13673669579619589297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A347245 (n + 1) : ℤ))).toNat

end

end A347244.P13673669579619589297

/-! ## A347244.P3582949635486854935

`A353493(A178385(n+1)*A347245(n+1))`
-/

namespace A347244.P3582949635486854935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (A178385 (n + 1) * A347245 (n + 1)).toNat

end

end A347244.P3582949635486854935

/-!
# A347245: Number of iterations of the map x -> A000593(x), when starting from x = n, needed to reach a number whose largest prime factor is at least as large as that of n itself (= A006530(n)). If 1 is reached without encountering such a number, then a(n) = 0.

The programs for A347245, there is no canonical definition to state claims against.
-/

/-! ## A347245.P14367605403116250957

`A000034(A294897(n+1))*A347244(n+1)`
-/

namespace A347245.P14367605403116250957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A294897 (n + 1)).toNat * A347244 (n + 1)

end

end A347245.P14367605403116250957

/-! ## A347245.P16630263728910369982

`A243499(A093421(n+1))*A347244(n+1)`
-/

namespace A347245.P16630263728910369982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A093421 (n + 1)).toNat * A347244 (n + 1)

end

end A347245.P16630263728910369982

/-! ## A347245.P5879758175070825393

`A000034(A046692((n+1)²))*A347244(n+1)`
-/

namespace A347245.P5879758175070825393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046692 ((n + 1) ^ 2)).toNat * A347244 (n + 1)

end

end A347245.P5879758175070825393

/-! ## A347245.P4806435799508266620

`char[A347242(n+1)-1]*A138904(A153733(n))`
-/

namespace A347245.P4806435799508266620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347242 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138904 (A153733 n).toNat

end

end A347245.P4806435799508266620

/-! ## A347245.P3824777323860533820

`char[A347242(n+1)-1]*A138904(n)`
-/

namespace A347245.P3824777323860533820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347242 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A138904 n

end

end A347245.P3824777323860533820

/-! ## A347245.P13512153508377103049

`and(A138904(n), A140106(A336158(n+1)))`
-/

namespace A347245.P13512153508377103049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138904 n) (A140106 (A336158 (n + 1)).toNat)

end

end A347245.P13512153508377103049

/-! ## A347245.P1479152320417404664

`A333381(A223491(n+1))*A347244(n+1)`
-/

namespace A347245.P1479152320417404664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A223491 (n + 1)).toNat * A347244 (n + 1)

end

end A347245.P1479152320417404664

/-! ## A347245.P3773443681632446123

`A027642(A327401(n+1))*A347244(n+1)`
-/

namespace A347245.P3773443681632446123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A327401 (n + 1)).toNat * A347244 (n + 1)

end

end A347245.P3773443681632446123

/-! ## A347245.P10545695297085668656

`A014963(A124859(n+1))*A347244(n+1)`
-/

namespace A347245.P10545695297085668656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124859 (n + 1)).toNat * A347244 (n + 1)

end

end A347245.P10545695297085668656

/-!
# A347246: a(n) = 1 if the greatest prime factor of A000593(n) [sum of odd divisors of n] is at least as large as the greatest prime factor of n itself, otherwise a(n) = 0.

The programs for A347246, there is no canonical definition to state claims against.
-/

/-! ## A347246.P3268010994674285308

`char[eq[A057427(n), A347245(n+1)]]`
-/

namespace A347246.P3268010994674285308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A347246.P3268010994674285308

/-! ## A347246.P2518606550478025915

`char[eq[A019429(2*n), A347245(n+1)]]`
-/

namespace A347246.P2518606550478025915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A347246.P2518606550478025915

/-! ## A347246.P9141824994684817717

`A063524(A347245(n+1)^A000120(n))`
-/

namespace A347246.P9141824994684817717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (SequenceMachineLib.roundAway ((A347245 (n + 1) : ℚ) ^ (A000120 n : ℤ))).toNat

end

end A347246.P9141824994684817717

/-! ## A347246.P10091335644474184412

`A325189(A347245(n+1)+A019426(2*n))`
-/

namespace A347246.P10091335644474184412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 (A347245 (n + 1) + A019426 (2 * n)).toNat

end

end A347246.P10091335644474184412

/-! ## A347246.P13671610448681097127

`A063699(A347245(n+1)^A020500(n+1))`
-/

namespace A347246.P13671610448681097127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063699 (SequenceMachineLib.roundAway ((A347245 (n + 1) : ℚ) ^ (A020500 (n + 1) : ℤ))).toNat

end

end A347246.P13671610448681097127

/-! ## A347246.P2018141647570300386

`∑{d}[A347245(n+1)^A000120(n), A008683(#)]`
-/

namespace A347246.P2018141647570300386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347245 (n + 1) : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A008683 d

end

end A347246.P2018141647570300386

/-! ## A347246.P13614081298119235915

`A063699(A347245(n+1)^and(n, -n))`
-/

namespace A347246.P13614081298119235915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063699 (SequenceMachineLib.roundAway ((A347245 (n + 1) : ℚ) ^ (Int.land (n : ℤ) (-(n : ℤ)) : ℤ))).toNat

end

end A347246.P13614081298119235915

/-! ## A347246.P1330271182047809459

`A073424(A067856(n+1)+∑[n])`
-/

namespace A347246.P1330271182047809459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A067856 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A347246.P1330271182047809459

/-! ## A347246.P2162379864726755650

`A073424(A209635(n+1)+∑[n])`
-/

namespace A347246.P2162379864726755650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A209635 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A347246.P2162379864726755650

/-! ## A347246.P3256759903590751181

`A073424(∑[n]+A078461(n+1)-n)`
-/

namespace A347246.P3256759903590751181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A078461 (n + 1) - (n : ℤ))).toNat

end

end A347246.P3256759903590751181

/-! ## A347246.P6894222834397442435

`A000007(A002113(n+1)*A078461(n+1))`
-/

namespace A347246.P6894222834397442435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002113 (n + 1) * A078461 (n + 1)).toNat

end

end A347246.P6894222834397442435

/-! ## A347246.P17453084605655168915

`A073424(A008966(A000265(n+1))+A000217(n))`
-/

namespace A347246.P17453084605655168915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A008966 (A000265 (n + 1)).toNat + A000217 n).toNat

end

end A347246.P17453084605655168915

/-! ## A347246.P122799983382355208

`A073424(A078461(2*(n+1))+∑[n+1])`
-/

namespace A347246.P122799983382355208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A078461 (2 * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A347246.P122799983382355208

/-! ## A347246.P8632749488948014633

`A087049(lcm(A007674(n+1), A064989(n+1)))`
-/

namespace A347246.P8632749488948014633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (Int.lcm (A007674 (n + 1)) (A064989 (n + 1)))

end

end A347246.P8632749488948014633

/-! ## A347246.P10808220210055267735

`A057979(A008687(A000188(n+1)%A084077(n)))`
-/

namespace A347246.P10808220210055267735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A008687 (Int.tmod (A000188 (n + 1)) (A084077 n)).toNat).toNat

end

end A347246.P10808220210055267735

/-! ## A347246.P15271682324226728668

`A000007(lcm(A209635(n+1), A273469(n+1)))`
-/

namespace A347246.P15271682324226728668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm (A209635 (n + 1)) (A273469 (n + 1)))

end

end A347246.P15271682324226728668

/-! ## A347246.P15606284317096822947

`A353626(n+1)+A336477(A001001(n+1))`
-/

namespace A347246.P15606284317096822947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353626 (n + 1) + A336477 (A001001 (n + 1)).toNat

end

end A347246.P15606284317096822947

/-! ## A347246.P13203246869523747392

`A318608(gcd(A063958(n+1), A116882(n+1)))`
-/

namespace A347246.P13203246869523747392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (Int.gcd (A063958 (n + 1)) (A116882 (n + 1)))

end

end A347246.P13203246869523747392

/-! ## A347246.P17572763949908846943

`xor(A209635(n+1)², A019430(A002378(n)))`
-/

namespace A347246.P17572763949908846943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A209635 (n + 1) ^ 2) (A019430 (A002378 n).toNat)

end

end A347246.P17572763949908846943

/-! ## A347246.P452351790981954593

`A078461((n*A078461(n+1)+1)²)`
-/

namespace A347246.P452351790981954593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (((n : ℤ) * A078461 (n + 1) + 1) ^ 2).toNat

end

end A347246.P452351790981954593

/-!
# A347247: Numbers k such that the greatest prime factor of A000593(k) [the sum of their odd divisors] is at least as large as the greatest prime factor of k itself.

The programs for A347247, there is no canonical definition to state claims against.
-/

/-! ## A347247.P10024052743036497177

`record[(n+1)*A347246(n+1)]`
-/

namespace A347247.P10024052743036497177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A347246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347247.P10024052743036497177

/-! ## A347247.P4579329817996218627

`eq[1, A347246(n+1)]+1`
-/

namespace A347247.P4579329817996218627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347247.P4579329817996218627

/-! ## A347247.P15287840678050554307

`filter[A387941(n+1), A347246(#)]`
-/

namespace A347247.P15287840678050554307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P15287840678050554307

/-! ## A347247.P5633008392143675424

`filter[A162966(n+1), A347246(#)]`
-/

namespace A347247.P5633008392143675424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P5633008392143675424

/-! ## A347247.P9908834847534765215

`filter[A354360(n+1), A347246(#)]`
-/

namespace A347247.P9908834847534765215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P9908834847534765215

/-! ## A347247.P8135292277244189709

`filter[A264828(n+1), A347246(#)]`
-/

namespace A347247.P8135292277244189709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P8135292277244189709

/-! ## A347247.P12472819883638204150

`filter[A018252(n+1), A347246(#)]`
-/

namespace A347247.P12472819883638204150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P12472819883638204150

/-! ## A347247.P16109919482484692029

`filter[A363597(n+1), A347246(#)]`
-/

namespace A347247.P16109919482484692029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P16109919482484692029

/-! ## A347247.P16243102211551727854

`filter[A289553(n+1), A347246(#)]`
-/

namespace A347247.P16243102211551727854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P16243102211551727854

/-! ## A347247.P17140399211289799297

`filter[A088609(n+1), A347246(#)]`
-/

namespace A347247.P17140399211289799297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P17140399211289799297

/-! ## A347247.P2507978632198444906

`filter[A316350(n+1), A347246(#)]`
-/

namespace A347247.P2507978632198444906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P2507978632198444906

/-! ## A347247.P17522283596350409668

`filter[A145190(n+1), A347246(#)]`
-/

namespace A347247.P17522283596350409668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P17522283596350409668

/-! ## A347247.P13458710711948962552

`filter[A174891(n+1), A347246(#)]`
-/

namespace A347247.P13458710711948962552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P13458710711948962552

/-! ## A347247.P3147251109374335105

`filter[A347202(n+1), A347246(#)]`
-/

namespace A347247.P3147251109374335105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P3147251109374335105

/-! ## A347247.P15157549604344051353

`filter[A075378(n+1), A347246(#)]`
-/

namespace A347247.P15157549604344051353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P15157549604344051353

/-! ## A347247.P8643136270918270884

`filter[A088610(n+1), A347246(#)]`
-/

namespace A347247.P8643136270918270884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P8643136270918270884

/-! ## A347247.P10683555312258890031

`filter[A056653(n+1), A347246(#)]`
-/

namespace A347247.P10683555312258890031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P10683555312258890031

/-! ## A347247.P10422836169020173621

`filter[A065090(n+1), A347246(#)]`
-/

namespace A347247.P10422836169020173621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P10422836169020173621

/-! ## A347247.P7864715057421059034

`filter[A073900(n+1), A347246(#)]`
-/

namespace A347247.P7864715057421059034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P7864715057421059034

/-! ## A347247.P7452779794489790300

`filter[A121543(n+1), A347246(#)]`
-/

namespace A347247.P7452779794489790300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347246 (f1 j).toNat = 1) n)

end

end A347247.P7452779794489790300

/-!
# A347248: Numbers k such that the greatest prime factor of A000593(k) [the sum of odd divisors of k] is less than the greatest prime factor of k itself.

The programs for A347248, there is no canonical definition to state claims against.
-/

/-! ## A347248.P1396336385834943240

`eq[0, A347246(n+1)]+1`
-/

namespace A347248.P1396336385834943240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347248.P1396336385834943240

/-! ## A347248.P10569433175765172838

`eq[2, A124758(a(A347245(n)))]` with `a(0)=5, a(1)=12`
-/

namespace A347248.P10569433175765172838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 12] fun n f2 =>
  A124758 (f2 (A347245 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347248.P10569433175765172838

/-! ## A347248.P15543843765578820784

`comp[A000027(n+1)*A347246(n+1)]`
-/

namespace A347248.P15543843765578820784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A347246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A347248.P15543843765578820784

/-! ## A347248.P12084743928980139304

`A122132(n+2)%A383650(n+1)`
-/

namespace A347248.P12084743928980139304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122132 (n + 2)) (A383650 (n + 1))

end

end A347248.P12084743928980139304

/-! ## A347248.P7930984097407696580

`A122132(n+2)+A010816(A029783(3*(n+1)))`
-/

namespace A347248.P7930984097407696580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 2) + A010816 (A029783 (3 * (n + 1))).toNat

end

end A347248.P7930984097407696580

/-! ## A347248.P6023356703667934155

`A122132(A005941(A005940(n+2)))`
-/

namespace A347248.P6023356703667934155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (A005941 (A005940 (n + 2)).toNat).toNat

end

end A347248.P6023356703667934155

/-! ## A347248.P15723517789286228018

`A122132(n+2)+A054908(A174847(n))`
-/

namespace A347248.P15723517789286228018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 2) + A054908 (A174847 n).toNat

end

end A347248.P15723517789286228018

/-! ## A347248.P810894460897064197

`A122132(n+2)-A370653(A174847(n+2))`
-/

namespace A347248.P810894460897064197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 2) - A370653 (A174847 (n + 2)).toNat

end

end A347248.P810894460897064197

/-! ## A347248.P501824269597393518

`A001221(A260085(n+1))*A122132(n+2)`
-/

namespace A347248.P501824269597393518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A260085 (n + 1)).toNat * A122132 (n + 2)

end

end A347248.P501824269597393518

/-! ## A347248.P10930037300897730494

`A271102(A007522(3*n+5))+A122132(n+2)`
-/

namespace A347248.P10930037300897730494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A007522 (3 * n + 5)).toNat + A122132 (n + 2)

end

end A347248.P10930037300897730494

/-!
# A347249: a(n) = A331410(n) - A336361(n).

The programs for A347249, there is no canonical definition to state claims against.
-/

/-! ## A347249.P15181079577169283128

`A331410(n+1)-A336361(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347249.P15181079577169283128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) - A336361 (n + 1)

end

end A347249.P15181079577169283128

/-! ## A347249.P18339010334281885498

`A331410(n+1)+A196199(A336361(n+1)²)`
-/

namespace A347249.P18339010334281885498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (n + 1) + A196199 (A336361 (n + 1) ^ 2).toNat

end

end A347249.P18339010334281885498

/-! ## A347249.P10737090786697229183

`A005087(n+1)+A336922(n+1)-A336361(n+1)`
-/

namespace A347249.P10737090786697229183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A336922 (n + 1) - A336361 (n + 1))

end

end A347249.P10737090786697229183

/-! ## A347249.P1955753504508101923

`A334861(n+1)-(A336361(n+1)+∑[A334091(n+1)])`
-/

namespace A347249.P1955753504508101923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334861 (n + 1) - (A336361 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347249.P1955753504508101923

/-! ## A347249.P10572755174751893481

`A335877(n+1)+A336396(n+1)+A087436(n+1)-A336361(n+1)`
-/

namespace A347249.P10572755174751893481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335877 (n + 1) + (A336396 (n + 1) + A087436 (n + 1)) - A336361 (n + 1)

end

end A347249.P10572755174751893481

/-! ## A347249.P11296235933026557704

`A064415(n+1)+A334862(n+1)-A334098(n+1)-A336361(n+1)`
-/

namespace A347249.P11296235933026557704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A334862 (n + 1) - A334098 (n + 1)) - A336361 (n + 1)

end

end A347249.P11296235933026557704

/-! ## A347249.P9915918301267276720

`A336929(A038699(n+1))-A336361(n+1)`
-/

namespace A347249.P9915918301267276720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336929 (A038699 (n + 1)).toNat - A336361 (n + 1)

end

end A347249.P9915918301267276720

/-! ## A347249.P15831358680081638423

`A334108(A122111(n+1))-A336361(n+1)`
-/

namespace A347249.P15831358680081638423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (A122111 (n + 1)).toNat - A336361 (n + 1)

end

end A347249.P15831358680081638423

/-!
# A347250: Numbers k for which A331410(k) < A336361(k).

The programs for A347250, there is no canonical definition to state claims against.
-/

/-! ## A347250.P11042501145616669194

`lt[A347249(n+2), 0]+2`
-/

namespace A347250.P11042501145616669194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A347250.P11042501145616669194

/-! ## A347250.P1293939104521347573

`lt[A347249(n*a(gcd(2, n))), 0]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A347250.P1293939104521347573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  A347249 ((n : ℤ) * f1 (Nat.gcd 2 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347250.P1293939104521347573

/-! ## A347250.P6892861705003096414

`A065475(lt[A347249(n+1), 0])`
-/

namespace A347250.P6892861705003096414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A347250.P6892861705003096414

/-! ## A347250.P3654582079076852689

`lt[A347249(A000007(n)+n), 0]`
-/

namespace A347250.P3654582079076852689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347250.P3654582079076852689

/-! ## A347250.P2756518639932359798

`lt[A347249(n*a(A057427(n)-1)), 0]` with `a(0)=2`
-/

namespace A347250.P2756518639932359798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A347249 ((n : ℤ) * f1 (A057427 n - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347250.P2756518639932359798

/-!
# A347251: a(n) = Sum_{d|n} mu(d)*mu(n/d)*d^n.

The programs for A347251, the canonical program `A347251.P5415222280423184281` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347251 has offset 1).

The definition of A347251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347251.P5415222280423184281

`∑{d}[n+1, A008683(#)*A008683((n+1)/#)*#^(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347251

/-- `∑{d}[n+1, A008683(#)*A008683((n+1)/#)*#^(n+1)]` -/
def P5415222280423184281.Spec : Prop :=
  ∀ n, P5415222280423184281.a n = A347251 (n + 1)

theorem P5415222280423184281.correct : P5415222280423184281.Spec := by
  intro n
  simp only [A347251, Nat.add_sub_cancel]

end A347251

/-! ## A347251.P6367744110638144491

`A347227(2*(n+1)²)`
-/

namespace A347251.P6367744110638144491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347227 (2 * (n + 1) ^ 2)

end

end A347251.P6367744110638144491

namespace A347251

/-- `A347227(2*(n+1)²)` -/
def P6367744110638144491.Spec : Prop :=
  ∀ n, P6367744110638144491.a n = A347251 (n + 1)

end A347251

/-! ## A347251.P8831433665940873025

`A347233(2*(n+2))+A347227(A093005(2*(n+1)))`
-/

namespace A347251.P8831433665940873025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347233 (2 * (n + 2)) + A347227 (A093005 (2 * (n + 1))).toNat

end

end A347251.P8831433665940873025

namespace A347251

/-- `A347233(2*(n+2))+A347227(A093005(2*(n+1)))` -/
def P8831433665940873025.Spec : Prop :=
  ∀ n, P8831433665940873025.a n = A347251 (n + 1)

end A347251

/-!
# A347252: Number of nonnegative triples (a, b, c) satisfying (a + b + c <= n) and (a * b * c <= n).

The programs for A347252, there is no canonical definition to state claims against.
-/

/-! ## A347252.P10429878324606392929

`∑[∑[n+1-A174627(A174613(n))]]`
-/

namespace A347252.P10429878324606392929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A174627 (A174613 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347252.P10429878324606392929

/-! ## A347252.P5207372012482754263

`A301258(n)+A001222(A161631(n))`
-/

namespace A347252.P5207372012482754263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301258 n + A001222 (A161631 n).toNat

end

end A347252.P5207372012482754263

/-!
# A347253: Positive integers that are the product of two integers ending with 4.

The programs for A347253, there is no canonical definition to state claims against.
-/

/-! ## A347253.P5973809659473265695

`10*A347254(n+1)+6`
-/

namespace A347253.P5973809659473265695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A347254 (n + 1) + 6

end

end A347253.P5973809659473265695

/-! ## A347253.P13243060187959414726

`A017341(A347254(n+1))`
-/

namespace A347253.P13243060187959414726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (A347254 (n + 1)).toNat

end

end A347253.P13243060187959414726

/-! ## A347253.P2771137028351471785

`A067844(A347254(n+1)+1)`
-/

namespace A347253.P2771137028351471785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067844 (A347254 (n + 1) + 1).toNat

end

end A347253.P2771137028351471785

/-! ## A347253.P17985354838057534810

`A020739(5*A347254(n+1))`
-/

namespace A347253.P17985354838057534810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (5 * A347254 (n + 1)).toNat

end

end A347253.P17985354838057534810

/-! ## A347253.P16381056705545371620

`A017329(A347254(n+1))+abs(A033999(n))`
-/

namespace A347253.P16381056705545371620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (A347254 (n + 1)).toNat + |A033999 n|

end

end A347253.P16381056705545371620

/-!
# A347254: Positive integers k such that 10*k+6 is equal to the product of two integers ending with 4 (A347253).

The programs for A347254, there is no canonical definition to state claims against.
-/

/-! ## A347254.P3718759680461581697

`(A347253(n+1)-6)/10`
-/

namespace A347254.P3718759680461581697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347253 (n + 1) - 6 : ℚ) / 10

end

end A347254.P3718759680461581697

/-! ## A347254.P2085359471319737686

`2*lt[A015135(n+1), A362952(n+1)]+1`
-/

namespace A347254.P2085359471319737686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347254.P2085359471319737686

/-! ## A347254.P3387572902082874331

`lt[A023531(n), A083914(A016885(n))]`
-/

namespace A347254.P3387572902082874331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347254.P3387572902082874331

/-! ## A347254.P10308293493101397319

`lt[A064911(n+1), A083914(A016885(n))]`
-/

namespace A347254.P10308293493101397319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347254.P10308293493101397319

/-! ## A347254.P6861648753496882986

`lt[A167356(n+1), A083914(A016885(n))]`
-/

namespace A347254.P6861648753496882986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347254.P6861648753496882986

/-! ## A347254.P6518457061499268043

`lt[A280710(n+1), A083914(A016885(n))]`
-/

namespace A347254.P6518457061499268043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347254.P6518457061499268043

/-! ## A347254.P13767746243476958669

`lt[A083914(n+2), A083914(A016885(n))]`
-/

namespace A347254.P13767746243476958669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347254.P13767746243476958669

/-!
# A347255: Number of positive integers with n digits that are the product of two integers ending with 4.

The programs for A347255, there is no canonical definition to state claims against.
-/

/-! ## A347255.P4176118691331712267

`A347748(n+1)+A347749(n+1)-A337856(n+1)`
-/

namespace A347255.P4176118691331712267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347748 (n + 1) + (A347749 (n + 1) - A337856 (n + 1))

end

end A347255.P4176118691331712267

/-!
# A347256: Irregular triangle whose n-th row lists the integers m such that the n-th necklace polynomial is divisible by x^m-1.

The programs for A347256, there is no canonical definition to state claims against.
-/

/-! ## A347256.P10832433500629204043

`A392217(A319847(A006218(n+2)))`
-/

namespace A347256.P10832433500629204043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392217 (A319847 (A006218 (n + 2)).toNat).toNat

end

end A347256.P10832433500629204043

/-! ## A347256.P14883252721517461947

`A347224(n+2)%A255922(A100326(n+3))`
-/

namespace A347256.P14883252721517461947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347224 (n + 2)) (A255922 (A100326 (n + 3)).toNat)

end

end A347256.P14883252721517461947

/-!
# A347257: Number of fixed hexagonal polyominoes with n cells that have a horizontal axis of symmetry that connects the midpoints of opposite edges of one of the n cells.

The programs for A347257, there is no canonical definition to state claims against.
-/

/-! ## A347257.P7621391532972329490

`2*A197553(n+1)-A001207(n+1)`
-/

namespace A347257.P7621391532972329490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197553 (n + 1) - A001207 (n + 1)

end

end A347257.P7621391532972329490

/-! ## A347257.P10104900939852077067

`2*A197551(n+1)-A197549(n+1)`
-/

namespace A347257.P10104900939852077067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197551 (n + 1) - A197549 (n + 1)

end

end A347257.P10104900939852077067

/-! ## A347257.P13034097821944250397

`2*A197959(n+1)-A197958(n+1)`
-/

namespace A347257.P13034097821944250397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197959 (n + 1) - A197958 (n + 1)

end

end A347257.P13034097821944250397

/-! ## A347257.P220006101578516004

`A030225(n+1)+A197551(n+1)-A197552(n+1)`
-/

namespace A347257.P220006101578516004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197551 (n + 1) - A197552 (n + 1))

end

end A347257.P220006101578516004

/-! ## A347257.P11118713430367239586

`A030225(n+1)+A197553(n+1)-A197554(n+1)`
-/

namespace A347257.P11118713430367239586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A197553 (n + 1) - A197554 (n + 1))

end

end A347257.P11118713430367239586

/-!
# A347260: Lexicographically earliest sequence S of distinct nonnegative terms such that the digits of (a(n) + a(n+1)) are the first n digits of S.

The programs for A347260, there is no canonical definition to state claims against.
-/

/-! ## A347260.P13176897905961257080

`A244135(n)+A172266(A002275(n))`
-/

namespace A347260.P13176897905961257080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244135 n + A172266 (A002275 n).toNat

end

end A347260.P13176897905961257080

/-!
# A347261: Numbers k for which sigma(k)/k = 32/11.

The programs for A347261, there is no canonical definition to state claims against.
-/

/-! ## A347261.P15396928054863367277

`33*A341623(n+1)`
-/

namespace A347261.P15396928054863367277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 * A341623 (n + 1)

end

end A347261.P15396928054863367277

/-!
# A347262: Positive integers that are not the numbers k for which the symmetric representation of sigma(k) has two parts, each of width one.

The programs for A347262, there is no canonical definition to state claims against.
-/

/-! ## A347262.P3456030893814439844

`comp[A246955(n+1)-1]+1`
-/

namespace A347262.P3456030893814439844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246955 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347262.P3456030893814439844

/-! ## A347262.P7344869976749068732

`lt[A349433(gcd(n, C(2, n))+n), or(n, n-1)/2]`
-/

namespace A347262.P7344869976749068732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (Nat.gcd n (Nat.choose 2 n) + n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A347262.P7344869976749068732

/-! ## A347262.P17562003978449033188

`comp[A233583(A246955(n+1))]+1`
-/

namespace A347262.P17562003978449033188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A246955 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347262.P17562003978449033188

/-! ## A347262.P13484729561150627172

`∪[A005153(n+1), A105441(n+1)]`
-/

namespace A347262.P13484729561150627172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P13484729561150627172

/-! ## A347262.P6146627077453531437

`∪[A005153(n+1), A110473(n+1)]`
-/

namespace A347262.P6146627077453531437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P6146627077453531437

/-! ## A347262.P6755036749265322143

`∪[A071562(n+1), A105441(n+1)]`
-/

namespace A347262.P6755036749265322143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P6755036749265322143

/-! ## A347262.P5974325078781427555

`∪[A071562(n+1), A110473(n+1)]`
-/

namespace A347262.P5974325078781427555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P5974325078781427555

/-! ## A347262.P15962592241314954976

`∪[A082662(n+1), A105441(n+1)]`
-/

namespace A347262.P15962592241314954976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P15962592241314954976

/-! ## A347262.P4673367945747451857

`∪[A082662(n+1), A110473(n+1)]`
-/

namespace A347262.P4673367945747451857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P4673367945747451857

/-! ## A347262.P243704370722202875

`∪[A103288(n+1), A105441(n+1)]`
-/

namespace A347262.P243704370722202875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347262.P243704370722202875

/-!
# A347264: Largest value in the 3x+1 sequence starting at n, divided by 4.

The programs for A347264, there is no canonical definition to state claims against.
-/

/-! ## A347264.P13287506463922405553

`A056959(n+1)/4`
-/

namespace A347264.P13287506463922405553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056959 (n + 1) : ℚ) / 4

end

end A347264.P13287506463922405553

/-! ## A347264.P15024568504351155640

`ceil(A025586(n+1)/4)`
-/

namespace A347264.P15024568504351155640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025586 (n + 1) : ℚ) / 4⌉

end

end A347264.P15024568504351155640

/-! ## A347264.P7621867111103531806

`A025586(n+1)/A151798(n)`
-/

namespace A347264.P7621867111103531806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025586 (n + 1) : ℚ) / (A151798 n : ℚ)

end

end A347264.P7621867111103531806

/-! ## A347264.P18363674779694043732

`A328147(A066560(n+1))`
-/

namespace A347264.P18363674779694043732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328147 (A066560 (n + 1)).toNat

end

end A347264.P18363674779694043732

/-! ## A347264.P4886794030934609208

`ceil(A270570(2*(n+1))/4)`
-/

namespace A347264.P4886794030934609208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A270570 (2 * (n + 1)) : ℚ) / 4⌉

end

end A347264.P4886794030934609208

/-! ## A347264.P14196561515580493322

`ceil(ceil(A270570(n+2+n)/2)/2)`
-/

namespace A347264.P14196561515580493322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A270570 (n + 2 + n) : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A347264.P14196561515580493322

/-! ## A347264.P8803489673880370400

`lcm(4, xor(1, xor(1, A270570(n+n+2))))/4`
-/

namespace A347264.P8803489673880370400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (Int.xor 1 (Int.xor 1 (A270570 (n + n + 2)))) : ℚ) / 4

end

end A347264.P8803489673880370400

/-! ## A347264.P16902039194845664398

`A123684(A365478(A014682(n+1)))`
-/

namespace A347264.P16902039194845664398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (A365478 (A014682 (n + 1)).toNat).toNat

end

end A347264.P16902039194845664398

/-! ## A347264.P151907685810910940

`A030065(A025586(n+1))`
-/

namespace A347264.P151907685810910940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A025586 (n + 1)).toNat

end

end A347264.P151907685810910940

/-! ## A347264.P8024705040063170214

`A002265(A056959(n+1))`
-/

namespace A347264.P8024705040063170214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A056959 (n + 1)).toNat

end

end A347264.P8024705040063170214

/-! ## A347264.P2703168677483497386

`A008624(A025586(n+1)+1)`
-/

namespace A347264.P2703168677483497386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A025586 (n + 1) + 1).toNat

end

end A347264.P2703168677483497386

/-! ## A347264.P3744865162219425870

`A006370(A006370(A056959(A006370(A005843(n+1)))))`
-/

namespace A347264.P3744865162219425870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006370 (A056959 (A006370 (A005843 (n + 1)).toNat).toNat).toNat).toNat

end

end A347264.P3744865162219425870

/-!
# A347266: a(n) is the number whose binary representation is the concatenation of terms in the n-th row of A237048.

The programs for A347266, there is no canonical definition to state claims against.
-/

/-! ## A347266.P18392717105547930424

`A028897(A347765(n+1))`
-/

namespace A347266.P18392717105547930424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A347765 (n + 1)).toNat

end

end A347266.P18392717105547930424

/-! ## A347266.P10483550387080032337

`A080719(A347765(n+1))*A322674(n)`
-/

namespace A347266.P10483550387080032337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (A347765 (n + 1)).toNat * A322674 n

end

end A347266.P10483550387080032337

/-! ## A347266.P4887319442189829492

`A080719(A347765(n+1))%A017377(n)`
-/

namespace A347266.P4887319442189829492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080719 (A347765 (n + 1)).toNat) (A017377 n)

end

end A347266.P4887319442189829492

/-! ## A347266.P13637469358894034610

`A080719(A347765(n+1)%A115798(n+3))`
-/

namespace A347266.P13637469358894034610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080719 (Int.tmod (A347765 (n + 1)) (A115798 (n + 3))).toNat

end

end A347266.P13637469358894034610

/-!
# A347267: a(n) is the first term of the n-th 3x+1 sequence that shares infinitely many 1's with the 3x+1 sequence that starts at 1.

The programs for A347267, there is no canonical definition to state claims against.
-/

/-! ## A347267.P6414498602767142630

`eq[1, A006460(n+1)]+1`
-/

namespace A347267.P6414498602767142630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347267.P6414498602767142630

/-! ## A347267.P15290626825582026550

`lt[2, A006460(4*(n+1))]+1`
-/

namespace A347267.P15290626825582026550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347267.P15290626825582026550

/-! ## A347267.P15377974466913994648

`eq[0, A006577(n+1)%3]+1`
-/

namespace A347267.P15377974466913994648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347267.P15377974466913994648

/-! ## A347267.P8685927694845253848

`eq[1, A008908(n+1)%3]+1`
-/

namespace A347267.P8685927694845253848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347267.P8685927694845253848

/-! ## A347267.P711515532987455787

`lt[A006577(abs(1-n)+1)%3, 1]`
-/

namespace A347267.P711515532987455787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (|1 - (n : ℤ)| + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A347267.P711515532987455787

/-! ## A347267.P2140325350283974960

`eq[2, A006460(A004277(n))]`
-/

namespace A347267.P2140325350283974960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347267.P2140325350283974960

/-! ## A347267.P15175576555925625233

`eq[4, A006460(A008574(n))]`
-/

namespace A347267.P15175576555925625233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347267.P15175576555925625233

/-! ## A347267.P13075289906441711245

`eq[2, A006460(A022144(2*n))]`
-/

namespace A347267.P13075289906441711245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A022144 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347267.P13075289906441711245

/-! ## A347267.P7573358642940248830

`eq[2, A006460(A028310(2*n))]`
-/

namespace A347267.P7573358642940248830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347267.P7573358642940248830

/-! ## A347267.P4173047667063763298

`eq[2, A006460(A234275(2*n))]`
-/

namespace A347267.P4173047667063763298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A234275 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347267.P4173047667063763298

/-!
# A347268: a(n) is the first term of the n-th 3x+1 sequence that shares infinitely many 1's with the 3x+1 sequence that starts at 2.

The programs for A347268, there is no canonical definition to state claims against.
-/

/-! ## A347268.P10623958601678681763

`eq[2, A006460(n+1)]+1`
-/

namespace A347268.P10623958601678681763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347268.P10623958601678681763

/-! ## A347268.P8394208327323398062

`lt[2, A006460(2*(n+1))]+1`
-/

namespace A347268.P8394208327323398062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347268.P8394208327323398062

/-! ## A347268.P3379353169940535219

`eq[1, A006577(n+1)%3]+1`
-/

namespace A347268.P3379353169940535219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347268.P3379353169940535219

/-! ## A347268.P14779130555328970088

`lt[1, A008908(n+1)%3]+1`
-/

namespace A347268.P14779130555328970088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347268.P14779130555328970088

/-! ## A347268.P12256627540585681923

`eq[2, A008908(n+2)%3]+2`
-/

namespace A347268.P12256627540585681923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A347268.P12256627540585681923

/-! ## A347268.P16873216268500091067

`eq[2, A006460(A022144(n))]`
-/

namespace A347268.P16873216268500091067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347268.P16873216268500091067

/-! ## A347268.P13852883719191637728

`eq[2, A006460(A028310(n))]`
-/

namespace A347268.P13852883719191637728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347268.P13852883719191637728

/-! ## A347268.P14261726169013774106

`eq[2, A006460(A234275(n))]`
-/

namespace A347268.P14261726169013774106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347268.P14261726169013774106

/-! ## A347268.P12950895686104281899

`eq[4, A006460(A004277(n))]`
-/

namespace A347268.P12950895686104281899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347268.P12950895686104281899

/-! ## A347268.P9706010907338751252

`eq[2, A006460(A008574(2*n))]`
-/

namespace A347268.P9706010907338751252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347268.P9706010907338751252

/-!
# A347269: a(n) is the first term of the n-th 3x+1 sequence that shares infinitely many 1's with the 3x+1 sequence that starts at 4.

The programs for A347269, there is no canonical definition to state claims against.
-/

/-! ## A347269.P11059900765215063832

`lt[2, A006460(n+1)]+1`
-/

namespace A347269.P11059900765215063832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347269.P11059900765215063832

/-! ## A347269.P17184129385425369910

`eq[4, A006460(n+2)]+2`
-/

namespace A347269.P17184129385425369910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A347269.P17184129385425369910

/-! ## A347269.P3810113489166831018

`lt[2, A006460(gcd(n, C(2, n)))]`
-/

namespace A347269.P3810113489166831018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347269.P3810113489166831018

/-! ## A347269.P7699159198631066457

`lt[2, A006460(n^floor(atan(n)))]`
-/

namespace A347269.P7699159198631066457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347269.P7699159198631066457

/-! ## A347269.P8100368655925747304

`eq[0, A008908(n+1)%3]+1`
-/

namespace A347269.P8100368655925747304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347269.P8100368655925747304

/-! ## A347269.P11218862593334175577

`lt[1, A006577(n+1)%3]+1`
-/

namespace A347269.P11218862593334175577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347269.P11218862593334175577

/-! ## A347269.P522689159096820714

`eq[2, A006577(C(2, n)+n)%3]`
-/

namespace A347269.P522689159096820714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (Nat.choose 2 n + n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347269.P522689159096820714

/-! ## A347269.P14196689275589461766

`eq[2, A006577(or(n, C(3, n)))%3]`
-/

namespace A347269.P14196689275589461766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (Nat.lor n (Nat.choose 3 n))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347269.P14196689275589461766

/-! ## A347269.P7132090440501032731

`eq[2, A006460(A008574(n))]`
-/

namespace A347269.P7132090440501032731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347269.P7132090440501032731

/-! ## A347269.P13750875961215964386

`lt[2, A006460(A028310(n))]`
-/

namespace A347269.P13750875961215964386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347269.P13750875961215964386

/-!
# A347272: Main diagonal of the square array A347270.

The programs for A347272, there is no canonical definition to state claims against.
-/

/-! ## A347272.P8715837233882081284

`A347270(∑[4*n]+1)`
-/

namespace A347272.P8715837233882081284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347272.P8715837233882081284

/-! ## A347272.P1599184564711508921

`and(-1, A347270(A001844(n)))`
-/

namespace A347272.P1599184564711508921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A347270 (A001844 n).toNat)

end

end A347272.P1599184564711508921

/-! ## A347272.P2908752168057825407

`A347270(A001844(n))%A003185(n)`
-/

namespace A347272.P2908752168057825407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347270 (A001844 n).toNat) (A003185 n)

end

end A347272.P2908752168057825407

/-! ## A347272.P10328962596153563460

`abs(A000038(n)-A347270(A001844(n)))`
-/

namespace A347272.P10328962596153563460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A347270 (A001844 n).toNat|

end

end A347272.P10328962596153563460

/-! ## A347272.P12235710475135406217

`A020985(n)²*A347270(A001844(n))`
-/

namespace A347272.P12235710475135406217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A347270 (A001844 n).toNat

end

end A347272.P12235710475135406217

/-! ## A347272.P1218496733143516709

`A347270(A001844(n))+A000038(3*n+4)`
-/

namespace A347272.P1218496733143516709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A001844 n).toNat + A000038 (3 * n + 4)

end

end A347272.P1218496733143516709

/-! ## A347272.P7432148118745656770

`A347270(A001844(n))+A000122(A006512(n+1))`
-/

namespace A347272.P7432148118745656770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (A001844 n).toNat + A000122 (A006512 (n + 1)).toNat

end

end A347272.P7432148118745656770

/-! ## A347272.P682189728797589757

`A288251(A064226(n))`
-/

namespace A347272.P682189728797589757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288251 (A064226 n).toNat

end

end A347272.P682189728797589757

/-! ## A347272.P412133552270236830

`A288251(A140064(n+1))`
-/

namespace A347272.P412133552270236830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288251 (A140064 (n + 1)).toNat

end

end A347272.P412133552270236830

/-!
# A347273: Number of positive widths in the symmetric representation of sigma(n).

The programs for A347273, there is no canonical definition to state claims against.
-/

/-! ## A347273.P5991727854101949225

`A005408(n)-A347361(n+1)`
-/

namespace A347273.P5991727854101949225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A347361 (n + 1)

end

end A347273.P5991727854101949225

/-! ## A347273.P2273746240245147218

`A005843(n)+1-A347361(n+1)`
-/

namespace A347273.P2273746240245147218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A347361 (n + 1))

end

end A347273.P2273746240245147218

/-! ## A347273.P11038745247289784154

`A016777(n)-(A347361(n+1)+n)`
-/

namespace A347273.P11038745247289784154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A347361 (n + 1) + (n : ℤ))

end

end A347273.P11038745247289784154

/-! ## A347273.P1364861135472021050

`A130446(n+1)-A347361(n+1)+n`
-/

namespace A347273.P1364861135472021050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1) - A347361 (n + 1) + (n : ℤ)

end

end A347273.P1364861135472021050

/-! ## A347273.P5142189460973775564

`2*n+A007318(∑[n])-A347361(n+1)`
-/

namespace A347273.P5142189460973775564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A347361 (n + 1))

end

end A347273.P5142189460973775564

/-! ## A347273.P12785731870868439444

`A007318(and(2, -n))+2*n-A347361(n+1)`
-/

namespace A347273.P12785731870868439444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat + ((2 * n : ℤ) - A347361 (n + 1))

end

end A347273.P12785731870868439444

/-! ## A347273.P17765316014365134703

`n*A000040(gcd(n, n+1))-A347361(n+1)+1`
-/

namespace A347273.P17765316014365134703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (Nat.gcd n (n + 1)) - A347361 (n + 1) + 1

end

end A347273.P17765316014365134703

/-!
# A347274: a(n) = Sum_{j=1..n} j*n^(n+1-j).

The programs for A347274, there is no canonical definition to state claims against.
-/

/-! ## A347274.P14852293897317964132

`(n+1)*A062805(n+1)`
-/

namespace A347274.P14852293897317964132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062805 (n + 1)

end

end A347274.P14852293897317964132

/-! ## A347274.P338756164434921336

`(n+1)²*A058128(n+1)`
-/

namespace A347274.P338756164434921336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A058128 (n + 1)

end

end A347274.P338756164434921336

/-! ## A347274.P13135766323700589463

`(A023811(n+1)+1)*(n+1)²`
-/

namespace A347274.P13135766323700589463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023811 (n + 1) + 1) * ((n + 1) ^ 2 : ℤ)

end

end A347274.P13135766323700589463

/-! ## A347274.P1011771995843603412

`(n+1)*(A062808(n+1)+n+1)`
-/

namespace A347274.P1011771995843603412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062808 (n + 1) + (n + 1 : ℤ))

end

end A347274.P1011771995843603412

/-! ## A347274.P14146465068291130085

`lcm(Δ[A000217(n)²], A058128(n+1))`
-/

namespace A347274.P14146465068291130085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A058128 (n + 1))

end

end A347274.P14146465068291130085

/-!
# A347275: a(n) is the number of nonnegative ordered pairs (a,b) satisfying (a+b <= n) and (a*b <= n).

The programs for A347275, there is no canonical definition to state claims against.
-/

/-! ## A347275.P18197658675978115453

`comp[2*n+3]+∑[∏{e}[n, #+1]]`
-/

namespace A347275.P18197658675978115453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A347275.P18197658675978115453

/-! ## A347275.P12251824527505398796

`record[abs(xor(1, n-2))]+∑[∑{d}[n, ceil(acot(#))]]`
-/

namespace A347275.P12251824527505398796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A347275.P12251824527505398796

/-! ## A347275.P12606379971251575156

`floor(n-atan(n))+∑[∏{e}[n, #+1]]+n`
-/

namespace A347275.P12606379971251575156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A347275.P12606379971251575156

/-! ## A347275.P3000652581306042873

`record[lcm(2, xor(n, -2))/2]+∑[∑{d}[n, ceil(acot(#))]]`
-/

namespace A347275.P3000652581306042873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A347275.P3000652581306042873

/-! ## A347275.P10550126913144031205

`A054519(n)+comp[2*n+3]`
-/

namespace A347275.P10550126913144031205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A347275.P10550126913144031205

/-! ## A347275.P17399204395435715498

`a(n-1)+A212356(n)+1` with `a(0)=1`
-/

namespace A347275.P17399204395435715498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A212356 n + 1)

end

end A347275.P17399204395435715498

/-! ## A347275.P2522981393117250492

`A006218(n)+record[abs(xor(1, n-2))]`
-/

namespace A347275.P2522981393117250492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347275.P2522981393117250492

/-! ## A347275.P3067048405711588665

`A325459(n)+A113127(n)`
-/

namespace A347275.P3067048405711588665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A113127 n

end

end A347275.P3067048405711588665

/-! ## A347275.P6615147885541352041

`A106633(n)-A130130(n)`
-/

namespace A347275.P6615147885541352041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n - A130130 n

end

end A347275.P6615147885541352041

/-! ## A347275.P18270200422061917375

`A006218(n)+A004280(n+1)`
-/

namespace A347275.P18270200422061917375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + A004280 (n + 1)

end

end A347275.P18270200422061917375

/-!
# A347276: Third column of A008296.

The programs for A347276, there is no canonical definition to state claims against.
-/

/-! ## A347276.P3366490780191257473

`A008296(∑[n+2]+4)`
-/

namespace A347276.P3366490780191257473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A347276.P3366490780191257473

/-! ## A347276.P8518689112221455424

`A008296(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A347276.P8518689112221455424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008296 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A347276.P8518689112221455424

/-! ## A347276.P3847032938658138033

`or(A000007(n), A008296(A167614(n+1)))`
-/

namespace A347276.P3847032938658138033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008296 (A167614 (n + 1)).toNat)

end

end A347276.P3847032938658138033

/-! ## A347276.P17002927594573405455

`A006519(2*n+3)*A008296(A167614(n+1))`
-/

namespace A347276.P17002927594573405455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 3) * A008296 (A167614 (n + 1)).toNat

end

end A347276.P17002927594573405455

/-! ## A347276.P16766314655682435163

`A008296(A167614(n+1))+val(A082144(n)+1, 4)`
-/

namespace A347276.P16766314655682435163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A167614 (n + 1)).toNat + (SequenceMachineLib.valuation (A082144 n + 1).toNat 4 : ℤ)

end

end A347276.P16766314655682435163

/-! ## A347276.P4605347788994673286

`A331383(A272020(2*n+3))+A008296(A167614(n+1))`
-/

namespace A347276.P4605347788994673286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A272020 (2 * n + 3)).toNat + A008296 (A167614 (n + 1)).toNat

end

end A347276.P4605347788994673286

/-!
# A347277: Table T(n,k) read by downward antidiagonals: A quotient belonging to a generalization of Euler's theorem.

The programs for A347277, there is no canonical definition to state claims against.
-/

/-! ## A347277.P8431111408731369017

`A074650(n+1)-A019590(A013612(n))`
-/

namespace A347277.P8431111408731369017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) - A019590 (A013612 n).toNat

end

end A347277.P8431111408731369017

/-! ## A347277.P2453482511142103332

`A074650(n+1)-A178333(A013613(n))`
-/

namespace A347277.P2453482511142103332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) - A178333 (A013613 n).toNat

end

end A347277.P2453482511142103332

/-! ## A347277.P3073857716600609808

`A074650(n+1)-A019590(A267849(n))`
-/

namespace A347277.P3073857716600609808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) - A019590 (A267849 n).toNat

end

end A347277.P3073857716600609808

/-! ## A347277.P13811315448351338880

`A074650(n+1)-A008966(A089072(n+1))`
-/

namespace A347277.P13811315448351338880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) - A008966 (A089072 (n + 1)).toNat

end

end A347277.P13811315448351338880

/-! ## A347277.P6098934582818930864

`A074650(n+1)-A019590(A176122(n+1))`
-/

namespace A347277.P6098934582818930864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (n + 1) - A019590 (A176122 (n + 1)).toNat

end

end A347277.P6098934582818930864

/-!
# A347281: a(n) = 2^(n - 1)*permanent(M_n)^2 where M_n is the n X n matrix M_n(j, k) = cos(Pi*j*k/n).

The programs for A347281, there is no canonical definition to state claims against.
-/

/-! ## A347281.P11584564595401558576

`and(A163912(n), A253205(A002001(n)))`
-/

namespace A347281.P11584564595401558576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163912 n) (A253205 (A002001 n).toNat)

end

end A347281.P11584564595401558576

/-! ## A347281.P9395633132457461976

`A002182(n+1)*A299480(A057005(n+1))`
-/

namespace A347281.P9395633132457461976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) * A299480 (A057005 (n + 1)).toNat

end

end A347281.P9395633132457461976

/-!
# A347283: Square array read by antidiagonals upwards in which row n lists the parity of the 3x+1 sequence starting in n, with n >= 1 and k >= 0.

The programs for A347283, there is no canonical definition to state claims against.
-/

/-! ## A347283.P595944669321973175

`A000035(A347270(n+1))`
-/

namespace A347283.P595944669321973175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347270 (n + 1)).toNat

end

end A347283.P595944669321973175

/-! ## A347283.P6514093982496407178

`and(1, A347270(2*n+1-n))`
-/

namespace A347283.P6514093982496407178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347270 (2 * n + 1 - n))

end

end A347283.P6514093982496407178

/-! ## A347283.P472156966740959563

`A059841(A347270(n+1)+1)`
-/

namespace A347283.P472156966740959563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A347270 (n + 1) + 1).toNat

end

end A347283.P472156966740959563

/-! ## A347283.P17343688257105625743

`A296066(A347270(n+1)+2)`
-/

namespace A347283.P17343688257105625743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (A347270 (n + 1) + 2).toNat

end

end A347283.P17343688257105625743

/-! ## A347283.P12318168699448527880

`A000045(and(1, -A347270(n+1)))`
-/

namespace A347283.P12318168699448527880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (-A347270 (n + 1))).toNat

end

end A347283.P12318168699448527880

/-! ## A347283.P5718826528931442286

`val(A020639(A347270(n+1)+1), 2)`
-/

namespace A347283.P5718826528931442286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A347270 (n + 1) + 1).toNat).toNat 2

end

end A347283.P5718826528931442286

/-! ## A347283.P6068613505538122167

`and(1, (A142993(n)*A347270(n+1))²)`
-/

namespace A347283.P6068613505538122167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A142993 n * A347270 (n + 1)) ^ 2)

end

end A347283.P6068613505538122167

/-! ## A347283.P5723114079024176528

`and(1, (A144130(n)*A347270(n+1))²)`
-/

namespace A347283.P5723114079024176528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A144130 n * A347270 (n + 1)) ^ 2)

end

end A347283.P5723114079024176528

/-! ## A347283.P4404226665786222722

`and(A347270(n+1)², gcd(3, A020639(n+1)))`
-/

namespace A347283.P4404226665786222722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347270 (n + 1) ^ 2) (Int.gcd 3 (A020639 (n + 1)) : ℤ)

end

end A347283.P4404226665786222722

/-! ## A347283.P9824931368390225153

`and(A347270(n+1)², A008683(-or(n, -2))²)`
-/

namespace A347283.P9824931368390225153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347270 (n + 1) ^ 2) (A008683 (-Int.lor (n : ℤ) (-2)).toNat ^ 2)

end

end A347283.P9824931368390225153

/-! ## A347283.P10138780591001459879

`A007814(2*n+3)^A007814(A347270(n+1))`
-/

namespace A347283.P10138780591001459879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (2 * n + 3) : ℚ) ^ (A007814 (A347270 (n + 1)).toNat : ℤ)

end

end A347283.P10138780591001459879

/-! ## A347283.P16456046145562195293

`and(1, (A176410(n)*A347270(n+1))²)`
-/

namespace A347283.P16456046145562195293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A176410 n * A347270 (n + 1)) ^ 2)

end

end A347283.P16456046145562195293

/-! ## A347283.P7724627391278648508

`and(1, (A174689(n)*A347270(n+1))²)`
-/

namespace A347283.P7724627391278648508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A174689 n * A347270 (n + 1)) ^ 2)

end

end A347283.P7724627391278648508

/-! ## A347283.P14361281998304718996

`and(1, A020737(n)*A347270(n+1))`
-/

namespace A347283.P14361281998304718996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A020737 n * A347270 (n + 1))

end

end A347283.P14361281998304718996

/-! ## A347283.P640777675251481488

`and(1, A048578(n)*A347270(n+1))`
-/

namespace A347283.P640777675251481488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048578 n * A347270 (n + 1))

end

end A347283.P640777675251481488

/-! ## A347283.P5041928513911264179

`and(1, A033622(n)*A347270(n+1))`
-/

namespace A347283.P5041928513911264179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A033622 n * A347270 (n + 1))

end

end A347283.P5041928513911264179

/-! ## A347283.P1684695624740666638

`and(1, (A077881(n)*A347270(n+1))²)`
-/

namespace A347283.P1684695624740666638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A077881 n * A347270 (n + 1)) ^ 2)

end

end A347283.P1684695624740666638

/-! ## A347283.P16450023085367254880

`A007814(A347270(n+1)²+1)`
-/

namespace A347283.P16450023085367254880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A347270 (n + 1) ^ 2 + 1).toNat

end

end A347283.P16450023085367254880

/-! ## A347283.P9527413452367974172

`and(A347270(n+1), A359206(n+1))`
-/

namespace A347283.P9527413452367974172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347270 (n + 1)) (A359206 (n + 1))

end

end A347283.P9527413452367974172

/-! ## A347283.P15354079033563806720

`and(A347270(n+1), A359204(n+1))`
-/

namespace A347283.P15354079033563806720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347270 (n + 1)) (A359204 (n + 1))

end

end A347283.P15354079033563806720

/-!
# A347284: a(n) = Product_{j=1..A089576(n)} p_j^e_j with e_j = floor(e_(j-1)*log(p_(j-1))/log(p_j)) where the first factor is 2^n.

The programs for A347284, there is no canonical definition to state claims against.
-/

/-! ## A347284.P9250702658283097134

`record[A181814(A238157(n))]`
-/

namespace A347284.P9250702658283097134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (A238157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347284.P9250702658283097134

/-! ## A347284.P6461812578641877721

`record[A181814(A097305(n+1))]`
-/

namespace A347284.P6461812578641877721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (A097305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347284.P6461812578641877721

/-! ## A347284.P3019277905887452294

`record[A181814(A206437(n+1))]`
-/

namespace A347284.P3019277905887452294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (A206437 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347284.P3019277905887452294

/-! ## A347284.P17243770229791889803

`A181814(lt[A125788(n), A049523(n+1)])`
-/

namespace A347284.P17243770229791889803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347284.P17243770229791889803

/-! ## A347284.P2227826833955310790

`A181814(lt[A181814(n+1), A282899(n+1)])`
-/

namespace A347284.P2227826833955310790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A347284.P2227826833955310790

/-!
# A347285: Irregular triangle T(n,k) starting with n followed by e_k = floor(log_p_k(p_(k-1)^e_(k-1))) such that e_k > 0.

The programs for A347285, there is no canonical definition to state claims against.
-/

/-! ## A347285.P9004680014445924482

`∑{e}[A347288(n), #]`
-/

namespace A347285.P9004680014445924482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A347285.P9004680014445924482

/-! ## A347285.P623807199418304844

`A004526(∏{e}[A347288(n), 2*#])`
-/

namespace A347285.P623807199418304844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * Nat.factorization (f1 n).natAbs p)

end

end A347285.P623807199418304844

/-! ## A347285.P218270134344742545

`∏{e}[A347288(n), #]-A000007(n)`
-/

namespace A347285.P218270134344742545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A000007 n

end

end A347285.P218270134344742545

/-! ## A347285.P11315828149265400800

`∏{e}[A347288(n), #]*A057427(n)`
-/

namespace A347285.P11315828149265400800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A057427 n

end

end A347285.P11315828149265400800

/-! ## A347285.P11827922733151827419

`∏{e}[A347288(n), #]*A178334(n)`
-/

namespace A347285.P11827922733151827419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A178334 n

end

end A347285.P11827922733151827419

/-! ## A347285.P1871010865183175676

`∏{e}[A347288(n), #]%A000118(n)`
-/

namespace A347285.P1871010865183175676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A000118 n)

end

end A347285.P1871010865183175676

/-! ## A347285.P7307617145924172989

`A000027(∏{e}[A347288(n), #])%(n+1)`
-/

namespace A347285.P7307617145924172989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) (n + 1 : ℤ)

end

end A347285.P7307617145924172989

/-! ## A347285.P6387272726482881385

`xor(∏{e}[A347288(n), #], A000007(2*n))`
-/

namespace A347285.P6387272726482881385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A000007 (2 * n))

end

end A347285.P6387272726482881385

/-! ## A347285.P9683101541285173634

`and(1, A000040(n+1))*∏{e}[A347288(n), #]`
-/

namespace A347285.P9683101541285173634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A347285.P9683101541285173634

/-! ## A347285.P4819607856680599228

`∏{e}[A347288(n), #]+A008683(3*(n+1)²)`
-/

namespace A347285.P4819607856680599228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + A008683 (3 * (n + 1) ^ 2)

end

end A347285.P4819607856680599228

/-! ## A347285.P12864626081241099229

`∏{e}[A347288(n), #]-C(A008683(n+1)+1, n)`
-/

namespace A347285.P12864626081241099229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (Nat.choose (A008683 (n + 1) + 1).toNat n : ℤ)

end

end A347285.P12864626081241099229

/-! ## A347285.P9741731304459204878

`A322981(∏{e}[A347288(n), A246655(#)])`
-/

namespace A347285.P9741731304459204878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322981 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A246655 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A347285.P9741731304459204878

/-! ## A347285.P18391596460875100581

`(∏{e}[A347288(n), #]+A000203(n+1))%A000203(n+1)`
-/

namespace A347285.P18391596460875100581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + A000203 (n + 1)) (A000203 (n + 1))

end

end A347285.P18391596460875100581

/-!
# A347286: a(n) is n minus the number of odd divisors of n.

The programs for A347286, the canonical program `A347286.P5792309838125408870` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347286 has offset 1).

The definition of A347286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347286.P5792309838125408870

`n+1-A001227(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347286

/-- `n+1-A001227(n+1)` -/
def P5792309838125408870.Spec : Prop :=
  ∀ n, P5792309838125408870.a n = A347286 (n + 1)

theorem P5792309838125408870.correct : P5792309838125408870.Spec := by
  intro n
  simp only [A347286, Nat.add_sub_cancel]

end A347286

/-! ## A347286.P13010891298249837375

`n+1-∑{d}[n+1, #%2]`
-/

namespace A347286.P13010891298249837375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A347286.P13010891298249837375

namespace A347286

/-- `n+1-∑{d}[n+1, #%2]` -/
def P13010891298249837375.Spec : Prop :=
  ∀ n, P13010891298249837375.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P6355145814042472308

`1-∑{d}[n+1, and(1, #)]+n`
-/

namespace A347286.P6355145814042472308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ) + (n : ℤ)

end

end A347286.P6355145814042472308

namespace A347286

/-- `1-∑{d}[n+1, and(1, #)]+n` -/
def P6355145814042472308.Spec : Prop :=
  ∀ n, P6355145814042472308.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P1163033184441740667

`∑{d}[n+1, -#%2]+n+1`
-/

namespace A347286.P1163033184441740667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (-(d : ℤ)) 2 + (n + 1 : ℤ)

end

end A347286.P1163033184441740667

namespace A347286

/-- `∑{d}[n+1, -#%2]+n+1` -/
def P1163033184441740667.Spec : Prop :=
  ∀ n, P1163033184441740667.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P3118264698129337843

`n+1-∏{e}[(n+1)/and(n+1, -(n+1)), #+1]`
-/

namespace A347286.P3118264698129337843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1) : ℕ) : ℤ)

end

end A347286.P3118264698129337843

namespace A347286

/-- `n+1-∏{e}[(n+1)/and(n+1, -(n+1)), #+1]` -/
def P3118264698129337843.Spec : Prop :=
  ∀ n, P3118264698129337843.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P17877632156058375096

`n+1-∏{e}[n+1, #+1]/log2(xor(n, n+1)+1)`
-/

namespace A347286.P17877632156058375096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ) / Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A347286.P17877632156058375096

namespace A347286

/-- `n+1-∏{e}[n+1, #+1]/log2(xor(n, n+1)+1)` -/
def P17877632156058375096.Spec : Prop :=
  ∀ n, P17877632156058375096.a n = (A347286 (n + 1) : ℝ)

end A347286

/-! ## A347286.P8110619320625392059

`n-Δ[A248517(n)]`
-/

namespace A347286.P8110619320625392059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A347286.P8110619320625392059

namespace A347286

/-- `n-Δ[A248517(n)]` -/
def P8110619320625392059.Spec : Prop :=
  ∀ n, P8110619320625392059.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P7730236736997361584

`n-A069283(n+1)`
-/

namespace A347286.P7730236736997361584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069283 (n + 1)

end

end A347286.P7730236736997361584

namespace A347286

/-- `n-A069283(n+1)` -/
def P7730236736997361584.Spec : Prop :=
  ∀ n, P7730236736997361584.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P7296148794200684749

`n+1-A054844(n+1)/2`
-/

namespace A347286.P7296148794200684749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A054844 (n + 1) : ℚ) / 2

end

end A347286.P7296148794200684749

namespace A347286

/-- `n+1-A054844(n+1)/2` -/
def P7296148794200684749.Spec : Prop :=
  ∀ n, P7296148794200684749.a n = (A347286 (n + 1) : ℚ)

theorem P7296148794200684749.correct : P7296148794200684749.Spec := by
  intro n
  simp only [A347286, Nat.add_sub_cancel, A347286.P7296148794200684749.a, A347286.P5792309838125408870.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A054844, A054844.P10228147231781804913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347286

/-! ## A347286.P11804236453980696053

`∑{d}[n+1, A000010(#)-#%2]`
-/

namespace A347286.P11804236453980696053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - ((d % 2 : ℕ) : ℤ))

end

end A347286.P11804236453980696053

namespace A347286

/-- `∑{d}[n+1, A000010(#)-#%2]` -/
def P11804236453980696053.Spec : Prop :=
  ∀ n, P11804236453980696053.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P10904670130693151915

`n+1-A245579(n+1)/(n+1)`
-/

namespace A347286.P10904670130693151915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A245579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A347286.P10904670130693151915

namespace A347286

/-- `n+1-A245579(n+1)/(n+1)` -/
def P10904670130693151915.Spec : Prop :=
  ∀ n, P10904670130693151915.a n = (A347286 (n + 1) : ℚ)

end A347286

/-! ## A347286.P10048200495957912305

`n-A023645((n+1)/2^val(n+1, 2))`
-/

namespace A347286.P10048200495957912305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A347286.P10048200495957912305

namespace A347286

/-- `n-A023645((n+1)/2^val(n+1, 2))` -/
def P10048200495957912305.Spec : Prop :=
  ∀ n, P10048200495957912305.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P14987941344077630580

`n-A032741((n+1)/2^val(n+1, 2))`
-/

namespace A347286.P14987941344077630580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A347286.P14987941344077630580

namespace A347286

/-- `n-A032741((n+1)/2^val(n+1, 2))` -/
def P14987941344077630580.Spec : Prop :=
  ∀ n, P14987941344077630580.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P15124587069085605043

`A177236(n+1)+A059851(n)`
-/

namespace A347286.P15124587069085605043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177236 (n + 1) + A059851 n

end

end A347286.P15124587069085605043

namespace A347286

/-- `A177236(n+1)+A059851(n)` -/
def P15124587069085605043.Spec : Prop :=
  ∀ n, P15124587069085605043.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P6490025348272383921

`n-A023443(A001227(n+1))`
-/

namespace A347286.P6490025348272383921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A001227 (n + 1)).toNat

end

end A347286.P6490025348272383921

namespace A347286

/-- `n-A023443(A001227(n+1))` -/
def P6490025348272383921.Spec : Prop :=
  ∀ n, P6490025348272383921.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P13974841831202658900

`n-A032741(A000265(n+1))`
-/

namespace A347286.P13974841831202658900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A032741 (A000265 (n + 1)).toNat

end

end A347286.P13974841831202658900

namespace A347286

/-- `n-A032741(A000265(n+1))` -/
def P13974841831202658900.Spec : Prop :=
  ∀ n, P13974841831202658900.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P16375244829051230637

`n-A032741(A064989(n+1))`
-/

namespace A347286.P16375244829051230637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A032741 (A064989 (n + 1)).toNat

end

end A347286.P16375244829051230637

namespace A347286

/-- `n-A032741(A064989(n+1))` -/
def P16375244829051230637.Spec : Prop :=
  ∀ n, P16375244829051230637.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P9053132358004080166

`A060831(n)-A248517(n+1)`
-/

namespace A347286.P9053132358004080166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n - A248517 (n + 1)

end

end A347286.P9053132358004080166

namespace A347286

/-- `A060831(n)-A248517(n+1)` -/
def P9053132358004080166.Spec : Prop :=
  ∀ n, P9053132358004080166.a n = A347286 (n + 1)

end A347286

/-! ## A347286.P13303421991364381779

`A183063(n+1)+A049820(n+1)`
-/

namespace A347286.P13303421991364381779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A049820 (n + 1)

end

end A347286.P13303421991364381779

namespace A347286

/-- `A183063(n+1)+A049820(n+1)` -/
def P13303421991364381779.Spec : Prop :=
  ∀ n, P13303421991364381779.a n = A347286 (n + 1)

theorem P13303421991364381779.correct : P13303421991364381779.Spec := by
  intro n
  simp only [A347286, Nat.add_sub_cancel, A347286.P13303421991364381779.a, A347286.P5792309838125408870.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A049820, A049820.P9428372222244335888.a, A183063, A183063.P14549643650991336837.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347286

/-! ## A347286.P12621311385665903804

`A062249(n+1)-A099777(n+1)`
-/

namespace A347286.P12621311385665903804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A099777 (n + 1)

end

end A347286.P12621311385665903804

namespace A347286

/-- `A062249(n+1)-A099777(n+1)` -/
def P12621311385665903804.Spec : Prop :=
  ∀ n, P12621311385665903804.a n = A347286 (n + 1)

theorem P12621311385665903804.correct : P12621311385665903804.Spec := by
  intro n
  simp only [A347286, Nat.add_sub_cancel, A347286.P12621311385665903804.a, A347286.P5792309838125408870.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A062249, A062249.P5473932307129171226.a, A099777, A099777.P11792433152824821401.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347286

/-!
# A347287: a(n) = Sum_{k = 1..m} 2^(e_k-1) where e_k = floor(log_p_k(p_(k-1)^e_(k-1))) such that e_k > 0.

The programs for A347287, there is no canonical definition to state claims against.
-/

/-! ## A347287.P2590559896497593451

`or(A001650(A079319(n)), A003056(n))`
-/

namespace A347287.P2590559896497593451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001650 (A079319 n).toNat) (A003056 n)

end

end A347287.P2590559896497593451

/-! ## A347287.P261110635403485727

`or(A001650(A079319(n)), A004524(n))`
-/

namespace A347287.P261110635403485727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001650 (A079319 n).toNat) (A004524 n)

end

end A347287.P261110635403485727

/-! ## A347287.P15632703851001385620

`or(A001650(A079319(n)), A004526(n))`
-/

namespace A347287.P15632703851001385620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001650 (A079319 n).toNat) (A004526 n)

end

end A347287.P15632703851001385620

/-! ## A347287.P3058145035341140620

`or(A007318(n), A001650(A079319(n)))`
-/

namespace A347287.P3058145035341140620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 n) (A001650 (A079319 n).toNat)

end

end A347287.P3058145035341140620

/-!
# A347288: Irregular triangle T(n,k) starting with 2^n followed by p_k^e_k = p_k^floor(log_p_k(p_(k-1)^e_(k-1))) such that e_k > 0.

The programs for A347288, there is no canonical definition to state claims against.
-/

/-! ## A347288.P11428203864308211183

`xor(A165656(A167770(n+1)), A181815(n+1))`
-/

namespace A347288.P11428203864308211183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165656 (A167770 (n + 1)).toNat) (A181815 (n + 1))

end

end A347288.P11428203864308211183

/-!
# A347289: Number of independent sets in the binomial tree of order n.

The programs for A347289, the canonical program `A347289.P11995619366969485103` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347289 has offset 0).

The definition of A347289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347289.P11995619366969485103

`a(n-1)²-A052129(n-1)²` with `a(0)=2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A347289

/-- `a(n-1)²-A052129(n-1)²` -/
def P11995619366969485103.Spec : Prop :=
  ∀ n, P11995619366969485103.a n = A347289 n

theorem P11995619366969485103.correct : P11995619366969485103.Spec := by
  intro n
  simp only [A347289]

end A347289

/-! ## A347289.P5821566969660039048

`A052129(n)+A088679(n+1)`
-/

namespace A347289.P5821566969660039048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052129 n + A088679 (n + 1)

end

end A347289.P5821566969660039048

namespace A347289

/-- `A052129(n)+A088679(n+1)` -/
def P5821566969660039048.Spec : Prop :=
  ∀ n, P5821566969660039048.a n = A347289 n

end A347289

/-! ## A347289.P18402615395513986300

`(1-(n+1)^(-2))*a(n-1)²` with `a(0)=2`
-/

namespace A347289.P18402615395513986300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (1 - (n + 1 : ℚ) ^ (-2 : ℤ)) * a (n - 1) ^ 2

end

end A347289.P18402615395513986300

namespace A347289

/-- `(1-(n+1)^(-2))*a(n-1)²` -/
def P18402615395513986300.Spec : Prop :=
  ∀ n, P18402615395513986300.a n = (A347289 n : ℚ)

end A347289

/-! ## A347289.P8908952509161559361

`(n+2)*n*(a(n-1)/(n+1))²` with `a(0)=2`
-/

namespace A347289.P8908952509161559361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2 : ℚ) * ((n : ℚ) * (a (n - 1) / (n + 1 : ℚ)) ^ 2)

end

end A347289.P8908952509161559361

namespace A347289

/-- `(n+2)*n*(a(n-1)/(n+1))²` -/
def P8908952509161559361.Spec : Prop :=
  ∀ n, P8908952509161559361.a n = (A347289 n : ℚ)

end A347289

/-! ## A347289.P10947453719108889018

`a(n-1)²-(a(n-1)/(n+1))²` with `a(0)=2`
-/

namespace A347289.P10947453719108889018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 2 - (a (n - 1) / (n + 1 : ℚ)) ^ 2

end

end A347289.P10947453719108889018

namespace A347289

/-- `a(n-1)²-(a(n-1)/(n+1))²` -/
def P10947453719108889018.Spec : Prop :=
  ∀ n, P10947453719108889018.a n = (A347289 n : ℚ)

end A347289

/-!
# A347290: Arnoux-Rauzy word sigma_0 x sigma_2 x sigma_1. Fixed point of the morphism 0-> 0201020, 1->1020, 2->201020 starting from a(1)=0.

The programs for A347290, there is no canonical definition to state claims against.
-/

/-! ## A347290.P4261428672661855388

`A107796(abs(1-n))%3`
-/

namespace A347290.P4261428672661855388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107796 |1 - (n : ℤ)|.toNat) 3

end

end A347290.P4261428672661855388

/-! ## A347290.P7475145991587103047

`(2*A286998(n+1))%3`
-/

namespace A347290.P7475145991587103047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A286998 (n + 1)) 3

end

end A347290.P7475145991587103047

/-! ## A347290.P7350943422121942772

`C(2, A184985(A107796(n-1)+a(n-1)))` with `a(0)=0`
-/

namespace A347290.P7350943422121942772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose 2 (A184985 (A107796 (n - 1) + (a (n - 1) : ℤ)).toNat).toNat

end

end A347290.P7350943422121942772

/-! ## A347290.P4434522606607936363

`A014682(A365800(3*n+2)+A286998(n+1))`
-/

namespace A347290.P4434522606607936363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A365800 (3 * n + 2) + A286998 (n + 1)).toNat

end

end A347290.P4434522606607936363

/-! ## A347290.P15209855380278320924

`A010872(A077317(C(2, n+2)+1)*A286998(n+1))`
-/

namespace A347290.P15209855380278320924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A077317 (Nat.choose 2 (n + 2) + 1) * A286998 (n + 1)).toNat

end

end A347290.P15209855380278320924

/-! ## A347290.P12501874457453448698

`A287112(A287113(n+1)-A286998(n+1))`
-/

namespace A347290.P12501874457453448698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (A287113 (n + 1) - A286998 (n + 1)).toNat

end

end A347290.P12501874457453448698

/-! ## A347290.P13838143584646725951

`A287112(A287113(n+1)-(3-A107796(abs(1-n))))`
-/

namespace A347290.P13838143584646725951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287112 (A287113 (n + 1) - (3 - A107796 |1 - (n : ℤ)|.toNat)).toNat

end

end A347290.P13838143584646725951

/-!
# A347291: Multiplicative function defined by a(p) = 2 and a(p^k) = p^(k-1) for k >= 2.

The programs for A347291, the canonical program `A347291.P14200828636263259697` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347291 has offset 1).

The definition of A347291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347291.P13670904378164279110

`(n+1)/∏{p}[n+1, #]*∏{e}[n+1, ceil(2/#)]`
-/

namespace A347291.P13670904378164279110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉ : ℤ) : ℚ)

end

end A347291.P13670904378164279110

namespace A347291

/-- `(n+1)/∏{p}[n+1, #]*∏{e}[n+1, ceil(2/#)]` -/
def P13670904378164279110.Spec : Prop :=
  ∀ n, P13670904378164279110.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P8154601759724493736

`(n+1)/∏{p}[n+1, #]*2^∑{e}[n+1, round(acot(#))]`
-/

namespace A347291.P8154601759724493736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f2 n) p : ℝ)) : ℤ)

end

end A347291.P8154601759724493736

namespace A347291

/-- `(n+1)/∏{p}[n+1, #]*2^∑{e}[n+1, round(acot(#))]` -/
def P8154601759724493736.Spec : Prop :=
  ∀ n, P8154601759724493736.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P10563713609416804644

`(n+1)/∏{p}[n+1, #]*2^∑{e}[n+1, floor(1/#)]`
-/

namespace A347291.P10563713609416804644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋ : ℤ)

end

end A347291.P10563713609416804644

namespace A347291

/-- `(n+1)/∏{p}[n+1, #]*2^∑{e}[n+1, floor(1/#)]` -/
def P10563713609416804644.Spec : Prop :=
  ∀ n, P10563713609416804644.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P5220096551734632373

`∏{e}[n+1, ceil(2/#)]/((n+1)/∏{p}[n+1, #])^-1`
-/

namespace A347291.P5220096551734632373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ) : ℚ) / ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ (-1 : ℤ)

end

end A347291.P5220096551734632373

namespace A347291

/-- `∏{e}[n+1, ceil(2/#)]/((n+1)/∏{p}[n+1, #])^-1` -/
def P5220096551734632373.Spec : Prop :=
  ∀ n, P5220096551734632373.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P14200828636263259697

`∏{e}[n+1, ceil(2/#)]*A003557(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A347291

/-- `∏{e}[n+1, ceil(2/#)]*A003557(n+1)` -/
def P14200828636263259697.Spec : Prop :=
  ∀ n, P14200828636263259697.a n = A347291 (n + 1)

theorem P14200828636263259697.correct : P14200828636263259697.Spec := by
  intro n
  simp only [A347291, Nat.add_sub_cancel]

end A347291

/-! ## A347291.P914558999778572893

`(n+1)/∏{p}[n+1, #]*A056671(n+1)`
-/

namespace A347291.P914558999778572893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A056671 (n + 1) : ℚ)

end

end A347291.P914558999778572893

namespace A347291

/-- `(n+1)/∏{p}[n+1, #]*A056671(n+1)` -/
def P914558999778572893.Spec : Prop :=
  ∀ n, P914558999778572893.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P16989714944962477689

`(n+1)/∏{p}[n+1, #]*A000079(∑{e}[n+1, floor(1/#)])`
-/

namespace A347291.P16989714944962477689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000079 (∑ p ∈ Nat.primeFactors (f2 n), ⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋).toNat : ℚ)

end

end A347291.P16989714944962477689

namespace A347291

/-- `(n+1)/∏{p}[n+1, #]*A000079(∑{e}[n+1, floor(1/#)])` -/
def P16989714944962477689.Spec : Prop :=
  ∀ n, P16989714944962477689.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P2728433539768321750

`A003557(n+1)*A056671(n+1)`
-/

namespace A347291.P2728433539768321750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A056671 (n + 1)

end

end A347291.P2728433539768321750

namespace A347291

/-- `A003557(n+1)*A056671(n+1)` -/
def P2728433539768321750.Spec : Prop :=
  ∀ n, P2728433539768321750.a n = A347291 (n + 1)

end A347291

/-! ## A347291.P1246006905884483863

`A318519(n+1)/A357669(n+1)`
-/

namespace A347291.P1246006905884483863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318519 (n + 1) : ℚ) / (A357669 (n + 1) : ℚ)

end

end A347291.P1246006905884483863

namespace A347291

/-- `A318519(n+1)/A357669(n+1)` -/
def P1246006905884483863.Spec : Prop :=
  ∀ n, P1246006905884483863.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P1937703422706783404

`(n+1)/∏{p}[n+1, #]*A000005(A055231(n+1))`
-/

namespace A347291.P1937703422706783404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A000005 (A055231 (n + 1)).toNat : ℚ)

end

end A347291.P1937703422706783404

namespace A347291

/-- `(n+1)/∏{p}[n+1, #]*A000005(A055231(n+1))` -/
def P1937703422706783404.Spec : Prop :=
  ∀ n, P1937703422706783404.a n = (A347291 (n + 1) : ℚ)

end A347291

/-! ## A347291.P12027868345324273546

`A003557(n+1)*A006519(A181819(n+1))`
-/

namespace A347291.P12027868345324273546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A006519 (A181819 (n + 1)).toNat

end

end A347291.P12027868345324273546

namespace A347291

/-- `A003557(n+1)*A006519(A181819(n+1))` -/
def P12027868345324273546.Spec : Prop :=
  ∀ n, P12027868345324273546.a n = A347291 (n + 1)

end A347291

/-! ## A347291.P12643092800357639044

`A000005(n+1)*A003557(n+1)/A357669(n+1)`
-/

namespace A347291.P12643092800357639044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A003557 (n + 1) : ℚ) / (A357669 (n + 1) : ℚ)

end

end A347291.P12643092800357639044

namespace A347291

/-- `A000005(n+1)*A003557(n+1)/A357669(n+1)` -/
def P12643092800357639044.Spec : Prop :=
  ∀ n, P12643092800357639044.a n = (A347291 (n + 1) : ℚ)

end A347291

/-!
# A347295: a(n) = 1 + (a(n-1) interpreted as a hexadecimal number); a(1)=1.

The programs for A347295, there is no canonical definition to state claims against.
-/

/-! ## A347295.P8538633294678764932

`A102489(a(n-1))+1` with `a(0)=1`
-/

namespace A347295.P8538633294678764932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102489 (a (n - 1)).toNat + 1

end

end A347295.P8538633294678764932

/-! ## A347295.P13893960596460032195

`A020725(A102489(a(n-1)))` with `a(0)=1`
-/

namespace A347295.P13893960596460032195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020725 (A102489 (a (n - 1)).toNat).toNat

end

end A347295.P13893960596460032195

/-! ## A347295.P6127832128865557944

`A008619(2*A102489(a(n-1)))` with `a(0)=1`
-/

namespace A347295.P6127832128865557944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 (2 * A102489 (a (n - 1)).toNat).toNat

end

end A347295.P6127832128865557944

/-! ## A347295.P9447574390525006902

`A008611(3*A102489(a(n-1)))` with `a(0)=1`
-/

namespace A347295.P9447574390525006902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008611 (3 * A102489 (a (n - 1)).toNat).toNat

end

end A347295.P9447574390525006902

/-! ## A347295.P15110862387314700037

`∑[A275314(7^A326594(n))]`
-/

namespace A347295.P15110862387314700037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A326594 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347295.P15110862387314700037

/-!
# A347296: a(1) = 1; for n >= 1, if a(n) is even then a(n+1) = a(n) / 2, otherwise, say a(n) is the k-th odd term in the sequence, a(n+1) = a(n) + a(k).

The programs for A347296, there is no canonical definition to state claims against.
-/

/-! ## A347296.P516823406481803829

`A341231(A077741(n+1))%8`
-/

namespace A347296.P516823406481803829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341231 (A077741 (n + 1)).toNat) 8

end

end A347296.P516823406481803829

/-! ## A347296.P16957330264950669826

`∑{e}[∑[A188550(n+4)+A001008(n+1)], #]`
-/

namespace A347296.P16957330264950669826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188550 (n + 4) + A001008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A347296.P16957330264950669826

/-! ## A347296.P13452882206748640801

`A341231(n+1)/A063435(A076868(n))`
-/

namespace A347296.P13452882206748640801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341231 (n + 1) : ℚ) / (A063435 (A076868 n).toNat : ℚ)

end

end A347296.P13452882206748640801

/-! ## A347296.P70921130190289083

`A347762(gcd(A076868(n), A341231(n+1)))`
-/

namespace A347296.P70921130190289083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 (Int.gcd (A076868 n) (A341231 (n + 1)))

end

end A347296.P70921130190289083

/-!
# A347298: Numbers that contain an even digit d immediately followed by a digit <= d.

The programs for A347298, there is no canonical definition to state claims against.
-/

/-! ## A347298.P6411024972730598191

`comp[A342042(n+1)]`
-/

namespace A347298.P6411024972730598191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A347298.P6411024972730598191

/-! ## A347298.P6723488896860692004

`comp[A377912(n+1)]`
-/

namespace A347298.P6723488896860692004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A347298.P6723488896860692004

/-! ## A347298.P31308581926719961

`lt[A340479(A213217(n)), A065031(n)]`
-/

namespace A347298.P31308581926719961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A347298.P31308581926719961

/-! ## A347298.P2295305228252914144

`eq[n, A073730(A028310(A003100(n)))]`
-/

namespace A347298.P2295305228252914144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (A028310 (A003100 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347298.P2295305228252914144

/-!
# A347299: Lengths of successive rows when the Inventory Sequence A342585 is written as a triangle.

The programs for A347299, there is no canonical definition to state claims against.
-/

/-! ## A347299.P11572222619175529079

`A000007(n)+Δ[A343880(A028310(n))]`
-/

namespace A347299.P11572222619175529079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343880 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A347299.P11572222619175529079

/-! ## A347299.P9028004896079142743

`A343880(n+1)+A000007(n)-A343880(A028310(n))`
-/

namespace A347299.P9028004896079142743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343880 (n + 1) + (A000007 n - A343880 (A028310 n).toNat)

end

end A347299.P9028004896079142743

/-! ## A347299.P14258670192357669501

`A054977(n)*A343880(n+1)-A343880(A028310(n))`
-/

namespace A347299.P14258670192357669501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A343880 (n + 1) - A343880 (A028310 n).toNat

end

end A347299.P14258670192357669501

/-! ## A347299.P5553522052217900114

`A343880(n+1)-A057427(n)*A343880(A028310(n))`
-/

namespace A347299.P5553522052217900114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343880 (n + 1) - A057427 n * A343880 (A028310 n).toNat

end

end A347299.P5553522052217900114

/-! ## A347299.P10295063247494399063

`Δ[A343880(A028310(n))+A057427(n)]`
-/

namespace A347299.P10295063247494399063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343880 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347299.P10295063247494399063

/-! ## A347299.P6497383076802846343

`Δ[A343880(A028310(n))-A054977(n)]`
-/

namespace A347299.P6497383076802846343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343880 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347299.P6497383076802846343

/-! ## A347299.P7481680495100330092

`Δ[A343880(A028310(n))%A000466(n)]`
-/

namespace A347299.P7481680495100330092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343880 (A028310 n).toNat) (A000466 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347299.P7481680495100330092

/-! ## A347299.P18041997912722725748

`A028310(Δ[A343880(A028310(n))])`
-/

namespace A347299.P18041997912722725748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343880 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A347299.P18041997912722725748

