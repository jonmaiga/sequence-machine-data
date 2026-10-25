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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A266400: Indices of primes in A005097.

The programs for A266400, the canonical program `A266400.P10626207752406824023` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266400 has offset 1).

The definition of A266400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266400.P1036828200107562931

`record[A100394(n+1)-1]`
-/

namespace A266400.P1036828200107562931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100394 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266400.P1036828200107562931

namespace A266400

/-- `record[A100394(n+1)-1]` -/
def P1036828200107562931.Spec : Prop :=
  ∀ n, P1036828200107562931.a n = A266400 (n + 1)

end A266400

/-! ## A266400.P10626207752406824023

`A020900(A072192(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A266400

/-- `A020900(A072192(n+1))` -/
def P10626207752406824023.Spec : Prop :=
  ∀ n, P10626207752406824023.a n = A266400 (n + 1)

theorem P10626207752406824023.correct : P10626207752406824023.Spec := by
  intro n
  simp only [A266400, Nat.add_sub_cancel]

end A266400

/-! ## A266400.P4345960737019991508

`A020900(A000720(A005384(n+1)))`
-/

namespace A266400.P4345960737019991508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (A000720 (A005384 (n + 1)).toNat).toNat

end

end A266400.P4345960737019991508

namespace A266400

/-- `A020900(A000720(A005384(n+1)))` -/
def P4345960737019991508.Spec : Prop :=
  ∀ n, P4345960737019991508.a n = A266400 (n + 1)

end A266400

/-! ## A266400.P13605295513908082482

`eq[2, A023508(n+1)]`
-/

namespace A266400.P13605295513908082482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266400.P13605295513908082482

namespace A266400

/-- `eq[2, A023508(n+1)]` -/
def P13605295513908082482.Spec : Prop :=
  ∀ n, (P13605295513908082482.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P11244367801362737143

`eq[2, A039642(n+1)]`
-/

namespace A266400.P11244367801362737143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266400.P11244367801362737143

namespace A266400

/-- `eq[2, A039642(n+1)]` -/
def P11244367801362737143.Spec : Prop :=
  ∀ n, (P11244367801362737143.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P14181987807350497792

`eq[2, A039644(n+1)]`
-/

namespace A266400.P14181987807350497792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266400.P14181987807350497792

namespace A266400

/-- `eq[2, A039644(n+1)]` -/
def P14181987807350497792.Spec : Prop :=
  ∀ n, (P14181987807350497792.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P12576661725916826804

`eq[1, A121885(n+3)]+2`
-/

namespace A266400.P12576661725916826804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121885 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A266400.P12576661725916826804

namespace A266400

/-- `eq[1, A121885(n+3)]+2` -/
def P12576661725916826804.Spec : Prop :=
  ∀ n, (P12576661725916826804.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P17193600619291625621

`eq[2, ∑{e}[A006093(n+1), #]]`
-/

namespace A266400.P17193600619291625621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P17193600619291625621

namespace A266400

/-- `eq[2, ∑{e}[A006093(n+1), #]]` -/
def P17193600619291625621.Spec : Prop :=
  ∀ n, (P17193600619291625621.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P4585598526185679600

`eq[1, A054024(A005097(n+1))]+1`
-/

namespace A266400.P4585598526185679600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A005097 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266400.P4585598526185679600

namespace A266400

/-- `eq[1, A054024(A005097(n+1))]+1` -/
def P4585598526185679600.Spec : Prop :=
  ∀ n, (P4585598526185679600.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P9846049841840163051

`eq[A039638(n+1), A070819(n+1)]`
-/

namespace A266400.P9846049841840163051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P9846049841840163051

namespace A266400

/-- `eq[A039638(n+1), A070819(n+1)]` -/
def P9846049841840163051.Spec : Prop :=
  ∀ n, (P9846049841840163051.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P16504498899099355022

`eq[A039640(n+1), A070819(n+1)]`
-/

namespace A266400.P16504498899099355022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P16504498899099355022

namespace A266400

/-- `eq[A039640(n+1), A070819(n+1)]` -/
def P16504498899099355022.Spec : Prop :=
  ∀ n, (P16504498899099355022.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P2688036110851937687

`eq[A055769(n+1), A070819(n+1)]`
-/

namespace A266400.P2688036110851937687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P2688036110851937687

namespace A266400

/-- `eq[A055769(n+1), A070819(n+1)]` -/
def P2688036110851937687.Spec : Prop :=
  ∀ n, (P2688036110851937687.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P10454176186348906328

`eq[A055769(n+1), A082654(n+1)]`
-/

namespace A266400.P10454176186348906328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P10454176186348906328

namespace A266400

/-- `eq[A055769(n+1), A082654(n+1)]` -/
def P10454176186348906328.Spec : Prop :=
  ∀ n, (P10454176186348906328.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P978649537914251218

`eq[A039638(n+1), A102781(n+1)]`
-/

namespace A266400.P978649537914251218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P978649537914251218

namespace A266400

/-- `eq[A039638(n+1), A102781(n+1)]` -/
def P978649537914251218.Spec : Prop :=
  ∀ n, (P978649537914251218.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P18142489443343053497

`eq[A039640(n+1), A102781(n+1)]`
-/

namespace A266400.P18142489443343053497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P18142489443343053497

namespace A266400

/-- `eq[A039640(n+1), A102781(n+1)]` -/
def P18142489443343053497.Spec : Prop :=
  ∀ n, (P18142489443343053497.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P11109552175055388949

`eq[A070820(n+1), A111333(n+1)]`
-/

namespace A266400.P11109552175055388949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P11109552175055388949

namespace A266400

/-- `eq[A070820(n+1), A111333(n+1)]` -/
def P11109552175055388949.Spec : Prop :=
  ∀ n, (P11109552175055388949.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P6252574372553364662

`eq[A070819(n+1), A130290(n+1)]`
-/

namespace A266400.P6252574372553364662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P6252574372553364662

namespace A266400

/-- `eq[A070819(n+1), A130290(n+1)]` -/
def P6252574372553364662.Spec : Prop :=
  ∀ n, (P6252574372553364662.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P9789291951944662753

`eq[A070819(n+1), A241195(n+1)]`
-/

namespace A266400.P9789291951944662753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P9789291951944662753

namespace A266400

/-- `eq[A070819(n+1), A241195(n+1)]` -/
def P9789291951944662753.Spec : Prop :=
  ∀ n, (P9789291951944662753.a n : ℤ) = A266400 (n + 1)

end A266400

/-! ## A266400.P2866617694593486558

`eq[A075518(n+1), A241194(n+1)]`
-/

namespace A266400.P2866617694593486558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A266400.P2866617694593486558

namespace A266400

/-- `eq[A075518(n+1), A241194(n+1)]` -/
def P2866617694593486558.Spec : Prop :=
  ∀ n, (P2866617694593486558.a n : ℤ) = A266400 (n + 1)

end A266400

/-!
# A266401: Self-inverse permutation of natural numbers: a(n) = A064989(A263273(A003961(n))).

The programs for A266401, there is no canonical definition to state claims against.
-/

/-! ## A266401.P1913771687207811086

`A064216(A264996(A048673(n+1)))`
-/

namespace A266401.P1913771687207811086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A264996 (A048673 (n + 1)).toNat).toNat

end

end A266401.P1913771687207811086

/-! ## A266401.P17198536231147944423

`A064989(A263273(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266401.P17198536231147944423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A263273 (A003961 (n + 1)).toNat).toNat

end

end A266401.P17198536231147944423

/-! ## A266401.P459958728992966308

`A266407(A048673(n+1))`
-/

namespace A266401.P459958728992966308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (A048673 (n + 1)).toNat

end

end A266401.P459958728992966308

/-! ## A266401.P15424584761357506217

`A064216(A266408(n+1))`
-/

namespace A266401.P15424584761357506217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A266408 (n + 1)).toNat

end

end A266401.P15424584761357506217

/-! ## A266401.P17221672623328191762

`A266416(A266646(n+1))`
-/

namespace A266401.P17221672623328191762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A266646 (n + 1)).toNat

end

end A266401.P17221672623328191762

/-! ## A266401.P3485633619949363275

`A266407(A249810(2*(n+1)))`
-/

namespace A266401.P3485633619949363275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (A249810 (2 * (n + 1))).toNat

end

end A266401.P3485633619949363275

/-! ## A266401.P15578975460710988402

`A266407((A003961(n+1)+1)/2)`
-/

namespace A266401.P15578975460710988402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A266401.P15578975460710988402

/-! ## A266401.P1746681573832668765

`A266645(A266415(n+1))`
-/

namespace A266401.P1746681573832668765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266415 (n + 1)).toNat

end

end A266401.P1746681573832668765

/-! ## A266401.P14551706977258440410

`A266645(A266403(A266646(A249818(A249817(n+1)))))`
-/

namespace A266401.P14551706977258440410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266403 (A266646 (A249818 (A249817 (n + 1)).toNat).toNat).toNat).toNat

end

end A266401.P14551706977258440410

/-! ## A266401.P13108198940197583947

`A266416(A266403(A266415(A263273(A263273(n+1)))))`
-/

namespace A266401.P13108198940197583947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A266403 (A266415 (A263273 (A263273 (n + 1)).toNat).toNat).toNat).toNat

end

end A266401.P13108198940197583947

/-! ## A266401.P8567811626105035143

`A266416(A266403(A266415(A264985(A264985(n+1)))))`
-/

namespace A266401.P8567811626105035143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A266403 (A266415 (A264985 (A264985 (n + 1)).toNat).toNat).toNat).toNat

end

end A266401.P8567811626105035143

/-! ## A266401.P6179950527965800692

`A266416(A266403(A266415(A264996(A264996(n+1)))))`
-/

namespace A266401.P6179950527965800692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A266403 (A266415 (A264996 (A264996 (n + 1)).toNat).toNat).toNat).toNat

end

end A266401.P6179950527965800692

/-! ## A266401.P6007500618416883801

`A266416(A266403(A266415(A266403(A266403(n+1)))))`
-/

namespace A266401.P6007500618416883801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A266403 (A266415 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A266401.P6007500618416883801

/-! ## A266401.P10643074194761351317

`A266645(A266403(A266646(A266646(A266645(n+1)))))`
-/

namespace A266401.P10643074194761351317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266403 (A266646 (A266646 (A266645 (n + 1)).toNat).toNat).toNat).toNat

end

end A266401.P10643074194761351317

/-! ## A266401.P381728037376087757

`A283463(A266415(2*(n+1)))`
-/

namespace A266401.P381728037376087757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266415 (2 * (n + 1))).toNat

end

end A266401.P381728037376087757

/-! ## A266401.P12046892957313047255

`A266416(A003961(n+1)+1)/2`
-/

namespace A266401.P12046892957313047255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266416 (A003961 (n + 1) + 1).toNat : ℚ) / 2

end

end A266401.P12046892957313047255

/-! ## A266401.P9837868548625470272

`A064989(2*A266408(n+1)-1)`
-/

namespace A266401.P9837868548625470272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A266408 (n + 1) - 1).toNat

end

end A266401.P9837868548625470272

/-! ## A266401.P1848477879194172139

`A064989(A266415(2*(n+1))-1)`
-/

namespace A266401.P1848477879194172139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A266415 (2 * (n + 1)) - 1).toNat

end

end A266401.P1848477879194172139

/-! ## A266401.P1475407793810122934

`A266416(2*A048673(n+1))/2`
-/

namespace A266401.P1475407793810122934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266416 (2 * A048673 (n + 1)).toNat : ℚ) / 2

end

end A266401.P1475407793810122934

/-! ## A266401.P6297450015124716837

`A064216(A266415(2*(n+1))/2)`
-/

namespace A266401.P6297450015124716837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (SequenceMachineLib.roundAway ((A266415 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A266401.P6297450015124716837

/-!
# A266402: Self-inverse permutation of natural numbers: a(n) = A064989(A030101(A003961(n))).

The programs for A266402, the canonical program `A266402.P4456686432549101179` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266402 has offset 1).

The definition of A266402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A030101, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A266402.P4456686432549101179

`A064989(A030101(A003961(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A266402

/-- `A064989(A030101(A003961(n+1)))` -/
def P4456686432549101179.Spec : Prop :=
  ∀ n, P4456686432549101179.a n = A266402 (n + 1)

theorem P4456686432549101179.correct : P4456686432549101179.Spec := by
  intro n
  simp only [A266402, Nat.add_sub_cancel]

end A266402

/-! ## A266402.P3791061592357873484

`A266645(A266404(A266403(A266415(n+1))))`
-/

namespace A266402.P3791061592357873484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266404 (A266403 (A266415 (n + 1)).toNat).toNat).toNat

end

end A266402.P3791061592357873484

namespace A266402

/-- `A266645(A266404(A266403(A266415(n+1))))` -/
def P3791061592357873484.Spec : Prop :=
  ∀ n, P3791061592357873484.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P9268775893687571015

`A064989(A057889(A045965(n+1)))`
-/

namespace A266402.P9268775893687571015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A057889 (A045965 (n + 1)).toNat).toNat

end

end A266402.P9268775893687571015

namespace A266402

/-- `A064989(A057889(A045965(n+1)))` -/
def P9268775893687571015.Spec : Prop :=
  ∀ n, P9268775893687571015.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P10719963037166457910

`A252463(A030101(A253885(n)+1))`
-/

namespace A266402.P10719963037166457910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A030101 (A253885 n + 1).toNat).toNat

end

end A266402.P10719963037166457910

namespace A266402

/-- `A252463(A030101(A253885(n)+1))` -/
def P10719963037166457910.Spec : Prop :=
  ∀ n, P10719963037166457910.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P16730250177650743437

`A266401(A266416(A266404(A266646(n+1))))`
-/

namespace A266402.P16730250177650743437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A266416 (A266404 (A266646 (n + 1)).toNat).toNat).toNat

end

end A266402.P16730250177650743437

namespace A266402

/-- `A266401(A266416(A266404(A266646(n+1))))` -/
def P16730250177650743437.Spec : Prop :=
  ∀ n, P16730250177650743437.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P10497441004484352263

`A064989(A057889(A003961(A057889(A057889(n+1)))))`
-/

namespace A266402.P10497441004484352263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A057889 (A003961 (A057889 (A057889 (n + 1)).toNat).toNat).toNat).toNat

end

end A266402.P10497441004484352263

namespace A266402

/-- `A064989(A057889(A003961(A057889(A057889(n+1)))))` -/
def P10497441004484352263.Spec : Prop :=
  ∀ n, P10497441004484352263.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P4219570566622087178

`A252463(A030101(2*A003961(n+1)))`
-/

namespace A266402.P4219570566622087178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A030101 (2 * A003961 (n + 1)).toNat).toNat

end

end A266402.P4219570566622087178

namespace A266402

/-- `A252463(A030101(2*A003961(n+1)))` -/
def P4219570566622087178.Spec : Prop :=
  ∀ n, P4219570566622087178.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P9464359614732211685

`A252463(A030101(lcm(2, A003961(n+1))))`
-/

namespace A266402.P9464359614732211685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A030101 (Int.lcm 2 (A003961 (n + 1)))).toNat

end

end A266402.P9464359614732211685

namespace A266402

/-- `A252463(A030101(lcm(2, A003961(n+1))))` -/
def P9464359614732211685.Spec : Prop :=
  ∀ n, P9464359614732211685.a n = A266402 (n + 1)

end A266402

/-! ## A266402.P11861511473874743408

`A266645(A266404(A266415(A266401(n+1))))`
-/

namespace A266402.P11861511473874743408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266404 (A266415 (A266401 (n + 1)).toNat).toNat).toNat

end

end A266402.P11861511473874743408

namespace A266402

/-- `A266645(A266404(A266415(A266401(n+1))))` -/
def P11861511473874743408.Spec : Prop :=
  ∀ n, P11861511473874743408.a n = A266402 (n + 1)

end A266402

/-!
# A266403: Self-inverse permutation of natural numbers: a(n) = A250470(A263273(A250469(n))).

The programs for A266403, there is no canonical definition to state claims against.
-/

/-! ## A266403.P3371410870540483917

`A250470(A263273(A250469(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266403.P3371410870540483917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A263273 (A250469 (n + 1)).toNat).toNat

end

end A266403.P3371410870540483917

/-! ## A266403.P10613045020983399289

`A250472(A264996(A250471(n+1)))`
-/

namespace A266403.P10613045020983399289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A264996 (A250471 (n + 1)).toNat).toNat

end

end A266403.P10613045020983399289

/-! ## A266403.P14994103094433487912

`A266415(A266645(n+1))`
-/

namespace A266403.P14994103094433487912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A266645 (n + 1)).toNat

end

end A266403.P14994103094433487912

/-! ## A266403.P8957583619834308902

`A266646(A266416(n+1))`
-/

namespace A266403.P8957583619834308902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A266416 (n + 1)).toNat

end

end A266403.P8957583619834308902

/-! ## A266403.P15067915585926417800

`A250472(A048673(A266416(A263273(A263273(n+1)))))`
-/

namespace A266403.P15067915585926417800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A048673 (A266416 (A263273 (A263273 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P15067915585926417800

/-! ## A266403.P8927301054145319462

`A250472(A048673(A266416(A264985(A264985(n+1)))))`
-/

namespace A266403.P8927301054145319462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A048673 (A266416 (A264985 (A264985 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P8927301054145319462

/-! ## A266403.P7343879149271715030

`A250472(A048673(A266416(A264996(A264996(n+1)))))`
-/

namespace A266403.P7343879149271715030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A048673 (A266416 (A264996 (A264996 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P7343879149271715030

/-! ## A266403.P12505311538093703161

`A250472(A048673(A266416(A266416(A266415(n+1)))))`
-/

namespace A266403.P12505311538093703161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A048673 (A266416 (A266416 (A266415 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P12505311538093703161

/-! ## A266403.P1041681383276803908

`A266415(A064989(2*A250469(n+1)))`
-/

namespace A266403.P1041681383276803908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A064989 (2 * A250469 (n + 1)).toNat).toNat

end

end A266403.P1041681383276803908

/-! ## A266403.P5530745655703351606

`A266415(A064989(lcm(2, A250469(n+1))))`
-/

namespace A266403.P5530745655703351606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A064989 (Int.lcm 2 (A250469 (n + 1)))).toNat

end

end A266403.P5530745655703351606

/-! ## A266403.P13023835501956439530

`A266415(A266401(A266416(A057889(A057889(n+1)))))`
-/

namespace A266403.P13023835501956439530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A266401 (A266416 (A057889 (A057889 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P13023835501956439530

/-! ## A266403.P12250830457865008878

`A266415(A266401(A266416(A265329(A265329(n+1)))))`
-/

namespace A266403.P12250830457865008878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A266401 (A266416 (A265329 (A265329 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P12250830457865008878

/-! ## A266403.P3121678451853741189

`A266415(A266401(A266416(A266401(A266401(n+1)))))`
-/

namespace A266403.P3121678451853741189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266415 (A266401 (A266416 (A266401 (A266401 (n + 1)).toNat).toNat).toNat).toNat

end

end A266403.P3121678451853741189

/-!
# A266404: Self-inverse permutation of natural numbers: a(n) = A250470(A030101(A250469(n))).

The programs for A266404, there is no canonical definition to state claims against.
-/

/-! ## A266404.P4393658723569404921

`A250470(A030101(A250469(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266404.P4393658723569404921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A030101 (A250469 (n + 1)).toNat).toNat

end

end A266404.P4393658723569404921

/-! ## A266404.P10520688616844679477

`A250470(A057889(or(1, A250469(n+1))))`
-/

namespace A266404.P10520688616844679477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A057889 (Int.lor 1 (A250469 (n + 1))).toNat).toNat

end

end A266404.P10520688616844679477

/-! ## A266404.P12984709458393428040

`A250470(A057889(A250469(A057889(A057889(n+1)))))`
-/

namespace A266404.P12984709458393428040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A057889 (A250469 (A057889 (A057889 (n + 1)).toNat).toNat).toNat).toNat

end

end A266404.P12984709458393428040

/-! ## A266404.P6310452475210901178

`A266646(A266402(A266416(A266403(n+1))))`
-/

namespace A266404.P6310452475210901178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A266402 (A266416 (A266403 (n + 1)).toNat).toNat).toNat

end

end A266404.P6310452475210901178

/-! ## A266404.P14319381430582759231

`A266646(A266402(A266401(A266416(n+1))))`
-/

namespace A266404.P14319381430582759231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A266402 (A266401 (A266416 (n + 1)).toNat).toNat).toNat

end

end A266404.P14319381430582759231

/-! ## A266404.P8267453632848064804

`A266403(A266415(A266402(A266645(n+1))))`
-/

namespace A266404.P8267453632848064804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A266415 (A266402 (A266645 (n + 1)).toNat).toNat).toNat

end

end A266404.P8267453632848064804

/-!
# A266407: Permutation of natural numbers: a(n) = A064989(A263273((2*n)-1)).

The programs for A266407, there is no canonical definition to state claims against.
-/

/-! ## A266407.P1569202676405592427

`A064989(A263273(2*(n+1)-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266407.P1569202676405592427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A263273 (2 * (n + 1) - 1)).toNat

end

end A266407.P1569202676405592427

/-! ## A266407.P6034016138892788962

`A064216(A264985(n)+1)`
-/

namespace A266407.P6034016138892788962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A264985 n + 1).toNat

end

end A266407.P6034016138892788962

/-! ## A266407.P15866997759137889050

`A064216(A264996(n+1))`
-/

namespace A266407.P15866997759137889050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A264996 (n + 1)).toNat

end

end A266407.P15866997759137889050

/-! ## A266407.P15509752789019762969

`A266401(A064216(n+1))`
-/

namespace A266407.P15509752789019762969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A064216 (n + 1)).toNat

end

end A266407.P15509752789019762969

/-! ## A266407.P4667225401666901799

`A266401(A064989(2*n+1))`
-/

namespace A266407.P4667225401666901799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A064989 (2 * n + 1)).toNat

end

end A266407.P4667225401666901799

/-! ## A266407.P12336215113512938656

`A266401(A266645(2*(n+1))/2)`
-/

namespace A266407.P12336215113512938656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (SequenceMachineLib.roundAway ((A266645 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A266407.P12336215113512938656

/-! ## A266407.P13492768158759591038

`A064216(A266408(A064989(n+1+n)))`
-/

namespace A266407.P13492768158759591038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A266408 (A064989 (n + 1 + n)).toNat).toNat

end

end A266407.P13492768158759591038

/-! ## A266407.P3007738819681315212

`A064216(A266408(A064216(A265369(A265369(n+1)))))`
-/

namespace A266407.P3007738819681315212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A266408 (A064216 (A265369 (A265369 (n + 1)).toNat).toNat).toNat).toNat

end

end A266407.P3007738819681315212

/-! ## A266407.P671107518181588328

`A266416(A250472(n+1))`
-/

namespace A266407.P671107518181588328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A250472 (n + 1)).toNat

end

end A266407.P671107518181588328

/-! ## A266407.P1422816249821949135

`A266416(A250470(2*n+1))`
-/

namespace A266407.P1422816249821949135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266416 (A250470 (2 * n + 1)).toNat

end

end A266407.P1422816249821949135

/-! ## A266407.P1702347152038324448

`A266645(A266403(A250470(n+1+n)))`
-/

namespace A266407.P1702347152038324448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266403 (A250470 (n + 1 + n)).toNat).toNat

end

end A266407.P1702347152038324448

/-! ## A266407.P15684832073768676245

`A266645(A266403(A250472(A263273(A263273(n+1)))))`
-/

namespace A266407.P15684832073768676245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266403 (A250472 (A263273 (A263273 (n + 1)).toNat).toNat).toNat).toNat

end

end A266407.P15684832073768676245

/-! ## A266407.P16033636811446027447

`A266416(2*(n+1))/2`
-/

namespace A266407.P16033636811446027447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266416 (2 * (n + 1)) : ℚ) / 2

end

end A266407.P16033636811446027447

/-! ## A266407.P8470033785769837160

`A064989(A264983(n))`
-/

namespace A266407.P8470033785769837160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A264983 n).toNat

end

end A266407.P8470033785769837160

/-! ## A266407.P12068665445834578258

`A064989(A264996(n+1)+A264985(n))`
-/

namespace A266407.P12068665445834578258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A264996 (n + 1) + A264985 n).toNat

end

end A266407.P12068665445834578258

/-! ## A266407.P12039973097582435399

`A064989(A057889(A265369(A057889(2*n+1))))`
-/

namespace A266407.P12039973097582435399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A057889 (A265369 (A057889 (2 * n + 1)).toNat).toNat).toNat

end

end A266407.P12039973097582435399

/-! ## A266407.P8072346153650224745

`A283463(A266403(2*(n+1)))`
-/

namespace A266407.P8072346153650224745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A266403 (2 * (n + 1))).toNat

end

end A266407.P8072346153650224745

/-! ## A266407.P18280867229200703667

`A064989(A266403(2*(n+1))-1)`
-/

namespace A266407.P18280867229200703667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A266403 (2 * (n + 1)) - 1).toNat

end

end A266407.P18280867229200703667

/-! ## A266407.P2401717724114745746

`A064216(A266403(2*(n+1))/2)`
-/

namespace A266407.P2401717724114745746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (SequenceMachineLib.roundAway ((A266403 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A266407.P2401717724114745746

/-! ## A266407.P15181841698786120196

`A266645(A266403(A250472(A250472(A250471(n+1)))))`
-/

namespace A266407.P15181841698786120196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266403 (A250472 (A250472 (A250471 (n + 1)).toNat).toNat).toNat).toNat

end

end A266407.P15181841698786120196

/-!
# A266408: Permutation of natural numbers: a(n) = (1/2) * (1+A263273(A003961(n))).

The programs for A266408, there is no canonical definition to state claims against.
-/

/-! ## A266408.P14492451719505540724

`(1+A263273(A003961(n+1)))/2`
-/

namespace A266408.P14492451719505540724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A263273 (A003961 (n + 1)).toNat : ℚ) / 2

end

end A266408.P14492451719505540724

/-! ## A266408.P15835021176201668238

`1/2*(1+A263273(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266408.P15835021176201668238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (1 + A263273 (A003961 (n + 1)).toNat : ℚ)

end

end A266408.P15835021176201668238

/-! ## A266408.P11178133697457568644

`A264996(A048673(n+1))`
-/

namespace A266408.P11178133697457568644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A048673 (n + 1)).toNat

end

end A266408.P11178133697457568644

/-! ## A266408.P6422882313143136635

`A048673(A266401(n+1))`
-/

namespace A266408.P6422882313143136635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A266401 (n + 1)).toNat

end

end A266408.P6422882313143136635

/-! ## A266408.P2847642869238124993

`A048673(A266416(A266646(n+1)))`
-/

namespace A266408.P2847642869238124993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A266416 (A266646 (n + 1)).toNat).toNat

end

end A266408.P2847642869238124993

/-! ## A266408.P2319176417144848041

`A048673(A266407(A048673(A265369(A265369(n+1)))))`
-/

namespace A266408.P2319176417144848041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A266407 (A048673 (A265369 (A265369 (n + 1)).toNat).toNat).toNat).toNat

end

end A266408.P2319176417144848041

/-! ## A266408.P11431705164567166912

`A048673(A266407(A048673(A266403(A266403(n+1)))))`
-/

namespace A266408.P11431705164567166912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A266407 (A048673 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A266408.P11431705164567166912

/-! ## A266408.P11275373328181789920

`A266415(2*(n+1))/2`
-/

namespace A266408.P11275373328181789920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266415 (2 * (n + 1)) : ℚ) / 2

end

end A266408.P11275373328181789920

/-! ## A266408.P17454069726432433147

`A250471(A266415(n+1))`
-/

namespace A266408.P17454069726432433147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250471 (A266415 (n + 1)).toNat

end

end A266408.P17454069726432433147

/-! ## A266408.P9190339571160734516

`A078898(A266415(2*(n+1)))`
-/

namespace A266408.P9190339571160734516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A266415 (2 * (n + 1))).toNat

end

end A266408.P9190339571160734516

/-! ## A266408.P11427210218372884088

`A280498(A266415(2*n+2))`
-/

namespace A266408.P11427210218372884088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A266415 (2 * n + 2)).toNat

end

end A266408.P11427210218372884088

/-! ## A266408.P4260959680338960442

`A264996(A266646(2*(n+1))/2)`
-/

namespace A266408.P4260959680338960442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (SequenceMachineLib.roundAway ((A266646 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A266408.P4260959680338960442

/-! ## A266408.P3820121724518034474

`A280498(A249818(A266415(n+2+n)))`
-/

namespace A266408.P3820121724518034474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A249818 (A266415 (n + 2 + n)).toNat).toNat

end

end A266408.P3820121724518034474

/-! ## A266408.P12652211888412929862

`A048673(A064989(A263273(A003961(n+1))))`
-/

namespace A266408.P12652211888412929862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A064989 (A263273 (A003961 (n + 1)).toNat).toNat).toNat

end

end A266408.P12652211888412929862

/-! ## A266408.P960229484531364724

`A266403(A003961(n+1)+1)/2`
-/

namespace A266408.P960229484531364724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266403 (A003961 (n + 1) + 1).toNat : ℚ) / 2

end

end A266408.P960229484531364724

/-! ## A266408.P7709342563842061807

`A266403(2*A048673(n+1))/2`
-/

namespace A266408.P7709342563842061807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266403 (2 * A048673 (n + 1)).toNat : ℚ) / 2

end

end A266408.P7709342563842061807

/-!
# A266409: a(n) = (A003309(n+2)-1) / 2; numbers n such that 2n+1 is a Ludic number (in A003309).

The programs for A266409, there is no canonical definition to state claims against.
-/

/-! ## A266409.P10175042341882088126

`(A003309(n+3)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266409.P10175042341882088126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 3) - 1 : ℚ) / 2

end

end A266409.P10175042341882088126

/-! ## A266409.P4335351345316584648

`floor(A003309(n+3)/2)`
-/

namespace A266409.P4335351345316584648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003309 (n + 3) : ℚ) / 2⌋

end

end A266409.P4335351345316584648

/-! ## A266409.P4924128843821897021

`∑[A260739(A260723(n+2))]`
-/

namespace A266409.P4924128843821897021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A260723 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266409.P4924128843821897021

/-! ## A266409.P16970125751418648076

`A302042(record[A260723(n)+a(n-1)])` with `a(0)=2, a(1)=1`
-/

namespace A266409.P16970125751418648076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A260723 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A266409.P16970125751418648076

/-! ## A266409.P17920170414594579254

`record[floor(A269380(2*n+5)/2)]`
-/

namespace A266409.P17920170414594579254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269380 (2 * n + 5) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266409.P17920170414594579254

/-! ## A266409.P5765862827683949472

`eq[1, A302037(2*n+1)]`
-/

namespace A266409.P5765862827683949472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266409.P5765862827683949472

/-! ## A266409.P9469503375462381112

`lt[A302032(2*n+1)², n+1]`
-/

namespace A266409.P9469503375462381112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A266409.P9469503375462381112

/-! ## A266409.P4307595374338578220

`A302032(A003309(n+3)-1)`
-/

namespace A266409.P4307595374338578220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A003309 (n + 3) - 1).toNat

end

end A266409.P4307595374338578220

/-! ## A266409.P502267089364820012

`record[A302032(n+1)/A302032(n+2)]`
-/

namespace A266409.P502267089364820012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302032 (n + 1) : ℚ) / (A302032 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266409.P502267089364820012

/-! ## A266409.P2321418117321015511

`A278529(A003309(n+3)-1)`
-/

namespace A266409.P2321418117321015511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A003309 (n + 3) - 1).toNat

end

end A266409.P2321418117321015511

/-! ## A266409.P8099659614496415701

`A278537(A003309(n+3)-1)`
-/

namespace A266409.P8099659614496415701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A003309 (n + 3) - 1).toNat

end

end A266409.P8099659614496415701

/-! ## A266409.P8182692585404581157

`(A255407(A065091(n+1))-1)/2`
-/

namespace A266409.P8182692585404581157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255407 (A065091 (n + 1)).toNat - 1 : ℚ) / 2

end

end A266409.P8182692585404581157

/-! ## A266409.P4465175045347781195

`A260739(A003309(n+3)-1)`
-/

namespace A266409.P4465175045347781195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A003309 (n + 3) - 1).toNat

end

end A266409.P4465175045347781195

/-! ## A266409.P4010374638408356499

`record[A260739(n+1)/A260739(n+2)]`
-/

namespace A266409.P4010374638408356499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260739 (n + 1) : ℚ) / (A260739 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266409.P4010374638408356499

/-! ## A266409.P4634959039804109184

`lt[A006093(n+1), A260738(2*n+1)²]`
-/

namespace A266409.P4634959039804109184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266409.P4634959039804109184

/-! ## A266409.P8458791257545985996

`lt[record[A006530(n+2)], A260738(2*n+1)²]`
-/

namespace A266409.P8458791257545985996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A266409.P8458791257545985996

/-! ## A266409.P10612853102734871295

`record[Δ[A302032(n+3)]]`
-/

namespace A266409.P10612853102734871295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266409.P10612853102734871295

/-! ## A266409.P17557197843624582842

`lt[n+1, A272565(Δ[n²])]`
-/

namespace A266409.P17557197843624582842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266409.P17557197843624582842

/-! ## A266409.P95351983285298897

`lt[n*A271419(2*n+1), n]`
-/

namespace A266409.P95351983285298897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A271419 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A266409.P95351983285298897

/-!
# A266410: a(n) = (A266419(n) - 1) / 2; numbers n such that 2n+1 is a nonludic number (in A192607).

The programs for A266410, there is no canonical definition to state claims against.
-/

/-! ## A266410.P15814509644786744508

`(A266419(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266410.P15814509644786744508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266419 (n + 1) - 1 : ℚ) / 2

end

end A266410.P15814509644786744508

/-! ## A266410.P3024226193672276004

`floor(A266419(n+1)/2)`
-/

namespace A266410.P3024226193672276004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266419 (n + 1) : ℚ) / 2⌋

end

end A266410.P3024226193672276004

/-! ## A266410.P9835826248755820129

`lt[1, A302032(2*n+1)]`
-/

namespace A266410.P9835826248755820129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266410.P9835826248755820129

/-! ## A266410.P12721276890966917580

`lt[1, A302037(2*n+1)]`
-/

namespace A266410.P12721276890966917580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266410.P12721276890966917580

/-! ## A266410.P4083924716423586187

`lt[1, A260739(2*n+1)]`
-/

namespace A266410.P4083924716423586187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266410.P4083924716423586187

/-! ## A266410.P13976217364332619219

`lt[A260739(n+1), A302032(n+1)]/2`
-/

namespace A266410.P13976217364332619219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A266410.P13976217364332619219

/-! ## A266410.P16419390455326489429

`A260739(lt[A260739(n+1), A302032(n+1)])`
-/

namespace A266410.P16419390455326489429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A266410.P16419390455326489429

/-! ## A266410.P12771773989653715319

`lt[A272565(Δ[n²]), n]`
-/

namespace A266410.P12771773989653715319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A266410.P12771773989653715319

/-! ## A266410.P14795955973966615714

`eq[0, A192490(2*n+1)]`
-/

namespace A266410.P14795955973966615714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266410.P14795955973966615714

/-! ## A266410.P2168472975502828048

`lt[1, A271419(2*n+1)]`
-/

namespace A266410.P2168472975502828048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266410.P2168472975502828048

/-! ## A266410.P6829348063202601208

`lt[2, A271419(n+1)]/2`
-/

namespace A266410.P6829348063202601208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A266410.P6829348063202601208

/-! ## A266410.P2452349446145882290

`eq[1, A192490(n+n+1)+1]`
-/

namespace A266410.P2452349446145882290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (n + n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266410.P2452349446145882290

/-! ## A266410.P12961128673779675889

`A004524(A266419(n+1))`
-/

namespace A266410.P12961128673779675889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A266419 (n + 1)).toNat

end

end A266410.P12961128673779675889

/-! ## A266410.P13206812281001868574

`lt[1, A271419(A004442(2*n))²]`
-/

namespace A266410.P13206812281001868574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (A004442 (2 * n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266410.P13206812281001868574

/-! ## A266410.P11699005478169710153

`lt[A266256(n), A302032(n+1)]/2`
-/

namespace A266410.P11699005478169710153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A266410.P11699005478169710153

/-! ## A266410.P4133486913413143729

`A032742(lt[A266256(n), A302032(n+1)])`
-/

namespace A266410.P4133486913413143729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A266410.P4133486913413143729

/-! ## A266410.P10449315199491392445

`A266418(2*A266417(n+1))`
-/

namespace A266410.P10449315199491392445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266418 (2 * A266417 (n + 1)).toNat

end

end A266410.P10449315199491392445

/-! ## A266410.P482759442489175609

`A266418(A266417(n+1)+A266417(n+1))`
-/

namespace A266410.P482759442489175609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266418 (A266417 (n + 1) + A266417 (n + 1)).toNat

end

end A266410.P482759442489175609

/-!
# A266412: Inverse permutation to A266411.

The programs for A266412, there is no canonical definition to state claims against.
-/

/-! ## A266412.P17705927557041862366

`A360960(n)%A075679(n+1)+1`
-/

namespace A266412.P17705927557041862366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360960 n) (A075679 (n + 1)) + 1

end

end A266412.P17705927557041862366

/-! ## A266412.P7449125135921341242

`(A360960(n)+1)%A324707(n+1)`
-/

namespace A266412.P7449125135921341242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360960 n + 1) (A324707 (n + 1))

end

end A266412.P7449125135921341242

/-! ## A266412.P12916424879756557221

`A360960(n)+A057427(A001006(n))`
-/

namespace A266412.P12916424879756557221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360960 n + A057427 (A001006 n).toNat

end

end A266412.P12916424879756557221

/-! ## A266412.P10751759975751036562

`A360960(n)+A094635(A000079(n))`
-/

namespace A266412.P10751759975751036562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360960 n + A094635 (A000079 n).toNat

end

end A266412.P10751759975751036562

/-! ## A266412.P10843343273383980374

`A360960(n)+A057427(A047982(n))`
-/

namespace A266412.P10843343273383980374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360960 n + A057427 (A047982 n).toNat

end

end A266412.P10843343273383980374

/-!
# A266413: a(1) = 1, after which each a(n) = A002487(n)-th number selected from those not yet in the sequence.

The programs for A266413, there is no canonical definition to state claims against.
-/

/-! ## A266413.P3730306264436134167

`A064989(A135382(2*n+3))+A053644(n)`
-/

namespace A266413.P3730306264436134167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A135382 (2 * n + 3)).toNat + A053644 n

end

end A266413.P3730306264436134167

/-!
# A266414: Inverse permutation to A266413.

The programs for A266414, there is no canonical definition to state claims against.
-/

/-! ## A266414.P4616386353154544288

`A005940(A260431(n+1)^A322356(n+1))`
-/

namespace A266414.P4616386353154544288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((A260431 (n + 1) : ℚ) ^ (A322356 (n + 1) : ℤ))).toNat

end

end A266414.P4616386353154544288

/-! ## A266414.P16979408417361701166

`A005940(C(A260431(n+1), A322356(n+1)))`
-/

namespace A266414.P16979408417361701166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Nat.choose (A260431 (n + 1)).toNat (A322356 (n + 1)).toNat)

end

end A266414.P16979408417361701166

/-!
# A266415: Permutation of natural numbers: a(n) = A250470(A263273(A003961(n))).

The programs for A266415, there is no canonical definition to state claims against.
-/

/-! ## A266415.P7374614638728667989

`A266403(A266646(n+1))`
-/

namespace A266415.P7374614638728667989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A266646 (n + 1)).toNat

end

end A266415.P7374614638728667989

/-! ## A266415.P1117927706788869304

`A250470(A263273(A003961(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266415.P1117927706788869304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A263273 (A003961 (n + 1)).toNat).toNat

end

end A266415.P1117927706788869304

/-! ## A266415.P12251142432211817406

`A250472(A264996(A048673(n+1)))`
-/

namespace A266415.P12251142432211817406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A264996 (A048673 (n + 1)).toNat).toNat

end

end A266415.P12251142432211817406

/-! ## A266415.P5390164533806687080

`A250472(A266408(n+1))`
-/

namespace A266415.P5390164533806687080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250472 (A266408 (n + 1)).toNat

end

end A266415.P5390164533806687080

/-! ## A266415.P17479827049875819365

`A250470(A003961(A266401(n+1)))`
-/

namespace A266415.P17479827049875819365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A003961 (A266401 (n + 1)).toNat).toNat

end

end A266415.P17479827049875819365

/-! ## A266415.P563954424751734469

`A266403(A250472(A048673(A250472(A250471(n+1)))))`
-/

namespace A266415.P563954424751734469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A250472 (A048673 (A250472 (A250471 (n + 1)).toNat).toNat).toNat).toNat

end

end A266415.P563954424751734469

/-! ## A266415.P2163725037899364483

`A266403(A250472(A048673(A263273(A263273(n+1)))))`
-/

namespace A266415.P2163725037899364483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A250472 (A048673 (A263273 (A263273 (n + 1)).toNat).toNat).toNat).toNat

end

end A266415.P2163725037899364483

/-! ## A266415.P109709289369753687

`A266403(A250472(A048673(A264985(A264985(n+1)))))`
-/

namespace A266415.P109709289369753687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A250472 (A048673 (A264985 (A264985 (n + 1)).toNat).toNat).toNat).toNat

end

end A266415.P109709289369753687

/-! ## A266415.P5442435270901201625

`A266403(A250472(A048673(A266403(A266403(n+1)))))`
-/

namespace A266415.P5442435270901201625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A250472 (A048673 (A266403 (A266403 (n + 1)).toNat).toNat).toNat).toNat

end

end A266415.P5442435270901201625

/-! ## A266415.P14649096246080187232

`A266646(A266401(n+1))`
-/

namespace A266415.P14649096246080187232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A266401 (n + 1)).toNat

end

end A266415.P14649096246080187232

/-! ## A266415.P11138664684323877533

`A266646(A266416(A266646(A264996(A264996(n+1)))))`
-/

namespace A266415.P11138664684323877533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A266416 (A266646 (A264996 (A264996 (n + 1)).toNat).toNat).toNat).toNat

end

end A266415.P11138664684323877533

/-!
# A266416: Permutation of natural numbers: a(n) = A064989(A263273(A250469(n))).

The programs for A266416, there is no canonical definition to state claims against.
-/

/-! ## A266416.P4573641650495903857

`A064216(A264996(A250471(n+1)))`
-/

namespace A266416.P4573641650495903857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A264996 (A250471 (n + 1)).toNat).toNat

end

end A266416.P4573641650495903857

/-! ## A266416.P16781554086244915939

`A266645(A266403(n+1))`
-/

namespace A266416.P16781554086244915939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (A266403 (n + 1)).toNat

end

end A266416.P16781554086244915939

/-! ## A266416.P4638539160114779089

`A064989(A263273(A250469(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266416.P4638539160114779089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A263273 (A250469 (n + 1)).toNat).toNat

end

end A266416.P4638539160114779089

/-! ## A266416.P7689772907842858731

`A266407(A269360(n+1)/2)`
-/

namespace A266416.P7689772907842858731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (SequenceMachineLib.roundAway ((A269360 (n + 1) : ℚ) / 2)).toNat

end

end A266416.P7689772907842858731

/-! ## A266416.P10736021944764336246

`A266401(A266645(n+1))`
-/

namespace A266416.P10736021944764336246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266401 (A266645 (n + 1)).toNat

end

end A266416.P10736021944764336246

/-! ## A266416.P4013517326246998628

`A266407(A250471(n+1))`
-/

namespace A266416.P4013517326246998628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266407 (A250471 (n + 1)).toNat

end

end A266416.P4013517326246998628

/-!
# A266417: a(1) = 1; for n > 1, if A192490(2n+1) = 1 [when 2n+1 is Ludic number] a(n) = 1 + 2*a(A266350(n)-1), otherwise a(n) = 2*a(n-A266350(n)).

The programs for A266417, there is no canonical definition to state claims against.
-/

/-! ## A266417.P2901055863581094356

`A237427(A266637(n+1))`
-/

namespace A266417.P2901055863581094356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237427 (A266637 (n + 1)).toNat

end

end A266417.P2901055863581094356

/-! ## A266417.P9893107541291707859

`A246377(A266637(n+1)%A128933(n+1))`
-/

namespace A266417.P9893107541291707859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246377 (Int.tmod (A266637 (n + 1)) (A128933 (n + 1))).toNat

end

end A266417.P9893107541291707859

/-!
# A266418: Permutation of natural numbers: a(1) = 1, a(2n) = A266410(a(n)), a(2n+1) = A266409(1+a(n)).

The programs for A266418, there is no canonical definition to state claims against.
-/

/-! ## A266418.P203132468296092607

`A266638(A237126(n+1))`
-/

namespace A266418.P203132468296092607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266638 (A237126 (n + 1)).toNat

end

end A266418.P203132468296092607

/-!
# A266419: Odd nonludic numbers.

The programs for A266419, there is no canonical definition to state claims against.
-/

/-! ## A266419.P5379026535364272758

`1+2*A266410(n+1)`
-/

namespace A266419.P5379026535364272758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A266410 (n + 1)

end

end A266419.P5379026535364272758

/-! ## A266419.P10388161378341608949

`comp[∪[2*n, A003309(n+1)]]`
-/

namespace A266419.P10388161378341608949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A266419.P10388161378341608949

/-! ## A266419.P16606385213539098901

`A144396(A266410(n+1))`
-/

namespace A266419.P16606385213539098901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A266410 (n + 1)).toNat

end

end A266419.P16606385213539098901

/-! ## A266419.P5377374367026548701

`A144396(lt[1, A302037(2*n+1)])`
-/

namespace A266419.P5377374367026548701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A266419.P5377374367026548701

/-! ## A266419.P8185296008716358861

`A130773(A266410(n+1)+1)-2`
-/

namespace A266419.P8185296008716358861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A266410 (n + 1) + 1).toNat - 2

end

end A266419.P8185296008716358861

/-! ## A266419.P10820826119192822071

`∩[2*n+1, A192607(n+1)]`
-/

namespace A266419.P10820826119192822071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266419.P10820826119192822071

/-! ## A266419.P10737510905628657584

`∩[A192607(n+2), n+1+n]`
-/

namespace A266419.P10737510905628657584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A266419.P10737510905628657584

/-! ## A266419.P7836839746739159752

`A192607(A266410(n+1)+n)`
-/

namespace A266419.P7836839746739159752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (A266410 (n + 1) + (n : ℤ)).toNat

end

end A266419.P7836839746739159752

/-! ## A266419.P14373075076278439665

`A192607(eq[1, and(1, A192607(n+1))]+1)`
-/

namespace A266419.P14373075076278439665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A192607 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A266419.P14373075076278439665

/-! ## A266419.P11991994048788667528

`lt[A260739(n+1), A302032(n+1)]+1`
-/

namespace A266419.P11991994048788667528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A266419.P11991994048788667528

/-! ## A266419.P6986173701107584806

`lt[2, A271419(n+1)]+1`
-/

namespace A266419.P6986173701107584806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A266419.P6986173701107584806

/-! ## A266419.P6890804785011981897

`2*eq[0, A192490(2*n+1)]+1`
-/

namespace A266419.P6890804785011981897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A266419.P6890804785011981897

/-! ## A266419.P10783799246303078846

`lt[n%2*∑[n]+1, A302037(n+1)]+1`
-/

namespace A266419.P10783799246303078846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A266419.P10783799246303078846

/-! ## A266419.P7603183023244882379

`A004442(lt[2, A271419(n+1)])`
-/

namespace A266419.P7603183023244882379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A266419.P7603183023244882379

/-! ## A266419.P4471834543898922396

`filter[A192607(n+1), A000035(#)]`
-/

namespace A266419.P4471834543898922396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A266419.P4471834543898922396

/-! ## A266419.P15526511122204124253

`filter[A192607(n+1), A266070(#)]`
-/

namespace A266419.P15526511122204124253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A266419.P15526511122204124253

/-! ## A266419.P18000308949330436002

`filter[A192607(n+1), A266611(#)]`
-/

namespace A266419.P18000308949330436002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A266419.P18000308949330436002

/-! ## A266419.P1176322788482240463

`filter[A192607(n+1), A266719(#)]`
-/

namespace A266419.P1176322788482240463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A266419.P1176322788482240463

/-! ## A266419.P11398883206173910225

`filter[A192607(n+1), A296066(#)]`
-/

namespace A266419.P11398883206173910225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A266419.P11398883206173910225

/-! ## A266419.P16547349316152125904

`filter[A192607(n+2), A266246(#)]`
-/

namespace A266419.P16547349316152125904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192607 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A266419.P16547349316152125904

/-!
# A266420: Odd unlucky numbers.

The programs for A266420, there is no canonical definition to state claims against.
-/

/-! ## A266420.P6255668980136626791

`eq[0, A145649(n^(n%2))]`
-/

namespace A266420.P6255668980136626791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266420.P6255668980136626791

/-! ## A266420.P11963020007665869009

`comp[∪[2*n, A000959(n+1)]]`
-/

namespace A266420.P11963020007665869009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A266420.P11963020007665869009

/-! ## A266420.P452293889993454439

`eq[(n+1)%2, A145649(n+2)]+2`
-/

namespace A266420.P452293889993454439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A266420.P452293889993454439

/-! ## A266420.P6448593697000623847

`eq[A145649(A020639(n+1)+1), A145649(n+1)]+1`
-/

namespace A266420.P6448593697000623847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A020639 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A266420.P6448593697000623847

/-! ## A266420.P16206918903580306343

`eq[1, A145649(A093178(n))+1]`
-/

namespace A266420.P16206918903580306343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A093178 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A266420.P16206918903580306343

/-! ## A266420.P5832300906943446643

`∩[2*n+1, A050505(n+1)]`
-/

namespace A266420.P5832300906943446643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266420.P5832300906943446643

/-! ## A266420.P18137084459261826612

`∩[A050505(n+1), A004273(n)]`
-/

namespace A266420.P18137084459261826612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266420.P18137084459261826612

/-! ## A266420.P7887553982503390372

`∩[A050505(n+1), A060747(n)]`
-/

namespace A266420.P7887553982503390372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266420.P7887553982503390372

/-! ## A266420.P15844370770941844546

`∩[A050505(n+1), A062545(n)]`
-/

namespace A266420.P15844370770941844546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266420.P15844370770941844546

/-! ## A266420.P5823009596611124726

`∩[A050505(n+1), A144396(n+1)]`
-/

namespace A266420.P5823009596611124726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266420.P5823009596611124726

/-! ## A266420.P10236617301018205381

`A050505(eq[1, A050505(n+1)%2]+1)`
-/

namespace A266420.P10236617301018205381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050505 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A266420.P10236617301018205381

/-! ## A266420.P2623863840957847508

`A050505(eq[1, and(1, A050505(n+1))]+1)`
-/

namespace A266420.P2623863840957847508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A266420.P2623863840957847508

/-! ## A266420.P14902581830748501098

`lt[1, A265859(n+1)]+1`
-/

namespace A266420.P14902581830748501098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A266420.P14902581830748501098

/-! ## A266420.P17047878595992709266

`lt[2, A264940(n+1)]+1`
-/

namespace A266420.P17047878595992709266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A266420.P17047878595992709266

/-! ## A266420.P15931210256736509157

`lt[2, A264940(A028310(n))]`
-/

namespace A266420.P15931210256736509157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A266420.P15931210256736509157

/-! ## A266420.P18129159311599701819

`filter[A050505(n+1), A000035(#)]`
-/

namespace A266420.P18129159311599701819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A266420.P18129159311599701819

/-! ## A266420.P7081781610750662245

`filter[A050505(n+1), A266070(#)]`
-/

namespace A266420.P7081781610750662245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A266420.P7081781610750662245

/-! ## A266420.P1823408980444840120

`filter[A050505(n+2), A266611(#)]`
-/

namespace A266420.P1823408980444840120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A266420.P1823408980444840120

/-! ## A266420.P1430317917876550758

`filter[A050505(n+2), A266719(#)]`
-/

namespace A266420.P1430317917876550758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A266420.P1430317917876550758

/-!
# A266421: Numbers n such that (2^(n+7)*5^(n+5) - 204979)/9 is prime (n > 0).

The programs for A266421, there is no canonical definition to state claims against.
-/

/-! ## A266421.P14524740106571506027

`A338716(A345028(n+2))`
-/

namespace A266421.P14524740106571506027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338716 (A345028 (n + 2)).toNat

end

end A266421.P14524740106571506027

/-!
# A266422: Number of n X n binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266422, there is no canonical definition to state claims against.
-/

/-! ## A266422.P1024236338457222147

`A266428(∑[4*n]+1)`
-/

namespace A266422.P1024236338457222147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266422.P1024236338457222147

/-! ## A266422.P13695545152215262396

`A266428(A001844(n))+char[21]`
-/

namespace A266422.P13695545152215262396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266422.P13695545152215262396

/-! ## A266422.P16462358461759598982

`record[A266428(Δ[A079824(n+1)])]`
-/

namespace A266422.P16462358461759598982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266422.P16462358461759598982

/-! ## A266422.P13769411618758811944

`record[A003982(n)*A266428(n+1)]`
-/

namespace A266422.P13769411618758811944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A266428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266422.P13769411618758811944

/-! ## A266422.P16788221864162485095

`record[gcd(A037012(n), A266428(n+1))]`
-/

namespace A266422.P16788221864162485095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A266428 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266422.P16788221864162485095

/-!
# A266423: Number of n X 3 binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266423, there is no canonical definition to state claims against.
-/

/-! ## A266423.P447948212566678996

`A266428(∑[n+3]+1)`
-/

namespace A266423.P447948212566678996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266423.P447948212566678996

/-! ## A266423.P9384351422443213983

`A248227(A217953(n+1)+A138929(n+1))`
-/

namespace A266423.P9384351422443213983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A217953 (n + 1) + A138929 (n + 1)).toNat

end

end A266423.P9384351422443213983

/-!
# A266424: Number of nX4 binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266424, there is no canonical definition to state claims against.
-/

/-! ## A266424.P3882029706147557353

`A266428(C(n+4, 2)+1+n)`
-/

namespace A266424.P3882029706147557353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (Nat.choose (n + 4) 2 + 1 + n)

end

end A266424.P3882029706147557353

/-! ## A266424.P17729027466029397593

`A266428(A141214(n+1))`
-/

namespace A266424.P17729027466029397593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A141214 (n + 1)).toNat

end

end A266424.P17729027466029397593

/-! ## A266424.P8155889437687711591

`A266428(A027379(n+2))`
-/

namespace A266424.P8155889437687711591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A027379 (n + 2)).toNat

end

end A266424.P8155889437687711591

/-! ## A266424.P14866054912643444198

`A266428(A055998(n+2))`
-/

namespace A266424.P14866054912643444198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A055998 (n + 2)).toNat

end

end A266424.P14866054912643444198

/-! ## A266424.P6561314469817109150

`A266428(A155212(n)+5)`
-/

namespace A266424.P6561314469817109150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A155212 n + 5).toNat

end

end A266424.P6561314469817109150

/-!
# A266425: Number of nX5 binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266425, there is no canonical definition to state claims against.
-/

/-! ## A266425.P15141367763749149299

`A266428(Δ[A264443(n)])`
-/

namespace A266425.P15141367763749149299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (f1 (n + 1) - f1 n).toNat

end

end A266425.P15141367763749149299

/-! ## A266425.P4688692515362064140

`A266428(A056115(n)+11)`
-/

namespace A266425.P4688692515362064140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A056115 n + 11).toNat

end

end A266425.P4688692515362064140

/-! ## A266425.P15953591392841373797

`A266428(eq[2, A092921(n)])`
-/

namespace A266425.P15953591392841373797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266425.P15953591392841373797

/-! ## A266425.P5949949744979598923

`A266428(eq[3, A152157(n)])`
-/

namespace A266425.P5949949744979598923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266425.P5949949744979598923

/-! ## A266425.P14334668015010640009

`A266428(eq[4, A193592(n)])`
-/

namespace A266425.P14334668015010640009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266425.P14334668015010640009

/-!
# A266426: Number of nX6 binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266426, there is no canonical definition to state claims against.
-/

/-! ## A266426.P16492338083572348414

`A266428(A052905(n+3))`
-/

namespace A266426.P16492338083572348414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A052905 (n + 3)).toNat

end

end A266426.P16492338083572348414

/-! ## A266426.P16824996457757857650

`A266428(A056119(n)+16)`
-/

namespace A266426.P16824996457757857650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A056119 n + 16).toNat

end

end A266426.P16824996457757857650

/-! ## A266426.P13102863956518570748

`A266428(eq[3, A219347(n)])`
-/

namespace A266426.P13102863956518570748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266426.P13102863956518570748

/-! ## A266426.P3468979970223946912

`A266428(eq[5, A193592(n)])`
-/

namespace A266426.P3468979970223946912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266426.P3468979970223946912

/-! ## A266426.P2369002726166257336

`A266428(eq[8, A258709(n)])`
-/

namespace A266426.P2369002726166257336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266426.P2369002726166257336

/-!
# A266427: Number of nX7 binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266427, there is no canonical definition to state claims against.
-/

/-! ## A266427.P17785047929806182333

`A266428(A055999(n+4))`
-/

namespace A266427.P17785047929806182333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A055999 (n + 4)).toNat

end

end A266427.P17785047929806182333

/-! ## A266427.P7198157791186803216

`A266428(eq[4, A219347(n)])`
-/

namespace A266427.P7198157791186803216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266427.P7198157791186803216

/-! ## A266427.P1735903700030577776

`A266428(eq[6, A193592(n)])`
-/

namespace A266427.P1735903700030577776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266427.P1735903700030577776

/-! ## A266427.P15627865297432635563

`A266428(A052905(n+4)-1)`
-/

namespace A266427.P15627865297432635563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A052905 (n + 4) - 1).toNat

end

end A266427.P15627865297432635563

/-! ## A266427.P2233843343503280774

`A266428(A000217(n+7)-6)`
-/

namespace A266427.P2233843343503280774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A000217 (n + 7) - 6).toNat

end

end A266427.P2233843343503280774

/-!
# A266428: T(n,k)=Number of nXk binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266428, there is no canonical definition to state claims against.
-/

/-! ## A266428.P8693059631209137823

`A031285(A214398(n+1)+A003056(n))`
-/

namespace A266428.P8693059631209137823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A214398 (n + 1) + A003056 n).toNat

end

end A266428.P8693059631209137823

/-! ## A266428.P13462050885580839252

`A190098(n+1)+A177815(A201637(n))`
-/

namespace A266428.P13462050885580839252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190098 (n + 1) + A177815 (A201637 n).toNat

end

end A266428.P13462050885580839252

/-! ## A266428.P13839788234374918462

`A180985(n+1)-A102683(A054357(n))`
-/

namespace A266428.P13839788234374918462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (n + 1) - A102683 (A054357 n).toNat

end

end A266428.P13839788234374918462

/-! ## A266428.P3844726927114741934

`A180985(n+1)-A102683(A190512(n))`
-/

namespace A266428.P3844726927114741934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180985 (n + 1) - A102683 (A190512 n).toNat

end

end A266428.P3844726927114741934

/-!
# A266429: Number of 3 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266429, the canonical program `A266429.P8553441658832143791` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266429 has offset 1).

The definition of A266429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266429.P8553441658832143791

`∑[A081282(n+1)+n+2]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266429

/-- `∑[A081282(n+1)+n+2]+1` -/
def P8553441658832143791.Spec : Prop :=
  ∀ n, P8553441658832143791.a n = A266429 (n + 1)

theorem P8553441658832143791.correct : P8553441658832143791.Spec := by
  intro n
  simp only [A266429, Nat.add_sub_cancel]

end A266429

/-! ## A266429.P5947413660423786366

`A000217(n+2)+∑[A081282(n+1)]`
-/

namespace A266429.P5947413660423786366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266429.P5947413660423786366

namespace A266429

/-- `A000217(n+2)+∑[A081282(n+1)]` -/
def P5947413660423786366.Spec : Prop :=
  ∀ n, P5947413660423786366.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P6481714095774063755

`A161680(n+3)+∑[A081282(n+1)]`
-/

namespace A266429.P6481714095774063755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266429.P6481714095774063755

namespace A266429

/-- `A161680(n+3)+∑[A081282(n+1)]` -/
def P6481714095774063755.Spec : Prop :=
  ∀ n, P6481714095774063755.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P13944923359621392514

`A006522(n+4)+A000579(n+5)+A000579(n+5)`
-/

namespace A266429.P13944923359621392514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (n + 4) + (A000579 (n + 5) + A000579 (n + 5))

end

end A266429.P13944923359621392514

namespace A266429

/-- `A006522(n+4)+A000579(n+5)+A000579(n+5)` -/
def P13944923359621392514.Spec : Prop :=
  ∀ n, P13944923359621392514.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P1071168313244593353

`A000217(n+2)+A000579(n+4)+A000579(n+6)`
-/

namespace A266429.P1071168313244593353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + (A000579 (n + 4) + A000579 (n + 6))

end

end A266429.P1071168313244593353

namespace A266429

/-- `A000217(n+2)+A000579(n+4)+A000579(n+6)` -/
def P1071168313244593353.Spec : Prop :=
  ∀ n, P1071168313244593353.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P74159824098970379

`∑[∑[A081283(2*n+1)+1]+1]+1`
-/

namespace A266429.P74159824098970379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081283 (2 * n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266429.P74159824098970379

namespace A266429

/-- `∑[∑[A081283(2*n+1)+1]+1]+1` -/
def P74159824098970379.Spec : Prop :=
  ∀ n, P74159824098970379.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P836573821114715782

`A000217(n+2)+∑[A081284(2*n+1)]`
-/

namespace A266429.P836573821114715782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266429.P836573821114715782

namespace A266429

/-- `A000217(n+2)+∑[A081284(2*n+1)]` -/
def P836573821114715782.Spec : Prop :=
  ∀ n, P836573821114715782.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P14039937188367638828

`∑[∑[A087483(∑[n+1])]+1]+1`
-/

namespace A266429.P14039937188367638828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266429.P14039937188367638828

namespace A266429

/-- `∑[∑[A087483(∑[n+1])]+1]+1` -/
def P14039937188367638828.Spec : Prop :=
  ∀ n, P14039937188367638828.a n = A266429 (n + 1)

end A266429

/-! ## A266429.P4924420358299062308

`∑[∑[A032765(A000217(n+1))+1]+1]+1`
-/

namespace A266429.P4924420358299062308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A000217 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266429.P4924420358299062308

namespace A266429

/-- `∑[∑[A032765(A000217(n+1))+1]+1]+1` -/
def P4924420358299062308.Spec : Prop :=
  ∀ n, P4924420358299062308.a n = A266429 (n + 1)

end A266429

/-!
# A266430: Number of 4 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266430, there is no canonical definition to state claims against.
-/

/-! ## A266430.P4524261960796456727

`A266428(∑[n+3]+7)`
-/

namespace A266430.P4524261960796456727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266430.P4524261960796456727

/-!
# A266431: Number of 5Xn binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266431, there is no canonical definition to state claims against.
-/

/-! ## A266431.P2100390152025605792

`A266428(A167499(n+3))`
-/

namespace A266431.P2100390152025605792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A167499 (n + 3)).toNat

end

end A266431.P2100390152025605792

/-! ## A266431.P11472921188504274240

`A266428(A077169(n+5))`
-/

namespace A266431.P11472921188504274240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A077169 (n + 5)).toNat

end

end A266431.P11472921188504274240

/-! ## A266431.P16384621847066852342

`A266428(A155212(n)+13)`
-/

namespace A266431.P16384621847066852342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A155212 n + 13).toNat

end

end A266431.P16384621847066852342

/-! ## A266431.P13493390709988672313

`A266428(A056000(n)+15)`
-/

namespace A266431.P13493390709988672313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A056000 n + 15).toNat

end

end A266431.P13493390709988672313

/-! ## A266431.P2271109377146495999

`A266428(eq[7, A066657(n)])`
-/

namespace A266431.P2271109377146495999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266431.P2271109377146495999

/-!
# A266432: Number of 6Xn binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266432, there is no canonical definition to state claims against.
-/

/-! ## A266432.P17135282943827903969

`A266428(A166136(n+4))`
-/

namespace A266432.P17135282943827903969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A166136 (n + 4)).toNat

end

end A266432.P17135282943827903969

/-! ## A266432.P11220180588400322069

`A266428(A056115(n)+21)`
-/

namespace A266432.P11220180588400322069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A056115 n + 21).toNat

end

end A266432.P11220180588400322069

/-! ## A266432.P7947643677113576786

`A266428(Δ[A255994(n+2)])`
-/

namespace A266432.P7947643677113576786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (f1 (n + 1) - f1 n).toNat

end

end A266432.P7947643677113576786

/-! ## A266432.P15531402546864053721

`A266428(A167499(n+4)+1)`
-/

namespace A266432.P15531402546864053721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A167499 (n + 4) + 1).toNat

end

end A266432.P15531402546864053721

/-! ## A266432.P14907998758636773468

`A266428(A167487(n+4)-1)`
-/

namespace A266432.P14907998758636773468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A167487 (n + 4) - 1).toNat

end

end A266432.P14907998758636773468

/-!
# A266433: Number of 7Xn binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

The programs for A266433, there is no canonical definition to state claims against.
-/

/-! ## A266433.P15225243781096734964

`A266428(A167487(n+5))`
-/

namespace A266433.P15225243781096734964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A167487 (n + 5)).toNat

end

end A266433.P15225243781096734964

/-! ## A266433.P7404226523271682815

`A266428(eq[11, A066657(n)])`
-/

namespace A266433.P7404226523271682815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266433.P7404226523271682815

/-! ## A266433.P9685055637116464525

`A266428(A000124(n+6)+6)`
-/

namespace A266433.P9685055637116464525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A000124 (n + 6) + 6).toNat

end

end A266433.P9685055637116464525

/-! ## A266433.P12125083211098486837

`A266428(eq[8, A131818(n+1)])`
-/

namespace A266433.P12125083211098486837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266433.P12125083211098486837

/-! ## A266433.P6019319953011865862

`A266428(A000096(n+6)+1-n)`
-/

namespace A266433.P6019319953011865862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266428 (A000096 (n + 6) + 1 - (n : ℤ)).toNat

end

end A266433.P6019319953011865862

/-!
# A266434: Triangle read by rows giving successive states of cellular automaton generated by "Rule 23" initiated with a single ON (black) cell.

The programs for A266434, the canonical program `A266434.P13811266864474044459` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266434 has offset 0).

The definition of A266434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266434.P13811266864474044459

`(floor(sqrt(n))%2)^n`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266434

/-- `(floor(sqrt(n))%2)^n` -/
def P13811266864474044459.Spec : Prop :=
  ∀ n, (P13811266864474044459.a n : ℤ) = A266434 n

theorem P13811266864474044459.correct : P13811266864474044459.Spec := by
  intro n
  simp only [A266434]

end A266434

/-! ## A266434.P10052085951960788647

`and(1, floor(sqrt(n)))^n`
-/

namespace A266434.P10052085951960788647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt n) ^ n

end

end A266434.P10052085951960788647

namespace A266434

/-- `and(1, floor(sqrt(n)))^n` -/
def P10052085951960788647.Spec : Prop :=
  ∀ n, (P10052085951960788647.a n : ℤ) = A266434 n

theorem P10052085951960788647.correct : P10052085951960788647.Spec := by
  intro n
  simp only [A266434, Nat.add_sub_cancel, A266434.P10052085951960788647.a, A266434.P13811266864474044459.a, SequenceMachineLib.memo_apply]
  try simp

end A266434

/-! ## A266434.P2719170993494779989

`∏{p}[floor(sqrt(n)), #]%2`
-/

namespace A266434.P2719170993494779989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % 2

end

end A266434.P2719170993494779989

namespace A266434

/-- `∏{p}[floor(sqrt(n)), #]%2` -/
def P2719170993494779989.Spec : Prop :=
  ∀ n, (P2719170993494779989.a n : ℤ) = A266434 n

end A266434

/-! ## A266434.P5474798751605041445

`floor(sqrt(abs(1-n)+1))%2`
-/

namespace A266434.P5474798751605041445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (|1 - (n : ℤ)| + 1)) 2

end

end A266434.P5474798751605041445

namespace A266434

/-- `floor(sqrt(abs(1-n)+1))%2` -/
def P5474798751605041445.Spec : Prop :=
  ∀ n, P5474798751605041445.a n = A266434 n

end A266434

/-! ## A266434.P1305571321200688058

`(a(n-1)-char[n²])²` with `a(0)=1, a(1)=1`
-/

namespace A266434.P1305571321200688058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A266434.P1305571321200688058

namespace A266434

/-- `(a(n-1)-char[n²])²` -/
def P1305571321200688058.Spec : Prop :=
  ∀ n, P1305571321200688058.a n = A266434 n

end A266434

/-! ## A266434.P3404329214105580724

`A266300(abs(1-n))`
-/

namespace A266434.P3404329214105580724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266300 |1 - (n : ℤ)|.toNat

end

end A266434.P3404329214105580724

namespace A266434

/-- `A266300(abs(1-n))` -/
def P3404329214105580724.Spec : Prop :=
  ∀ n, P3404329214105580724.a n = A266434 n

end A266434

/-! ## A266434.P9742347370298183954

`log2(gcd(2, A325459(n)))`
-/

namespace A266434.P9742347370298183954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A325459 n) : ℝ)

end

end A266434.P9742347370298183954

namespace A266434

/-- `log2(gcd(2, A325459(n)))` -/
def P9742347370298183954.Spec : Prop :=
  ∀ n, P9742347370298183954.a n = (A266434 n : ℝ)

end A266434

/-! ## A266434.P6875201782261493108

`A039982(floor(sqrt(n))²)`
-/

namespace A266434.P6875201782261493108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (Nat.sqrt n ^ 2)

end

end A266434.P6875201782261493108

namespace A266434

/-- `A039982(floor(sqrt(n))²)` -/
def P6875201782261493108.Spec : Prop :=
  ∀ n, P6875201782261493108.a n = A266434 n

end A266434

/-! ## A266434.P16203777684814126764

`A073097(floor(sqrt(n)))²`
-/

namespace A266434.P16203777684814126764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (Nat.sqrt n) ^ 2

end

end A266434.P16203777684814126764

namespace A266434

/-- `A073097(floor(sqrt(n)))²` -/
def P16203777684814126764.Spec : Prop :=
  ∀ n, P16203777684814126764.a n = A266434 n

end A266434

/-! ## A266434.P12470112551772515058

`A163805(floor(sqrt(n)))²`
-/

namespace A266434.P12470112551772515058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.sqrt n) ^ 2

end

end A266434.P12470112551772515058

namespace A266434

/-- `A163805(floor(sqrt(n)))²` -/
def P12470112551772515058.Spec : Prop :=
  ∀ n, P12470112551772515058.a n = A266434 n

end A266434

/-! ## A266434.P1627599679570047169

`A263428(floor(sqrt(n))²)`
-/

namespace A266434.P1627599679570047169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263428 (Nat.sqrt n ^ 2)

end

end A266434.P1627599679570047169

namespace A266434

/-- `A263428(floor(sqrt(n))²)` -/
def P1627599679570047169.Spec : Prop :=
  ∀ n, P1627599679570047169.a n = A266434 n

end A266434

/-! ## A266434.P15732009322047239024

`A266155(floor(sqrt(n))²)`
-/

namespace A266434.P15732009322047239024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266155 (Nat.sqrt n ^ 2)

end

end A266434.P15732009322047239024

namespace A266434

/-- `A266155(floor(sqrt(n))²)` -/
def P15732009322047239024.Spec : Prop :=
  ∀ n, P15732009322047239024.a n = A266434 n

end A266434

/-! ## A266434.P1103331167009622659

`A266216(floor(sqrt(n))²)`
-/

namespace A266434.P1103331167009622659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (Nat.sqrt n ^ 2)

end

end A266434.P1103331167009622659

namespace A266434

/-- `A266216(floor(sqrt(n))²)` -/
def P1103331167009622659.Spec : Prop :=
  ∀ n, P1103331167009622659.a n = A266434 n

end A266434

/-! ## A266434.P14192385182694412136

`A267015(floor(sqrt(n))²)`
-/

namespace A266434.P14192385182694412136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267015 (Nat.sqrt n ^ 2)

end

end A266434.P14192385182694412136

namespace A266434

/-- `A267015(floor(sqrt(n))²)` -/
def P14192385182694412136.Spec : Prop :=
  ∀ n, P14192385182694412136.a n = A266434 n

end A266434

/-! ## A266434.P916120925233715897

`∑[A258998(n)]^n`
-/

namespace A266434.P916120925233715897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A266434.P916120925233715897

namespace A266434

/-- `∑[A258998(n)]^n` -/
def P916120925233715897.Spec : Prop :=
  ∀ n, P916120925233715897.a n = A266434 n

end A266434

/-! ## A266434.P2069320220258554571

`A135528(ceil(sqrt(n+1)))`
-/

namespace A266434.P2069320220258554571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 ⌈Real.sqrt (n + 1 : ℝ)⌉.toNat

end

end A266434.P2069320220258554571

namespace A266434

/-- `A135528(ceil(sqrt(n+1)))` -/
def P2069320220258554571.Spec : Prop :=
  ∀ n, P2069320220258554571.a n = A266434 n

end A266434

/-! ## A266434.P14727052420745750821

`A266591(ceil(sqrt(n+1)))`
-/

namespace A266434.P14727052420745750821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 ⌈Real.sqrt (n + 1 : ℝ)⌉.toNat

end

end A266434.P14727052420745750821

namespace A266434

/-- `A266591(ceil(sqrt(n+1)))` -/
def P14727052420745750821.Spec : Prop :=
  ∀ n, P14727052420745750821.a n = A266434 n

end A266434

/-! ## A266434.P6146310740678385382

`2-A040001(floor(sqrt(n)))`
-/

namespace A266434.P6146310740678385382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 (Nat.sqrt n)

end

end A266434.P6146310740678385382

namespace A266434

/-- `2-A040001(floor(sqrt(n)))` -/
def P6146310740678385382.Spec : Prop :=
  ∀ n, P6146310740678385382.a n = A266434 n

end A266434

/-! ## A266434.P13538424480172446123

`(Δ[A329972(n)]^n)²`
-/

namespace A266434.P13538424480172446123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ n) ^ 2

end

end A266434.P13538424480172446123

namespace A266434

/-- `(Δ[A329972(n)]^n)²` -/
def P13538424480172446123.Spec : Prop :=
  ∀ n, P13538424480172446123.a n = A266434 n

end A266434

/-! ## A266434.P17855976492303436162

`A267034((n+1)%(2*n+1))`
-/

namespace A266434.P17855976492303436162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 ((n + 1) % (2 * n + 1))

end

end A266434.P17855976492303436162

namespace A266434

/-- `A267034((n+1)%(2*n+1))` -/
def P17855976492303436162.Spec : Prop :=
  ∀ n, P17855976492303436162.a n = A266434 n

end A266434

/-!
# A266435: Binary representation of the n-th iteration of the "Rule 23" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266435, there is no canonical definition to state claims against.
-/

/-! ## A266435.P12847163643913816101

`A266217(n)+char[1]`
-/

namespace A266435.P12847163643913816101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266217 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266435.P12847163643913816101

/-! ## A266435.P17910108680895364442

`A282411(record[abs(or(2, n-1))])`
-/

namespace A266435.P17910108680895364442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282411 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A266435.P17910108680895364442

/-! ## A266435.P9906053570539887782

`A287468(comp[2*(n+1)]+comp[or(2, n)-1])`
-/

namespace A266435.P9906053570539887782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

end

end A266435.P9906053570539887782

/-! ## A266435.P12671759932097026314

`A002276(A266437(n))/2`
-/

namespace A266435.P12671759932097026314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 (A266437 n).toNat : ℚ) / 2

end

end A266435.P12671759932097026314

/-! ## A266435.P1200420940991759911

`A282411(A093178(n)+n)`
-/

namespace A266435.P1200420940991759911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282411 (A093178 n + (n : ℤ)).toNat

end

end A266435.P1200420940991759911

/-! ## A266435.P5602077550938270916

`or(A266217(n), A266379(n))`
-/

namespace A266435.P5602077550938270916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266217 n) (A266379 n)

end

end A266435.P5602077550938270916

/-! ## A266435.P16095057625932534297

`or(char[A000225(n)], A266217(n))`
-/

namespace A266435.P16095057625932534297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266217 n)

end

end A266435.P16095057625932534297

/-! ## A266435.P6388296903796700489

`or(char[A241888(n)], A266217(n))`
-/

namespace A266435.P6388296903796700489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241888 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266217 n)

end

end A266435.P6388296903796700489

/-! ## A266435.P7100421064505662936

`or(char[A266380(n)], A266217(n))`
-/

namespace A266435.P7100421064505662936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A266217 n)

end

end A266435.P7100421064505662936

/-! ## A266435.P9125453412206426462

`A002275((2*n+1)*A135528(n+1))`
-/

namespace A266435.P9125453412206426462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ((2 * n + 1 : ℤ) * A135528 (n + 1)).toNat

end

end A266435.P9125453412206426462

/-!
# A266436: Decimal representation of the n-th iteration of the "Rule 23" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266436, the canonical program `A266436.P15470136924961579453` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266436 has offset 0).

The definition of A266436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266436.P15470136924961579453

`17*a(n-2)-16*a(n-4)` with `a(0)=1, a(1)=7, a(2)=0, a(3)=127, a(4)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266436

/-- `17*a(n-2)-16*a(n-4)` -/
def P15470136924961579453.Spec : Prop :=
  ∀ n, P15470136924961579453.a n = A266436 n

theorem P15470136924961579453.correct : P15470136924961579453.Spec := by
  intro n
  simp only [A266436]

end A266436

/-! ## A266436.P15999349907695410249

`A266218(n)+char[1]`
-/

namespace A266436.P15999349907695410249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266218 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266436.P15999349907695410249

namespace A266436

/-- `A266218(n)+char[1]` -/
def P15999349907695410249.Spec : Prop :=
  ∀ n, P15999349907695410249.a n = A266436 n

end A266436

/-! ## A266436.P5285357074680266114

`2^A266437(n)-1`
-/

namespace A266436.P5285357074680266114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A266437 n : ℤ) - 1

end

end A266436.P5285357074680266114

namespace A266436

/-- `2^A266437(n)-1` -/
def P5285357074680266114.Spec : Prop :=
  ∀ n, P5285357074680266114.a n = (A266436 n : ℚ)

end A266436

/-! ## A266436.P5285760454708582003

`A266324(n)+2*char[1]`
-/

namespace A266436.P5285760454708582003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266324 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A266436.P5285760454708582003

namespace A266436

/-- `A266324(n)+2*char[1]` -/
def P5285760454708582003.Spec : Prop :=
  ∀ n, P5285760454708582003.a n = A266436 n

end A266436

/-! ## A266436.P7131287722370801879

`A282413(record[abs(or(2, n-1))])`
-/

namespace A266436.P7131287722370801879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A266436.P7131287722370801879

namespace A266436

/-- `A282413(record[abs(or(2, n-1))])` -/
def P7131287722370801879.Spec : Prop :=
  ∀ n, P7131287722370801879.a n = A266436 n

end A266436

/-! ## A266436.P11740384375166435218

`A000225(A266437(n))`
-/

namespace A266436.P11740384375166435218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A266437 n).toNat

end

end A266436.P11740384375166435218

namespace A266436

/-- `A000225(A266437(n))` -/
def P11740384375166435218.Spec : Prop :=
  ∀ n, P11740384375166435218.a n = A266436 n

end A266436

/-! ## A266436.P5480105349611078521

`A282413(A053438(n))`
-/

namespace A266436.P5480105349611078521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 (A053438 n).toNat

end

end A266436.P5480105349611078521

namespace A266436

/-- `A282413(A053438(n))` -/
def P5480105349611078521.Spec : Prop :=
  ∀ n, P5480105349611078521.a n = A266436 n

end A266436

/-! ## A266436.P1535476403371974373

`A282413(A267352(n))`
-/

namespace A266436.P1535476403371974373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 (A267352 n).toNat

end

end A266436.P1535476403371974373

namespace A266436

/-- `A282413(A267352(n))` -/
def P1535476403371974373.Spec : Prop :=
  ∀ n, P1535476403371974373.a n = A266436 n

end A266436

/-! ## A266436.P930834365253418372

`A282413(A043547(n+1))`
-/

namespace A266436.P930834365253418372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 (A043547 (n + 1)).toNat

end

end A266436.P930834365253418372

namespace A266436

/-- `A282413(A043547(n+1))` -/
def P930834365253418372.Spec : Prop :=
  ∀ n, P930834365253418372.a n = A266436 n

end A266436

/-! ## A266436.P9970679947014220420

`A282413(A047404(n+1))`
-/

namespace A266436.P9970679947014220420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282413 (A047404 (n + 1)).toNat

end

end A266436.P9970679947014220420

namespace A266436

/-- `A282413(A047404(n+1))` -/
def P9970679947014220420.Spec : Prop :=
  ∀ n, P9970679947014220420.a n = A266436 n

end A266436

/-! ## A266436.P7896433241509819599

`A286773(A266664(n+1))`
-/

namespace A266436.P7896433241509819599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286773 (A266664 (n + 1)).toNat

end

end A266436.P7896433241509819599

namespace A266436

/-- `A286773(A266664(n+1))` -/
def P7896433241509819599.Spec : Prop :=
  ∀ n, P7896433241509819599.a n = A266436 n

end A266436

/-! ## A266436.P12067700588738928575

`A266302(n)+A062157(n)`
-/

namespace A266436.P12067700588738928575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266302 n + A062157 n

end

end A266436.P12067700588738928575

namespace A266436

/-- `A266302(n)+A062157(n)` -/
def P12067700588738928575.Spec : Prop :=
  ∀ n, P12067700588738928575.a n = A266436 n

end A266436

/-! ## A266436.P9964412080350106740

`or(A266218(n), A266324(n))`
-/

namespace A266436.P9964412080350106740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266218 n) (A266324 n)

end

end A266436.P9964412080350106740

namespace A266436

/-- `or(A266218(n), A266324(n))` -/
def P9964412080350106740.Spec : Prop :=
  ∀ n, P9964412080350106740.a n = A266436 n

end A266436

/-! ## A266436.P13523459782356195767

`or(A266218(n), A266437(n))`
-/

namespace A266436.P13523459782356195767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266218 n) (A266437 n)

end

end A266436.P13523459782356195767

namespace A266436

/-- `or(A266218(n), A266437(n))` -/
def P13523459782356195767.Spec : Prop :=
  ∀ n, P13523459782356195767.a n = A266436 n

end A266436

/-! ## A266436.P4712665699972773792

`or(A266324(n), A266380(n))`
-/

namespace A266436.P4712665699972773792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266324 n) (A266380 n)

end

end A266436.P4712665699972773792

namespace A266436

/-- `or(A266324(n), A266380(n))` -/
def P4712665699972773792.Spec : Prop :=
  ∀ n, P4712665699972773792.a n = A266436 n

end A266436

/-! ## A266436.P15874739356989041454

`xor(A057427(n), A266302(n))`
-/

namespace A266436.P15874739356989041454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A266302 n)

end

end A266436.P15874739356989041454

namespace A266436

/-- `xor(A057427(n), A266302(n))` -/
def P15874739356989041454.Spec : Prop :=
  ∀ n, P15874739356989041454.a n = A266436 n

end A266436

/-! ## A266436.P7623274262741561309

`xor(A063524(n), A266218(n))`
-/

namespace A266436.P7623274262741561309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A266218 n)

end

end A266436.P7623274262741561309

namespace A266436

/-- `xor(A063524(n), A266218(n))` -/
def P7623274262741561309.Spec : Prop :=
  ∀ n, P7623274262741561309.a n = A266436 n

end A266436

/-! ## A266436.P5390673372470609289

`xor(A131572(n), A266607(n))`
-/

namespace A266436.P5390673372470609289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n) (A266607 n)

end

end A266436.P5390673372470609289

namespace A266436

/-- `xor(A131572(n), A266607(n))` -/
def P5390673372470609289.Spec : Prop :=
  ∀ n, P5390673372470609289.a n = A266436 n

end A266436

/-! ## A266436.P12161967093989451995

`xor(A155559(n), A266668(n))`
-/

namespace A266436.P12161967093989451995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A155559 n) (A266668 n)

end

end A266436.P12161967093989451995

namespace A266436

/-- `xor(A155559(n), A266668(n))` -/
def P12161967093989451995.Spec : Prop :=
  ∀ n, P12161967093989451995.a n = A266436 n

end A266436

/-! ## A266436.P17321278194684462607

`or(Δ[A052992(n)], A266380(n))`
-/

namespace A266436.P17321278194684462607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A266380 n)

end

end A266436.P17321278194684462607

namespace A266436

/-- `or(Δ[A052992(n)], A266380(n))` -/
def P17321278194684462607.Spec : Prop :=
  ∀ n, P17321278194684462607.a n = A266436 n

end A266436

/-!
# A266437: Number of ON (black) cells in the n-th iteration of the "Rule 23" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266437, the canonical program `A266437.P4904505592277439191` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266437 has offset 0).

The definition of A266437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266437.P4904505592277439191

`C(lcm(2, n)+1, 2*n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266437

/-- `C(lcm(2, n)+1, 2*n)` -/
def P4904505592277439191.Spec : Prop :=
  ∀ n, (P4904505592277439191.a n : ℤ) = A266437 n

theorem P4904505592277439191.correct : P4904505592277439191.Spec := by
  intro n
  simp only [A266437]

end A266437

/-! ## A266437.P12968830190380618790

`(n%2)^n*Δ[n²]`
-/

namespace A266437.P12968830190380618790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A266437.P12968830190380618790

namespace A266437

/-- `(n%2)^n*Δ[n²]` -/
def P12968830190380618790.Spec : Prop :=
  ∀ n, P12968830190380618790.a n = A266437 n

end A266437

/-! ## A266437.P4080860592786526770

`xor(2, a(n-2)+2)` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A266437.P4080860592786526770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  Nat.xor 2 (a (n - 2) + 2)

end

end A266437.P4080860592786526770

namespace A266437

/-- `xor(2, a(n-2)+2)` -/
def P4080860592786526770.Spec : Prop :=
  ∀ n, (P4080860592786526770.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P4614141061724146224

`(2*n+1)*and(1, n)^n`
-/

namespace A266437.P4614141061724146224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land 1 n ^ n

end

end A266437.P4614141061724146224

namespace A266437

/-- `(2*n+1)*and(1, n)^n` -/
def P4614141061724146224.Spec : Prop :=
  ∀ n, (P4614141061724146224.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P457823316635740858

`(2*n+1)*∏{d}[n, #%2]`
-/

namespace A266437.P457823316635740858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∏ d ∈ Nat.divisors (f1 n), d % 2)

end

end A266437.P457823316635740858

namespace A266437

/-- `(2*n+1)*∏{d}[n, #%2]` -/
def P457823316635740858.Spec : Prop :=
  ∀ n, (P457823316635740858.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P11784286778464921078

`(2*n+1)*∏{p}[n, #]%2`
-/

namespace A266437.P11784286778464921078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((∏ p ∈ Nat.primeFactors (f1 n), p) % 2)

end

end A266437.P11784286778464921078

namespace A266437

/-- `(2*n+1)*∏{p}[n, #]%2` -/
def P11784286778464921078.Spec : Prop :=
  ∀ n, (P11784286778464921078.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P18035869263398697370

`(2*n+1)*and(1, ∏{p}[n, #])`
-/

namespace A266437.P18035869263398697370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A266437.P18035869263398697370

namespace A266437

/-- `(2*n+1)*and(1, ∏{p}[n, #])` -/
def P18035869263398697370.Spec : Prop :=
  ∀ n, (P18035869263398697370.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P5375936903888099224

`C(Δ[n²], 2*n*gcd(2, n))`
-/

namespace A266437.P5375936903888099224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (2 * n * Nat.gcd 2 n)

end

end A266437.P5375936903888099224

namespace A266437

/-- `C(Δ[n²], 2*n*gcd(2, n))` -/
def P5375936903888099224.Spec : Prop :=
  ∀ n, (P5375936903888099224.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P17838402339370031588

`C(and(1, n)*Δ[n²], 2*n)`
-/

namespace A266437.P17838402339370031588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.land 1 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat (2 * n)

end

end A266437.P17838402339370031588

namespace A266437

/-- `C(and(1, n)*Δ[n²], 2*n)` -/
def P17838402339370031588.Spec : Prop :=
  ∀ n, (P17838402339370031588.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P5090579189493909995

`C(n, a(n-1))*Δ[n²]` with `a(0)=1`
-/

namespace A266437.P5090579189493909995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose n (a (n - 1)).toNat : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A266437.P5090579189493909995

namespace A266437

/-- `C(n, a(n-1))*Δ[n²]` -/
def P5090579189493909995.Spec : Prop :=
  ∀ n, P5090579189493909995.a n = A266437 n

end A266437

/-! ## A266437.P13999717138858122874

`xor(1, 2*n-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A266437.P13999717138858122874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266437.P13999717138858122874

namespace A266437

/-- `xor(1, 2*n-a(n-1))` -/
def P13999717138858122874.Spec : Prop :=
  ∀ n, P13999717138858122874.a n = A266437 n

end A266437

/-! ## A266437.P5176919138994166548

`lcm(2*n+1, floor((1-ϕ)^n))`
-/

namespace A266437.P5176919138994166548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ⌊(1 - Real.goldenRatio) ^ n⌋

end

end A266437.P5176919138994166548

namespace A266437

/-- `lcm(2*n+1, floor((1-ϕ)^n))` -/
def P5176919138994166548.Spec : Prop :=
  ∀ n, (P5176919138994166548.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P13196497432700154005

`floor((2*n+1)^-(-1)^n)`
-/

namespace A266437.P13196497432700154005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) ^ (-((-1) ^ n) : ℤ)⌋

end

end A266437.P13196497432700154005

namespace A266437

/-- `floor((2*n+1)^-(-1)^n)` -/
def P13196497432700154005.Spec : Prop :=
  ∀ n, P13196497432700154005.a n = A266437 n

end A266437

/-! ## A266437.P9022781597909600337

`round((2*n+1)^(n-xor(1, n)))`
-/

namespace A266437.P9022781597909600337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - (Nat.xor 1 n : ℤ) : ℤ))

end

end A266437.P9022781597909600337

namespace A266437

/-- `round((2*n+1)^(n-xor(1, n)))` -/
def P9022781597909600337.Spec : Prop :=
  ∀ n, P9022781597909600337.a n = A266437 n

end A266437

/-! ## A266437.P10184579697006565542

`C(Δ[n²], a(n-1)²+1)` with `a(0)=1`
-/

namespace A266437.P10184579697006565542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (a (n - 1) ^ 2 + 1)

end

end A266437.P10184579697006565542

namespace A266437

/-- `C(Δ[n²], a(n-1)²+1)` -/
def P10184579697006565542.Spec : Prop :=
  ∀ n, (P10184579697006565542.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P10413519742709296339

`C(a(n-2)+4, 2*n)` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A266437.P10413519742709296339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  Nat.choose (a (n - 2) + 4) (2 * n)

end

end A266437.P10413519742709296339

namespace A266437

/-- `C(a(n-2)+4, 2*n)` -/
def P10413519742709296339.Spec : Prop :=
  ∀ n, (P10413519742709296339.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P8156606072220574250

`xor(1, (2*or(1, n))%(2*n+1))`
-/

namespace A266437.P8156606072220574250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * Nat.lor 1 n % (2 * n + 1))

end

end A266437.P8156606072220574250

namespace A266437

/-- `xor(1, (2*or(1, n))%(2*n+1))` -/
def P8156606072220574250.Spec : Prop :=
  ∀ n, (P8156606072220574250.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P5645697778970178438

`C(2*n*and(1, n)+1, 2*n)`
-/

namespace A266437.P5645697778970178438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n * Nat.land 1 n + 1) (2 * n)

end

end A266437.P5645697778970178438

namespace A266437

/-- `C(2*n*and(1, n)+1, 2*n)` -/
def P5645697778970178438.Spec : Prop :=
  ∀ n, (P5645697778970178438.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P8453914868477819428

`C(2*n+1, xor(n, n-1)^10)`
-/

namespace A266437.P8453914868477819428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (Int.xor (n : ℤ) ((n : ℤ) - 1) ^ 10).toNat

end

end A266437.P8453914868477819428

namespace A266437

/-- `C(2*n+1, xor(n, n-1)^10)` -/
def P8453914868477819428.Spec : Prop :=
  ∀ n, (P8453914868477819428.a n : ℤ) = A266437 n

end A266437

/-! ## A266437.P17608203104267988112

`gcd(2*(n+1), a(n-1)%n)-1` with `a(0)=1`
-/

namespace A266437.P17608203104267988112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd (2 * (n + 1) : ℤ) (Int.tmod (a (n - 1)) (n : ℤ)) : ℤ) - 1

end

end A266437.P17608203104267988112

namespace A266437

/-- `gcd(2*(n+1), a(n-1)%n)-1` -/
def P17608203104267988112.Spec : Prop :=
  ∀ n, P17608203104267988112.a n = A266437 n

end A266437

/-!
# A266438: Total number of ON (black) cells after n iterations of the "Rule 23" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266438, the canonical program `A266438.P5369348760809155207` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266438 has offset 0).

The definition of A266438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266438.P5369348760809155207

`C(or(1, n+1), 2)+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266438

/-- `C(or(1, n+1), 2)+1` -/
def P5369348760809155207.Spec : Prop :=
  ∀ n, (P5369348760809155207.a n : ℤ) = A266438 n

theorem P5369348760809155207.correct : P5369348760809155207.Spec := by
  intro n
  simp only [A266438]

end A266438

/-! ## A266438.P11927172681647670829

`∑[C(lcm(2, n)+1, 2*n)]`
-/

namespace A266438.P11927172681647670829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lcm 2 n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266438.P11927172681647670829

namespace A266438

/-- `∑[C(lcm(2, n)+1, 2*n)]` -/
def P11927172681647670829.Spec : Prop :=
  ∀ n, (P11927172681647670829.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P4577102639837533562

`∑[n]+(n+2)^(n%2)`
-/

namespace A266438.P4577102639837533562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ (n % 2)

end

end A266438.P4577102639837533562

namespace A266438

/-- `∑[n]+(n+2)^(n%2)` -/
def P4577102639837533562.Spec : Prop :=
  ∀ n, (P4577102639837533562.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P12975739140890291060

`∑[n]+(n+2)^and(1, n)`
-/

namespace A266438.P12975739140890291060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) ^ Nat.land 1 n

end

end A266438.P12975739140890291060

namespace A266438

/-- `∑[n]+(n+2)^and(1, n)` -/
def P12975739140890291060.Spec : Prop :=
  ∀ n, (P12975739140890291060.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P17596784795185281726

`∑[n]+C(n+2, and(1, n))`
-/

namespace A266438.P17596784795185281726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) (Nat.land 1 n)

end

end A266438.P17596784795185281726

namespace A266438

/-- `∑[n]+C(n+2, and(1, n))` -/
def P17596784795185281726.Spec : Prop :=
  ∀ n, (P17596784795185281726.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P1798280290703806495

`C(gcd(2, n+1)+n, 2)+1`
-/

namespace A266438.P1798280290703806495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 (n + 1) + n) 2 + 1

end

end A266438.P1798280290703806495

namespace A266438

/-- `C(gcd(2, n+1)+n, 2)+1` -/
def P1798280290703806495.Spec : Prop :=
  ∀ n, (P1798280290703806495.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P12867588176269053185

`C(and(1, n)+1+n, 2)+1`
-/

namespace A266438.P12867588176269053185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 n + 1 + n) 2 + 1

end

end A266438.P12867588176269053185

namespace A266438

/-- `C(and(1, n)+1+n, 2)+1` -/
def P12867588176269053185.Spec : Prop :=
  ∀ n, (P12867588176269053185.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P3462137356794276158

`∑[xor(2, a(n-2)+2)]` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A266438.P3462137356794276158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0] fun n f1 =>
  Nat.xor 2 (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266438.P3462137356794276158

namespace A266438

/-- `∑[xor(2, a(n-2)+2)]` -/
def P3462137356794276158.Spec : Prop :=
  ∀ n, (P3462137356794276158.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P14418420433934109860

`∑[(2*n+1)*and(1, n)]+1`
-/

namespace A266438.P14418420433934109860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266438.P14418420433934109860

namespace A266438

/-- `∑[(2*n+1)*and(1, n)]+1` -/
def P14418420433934109860.Spec : Prop :=
  ∀ n, (P14418420433934109860.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P12766148355538627053

`∑[n]+gcd(n+2, (n+1)%2)`
-/

namespace A266438.P12766148355538627053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd (n + 2) ((n + 1) % 2)

end

end A266438.P12766148355538627053

namespace A266438

/-- `∑[n]+gcd(n+2, (n+1)%2)` -/
def P12766148355538627053.Spec : Prop :=
  ∀ n, (P12766148355538627053.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P14235060924439293159

`∑[n+1]+(-n)^∑[(-1)^n]`
-/

namespace A266438.P14235060924439293159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (-(n : ℤ) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A266438.P14235060924439293159

namespace A266438

/-- `∑[n+1]+(-n)^∑[(-1)^n]` -/
def P14235060924439293159.Spec : Prop :=
  ∀ n, P14235060924439293159.a n = (A266438 n : ℚ)

end A266438

/-! ## A266438.P12690266646690982255

`∑[A266437(n)]`
-/

namespace A266438.P12690266646690982255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266438.P12690266646690982255

namespace A266438

/-- `∑[A266437(n)]` -/
def P12690266646690982255.Spec : Prop :=
  ∀ n, P12690266646690982255.a n = A266438 n

end A266438

/-! ## A266438.P14856328855051552539

`A084849(ceil(n/2))`
-/

namespace A266438.P14856328855051552539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 ⌈(n : ℚ) / 2⌉.toNat

end

end A266438.P14856328855051552539

namespace A266438

/-- `A084849(ceil(n/2))` -/
def P14856328855051552539.Spec : Prop :=
  ∀ n, P14856328855051552539.a n = A266438 n

end A266438

/-! ## A266438.P8474045278739436421

`∑[C(A059029(n), 2*n)]`
-/

namespace A266438.P8474045278739436421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059029 n).toNat (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266438.P8474045278739436421

namespace A266438

/-- `∑[C(A059029(n), 2*n)]` -/
def P8474045278739436421.Spec : Prop :=
  ∀ n, (P8474045278739436421.a n : ℤ) = A266438 n

end A266438

/-! ## A266438.P6519623339630362023

`(A081346(n+1)-n)/2`
-/

namespace A266438.P6519623339630362023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081346 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A266438.P6519623339630362023

namespace A266438

/-- `(A081346(n+1)-n)/2` -/
def P6519623339630362023.Spec : Prop :=
  ∀ n, P6519623339630362023.a n = (A266438 n : ℚ)

end A266438

/-! ## A266438.P5230026130320774112

`∑[A131055(n+1)²-n²]`
-/

namespace A266438.P5230026130320774112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1) ^ 2 - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266438.P5230026130320774112

namespace A266438

/-- `∑[A131055(n+1)²-n²]` -/
def P5230026130320774112.Spec : Prop :=
  ∀ n, P5230026130320774112.a n = A266438 n

end A266438

/-! ## A266438.P3558349555500994166

`A134869(A117569(n)²+n)`
-/

namespace A266438.P3558349555500994166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (A117569 n ^ 2 + (n : ℤ)).toNat

end

end A266438.P3558349555500994166

namespace A266438

/-- `A134869(A117569(n)²+n)` -/
def P3558349555500994166.Spec : Prop :=
  ∀ n, P3558349555500994166.a n = A266438 n

end A266438

/-! ## A266438.P16782081368958655674

`A134869(2-A040001(n)+n)`
-/

namespace A266438.P16782081368958655674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (2 - A040001 n + (n : ℤ)).toNat

end

end A266438.P16782081368958655674

namespace A266438

/-- `A134869(2-A040001(n)+n)` -/
def P16782081368958655674.Spec : Prop :=
  ∀ n, P16782081368958655674.a n = A266438 n

end A266438

/-! ## A266438.P10011943848292670571

`A131179(or(1, n+1))`
-/

namespace A266438.P10011943848292670571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 (Nat.lor 1 (n + 1))

end

end A266438.P10011943848292670571

namespace A266438

/-- `A131179(or(1, n+1))` -/
def P10011943848292670571.Spec : Prop :=
  ∀ n, P10011943848292670571.a n = A266438 n

end A266438

/-! ## A266438.P13151314587333032028

`A316671(or(1, n+1))`
-/

namespace A266438.P13151314587333032028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316671 (Nat.lor 1 (n + 1))

end

end A266438.P13151314587333032028

namespace A266438

/-- `A316671(or(1, n+1))` -/
def P13151314587333032028.Spec : Prop :=
  ∀ n, P13151314587333032028.a n = A266438 n

end A266438

/-!
# A266439: Number of OFF (white) cells in the n-th iteration of the "Rule 23" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266439, the canonical program `A266439.P17315973269589524614` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266439 has offset 0).

The definition of A266439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266439.P66619696182071183

`Δ[n²]*char[2*(n+1)]`
-/

namespace A266439.P66619696182071183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266439.P66619696182071183

namespace A266439

/-- `Δ[n²]*char[2*(n+1)]` -/
def P66619696182071183.Spec : Prop :=
  ∀ n, P66619696182071183.a n = A266439 n

end A266439

/-! ## A266439.P11047078255716724785

`ceil((n-1)%2/acot(2*n))`
-/

namespace A266439.P11047078255716724785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod ((n : ℤ) - 1) 2 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ)⌉

end

end A266439.P11047078255716724785

namespace A266439

/-- `ceil((n-1)%2/acot(2*n))` -/
def P11047078255716724785.Spec : Prop :=
  ∀ n, P11047078255716724785.a n = A266439 n

end A266439

/-! ## A266439.P15120407222455791890

`xor(a(n-1)+1, 2*n)` with `a(0)=0, a(1)=0`
-/

namespace A266439.P15120407222455791890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.xor (a (n - 1) + 1) (2 * n)

end

end A266439.P15120407222455791890

namespace A266439

/-- `xor(a(n-1)+1, 2*n)` -/
def P15120407222455791890.Spec : Prop :=
  ∀ n, (P15120407222455791890.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P5795362928008695377

`xor(1, 2*n-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A266439.P5795362928008695377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.xor 1 ((2 * n : ℤ) - a (n - 1))

end

end A266439.P5795362928008695377

namespace A266439

/-- `xor(1, 2*n-a(n-1))` -/
def P5795362928008695377.Spec : Prop :=
  ∀ n, P5795362928008695377.a n = A266439 n

end A266439

/-! ## A266439.P8892174885095446016

`∑{p}[n, (2*n+1)*floor(2/#)]`
-/

namespace A266439.P8892174885095446016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 * n + 1 : ℤ) * ⌊2 / (p : ℚ)⌋

end

end A266439.P8892174885095446016

namespace A266439

/-- `∑{p}[n, (2*n+1)*floor(2/#)]` -/
def P8892174885095446016.Spec : Prop :=
  ∀ n, P8892174885095446016.a n = A266439 n

end A266439

/-! ## A266439.P8884228998353985168

`C(a(n-2)+4, 2*n)` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A266439.P8884228998353985168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5] fun n a =>
  Nat.choose (a (n - 2) + 4) (2 * n)

end

end A266439.P8884228998353985168

namespace A266439

/-- `C(a(n-2)+4, 2*n)` -/
def P8884228998353985168.Spec : Prop :=
  ∀ n, (P8884228998353985168.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P10365117369079398436

`or(2*n, -a(n-1))+1` with `a(0)=0, a(1)=0`
-/

namespace A266439.P10365117369079398436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor (2 * n : ℤ) (-a (n - 1)) + 1

end

end A266439.P10365117369079398436

namespace A266439

/-- `or(2*n, -a(n-1))+1` -/
def P10365117369079398436.Spec : Prop :=
  ∀ n, P10365117369079398436.a n = A266439 n

end A266439

/-! ## A266439.P6216029479661853969

`lcm(n+1+n, C(2, a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A266439.P6216029479661853969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lcm (n + 1 + n) (Nat.choose 2 (a (n - 1)))

end

end A266439.P6216029479661853969

namespace A266439

/-- `lcm(n+1+n, C(2, a(n-1)))` -/
def P6216029479661853969.Spec : Prop :=
  ∀ n, (P6216029479661853969.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P18408375944837859379

`(2*n+1)%gcd(n+1, n%2)²`
-/

namespace A266439.P18408375944837859379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.gcd (n + 1) (n % 2) ^ 2

end

end A266439.P18408375944837859379

namespace A266439

/-- `(2*n+1)%gcd(n+1, n%2)²` -/
def P18408375944837859379.Spec : Prop :=
  ∀ n, (P18408375944837859379.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P14921326127828583641

`C(Δ[n²]-a(n-1), 2*n)` with `a(0)=0, a(1)=0`
-/

namespace A266439.P14921326127828583641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (a (n - 1) : ℤ)).toNat (2 * n)

end

end A266439.P14921326127828583641

namespace A266439

/-- `C(Δ[n²]-a(n-1), 2*n)` -/
def P14921326127828583641.Spec : Prop :=
  ∀ n, (P14921326127828583641.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P2435025008009816554

`Δ[floor((n+1)/a(n-1))]+n` with `a(0)=2, a(1)=2`
-/

namespace A266439.P2435025008009816554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A266439.P2435025008009816554

namespace A266439

/-- `Δ[floor((n+1)/a(n-1))]+n` -/
def P2435025008009816554.Spec : Prop :=
  ∀ n, P2435025008009816554.a n = A266439 n

end A266439

/-! ## A266439.P4284968826919417661

`a(n-2)+4*(n+1)%2` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A266439.P4284968826919417661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5] fun n a =>
  a (n - 2) + 4 * ((n + 1) % 2)

end

end A266439.P4284968826919417661

namespace A266439

/-- `a(n-2)+4*(n+1)%2` -/
def P4284968826919417661.Spec : Prop :=
  ∀ n, (P4284968826919417661.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P11214963840637418111

`C(2*n+1, 2*(lcm(2, 2-n)+2))`
-/

namespace A266439.P11214963840637418111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * (Int.lcm 2 (2 - (n : ℤ)) + 2))

end

end A266439.P11214963840637418111

namespace A266439

/-- `C(2*n+1, 2*(lcm(2, 2-n)+2))` -/
def P11214963840637418111.Spec : Prop :=
  ∀ n, (P11214963840637418111.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P16371104483508484468

`and(2*n+1, -(a(n-1)+3))` with `a(0)=0, a(1)=0`
-/

namespace A266439.P16371104483508484468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.land (2 * n + 1 : ℤ) (-(a (n - 1) + 3))

end

end A266439.P16371104483508484468

namespace A266439

/-- `and(2*n+1, -(a(n-1)+3))` -/
def P16371104483508484468.Spec : Prop :=
  ∀ n, P16371104483508484468.a n = A266439 n

end A266439

/-! ## A266439.P4542622203926299356

`1-floor(2*n/(a(n-1)-1))` with `a(0)=0, a(1)=0`
-/

namespace A266439.P4542622203926299356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ⌊2 * ((n : ℚ) / (a (n - 1) - 1 : ℚ))⌋

end

end A266439.P4542622203926299356

namespace A266439

/-- `1-floor(2*n/(a(n-1)-1))` -/
def P4542622203926299356.Spec : Prop :=
  ∀ n, P4542622203926299356.a n = A266439 n

end A266439

/-! ## A266439.P13079823265189628137

`floor(2/(1/n-a(n-1)))+1` with `a(0)=0, a(1)=0`
-/

namespace A266439.P13079823265189628137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊2 / (1 / (n : ℚ) - (a (n - 1) : ℚ))⌋ + 1

end

end A266439.P13079823265189628137

namespace A266439

/-- `floor(2/(1/n-a(n-1)))+1` -/
def P13079823265189628137.Spec : Prop :=
  ∀ n, P13079823265189628137.a n = A266439 n

end A266439

/-! ## A266439.P3864820755998126641

`floor((2*n+1)^(1-a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A266439.P3864820755998126641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(2 * n + 1 : ℚ) ^ (1 - a (n - 1) : ℤ)⌋

end

end A266439.P3864820755998126641

namespace A266439

/-- `floor((2*n+1)^(1-a(n-1)))` -/
def P3864820755998126641.Spec : Prop :=
  ∀ n, P3864820755998126641.a n = A266439 n

end A266439

/-! ## A266439.P10401498093821090407

`round((2*n+1)^(1-a(n-1)))` with `a(0)=0, a(1)=0`
-/

namespace A266439.P10401498093821090407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (1 - a (n - 1) : ℤ))

end

end A266439.P10401498093821090407

namespace A266439

/-- `round((2*n+1)^(1-a(n-1)))` -/
def P10401498093821090407.Spec : Prop :=
  ∀ n, P10401498093821090407.a n = A266439 n

end A266439

/-! ## A266439.P2682927222791033877

`(a(n-1)+n+1)²%n²` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A266439.P2682927222791033877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5] fun n a =>
  (a (n - 1) + (n + 1)) ^ 2 % n ^ 2

end

end A266439.P2682927222791033877

namespace A266439

/-- `(a(n-1)+n+1)²%n²` -/
def P2682927222791033877.Spec : Prop :=
  ∀ n, (P2682927222791033877.a n : ℤ) = A266439 n

end A266439

/-! ## A266439.P17315973269589524614

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=0, a(4)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266439

/-- `2*a(n-2)-a(n-4)` -/
def P17315973269589524614.Spec : Prop :=
  ∀ n, P17315973269589524614.a n = A266439 n

theorem P17315973269589524614.correct : P17315973269589524614.Spec := by
  intro n
  simp only [A266439]

end A266439

/-!
# A266440: Total number of OFF (white) cells after n iterations of the "Rule 23" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266440, the canonical program `A266440.P12139178651152981324` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266440 has offset 0).

The definition of A266440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266440.P12139178651152981324

`C(or(1, n)+1, 2)-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266440

/-- `C(or(1, n)+1, 2)-1` -/
def P12139178651152981324.Spec : Prop :=
  ∀ n, P12139178651152981324.a n = A266440 n

theorem P12139178651152981324.correct : P12139178651152981324.Spec := by
  intro n
  simp only [A266440]

end A266440

/-! ## A266440.P11768423413087943155

`C(gcd(2, n)+n, 2)-1`
-/

namespace A266440.P11768423413087943155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.gcd 2 n + n) 2 : ℤ) - 1

end

end A266440.P11768423413087943155

namespace A266440

/-- `C(gcd(2, n)+n, 2)-1` -/
def P11768423413087943155.Spec : Prop :=
  ∀ n, P11768423413087943155.a n = A266440 n

end A266440

/-! ## A266440.P11278441713872602866

`∑[n]+or(n, -(n%2))`
-/

namespace A266440.P11278441713872602866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.lor (n : ℤ) (-((n % 2 : ℕ) : ℤ))

end

end A266440.P11278441713872602866

namespace A266440

/-- `∑[n]+or(n, -(n%2))` -/
def P11278441713872602866.Spec : Prop :=
  ∀ n, P11278441713872602866.a n = A266440 n

end A266440

/-! ## A266440.P14186511099703087353

`C(and(n+2, -2), 2)-1`
-/

namespace A266440.P14186511099703087353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (n + 2 : ℤ) (-2)).toNat 2 : ℤ) - 1

end

end A266440.P14186511099703087353

namespace A266440

/-- `C(and(n+2, -2), 2)-1` -/
def P14186511099703087353.Spec : Prop :=
  ∀ n, P14186511099703087353.a n = A266440 n

end A266440

/-! ## A266440.P8176679950270192961

`or(1, n+2)*floor(n/2)`
-/

namespace A266440.P8176679950270192961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 2) : ℤ) * ⌊(n : ℚ) / 2⌋

end

end A266440.P8176679950270192961

namespace A266440

/-- `or(1, n+2)*floor(n/2)` -/
def P8176679950270192961.Spec : Prop :=
  ∀ n, P8176679950270192961.a n = A266440 n

end A266440

/-! ## A266440.P15068504209087412915

`C(record[xor(2, n)]-n, 2)-1`
-/

namespace A266440.P15068504209087412915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1

end

end A266440.P15068504209087412915

namespace A266440

/-- `C(record[xor(2, n)]-n, 2)-1` -/
def P15068504209087412915.Spec : Prop :=
  ∀ n, P15068504209087412915.a n = A266440 n

end A266440

/-! ## A266440.P953896559281104965

`∑[n]-(-n)^∑[(-1)^n]`
-/

namespace A266440.P953896559281104965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (-(n : ℤ) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A266440.P953896559281104965

namespace A266440

/-- `∑[n]-(-n)^∑[(-1)^n]` -/
def P953896559281104965.Spec : Prop :=
  ∀ n, P953896559281104965.a n = (A266440 n : ℚ)

end A266440

/-! ## A266440.P14656738452354142126

`∑[(2*n+1)*Δ[n-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A266440.P14656738452354142126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266440.P14656738452354142126

namespace A266440

/-- `∑[(2*n+1)*Δ[n-a(n-1)]]` -/
def P14656738452354142126.Spec : Prop :=
  ∀ n, P14656738452354142126.a n = A266440 n

end A266440

/-! ## A266440.P14940283447413865025

`floor(∑[n-1]+(2*n+1)/gcd(n+1, n-1))`
-/

namespace A266440.P14940283447413865025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (2 * n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ)⌋

end

end A266440.P14940283447413865025

namespace A266440

/-- `floor(∑[n-1]+(2*n+1)/gcd(n+1, n-1))` -/
def P14940283447413865025.Spec : Prop :=
  ∀ n, P14940283447413865025.a n = A266440 n

end A266440

/-! ## A266440.P14646302345673403978

`∑[A266439(n)]`
-/

namespace A266440.P14646302345673403978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266440.P14646302345673403978

namespace A266440

/-- `∑[A266439(n)]` -/
def P14646302345673403978.Spec : Prop :=
  ∀ n, P14646302345673403978.a n = A266440 n

end A266440

/-! ## A266440.P4171986047025751209

`A125577(or(1, n))`
-/

namespace A266440.P4171986047025751209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125577 (Nat.lor 1 n)

end

end A266440.P4171986047025751209

namespace A266440

/-- `A125577(or(1, n))` -/
def P4171986047025751209.Spec : Prop :=
  ∀ n, P4171986047025751209.a n = A266440 n

end A266440

/-! ## A266440.P16418670579368913677

`A105638(or(1, n+2))`
-/

namespace A266440.P16418670579368913677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (Nat.lor 1 (n + 2))

end

end A266440.P16418670579368913677

namespace A266440

/-- `A105638(or(1, n+2))` -/
def P16418670579368913677.Spec : Prop :=
  ∀ n, P16418670579368913677.a n = A266440 n

end A266440

/-! ## A266440.P2241209548940356156

`A176222(or(1, n+2))`
-/

namespace A266440.P2241209548940356156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176222 (Nat.lor 1 (n + 2))

end

end A266440.P2241209548940356156

namespace A266440

/-- `A176222(or(1, n+2))` -/
def P2241209548940356156.Spec : Prop :=
  ∀ n, P2241209548940356156.a n = A266440 n

end A266440

/-! ## A266440.P6039145622062724493

`A359329(or(1, n+2))`
-/

namespace A266440.P6039145622062724493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359329 (Nat.lor 1 (n + 2))

end

end A266440.P6039145622062724493

namespace A266440

/-- `A359329(or(1, n+2))` -/
def P6039145622062724493.Spec : Prop :=
  ∀ n, P6039145622062724493.a n = A266440 n

end A266440

/-! ## A266440.P5776668812396055391

`A367204(or(1, n+2))`
-/

namespace A266440.P5776668812396055391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367204 (Nat.lor 1 (n + 2))

end

end A266440.P5776668812396055391

namespace A266440

/-- `A367204(or(1, n+2))` -/
def P5776668812396055391.Spec : Prop :=
  ∀ n, P5776668812396055391.a n = A266440 n

end A266440

/-! ## A266440.P6035349556495488089

`A014106(A004526(n))`
-/

namespace A266440.P6035349556495488089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 (A004526 n).toNat

end

end A266440.P6035349556495488089

namespace A266440

/-- `A014106(A004526(n))` -/
def P6035349556495488089.Spec : Prop :=
  ∀ n, P6035349556495488089.a n = A266440 n

end A266440

/-! ## A266440.P12797191857007526530

`A000096(A052928(n))`
-/

namespace A266440.P12797191857007526530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A052928 n).toNat

end

end A266440.P12797191857007526530

namespace A266440

/-- `A000096(A052928(n))` -/
def P12797191857007526530.Spec : Prop :=
  ∀ n, P12797191857007526530.a n = A266440 n

end A266440

/-! ## A266440.P12550979480706698660

`A125577(A109613(n))`
-/

namespace A266440.P12550979480706698660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125577 (A109613 n).toNat

end

end A266440.P12550979480706698660

namespace A266440

/-- `A125577(A109613(n))` -/
def P12550979480706698660.Spec : Prop :=
  ∀ n, P12550979480706698660.a n = A266440 n

end A266440

/-! ## A266440.P3732840774462265846

`A000096(A109613(n)-1)`
-/

namespace A266440.P3732840774462265846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A109613 n - 1).toNat

end

end A266440.P3732840774462265846

namespace A266440

/-- `A000096(A109613(n)-1)` -/
def P3732840774462265846.Spec : Prop :=
  ∀ n, P3732840774462265846.a n = A266440 n

end A266440

/-! ## A266440.P9970261792357533730

`A000096(2*A004526(n))`
-/

namespace A266440.P9970261792357533730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (2 * A004526 n).toNat

end

end A266440.P9970261792357533730

namespace A266440

/-- `A000096(2*A004526(n))` -/
def P9970261792357533730.Spec : Prop :=
  ∀ n, P9970261792357533730.a n = A266440 n

end A266440

/-!
# A266441: Triangle read by rows giving successive states of cellular automaton generated by "Rule 25" initiated with a single ON (black) cell.

The programs for A266441, there is no canonical definition to state claims against.
-/

/-! ## A266441.P5943719310852783256

`A266837(A020703(n+1)-1)`
-/

namespace A266441.P5943719310852783256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266837 (A020703 (n + 1) - 1).toNat

end

end A266441.P5943719310852783256

/-! ## A266441.P8619946593928612979

`A266837(A020703(n+2)%A314853(n))`
-/

namespace A266441.P8619946593928612979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266837 (Int.tmod (A020703 (n + 2)) (A314853 n)).toNat

end

end A266441.P8619946593928612979

/-! ## A266441.P14017836237200938341

`A321692(A225252(n+2)%A056588(3*n+1))`
-/

namespace A266441.P14017836237200938341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321692 (Int.tmod (A225252 (n + 2)) (A056588 (3 * n + 1))).toNat

end

end A266441.P14017836237200938341

/-! ## A266441.P18228712570531974823

`A089219(n+3)%A000034(A299458(2*n+3))`
-/

namespace A266441.P18228712570531974823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089219 (n + 3)) (A000034 (A299458 (2 * n + 3)).toNat)

end

end A266441.P18228712570531974823

/-! ## A266441.P15889119089414978468

`A189081(record[xor(5, A131108(n))]+1)`
-/

namespace A266441.P15889119089414978468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A131108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A266441.P15889119089414978468

/-!
# A266442: Binary representation of the n-th iteration of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266442, there is no canonical definition to state claims against.
-/

/-! ## A266442.P12748279009707296738

`A007088(A266443(n))`
-/

namespace A266442.P12748279009707296738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266443 n).toNat

end

end A266442.P12748279009707296738

/-! ## A266442.P15765613491594236456

`A185544(2*A266443(n))`
-/

namespace A266442.P15765613491594236456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266443 n).toNat

end

end A266442.P15765613491594236456

/-!
# A266443: Decimal representation of the n-th iteration of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266443, there is no canonical definition to state claims against.
-/

/-! ## A266443.P2737388578137620881

`A274046(A219970(n))`
-/

namespace A266443.P2737388578137620881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274046 (A219970 n).toNat

end

end A266443.P2737388578137620881

/-!
# A266444: Middle column of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266444, there is no canonical definition to state claims against.
-/

/-! ## A266444.P7532724088220232136

`A266446(n)%2`
-/

namespace A266444.P7532724088220232136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266446 n) 2

end

end A266444.P7532724088220232136

/-!
# A266445: Binary representation of the middle column of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266445, there is no canonical definition to state claims against.
-/

/-! ## A266445.P10902396967437611987

`A266444(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A266445.P10902396967437611987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266444 n + 10 * a (n - 1)

end

end A266445.P10902396967437611987

/-! ## A266445.P17790237971932469938

`A007088(A266446(n))`
-/

namespace A266445.P17790237971932469938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266446 n).toNat

end

end A266445.P17790237971932469938

/-! ## A266445.P18141852829908851622

`A185544(2*A266446(n))`
-/

namespace A266445.P18141852829908851622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A266446 n).toNat

end

end A266445.P18141852829908851622

/-! ## A266445.P12879332718019153130

`A185544(A266446(n)+A266446(n))`
-/

namespace A266445.P12879332718019153130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A266446 n + A266446 n).toNat

end

end A266445.P12879332718019153130

/-! ## A266445.P8024102682670131477

`A267044(n)+A068932(A260811(n))`
-/

namespace A266445.P8024102682670131477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267044 n + A068932 (A260811 n).toNat

end

end A266445.P8024102682670131477

/-!
# A266446: Decimal representation of the middle column of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266446, there is no canonical definition to state claims against.
-/

/-! ## A266446.P9941565810032872585

`A266444(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A266446.P9941565810032872585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266444 n + 2 * a (n - 1)

end

end A266446.P9941565810032872585

/-! ## A266446.P7095580792007296245

`or(A005843(a(n-1)), A266444(n))` with `a(0)=1`
-/

namespace A266446.P7095580792007296245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A005843 (a (n - 1)).toNat) (A266444 n)

end

end A266446.P7095580792007296245

/-! ## A266446.P13560675501840103901

`A266444(n)+A005408(a(n-1))-1` with `a(0)=1`
-/

namespace A266446.P13560675501840103901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266444 n + A005408 (a (n - 1)).toNat - 1

end

end A266446.P13560675501840103901

/-! ## A266446.P15991275715872292229

`A335133(A266897(n))`
-/

namespace A266446.P15991275715872292229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A266897 n).toNat

end

end A266446.P15991275715872292229

/-! ## A266446.P2291536929151262243

`A292592(A267539(n+1))`
-/

namespace A266446.P2291536929151262243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292592 (A267539 (n + 1)).toNat

end

end A266446.P2291536929151262243

/-!
# A266447: Number of ON (black) cells in the n-th iteration of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266447, the canonical program `A266447.P3869370425111093158` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266447 has offset 0).

The definition of A266447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266447.P3869370425111093158

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=4, a(7)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266447

/-- `2*a(n-2)-a(n-4)` -/
def P3869370425111093158.Spec : Prop :=
  ∀ n, P3869370425111093158.a n = A266447 n

theorem P3869370425111093158.correct : P3869370425111093158.Spec := by
  intro n
  simp only [A266447]

end A266447

/-! ## A266447.P2021451827627328454

`A266249(n)+n%2`
-/

namespace A266447.P2021451827627328454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n + ((n % 2 : ℕ) : ℤ)

end

end A266447.P2021451827627328454

namespace A266447

/-- `A266249(n)+n%2` -/
def P2021451827627328454.Spec : Prop :=
  ∀ n, P2021451827627328454.a n = A266447 n

end A266447

/-! ## A266447.P11437775890099835594

`Δ[n²]-A266449(n)`
-/

namespace A266447.P11437775890099835594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266449 n

end

end A266447.P11437775890099835594

namespace A266447

/-- `Δ[n²]-A266449(n)` -/
def P11437775890099835594.Spec : Prop :=
  ∀ n, P11437775890099835594.a n = A266447 n

end A266447

/-! ## A266447.P10493648342263698965

`A266249(n)+A000035(n)`
-/

namespace A266447.P10493648342263698965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n + A000035 n

end

end A266447.P10493648342263698965

namespace A266447

/-- `A266249(n)+A000035(n)` -/
def P10493648342263698965.Spec : Prop :=
  ∀ n, P10493648342263698965.a n = A266447 n

end A266447

/-! ## A266447.P7356146715209580861

`A266249(n)+char[A005408(n)]`
-/

namespace A266447.P7356146715209580861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A266447.P7356146715209580861

namespace A266447

/-- `A266249(n)+char[A005408(n)]` -/
def P7356146715209580861.Spec : Prop :=
  ∀ n, P7356146715209580861.a n = A266447 n

end A266447

/-! ## A266447.P9433871295809486869

`A266249(A109613(n)-n)+A266249(n)`
-/

namespace A266447.P9433871295809486869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 (A109613 n - (n : ℤ)).toNat + A266249 n

end

end A266447.P9433871295809486869

namespace A266447

/-- `A266249(A109613(n)-n)+A266249(n)` -/
def P9433871295809486869.Spec : Prop :=
  ∀ n, P9433871295809486869.a n = A266447 n

end A266447

/-! ## A266447.P17526077680320068404

`A267261(n+1)-and(1, n)`
-/

namespace A266447.P17526077680320068404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 (n + 1) - (Nat.land 1 n : ℤ)

end

end A266447.P17526077680320068404

namespace A266447

/-- `A267261(n+1)-and(1, n)` -/
def P17526077680320068404.Spec : Prop :=
  ∀ n, P17526077680320068404.a n = A266447 n

end A266447

/-! ## A266447.P740859772139894773

`A266249(n)+A135416(A267354(n+2))`
-/

namespace A266447.P740859772139894773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n + A135416 (A267354 (n + 2)).toNat

end

end A266447.P740859772139894773

namespace A266447

/-- `A266249(n)+A135416(A267354(n+2))` -/
def P740859772139894773.Spec : Prop :=
  ∀ n, P740859772139894773.a n = A266447 n

end A266447

/-! ## A266447.P556566565195748864

`A176895(2*n)+A266249(n)-1`
-/

namespace A266447.P556566565195748864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n) + (A266249 n - 1)

end

end A266447.P556566565195748864

namespace A266447

/-- `A176895(2*n)+A266249(n)-1` -/
def P556566565195748864.Spec : Prop :=
  ∀ n, P556566565195748864.a n = A266447 n

end A266447

/-! ## A266447.P15356779139619009940

`A266249(n)+A266220(A078112(2*n+3))`
-/

namespace A266447.P15356779139619009940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n + A266220 (A078112 (2 * n + 3)).toNat

end

end A266447.P15356779139619009940

namespace A266447

/-- `A266249(n)+A266220(A078112(2*n+3))` -/
def P15356779139619009940.Spec : Prop :=
  ∀ n, P15356779139619009940.a n = A266447 n

end A266447

/-!
# A266448: Total number of ON (black) cells after n iterations of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266448, the canonical program `A266448.P9173841286566602149` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266448 has offset 0).

The definition of A266448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266448.P9173841286566602149

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=11, a(5)=17, a(6)=21, a(7)=31`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266448

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9173841286566602149.Spec : Prop :=
  ∀ n, P9173841286566602149.a n = A266448 n

theorem P9173841286566602149.correct : P9173841286566602149.Spec := by
  intro n
  simp only [A266448]

end A266448

/-! ## A266448.P13178211294492021585

`∑[A266447(n)]`
-/

namespace A266448.P13178211294492021585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266448.P13178211294492021585

namespace A266448

/-- `∑[A266447(n)]` -/
def P13178211294492021585.Spec : Prop :=
  ∀ n, P13178211294492021585.a n = A266448 n

end A266448

/-! ## A266448.P17617940393120973926

`(n+1)²-A266450(n)`
-/

namespace A266448.P17617940393120973926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266450 n

end

end A266448.P17617940393120973926

namespace A266448

/-- `(n+1)²-A266450(n)` -/
def P17617940393120973926.Spec : Prop :=
  ∀ n, P17617940393120973926.a n = A266448 n

end A266448

/-! ## A266448.P283839033160892336

`ceil(A266250(n)+n/2)`
-/

namespace A266448.P283839033160892336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266250 n : ℚ) + (n : ℚ) / 2⌉

end

end A266448.P283839033160892336

namespace A266448

/-- `ceil(A266250(n)+n/2)` -/
def P283839033160892336.Spec : Prop :=
  ∀ n, P283839033160892336.a n = A266448 n

end A266448

/-! ## A266448.P822387790412190197

`∑[Δ[n²]-A266449(n)]`
-/

namespace A266448.P822387790412190197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266448.P822387790412190197

namespace A266448

/-- `∑[Δ[n²]-A266449(n)]` -/
def P822387790412190197.Spec : Prop :=
  ∀ n, P822387790412190197.a n = A266448 n

end A266448

/-! ## A266448.P7554744102782331973

`A266250(n)+A110654(n)`
-/

namespace A266448.P7554744102782331973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266250 n + A110654 n

end

end A266448.P7554744102782331973

namespace A266448

/-- `A266250(n)+A110654(n)` -/
def P7554744102782331973.Spec : Prop :=
  ∀ n, P7554744102782331973.a n = A266448 n

end A266448

/-! ## A266448.P7885535880083166855

`∑[A266249(n)+A000035(n)]`
-/

namespace A266448.P7885535880083166855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266448.P7885535880083166855

namespace A266448

/-- `∑[A266249(n)+A000035(n)]` -/
def P7885535880083166855.Spec : Prop :=
  ∀ n, P7885535880083166855.a n = A266448 n

end A266448

/-! ## A266448.P11188348025469974205

`A005563(n)+1-A266450(n)`
-/

namespace A266448.P11188348025469974205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A266450 n)

end

end A266448.P11188348025469974205

namespace A266448

/-- `A005563(n)+1-A266450(n)` -/
def P11188348025469974205.Spec : Prop :=
  ∀ n, P11188348025469974205.a n = A266448 n

end A266448

/-! ## A266448.P18123988562209624928

`∑[A267261(n+1)-n%2]`
-/

namespace A266448.P18123988562209624928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267261 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266448.P18123988562209624928

namespace A266448

/-- `∑[A267261(n+1)-n%2]` -/
def P18123988562209624928.Spec : Prop :=
  ∀ n, P18123988562209624928.a n = A266448 n

end A266448

/-! ## A266448.P2348143998094154312

`A267262(n+1)-A004526(n+1)`
-/

namespace A266448.P2348143998094154312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267262 (n + 1) - A004526 (n + 1)

end

end A266448.P2348143998094154312

namespace A266448

/-- `A267262(n+1)-A004526(n+1)` -/
def P2348143998094154312.Spec : Prop :=
  ∀ n, P2348143998094154312.a n = A266448 n

end A266448

/-! ## A266448.P11571500597670484658

`A266795(n+1)-2*A004526(n+1)`
-/

namespace A266448.P11571500597670484658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266795 (n + 1) - 2 * A004526 (n + 1)

end

end A266448.P11571500597670484658

namespace A266448

/-- `A266795(n+1)-2*A004526(n+1)` -/
def P11571500597670484658.Spec : Prop :=
  ∀ n, P11571500597670484658.a n = A266448 n

end A266448

/-! ## A266448.P16898729942841034537

`A002265(2*(n+1))+∑[A266249(n)]`
-/

namespace A266448.P16898729942841034537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266448.P16898729942841034537

namespace A266448

/-- `A002265(2*(n+1))+∑[A266249(n)]` -/
def P16898729942841034537.Spec : Prop :=
  ∀ n, P16898729942841034537.a n = A266448 n

end A266448

/-! ## A266448.P8690285856955206108

`A122797(A266795(n+1))`
-/

namespace A266448.P8690285856955206108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A266795 (n + 1)).toNat

end

end A266448.P8690285856955206108

namespace A266448

/-- `A122797(A266795(n+1))` -/
def P8690285856955206108.Spec : Prop :=
  ∀ n, P8690285856955206108.a n = A266448 n

end A266448

/-!
# A266449: Number of OFF (white) cells in the n-th iteration of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266449, the canonical program `A266449.P12123112946289747129` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266449 has offset 0).

The definition of A266449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266449.P12123112946289747129

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=5, a(6)=9, a(7)=5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266449

/-- `2*a(n-2)-a(n-4)` -/
def P12123112946289747129.Spec : Prop :=
  ∀ n, P12123112946289747129.a n = A266449 n

theorem P12123112946289747129.correct : P12123112946289747129.Spec := by
  intro n
  simp only [A266449]

end A266449

/-! ## A266449.P8254489613155492125

`Δ[n²]-A266447(n)`
-/

namespace A266449.P8254489613155492125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A266447 n

end

end A266449.P8254489613155492125

namespace A266449

/-- `Δ[n²]-A266447(n)` -/
def P8254489613155492125.Spec : Prop :=
  ∀ n, P8254489613155492125.a n = A266449 n

end A266449

/-! ## A266449.P12726426912236130651

`A266251(n)-A000035(n)`
-/

namespace A266449.P12726426912236130651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266251 n - A000035 n

end

end A266449.P12726426912236130651

namespace A266449

/-- `A266251(n)-A000035(n)` -/
def P12726426912236130651.Spec : Prop :=
  ∀ n, P12726426912236130651.a n = A266449 n

end A266449

/-! ## A266449.P3577460007440531905

`A042963(n+1)-A266249(n)`
-/

namespace A266449.P3577460007440531905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A266249 n

end

end A266449.P3577460007440531905

namespace A266449

/-- `A042963(n+1)-A266249(n)` -/
def P3577460007440531905.Spec : Prop :=
  ∀ n, P3577460007440531905.a n = A266449 n

end A266449

/-! ## A266449.P9152338475831221994

`A109613(n)+n-A266249(n)`
-/

namespace A266449.P9152338475831221994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + ((n : ℤ) - A266249 n)

end

end A266449.P9152338475831221994

namespace A266449

/-- `A109613(n)+n-A266249(n)` -/
def P9152338475831221994.Spec : Prop :=
  ∀ n, P9152338475831221994.a n = A266449 n

end A266449

/-! ## A266449.P12777505271313586786

`(2*n+1-A266447(n))%(1-A016885(n))²`
-/

namespace A266449.P12777505271313586786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - A266447 n) ((1 - A016885 n) ^ 2)

end

end A266449.P12777505271313586786

namespace A266449

/-- `(2*n+1-A266447(n))%(1-A016885(n))²` -/
def P12777505271313586786.Spec : Prop :=
  ∀ n, P12777505271313586786.a n = A266449 n

end A266449

/-! ## A266449.P5957077284703773857

`A005408(n)-(A266249(n)+char[A005408(n)])`
-/

namespace A266449.P5957077284703773857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A266249 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A266449.P5957077284703773857

namespace A266449

/-- `A005408(n)-(A266249(n)+char[A005408(n)])` -/
def P5957077284703773857.Spec : Prop :=
  ∀ n, P5957077284703773857.a n = A266449 n

end A266449

/-! ## A266449.P6997693242079230059

`A267259(n+1)-(2-n%2)`
-/

namespace A266449.P6997693242079230059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 (n + 1) - (2 - ((n % 2 : ℕ) : ℤ))

end

end A266449.P6997693242079230059

namespace A266449

/-- `A267259(n+1)-(2-n%2)` -/
def P6997693242079230059.Spec : Prop :=
  ∀ n, P6997693242079230059.a n = A266449 n

end A266449

/-! ## A266449.P3881688436249258458

`∑[4-a(n-1)]-A267261(n+1)` with `a(0)=1`
-/

namespace A266449.P3881688436249258458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A267261 (n + 1)

end

end A266449.P3881688436249258458

namespace A266449

/-- `∑[4-a(n-1)]-A267261(n+1)` -/
def P3881688436249258458.Spec : Prop :=
  ∀ n, P3881688436249258458.a n = A266449 n

end A266449

/-!
# A266450: Total number of OFF (white) cells after n iterations of the "Rule 25" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266450, the canonical program `A266450.P4003547509036957532` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266450 has offset 0).

The definition of A266450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266450.P4003547509036957532

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9, a(4)=14, a(5)=19, a(6)=28, a(7)=33`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266450

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4003547509036957532.Spec : Prop :=
  ∀ n, P4003547509036957532.a n = A266450 n

theorem P4003547509036957532.correct : P4003547509036957532.Spec := by
  intro n
  simp only [A266450]

end A266450

/-! ## A266450.P8864136421733166635

`∑[A266449(n)]`
-/

namespace A266450.P8864136421733166635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266450.P8864136421733166635

namespace A266450

/-- `∑[A266449(n)]` -/
def P8864136421733166635.Spec : Prop :=
  ∀ n, P8864136421733166635.a n = A266450 n

end A266450

/-! ## A266450.P11411634732234750315

`(n+1)²-A266448(n)`
-/

namespace A266450.P11411634732234750315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A266448 n

end

end A266450.P11411634732234750315

namespace A266450

/-- `(n+1)²-A266448(n)` -/
def P11411634732234750315.Spec : Prop :=
  ∀ n, P11411634732234750315.a n = A266450 n

end A266450

/-! ## A266450.P312188202783934398

`∑[Δ[n²]-A266447(n)]`
-/

namespace A266450.P312188202783934398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A266447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266450.P312188202783934398

namespace A266450

/-- `∑[Δ[n²]-A266447(n)]` -/
def P312188202783934398.Spec : Prop :=
  ∀ n, P312188202783934398.a n = A266450 n

end A266450

/-! ## A266450.P11189002520094311446

`∑[char[2*n]+2*n]-A266250(n)`
-/

namespace A266450.P11189002520094311446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A266250 n

end

end A266450.P11189002520094311446

namespace A266450

/-- `∑[char[2*n]+2*n]-A266250(n)` -/
def P11189002520094311446.Spec : Prop :=
  ∀ n, P11189002520094311446.a n = A266450 n

end A266450

/-! ## A266450.P4728013388074537148

`A266252(n)-A110654(n)`
-/

namespace A266450.P4728013388074537148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266252 n - A110654 n

end

end A266450.P4728013388074537148

namespace A266450

/-- `A266252(n)-A110654(n)` -/
def P4728013388074537148.Spec : Prop :=
  ∀ n, P4728013388074537148.a n = A266450 n

end A266450

/-! ## A266450.P18230111738022481334

`∑[A266251(n)-A000035(n)]`
-/

namespace A266450.P18230111738022481334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266251 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266450.P18230111738022481334

namespace A266450

/-- `∑[A266251(n)-A000035(n)]` -/
def P18230111738022481334.Spec : Prop :=
  ∀ n, P18230111738022481334.a n = A266450 n

end A266450

/-! ## A266450.P10783639839423519805

`A000217(n+1)-∑[A266447(n)-n]`
-/

namespace A266450.P10783639839423519805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266447 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266450.P10783639839423519805

namespace A266450

/-- `A000217(n+1)-∑[A266447(n)-n]` -/
def P10783639839423519805.Spec : Prop :=
  ∀ n, P10783639839423519805.a n = A266450 n

end A266450

/-! ## A266450.P2855049898390214159

`∑[A267259(n+1)-(2-n%2)]`
-/

namespace A266450.P2855049898390214159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267259 (n + 1) - (2 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266450.P2855049898390214159

namespace A266450

/-- `∑[A267259(n+1)-(2-n%2)]` -/
def P2855049898390214159.Spec : Prop :=
  ∀ n, P2855049898390214159.a n = A266450 n

end A266450

/-! ## A266450.P9112947138191794870

`A266793(n+1)-(A004525(2*n+1)+2)`
-/

namespace A266450.P9112947138191794870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266793 (n + 1) - (A004525 (2 * n + 1) + 2)

end

end A266450.P9112947138191794870

namespace A266450

/-- `A266793(n+1)-(A004525(2*n+1)+2)` -/
def P9112947138191794870.Spec : Prop :=
  ∀ n, P9112947138191794870.a n = A266450 n

end A266450

/-!
# A266451: Semiprimes that are the sum of six consecutive semiprimes.

The programs for A266451, the canonical program `A266451.P15700298305381084490` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266451 has offset 1).

The definition of A266451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266451.P15700298305381084490

`∩[A001358(n+1), A281824(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A266451

/-- `∩[A001358(n+1), A281824(n+1)]` -/
def P15700298305381084490.Spec : Prop :=
  ∀ n, (P15700298305381084490.a n : ℤ) = A266451 (n + 1)

theorem P15700298305381084490.correct : P15700298305381084490.Spec := by
  intro n
  simp only [A266451, Nat.add_sub_cancel]

end A266451

/-! ## A266451.P13594524777118855204

`filter[A281824(n+1), A064911(#)]`
-/

namespace A266451.P13594524777118855204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A266451.P13594524777118855204

namespace A266451

/-- `filter[A281824(n+1), A064911(#)]` -/
def P13594524777118855204.Spec : Prop :=
  ∀ n, P13594524777118855204.a n = A266451 (n + 1)

end A266451

/-! ## A266451.P8720849232496685133

`∩[A176540(n+1), A281824(n+1)]`
-/

namespace A266451.P8720849232496685133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266451.P8720849232496685133

namespace A266451

/-- `∩[A176540(n+1), A281824(n+1)]` -/
def P8720849232496685133.Spec : Prop :=
  ∀ n, (P8720849232496685133.a n : ℤ) = A266451 (n + 1)

end A266451

/-! ## A266451.P2442368583572884788

`∩[A088707(n+1)-1, A281824(n+1)]`
-/

namespace A266451.P2442368583572884788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266451.P2442368583572884788

namespace A266451

/-- `∩[A088707(n+1)-1, A281824(n+1)]` -/
def P2442368583572884788.Spec : Prop :=
  ∀ n, (P2442368583572884788.a n : ℤ) = A266451 (n + 1)

end A266451

/-! ## A266451.P714076081487019922

`∩[A281824(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A266451.P714076081487019922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266451.P714076081487019922

namespace A266451

/-- `∩[A281824(n+1), A065516(n)+a(n-1)]` -/
def P714076081487019922.Spec : Prop :=
  ∀ n, (P714076081487019922.a n : ℤ) = A266451 (n + 1)

end A266451

/-! ## A266451.P13118198782018277570

`∩[A281824(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A266451.P13118198782018277570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266451.P13118198782018277570

namespace A266451

/-- `∩[A281824(n+1), A118717(n)-a(n-1)]` -/
def P13118198782018277570.Spec : Prop :=
  ∀ n, (P13118198782018277570.a n : ℤ) = A266451 (n + 1)

end A266451

/-! ## A266451.P13401877172927794217

`∩[A281824(n+1), A323644(n+1)]`
-/

namespace A266451.P13401877172927794217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266451.P13401877172927794217

namespace A266451

/-- `∩[A281824(n+1), A323644(n+1)]` -/
def P13401877172927794217.Spec : Prop :=
  ∀ n, (P13401877172927794217.a n : ℤ) = A266451 (n + 1)

end A266451

/-! ## A266451.P9213329293614686472

`∩[A281824(n+1), A346041(n+1)]`
-/

namespace A266451.P9213329293614686472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266451.P9213329293614686472

namespace A266451

/-- `∩[A281824(n+1), A346041(n+1)]` -/
def P9213329293614686472.Spec : Prop :=
  ∀ n, (P9213329293614686472.a n : ℤ) = A266451 (n + 1)

end A266451

/-! ## A266451.P1556207019010073375

`record[A179312(A281824(n+1))]`
-/

namespace A266451.P1556207019010073375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A281824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266451.P1556207019010073375

namespace A266451

/-- `record[A179312(A281824(n+1))]` -/
def P1556207019010073375.Spec : Prop :=
  ∀ n, P1556207019010073375.a n = A266451 (n + 1)

end A266451

/-!
# A266452: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north neighbor modulo n and the upper left element equal to 0.

The programs for A266452, there is no canonical definition to state claims against.
-/

/-! ## A266452.P1732738736628367145

`A266455(∑[n+2])`
-/

namespace A266452.P1732738736628367145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266452.P1732738736628367145

/-! ## A266452.P10709530052263860681

`A266681(∑[n+2])`
-/

namespace A266452.P10709530052263860681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266452.P10709530052263860681

/-!
# A266453: Number of nX3 arrays containing 3 copies of 0..n-1 with no element 1 greater than its north neighbor modulo n and the upper left element equal to 0.

The programs for A266453, there is no canonical definition to state claims against.
-/

/-! ## A266453.P17841583983478055973

`A266455(∑[n+3]+1)`
-/

namespace A266453.P17841583983478055973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266453.P17841583983478055973

/-! ## A266453.P18238934659259538961

`A266455(Δ[A008778(n)])+A025469(n)`
-/

namespace A266453.P18238934659259538961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (f1 (n + 1) - f1 n).toNat + A025469 n

end

end A266453.P18238934659259538961

/-!
# A266454: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no element 1 greater than its north neighbor modulo n and the upper left element equal to 0.

The programs for A266454, there is no canonical definition to state claims against.
-/

/-! ## A266454.P2076684563490076570

`A266455(∑[n+3]+n+4)`
-/

namespace A266454.P2076684563490076570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A266454.P2076684563490076570

/-! ## A266454.P5309924490817877952

`record[A266455(A027379(n))]`
-/

namespace A266454.P5309924490817877952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266454.P5309924490817877952

/-!
# A266456: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north neighbor modulo 3 and the upper left element equal to 0.

The programs for A266456, there is no canonical definition to state claims against.
-/

/-! ## A266456.P13801207803458407265

`A267751(∑[n+2]+4)`
-/

namespace A266456.P13801207803458407265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266456.P13801207803458407265

/-! ## A266456.P8062847159695025821

`or(1, A267751(A167614(n+1)))`
-/

namespace A266456.P8062847159695025821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267751 (A167614 (n + 1)).toNat)

end

end A266456.P8062847159695025821

/-! ## A266456.P14605338071563368587

`record[gcd(A247288(n), A267751(n+1))]`
-/

namespace A266456.P14605338071563368587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247288 n) (A267751 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266456.P14605338071563368587

/-! ## A266456.P13037798647079720923

`record[gcd(A267751(n+3), A325872(n))]`
-/

namespace A266456.P13037798647079720923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267751 (n + 3)) (A325872 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266456.P13037798647079720923

/-! ## A266456.P6748461129060407496

`record[gcd(A267724(n+1), A267751(n+4))]`
-/

namespace A266456.P6748461129060407496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267724 (n + 1)) (A267751 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266456.P6748461129060407496

/-!
# A266457: Number of 4Xn arrays containing n copies of 0..4-1 with no element 1 greater than its north neighbor modulo 4 and the upper left element equal to 0.

The programs for A266457, there is no canonical definition to state claims against.
-/

/-! ## A266457.P2180156341105776689

`A266455(∑[n+3]+7)`
-/

namespace A266457.P2180156341105776689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266457.P2180156341105776689

/-!
# A266458: Number of 5Xn arrays containing n copies of 0..5-1 with no element 1 greater than its north neighbor modulo 5 and the upper left element equal to 0.

The programs for A266458, there is no canonical definition to state claims against.
-/

/-! ## A266458.P12592711706730160307

`A266455(A167499(n+3))`
-/

namespace A266458.P12592711706730160307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (A167499 (n + 3)).toNat

end

end A266458.P12592711706730160307

/-! ## A266458.P12797832018375208354

`A266455(A155212(n)+13)`
-/

namespace A266458.P12797832018375208354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266455 (A155212 n + 13).toNat

end

end A266458.P12797832018375208354

/-!
# A266459: Triangle read by rows giving successive states of cellular automaton generated by "Rule 27" initiated with a single ON (black) cell.

The programs for A266459, the canonical program `A266459.P6080024581555885958` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266459 has offset 0).

The definition of A266459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266459.P6080024581555885958

`A267001(A020703(n+1)-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A266459

/-- `A267001(A020703(n+1)-1)` -/
def P6080024581555885958.Spec : Prop :=
  ∀ n, P6080024581555885958.a n = A266459 n

theorem P6080024581555885958.correct : P6080024581555885958.Spec := by
  intro n
  simp only [A266459]

end A266459

/-! ## A266459.P2091883952906051111

`1-A266605(A049068(n+1))`
-/

namespace A266459.P2091883952906051111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266605 (A049068 (n + 1)).toNat

end

end A266459.P2091883952906051111

namespace A266459

/-- `1-A266605(A049068(n+1))` -/
def P2091883952906051111.Spec : Prop :=
  ∀ n, P2091883952906051111.a n = A266459 n

end A266459

/-! ## A266459.P7144445812038837885

`A266605(A266605(n)+n-A266716(n))`
-/

namespace A266459.P7144445812038837885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 (A266605 n + ((n : ℤ) - A266716 n)).toNat

end

end A266459.P7144445812038837885

namespace A266459

/-- `A266605(A266605(n)+n-A266716(n))` -/
def P7144445812038837885.Spec : Prop :=
  ∀ n, P7144445812038837885.a n = A266459 n

end A266459

/-! ## A266459.P2571961742638165795

`A266605(n-(A266716(n)-A266605(n)))`
-/

namespace A266459.P2571961742638165795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266605 ((n : ℤ) - (A266716 n - A266605 n)).toNat

end

end A266459.P2571961742638165795

namespace A266459

/-- `A266605(n-(A266716(n)-A266605(n)))` -/
def P2571961742638165795.Spec : Prop :=
  ∀ n, P2571961742638165795.a n = A266459 n

end A266459

/-! ## A266459.P5681683774950355044

`A021913(A266974(4*n+2)+A003056(2*(n+1)))`
-/

namespace A266459.P5681683774950355044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A266974 (4 * n + 2) + A003056 (2 * (n + 1))).toNat

end

end A266459.P5681683774950355044

namespace A266459

/-- `A021913(A266974(4*n+2)+A003056(2*(n+1)))` -/
def P5681683774950355044.Spec : Prop :=
  ∀ n, P5681683774950355044.a n = A266459 n

end A266459

/-! ## A266459.P11571197205041837817

`A011658(A272909(n+2))`
-/

namespace A266459.P11571197205041837817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A272909 (n + 2)).toNat

end

end A266459.P11571197205041837817

namespace A266459

/-- `A011658(A272909(n+2))` -/
def P11571197205041837817.Spec : Prop :=
  ∀ n, P11571197205041837817.a n = A266459 n

end A266459

/-!
# A266460: Binary representation of the n-th iteration of the "Rule 27" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266460, there is no canonical definition to state claims against.
-/

/-! ## A266460.P10812706535199563091

`A007088(A266461(n))`
-/

namespace A266460.P10812706535199563091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266461 n).toNat

end

end A266460.P10812706535199563091

/-! ## A266460.P12749590067797092339

`A007088(A266607(n)-Δ[2^floor(n/2)])`
-/

namespace A266460.P12749590067797092339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A266607 n : ℚ) - (f1 (n + 1) - f1 n))).toNat

end

end A266460.P12749590067797092339

/-! ## A266460.P11607909455856386994

`A007088(gcd(A077957(n), A266718(n)))`
-/

namespace A266460.P11607909455856386994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.gcd (A077957 n) (A266718 n))

end

end A266460.P11607909455856386994

/-! ## A266460.P18318054329266914159

`A007088(or(A016116(n), A266069(n)))`
-/

namespace A266460.P18318054329266914159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A016116 n) (A266069 n)).toNat

end

end A266460.P18318054329266914159

/-! ## A266460.P14090056950429992990

`A007088(or(A131572(n), A266069(n)))`
-/

namespace A266460.P14090056950429992990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A131572 n) (A266069 n)).toNat

end

end A266460.P14090056950429992990

/-!
# A266461: Decimal representation of the n-th iteration of the "Rule 27" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266461, the canonical program `A266461.P3076525258767983135` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266461 has offset 0).

The definition of A266461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266461.P11692932813909162090

`A266607(n)-Δ[2^floor(n/2)]`
-/

namespace A266461.P11692932813909162090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266607 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A266461.P11692932813909162090

namespace A266461

/-- `A266607(n)-Δ[2^floor(n/2)]` -/
def P11692932813909162090.Spec : Prop :=
  ∀ n, P11692932813909162090.a n = (A266461 n : ℚ)

end A266461

/-! ## A266461.P9727486095766786178

`gcd(A077957(n), A266718(n))`
-/

namespace A266461.P9727486095766786178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077957 n) (A266718 n)

end

end A266461.P9727486095766786178

namespace A266461

/-- `gcd(A077957(n), A266718(n))` -/
def P9727486095766786178.Spec : Prop :=
  ∀ n, (P9727486095766786178.a n : ℤ) = A266461 n

end A266461

/-! ## A266461.P16570867076449729534

`or(A016116(n), A266069(n))`
-/

namespace A266461.P16570867076449729534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016116 n) (A266069 n)

end

end A266461.P16570867076449729534

namespace A266461

/-- `or(A016116(n), A266069(n))` -/
def P16570867076449729534.Spec : Prop :=
  ∀ n, P16570867076449729534.a n = A266461 n

end A266461

/-! ## A266461.P12978154402289241405

`or(A131572(n), A266069(n))`
-/

namespace A266461.P12978154402289241405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131572 n) (A266069 n)

end

end A266461.P12978154402289241405

namespace A266461

/-- `or(A131572(n), A266069(n))` -/
def P12978154402289241405.Spec : Prop :=
  ∀ n, P12978154402289241405.a n = A266461 n

end A266461

/-! ## A266461.P13165596356256589522

`or(A131575(n), A266069(n))`
-/

namespace A266461.P13165596356256589522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131575 n) (A266069 n)

end

end A266461.P13165596356256589522

namespace A266461

/-- `or(A131575(n), A266069(n))` -/
def P13165596356256589522.Spec : Prop :=
  ∀ n, P13165596356256589522.a n = A266461 n

end A266461

/-! ## A266461.P16707542853804868663

`A266718(n)/A153284(n+1)`
-/

namespace A266461.P16707542853804868663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266718 n : ℚ) / (A153284 (n + 1) : ℚ)

end

end A266461.P16707542853804868663

namespace A266461

/-- `A266718(n)/A153284(n+1)` -/
def P16707542853804868663.Spec : Prop :=
  ∀ n, P16707542853804868663.a n = (A266461 n : ℚ)

end A266461

/-! ## A266461.P10905181039079841785

`or(Δ[A209722(n+1)], A266069(n))`
-/

namespace A266461.P10905181039079841785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A266069 n)

end

end A266461.P10905181039079841785

namespace A266461

/-- `or(Δ[A209722(n+1)], A266069(n))` -/
def P10905181039079841785.Spec : Prop :=
  ∀ n, P10905181039079841785.a n = A266461 n

end A266461

/-! ## A266461.P16396868004740410270

`A266069(n)+A131575(n+2)/2`
-/

namespace A266461.P16396868004740410270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266069 n : ℚ) + (A131575 (n + 2) : ℚ) / 2

end

end A266461.P16396868004740410270

namespace A266461

/-- `A266069(n)+A131575(n+2)/2` -/
def P16396868004740410270.Spec : Prop :=
  ∀ n, P16396868004740410270.a n = (A266461 n : ℚ)

end A266461

/-! ## A266461.P3076525258767983135

`xor(A016116(n+1), A279872(A266303(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266461

/-- `xor(A016116(n+1), A279872(A266303(n)))` -/
def P3076525258767983135.Spec : Prop :=
  ∀ n, P3076525258767983135.a n = A266461 n

theorem P3076525258767983135.correct : P3076525258767983135.Spec := by
  intro n
  simp only [A266461]

end A266461

/-! ## A266461.P5414499998441755926

`A266718(n)%A266069(n+2)`
-/

namespace A266461.P5414499998441755926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266718 n) (A266069 (n + 2))

end

end A266461.P5414499998441755926

namespace A266461

/-- `A266718(n)%A266069(n+2)` -/
def P5414499998441755926.Spec : Prop :=
  ∀ n, P5414499998441755926.a n = A266461 n

end A266461

/-!
# A266462: The number of conjugacy classes of invertible n X n matrices over GF(2) which are squares of other such matrices.

The programs for A266462, there is no canonical definition to state claims against.
-/

/-! ## A266462.P12429166140259655117

`A055679(A098475(n))`
-/

namespace A266462.P12429166140259655117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A098475 n).toNat

end

end A266462.P12429166140259655117

/-! ## A266462.P17569568219727270705

`A055679(A158661(n))`
-/

namespace A266462.P17569568219727270705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A158661 n).toNat

end

end A266462.P17569568219727270705

/-! ## A266462.P13107301196343068090

`A194640(A202088(n)+A001401(n))`
-/

namespace A266462.P13107301196343068090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A202088 n + A001401 n).toNat

end

end A266462.P13107301196343068090

/-! ## A266462.P12611428631620616176

`A055086(A148985(n))`
-/

namespace A266462.P12611428631620616176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148985 n).toNat

end

end A266462.P12611428631620616176

/-! ## A266462.P7474573572548933775

`A082447(A180717(n))`
-/

namespace A266462.P7474573572548933775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A180717 n).toNat

end

end A266462.P7474573572548933775

/-!
# A266463: Number of n X n binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266463, there is no canonical definition to state claims against.
-/

/-! ## A266463.P6005217380759763929

`A266470(∑[4*n]+1)`
-/

namespace A266463.P6005217380759763929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266463.P6005217380759763929

/-! ## A266463.P7341820940158521780

`record[A266470(Δ[A235355(n)])]`
-/

namespace A266463.P7341820940158521780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266463.P7341820940158521780

/-! ## A266463.P11969600372773597179

`lcm((-1)^n, A266470(A001844(n)))`
-/

namespace A266463.P11969600372773597179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A266470 (A001844 n).toNat)

end

end A266463.P11969600372773597179

/-! ## A266463.P5175994157995518915

`record[A003982(n)*A266470(n+1)]`
-/

namespace A266463.P5175994157995518915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A266470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266463.P5175994157995518915

/-! ## A266463.P11825025689575428549

`record[A266470(n+1)/A273896(2*(n+1))]`
-/

namespace A266463.P11825025689575428549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266470 (n + 1) : ℚ) / (A273896 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266463.P11825025689575428549

/-!
# A266464: Number of n X 2 binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266464, the canonical program `A266464.P11971142333207034678` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266464 has offset 0).

The definition of A266464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266464.P11971142333207034678

`1+a(n-1)+floor(n²/4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266464

/-- `1+a(n-1)+floor(n²/4)` -/
def P11971142333207034678.Spec : Prop :=
  ∀ n, P11971142333207034678.a n = A266464 n

theorem P11971142333207034678.correct : P11971142333207034678.Spec := by
  intro n
  simp only [A266464]

end A266464

/-! ## A266464.P1779523108802098363

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=12`
-/

namespace A266464.P1779523108802098363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 12] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A266464.P1779523108802098363

namespace A266464

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P1779523108802098363.Spec : Prop :=
  ∀ n, P1779523108802098363.a n = A266464 n

end A266464

/-! ## A266464.P12061702989913038637

`∑[floor((n/2)²)+1]`
-/

namespace A266464.P12061702989913038637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266464.P12061702989913038637

namespace A266464

/-- `∑[floor((n/2)²)+1]` -/
def P12061702989913038637.Spec : Prop :=
  ∀ n, P12061702989913038637.a n = A266464 n

end A266464

/-! ## A266464.P3841498092938845567

`a(n-2)+C(n, 2)+2` with `a(0)=1, a(1)=2`
-/

namespace A266464.P3841498092938845567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (Nat.choose n 2 + 2)

end

end A266464.P3841498092938845567

namespace A266464

/-- `a(n-2)+C(n, 2)+2` -/
def P3841498092938845567.Spec : Prop :=
  ∀ n, (P3841498092938845567.a n : ℤ) = A266464 n

end A266464

/-! ## A266464.P4741887362550785293

`floor(∑[∑[a(n-2)+1]])` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A266464.P4741887362550785293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266464.P4741887362550785293

namespace A266464

/-- `floor(∑[∑[a(n-2)+1]])` -/
def P4741887362550785293.Spec : Prop :=
  ∀ n, (P4741887362550785293.a n : ℤ) = A266464 n

end A266464

/-! ## A266464.P16318211223596611359

`floor(∑[n-(1-a(n-2))])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A266464.P16318211223596611359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266464.P16318211223596611359

namespace A266464

/-- `floor(∑[n-(1-a(n-2))])` -/
def P16318211223596611359.Spec : Prop :=
  ∀ n, P16318211223596611359.a n = A266464 n

end A266464

/-! ## A266464.P5183004102331225981

`∑[∑[a(n-2)+2]]/2` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A266464.P5183004102331225981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 2] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A266464.P5183004102331225981

namespace A266464

/-- `∑[∑[a(n-2)+2]]/2` -/
def P5183004102331225981.Spec : Prop :=
  ∀ n, P5183004102331225981.a n = (A266464 n : ℚ)

end A266464

/-! ## A266464.P258252009778958754

`∑[n-1]+a(n-2)+3` with `a(0)=1, a(1)=2`
-/

namespace A266464.P258252009778958754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) + 3)

end

end A266464.P258252009778958754

namespace A266464

/-- `∑[n-1]+a(n-2)+3` -/
def P258252009778958754.Spec : Prop :=
  ∀ n, P258252009778958754.a n = A266464 n

end A266464

/-! ## A266464.P18074051265506617627

`3-(∑[1-n]-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A266464.P18074051265506617627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2))

end

end A266464.P18074051265506617627

namespace A266464

/-- `3-(∑[1-n]-a(n-2))` -/
def P18074051265506617627.Spec : Prop :=
  ∀ n, P18074051265506617627.a n = A266464 n

end A266464

/-! ## A266464.P2712503258512139492

`floor(a(n-1)+n*n/4)+1` with `a(0)=1`
-/

namespace A266464.P2712503258512139492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) * ((n : ℚ) / 4)⌋ + 1

end

end A266464.P2712503258512139492

namespace A266464

/-- `floor(a(n-1)+n*n/4)+1` -/
def P2712503258512139492.Spec : Prop :=
  ∀ n, P2712503258512139492.a n = A266464 n

theorem P2712503258512139492.correct : P2712503258512139492.Spec := by
  intro n
  simp only [A266464, Nat.add_sub_cancel, A266464.P2712503258512139492.a, A266464.P11971142333207034678.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A266464

/-! ## A266464.P16091605107819488524

`A002623(n)-∑[n]`
-/

namespace A266464.P16091605107819488524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A266464.P16091605107819488524

namespace A266464

/-- `A002623(n)-∑[n]` -/
def P16091605107819488524.Spec : Prop :=
  ∀ n, P16091605107819488524.a n = A266464 n

end A266464

/-! ## A266464.P2606718883654749286

`A173196(n)+1+n`
-/

namespace A266464.P2606718883654749286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + 1 + (n : ℤ)

end

end A266464.P2606718883654749286

namespace A266464

/-- `A173196(n)+1+n` -/
def P2606718883654749286.Spec : Prop :=
  ∀ n, P2606718883654749286.a n = A266464 n

end A266464

/-! ## A266464.P6277616895029533443

`a(n-1)+1+A002620(n)` with `a(0)=1`
-/

namespace A266464.P6277616895029533443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 + A002620 n)

end

end A266464.P6277616895029533443

namespace A266464

/-- `a(n-1)+1+A002620(n)` -/
def P6277616895029533443.Spec : Prop :=
  ∀ n, P6277616895029533443.a n = A266464 n

theorem P6277616895029533443.correct : P6277616895029533443.Spec := by
  intro n
  simp only [A266464, Nat.add_sub_cancel, A266464.P6277616895029533443.a, A266464.P11971142333207034678.a, A002620, A002620.P9002536657626793813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A266464

/-! ## A266464.P4190617792284398540

`A080956(n)+A005744(n)`
-/

namespace A266464.P4190617792284398540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + A005744 n

end

end A266464.P4190617792284398540

namespace A266464

/-- `A080956(n)+A005744(n)` -/
def P4190617792284398540.Spec : Prop :=
  ∀ n, P4190617792284398540.a n = A266464 n

end A266464

/-! ## A266464.P595855920969005506

`A101881(n)+A006584(n)`
-/

namespace A266464.P595855920969005506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n + A006584 n

end

end A266464.P595855920969005506

namespace A266464

/-- `A101881(n)+A006584(n)` -/
def P595855920969005506.Spec : Prop :=
  ∀ n, P595855920969005506.a n = A266464 n

end A266464

/-! ## A266464.P9975134267124654774

`A175287(n)+A008619(n)`
-/

namespace A266464.P9975134267124654774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n + A008619 n

end

end A266464.P9975134267124654774

namespace A266464

/-- `A175287(n)+A008619(n)` -/
def P9975134267124654774.Spec : Prop :=
  ∀ n, P9975134267124654774.a n = A266464 n

end A266464

/-! ## A266464.P3803323604318243010

`A361272(n)+A032766(n)`
-/

namespace A266464.P3803323604318243010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361272 n + A032766 n

end

end A266464.P3803323604318243010

namespace A266464

/-- `A361272(n)+A032766(n)` -/
def P3803323604318243010.Spec : Prop :=
  ∀ n, P3803323604318243010.a n = A266464 n

end A266464

/-! ## A266464.P5745221109002055115

`A265431(n)+A212772(n)`
-/

namespace A266464.P5745221109002055115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265431 n + A212772 n

end

end A266464.P5745221109002055115

namespace A266464

/-- `A265431(n)+A212772(n)` -/
def P5745221109002055115.Spec : Prop :=
  ∀ n, P5745221109002055115.a n = A266464 n

end A266464

/-! ## A266464.P2092654507249116820

`A361275(n)+A165157(n)`
-/

namespace A266464.P2092654507249116820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361275 n + A165157 n

end

end A266464.P2092654507249116820

namespace A266464

/-- `A361275(n)+A165157(n)` -/
def P2092654507249116820.Spec : Prop :=
  ∀ n, P2092654507249116820.a n = A266464 n

end A266464

/-! ## A266464.P97532171004878447

`A005993(n)-A211539(n)`
-/

namespace A266464.P97532171004878447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A211539 n

end

end A266464.P97532171004878447

namespace A266464

/-- `A005993(n)-A211539(n)` -/
def P97532171004878447.Spec : Prop :=
  ∀ n, P97532171004878447.a n = A266464 n

end A266464

/-!
# A266465: Number of n X 3 binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266465, there is no canonical definition to state claims against.
-/

/-! ## A266465.P7840150710547193232

`A266470(∑[n+3]+1)`
-/

namespace A266465.P7840150710547193232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266465.P7840150710547193232

/-! ## A266465.P4138262150762212176

`record[A266470(abs(A255878(n+1)))]`
-/

namespace A266465.P4138262150762212176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266465.P4138262150762212176

/-! ## A266465.P5458722701262464037

`A266470(Δ[A008778(n)])%(n+3)!`
-/

namespace A266465.P5458722701262464037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266470 (f1 (n + 1) - f1 n).toNat) (Nat.factorial (n + 3) : ℤ)

end

end A266465.P5458722701262464037

/-! ## A266465.P2552251832461486366

`record[A266470(n+1)-A255970(n+3)]`
-/

namespace A266465.P2552251832461486366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (n + 1) - A255970 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266465.P2552251832461486366

/-! ## A266465.P804931819463666999

`record[A010054(n+3)*A266470(n+1)]`
-/

namespace A266465.P804931819463666999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A266470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266465.P804931819463666999

/-!
# A266466: Number of nX4 binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266466, there is no canonical definition to state claims against.
-/

/-! ## A266466.P3432174908610781490

`A266470(∑[n+4]+3)`
-/

namespace A266466.P3432174908610781490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A266466.P3432174908610781490

/-! ## A266466.P10375996938244286545

`A182972(A001147(n))+A033453(n)`
-/

namespace A266466.P10375996938244286545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182972 (A001147 n).toNat + A033453 n

end

end A266466.P10375996938244286545

/-!
# A266467: Number of nX5 binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266467, there is no canonical definition to state claims against.
-/

/-! ## A266467.P7527172422749278845

`A266470(Δ[A264443(n)])`
-/

namespace A266467.P7527172422749278845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (f1 (n + 1) - f1 n).toNat

end

end A266467.P7527172422749278845

/-! ## A266467.P13459096848861547152

`A266470(A046691(n+3))`
-/

namespace A266467.P13459096848861547152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A046691 (n + 3)).toNat

end

end A266467.P13459096848861547152

/-! ## A266467.P15771156917262233692

`A266470(A056115(n)+11)`
-/

namespace A266467.P15771156917262233692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056115 n + 11).toNat

end

end A266467.P15771156917262233692

/-! ## A266467.P4469815774714288337

`A266470(eq[2, A092921(n)])`
-/

namespace A266467.P4469815774714288337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266467.P4469815774714288337

/-! ## A266467.P7479505837892226981

`A266470(eq[3, A152157(n)])`
-/

namespace A266467.P7479505837892226981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266467.P7479505837892226981

/-!
# A266468: Number of nX6 binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266468, there is no canonical definition to state claims against.
-/

/-! ## A266468.P12663178615290644721

`A266470(A052905(n+3))`
-/

namespace A266468.P12663178615290644721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A052905 (n + 3)).toNat

end

end A266468.P12663178615290644721

/-! ## A266468.P2625014980030254439

`A266470(A056119(n)+16)`
-/

namespace A266468.P2625014980030254439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056119 n + 16).toNat

end

end A266468.P2625014980030254439

/-! ## A266468.P7802561407582566146

`A266470(eq[3, A219347(n)])`
-/

namespace A266468.P7802561407582566146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266468.P7802561407582566146

/-! ## A266468.P16227127101962875411

`A266470(eq[5, A152157(n)])`
-/

namespace A266468.P16227127101962875411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266468.P16227127101962875411

/-! ## A266468.P12410697733509918063

`A266470(eq[5, A193592(n)])`
-/

namespace A266468.P12410697733509918063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266468.P12410697733509918063

/-!
# A266469: Number of n X 7 binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266469, there is no canonical definition to state claims against.
-/

/-! ## A266469.P14035860445860195907

`A266470(A056121(n)+22)`
-/

namespace A266469.P14035860445860195907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056121 n + 22).toNat

end

end A266469.P14035860445860195907

/-! ## A266469.P5751873709989437983

`A266470(eq[4, A219347(n)])`
-/

namespace A266469.P5751873709989437983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266469.P5751873709989437983

/-! ## A266469.P8707606814668358058

`A266470(eq[6, A193592(n)])`
-/

namespace A266469.P8707606814668358058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266469.P8707606814668358058

/-! ## A266469.P9600802754377005986

`A266470(eq[7, A152157(n)])`
-/

namespace A266469.P9600802754377005986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266469.P9600802754377005986

/-! ## A266469.P1665144016973838099

`A266470(A056119(n+1)+15)`
-/

namespace A266469.P1665144016973838099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056119 (n + 1) + 15).toNat

end

end A266469.P1665144016973838099

/-!
# A266470: T(n,k) = number of n X k binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266470, there is no canonical definition to state claims against.
-/

/-! ## A266470.P1971678473973779346

`A242455(A074909(n))+A000007(A054824(n+1))`
-/

namespace A266470.P1971678473973779346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242455 (A074909 n).toNat + A000007 (A054824 (n + 1)).toNat

end

end A266470.P1971678473973779346

/-! ## A266470.P17858336994850675598

`A242455(A074909(n))+A000007(A213760(n+1))`
-/

namespace A266470.P17858336994850675598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242455 (A074909 n).toNat + A000007 (A213760 (n + 1)).toNat

end

end A266470.P17858336994850675598

/-! ## A266470.P13503034980047407332

`A242455(A074909(n))^A237202(A086669(n+1))`
-/

namespace A266470.P13503034980047407332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242455 (A074909 n).toNat : ℚ) ^ (A237202 (A086669 (n + 1)).toNat : ℤ)

end

end A266470.P13503034980047407332

/-! ## A266470.P14172071471299340623

`A242455(A074909(n))+A000007(A000040(n+4)²)`
-/

namespace A266470.P14172071471299340623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242455 (A074909 n).toNat + A000007 (A000040 (n + 4) ^ 2).toNat

end

end A266470.P14172071471299340623

/-! ## A266470.P15696324211708927991

`A005524(A074909(n)%A377287(3*n+1))`
-/

namespace A266470.P15696324211708927991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005524 (Int.tmod (A074909 n) (A377287 (3 * n + 1))).toNat

end

end A266470.P15696324211708927991

/-!
# A266471: Number of 4 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266471, the canonical program `A266471.P2881579580253821296` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266471 has offset 1).

The definition of A266471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266471.P2881579580253821296

`4*(n+1)+A271567(n)-A056118(n)+A006331(n)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266471

/-- `4*(n+1)+A271567(n)-A056118(n)+A006331(n)+1` -/
def P2881579580253821296.Spec : Prop :=
  ∀ n, P2881579580253821296.a n = A266471 (n + 1)

theorem P2881579580253821296.correct : P2881579580253821296.Spec := by
  intro n
  simp only [A266471, Nat.add_sub_cancel]

end A266471

/-! ## A266471.P14957042467475108788

`∑[∑[∑[A077169(n+1)-1]]+2]+2`
-/

namespace A266471.P14957042467475108788
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A266471.P14957042467475108788

namespace A266471

/-- `∑[∑[∑[A077169(n+1)-1]]+2]+2` -/
def P14957042467475108788.Spec : Prop :=
  ∀ n, P14957042467475108788.a n = A266471 (n + 1)

end A266471

/-! ## A266471.P18157132895904411598

`A005843(n+2)+A000389(n+5)-A000332(n)`
-/

namespace A266471.P18157132895904411598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) + (A000389 (n + 5) - A000332 n)

end

end A266471.P18157132895904411598

namespace A266471

/-- `A005843(n+2)+A000389(n+5)-A000332(n)` -/
def P18157132895904411598.Spec : Prop :=
  ∀ n, P18157132895904411598.a n = A266471 (n + 1)

end A266471

/-! ## A266471.P16596848585567828388

`A008619(A045991(n))+Δ[A055796(n)]`
-/

namespace A266471.P16596848585567828388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A045991 n).toNat + (f1 (n + 1) - f1 n)

end

end A266471.P16596848585567828388

namespace A266471

/-- `A008619(A045991(n))+Δ[A055796(n)]` -/
def P16596848585567828388.Spec : Prop :=
  ∀ n, P16596848585567828388.a n = A266471 (n + 1)

end A266471

/-! ## A266471.P2377268797975410250

`A266470(∑[n+3]+7)`
-/

namespace A266471.P2377268797975410250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266471.P2377268797975410250

namespace A266471

/-- `A266470(∑[n+3]+7)` -/
def P2377268797975410250.Spec : Prop :=
  ∀ n, P2377268797975410250.a n = A266471 (n + 1)

end A266471

/-!
# A266472: Number of 5 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266472, there is no canonical definition to state claims against.
-/

/-! ## A266472.P2735986802095951283

`A266470(A167499(n+3))`
-/

namespace A266472.P2735986802095951283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A167499 (n + 3)).toNat

end

end A266472.P2735986802095951283

/-! ## A266472.P13890704687981628282

`A266470(A155212(n)+13)`
-/

namespace A266472.P13890704687981628282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A155212 n + 13).toNat

end

end A266472.P13890704687981628282

/-! ## A266472.P10494690091602391074

`A266470(A056000(n)+15)`
-/

namespace A266472.P10494690091602391074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056000 n + 15).toNat

end

end A266472.P10494690091602391074

/-! ## A266472.P4713705585966708944

`A266470(eq[7, A066657(n)])`
-/

namespace A266472.P4713705585966708944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266472.P4713705585966708944

/-! ## A266472.P14100490698955702845

`A266470(A000096(n+3)+6)`
-/

namespace A266472.P14100490698955702845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A000096 (n + 3) + 6).toNat

end

end A266472.P14100490698955702845

/-!
# A266473: Number of 6Xn binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266473, there is no canonical definition to state claims against.
-/

/-! ## A266473.P12505245809077099334

`A266470(C(2*n+7-n, 2)-n)`
-/

namespace A266473.P12505245809077099334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (Nat.choose ((2 * n + 7 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A266473.P12505245809077099334

/-! ## A266473.P17231352579449534456

`A266470(A166136(n+4))`
-/

namespace A266473.P17231352579449534456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A166136 (n + 4)).toNat

end

end A266473.P17231352579449534456

/-! ## A266473.P8045377376179208771

`A266470(A056115(n)+21)`
-/

namespace A266473.P8045377376179208771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056115 n + 21).toNat

end

end A266473.P8045377376179208771

/-! ## A266473.P5008475073145498246

`A266470(A167499(n+4)+1)`
-/

namespace A266473.P5008475073145498246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A167499 (n + 4) + 1).toNat

end

end A266473.P5008475073145498246

/-! ## A266473.P8737173552034169652

`A266470(A167614(n+4)+3)`
-/

namespace A266473.P8737173552034169652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A167614 (n + 4) + 3).toNat

end

end A266473.P8737173552034169652

/-!
# A266474: Number of 7Xn binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

The programs for A266474, there is no canonical definition to state claims against.
-/

/-! ## A266474.P10042084370811032280

`A266470(A056119(n)+28)`
-/

namespace A266474.P10042084370811032280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A056119 n + 28).toNat

end

end A266474.P10042084370811032280

/-! ## A266474.P7415248852069236118

`A266470(eq[11, A066657(n)])`
-/

namespace A266474.P7415248852069236118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266474.P7415248852069236118

/-! ## A266474.P7857602252950721665

`A266470(A166136(n+5)+1)`
-/

namespace A266474.P7857602252950721665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A166136 (n + 5) + 1).toNat

end

end A266474.P7857602252950721665

/-! ## A266474.P16602664154003749918

`A266470(A167499(n+5)+2)`
-/

namespace A266474.P16602664154003749918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A167499 (n + 5) + 2).toNat

end

end A266474.P16602664154003749918

/-! ## A266474.P6564529961777863874

`A266470(A000124(n+6)+6)`
-/

namespace A266474.P6564529961777863874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266470 (A000124 (n + 6) + 6).toNat

end

end A266474.P6564529961777863874

/-!
# A266475: Sum of the parts i_1 + i_2 + ... + i_{A001222(n)} of the unique strict partition with encoding n = Product_{j=1..A001222(n)} prime(i_j-j+1).

The programs for A266475, the canonical program `A266475.P2435142480550769499` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266475 has offset 1).

The definition of A266475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266475.P2435142480550769499

`A056239(n+1)+C(A001222(n+1), 2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A266475

/-- `A056239(n+1)+C(A001222(n+1), 2)` -/
def P2435142480550769499.Spec : Prop :=
  ∀ n, P2435142480550769499.a n = A266475 (n + 1)

theorem P2435142480550769499.correct : P2435142480550769499.Spec := by
  intro n
  simp only [A266475, Nat.add_sub_cancel]

end A266475

/-! ## A266475.P17723210610847249593

`A161680(A001222(n+1))+A056239(n+1)`
-/

namespace A266475.P17723210610847249593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A001222 (n + 1)).toNat + A056239 (n + 1)

end

end A266475.P17723210610847249593

namespace A266475

/-- `A161680(A001222(n+1))+A056239(n+1)` -/
def P17723210610847249593.Spec : Prop :=
  ∀ n, P17723210610847249593.a n = A266475 (n + 1)

theorem P17723210610847249593.correct : P17723210610847249593.Spec := by
  intro n
  simp only [A266475, Nat.add_sub_cancel, A266475.P17723210610847249593.a, A266475.P2435142480550769499.a, A001222, A001222.P11318177267732088261.a, A056239, A056239.P11316688788989965672.a, A161680, A161680.P17206074215489759881.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A029837, A029837.P1050578713049589.a, A048896, A048896.P6461019053085857547.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048881, A048881.P16567064232951496228.a, A052126, A052126.P1944428405920482243.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A266475

/-! ## A266475.P769419338115359789

`A056239(n+1)+A000217(A252736(n+1))`
-/

namespace A266475.P769419338115359789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A000217 (A252736 (n + 1)).toNat

end

end A266475.P769419338115359789

namespace A266475

/-- `A056239(n+1)+A000217(A252736(n+1))` -/
def P769419338115359789.Spec : Prop :=
  ∀ n, P769419338115359789.a n = A266475 (n + 1)

end A266475

/-! ## A266475.P17800875760881338979

`A318995(n+1)+A000217(A001222(n+1))`
-/

namespace A266475.P17800875760881338979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A000217 (A001222 (n + 1)).toNat

end

end A266475.P17800875760881338979

namespace A266475

/-- `A318995(n+1)+A000217(A001222(n+1))` -/
def P17800875760881338979.Spec : Prop :=
  ∀ n, P17800875760881338979.a n = A266475 (n + 1)

end A266475

/-! ## A266475.P8701740908641116

`A056239(A064989(n+1))+A000217(A001222(n+1))`
-/

namespace A266475.P8701740908641116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064989 (n + 1)).toNat + A000217 (A001222 (n + 1)).toNat

end

end A266475.P8701740908641116

namespace A266475

/-- `A056239(A064989(n+1))+A000217(A001222(n+1))` -/
def P8701740908641116.Spec : Prop :=
  ∀ n, P8701740908641116.a n = A266475 (n + 1)

end A266475

/-! ## A266475.P7332376906398265078

`∑{p}[A332462(n+1), A000720(#)]`
-/

namespace A266475.P7332376906398265078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A266475.P7332376906398265078

namespace A266475

/-- `∑{p}[A332462(n+1), A000720(#)]` -/
def P7332376906398265078.Spec : Prop :=
  ∀ n, P7332376906398265078.a n = A266475 (n + 1)

end A266475

/-! ## A266475.P9473156921712611113

`∑{p}[A332462(n+1), A263111(#)]`
-/

namespace A266475.P9473156921712611113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A263111 p

end

end A266475.P9473156921712611113

namespace A266475

/-- `∑{p}[A332462(n+1), A263111(#)]` -/
def P9473156921712611113.Spec : Prop :=
  ∀ n, P9473156921712611113.a n = A266475 (n + 1)

end A266475

/-! ## A266475.P9851783044785679313

`A056239(A332462(n+1))`
-/

namespace A266475.P9851783044785679313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A332462 (n + 1)).toNat

end

end A266475.P9851783044785679313

namespace A266475

/-- `A056239(A332462(n+1))` -/
def P9851783044785679313.Spec : Prop :=
  ∀ n, P9851783044785679313.a n = A266475 (n + 1)

end A266475

/-! ## A266475.P11139138537253456065

`A056239(A064989(n+1)*A086568(n+1))`
-/

namespace A266475.P11139138537253456065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064989 (n + 1) * A086568 (n + 1)).toNat

end

end A266475.P11139138537253456065

namespace A266475

/-- `A056239(A064989(n+1)*A086568(n+1))` -/
def P11139138537253456065.Spec : Prop :=
  ∀ n, P11139138537253456065.a n = A266475 (n + 1)

end A266475

/-!
# A266476: Ordinal transform of A266475.

The programs for A266476, there is no canonical definition to state claims against.
-/

/-! ## A266476.P4841485981881952991

`A055874(xor(2, A066769(n+1)))`
-/

namespace A266476.P4841485981881952991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Int.xor 2 (A066769 (n + 1))).toNat

end

end A266476.P4841485981881952991

/-! ## A266476.P7580505050503257319

`A081327(n+2)+A000038(A274174(n))`
-/

namespace A266476.P7580505050503257319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081327 (n + 2) + A000038 (A274174 n).toNat

end

end A266476.P7580505050503257319

/-! ## A266476.P4154302132190868398

`A081327(n+2)+A000038(A005891(3*(n+1)))`
-/

namespace A266476.P4154302132190868398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081327 (n + 2) + A000038 (A005891 (3 * (n + 1))).toNat

end

end A266476.P4154302132190868398

/-! ## A266476.P17548655203197483725

`A235726(A124753(n))`
-/

namespace A266476.P17548655203197483725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235726 (A124753 n).toNat

end

end A266476.P17548655203197483725

/-! ## A266476.P5533046228916561128

`A081327(n+2)+A000007(A233862(n+1))`
-/

namespace A266476.P5533046228916561128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081327 (n + 2) + A000007 (A233862 (n + 1)).toNat

end

end A266476.P5533046228916561128

/-!
# A266477: Triangle read by rows in which T(n,k) is the number of partitions of n with product of multiplicities of parts equal to k; n>=0, 1<=k<=A266480(n).

The programs for A266477, there is no canonical definition to state claims against.
-/

/-! ## A266477.P7978874058003062601

`∏{e}[A005009(n), A133121(#)]`
-/

namespace A266477.P7978874058003062601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A133121 (Nat.factorization (f1 n).natAbs p)

end

end A266477.P7978874058003062601

/-! ## A266477.P9700530127140669625

`A133121(A000005(ceil(2^(n-1))))`
-/

namespace A266477.P9700530127140669625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133121 (A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

end

end A266477.P9700530127140669625

/-! ## A266477.P883686614007061228

`A133121(A326684(n+2)^n+n)`
-/

namespace A266477.P883686614007061228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133121 (A326684 (n + 2) ^ n + (n : ℤ)).toNat

end

end A266477.P883686614007061228

/-! ## A266477.P11598452586294747087

`A133121(C(A016116(n), (n+1)²)+n)`
-/

namespace A266477.P11598452586294747087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133121 (Nat.choose (A016116 n).toNat ((n + 1) ^ 2) + n)

end

end A266477.P11598452586294747087

/-! ## A266477.P3438061220543114060

`A133121(C(A360699(n), A002378(n)²)+n)`
-/

namespace A266477.P3438061220543114060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133121 (Nat.choose (A360699 n).toNat (A002378 n ^ 2).toNat + n)

end

end A266477.P3438061220543114060

/-!
# A266478: Number of n-vertex simple graphs G_n for which n divides the number of labeled copies of G_n.

The programs for A266478, there is no canonical definition to state claims against.
-/

/-! ## A266478.P1711116145019414456

`record[A327805(n)]-A266479(n+1)`
-/

namespace A266478.P1711116145019414456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A266479 (n + 1)

end

end A266478.P1711116145019414456

/-! ## A266478.P9662829986823149176

`A000088(n+1)-A266479(n+1)`
-/

namespace A266478.P9662829986823149176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A266479 (n + 1)

end

end A266478.P9662829986823149176

/-! ## A266478.P8991763953768003995

`A076321(n+1)-A266479(n+1)`
-/

namespace A266478.P8991763953768003995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - A266479 (n + 1)

end

end A266478.P8991763953768003995

/-!
# A266480: Maximal product of multiplicities of parts of a partition of n.

The programs for A266480, there is no canonical definition to state claims against.
-/

/-! ## A266480.P8021641114068929196

`∑[∑[A145273(A062832(n+1))]]-n`
-/

namespace A266480.P8021641114068929196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145273 (A062832 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A266480.P8021641114068929196

/-! ## A266480.P1935240748480513844

`A246084(A245794(n)+n)`
-/

namespace A266480.P1935240748480513844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246084 (A245794 n + (n : ℤ)).toNat

end

end A266480.P1935240748480513844

/-! ## A266480.P4269348672643867140

`∑[A008616(A295556(A151764(n+1)))]`
-/

namespace A266480.P4269348672643867140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A295556 (A151764 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266480.P4269348672643867140

/-! ## A266480.P12814274121543797073

`∑[A116458(n)%A005408(A283834(n))]`
-/

namespace A266480.P12814274121543797073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116458 n) (A005408 (A283834 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266480.P12814274121543797073

/-! ## A266480.P13837338607000931704

`∑[A069010(A244456(n+3))]`
-/

namespace A266480.P13837338607000931704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A244456 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266480.P13837338607000931704

/-!
# A266481: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N + n)^(2*n) * (x/N)^n/n! ]^(1/N).

The programs for A266481, there is no canonical definition to state claims against.
-/

/-! ## A266481.P16488354918486662501

`∏{p}[A203013(n)², #]`
-/

namespace A266481.P16488354918486662501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203013 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A266481.P16488354918486662501

/-!
# A266482: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N + n)^(3*n) * (x/N^2)^n/n! ]^(1/N).

The programs for A266482, there is no canonical definition to state claims against.
-/

/-! ## A266482.P13729462908545108595

`A220181(n)-A380180(A001514(n))`
-/

namespace A266482.P13729462908545108595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220181 n - A380180 (A001514 n).toNat

end

end A266482.P13729462908545108595

/-!
# A266483: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N + n)^(4*n) * (x/N^3)^n/n! ]^(1/N).

The programs for A266483, there is no canonical definition to state claims against.
-/

/-! ## A266483.P7886967531499014866

`A287527(xor(1, C(A163859(n), 2)))`
-/

namespace A266483.P7886967531499014866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287527 (Nat.xor 1 (Nat.choose (A163859 n).toNat 2))

end

end A266483.P7886967531499014866

/-!
# A266485: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N + 2*n)^(2*n) * (x/N)^n/n! ]^(1/N).

The programs for A266485, there is no canonical definition to state claims against.
-/

/-! ## A266485.P5222166509520014113

`or(1, A092179(A000285(n)))`
-/

namespace A266485.P5222166509520014113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A092179 (A000285 n).toNat)

end

end A266485.P5222166509520014113

/-!
# A266487: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N - n)^(2*n) * (x/N)^n/n! ]^(1/N).

The programs for A266487, there is no canonical definition to state claims against.
-/

/-! ## A266487.P3554705665886143763

`A001057(A213644(n))-A084272(n+1)`
-/

namespace A266487.P3554705665886143763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A213644 n).toNat - A084272 (n + 1)

end

end A266487.P3554705665886143763

/-!
# A266488: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N + n*y)^(2*n) * (x/N)^n/n! ]^(1/N).

The programs for A266488, there is no canonical definition to state claims against.
-/

/-! ## A266488.P9928974604145456905

`A072088(A081720(n+1)*A091063(n))`
-/

namespace A266488.P9928974604145456905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A081720 (n + 1) * A091063 n).toNat

end

end A266488.P9928974604145456905

/-! ## A266488.P1871164458629278494

`A055570(A208765(n+1))*A091063(n)`
-/

namespace A266488.P1871164458629278494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A208765 (n + 1)).toNat * A091063 n

end

end A266488.P1871164458629278494

/-! ## A266488.P2433224023462324537

`A072088(A081720(n+1)*A351339(n))`
-/

namespace A266488.P2433224023462324537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A081720 (n + 1) * A351339 n).toNat

end

end A266488.P2433224023462324537

/-! ## A266488.P838249821079493501

`A097449(A081720(n+1)*A342120(n))`
-/

namespace A266488.P838249821079493501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A081720 (n + 1) * A342120 n).toNat

end

end A266488.P838249821079493501

/-!
# A266489: G.f. A(x) satisfies: [x^n] A( x/A(x)^n ) = 0 for n>1.

The programs for A266489, there is no canonical definition to state claims against.
-/

/-! ## A266489.P12931492756953226257

`round(sqrt(n²+1))*A268293(A028310(n))`
-/

namespace A266489.P12931492756953226257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A268293 (A028310 n).toNat

end

end A266489.P12931492756953226257

/-! ## A266489.P14926470075574443166

`A028310(n)*A268293(A233583(n+1))`
-/

namespace A266489.P14926470075574443166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A268293 (A233583 (n + 1)).toNat

end

end A266489.P14926470075574443166

/-! ## A266489.P4709977616091408359

`A028310(n)*A268293(gcd(n, A028310(n)))`
-/

namespace A266489.P4709977616091408359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A268293 (Int.gcd (n : ℤ) (A028310 n))

end

end A266489.P4709977616091408359

/-! ## A266489.P2871064656761873980

`A028310(n)*A268293(or(n, A028310(n)))`
-/

namespace A266489.P2871064656761873980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A268293 (Int.lor (n : ℤ) (A028310 n)).toNat

end

end A266489.P2871064656761873980

/-!
# A266490: E.g.f. A(x) satisfies: A(x) = exp( Integral B(x) dx ) such that B(x) = exp(2*x) * exp( Integral A(x) dx ), where the constant of integration is zero.

The programs for A266490, there is no canonical definition to state claims against.
-/

/-! ## A266490.P14693339978666410398

`A239495(n²+∑[n+1]+5)`
-/

namespace A266490.P14693339978666410398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239495 (n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + 5))

end

end A266490.P14693339978666410398

/-! ## A266490.P13525760628928970797

`A005599(A201595(n))`
-/

namespace A266490.P13525760628928970797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A201595 n).toNat

end

end A266490.P13525760628928970797

/-!
# A266491: a(n) = n*A130658(n).

The programs for A266491, the canonical program `A266491.P12047070723219874249` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266491 has offset 0).

The definition of A266491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266491.P3948518376259303448

`n*(3-(-1)^((n-1)*n/2))/2`
-/

namespace A266491.P3948518376259303448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (3 - (-1 : ℝ) ^ ((((n : ℤ) - 1) * (n : ℤ) : ℚ) / 2 : ℝ)) / 2

end

end A266491.P3948518376259303448

namespace A266491

/-- `n*(3-(-1)^((n-1)*n/2))/2` -/
def P3948518376259303448.Spec : Prop :=
  ∀ n, P3948518376259303448.a n = (A266491 n : ℝ)

end A266491

/-! ## A266491.P12047070723219874249

`n*A130658(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266491

/-- `n*A130658(n)` -/
def P12047070723219874249.Spec : Prop :=
  ∀ n, P12047070723219874249.a n = A266491 n

theorem P12047070723219874249.correct : P12047070723219874249.Spec := by
  intro n
  simp only [A266491]

end A266491

/-! ## A266491.P1602062195421575346

`n*and(2, n)!`
-/

namespace A266491.P1602062195421575346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (Nat.land 2 n)

end

end A266491.P1602062195421575346

namespace A266491

/-- `n*and(2, n)!` -/
def P1602062195421575346.Spec : Prop :=
  ∀ n, (P1602062195421575346.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P12959681130085776393

`n*log2(and(2, n)+2)`
-/

namespace A266491.P12959681130085776393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (Nat.land 2 n + 2 : ℝ)

end

end A266491.P12959681130085776393

namespace A266491

/-- `n*log2(and(2, n)+2)` -/
def P12959681130085776393.Spec : Prop :=
  ∀ n, P12959681130085776393.a n = (A266491 n : ℝ)

end A266491

/-! ## A266491.P16803332920399344543

`n*sqrt(2^and(2, n))`
-/

namespace A266491.P16803332920399344543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (2 ^ Nat.land 2 n : ℝ)

end

end A266491.P16803332920399344543

namespace A266491

/-- `n*sqrt(2^and(2, n))` -/
def P16803332920399344543.Spec : Prop :=
  ∀ n, P16803332920399344543.a n = (A266491 n : ℝ)

end A266491

/-! ## A266491.P2600437139389897971

`n*gcd(2, ∑[n+1])`
-/

namespace A266491.P2600437139389897971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266491.P2600437139389897971

namespace A266491

/-- `n*gcd(2, ∑[n+1])` -/
def P2600437139389897971.Spec : Prop :=
  ∀ n, (P2600437139389897971.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P7812740129683772119

`n*(char[or(2, n)]+1)`
-/

namespace A266491.P7812740129683772119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A266491.P7812740129683772119

namespace A266491

/-- `n*(char[or(2, n)]+1)` -/
def P7812740129683772119.Spec : Prop :=
  ∀ n, (P7812740129683772119.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P7190394752156378513

`n*floor(ϕ^and(2, n))`
-/

namespace A266491.P7190394752156378513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.goldenRatio ^ Nat.land 2 n⌋

end

end A266491.P7190394752156378513

namespace A266491

/-- `n*floor(ϕ^and(2, n))` -/
def P7190394752156378513.Spec : Prop :=
  ∀ n, P7190394752156378513.a n = A266491 n

end A266491

/-! ## A266491.P13467532199429979694

`n*(and(2, n)/2+1)`
-/

namespace A266491.P13467532199429979694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.land 2 n : ℚ) / 2 + 1)

end

end A266491.P13467532199429979694

namespace A266491

/-- `n*(and(2, n)/2+1)` -/
def P13467532199429979694.Spec : Prop :=
  ∀ n, P13467532199429979694.a n = (A266491 n : ℚ)

end A266491

/-! ## A266491.P17138217029633056349

`n*(and(1, C(n, 2))+1)`
-/

namespace A266491.P17138217029633056349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 (Nat.choose n 2) + 1)

end

end A266491.P17138217029633056349

namespace A266491

/-- `n*(and(1, C(n, 2))+1)` -/
def P17138217029633056349.Spec : Prop :=
  ∀ n, (P17138217029633056349.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P13058238356511188821

`gcd(2*n, C(3*n, 3))`
-/

namespace A266491.P13058238356511188821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.choose (3 * n) 3)

end

end A266491.P13058238356511188821

namespace A266491

/-- `gcd(2*n, C(3*n, 3))` -/
def P13058238356511188821.Spec : Prop :=
  ∀ n, (P13058238356511188821.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P13475825506164647519

`n*C(2, and(2, n)/2)`
-/

namespace A266491.P13475825506164647519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (SequenceMachineLib.roundAway ((Nat.land 2 n : ℚ) / 2)).toNat

end

end A266491.P13475825506164647519

namespace A266491

/-- `n*C(2, and(2, n)/2)` -/
def P13475825506164647519.Spec : Prop :=
  ∀ n, (P13475825506164647519.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P569578541201655309

`n*C(2, and(1, C(n, 2)))`
-/

namespace A266491.P569578541201655309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (Nat.land 1 (Nat.choose n 2))

end

end A266491.P569578541201655309

namespace A266491

/-- `n*C(2, and(1, C(n, 2)))` -/
def P569578541201655309.Spec : Prop :=
  ∀ n, (P569578541201655309.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P17914346973321717730

`or(2, n)%(n+2)+n`
-/

namespace A266491.P17914346973321717730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n % (n + 2) + n

end

end A266491.P17914346973321717730

namespace A266491

/-- `or(2, n)%(n+2)+n` -/
def P17914346973321717730.Spec : Prop :=
  ∀ n, (P17914346973321717730.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P5451390432634541924

`2*n-n%or(2, n)`
-/

namespace A266491.P5451390432634541924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % Nat.lor 2 n : ℕ) : ℤ)

end

end A266491.P5451390432634541924

namespace A266491

/-- `2*n-n%or(2, n)` -/
def P5451390432634541924.Spec : Prop :=
  ∀ n, P5451390432634541924.a n = A266491 n

end A266491

/-! ## A266491.P15329445561811417723

`n*(floor(n/2)%2+1)`
-/

namespace A266491.P15329445561811417723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod ⌊(n : ℚ) / 2⌋ 2 + 1)

end

end A266491.P15329445561811417723

namespace A266491

/-- `n*(floor(n/2)%2+1)` -/
def P15329445561811417723.Spec : Prop :=
  ∀ n, P15329445561811417723.a n = A266491 n

end A266491

/-! ## A266491.P3781235310638618976

`n*(2-∑[n+1]%2)`
-/

namespace A266491.P3781235310638618976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ))

end

end A266491.P3781235310638618976

namespace A266491

/-- `n*(2-∑[n+1]%2)` -/
def P3781235310638618976.Spec : Prop :=
  ∀ n, P3781235310638618976.a n = A266491 n

end A266491

/-! ## A266491.P525090112402405360

`n*(2-and(1, ∑[n+1]))`
-/

namespace A266491.P525090112402405360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A266491.P525090112402405360

namespace A266491

/-- `n*(2-and(1, ∑[n+1]))` -/
def P525090112402405360.Spec : Prop :=
  ∀ n, P525090112402405360.a n = A266491 n

end A266491

/-! ## A266491.P6451567944852096562

`n*(n+2-or(2, n))!`
-/

namespace A266491.P6451567944852096562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial ((n + 2 : ℤ) - (Nat.lor 2 n : ℤ)).toNat

end

end A266491.P6451567944852096562

namespace A266491

/-- `n*(n+2-or(2, n))!` -/
def P6451567944852096562.Spec : Prop :=
  ∀ n, (P6451567944852096562.a n : ℤ) = A266491 n

end A266491

/-! ## A266491.P2650139227918568876

`n*ceil((n+1)/or(2, n))`
-/

namespace A266491.P2650139227918568876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n + 1 : ℚ) / (Nat.lor 2 n : ℚ)⌉

end

end A266491.P2650139227918568876

namespace A266491

/-- `n*ceil((n+1)/or(2, n))` -/
def P2650139227918568876.Spec : Prop :=
  ∀ n, P2650139227918568876.a n = A266491 n

end A266491

/-!
# A266492: Number of nX2 arrays containing 2 copies of 0..n-1 with no element 1 greater than its north, west, northwest or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266492, there is no canonical definition to state claims against.
-/

/-! ## A266492.P10320088115659572936

`A266493(∑[n+2])`
-/

namespace A266492.P10320088115659572936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266492.P10320088115659572936

/-! ## A266492.P13692934401310306234

`A266493(A000096(n+1))%A002474(n)`
-/

namespace A266492.P13692934401310306234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266493 (A000096 (n + 1)).toNat) (A002474 n)

end

end A266492.P13692934401310306234

/-!
# A266493: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element 1 greater than its north, west, northwest or northeast neighbor modulo n and the upper left element equal to 0.

The programs for A266493, there is no canonical definition to state claims against.
-/

/-! ## A266493.P3029816500083410326

`A118088(A266886(n+1))`
-/

namespace A266493.P3029816500083410326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A266886 (n + 1)).toNat

end

end A266493.P3029816500083410326

/-! ## A266493.P10558681766588473511

`A177895(A267546(n+1))`
-/

namespace A266493.P10558681766588473511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177895 (A267546 (n + 1)).toNat

end

end A266493.P10558681766588473511

/-! ## A266493.P7098016379869393623

`A165577(A267546(n+1)²)`
-/

namespace A266493.P7098016379869393623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165577 (A267546 (n + 1) ^ 2).toNat

end

end A266493.P7098016379869393623

/-! ## A266493.P12655666615026805159

`A165577(A267546(n+1)^2)`
-/

namespace A266493.P12655666615026805159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165577 (A267546 (n + 1) ^ 2).toNat

end

end A266493.P12655666615026805159

/-! ## A266493.P1643572826840558522

`∑{d}[A266886(n+1), A266042(#)]`
-/

namespace A266493.P1643572826840558522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A266042 d

end

end A266493.P1643572826840558522

/-!
# A266494: Number of 3Xn arrays containing n copies of 0..3-1 with no element 1 greater than its north, west, northwest or northeast neighbor modulo 3 and the upper left element equal to 0.

The programs for A266494, there is no canonical definition to state claims against.
-/

/-! ## A266494.P10391908290615331802

`A266995(n+1)-1`
-/

namespace A266494.P10391908290615331802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266995 (n + 1) - 1

end

end A266494.P10391908290615331802

/-! ## A266494.P10787638649130855497

`abs(A266995(n+1)+-A110873(n+1)%2)`
-/

namespace A266494.P10787638649130855497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266995 (n + 1) + Int.tmod (-A110873 (n + 1)) 2|

end

end A266494.P10787638649130855497

/-! ## A266494.P1582329687885444946

`A336945(A007318(∑[n]))+A266995(n+1)`
-/

namespace A266494.P1582329687885444946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336945 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A266995 (n + 1)

end

end A266494.P1582329687885444946

/-! ## A266494.P8755161489970530344

`abs(A266995(n+1)+A008836(A000040(n+2)))`
-/

namespace A266494.P8755161489970530344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266995 (n + 1) + A008836 (A000040 (n + 2)).toNat|

end

end A266494.P8755161489970530344

/-! ## A266494.P8447713203631578308

`A267133(A266989(n+1))+A266995(n+1)`
-/

namespace A266494.P8447713203631578308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (A266989 (n + 1)).toNat + A266995 (n + 1)

end

end A266494.P8447713203631578308

/-!
# A266495: Number of 4 X n arrays containing n copies of 0..4-1 with no element 1 greater than its north, west, northwest or northeast neighbor modulo 4 and the upper left element equal to 0.

The programs for A266495, there is no canonical definition to state claims against.
-/

/-! ## A266495.P12314323199299578479

`A266493(A141214(n)+7)`
-/

namespace A266495.P12314323199299578479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (A141214 n + 7).toNat

end

end A266495.P12314323199299578479

/-! ## A266495.P9973265527637034484

`A266493(A052905(n)+9)`
-/

namespace A266495.P9973265527637034484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (A052905 n + 9).toNat

end

end A266495.P9973265527637034484

/-! ## A266495.P3506928627805633659

`A266493(A055999(n)+10)`
-/

namespace A266495.P3506928627805633659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (A055999 n + 10).toNat

end

end A266495.P3506928627805633659

/-! ## A266495.P12370967510497109557

`A266493(eq[5, A066657(n)])`
-/

namespace A266495.P12370967510497109557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266495.P12370967510497109557

/-!
# A266496: Number of 5 X n arrays containing n copies of 0..5-1 with no element 1 greater than its north, west, northwest or northeast neighbor modulo 5 and the upper left element equal to 0.

The programs for A266496, there is no canonical definition to state claims against.
-/

/-! ## A266496.P15496762999114260603

`A266493(A167499(n+3))`
-/

namespace A266496.P15496762999114260603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (A167499 (n + 3)).toNat

end

end A266496.P15496762999114260603

/-! ## A266496.P13789043275911900437

`A266493(A155212(n)+13)`
-/

namespace A266496.P13789043275911900437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (A155212 n + 13).toNat

end

end A266496.P13789043275911900437

/-! ## A266496.P7772154442986797945

`A266493(A056000(n)+15)`
-/

namespace A266496.P7772154442986797945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266493 (A056000 n + 15).toNat

end

end A266496.P7772154442986797945

/-!
# A266497: Binomial transform of A015128.

The programs for A266497, there is no canonical definition to state claims against.
-/

/-! ## A266497.P9089560447237447691

`∑[A318570(n)]`
-/

namespace A266497.P9089560447237447691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266497.P9089560447237447691

/-! ## A266497.P17913694958099880867

`A318570(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A266497.P17913694958099880867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318570 n + a (A023443 n).toNat

end

end A266497.P17913694958099880867

/-! ## A266497.P10790494560527438551

`A318570(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A266497.P10790494560527438551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318570 n + a (A028310 n - 1).toNat

end

end A266497.P10790494560527438551

/-! ## A266497.P8972401034314410429

`A318570(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A266497.P8972401034314410429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318570 n + a (A000027 (n + 1) - 2).toNat

end

end A266497.P8972401034314410429

/-! ## A266497.P14588167365262483948

`A318570(n)+a(n-A000005(gcd(n, n+1)))` with `a(0)=1`
-/

namespace A266497.P14588167365262483948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318570 n + a ((n : ℤ) - A000005 (Nat.gcd n (n + 1))).toNat

end

end A266497.P14588167365262483948

/-!
# A266498: Index of the smallest triangular number greater than 3^n.

The programs for A266498, the canonical program `A266498.P14967402616786672958` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266498 has offset 0).

The definition of A266498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266498.P13243492481828049953

`round(sqrt(2*3^n+1))`
-/

namespace A266498.P13243492481828049953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * 3 ^ n + 1 : ℝ))

end

end A266498.P13243492481828049953

namespace A266498

/-- `round(sqrt(2*3^n+1))` -/
def P13243492481828049953.Spec : Prop :=
  ∀ n, P13243492481828049953.a n = A266498 n

end A266498

/-! ## A266498.P14967402616786672958

`A002024(3^n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266498

/-- `A002024(3^n+1)` -/
def P14967402616786672958.Spec : Prop :=
  ∀ n, P14967402616786672958.a n = A266498 n

theorem P14967402616786672958.correct : P14967402616786672958.Spec := by
  intro n
  simp only [A266498]

end A266498

/-! ## A266498.P11676957669661922770

`A123578(3^n+1)`
-/

namespace A266498.P11676957669661922770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (3 ^ n + 1)

end

end A266498.P11676957669661922770

namespace A266498

/-- `A123578(3^n+1)` -/
def P11676957669661922770.Spec : Prop :=
  ∀ n, P11676957669661922770.a n = A266498 n

end A266498

/-! ## A266498.P4706971837289407224

`floor(A008776(n)/A221944(n))`
-/

namespace A266498.P4706971837289407224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008776 n : ℚ) / (A221944 n : ℚ)⌋

end

end A266498.P4706971837289407224

namespace A266498

/-- `floor(A008776(n)/A221944(n))` -/
def P4706971837289407224.Spec : Prop :=
  ∀ n, P4706971837289407224.a n = A266498 n

end A266498

/-! ## A266498.P1959292076962056264

`round(sqrt(A198635(n)))%A198635(n)`
-/

namespace A266498.P1959292076962056264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A198635 n : ℝ))) (A198635 n)

end

end A266498.P1959292076962056264

namespace A266498

/-- `round(sqrt(A198635(n)))%A198635(n)` -/
def P1959292076962056264.Spec : Prop :=
  ∀ n, P1959292076962056264.a n = A266498 n

end A266498

/-! ## A266498.P162628930727466190

`A034947(n+1)²*round(sqrt(A198635(n)))`
-/

namespace A266498.P162628930727466190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (A198635 n : ℝ))

end

end A266498.P162628930727466190

namespace A266498

/-- `A034947(n+1)²*round(sqrt(A198635(n)))` -/
def P162628930727466190.Spec : Prop :=
  ∀ n, P162628930727466190.a n = A266498 n

end A266498

/-! ## A266498.P18140252279008689911

`A053387(2*n+1)+round(sqrt(A198635(n)))`
-/

namespace A266498.P18140252279008689911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A198635 n : ℝ))

end

end A266498.P18140252279008689911

namespace A266498

/-- `A053387(2*n+1)+round(sqrt(A198635(n)))` -/
def P18140252279008689911.Spec : Prop :=
  ∀ n, P18140252279008689911.a n = A266498 n

end A266498

