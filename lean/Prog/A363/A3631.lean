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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C003
import Seq.B004.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A363100: Fractal sequence which is left unchanged by interleaving it with the natural numbers, in such a way that each term k of the sequence is followed by the next k not-yet-seen natural numbers.

The programs for A363100, there is no canonical definition to state claims against.
-/

/-! ## A363100.P12605278963297242749

`A061395(A034855(n+2)*A050376(n+1))`
-/

namespace A363100.P12605278963297242749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A034855 (n + 2) * A050376 (n + 1)).toNat

end

end A363100.P12605278963297242749

/-! ## A363100.P4516439482940862047

`A061395(A002182(n+3)*A050376(n+1))`
-/

namespace A363100.P4516439482940862047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A002182 (n + 3) * A050376 (n + 1)).toNat

end

end A363100.P4516439482940862047

/-! ## A363100.P18332720683171303287

`A131818(eq[A326017(n), A359902(n+1)]+1)`
-/

namespace A363100.P18332720683171303287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A363100.P18332720683171303287

/-! ## A363100.P15214124147041781763

`A061395(A008642(2*(n+1))*A082522(n+1))`
-/

namespace A363100.P15214124147041781763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A008642 (2 * (n + 1)) * A082522 (n + 1)).toNat

end

end A363100.P15214124147041781763

/-!
# A363101: Even numbers that are neither prime powers nor squarefree.

The programs for A363101, the canonical program `A363101.P6678338457450784001` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363101 has offset 1).

The definition of A363101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363101.P6076959457918046560

`filter[2*(1+n), A355447(#)]`
-/

namespace A363101.P6076959457918046560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j) = 1) n)

end

end A363101.P6076959457918046560

namespace A363101

/-- `filter[2*(1+n), A355447(#)]` -/
def P6076959457918046560.Spec : Prop :=
  ∀ n, (P6076959457918046560.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P13413874337280020756

`eq[(-1)^(n+1), A355447(1+n)]+1`
-/

namespace A363101.P13413874337280020756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363101.P13413874337280020756

namespace A363101

/-- `eq[(-1)^(n+1), A355447(1+n)]+1` -/
def P13413874337280020756.Spec : Prop :=
  ∀ n, (P13413874337280020756.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P4950662122904419052

`filter[A013929(1+n), A081729(#)]`
-/

namespace A363101.P4950662122904419052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A081729 (f1 j).toNat = 1) n)

end

end A363101.P4950662122904419052

namespace A363101

/-- `filter[A013929(1+n), A081729(#)]` -/
def P4950662122904419052.Spec : Prop :=
  ∀ n, P4950662122904419052.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P9904860409066194707

`filter[A177712(n+1), A087049(#)]`
-/

namespace A363101.P9904860409066194707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A363101.P9904860409066194707

namespace A363101

/-- `filter[A177712(n+1), A087049(#)]` -/
def P9904860409066194707.Spec : Prop :=
  ∀ n, P9904860409066194707.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P1422066194971633284

`filter[A177712(n+1), A105234(#)]`
-/

namespace A363101.P1422066194971633284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A363101.P1422066194971633284

namespace A363101

/-- `filter[A177712(n+1), A105234(#)]` -/
def P1422066194971633284.Spec : Prop :=
  ∀ n, P1422066194971633284.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P6678338457450784001

`∩[A013929(n+1), A177712(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A363101

/-- `∩[A013929(n+1), A177712(n+1)]` -/
def P6678338457450784001.Spec : Prop :=
  ∀ n, (P6678338457450784001.a n : ℤ) = A363101 (n + 1)

theorem P6678338457450784001.correct : P6678338457450784001.Spec := by
  intro n
  simp only [A363101, Nat.add_sub_cancel]

end A363101

/-! ## A363101.P8507336943670316460

`∩[2*n, A126706(1+n)]`
-/

namespace A363101.P8507336943670316460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P8507336943670316460

namespace A363101

/-- `∩[2*n, A126706(1+n)]` -/
def P8507336943670316460.Spec : Prop :=
  ∀ n, (P8507336943670316460.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P2187150424524023068

`∩[A126706(n+1), A282671(n+1)]`
-/

namespace A363101.P2187150424524023068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P2187150424524023068

namespace A363101

/-- `∩[A126706(n+1), A282671(n+1)]` -/
def P2187150424524023068.Spec : Prop :=
  ∀ n, (P2187150424524023068.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P17207781530840340159

`∩[A126706(n+1), A176100(n+1)]`
-/

namespace A363101.P17207781530840340159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P17207781530840340159

namespace A363101

/-- `∩[A126706(n+1), A176100(n+1)]` -/
def P17207781530840340159.Spec : Prop :=
  ∀ n, (P17207781530840340159.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P15320307847860519279

`∩[A126706(n+1), A020744(n)+2]`
-/

namespace A363101.P15320307847860519279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P15320307847860519279

namespace A363101

/-- `∩[A126706(n+1), A020744(n)+2]` -/
def P15320307847860519279.Spec : Prop :=
  ∀ n, (P15320307847860519279.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P2237673966569638230

`∩[A126706(n+1), A020739(n)]`
-/

namespace A363101.P2237673966569638230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P2237673966569638230

namespace A363101

/-- `∩[A126706(n+1), A020739(n)]` -/
def P2237673966569638230.Spec : Prop :=
  ∀ n, (P2237673966569638230.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P15013848319211945062

`∩[A126706(n+1), A020744(n)]`
-/

namespace A363101.P15013848319211945062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P15013848319211945062

namespace A363101

/-- `∩[A126706(n+1), A020744(n)]` -/
def P15013848319211945062.Spec : Prop :=
  ∀ n, (P15013848319211945062.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P8046819629691027985

`∩[A126706(n+1), A005843(n)]`
-/

namespace A363101.P8046819629691027985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P8046819629691027985

namespace A363101

/-- `∩[A126706(n+1), A005843(n)]` -/
def P8046819629691027985.Spec : Prop :=
  ∀ n, (P8046819629691027985.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P7398159162117330581

`record[A348717(A126706(n+1))]`
-/

namespace A363101.P7398159162117330581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A126706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363101.P7398159162117330581

namespace A363101

/-- `record[A348717(A126706(n+1))]` -/
def P7398159162117330581.Spec : Prop :=
  ∀ n, P7398159162117330581.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P15244297059610607403

`filter[A126706(n+1), A046206(#)]`
-/

namespace A363101.P15244297059610607403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A046206 (f1 j).toNat = 1) n)

end

end A363101.P15244297059610607403

namespace A363101

/-- `filter[A126706(n+1), A046206(#)]` -/
def P15244297059610607403.Spec : Prop :=
  ∀ n, P15244297059610607403.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P13139980161000427809

`filter[A126706(n+1), A135528(#)]`
-/

namespace A363101.P13139980161000427809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A363101.P13139980161000427809

namespace A363101

/-- `filter[A126706(n+1), A135528(#)]` -/
def P13139980161000427809.Spec : Prop :=
  ∀ n, P13139980161000427809.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P15556287808305697473

`filter[A177712(n+1), A107078(#)]`
-/

namespace A363101.P15556287808305697473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A363101.P15556287808305697473

namespace A363101

/-- `filter[A177712(n+1), A107078(#)]` -/
def P15556287808305697473.Spec : Prop :=
  ∀ n, P15556287808305697473.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P3786745046194102478

`filter[A126706(n+1), A000034(#)]`
-/

namespace A363101.P3786745046194102478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A363101.P3786745046194102478

namespace A363101

/-- `filter[A126706(n+1), A000034(#)]` -/
def P3786745046194102478.Spec : Prop :=
  ∀ n, P3786745046194102478.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P17891199178983383329

`filter[A126706(n+1), A010684(#)]`
-/

namespace A363101.P17891199178983383329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010684 (f1 j).toNat = 1) n)

end

end A363101.P17891199178983383329

namespace A363101

/-- `filter[A126706(n+1), A010684(#)]` -/
def P17891199178983383329.Spec : Prop :=
  ∀ n, P17891199178983383329.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P18258011007888244990

`filter[A126706(n+1), A010689(#)]`
-/

namespace A363101.P18258011007888244990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010689 (f1 j).toNat = 1) n)

end

end A363101.P18258011007888244990

namespace A363101

/-- `filter[A126706(n+1), A010689(#)]` -/
def P18258011007888244990.Spec : Prop :=
  ∀ n, P18258011007888244990.a n = A363101 (n + 1)

end A363101

/-!
# A363102: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(-2))))).

The programs for A363102, there is no canonical definition to state claims against.
-/

/-! ## A363102.P7802285208188437155

`A025492(A127736(n+2))`
-/

namespace A363102.P7802285208188437155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A127736 (n + 2)).toNat

end

end A363102.P7802285208188437155

/-! ## A363102.P11518916288482942714

`A076566(A005564(n+3))`
-/

namespace A363102.P11518916288482942714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A005564 (n + 3)).toNat

end

end A363102.P11518916288482942714

/-! ## A363102.P10223017896034350255

`A025492(A005564(n+3)+1)`
-/

namespace A363102.P10223017896034350255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A005564 (n + 3) + 1).toNat

end

end A363102.P10223017896034350255

/-! ## A363102.P16215162487107296653

`A076566((n+1)*A000217(n+3))`
-/

namespace A363102.P16215162487107296653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 ((n + 1 : ℤ) * A000217 (n + 3)).toNat

end

end A363102.P16215162487107296653

/-!
# A363104: Expansion of g.f. A(x) satisfying 4 = Sum_{n=-oo..+oo} (-x)^n * (4*A(x) + x^(n-1))^(n+1).

The programs for A363104, there is no canonical definition to state claims against.
-/

/-! ## A363104.P10810962276079714132

`∑{#}[n, A359670(C(n+1, 2)+#)*4^#]`
-/

namespace A363104.P10810962276079714132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A359670 (Nat.choose (n + 1) 2 + k) * (4 ^ k : ℤ)

end

end A363104.P10810962276079714132

/-!
# A363105: Expansion of g.f. A(x) satisfying 5 = Sum_{n=-oo..+oo} (-x)^n * (5*A(x) + x^(n-1))^(n+1).

The programs for A363105, there is no canonical definition to state claims against.
-/

/-! ## A363105.P12679804829572960136

`∑{#}[n, A359670(C(n+1, 2)+#)*5^#]`
-/

namespace A363105.P12679804829572960136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A359670 (Nat.choose (n + 1) 2 + k) * (5 ^ k : ℤ)

end

end A363105.P12679804829572960136

/-!
# A363106: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (A(x) + x^(n-2))^(n+1).

The programs for A363106, there is no canonical definition to state claims against.
-/

/-! ## A363106.P12018684890103663639

`A350348(A052545(n)+n)`
-/

namespace A363106.P12018684890103663639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A052545 n + (n : ℤ)).toNat

end

end A363106.P12018684890103663639

/-! ## A363106.P14952035356764110060

`A205720(A232606(n))-A213443(n)`
-/

namespace A363106.P14952035356764110060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205720 (A232606 n).toNat - A213443 n

end

end A363106.P14952035356764110060

/-! ## A363106.P645684045157829178

`A143107(A000837(n))+A005773(n+1)`
-/

namespace A363106.P645684045157829178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143107 (A000837 n).toNat + A005773 (n + 1)

end

end A363106.P645684045157829178

/-!
# A363107: Expansion of g.f. A(x) satisfying 2 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (2*A(x) + x^(n-2))^(n+1).

The programs for A363107, there is no canonical definition to state claims against.
-/

/-! ## A363107.P8879770186975257581

`A208251(A052161(n)+1)-1`
-/

namespace A363107.P8879770186975257581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (A052161 n + 1).toNat - 1

end

end A363107.P8879770186975257581

/-! ## A363107.P15398634123945499014

`A279418(A343793(n))+A193777(n)`
-/

namespace A363107.P15398634123945499014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279418 (A343793 n).toNat + A193777 n

end

end A363107.P15398634123945499014

/-!
# A363108: Expansion of g.f. A(x) satisfying 3 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (3*A(x) + x^(n-2))^(n+1).

The programs for A363108, there is no canonical definition to state claims against.
-/

/-! ## A363108.P4330648919322142392

`Δ[Δ[A230980(A093635(n))]]`
-/

namespace A363108.P4330648919322142392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A093635 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363108.P4330648919322142392

/-! ## A363108.P6901234075012612283

`or(A003480(n), A353842(A018004(n)))`
-/

namespace A363108.P6901234075012612283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003480 n) (A353842 (A018004 n).toNat)

end

end A363108.P6901234075012612283

/-!
# A363109: Expansion of g.f. A(x) satisfying 4 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (4*A(x) + x^(n-2))^(n+1).

The programs for A363109, there is no canonical definition to state claims against.
-/

/-! ## A363109.P7248582885235659667

`A327860(n)+A247910(A092896(n))`
-/

namespace A363109.P7248582885235659667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n + A247910 (A092896 n).toNat

end

end A363109.P7248582885235659667

/-! ## A363109.P9918562794904040394

`A065361(A008486(n)*A088716(n))`
-/

namespace A363109.P9918562794904040394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A008486 n * A088716 n).toNat

end

end A363109.P9918562794904040394

/-!
# A363110: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k + (n-k+1)*x) / (1 + k*x + (n-k+1)*x^2).

The programs for A363110, there is no canonical definition to state claims against.
-/

/-! ## A363110.P11665512694301435622

`A030530(A192455(n))`
-/

namespace A363110.P11665512694301435622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A192455 n).toNat

end

end A363110.P11665512694301435622

/-! ## A363110.P8339292152760274755

`A024417(∑[A288910(n)])`
-/

namespace A363110.P8339292152760274755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363110.P8339292152760274755

/-! ## A363110.P5034997434326074658

`A009004(A086521(n+2))/3`
-/

namespace A363110.P5034997434326074658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009004 (A086521 (n + 2)).toNat : ℚ) / 3

end

end A363110.P5034997434326074658

/-! ## A363110.P11255740543515752295

`A229046(n)+A025466(A000153(n))`
-/

namespace A363110.P11255740543515752295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229046 n + A025466 (A000153 n).toNat

end

end A363110.P11255740543515752295

/-!
# A363111: Expansion of g.f. A(x) = F(x*F(x)^7), where F(x) = 1 + x*F(x)^4 is the g.f. of A002293.

The programs for A363111, there is no canonical definition to state claims against.
-/

/-! ## A363111.P10294728135880004410

`A202276(A332257(n+1))+1-n`
-/

namespace A363111.P10294728135880004410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202276 (A332257 (n + 1)).toNat + 1 - (n : ℤ)

end

end A363111.P10294728135880004410

/-!
# A363112: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} x^n * (2*A(x) - x^n)^(2*n-1).

The programs for A363112, there is no canonical definition to state claims against.
-/

/-! ## A363112.P16780688578356983378

`A324751(3*n²)`
-/

namespace A363112.P16780688578356983378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324751 (3 * n ^ 2)

end

end A363112.P16780688578356983378

/-!
# A363115: Expansion of e.g.f. log(1 - log( sqrt(1-2*x) )).

The programs for A363115, there is no canonical definition to state claims against.
-/

/-! ## A363115.P16196296745359231706

`A102806(3*a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A363115.P16196296745359231706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  A102806 (3 * a (n - 1) + a (n - 2)).toNat

end

end A363115.P16196296745359231706

/-! ## A363115.P6009711021108415754

`A102806(a(n-2)+lcm(3, a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A363115.P6009711021108415754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  A102806 (a (n - 2) + (Int.lcm 3 (a (n - 1)) : ℤ)).toNat

end

end A363115.P6009711021108415754

/-!
# A363116: Expansion of e.g.f. log(1 - (1/3)*log(1-3*x)).

The programs for A363116, there is no canonical definition to state claims against.
-/

/-! ## A363116.P6729171887237707168

`A004526(∑[A089466(n)])`
-/

namespace A363116.P6729171887237707168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363116.P6729171887237707168

/-! ## A363116.P9564230489211281748

`∑[A333348(∑[A000312(n)])]`
-/

namespace A363116.P9564230489211281748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363116.P9564230489211281748

/-!
# A363121: Primitive terms of A116882: terms k of A116882 such that k/2 is not a term of A116882.

The programs for A363121, the canonical program `A363121.P4116322896546047244` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363121 has offset 1).

The definition of A363121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363121.P9130859715061906319

`record[2^ceil(log2(n+1))*xor(1, n)]`
-/

namespace A363121.P9130859715061906319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (Nat.xor 1 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363121.P9130859715061906319

namespace A363121

/-- `record[2^ceil(log2(n+1))*xor(1, n)]` -/
def P9130859715061906319.Spec : Prop :=
  ∀ n, P9130859715061906319.a n = (A363121 (n + 1) : ℚ)

end A363121

/-! ## A363121.P7074542324168731471

`(2*n+1)*2^fp[2^(n-1)]`
-/

namespace A363121.P7074542324168731471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * 2 ^ SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A363121.P7074542324168731471

namespace A363121

/-- `(2*n+1)*2^fp[2^(n-1)]` -/
def P7074542324168731471.Spec : Prop :=
  ∀ n, (P7074542324168731471.a n : ℤ) = A363121 (n + 1)

end A363121

/-! ## A363121.P11524153783741022236

`(2*n+1)*fp[or(n, n-1)/4]`
-/

namespace A363121.P11524153783741022236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A363121.P11524153783741022236

namespace A363121

/-- `(2*n+1)*fp[or(n, n-1)/4]` -/
def P11524153783741022236.Spec : Prop :=
  ∀ n, (P11524153783741022236.a n : ℤ) = A363121 (n + 1)

end A363121

/-! ## A363121.P3548663786437130087

`(2*n+1)*fp[xor(n, n-1)/4]`
-/

namespace A363121.P3548663786437130087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0

end

end A363121.P3548663786437130087

namespace A363121

/-- `(2*n+1)*fp[xor(n, n-1)/4]` -/
def P3548663786437130087.Spec : Prop :=
  ∀ n, (P3548663786437130087.a n : ℤ) = A363121 (n + 1)

end A363121

/-! ## A363121.P733635129736789915

`record[lcm(and(a(n-2), n+1), n)]` with `a(0)=1, a(1)=-6, a(2)=12`
-/

namespace A363121.P733635129736789915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -6, 12] fun n f1 =>
  (Int.lcm (Int.land (f1 (n - 2)) (n + 1 : ℤ)) (n : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363121.P733635129736789915

namespace A363121

/-- `record[lcm(and(a(n-2), n+1), n)]` -/
def P733635129736789915.Spec : Prop :=
  ∀ n, P733635129736789915.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P11474101542873083817

`record[((-1)^n+n)*2^ceil(log2(n+1))]`
-/

namespace A363121.P11474101542873083817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + (n : ℤ) : ℚ) * (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363121.P11474101542873083817

namespace A363121

/-- `record[((-1)^n+n)*2^ceil(log2(n+1))]` -/
def P11474101542873083817.Spec : Prop :=
  ∀ n, P11474101542873083817.a n = (A363121 (n + 1) : ℚ)

end A363121

/-! ## A363121.P4116322896546047244

`A062383(n)*A133653(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A363121

/-- `A062383(n)*A133653(n+1)` -/
def P4116322896546047244.Spec : Prop :=
  ∀ n, P4116322896546047244.a n = A363121 (n + 1)

theorem P4116322896546047244.correct : P4116322896546047244.Spec := by
  intro n
  simp only [A363121, Nat.add_sub_cancel]

end A363121

/-! ## A363121.P15958240016980981997

`(2*n+1)*A062383(A331166(2*n))`
-/

namespace A363121.P15958240016980981997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A062383 (A331166 (2 * n)).toNat

end

end A363121.P15958240016980981997

namespace A363121

/-- `(2*n+1)*A062383(A331166(2*n))` -/
def P15958240016980981997.Spec : Prop :=
  ∀ n, P15958240016980981997.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P5873534257505564047

`(A003817(2*n)+1)*Δ[n²]`
-/

namespace A363121.P5873534257505564047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003817 (2 * n) + 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A363121.P5873534257505564047

namespace A363121

/-- `(A003817(2*n)+1)*Δ[n²]` -/
def P5873534257505564047.Spec : Prop :=
  ∀ n, P5873534257505564047.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P32992320382349367

`2^ceil(log2(n+1))*record[A145979(n)]`
-/

namespace A363121.P32992320382349367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A363121.P32992320382349367

namespace A363121

/-- `2^ceil(log2(n+1))*record[A145979(n)]` -/
def P32992320382349367.Spec : Prop :=
  ∀ n, P32992320382349367.a n = (A363121 (n + 1) : ℚ)

end A363121

/-! ## A363121.P9371699926218000531

`(2*n+1)*A062383(A053644(2*n))`
-/

namespace A363121.P9371699926218000531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A062383 (A053644 (2 * n)).toNat

end

end A363121.P9371699926218000531

namespace A363121

/-- `(2*n+1)*A062383(A053644(2*n))` -/
def P9371699926218000531.Spec : Prop :=
  ∀ n, P9371699926218000531.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P1459653864312232223

`A062383(2*n)*Δ[n²]`
-/

namespace A363121.P1459653864312232223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A363121.P1459653864312232223

namespace A363121

/-- `A062383(2*n)*Δ[n²]` -/
def P1459653864312232223.Spec : Prop :=
  ∀ n, P1459653864312232223.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P16271355161417589817

`(2*n+1)*A384543(2*n+1)`
-/

namespace A363121.P16271355161417589817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A384543 (2 * n + 1)

end

end A363121.P16271355161417589817

namespace A363121

/-- `(2*n+1)*A384543(2*n+1)` -/
def P16271355161417589817.Spec : Prop :=
  ∀ n, P16271355161417589817.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P279290677308807376

`A035928(2*n+1)-A036044(n)`
-/

namespace A363121.P279290677308807376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035928 (2 * n + 1) - A036044 n

end

end A363121.P279290677308807376

namespace A363121

/-- `A035928(2*n+1)-A036044(n)` -/
def P279290677308807376.Spec : Prop :=
  ∀ n, P279290677308807376.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P663526804695478440

`A264619(2*n)-A048701(2*n)`
-/

namespace A363121.P663526804695478440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 (2 * n) - A048701 (2 * n)

end

end A363121.P663526804695478440

namespace A363121

/-- `A264619(2*n)-A048701(2*n)` -/
def P663526804695478440.Spec : Prop :=
  ∀ n, P663526804695478440.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P1295386907228300870

`Δ[n²]*A022998(A053644(Δ[n²]))`
-/

namespace A363121.P1295386907228300870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A022998 (A053644 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

end

end A363121.P1295386907228300870

namespace A363121

/-- `Δ[n²]*A022998(A053644(Δ[n²]))` -/
def P1295386907228300870.Spec : Prop :=
  ∀ n, P1295386907228300870.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P905468494290333567

`(2*n+1)*A062383(A001969(n+1))`
-/

namespace A363121.P905468494290333567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A062383 (A001969 (n + 1)).toNat

end

end A363121.P905468494290333567

namespace A363121

/-- `(2*n+1)*A062383(A001969(n+1))` -/
def P905468494290333567.Spec : Prop :=
  ∀ n, P905468494290333567.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P3869583251145123587

`A000265(2*n+1)*A062383(2*n)`
-/

namespace A363121.P3869583251145123587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * n + 1) * A062383 (2 * n)

end

end A363121.P3869583251145123587

namespace A363121

/-- `A000265(2*n+1)*A062383(2*n)` -/
def P3869583251145123587.Spec : Prop :=
  ∀ n, P3869583251145123587.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P14061801572398301910

`(2*n+1)*A011782(A070941(2*n))`
-/

namespace A363121.P14061801572398301910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A011782 (A070941 (2 * n)).toNat

end

end A363121.P14061801572398301910

namespace A363121

/-- `(2*n+1)*A011782(A070941(2*n))` -/
def P14061801572398301910.Spec : Prop :=
  ∀ n, P14061801572398301910.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P6837579286164564971

`A053644(2*n+1)*A103517(2*n)`
-/

namespace A363121.P6837579286164564971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) * A103517 (2 * n)

end

end A363121.P6837579286164564971

namespace A363121

/-- `A053644(2*n+1)*A103517(2*n)` -/
def P6837579286164564971.Spec : Prop :=
  ∀ n, P6837579286164564971.a n = A363121 (n + 1)

end A363121

/-!
# A363122: Numbers k such that the highest power of 2 dividing k is larger than the highest power of p dividing k for any odd prime p.

The programs for A363122, there is no canonical definition to state claims against.
-/

/-! ## A363122.P12068855535567812431

`eq[2, A088387(n+1)]+1`
-/

namespace A363122.P12068855535567812431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363122.P12068855535567812431

/-! ## A363122.P12136618022581296413

`eq[2, A088387(A028310(n))]`
-/

namespace A363122.P12136618022581296413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363122.P12136618022581296413

/-! ## A363122.P12187924223286091922

`A020725(eq[2, A088387(n+1)])`
-/

namespace A363122.P12187924223286091922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363122.P12187924223286091922

/-! ## A363122.P2463496308213636777

`lt[1, A038608(A034699(n+1))]+1`
-/

namespace A363122.P2463496308213636777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A034699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363122.P2463496308213636777

/-! ## A363122.P7315550137707513639

`lt[A320900(A034699(n+1)), A322353(n+1)]+1`
-/

namespace A363122.P7315550137707513639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (A034699 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363122.P7315550137707513639

/-!
# A363123: Primitive terms of A363122: terms k of A363122 such that k/2 is not a term of A363122.

The programs for A363123, there is no canonical definition to state claims against.
-/

/-! ## A363123.P17981838004448988649

`A000118(n)+A000005(A066289(n+1))`
-/

namespace A363123.P17981838004448988649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n + A000005 (A066289 (n + 1)).toNat

end

end A363123.P17981838004448988649

/-! ## A363123.P9350316590500719416

`A076380(n)*A232113(A331846(3*n))`
-/

namespace A363123.P9350316590500719416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076380 n * A232113 (A331846 (3 * n)).toNat

end

end A363123.P9350316590500719416

/-!
# A363127: Number of non-modes in the multiset of prime factors of n.

The programs for A363127, the canonical program `A363127.P3526787464918356969` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363127 has offset 1).

The definition of A363127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363127.P3526787464918356969

`∑{p}[n+1, gcd(n, #)]-A362611(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A363127

/-- `∑{p}[n+1, gcd(n, #)]-A362611(n+1)` -/
def P3526787464918356969.Spec : Prop :=
  ∀ n, P3526787464918356969.a n = A363127 (n + 1)

theorem P3526787464918356969.correct : P3526787464918356969.Spec := by
  intro n
  simp only [A363127, Nat.add_sub_cancel]

end A363127

/-! ## A363127.P13611993579326790264

`A001221(A375932(1+n))`
-/

namespace A363127.P13611993579326790264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A375932 (1 + n)).toNat

end

end A363127.P13611993579326790264

namespace A363127

/-- `A001221(A375932(1+n))` -/
def P13611993579326790264.Spec : Prop :=
  ∀ n, P13611993579326790264.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P554756693755549897

`A243055(A238745(n+1))`
-/

namespace A363127.P554756693755549897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A238745 (n + 1)).toNat

end

end A363127.P554756693755549897

namespace A363127

/-- `A243055(A238745(n+1))` -/
def P554756693755549897.Spec : Prop :=
  ∀ n, P554756693755549897.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P2166196878521158787

`A001221(n+1)-A362611(n+1)`
-/

namespace A363127.P2166196878521158787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A362611 (n + 1)

end

end A363127.P2166196878521158787

namespace A363127

/-- `A001221(n+1)-A362611(n+1)` -/
def P2166196878521158787.Spec : Prop :=
  ∀ n, P2166196878521158787.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P11448662260249603973

`A001221(n+1)-A001221(A375931(n+1))`
-/

namespace A363127.P11448662260249603973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A375931 (n + 1)).toNat

end

end A363127.P11448662260249603973

namespace A363127

/-- `A001221(n+1)-A001221(A375931(n+1))` -/
def P11448662260249603973.Spec : Prop :=
  ∀ n, P11448662260249603973.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P17688793155851917855

`A001222(A034444(n+1))-A362611(n+1)`
-/

namespace A363127.P17688793155851917855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (n + 1)).toNat - A362611 (n + 1)

end

end A363127.P17688793155851917855

namespace A363127

/-- `A001222(A034444(n+1))-A362611(n+1)` -/
def P17688793155851917855.Spec : Prop :=
  ∀ n, P17688793155851917855.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P10306079672712029696

`A362611(A007947(n+1))-A362611(n+1)`
-/

namespace A363127.P10306079672712029696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A007947 (n + 1)).toNat - A362611 (n + 1)

end

end A363127.P10306079672712029696

namespace A363127

/-- `A362611(A007947(n+1))-A362611(n+1)` -/
def P10306079672712029696.Spec : Prop :=
  ∀ n, P10306079672712029696.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P4192735906688415981

`∑{p}[A066636(n+1), A066636(#)]`
-/

namespace A363127.P4192735906688415981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A066636 p

end

end A363127.P4192735906688415981

namespace A363127

/-- `∑{p}[A066636(n+1), A066636(#)]` -/
def P4192735906688415981.Spec : Prop :=
  ∀ n, P4192735906688415981.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P14020937560861002147

`A001221(A066636(n+1))`
-/

namespace A363127.P14020937560861002147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066636 (n + 1)).toNat

end

end A363127.P14020937560861002147

namespace A363127

/-- `A001221(A066636(n+1))` -/
def P14020937560861002147.Spec : Prop :=
  ∀ n, P14020937560861002147.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P608871046565752460

`A363131(A295417(n+1))`
-/

namespace A363127.P608871046565752460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363131 (A295417 (n + 1)).toNat

end

end A363127.P608871046565752460

namespace A363127

/-- `A363131(A295417(n+1))` -/
def P608871046565752460.Spec : Prop :=
  ∀ n, P608871046565752460.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P11573094607688880173

`A362611(A375932((n+1)²))`
-/

namespace A363127.P11573094607688880173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (A375932 ((n + 1) ^ 2)).toNat

end

end A363127.P11573094607688880173

namespace A363127

/-- `A362611(A375932((n+1)²))` -/
def P11573094607688880173.Spec : Prop :=
  ∀ n, P11573094607688880173.a n = A363127 (n + 1)

end A363127

/-!
# A363128: Number of integer partitions of n with more than one non-co-mode.

The programs for A363128, there is no canonical definition to state claims against.
-/

/-! ## A363128.P10033546326405845567

`A363124(n)+A363125(n)-A363129(n)`
-/

namespace A363128.P10033546326405845567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363124 n + (A363125 n - A363129 n)

end

end A363128.P10033546326405845567

/-!
# A363129: Number of integer partitions of n with a unique non-co-mode.

The programs for A363129, there is no canonical definition to state claims against.
-/

/-! ## A363129.P2076122893985518861

`A363124(n)+A363125(n)-A363128(n)`
-/

namespace A363129.P2076122893985518861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363124 n + (A363125 n - A363128 n)

end

end A363129.P2076122893985518861

/-! ## A363129.P14129900941204006612

`A360244(n)+A277017(A000081(n))`
-/

namespace A363129.P14129900941204006612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360244 n + A277017 (A000081 n).toNat

end

end A363129.P14129900941204006612

/-! ## A363129.P7915265548528561108

`A360244(n)+A171588(A134964(n))`
-/

namespace A363129.P7915265548528561108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360244 n + A171588 (A134964 n).toNat

end

end A363129.P7915265548528561108

/-!
# A363130: Irregular triangle read by rows where T(n,k) is the number of integer partitions of n with k non-co-modes, all 0's removed.

The programs for A363130, there is no canonical definition to state claims against.
-/

/-! ## A363130.P1971060873083239263

`A325242(A028240(n)+n)`
-/

namespace A363130.P1971060873083239263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325242 (A028240 n + (n : ℤ)).toNat

end

end A363130.P1971060873083239263

/-! ## A363130.P575705368739829705

`A325242(A003558(ceil(2^(n-1))))`
-/

namespace A363130.P575705368739829705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325242 (A003558 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A363130.P575705368739829705

/-! ## A363130.P15608408228436138481

`A325242(A029931(ceil(2^(n-1))))`
-/

namespace A363130.P15608408228436138481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325242 (A029931 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A363130.P15608408228436138481

/-! ## A363130.P1856380090963350494

`A325242(n^A124010(3*n+1))`
-/

namespace A363130.P1856380090963350494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325242 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A124010 (3 * n + 1) : ℤ))).toNat

end

end A363130.P1856380090963350494

/-! ## A363130.P17113737095769239816

`A325242(C(A382858(n+1), n+1)+n)`
-/

namespace A363130.P17113737095769239816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325242 (Nat.choose (A382858 (n + 1)).toNat (n + 1) + n)

end

end A363130.P17113737095769239816

/-!
# A363131: Number of non-co-modes in the prime factorization of n.

The programs for A363131, the canonical program `A363131.P14795479166980010344` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363131 has offset 1).

The definition of A363131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363131.P14795479166980010344

`∑{p}[n+1, gcd(n, #)]-A362613(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363131

/-- `∑{p}[n+1, gcd(n, #)]-A362613(n+1)` -/
def P14795479166980010344.Spec : Prop :=
  ∀ n, P14795479166980010344.a n = A363131 (n + 1)

theorem P14795479166980010344.correct : P14795479166980010344.Spec := by
  intro n
  simp only [A363131, Nat.add_sub_cancel]

end A363131

/-! ## A363131.P476790898493329662

`A001221(A062760(1+n))`
-/

namespace A363131.P476790898493329662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062760 (1 + n)).toNat

end

end A363131.P476790898493329662

namespace A363131

/-- `A001221(A062760(1+n))` -/
def P476790898493329662.Spec : Prop :=
  ∀ n, P476790898493329662.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P10233448364171302699

`∑{p}[A062760(1+n), A000188(#)]`
-/

namespace A363131.P10233448364171302699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A363131.P10233448364171302699

namespace A363131

/-- `∑{p}[A062760(1+n), A000188(#)]` -/
def P10233448364171302699.Spec : Prop :=
  ∀ n, P10233448364171302699.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P3133129958499821270

`∑{p}[A062760(n+1), A050336(#)]`
-/

namespace A363131.P3133129958499821270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A050336 p

end

end A363131.P3133129958499821270

namespace A363131

/-- `∑{p}[A062760(n+1), A050336(#)]` -/
def P3133129958499821270.Spec : Prop :=
  ∀ n, P3133129958499821270.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P10911828416333758608

`∑{p}[A062760(n+1), A062760(#)]`
-/

namespace A363131.P10911828416333758608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A062760 p

end

end A363131.P10911828416333758608

namespace A363131

/-- `∑{p}[A062760(n+1), A062760(#)]` -/
def P10911828416333758608.Spec : Prop :=
  ∀ n, P10911828416333758608.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P8292068773755218297

`∑{e}[A028234(A181819(n+1)), #]`
-/

namespace A363131.P8292068773755218297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363131.P8292068773755218297

namespace A363131

/-- `∑{e}[A028234(A181819(n+1)), #]` -/
def P8292068773755218297.Spec : Prop :=
  ∀ n, (P8292068773755218297.a n : ℤ) = A363131 (n + 1)

end A363131

/-! ## A363131.P17549749576836596674

`A001221(n+1)-A362613(n+1)`
-/

namespace A363131.P17549749576836596674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A362613 (n + 1)

end

end A363131.P17549749576836596674

namespace A363131

/-- `A001221(n+1)-A362613(n+1)` -/
def P17549749576836596674.Spec : Prop :=
  ∀ n, P17549749576836596674.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P7389074528362252574

`A362613(∏{p}[n+1, #])-A362613(n+1)`
-/

namespace A363131.P7389074528362252574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362613 (∏ p ∈ Nat.primeFactors (f1 n), p) - A362613 (n + 1)

end

end A363131.P7389074528362252574

namespace A363131

/-- `A362613(∏{p}[n+1, #])-A362613(n+1)` -/
def P7389074528362252574.Spec : Prop :=
  ∀ n, P7389074528362252574.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P7162765300527183583

`A362613(A007947(n+1))-A362613(n+1)`
-/

namespace A363131.P7162765300527183583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362613 (A007947 (n + 1)).toNat - A362613 (n + 1)

end

end A363131.P7162765300527183583

namespace A363131

/-- `A362613(A007947(n+1))-A362613(n+1)` -/
def P7162765300527183583.Spec : Prop :=
  ∀ n, P7162765300527183583.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P8613064621130210151

`A001221(n+1)-A067029(∏{e}[n+1, A058853(#)])`
-/

namespace A363131.P8613064621130210151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A067029 (∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)).toNat

end

end A363131.P8613064621130210151

namespace A363131

/-- `A001221(n+1)-A067029(∏{e}[n+1, A058853(#)])` -/
def P8613064621130210151.Spec : Prop :=
  ∀ n, P8613064621130210151.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P2638032396061273711

`A001221(n+1)-A067029(∏{e}[n+1, A061022(#)])`
-/

namespace A363131.P2638032396061273711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A067029 (∏ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p)).toNat

end

end A363131.P2638032396061273711

namespace A363131

/-- `A001221(n+1)-A067029(∏{e}[n+1, A061022(#)])` -/
def P2638032396061273711.Spec : Prop :=
  ∀ n, P2638032396061273711.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P16407744857051845108

`A001221(n+1)-A067029(∏{e}[n+1, A216886(#)])`
-/

namespace A363131.P16407744857051845108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A067029 (∏ p ∈ Nat.primeFactors (f1 n), A216886 (Nat.factorization (f1 n) p)).toNat

end

end A363131.P16407744857051845108

namespace A363131

/-- `A001221(n+1)-A067029(∏{e}[n+1, A216886(#)])` -/
def P16407744857051845108.Spec : Prop :=
  ∀ n, P16407744857051845108.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P1512903308003155749

`A001221(n+1)-A067029(A373246(n+1)*A373249(n+1))`
-/

namespace A363131.P1512903308003155749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A067029 (A373246 (n + 1) * A373249 (n + 1)).toNat

end

end A363131.P1512903308003155749

namespace A363131

/-- `A001221(n+1)-A067029(A373246(n+1)*A373249(n+1))` -/
def P1512903308003155749.Spec : Prop :=
  ∀ n, P1512903308003155749.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P3541707514116711291

`A172196(n)%A062760(n+1)`
-/

namespace A363131.P3541707514116711291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172196 n) (A062760 (n + 1))

end

end A363131.P3541707514116711291

namespace A363131

/-- `A172196(n)%A062760(n+1)` -/
def P3541707514116711291.Spec : Prop :=
  ∀ n, P3541707514116711291.a n = A363131 (n + 1)

end A363131

/-! ## A363131.P11437680499220912701

`C(A071625(n+1), A071625(A062876(3*(n+1))))`
-/

namespace A363131.P11437680499220912701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071625 (n + 1)).toNat (A071625 (A062876 (3 * (n + 1))).toNat).toNat

end

end A363131.P11437680499220912701

namespace A363131

/-- `C(A071625(n+1), A071625(A062876(3*(n+1))))` -/
def P11437680499220912701.Spec : Prop :=
  ∀ n, (P11437680499220912701.a n : ℤ) = A363131 (n + 1)

end A363131

/-!
# A363132: Number of integer partitions of 2n such that 2*(minimum) = (mean).

The programs for A363132, there is no canonical definition to state claims against.
-/

/-! ## A363132.P16186497523391439346

`A303601(A261983(n)+A004110(n))`
-/

namespace A363132.P16186497523391439346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303601 (A261983 n + A004110 n).toNat

end

end A363132.P16186497523391439346

/-! ## A363132.P997241027524228005

`A003002(A005575(n+1)*A361477(n))`
-/

namespace A363132.P997241027524228005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A005575 (n + 1) * A361477 n).toNat

end

end A363132.P997241027524228005

/-! ## A363132.P2889133276745365611

`A303656(A005191(n)-A309632(2*n+3))`
-/

namespace A363132.P2889133276745365611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303656 (A005191 n - A309632 (2 * n + 3)).toNat

end

end A363132.P2889133276745365611

/-!
# A363134: Positive integers whose multiset of prime indices satisfies: (length) = 2*(minimum).

The programs for A363134, there is no canonical definition to state claims against.
-/

/-! ## A363134.P14367559859891402511

`filter[A026482(n+2), A065043(#)]`
-/

namespace A363134.P14367559859891402511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A363134.P14367559859891402511

/-! ## A363134.P3253882460447558984

`∩[A026482(n+1), A331006(n+1)]`
-/

namespace A363134.P3253882460447558984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363134.P3253882460447558984

/-! ## A363134.P9820894453101976984

`∪[A046317(1+n), A100484(n+1)]`
-/

namespace A363134.P9820894453101976984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363134.P9820894453101976984

/-! ## A363134.P12452958252882022462

`eq[A033999(n)+3, A001222(n+1)]+1`
-/

namespace A363134.P12452958252882022462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363134.P12452958252882022462

/-! ## A363134.P2058798915709602254

`eq[A001222(A301682(3*n)), A010718(n)]`
-/

namespace A363134.P2058798915709602254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A301682 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363134.P2058798915709602254

/-! ## A363134.P7491700580592054925

`eq[A001222(n+1), A153810(A007814(n+1))]+1`
-/

namespace A363134.P7491700580592054925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363134.P7491700580592054925

/-!
# A363135: Expansion of g.f. A(x) satisfying A(x)^2 = Sum_{n=-oo..+oo} (-x)^n * (A(x)^3 + x^(n-1))^(n+1).

The programs for A363135, there is no canonical definition to state claims against.
-/

/-! ## A363135.P11785703311982087490

`A004183(∑[A231615(n)])`
-/

namespace A363135.P11785703311982087490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363135.P11785703311982087490

/-!
# A363136: Expansion of g.f. A(x) satisfying A(x)^3 = Sum_{n=-oo..+oo} (-x)^n * (A(x)^4 + x^(n-1))^(n+1).

The programs for A363136, there is no canonical definition to state claims against.
-/

/-! ## A363136.P18400139064631592570

`A064807(A360950(n)+A053735(n))`
-/

namespace A363136.P18400139064631592570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (A360950 n + A053735 n).toNat

end

end A363136.P18400139064631592570

/-!
# A363137: Expansion of g.f. A(x) satisfying A(x)^4 = Sum_{n=-oo..+oo} (-x)^n * (A(x)^5 + x^(n-1))^(n+1).

The programs for A363137, there is no canonical definition to state claims against.
-/

/-! ## A363137.P3522286559537606578

`A047201(A260332(n))+A000045(n)`
-/

namespace A363137.P3522286559537606578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A260332 n).toNat + A000045 n

end

end A363137.P3522286559537606578

/-!
# A363138: G.f. A(x) satisfies: 0 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (A(x) - x^n)^n * (1 - x^n*A(x))^n.

The programs for A363138, there is no canonical definition to state claims against.
-/

/-! ## A363138.P13881792797660142710

`∑[A100143(A011782(n))]`
-/

namespace A363138.P13881792797660142710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363138.P13881792797660142710

/-! ## A363138.P5641048519128452251

`∑[A100143(A066178(n))]`
-/

namespace A363138.P5641048519128452251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A066178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363138.P5641048519128452251

/-! ## A363138.P10552707140644665704

`∑[A100143(A000010(2^n))]`
-/

namespace A363138.P10552707140644665704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A000010 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363138.P10552707140644665704

/-!
# A363139: Expansion of A(x) satisfying -x = Sum_{n=-oo..+oo} (-x)^n * (1 - (-x)^n)^n / A(x)^n.

The programs for A363139, there is no canonical definition to state claims against.
-/

/-! ## A363139.P2765116240574199222

`A332246(A372535(n+1))`
-/

namespace A363139.P2765116240574199222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A372535 (n + 1)).toNat

end

end A363139.P2765116240574199222

/-! ## A363139.P6019789047206870850

`A048896(A350904(n+3))+A000389(n+2)`
-/

namespace A363139.P6019789047206870850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A350904 (n + 3)).toNat + A000389 (n + 2)

end

end A363139.P6019789047206870850

/-!
# A363140: Expansion of g.f. A(x) satisfying 2 = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x) + x^(2*n))^(2*n+1).

The programs for A363140, there is no canonical definition to state claims against.
-/

/-! ## A363140.P6740308354844401776

`A110656(A150951(n+1))`
-/

namespace A363140.P6740308354844401776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A150951 (n + 1)).toNat

end

end A363140.P6740308354844401776

/-! ## A363140.P10238924215478215298

`A332086(A084159(n))+n`
-/

namespace A363140.P10238924215478215298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A084159 n).toNat + (n : ℤ)

end

end A363140.P10238924215478215298

/-!
# A363142: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x) + x^(2*n-1))^(n+1).

The programs for A363142, there is no canonical definition to state claims against.
-/

/-! ## A363142.P6424919052039319646

`∑{#}[floor(n/2), A359670(C(n-#+1, 2)+n-2*#)]`
-/

namespace A363142.P6424919052039319646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A359670 ((Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 : ℤ) + ((n : ℤ) - (2 * k : ℤ))).toNat

end

end A363142.P6424919052039319646

/-! ## A363142.P3452503796419085949

`round(A089935(2*n+1)/3)`
-/

namespace A363142.P3452503796419085949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A089935 (2 * n + 1) : ℚ) / 3)

end

end A363142.P3452503796419085949

/-! ## A363142.P854725287130104211

`A100196(A150135(n))`
-/

namespace A363142.P854725287130104211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A150135 n).toNat

end

end A363142.P854725287130104211

/-! ## A363142.P3337093246171379474

`A026819(row(A031971(n+1)))`
-/

namespace A363142.P3337093246171379474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (SequenceMachineLib.triRow (A031971 (n + 1)).toNat)

end

end A363142.P3337093246171379474

/-!
# A363143: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x) + x^(3*n-1))^(n+1).

The programs for A363143, there is no canonical definition to state claims against.
-/

/-! ## A363143.P4988747481150105781

`A289500(A153439(n+1)+A122423(n+1))`
-/

namespace A363143.P4988747481150105781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 (A153439 (n + 1) + A122423 (n + 1)).toNat

end

end A363143.P4988747481150105781

/-! ## A363143.P7504928304139918401

`A131242(A094858(n+5))+1`
-/

namespace A363143.P7504928304139918401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 (A094858 (n + 5)).toNat + 1

end

end A363143.P7504928304139918401

/-! ## A363143.P9578983035782686656

`A182049(A275425(n))+A007909(n)`
-/

namespace A363143.P9578983035782686656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A275425 n).toNat + A007909 n

end

end A363143.P9578983035782686656

/-! ## A363143.P12267816447633779575

`A101776(A261489(n)-A020915(2*n+1))`
-/

namespace A363143.P12267816447633779575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A261489 n - A020915 (2 * n + 1)).toNat

end

end A363143.P12267816447633779575

/-!
# A363144: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x) + x^(4*n-1))^(n+1).

The programs for A363144, there is no canonical definition to state claims against.
-/

/-! ## A363144.P16377358431862327131

`A085736(A098575(n))`
-/

namespace A363144.P16377358431862327131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A098575 n).toNat

end

end A363144.P16377358431862327131

/-! ## A363144.P8417736604610691897

`A185264(A052702(n))+A098575(n)`
-/

namespace A363144.P8417736604610691897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A052702 n).toNat + A098575 n

end

end A363144.P8417736604610691897

/-! ## A363144.P7739515888654076135

`A129251(A217309(n))+A098575(n)`
-/

namespace A363144.P7739515888654076135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A217309 n).toNat + A098575 n

end

end A363144.P7739515888654076135

/-! ## A363144.P7651767124851980705

`A184974(A184974(n))+A098575(n)`
-/

namespace A363144.P7651767124851980705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A184974 n).toNat + A098575 n

end

end A363144.P7651767124851980705

/-! ## A363144.P13629991334709147727

`A326464(n)+A167976(A098575(n))`
-/

namespace A363144.P13629991334709147727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326464 n + A167976 (A098575 n).toNat

end

end A363144.P13629991334709147727

/-!
# A363145: Number of subsets S of {A007931(1), A007931(2), ..., A007931(n)} with the property that no element of S is a substring of any other.

The programs for A363145, there is no canonical definition to state claims against.
-/

/-! ## A363145.P9340814440672925518

`∑[A014176(A151462(n)+1)]`
-/

namespace A363145.P9340814440672925518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((A151462 n + 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363145.P9340814440672925518

/-! ## A363145.P8177860083031964427

`∑[A020807(A151462(n)+1)]`
-/

namespace A363145.P8177860083031964427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020807 (A151462 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363145.P8177860083031964427

/-! ## A363145.P10818230475488669289

`A000601(n)-A001222(A400511(n+1))`
-/

namespace A363145.P10818230475488669289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A001222 (A400511 (n + 1)).toNat

end

end A363145.P10818230475488669289

/-! ## A363145.P208492295536644456

`A339312(n)+A333749(A339302(n+4))`
-/

namespace A363145.P208492295536644456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339312 n + A333749 (A339302 (n + 4)).toNat

end

end A363145.P208492295536644456

/-!
# A363147: Primes q == 1 (mod 4) such that there is at least one equivalence class of quaternary quadratic forms of discriminant q not representing 2.

The programs for A363147, there is no canonical definition to state claims against.
-/

/-! ## A363147.P2092420634468737748

`A266234(A343888(n+1)+1)`
-/

namespace A363147.P2092420634468737748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266234 (A343888 (n + 1) + 1).toNat

end

end A363147.P2092420634468737748

/-! ## A363147.P3485464543711186578

`A363750(A047842(n+2)+4)`
-/

namespace A363147.P3485464543711186578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363750 (A047842 (n + 2) + 4).toNat

end

end A363147.P3485464543711186578

/-! ## A363147.P6268581205559165239

`A266234(A099146(n+1)+13)`
-/

namespace A363147.P6268581205559165239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266234 (A099146 (n + 1) + 13).toNat

end

end A363147.P6268581205559165239

/-!
# A363148: a(n) gives the number of equivalence classes of quaternary quadratic forms of discriminant A363147(n) not representing 2.

The programs for A363148, there is no canonical definition to state claims against.
-/

/-! ## A363148.P11562174187485375096

`Δ[record[A234359(A263079(n+1))]]`
-/

namespace A363148.P11562174187485375096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234359 (A263079 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363148.P11562174187485375096

/-! ## A363148.P14178796243769283009

`gcd(A005349(2^n), A014561(n+1))`
-/

namespace A363148.P14178796243769283009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005349 (2 ^ n)) (A014561 (n + 1))

end

end A363148.P14178796243769283009

/-! ## A363148.P14165750527873106378

`A031235(A272805(n)+A153237(n))`
-/

namespace A363148.P14165750527873106378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A272805 n + A153237 n).toNat

end

end A363148.P14165750527873106378

/-! ## A363148.P11034254892041969853

`gcd(A178682(n), A374706(A374688(n)))`
-/

namespace A363148.P11034254892041969853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178682 n) (A374706 (A374688 n).toNat)

end

end A363148.P11034254892041969853

/-! ## A363148.P14008024796117945124

`A066099(xor(A005843(n), A030012(n)))`
-/

namespace A363148.P14008024796117945124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.xor (A005843 n) (A030012 n)).toNat

end

end A363148.P14008024796117945124

/-!
# A363149: Expansion of 1 / Sum_{k>=0} x^(k*(5*k - 3)/2).

The programs for A363149, there is no canonical definition to state claims against.
-/

/-! ## A363149.P1972688653049903493

`A010892(A160724(n))*A322802(n)`
-/

namespace A363149.P1972688653049903493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A160724 n).toNat * A322802 n

end

end A363149.P1972688653049903493

/-! ## A363149.P17350687045958304192

`A000007(A003242(n))-A101917(n+1)`
-/

namespace A363149.P17350687045958304192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A003242 n).toNat - A101917 (n + 1)

end

end A363149.P17350687045958304192

/-! ## A363149.P15297524974374679289

`A185284(A101916(n)²)-A101917(n+1)`
-/

namespace A363149.P15297524974374679289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A101916 n ^ 2).toNat - A101917 (n + 1)

end

end A363149.P15297524974374679289

/-! ## A363149.P1203282524550638712

`A000007(A293183(n+1))-A101917(n+1)`
-/

namespace A363149.P1203282524550638712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A293183 (n + 1)).toNat - A101917 (n + 1)

end

end A363149.P1203282524550638712

/-! ## A363149.P6783864922890411043

`A010055(A031173(n+2))-A101917(n+1)`
-/

namespace A363149.P6783864922890411043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A031173 (n + 2)).toNat - A101917 (n + 1)

end

end A363149.P6783864922890411043

/-!
# A363152: a(n) = denominator(Sum_{j=0..2*n} Bernoulli(j, 1) * Bernoulli(2*n - j, 1)).

The programs for A363152, there is no canonical definition to state claims against.
-/

/-! ## A363152.P14335812714730910797

`A363151(2*n)`
-/

namespace A363152.P14335812714730910797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363151 (2 * n)

end

end A363152.P14335812714730910797

/-! ## A363152.P10309305966255966417

`lcm(A111008(n), A363151(A005843(n)))`
-/

namespace A363152.P10309305966255966417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111008 n) (A363151 (A005843 n).toNat)

end

end A363152.P10309305966255966417

/-! ## A363152.P13968936500401430151

`lcm(A165326(n), A363151(A004277(n)))`
-/

namespace A363152.P13968936500401430151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A363151 (A004277 n).toNat)

end

end A363152.P13968936500401430151

/-! ## A363152.P14794686150528004706

`A363151(A004277(n))+A000007(n+1)`
-/

namespace A363152.P14794686150528004706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363151 (A004277 n).toNat + A000007 (n + 1)

end

end A363152.P14794686150528004706

/-! ## A363152.P8458705891390839719

`A363151(A005843(n))+A000007(n+1)`
-/

namespace A363152.P8458705891390839719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363151 (A005843 n).toNat + A000007 (n + 1)

end

end A363152.P8458705891390839719

/-!
# A363153: a(n) = numerator(Sum_{j=0..2*n} Bernoulli(j, 1) * Bernoulli(2*n - j, 1)).

The programs for A363153, there is no canonical definition to state claims against.
-/

/-! ## A363153.P8890110709227060151

`A363150(2*n)`
-/

namespace A363153.P8890110709227060151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363150 (2 * n)

end

end A363153.P8890110709227060151

/-! ## A363153.P10655886423405178561

`A363150(A049445(n+1))+A000038(A206790(n+1))`
-/

namespace A363153.P10655886423405178561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363150 (A049445 (n + 1)).toNat + A000038 (A206790 (n + 1)).toNat

end

end A363153.P10655886423405178561

/-!
# A363154: Triangle read by rows. The Hadamard product of A173018 and A349203.

The programs for A363154, there is no canonical definition to state claims against.
-/

/-! ## A363154.P9003878619909952861

`A173018(C(row(n)+1, 2)+col(n))*A349203(C(row(n)+1, 2)+col(n))`
-/

namespace A363154.P9003878619909952861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A349203 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A363154.P9003878619909952861

/-! ## A363154.P2775468922501696847

`A173018(n)*A349203(n)`
-/

namespace A363154.P2775468922501696847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n * A349203 n

end

end A363154.P2775468922501696847

/-! ## A363154.P7173044881974463197

`A123125(A028310(n)+1)*A349203(n)`
-/

namespace A363154.P7173044881974463197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A028310 n + 1).toNat * A349203 n

end

end A363154.P7173044881974463197

/-! ## A363154.P6625639855177890470

`A120435(1+n)/A135278(n)*A173018(n)`
-/

namespace A363154.P6625639855177890470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120435 (1 + n) : ℚ) / (A135278 n : ℚ) * (A173018 n : ℚ)

end

end A363154.P6625639855177890470

/-! ## A363154.P2692864102618167556

`A123125(A161435(3*n+1)+n+1)*A349203(n)`
-/

namespace A363154.P2692864102618167556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A161435 (3 * n + 1) + (n : ℤ) + 1).toNat * A349203 n

end

end A363154.P2692864102618167556

/-! ## A363154.P2965661356336833792

`A002944(A002024(n+1))/A007318(n)*A173018(n)`
-/

namespace A363154.P2965661356336833792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (A002024 (n + 1)).toNat : ℚ) / (A007318 n : ℚ) * (A173018 n : ℚ)

end

end A363154.P2965661356336833792

/-!
# A363155: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-2)).

The programs for A363155, the canonical program `A363155.P7288259108095462685` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363155 has offset 1).

The definition of A363155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363155.P7288259108095462685

`A363928(4+n*5)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A363155

/-- `A363928(4+n*5)` -/
def P7288259108095462685.Spec : Prop :=
  ∀ n, P7288259108095462685.a n = A363155 (n + 1)

theorem P7288259108095462685.correct : P7288259108095462685.Spec := by
  intro n
  simp only [A363155, Nat.add_sub_cancel]

end A363155

/-! ## A363155.P13629449217809247876

`A000720(n+1)%A063647(A000032(n+2))`
-/

namespace A363155.P13629449217809247876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1)) (A063647 (A000032 (n + 2)).toNat)

end

end A363155.P13629449217809247876

namespace A363155

/-- `A000720(n+1)%A063647(A000032(n+2))` -/
def P13629449217809247876.Spec : Prop :=
  ∀ n, P13629449217809247876.a n = A363155 (n + 1)

end A363155

/-! ## A363155.P2220999672624969811

`A083895(A299261(n)+A225060(n+1)+1)`
-/

namespace A363155.P2220999672624969811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A299261 n + A225060 (n + 1) + 1).toNat

end

end A363155.P2220999672624969811

namespace A363155

/-- `A083895(A299261(n)+A225060(n+1)+1)` -/
def P2220999672624969811.Spec : Prop :=
  ∀ n, P2220999672624969811.a n = A363155 (n + 1)

end A363155

/-! ## A363155.P14105056278355675547

`A001222(C(A025708(n+3), A382074(2*n+1)))`
-/

namespace A363155.P14105056278355675547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A025708 (n + 3)).toNat (A382074 (2 * n + 1)).toNat)

end

end A363155.P14105056278355675547

namespace A363155

/-- `A001222(C(A025708(n+3), A382074(2*n+1)))` -/
def P14105056278355675547.Spec : Prop :=
  ∀ n, P14105056278355675547.a n = A363155 (n + 1)

end A363155

/-! ## A363155.P5447606281905751705

`and(A000720(n+1), A065675(A158602(n+2)))`
-/

namespace A363155.P5447606281905751705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (n + 1)) (A065675 (A158602 (n + 2)).toNat)

end

end A363155.P5447606281905751705

namespace A363155

/-- `and(A000720(n+1), A065675(A158602(n+2)))` -/
def P5447606281905751705.Spec : Prop :=
  ∀ n, P5447606281905751705.a n = A363155 (n + 1)

end A363155

/-!
# A363156: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-2)).

The programs for A363156, the canonical program `A363156.P727775960340947262` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363156 has offset 1).

The definition of A363156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363156.P727775960340947262

`A363928(3+5*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A363156

/-- `A363928(3+5*n)` -/
def P727775960340947262.Spec : Prop :=
  ∀ n, P727775960340947262.a n = A363156 (n + 1)

theorem P727775960340947262.correct : P727775960340947262.Spec := by
  intro n
  simp only [A363156, Nat.add_sub_cancel]

end A363156

/-! ## A363156.P10898896431304766921

`A363928(A016885(n))+∑[A192447(n+1)]%2`
-/

namespace A363156.P10898896431304766921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016885 n).toNat + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A363156.P10898896431304766921

namespace A363156

/-- `A363928(A016885(n))+∑[A192447(n+1)]%2` -/
def P10898896431304766921.Spec : Prop :=
  ∀ n, P10898896431304766921.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P8795596655439124443

`A363928(A016885(n))^(∑[A000010(n+2)]%2)`
-/

namespace A363156.P8795596655439124443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363928 (A016885 n).toNat : ℚ) ^ (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A363156.P8795596655439124443

namespace A363156

/-- `A363928(A016885(n))^(∑[A000010(n+2)]%2)` -/
def P8795596655439124443.Spec : Prop :=
  ∀ n, P8795596655439124443.a n = (A363156 (n + 1) : ℚ)

end A363156

/-! ## A363156.P5287701441494491163

`A363928(A016885(n))+A327153(A052033(n+1))`
-/

namespace A363156.P5287701441494491163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016885 n).toNat + A327153 (A052033 (n + 1)).toNat

end

end A363156.P5287701441494491163

namespace A363156

/-- `A363928(A016885(n))+A327153(A052033(n+1))` -/
def P5287701441494491163.Spec : Prop :=
  ∀ n, P5287701441494491163.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P8534916221658870763

`A363928(A016861(n)+2)%A033649(n)`
-/

namespace A363156.P8534916221658870763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363928 (A016861 n + 2).toNat) (A033649 n)

end

end A363156.P8534916221658870763

namespace A363156

/-- `A363928(A016861(n)+2)%A033649(n)` -/
def P8534916221658870763.Spec : Prop :=
  ∀ n, P8534916221658870763.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P9748205281697255116

`A363928(A016861(n)+2)%A033648(n)`
-/

namespace A363156.P9748205281697255116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363928 (A016861 n + 2).toNat) (A033648 n)

end

end A363156.P9748205281697255116

namespace A363156

/-- `A363928(A016861(n)+2)%A033648(n)` -/
def P9748205281697255116.Spec : Prop :=
  ∀ n, P9748205281697255116.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P16237390283099469034

`A363928(A016885(n))+∑[A233928(n+1)]%2`
-/

namespace A363156.P16237390283099469034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016885 n).toNat + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A363156.P16237390283099469034

namespace A363156

/-- `A363928(A016885(n))+∑[A233928(n+1)]%2` -/
def P16237390283099469034.Spec : Prop :=
  ∀ n, P16237390283099469034.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P16431408522280117948

`∑[A369503(n)]%2*A363928(A016885(n))`
-/

namespace A363156.P16431408522280117948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 * A363928 (A016885 n).toNat

end

end A363156.P16431408522280117948

namespace A363156

/-- `∑[A369503(n)]%2*A363928(A016885(n))` -/
def P16431408522280117948.Spec : Prop :=
  ∀ n, P16431408522280117948.a n = A363156 (n + 1)

end A363156

/-!
# A363157: Expansion of Sum_{k>0} k * x^(4*k-1) / (1 - x^(5*k-2)).

The programs for A363157, the canonical program `A363157.P1558420881425003746` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363157 has offset 1).

The definition of A363157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363157.P1558420881425003746

`A363928(2+5*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A363157

/-- `A363928(2+5*n)` -/
def P1558420881425003746.Spec : Prop :=
  ∀ n, P1558420881425003746.a n = A363157 (n + 1)

theorem P1558420881425003746.correct : P1558420881425003746.Spec := by
  intro n
  simp only [A363157, Nat.add_sub_cancel]

end A363157

/-! ## A363157.P6643617748748172188

`A070798(A192660(n))%(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A363157.P6643617748748172188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070798 (A192660 n).toNat) (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A363157.P6643617748748172188

namespace A363157

/-- `A070798(A192660(n))%(floor(n/(xor(n, n+1)+1))+1)` -/
def P6643617748748172188.Spec : Prop :=
  ∀ n, P6643617748748172188.a n = A363157 (n + 1)

end A363157

/-! ## A363157.P12230140968032044864

`A266081(A096231(n))%A048896(n)`
-/

namespace A363157.P12230140968032044864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266081 (A096231 n).toNat) (A048896 n)

end

end A363157.P12230140968032044864

namespace A363157

/-- `A266081(A096231(n))%A048896(n)` -/
def P12230140968032044864.Spec : Prop :=
  ∀ n, P12230140968032044864.a n = A363157 (n + 1)

end A363157

/-! ## A363157.P15580331568618249260

`A005109(2*(n+1))%A103689(A324015(n+4))`
-/

namespace A363157.P15580331568618249260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005109 (2 * (n + 1))) (A103689 (A324015 (n + 4)).toNat)

end

end A363157.P15580331568618249260

namespace A363157

/-- `A005109(2*(n+1))%A103689(A324015(n+4))` -/
def P15580331568618249260.Spec : Prop :=
  ∀ n, P15580331568618249260.a n = A363157 (n + 1)

end A363157

/-! ## A363157.P17801727519905069531

`A275015(A396085(n+4))`
-/

namespace A363157.P17801727519905069531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275015 (A396085 (n + 4)).toNat

end

end A363157.P17801727519905069531

namespace A363157

/-- `A275015(A396085(n+4))` -/
def P17801727519905069531.Spec : Prop :=
  ∀ n, P17801727519905069531.a n = A363157 (n + 1)

end A363157

/-!
# A363158: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-2)).

The programs for A363158, the canonical program `A363158.P11380430616783990560` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363158 has offset 1).

The definition of A363158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363158.P11380430616783990560

`A363928(1+5*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A363158

/-- `A363928(1+5*n)` -/
def P11380430616783990560.Spec : Prop :=
  ∀ n, P11380430616783990560.a n = A363158 (n + 1)

theorem P11380430616783990560.correct : P11380430616783990560.Spec := by
  intro n
  simp only [A363158, Nat.add_sub_cancel]

end A363158

/-! ## A363158.P9641238126766925831

`A057427(n)*A363928(A016861(n))`
-/

namespace A363158.P9641238126766925831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A363928 (A016861 n).toNat

end

end A363158.P9641238126766925831

namespace A363158

/-- `A057427(n)*A363928(A016861(n))` -/
def P9641238126766925831.Spec : Prop :=
  ∀ n, P9641238126766925831.a n = A363158 (n + 1)

end A363158

/-! ## A363158.P15146520317852914765

`A363928(A016861(n))%A016813(n)`
-/

namespace A363158.P15146520317852914765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363928 (A016861 n).toNat) (A016813 n)

end

end A363158.P15146520317852914765

namespace A363158

/-- `A363928(A016861(n))%A016813(n)` -/
def P15146520317852914765.Spec : Prop :=
  ∀ n, P15146520317852914765.a n = A363158 (n + 1)

end A363158

/-! ## A363158.P5305131328721548303

`A363928(A016861(n))+A000007(n+1)`
-/

namespace A363158.P5305131328721548303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016861 n).toNat + A000007 (n + 1)

end

end A363158.P5305131328721548303

namespace A363158

/-- `A363928(A016861(n))+A000007(n+1)` -/
def P5305131328721548303.Spec : Prop :=
  ∀ n, P5305131328721548303.a n = A363158 (n + 1)

end A363158

/-! ## A363158.P5649721350590843064

`A363928(A016861(n))+A307380(A154320(n+1))`
-/

namespace A363158.P5649721350590843064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016861 n).toNat + A307380 (A154320 (n + 1)).toNat

end

end A363158.P5649721350590843064

namespace A363158

/-- `A363928(A016861(n))+A307380(A154320(n+1))` -/
def P5649721350590843064.Spec : Prop :=
  ∀ n, P5649721350590843064.a n = A363158 (n + 1)

end A363158

/-! ## A363158.P662682469144120846

`A363928(A016861(n))+A128407(A188631(n+1))`
-/

namespace A363158.P662682469144120846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016861 n).toNat + A128407 (A188631 (n + 1)).toNat

end

end A363158.P662682469144120846

namespace A363158

/-- `A363928(A016861(n))+A128407(A188631(n+1))` -/
def P662682469144120846.Spec : Prop :=
  ∀ n, P662682469144120846.a n = A363158 (n + 1)

end A363158

/-! ## A363158.P15849095087243463383

`A363928(A016861(n))+A128407(A154319(n+4))`
-/

namespace A363158.P15849095087243463383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016861 n).toNat + A128407 (A154319 (n + 4)).toNat

end

end A363158.P15849095087243463383

namespace A363158

/-- `A363928(A016861(n))+A128407(A154319(n+4))` -/
def P15849095087243463383.Spec : Prop :=
  ∀ n, P15849095087243463383.a n = A363158 (n + 1)

end A363158

/-! ## A363158.P10544243360897921770

`A363928(A016861(n))+A307380(A005563(n+4))`
-/

namespace A363158.P10544243360897921770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016861 n).toNat + A307380 (A005563 (n + 4)).toNat

end

end A363158.P10544243360897921770

namespace A363158

/-- `A363928(A016861(n))+A307380(A005563(n+4))` -/
def P10544243360897921770.Spec : Prop :=
  ∀ n, P10544243360897921770.a n = A363158 (n + 1)

end A363158

/-!
# A363161: Partial sums of A363031.

The programs for A363161, the canonical program `A363161.P44862403275129082` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363161 has offset 0).

The definition of A363161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363161.P44862403275129082

`∑[∑{d}[1+6*n, #]]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363161

/-- `∑[∑{d}[1+6*n, #]]` -/
def P44862403275129082.Spec : Prop :=
  ∀ n, (P44862403275129082.a n : ℤ) = A363161 n

theorem P44862403275129082.correct : P44862403275129082.Spec := by
  intro n
  simp only [A363161]

end A363161

/-! ## A363161.P2726099180948792959

`∑[A363031(n)]`
-/

namespace A363161.P2726099180948792959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P2726099180948792959

namespace A363161

/-- `∑[A363031(n)]` -/
def P2726099180948792959.Spec : Prop :=
  ∀ n, P2726099180948792959.a n = A363161 n

theorem P2726099180948792959.correct : P2726099180948792959.Spec := by
  intro n
  simp only [A363161, Nat.add_sub_cancel, A363161.P2726099180948792959.f1, A363161.P2726099180948792959.a, A363161.P44862403275129082.f2, A363161.P44862403275129082.f1, A363161.P44862403275129082.a, A363031, A363031.P17719480416991960385.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363161

/-! ## A363161.P16561666726359838254

`∑[A008438(3*n)]`
-/

namespace A363161.P16561666726359838254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P16561666726359838254

namespace A363161

/-- `∑[A008438(3*n)]` -/
def P16561666726359838254.Spec : Prop :=
  ∀ n, P16561666726359838254.a n = A363161 n

end A363161

/-! ## A363161.P840784680407097296

`∑[A144614(2*n)]`
-/

namespace A363161.P840784680407097296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P840784680407097296

namespace A363161

/-- `∑[A144614(2*n)]` -/
def P840784680407097296.Spec : Prop :=
  ∀ n, P840784680407097296.a n = A363161 n

end A363161

/-! ## A363161.P1003245528048573190

`∑[A033686(4*n)]`
-/

namespace A363161.P1003245528048573190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P1003245528048573190

namespace A363161

/-- `∑[A033686(4*n)]` -/
def P1003245528048573190.Spec : Prop :=
  ∀ n, P1003245528048573190.a n = A363161 n

end A363161

/-! ## A363161.P13479451843099060031

`∑[A000203(A016777(2*n))]`
-/

namespace A363161.P13479451843099060031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016777 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P13479451843099060031

namespace A363161

/-- `∑[A000203(A016777(2*n))]` -/
def P13479451843099060031.Spec : Prop :=
  ∀ n, P13479451843099060031.a n = A363161 n

end A363161

/-! ## A363161.P4143755514674658501

`∑[A366442(2*n+1)]`
-/

namespace A363161.P4143755514674658501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366442 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P4143755514674658501

namespace A363161

/-- `∑[A366442(2*n+1)]` -/
def P4143755514674658501.Spec : Prop :=
  ∀ n, P4143755514674658501.a n = A363161 n

end A363161

/-! ## A363161.P15727788835218266156

`∑[A134077(3*n)]`
-/

namespace A363161.P15727788835218266156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134077 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P15727788835218266156

namespace A363161

/-- `∑[A134077(3*n)]` -/
def P15727788835218266156.Spec : Prop :=
  ∀ n, P15727788835218266156.a n = A363161 n

end A363161

/-! ## A363161.P3408590271733798526

`∑[A185717(3*n)]`
-/

namespace A363161.P3408590271733798526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185717 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P3408590271733798526

namespace A363161

/-- `∑[A185717(3*n)]` -/
def P3408590271733798526.Spec : Prop :=
  ∀ n, P3408590271733798526.a n = A363161 n

end A363161

/-! ## A363161.P485959212524942407

`∑[A252651(3*n)]`
-/

namespace A363161.P485959212524942407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252651 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P485959212524942407

namespace A363161

/-- `∑[A252651(3*n)]` -/
def P485959212524942407.Spec : Prop :=
  ∀ n, P485959212524942407.a n = A363161 n

end A363161

/-! ## A363161.P2925125801566245981

`∑[A134079(4*n)]`
-/

namespace A363161.P2925125801566245981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134079 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P2925125801566245981

namespace A363161

/-- `∑[A134079(4*n)]` -/
def P2925125801566245981.Spec : Prop :=
  ∀ n, P2925125801566245981.a n = A363161 n

end A363161

/-! ## A363161.P4308276030698754956

`∑[A118272(4*n)]`
-/

namespace A363161.P4308276030698754956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118272 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363161.P4308276030698754956

namespace A363161

/-- `∑[A118272(4*n)]` -/
def P4308276030698754956.Spec : Prop :=
  ∀ n, P4308276030698754956.a n = A363161 n

end A363161

/-!
# A363163: Number of directed multigraphs without loops containing n edges and an infinite number of vertices modulo isomorphism and reversal of all edge directions.

The programs for A363163, there is no canonical definition to state claims against.
-/

/-! ## A363163.P2380058252973701891

`A242062(A000032(n)*A014211(n))`
-/

namespace A363163.P2380058252973701891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A000032 n * A014211 n).toNat

end

end A363163.P2380058252973701891

/-! ## A363163.P471884331738362740

`A318995(A027307(n))+A001710(n+1)`
-/

namespace A363163.P471884331738362740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A027307 n).toNat + A001710 (n + 1)

end

end A363163.P471884331738362740

/-!
# A363164: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) is the greatest nonnegative number whose binary digits appear in order but not necessarily as consecutive digits in the binary expansions of n and k.

The programs for A363164, there is no canonical definition to state claims against.
-/

/-! ## A363164.P1609216282224921508

`A082858(n)+A010894(A342441(n+1))`
-/

namespace A363164.P1609216282224921508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 n + A010894 ((A342441 (n + 1)).toNat + 21)

end

end A363164.P1609216282224921508

/-!
# A363165: The number of spanning trees of the ladder graph L_n up to automorphisms of L_n.

The programs for A363165, the canonical program `A363165.P11217764494097526769` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363165 has offset 1).

The definition of A363165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363165.P11217764494097526769

`ogf((1-5x+6x^2+5x^3-27x^4+40x^5-18x^6-6x^7+6x^8-x^9)/(1-6x+6x^2+18x^3-38x^4+18x^5+6x^6-6x^7+x^8))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363165

/-- `ogf((1-5x+6x^2+5x^3-27x^4+40x^5-18x^6-6x^7+6x^8-x^9)/(1-6x+6x^2+18x^3-38x^4+18x^5+6x^6-6x^7+x^8))` -/
def P11217764494097526769.Spec : Prop :=
  ∀ n, P11217764494097526769.a n = A363165 (n + 1)

theorem P11217764494097526769.correct : P11217764494097526769.Spec := by
  intro n
  simp only [A363165, Nat.add_sub_cancel]

end A363165

/-! ## A363165.P11624893752914937368

`A004113(n+1)-A158800(A000051(n))`
-/

namespace A363165.P11624893752914937368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004113 (n + 1) - A158800 (A000051 n).toNat

end

end A363165.P11624893752914937368

namespace A363165

/-- `A004113(n+1)-A158800(A000051(n))` -/
def P11624893752914937368.Spec : Prop :=
  ∀ n, P11624893752914937368.a n = A363165 (n + 1)

end A363165

/-!
# A363166: Bouton numbers: a(n) is the number of P positions in games of Nim with three nonzero heaps each containing at most n sticks.

The programs for A363166, the canonical program `A363166.P15809057098820034193` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363166 has offset 1).

The definition of A363166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363166.P14931430042315314837

`∑[n-fp[or(n, n+1)]]`
-/

namespace A363166.P14931430042315314837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun j => n < f2 j) 0 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363166.P14931430042315314837

namespace A363166

/-- `∑[n-fp[or(n, n+1)]]` -/
def P14931430042315314837.Spec : Prop :=
  ∀ n, P14931430042315314837.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P16298955900546582513

`∑[n-fp[xor(n, n+1)]]`
-/

namespace A363166.P16298955900546582513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.nth (fun j => n < f2 j) 0 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363166.P16298955900546582513

namespace A363166

/-- `∑[n-fp[xor(n, n+1)]]` -/
def P16298955900546582513.Spec : Prop :=
  ∀ n, P16298955900546582513.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P15809057098820034193

`∑[and(1+a(n-1), n+1)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A363166

/-- `∑[and(1+a(n-1), n+1)]` -/
def P15809057098820034193.Spec : Prop :=
  ∀ n, (P15809057098820034193.a n : ℤ) = A363166 (n + 1)

theorem P15809057098820034193.correct : P15809057098820034193.Spec := by
  intro n
  simp only [A363166, Nat.add_sub_cancel]

end A363166

/-! ## A363166.P3850147169924774465

`∑[(n+1)%(a(n-1)-n)]` with `a(0)=0`
-/

namespace A363166.P3850147169924774465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (n + 1 : ℤ) (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363166.P3850147169924774465

namespace A363166

/-- `∑[(n+1)%(a(n-1)-n)]` -/
def P3850147169924774465.Spec : Prop :=
  ∀ n, P3850147169924774465.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P8885702632464640190

`∑[1-2^floor(log2(n+1))+n]`
-/

namespace A363166.P8885702632464640190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ Nat.log 2 (n + 1) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363166.P8885702632464640190

namespace A363166

/-- `∑[1-2^floor(log2(n+1))+n]` -/
def P8885702632464640190.Spec : Prop :=
  ∀ n, P8885702632464640190.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P10098848786625610193

`a(n-1)+n+1-2^floor(log2(n+1))` with `a(0)=0`
-/

namespace A363166.P10098848786625610193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) - (2 ^ Nat.log 2 (n + 1) : ℤ))

end

end A363166.P10098848786625610193

namespace A363166

/-- `a(n-1)+n+1-2^floor(log2(n+1))` -/
def P10098848786625610193.Spec : Prop :=
  ∀ n, P10098848786625610193.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P10285383797707579734

`2*n-(lt[n, xor(n, floor(n/2))]-(a(n-1)+2))` with `a(0)=0`
-/

namespace A363166.P10285383797707579734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (a (n - 1) + 2))

end

end A363166.P10285383797707579734

namespace A363166

/-- `2*n-(lt[n, xor(n, floor(n/2))]-(a(n-1)+2))` -/
def P10285383797707579734.Spec : Prop :=
  ∀ n, P10285383797707579734.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P4719283670374161132

`n-(lt[n, xor(n, floor(n/2))]-(a(n-1)+2))+n` with `a(0)=0`
-/

namespace A363166.P4719283670374161132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (a (n - 1) + 2)) + (n : ℤ)

end

end A363166.P4719283670374161132

namespace A363166

/-- `n-(lt[n, xor(n, floor(n/2))]-(a(n-1)+2))+n` -/
def P4719283670374161132.Spec : Prop :=
  ∀ n, P4719283670374161132.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P1829874157425963390

`∑[n+1]-A063915(n)`
-/

namespace A363166.P1829874157425963390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A063915 n

end

end A363166.P1829874157425963390

namespace A363166

/-- `∑[n+1]-A063915(n)` -/
def P1829874157425963390.Spec : Prop :=
  ∀ n, P1829874157425963390.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P8494983397789894021

`(A256249(n+1)-(n+1))/2`
-/

namespace A363166.P8494983397789894021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256249 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A363166.P8494983397789894021

namespace A363166

/-- `(A256249(n+1)-(n+1))/2` -/
def P8494983397789894021.Spec : Prop :=
  ∀ n, P8494983397789894021.a n = (A363166 (n + 1) : ℚ)

end A363166

/-! ## A363166.P7665405256680620320

`(n+1)²-∑[A092754(n+1)]`
-/

namespace A363166.P7665405256680620320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363166.P7665405256680620320

namespace A363166

/-- `(n+1)²-∑[A092754(n+1)]` -/
def P7665405256680620320.Spec : Prop :=
  ∀ n, P7665405256680620320.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P3193746450636312365

`A253145(n)%A063915(n)`
-/

namespace A363166.P3193746450636312365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A063915 n)

end

end A363166.P3193746450636312365

namespace A363166

/-- `A253145(n)%A063915(n)` -/
def P3193746450636312365.Spec : Prop :=
  ∀ n, P3193746450636312365.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P10664699151677091074

`A063915(n)-A255748(n+1)`
-/

namespace A363166.P10664699151677091074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063915 n - A255748 (n + 1)

end

end A363166.P10664699151677091074

namespace A363166

/-- `A063915(n)-A255748(n+1)` -/
def P10664699151677091074.Spec : Prop :=
  ∀ n, P10664699151677091074.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P12503220271719332584

`A004526(A256249(n+1)-n)`
-/

namespace A363166.P12503220271719332584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256249 (n + 1) - (n : ℤ)).toNat

end

end A363166.P12503220271719332584

namespace A363166

/-- `A004526(A256249(n+1)-n)` -/
def P12503220271719332584.Spec : Prop :=
  ∀ n, P12503220271719332584.a n = A363166 (n + 1)

end A363166

/-! ## A363166.P15145236886909519025

`A038572(A038572(A266538(n+1))-(n+1))`
-/

namespace A363166.P15145236886909519025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038572 (A266538 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A363166.P15145236886909519025

namespace A363166

/-- `A038572(A038572(A266538(n+1))-(n+1))` -/
def P15145236886909519025.Spec : Prop :=
  ∀ n, P15145236886909519025.a n = A363166 (n + 1)

end A363166

/-!
# A363169: Powerful abundant numbers: numbers that are both powerful (A001694) and abundant (A005101).

The programs for A363169, there is no canonical definition to state claims against.
-/

/-! ## A363169.P14690456824787975354

`∪[A376119(n+1), A378859(n+1)]`
-/

namespace A363169.P14690456824787975354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P14690456824787975354

/-! ## A363169.P15250256289907936811

`filter[A001694(1+n), A378539(#)]`
-/

namespace A363169.P15250256289907936811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378539 (f1 j).toNat = 1) n)

end

end A363169.P15250256289907936811

/-! ## A363169.P8261849715583308192

`filter[A192636(1+n), A378539(#)]`
-/

namespace A363169.P8261849715583308192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378539 (f1 j).toNat = 1) n)

end

end A363169.P8261849715583308192

/-! ## A363169.P13972041474336523618

`filter[A286708(n+1), A378539(#)]`
-/

namespace A363169.P13972041474336523618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378539 (f1 j).toNat = 1) n)

end

end A363169.P13972041474336523618

/-! ## A363169.P569117631973384707

`filter[A001694(n+1), A294936(#)]`
-/

namespace A363169.P569117631973384707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A363169.P569117631973384707

/-! ## A363169.P14384106854540440231

`filter[A192636(n+1), A294936(#)]`
-/

namespace A363169.P14384106854540440231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A363169.P14384106854540440231

/-! ## A363169.P16771680428295878581

`filter[A286708(n+1), A294936(#)]`
-/

namespace A363169.P16771680428295878581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A363169.P16771680428295878581

/-! ## A363169.P16483048198910885898

`filter[A286708(n+1), A378550(#)]`
-/

namespace A363169.P16483048198910885898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A363169.P16483048198910885898

/-! ## A363169.P4881651320097604911

`∩[A001694(n+1), A136446(n+1)]`
-/

namespace A363169.P4881651320097604911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P4881651320097604911

/-! ## A363169.P12054709110573412988

`∩[A136446(n+1), A192636(n+1)]`
-/

namespace A363169.P12054709110573412988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P12054709110573412988

/-! ## A363169.P2523479603489537766

`record[A378447(A286708(n+1))]`
-/

namespace A363169.P2523479603489537766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378447 (A286708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363169.P2523479603489537766

/-! ## A363169.P17255580913051432198

`∩[A001694(n+1), A326133(n+1)]`
-/

namespace A363169.P17255580913051432198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P17255580913051432198

/-! ## A363169.P262407769018299925

`∩[A192636(n+1), A326133(n+1)]`
-/

namespace A363169.P262407769018299925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P262407769018299925

/-! ## A363169.P1879242545013938847

`∩[A286708(n+1), A326133(n+1)]`
-/

namespace A363169.P1879242545013938847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P1879242545013938847

/-! ## A363169.P3081568319908999615

`∩[A001694(n+1), A087245(n+1)]`
-/

namespace A363169.P3081568319908999615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P3081568319908999615

/-! ## A363169.P14100990864845185367

`∩[A087245(n+1), A192636(n+1)]`
-/

namespace A363169.P14100990864845185367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P14100990864845185367

/-! ## A363169.P15160471030539266712

`∩[A087245(n+1), A286708(n+1)]`
-/

namespace A363169.P15160471030539266712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P15160471030539266712

/-! ## A363169.P4418745686481304951

`∩[A001694(n+1), A005835(n+1)]`
-/

namespace A363169.P4418745686481304951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P4418745686481304951

/-! ## A363169.P10418042222125291907

`∩[A005835(n+1), A192636(n+1)]`
-/

namespace A363169.P10418042222125291907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P10418042222125291907

/-! ## A363169.P8150772366612380152

`∩[A005835(n+1), A286708(n+1)]`
-/

namespace A363169.P8150772366612380152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363169.P8150772366612380152

/-!
# A363170: The number of powerful abundant numbers (A363169) not exceeding 10^n.

The programs for A363170, there is no canonical definition to state claims against.
-/

/-! ## A363170.P12627423919541266461

`A230418(lcm(4*n, A231556(n)))`
-/

namespace A363170.P12627423919541266461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (Int.lcm (4 * n : ℤ) (A231556 n))

end

end A363170.P12627423919541266461

/-!
# A363171: Numbers k such that A064549(k) is an abundant number (A005101).

The programs for A363171, the canonical program `A363171.P14789941878043738483` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363171 has offset 1).

The definition of A363171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363171.P14789941878043738483

`eq[1, A294936(A064549(1+n))]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A363171

/-- `eq[1, A294936(A064549(1+n))]+1` -/
def P14789941878043738483.Spec : Prop :=
  ∀ n, (P14789941878043738483.a n : ℤ) = A363171 (n + 1)

theorem P14789941878043738483.correct : P14789941878043738483.Spec := by
  intro n
  simp only [A363171, Nat.add_sub_cancel]

end A363171

/-! ## A363171.P12053657918236029595

`lt[1, A294936(A064549(n+1))*A313229(n)]+1`
-/

namespace A363171.P12053657918236029595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (n + 1)).toNat * A313229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363171.P12053657918236029595

namespace A363171

/-- `lt[1, A294936(A064549(n+1))*A313229(n)]+1` -/
def P12053657918236029595.Spec : Prop :=
  ∀ n, (P12053657918236029595.a n : ℤ) = A363171 (n + 1)

end A363171

/-! ## A363171.P5765202124285622037

`lt[1, A294936(A064549(n+1))*A208728(n+1)]+1`
-/

namespace A363171.P5765202124285622037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (n + 1)).toNat * A208728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363171.P5765202124285622037

namespace A363171

/-- `lt[1, A294936(A064549(n+1))*A208728(n+1)]+1` -/
def P5765202124285622037.Spec : Prop :=
  ∀ n, (P5765202124285622037.a n : ℤ) = A363171 (n + 1)

end A363171

/-! ## A363171.P4350103843671247

`lt[1, A294936(A064549(n+1))*A225514(n+1)]+1`
-/

namespace A363171.P4350103843671247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (n + 1)).toNat * A225514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363171.P4350103843671247

namespace A363171

/-- `lt[1, A294936(A064549(n+1))*A225514(n+1)]+1` -/
def P4350103843671247.Spec : Prop :=
  ∀ n, (P4350103843671247.a n : ℤ) = A363171 (n + 1)

end A363171

/-! ## A363171.P8684261145155646299

`lt[1, A294936(A064549(n+1))*A227976(n+1)]+1`
-/

namespace A363171.P8684261145155646299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (n + 1)).toNat * A227976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363171.P8684261145155646299

namespace A363171

/-- `lt[1, A294936(A064549(n+1))*A227976(n+1)]+1` -/
def P8684261145155646299.Spec : Prop :=
  ∀ n, (P8684261145155646299.a n : ℤ) = A363171 (n + 1)

end A363171

/-!
# A363172: Primitive terms of A363171: terms of A363171 with no proper divisor in A363171.

The programs for A363172, there is no canonical definition to state claims against.
-/

/-! ## A363172.P15847950535702683872

`∩[A381739(n+1), A092213(n)]`
-/

namespace A363172.P15847950535702683872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363172.P15847950535702683872

/-! ## A363172.P9921635502336726756

`A100933(n+1)*A333257(A093156(n+1))`
-/

namespace A363172.P9921635502336726756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100933 (n + 1) * A333257 (A093156 (n + 1)).toNat

end

end A363172.P9921635502336726756

/-!
# A363173: Number of triangles inside a regular n-gon formed by intersecting line segments, considering all configurations of 3 line segments from 6 distinct vertices.

The programs for A363173, there is no canonical definition to state claims against.
-/

/-! ## A363173.P695642394845941036

`A006600(3+n)-A244882(n)`
-/

namespace A363173.P695642394845941036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006600 (3 + n) - A244882 n

end

end A363173.P695642394845941036

/-! ## A363173.P715482914408942373

`A363174(2*(2*n+3))`
-/

namespace A363173.P715482914408942373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363174 (2 * (2 * n + 3))

end

end A363173.P715482914408942373

/-! ## A363173.P12443808272617557401

`A006600(n+3)%(A244882(n)%A072021(n+1))`
-/

namespace A363173.P12443808272617557401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006600 (n + 3)) (Int.tmod (A244882 n) (A072021 (n + 1)))

end

end A363173.P12443808272617557401

/-! ## A363173.P14485079752259835752

`A086671(A283959(n+2)²)-1`
-/

namespace A363173.P14485079752259835752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (A283959 (n + 2) ^ 2).toNat - 1

end

end A363173.P14485079752259835752

/-!
# A363180: Number of permutations of [2n] with n parity changes.

The programs for A363180, there is no canonical definition to state claims against.
-/

/-! ## A363180.P15464038854298068832

`(2*or(1, -n))²*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A363180.P15464038854298068832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * Int.lor 1 (-(n : ℤ))) ^ 2 * a (n - 1)

end

end A363180.P15464038854298068832

/-! ## A363180.P10296405284833570660

`or(floor((A110491(n)²-1)/2), n)+1`
-/

namespace A363180.P10296405284833570660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(A110491 n ^ 2 - 1 : ℚ) / 2⌋ (n : ℤ) + 1

end

end A363180.P10296405284833570660

/-! ## A363180.P5583515056359233948

`∏[xor(3^(n%2), comp[2*(n+1)])]²/A040000(n)`
-/

namespace A363180.P5583515056359233948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 ^ (n % 2)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (A040000 n : ℚ)

end

end A363180.P5583515056359233948

/-! ## A363180.P11249856704441479377

`A000246(n)²*A081294(n)`
-/

namespace A363180.P11249856704441479377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 n ^ 2 * A081294 n

end

end A363180.P11249856704441479377

/-! ## A363180.P14434474878771590969

`A000246(n)²*A011782(2*n)`
-/

namespace A363180.P14434474878771590969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 n ^ 2 * A011782 (2 * n)

end

end A363180.P14434474878771590969

/-!
# A363181: Number of permutations p of [n] such that for each i in [n] we have: (i>1) and |p(i)-p(i-1)| = 1 or (i<n) and |p(i)-p(i+1)| = 1.

The programs for A363181, there is no canonical definition to state claims against.
-/

/-! ## A363181.P17705257524073037379

`A346462(C(n+1, 2)+n)`
-/

namespace A363181.P17705257524073037379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346462 (Nat.choose (n + 1) 2 + n)

end

end A363181.P17705257524073037379

/-! ## A363181.P9002590445615598437

`A346462(∑[n]+n)`
-/

namespace A363181.P9002590445615598437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346462 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A363181.P9002590445615598437

/-! ## A363181.P5606733730202446592

`A346462(A000096(n))+A185037(n)`
-/

namespace A363181.P5606733730202446592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346462 (A000096 n).toNat + A185037 n

end

end A363181.P5606733730202446592

/-! ## A363181.P9198501259214389356

`gcd(A000038(n), A346462(A000096(n)))`
-/

namespace A363181.P9198501259214389356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A346462 (A000096 n).toNat)

end

end A363181.P9198501259214389356

/-! ## A363181.P15952783094567521750

`A346462(A000096(n))+A000038(3*n+1)`
-/

namespace A363181.P15952783094567521750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346462 (A000096 n).toNat + A000038 (3 * n + 1)

end

end A363181.P15952783094567521750

/-!
# A363182: Expansion of g.f. A(x) satisfying 2 = Sum_{n=-oo..+oo} (-1)^n * x^n * (2*A(x) + x^(2*n-1))^(n+1).

The programs for A363182, there is no canonical definition to state claims against.
-/

/-! ## A363182.P6583876528608655332

`∑{#}[floor(n/2), A359670(C(n-#+1, 2)+n-2*#)*2^(n-2*#)]`
-/

namespace A363182.P6583876528608655332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (A359670 ((Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 : ℤ) + ((n : ℤ) - (2 * k : ℤ))).toNat : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A363182.P6583876528608655332

/-! ## A363182.P9203582187065868216

`A285881(A071740(n+1))`
-/

namespace A363182.P9203582187065868216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A071740 (n + 1)).toNat

end

end A363182.P9203582187065868216

/-! ## A363182.P13180508961969564512

`A337635(A094854(n+1))`
-/

namespace A363182.P13180508961969564512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A094854 (n + 1)).toNat

end

end A363182.P13180508961969564512

/-!
# A363183: Expansion of g.f. A(x) satisfying 3 = Sum_{n=-oo..+oo} (-1)^n * x^n * (3*A(x) + x^(2*n-1))^(n+1).

The programs for A363183, there is no canonical definition to state claims against.
-/

/-! ## A363183.P6057593497034695773

`∑{#}[floor(n/2), A359670(C(n-#+1, 2)+n-2*#)*3^(n-2*#)]`
-/

namespace A363183.P6057593497034695773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (A359670 ((Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 : ℤ) + ((n : ℤ) - (2 * k : ℤ))).toNat : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A363183.P6057593497034695773

/-! ## A363183.P3170247179855556819

`A151115(A001096(n))`
-/

namespace A363183.P3170247179855556819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151115 (A001096 n).toNat

end

end A363183.P3170247179855556819

/-!
# A363184: Expansion of g.f. A(x) satisfying 4 = Sum_{n=-oo..+oo} (-1)^n * x^n * (4*A(x) + x^(2*n-1))^(n+1).

The programs for A363184, there is no canonical definition to state claims against.
-/

/-! ## A363184.P2843172281020080810

`∑{#}[floor(n/2), A359670(C(n-#+1, 2)+n-2*#)*4^(n-2*#)]`
-/

namespace A363184.P2843172281020080810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (A359670 ((Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 : ℤ) + ((n : ℤ) - (2 * k : ℤ))).toNat : ℚ) * (4 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A363184.P2843172281020080810

/-! ## A363184.P11555869027127081762

`A297234(A002110(n))+A083879(n)`
-/

namespace A363184.P11555869027127081762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A002110 n).toNat + A083879 n

end

end A363184.P11555869027127081762

/-!
# A363185: Expansion of g.f. A(x) satisfying 5 = Sum_{n=-oo..+oo} (-1)^n * x^n * (5*A(x) + x^(2*n-1))^(n+1).

The programs for A363185, there is no canonical definition to state claims against.
-/

/-! ## A363185.P3016243402411118494

`∑{#}[floor(n/2), A359670(C(n-#+1, 2)+n-2*#)*5^(n-2*#)]`
-/

namespace A363185.P3016243402411118494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (A359670 ((Nat.choose ((n : ℤ) - (k : ℤ) + 1).toNat 2 : ℤ) + ((n : ℤ) - (2 * k : ℤ))).toNat : ℚ) * (5 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ)

end

end A363185.P3016243402411118494

/-! ## A363185.P10038446006521708484

`A083880(n)+A006924(A006924(n))`
-/

namespace A363185.P10038446006521708484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 n + A006924 (A006924 n).toNat

end

end A363185.P10038446006521708484

/-!
# A363187: Prime numbers that are the average of three consecutive odd semiprimes.

The programs for A363187, there is no canonical definition to state claims against.
-/

/-! ## A363187.P7267456169489817004

`A302568(A302568(2*(n+2))+A001443(n+1))`
-/

namespace A363187.P7267456169489817004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302568 (A302568 (2 * (n + 2)) + A001443 (n + 1)).toNat

end

end A363187.P7267456169489817004

/-!
# A363189: Indices of the odd terms in the sequence of powerful numbers (A001694).

The programs for A363189, there is no canonical definition to state claims against.
-/

/-! ## A363189.P5297650690426816175

`eq[0, A383006(1+n)]+1`
-/

namespace A363189.P5297650690426816175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383006 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P5297650690426816175

/-! ## A363189.P14729051052798442978

`lt[0, A373549(n+1)]+1`
-/

namespace A363189.P14729051052798442978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363189.P14729051052798442978

/-! ## A363189.P1263116915749486759

`eq[1, A373549(1+n)]+1`
-/

namespace A363189.P1263116915749486759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373549 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P1263116915749486759

/-! ## A363189.P14746943519710274036

`lt[0, A001694(1+n)%2]+1`
-/

namespace A363189.P14746943519710274036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001694 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363189.P14746943519710274036

/-! ## A363189.P782721225061173911

`eq[1, A001694(n+1)%2]+1`
-/

namespace A363189.P782721225061173911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001694 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P782721225061173911

/-! ## A363189.P657487214351117422

`eq[1, A084371(n+1)%2]+1`
-/

namespace A363189.P657487214351117422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084371 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P657487214351117422

/-! ## A363189.P11570345373249452751

`eq[1, gcd(2, A369430(n+1))]+1`
-/

namespace A363189.P11570345373249452751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A369430 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363189.P11570345373249452751

/-! ## A363189.P13368553600584743504

`lt[val(A306458(n+1), 2), 1]+1`
-/

namespace A363189.P13368553600584743504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A306458 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363189.P13368553600584743504

/-! ## A363189.P15942428667705043940

`lt[val(A374291(n+1), 4), 1]+1`
-/

namespace A363189.P15942428667705043940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A374291 (n + 1)).toNat 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363189.P15942428667705043940

/-! ## A363189.P15014359548899189753

`eq[1, and(1, A001694(A000027(n+1)))]+1`
-/

namespace A363189.P15014359548899189753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001694 (A000027 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P15014359548899189753

/-! ## A363189.P6660161702367323670

`filter[A038459(n+1), A373549(#)]`
-/

namespace A363189.P6660161702367323670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373549 (f1 j).toNat = 1) n)

end

end A363189.P6660161702367323670

/-! ## A363189.P8128874408383641789

`eq[1, A166486(A001694(n+1))]+1`
-/

namespace A363189.P8128874408383641789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A001694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P8128874408383641789

/-!
# A363190: Odd powerful numbers (A062739) k such that the next powerful number after k is also odd.

The programs for A363190, there is no canonical definition to state claims against.
-/

/-! ## A363190.P6856111254350049925

`A270337(A304412(n+1)+A264870(2*(n+2)))`
-/

namespace A363190.P6856111254350049925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270337 (A304412 (n + 1) + A264870 (2 * (n + 2))).toNat

end

end A363190.P6856111254350049925

/-!
# A363193: a(1)=1, and thereafter a(n) = number of occurrences of a(k) among terms a(1..k), where k = n-a(n-1).

The programs for A363193, there is no canonical definition to state claims against.
-/

/-! ## A363193.P4609143922964026365

`A366548(n)+1`
-/

namespace A363193.P4609143922964026365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366548 n + 1

end

end A363193.P4609143922964026365

/-! ## A363193.P9052221866545427669

`A003558(2^A366548(n))`
-/

namespace A363193.P9052221866545427669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A366548 n : ℤ))).toNat

end

end A363193.P9052221866545427669

/-! ## A363193.P1408112334547514628

`A070939(2^A366548(n))`
-/

namespace A363193.P1408112334547514628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A366548 n : ℤ))).toNat

end

end A363193.P1408112334547514628

/-! ## A363193.P9132127946293993927

`A000005(3^A366548(n))`
-/

namespace A363193.P9132127946293993927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A366548 n : ℤ))).toNat

end

end A363193.P9132127946293993927

/-! ## A363193.P7673811335433719587

`A046951(4^A366548(n))`
-/

namespace A363193.P7673811335433719587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A366548 n : ℤ))).toNat

end

end A363193.P7673811335433719587

/-!
# A363194: Number of divisors of the n-th powerful number A001694(n).

The programs for A363194, there is no canonical definition to state claims against.
-/

/-! ## A363194.P18177081685642121288

`A000005(A001694(n+1))`
-/

namespace A363194.P18177081685642121288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001694 (n + 1)).toNat

end

end A363194.P18177081685642121288

/-! ## A363194.P9941099959447154621

`A343443(A306458(n+1))`
-/

namespace A363194.P9941099959447154621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A306458 (n + 1)).toNat

end

end A363194.P9941099959447154621

/-! ## A363194.P3547728140317811813

`∏{e}[A001694(1+n), #+1]`
-/

namespace A363194.P3547728140317811813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363194.P3547728140317811813

/-! ## A363194.P13593756054759088871

`∏{e}[sqrt(A374291(1+n)), #+1]`
-/

namespace A363194.P13593756054759088871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374291 (1 + n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A363194.P13593756054759088871

/-! ## A363194.P7353277333306451113

`∏{e}[1-A224866(n+1), #+1]`
-/

namespace A363194.P7353277333306451113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A224866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363194.P7353277333306451113

/-! ## A363194.P10027827757222027402

`∏{e}[col(2*A374291(n+1)), #+1]`
-/

namespace A363194.P10027827757222027402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (2 * A374291 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A363194.P10027827757222027402

/-! ## A363194.P6692872176914008300

`∏{e}[∪[(n+1)², A320966(n+1)], #+1]`
-/

namespace A363194.P6692872176914008300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A363194.P6692872176914008300

/-! ## A363194.P2736928673399933849

`∏{e}[∪[A001597(n+1), A216427(n+1)], #+1]`
-/

namespace A363194.P2736928673399933849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A363194.P2736928673399933849

/-! ## A363194.P15393133425904727990

`A000005(sqrt(A374291(1+n)))`
-/

namespace A363194.P15393133425904727990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A374291 (1 + n) : ℝ))).toNat

end

end A363194.P15393133425904727990

/-! ## A363194.P3904380509023590185

`A000005(A224866(n+1)-1)`
-/

namespace A363194.P3904380509023590185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A224866 (n + 1) - 1).toNat

end

end A363194.P3904380509023590185

/-! ## A363194.P5638577753985331571

`A000005(∪[(n+1)², A320966(n+1)])`
-/

namespace A363194.P5638577753985331571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363194.P5638577753985331571

/-! ## A363194.P6276199956545690335

`A000005(A084371(n+1)*A306458(n+1))`
-/

namespace A363194.P6276199956545690335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A084371 (n + 1) * A306458 (n + 1)).toNat

end

end A363194.P6276199956545690335

/-! ## A363194.P15885673168730006138

`A000005(∪[A001597(n+1), A052486(n+1)])`
-/

namespace A363194.P15885673168730006138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363194.P15885673168730006138

/-! ## A363194.P7047651307617761597

`A000005(∪[A001597(n+1), A216426(n+1)])`
-/

namespace A363194.P7047651307617761597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363194.P7047651307617761597

/-! ## A363194.P7324130963437420083

`A000005(∪[A001597(n+1), A216427(n+1)])`
-/

namespace A363194.P7324130963437420083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363194.P7324130963437420083

/-! ## A363194.P676588257163137294

`A000005(∪[A320966(n+1), A056166(n+1)])`
-/

namespace A363194.P676588257163137294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363194.P676588257163137294

/-! ## A363194.P17486969241542491016

`A000005(A001478(n+1)+A224866(n+1)+n)`
-/

namespace A363194.P17486969241542491016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001478 (n + 1) + (A224866 (n + 1) + (n : ℤ))).toNat

end

end A363194.P17486969241542491016

/-! ## A363194.P16441887095205875136

`∏{e}[record[A057521(n+1)], #+1]`
-/

namespace A363194.P16441887095205875136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363194.P16441887095205875136

/-! ## A363194.P5420860494085090828

`A000005(record[A057521(n+1)])`
-/

namespace A363194.P5420860494085090828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363194.P5420860494085090828

/-! ## A363194.P18329087062055190032

`A000005(eq[1, A063274(n+1)]+1)`
-/

namespace A363194.P18329087062055190032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A363194.P18329087062055190032

/-!
# A363195: Number of divisors of the n-th cubefull number A036966(n).

The programs for A363195, there is no canonical definition to state claims against.
-/

/-! ## A363195.P7101239055773968680

`A000005(A036966(n+1))`
-/

namespace A363195.P7101239055773968680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036966 (n + 1)).toNat

end

end A363195.P7101239055773968680

/-! ## A363195.P841995441500585638

`A363194(A371185(n+1))`
-/

namespace A363195.P841995441500585638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363194 (A371185 (n + 1)).toNat

end

end A363195.P841995441500585638

/-! ## A363195.P8584815109745105123

`∏{e}[A036966(1+n), #+1]`
-/

namespace A363195.P8584815109745105123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A363195.P8584815109745105123

/-! ## A363195.P9411580769198010695

`∑{d}[A036966(n+1), ceil(1/#)]`
-/

namespace A363195.P9411580769198010695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈1 / (d : ℚ)⌉

end

end A363195.P9411580769198010695

/-! ## A363195.P927198901230266794

`A000005(∪[A036967(n+1), A376173(n+1)])`
-/

namespace A363195.P927198901230266794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363195.P927198901230266794

/-! ## A363195.P3358724614471939321

`A000005(∪[A076467(n+1), A372695(n+1)])`
-/

namespace A363195.P3358724614471939321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363195.P3358724614471939321

/-! ## A363195.P4842201440442963531

`A357669(A036966(2*n+1-n))`
-/

namespace A363195.P4842201440442963531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (A036966 (2 * n + 1 - n)).toNat

end

end A363195.P4842201440442963531

/-! ## A363195.P17402415466876864439

`A070824(A036966(n+1))+A040000(n)`
-/

namespace A363195.P17402415466876864439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A036966 (n + 1)).toNat + A040000 n

end

end A363195.P17402415466876864439

/-! ## A363195.P12559859451261626867

`A070824(A036966(n+1))+A036453(n+1)`
-/

namespace A363195.P12559859451261626867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A036966 (n + 1)).toNat + A036453 (n + 1)

end

end A363195.P12559859451261626867

/-! ## A363195.P6600460263314128791

`A133707(n+1)+A032741(A036966(n+1))`
-/

namespace A363195.P6600460263314128791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) + A032741 (A036966 (n + 1)).toNat

end

end A363195.P6600460263314128791

/-!
# A363199: Number of free tree-like polycubes of size n, identifying rotations but not reflections.

The programs for A363199, there is no canonical definition to state claims against.
-/

/-! ## A363199.P7476812885880215403

`A057356(A173321(n)+A083711(n+1))`
-/

namespace A363199.P7476812885880215403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A173321 n + A083711 (n + 1)).toNat

end

end A363199.P7476812885880215403

/-! ## A363199.P2961848566095921275

`or(A057356(A173321(n)), A262611(n+1))`
-/

namespace A363199.P2961848566095921275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057356 (A173321 n).toNat) (A262611 (n + 1))

end

end A363199.P2961848566095921275

