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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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
# A366701: a(n) is the nearest integer to n*log_2(3/2).

The programs for A366701, the canonical program `A366701.P1845777089656315701` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366701 has offset 0).

The definition of A366701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366701.P1845777089656315701

`round(n*log(3/2)/log(2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A366701

/-- `round(n*log(3/2)/log(2))` -/
def P1845777089656315701.Spec : Prop :=
  ∀ n, P1845777089656315701.a n = A366701 n

theorem P1845777089656315701.correct : P1845777089656315701.Spec := by
  intro n
  simp only [A366701]

end A366701

/-! ## A366701.P12187457280936177859

`A020914(2*n)-A122437(n+1)`
-/

namespace A366701.P12187457280936177859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (2 * n) - A122437 (n + 1)

end

end A366701.P12187457280936177859

namespace A366701

/-- `A020914(2*n)-A122437(n+1)` -/
def P12187457280936177859.Spec : Prop :=
  ∀ n, P12187457280936177859.a n = A366701 n

end A366701

/-! ## A366701.P15327403609826329825

`A008619(A098294(2*n))-1`
-/

namespace A366701.P15327403609826329825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A098294 (2 * n)).toNat - 1

end

end A366701.P15327403609826329825

namespace A366701

/-- `A008619(A098294(2*n))-1` -/
def P15327403609826329825.Spec : Prop :=
  ∀ n, P15327403609826329825.a n = A366701 n

end A366701

/-! ## A366701.P3514542481579086576

`A098294(2*n)-A098294(n)`
-/

namespace A366701.P3514542481579086576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (2 * n) - A098294 n

end

end A366701.P3514542481579086576

namespace A366701

/-- `A098294(2*n)-A098294(n)` -/
def P3514542481579086576.Spec : Prop :=
  ∀ n, P3514542481579086576.a n = A366701 n

end A366701

/-! ## A366701.P15668015293652179211

`A004526(A020914(2*n))-n`
-/

namespace A366701.P15668015293652179211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020914 (2 * n)).toNat - (n : ℤ)

end

end A366701.P15668015293652179211

namespace A366701

/-- `A004526(A020914(2*n))-n` -/
def P15668015293652179211.Spec : Prop :=
  ∀ n, P15668015293652179211.a n = A366701 n

end A366701

/-! ## A366701.P7155645494260284518

`A110654(A056576(2*n))-n`
-/

namespace A366701.P7155645494260284518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A056576 (2 * n)).toNat - (n : ℤ)

end

end A366701.P7155645494260284518

namespace A366701

/-- `A110654(A056576(2*n))-n` -/
def P7155645494260284518.Spec : Prop :=
  ∀ n, P7155645494260284518.a n = A366701 n

end A366701

/-! ## A366701.P14601908099314844744

`floor(log2(A033320(n)))`
-/

namespace A366701.P14601908099314844744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A033320 n).toNat

end

end A366701.P14601908099314844744

namespace A366701

/-- `floor(log2(A033320(n)))` -/
def P14601908099314844744.Spec : Prop :=
  ∀ n, (P14601908099314844744.a n : ℤ) = A366701 n

end A366701

/-!
# A366702: Numbers k such that 12^k + 1 is a semiprime.

The programs for A366702, there is no canonical definition to state claims against.
-/

/-! ## A366702.P6997331841238691752

`eq[2, A366712(n)]`
-/

namespace A366702.P6997331841238691752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366702.P6997331841238691752

/-! ## A366702.P16935516266340011144

`eq[2, A366713(n)]`
-/

namespace A366702.P16935516266340011144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366702.P16935516266340011144

/-! ## A366702.P12572855541217591246

`eq[4, A366714(n)]`
-/

namespace A366702.P12572855541217591246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366702.P12572855541217591246

/-! ## A366702.P17140489243589865083

`lt[A026249(A366713(n)+1), 2]`
-/

namespace A366702.P17140489243589865083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A366713 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366702.P17140489243589865083

/-! ## A366702.P14892533400851563331

`lt[A033192(A366712(n)), A073855(n)]`
-/

namespace A366702.P14892533400851563331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (A366712 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366702.P14892533400851563331

/-!
# A366705: Number of symmetry classes of partially ordered pattern classes defined by avoiding a size n poset.

The programs for A366705, there is no canonical definition to state claims against.
-/

/-! ## A366705.P9839965239089462434

`A090735(A000798(n)+1)`
-/

namespace A366705.P9839965239089462434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A000798 n + 1).toNat

end

end A366705.P9839965239089462434

/-! ## A366705.P1166368540604906715

`A291784(A006125(n)-A005044(n))`
-/

namespace A366705.P1166368540604906715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A006125 n - A005044 n).toNat

end

end A366705.P1166368540604906715

/-!
# A366706: Number of permutations of length n avoiding the permutations 13452, 13542, 14253, 14352, 14532, 15243, 15342, 15432, 24153, and 25143.

The programs for A366706, there is no canonical definition to state claims against.
-/

/-! ## A366706.P17509831360935993713

`A098380(A101892(n))`
-/

namespace A366706.P17509831360935993713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098380 (A101892 n).toNat

end

end A366706.P17509831360935993713

/-! ## A366706.P2669657870080202066

`A325954(A001109(n))+1`
-/

namespace A366706.P2669657870080202066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325954 (A001109 n).toNat + 1

end

end A366706.P2669657870080202066

/-! ## A366706.P1296418109523530714

`A218044(A000111(n+1))-3`
-/

namespace A366706.P1296418109523530714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218044 (A000111 (n + 1)).toNat - 3

end

end A366706.P1296418109523530714

/-!
# A366707: Number of distinct prime divisors of 12^n - 1.

The programs for A366707, there is no canonical definition to state claims against.
-/

/-! ## A366707.P3845135296434076194

`∑{e}[A366709(n+1), #]`
-/

namespace A366707.P3845135296434076194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366707.P3845135296434076194

/-! ## A366707.P15746022121888253611

`A001222(A366709(n+1))`
-/

namespace A366707.P15746022121888253611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366709 (n + 1)).toNat

end

end A366707.P15746022121888253611

/-! ## A366707.P4181083490702958275

`A319695(2*A366709(n+1))`
-/

namespace A366707.P4181083490702958275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (2 * A366709 (n + 1)).toNat

end

end A366707.P4181083490702958275

/-! ## A366707.P17465641452258096175

`A070939(A366709(n+1)/2)`
-/

namespace A366707.P17465641452258096175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A366709 (n + 1) : ℚ) / 2)).toNat

end

end A366707.P17465641452258096175

/-! ## A366707.P2894900350457318335

`A073093(A366709(n+1)/2)`
-/

namespace A366707.P2894900350457318335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((A366709 (n + 1) : ℚ) / 2)).toNat

end

end A366707.P2894900350457318335

/-!
# A366708: Number of prime factors of 12^n - 1 (counted with multiplicity).

The programs for A366708, there is no canonical definition to state claims against.
-/

/-! ## A366708.P15017563301105159967

`A003313(A366709(n+1))`
-/

namespace A366708.P15017563301105159967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A366709 (n + 1)).toNat

end

end A366708.P15017563301105159967

/-! ## A366708.P122708255108090107

`A056792(A366709(n+1)/2)`
-/

namespace A366708.P122708255108090107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (SequenceMachineLib.roundAway ((A366709 (n + 1) : ℚ) / 2)).toNat

end

end A366708.P122708255108090107

/-! ## A366708.P14788218148407266313

`A366707(n+1)+A325392(A366709(n+1))`
-/

namespace A366708.P14788218148407266313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366707 (n + 1) + A325392 (A366709 (n + 1)).toNat

end

end A366708.P14788218148407266313

/-! ## A366708.P4620026955559644184

`A302295(A366709(n+1)+1)`
-/

namespace A366708.P4620026955559644184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A366709 (n + 1) + 1).toNat

end

end A366708.P4620026955559644184

/-! ## A366708.P1823825251772155938

`A070939(A366709(n+1)-1)`
-/

namespace A366708.P1823825251772155938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A366709 (n + 1) - 1).toNat

end

end A366708.P1823825251772155938

/-!
# A366710: Sum of the divisors of 12^n-1.

The programs for A366710, there is no canonical definition to state claims against.
-/

/-! ## A366710.P6081608400685684708

`∑{d}[∑[6*12^n], #]`
-/

namespace A366710.P6081608400685684708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 12 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366710.P6081608400685684708

/-!
# A366711: a(n) = phi(12^n-1), where phi is Euler's totient function (A000010).

The programs for A366711, there is no canonical definition to state claims against.
-/

/-! ## A366711.P14382708376766449086

`10*A000010(A016125(n))`
-/

namespace A366711.P14382708376766449086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000010 (A016125 n).toNat

end

end A366711.P14382708376766449086

/-!
# A366712: Number of distinct prime divisors of 12^n + 1.

The programs for A366712, there is no canonical definition to state claims against.
-/

/-! ## A366712.P3620277387391890062

`A277013(A366714(n))%A023394(n+1)`
-/

namespace A366712.P3620277387391890062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277013 (A366714 n).toNat) (A023394 (n + 1))

end

end A366712.P3620277387391890062

/-! ## A366712.P12449548705540815726

`A001222(A366714(n)%A143823(2*(n+1)))`
-/

namespace A366712.P12449548705540815726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A366714 n) (A143823 (2 * (n + 1)))).toNat

end

end A366712.P12449548705540815726

/-! ## A366712.P7064184049519981907

`A001222(A366714(n))%A136681(n+3)`
-/

namespace A366712.P7064184049519981907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A366714 n).toNat) (A136681 (n + 3))

end

end A366712.P7064184049519981907

/-! ## A366712.P11318942323633395869

`A001222(A366714(n)%A162304(n+1))`
-/

namespace A366712.P11318942323633395869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A366714 n) (A162304 (n + 1))).toNat

end

end A366712.P11318942323633395869

/-! ## A366712.P4658830357603532387

`A121341(A366714(n))`
-/

namespace A366712.P4658830357603532387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A366714 n).toNat

end

end A366712.P4658830357603532387

/-!
# A366713: Number of prime factors of 12^n + 1 (counted with multiplicity).

The programs for A366713, there is no canonical definition to state claims against.
-/

/-! ## A366713.P14070550322560172495

`A056239(A366714(n))%A155173(n+1)`
-/

namespace A366713.P14070550322560172495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A366714 n).toNat) (A155173 (n + 1))

end

end A366713.P14070550322560172495

/-! ## A366713.P5925929936081141651

`A056239(A366714(n))%A354768(A061408(n))`
-/

namespace A366713.P5925929936081141651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A366714 n).toNat) (A354768 (A061408 n).toNat)

end

end A366713.P5925929936081141651

/-! ## A366713.P303467213043693139

`A048675(A366714(n))`
-/

namespace A366713.P303467213043693139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A366714 n).toNat

end

end A366713.P303467213043693139

/-! ## A366713.P12515370025518679626

`A056239(A366714(n))+val(A164288(n+1), 2)`
-/

namespace A366713.P12515370025518679626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A366714 n).toNat + (SequenceMachineLib.valuation (A164288 (n + 1)).toNat 2 : ℤ)

end

end A366713.P12515370025518679626

/-! ## A366713.P104300586228973359

`A056239(A366714(n)%A090782(n+1))`
-/

namespace A366713.P104300586228973359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A366714 n) (A090782 (n + 1))).toNat

end

end A366713.P104300586228973359

/-!
# A366714: Number of divisors of 12^n+1.

The programs for A366714, there is no canonical definition to state claims against.
-/

/-! ## A366714.P14041992329835397335

`A286575(A042291(n))`
-/

namespace A366714.P14041992329835397335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286575 (A042291 n).toNat

end

end A366714.P14041992329835397335

/-! ## A366714.P19316521058872402

`2*A009205(A007051(n))`
-/

namespace A366714.P19316521058872402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009205 (A007051 n).toNat

end

end A366714.P19316521058872402

/-! ## A366714.P16951580789143349289

`A182816(4*A337737(n))`
-/

namespace A366714.P16951580789143349289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (4 * A337737 n).toNat

end

end A366714.P16951580789143349289

/-! ## A366714.P15095241888665117675

`A000005(lcm(5, A199103(n)))`
-/

namespace A366714.P15095241888665117675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm 5 (A199103 n))

end

end A366714.P15095241888665117675

/-! ## A366714.P7808612753337606607

`A000005(or(2, A333608(n+3)))`
-/

namespace A366714.P7808612753337606607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor 2 (A333608 (n + 3))).toNat

end

end A366714.P7808612753337606607

/-!
# A366715: Sum of the divisors of 12^n+1.

The programs for A366715, the canonical program `A366715.P16321772633016929860` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366715 has offset 0).

The definition of A366715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366715.P16321772633016929860

`A000203(A178248(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366715

/-- `A000203(A178248(n))` -/
def P16321772633016929860.Spec : Prop :=
  ∀ n, P16321772633016929860.a n = A366715 n

theorem P16321772633016929860.correct : P16321772633016929860.Spec := by
  intro n
  simp only [A366715]

end A366715

/-! ## A366715.P1281936449864279372

`∑{d}[12^n+1, #]`
-/

namespace A366715.P1281936449864279372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366715.P1281936449864279372

namespace A366715

/-- `∑{d}[12^n+1, #]` -/
def P1281936449864279372.Spec : Prop :=
  ∀ n, (P1281936449864279372.a n : ℤ) = A366715 n

end A366715

/-!
# A366716: a(n) = phi(12^n+1), where phi is Euler's totient function (A000010).

The programs for A366716, the canonical program `A366716.P7239533415179572660` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366716 has offset 0).

The definition of A366716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366716.P7239533415179572660

`A000010(A178248(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366716

/-- `A000010(A178248(n))` -/
def P7239533415179572660.Spec : Prop :=
  ∀ n, P7239533415179572660.a n = A366716 n

theorem P7239533415179572660.correct : P7239533415179572660.Spec := by
  intro n
  simp only [A366716]

end A366716

/-! ## A366716.P5520709722624836811

`∏{p}[12^n+1, #-1]`
-/

namespace A366716.P5520709722624836811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)

end

end A366716.P5520709722624836811

namespace A366716

/-- `∏{p}[12^n+1, #-1]` -/
def P5520709722624836811.Spec : Prop :=
  ∀ n, P5520709722624836811.a n = A366716 n

end A366716

/-!
# A366717: Smallest prime dividing 12^n - 1.

The programs for A366717, there is no canonical definition to state claims against.
-/

/-! ## A366717.P6785119916655714097

`A368055(5*(n+1))`
-/

namespace A366717.P6785119916655714097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368055 (5 * (n + 1))

end

end A366717.P6785119916655714097

/-!
# A366718: Largest prime factor of 12^n - 1.

The programs for A366718, there is no canonical definition to state claims against.
-/

/-! ## A366718.P11820751543462223910

`A006530(gcd(11, n)*A016125(n))`
-/

namespace A366718.P11820751543462223910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Nat.gcd 11 n : ℤ) * A016125 n).toNat

end

end A366718.P11820751543462223910

/-!
# A366720: Largest prime factor of 12^n+1.

The programs for A366720, the canonical program `A366720.P18291755538968107855` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366720 has offset 0).

The definition of A366720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366720.P18291755538968107855

`A006530(A178248(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366720

/-- `A006530(A178248(n))` -/
def P18291755538968107855.Spec : Prop :=
  ∀ n, P18291755538968107855.a n = A366720 n

theorem P18291755538968107855.correct : P18291755538968107855.Spec := by
  intro n
  simp only [A366720]

end A366720

/-!
# A366721: Number of digits left of the radix point of n when written in base Pi using a greedy algorithm representation.

The programs for A366721, the canonical program `A366721.P14264005158293563005` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366721 has offset 0).

The definition of A366721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366721.P12413000232464147404

`∑{digits}[A344939(n), A015129(#)]`
-/

namespace A366721.P12413000232464147404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015129 x).sum

end

end A366721.P12413000232464147404

namespace A366721

/-- `∑{digits}[A344939(n), A015129(#)]` -/
def P12413000232464147404.Spec : Prop :=
  ∀ n, P12413000232464147404.a n = A366721 n

end A366721

/-! ## A366721.P5033755699548809806

`∑{digits}[A344939(n), A027082(#)]`
-/

namespace A366721.P5033755699548809806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A027082 x).sum

end

end A366721.P5033755699548809806

namespace A366721

/-- `∑{digits}[A344939(n), A027082(#)]` -/
def P5033755699548809806.Spec : Prop :=
  ∀ n, P5033755699548809806.a n = A366721 n

end A366721

/-! ## A366721.P593266833426487924

`∑{digits}[A344939(n), A108553(#)]`
-/

namespace A366721.P593266833426487924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A108553 x).sum

end

end A366721.P593266833426487924

namespace A366721

/-- `∑{digits}[A344939(n), A108553(#)]` -/
def P593266833426487924.Spec : Prop :=
  ∀ n, P593266833426487924.a n = A366721 n

end A366721

/-! ## A366721.P14264005158293563005

`∑[char[A102477(A054541(3*n+4))]]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366721

/-- `∑[char[A102477(A054541(3*n+4))]]+1` -/
def P14264005158293563005.Spec : Prop :=
  ∀ n, (P14264005158293563005.a n : ℤ) = A366721 n

theorem P14264005158293563005.correct : P14264005158293563005.Spec := by
  intro n
  simp only [A366721]

end A366721

/-! ## A366721.P4591565543927713177

`∑[A089806(∑[A069787(n+4)])]`
-/

namespace A366721.P4591565543927713177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089806 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366721.P4591565543927713177

namespace A366721

/-- `∑[A089806(∑[A069787(n+4)])]` -/
def P4591565543927713177.Spec : Prop :=
  ∀ n, P4591565543927713177.a n = A366721 n

end A366721

/-! ## A366721.P2075821282735514935

`A055642(A344939(n))`
-/

namespace A366721.P2075821282735514935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A344939 n).toNat

end

end A366721.P2075821282735514935

namespace A366721

/-- `A055642(A344939(n))` -/
def P2075821282735514935.Spec : Prop :=
  ∀ n, P2075821282735514935.a n = A366721 n

end A366721

/-! ## A366721.P13993734325802623325

`A055642(comp[A305154(n)]²)`
-/

namespace A366721.P13993734325802623325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305154 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A366721.P13993734325802623325

namespace A366721

/-- `A055642(comp[A305154(n)]²)` -/
def P13993734325802623325.Spec : Prop :=
  ∀ n, P13993734325802623325.a n = A366721 n

end A366721

/-! ## A366721.P9710235449356633627

`A055642(comp[A230226(n+1)]²)`
-/

namespace A366721.P9710235449356633627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230226 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A366721.P9710235449356633627

namespace A366721

/-- `A055642(comp[A230226(n+1)]²)` -/
def P9710235449356633627.Spec : Prop :=
  ∀ n, P9710235449356633627.a n = A366721 n

end A366721

/-! ## A366721.P1260697175700246726

`A055642(comp[A242958(n+3)]²)`
-/

namespace A366721.P1260697175700246726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242958 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A366721.P1260697175700246726

namespace A366721

/-- `A055642(comp[A242958(n+3)]²)` -/
def P1260697175700246726.Spec : Prop :=
  ∀ n, P1260697175700246726.a n = A366721 n

end A366721

/-! ## A366721.P16867702975313901934

`A055642(comp[A007283(n+4)]²)`
-/

namespace A366721.P16867702975313901934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A366721.P16867702975313901934

namespace A366721

/-- `A055642(comp[A007283(n+4)]²)` -/
def P16867702975313901934.Spec : Prop :=
  ∀ n, P16867702975313901934.a n = A366721 n

end A366721

/-!
# A366722: Number of limit dominated binary relations on [n].

The programs for A366722, there is no canonical definition to state claims against.
-/

/-! ## A366722.P9156785652141688028

`A371314(n)+A000578(A032109(n))`
-/

namespace A366722.P9156785652141688028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371314 n + A000578 (A032109 n).toNat

end

end A366722.P9156785652141688028

/-!
# A366723: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(floor(n/k)+4,5).

The programs for A366723, the canonical program `A366723.P14973946033266997521` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366723 has offset 1).

The definition of A366723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366723.P14973946033266997521

`∑[A366814(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A366723

/-- `∑[A366814(n+1)]` -/
def P14973946033266997521.Spec : Prop :=
  ∀ n, P14973946033266997521.a n = A366723 (n + 1)

theorem P14973946033266997521.correct : P14973946033266997521.Spec := by
  intro n
  simp only [A366723, Nat.add_sub_cancel]

end A366723

/-! ## A366723.P18232079629113319322

`A366814(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A366723.P18232079629113319322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366814 (n + 1) + a (A023443 n).toNat

end

end A366723.P18232079629113319322

namespace A366723

/-- `A366814(n+1)+a(A023443(n))` -/
def P18232079629113319322.Spec : Prop :=
  ∀ n, P18232079629113319322.a n = A366723 (n + 1)

end A366723

/-! ## A366723.P14901483802791857654

`∑[∑{d}[n+1, A048272(#)*A117109((n+1)/#)]]`
-/

namespace A366723.P14901483802791857654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A048272 d * A117109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366723.P14901483802791857654

namespace A366723

/-- `∑[∑{d}[n+1, A048272(#)*A117109((n+1)/#)]]` -/
def P14901483802791857654.Spec : Prop :=
  ∀ n, P14901483802791857654.a n = A366723 (n + 1)

end A366723

/-!
# A366724: First index k where A366574(k) = n.

The programs for A366724, there is no canonical definition to state claims against.
-/

/-! ## A366724.P6215377038928744308

`∑[∑[a(n-1)+n]]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A366724.P6215377038928744308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366724.P6215377038928744308

/-! ## A366724.P7922875787868121856

`∑[a(n-1)-(1-∑[n])]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A366724.P7922875787868121856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 1) - (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366724.P7922875787868121856

/-! ## A366724.P16905769001717567602

`∑[∑[∑[n]+1-A046698(n)]]`
-/

namespace A366724.P16905769001717567602
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℤ) - A046698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366724.P16905769001717567602

/-! ## A366724.P1468736221665964064

`A116699(n+1)+comp[2*(n+1)]`
-/

namespace A366724.P1468736221665964064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A366724.P1468736221665964064

/-! ## A366724.P2012601444259784829

`comp[2*(n+1)]+∑[A105163(n+1)]`
-/

namespace A366724.P2012601444259784829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A366724.P2012601444259784829

/-!
# A366725: Sum of odd indices of distinct prime factors of n.

The programs for A366725, the canonical program `A366725.P17918233649770589852` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366725 has offset 1).

The definition of A366725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366725.P7820219490913125759

`A066328(n+1)-2*A366784(n+1)`
-/

namespace A366725.P7820219490913125759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1) - 2 * A366784 (n + 1)

end

end A366725.P7820219490913125759

namespace A366725

/-- `A066328(n+1)-2*A366784(n+1)` -/
def P7820219490913125759.Spec : Prop :=
  ∀ n, P7820219490913125759.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P7898422478943099058

`A066328(A247503(n+1))`
-/

namespace A366725.P7898422478943099058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A247503 (n + 1)).toNat

end

end A366725.P7898422478943099058

namespace A366725

/-- `A066328(A247503(n+1))` -/
def P7898422478943099058.Spec : Prop :=
  ∀ n, P7898422478943099058.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P17918233649770589852

`A056239(A351517(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366725

/-- `A056239(A351517(n+1))` -/
def P17918233649770589852.Spec : Prop :=
  ∀ n, P17918233649770589852.a n = A366725 (n + 1)

theorem P17918233649770589852.correct : P17918233649770589852.Spec := by
  intro n
  simp only [A366725, Nat.add_sub_cancel]

end A366725

/-! ## A366725.P12246882002579521810

`∑{p}[A247503(n+1), A000720(#)]`
-/

namespace A366725.P12246882002579521810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p

end

end A366725.P12246882002579521810

namespace A366725

/-- `∑{p}[A247503(n+1), A000720(#)]` -/
def P12246882002579521810.Spec : Prop :=
  ∀ n, P12246882002579521810.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P10494762376372818593

`∑{p}[A247503(n+1), A056239(#)]`
-/

namespace A366725.P10494762376372818593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A056239 p

end

end A366725.P10494762376372818593

namespace A366725

/-- `∑{p}[A247503(n+1), A056239(#)]` -/
def P10494762376372818593.Spec : Prop :=
  ∀ n, P10494762376372818593.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P10174643409531387105

`∑{p}[A247503(n+1), A289508(#)]`
-/

namespace A366725.P10174643409531387105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A289508 p

end

end A366725.P10174643409531387105

namespace A366725

/-- `∑{p}[A247503(n+1), A289508(#)]` -/
def P10174643409531387105.Spec : Prop :=
  ∀ n, P10174643409531387105.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P17238828408745803880

`∑{p}[(n+1)/A297002(A319522(n+1)), A003963(#)]`
-/

namespace A366725.P17238828408745803880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A297002 (A319522 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A003963 p

end

end A366725.P17238828408745803880

namespace A366725

/-- `∑{p}[(n+1)/A297002(A319522(n+1)), A003963(#)]` -/
def P17238828408745803880.Spec : Prop :=
  ∀ n, P17238828408745803880.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P12281194902470103360

`∑{p}[(n+1)/A297002(A319522(n+1)), A055396(#)]`
-/

namespace A366725.P12281194902470103360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A297002 (A319522 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A055396 p

end

end A366725.P12281194902470103360

namespace A366725

/-- `∑{p}[(n+1)/A297002(A319522(n+1)), A055396(#)]` -/
def P12281194902470103360.Spec : Prop :=
  ∀ n, P12281194902470103360.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P337524226953138800

`∑{p}[(n+1)/A297002(A319522(n+1)), A066136(#)]`
-/

namespace A366725.P337524226953138800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A297002 (A319522 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A066136 p

end

end A366725.P337524226953138800

namespace A366725

/-- `∑{p}[(n+1)/A297002(A319522(n+1)), A066136(#)]` -/
def P337524226953138800.Spec : Prop :=
  ∀ n, P337524226953138800.a n = A366725 (n + 1)

end A366725

/-! ## A366725.P4505019899925346966

`A366784(n+1)+A366784(n+1)+A332422(n+1)`
-/

namespace A366725.P4505019899925346966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366784 (n + 1) + (A366784 (n + 1) + A332422 (n + 1))

end

end A366725.P4505019899925346966

namespace A366725

/-- `A366784(n+1)+A366784(n+1)+A332422(n+1)` -/
def P4505019899925346966.Spec : Prop :=
  ∀ n, P4505019899925346966.a n = A366725 (n + 1)

end A366725

/-!
# A366726: Lee's empirically improved Tokuda gaps for shellsort.

The programs for A366726, there is no canonical definition to state claims against.
-/

/-! ## A366726.P17438363214047906509

`Δ[A321667(A020992(Δ[n²]))]`
-/

namespace A366726.P17438363214047906509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321667 (A020992 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366726.P17438363214047906509

/-! ## A366726.P5212355154748193958

`A126257((n+1)*A052548(n))`
-/

namespace A366726.P5212355154748193958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 ((n + 1 : ℤ) * A052548 n).toNat

end

end A366726.P5212355154748193958

/-! ## A366726.P5732958870795791670

`A001462(floor(48*A001631(2*(n+2))/26))`
-/

namespace A366726.P5732958870795791670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌊48 * ((A001631 (2 * (n + 2)) : ℚ) / 26)⌋.toNat

end

end A366726.P5732958870795791670

/-!
# A366732: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * A(x)^n * (2 - x^(n-1))^(n+1).

The programs for A366732, there is no canonical definition to state claims against.
-/

/-! ## A366732.P2877449445182539002

`A333852(A322892(n))+A000079(n)`
-/

namespace A366732.P2877449445182539002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333852 (A322892 n).toNat + A000079 n

end

end A366732.P2877449445182539002

/-! ## A366732.P4496188900178055758

`A218299(n)+A056594(A123476(n+1))`
-/

namespace A366732.P4496188900178055758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218299 n + A056594 (A123476 (n + 1)).toNat

end

end A366732.P4496188900178055758

/-!
# A366733: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * A(x)^n * (3 - x^(n-1))^(n+1).

The programs for A366733, there is no canonical definition to state claims against.
-/

/-! ## A366733.P7939063616834699889

`A166048(A018093(n+1))`
-/

namespace A366733.P7939063616834699889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166048 (A018093 (n + 1)).toNat

end

end A366733.P7939063616834699889

/-!
# A366734: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * A(x)^n * (4 - x^(n-1))^(n+1).

The programs for A366734, there is no canonical definition to state claims against.
-/

/-! ## A366734.P7457562416722538634

`A108806(∏[A258116(n+1)])`
-/

namespace A366734.P7457562416722538634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108806 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A366734.P7457562416722538634

/-!
# A366735: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * A(x)^n * (1 + (-x)^(n-1))^(n+1).

The programs for A366735, there is no canonical definition to state claims against.
-/

/-! ## A366735.P17318298167346643494

`A032615(A150771(n))+A000108(n)`
-/

namespace A366735.P17318298167346643494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A150771 n).toNat + A000108 n

end

end A366735.P17318298167346643494

/-! ## A366735.P4637590993667962405

`A333256(A011782(n))+A109085(n)`
-/

namespace A366735.P4637590993667962405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A011782 n).toNat + A109085 n

end

end A366735.P4637590993667962405

/-!
# A366736: Central terms of triangle A366730.

The programs for A366736, there is no canonical definition to state claims against.
-/

/-! ## A366736.P1995854858215911194

`A366730(∑[4*n])`
-/

namespace A366736.P1995854858215911194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366730 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366736.P1995854858215911194

/-! ## A366736.P9459612199569129814

`A366730(A046092(n))+A080300(2*n+1)`
-/

namespace A366736.P9459612199569129814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366730 (A046092 n).toNat + A080300 (2 * n + 1)

end

end A366736.P9459612199569129814

/-!
# A366737: Number of numbers k <= A056239(n) that can be written as a linear combination of the prime indices of n (allowing coefficients of 0).

The programs for A366737, there is no canonical definition to state claims against.
-/

/-! ## A366737.P18236654438141838239

`A001221(C(A349391(n+1)+n, n))`
-/

namespace A366737.P18236654438141838239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A349391 (n + 1) + (n : ℤ)).toNat n)

end

end A366737.P18236654438141838239

/-! ## A366737.P16921058111009460548

`A351465(n+1)-A124761(A320008(n))`
-/

namespace A366737.P16921058111009460548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351465 (n + 1) - A124761 (A320008 n).toNat

end

end A366737.P16921058111009460548

/-! ## A366737.P8532251585279559968

`A001222(C(A329600(n+1), A340082(n+1)))`
-/

namespace A366737.P8532251585279559968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A329600 (n + 1)).toNat (A340082 (n + 1)).toNat)

end

end A366737.P8532251585279559968

/-! ## A366737.P4915360439170602103

`A052298(A308692(n+1))`
-/

namespace A366737.P4915360439170602103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052298 (A308692 (n + 1)).toNat

end

end A366737.P4915360439170602103

/-! ## A366737.P12894001865542112311

`A256479(A393352(n+1))`
-/

namespace A366737.P12894001865542112311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A393352 (n + 1)).toNat

end

end A366737.P12894001865542112311

/-!
# A366738: Number of semi-sums of integer partitions of n.

The programs for A366738, there is no canonical definition to state claims against.
-/

/-! ## A366738.P4559704851682687091

`∑[A055570(∑[A101707(n)])]`
-/

namespace A366738.P4559704851682687091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366738.P4559704851682687091

/-! ## A366738.P1202477305353459276

`A135662(A318267(n)+A001405(n))`
-/

namespace A366738.P1202477305353459276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A318267 n + A001405 n).toNat

end

end A366738.P1202477305353459276

/-! ## A366738.P1055633752561099199

`A135661(A000079(n)*A014121(n+2))`
-/

namespace A366738.P1055633752561099199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A000079 n * A014121 (n + 2)).toNat

end

end A366738.P1055633752561099199

/-! ## A366738.P11793062786711009626

`∑[A347777(A000322(n))+n-A355834(n+1)]`
-/

namespace A366738.P11793062786711009626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 (A000322 n).toNat + (n : ℤ) - A355834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366738.P11793062786711009626

/-! ## A366738.P2928397259079064572

`A024317(A002965(2*(n+2))-A356371(n+1))`
-/

namespace A366738.P2928397259079064572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A002965 (2 * (n + 2)) - A356371 (n + 1)).toNat

end

end A366738.P2928397259079064572

/-!
# A366740: Positive integers whose semiprime divisors do not all have different Heinz weights (sum of prime indices, A056239).

The programs for A366740, there is no canonical definition to state claims against.
-/

/-! ## A366740.P17943344565588685907

`∩[10*n, A008585(A360681(n+1))]`
-/

namespace A366740.P17943344565588685907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A360681 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366740.P17943344565588685907

/-! ## A366740.P6798188386777399729

`A040006(A126473(n))*A215951(n+1)`
-/

namespace A366740.P6798188386777399729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 (A126473 n).toNat * A215951 (n + 1)

end

end A366740.P6798188386777399729

/-! ## A366740.P17571078438181251722

`A071140(n+1)*A176059(A102080(n+1))`
-/

namespace A366740.P17571078438181251722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1) * A176059 (A102080 (n + 1)).toNat

end

end A366740.P17571078438181251722

/-!
# A366741: Number of semi-sums of strict integer partitions of n.

The programs for A366741, there is no canonical definition to state claims against.
-/

/-! ## A366741.P18330097911551880289

`A321729(n)-A137734(A188181(n+1))`
-/

namespace A366741.P18330097911551880289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 n - A137734 (A188181 (n + 1)).toNat

end

end A366741.P18330097911551880289

/-!
# A366742: The number of divisors of the least coreful infinitary divisor of n.

The programs for A366742, the canonical program `A366742.P6876343888445618977` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366742 has offset 1).

The definition of A366742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366742.P6876343888445618977

`∏{e}[n+1, and(#, -#)+1]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A366742

/-- `∏{e}[n+1, and(#, -#)+1]` -/
def P6876343888445618977.Spec : Prop :=
  ∀ n, P6876343888445618977.a n = A366742 (n + 1)

theorem P6876343888445618977.correct : P6876343888445618977.Spec := by
  intro n
  simp only [A366742, Nat.add_sub_cancel]

end A366742

/-! ## A366742.P4485050651305790926

`∏{e}[n+1, 1-or(#, -#)]`
-/

namespace A366742.P4485050651305790926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - Int.lor (Nat.factorization (f1 n) p : ℤ) (-(Nat.factorization (f1 n) p : ℤ)))

end

end A366742.P4485050651305790926

namespace A366742

/-- `∏{e}[n+1, 1-or(#, -#)]` -/
def P4485050651305790926.Spec : Prop :=
  ∀ n, P4485050651305790926.a n = A366742 (n + 1)

end A366742

/-! ## A366742.P17782815523781677262

`A000005(A365296(n+1))`
-/

namespace A366742.P17782815523781677262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A365296 (n + 1)).toNat

end

end A366742.P17782815523781677262

namespace A366742

/-- `A000005(A365296(n+1))` -/
def P17782815523781677262.Spec : Prop :=
  ∀ n, P17782815523781677262.a n = A366742 (n + 1)

end A366742

/-! ## A366742.P8013910541822667558

`A367170(A365296(2*n+1-n))`
-/

namespace A366742.P8013910541822667558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A365296 (2 * n + 1 - n)).toNat

end

end A366742.P8013910541822667558

namespace A366742

/-- `A367170(A365296(2*n+1-n))` -/
def P8013910541822667558.Spec : Prop :=
  ∀ n, P8013910541822667558.a n = A366742 (n + 1)

end A366742

/-! ## A366742.P1652976473404706249

`A005361(A007947(n+1)*A365296(n+1))`
-/

namespace A366742.P1652976473404706249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A007947 (n + 1) * A365296 (n + 1)).toNat

end

end A366742.P1652976473404706249

namespace A366742

/-- `A005361(A007947(n+1)*A365296(n+1))` -/
def P1652976473404706249.Spec : Prop :=
  ∀ n, P1652976473404706249.a n = A366742 (n + 1)

end A366742

/-! ## A366742.P16011787293759438441

`A367987(A365296((n+1)²))`
-/

namespace A366742.P16011787293759438441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A365296 ((n + 1) ^ 2)).toNat

end

end A366742.P16011787293759438441

namespace A366742

/-- `A367987(A365296((n+1)²))` -/
def P16011787293759438441.Spec : Prop :=
  ∀ n, P16011787293759438441.a n = A366742 (n + 1)

end A366742

/-! ## A366742.P3891906084634703955

`A367987(A365296(n+1)*A365296(n+1))`
-/

namespace A366742.P3891906084634703955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A365296 (n + 1) * A365296 (n + 1)).toNat

end

end A366742.P3891906084634703955

namespace A366742

/-- `A367987(A365296(n+1)*A365296(n+1))` -/
def P3891906084634703955.Spec : Prop :=
  ∀ n, P3891906084634703955.a n = A366742 (n + 1)

end A366742

/-!
# A366743: The sum of infinitary divisors of the least coreful infinitary divisor of n.

The programs for A366743, there is no canonical definition to state claims against.
-/

/-! ## A366743.P8742549226103645570

`A034448(A365296(n+1))`
-/

namespace A366743.P8742549226103645570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A365296 (n + 1)).toNat

end

end A366743.P8742549226103645570

/-! ## A366743.P17342962161257800153

`A369762(A365296(2*n+1-n))`
-/

namespace A366743.P17342962161257800153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369762 (A365296 (2 * n + 1 - n)).toNat

end

end A366743.P17342962161257800153

/-! ## A366743.P4880866114939418748

`A049417(A365296(n+1)/A006519(2*n+1))`
-/

namespace A366743.P4880866114939418748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.roundAway ((A365296 (n + 1) : ℚ) / (A006519 (2 * n + 1) : ℚ))).toNat

end

end A366743.P4880866114939418748

/-! ## A366743.P14743089961637398823

`A049417(A365296(n+1)^A006519(2*n+1))`
-/

namespace A366743.P14743089961637398823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.roundAway ((A365296 (n + 1) : ℚ) ^ (A006519 (2 * n + 1) : ℤ))).toNat

end

end A366743.P14743089961637398823

/-! ## A366743.P5320020529935440655

`A049417(A365296(n+1)+A000035(2*(n+1)))`
-/

namespace A366743.P5320020529935440655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A365296 (n + 1) + A000035 (2 * (n + 1))).toNat

end

end A366743.P5320020529935440655

/-! ## A366743.P5862003398538486834

`gcd(A091732((n+1)²)/A091732(n+1), A034448(n+1))`
-/

namespace A366743.P5862003398538486834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A091732 ((n + 1) ^ 2) : ℚ) / (A091732 (n + 1) : ℚ))) (A034448 (n + 1))

end

end A366743.P5862003398538486834

/-! ## A366743.P17238861414853153005

`A365404(A365296((n+1)²))`
-/

namespace A366743.P17238861414853153005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 (A365296 ((n + 1) ^ 2)).toNat

end

end A366743.P17238861414853153005

/-! ## A366743.P6195044947476162131

`gcd(A160908(n+1)*A340854(n+1), A034448(n+1))`
-/

namespace A366743.P6195044947476162131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160908 (n + 1) * A340854 (n + 1)) (A034448 (n + 1))

end

end A366743.P6195044947476162131

/-!
# A366744: The sum of divisors of the least coreful infinitary divisor of n.

The programs for A366744, there is no canonical definition to state claims against.
-/

/-! ## A366744.P756377092683826909

`∑{d}[A365296(n+1), #]`
-/

namespace A366744.P756377092683826909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366744.P756377092683826909

/-! ## A366744.P9049937860996234405

`A000203(A365296(n+1))`
-/

namespace A366744.P9049937860996234405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A365296 (n + 1)).toNat

end

end A366744.P9049937860996234405

/-! ## A366744.P1335995356062753011

`A367171(A365296(2*n+1-n))`
-/

namespace A366744.P1335995356062753011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A365296 (2 * n + 1 - n)).toNat

end

end A366744.P1335995356062753011

/-! ## A366744.P17913694013693802502

`A245093(A365296(n+1)+A000217(n))`
-/

namespace A366744.P17913694013693802502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A365296 (n + 1) + A000217 n).toNat

end

end A366744.P17913694013693802502

/-! ## A366744.P1643454293178393695

`A069290(A365296((n+1)²))`
-/

namespace A366744.P1643454293178393695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A365296 ((n + 1) ^ 2)).toNat

end

end A366744.P1643454293178393695

/-! ## A366744.P1110889677934105488

`A365347(A365296(n+1)*A365296(n+1))`
-/

namespace A366744.P1110889677934105488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365347 (A365296 (n + 1) * A365296 (n + 1)).toNat

end

end A366744.P1110889677934105488

/-!
# A366745: Triangular array, read by rows: T(n,k) = number of partitions p of n such that d(p, p') = 2k, where p' = contraconjugate of p, and d is the distance function defined in A366156.

The programs for A366745, there is no canonical definition to state claims against.
-/

/-! ## A366745.P18048093430404374283

`A230025(A055645(n)+1)`
-/

namespace A366745.P18048093430404374283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230025 (A055645 n + 1).toNat

end

end A366745.P18048093430404374283

/-! ## A366745.P509435631868294848

`A230025(A262545(n+1)+1)`
-/

namespace A366745.P509435631868294848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230025 (A262545 (n + 1) + 1).toNat

end

end A366745.P509435631868294848

/-! ## A366745.P8876722722435938953

`A230025(n+1)%A134266(3*n+2)`
-/

namespace A366745.P8876722722435938953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230025 (n + 1)) (A134266 (3 * n + 2))

end

end A366745.P8876722722435938953

/-! ## A366745.P5872111360459104917

`A230025(n+1)^A080014(n*char[2^n])`
-/

namespace A366745.P5872111360459104917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230025 (n + 1) : ℚ) ^ (A080014 (n * (if ∃ j, f1 j = n then 1 else 0)) : ℤ)

end

end A366745.P5872111360459104917

/-! ## A366745.P17308954692487967991

`A230025(n+1)^A356608(n*char[2^n])`
-/

namespace A366745.P17308954692487967991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230025 (n + 1) : ℚ) ^ (A356608 (n * (if ∃ j, f1 j = n then 1 else 0)) : ℤ)

end

end A366745.P17308954692487967991

/-!
# A366748: Numbers k such that (sum of odd prime indices of k) = (sum of even prime indices of k).

The programs for A366748, there is no canonical definition to state claims against.
-/

/-! ## A366748.P9285048696295656384

`A109895(2*n+5)%A066710(A246539(n))`
-/

namespace A366748.P9285048696295656384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109895 (2 * n + 5)) (A066710 (A246539 n).toNat)

end

end A366748.P9285048696295656384

/-!
# A366749: Self-signed alternating sum of the prime indices of n.

The programs for A366749, there is no canonical definition to state claims against.
-/

/-! ## A366749.P7813598108055555168

`A366531(n+1)-A366528(n+1)`
-/

namespace A366749.P7813598108055555168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366531 (n + 1) - A366528 (n + 1)

end

end A366749.P7813598108055555168

/-! ## A366749.P6434296127278305638

`A366533((n+1)²)-A366528(n+1)`
-/

namespace A366749.P6434296127278305638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 ((n + 1) ^ 2) - A366528 (n + 1)

end

end A366749.P6434296127278305638

/-! ## A366749.P1990653751036987850

`2*A366531(n+1)-A056239(n+1)`
-/

namespace A366749.P1990653751036987850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366531 (n + 1) - A056239 (n + 1)

end

end A366749.P1990653751036987850

/-! ## A366749.P3113305889986029471

`A056239(n+1)-2*A366528(n+1)`
-/

namespace A366749.P3113305889986029471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 2 * A366528 (n + 1)

end

end A366749.P3113305889986029471

/-! ## A366749.P11827270788187516161

`A005843(A366531(n+1))-A056239(n+1)`
-/

namespace A366749.P11827270788187516161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A366531 (n + 1)).toNat - A056239 (n + 1)

end

end A366749.P11827270788187516161

/-! ## A366749.P6493616540459699685

`A005843(A366533(n+1))-A366528(n+1)`
-/

namespace A366749.P6493616540459699685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A366533 (n + 1)).toNat - A366528 (n + 1)

end

end A366749.P6493616540459699685

/-! ## A366749.P10383972542252958212

`A056239(n+1)-A056239(A247503((n+1)²))`
-/

namespace A366749.P10383972542252958212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A056239 (A247503 ((n + 1) ^ 2)).toNat

end

end A366749.P10383972542252958212

/-! ## A366749.P1981303083791871882

`A056239(A248101((n+1)²))-A056239(n+1)`
-/

namespace A366749.P1981303083791871882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A248101 ((n + 1) ^ 2)).toNat - A056239 (n + 1)

end

end A366749.P1981303083791871882

/-!
# A366750: Number of strict integer partitions of n into odd parts with a common divisor > 1.

The programs for A366750, there is no canonical definition to state claims against.
-/

/-! ## A366750.P8635473539616020467

`(A000700(n)-A366844(n))%A028310(n)`
-/

namespace A366750.P8635473539616020467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n - A366844 n) (A028310 n)

end

end A366750.P8635473539616020467

/-! ## A366750.P1520358423652077135

`A395089(A138703(n))`
-/

namespace A366750.P1520358423652077135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395089 (A138703 n).toNat

end

end A366750.P1520358423652077135

/-! ## A366750.P8857892183795304109

`A263804(A212575(n+1))`
-/

namespace A366750.P8857892183795304109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263804 (A212575 (n + 1)).toNat

end

end A366750.P8857892183795304109

/-! ## A366750.P16298818514145720524

`A010060(A005898(n)%A165407(n))`
-/

namespace A366750.P16298818514145720524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod (A005898 n) (A165407 n)).toNat

end

end A366750.P16298818514145720524

/-! ## A366750.P5126704086389278015

`A266608(or(A103314(n), A132411(n)))`
-/

namespace A366750.P5126704086389278015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266608 (Int.lor (A103314 n) (A132411 n)).toNat

end

end A366750.P5126704086389278015

/-!
# A366751: Expansion of e.g.f. -log(1 - x^3 * (exp(x) - 1)).

The programs for A366751, there is no canonical definition to state claims against.
-/

/-! ## A366751.P7754418723141779998

`A292891(n)%A027893(n+1)²`
-/

namespace A366751.P7754418723141779998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292891 n) (A027893 (n + 1) ^ 2)

end

end A366751.P7754418723141779998

/-! ## A366751.P15303146513029338466

`A292891(n)-A091064(A007283(n))`
-/

namespace A366751.P15303146513029338466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292891 n - A091064 (A007283 n).toNat

end

end A366751.P15303146513029338466

/-! ## A366751.P3583234388696970826

`A292891(n)-A023531(A081857(n))`
-/

namespace A366751.P3583234388696970826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292891 n - A023531 (A081857 n).toNat

end

end A366751.P3583234388696970826

/-! ## A366751.P844920497987515605

`A292891(n)-A374700(A000217(n))`
-/

namespace A366751.P844920497987515605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292891 n - A374700 (A000217 n).toNat

end

end A366751.P844920497987515605

/-! ## A366751.P16949558565327944957

`A052409(A000108(n))*A292891(n)`
-/

namespace A366751.P16949558565327944957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000108 n).toNat * A292891 n

end

end A366751.P16949558565327944957

/-!
# A366752: Expansion of e.g.f. -log(1 + x^2 * log(1 - x)).

The programs for A366752, there is no canonical definition to state claims against.
-/

/-! ## A366752.P4438587887385013674

`2*A245092(A355994(n))`
-/

namespace A366752.P4438587887385013674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245092 (A355994 n).toNat

end

end A366752.P4438587887385013674

/-! ## A366752.P7514622742920248260

`A353228(n^A135660(n+1))`
-/

namespace A366752.P7514622742920248260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353228 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A135660 (n + 1) : ℤ))).toNat

end

end A366752.P7514622742920248260

/-! ## A366752.P5201458482219129648

`A353228(n)-A151672(3^n-1)`
-/

namespace A366752.P5201458482219129648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353228 n - A151672 (3 ^ n - 1)

end

end A366752.P5201458482219129648

/-! ## A366752.P10847975613724890849

`A353228(n)-A000007(round(2^n/3)²)`
-/

namespace A366752.P10847975613724890849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353228 n - A000007 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) ^ 2).toNat

end

end A366752.P10847975613724890849

/-!
# A366754: Number of non-knapsack integer partitions of n.

The programs for A366754, there is no canonical definition to state claims against.
-/

/-! ## A366754.P15977326635811760513

`A000041(n)-A108917(n)`
-/

namespace A366754.P15977326635811760513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A108917 n

end

end A366754.P15977326635811760513

/-! ## A366754.P12958952097813807081

`sqrt(A001255(n))-A108917(n)`
-/

namespace A366754.P12958952097813807081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A108917 n : ℝ)

end

end A366754.P12958952097813807081

/-! ## A366754.P2090871495545249196

`∑[A002865(n)]-A108917(n)`
-/

namespace A366754.P2090871495545249196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108917 n

end

end A366754.P2090871495545249196

/-! ## A366754.P5627162075079009985

`A054225(∑[n])-A108917(n)`
-/

namespace A366754.P5627162075079009985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A108917 n

end

end A366754.P5627162075079009985

/-! ## A366754.P869420649067590315

`A000065(n)+1-A108917(n)`
-/

namespace A366754.P869420649067590315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A108917 n)

end

end A366754.P869420649067590315

/-! ## A366754.P3500647604644200021

`A035363(2*n)-A108917(n)`
-/

namespace A366754.P3500647604644200021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A108917 n

end

end A366754.P3500647604644200021

/-! ## A366754.P2298209801071336709

`A139582(n)/2-A108917(n)`
-/

namespace A366754.P2298209801071336709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A108917 n : ℚ)

end

end A366754.P2298209801071336709

/-! ## A366754.P7840497842280298502

`A000041(n)-A326017(2*(n+1)²)`
-/

namespace A366754.P7840497842280298502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A326017 (2 * (n + 1) ^ 2)

end

end A366754.P7840497842280298502

/-! ## A366754.P1250031161883857172

`A325831(n)+A325834(n)-A108917(n)`
-/

namespace A366754.P1250031161883857172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325831 n + (A325834 n - A108917 n)

end

end A366754.P1250031161883857172

/-! ## A366754.P11048375754128056783

`A325832(n)+A325833(n)-A108917(n)`
-/

namespace A366754.P11048375754128056783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325832 n + (A325833 n - A108917 n)

end

end A366754.P11048375754128056783

/-!
# A366755: Number of 1-tough unlabeled graphs on n vertices.

The programs for A366755, there is no canonical definition to state claims against.
-/

/-! ## A366755.P3445343643260045836

`A122620(A192681(n))`
-/

namespace A366755.P3445343643260045836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A192681 n).toNat

end

end A366755.P3445343643260045836

/-! ## A366755.P1696618555617080490

`A061984(A006721(2*n))`
-/

namespace A366755.P1696618555617080490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061984 (A006721 (2 * n)).toNat

end

end A366755.P1696618555617080490

/-! ## A366755.P1490823971133513338

`A034887(A112934(n)+char[∑[n]])`
-/

namespace A366755.P1490823971133513338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A112934 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A366755.P1490823971133513338

/-!
# A366757: a(n) is the sum of the divisors of n!-1.

The programs for A366757, there is no canonical definition to state claims against.
-/

/-! ## A366757.P7032042796303740940

`∑{d}[1-(n+2)!, #]`
-/

namespace A366757.P7032042796303740940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366757.P7032042796303740940

/-! ## A366757.P10874891640849696831

`∑{d}[1-∏[n+2], #]`
-/

namespace A366757.P10874891640849696831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366757.P10874891640849696831

/-! ## A366757.P4521773811146211467

`record[∑{d}[A105060(n+1), #]]`
-/

namespace A366757.P4521773811146211467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105060 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366757.P4521773811146211467

/-! ## A366757.P798185852991444239

`A000027(∑{d}[A033312(n+2), #])`
-/

namespace A366757.P798185852991444239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A366757.P798185852991444239

/-!
# A366758: a(n) is the sum of the divisors of n!+1.

The programs for A366758, the canonical program `A366758.P16412360023761090223` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366758 has offset 0).

The definition of A366758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366758.P16412360023761090223

`A000203(A038507(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A366758

/-- `A000203(A038507(n))` -/
def P16412360023761090223.Spec : Prop :=
  ∀ n, P16412360023761090223.a n = A366758 n

theorem P16412360023761090223.correct : P16412360023761090223.Spec := by
  intro n
  simp only [A366758]

end A366758

/-! ## A366758.P7431421711888404946

`∑{d}[n!+1, #]`
-/

namespace A366758.P7431421711888404946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A366758.P7431421711888404946

namespace A366758

/-- `∑{d}[n!+1, #]` -/
def P7431421711888404946.Spec : Prop :=
  ∀ n, (P7431421711888404946.a n : ℤ) = A366758 n

end A366758

/-! ## A366758.P14880350778490441465

`∑{d}[xor(n!, -1), #]`
-/

namespace A366758.P14880350778490441465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366758.P14880350778490441465

namespace A366758

/-- `∑{d}[xor(n!, -1), #]` -/
def P14880350778490441465.Spec : Prop :=
  ∀ n, (P14880350778490441465.a n : ℤ) = A366758 n

end A366758

/-! ## A366758.P12431988237903557870

`∑{d}[ϕ²-(ϕ-n!), #]`
-/

namespace A366758.P12431988237903557870
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (Nat.factorial n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A366758.P12431988237903557870

namespace A366758

/-- `∑{d}[ϕ²-(ϕ-n!), #]` -/
def P12431988237903557870.Spec : Prop :=
  ∀ n, (P12431988237903557870.a n : ℤ) = A366758 n

end A366758

/-! ## A366758.P689902645173501049

`∑{d}[round(abs(1-ϕ-n!)), #]`
-/

namespace A366758.P689902645173501049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |1 - Real.goldenRatio - (Nat.factorial n : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366758.P689902645173501049

namespace A366758

/-- `∑{d}[round(abs(1-ϕ-n!)), #]` -/
def P689902645173501049.Spec : Prop :=
  ∀ n, (P689902645173501049.a n : ℤ) = A366758 n

end A366758

/-!
# A366759: a(n) = phi(n!-1), where phi is Euler's totient function (A000010).

The programs for A366759, there is no canonical definition to state claims against.
-/

/-! ## A366759.P236296382757567472

`record[∏{p}[n!-1, #-1]]`
-/

namespace A366759.P236296382757567472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366759.P236296382757567472

/-! ## A366759.P17009330357194776424

`A000010((n+2)!-1)`
-/

namespace A366759.P17009330357194776424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (n + 2) - 1)

end

end A366759.P17009330357194776424

/-! ## A366759.P15691876794471400254

`A003958((n+2)!-1)`
-/

namespace A366759.P15691876794471400254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (Nat.factorial (n + 2) - 1)

end

end A366759.P15691876794471400254

/-!
# A366760: a(n) = phi(n!+1), where phi is Euler's totient function (A000010).

The programs for A366760, the canonical program `A366760.P5989951023419071794` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366760 has offset 0).

The definition of A366760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366760.P5989951023419071794

`A000010(A038507(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A366760

/-- `A000010(A038507(n))` -/
def P5989951023419071794.Spec : Prop :=
  ∀ n, P5989951023419071794.a n = A366760 n

theorem P5989951023419071794.correct : P5989951023419071794.Spec := by
  intro n
  simp only [A366760]

end A366760

/-! ## A366760.P17451491675430043369

`A000010(n!+1)`
-/

namespace A366760.P17451491675430043369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial n + 1)

end

end A366760.P17451491675430043369

namespace A366760

/-- `A000010(n!+1)` -/
def P17451491675430043369.Spec : Prop :=
  ∀ n, P17451491675430043369.a n = A366760 n

end A366760

/-! ## A366760.P1990100759461243882

`A000010(or(1, n!))`
-/

namespace A366760.P1990100759461243882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 1 (Nat.factorial n))

end

end A366760.P1990100759461243882

namespace A366760

/-- `A000010(or(1, n!))` -/
def P1990100759461243882.Spec : Prop :=
  ∀ n, P1990100759461243882.a n = A366760 n

end A366760

/-! ## A366760.P15996617734569609576

`A000010(abs(xor(n!, -1)))`
-/

namespace A366760.P15996617734569609576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |Int.xor (Nat.factorial n : ℤ) (-1)|.toNat

end

end A366760.P15996617734569609576

namespace A366760

/-- `A000010(abs(xor(n!, -1)))` -/
def P15996617734569609576.Spec : Prop :=
  ∀ n, P15996617734569609576.a n = A366760 n

end A366760

/-! ## A366760.P6275736476682684030

`A000010(-xor(n!, -1))`
-/

namespace A366760.P6275736476682684030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.xor (Nat.factorial n : ℤ) (-1)).toNat

end

end A366760.P6275736476682684030

namespace A366760

/-- `A000010(-xor(n!, -1))` -/
def P6275736476682684030.Spec : Prop :=
  ∀ n, P6275736476682684030.a n = A366760 n

end A366760

/-!
# A366761: Numbers that have at least one exponent in their canonical prime factorization that is divisible by 3.

The programs for A366761, the canonical program `A366761.P11411157237785428008` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366761 has offset 1).

The definition of A366761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366761.P11411157237785428008

`lt[1, A080278(A005361(n+1))]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366761

/-- `lt[1, A080278(A005361(n+1))]+1` -/
def P11411157237785428008.Spec : Prop :=
  ∀ n, (P11411157237785428008.a n : ℤ) = A366761 (n + 1)

theorem P11411157237785428008.correct : P11411157237785428008.Spec := by
  intro n
  simp only [A366761, Nat.add_sub_cancel]

end A366761

/-! ## A366761.P16240812194817253557

`lt[A072411(n+1)%3, 1]+1`
-/

namespace A366761.P16240812194817253557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072411 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A366761.P16240812194817253557

namespace A366761

/-- `lt[A072411(n+1)%3, 1]+1` -/
def P16240812194817253557.Spec : Prop :=
  ∀ n, (P16240812194817253557.a n : ℤ) = A366761 (n + 1)

end A366761

/-! ## A366761.P18335312375670809659

`eq[0, A332732(n+1)]+1`
-/

namespace A366761.P18335312375670809659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366761.P18335312375670809659

namespace A366761

/-- `eq[0, A332732(n+1)]+1` -/
def P18335312375670809659.Spec : Prop :=
  ∀ n, (P18335312375670809659.a n : ℤ) = A366761 (n + 1)

end A366761

/-! ## A366761.P15498362745081068744

`lt[1, A380395(n+1)]+1`
-/

namespace A366761.P15498362745081068744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366761.P15498362745081068744

namespace A366761

/-- `lt[1, A380395(n+1)]+1` -/
def P15498362745081068744.Spec : Prop :=
  ∀ n, (P15498362745081068744.a n : ℤ) = A366761 (n + 1)

end A366761

/-! ## A366761.P5587386275931124431

`lt[1, A380396(n+1)]+1`
-/

namespace A366761.P5587386275931124431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366761.P5587386275931124431

namespace A366761

/-- `lt[1, A380396(n+1)]+1` -/
def P5587386275931124431.Spec : Prop :=
  ∀ n, (P5587386275931124431.a n : ℤ) = A366761 (n + 1)

end A366761

/-! ## A366761.P11315128299733176799

`lt[1, A366126(A028310(n))]`
-/

namespace A366761.P11315128299733176799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366761.P11315128299733176799

namespace A366761

/-- `lt[1, A366126(A028310(n))]` -/
def P11315128299733176799.Spec : Prop :=
  ∀ n, (P11315128299733176799.a n : ℤ) = A366761 (n + 1)

end A366761

/-! ## A366761.P9496309134263389951

`lt[A056552(n+1), A007947(n+1)]+1`
-/

namespace A366761.P9496309134263389951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A366761.P9496309134263389951

namespace A366761

/-- `lt[A056552(n+1), A007947(n+1)]+1` -/
def P9496309134263389951.Spec : Prop :=
  ∀ n, (P9496309134263389951.a n : ℤ) = A366761 (n + 1)

end A366761

/-!
# A366762: Numbers whose canonical prime factorization contains only exponents which are congruent to 1 modulo 3.

The programs for A366762, the canonical program `A366762.P2111167679417581175` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366762 has offset 1).

The definition of A366762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366762.P2111167679417581175

`filter[A390437(n+1), A307421(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A366762

/-- `filter[A390437(n+1), A307421(#)]` -/
def P2111167679417581175.Spec : Prop :=
  ∀ n, P2111167679417581175.a n = A366762 (n + 1)

theorem P2111167679417581175.correct : P2111167679417581175.Spec := by
  intro n
  simp only [A366762, Nat.add_sub_cancel]

end A366762

/-! ## A366762.P6873742913354750782

`eq[A007947(n+1), A050985(n+1)]+1`
-/

namespace A366762.P6873742913354750782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A366762.P6873742913354750782

namespace A366762

/-- `eq[A007947(n+1), A050985(n+1)]+1` -/
def P6873742913354750782.Spec : Prop :=
  ∀ n, (P6873742913354750782.a n : ℤ) = A366762 (n + 1)

end A366762

/-! ## A366762.P9533511157538207015

`lt[A366126(n+1), A373531(A294932(n+1)+1)]+1`
-/

namespace A366762.P9533511157538207015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (A294932 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A366762.P9533511157538207015

namespace A366762

/-- `lt[A366126(n+1), A373531(A294932(n+1)+1)]+1` -/
def P9533511157538207015.Spec : Prop :=
  ∀ n, (P9533511157538207015.a n : ℤ) = A366762 (n + 1)

end A366762

/-!
# A366763: The number of divisors of n that have no exponent 2 in their prime factorization.

The programs for A366763, the canonical program `A366763.P3867756685563468077` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366763 has offset 1).

The definition of A366763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366763.P3867756685563468077

`∏{e}[n+1, floor(1/#+#)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A366763

/-- `∏{e}[n+1, floor(1/#+#)]` -/
def P3867756685563468077.Spec : Prop :=
  ∀ n, P3867756685563468077.a n = A366763 (n + 1)

theorem P3867756685563468077.correct : P3867756685563468077.Spec := by
  intro n
  simp only [A366763, Nat.add_sub_cancel]

end A366763

/-! ## A366763.P1500612663510427967

`A005361(n+1)*A056671(n+1)`
-/

namespace A366763.P1500612663510427967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A056671 (n + 1)

end

end A366763.P1500612663510427967

namespace A366763

/-- `A005361(n+1)*A056671(n+1)` -/
def P1500612663510427967.Spec : Prop :=
  ∀ n, P1500612663510427967.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P968751987719871937

`A000005((n+1)/A071773(n+1))`
-/

namespace A366763.P968751987719871937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A071773 (n + 1) : ℚ))).toNat

end

end A366763.P968751987719871937

namespace A366763

/-- `A000005((n+1)/A071773(n+1))` -/
def P968751987719871937.Spec : Prop :=
  ∀ n, P968751987719871937.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P13135378984344768392

`A322327(n+1)/A323308(n+1)`
-/

namespace A366763.P13135378984344768392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322327 (n + 1) : ℚ) / (A323308 (n + 1) : ℚ)

end

end A366763.P13135378984344768392

namespace A366763

/-- `A322327(n+1)/A323308(n+1)` -/
def P13135378984344768392.Spec : Prop :=
  ∀ n, P13135378984344768392.a n = (A366763 (n + 1) : ℚ)

end A366763

/-! ## A366763.P15184045980973012557

`∑{d}[n+1, A008966(#)*A325837((n+1)/#)]`
-/

namespace A366763.P15184045980973012557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A325837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366763.P15184045980973012557

namespace A366763

/-- `∑{d}[n+1, A008966(#)*A325837((n+1)/#)]` -/
def P15184045980973012557.Spec : Prop :=
  ∀ n, P15184045980973012557.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P1545631664538207150

`A000005(A003557(n+1))*A056671(n+1)`
-/

namespace A366763.P1545631664538207150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A056671 (n + 1)

end

end A366763.P1545631664538207150

namespace A366763

/-- `A000005(A003557(n+1))*A056671(n+1)` -/
def P1545631664538207150.Spec : Prop :=
  ∀ n, P1545631664538207150.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P865486127272982259

`A000005((n+1)/A007947(A000188(n+1)))`
-/

namespace A366763.P865486127272982259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (A000188 (n + 1)).toNat : ℚ))).toNat

end

end A366763.P865486127272982259

namespace A366763

/-- `A000005((n+1)/A007947(A000188(n+1)))` -/
def P865486127272982259.Spec : Prop :=
  ∀ n, P865486127272982259.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P2345244179587434000

`A000005((n+1)/A007947(A003557(n+1)))`
-/

namespace A366763.P2345244179587434000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A366763.P2345244179587434000

namespace A366763

/-- `A000005((n+1)/A007947(A003557(n+1)))` -/
def P2345244179587434000.Spec : Prop :=
  ∀ n, P2345244179587434000.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P18355664851623934429

`A056671(n+1)/A034444(n+1)*A322327(n+1)`
-/

namespace A366763.P18355664851623934429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056671 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ) * (A322327 (n + 1) : ℚ)

end

end A366763.P18355664851623934429

namespace A366763

/-- `A056671(n+1)/A034444(n+1)*A322327(n+1)` -/
def P18355664851623934429.Spec : Prop :=
  ∀ n, P18355664851623934429.a n = (A366763 (n + 1) : ℚ)

end A366763

/-! ## A366763.P16913156058984838406

`A005361(A197863(n+1))`
-/

namespace A366763.P16913156058984838406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A197863 (n + 1)).toNat

end

end A366763.P16913156058984838406

namespace A366763

/-- `A005361(A197863(n+1))` -/
def P16913156058984838406.Spec : Prop :=
  ∀ n, P16913156058984838406.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P11701596352044510881

`A005361((n+1)*A055231(n+1))`
-/

namespace A366763.P11701596352044510881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A366763.P11701596352044510881

namespace A366763

/-- `A005361((n+1)*A055231(n+1))` -/
def P11701596352044510881.Spec : Prop :=
  ∀ n, P11701596352044510881.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P16966813524615394632

`A369309(A064549(n+1))`
-/

namespace A366763.P16966813524615394632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369309 (A064549 (n + 1)).toNat

end

end A366763.P16966813524615394632

namespace A366763

/-- `A369309(A064549(n+1))` -/
def P16966813524615394632.Spec : Prop :=
  ∀ n, P16966813524615394632.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P15678021944574980270

`A369310((n+1)*A007947(n+1))`
-/

namespace A366763.P15678021944574980270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369310 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A366763.P15678021944574980270

namespace A366763

/-- `A369310((n+1)*A007947(n+1))` -/
def P15678021944574980270.Spec : Prop :=
  ∀ n, P15678021944574980270.a n = A366763 (n + 1)

end A366763

/-! ## A366763.P12841369030070538156

`A369310((n+1)*A019555(A019555(n+1)))`
-/

namespace A366763.P12841369030070538156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369310 ((n + 1 : ℤ) * A019555 (A019555 (n + 1)).toNat).toNat

end

end A366763.P12841369030070538156

namespace A366763

/-- `A369310((n+1)*A019555(A019555(n+1)))` -/
def P12841369030070538156.Spec : Prop :=
  ∀ n, P12841369030070538156.a n = A366763 (n + 1)

end A366763

/-!
# A366765: The largest divisor of n that have no exponent 2 in their prime factorization.

The programs for A366765, the canonical program `A366765.P15880116743142061800` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366765 has offset 1).

The definition of A366765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366765.P15880116743142061800

`(n+1)/A329376(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366765

/-- `(n+1)/A329376(n+1)` -/
def P15880116743142061800.Spec : Prop :=
  ∀ n, P15880116743142061800.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P10575756717240401547

`sqrt((n+1)*A368886(n+1))`
-/

namespace A366765.P10575756717240401547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A368886 (n + 1) : ℝ)

end

end A366765.P10575756717240401547

namespace A366765

/-- `sqrt((n+1)*A368886(n+1))` -/
def P10575756717240401547.Spec : Prop :=
  ∀ n, P10575756717240401547.a n = (A366765 (n + 1) : ℝ)

end A366765

/-! ## A366765.P100092257917708336

`(n+1)/sqrt(A368884(n+1))`
-/

namespace A366765.P100092257917708336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A368884 (n + 1) : ℝ)

end

end A366765.P100092257917708336

namespace A366765

/-- `(n+1)/sqrt(A368884(n+1))` -/
def P100092257917708336.Spec : Prop :=
  ∀ n, P100092257917708336.a n = (A366765 (n + 1) : ℝ)

end A366765

/-! ## A366765.P10228101132087716460

`A329376(n+1)*A368886(n+1)`
-/

namespace A366765.P10228101132087716460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (n + 1) * A368886 (n + 1)

end

end A366765.P10228101132087716460

namespace A366765

/-- `A329376(n+1)*A368886(n+1)` -/
def P10228101132087716460.Spec : Prop :=
  ∀ n, P10228101132087716460.a n = A366765 (n + 1)

end A366765

/-! ## A366765.P11224390939249623094

`A336643(n+1)*A390371(n+1)`
-/

namespace A366765.P11224390939249623094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) * A390371 (n + 1)

end

end A366765.P11224390939249623094

namespace A366765

/-- `A336643(n+1)*A390371(n+1)` -/
def P11224390939249623094.Spec : Prop :=
  ∀ n, P11224390939249623094.a n = A366765 (n + 1)

end A366765

/-! ## A366765.P8201071398083593958

`(n+1)/A055231(A000189(n+1))`
-/

namespace A366765.P8201071398083593958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (A000189 (n + 1)).toNat : ℚ)

end

end A366765.P8201071398083593958

namespace A366765

/-- `(n+1)/A055231(A000189(n+1))` -/
def P8201071398083593958.Spec : Prop :=
  ∀ n, P8201071398083593958.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P15088635380530023016

`(n+1)/A055231(A003557(n+1))`
-/

namespace A366765.P15088635380530023016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (A003557 (n + 1)).toNat : ℚ)

end

end A366765.P15088635380530023016

namespace A366765

/-- `(n+1)/A055231(A003557(n+1))` -/
def P15088635380530023016.Spec : Prop :=
  ∀ n, P15088635380530023016.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P17605000724627228169

`lcm(A007947(n+1), A360540(n+1))`
-/

namespace A366765.P17605000724627228169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A360540 (n + 1))

end

end A366765.P17605000724627228169

namespace A366765

/-- `lcm(A007947(n+1), A360540(n+1))` -/
def P17605000724627228169.Spec : Prop :=
  ∀ n, (P17605000724627228169.a n : ℤ) = A366765 (n + 1)

end A366765

/-! ## A366765.P9668061214261326258

`lcm(A000188(n+1), A368886(n+1))`
-/

namespace A366765.P9668061214261326258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000188 (n + 1)) (A368886 (n + 1))

end

end A366765.P9668061214261326258

namespace A366765

/-- `lcm(A000188(n+1), A368886(n+1))` -/
def P9668061214261326258.Spec : Prop :=
  ∀ n, (P9668061214261326258.a n : ℤ) = A366765 (n + 1)

end A366765

/-! ## A366765.P7311595782324016194

`A197863(n+1)²/A356193(n+1)`
-/

namespace A366765.P7311595782324016194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) ^ 2 : ℚ) / (A356193 (n + 1) : ℚ)

end

end A366765.P7311595782324016194

namespace A366765

/-- `A197863(n+1)²/A356193(n+1)` -/
def P7311595782324016194.Spec : Prop :=
  ∀ n, P7311595782324016194.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P12029993873485260928

`A003557(A368884(n+1))*A368886(n+1)`
-/

namespace A366765.P12029993873485260928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A368884 (n + 1)).toNat * A368886 (n + 1)

end

end A366765.P12029993873485260928

namespace A366765

/-- `A003557(A368884(n+1))*A368886(n+1)` -/
def P12029993873485260928.Spec : Prop :=
  ∀ n, P12029993873485260928.a n = A366765 (n + 1)

end A366765

/-! ## A366765.P2841902302960780248

`(n+1)/A055231(A350390(A057521(n+1)))`
-/

namespace A366765.P2841902302960780248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (A350390 (A057521 (n + 1)).toNat).toNat : ℚ)

end

end A366765.P2841902302960780248

namespace A366765

/-- `(n+1)/A055231(A350390(A057521(n+1)))` -/
def P2841902302960780248.Spec : Prop :=
  ∀ n, P2841902302960780248.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P4308420885853870924

`A356193(n+1)/A087321(A360539(n+1))`
-/

namespace A366765.P4308420885853870924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356193 (n + 1) : ℚ) / (A087321 (A360539 (n + 1)).toNat : ℚ)

end

end A366765.P4308420885853870924

namespace A366765

/-- `A356193(n+1)/A087321(A360539(n+1))` -/
def P4308420885853870924.Spec : Prop :=
  ∀ n, P4308420885853870924.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P2836054749142612849

`(n+1)/A367168(A350390(A350388(n+1)))`
-/

namespace A366765.P2836054749142612849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367168 (A350390 (A350388 (n + 1)).toNat).toNat : ℚ)

end

end A366765.P2836054749142612849

namespace A366765

/-- `(n+1)/A367168(A350390(A350388(n+1)))` -/
def P2836054749142612849.Spec : Prop :=
  ∀ n, P2836054749142612849.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P2150984106222299555

`A360540(n+1)/A055231(n+1)*A360541(n+1)`
-/

namespace A366765.P2150984106222299555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360540 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ) * (A360541 (n + 1) : ℚ)

end

end A366765.P2150984106222299555

namespace A366765

/-- `A360540(n+1)/A055231(n+1)*A360541(n+1)` -/
def P2150984106222299555.Spec : Prop :=
  ∀ n, P2150984106222299555.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P1864607376418982275

`A197863(n+1)*A390755(n+1)/A390756(n+1)`
-/

namespace A366765.P1864607376418982275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) * A390755 (n + 1) : ℚ) / (A390756 (n + 1) : ℚ)

end

end A366765.P1864607376418982275

namespace A366765

/-- `A197863(n+1)*A390755(n+1)/A390756(n+1)` -/
def P1864607376418982275.Spec : Prop :=
  ∀ n, P1864607376418982275.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P5537611290769235745

`(n+1)/A055231(A011262(n+1))`
-/

namespace A366765.P5537611290769235745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (A011262 (n + 1)).toNat : ℚ)

end

end A366765.P5537611290769235745

namespace A366765

/-- `(n+1)/A055231(A011262(n+1))` -/
def P5537611290769235745.Spec : Prop :=
  ∀ n, P5537611290769235745.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P15858318001334120499

`(n+1)/A055231(A360541(n+1))`
-/

namespace A366765.P15858318001334120499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (A360541 (n + 1)).toNat : ℚ)

end

end A366765.P15858318001334120499

namespace A366765

/-- `(n+1)/A055231(A360541(n+1))` -/
def P15858318001334120499.Spec : Prop :=
  ∀ n, P15858318001334120499.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P3103547144334998062

`A197863(n+1)/A360541(A053143(n+1))`
-/

namespace A366765.P3103547144334998062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A360541 (A053143 (n + 1)).toNat : ℚ)

end

end A366765.P3103547144334998062

namespace A366765

/-- `A197863(n+1)/A360541(A053143(n+1))` -/
def P3103547144334998062.Spec : Prop :=
  ∀ n, P3103547144334998062.a n = (A366765 (n + 1) : ℚ)

end A366765

/-! ## A366765.P81618430752877016

`A356193(n+1)/A053143(A360541(n+1))`
-/

namespace A366765.P81618430752877016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356193 (n + 1) : ℚ) / (A053143 (A360541 (n + 1)).toNat : ℚ)

end

end A366765.P81618430752877016

namespace A366765

/-- `A356193(n+1)/A053143(A360541(n+1))` -/
def P81618430752877016.Spec : Prop :=
  ∀ n, P81618430752877016.a n = (A366765 (n + 1) : ℚ)

end A366765

/-!
# A366766: Array read by antidiagonals, where each row is the counting sequence of a certain type of free polyominoids (see comments).

The programs for A366766, there is no canonical definition to state claims against.
-/

/-! ## A366766.P4916988774929880416

`A333768(3*A366767(n+1))`
-/

namespace A366766.P4916988774929880416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (3 * A366767 (n + 1)).toNat

end

end A366766.P4916988774929880416

/-! ## A366766.P13500734226956202185

`A031235(A366767(n+1)^3)`
-/

namespace A366766.P13500734226956202185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A366767 (n + 1) ^ 3).toNat

end

end A366766.P13500734226956202185

/-! ## A366766.P2997498354658146742

`A031235(A383735(n+1)^3)`
-/

namespace A366766.P2997498354658146742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A383735 (n + 1) ^ 3).toNat

end

end A366766.P2997498354658146742

/-! ## A366766.P4451479245567830282

`A176725(A176725(n+3)*A366767(n+1))`
-/

namespace A366766.P4451479245567830282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A176725 (n + 3) * A366767 (n + 1)).toNat

end

end A366766.P4451479245567830282

/-! ## A366766.P8333418233018946126

`ceil(A366767(n+1)/A356225(3*(n+1)))`
-/

namespace A366766.P8333418233018946126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A366767 (n + 1) : ℚ) / (A356225 (3 * (n + 1)) : ℚ)⌉

end

end A366766.P8333418233018946126

/-!
# A366767: Array read by antidiagonals, where each row is the counting sequence of a certain type of fixed polyominoids.

The programs for A366767, there is no canonical definition to state claims against.
-/

/-! ## A366767.P2749241384527250652

`A076826(A079523(3*n+4)*A131689(n))`
-/

namespace A366767.P2749241384527250652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A079523 (3 * n + 4) * A131689 n).toNat

end

end A366767.P2749241384527250652

/-! ## A366767.P9508117384553424309

`A051889(A182406(n+1))%3`
-/

namespace A366767.P9508117384553424309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051889 (A182406 (n + 1)).toNat) 3

end

end A366767.P9508117384553424309

/-! ## A366767.P14586184795354383253

`A358217(A051278(n+4)^A332670(n))`
-/

namespace A366767.P14586184795354383253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358217 (SequenceMachineLib.roundAway ((A051278 (n + 4) : ℚ) ^ (A332670 n : ℤ))).toNat

end

end A366767.P14586184795354383253

/-! ## A366767.P9289728531325687737

`A245196(A207063(n+2))`
-/

namespace A366767.P9289728531325687737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (A207063 (n + 2)).toNat

end

end A366767.P9289728531325687737

/-! ## A366767.P17853430933622467856

`A287356(A301594(n)+A228047(n))`
-/

namespace A366767.P17853430933622467856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (A301594 n + A228047 n).toNat

end

end A366767.P17853430933622467856

/-!
# A366768: Array read by antidiagonals, where each row is the coordination sequence for the underlying graph of the polyominoids occurring in the corresponding row of A366766.

The programs for A366768, there is no canonical definition to state claims against.
-/

/-! ## A366768.P17109238734553810137

`and(A055624(n+1), A383735(n+1))`
-/

namespace A366768.P17109238734553810137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055624 (n + 1)) (A383735 (n + 1))

end

end A366768.P17109238734553810137

/-! ## A366768.P16405431001060666468

`and(A093181(n+1), A383735(n+1))`
-/

namespace A366768.P16405431001060666468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093181 (n + 1)) (A383735 (n + 1))

end

end A366768.P16405431001060666468

/-! ## A366768.P7297014877384906386

`and(A032475(n+1), A383735(n+1))`
-/

namespace A366768.P7297014877384906386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032475 (n + 1)) (A383735 (n + 1))

end

end A366768.P7297014877384906386

/-! ## A366768.P12141107581498754356

`and(A141226(n+1), A383735(n+1))`
-/

namespace A366768.P12141107581498754356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141226 (n + 1)) (A383735 (n + 1))

end

end A366768.P12141107581498754356

/-! ## A366768.P2467006964517721457

`and(A343679(n+1), A383735(n+1))`
-/

namespace A366768.P2467006964517721457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A343679 (n + 1)) (A383735 (n + 1))

end

end A366768.P2467006964517721457

/-!
# A366769: Number of distinct prime divisors of A001045(n) (Jacobsthal numbers).

The programs for A366769, there is no canonical definition to state claims against.
-/

/-! ## A366769.P16951572039421519022

`A001221(A278165(n+1))`
-/

namespace A366769.P16951572039421519022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278165 (n + 1)).toNat

end

end A366769.P16951572039421519022

/-! ## A366769.P6240265343673118672

`∑{p}[A278165(n+1), A003415(#)]`
-/

namespace A366769.P6240265343673118672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A366769.P6240265343673118672

/-! ## A366769.P2994426173540832720

`∑{p}[A278165(n+1), A008480(#)]`
-/

namespace A366769.P2994426173540832720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008480 p

end

end A366769.P2994426173540832720

/-! ## A366769.P1347944451327312429

`∑{p}[A278165(n+1), A057427(#)]`
-/

namespace A366769.P1347944451327312429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 p

end

end A366769.P1347944451327312429

/-! ## A366769.P12421180180331387086

`∑{p}[A278165(n+1), A063647(#)]`
-/

namespace A366769.P12421180180331387086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A063647 p

end

end A366769.P12421180180331387086

/-!
# A366770: Number of prime factors of A001045(n) (Jacobsthal numbers) (counted with multiplicity).

The programs for A366770, there is no canonical definition to state claims against.
-/

/-! ## A366770.P17987989709806584432

`∑{e}[A278165(n+1), #]`
-/

namespace A366770.P17987989709806584432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366770.P17987989709806584432

/-! ## A366770.P2969641025258761379

`A001222(A278165(n+1))`
-/

namespace A366770.P2969641025258761379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278165 (n + 1)).toNat

end

end A366770.P2969641025258761379

/-! ## A366770.P261825935316658032

`A056239(A366771(n+1)%A065656(n+1))`
-/

namespace A366770.P261825935316658032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A366771 (n + 1)) (A065656 (n + 1))).toNat

end

end A366770.P261825935316658032

/-! ## A366770.P10881387244290805004

`A065770(A278165(n+1))%A048149(n)`
-/

namespace A366770.P10881387244290805004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A278165 (n + 1)).toNat) (A048149 n)

end

end A366770.P10881387244290805004

/-! ## A366770.P9169566876872853549

`A065770(A278165(n+1)%A023330(n+1))`
-/

namespace A366770.P9169566876872853549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.tmod (A278165 (n + 1)) (A023330 (n + 1))).toNat

end

end A366770.P9169566876872853549

/-!
# A366771: Number of divisors of A001045(n) (Jacobsthal numbers).

The programs for A366771, there is no canonical definition to state claims against.
-/

/-! ## A366771.P4339729134794832647

`∏{e}[A278165(n+1), #+1]`
-/

namespace A366771.P4339729134794832647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278165 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366771.P4339729134794832647

/-! ## A366771.P18018067426191062519

`A000005(A278165(n+1))`
-/

namespace A366771.P18018067426191062519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278165 (n + 1)).toNat

end

end A366771.P18018067426191062519

/-! ## A366771.P4662888611767178700

`A036225(n)+A032741(A278165(n+1))`
-/

namespace A366771.P4662888611767178700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n + A032741 (A278165 (n + 1)).toNat

end

end A366771.P4662888611767178700

/-! ## A366771.P7274860939227610966

`∏{e}[∑[(-2)^n], #+1]`
-/

namespace A366771.P7274860939227610966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366771.P7274860939227610966

/-! ## A366771.P17114524106005114279

`∑{d}[∑[A078008(n)], gcd(4, #)]`
-/

namespace A366771.P17114524106005114279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 4 d

end

end A366771.P17114524106005114279

/-!
# A366772: Sum of the divisors of A001045(n) (Jacobsthal numbers).

The programs for A366772, there is no canonical definition to state claims against.
-/

/-! ## A366772.P18234161776162236546

`∑{d}[∑[(-2)^n], #]`
-/

namespace A366772.P18234161776162236546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366772.P18234161776162236546

/-! ## A366772.P8725978628741342298

`∑{d}[A001045(n+1), #]^A178334(n)`
-/

namespace A366772.P8725978628741342298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) ^ (A178334 n : ℤ)

end

end A366772.P8725978628741342298

/-! ## A366772.P8234825893936109800

`A033999(n)²*∑{d}[A001045(n+1), #]`
-/

namespace A366772.P8234825893936109800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A366772.P8234825893936109800

/-! ## A366772.P15462860527821845004

`A063524(3*n+2)+∑{d}[A077925(n), #]`
-/

namespace A366772.P15462860527821845004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * n + 2) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A366772.P15462860527821845004

/-!
# A366773: a(n) = A000010(A001045(n)).

The programs for A366773, there is no canonical definition to state claims against.
-/

/-! ## A366773.P12780882156071822935

`A000010(abs(∑[(-2)^n]))`
-/

namespace A366773.P12780882156071822935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A366773.P12780882156071822935

/-! ## A366773.P8432871220014163423

`and(-1, A000010(A001045(n+1)))`
-/

namespace A366773.P8432871220014163423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000010 (A001045 (n + 1)).toNat)

end

end A366773.P8432871220014163423

/-! ## A366773.P293655498620400118

`A000010(A133684(2*(n+1)))%xor(n+1, -2^(n+2))`
-/

namespace A366773.P293655498620400118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A133684 (2 * (n + 1))).toNat) (Int.xor (n + 1 : ℤ) (-(2 ^ (n + 2) : ℤ)))

end

end A366773.P293655498620400118

/-! ## A366773.P293637115626762084

`A025466(n)+A000010(A001045(n+1))`
-/

namespace A366773.P293637115626762084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n + A000010 (A001045 (n + 1)).toNat

end

end A366773.P293637115626762084

/-! ## A366773.P13430699855650002884

`A025469(n)+A000010(A001045(n+1))`
-/

namespace A366773.P13430699855650002884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A000010 (A001045 (n + 1)).toNat

end

end A366773.P13430699855650002884

/-!
# A366774: Number of 2-distant 3-noncrossing partitions of {1,...,n}.

The programs for A366774, there is no canonical definition to state claims against.
-/

/-! ## A366774.P1534608688908866813

`A320751(A006720(n))+A056273(n)`
-/

namespace A366774.P1534608688908866813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320751 (A006720 n).toNat + A056273 n

end

end A366774.P1534608688908866813

/-! ## A366774.P16206277175755013588

`A350139(A007999(n))+A056273(n)`
-/

namespace A366774.P16206277175755013588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A007999 n).toNat + A056273 n

end

end A366774.P16206277175755013588

/-! ## A366774.P1242194926656801980

`A000110(n)-A096994(A364523(n))`
-/

namespace A366774.P1242194926656801980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A096994 (A364523 n).toNat

end

end A366774.P1242194926656801980

/-! ## A366774.P3565095218354704151

`A287667(n)-A107846(A287667(n))`
-/

namespace A366774.P3565095218354704151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287667 n - A107846 (A287667 n).toNat

end

end A366774.P3565095218354704151

/-! ## A366774.P14036118636992447329

`A287667(n)-A185284(A327479(n))`
-/

namespace A366774.P14036118636992447329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287667 n - A185284 (A327479 n).toNat

end

end A366774.P14036118636992447329

/-!
# A366776: Number of 2-distant 5-noncrossing partitions of {1,...,n}.

The programs for A366776, there is no canonical definition to state claims against.
-/

/-! ## A366776.P3349551808428089172

`A000110(n)-A071667(A185037(2*(n+1)))`
-/

namespace A366776.P3349551808428089172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A071667 (A185037 (2 * (n + 1))).toNat

end

end A366776.P3349551808428089172

/-!
# A366777: Expansion of e.g.f. -log(1 + x^3 * log(1 - x)).

The programs for A366777, there is no canonical definition to state claims against.
-/

/-! ## A366777.P3901094774944790000

`A353229(n)^(a(n-2^floor(log2(n)))+1)` with `a(0)=0`
-/

namespace A366777.P3901094774944790000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (A353229 n : ℝ) ^ (a (n - 2 ^ Nat.log 2 n) + 1)

end

end A366777.P3901094774944790000

/-! ## A366777.P11608966442726954185

`A353229(A250266(n)+1)`
-/

namespace A366777.P11608966442726954185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353229 (A250266 n + 1).toNat

end

end A366777.P11608966442726954185

/-! ## A366777.P2065155548910622945

`A353229(n^A317624(n))`
-/

namespace A366777.P2065155548910622945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353229 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A317624 n : ℤ))).toNat

end

end A366777.P2065155548910622945

/-! ## A366777.P12804711563553193233

`A353229(n)+A010815(A384599(n))`
-/

namespace A366777.P12804711563553193233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353229 n + A010815 (A384599 n).toNat

end

end A366777.P12804711563553193233

/-! ## A366777.P8601768150316464596

`A353229(n)-A000007(A000129(n))`
-/

namespace A366777.P8601768150316464596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353229 n - A000007 (A000129 n).toNat

end

end A366777.P8601768150316464596

/-!
# A366779: a(n) = lambda(lambda(lambda(n))), where lambda(n) is the Carmichael lambda function (A002322).

The programs for A366779, there is no canonical definition to state claims against.
-/

/-! ## A366779.P13711150266418508362

`A181776(A002322(n+1))`
-/

namespace A366779.P13711150266418508362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181776 (A002322 (n + 1)).toNat

end

end A366779.P13711150266418508362

/-! ## A366779.P11436312992596856642

`A002322(A002322(A002322(A296233(A289626(n+1)))))`
-/

namespace A366779.P11436312992596856642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A296233 (A289626 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P11436312992596856642

/-! ## A366779.P13622353738926203189

`A002322(A002322(A002322(A065190(A065190(n+1)))))`
-/

namespace A366779.P13622353738926203189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A065190 (A065190 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P13622353738926203189

/-! ## A366779.P10609848221575766982

`A002322(A002322(A002322(A054429(A054429(n+1)))))`
-/

namespace A366779.P10609848221575766982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A054429 (A054429 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P10609848221575766982

/-! ## A366779.P15667556797943465383

`A002322(A002322(A002322(A092569(A092569(n+1)))))`
-/

namespace A366779.P15667556797943465383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A092569 (A092569 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P15667556797943465383

/-! ## A366779.P17603807202750424595

`A002322(A002322(A002322(A241838(2*n+1))))`
-/

namespace A366779.P17603807202750424595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A241838 (2 * n + 1)).toNat).toNat).toNat

end

end A366779.P17603807202750424595

/-! ## A366779.P2674954792019811916

`A002322(A002322(A002322(A353732(A352808(n+1)))))`
-/

namespace A366779.P2674954792019811916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A353732 (A352808 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P2674954792019811916

/-! ## A366779.P1255477125982632336

`A002322(A002322(A002322(A095874(A000961(n+1)))))`
-/

namespace A366779.P1255477125982632336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A095874 (A000961 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P1255477125982632336

/-! ## A366779.P13895949602028071476

`A002322(A002322(A002322(A303777(A210719(n+1)))))`
-/

namespace A366779.P13895949602028071476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A303777 (A210719 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P13895949602028071476

/-! ## A366779.P15702709198328574668

`A002322(A002322(A002322(A081373(A081375(n+1)))))`
-/

namespace A366779.P15702709198328574668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A081373 (A081375 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P15702709198328574668

/-! ## A366779.P6932238075002596624

`A002322(A002322(A002322(A011262(A011262(n+1)))))`
-/

namespace A366779.P6932238075002596624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002322 (A002322 (A011262 (A011262 (n + 1)).toNat).toNat).toNat).toNat

end

end A366779.P6932238075002596624

/-!
# A366780: Number of distinct prime divisors of A000073(n) (tribonacci numbers).

The programs for A366780, there is no canonical definition to state claims against.
-/

/-! ## A366780.P5827822798871813722

`∑{e}[∏{p}[A000073(n+2), #], #]`
-/

namespace A366780.P5827822798871813722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A366780.P5827822798871813722

/-! ## A366780.P6373441803035986211

`∑{e}[A000073(n+2), A034851(#)]`
-/

namespace A366780.P6373441803035986211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034851 (Nat.factorization (f1 n).natAbs p)

end

end A366780.P6373441803035986211

/-! ## A366780.P2241687531390998258

`∑{e}[A000073(n+2), A057427(#)]`
-/

namespace A366780.P2241687531390998258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p)

end

end A366780.P2241687531390998258

/-! ## A366780.P3664730604414286714

`∑{e}[A000073(n+2), A089759(#)]`
-/

namespace A366780.P3664730604414286714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A089759 (Nat.factorization (f1 n).natAbs p)

end

end A366780.P3664730604414286714

/-! ## A366780.P1293933373889979989

`∑{e}[A000073(n+2), A122085(#)]`
-/

namespace A366780.P1293933373889979989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A122085 (Nat.factorization (f1 n).natAbs p)

end

end A366780.P1293933373889979989

/-!
# A366781: Number of prime divisors of A000073(n) (tribonacci numbers) (counted with multiplicity).

The programs for A366781, there is no canonical definition to state claims against.
-/

/-! ## A366781.P9267041792602327486

`∑{e}[A282718(n), #]`
-/

namespace A366781.P9267041792602327486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366781.P9267041792602327486

/-! ## A366781.P1250074743016179146

`∑{e}[∑[A078042(n)], #]`
-/

namespace A366781.P1250074743016179146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366781.P1250074743016179146

/-! ## A366781.P23328277450683714

`∑{e}[A104580(∑[n]), #]`
-/

namespace A366781.P23328277450683714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366781.P23328277450683714

/-! ## A366781.P2350522684037554935

`∑{e}[Δ[A008937(n)], #]`
-/

namespace A366781.P2350522684037554935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366781.P2350522684037554935

/-! ## A366781.P11641802889847561869

`∑{e}[A089068(n)+1, #]`
-/

namespace A366781.P11641802889847561869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A366781.P11641802889847561869

/-!
# A366782: Number of divisors of A000073(n) (tribonacci numbers).

The programs for A366782, there is no canonical definition to state claims against.
-/

/-! ## A366782.P14788201824842676099

`∏{e}[∑[A078042(n)], #+1]`
-/

namespace A366782.P14788201824842676099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366782.P14788201824842676099

/-! ## A366782.P13944689444431968528

`∏{e}[A089068(n)+1, #+1]`
-/

namespace A366782.P13944689444431968528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366782.P13944689444431968528

/-! ## A366782.P17094649456072716596

`∏{e}[A000073(n+2), #+1]`
-/

namespace A366782.P17094649456072716596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A366782.P17094649456072716596

/-! ## A366782.P4280859201381000170

`A000005(A000073(n+2)%A177745(n+1))`
-/

namespace A366782.P4280859201381000170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A000073 (n + 2)) (A177745 (n + 1))).toNat

end

end A366782.P4280859201381000170

/-! ## A366782.P10998825209813434420

`A000005(A104580(∑[n]))`
-/

namespace A366782.P10998825209813434420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A104580 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366782.P10998825209813434420

/-!
# A366783: Sum of the divisors of A000073(n) (tribonacci numbers).

The programs for A366783, there is no canonical definition to state claims against.
-/

/-! ## A366783.P9088420252168685997

`∑{d}[∑[A078042(n)], #]`
-/

namespace A366783.P9088420252168685997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366783.P9088420252168685997

/-! ## A366783.P2979094278291334456

`∑{d}[A187889(∑[n]), #]`
-/

namespace A366783.P2979094278291334456
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187889 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366783.P2979094278291334456

/-! ## A366783.P13197221453124021688

`∑{d}[Δ[A008937(n)], #]`
-/

namespace A366783.P13197221453124021688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366783.P13197221453124021688

/-! ## A366783.P4161270486618253956

`∑{d}[A089068(n)+1, #]`
-/

namespace A366783.P4161270486618253956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366783.P4161270486618253956

/-! ## A366783.P11832681640150325405

`∑{d}[A000073(n+2), #]`
-/

namespace A366783.P11832681640150325405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A366783.P11832681640150325405

/-!
# A366784: Sum of even indices of distinct prime factors of n divided by 2.

The programs for A366784, the canonical program `A366784.P4948638015337007277` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366784 has offset 1).

The definition of A366784 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066328, A366725, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366784.P4948638015337007277

`(A066328(n+1)-A366725(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366784

/-- `(A066328(n+1)-A366725(n+1))/2` -/
def P4948638015337007277.Spec : Prop :=
  ∀ n, P4948638015337007277.a n = (A366784 (n + 1) : ℚ)

end A366784

/-! ## A366784.P12810762659778160275

`∑{p}[n+1, A366533(#)]`
-/

namespace A366784.P12810762659778160275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A366533 p

end

end A366784.P12810762659778160275

namespace A366784

/-- `∑{p}[n+1, A366533(#)]` -/
def P12810762659778160275.Spec : Prop :=
  ∀ n, P12810762659778160275.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P7993365834156215200

`A366533(∏{p}[n+1, #])`
-/

namespace A366784.P7993365834156215200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A366784.P7993365834156215200

namespace A366784

/-- `A366533(∏{p}[n+1, #])` -/
def P7993365834156215200.Spec : Prop :=
  ∀ n, P7993365834156215200.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P17132794743455930837

`A366533(A007947(n+1))`
-/

namespace A366784.P17132794743455930837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A007947 (n + 1)).toNat

end

end A366784.P17132794743455930837

namespace A366784

/-- `A366533(A007947(n+1))` -/
def P17132794743455930837.Spec : Prop :=
  ∀ n, P17132794743455930837.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P8094302997879098032

`A066328(A319522(n+1))`
-/

namespace A366784.P8094302997879098032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A319522 (n + 1)).toNat

end

end A366784.P8094302997879098032

namespace A366784

/-- `A066328(A319522(n+1))` -/
def P8094302997879098032.Spec : Prop :=
  ∀ n, P8094302997879098032.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P4279245994914002604

`A366533(A204455(n+1))`
-/

namespace A366784.P4279245994914002604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A204455 (n + 1)).toNat

end

end A366784.P4279245994914002604

namespace A366784

/-- `A366533(A204455(n+1))` -/
def P4279245994914002604.Spec : Prop :=
  ∀ n, P4279245994914002604.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P10584081173381613048

`A366533(A351518(n+1))`
-/

namespace A366784.P10584081173381613048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A351518 (n + 1)).toNat

end

end A366784.P10584081173381613048

namespace A366784

/-- `A366533(A351518(n+1))` -/
def P10584081173381613048.Spec : Prop :=
  ∀ n, P10584081173381613048.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P7712983156122409336

`A366533(A099985(n+1))`
-/

namespace A366784.P7712983156122409336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A099985 (n + 1)).toNat

end

end A366784.P7712983156122409336

namespace A366784

/-- `A366533(A099985(n+1))` -/
def P7712983156122409336.Spec : Prop :=
  ∀ n, P7712983156122409336.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P10871388057209096269

`A366533(A302138(n+1))`
-/

namespace A366784.P10871388057209096269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A302138 (n + 1)).toNat

end

end A366784.P10871388057209096269

namespace A366784

/-- `A366533(A302138(n+1))` -/
def P10871388057209096269.Spec : Prop :=
  ∀ n, P10871388057209096269.a n = A366784 (n + 1)

end A366784

/-! ## A366784.P3400239080287468091

`A366533(A234001(n+1))`
-/

namespace A366784.P3400239080287468091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366533 (A234001 (n + 1)).toNat

end

end A366784.P3400239080287468091

namespace A366784

/-- `A366533(A234001(n+1))` -/
def P3400239080287468091.Spec : Prop :=
  ∀ n, P3400239080287468091.a n = A366784 (n + 1)

end A366784

/-!
# A366785: Greatest common divisor of the number of prime factors (counted with multiplicity, A001222) and the greatest prime index (A061395) of n.

The programs for A366785, the canonical program `A366785.P16198439604907092836` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366785 has offset 1).

The definition of A366785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366785.P16198439604907092836

`gcd(∑{e}[n+1, #], A061395(∏{p}[n+1, #]))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366785

/-- `gcd(∑{e}[n+1, #], A061395(∏{p}[n+1, #]))` -/
def P16198439604907092836.Spec : Prop :=
  ∀ n, (P16198439604907092836.a n : ℤ) = A366785 (n + 1)

theorem P16198439604907092836.correct : P16198439604907092836.Spec := by
  intro n
  simp only [A366785, Nat.add_sub_cancel]

end A366785

/-! ## A366785.P721477122274016102

`gcd(A001222(n+1), A061395(n+1))`
-/

namespace A366785.P721477122274016102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A061395 (n + 1))

end

end A366785.P721477122274016102

namespace A366785

/-- `gcd(A001222(n+1), A061395(n+1))` -/
def P721477122274016102.Spec : Prop :=
  ∀ n, (P721477122274016102.a n : ℤ) = A366785 (n + 1)

end A366785

/-! ## A366785.P971403146552412828

`gcd(A263297(n+1), A325225(n+1))`
-/

namespace A366785.P971403146552412828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A263297 (n + 1)) (A325225 (n + 1))

end

end A366785.P971403146552412828

namespace A366785

/-- `gcd(A263297(n+1), A325225(n+1))` -/
def P971403146552412828.Spec : Prop :=
  ∀ n, (P971403146552412828.a n : ℤ) = A366785 (n + 1)

end A366785

/-! ## A366785.P8428469675236308915

`gcd(∑{e}[n+1, #], A000720(A006530(n+1)))`
-/

namespace A366785.P8428469675236308915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A000720 (A006530 (n + 1)).toNat)

end

end A366785.P8428469675236308915

namespace A366785

/-- `gcd(∑{e}[n+1, #], A000720(A006530(n+1)))` -/
def P8428469675236308915.Spec : Prop :=
  ∀ n, (P8428469675236308915.a n : ℤ) = A366785 (n + 1)

end A366785

/-! ## A366785.P8635052933828633651

`gcd(A159081(n+1)-1, val(A165835(n+1), 2))`
-/

namespace A366785.P8635052933828633651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159081 (n + 1) - 1) (SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2 : ℤ)

end

end A366785.P8635052933828633651

namespace A366785

/-- `gcd(A159081(n+1)-1, val(A165835(n+1), 2))` -/
def P8635052933828633651.Spec : Prop :=
  ∀ n, (P8635052933828633651.a n : ℤ) = A366785 (n + 1)

end A366785

/-! ## A366785.P15276909873658685723

`A061395(n+1)/A028310(A360614(n+1))`
-/

namespace A366785.P15276909873658685723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (n + 1) : ℚ) / (A028310 (A360614 (n + 1)).toNat : ℚ)

end

end A366785.P15276909873658685723

namespace A366785

/-- `A061395(n+1)/A028310(A360614(n+1))` -/
def P15276909873658685723.Spec : Prop :=
  ∀ n, P15276909873658685723.a n = (A366785 (n + 1) : ℚ)

end A366785

/-! ## A366785.P15462715102415534534

`gcd(A073093(n+1)-1, A064741(A064664(n+1)))`
-/

namespace A366785.P15462715102415534534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073093 (n + 1) - 1) (A064741 (A064664 (n + 1)).toNat)

end

end A366785.P15462715102415534534

namespace A366785

/-- `gcd(A073093(n+1)-1, A064741(A064664(n+1)))` -/
def P15462715102415534534.Spec : Prop :=
  ∀ n, (P15462715102415534534.a n : ℤ) = A366785 (n + 1)

end A366785

/-! ## A366785.P8264793016315848257

`A373381(A325390(n+1))`
-/

namespace A366785.P8264793016315848257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373381 (A325390 (n + 1)).toNat

end

end A366785.P8264793016315848257

namespace A366785

/-- `A373381(A325390(n+1))` -/
def P8264793016315848257.Spec : Prop :=
  ∀ n, P8264793016315848257.a n = A366785 (n + 1)

end A366785

/-!
# A366786: a(n) = A073481(n)*A005117(n).

The programs for A366786, there is no canonical definition to state claims against.
-/

/-! ## A366786.P7275163345605445147

`A073481(n+1)*A005117(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366786.P7275163345605445147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073481 (n + 1) * A005117 (n + 1)

end

end A366786.P7275163345605445147

/-! ## A366786.P13173108161285828432

`A065642(A005117(n+1))`
-/

namespace A366786.P13173108161285828432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A005117 (n + 1)).toNat

end

end A366786.P13173108161285828432

/-! ## A366786.P7017585891169119000

`A065642(record[A007947(n+1)])`
-/

namespace A366786.P7017585891169119000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366786.P7017585891169119000

/-! ## A366786.P14649008701562887805

`(A073482(n+1)-A115013(n+1))*A005117(n+1)`
-/

namespace A366786.P14649008701562887805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073482 (n + 1) - A115013 (n + 1)) * A005117 (n + 1)

end

end A366786.P14649008701562887805

/-! ## A366786.P4278553061456434014

`A065642(record[A019554(n+1)])`
-/

namespace A366786.P4278553061456434014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366786.P4278553061456434014

/-! ## A366786.P1043561708346272107

`A065642(record[A066069(n+1)])`
-/

namespace A366786.P1043561708346272107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366786.P1043561708346272107

/-! ## A366786.P14454146727353798412

`A285109(record[A261969(n+1)])`
-/

namespace A366786.P14454146727353798412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366786.P14454146727353798412

/-! ## A366786.P12420955059257701391

`A285109(A005117(2*n+1-n))`
-/

namespace A366786.P12420955059257701391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (A005117 (2 * n + 1 - n)).toNat

end

end A366786.P12420955059257701391

/-! ## A366786.P3890059202277770062

`A065642(record[A076403(n+1)])`
-/

namespace A366786.P3890059202277770062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366786.P3890059202277770062

/-! ## A366786.P16567194783017594234

`A020639(A088610(2*n+1))*A088610(2*n+1)`
-/

namespace A366786.P16567194783017594234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088610 (2 * n + 1)).toNat * A088610 (2 * n + 1)

end

end A366786.P16567194783017594234

/-! ## A366786.P16163085104252315093

`A065642(record[A084371(n+1)])`
-/

namespace A366786.P16163085104252315093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A366786.P16163085104252315093

/-! ## A366786.P3897282952569953157

`filter[A285109(n+1), A359471(#)]`
-/

namespace A366786.P3897282952569953157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A366786.P3897282952569953157

/-! ## A366786.P9239900595001655959

`A285109(A007947(A005117(n+1)²))`
-/

namespace A366786.P9239900595001655959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285109 (A007947 (A005117 (n + 1) ^ 2).toNat).toNat

end

end A366786.P9239900595001655959

/-! ## A366786.P11386020962319588358

`sqrt(A062503(n+1))*A020639(A062503(n+1))`
-/

namespace A366786.P11386020962319588358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) : ℝ) * (A020639 (A062503 (n + 1)).toNat : ℝ)

end

end A366786.P11386020962319588358

/-! ## A366786.P5471223728706937247

`A358971(A005117(A358971(A358971(n+1))))`
-/

namespace A366786.P5471223728706937247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358971 (A005117 (A358971 (A358971 (n + 1)).toNat).toNat).toNat

end

end A366786.P5471223728706937247

/-!
# A366787: a(n) = A366789(A163511(n)).

The programs for A366787, the canonical program `A366787.P16012177667745458763` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366787 has offset 0).

The definition of A366787 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A366789, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366787.P16012177667745458763

`A366789(A163511(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366787

/-- `A366789(A163511(n))` -/
def P16012177667745458763.Spec : Prop :=
  ∀ n, P16012177667745458763.a n = A366787 n

theorem P16012177667745458763.correct : P16012177667745458763.Spec := by
  intro n
  simp only [A366787]

end A366787

/-! ## A366787.P7987023227381475313

`A366789(A364258(n)+n)`
-/

namespace A366787.P7987023227381475313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366789 (A364258 n + (n : ℤ)).toNat

end

end A366787.P7987023227381475313

namespace A366787

/-- `A366789(A364258(n)+n)` -/
def P7987023227381475313.Spec : Prop :=
  ∀ n, P7987023227381475313.a n = A366787 n

end A366787

/-! ## A366787.P8334544084111839278

`A000265(A003963(A163511(2*n)))`
-/

namespace A366787.P8334544084111839278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003963 (A163511 (2 * n)).toNat).toNat

end

end A366787.P8334544084111839278

namespace A366787

/-- `A000265(A003963(A163511(2*n)))` -/
def P8334544084111839278.Spec : Prop :=
  ∀ n, P8334544084111839278.a n = A366787 n

end A366787

/-!
# A366788: a(n) = A366388(A163511(n)).

The programs for A366788, there is no canonical definition to state claims against.
-/

/-! ## A366788.P8310867622341074598

`A366388(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366788.P8310867622341074598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A163511 n).toNat

end

end A366788.P8310867622341074598

/-! ## A366788.P13889061876352524096

`A329697(lcm(4, A332214(n)))`
-/

namespace A366788.P13889061876352524096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (Int.lcm 4 (A332214 n))

end

end A366788.P13889061876352524096

/-! ## A366788.P546869706986611104

`A329697(A034444(n+1)*A332214(n))`
-/

namespace A366788.P546869706986611104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A034444 (n + 1) * A332214 n).toNat

end

end A366788.P546869706986611104

/-! ## A366788.P11695912589907119071

`A329697(A332214(n))%A365423(n+1)`
-/

namespace A366788.P11695912589907119071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329697 (A332214 n).toNat) (A365423 (n + 1))

end

end A366788.P11695912589907119071

/-!
# A366789: Fully multiplicative with a(p) = oddpart(primepi(p)).

The programs for A366789, the canonical program `A366789.P13497469237350801223` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366789 has offset 1).

The definition of A366789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366789.P13497469237350801223

`A000265(A003963(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A366789

/-- `A000265(A003963(n+1))` -/
def P13497469237350801223.Spec : Prop :=
  ∀ n, P13497469237350801223.a n = A366789 (n + 1)

theorem P13497469237350801223.correct : P13497469237350801223.Spec := by
  intro n
  simp only [A366789, Nat.add_sub_cancel]

end A366789

/-! ## A366789.P11369632894164919290

`A028234(2*A003963(n+1))`
-/

namespace A366789.P11369632894164919290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A003963 (n + 1)).toNat

end

end A366789.P11369632894164919290

namespace A366789

/-- `A028234(2*A003963(n+1))` -/
def P11369632894164919290.Spec : Prop :=
  ∀ n, P11369632894164919290.a n = A366789 (n + 1)

end A366789

/-! ## A366789.P7181989921418262606

`A161150(2*A003963(n+1))`
-/

namespace A366789.P7181989921418262606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (2 * A003963 (n + 1)).toNat

end

end A366789.P7181989921418262606

namespace A366789

/-- `A161150(2*A003963(n+1))` -/
def P7181989921418262606.Spec : Prop :=
  ∀ n, P7181989921418262606.a n = A366789 (n + 1)

end A366789

/-! ## A366789.P3849355110780041940

`A028234(lcm(2, A003963(n+1)))`
-/

namespace A366789.P3849355110780041940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.lcm 2 (A003963 (n + 1)))

end

end A366789.P3849355110780041940

namespace A366789

/-- `A028234(lcm(2, A003963(n+1)))` -/
def P3849355110780041940.Spec : Prop :=
  ∀ n, P3849355110780041940.a n = A366789 (n + 1)

end A366789

/-! ## A366789.P9226377647859580130

`A000265(A156061(n+1)*A290104(n+1)/A290105(n+1))`
-/

namespace A366789.P9226377647859580130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A156061 (n + 1) * A290104 (n + 1) : ℚ) / (A290105 (n + 1) : ℚ))).toNat

end

end A366789.P9226377647859580130

namespace A366789

/-- `A000265(A156061(n+1)*A290104(n+1)/A290105(n+1))` -/
def P9226377647859580130.Spec : Prop :=
  ∀ n, P9226377647859580130.a n = A366789 (n + 1)

end A366789

/-! ## A366789.P3953806230320414756

`gcd(A003963(2*(n+1)), A133221(A003963(2*n+1)))`
-/

namespace A366789.P3953806230320414756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003963 (2 * (n + 1))) (A133221 (A003963 (2 * n + 1)).toNat)

end

end A366789.P3953806230320414756

namespace A366789

/-- `gcd(A003963(2*(n+1)), A133221(A003963(2*n+1)))` -/
def P3953806230320414756.Spec : Prop :=
  ∀ n, (P3953806230320414756.a n : ℤ) = A366789 (n + 1)

end A366789

/-! ## A366789.P15957597673710559592

`gcd(A003963(n+1), A217858(n+1))`
-/

namespace A366789.P15957597673710559592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003963 (n + 1)) (A217858 (n + 1))

end

end A366789.P15957597673710559592

namespace A366789

/-- `gcd(A003963(n+1), A217858(n+1))` -/
def P15957597673710559592.Spec : Prop :=
  ∀ n, (P15957597673710559592.a n : ℤ) = A366789 (n + 1)

end A366789

/-! ## A366789.P7158973277649668674

`gcd(A003963(n+1), A133221(n))`
-/

namespace A366789.P7158973277649668674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003963 (n + 1)) (A133221 n)

end

end A366789.P7158973277649668674

namespace A366789

/-- `gcd(A003963(n+1), A133221(n))` -/
def P7158973277649668674.Spec : Prop :=
  ∀ n, (P7158973277649668674.a n : ℤ) = A366789 (n + 1)

end A366789

/-!
# A366790: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366789(i) = A366789(j) and A336158(i) = A336158(j), for all i, j >= 1.

The programs for A366790, there is no canonical definition to state claims against.
-/

/-! ## A366790.P1261615087038193393

`A198329(A066678(n+1))`
-/

namespace A366790.P1261615087038193393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (A066678 (n + 1)).toNat

end

end A366790.P1261615087038193393

/-! ## A366790.P1605041213372066642

`A198329(A352597(n+1))`
-/

namespace A366790.P1605041213372066642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (A352597 (n + 1)).toNat

end

end A366790.P1605041213372066642

/-! ## A366790.P10860586229308487417

`A106486(A225496(floor(n/(xor(n, n+1)+1))+1)²)`
-/

namespace A366790.P10860586229308487417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A225496 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat ^ 2).toNat

end

end A366790.P10860586229308487417

/-! ## A366790.P4917607767429901298

`A198328(n+1)+A000038(A001644(n))`
-/

namespace A366790.P4917607767429901298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (n + 1) + A000038 (A001644 n).toNat

end

end A366790.P4917607767429901298

/-! ## A366790.P16888310956858965134

`A198328(n+1)+A000007(A087503(n))`
-/

namespace A366790.P16888310956858965134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (n + 1) + A000007 (A087503 n).toNat

end

end A366790.P16888310956858965134

/-!
# A366793: Binary encoding of the ones in the balanced ternary representation of Per Nørgård's "infinity sequence".

The programs for A366793, the canonical program `A366793.P4094261639517123747` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366793 has offset 0).

The definition of A366793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, A323909, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366793.P4094261639517123747

`A289813(A323909(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A366793

/-- `A289813(A323909(n))` -/
def P4094261639517123747.Spec : Prop :=
  ∀ n, P4094261639517123747.a n = A366793 n

theorem P4094261639517123747.correct : P4094261639517123747.Spec := by
  intro n
  simp only [A366793]

end A366793

/-! ## A366793.P7616885685111450103

`A366794(2*n)`
-/

namespace A366793.P7616885685111450103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366794 (2 * n)

end

end A366793.P7616885685111450103

namespace A366793

/-- `A366794(2*n)` -/
def P7616885685111450103.Spec : Prop :=
  ∀ n, P7616885685111450103.a n = A366793 n

end A366793

/-! ## A366793.P15036349331896882879

`A289814(A323909(2*n))`
-/

namespace A366793.P15036349331896882879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A323909 (2 * n)).toNat

end

end A366793.P15036349331896882879

namespace A366793

/-- `A289814(A323909(2*n))` -/
def P15036349331896882879.Spec : Prop :=
  ∀ n, P15036349331896882879.a n = A366793 n

end A366793

/-! ## A366793.P10544111088522295850

`A321103(A125745(n+1))`
-/

namespace A366793.P10544111088522295850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321103 (A125745 (n + 1)).toNat

end

end A366793.P10544111088522295850

namespace A366793

/-- `A321103(A125745(n+1))` -/
def P10544111088522295850.Spec : Prop :=
  ∀ n, P10544111088522295850.a n = A366793 n

end A366793

/-! ## A366793.P11923057799462290324

`A057985(A144121(2*n+3)-A001462(n+1))`
-/

namespace A366793.P11923057799462290324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A144121 (2 * n + 3) - A001462 (n + 1)).toNat

end

end A366793.P11923057799462290324

namespace A366793

/-- `A057985(A144121(2*n+3)-A001462(n+1))` -/
def P11923057799462290324.Spec : Prop :=
  ∀ n, P11923057799462290324.a n = A366793 n

end A366793

/-!
# A366794: Binary encoding of the twos (-1's) in the balanced ternary representation of Per Nørgård's "infinity sequence".

The programs for A366794, the canonical program `A366794.P13602922640503946286` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366794 has offset 0).

The definition of A366794 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, A323909, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366794.P13602922640503946286

`A289814(A323909(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A366794

/-- `A289814(A323909(n))` -/
def P13602922640503946286.Spec : Prop :=
  ∀ n, P13602922640503946286.a n = A366794 n

theorem P13602922640503946286.correct : P13602922640503946286.Spec := by
  intro n
  simp only [A366794]

end A366794

/-! ## A366794.P3707756374650717488

`A366793(2*n)`
-/

namespace A366794.P3707756374650717488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366793 (2 * n)

end

end A366794.P3707756374650717488

namespace A366794

/-- `A366793(2*n)` -/
def P3707756374650717488.Spec : Prop :=
  ∀ n, P3707756374650717488.a n = A366794 n

end A366794

/-! ## A366794.P17756248893788063495

`A289813(A323909(2*n))`
-/

namespace A366794.P17756248893788063495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A323909 (2 * n)).toNat

end

end A366794.P17756248893788063495

namespace A366794

/-- `A289813(A323909(2*n))` -/
def P17756248893788063495.Spec : Prop :=
  ∀ n, P17756248893788063495.a n = A366794 n

end A366794

/-! ## A366794.P665256077322715378

`A289813(A323909(n)+A004718(n))`
-/

namespace A366794.P665256077322715378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A323909 n + A004718 n).toNat

end

end A366794.P665256077322715378

namespace A366794

/-- `A289813(A323909(n)+A004718(n))` -/
def P665256077322715378.Spec : Prop :=
  ∀ n, P665256077322715378.a n = A366794 n

end A366794

/-! ## A366794.P4918311776938254410

`A288638(A333256(2*n+1))%A002322(n+1)`
-/

namespace A366794.P4918311776938254410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288638 (A333256 (2 * n + 1)).toNat) (A002322 (n + 1))

end

end A366794.P4918311776938254410

namespace A366794

/-- `A288638(A333256(2*n+1))%A002322(n+1)` -/
def P4918311776938254410.Spec : Prop :=
  ∀ n, P4918311776938254410.a n = A366794 n

end A366794

/-!
# A366795: a(n) = A344695(A005940(1+n)), where A344695(n) = gcd(psi(n), sigma(n)), and A005940 is the Doudna sequence.

The programs for A366795, the canonical program `A366795.P7121921865006446826` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366795 has offset 0).

The definition of A366795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A344695, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366795.P7121921865006446826

`A344695(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366795

/-- `A344695(A005940(1+n))` -/
def P7121921865006446826.Spec : Prop :=
  ∀ n, P7121921865006446826.a n = A366795 n

theorem P7121921865006446826.correct : P7121921865006446826.Spec := by
  intro n
  simp only [A366795]

end A366795

/-! ## A366795.P16796498481863683724

`A344695(A292602(4*n+3))`
-/

namespace A366795.P16796498481863683724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A292602 (4 * n + 3)).toNat

end

end A366795.P16796498481863683724

namespace A366795

/-- `A344695(A292602(4*n+3))` -/
def P16796498481863683724.Spec : Prop :=
  ∀ n, P16796498481863683724.a n = A366795 n

end A366795

/-! ## A366795.P10052750014476646674

`A344695(A364499(n+1)+1+n)`
-/

namespace A366795.P10052750014476646674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A364499 (n + 1) + 1 + (n : ℤ)).toNat

end

end A366795.P10052750014476646674

namespace A366795

/-- `A344695(A364499(n+1)+1+n)` -/
def P10052750014476646674.Spec : Prop :=
  ∀ n, P10052750014476646674.a n = A366795 n

end A366795

/-! ## A366795.P17693391464840675860

`A344695((A324055(n)+A324054(n))/2)`
-/

namespace A366795.P17693391464840675860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (SequenceMachineLib.roundAway ((A324055 n + A324054 n : ℚ) / 2)).toNat

end

end A366795.P17693391464840675860

namespace A366795

/-- `A344695((A324055(n)+A324054(n))/2)` -/
def P17693391464840675860.Spec : Prop :=
  ∀ n, P17693391464840675860.a n = A366795 n

end A366795

/-! ## A366795.P3771708418450493724

`A344695(A340362(n+1)+A340364(n+1)*A340366(n+1))`
-/

namespace A366795.P3771708418450493724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1)).toNat

end

end A366795.P3771708418450493724

namespace A366795

/-- `A344695(A340362(n+1)+A340364(n+1)*A340366(n+1))` -/
def P3771708418450493724.Spec : Prop :=
  ∀ n, P3771708418450493724.a n = A366795 n

end A366795

/-!
# A366797: Number of odd divisors permuted by A163511: a(n) = A001227(A163511(n)).

The programs for A366797, the canonical program `A366797.P9156922134602193647` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366797 has offset 0).

The definition of A366797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366797.P18385685045184156372

`2*A366873(n)-A324186(n)`
-/

namespace A366797.P18385685045184156372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A366873 n - A324186 n

end

end A366797.P18385685045184156372

namespace A366797

/-- `2*A366873(n)-A324186(n)` -/
def P18385685045184156372.Spec : Prop :=
  ∀ n, P18385685045184156372.a n = A366797 n

end A366797

/-! ## A366797.P9156922134602193647

`A001227(A163511(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A366797

/-- `A001227(A163511(n))` -/
def P9156922134602193647.Spec : Prop :=
  ∀ n, P9156922134602193647.a n = A366797 n

theorem P9156922134602193647.correct : P9156922134602193647.Spec := by
  intro n
  simp only [A366797]

end A366797

/-! ## A366797.P17850288039110810571

`gcd(A324183(2*n), A324183(n))`
-/

namespace A366797.P17850288039110810571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324183 (2 * n)) (A324183 n)

end

end A366797.P17850288039110810571

namespace A366797

/-- `gcd(A324183(2*n), A324183(n))` -/
def P17850288039110810571.Spec : Prop :=
  ∀ n, (P17850288039110810571.a n : ℤ) = A366797 n

end A366797

/-! ## A366797.P6483019829729005797

`A000005(A365425(n))`
-/

namespace A366797.P6483019829729005797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A365425 n).toNat

end

end A366797.P6483019829729005797

namespace A366797

/-- `A000005(A365425(n))` -/
def P6483019829729005797.Spec : Prop :=
  ∀ n, P6483019829729005797.a n = A366797 n

end A366797

/-! ## A366797.P14594148733199255396

`∑{d}[A364258(n)+n, #%2]`
-/

namespace A366797.P14594148733199255396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A366797.P14594148733199255396

namespace A366797

/-- `∑{d}[A364258(n)+n, #%2]` -/
def P14594148733199255396.Spec : Prop :=
  ∀ n, (P14594148733199255396.a n : ℤ) = A366797 n

end A366797

/-! ## A366797.P16856763177024206885

`A322813(A253565(n))`
-/

namespace A366797.P16856763177024206885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A253565 n).toNat

end

end A366797.P16856763177024206885

namespace A366797

/-- `A322813(A253565(n))` -/
def P16856763177024206885.Spec : Prop :=
  ∀ n, P16856763177024206885.a n = A366797 n

end A366797

/-! ## A366797.P1763534930687788194

`A001227(A332817(n))`
-/

namespace A366797.P1763534930687788194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A332817 n).toNat

end

end A366797.P1763534930687788194

namespace A366797

/-- `A001227(A332817(n))` -/
def P1763534930687788194.Spec : Prop :=
  ∀ n, P1763534930687788194.a n = A366797 n

end A366797

/-! ## A366797.P8522375552649757453

`A320107(A163511(2*n))`
-/

namespace A366797.P8522375552649757453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (A163511 (2 * n)).toNat

end

end A366797.P8522375552649757453

namespace A366797

/-- `A320107(A163511(2*n))` -/
def P8522375552649757453.Spec : Prop :=
  ∀ n, P8522375552649757453.a n = A366797 n

end A366797

/-! ## A366797.P14948979836900839349

`A001227(A332214(n))`
-/

namespace A366797.P14948979836900839349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A332214 n).toNat

end

end A366797.P14948979836900839349

namespace A366797

/-- `A001227(A332214(n))` -/
def P14948979836900839349.Spec : Prop :=
  ∀ n, P14948979836900839349.a n = A366797 n

end A366797

/-!
# A366798: Lexicographically earliest infinite sequence such that a(i) = a(j) => A366797(i) = A366797(j) for all i, j >= 0, where A366797 is the number of odd divisors permuted by A163511.

The programs for A366798, there is no canonical definition to state claims against.
-/

/-! ## A366798.P14493370556907874864

`A243571(A366797(n))%A251909(n+1)`
-/

namespace A366798.P14493370556907874864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243571 (A366797 n).toNat) (A251909 (n + 1))

end

end A366798.P14493370556907874864

/-!
# A366799: Number of divisors d of n that are not of the form 4k+2, as permuted by the Doudna sequence.

The programs for A366799, the canonical program `A366799.P11529774657364513407` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366799 has offset 0).

The definition of A366799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A320111, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366799.P11529774657364513407

`A320111(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A366799

/-- `A320111(A005940(1+n))` -/
def P11529774657364513407.Spec : Prop :=
  ∀ n, P11529774657364513407.a n = A366799 n

theorem P11529774657364513407.correct : P11529774657364513407.Spec := by
  intro n
  simp only [A366799]

end A366799

/-! ## A366799.P5858824933680514768

`A106737(A004526(n))`
-/

namespace A366799.P5858824933680514768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A004526 n).toNat

end

end A366799.P5858824933680514768

namespace A366799

/-- `A106737(A004526(n))` -/
def P5858824933680514768.Spec : Prop :=
  ∀ n, P5858824933680514768.a n = A366799 n

end A366799

/-! ## A366799.P13220933209058302471

`A106737(A029578(n))`
-/

namespace A366799.P13220933209058302471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A029578 n).toNat

end

end A366799.P13220933209058302471

namespace A366799

/-- `A106737(A029578(n))` -/
def P13220933209058302471.Spec : Prop :=
  ∀ n, P13220933209058302471.a n = A366799 n

end A366799

/-! ## A366799.P7239393370154155096

`A106737(A052928(n))`
-/

namespace A366799.P7239393370154155096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A052928 n).toNat

end

end A366799.P7239393370154155096

namespace A366799

/-- `A106737(A052928(n))` -/
def P7239393370154155096.Spec : Prop :=
  ∀ n, P7239393370154155096.a n = A366799 n

end A366799

/-! ## A366799.P2646831597190809551

`A106737(A065423(n+1))`
-/

namespace A366799.P2646831597190809551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A065423 (n + 1)).toNat

end

end A366799.P2646831597190809551

namespace A366799

/-- `A106737(A065423(n+1))` -/
def P2646831597190809551.Spec : Prop :=
  ∀ n, P2646831597190809551.a n = A366799 n

end A366799

/-! ## A366799.P6569276527649730042

`A106737(A008619(n)-1)`
-/

namespace A366799.P6569276527649730042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A008619 n - 1).toNat

end

end A366799.P6569276527649730042

namespace A366799

/-- `A106737(A008619(n)-1)` -/
def P6569276527649730042.Spec : Prop :=
  ∀ n, P6569276527649730042.a n = A366799 n

end A366799

/-! ## A366799.P6750987299807382231

`A106737(A140106(n+2))`
-/

namespace A366799.P6750987299807382231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A140106 (n + 2)).toNat

end

end A366799.P6750987299807382231

namespace A366799

/-- `A106737(A140106(n+2))` -/
def P6750987299807382231.Spec : Prop :=
  ∀ n, P6750987299807382231.a n = A366799 n

end A366799

/-! ## A366799.P6552385800402011720

`A320111(A332815(n))`
-/

namespace A366799.P6552385800402011720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A332815 n).toNat

end

end A366799.P6552385800402011720

namespace A366799

/-- `A320111(A332815(n))` -/
def P6552385800402011720.Spec : Prop :=
  ∀ n, P6552385800402011720.a n = A366799 n

end A366799

/-! ## A366799.P11676849093967813944

`A167489(A088697(n))`
-/

namespace A366799.P11676849093967813944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A088697 n).toNat

end

end A366799.P11676849093967813944

namespace A366799

/-- `A167489(A088697(n))` -/
def P11676849093967813944.Spec : Prop :=
  ∀ n, P11676849093967813944.a n = A366799 n

end A366799

/-! ## A366799.P16561420802621881665

`A320111(A374717(n+1))`
-/

namespace A366799.P16561420802621881665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A374717 (n + 1)).toNat

end

end A366799.P16561420802621881665

namespace A366799

/-- `A320111(A374717(n+1))` -/
def P16561420802621881665.Spec : Prop :=
  ∀ n, P16561420802621881665.a n = A366799 n

end A366799

