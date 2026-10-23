import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

The programs for A363101, the canonical program `A363101.P6678338457450784001` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363101 has offset 1).

The definition of A363101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363101.P6678338457450784001

`∩[A013929(n+1), A177712(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363101

/-- `∩[A013929(n+1), A177712(n+1)]` -/
def P6678338457450784001.Spec : Prop :=
  ∀ n, (P6678338457450784001.a n : ℤ) = A363101 (n + 1)

theorem P6678338457450784001.correct : P6678338457450784001.Spec := by
  intro n
  simp only [A363101, Nat.add_sub_cancel]

end A363101

/-! ## A363101.P6783116181491821580

`eq[A020639(n+5)-1, A355447(n+1)]+1`
-/

namespace A363101.P6783116181491821580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 5) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363101.P6783116181491821580

namespace A363101

/-- `eq[A020639(n+5)-1, A355447(n+1)]+1` -/
def P6783116181491821580.Spec : Prop :=
  ∀ n, (P6783116181491821580.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P17840651634970244404

`eq[A322592(A020639(n+1)), A355447(n+1)]+1`
-/

namespace A363101.P17840651634970244404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322592 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363101.P17840651634970244404

namespace A363101

/-- `eq[A322592(A020639(n+1)), A355447(n+1)]+1` -/
def P17840651634970244404.Spec : Prop :=
  ∀ n, (P17840651634970244404.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P17804649554001483082

`∩[2*n, A126706(n+1)]`
-/

namespace A363101.P17804649554001483082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363101.P17804649554001483082

namespace A363101

/-- `∩[2*n, A126706(n+1)]` -/
def P17804649554001483082.Spec : Prop :=
  ∀ n, (P17804649554001483082.a n : ℤ) = A363101 (n + 1)

end A363101

/-! ## A363101.P2282579033821292212

`filter[A282671(n+1), A355447(#)]`
-/

namespace A363101.P2282579033821292212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P2282579033821292212

namespace A363101

/-- `filter[A282671(n+1), A355447(#)]` -/
def P2282579033821292212.Spec : Prop :=
  ∀ n, P2282579033821292212.a n = A363101 (n + 1)

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

/-! ## A363101.P11307826055121232441

`filter[A139270(n+1), A355447(#)]`
-/

namespace A363101.P11307826055121232441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P11307826055121232441

namespace A363101

/-- `filter[A139270(n+1), A355447(#)]` -/
def P11307826055121232441.Spec : Prop :=
  ∀ n, P11307826055121232441.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P16987915577905100284

`filter[A176100(n+2), A355447(#)]`
-/

namespace A363101.P16987915577905100284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P16987915577905100284

namespace A363101

/-- `filter[A176100(n+2), A355447(#)]` -/
def P16987915577905100284.Spec : Prop :=
  ∀ n, P16987915577905100284.a n = A363101 (n + 1)

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

/-! ## A363101.P8242725569595970916

`filter[A177712(n+3), A087049(#)]`
-/

namespace A363101.P8242725569595970916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A363101.P8242725569595970916

namespace A363101

/-- `filter[A177712(n+3), A087049(#)]` -/
def P8242725569595970916.Spec : Prop :=
  ∀ n, P8242725569595970916.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P16381307981605687100

`filter[A177712(n+3), A105234(#)]`
-/

namespace A363101.P16381307981605687100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A363101.P16381307981605687100

namespace A363101

/-- `filter[A177712(n+3), A105234(#)]` -/
def P16381307981605687100.Spec : Prop :=
  ∀ n, P16381307981605687100.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P851352474755896066

`filter[A177712(n+3), A355447(#)]`
-/

namespace A363101.P851352474755896066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P851352474755896066

namespace A363101

/-- `filter[A177712(n+3), A355447(#)]` -/
def P851352474755896066.Spec : Prop :=
  ∀ n, P851352474755896066.a n = A363101 (n + 1)

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

/-! ## A363101.P10665087596001014120

`filter[A020739(n), A355447(#)]`
-/

namespace A363101.P10665087596001014120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P10665087596001014120

namespace A363101

/-- `filter[A020739(n), A355447(#)]` -/
def P10665087596001014120.Spec : Prop :=
  ∀ n, P10665087596001014120.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P15676217293685975949

`filter[A020744(n), A355447(#)]`
-/

namespace A363101.P15676217293685975949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P15676217293685975949

namespace A363101

/-- `filter[A020744(n), A355447(#)]` -/
def P15676217293685975949.Spec : Prop :=
  ∀ n, P15676217293685975949.a n = A363101 (n + 1)

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

/-! ## A363101.P4628569102169623366

`filter[A103517(n), A355447(#)]`
-/

namespace A363101.P4628569102169623366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P4628569102169623366

namespace A363101

/-- `filter[A103517(n), A355447(#)]` -/
def P4628569102169623366.Spec : Prop :=
  ∀ n, P4628569102169623366.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P2897533697845516206

`filter[A004277(n+1), A355447(#)]`
-/

namespace A363101.P2897533697845516206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P2897533697845516206

namespace A363101

/-- `filter[A004277(n+1), A355447(#)]` -/
def P2897533697845516206.Spec : Prop :=
  ∀ n, P2897533697845516206.a n = A363101 (n + 1)

end A363101

/-! ## A363101.P18122944629681518180

`filter[A005843(n+1), A355447(#)]`
-/

namespace A363101.P18122944629681518180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363101.P18122944629681518180

namespace A363101

/-- `filter[A005843(n+1), A355447(#)]` -/
def P18122944629681518180.Spec : Prop :=
  ∀ n, P18122944629681518180.a n = A363101 (n + 1)

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

/-! ## A363104.P6742205013623413707

`A182770(A002293(n)*(3*n+1))`
-/

namespace A363104.P6742205013623413707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182770 (A002293 n * (3 * n + 1 : ℤ)).toNat

end

end A363104.P6742205013623413707

/-!
# A363105: Expansion of g.f. A(x) satisfying 5 = Sum_{n=-oo..+oo} (-x)^n * (5*A(x) + x^(n-1))^(n+1).

The programs for A363105, there is no canonical definition to state claims against.
-/

/-! ## A363105.P4844516562296481304

`A090619(A135655(n+1))+A079935(n+1)`
-/

namespace A363105.P4844516562296481304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090619 (A135655 (n + 1)).toNat + A079935 (n + 1)

end

end A363105.P4844516562296481304

/-!
# A363106: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (A(x) + x^(n-2))^(n+1).

The programs for A363106, there is no canonical definition to state claims against.
-/

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

/-! ## A363111.P2466385004269590648

`A358721(∑[A112340(3*(n+1))+1])`
-/

namespace A363111.P2466385004269590648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112340 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358721 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363111.P2466385004269590648

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

/-! ## A363115.P13809381261246478480

`A239500(A078721(n))`
-/

namespace A363115.P13809381261246478480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (A078721 n).toNat

end

end A363115.P13809381261246478480

/-! ## A363115.P10728887903758624019

`A239500(A138980(∑[n]))`
-/

namespace A363115.P10728887903758624019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239500 (A138980 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A363115.P10728887903758624019

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

The programs for A363121, the canonical program `A363121.P4116322896546047244` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363121 has offset 1).

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

The canonical program, it is in `Seq.B001.C009`.
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

/-! ## A363121.P13807008920749577765

`comp[2*n]*A062383(2*n)`
-/

namespace A363121.P13807008920749577765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A062383 (2 * n)

end

end A363121.P13807008920749577765

namespace A363121

/-- `comp[2*n]*A062383(2*n)` -/
def P13807008920749577765.Spec : Prop :=
  ∀ n, P13807008920749577765.a n = A363121 (n + 1)

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

/-! ## A363121.P14692767865446586144

`A062383(2*n)*A109613(2*n)`
-/

namespace A363121.P14692767865446586144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) * A109613 (2 * n)

end

end A363121.P14692767865446586144

namespace A363121

/-- `A062383(2*n)*A109613(2*n)` -/
def P14692767865446586144.Spec : Prop :=
  ∀ n, P14692767865446586144.a n = A363121 (n + 1)

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

/-! ## A363121.P17907233728088077843

`A062383(2*n)*A086799(2*n+1)`
-/

namespace A363121.P17907233728088077843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) * A086799 (2 * n + 1)

end

end A363121.P17907233728088077843

namespace A363121

/-- `A062383(2*n)*A086799(2*n+1)` -/
def P17907233728088077843.Spec : Prop :=
  ∀ n, P17907233728088077843.a n = A363121 (n + 1)

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

/-! ## A363121.P12664813646557789031

`(2*n+1)*A151821(A070939(2*n))`
-/

namespace A363121.P12664813646557789031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A151821 (A070939 (2 * n)).toNat

end

end A363121.P12664813646557789031

namespace A363121

/-- `(2*n+1)*A151821(A070939(2*n))` -/
def P12664813646557789031.Spec : Prop :=
  ∀ n, P12664813646557789031.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P3578282534876488730

`A062383(2*n)*A257088(2*n+1)`
-/

namespace A363121.P3578282534876488730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) * A257088 (2 * n + 1)

end

end A363121.P3578282534876488730

namespace A363121

/-- `A062383(2*n)*A257088(2*n+1)` -/
def P3578282534876488730.Spec : Prop :=
  ∀ n, P3578282534876488730.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P3307051309682927932

`A062383(2*n)*A317311(2*n+1)`
-/

namespace A363121.P3307051309682927932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (2 * n) * A317311 (2 * n + 1)

end

end A363121.P3307051309682927932

namespace A363121

/-- `A062383(2*n)*A317311(2*n+1)` -/
def P3307051309682927932.Spec : Prop :=
  ∀ n, P3307051309682927932.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P14958139083066651994

`abs(A001489(2*n+1)*A062383(2*n))`
-/

namespace A363121.P14958139083066651994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (2 * n + 1) * A062383 (2 * n)|

end

end A363121.P14958139083066651994

namespace A363121

/-- `abs(A001489(2*n+1)*A062383(2*n))` -/
def P14958139083066651994.Spec : Prop :=
  ∀ n, P14958139083066651994.a n = A363121 (n + 1)

end A363121

/-! ## A363121.P17728088105313215897

`(2*n+1)*A000079(A029837(2*n+1))`
-/

namespace A363121.P17728088105313215897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000079 (A029837 (2 * n + 1)).toNat

end

end A363121.P17728088105313215897

namespace A363121

/-- `(2*n+1)*A000079(A029837(2*n+1))` -/
def P17728088105313215897.Spec : Prop :=
  ∀ n, P17728088105313215897.a n = A363121 (n + 1)

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

The programs for A363127, the canonical program `A363127.P3526787464918356969` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363127 has offset 1).

The definition of A363127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363127.P3526787464918356969

`∑{p}[n+1, gcd(n, #)]-A362611(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A363127

/-- `∑{p}[n+1, gcd(n, #)]-A362611(n+1)` -/
def P3526787464918356969.Spec : Prop :=
  ∀ n, P3526787464918356969.a n = A363127 (n + 1)

theorem P3526787464918356969.correct : P3526787464918356969.Spec := by
  intro n
  simp only [A363127, Nat.add_sub_cancel]

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

/-! ## A363127.P12478207689804165957

`A000700(A325249(n+1))-1`
-/

namespace A363127.P12478207689804165957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A325249 (n + 1)).toNat - 1

end

end A363127.P12478207689804165957

namespace A363127

/-- `A000700(A325249(n+1))-1` -/
def P12478207689804165957.Spec : Prop :=
  ∀ n, P12478207689804165957.a n = A363127 (n + 1)

end A363127

/-! ## A363127.P15982402223065412509

`A033844(n)%A309004(n+1)`
-/

namespace A363127.P15982402223065412509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033844 n) (A309004 (n + 1))

end

end A363127.P15982402223065412509

namespace A363127

/-- `A033844(n)%A309004(n+1)` -/
def P15982402223065412509.Spec : Prop :=
  ∀ n, P15982402223065412509.a n = A363127 (n + 1)

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

The programs for A363131, the canonical program `A363131.P17415635069131296600` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363131 has offset 1).

The definition of A363131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363131.P17415635069131296600

`A001221(A062760(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A363131

/-- `A001221(A062760(n+1))` -/
def P17415635069131296600.Spec : Prop :=
  ∀ n, P17415635069131296600.a n = A363131 (n + 1)

theorem P17415635069131296600.correct : P17415635069131296600.Spec := by
  intro n
  simp only [A363131, Nat.add_sub_cancel]

end A363131

/-! ## A363131.P4152188565524869101

`∑{e}[A062760(n+1), A062760(#)]`
-/

namespace A363131.P4152188565524869101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A062760 (Nat.factorization (f1 n).natAbs p)

end

end A363131.P4152188565524869101

namespace A363131

/-- `∑{e}[A062760(n+1), A062760(#)]` -/
def P4152188565524869101.Spec : Prop :=
  ∀ n, P4152188565524869101.a n = A363131 (n + 1)

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

/-! ## A363134.P7180108637785941966

`∪[A046317(n+1), A100484(n+1)]`
-/

namespace A363134.P7180108637785941966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363134.P7180108637785941966

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

/-! ## A363140.P8360708037356618253

`A008612(A268617(n+2)+1)`
-/

namespace A363140.P8360708037356618253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A268617 (n + 2) + 1).toNat

end

end A363140.P8360708037356618253

/-!
# A363142: Expansion of g.f. A(x) satisfying 1 = Sum_{n=-oo..+oo} (-1)^n * x^n * (A(x) + x^(2*n-1))^(n+1).

The programs for A363142, there is no canonical definition to state claims against.
-/

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

/-! ## A363142.P16811866301539311041

`A046155(∑[A000673(2*(n+2))])`
-/

namespace A363142.P16811866301539311041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000673 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363142.P16811866301539311041

/-! ## A363142.P2132000082888735658

`A231713(A260115(n))+A001654(n)`
-/

namespace A363142.P2132000082888735658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (A260115 n).toNat + A001654 n

end

end A363142.P2132000082888735658

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

/-! ## A363147.P18010139755918890247

`A266234(A070837(n+2))`
-/

namespace A363147.P18010139755918890247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266234 (A070837 (n + 2)).toNat

end

end A363147.P18010139755918890247

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

/-! ## A363148.P5703488441260599536

`A324924(n+1)+A209229(A184943(n))`
-/

namespace A363148.P5703488441260599536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (n + 1) + A209229 (A184943 n).toNat

end

end A363148.P5703488441260599536

/-!
# A363149: Expansion of 1 / Sum_{k>=0} x^(k*(5*k - 3)/2).

The programs for A363149, there is no canonical definition to state claims against.
-/

/-! ## A363149.P6783864922890411043

`A010055(A031173(n+2))-A101917(n+1)`
-/

namespace A363149.P6783864922890411043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A031173 (n + 2)).toNat - A101917 (n + 1)

end

end A363149.P6783864922890411043

/-! ## A363149.P16880062359763450685

`A331594(A167847(n+5))-A101917(n+1)`
-/

namespace A363149.P16880062359763450685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331594 (A167847 (n + 5)).toNat - A101917 (n + 1)

end

end A363149.P16880062359763450685

/-! ## A363149.P674029055293987329

`A353480(A185955(3*n+1))-A101917(n+1)`
-/

namespace A363149.P674029055293987329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A185955 (3 * n + 1)).toNat - A101917 (n + 1)

end

end A363149.P674029055293987329

/-! ## A363149.P10810254795798150699

`A010051(A316430(3*n+4))-A101917(n+1)`
-/

namespace A363149.P10810254795798150699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A316430 (3 * n + 4)).toNat - A101917 (n + 1)

end

end A363149.P10810254795798150699

/-! ## A363149.P15863621054227566714

`-A101917(A000005(2^n))`
-/

namespace A363149.P15863621054227566714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A101917 (A000005 (2 ^ n)).toNat

end

end A363149.P15863621054227566714

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

/-! ## A363152.P4125435378416691951

`A363151(A005843(n))%A059115(n+2)`
-/

namespace A363152.P4125435378416691951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363151 (A005843 n).toNat) (A059115 (n + 2))

end

end A363152.P4125435378416691951

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

/-! ## A363153.P11161194686753488172

`or(A011655(n), A363150(A005843(n)))`
-/

namespace A363153.P11161194686753488172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 n) (A363150 (A005843 n).toNat)

end

end A363153.P11161194686753488172

/-! ## A363153.P15917260250099864778

`or(A318962(n), A363150(A005843(n)))`
-/

namespace A363153.P15917260250099864778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318962 n) (A363150 (A005843 n).toNat)

end

end A363153.P15917260250099864778

/-! ## A363153.P18390476244102761588

`or(A030302(n+1), A363150(A005843(n)))`
-/

namespace A363153.P18390476244102761588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030302 (n + 1)) (A363150 (A005843 n).toNat)

end

end A363153.P18390476244102761588

/-! ## A363153.P14803770421023780120

`or(A107078(n+1), A363150(A005843(n)))`
-/

namespace A363153.P14803770421023780120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107078 (n + 1)) (A363150 (A005843 n).toNat)

end

end A363153.P14803770421023780120

/-!
# A363154: Triangle read by rows. The Hadamard product of A173018 and A349203.

The programs for A363154, there is no canonical definition to state claims against.
-/

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

/-!
# A363155: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-2)).

The programs for A363155, the canonical program `A363155.P8045732877436553929` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363155 has offset 1).

The definition of A363155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363155.P8045732877436553929

`A363928(5*n+4)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363155

/-- `A363928(5*n+4)` -/
def P8045732877436553929.Spec : Prop :=
  ∀ n, P8045732877436553929.a n = A363155 (n + 1)

theorem P8045732877436553929.correct : P8045732877436553929.Spec := by
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

/-! ## A363155.P8557254616456934910

`and(A000720(n+1), A119033(A242401(n+2)))`
-/

namespace A363155.P8557254616456934910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000720 (n + 1)) (A119033 (A242401 (n + 2)).toNat)

end

end A363155.P8557254616456934910

namespace A363155

/-- `and(A000720(n+1), A119033(A242401(n+2)))` -/
def P8557254616456934910.Spec : Prop :=
  ∀ n, P8557254616456934910.a n = A363155 (n + 1)

end A363155

/-!
# A363156: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-2)).

The programs for A363156, the canonical program `A363156.P4260273011259054206` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363156 has offset 1).

The definition of A363156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363156.P4260273011259054206

`A363928(A016885(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363156

/-- `A363928(A016885(n))` -/
def P4260273011259054206.Spec : Prop :=
  ∀ n, P4260273011259054206.a n = A363156 (n + 1)

theorem P4260273011259054206.correct : P4260273011259054206.Spec := by
  intro n
  simp only [A363156, Nat.add_sub_cancel]

end A363156

/-! ## A363156.P17323155393646752840

`A363928(A016873(n)+1)`
-/

namespace A363156.P17323155393646752840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016873 n + 1).toNat

end

end A363156.P17323155393646752840

namespace A363156

/-- `A363928(A016873(n)+1)` -/
def P17323155393646752840.Spec : Prop :=
  ∀ n, P17323155393646752840.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P13044781018861894525

`A363928(A016861(n)+2)`
-/

namespace A363156.P13044781018861894525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016861 n + 2).toNat

end

end A363156.P13044781018861894525

namespace A363156

/-- `A363928(A016861(n)+2)` -/
def P13044781018861894525.Spec : Prop :=
  ∀ n, P13044781018861894525.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P9562920313442808383

`A363928(A016897(n)-1)`
-/

namespace A363156.P9562920313442808383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A016897 n - 1).toNat

end

end A363156.P9562920313442808383

namespace A363156

/-- `A363928(A016897(n)-1)` -/
def P9562920313442808383.Spec : Prop :=
  ∀ n, P9562920313442808383.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P8666170260610619651

`A363928(A004767(n)+n)`
-/

namespace A363156.P8666170260610619651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A004767 n + (n : ℤ)).toNat

end

end A363156.P8666170260610619651

namespace A363156

/-- `A363928(A004767(n)+n)` -/
def P8666170260610619651.Spec : Prop :=
  ∀ n, P8666170260610619651.a n = A363156 (n + 1)

end A363156

/-! ## A363156.P11010859237344224473

`A363928(A047349(3*n+2)-A060747(n))`
-/

namespace A363156.P11010859237344224473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363928 (A047349 (3 * n + 2) - A060747 n).toNat

end

end A363156.P11010859237344224473

namespace A363156

/-- `A363928(A047349(3*n+2)-A060747(n))` -/
def P11010859237344224473.Spec : Prop :=
  ∀ n, P11010859237344224473.a n = A363156 (n + 1)

end A363156

/-!
# A363157: Expansion of Sum_{k>0} k * x^(4*k-1) / (1 - x^(5*k-2)).

The programs for A363157, the canonical program `A363157.P11495080749246290306` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363157 has offset 1).

The definition of A363157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363157.P11495080749246290306

`A363928(5*n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363157

/-- `A363928(5*n+2)` -/
def P11495080749246290306.Spec : Prop :=
  ∀ n, P11495080749246290306.a n = A363157 (n + 1)

theorem P11495080749246290306.correct : P11495080749246290306.Spec := by
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

/-! ## A363157.P13837624707440493163

`A242411(2*A051190(n+4))`
-/

namespace A363157.P13837624707440493163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (2 * A051190 (n + 4)).toNat

end

end A363157.P13837624707440493163

namespace A363157

/-- `A242411(2*A051190(n+4))` -/
def P13837624707440493163.Spec : Prop :=
  ∀ n, P13837624707440493163.a n = A363157 (n + 1)

end A363157

/-!
# A363158: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-2)).

The programs for A363158, the canonical program `A363158.P2370107232160215343` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363158 has offset 1).

The definition of A363158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363158.P2370107232160215343

`A363928(5*n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363158

/-- `A363928(5*n+1)` -/
def P2370107232160215343.Spec : Prop :=
  ∀ n, P2370107232160215343.a n = A363158 (n + 1)

theorem P2370107232160215343.correct : P2370107232160215343.Spec := by
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

The programs for A363161, the canonical program `A363161.P1509267130107313321` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363161 has offset 0).

The definition of A363161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363161.P1509267130107313321

`∑[∑{d}[6*n+1, #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363161

/-- `∑[∑{d}[6*n+1, #]]` -/
def P1509267130107313321.Spec : Prop :=
  ∀ n, (P1509267130107313321.a n : ℤ) = A363161 n

theorem P1509267130107313321.correct : P1509267130107313321.Spec := by
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

/-! ## A363163.P4660764791851869767

`A325715(n+1)+A072750(A155596(n))`
-/

namespace A363163.P4660764791851869767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325715 (n + 1) + A072750 (A155596 n).toNat

end

end A363163.P4660764791851869767

/-! ## A363163.P2678707044064244006

`A002635(A002426(n)*A215730(n+1))`
-/

namespace A363163.P2678707044064244006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A002426 n * A215730 (n + 1)).toNat

end

end A363163.P2678707044064244006

/-!
# A363165: The number of spanning trees of the ladder graph L_n up to automorphisms of L_n.

The programs for A363165, there is no canonical definition to state claims against.
-/

/-! ## A363165.P11624893752914937368

`A004113(n+1)-A158800(A000051(n))`
-/

namespace A363165.P11624893752914937368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004113 (n + 1) - A158800 (A000051 n).toNat

end

end A363165.P11624893752914937368

/-! ## A363165.P13486010701155731566

`A376635(A200543(n+1))`
-/

namespace A363165.P13486010701155731566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A200543 (n + 1)).toNat

end

end A363165.P13486010701155731566

/-!
# A363166: Bouton numbers: a(n) is the number of P positions in games of Nim with three nonzero heaps each containing at most n sticks.

The programs for A363166, the canonical program `A363166.P6606913492764389365` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363166 has offset 1).

The definition of A363166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363166.P6606913492764389365

`∑[and(n+1, a(n-1)+1)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363166

/-- `∑[and(n+1, a(n-1)+1)]` -/
def P6606913492764389365.Spec : Prop :=
  ∀ n, (P6606913492764389365.a n : ℤ) = A363166 (n + 1)

theorem P6606913492764389365.correct : P6606913492764389365.Spec := by
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

/-! ## A363166.P17016715876244678711

`∑[n+1-2^floor(log2(n+1))]`
-/

namespace A363166.P17016715876244678711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (2 ^ Nat.log 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363166.P17016715876244678711

namespace A363166

/-- `∑[n+1-2^floor(log2(n+1))]` -/
def P17016715876244678711.Spec : Prop :=
  ∀ n, P17016715876244678711.a n = A363166 (n + 1)

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

The programs for A363171, the canonical program `A363171.P9199599291437216858` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363171 has offset 1).

The definition of A363171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363171.P9199599291437216858

`eq[1, A294936(A064549(n+1))]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363171

/-- `eq[1, A294936(A064549(n+1))]+1` -/
def P9199599291437216858.Spec : Prop :=
  ∀ n, (P9199599291437216858.a n : ℤ) = A363171 (n + 1)

theorem P9199599291437216858.correct : P9199599291437216858.Spec := by
  intro n
  simp only [A363171, Nat.add_sub_cancel]

end A363171

/-! ## A363171.P17116437029682696384

`lt[A331942(A317127(n)), A331927(2*n)]`
-/

namespace A363171.P17116437029682696384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331942 (A317127 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363171.P17116437029682696384

namespace A363171

/-- `lt[A331942(A317127(n)), A331927(2*n)]` -/
def P17116437029682696384.Spec : Prop :=
  ∀ n, (P17116437029682696384.a n : ℤ) = A363171 (n + 1)

end A363171

/-! ## A363171.P9836349764857602475

`∩[A329367(n+1), A356609(n+1)]`
-/

namespace A363171.P9836349764857602475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363171.P9836349764857602475

namespace A363171

/-- `∩[A329367(n+1), A356609(n+1)]` -/
def P9836349764857602475.Spec : Prop :=
  ∀ n, (P9836349764857602475.a n : ℤ) = A363171 (n + 1)

end A363171

/-! ## A363171.P6173806658136233559

`lt[A105154(n), A033630(n²)]`
-/

namespace A363171.P6173806658136233559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363171.P6173806658136233559

namespace A363171

/-- `lt[A105154(n), A033630(n²)]` -/
def P6173806658136233559.Spec : Prop :=
  ∀ n, (P6173806658136233559.a n : ℤ) = A363171 (n + 1)

end A363171

/-! ## A363171.P12678679019149475166

`lt[A297770(n+2), A033630(n²)]`
-/

namespace A363171.P12678679019149475166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363171.P12678679019149475166

namespace A363171

/-- `lt[A297770(n+2), A033630(n²)]` -/
def P12678679019149475166.Spec : Prop :=
  ∀ n, (P12678679019149475166.a n : ℤ) = A363171 (n + 1)

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

/-! ## A363172.P14664428942302265203

`A007094(2*n+3)*A109337(A048578(n))`
-/

namespace A363172.P14664428942302265203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (2 * n + 3) * A109337 (A048578 n).toNat

end

end A363172.P14664428942302265203

/-!
# A363173: Number of triangles inside a regular n-gon formed by intersecting line segments, considering all configurations of 3 line segments from 6 distinct vertices.

The programs for A363173, there is no canonical definition to state claims against.
-/

/-! ## A363173.P5482409499219365140

`A006600(n+3)-A244882(n)`
-/

namespace A363173.P5482409499219365140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006600 (n + 3) - A244882 n

end

end A363173.P5482409499219365140

/-! ## A363173.P715482914408942373

`A363174(2*(2*n+3))`
-/

namespace A363173.P715482914408942373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363174 (2 * (2 * n + 3))

end

end A363173.P715482914408942373

/-! ## A363173.P14485079752259835752

`A086671(A283959(n+2)²)-1`
-/

namespace A363173.P14485079752259835752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (A283959 (n + 2) ^ 2).toNat - 1

end

end A363173.P14485079752259835752

/-! ## A363173.P4969233132122368208

`A057354(A035746(n)%A000142(n))`
-/

namespace A363173.P4969233132122368208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Int.tmod (A035746 n) (A000142 n)).toNat

end

end A363173.P4969233132122368208

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
# A363181: Number of permutations p of [n] such that for each i in [n] we have: (i>1) and |p(i)-p(i-1)| = 1 or (i

The programs for A363181, there is no canonical definition to state claims against.
-/

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

/-! ## A363181.P7431388273877999972

`lcm(A331184(3*(n+1)), A346462(A000096(n)))`
-/

namespace A363181.P7431388273877999972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A331184 (3 * (n + 1))) (A346462 (A000096 n).toNat)

end

end A363181.P7431388273877999972

/-!
# A363182: Expansion of g.f. A(x) satisfying 2 = Sum_{n=-oo..+oo} (-1)^n * x^n * (2*A(x) + x^(2*n-1))^(n+1).

The programs for A363182, there is no canonical definition to state claims against.
-/

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

/-! ## A363182.P11937966373074972477

`A342696(A114277(n+1))+1`
-/

namespace A363182.P11937966373074972477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A114277 (n + 1)).toNat + 1

end

end A363182.P11937966373074972477

/-!
# A363183: Expansion of g.f. A(x) satisfying 3 = Sum_{n=-oo..+oo} (-1)^n * x^n * (3*A(x) + x^(2*n-1))^(n+1).

The programs for A363183, there is no canonical definition to state claims against.
-/

/-! ## A363183.P3170247179855556819

`A151115(A001096(n))`
-/

namespace A363183.P3170247179855556819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151115 (A001096 n).toNat

end

end A363183.P3170247179855556819

/-! ## A363183.P7140412072336319504

`filter[A151115(n), A050072(#)]`
-/

namespace A363183.P7140412072336319504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050072 (f1 j).toNat = 1) n)

end

end A363183.P7140412072336319504

/-!
# A363184: Expansion of g.f. A(x) satisfying 4 = Sum_{n=-oo..+oo} (-1)^n * x^n * (4*A(x) + x^(2*n-1))^(n+1).

The programs for A363184, there is no canonical definition to state claims against.
-/

/-! ## A363184.P11555869027127081762

`A297234(A002110(n))+A083879(n)`
-/

namespace A363184.P11555869027127081762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297234 (A002110 n).toNat + A083879 n

end

end A363184.P11555869027127081762

/-! ## A363184.P12906211243569176620

`A004526(A137637(n)+A000203(n+1))`
-/

namespace A363184.P12906211243569176620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137637 n + A000203 (n + 1)).toNat

end

end A363184.P12906211243569176620

/-!
# A363185: Expansion of g.f. A(x) satisfying 5 = Sum_{n=-oo..+oo} (-1)^n * x^n * (5*A(x) + x^(2*n-1))^(n+1).

The programs for A363185, there is no canonical definition to state claims against.
-/

/-! ## A363185.P10038446006521708484

`A083880(n)+A006924(A006924(n))`
-/

namespace A363185.P10038446006521708484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 n + A006924 (A006924 n).toNat

end

end A363185.P10038446006521708484

/-! ## A363185.P16935574725669397072

`A083880(n)+A015537(A051118(n))`
-/

namespace A363185.P16935574725669397072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 n + A015537 (A051118 n).toNat

end

end A363185.P16935574725669397072

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

/-! ## A363189.P10872858354365270966

`filter[n+1, A373549(#)]`
-/

namespace A363189.P10872858354365270966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373549 (f1 j) = 1) n)

end

end A363189.P10872858354365270966

/-! ## A363189.P14370673968971130160

`eq[1, A373549(n+1)]+1`
-/

namespace A363189.P14370673968971130160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363189.P14370673968971130160

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

/-! ## A363189.P13518276590729604186

`record[(n+1)*A000035(A369430(n+1))]`
-/

namespace A363189.P13518276590729604186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A369430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363189.P13518276590729604186

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

/-! ## A363189.P13896809433645592020

`A217038(A062739(n+1)+1)`
-/

namespace A363189.P13896809433645592020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A062739 (n + 1) + 1).toNat

end

end A363189.P13896809433645592020

/-! ## A363189.P3589723201216996478

`lt[2, A040502(A224866(n+1))]+1`
-/

namespace A363189.P3589723201216996478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040502 (A224866 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363189.P3589723201216996478

/-! ## A363189.P4945989680434151579

`lt[1, A001511(A001694(n+1)+1)]+1`
-/

namespace A363189.P4945989680434151579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001694 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A363189.P4945989680434151579

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

/-! ## A363193.P1465998695556622316

`A366563(3^A366548(n))`
-/

namespace A363193.P1465998695556622316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A366548 n : ℤ))).toNat

end

end A363193.P1465998695556622316

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

/-! ## A363194.P2148937981121495495

`A357669(A001694(2*n+1-n))`
-/

namespace A363194.P2148937981121495495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (A001694 (2 * n + 1 - n)).toNat

end

end A363194.P2148937981121495495

/-! ## A363194.P11036767147907932816

`A357669(A374291(n+1)/A001694(n+1))`
-/

namespace A363194.P11036767147907932816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (SequenceMachineLib.roundAway ((A374291 (n + 1) : ℚ) / (A001694 (n + 1) : ℚ))).toNat

end

end A363194.P11036767147907932816

/-! ## A363194.P14332338432526224596

`A370328(A348018(A001694(A306458(A348018(n+1)))))`
-/

namespace A363194.P14332338432526224596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370328 (A348018 (A001694 (A306458 (A348018 (n + 1)).toNat).toNat).toNat).toNat

end

end A363194.P14332338432526224596

/-! ## A363194.P14222143846394377316

`∑{d}[lt[A326186(n+1), 1]+1, A057427(#)]`
-/

namespace A363194.P14222143846394377316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326186 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d

end

end A363194.P14222143846394377316

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

