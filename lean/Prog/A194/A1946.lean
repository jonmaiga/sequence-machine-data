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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-!
# A194600: Record values in A194591.

The programs for A194600, there is no canonical definition to state claims against.
-/

/-! ## A194600.P16414017806500681757

`A194637(A084193(∑[n]))`
-/

namespace A194600.P16414017806500681757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194637 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194600.P16414017806500681757

/-! ## A194600.P13467725692477238782

`A194637(A071786(n+1))`
-/

namespace A194600.P13467725692477238782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194637 (A071786 (n + 1)).toNat

end

end A194600.P13467725692477238782

/-! ## A194600.P15232951554041926185

`A194637(A341090(n+1))`
-/

namespace A194600.P15232951554041926185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194637 (A341090 (n + 1)).toNat

end

end A194600.P15232951554041926185

/-! ## A194600.P12449839508355669297

`A194637(A355224(n)+1)`
-/

namespace A194600.P12449839508355669297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194637 (A355224 n + 1).toNat

end

end A194600.P12449839508355669297

/-! ## A194600.P18413871278702533670

`A194637(A004884(n+1)+1)`
-/

namespace A194600.P18413871278702533670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194637 (A004884 (n + 1) + 1).toNat

end

end A194600.P18413871278702533670

/-!
# A194602: Integer partitions interpreted as binary numbers.

The programs for A194602, the canonical program `A194602.P705746156502626667` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194602 has offset 0).

The definition of A194602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194602.P4558728424612930166

`A228354(1+n)-1`
-/

namespace A194602.P4558728424612930166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (1 + n) - 1

end

end A194602.P4558728424612930166

namespace A194602

/-- `A228354(1+n)-1` -/
def P4558728424612930166.Spec : Prop :=
  ∀ n, P4558728424612930166.a n = A194602 n

end A194602

/-! ## A194602.P9623911012783877324

`record[n/A286552(n)]`
-/

namespace A194602.P9623911012783877324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A286552 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194602.P9623911012783877324

namespace A194602

/-- `record[n/A286552(n)]` -/
def P9623911012783877324.Spec : Prop :=
  ∀ n, P9623911012783877324.a n = (A194602 n : ℚ)

end A194602

/-! ## A194602.P14601207781198810339

`eq[1, A286552(n)]`
-/

namespace A194602.P14601207781198810339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194602.P14601207781198810339

namespace A194602

/-- `eq[1, A286552(n)]` -/
def P14601207781198810339.Spec : Prop :=
  ∀ n, (P14601207781198810339.a n : ℤ) = A194602 n

end A194602

/-! ## A194602.P4976846455600850958

`eq[1, A366877(n)]`
-/

namespace A194602.P4976846455600850958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194602.P4976846455600850958

namespace A194602

/-- `eq[1, A366877(n)]` -/
def P4976846455600850958.Spec : Prop :=
  ∀ n, (P4976846455600850958.a n : ℤ) = A194602 n

end A194602

/-! ## A194602.P705746156502626667

`eq[1, A326956(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A194602

/-- `eq[1, A326956(n+1)]` -/
def P705746156502626667.Spec : Prop :=
  ∀ n, (P705746156502626667.a n : ℤ) = A194602 n

theorem P705746156502626667.correct : P705746156502626667.Spec := by
  intro n
  simp only [A194602]

end A194602

/-! ## A194602.P15156143461870754383

`eq[1, A337377(n)]`
-/

namespace A194602.P15156143461870754383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194602.P15156143461870754383

namespace A194602

/-- `eq[1, A337377(n)]` -/
def P15156143461870754383.Spec : Prop :=
  ∀ n, (P15156143461870754383.a n : ℤ) = A194602 n

end A194602

/-! ## A194602.P8320528875142523451

`record[A331856(2*n)]`
-/

namespace A194602.P8320528875142523451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194602.P8320528875142523451

namespace A194602

/-- `record[A331856(2*n)]` -/
def P8320528875142523451.Spec : Prop :=
  ∀ n, P8320528875142523451.a n = A194602 n

end A194602

/-! ## A194602.P6748364748346300670

`eq[A005940(n+1), A278222(n)]`
-/

namespace A194602.P6748364748346300670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194602.P6748364748346300670

namespace A194602

/-- `eq[A005940(n+1), A278222(n)]` -/
def P6748364748346300670.Spec : Prop :=
  ∀ n, (P6748364748346300670.a n : ℤ) = A194602 n

end A194602

/-! ## A194602.P17865035749843726897

`A331856(eq[n, 2*A331856(n)])`
-/

namespace A194602.P17865035749843726897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194602.P17865035749843726897

namespace A194602

/-- `A331856(eq[n, 2*A331856(n)])` -/
def P17865035749843726897.Spec : Prop :=
  ∀ n, P17865035749843726897.a n = A194602 n

end A194602

/-! ## A194602.P3705643066560660821

`A331856(eq[n/2, A331856(n)])`
-/

namespace A194602.P3705643066560660821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A194602.P3705643066560660821

namespace A194602

/-- `A331856(eq[n/2, A331856(n)])` -/
def P3705643066560660821.Spec : Prop :=
  ∀ n, P3705643066560660821.a n = A194602 n

end A194602

/-! ## A194602.P11747814221596771886

`record[A005843(n)/(2*A337377(n))]`
-/

namespace A194602.P11747814221596771886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (2 * A337377 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194602.P11747814221596771886

namespace A194602

/-- `record[A005843(n)/(2*A337377(n))]` -/
def P11747814221596771886.Spec : Prop :=
  ∀ n, P11747814221596771886.a n = (A194602 n : ℚ)

end A194602

/-! ## A194602.P3491574837553759853

`record[A331856(n)%A331856(n+1)]`
-/

namespace A194602.P3491574837553759853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331856 n) (A331856 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194602.P3491574837553759853

namespace A194602

/-- `record[A331856(n)%A331856(n+1)]` -/
def P3491574837553759853.Spec : Prop :=
  ∀ n, P3491574837553759853.a n = A194602 n

end A194602

/-! ## A194602.P2904015756213308245

`record[n/A337377(n)]%A005109(n+1)`
-/

namespace A194602.P2904015756213308245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A337377 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A005109 (n + 1))

end

end A194602.P2904015756213308245

namespace A194602

/-- `record[n/A337377(n)]%A005109(n+1)` -/
def P2904015756213308245.Spec : Prop :=
  ∀ n, P2904015756213308245.a n = A194602 n

end A194602

/-!
# A194603: Smallest prime either of the form n*2^k - 1 or n*2^k + 1, k >= 0, or 0 if no such prime exists.

The programs for A194603, there is no canonical definition to state claims against.
-/

/-! ## A194603.P8397215922303394767

`A115350(A093868(n+1))`
-/

namespace A194603.P8397215922303394767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115350 (A093868 (n + 1)).toNat

end

end A194603.P8397215922303394767

/-! ## A194603.P6476380463885839627

`A006530(2*A093868(n+1)²)`
-/

namespace A194603.P6476380463885839627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A093868 (n + 1) ^ 2).toNat

end

end A194603.P6476380463885839627

/-! ## A194603.P17486998968560500483

`A093868(n+1)%A103471(n+3)`
-/

namespace A194603.P17486998968560500483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093868 (n + 1)) (A103471 (n + 3))

end

end A194603.P17486998968560500483

/-! ## A194603.P16379362639394555823

`A093868(n+1)+A000038(A039599(n))`
-/

namespace A194603.P16379362639394555823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1) + A000038 (A039599 n).toNat

end

end A194603.P16379362639394555823

/-! ## A194603.P18407531334513360944

`A020639(A060192(n)*A093868(n+1))`
-/

namespace A194603.P18407531334513360944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A060192 n * A093868 (n + 1)).toNat

end

end A194603.P18407531334513360944

/-!
# A194605: Number of ways to place 2 nonattacking kings on an n X n X n X n raumschach board (four-dimensional chessboard).

The programs for A194605, there is no canonical definition to state claims against.
-/

/-! ## A194605.P5643496566160337520

`A194604(A167614(n+1)+A048766(n))`
-/

namespace A194605.P5643496566160337520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A167614 (n + 1) + A048766 n).toNat

end

end A194605.P5643496566160337520

/-! ## A194605.P14108317010481309304

`A194604(A167614(n+1)+A057427(n))`
-/

namespace A194605.P14108317010481309304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A167614 (n + 1) + A057427 n).toNat

end

end A194605.P14108317010481309304

/-! ## A194605.P5087633487455021513

`A194604(A167614(n+1)-A057428(n))`
-/

namespace A194605.P5087633487455021513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A167614 (n + 1) - A057428 n).toNat

end

end A194605.P5087633487455021513

/-! ## A194605.P14585656678021026028

`A194604(A167614(n+1)+A057428(n)²)`
-/

namespace A194605.P14585656678021026028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194604 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A194605.P14585656678021026028

/-!
# A194606: Least k >= 0 such that prime(n)*2^k - 1 or prime(n)*2^k + 1 is prime, or -1 if no such value exists, where prime(n) denotes the n-th prime number.

The programs for A194606, there is no canonical definition to state claims against.
-/

/-! ## A194606.P6471158621603068454

`A194636(A111333(n+1))`
-/

namespace A194606.P6471158621603068454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A111333 (n + 1)).toNat

end

end A194606.P6471158621603068454

/-! ## A194606.P3938758079544626752

`A194636(A130291(n+1))`
-/

namespace A194606.P3938758079544626752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A130291 (n + 1)).toNat

end

end A194606.P3938758079544626752

/-! ## A194606.P2326949225311974616

`A194636(A102781(n+1)+1)`
-/

namespace A194606.P2326949225311974616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A102781 (n + 1) + 1).toNat

end

end A194606.P2326949225311974616

/-! ## A194606.P7523793685522323951

`A194636(A130290(n+1)+1)`
-/

namespace A194606.P7523793685522323951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A130290 (n + 1) + 1).toNat

end

end A194606.P7523793685522323951

/-! ## A194606.P10071705172571213238

`A194636(record[A006530(2*n+1)-n])`
-/

namespace A194606.P10071705172571213238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194606.P10071705172571213238

/-! ## A194606.P11565498830012176489

`A194636(A110654(p?[A143051(n)]))`
-/

namespace A194606.P11565498830012176489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (A110654 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A194606.P11565498830012176489

/-! ## A194606.P8064849434190213376

`A194636(record[A110654(A006530(n+1))])`
-/

namespace A194606.P8064849434190213376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194606.P8064849434190213376

/-! ## A194606.P619684946428403364

`A194591(A000040(n+1))`
-/

namespace A194606.P619684946428403364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A000040 (n + 1)).toNat

end

end A194606.P619684946428403364

/-! ## A194606.P17570490361141573888

`A194591(A006005(n+1))`
-/

namespace A194606.P17570490361141573888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A006005 (n + 1)).toNat

end

end A194606.P17570490361141573888

/-! ## A194606.P2021768960199424415

`A194591(A063884(n+1))`
-/

namespace A194606.P2021768960199424415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A063884 (n + 1)).toNat

end

end A194606.P2021768960199424415

/-! ## A194606.P1284087464026350537

`A194591(A063904(n+1))`
-/

namespace A194606.P1284087464026350537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A063904 (n + 1)).toNat

end

end A194606.P1284087464026350537

/-! ## A194606.P11312396981961795799

`A194591(A318871(n+1))`
-/

namespace A194606.P11312396981961795799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A318871 (n + 1)).toNat

end

end A194606.P11312396981961795799

/-! ## A194606.P1334206096007656138

`A194591(A008578(n+2))`
-/

namespace A194606.P1334206096007656138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A008578 (n + 2)).toNat

end

end A194606.P1334206096007656138

/-! ## A194606.P7694154597455051810

`A194591(A075643(n+2))`
-/

namespace A194606.P7694154597455051810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A075643 (n + 2)).toNat

end

end A194606.P7694154597455051810

/-! ## A194606.P2517966561387161188

`A194591(A175787(n+2))`
-/

namespace A194606.P2517966561387161188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A175787 (n + 2)).toNat

end

end A194606.P2517966561387161188

/-! ## A194606.P1563780498791537605

`A194591(record[A006530(n+2)])`
-/

namespace A194606.P1563780498791537605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194606.P1563780498791537605

/-! ## A194606.P8568290399043510064

`A194591(record[A014963(n+2)])`
-/

namespace A194606.P8568290399043510064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194606.P8568290399043510064

/-! ## A194606.P2094027689216851901

`A194591(record[A020639(n+2)])`
-/

namespace A194606.P2094027689216851901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194606.P2094027689216851901

/-!
# A194607: Record values in A194606.

The programs for A194607, there is no canonical definition to state claims against.
-/

/-! ## A194607.P15568913538812262448

`record[A194606(n+1)]`
-/

namespace A194607.P15568913538812262448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194607.P15568913538812262448

/-! ## A194607.P8900887542372798909

`A194637(n+1)-A285205((81*n+80)*(n+1))`
-/

namespace A194607.P8900887542372798909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194637 (n + 1) - A285205 ((81 * n + 80) * (n + 1))

end

end A194607.P8900887542372798909

/-! ## A194607.P14912199552970008376

`A194600(n+1)-A353525(A360863(n+2))`
-/

namespace A194607.P14912199552970008376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194600 (n + 1) - A353525 (A360863 (n + 2)).toNat

end

end A194607.P14912199552970008376

/-! ## A194607.P4726208167321118569

`A194600(n+1)-A011658(A189867(n+3))`
-/

namespace A194607.P4726208167321118569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194600 (n + 1) - A011658 (A189867 (n + 3)).toNat

end

end A194607.P4726208167321118569

/-!
# A194608: Smallest prime either of the form prime(n)*2^k - 1 or prime(n)*2^k + 1, k >= 0, or 0 if no such prime exists, where prime(n) denotes the n-th prime number.

The programs for A194608, there is no canonical definition to state claims against.
-/

/-! ## A194608.P3528878098804724219

`A194638(A111333(n+1))+A000007(n)`
-/

namespace A194608.P3528878098804724219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194638 (A111333 (n + 1)).toNat + A000007 n

end

end A194608.P3528878098804724219

/-! ## A194608.P14481554708502019839

`A194638(A130291(n+1))+A000007(n)`
-/

namespace A194608.P14481554708502019839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194638 (A130291 (n + 1)).toNat + A000007 n

end

end A194608.P14481554708502019839

/-! ## A194608.P5261871623901727890

`or(A005171(n+1), A194638(A111333(n+1)))`
-/

namespace A194608.P5261871623901727890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005171 (n + 1)) (A194638 (A111333 (n + 1)).toNat)

end

end A194608.P5261871623901727890

/-! ## A194608.P10018050609601646068

`or(A005171(n+1), A194638(A130291(n+1)))`
-/

namespace A194608.P10018050609601646068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005171 (n + 1)) (A194638 (A130291 (n + 1)).toNat)

end

end A194608.P10018050609601646068

/-! ## A194608.P5234272753732686924

`A194638(A111333(n+1))+A008683((n+1)²)`
-/

namespace A194608.P5234272753732686924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194638 (A111333 (n + 1)).toNat + A008683 ((n + 1) ^ 2)

end

end A194608.P5234272753732686924

/-! ## A194608.P8776023181253369926

`A194638(A111333(n+1))+A010051(2*(n+1))`
-/

namespace A194608.P8776023181253369926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194638 (A111333 (n + 1)).toNat + A010051 (2 * (n + 1))

end

end A194608.P8776023181253369926

/-! ## A194608.P9854648535962660080

`A194603(Δ[A007504(n)])`
-/

namespace A194608.P9854648535962660080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (f1 (n + 1) - f1 n).toNat

end

end A194608.P9854648535962660080

/-! ## A194608.P17939402063440854413

`A194603(record[A051698(n)])`
-/

namespace A194608.P17939402063440854413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194608.P17939402063440854413

/-! ## A194608.P16361161834650593850

`A194603(A000040(n+1))`
-/

namespace A194608.P16361161834650593850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A000040 (n + 1)).toNat

end

end A194608.P16361161834650593850

/-! ## A194608.P2432858408045694267

`A194603(A008578(n+2))`
-/

namespace A194608.P2432858408045694267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A008578 (n + 2)).toNat

end

end A194608.P2432858408045694267

/-! ## A194608.P14844820004833328737

`A194603(A182986(n+2))`
-/

namespace A194608.P14844820004833328737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A182986 (n + 2)).toNat

end

end A194608.P14844820004833328737

/-! ## A194608.P16019392700845647142

`A194603(eq[1, A003415(n)])`
-/

namespace A194608.P16019392700845647142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194608.P16019392700845647142

/-! ## A194608.P4036779112023643733

`A194603(record[A006530(n+2)])`
-/

namespace A194608.P4036779112023643733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194608.P4036779112023643733

/-! ## A194608.P2080689266638117628

`A194603(record[A014963(n+2)])`
-/

namespace A194608.P2080689266638117628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194608.P2080689266638117628

/-! ## A194608.P15081213012022697517

`A194603(record[A020639(n+2)])`
-/

namespace A194608.P15081213012022697517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194608.P15081213012022697517

/-! ## A194608.P15807610964666066366

`A194603(eq[n, A194603(n+1)])`
-/

namespace A194608.P15807610964666066366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194608.P15807610964666066366

/-! ## A194608.P12829529510620306647

`A194603(A014688(n+1)-(n+1))`
-/

namespace A194608.P12829529510620306647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A194608.P12829529510620306647

/-! ## A194608.P6949620737640508444

`A194603(A007504(n+1)-A007504(n))`
-/

namespace A194608.P6949620737640508444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A007504 (n + 1) - A007504 n).toNat

end

end A194608.P6949620737640508444

/-!
# A194609: Half the number of lower triangles of an (n+1) X (n+1) 0..2 array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194609, there is no canonical definition to state claims against.
-/

/-! ## A194609.P9116261496880395054

`A194615(∑[n+2])`
-/

namespace A194609.P9116261496880395054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194609.P9116261496880395054

/-! ## A194609.P6746075762184027458

`record[A194615(Δ[A003453(n+5)])]`
-/

namespace A194609.P6746075762184027458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194609.P6746075762184027458

/-! ## A194609.P10029197859686478585

`A326523(n)+A194615(A000096(n+1))`
-/

namespace A194609.P10029197859686478585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 n + A194615 (A000096 (n + 1)).toNat

end

end A194609.P10029197859686478585

/-! ## A194609.P7795889929622472665

`A194615(A000096(n+1))+A000038(n+2)`
-/

namespace A194609.P7795889929622472665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A000096 (n + 1)).toNat + A000038 (n + 2)

end

end A194609.P7795889929622472665

/-!
# A194610: Half the number of lower triangles of an (n+1) X (n+1) 0..3 array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194610, there is no canonical definition to state claims against.
-/

/-! ## A194610.P4159474300048189621

`A194615(∑[n+3]+1)`
-/

namespace A194610.P4159474300048189621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194610.P4159474300048189621

/-!
# A194611: Half the number of lower triangles of an (n+1) X (n+1) 0..4 array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194611, there is no canonical definition to state claims against.
-/

/-! ## A194611.P6709558741714025972

`A194615(A141214(n+1))`
-/

namespace A194611.P6709558741714025972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A141214 (n + 1)).toNat

end

end A194611.P6709558741714025972

/-! ## A194611.P3494832937957741211

`A194615(A056000(n)+7)`
-/

namespace A194611.P3494832937957741211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A056000 n + 7).toNat

end

end A194611.P3494832937957741211

/-! ## A194611.P1844419855550872500

`A194615(eq[2, A350529(n)])`
-/

namespace A194611.P1844419855550872500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194611.P1844419855550872500

/-!
# A194612: Half the number of lower triangles of an (n+1) X (n+1) 0..5 array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194612, there is no canonical definition to state claims against.
-/

/-! ## A194612.P7263530383656266429

`A194615(eq[4, A193592(n)])`
-/

namespace A194612.P7263530383656266429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194612.P7263530383656266429

/-!
# A194613: 

The programs for A194613, there is no canonical definition to state claims against.
-/

/-! ## A194613.P3291778244008097517

`A194615(eq[5, A193592(n)])`
-/

namespace A194613.P3291778244008097517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194613.P3291778244008097517

/-!
# A194614: 

The programs for A194614, there is no canonical definition to state claims against.
-/

/-! ## A194614.P17118089912194839217

`A194615(eq[4, A219347(n)])`
-/

namespace A194614.P17118089912194839217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194614.P17118089912194839217

/-!
# A194616: Half the number of lower triangles of a 3X3 0..n array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194616, there is no canonical definition to state claims against.
-/

/-! ## A194616.P1284649927830659362

`A194615(∑[n+1]+2)`
-/

namespace A194616.P1284649927830659362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A194616.P1284649927830659362

/-! ## A194616.P7643450253126127541

`record[A194615(A133263(abs(1-n)))]`
-/

namespace A194616.P7643450253126127541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194616.P7643450253126127541

/-! ## A194616.P16056252385751474561

`record[A010054(n)*A194615(n+2)]`
-/

namespace A194616.P16056252385751474561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A194615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194616.P16056252385751474561

/-! ## A194616.P7482334412788205282

`record[gcd(A136431(n), A194615(n+2))]`
-/

namespace A194616.P7482334412788205282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136431 n) (A194615 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194616.P7482334412788205282

/-!
# A194617: Half the number of lower triangles of a 4 X 4 0..n array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194617, there is no canonical definition to state claims against.
-/

/-! ## A194617.P7709228155629066740

`A194615(∑[n+2]+4)`
-/

namespace A194617.P7709228155629066740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A194617.P7709228155629066740

/-! ## A194617.P16659304830320329854

`A194615(A167614(n+1))+A160145(n)`
-/

namespace A194617.P16659304830320329854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A167614 (n + 1)).toNat + A160145 n

end

end A194617.P16659304830320329854

/-! ## A194617.P595732192495820344

`lcm(A033999(n), A194615(A167614(n+1)))`
-/

namespace A194617.P595732192495820344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194615 (A167614 (n + 1)).toNat)

end

end A194617.P595732192495820344

/-! ## A194617.P9991957352821354015

`or(A000007(n), A194615(A167614(n+1)))`
-/

namespace A194617.P9991957352821354015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194615 (A167614 (n + 1)).toNat)

end

end A194617.P9991957352821354015

/-! ## A194617.P14125796676172670409

`A194615(A167614(n+1))%A194618(n+1)`
-/

namespace A194617.P14125796676172670409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194615 (A167614 (n + 1)).toNat) (A194618 (n + 1))

end

end A194617.P14125796676172670409

/-!
# A194618: Half the number of lower triangles of a 5 X 5 0..n array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194618, there is no canonical definition to state claims against.
-/

/-! ## A194618.P1659840073605512773

`A194615(∑[n+3]+7)`
-/

namespace A194618.P1659840073605512773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A194618.P1659840073605512773

/-!
# A194619: Half the number of lower triangles of a 6 X 6 0..n array with no element equal to the average of its horizontal and vertical neighbors.

The programs for A194619, there is no canonical definition to state claims against.
-/

/-! ## A194619.P8255881441920064497

`A194615(A167499(n+3))`
-/

namespace A194619.P8255881441920064497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A167499 (n + 3)).toNat

end

end A194619.P8255881441920064497

/-! ## A194619.P16907172853105668945

`A194615(A056000(n)+15)`
-/

namespace A194619.P16907172853105668945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A056000 n + 15).toNat

end

end A194619.P16907172853105668945

/-! ## A194619.P3894153949494522595

`A194615(eq[6, A131818(n+1)])`
-/

namespace A194619.P3894153949494522595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194619.P3894153949494522595

/-!
# A194620: 

The programs for A194620, there is no canonical definition to state claims against.
-/

/-! ## A194620.P16991778741658422400

`A194615(A167499(n+4)+1)`
-/

namespace A194620.P16991778741658422400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A167499 (n + 4) + 1).toNat

end

end A194620.P16991778741658422400

/-! ## A194620.P7478261950264092974

`A194615(A000124(n+5)+5)`
-/

namespace A194620.P7478261950264092974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194615 (A000124 (n + 5) + 5).toNat

end

end A194620.P7478261950264092974

/-!
# A194626: Numbers n such that next term of Hofstadter's Q-sequence differs by 1.

The programs for A194626, there is no canonical definition to state claims against.
-/

/-! ## A194626.P11265080854372576536

`eq[1, A081827(n+1)]+1`
-/

namespace A194626.P11265080854372576536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194626.P11265080854372576536

/-! ## A194626.P10859410066296424059

`eq[1, A081827(A028310(n))]`
-/

namespace A194626.P10859410066296424059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194626.P10859410066296424059

/-! ## A194626.P553800511064142076

`A020725(eq[1, A081827(n+1)])`
-/

namespace A194626.P553800511064142076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194626.P553800511064142076

/-! ## A194626.P12716475249139310073

`eq[1, A081827(A000007(n)+n)]`
-/

namespace A194626.P12716475249139310073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194626.P12716475249139310073

/-! ## A194626.P11535091918980662212

`record[A081830(n+1)/A081827(A081830(n+1))]`
-/

namespace A194626.P11535091918980662212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081830 (n + 1) : ℚ) / (A081827 (A081830 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194626.P11535091918980662212

/-! ## A194626.P494366493320449636

`eq[1, A081827(A065033(2*n))]`
-/

namespace A194626.P494366493320449636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194626.P494366493320449636

/-! ## A194626.P15234370489253575823

`eq[1, A081827(A123108(2*n))]`
-/

namespace A194626.P15234370489253575823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081827 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194626.P15234370489253575823

/-!
# A194627: a(1)=1, a(n+1) = p(n)^2 + q(n)^2 + 1, where p(n) and q(n) are the number of prime and nonprime numbers respectively in the sequence so far.

The programs for A194627, there is no canonical definition to state claims against.
-/

/-! ## A194627.P8402344900012530749

`A227564(n)-A185284(A008574(n))`
-/

namespace A194627.P8402344900012530749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227564 (n + 37) - A185284 (A008574 n).toNat

end

end A194627.P8402344900012530749

/-! ## A194627.P12034642606882524848

`A320595(n)-11*A185284(A096231(n))`
-/

namespace A194627.P12034642606882524848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320595 (n + 16) - 11 * A185284 (A096231 n).toNat

end

end A194627.P12034642606882524848

/-! ## A194627.P14173979159510459566

`A003003(A261203(n))-A165974(A248928(n))`
-/

namespace A194627.P14173979159510459566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A261203 n).toNat - A165974 (A248928 n).toNat

end

end A194627.P14173979159510459566

/-! ## A194627.P16945211961295025429

`A003003(A262968(n))-A165974(A248928(n))`
-/

namespace A194627.P16945211961295025429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A262968 n).toNat - A165974 (A248928 n).toNat

end

end A194627.P16945211961295025429

/-! ## A194627.P9554271168979178500

`∑[A156225(∑[n]+n)]`
-/

namespace A194627.P9554271168979178500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156225 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194627.P9554271168979178500

/-!
# A194628: Arises in enumerating Huffman codes, compact trees, and sums of unit fractions.

The programs for A194628, there is no canonical definition to state claims against.
-/

/-! ## A194628.P16699682626519297594

`A294775(∑[n+5]+5)`
-/

namespace A194628.P16699682626519297594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A194628.P16699682626519297594

/-! ## A194628.P8803315628563453288

`A294775(A000124(n+5)-6)%(2^(n+1))`
-/

namespace A194628.P8803315628563453288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A000124 (n + 5) - 6).toNat) (2 ^ (n + 1) : ℤ)

end

end A194628.P8803315628563453288

/-! ## A194628.P16984767773612529118

`gcd(A000038(n), A294775(A000124(n+5)-6))`
-/

namespace A194628.P16984767773612529118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294775 (A000124 (n + 5) - 6).toNat)

end

end A194628.P16984767773612529118

/-! ## A194628.P10877769026999070215

`dr(A033999(n))*A294775(A000124(n+5)-6)`
-/

namespace A194628.P10877769026999070215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A033999 n) : ℤ) * A294775 (A000124 (n + 5) - 6).toNat

end

end A194628.P10877769026999070215

/-! ## A194628.P3034663968873957611

`A294775(A000124(n+5)-6)+char[A017055(n)]`
-/

namespace A194628.P3034663968873957611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017055 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000124 (n + 5) - 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A194628.P3034663968873957611

/-! ## A194628.P13643709079620576508

`char[A061579(n)]*A294775(A000124(n+5)-6)`
-/

namespace A194628.P13643709079620576508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A294775 (A000124 (n + 5) - 6).toNat

end

end A194628.P13643709079620576508

/-! ## A194628.P17920505256992905150

`A294775(A000124(n+5)-6)+A000007(n+1)`
-/

namespace A194628.P17920505256992905150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000124 (n + 5) - 6).toNat + A000007 (n + 1)

end

end A194628.P17920505256992905150

/-! ## A194628.P15158110749953138019

`A294775(A000124(n+5)-6)+char[A069275(n+1)]`
-/

namespace A194628.P15158110749953138019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000124 (n + 5) - 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A194628.P15158110749953138019

/-! ## A194628.P9925460844635900896

`A294775(A000124(n+5)-6)/A014963(6*(n+2))`
-/

namespace A194628.P9925460844635900896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) / (A014963 (6 * (n + 2)) : ℚ)

end

end A194628.P9925460844635900896

/-! ## A194628.P6441062488075884567

`A294775(A000124(n+5)-6)+A000122(7*n+6)`
-/

namespace A194628.P6441062488075884567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000124 (n + 5) - 6).toNat + A000122 (7 * n + 6)

end

end A194628.P6441062488075884567

/-! ## A194628.P6700547540526778802

`A294775(A000124(n+5)-6)/A045802(n+1)%2`
-/

namespace A194628.P6700547540526778802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) / (Int.tmod (A045802 (n + 1)) 2 : ℚ)

end

end A194628.P6700547540526778802

/-! ## A194628.P2890929583382475439

`lcm(A014963(12*n+6), A294775(A000124(n+5)-6))`
-/

namespace A194628.P2890929583382475439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (12 * n + 6)) (A294775 (A000124 (n + 5) - 6).toNat)

end

end A194628.P2890929583382475439

/-! ## A194628.P8442613920318312235

`A294775(A000124(n+5)-6)/(A000027(n+1)-n)`
-/

namespace A194628.P8442613920318312235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A194628.P8442613920318312235

/-! ## A194628.P4331931125625068059

`A294775(A000124(n+5)-6)^A014963(A139544(n+2))`
-/

namespace A194628.P4331931125625068059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) ^ (A014963 (A139544 (n + 2)).toNat : ℤ)

end

end A194628.P4331931125625068059

/-! ## A194628.P9873513428300598614

`A294775(A000124(n+5)-6)^A014963(2*A000040(n+1))`
-/

namespace A194628.P9873513428300598614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) ^ (A014963 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A194628.P9873513428300598614

/-! ## A194628.P7841526271721747529

`A294775(A000124(n+5)-6)^A014963(A000027(n+1)-n)`
-/

namespace A194628.P7841526271721747529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) ^ (A014963 (A000027 (n + 1) - (n : ℤ)).toNat : ℤ)

end

end A194628.P7841526271721747529

/-! ## A194628.P4359405565558245312

`A294775(A000124(n+5)-6)/A176740(A094497(n))²`
-/

namespace A194628.P4359405565558245312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000124 (n + 5) - 6).toNat : ℚ) / (A176740 (A094497 n).toNat ^ 2 : ℚ)

end

end A194628.P4359405565558245312

/-!
# A194629: Arises in enumerating Huffman codes, compact trees, and sums of unit fractions.

The programs for A194629, there is no canonical definition to state claims against.
-/

/-! ## A194629.P11102052705224587944

`A294775((n+4)²-∑[n+1])`
-/

namespace A194629.P11102052705224587944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194629.P11102052705224587944

/-! ## A194629.P15869327894613043409

`A007318(∑[n])*A294775(A000217(n+6)-6)`
-/

namespace A194629.P15869327894613043409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A294775 (A000217 (n + 6) - 6).toNat

end

end A194629.P15869327894613043409

/-! ## A194629.P8531213541798957982

`A071919(∑[n])*A294775(A000217(n+6)-6)`
-/

namespace A194629.P8531213541798957982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (∑ j ∈ Finset.range (n + 1), f1 j) * A294775 (A000217 (n + 6) - 6).toNat

end

end A194629.P8531213541798957982

/-! ## A194629.P5568573323358708358

`A294775(A000217(n+6)-6)%A282390(n+1)`
-/

namespace A194629.P5568573323358708358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294775 (A000217 (n + 6) - 6).toNat) (A282390 (n + 1))

end

end A194629.P5568573323358708358

/-! ## A194629.P1827469709922652771

`A294775(A000217(n+6)-6)/A007318(∑[n+2])`
-/

namespace A194629.P1827469709922652771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294775 (A000217 (n + 6) - 6).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A194629.P1827469709922652771

/-! ## A194629.P16829138081873849487

`A294775(A000217(n+6)-6)+A190938(A100484(n+1))`
-/

namespace A194629.P16829138081873849487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 6) - 6).toNat + A190938 (A100484 (n + 1)).toNat

end

end A194629.P16829138081873849487

/-! ## A194629.P7770304757214831018

`A294775(A000217(n+6)-6)+A129251(A327934(n+1))`
-/

namespace A194629.P7770304757214831018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 6) - 6).toNat + A129251 (A327934 (n + 1)).toNat

end

end A194629.P7770304757214831018

/-! ## A194629.P15046779012911917386

`A294775(A000217(n+6)-6)+A129251(A100484(n+2))`
-/

namespace A194629.P15046779012911917386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 6) - 6).toNat + A129251 (A100484 (n + 2)).toNat

end

end A194629.P15046779012911917386

/-! ## A194629.P11112943510103507298

`A003415(A190911(n+1))*A294775(A000217(n+6)-6)`
-/

namespace A194629.P11112943510103507298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A190911 (n + 1)).toNat * A294775 (A000217 (n + 6) - 6).toNat

end

end A194629.P11112943510103507298

/-! ## A194629.P5050151185509048869

`A001511(A000040(n+2))*A294775(A000217(n+6)-6)`
-/

namespace A194629.P5050151185509048869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000040 (n + 2)).toNat * A294775 (A000217 (n + 6) - 6).toNat

end

end A194629.P5050151185509048869

/-!
# A194630: Arises in enumerating Huffman codes, compact trees, and sums of unit fractions.

The programs for A194630, there is no canonical definition to state claims against.
-/

/-! ## A194630.P18373269242140660777

`A294775(A055999(n+4)-1)`
-/

namespace A194630.P18373269242140660777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A055999 (n + 4) - 1).toNat

end

end A194630.P18373269242140660777

/-! ## A194630.P14988998854574983260

`A294775(A052905(n+4)-2)`
-/

namespace A194630.P14988998854574983260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A052905 (n + 4) - 2).toNat

end

end A194630.P14988998854574983260

/-! ## A194630.P3520401270090215470

`A294775(A000096(n+6)-6)`
-/

namespace A194630.P3520401270090215470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000096 (n + 6) - 6).toNat

end

end A194630.P3520401270090215470

/-! ## A194630.P5173637780126172964

`A294775(A000217(n+7)-7)`
-/

namespace A194630.P5173637780126172964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 7) - 7).toNat

end

end A194630.P5173637780126172964

/-! ## A194630.P8227168477124265612

`A294775(Δ[A026054(n+4)]-1)`
-/

namespace A194630.P8227168477124265612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (f1 (n + 1) - f1 n - 1).toNat

end

end A194630.P8227168477124265612

/-! ## A194630.P11060341032477179154

`A294775(A046691(n+6)+A024000(n+12))`
-/

namespace A194630.P11060341032477179154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A046691 (n + 6) + A024000 (n + 12)).toNat

end

end A194630.P11060341032477179154

/-!
# A194631: Arises in enumerating Huffman codes, compact trees, and sums of unit fractions.

The programs for A194631, there is no canonical definition to state claims against.
-/

/-! ## A194631.P15870198791097426863

`A294775(A155212(n+4))`
-/

namespace A194631.P15870198791097426863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A155212 (n + 4)).toNat

end

end A194631.P15870198791097426863

/-! ## A194631.P11005125294799733087

`A294775(A056126(n)+28)`
-/

namespace A194631.P11005125294799733087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A056126 n + 28).toNat

end

end A194631.P11005125294799733087

/-! ## A194631.P13408199687077768916

`A294775(A055999(n+5)-2)`
-/

namespace A194631.P13408199687077768916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A055999 (n + 5) - 2).toNat

end

end A194631.P13408199687077768916

/-! ## A194631.P16874012268432920490

`A294775(A000217(n+8)-8)`
-/

namespace A194631.P16874012268432920490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 8) - 8).toNat

end

end A194631.P16874012268432920490

/-! ## A194631.P2439786244689371950

`A294775(A161680(n+9)-8)`
-/

namespace A194631.P2439786244689371950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A161680 (n + 9) - 8).toNat

end

end A194631.P2439786244689371950

/-! ## A194631.P17198777270321877111

`A294775(A052905(n+4)+n+5)`
-/

namespace A194631.P17198777270321877111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A194631.P17198777270321877111

/-!
# A194632: Arises in enumerating Huffman codes, compact trees, and sums of unit fractions.

The programs for A194632, there is no canonical definition to state claims against.
-/

/-! ## A194632.P15814754255654660684

`A294775(A155212(n+5)-1)`
-/

namespace A194632.P15814754255654660684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A155212 (n + 5) - 1).toNat

end

end A194632.P15814754255654660684

/-! ## A194632.P2255083786874442221

`A294775(A055999(n+6)-3)`
-/

namespace A194632.P2255083786874442221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A055999 (n + 6) - 3).toNat

end

end A194632.P2255083786874442221

/-! ## A194632.P4048883623537134918

`A294775(A052905(n+6)-4)`
-/

namespace A194632.P4048883623537134918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A052905 (n + 6) - 4).toNat

end

end A194632.P4048883623537134918

/-! ## A194632.P13931074566859867572

`A294775(A000217(n+9)-9)`
-/

namespace A194632.P13931074566859867572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 9) - 9).toNat

end

end A194632.P13931074566859867572

/-! ## A194632.P2985158105867524541

`A294775(A161680(n+10)-9)`
-/

namespace A194632.P2985158105867524541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A161680 (n + 10) - 9).toNat

end

end A194632.P2985158105867524541

/-!
# A194633: Arises in enumerating Huffman codes, compact trees, and sums of unit fractions.

The programs for A194633, there is no canonical definition to state claims against.
-/

/-! ## A194633.P7248728253573495473

`A294775(A056000(n+6))`
-/

namespace A194633.P7248728253573495473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A056000 (n + 6)).toNat

end

end A194633.P7248728253573495473

/-! ## A194633.P10813019470855718237

`A294775(A155212(n+6)-2)`
-/

namespace A194633.P10813019470855718237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A155212 (n + 6) - 2).toNat

end

end A194633.P10813019470855718237

/-! ## A194633.P12383598918145322199

`A294775(A052905(n+7)-5)`
-/

namespace A194633.P12383598918145322199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A052905 (n + 7) - 5).toNat

end

end A194633.P12383598918145322199

/-! ## A194633.P9649099882367001992

`A294775(A000217(n+10)-10)`
-/

namespace A194633.P9649099882367001992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 10) - 10).toNat

end

end A194633.P9649099882367001992

/-! ## A194633.P15167757883354524975

`A294775(A000124(n+10)-11)`
-/

namespace A194633.P15167757883354524975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000124 (n + 10) - 11).toNat

end

end A194633.P15167757883354524975

/-! ## A194633.P4792406190382779888

`A294775(A161680(n+11)-10)`
-/

namespace A194633.P4792406190382779888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A161680 (n + 11) - 10).toNat

end

end A194633.P4792406190382779888

/-!
# A194634: Numbers n such that k= n^2 + n + 41 is composite and there is no integer x such that n= x^2 + 40; n= (x^2+x)/2 + 81; or n= 3*x^2 - 2x + 122.

The programs for A194634, there is no canonical definition to state claims against.
-/

/-! ## A194634.P6603923911676330372

`A194565(lt[A194565(n+1), A194583(3*n+4)])`
-/

namespace A194634.P6603923911676330372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194583 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194565 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194634.P6603923911676330372

/-! ## A194634.P5192388354278511720

`A194565(lt[A194592(n+3), A194540(3*n+5)])`
-/

namespace A194634.P5192388354278511720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194592 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194540 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194565 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A194634.P5192388354278511720

/-!
# A194635: Indices of records in A194591 restricted to prime indices.

The programs for A194635, there is no canonical definition to state claims against.
-/

/-! ## A194635.P12640689852768862604

`A007918(∏{d}[A194639(n+1), #])`
-/

namespace A194635.P12640689852768862604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A194635.P12640689852768862604

/-! ## A194635.P13701466046889958624

`A007918(∏{d}[A217892(n+1), #])`
-/

namespace A194635.P13701466046889958624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A194635.P13701466046889958624

/-! ## A194635.P8418464707264460404

`A194639(n+1)-A010815((n+1)*C(n+6, 6))`
-/

namespace A194635.P8418464707264460404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194639 (n + 1) - A010815 ((n + 1) * Nat.choose (n + 6) 6)

end

end A194635.P8418464707264460404

/-!
# A194636: Least k >= 0 such that (2*n-1)*2^k - 1 or (2*n-1)*2^k + 1 is prime, or -1 if no such value exists.

The programs for A194636, there is no canonical definition to state claims against.
-/

/-! ## A194636.P7847880162750194717

`A194591(Δ[n²])`
-/

namespace A194636.P7847880162750194717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A194636.P7847880162750194717

/-! ## A194636.P3776484262220314574

`A194591(2*n+1)%(n+1)`
-/

namespace A194636.P3776484262220314574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194591 (2 * n + 1)) (n + 1 : ℤ)

end

end A194636.P3776484262220314574

/-! ## A194636.P23285745229644916

`A000194(A194591(2*n+1)²)`
-/

namespace A194636.P23285745229644916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A194591 (2 * n + 1) ^ 2).toNat

end

end A194636.P23285745229644916

/-! ## A194636.P16145012795616202298

`A229621(A194591(2*n+1)+1)`
-/

namespace A194636.P16145012795616202298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (A194591 (2 * n + 1) + 1).toNat

end

end A194636.P16145012795616202298

/-! ## A194636.P319037787872231500

`filter[A194591(2*n+1), A102609(#)]`
-/

namespace A194636.P319037787872231500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A194636.P319037787872231500

/-! ## A194636.P5626652711185971175

`A194591(2*n+1)+A000122(A000040(n+1))`
-/

namespace A194636.P5626652711185971175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (2 * n + 1) + A000122 (A000040 (n + 1)).toNat

end

end A194636.P5626652711185971175

/-! ## A194636.P3130487207805186035

`A194591(n+n+1)+A194591(A020483(n)+1)`
-/

namespace A194636.P3130487207805186035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (n + n + 1) + A194591 (A020483 n + 1).toNat

end

end A194636.P3130487207805186035

/-! ## A194636.P10917735184512058749

`A194591(n+1+n)/A276554(A000217(n))`
-/

namespace A194636.P10917735184512058749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194591 (n + 1 + n) : ℚ) / (A276554 (A000217 n).toNat : ℚ)

end

end A194636.P10917735184512058749

/-! ## A194636.P17521293653133487629

`A194591(2*n+1)*A276554(A000217(2*n))`
-/

namespace A194636.P17521293653133487629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (2 * n + 1) * A276554 (A000217 (2 * n)).toNat

end

end A194636.P17521293653133487629

/-!
# A194638: Smallest prime either of the form (2*n-1)*2^k - 1 or (2*n-1)*2^k + 1, k >= 0, or 0 if no such prime exists.

The programs for A194638, there is no canonical definition to state claims against.
-/

/-! ## A194638.P17665535665649029607

`A194603(Δ[n²])`
-/

namespace A194638.P17665535665649029607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A194638.P17665535665649029607

/-! ## A194638.P13257085374789194399

`root(A194603(2*n+1), 2)²`
-/

namespace A194638.P13257085374789194399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A194603 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A194638.P13257085374789194399

/-! ## A194638.P977640341693538395

`xor(1, xor(1, A194603(n+n+1)))`
-/

namespace A194638.P977640341693538395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A194603 (n + n + 1)))

end

end A194638.P977640341693538395

/-! ## A194638.P4465268019737043331

`or(A000038(n), A194603(2*n+1))`
-/

namespace A194638.P4465268019737043331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A194603 (2 * n + 1))

end

end A194638.P4465268019737043331

/-! ## A194638.P14591807568125822341

`A194603(2*n+1)%A000041(n+9)`
-/

namespace A194638.P14591807568125822341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194603 (2 * n + 1)) (A000041 (n + 9))

end

end A194638.P14591807568125822341

/-! ## A194638.P672245893223348364

`A194603(n+n+1)/A001222(A069346(n+1))`
-/

namespace A194638.P672245893223348364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194603 (n + n + 1) : ℚ) / (A001222 (A069346 (n + 1)).toNat : ℚ)

end

end A194638.P672245893223348364

/-! ## A194638.P5385118216861487447

`gcd(A020740(A001511(n+1)), A194603(n+1+n))`
-/

namespace A194638.P5385118216861487447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020740 (A001511 (n + 1)).toNat) (A194603 (n + 1 + n))

end

end A194638.P5385118216861487447

/-! ## A194638.P7883426468297863061

`and(A107464(n), A194603(2*n+1))`
-/

namespace A194638.P7883426468297863061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A194603 (2 * n + 1))

end

end A194638.P7883426468297863061

/-! ## A194638.P17510764378884474958

`and(A107392(n+1), A194603(2*n+1))`
-/

namespace A194638.P17510764378884474958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 (n + 1)) (A194603 (2 * n + 1))

end

end A194638.P17510764378884474958

/-! ## A194638.P16132707713062653073

`and(A107953(n), A194603(2*n+1))`
-/

namespace A194638.P16132707713062653073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A194603 (2 * n + 1))

end

end A194638.P16132707713062653073

/-! ## A194638.P13475978262047168146

`and(A107954(n), A194603(2*n+1))`
-/

namespace A194638.P13475978262047168146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A194603 (2 * n + 1))

end

end A194638.P13475978262047168146

/-! ## A194638.P6328139900294620745

`and(A107955(n), A194603(2*n+1))`
-/

namespace A194638.P6328139900294620745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A194603 (2 * n + 1))

end

end A194638.P6328139900294620745

/-! ## A194638.P9535864998635311445

`and(1, A164291(n+2))*A194603(2*n+1)`
-/

namespace A194638.P9535864998635311445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A164291 (n + 2)) * A194603 (2 * n + 1)

end

end A194638.P9535864998635311445

/-! ## A194638.P2823385565970396914

`p?[A194603(2*n+1)]`
-/

namespace A194638.P2823385565970396914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194638.P2823385565970396914

/-! ## A194638.P3627516054653673999

`and(A194603(2*n+1), A198693(n))`
-/

namespace A194638.P3627516054653673999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194603 (2 * n + 1)) (A198693 n)

end

end A194638.P3627516054653673999

/-! ## A194638.P15786731185234780433

`and(A130567(n+2), A194603(2*n+1))`
-/

namespace A194638.P15786731185234780433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130567 (n + 2)) (A194603 (2 * n + 1))

end

end A194638.P15786731185234780433

/-! ## A194638.P16793675612237898392

`and(A194603(2*n+1), A198694(n))`
-/

namespace A194638.P16793675612237898392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194603 (2 * n + 1)) (A198694 n)

end

end A194638.P16793675612237898392

/-! ## A194638.P11576180438097262795

`and(A194603(2*n+1), A281482(n+1))`
-/

namespace A194638.P11576180438097262795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194603 (2 * n + 1)) (A281482 (n + 1))

end

end A194638.P11576180438097262795

/-! ## A194638.P15500390613973496415

`and(A093069(n+2), A194603(2*n+1))`
-/

namespace A194638.P15500390613973496415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 2)) (A194603 (2 * n + 1))

end

end A194638.P15500390613973496415

/-! ## A194638.P14430016390533427617

`A038700(A194603(2*n+1)+1)`
-/

namespace A194638.P14430016390533427617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A194603 (2 * n + 1) + 1).toNat

end

end A194638.P14430016390533427617

/-!
# A194639: Indices of records in A194591 when it is restricted to odd indices.

The programs for A194639, there is no canonical definition to state claims against.
-/

/-! ## A194639.P8192526623842042734

`A217892(A084192(∑[n]))`
-/

namespace A194639.P8192526623842042734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217892 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194639.P8192526623842042734

/-! ## A194639.P17932721141227364796

`A217892(A084193(∑[n]))`
-/

namespace A194639.P17932721141227364796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217892 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194639.P17932721141227364796

/-! ## A194639.P13083739137923533895

`A217892(A032947(n+1))`
-/

namespace A194639.P13083739137923533895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217892 (A032947 (n + 1)).toNat

end

end A194639.P13083739137923533895

/-! ## A194639.P7445492226186921038

`A055231(A217892(n+1))`
-/

namespace A194639.P7445492226186921038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A217892 (n + 1)).toNat

end

end A194639.P7445492226186921038

/-! ## A194639.P18096804651699402159

`A217892(A062279(n)+1)`
-/

namespace A194639.P18096804651699402159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217892 (A062279 n + 1).toNat

end

end A194639.P18096804651699402159

/-!
# A194640: Smallest image size for which the number of endofunctions (functions f:{1,2,...,n}->{1,2,...,n}) is a maximum.

The programs for A194640, the canonical program `A194640.P6304836416132754197` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194640 has offset 0).

The definition of A194640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194640.P6304836416132754197

`A002260(A046691(n+3))-A062276(n+3)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194640

/-- `A002260(A046691(n+3))-A062276(n+3)` -/
def P6304836416132754197.Spec : Prop :=
  ∀ n, P6304836416132754197.a n = A194640 n

theorem P6304836416132754197.correct : P6304836416132754197.Spec := by
  intro n
  simp only [A194640]

end A194640

/-! ## A194640.P8163694116633565820

`A002260(A055999(n+3)+1)-A062276(n+3)`
-/

namespace A194640.P8163694116633565820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A055999 (n + 3) + 1).toNat - A062276 (n + 3)

end

end A194640.P8163694116633565820

namespace A194640

/-- `A002260(A055999(n+3)+1)-A062276(n+3)` -/
def P8163694116633565820.Spec : Prop :=
  ∀ n, P8163694116633565820.a n = A194640 n

end A194640

/-! ## A194640.P13090931187119236493

`A278492(∑[n])-A062276(n+3)`
-/

namespace A194640.P13090931187119236493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (∑ j ∈ Finset.range (n + 1), f1 j) - A062276 (n + 3)

end

end A194640.P13090931187119236493

namespace A194640

/-- `A278492(∑[n])-A062276(n+3)` -/
def P13090931187119236493.Spec : Prop :=
  ∀ n, P13090931187119236493.a n = A194640 n

end A194640

/-! ## A194640.P16287634921476540935

`A059897(∑[n+1])-A062276(n+3)`
-/

namespace A194640.P16287634921476540935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (∑ j ∈ Finset.range (n + 1), f1 j) - A062276 (n + 3)

end

end A194640.P16287634921476540935

namespace A194640

/-- `A059897(∑[n+1])-A062276(n+3)` -/
def P16287634921476540935.Spec : Prop :=
  ∀ n, P16287634921476540935.a n = A194640 n

end A194640

/-! ## A194640.P13267775194839463644

`A002260(A055999(n+4))-A062276(n+3)`
-/

namespace A194640.P13267775194839463644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A055999 (n + 4)).toNat - A062276 (n + 3)

end

end A194640.P13267775194839463644

namespace A194640

/-- `A002260(A055999(n+4))-A062276(n+3)` -/
def P13267775194839463644.Spec : Prop :=
  ∀ n, P13267775194839463644.a n = A194640 n

end A194640

/-! ## A194640.P13322552946392857644

`A278492(Δ[A000292(n)])-(A062276(n+3)+1)`
-/

namespace A194640.P13322552946392857644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278492 (f1 (n + 1) - f1 n).toNat - (A062276 (n + 3) + 1)

end

end A194640.P13322552946392857644

namespace A194640

/-- `A278492(Δ[A000292(n)])-(A062276(n+3)+1)` -/
def P13322552946392857644.Spec : Prop :=
  ∀ n, P13322552946392857644.a n = A194640 n

end A194640

/-! ## A194640.P8999927934170754119

`A289726(A289726(n+1))-A062276(n+3)`
-/

namespace A194640.P8999927934170754119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289726 (A289726 (n + 1)).toNat - A062276 (n + 3)

end

end A194640.P8999927934170754119

namespace A194640

/-- `A289726(A289726(n+1))-A062276(n+3)` -/
def P8999927934170754119.Spec : Prop :=
  ∀ n, P8999927934170754119.a n = A194640 n

end A194640

/-! ## A194640.P12028674622963289232

`A133388((n+1)²)-A062276(n+3)`
-/

namespace A194640.P12028674622963289232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 ((n + 1) ^ 2) - A062276 (n + 3)

end

end A194640.P12028674622963289232

namespace A194640

/-- `A133388((n+1)²)-A062276(n+3)` -/
def P12028674622963289232.Spec : Prop :=
  ∀ n, P12028674622963289232.a n = A194640 n

end A194640

/-! ## A194640.P5527662899943910867

`A109004(∑[n+1])-A062276(n+3)`
-/

namespace A194640.P5527662899943910867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (∑ j ∈ Finset.range (n + 1), f1 j) - A062276 (n + 3)

end

end A194640.P5527662899943910867

namespace A194640

/-- `A109004(∑[n+1])-A062276(n+3)` -/
def P5527662899943910867.Spec : Prop :=
  ∀ n, P5527662899943910867.a n = A194640 n

end A194640

/-! ## A194640.P17761863355170440468

`n-1+A001316(A137688(n))-A062276(n+3)`
-/

namespace A194640.P17761863355170440468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (A001316 (A137688 n).toNat - A062276 (n + 3))

end

end A194640.P17761863355170440468

namespace A194640

/-- `n-1+A001316(A137688(n))-A062276(n+3)` -/
def P17761863355170440468.Spec : Prop :=
  ∀ n, P17761863355170440468.a n = A194640 n

end A194640

/-! ## A194640.P13657602425968744637

`A095861(∑[A187183(A004768(n))])`
-/

namespace A194640.P13657602425968744637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A004768 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194640.P13657602425968744637

namespace A194640

/-- `A095861(∑[A187183(A004768(n))])` -/
def P13657602425968744637.Spec : Prop :=
  ∀ n, P13657602425968744637.a n = A194640 n

end A194640

/-!
# A194641: Digital roots of the nonzero heptagonal numbers.

The programs for A194641, the canonical program `A194641.P11718273077551296675` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194641 has offset 1).

The definition of A194641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194641.P11718273077551296675

`a(n-9)` with `a(0)=1, a(1)=7, a(2)=9, a(3)=7, a(4)=1, a(5)=9, a(6)=4, a(7)=4, a(8)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194641

/-- `a(n-9)` -/
def P11718273077551296675.Spec : Prop :=
  ∀ n, (P11718273077551296675.a n : ℤ) = A194641 (n + 1)

theorem P11718273077551296675.correct : P11718273077551296675.Spec := by
  intro n
  simp only [A194641, Nat.add_sub_cancel]

end A194641

/-!
# A194642: Units' digits of the nonzero heptagonal numbers.

The programs for A194642, the canonical program `A194642.P16760194125461294217` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194642 has offset 1).

The definition of A194642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194642.P16760194125461294217

`∑[6^(n%2)]%10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194642

/-- `∑[6^(n%2)]%10` -/
def P16760194125461294217.Spec : Prop :=
  ∀ n, (P16760194125461294217.a n : ℤ) = A194642 (n + 1)

theorem P16760194125461294217.correct : P16760194125461294217.Spec := by
  intro n
  simp only [A194642, Nat.add_sub_cancel]

end A194642

/-!
# A194644: Number of ways to place 2n nonattacking kings on a 4 X 2n cylindrical chessboard.

The programs for A194644, the canonical program `A194644.P6909967390781083576` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194644 has offset 1).

The definition of A194644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194644.P6909967390781083576

`3*a(n-3)-10*a(n-2)+6*a(n-1)` with `a(0)=12, a(1)=32, a(2)=90`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194644

/-- `3*a(n-3)-10*a(n-2)+6*a(n-1)` -/
def P6909967390781083576.Spec : Prop :=
  ∀ n, P6909967390781083576.a n = A194644 (n + 1)

theorem P6909967390781083576.correct : P6909967390781083576.Spec := by
  intro n
  simp only [A194644, Nat.add_sub_cancel]

end A194644

/-! ## A194644.P1556815755723337002

`2*(A005248(n+1)+3^(n+1))`
-/

namespace A194644.P1556815755723337002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005248 (n + 1) + (3 ^ (n + 1) : ℤ))

end

end A194644.P1556815755723337002

namespace A194644

/-- `2*(A005248(n+1)+3^(n+1))` -/
def P1556815755723337002.Spec : Prop :=
  ∀ n, P1556815755723337002.a n = A194644 (n + 1)

end A194644

/-! ## A194644.P8704683534830535805

`2*(A000032(2*(n+1))+3^(n+1))`
-/

namespace A194644.P8704683534830535805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (2 * (n + 1)) + (3 ^ (n + 1) : ℤ))

end

end A194644.P8704683534830535805

namespace A194644

/-- `2*(A000032(2*(n+1))+3^(n+1))` -/
def P8704683534830535805.Spec : Prop :=
  ∀ n, P8704683534830535805.a n = A194644 (n + 1)

end A194644

/-! ## A194644.P4428914721177100231

`2*(A000244(n+1)+A000204(2*(n+1)))`
-/

namespace A194644.P4428914721177100231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000244 (n + 1) + A000204 (2 * (n + 1)))

end

end A194644.P4428914721177100231

namespace A194644

/-- `2*(A000244(n+1)+A000204(2*(n+1)))` -/
def P4428914721177100231.Spec : Prop :=
  ∀ n, P4428914721177100231.a n = A194644 (n + 1)

end A194644

/-! ## A194644.P6926424055541358465

`A008776(n+1)+A048575(n+1)+A001519(n)`
-/

namespace A194644.P6926424055541358465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (n + 1) + (A048575 (n + 1) + A001519 n)

end

end A194644.P6926424055541358465

namespace A194644

/-- `A008776(n+1)+A048575(n+1)+A001519(n)` -/
def P6926424055541358465.Spec : Prop :=
  ∀ n, P6926424055541358465.a n = A194644 (n + 1)

end A194644

/-!
# A194650: Number of ways to place 2 nonattacking kings on an n X n cylindrical chessboard.

The programs for A194650, the canonical program `A194650.P4895385161615893810` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194650 has offset 1).

The definition of A194650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194650.P4895385161615893810

`A201236(n+1)-A004273(n)*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194650

/-- `A201236(n+1)-A004273(n)*(n+1)` -/
def P4895385161615893810.Spec : Prop :=
  ∀ n, P4895385161615893810.a n = A194650 (n + 1)

theorem P4895385161615893810.correct : P4895385161615893810.Spec := by
  intro n
  simp only [A194650, Nat.add_sub_cancel]

end A194650

/-! ## A194650.P8042450822701599104

`A201236(n+1)-record[A014107(n)]`
-/

namespace A194650.P8042450822701599104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201236 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194650.P8042450822701599104

namespace A194650

/-- `A201236(n+1)-record[A014107(n)]` -/
def P8042450822701599104.Spec : Prop :=
  ∀ n, P8042450822701599104.a n = A194650 (n + 1)

end A194650

/-! ## A194650.P336485463365576892

`(A289207(n)+n²/2)*(n+1)²-record[A014107(n)]`
-/

namespace A194650.P336485463365576892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A289207 n : ℚ) + (n ^ 2 : ℚ) / 2) * ((n + 1) ^ 2 : ℚ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A194650.P336485463365576892

namespace A194650

/-- `(A289207(n)+n²/2)*(n+1)²-record[A014107(n)]` -/
def P336485463365576892.Spec : Prop :=
  ∀ n, P336485463365576892.a n = (A194650 (n + 1) : ℚ)

end A194650

/-! ## A194650.P10449300196295415857

`A201236(n+1)-A000096(comp[2*(n+1)])`
-/

namespace A194650.P10449300196295415857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201236 (n + 1) - A000096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A194650.P10449300196295415857

namespace A194650

/-- `A201236(n+1)-A000096(comp[2*(n+1)])` -/
def P10449300196295415857.Spec : Prop :=
  ∀ n, P10449300196295415857.a n = A194650 (n + 1)

end A194650

/-! ## A194650.P17403051239264359226

`A201236(n+1)-(A004273(n²)+n)`
-/

namespace A194650.P17403051239264359226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201236 (n + 1) - (A004273 (n ^ 2) + (n : ℤ))

end

end A194650.P17403051239264359226

namespace A194650

/-- `A201236(n+1)-(A004273(n²)+n)` -/
def P17403051239264359226.Spec : Prop :=
  ∀ n, P17403051239264359226.a n = A194650 (n + 1)

end A194650

/-! ## A194650.P10634867316472499872

`A201236(n+1)-A289207(A000124(2*n))`
-/

namespace A194650.P10634867316472499872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201236 (n + 1) - A289207 (A000124 (2 * n)).toNat

end

end A194650.P10634867316472499872

namespace A194650

/-- `A201236(n+1)-A289207(A000124(2*n))` -/
def P10634867316472499872.Spec : Prop :=
  ∀ n, P10634867316472499872.a n = A194650 (n + 1)

end A194650

/-!
# A194651: Number of ways to place 3 nonattacking kings on an n X n cylindrical chessboard.

The programs for A194651, there is no canonical definition to state claims against.
-/

/-! ## A194651.P15963406993082990634

`A318518(A370288(n))/2`
-/

namespace A194651.P15963406993082990634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318518 (A370288 n).toNat : ℚ) / 2

end

end A194651.P15963406993082990634

/-!
# A194652: Number of ways to place 4 nonattacking kings on an n X n cylindrical chessboard.

The programs for A194652, there is no canonical definition to state claims against.
-/

/-! ## A194652.P6607862153446706970

`A326476(A297972(n+2))`
-/

namespace A194652.P6607862153446706970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (A297972 (n + 2)).toNat

end

end A194652.P6607862153446706970

/-!
# A194658: a(n) is the maximal prime, such that for all primes x<=a(n) the number of primes in (x/2,x) is less than n.

The programs for A194658, there is no canonical definition to state claims against.
-/

/-! ## A194658.P4998941740722485751

`A064216(A059316(n+2))`
-/

namespace A194658.P4998941740722485751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A059316 (n + 2)).toNat

end

end A194658.P4998941740722485751

/-! ## A194658.P10972162601972327297

`A268674(A080359(n+2))`
-/

namespace A194658.P10972162601972327297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A080359 (n + 2)).toNat

end

end A194658.P10972162601972327297

/-! ## A194658.P14253189680333455108

`A060308(A059316(n+2)-1)`
-/

namespace A194658.P14253189680333455108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A059316 (n + 2) - 1).toNat

end

end A194658.P14253189680333455108

/-! ## A194658.P10420731203423901308

`A104272(n+1)-A194659(n+1)`
-/

namespace A194658.P10420731203423901308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A194659 (n + 1)

end

end A194658.P10420731203423901308

/-! ## A194658.P7370192165438636759

`A283463(A080359(n+2)+1)`
-/

namespace A194658.P7370192165438636759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A080359 (n + 2) + 1).toNat

end

end A194658.P7370192165438636759

/-!
# A194659: a(n) = A104272(n) - A194658(n).

The programs for A194659, there is no canonical definition to state claims against.
-/

/-! ## A194659.P1608919445543439095

`A104272(n+1)-A194658(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194659.P1608919445543439095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A194658 (n + 1)

end

end A194659.P1608919445543439095

/-! ## A194659.P14743701730874675915

`A034694(A084139(n))-A194658(n+1)`
-/

namespace A194659.P14743701730874675915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A084139 n).toNat - A194658 (n + 1)

end

end A194659.P14743701730874675915

/-! ## A194659.P13823425535398895821

`A047268(A084140(n+1))-A194658(n+1)`
-/

namespace A194659.P13823425535398895821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A084140 (n + 1)).toNat - A194658 (n + 1)

end

end A194659.P13823425535398895821

/-! ## A194659.P11549950937594909822

`A000040(A179196(n+1))-A194658(n+1)`
-/

namespace A194659.P11549950937594909822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat - A194658 (n + 1)

end

end A194659.P11549950937594909822

/-! ## A194659.P17797809257776678503

`(A104272(n+1)%A194658(n+1))%A080191(n+1)`
-/

namespace A194659.P17797809257776678503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A104272 (n + 1)) (A194658 (n + 1))) (A080191 (n + 1))

end

end A194659.P17797809257776678503

/-! ## A194659.P14560555384814650103

`A104272(A056171(A080359(n+1)))%A194658(n+1)`
-/

namespace A194659.P14560555384814650103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104272 (A056171 (A080359 (n + 1)).toNat).toNat) (A194658 (n + 1))

end

end A194659.P14560555384814650103

/-! ## A194659.P9797961271386479328

`A104272(A056171(A080360(n+1)))%A194658(n+1)`
-/

namespace A194659.P9797961271386479328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104272 (A056171 (A080360 (n + 1)).toNat).toNat) (A194658 (n + 1))

end

end A194659.P9797961271386479328

/-!
# A194661: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r = (1+sqrt(5))/2 (the golden ratio).

The programs for A194661, there is no canonical definition to state claims against.
-/

/-! ## A194661.P5895371511680239785

`A126999(A245300(n)+1)`
-/

namespace A194661.P5895371511680239785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126999 (A245300 n + 1).toNat

end

end A194661.P5895371511680239785

/-! ## A194661.P7754888094762368680

`A000035(A110049(2*(n+2))+A069466(n)/A098473(n))`
-/

namespace A194661.P7754888094762368680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.roundAway ((A110049 (2 * (n + 2)) : ℚ) + (A069466 n : ℚ) / (A098473 n : ℚ))).toNat

end

end A194661.P7754888094762368680

/-! ## A194661.P128930769349589036

`A058066(A107803(2*n+5))%2`
-/

namespace A194661.P128930769349589036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058066 (A107803 (2 * n + 5)).toNat) 2

end

end A194661.P128930769349589036

/-! ## A194661.P5684780125598050818

`A288223(A034953(n+1)+A000326(2*n+1))`
-/

namespace A194661.P5684780125598050818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288223 (A034953 (n + 1) + A000326 (2 * n + 1)).toNat

end

end A194661.P5684780125598050818

/-! ## A194661.P528688378209912691

`A049320(A248627(2*n+3)+A000001(n))`
-/

namespace A194661.P528688378209912691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049320 (A248627 (2 * n + 3) + A000001 n).toNat

end

end A194661.P528688378209912691

/-!
# A194663: Number of k in [1,n] for which + > 1, where < > = fractional part and r = sqrt(2).

The programs for A194663, there is no canonical definition to state claims against.
-/

/-! ## A194663.P2085492946682120117

`A091225(3*n+1)*A099910(A320451(2*(n+1)))`
-/

namespace A194663.P2085492946682120117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (3 * n + 1) * A099910 (A320451 (2 * (n + 1))).toNat

end

end A194663.P2085492946682120117

/-! ## A194663.P14677207479155026170

`A007814((2^floor(log2(n+1))+n)^A329746(n+1))`
-/

namespace A194663.P14677207479155026170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 ^ Nat.log 2 (n + 1) + n : ℚ) ^ (A329746 (n + 1) : ℤ))).toNat

end

end A194663.P14677207479155026170

/-! ## A194663.P5793304035513403205

`A167614(A098718(n+1))%A123726(n)`
-/

namespace A194663.P5793304035513403205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167614 (A098718 (n + 1)).toNat) (A123726 n)

end

end A194663.P5793304035513403205

/-! ## A194663.P7636754536312987895

`A193996(A134519(n+1))%A166333(n)`
-/

namespace A194663.P7636754536312987895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193996 (A134519 (n + 1)).toNat) (A166333 n)

end

end A194663.P7636754536312987895

/-! ## A194663.P17460564386546806629

`A317390(n+1)%A175108(A061393(n))`
-/

namespace A194663.P17460564386546806629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317390 (n + 1)) (A175108 (A061393 n).toNat)

end

end A194663.P17460564386546806629

/-!
# A194664: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r = sqrt(2).

The programs for A194664, there is no canonical definition to state claims against.
-/

/-! ## A194664.P10769566607537458880

`1-A194681(n+1)`
-/

namespace A194664.P10769566607537458880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194681 (n + 1)

end

end A194664.P10769566607537458880

/-! ## A194664.P2977564627953564255

`and(A194681(n+1)+1, A057427(n))`
-/

namespace A194664.P2977564627953564255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194681 (n + 1) + 1) (A057427 n)

end

end A194664.P2977564627953564255

/-! ## A194664.P2970320684245037136

`A000045(floor(n/(A194681(n+1)+n)))`
-/

namespace A194664.P2970320684245037136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(n : ℚ) / (A194681 (n + 1) + (n : ℤ) : ℚ)⌋.toNat

end

end A194664.P2970320684245037136

/-! ## A194664.P9842172425945745037

`and(1, A252748(n+1)+A194681(n+1))`
-/

namespace A194664.P9842172425945745037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A252748 (n + 1) + A194681 (n + 1))

end

end A194664.P9842172425945745037

/-! ## A194664.P8403292253280356545

`A194681(xor(n, xor(n, A194681(n+1)))+1)`
-/

namespace A194664.P8403292253280356545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194681 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A194681 (n + 1))) + 1).toNat

end

end A194664.P8403292253280356545

/-! ## A194664.P10198136456717339310

`A186358(and(A194681(n+1), A252748(n+1)))`
-/

namespace A194664.P10198136456717339310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186358 (Int.land (A194681 (n + 1)) (A252748 (n + 1))).toNat

end

end A194664.P10198136456717339310

/-! ## A194664.P18380009497158474756

`A241274(and(A194681(n+1), A252748(n+1)))`
-/

namespace A194664.P18380009497158474756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241274 (Int.land (A194681 (n + 1)) (A252748 (n + 1))).toNat

end

end A194664.P18380009497158474756

/-! ## A194664.P8579859482934669147

`A194681(ceil(A194681(n+1)/A064989(n+1))+1)`
-/

namespace A194664.P8579859482934669147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194681 (⌈(A194681 (n + 1) : ℚ) / (A064989 (n + 1) : ℚ)⌉ + 1).toNat

end

end A194664.P8579859482934669147

/-! ## A194664.P16758486342334739455

`A127000(A245300(n)+1)`
-/

namespace A194664.P16758486342334739455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127000 (A245300 n + 1).toNat

end

end A194664.P16758486342334739455

/-! ## A194664.P14598643562206102570

`xor(A001221(A194658(n+1)), A194681(n+1))`
-/

namespace A194664.P14598643562206102570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A194658 (n + 1)).toNat) (A194681 (n + 1))

end

end A194664.P14598643562206102570

/-! ## A194664.P8773760939614011282

`A194681(A194681(n+1)+A007318(∑[n]))`
-/

namespace A194664.P8773760939614011282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194681 (A194681 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194664.P8773760939614011282

/-! ## A194664.P7486547557642568340

`xor(A001221(A194638(n+1)), A194681(n+1))`
-/

namespace A194664.P7486547557642568340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A194638 (n + 1)).toNat) (A194681 (n + 1))

end

end A194664.P7486547557642568340

/-!
# A194665: Number of k in [1,n] for which + > 1, where < > = fractional part and r = sqrt(2); row sums of A164664.

The programs for A194665, there is no canonical definition to state claims against.
-/

/-! ## A194665.P16994509072188241040

`1-A194682(n+1)+n`
-/

namespace A194665.P16994509072188241040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194682 (n + 1) + (n : ℤ)

end

end A194665.P16994509072188241040

/-! ## A194665.P13636178766092248255

`A024000(A194682(n+1))+n`
-/

namespace A194665.P13636178766092248255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194682 (n + 1)).toNat + (n : ℤ)

end

end A194665.P13636178766092248255

/-! ## A194665.P7643549224160367870

`abs(A194682(n+1)+A001478(n+1))`
-/

namespace A194665.P7643549224160367870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194682 (n + 1) + A001478 (n + 1)|

end

end A194665.P7643549224160367870

/-! ## A194665.P17826679074563901082

`A001489(A194682(n+1))+A000027(n+1)`
-/

namespace A194665.P17826679074563901082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A194682 (n + 1)).toNat + A000027 (n + 1)

end

end A194665.P17826679074563901082

/-! ## A194665.P6218732894471690656

`A008683(4*(n+1))+A001489(A194682(n+1))+n+1`
-/

namespace A194665.P6218732894471690656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A001489 (A194682 (n + 1)).toNat + (n + 1 : ℤ))

end

end A194665.P6218732894471690656

/-! ## A194665.P14422334730419790888

`A004525(2*(n+1))+A001489(A194682(n+1))`
-/

namespace A194665.P14422334730419790888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (n + 1)) + A001489 (A194682 (n + 1)).toNat

end

end A194665.P14422334730419790888

/-! ## A194665.P2266546996219791718

`A065033(2*n+1)+A001489(A194682(n+1))`
-/

namespace A194665.P2266546996219791718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) + A001489 (A194682 (n + 1)).toNat

end

end A194665.P2266546996219791718

/-!
# A194666: Number of k in [1,n] for which + > 1, where < > = fractional part and r = sqrt(3).

The programs for A194666, there is no canonical definition to state claims against.
-/

/-! ## A194666.P12844840345272585948

`A385540(A164555(n)+A000079(n))`
-/

namespace A194666.P12844840345272585948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385540 (A164555 n + A000079 n).toNat

end

end A194666.P12844840345272585948

/-! ## A194666.P8362610309096279072

`A060130(and(A094374(n), A276909(n+1)))`
-/

namespace A194666.P8362610309096279072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (Int.land (A094374 n) (A276909 (n + 1))).toNat

end

end A194666.P8362610309096279072

/-! ## A194666.P13586177251717783590

`xor(A046951(A285607(n)), A285596(n+1))`
-/

namespace A194666.P13586177251717783590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046951 (A285607 n).toNat) (A285596 (n + 1))

end

end A194666.P13586177251717783590

/-! ## A194666.P281751108018352541

`A007814(A344697(2*(n+2))^A114638(n))`
-/

namespace A194666.P281751108018352541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A344697 (2 * (n + 2)) : ℚ) ^ (A114638 n : ℤ))).toNat

end

end A194666.P281751108018352541

/-! ## A194666.P18076617540677167963

`(A322007(abs(A166350(n+1)-n)+2)-1)*A059841(n)`
-/

namespace A194666.P18076617540677167963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322007 (|A166350 (n + 1) - (n : ℤ)| + 2).toNat - 1) * A059841 n

end

end A194666.P18076617540677167963

/-!
# A194667: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r = sqrt(3).

The programs for A194667, there is no canonical definition to state claims against.
-/

/-! ## A194667.P1137685914274290990

`A194685(A185870(n+1))`
-/

namespace A194667.P1137685914274290990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194685 (A185870 (n + 1)).toNat

end

end A194667.P1137685914274290990

/-! ## A194667.P8852583368024457250

`A127001(A245300(n)+1)`
-/

namespace A194667.P8852583368024457250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127001 (A245300 n + 1).toNat

end

end A194667.P8852583368024457250

/-! ## A194667.P13352432680826117512

`A194664(A194666(n+1)+A100792(2*n+1))`
-/

namespace A194667.P13352432680826117512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194664 (A194666 (n + 1) + A100792 (2 * n + 1)).toNat

end

end A194667.P13352432680826117512

/-!
# A194669: Number of k in [1,n] for which + > 1, where < > = fractional part and r = sqrt(5).

The programs for A194669, there is no canonical definition to state claims against.
-/

/-! ## A194669.P16589269260519670770

`val(A001783(n+1), A006464(A026847(n)))`
-/

namespace A194669.P16589269260519670770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001783 (n + 1)).toNat (A006464 (A026847 n).toNat).toNat

end

end A194669.P16589269260519670770

/-! ## A194669.P5821934974038872902

`∑{p}[A057979(A187829(n+1)), A193231(#)]`
-/

namespace A194669.P5821934974038872902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A193231 p

end

end A194669.P5821934974038872902

/-! ## A194669.P3037268134056249199

`A014082(A279880(n)+3)`
-/

namespace A194669.P3037268134056249199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A279880 n + 3).toNat

end

end A194669.P3037268134056249199

/-! ## A194669.P18192855321877934546

`A014082(A282418(n)+3)`
-/

namespace A194669.P18192855321877934546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A282418 n + 3).toNat

end

end A194669.P18192855321877934546

/-! ## A194669.P7379337334376590139

`xor(1, A338731(A052531(n)))`
-/

namespace A194669.P7379337334376590139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A338731 (A052531 n).toNat)

end

end A194669.P7379337334376590139

/-!
# A194670: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r = sqrt(5).

The programs for A194670, there is no canonical definition to state claims against.
-/

/-! ## A194670.P13587624835988459383

`A194661(A185870(n+1))`
-/

namespace A194670.P13587624835988459383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194661 (A185870 (n + 1)).toNat

end

end A194670.P13587624835988459383

/-! ## A194670.P6671833459654058083

`and(A014306(A050534(n)), A023486(n))`
-/

namespace A194670.P6671833459654058083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014306 (A050534 n).toNat) (A023486 n)

end

end A194670.P6671833459654058083

/-! ## A194670.P11716781757593837106

`A309766(xor(A000224(n+1), A047705(n)))`
-/

namespace A194670.P11716781757593837106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 (Int.xor (A000224 (n + 1)) (A047705 n)).toNat

end

end A194670.P11716781757593837106

/-! ## A194670.P11124625427249988575

`A285177(A005449(3*n+4)-A007618(n+1))`
-/

namespace A194670.P11124625427249988575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285177 (A005449 (3 * n + 4) - A007618 (n + 1)).toNat

end

end A194670.P11124625427249988575

/-!
# A194672: Triangle read by rows: number of genlex Gray paths on subcubes that use a certain restricted set of transformations.

The programs for A194672, there is no canonical definition to state claims against.
-/

/-! ## A194672.P1279161191534006409

`A015135(A264862(n+1))`
-/

namespace A194672.P1279161191534006409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (A264862 (n + 1)).toNat

end

end A194672.P1279161191534006409

/-! ## A194672.P457254178518545021

`A227177(A156882(n+1))`
-/

namespace A194672.P457254178518545021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A156882 (n + 1)).toNat

end

end A194672.P457254178518545021

/-! ## A194672.P10920022671547521687

`A057431(2^A026747(n))`
-/

namespace A194672.P10920022671547521687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A026747 n : ℤ))).toNat

end

end A194672.P10920022671547521687

/-! ## A194672.P12584278155404239088

`A294892(2^A026747(n))`
-/

namespace A194672.P12584278155404239088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294892 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A026747 n : ℤ))).toNat

end

end A194672.P12584278155404239088

/-! ## A194672.P6107836351519475048

`A225640(C(A026747(n), 2))`
-/

namespace A194672.P6107836351519475048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 (Nat.choose (A026747 n).toNat 2)

end

end A194672.P6107836351519475048

/-!
# A194673: Triangle read by rows: number of genlex Gray cycles on subcubes that use a certain restricted set of transformations.

The programs for A194673, there is no canonical definition to state claims against.
-/

/-! ## A194673.P877743998442115332

`A350189(A368096(n+1))`
-/

namespace A194673.P877743998442115332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350189 (A368096 (n + 1)).toNat

end

end A194673.P877743998442115332

/-! ## A194673.P2366079259967566147

`A330461(n)+A293100(A009194(n+1))`
-/

namespace A194673.P2366079259967566147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 n + A293100 (A009194 (n + 1)).toNat

end

end A194673.P2366079259967566147

/-!
# A194675: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part.

The programs for A194675, there is no canonical definition to state claims against.
-/

/-! ## A194675.P8594458090043020767

`(A001876(∑[A330644(n)])+1)%2`
-/

namespace A194675.P8594458090043020767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001876 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1) 2

end

end A194675.P8594458090043020767

/-! ## A194675.P15975127905385119646

`A117407(3*n)²%A117378(n+1)`
-/

namespace A194675.P15975127905385119646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117407 (3 * n) ^ 2) (A117378 (n + 1))

end

end A194675.P15975127905385119646

/-! ## A194675.P7733223320701056237

`A181183(lcm(∑[gcd(2, n)²]-2, A005101(10*n+14)))`
-/

namespace A194675.P7733223320701056237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181183 (Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) (A005101 (10 * n + 14)))

end

end A194675.P7733223320701056237

/-! ## A194675.P2999089459755825579

`A025827(A001876(∑[A330644(n)]))`
-/

namespace A194675.P2999089459755825579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 (A001876 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A194675.P2999089459755825579

/-! ## A194675.P8486762539398388623

`A000045(and(A337714(3*n+2), A337714(n+1)))`
-/

namespace A194675.P8486762539398388623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (A337714 (3 * n + 2)) (A337714 (n + 1))).toNat

end

end A194675.P8486762539398388623

/-!
# A194677: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part.

The programs for A194677, there is no canonical definition to state claims against.
-/

/-! ## A194677.P7145901201718353962

`1-val(A143083(n+1), 7)`
-/

namespace A194677.P7145901201718353962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A143083 (n + 1)).toNat 7 : ℤ)

end

end A194677.P7145901201718353962

/-! ## A194677.P16534709318911709940

`3%A000032(val(A143083(n+1), 7))`
-/

namespace A194677.P16534709318911709940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A000032 (SequenceMachineLib.valuation (A143083 (n + 1)).toNat 7))

end

end A194677.P16534709318911709940

/-! ## A194677.P15597184537171822501

`A000045(xor(1, val(A143083(n+1), 7)))`
-/

namespace A194677.P15597184537171822501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 (SequenceMachineLib.valuation (A143083 (n + 1)).toNat 7))

end

end A194677.P15597184537171822501

/-! ## A194677.P13999917575266836610

`∏{d}[val(A143083(n+1), 7), A001222(#)]`
-/

namespace A194677.P13999917575266836610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A143083 (n + 1)).toNat 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A194677.P13999917575266836610

/-!
# A194679: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r=3-sqrt(2).

The programs for A194679, there is no canonical definition to state claims against.
-/

/-! ## A194679.P2531950006997304910

`A317961(A305252(n+2)%A305252(2*n+1))`
-/

namespace A194679.P2531950006997304910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317961 (Int.tmod (A305252 (n + 2)) (A305252 (2 * n + 1))).toNat

end

end A194679.P2531950006997304910

/-! ## A194679.P7979358275405997435

`A159684(A007090(p?[A111608(n+1)]))`
-/

namespace A194679.P7979358275405997435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A194679.P7979358275405997435

/-! ## A194679.P3794193467342800160

`A128174(A164006(3*n+2)+∑[∑[n]])`
-/

namespace A194679.P3794193467342800160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A164006 (3 * n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194679.P3794193467342800160

/-! ## A194679.P3429988415147122998

`A088911(A316474(n+1)%round(acot(n)+n))`
-/

namespace A194679.P3429988415147122998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (Int.tmod (A316474 (n + 1)) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))).toNat

end

end A194679.P3429988415147122998

/-! ## A194679.P2788429602374978501

`A025869(and(A051724(n), A217135(n+3)))`
-/

namespace A194679.P2788429602374978501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025869 (Int.land (A051724 n) (A217135 (n + 3))).toNat

end

end A194679.P2788429602374978501

/-!
# A194681: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r=3-sqrt(2).

The programs for A194681, there is no canonical definition to state claims against.
-/

/-! ## A194681.P5872105537394372083

`1-A194664(n+1)`
-/

namespace A194681.P5872105537394372083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194664 (n + 1)

end

end A194681.P5872105537394372083

/-! ## A194681.P7454242811208135096

`xor(1, A194664(xor(1, xor(1, n+1))))`
-/

namespace A194681.P7454242811208135096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A194664 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A194681.P7454242811208135096

/-! ## A194681.P7128924587141017706

`(A194664(n+1)+A003215(n))%2`
-/

namespace A194681.P7128924587141017706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194664 (n + 1) + A003215 n) 2

end

end A194681.P7128924587141017706

/-! ## A194681.P11442927778995966928

`(A194664(n+1)+A005898(n))%2`
-/

namespace A194681.P11442927778995966928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194664 (n + 1) + A005898 n) 2

end

end A194681.P11442927778995966928

/-! ## A194681.P15291003745326219714

`(A194664(n+1)+A007202(n))%2`
-/

namespace A194681.P15291003745326219714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194664 (n + 1) + A007202 n) 2

end

end A194681.P15291003745326219714

/-! ## A194681.P6711043164777597148

`A112773(n+1)%(A194664(n+1)+2)`
-/

namespace A194681.P6711043164777597148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112773 (n + 1)) (A194664 (n + 1) + 2)

end

end A194681.P6711043164777597148

/-! ## A194681.P15376727185390604116

`(A257668(3*n+5)+A194664(n+1))%2`
-/

namespace A194681.P15376727185390604116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257668 (3 * n + 5) + A194664 (n + 1)) 2

end

end A194681.P15376727185390604116

/-! ## A194681.P15015775829831309690

`A000045(val(((A194664(n+1)+A008578(n+5))²+1)², 2))`
-/

namespace A194681.P15015775829831309690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (((A194664 (n + 1) + A008578 (n + 5)) ^ 2 + 1) ^ 2).toNat 2)

end

end A194681.P15015775829831309690

/-! ## A194681.P4011895687002229383

`1-A127000(A245300(n)+1)`
-/

namespace A194681.P4011895687002229383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A127000 (A245300 n + 1).toNat

end

end A194681.P4011895687002229383

/-! ## A194681.P7506133060389585101

`A166038(A000174(n)*A194664(n+1)+1)%3`
-/

namespace A194681.P7506133060389585101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166038 (A000174 n * A194664 (n + 1) + 1).toNat) 3

end

end A194681.P7506133060389585101

/-! ## A194681.P17965132733411461379

`A277929(2*A008284(n+1)*A194664(n+1))`
-/

namespace A194681.P17965132733411461379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 (2 * (A008284 (n + 1) * A194664 (n + 1))).toNat

end

end A194681.P17965132733411461379

/-! ## A194681.P3237574541338839829

`A012265(A194664(n+1)+Δ[A012265(n)]²)`
-/

namespace A194681.P3237574541338839829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A194664 (n + 1) + (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A194681.P3237574541338839829

/-! ## A194681.P12986285808078283751

`A277929(2*n*A194664(n+1))`
-/

namespace A194681.P12986285808078283751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 (2 * ((n : ℤ) * A194664 (n + 1))).toNat

end

end A194681.P12986285808078283751

/-! ## A194681.P693420925359320022

`(A194664(n+1)+A014963(∑[n+1]))%2`
-/

namespace A194681.P693420925359320022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194664 (n + 1) + A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A194681.P693420925359320022

/-!
# A194682: Number of k in [1,n] for which + > 1, where < > = fractional part, and r=3-sqrt(2); row sums of A164681.

The programs for A194682, there is no canonical definition to state claims against.
-/

/-! ## A194682.P1726300458977059347

`1-A194665(n+1)+n`
-/

namespace A194682.P1726300458977059347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194665 (n + 1) + (n : ℤ)

end

end A194682.P1726300458977059347

/-! ## A194682.P14283915099336192329

`abs(A194665(n+1)+A001478(n+1))`
-/

namespace A194682.P14283915099336192329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194665 (n + 1) + A001478 (n + 1)|

end

end A194682.P14283915099336192329

/-! ## A194682.P15932112677199960767

`A266285(2*n)-A194665(A266285(2*n))`
-/

namespace A194682.P15932112677199960767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (2 * n) - A194665 (A266285 (2 * n)).toNat

end

end A194682.P15932112677199960767

/-! ## A194682.P14044950443733133805

`A194665(A080754(n+1))`
-/

namespace A194682.P14044950443733133805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194665 (A080754 (n + 1)).toNat

end

end A194682.P14044950443733133805

/-! ## A194682.P11611318266838925477

`A194665(A003151(n+1)+1)`
-/

namespace A194682.P11611318266838925477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194665 (A003151 (n + 1) + 1).toNat

end

end A194682.P11611318266838925477

/-!
# A194683: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r=(1+sqrt(3))/2.

The programs for A194683, there is no canonical definition to state claims against.
-/

/-! ## A194683.P4712180430410634472

`A285625(A285620(n+1)+A197988(n+1))`
-/

namespace A194683.P4712180430410634472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285625 (A285620 (n + 1) + A197988 (n + 1)).toNat

end

end A194683.P4712180430410634472

/-! ## A194683.P13171453856298027483

`A188044(A032742(n+1)*A280996(n+1))`
-/

namespace A194683.P13171453856298027483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (A032742 (n + 1) * A280996 (n + 1)).toNat

end

end A194683.P13171453856298027483

/-! ## A194683.P12904960741176475945

`A188044(lcm(A032742(n+1), A280996(n+1)))`
-/

namespace A194683.P12904960741176475945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188044 (Int.lcm (A032742 (n + 1)) (A280996 (n + 1)))

end

end A194683.P12904960741176475945

/-! ## A194683.P697150236485710789

`A284656(A001223(n+1)*A114274(2*(n+1)))`
-/

namespace A194683.P697150236485710789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284656 (A001223 (n + 1) * A114274 (2 * (n + 1))).toNat

end

end A194683.P697150236485710789

/-! ## A194683.P18133614706514347840

`A179758(A112985(n+1))`
-/

namespace A194683.P18133614706514347840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (A112985 (n + 1)).toNat

end

end A194683.P18133614706514347840

/-!
# A194685: Triangular array: T(n,k)=[+], where [ ] = floor, < > = fractional part, and r=(1+sqrt(3))/2.

The programs for A194685, there is no canonical definition to state claims against.
-/

/-! ## A194685.P15211637662389211955

`A038189(∪[A239011(2*n+1), A039838(n+5)])`
-/

namespace A194685.P15211637662389211955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239011 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039838 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A194685.P15211637662389211955

/-! ## A194685.P5695261653577506161

`A065828(A083329(2*(n+2))%A282321(3*(n+1)))`
-/

namespace A194685.P5695261653577506161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (Int.tmod (A083329 (2 * (n + 2))) (A282321 (3 * (n + 1)))).toNat

end

end A194685.P5695261653577506161

/-! ## A194685.P2649957654079308236

`A327144(A272232(n)+25)`
-/

namespace A194685.P2649957654079308236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A272232 n + 25).toNat

end

end A194685.P2649957654079308236

/-! ## A194685.P14546835605132408609

`A188967((n+1)*A116940(n+1))`
-/

namespace A194685.P14546835605132408609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 ((n + 1 : ℤ) * A116940 (n + 1)).toNat

end

end A194685.P14546835605132408609

/-! ## A194685.P3708271948759557004

`A010060(A162200(3*n+1)%A052928(2*n+3))`
-/

namespace A194685.P3708271948759557004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod (A162200 (3 * n + 1)) (A052928 (2 * n + 3))).toNat

end

end A194685.P3708271948759557004

/-!
# A194688: First differences of A036554 (numbers whose binary representation ends in an odd number of zeros).

The programs for A194688, the canonical program `A194688.P1822334739734173254` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194688 has offset 1).

The definition of A194688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194688.P1822334739734173254

`7-p?[xor(n, n-3)%6]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194688

/-- `7-p?[xor(n, n-3)%6]` -/
def P1822334739734173254.Spec : Prop :=
  ∀ n, P1822334739734173254.a n = A194688 (n + 1)

theorem P1822334739734173254.correct : P1822334739734173254.Spec := by
  intro n
  simp only [A194688, Nat.add_sub_cancel]

end A194688

/-! ## A194688.P16973673587900986051

`2*(A395089(n)+1)`
-/

namespace A194688.P16973673587900986051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A395089 n + 1)

end

end A194688.P16973673587900986051

namespace A194688

/-- `2*(A395089(n)+1)` -/
def P16973673587900986051.Spec : Prop :=
  ∀ n, P16973673587900986051.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P5999382741430815508

`2*(2-A395088(n))`
-/

namespace A194688.P5999382741430815508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - A395088 n)

end

end A194688.P5999382741430815508

namespace A194688

/-- `2*(2-A395088(n))` -/
def P5999382741430815508.Spec : Prop :=
  ∀ n, P5999382741430815508.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P16384408559498987573

`2*gcd(2, A161579(n+1))`
-/

namespace A194688.P16384408559498987573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd 2 (A161579 (n + 1))

end

end A194688.P16384408559498987573

namespace A194688

/-- `2*gcd(2, A161579(n+1))` -/
def P16384408559498987573.Spec : Prop :=
  ∀ n, (P16384408559498987573.a n : ℤ) = A194688 (n + 1)

end A194688

/-! ## A194688.P2163963540003672180

`Δ[comp[or(n, val(n+2, 2))]]`
-/

namespace A194688.P2163963540003672180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.valuation (n + 2) 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A194688.P2163963540003672180

namespace A194688

/-- `Δ[comp[or(n, val(n+2, 2))]]` -/
def P2163963540003672180.Spec : Prop :=
  ∀ n, P2163963540003672180.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P12877104492919888118

`2*Δ[eq[0, val(n+1, 2)%2]]`
-/

namespace A194688.P12877104492919888118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A194688.P12877104492919888118

namespace A194688

/-- `2*Δ[eq[0, val(n+1, 2)%2]]` -/
def P12877104492919888118.Spec : Prop :=
  ∀ n, P12877104492919888118.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P16188045336710074720

`Δ[A036554(n+1)]`
-/

namespace A194688.P16188045336710074720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194688.P16188045336710074720

namespace A194688

/-- `Δ[A036554(n+1)]` -/
def P16188045336710074720.Spec : Prop :=
  ∀ n, P16188045336710074720.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P8412167387467379612

`Δ[A072939(n+1)]`
-/

namespace A194688.P8412167387467379612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194688.P8412167387467379612

namespace A194688

/-- `Δ[A072939(n+1)]` -/
def P8412167387467379612.Spec : Prop :=
  ∀ n, P8412167387467379612.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P4450568265483039757

`Δ[A079523(n+1)]`
-/

namespace A194688.P4450568265483039757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194688.P4450568265483039757

namespace A194688

/-- `Δ[A079523(n+1)]` -/
def P4450568265483039757.Spec : Prop :=
  ∀ n, P4450568265483039757.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P17828658540738614012

`Δ[A162648(n+1)]`
-/

namespace A194688.P17828658540738614012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194688.P17828658540738614012

namespace A194688

/-- `Δ[A162648(n+1)]` -/
def P17828658540738614012.Spec : Prop :=
  ∀ n, P17828658540738614012.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P6863847044834370663

`A080426(n+2)+1`
-/

namespace A194688.P6863847044834370663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 2) + 1

end

end A194688.P6863847044834370663

namespace A194688

/-- `A080426(n+2)+1` -/
def P6863847044834370663.Spec : Prop :=
  ∀ n, P6863847044834370663.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P3669687286090302024

`2*A026465(n+2)`
-/

namespace A194688.P3669687286090302024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026465 (n + 2)

end

end A194688.P3669687286090302024

namespace A194688

/-- `2*A026465(n+2)` -/
def P3669687286090302024.Spec : Prop :=
  ∀ n, P3669687286090302024.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P532071007516328340

`Δ[A003156(n+1)]+1`
-/

namespace A194688.P532071007516328340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A194688.P532071007516328340

namespace A194688

/-- `Δ[A003156(n+1)]+1` -/
def P532071007516328340.Spec : Prop :=
  ∀ n, P532071007516328340.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P16619377014941492168

`Δ[A284390(n+1)]+1`
-/

namespace A194688.P16619377014941492168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A194688.P16619377014941492168

namespace A194688

/-- `Δ[A284390(n+1)]+1` -/
def P16619377014941492168.Spec : Prop :=
  ∀ n, P16619377014941492168.a n = A194688 (n + 1)

end A194688

/-! ## A194688.P313803821549334134

`Δ[A003157(n+1)]-1`
-/

namespace A194688.P313803821549334134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A194688.P313803821549334134

namespace A194688

/-- `Δ[A003157(n+1)]-1` -/
def P313803821549334134.Spec : Prop :=
  ∀ n, P313803821549334134.a n = A194688 (n + 1)

end A194688

/-!
# A194689: a(n) = Sum_{k=0..n} binomial(n,k)*w(k)*w(n-k) where w() = A000296().

The programs for A194689, there is no canonical definition to state claims against.
-/

/-! ## A194689.P17143269711504596734

`A336345(∑[n+2]-1)`
-/

namespace A194689.P17143269711504596734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336345 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A194689.P17143269711504596734

/-! ## A194689.P4781954031789594830

`A262681(n)*A336345(A034856(n+1))`
-/

namespace A194689.P4781954031789594830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A336345 (A034856 (n + 1)).toNat

end

end A194689.P4781954031789594830

/-! ## A194689.P3305819406979773793

`lcm(A000002(n+1), A336345(A034856(n+1)))`
-/

namespace A194689.P3305819406979773793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000002 (n + 1)) (A336345 (A034856 (n + 1)).toNat)

end

end A194689.P3305819406979773793

/-! ## A194689.P16331597844395762069

`A014963(A154267(n))*A336345(A034856(n+1))`
-/

namespace A194689.P16331597844395762069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A154267 n).toNat * A336345 (A034856 (n + 1)).toNat

end

end A194689.P16331597844395762069

/-! ## A194689.P5336409968733363955

`A014963(A000217(n+1))*A336345(A034856(n+1))`
-/

namespace A194689.P5336409968733363955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 1)).toNat * A336345 (A034856 (n + 1)).toNat

end

end A194689.P5336409968733363955

/-! ## A194689.P14514033275339694675

`A001222(A122723(n+1))*A336345(A034856(n+1))`
-/

namespace A194689.P14514033275339694675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A122723 (n + 1)).toNat * A336345 (A034856 (n + 1)).toNat

end

end A194689.P14514033275339694675

/-! ## A194689.P3700982637357715917

`A001222(A137365(n+1))*A336345(A034856(n+1))`
-/

namespace A194689.P3700982637357715917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137365 (n + 1)).toNat * A336345 (A034856 (n + 1)).toNat

end

end A194689.P3700982637357715917

/-!
# A194690: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n * x^n/(1 - x^n)^n.

The programs for A194690, there is no canonical definition to state claims against.
-/

/-! ## A194690.P7381300339863256495

`A253092(A284159(n+1))`
-/

namespace A194690.P7381300339863256495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A284159 (n + 1)).toNat

end

end A194690.P7381300339863256495

/-! ## A194690.P1304083630569456922

`A077070(A001147(n)+A000110(n))`
-/

namespace A194690.P1304083630569456922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A001147 n + A000110 n).toNat

end

end A194690.P1304083630569456922

/-! ## A194690.P11483307434797606443

`A077070(A287257(n)+A001147(n))`
-/

namespace A194690.P11483307434797606443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A287257 n + A001147 n).toNat

end

end A194690.P11483307434797606443

/-!
# A194691: G.f. A(x) satisfies A(x) = 1 + Sum_{n>=1} A(x)^n * x^n*(1 + x^n)^n.

The programs for A194691, there is no canonical definition to state claims against.
-/

/-! ## A194691.P2228391501748074788

`A023193(A150418(n))`
-/

namespace A194691.P2228391501748074788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150418 n).toNat

end

end A194691.P2228391501748074788

/-! ## A194691.P203530378067744711

`A023193(A150465(n))`
-/

namespace A194691.P203530378067744711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150465 n).toNat

end

end A194691.P203530378067744711

/-! ## A194691.P11121564787696501935

`A261983(n)+A111439(A259353(n+1))`
-/

namespace A194691.P11121564787696501935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261983 n + A111439 (A259353 (n + 1)).toNat

end

end A194691.P11121564787696501935

/-!
# A194692: Corner sequence associated with A194440 and A194441.

The programs for A194692, there is no canonical definition to state claims against.
-/

/-! ## A194692.P18006897502142393439

`A194693(n)+a(n-1)` with `a(0)=0`
-/

namespace A194692.P18006897502142393439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A194693 n + a (n - 1)

end

end A194692.P18006897502142393439

/-! ## A194692.P9865784460658718021

`∑[A194693(abs(1-n)+1)]-2`
-/

namespace A194692.P9865784460658718021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194693 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A194692.P9865784460658718021

/-! ## A194692.P9769734014886667099

`∪[A187860(2*(n+1)), ∑[A194693(n+1)]]`
-/

namespace A194692.P9769734014886667099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187860 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194692.P9769734014886667099

/-! ## A194692.P11692878134198254444

`∑[A057427(n)*A194693(A028310(n))]`
-/

namespace A194692.P11692878134198254444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A194693 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194692.P11692878134198254444

/-! ## A194692.P1719997547116486049

`∑[A178334(n)*A194693(A028310(n))]`
-/

namespace A194692.P1719997547116486049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A194693 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194692.P1719997547116486049

/-! ## A194692.P15889943441182073947

`∑[A194693(A028310(n))%A000051(n)]`
-/

namespace A194692.P15889943441182073947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194693 (A028310 n).toNat) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194692.P15889943441182073947

/-! ## A194692.P17415705197457657059

`∑[A000040(n+1)%2*A194693(A028310(n))]`
-/

namespace A194692.P17415705197457657059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A194693 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194692.P17415705197457657059

/-! ## A194692.P7268349680641525329

`(∑[A194696(n+1)]-A194696(n+1))/2`
-/

namespace A194692.P7268349680641525329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194696 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A194696 (n + 1) : ℤ) : ℚ) / 2

end

end A194692.P7268349680641525329

/-! ## A194692.P10319872576425366677

`A004525(∑[A194696(n+1)]-A194696(n+1))`
-/

namespace A194692.P10319872576425366677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j - A194696 (n + 1)).toNat

end

end A194692.P10319872576425366677

/-! ## A194692.P2657795801374083699

`A014682(∑[A194696(n+1)]-A194696(n+1))`
-/

namespace A194692.P2657795801374083699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j - A194696 (n + 1)).toNat

end

end A194692.P2657795801374083699

/-!
# A194693: Number of toothpicks or D-toothpicks added at n-th stage to the D-toothpick "corner" structure of A194692.

The programs for A194693, there is no canonical definition to state claims against.
-/

/-! ## A194693.P17520759779847545714

`A194696(n+1)/2`
-/

namespace A194693.P17520759779847545714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194696 (n + 1) : ℚ) / 2

end

end A194693.P17520759779847545714

/-! ## A194693.P315106123836714678

`Δ[A194692(n)]`
-/

namespace A194693.P315106123836714678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194693.P315106123836714678

/-! ## A194693.P9606127408515817908

`A001281(A194696(n+1))`
-/

namespace A194693.P9606127408515817908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A194696 (n + 1)).toNat

end

end A194693.P9606127408515817908

/-! ## A194693.P11322421198962063029

`A004524(A194696(n+1)+1)`
-/

namespace A194693.P11322421198962063029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A194696 (n + 1) + 1).toNat

end

end A194693.P11322421198962063029

/-! ## A194693.P16492165582250816928

`A004526(A194696(n+1)+1)`
-/

namespace A194693.P16492165582250816928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194696 (n + 1) + 1).toNat

end

end A194693.P16492165582250816928

/-! ## A194693.P17305519072617430557

`A000463(A194696(n+1)-1)`
-/

namespace A194693.P17305519072617430557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A194696 (n + 1) - 1).toNat

end

end A194693.P17305519072617430557

/-! ## A194693.P4662834598144287641

`A001057(A194696(n+1)-1)`
-/

namespace A194693.P4662834598144287641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A194696 (n + 1) - 1).toNat

end

end A194693.P4662834598144287641

/-! ## A194693.P8721923178188529739

`A008619(A194696(n+1)-1)`
-/

namespace A194693.P8721923178188529739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A194696 (n + 1) - 1).toNat

end

end A194693.P8721923178188529739

/-! ## A194693.P14885263962159403536

`A002265(2*A194696(n+1))`
-/

namespace A194693.P14885263962159403536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A194696 (n + 1)).toNat

end

end A194693.P14885263962159403536

/-! ## A194693.P489682176326347672

`A194692(n+1)-A194692(n)`
-/

namespace A194693.P489682176326347672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 (n + 1) - A194692 n

end

end A194693.P489682176326347672

/-!
# A194694: Corner sequence associated with A194442 and A194443.

The programs for A194694, there is no canonical definition to state claims against.
-/

/-! ## A194694.P6929843565982260920

`A194695(n)+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A194694.P6929843565982260920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A194695 n + a (n - 1)

end

end A194694.P6929843565982260920

/-! ## A194694.P4946183455380170022

`∑[A194695(A028310(n))]-2`
-/

namespace A194694.P4946183455380170022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194695 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A194694.P4946183455380170022

/-! ## A194694.P11173023582923132052

`∑[A194695(A233583(n+1))]-2`
-/

namespace A194694.P11173023582923132052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194695 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A194694.P11173023582923132052

/-! ## A194694.P17175213682596753089

`∪[∑[A194695(n+1)], A194653(n+4)]`
-/

namespace A194694.P17175213682596753089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194653 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A194694.P17175213682596753089

/-! ## A194694.P6670978447741823016

`∪[A194719(2*n), ∑[A194695(n+1)]]`
-/

namespace A194694.P6670978447741823016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194719 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194694.P6670978447741823016

/-!
# A194695: Number of toothpicks or D-toothpicks added at n-th stage to the D-toothpick "corner" structure of A194694.

The programs for A194695, there is no canonical definition to state claims against.
-/

/-! ## A194695.P16176050298848326330

`A194697(n+1)/2`
-/

namespace A194695.P16176050298848326330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194697 (n + 1) : ℚ) / 2

end

end A194695.P16176050298848326330

/-! ## A194695.P3523461076700062376

`Δ[A194694(n)]`
-/

namespace A194695.P3523461076700062376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194695.P3523461076700062376

/-! ## A194695.P457219871872739969

`A001281(A194697(n+1))`
-/

namespace A194695.P457219871872739969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A194697 (n + 1)).toNat

end

end A194695.P457219871872739969

/-! ## A194695.P839074722800566416

`A004524(A194697(n+1)+1)`
-/

namespace A194695.P839074722800566416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A194697 (n + 1) + 1).toNat

end

end A194695.P839074722800566416

/-! ## A194695.P520108159771352247

`A004526(A194697(n+1)+1)`
-/

namespace A194695.P520108159771352247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A194697 (n + 1) + 1).toNat

end

end A194695.P520108159771352247

/-!
# A194696: a(n) = 2*A194693(n).

The programs for A194696, there is no canonical definition to state claims against.
-/

/-! ## A194696.P4944050907960756393

`2*A194693(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194696.P4944050907960756393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194693 (n + 1)

end

end A194696.P4944050907960756393

/-! ## A194696.P8629387960312930077

`Δ[2*A194692(n)]`
-/

namespace A194696.P8629387960312930077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194696.P8629387960312930077

/-! ## A194696.P16302862799928326180

`A004277(Δ[A194692(n)])`
-/

namespace A194696.P16302862799928326180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A194696.P16302862799928326180

/-! ## A194696.P16090459654072205359

`A005843(Δ[A194692(n)])`
-/

namespace A194696.P16090459654072205359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A194696.P16090459654072205359

/-! ## A194696.P4663162869343504105

`A163300(Δ[A194692(n)])`
-/

namespace A194696.P4663162869343504105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (f1 (n + 1) - f1 n).toNat

end

end A194696.P4663162869343504105

/-! ## A194696.P14375589053138809659

`A004277(A194693(n+1))`
-/

namespace A194696.P14375589053138809659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A194693 (n + 1)).toNat

end

end A194696.P14375589053138809659

/-! ## A194696.P813330572981246930

`Δ[A004273(A194692(n)+1)]`
-/

namespace A194696.P813330572981246930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A194692 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194696.P813330572981246930

/-! ## A194696.P10184326832498963234

`A004275(Δ[A194692(n)]+1)`
-/

namespace A194696.P10184326832498963234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (n + 1) - f1 n + 1).toNat

end

end A194696.P10184326832498963234

/-! ## A194696.P4468419948814832823

`A008458(Δ[A194692(n)])/3`
-/

namespace A194696.P4468419948814832823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194692 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A194696.P4468419948814832823

/-!
# A194697: a(n) = 2*A194695(n).

The programs for A194697, there is no canonical definition to state claims against.
-/

/-! ## A194697.P12330356940906526020

`2*A194695(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194697.P12330356940906526020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194695 (n + 1)

end

end A194697.P12330356940906526020

/-! ## A194697.P11746183199803397750

`Δ[2*A194694(n)]`
-/

namespace A194697.P11746183199803397750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194697.P11746183199803397750

/-! ## A194697.P2300876971693701943

`A004277(Δ[A194694(n)])`
-/

namespace A194697.P2300876971693701943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A194697.P2300876971693701943

/-! ## A194697.P8099733919062733805

`A005843(Δ[A194694(n)])`
-/

namespace A194697.P8099733919062733805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A194697.P8099733919062733805

/-! ## A194697.P16045740127062189062

`A163300(Δ[A194694(n)])`
-/

namespace A194697.P16045740127062189062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (f1 (n + 1) - f1 n).toNat

end

end A194697.P16045740127062189062

/-!
# A194698: a(n) = floor((n - 1)/12) - floor((n^2 - 1)/(24*n)).

The programs for A194698, the canonical program `A194698.P3384574780153075239` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194698 has offset 1).

The definition of A194698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194698.P3384574780153075239

`round(n/24)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194698

/-- `round(n/24)` -/
def P3384574780153075239.Spec : Prop :=
  ∀ n, P3384574780153075239.a n = A194698 (n + 1)

theorem P3384574780153075239.correct : P3384574780153075239.Spec := by
  intro n
  simp only [A194698, Nat.add_sub_cancel]

end A194698

/-! ## A194698.P10942609601311726384

`∑[char[12*or(1, n)]]`
-/

namespace A194698.P10942609601311726384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P10942609601311726384

namespace A194698

/-- `∑[char[12*or(1, n)]]` -/
def P10942609601311726384.Spec : Prop :=
  ∀ n, (P10942609601311726384.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P3190974623083817774

`∑[char[lcm(12, or(1, n))]]`
-/

namespace A194698.P3190974623083817774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 (Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P3190974623083817774

namespace A194698

/-- `∑[char[lcm(12, or(1, n))]]` -/
def P3190974623083817774.Spec : Prop :=
  ∀ n, (P3190974623083817774.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P5741417516066021855

`∑[char[lcm(3, 8*n+4)]]`
-/

namespace A194698.P5741417516066021855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (8 * n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P5741417516066021855

namespace A194698

/-- `∑[char[lcm(3, 8*n+4)]]` -/
def P5741417516066021855.Spec : Prop :=
  ∀ n, (P5741417516066021855.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P16720141466521196482

`floor((xor(1, n)/6+2)/4)`
-/

namespace A194698.P16720141466521196482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.xor 1 n : ℚ) / 6 + 2) / 4⌋

end

end A194698.P16720141466521196482

namespace A194698

/-- `floor((xor(1, n)/6+2)/4)` -/
def P16720141466521196482.Spec : Prop :=
  ∀ n, P16720141466521196482.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P678493013349199287

`ceil(A342696(n)/2)`
-/

namespace A194698.P678493013349199287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342696 n : ℚ) / 2⌉

end

end A194698.P678493013349199287

namespace A194698

/-- `ceil(A342696(n)/2)` -/
def P678493013349199287.Spec : Prop :=
  ∀ n, P678493013349199287.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P1122233638366293603

`∑[char[A073762(n+1)]]`
-/

namespace A194698.P1122233638366293603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P1122233638366293603

namespace A194698

/-- `∑[char[A073762(n+1)]]` -/
def P1122233638366293603.Spec : Prop :=
  ∀ n, (P1122233638366293603.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P2130488467495308320

`floor(A008730(n)/(n+2))`
-/

namespace A194698.P2130488467495308320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008730 n : ℚ) / (n + 2 : ℚ)⌋

end

end A194698.P2130488467495308320

namespace A194698

/-- `floor(A008730(n)/(n+2))` -/
def P2130488467495308320.Spec : Prop :=
  ∀ n, P2130488467495308320.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P9574058146221651796

`∑[char[A008594(2*n+1)]]`
-/

namespace A194698.P9574058146221651796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P9574058146221651796

namespace A194698

/-- `∑[char[A008594(2*n+1)]]` -/
def P9574058146221651796.Spec : Prop :=
  ∀ n, (P9574058146221651796.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P15392367001652402645

`∑[char[A109053(2*n+1)]]`
-/

namespace A194698.P15392367001652402645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109053 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P15392367001652402645

namespace A194698

/-- `∑[char[A109053(2*n+1)]]` -/
def P15392367001652402645.Spec : Prop :=
  ∀ n, (P15392367001652402645.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P11714187251312349810

`∑[char[8*A016777(n)+4]]`
-/

namespace A194698.P11714187251312349810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016777 n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P11714187251312349810

namespace A194698

/-- `∑[char[8*A016777(n)+4]]` -/
def P11714187251312349810.Spec : Prop :=
  ∀ n, (P11714187251312349810.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P4119623878527293727

`floor((A113763(n+1)-n)/2)`
-/

namespace A194698.P4119623878527293727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113763 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A194698.P4119623878527293727

namespace A194698

/-- `floor((A113763(n+1)-n)/2)` -/
def P4119623878527293727.Spec : Prop :=
  ∀ n, P4119623878527293727.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P15905231853990882665

`∑[char[Δ[A000567(2*n)]+4]]`
-/

namespace A194698.P15905231853990882665
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P15905231853990882665

namespace A194698

/-- `∑[char[Δ[A000567(2*n)]+4]]` -/
def P15905231853990882665.Spec : Prop :=
  ∀ n, (P15905231853990882665.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P1339328018320497565

`∑[char[2*(A256258(2*n+3)+1)]]`
-/

namespace A194698.P1339328018320497565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A256258 (2 * n + 3) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P1339328018320497565

namespace A194698

/-- `∑[char[2*(A256258(2*n+3)+1)]]` -/
def P1339328018320497565.Spec : Prop :=
  ∀ n, (P1339328018320497565.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P11117550584672903098

`∑[char[A004277(6*(6*n+2)/3+2)]]`
-/

namespace A194698.P11117550584672903098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (6 * ((6 * n + 2 : ℚ) / 3) + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194698.P11117550584672903098

namespace A194698

/-- `∑[char[A004277(6*(6*n+2)/3+2)]]` -/
def P11117550584672903098.Spec : Prop :=
  ∀ n, (P11117550584672903098.a n : ℤ) = A194698 (n + 1)

end A194698

/-! ## A194698.P7824129747892877935

`A002265(A097992(n)+1)`
-/

namespace A194698.P7824129747892877935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A097992 n + 1).toNat

end

end A194698.P7824129747892877935

namespace A194698

/-- `A002265(A097992(n)+1)` -/
def P7824129747892877935.Spec : Prop :=
  ∀ n, P7824129747892877935.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P2718501780877027779

`A004526(A342696(n)+1)`
-/

namespace A194698.P2718501780877027779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342696 n + 1).toNat

end

end A194698.P2718501780877027779

namespace A194698

/-- `A004526(A342696(n)+1)` -/
def P2718501780877027779.Spec : Prop :=
  ∀ n, P2718501780877027779.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P2897729228350193258

`A002265(A152467(n)+2)`
-/

namespace A194698.P2897729228350193258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A152467 n + 2).toNat

end

end A194698.P2897729228350193258

namespace A194698

/-- `A002265(A152467(n)+2)` -/
def P2897729228350193258.Spec : Prop :=
  ∀ n, P2897729228350193258.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P17062092723995787589

`A152467(A008621(n)+2)`
-/

namespace A194698.P17062092723995787589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A008621 n + 2).toNat

end

end A194698.P17062092723995787589

namespace A194698

/-- `A152467(A008621(n)+2)` -/
def P17062092723995787589.Spec : Prop :=
  ∀ n, P17062092723995787589.a n = A194698 (n + 1)

end A194698

/-! ## A194698.P1680213352604271419

`A004526(∑[1-A168185(n)])`
-/

namespace A194698.P1680213352604271419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194698.P1680213352604271419

namespace A194698

/-- `A004526(∑[1-A168185(n)])` -/
def P1680213352604271419.Spec : Prop :=
  ∀ n, P1680213352604271419.a n = A194698 (n + 1)

end A194698

/-!
# A194699: a(n) = floor((p - 1)/12) - floor((p^2 - 1)/(24*p)), where p = prime(n).

The programs for A194699, the canonical program `A194699.P13133240351280273879` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194699 has offset 1).

The definition of A194699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A194698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194699.P13133240351280273879

`A194698(A000040(n+1)+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194699

/-- `A194698(A000040(n+1)+1)` -/
def P13133240351280273879.Spec : Prop :=
  ∀ n, P13133240351280273879.a n = A194699 (n + 1)

theorem P13133240351280273879.correct : P13133240351280273879.Spec := by
  intro n
  simp only [A194699, Nat.add_sub_cancel]

end A194699

/-! ## A194699.P15554042936876583537

`round(Δ[A007504(n)/24])`
-/

namespace A194699.P15554042936876583537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 n : ℚ) / 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A194699.P15554042936876583537

namespace A194699

/-- `round(Δ[A007504(n)/24])` -/
def P15554042936876583537.Spec : Prop :=
  ∀ n, P15554042936876583537.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P9645820002311159623

`round(A102781(n+1)/12)`
-/

namespace A194699.P9645820002311159623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A102781 (n + 1) : ℚ) / 12)

end

end A194699.P9645820002311159623

namespace A194699

/-- `round(A102781(n+1)/12)` -/
def P9645820002311159623.Spec : Prop :=
  ∀ n, P9645820002311159623.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P7244028522496835201

`round(A130290(n+1)/12)`
-/

namespace A194699.P7244028522496835201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A130290 (n + 1) : ℚ) / 12)

end

end A194699.P7244028522496835201

namespace A194699

/-- `round(A130290(n+1)/12)` -/
def P7244028522496835201.Spec : Prop :=
  ∀ n, P7244028522496835201.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P11233046374856291959

`round(A006005(n+1)/24)`
-/

namespace A194699.P11233046374856291959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006005 (n + 1) : ℚ) / 24)

end

end A194699.P11233046374856291959

namespace A194699

/-- `round(A006005(n+1)/24)` -/
def P11233046374856291959.Spec : Prop :=
  ∀ n, P11233046374856291959.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P3508499712076707976

`round(A072055(n+1)/48)`
-/

namespace A194699.P3508499712076707976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072055 (n + 1) : ℚ) / 48)

end

end A194699.P3508499712076707976

namespace A194699

/-- `round(A072055(n+1)/48)` -/
def P3508499712076707976.Spec : Prop :=
  ∀ n, P3508499712076707976.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P11353654635566339267

`round((A040976(n+1)+2)/24)`
-/

namespace A194699.P11353654635566339267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A040976 (n + 1) + 2 : ℚ) / 24)

end

end A194699.P11353654635566339267

namespace A194699

/-- `round((A040976(n+1)+2)/24)` -/
def P11353654635566339267.Spec : Prop :=
  ∀ n, P11353654635566339267.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P1511434785140244393

`round(record[A006530(n+2)]/24)`
-/

namespace A194699.P1511434785140244393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 24)

end

end A194699.P1511434785140244393

namespace A194699

/-- `round(record[A006530(n+2)]/24)` -/
def P1511434785140244393.Spec : Prop :=
  ∀ n, P1511434785140244393.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P8608377274421748601

`round(record[A020639(n+2)]/24)`
-/

namespace A194699.P8608377274421748601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 24)

end

end A194699.P8608377274421748601

namespace A194699

/-- `round(record[A020639(n+2)]/24)` -/
def P8608377274421748601.Spec : Prop :=
  ∀ n, P8608377274421748601.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P13948791730797633089

`round(eq[1, A001222(n+1)]/24)`
-/

namespace A194699.P13948791730797633089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 24)

end

end A194699.P13948791730797633089

namespace A194699

/-- `round(eq[1, A001222(n+1)]/24)` -/
def P13948791730797633089.Spec : Prop :=
  ∀ n, P13948791730797633089.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P9757922182506943625

`round(∏{p}[p?[A207790(n+1)], #]/24)`
-/

namespace A194699.P9757922182506943625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 24)

end

end A194699.P9757922182506943625

namespace A194699

/-- `round(∏{p}[p?[A207790(n+1)], #]/24)` -/
def P9757922182506943625.Spec : Prop :=
  ∀ n, P9757922182506943625.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P17560704224972923503

`round(record[A014963(n+2)]/24)`
-/

namespace A194699.P17560704224972923503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 24)

end

end A194699.P17560704224972923503

namespace A194699

/-- `round(record[A014963(n+2)]/24)` -/
def P17560704224972923503.Spec : Prop :=
  ∀ n, P17560704224972923503.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P15530310069364923457

`A194698(A000040(n+1))`
-/

namespace A194699.P15530310069364923457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A000040 (n + 1)).toNat

end

end A194699.P15530310069364923457

namespace A194699

/-- `A194698(A000040(n+1))` -/
def P15530310069364923457.Spec : Prop :=
  ∀ n, P15530310069364923457.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P4317566224821883660

`A194698(A006005(n+1))`
-/

namespace A194699.P4317566224821883660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A006005 (n + 1)).toNat

end

end A194699.P4317566224821883660

namespace A194699

/-- `A194698(A006005(n+1))` -/
def P4317566224821883660.Spec : Prop :=
  ∀ n, P4317566224821883660.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P6286465034587214391

`A194698(A008864(n+1))`
-/

namespace A194699.P6286465034587214391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A008864 (n + 1)).toNat

end

end A194699.P6286465034587214391

namespace A194699

/-- `A194698(A008864(n+1))` -/
def P6286465034587214391.Spec : Prop :=
  ∀ n, P6286465034587214391.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P7485820279278062884

`A194698(A028815(n+1))`
-/

namespace A194699.P7485820279278062884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A028815 (n + 1)).toNat

end

end A194699.P7485820279278062884

namespace A194699

/-- `A194698(A028815(n+1))` -/
def P7485820279278062884.Spec : Prop :=
  ∀ n, P7485820279278062884.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P6711568893168984000

`A194698(A055670(n+1))`
-/

namespace A194699.P6711568893168984000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A055670 (n + 1)).toNat

end

end A194699.P6711568893168984000

namespace A194699

/-- `A194698(A055670(n+1))` -/
def P6711568893168984000.Spec : Prop :=
  ∀ n, P6711568893168984000.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P14845287280784068338

`A194698(A063884(n+1))`
-/

namespace A194699.P14845287280784068338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A063884 (n + 1)).toNat

end

end A194699.P14845287280784068338

namespace A194699

/-- `A194698(A063884(n+1))` -/
def P14845287280784068338.Spec : Prop :=
  ∀ n, P14845287280784068338.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P8478172603329539170

`A194698(A063904(n+1))`
-/

namespace A194699.P8478172603329539170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A063904 (n + 1)).toNat

end

end A194699.P8478172603329539170

namespace A194699

/-- `A194698(A063904(n+1))` -/
def P8478172603329539170.Spec : Prop :=
  ∀ n, P8478172603329539170.a n = A194699 (n + 1)

end A194699

/-! ## A194699.P13021056697539038622

`A194698(A082542(n+1))`
-/

namespace A194699.P13021056697539038622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A082542 (n + 1)).toNat

end

end A194699.P13021056697539038622

namespace A194699

/-- `A194698(A082542(n+1))` -/
def P13021056697539038622.Spec : Prop :=
  ∀ n, P13021056697539038622.a n = A194699 (n + 1)

end A194699

