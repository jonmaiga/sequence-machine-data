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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A014100: Inverse of 91st cyclotomic polynomial.

The programs for A014100, there is no canonical definition to state claims against.
-/

/-! ## A014100.P12448899127193658962

`A014191(n)*A033999(n)`
-/

namespace A014100.P12448899127193658962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014191 n * A033999 n

end

end A014100.P12448899127193658962

/-!
# A014101: a(n) = a(n-1) + a(n-4), starting 1,1,1,3.

The programs for A014101, the canonical program `A014101.P7112038547370088569` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014101 has offset 0).

The definition of A014101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-4)` (program `A014101.P7112038547370088569`, by `A014101.P7112038547370088569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014101.P7112038547370088569

`a(n-1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014101

/-- `a(n-1)+a(n-4)` -/
def P7112038547370088569.Spec : Prop :=
  ∀ n, (P7112038547370088569.a n : ℤ) = A014101 n

theorem P7112038547370088569.correct : P7112038547370088569.Spec := by
  intro n
  simp only [A014101]

end A014101

/-! ## A014101.P14701326372966481957

`ogf((1+2x^3)/(1-x-x^4))`
-/

namespace A014101.P14701326372966481957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2] [1, -1, 0, 0, -1] n

end

end A014101.P14701326372966481957

namespace A014101

/-- `ogf((1+2x^3)/(1-x-x^4))` -/
def P14701326372966481957.Spec : Prop :=
  ∀ n, P14701326372966481957.a n = A014101 n

end A014101

/-! ## A014101.P18069721301754962632

`A017898(n+1)+A003269(n+2)`
-/

namespace A014101.P18069721301754962632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) + A003269 (n + 2)

end

end A014101.P18069721301754962632

namespace A014101

/-- `A017898(n+1)+A003269(n+2)` -/
def P18069721301754962632.Spec : Prop :=
  ∀ n, P18069721301754962632.a n = A014101 n

end A014101

/-! ## A014101.P7477953693882869661

`A017898(n+1)+A017898(n+5)`
-/

namespace A014101.P7477953693882869661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 1) + A017898 (n + 5)

end

end A014101.P7477953693882869661

namespace A014101

/-- `A017898(n+1)+A017898(n+5)` -/
def P7477953693882869661.Spec : Prop :=
  ∀ n, P7477953693882869661.a n = A014101 n

end A014101

/-! ## A014101.P11835516222860748103

`A003269(n+2)+Δ[A003269(n+1)]`
-/

namespace A014101.P11835516222860748103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 2) + (f1 (n + 1) - f1 n)

end

end A014101.P11835516222860748103

namespace A014101

/-- `A003269(n+2)+Δ[A003269(n+1)]` -/
def P11835516222860748103.Spec : Prop :=
  ∀ n, P11835516222860748103.a n = A014101 n

end A014101

/-! ## A014101.P18091213879404231382

`A122789(n+1)+A078467(n)-A122789(n)`
-/

namespace A014101.P18091213879404231382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (n + 1) + (A078467 n - A122789 n)

end

end A014101.P18091213879404231382

namespace A014101

/-- `A122789(n+1)+A078467(n)-A122789(n)` -/
def P18091213879404231382.Spec : Prop :=
  ∀ n, P18091213879404231382.a n = A014101 n

end A014101

/-! ## A014101.P5416499826168991399

`A003411(n+1)-A078467(n+1)`
-/

namespace A014101.P5416499826168991399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (n + 1) - A078467 (n + 1)

end

end A014101.P5416499826168991399

namespace A014101

/-- `A003411(n+1)-A078467(n+1)` -/
def P5416499826168991399.Spec : Prop :=
  ∀ n, P5416499826168991399.a n = A014101 n

end A014101

/-! ## A014101.P3870458403130819583

`(A014097(n+1)+A003269(n+1))/2`
-/

namespace A014101.P3870458403130819583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014097 (n + 1) + A003269 (n + 1) : ℚ) / 2

end

end A014101.P3870458403130819583

namespace A014101

/-- `(A014097(n+1)+A003269(n+1))/2` -/
def P3870458403130819583.Spec : Prop :=
  ∀ n, P3870458403130819583.a n = (A014101 n : ℚ)

end A014101

/-! ## A014101.P9873954172030876342

`Δ[A098578(n+1)+Δ[A098578(n)]]`
-/

namespace A014101.P9873954172030876342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014101.P9873954172030876342

namespace A014101

/-- `Δ[A098578(n+1)+Δ[A098578(n)]]` -/
def P9873954172030876342.Spec : Prop :=
  ∀ n, P9873954172030876342.a n = A014101 n

end A014101

/-!
# A014102: Inverse of 93rd cyclotomic polynomial.

The programs for A014102, there is no canonical definition to state claims against.
-/

/-! ## A014102.P4039228615898292142

`A014195(n)*A033999(n)`
-/

namespace A014102.P4039228615898292142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014195 n * A033999 n

end

end A014102.P4039228615898292142

/-!
# A014103: Expansion of (eta(q^2) / eta(q))^24 in powers of q.

The programs for A014103, there is no canonical definition to state claims against.
-/

/-! ## A014103.P13006386523508487849

`abs(A100130(n+1))`
-/

namespace A014103.P13006386523508487849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100130 (n + 1)|

end

end A014103.P13006386523508487849

/-! ## A014103.P2665700069156577939

`A033999(n)*A100130(n+1)`
-/

namespace A014103.P2665700069156577939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A100130 (n + 1)

end

end A014103.P2665700069156577939

/-! ## A014103.P17711557839514937681

`gcd(A000038(n), A100130(n+1))`
-/

namespace A014103.P17711557839514937681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A100130 (n + 1))

end

end A014103.P17711557839514937681

/-! ## A014103.P9623547241320293526

`lcm(A000034(n), A100130(n+1))`
-/

namespace A014103.P9623547241320293526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A100130 (n + 1))

end

end A014103.P9623547241320293526

/-! ## A014103.P14290033405750757589

`A100130(n+1)/A022577(n)*A124863(n)`
-/

namespace A014103.P14290033405750757589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100130 (n + 1) : ℚ) / (A022577 n : ℚ) * (A124863 n : ℚ)

end

end A014103.P14290033405750757589

/-! ## A014103.P10770641020271184951

`A092877(2*(n+1))/8`
-/

namespace A014103.P10770641020271184951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092877 (2 * (n + 1)) : ℚ) / 8

end

end A014103.P10770641020271184951

/-!
# A014104: Inverse of 95th cyclotomic polynomial.

The programs for A014104, there is no canonical definition to state claims against.
-/

/-! ## A014104.P6973698349152952475

`A014199(n)*A033999(n)`
-/

namespace A014104.P6973698349152952475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014199 n * A033999 n

end

end A014104.P6973698349152952475

/-!
# A014105: Second hexagonal numbers: a(n) = n*(2*n + 1).

The programs for A014105, the canonical program `A014105.P182524374866796289` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014105 has offset 0).

The definition of A014105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+1)` (program `A014105.P182524374866796289`, by `A014105.P182524374866796289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014105.P5782793801823012789

`C(2*n+1, 2)`
-/

namespace A014105.P5782793801823012789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

end

end A014105.P5782793801823012789

namespace A014105

/-- `C(2*n+1, 2)` -/
def P5782793801823012789.Spec : Prop :=
  ∀ n, (P5782793801823012789.a n : ℤ) = A014105 n

theorem P5782793801823012789.correct : P5782793801823012789.Spec := by
  intro n
  simp only [A014105, Nat.add_sub_cancel, A014105.P5782793801823012789.a, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014105

/-! ## A014105.P182524374866796289

`n*(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014105

/-- `n*(2*n+1)` -/
def P182524374866796289.Spec : Prop :=
  ∀ n, (P182524374866796289.a n : ℤ) = A014105 n

theorem P182524374866796289.correct : P182524374866796289.Spec := by
  intro n
  simp only [A014105]

end A014105

/-! ## A014105.P8446034853452832098

`A084849(n)-1`
-/

namespace A014105.P8446034853452832098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n - 1

end

end A014105.P8446034853452832098

namespace A014105

/-- `A084849(n)-1` -/
def P8446034853452832098.Spec : Prop :=
  ∀ n, P8446034853452832098.a n = A014105 n

theorem P8446034853452832098.correct : P8446034853452832098.Spec := by
  intro n
  simp only [A014105, Nat.add_sub_cancel, A014105.P8446034853452832098.a, A014105.P182524374866796289.a, A084849, A084849.P10620509709519408572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014105

/-! ## A014105.P17208747982148496091

`A000217(2*n)`
-/

namespace A014105.P17208747982148496091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

end

end A014105.P17208747982148496091

namespace A014105

/-- `A000217(2*n)` -/
def P17208747982148496091.Spec : Prop :=
  ∀ n, P17208747982148496091.a n = A014105 n

theorem P17208747982148496091.correct : P17208747982148496091.Spec := by
  intro n
  simp only [A014105, Nat.add_sub_cancel, A014105.P17208747982148496091.a, A014105.P182524374866796289.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014105

/-! ## A014105.P5512343259639795797

`A002943(n)/2`
-/

namespace A014105.P5512343259639795797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / 2

end

end A014105.P5512343259639795797

namespace A014105

/-- `A002943(n)/2` -/
def P5512343259639795797.Spec : Prop :=
  ∀ n, P5512343259639795797.a n = (A014105 n : ℚ)

theorem P5512343259639795797.correct : P5512343259639795797.Spec := by
  intro n
  simp only [A014105, Nat.add_sub_cancel, A014105.P5512343259639795797.a, A014105.P182524374866796289.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014105

/-! ## A014105.P1906228711096827388

`A000290(n)+A002378(n)`
-/

namespace A014105.P1906228711096827388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + A002378 n

end

end A014105.P1906228711096827388

namespace A014105

/-- `A000290(n)+A002378(n)` -/
def P1906228711096827388.Spec : Prop :=
  ∀ n, P1906228711096827388.a n = A014105 n

theorem P1906228711096827388.correct : P1906228711096827388.Spec := by
  intro n
  simp only [A014105, Nat.add_sub_cancel, A014105.P1906228711096827388.a, A014105.P182524374866796289.a, A000290, A000290.P12206242496348924484.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014105

/-! ## A014105.P9289123188000668971

`A003215(n)-A000290(n+1)`
-/

namespace A014105.P9289123188000668971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - A000290 (n + 1)

end

end A014105.P9289123188000668971

namespace A014105

/-- `A003215(n)-A000290(n+1)` -/
def P9289123188000668971.Spec : Prop :=
  ∀ n, P9289123188000668971.a n = A014105 n

theorem P9289123188000668971.correct : P9289123188000668971.Spec := by
  intro n
  simp only [A014105, Nat.add_sub_cancel, A014105.P9289123188000668971.a, A014105.P182524374866796289.a, A000290, A000290.P12206242496348924484.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014105

/-! ## A014105.P5098277696192515504

`A242342(2*n+1)`
-/

namespace A014105.P5098277696192515504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242342 (2 * n + 1)

end

end A014105.P5098277696192515504

namespace A014105

/-- `A242342(2*n+1)` -/
def P5098277696192515504.Spec : Prop :=
  ∀ n, P5098277696192515504.a n = A014105 n

end A014105

/-! ## A014105.P270285692006882950

`lcm(n, Δ[n²])`
-/

namespace A014105.P270285692006882950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A014105.P270285692006882950

namespace A014105

/-- `lcm(n, Δ[n²])` -/
def P270285692006882950.Spec : Prop :=
  ∀ n, (P270285692006882950.a n : ℤ) = A014105 n

end A014105

/-! ## A014105.P13536141290612360307

`record[C(xor(1, n), 2)]`
-/

namespace A014105.P13536141290612360307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014105.P13536141290612360307

namespace A014105

/-- `record[C(xor(1, n), 2)]` -/
def P13536141290612360307.Spec : Prop :=
  ∀ n, (P13536141290612360307.a n : ℤ) = A014105 n

end A014105

/-! ## A014105.P3244499824858468938

`∑[lcm(4, 4*n)]-n`
-/

namespace A014105.P3244499824858468938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A014105.P3244499824858468938

namespace A014105

/-- `∑[lcm(4, 4*n)]-n` -/
def P3244499824858468938.Spec : Prop :=
  ∀ n, P3244499824858468938.a n = A014105 n

end A014105

/-! ## A014105.P11312703266666645427

`∑[comp[or(1, n)]]+n²`
-/

namespace A014105.P11312703266666645427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A014105.P11312703266666645427

namespace A014105

/-- `∑[comp[or(1, n)]]+n²` -/
def P11312703266666645427.Spec : Prop :=
  ∀ n, (P11312703266666645427.a n : ℤ) = A014105 n

end A014105

/-! ## A014105.P13340227415032606292

`(n/cos(atan(1)))²+n`
-/

namespace A014105.P13340227415032606292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (Real.arctan (1 : ℝ))) ^ 2 + (n : ℝ)

end

end A014105.P13340227415032606292

namespace A014105

/-- `(n/cos(atan(1)))²+n` -/
def P13340227415032606292.Spec : Prop :=
  ∀ n, P13340227415032606292.a n = (A014105 n : ℝ)

end A014105

/-! ## A014105.P12051076256791440167

`(n/sin(atan(1)))²+n`
-/

namespace A014105.P12051076256791440167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (Real.arctan (1 : ℝ))) ^ 2 + (n : ℝ)

end

end A014105.P12051076256791440167

namespace A014105

/-- `(n/sin(atan(1)))²+n` -/
def P12051076256791440167.Spec : Prop :=
  ∀ n, P12051076256791440167.a n = (A014105 n : ℝ)

end A014105

/-! ## A014105.P12514347308905868091

`(n/cos(acot(1)))²+n`
-/

namespace A014105.P12514347308905868091
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ))) ^ 2 + (n : ℝ)

end

end A014105.P12514347308905868091

namespace A014105

/-- `(n/cos(acot(1)))²+n` -/
def P12514347308905868091.Spec : Prop :=
  ∀ n, P12514347308905868091.a n = (A014105 n : ℝ)

end A014105

/-! ## A014105.P15921207536014776872

`(n/sin(acot(1)))²+n`
-/

namespace A014105.P15921207536014776872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ))) ^ 2 + (n : ℝ)

end

end A014105.P15921207536014776872

namespace A014105

/-- `(n/sin(acot(1)))²+n` -/
def P15921207536014776872.Spec : Prop :=
  ∀ n, P15921207536014776872.a n = (A014105 n : ℝ)

end A014105

/-! ## A014105.P13388239624034707017

`n²/tan(acot(2))+n`
-/

namespace A014105.P13388239624034707017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)) + (n : ℝ)

end

end A014105.P13388239624034707017

namespace A014105

/-- `n²/tan(acot(2))+n` -/
def P13388239624034707017.Spec : Prop :=
  ∀ n, P13388239624034707017.a n = (A014105 n : ℝ)

end A014105

/-! ## A014105.P12616117474336425364

`n²/cot(atan(2))+n`
-/

namespace A014105.P12616117474336425364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.cot (Real.arctan (2 : ℝ)) + (n : ℝ)

end

end A014105.P12616117474336425364

namespace A014105

/-- `n²/cot(atan(2))+n` -/
def P12616117474336425364.Spec : Prop :=
  ∀ n, P12616117474336425364.a n = (A014105 n : ℝ)

end A014105

/-! ## A014105.P41548940153347651

`floor(comp[2*n]/acot(n))`
-/

namespace A014105.P41548940153347651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A014105.P41548940153347651

namespace A014105

/-- `floor(comp[2*n]/acot(n))` -/
def P41548940153347651.Spec : Prop :=
  ∀ n, P41548940153347651.a n = A014105 n

end A014105

/-! ## A014105.P7333563616237875055

`round(n/acot(comp[2*n]))`
-/

namespace A014105.P7333563616237875055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A014105.P7333563616237875055

namespace A014105

/-- `round(n/acot(comp[2*n]))` -/
def P7333563616237875055.Spec : Prop :=
  ∀ n, P7333563616237875055.a n = A014105 n

end A014105

/-!
# A014106: a(n) = n*(2*n + 3).

The programs for A014106, the canonical program `A014106.P1375640882817375549` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014106 has offset 0).

The definition of A014106 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+3)` (program `A014106.P1375640882817375549`, by `A014106.P1375640882817375549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014106.P1375640882817375549

`n*(2*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014106

/-- `n*(2*n+3)` -/
def P1375640882817375549.Spec : Prop :=
  ∀ n, (P1375640882817375549.a n : ℤ) = A014106 n

theorem P1375640882817375549.correct : P1375640882817375549.Spec := by
  intro n
  simp only [A014106]

end A014106

/-! ## A014106.P13183118209301193867

`A000384(n+1)-1`
-/

namespace A014106.P13183118209301193867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) - 1

end

end A014106.P13183118209301193867

namespace A014106

/-- `A000384(n+1)-1` -/
def P13183118209301193867.Spec : Prop :=
  ∀ n, P13183118209301193867.a n = A014106 n

theorem P13183118209301193867.correct : P13183118209301193867.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P13183118209301193867.a, A014106.P1375640882817375549.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P11220953624002978208

`2*A002378(n)+n`
-/

namespace A014106.P11220953624002978208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002378 n + (n : ℤ)

end

end A014106.P11220953624002978208

namespace A014106

/-- `2*A002378(n)+n` -/
def P11220953624002978208.Spec : Prop :=
  ∀ n, P11220953624002978208.a n = A014106 n

theorem P11220953624002978208.correct : P11220953624002978208.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P11220953624002978208.a, A014106.P1375640882817375549.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P11439507980105132567

`A014105(n)+n*2`
-/

namespace A014106.P11439507980105132567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + (n * 2 : ℤ)

end

end A014106.P11439507980105132567

namespace A014106

/-- `A014105(n)+n*2` -/
def P11439507980105132567.Spec : Prop :=
  ∀ n, P11439507980105132567.a n = A014106 n

theorem P11439507980105132567.correct : P11439507980105132567.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P11439507980105132567.a, A014106.P1375640882817375549.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P44843112508410734

`4*A000217(n)+n`
-/

namespace A014106.P44843112508410734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 n + (n : ℤ)

end

end A014106.P44843112508410734

namespace A014106

/-- `4*A000217(n)+n` -/
def P44843112508410734.Spec : Prop :=
  ∀ n, P44843112508410734.a n = A014106 n

theorem P44843112508410734.correct : P44843112508410734.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P44843112508410734.a, A014106.P1375640882817375549.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P13866453627831519587

`∑[a(n-1)+4]` with `a(0)=0, a(1)=5`
-/

namespace A014106.P13866453627831519587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014106.P13866453627831519587

namespace A014106

/-- `∑[a(n-1)+4]` -/
def P13866453627831519587.Spec : Prop :=
  ∀ n, (P13866453627831519587.a n : ℤ) = A014106 n

end A014106

/-! ## A014106.P15695147234066793605

`C(n+2+n, 2)-1`
-/

namespace A014106.P15695147234066793605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2 + n) 2 : ℤ) - 1

end

end A014106.P15695147234066793605

namespace A014106

/-- `C(n+2+n, 2)-1` -/
def P15695147234066793605.Spec : Prop :=
  ∀ n, P15695147234066793605.a n = A014106 n

theorem P15695147234066793605.correct : P15695147234066793605.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P15695147234066793605.a, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P15000773283375920166

`∑[record[xor(3, n+1)-2]]`
-/

namespace A014106.P15000773283375920166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (n + 1) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014106.P15000773283375920166

namespace A014106

/-- `∑[record[xor(3, n+1)-2]]` -/
def P15000773283375920166.Spec : Prop :=
  ∀ n, P15000773283375920166.a n = A014106 n

end A014106

/-! ## A014106.P13922377152285271483

`∑[xor(2, record[xor(3, n+1)])]`
-/

namespace A014106.P13922377152285271483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014106.P13922377152285271483

namespace A014106

/-- `∑[xor(2, record[xor(3, n+1)])]` -/
def P13922377152285271483.Spec : Prop :=
  ∀ n, (P13922377152285271483.a n : ℤ) = A014106 n

end A014106

/-! ## A014106.P3907934365486228819

`∑[ogf((5x-x^2)/(1-2x+x^2))]`
-/

namespace A014106.P3907934365486228819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014106.P3907934365486228819

namespace A014106

/-- `∑[ogf((5x-x^2)/(1-2x+x^2))]` -/
def P3907934365486228819.Spec : Prop :=
  ∀ n, P3907934365486228819.a n = A014106 n

end A014106

/-! ## A014106.P5422744534663345235

`ogf((5x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A014106.P5422744534663345235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -3, 3, -1] n

end

end A014106.P5422744534663345235

namespace A014106

/-- `ogf((5x-x^2)/(1-3x+3x^2-x^3))` -/
def P5422744534663345235.Spec : Prop :=
  ∀ n, P5422744534663345235.a n = A014106 n

end A014106

/-! ## A014106.P17541681798094316603

`n-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A014106.P17541681798094316603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014106.P17541681798094316603

namespace A014106

/-- `n-∑[a(n-1)-4]` -/
def P17541681798094316603.Spec : Prop :=
  ∀ n, P17541681798094316603.a n = A014106 n

end A014106

/-! ## A014106.P7771896214586904355

`lcm(n+1, n+1+n)-1`
-/

namespace A014106.P7771896214586904355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 1 + n) : ℤ) - 1

end

end A014106.P7771896214586904355

namespace A014106

/-- `lcm(n+1, n+1+n)-1` -/
def P7771896214586904355.Spec : Prop :=
  ∀ n, P7771896214586904355.a n = A014106 n

end A014106

/-! ## A014106.P5282103784033220873

`n-1+record[(n-1)²]+n²`
-/

namespace A014106.P5282103784033220873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ))

end

end A014106.P5282103784033220873

namespace A014106

/-- `n-1+record[(n-1)²]+n²` -/
def P5282103784033220873.Spec : Prop :=
  ∀ n, P5282103784033220873.a n = A014106 n

end A014106

/-! ## A014106.P17279907153601982823

`2*n-(C(2*n, 2)-(2*n)²)`
-/

namespace A014106.P17279907153601982823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((Nat.choose (2 * n) 2 : ℤ) - ((2 * n) ^ 2 : ℤ))

end

end A014106.P17279907153601982823

namespace A014106

/-- `2*n-(C(2*n, 2)-(2*n)²)` -/
def P17279907153601982823.Spec : Prop :=
  ∀ n, P17279907153601982823.a n = A014106 n

theorem P17279907153601982823.correct : P17279907153601982823.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P17279907153601982823.a, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P11162123965414961224

`a(n-1)+a(n-1)+4-a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A014106.P11162123965414961224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 4 - a (n - 2))

end

end A014106.P11162123965414961224

namespace A014106

/-- `a(n-1)+a(n-1)+4-a(n-2)` -/
def P11162123965414961224.Spec : Prop :=
  ∀ n, P11162123965414961224.a n = A014106 n

theorem P11162123965414961224.correct : P11162123965414961224.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A014106, Nat.add_sub_cancel, A014106.P11162123965414961224.a, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A014106, Nat.add_sub_cancel, A014106.P11162123965414961224.a, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014106

/-! ## A014106.P8135171952682217895

`a(n-1)-(a(n-2)-a(n-1)-4)` with `a(0)=0, a(1)=5`
-/

namespace A014106.P8135171952682217895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 4)

end

end A014106.P8135171952682217895

namespace A014106

/-- `a(n-1)-(a(n-2)-a(n-1)-4)` -/
def P8135171952682217895.Spec : Prop :=
  ∀ n, P8135171952682217895.a n = A014106 n

theorem P8135171952682217895.correct : P8135171952682217895.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A014106, Nat.add_sub_cancel, A014106.P8135171952682217895.a, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A014106, Nat.add_sub_cancel, A014106.P8135171952682217895.a, A014106.P1375640882817375549.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014106

/-! ## A014106.P351331240374721601

`A033816(n)-3`
-/

namespace A014106.P351331240374721601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 n - 3

end

end A014106.P351331240374721601

namespace A014106

/-- `A033816(n)-3` -/
def P351331240374721601.Spec : Prop :=
  ∀ n, P351331240374721601.a n = A014106 n

theorem P351331240374721601.correct : P351331240374721601.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P351331240374721601.a, A014106.P1375640882817375549.a, A033816, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P6538903370456395773

`A277980(n)/6`
-/

namespace A014106.P6538903370456395773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277980 n : ℚ) / 6

end

end A014106.P6538903370456395773

namespace A014106

/-- `A277980(n)/6` -/
def P6538903370456395773.Spec : Prop :=
  ∀ n, P6538903370456395773.a n = (A014106 n : ℚ)

theorem P6538903370456395773.correct : P6538903370456395773.Spec := by
  intro n
  simp only [A014106, Nat.add_sub_cancel, A014106.P6538903370456395773.a, A014106.P1375640882817375549.a, A277980, A277980.P488489438075414926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014106

/-! ## A014106.P14056200484808404081

`sqrt(A123197(n)+1)`
-/

namespace A014106.P14056200484808404081
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123197 n + 1 : ℝ)

end

end A014106.P14056200484808404081

namespace A014106

/-- `sqrt(A123197(n)+1)` -/
def P14056200484808404081.Spec : Prop :=
  ∀ n, P14056200484808404081.a n = (A014106 n : ℝ)

end A014106

/-!
# A014107: a(n) = n*(2*n-3).

The programs for A014107, the canonical program `A014107.P7046062318563033165` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014107 has offset 0).

The definition of A014107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-3)` (program `A014107.P7046062318563033165`, by `A014107.P7046062318563033165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014107.P7046062318563033165

`n*(2*n-3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014107

/-- `n*(2*n-3)` -/
def P7046062318563033165.Spec : Prop :=
  ∀ n, P7046062318563033165.a n = A014107 n

theorem P7046062318563033165.correct : P7046062318563033165.Spec := by
  intro n
  simp only [A014107]

end A014107

/-! ## A014107.P15053720666336426306

`A033537(n)-8*n`
-/

namespace A014107.P15053720666336426306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n - (8 * n : ℤ)

end

end A014107.P15053720666336426306

namespace A014107

/-- `A033537(n)-8*n` -/
def P15053720666336426306.Spec : Prop :=
  ∀ n, P15053720666336426306.a n = A014107 n

theorem P15053720666336426306.correct : P15053720666336426306.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P15053720666336426306.a, A014107.P7046062318563033165.a, A033537, A033537.P12257875096179782365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P7345807891185733684

`∑[a(n-1)+4]` with `a(0)=0, a(1)=-1`
-/

namespace A014107.P7345807891185733684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014107.P7345807891185733684

namespace A014107

/-- `∑[a(n-1)+4]` -/
def P7345807891185733684.Spec : Prop :=
  ∀ n, P7345807891185733684.a n = A014107 n

end A014107

/-! ## A014107.P10352203738807201210

`∑[ogf((-x+5x^2)/(1-2x+x^2))]`
-/

namespace A014107.P10352203738807201210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014107.P10352203738807201210

namespace A014107

/-- `∑[ogf((-x+5x^2)/(1-2x+x^2))]` -/
def P10352203738807201210.Spec : Prop :=
  ∀ n, P10352203738807201210.a n = A014107 n

end A014107

/-! ## A014107.P7933445107002357059

`ogf((-x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A014107.P7933445107002357059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 5] [1, -3, 3, -1] n

end

end A014107.P7933445107002357059

namespace A014107

/-- `ogf((-x+5x^2)/(1-3x+3x^2-x^3))` -/
def P7933445107002357059.Spec : Prop :=
  ∀ n, P7933445107002357059.a n = A014107 n

end A014107

/-! ## A014107.P2659989218313982318

`-∑[a(n-1)-4]` with `a(0)=0, a(1)=1`
-/

namespace A014107.P2659989218313982318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014107.P2659989218313982318

namespace A014107

/-- `-∑[a(n-1)-4]` -/
def P2659989218313982318.Spec : Prop :=
  ∀ n, P2659989218313982318.a n = A014107 n

end A014107

/-! ## A014107.P16254620384556498316

`5-∑[a(n-1)-4]` with `a(0)=5`
-/

namespace A014107.P16254620384556498316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014107.P16254620384556498316

namespace A014107

/-- `5-∑[a(n-1)-4]` -/
def P16254620384556498316.Spec : Prop :=
  ∀ n, P16254620384556498316.a n = A014107 n

end A014107

/-! ## A014107.P17140893783323702944

`lcm(n-1+n, 1-n)-1`
-/

namespace A014107.P17140893783323702944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (1 - (n : ℤ)) : ℤ) - 1

end

end A014107.P17140893783323702944

namespace A014107

/-- `lcm(n-1+n, 1-n)-1` -/
def P17140893783323702944.Spec : Prop :=
  ∀ n, P17140893783323702944.a n = A014107 n

end A014107

/-! ## A014107.P4349360506821167573

`lcm(n, Δ[(n-1)²])-n-n`
-/

namespace A014107.P4349360506821167573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) (f1 (n + 1) - f1 n) : ℤ) - (n : ℤ) - (n : ℤ)

end

end A014107.P4349360506821167573

namespace A014107

/-- `lcm(n, Δ[(n-1)²])-n-n` -/
def P4349360506821167573.Spec : Prop :=
  ∀ n, P4349360506821167573.a n = A014107 n

end A014107

/-! ## A014107.P3434056396954568419

`(1-n)²+∑[n-1]+C(n, 2)`
-/

namespace A014107.P3434056396954568419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℤ))

end

end A014107.P3434056396954568419

namespace A014107

/-- `(1-n)²+∑[n-1]+C(n, 2)` -/
def P3434056396954568419.Spec : Prop :=
  ∀ n, P3434056396954568419.a n = A014107 n

end A014107

/-! ## A014107.P3295655240546810377

`(n-1)²+n²-C(n+1, n)`
-/

namespace A014107.P3295655240546810377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2 + (n ^ 2 : ℤ) - (Nat.choose (n + 1) n : ℤ)

end

end A014107.P3295655240546810377

namespace A014107

/-- `(n-1)²+n²-C(n+1, n)` -/
def P3295655240546810377.Spec : Prop :=
  ∀ n, P3295655240546810377.a n = A014107 n

theorem P3295655240546810377.correct : P3295655240546810377.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P3295655240546810377.a, A014107.P7046062318563033165.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A014107

/-! ## A014107.P6193098807816819478

`1-A168244(n)`
-/

namespace A014107.P6193098807816819478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A168244 n

end

end A014107.P6193098807816819478

namespace A014107

/-- `1-A168244(n)` -/
def P6193098807816819478.Spec : Prop :=
  ∀ n, P6193098807816819478.a n = A014107 n

theorem P6193098807816819478.correct : P6193098807816819478.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P6193098807816819478.a, A014107.P7046062318563033165.a, A168244, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P7539102964455817017

`A236257(n+1)-4`
-/

namespace A014107.P7539102964455817017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236257 (n + 1) - 4

end

end A014107.P7539102964455817017

namespace A014107

/-- `A236257(n+1)-4` -/
def P7539102964455817017.Spec : Prop :=
  ∀ n, P7539102964455817017.a n = A014107 n

theorem P7539102964455817017.correct : P7539102964455817017.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P7539102964455817017.a, A014107.P7046062318563033165.a, A236257, A236257.P10668576513151047033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P2691707278551269440

`A051890(n)-(n+2)`
-/

namespace A014107.P2691707278551269440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n - (n + 2 : ℤ)

end

end A014107.P2691707278551269440

namespace A014107

/-- `A051890(n)-(n+2)` -/
def P2691707278551269440.Spec : Prop :=
  ∀ n, P2691707278551269440.a n = A014107 n

theorem P2691707278551269440.correct : P2691707278551269440.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P2691707278551269440.a, A014107.P7046062318563033165.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P12426506700737302535

`2*A067998(n)+n`
-/

namespace A014107.P12426506700737302535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067998 n + (n : ℤ)

end

end A014107.P12426506700737302535

namespace A014107

/-- `2*A067998(n)+n` -/
def P12426506700737302535.Spec : Prop :=
  ∀ n, P12426506700737302535.a n = A014107 n

theorem P12426506700737302535.correct : P12426506700737302535.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P12426506700737302535.a, A014107.P7046062318563033165.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P17494640050667807031

`A000384(n)-2*n`
-/

namespace A014107.P17494640050667807031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n - (2 * n : ℤ)

end

end A014107.P17494640050667807031

namespace A014107

/-- `A000384(n)-2*n` -/
def P17494640050667807031.Spec : Prop :=
  ∀ n, P17494640050667807031.a n = A014107 n

theorem P17494640050667807031.correct : P17494640050667807031.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P17494640050667807031.a, A014107.P7046062318563033165.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P7802791580247611592

`A001105(n)-3*n`
-/

namespace A014107.P7802791580247611592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - (3 * n : ℤ)

end

end A014107.P7802791580247611592

namespace A014107

/-- `A001105(n)-3*n` -/
def P7802791580247611592.Spec : Prop :=
  ∀ n, P7802791580247611592.a n = A014107 n

theorem P7802791580247611592.correct : P7802791580247611592.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P7802791580247611592.a, A014107.P7046062318563033165.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P238956490873590090

`A014105(n)-4*n`
-/

namespace A014107.P238956490873590090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - (4 * n : ℤ)

end

end A014107.P238956490873590090

namespace A014107

/-- `A014105(n)-4*n` -/
def P238956490873590090.Spec : Prop :=
  ∀ n, P238956490873590090.a n = A014107 n

theorem P238956490873590090.correct : P238956490873590090.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P238956490873590090.a, A014107.P7046062318563033165.a, A014105, A014105.P182524374866796289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P13115270675526311825

`4*A161680(n)-n`
-/

namespace A014107.P13115270675526311825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161680 n - (n : ℤ)

end

end A014107.P13115270675526311825

namespace A014107

/-- `4*A161680(n)-n` -/
def P13115270675526311825.Spec : Prop :=
  ∀ n, P13115270675526311825.a n = A014107 n

theorem P13115270675526311825.correct : P13115270675526311825.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P13115270675526311825.a, A014107.P7046062318563033165.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014107

/-! ## A014107.P3955261047139108589

`A046092(n)-5*n`
-/

namespace A014107.P3955261047139108589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n - (5 * n : ℤ)

end

end A014107.P3955261047139108589

namespace A014107

/-- `A046092(n)-5*n` -/
def P3955261047139108589.Spec : Prop :=
  ∀ n, P3955261047139108589.a n = A014107 n

theorem P3955261047139108589.correct : P3955261047139108589.Spec := by
  intro n
  simp only [A014107, Nat.add_sub_cancel, A014107.P3955261047139108589.a, A014107.P7046062318563033165.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014107

/-!
# A014108: Inverse of 99th cyclotomic polynomial.

The programs for A014108, there is no canonical definition to state claims against.
-/

/-! ## A014108.P18038286315628637790

`A010892(n)*A014207(n)`
-/

namespace A014108.P18038286315628637790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014207 n

end

end A014108.P18038286315628637790

/-!
# A014109: Number of possible circular rhymes of n strophes.

The programs for A014109, there is no canonical definition to state claims against.
-/

/-! ## A014109.P12782297424378991256

`record[A082654(n+2)-char[4]]`
-/

namespace A014109.P12782297424378991256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014109.P12782297424378991256

/-! ## A014109.P10292376726367796587

`record[A007735(p?[A106614(n)])]`
-/

namespace A014109.P10292376726367796587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014109.P10292376726367796587

/-! ## A014109.P5991450467502762766

`record[A007735(n+2)-A057637(n+2)]`
-/

namespace A014109.P5991450467502762766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 2) - A057637 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014109.P5991450467502762766

/-! ## A014109.P6354034632036289371

`record[gcd(A007735(n+1), A057637(n+1))]`
-/

namespace A014109.P6354034632036289371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007735 (n + 1)) (A057637 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014109.P6354034632036289371

/-! ## A014109.P17612039210860164562

`record[gcd(A051444(n+1), A054705(n+1))]`
-/

namespace A014109.P17612039210860164562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051444 (n + 1)) (A054705 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014109.P17612039210860164562

/-! ## A014109.P17565672201032468589

`record[A007735(A329814(n+1))]`
-/

namespace A014109.P17565672201032468589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A329814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014109.P17565672201032468589

/-!
# A014110: Number of ordered ways of writing n as a sum of 4 squares of nonnegative integers.

The programs for A014110, there is no canonical definition to state claims against.
-/

/-! ## A014110.P8465330938951610392

`A045847(∑[n+5]+5)`
-/

namespace A014110.P8465330938951610392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A014110.P8465330938951610392

/-! ## A014110.P3846496005020533029

`A045847(A052905(n+2))%A062123(n)`
-/

namespace A014110.P3846496005020533029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 (A052905 (n + 2)).toNat) (A062123 n)

end

end A014110.P3846496005020533029

/-! ## A014110.P8127912488850828928

`char[A006368(n)]*A045847(A052905(n+2))`
-/

namespace A014110.P8127912488850828928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A045847 (A052905 (n + 2)).toNat

end

end A014110.P8127912488850828928

/-! ## A014110.P5370191241474697284

`char[A006369(n)]*A045847(A052905(n+2))`
-/

namespace A014110.P5370191241474697284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A045847 (A052905 (n + 2)).toNat

end

end A014110.P5370191241474697284

/-! ## A014110.P1258290715983896050

`A001222(A038873(n+1))*A045847(A052905(n+2))`
-/

namespace A014110.P1258290715983896050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038873 (n + 1)).toNat * A045847 (A052905 (n + 2)).toNat

end

end A014110.P1258290715983896050

/-! ## A014110.P17091905250552205642

`A239355(2*(n+1))-A239355(2*n+1)`
-/

namespace A014110.P17091905250552205642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239355 (2 * (n + 1)) - A239355 (2 * n + 1)

end

end A014110.P17091905250552205642

/-!
# A014111: Inverse of 102nd cyclotomic polynomial.

The programs for A014111, there is no canonical definition to state claims against.
-/

/-! ## A014111.P14650128999672065210

`A014060(n)*A033999(n)`
-/

namespace A014111.P14650128999672065210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014060 n * A033999 n

end

end A014111.P14650128999672065210

/-!
# A014112: a(n) = n*(n-1) + (n-2)*(n-3) + ... + 1*0 + 1 for n odd; otherwise, a(n) = n*(n-1) + (n-2)*(n-3) + ... + 2*1.

The programs for A014112, the canonical program `A014112.P651750646936749901` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014112 has offset 1).

The definition of A014112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014112.P651750646936749901

`a(n-2)+(n+1)*n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014112

/-- `a(n-2)+(n+1)*n` -/
def P651750646936749901.Spec : Prop :=
  ∀ n, (P651750646936749901.a n : ℤ) = A014112 (n + 1)

theorem P651750646936749901.correct : P651750646936749901.Spec := by
  intro n
  simp only [A014112, Nat.add_sub_cancel]

end A014112

/-! ## A014112.P6587269930317163724

`(n+1)*(n+3)*(2*(n+1)-1)/12+3*(1-(-1)^(n+1))/8`
-/

namespace A014112.P6587269930317163724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 3) : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ) / 12 + (3 * (1 - (-1) ^ (n + 1)) : ℚ) / 8

end

end A014112.P6587269930317163724

namespace A014112

/-- `(n+1)*(n+3)*(2*(n+1)-1)/12+3*(1-(-1)^(n+1))/8` -/
def P6587269930317163724.Spec : Prop :=
  ∀ n, P6587269930317163724.a n = (A014112 (n + 1) : ℚ)

theorem P6587269930317163724.correct : P6587269930317163724.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A014112, Nat.add_sub_cancel, A014112.P6587269930317163724.a, A014112.P651750646936749901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A014112, Nat.add_sub_cancel, A014112.P6587269930317163724.a, A014112.P651750646936749901.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014112

/-! ## A014112.P11021733138391638935

`∑[or(1, ∑[or(1, n)]-1)]`
-/

namespace A014112.P11021733138391638935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P11021733138391638935

namespace A014112

/-- `∑[or(1, ∑[or(1, n)]-1)]` -/
def P11021733138391638935.Spec : Prop :=
  ∀ n, P11021733138391638935.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P10211359534238279371

`∑[∑[and(n, -2)]+or(1, n)]`
-/

namespace A014112.P10211359534238279371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P10211359534238279371

namespace A014112

/-- `∑[∑[and(n, -2)]+or(1, n)]` -/
def P10211359534238279371.Spec : Prop :=
  ∀ n, P10211359534238279371.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P16732814337646499245

`∑[xor(1, ceil(n²/2))+n]`
-/

namespace A014112.P16732814337646499245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P16732814337646499245

namespace A014112

/-- `∑[xor(1, ceil(n²/2))+n]` -/
def P16732814337646499245.Spec : Prop :=
  ∀ n, P16732814337646499245.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P13659104281559625960

`∑[∑[n]+ceil(xor(1, n)/2)]`
-/

namespace A014112.P13659104281559625960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌈(Nat.xor 1 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P13659104281559625960

namespace A014112

/-- `∑[∑[n]+ceil(xor(1, n)/2)]` -/
def P13659104281559625960.Spec : Prop :=
  ∀ n, P13659104281559625960.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P13595376150834058986

`∑[∑[n]+round(xor(1, n)/2)]`
-/

namespace A014112.P13595376150834058986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P13595376150834058986

namespace A014112

/-- `∑[∑[n]+round(xor(1, n)/2)]` -/
def P13595376150834058986.Spec : Prop :=
  ∀ n, P13595376150834058986.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P11898903773930934638

`∑[∑[a(n-2)+2]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A014112.P11898903773930934638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P11898903773930934638

namespace A014112

/-- `∑[∑[a(n-2)+2]]` -/
def P11898903773930934638.Spec : Prop :=
  ∀ n, (P11898903773930934638.a n : ℤ) = A014112 (n + 1)

end A014112

/-! ## A014112.P17508512661742259828

`∑[∑[2*n]-a(n-1)]` with `a(0)=1`
-/

namespace A014112.P17508512661742259828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P17508512661742259828

namespace A014112

/-- `∑[∑[2*n]-a(n-1)]` -/
def P17508512661742259828.Spec : Prop :=
  ∀ n, P17508512661742259828.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P2368767228357429907

`∑[n-(a(n-1)-n²)]` with `a(0)=1`
-/

namespace A014112.P2368767228357429907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P2368767228357429907

namespace A014112

/-- `∑[n-(a(n-1)-n²)]` -/
def P2368767228357429907.Spec : Prop :=
  ∀ n, P2368767228357429907.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P6713459975368858557

`floor(a(n-2)+n²+n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A014112.P6713459975368858557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (n ^ 2 + n)

end

end A014112.P6713459975368858557

namespace A014112

/-- `floor(a(n-2)+n²+n)` -/
def P6713459975368858557.Spec : Prop :=
  ∀ n, (P6713459975368858557.a n : ℤ) = A014112 (n + 1)

theorem P6713459975368858557.correct : P6713459975368858557.Spec := by
  intro n
  simp only [A014112, Nat.add_sub_cancel, A014112.P6713459975368858557.a, A014112.P651750646936749901.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A014112

/-! ## A014112.P13380387452920520031

`∑[∑[n-(a(n-1)-n)]]` with `a(0)=1, a(1)=0`
-/

namespace A014112.P13380387452920520031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  (n : ℤ) - (f2 (n - 1) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P13380387452920520031

namespace A014112

/-- `∑[∑[n-(a(n-1)-n)]]` -/
def P13380387452920520031.Spec : Prop :=
  ∀ n, P13380387452920520031.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P5774080505779701556

`∑[A097063(n)+n]`
-/

namespace A014112.P5774080505779701556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097063 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P5774080505779701556

namespace A014112

/-- `∑[A097063(n)+n]` -/
def P5774080505779701556.Spec : Prop :=
  ∀ n, P5774080505779701556.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P7705447279229863355

`∑[A212975(n)/(n+1)]`
-/

namespace A014112.P7705447279229863355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212975 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P7705447279229863355

namespace A014112

/-- `∑[A212975(n)/(n+1)]` -/
def P7705447279229863355.Spec : Prop :=
  ∀ n, P7705447279229863355.a n = (A014112 (n + 1) : ℚ)

end A014112

/-! ## A014112.P15630081489822316390

`∑[A121496((n+1)²)]`
-/

namespace A014112.P15630081489822316390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121496 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P15630081489822316390

namespace A014112

/-- `∑[A121496((n+1)²)]` -/
def P15630081489822316390.Spec : Prop :=
  ∀ n, P15630081489822316390.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P14160951609491342122

`∑[A028242(n²)+n]`
-/

namespace A014112.P14160951609491342122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P14160951609491342122

namespace A014112

/-- `∑[A028242(n²)+n]` -/
def P14160951609491342122.Spec : Prop :=
  ∀ n, P14160951609491342122.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P7054936460363730302

`∑[A106249(n²)+n]`
-/

namespace A014112.P7054936460363730302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P7054936460363730302

namespace A014112

/-- `∑[A106249(n²)+n]` -/
def P7054936460363730302.Spec : Prop :=
  ∀ n, P7054936460363730302.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P12208027889198921677

`∑[A117572(n²)+n]`
-/

namespace A014112.P12208027889198921677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117572 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P12208027889198921677

namespace A014112

/-- `∑[A117572(n²)+n]` -/
def P12208027889198921677.Spec : Prop :=
  ∀ n, P12208027889198921677.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P17400968365227388785

`∑[A060806((n+1)²)-1]`
-/

namespace A014112.P17400968365227388785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060806 ((n + 1) ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P17400968365227388785

namespace A014112

/-- `∑[A060806((n+1)²)-1]` -/
def P17400968365227388785.Spec : Prop :=
  ∀ n, P17400968365227388785.a n = A014112 (n + 1)

end A014112

/-! ## A014112.P8187913626271261736

`∑[A129756((n+1)²-1)]`
-/

namespace A014112.P8187913626271261736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 ((n + 1) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014112.P8187913626271261736

namespace A014112

/-- `∑[A129756((n+1)²-1)]` -/
def P8187913626271261736.Spec : Prop :=
  ∀ n, P8187913626271261736.a n = A014112 (n + 1)

end A014112

/-!
# A014113: a(n) = a(n-1) + 2*a(n-2) with a(0)=0, a(1)=2.

The programs for A014113, the canonical program `A014113.P15218329138423502317` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014113 has offset 0).

The definition of A014113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A014113.P15218329138423502317`, by `A014113.P15218329138423502317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A014113.P15359422592965118961

`2^n-a(n-1)` with `a(0)=0`
-/

namespace A014113.P15359422592965118961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℤ) - a (n - 1)

end

end A014113.P15359422592965118961

namespace A014113

/-- `2^n-a(n-1)` -/
def P15359422592965118961.Spec : Prop :=
  ∀ n, P15359422592965118961.a n = A014113 n

end A014113

/-! ## A014113.P15218329138423502317

`a(n-1)+2*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014113

/-- `a(n-1)+2*a(n-2)` -/
def P15218329138423502317.Spec : Prop :=
  ∀ n, (P15218329138423502317.a n : ℤ) = A014113 n

theorem P15218329138423502317.correct : P15218329138423502317.Spec := by
  intro n
  simp only [A014113]

end A014113

/-! ## A014113.P326016016298909300

`A078008(n+1)`
-/

namespace A014113.P326016016298909300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1)

end

end A014113.P326016016298909300

namespace A014113

/-- `A078008(n+1)` -/
def P326016016298909300.Spec : Prop :=
  ∀ n, P326016016298909300.a n = A014113 n

end A014113

/-! ## A014113.P9067047727982648733

`2*A001045(n)`
-/

namespace A014113.P9067047727982648733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001045 n

end

end A014113.P9067047727982648733

namespace A014113

/-- `2*A001045(n)` -/
def P9067047727982648733.Spec : Prop :=
  ∀ n, P9067047727982648733.a n = A014113 n

end A014113

/-! ## A014113.P15054027899659386291

`(2^(n+1)-2*(-1)^n)/3`
-/

namespace A014113.P15054027899659386291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 2 * (-1) ^ n : ℚ) / 3

end

end A014113.P15054027899659386291

namespace A014113

/-- `(2^(n+1)-2*(-1)^n)/3` -/
def P15054027899659386291.Spec : Prop :=
  ∀ n, P15054027899659386291.a n = (A014113 n : ℚ)

theorem P15054027899659386291.correct : P15054027899659386291.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A014113, Nat.add_sub_cancel, A014113.P15054027899659386291.a, A014113.P15218329138423502317.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A014113, Nat.add_sub_cancel, A014113.P15054027899659386291.a, A014113.P15218329138423502317.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A014113

/-! ## A014113.P799815344508594851

`ogf(2x/(1-x-2x^2))`
-/

namespace A014113.P799815344508594851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -1, -2] n

end

end A014113.P799815344508594851

namespace A014113

/-- `ogf(2x/(1-x-2x^2))` -/
def P799815344508594851.Spec : Prop :=
  ∀ n, P799815344508594851.a n = A014113 n

end A014113

/-! ## A014113.P17099277150738176876

`lcm(2, round(2^n/3))`
-/

namespace A014113.P17099277150738176876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3))

end

end A014113.P17099277150738176876

namespace A014113

/-- `lcm(2, round(2^n/3))` -/
def P17099277150738176876.Spec : Prop :=
  ∀ n, (P17099277150738176876.a n : ℤ) = A014113 n

end A014113

/-! ## A014113.P14983554837299285382

`a(n-1)+lcm(4, a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A014113.P14983554837299285382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + Nat.lcm 4 (a (n - 2))

end

end A014113.P14983554837299285382

namespace A014113

/-- `a(n-1)+lcm(4, a(n-2))` -/
def P14983554837299285382.Spec : Prop :=
  ∀ n, (P14983554837299285382.a n : ℤ) = A014113 n

end A014113

/-! ## A014113.P1309175107002471295

`2-4*(n%2-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A014113.P1309175107002471295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - 4 * (((n % 2 : ℕ) : ℤ) - a (n - 2))

end

end A014113.P1309175107002471295

namespace A014113

/-- `2-4*(n%2-a(n-2))` -/
def P1309175107002471295.Spec : Prop :=
  ∀ n, P1309175107002471295.a n = A014113 n

end A014113

/-! ## A014113.P5176517970496583714

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A014113.P5176517970496583714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3)

end

end A014113.P5176517970496583714

namespace A014113

/-- `3*a(n-1)-4*a(n-3)` -/
def P5176517970496583714.Spec : Prop :=
  ∀ n, P5176517970496583714.a n = A014113 n

end A014113

/-! ## A014113.P9647550740477740132

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A014113.P9647550740477740132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A014113.P9647550740477740132

namespace A014113

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P9647550740477740132.Spec : Prop :=
  ∀ n, (P9647550740477740132.a n : ℤ) = A014113 n

end A014113

/-! ## A014113.P8410728114204838875

`a(n-1)-a(n-2)/(1/2-1)` with `a(0)=0, a(1)=2`
-/

namespace A014113.P8410728114204838875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A014113.P8410728114204838875

namespace A014113

/-- `a(n-1)-a(n-2)/(1/2-1)` -/
def P8410728114204838875.Spec : Prop :=
  ∀ n, P8410728114204838875.a n = (A014113 n : ℚ)

end A014113

/-! ## A014113.P18149557244546184300

`a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A014113.P18149557244546184300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 2) - a (n - 2))

end

end A014113.P18149557244546184300

namespace A014113

/-- `a(n-1)-(a(n-1)%2-a(n-2)-a(n-2))` -/
def P18149557244546184300.Spec : Prop :=
  ∀ n, P18149557244546184300.a n = A014113 n

end A014113

/-! ## A014113.P2951712911005063314

`A277955(n)-1`
-/

namespace A014113.P2951712911005063314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n - 1

end

end A014113.P2951712911005063314

namespace A014113

/-- `A277955(n)-1` -/
def P2951712911005063314.Spec : Prop :=
  ∀ n, P2951712911005063314.a n = A014113 n

end A014113

/-! ## A014113.P3704020533187457753

`A230096(Δ[n²])`
-/

namespace A014113.P3704020533187457753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230096 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A014113.P3704020533187457753

namespace A014113

/-- `A230096(Δ[n²])` -/
def P3704020533187457753.Spec : Prop :=
  ∀ n, P3704020533187457753.a n = A014113 n

end A014113

/-! ## A014113.P7249595989967372021

`abs(1-A077925(n))`
-/

namespace A014113.P7249595989967372021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A077925 n|

end

end A014113.P7249595989967372021

namespace A014113

/-- `abs(1-A077925(n))` -/
def P7249595989967372021.Spec : Prop :=
  ∀ n, P7249595989967372021.a n = A014113 n

end A014113

/-! ## A014113.P5089790075888024971

`A153772(n+1)+2`
-/

namespace A014113.P5089790075888024971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 (n + 1) + 2

end

end A014113.P5089790075888024971

namespace A014113

/-- `A153772(n+1)+2` -/
def P5089790075888024971.Spec : Prop :=
  ∀ n, P5089790075888024971.a n = A014113 n

end A014113

/-! ## A014113.P2733838880208116811

`2*(A167030(n)+1)`
-/

namespace A014113.P2733838880208116811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A167030 n + 1)

end

end A014113.P2733838880208116811

namespace A014113

/-- `2*(A167030(n)+1)` -/
def P2733838880208116811.Spec : Prop :=
  ∀ n, P2733838880208116811.a n = A014113 n

end A014113

/-! ## A014113.P14471364446894784155

`A378105(n+2)-2`
-/

namespace A014113.P14471364446894784155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 (n + 2) - 2

end

end A014113.P14471364446894784155

namespace A014113

/-- `A378105(n+2)-2` -/
def P14471364446894784155.Spec : Prop :=
  ∀ n, P14471364446894784155.a n = A014113 n

end A014113

/-! ## A014113.P11612180774542341603

`A094359(xor(1, n+1))`
-/

namespace A014113.P11612180774542341603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (Nat.xor 1 (n + 1))

end

end A014113.P11612180774542341603

namespace A014113

/-- `A094359(xor(1, n+1))` -/
def P11612180774542341603.Spec : Prop :=
  ∀ n, P11612180774542341603.a n = A014113 n

end A014113

/-!
# A014114: Inverse of 105th cyclotomic polynomial.

The programs for A014114, there is no canonical definition to state claims against.
-/

/-! ## A014114.P10935414695004980760

`ratio[1-and(2, n)]*A014219(n)`
-/

namespace A014114.P10935414695004980760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A014219 n : ℚ)

end

end A014114.P10935414695004980760

/-!
# A014115: Order of a certain Clifford group in dimension 2^n (the automorphism group of the Barnes-Wall lattice for n != 3).

The programs for A014115, there is no canonical definition to state claims against.
-/

/-! ## A014115.P6523051805179704640

`lcm(2, A001309(n)/2)`
-/

namespace A014115.P6523051805179704640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((A001309 n : ℚ) / 2))

end

end A014115.P6523051805179704640

/-! ## A014115.P17442068362629288477

`A001309(n)/A020639(A008458(n))`
-/

namespace A014115.P17442068362629288477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001309 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A014115.P17442068362629288477

/-!
# A014117: Numbers k such that m^(k+1) == m (mod k) holds for all m.

The programs for A014117, there is no canonical definition to state claims against.
-/

/-! ## A014117.P8009797619990763118

`∏[∑[abs(1-n)!²]]`
-/

namespace A014117.P8009797619990763118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014117.P8009797619990763118

/-!
# A014118: Write in binary and read in ternary!.

The programs for A014118, there is no canonical definition to state claims against.
-/

/-! ## A014118.P6858398135785249702

`A005836(a(n-1)+1)` with `a(0)=2`
-/

namespace A014118.P6858398135785249702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005836 (a (n - 1) + 1).toNat

end

end A014118.P6858398135785249702

/-! ## A014118.P7653445626993932776

`A003278(a(n-1)+1)-1` with `a(0)=2`
-/

namespace A014118.P7653445626993932776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003278 (a (n - 1) + 1).toNat - 1

end

end A014118.P7653445626993932776

/-! ## A014118.P16680744518010595994

`A033159(a(n-1)+1)-2` with `a(0)=2`
-/

namespace A014118.P16680744518010595994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033159 (a (n - 1) + 1).toNat - 2

end

end A014118.P16680744518010595994

/-! ## A014118.P8988757854477688328

`A033162(a(n-1)+1)-3` with `a(0)=2`
-/

namespace A014118.P8988757854477688328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033162 (a (n - 1) + 1).toNat - 3

end

end A014118.P8988757854477688328

/-!
# A014119: Inverse of 110th cyclotomic polynomial.

The programs for A014119, there is no canonical definition to state claims against.
-/

/-! ## A014119.P4709910859717855542

`A014229(2*n)`
-/

namespace A014119.P4709910859717855542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014229 (2 * n)

end

end A014119.P4709910859717855542

/-!
# A014121: Numbers of form |2^i - 3^j|.

The programs for A014121, there is no canonical definition to state claims against.
-/

/-! ## A014121.P4381328529493145028

`∪[A192110(n+1), A192111(n+1)]`
-/

namespace A014121.P4381328529493145028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014121.P4381328529493145028

/-! ## A014121.P4237421765011101205

`lt[0, A128760(n)]`
-/

namespace A014121.P4237421765011101205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014121.P4237421765011101205

/-! ## A014121.P12871756543656550288

`record[A028310(n)%(A128760(n)+n)]`
-/

namespace A014121.P12871756543656550288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A128760 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014121.P12871756543656550288

/-! ## A014121.P10140842140272423894

`record[n%A000124(n*A128760(n))]`
-/

namespace A014121.P10140842140272423894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000124 ((n : ℤ) * A128760 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014121.P10140842140272423894

/-! ## A014121.P2603036962575752525

`record[abs(A274922(n))%(A128760(n)+n)]`
-/

namespace A014121.P2603036962575752525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A274922 n| (A128760 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014121.P2603036962575752525

/-! ## A014121.P7262879448579582851

`eq[A000007(n*A128760(n)), A000007(n)]`
-/

namespace A014121.P7262879448579582851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A128760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014121.P7262879448579582851

/-! ## A014121.P12447026164447901033

`eq[A005925(n*A128760(n)), A005925(n)]`
-/

namespace A014121.P12447026164447901033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 ((n : ℤ) * A128760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014121.P12447026164447901033

/-! ## A014121.P15011267169638296189

`eq[A086134(n)^A128760(n), A086134(n)]`
-/

namespace A014121.P15011267169638296189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086134 n : ℚ) ^ (A128760 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A014121.P15011267169638296189

/-! ## A014121.P14206581663002014033

`eq[A277894(n)^A128760(n), A277894(n)]`
-/

namespace A014121.P14206581663002014033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277894 n : ℚ) ^ (A128760 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A014121.P14206581663002014033

/-!
# A014122: Numbers of form |2^i +- 3^j|.

The programs for A014122, there is no canonical definition to state claims against.
-/

/-! ## A014122.P4729148691835833831

`∪[A004050(n+1), A014121(n+1)]`
-/

namespace A014122.P4729148691835833831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014122.P4729148691835833831

/-! ## A014122.P1281539620769804583

`lt[A325853(A000001(n)), A165122(n+1)]`
-/

namespace A014122.P1281539620769804583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325853 (A000001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014122.P1281539620769804583

/-!
# A014123: Inverse of 114th cyclotomic polynomial.

The programs for A014123, there is no canonical definition to state claims against.
-/

/-! ## A014123.P16546670344279275951

`A014066(n)*A033999(n)`
-/

namespace A014123.P16546670344279275951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014066 n * A033999 n

end

end A014123.P16546670344279275951

/-!
# A014124: Inverse of 115th cyclotomic polynomial.

The programs for A014124, there is no canonical definition to state claims against.
-/

/-! ## A014124.P12417259709320289548

`A014239(n)*A033999(n)`
-/

namespace A014124.P12417259709320289548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014239 n * A033999 n

end

end A014124.P12417259709320289548

/-!
# A014125: Bisection of A001400.

The programs for A014125, the canonical program `A014125.P12104461457447797973` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014125 has offset 0).

The definition of A014125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014125.P12104461457447797973

`floor(((n+2)^3+3*(n+2)²)/18)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014125

/-- `floor(((n+2)^3+3*(n+2)²)/18)` -/
def P12104461457447797973.Spec : Prop :=
  ∀ n, P12104461457447797973.a n = A014125 n

theorem P12104461457447797973.correct : P12104461457447797973.Spec := by
  intro n
  simp only [A014125]

end A014125

/-! ## A014125.P5411483410240454808

`a(n-1)+a(n-3)-a(n-4)+n+1` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11`
-/

namespace A014125.P5411483410240454808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4) + (n : ℤ) + 1

end

end A014125.P5411483410240454808

namespace A014125

/-- `a(n-1)+a(n-3)-a(n-4)+n+1` -/
def P5411483410240454808.Spec : Prop :=
  ∀ n, P5411483410240454808.a n = A014125 n

end A014125

/-! ## A014125.P6545400347451009947

`A000217(n+1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A014125.P6545400347451009947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A000217 (n + 1) + a (n - 3)

end

end A014125.P6545400347451009947

namespace A014125

/-- `A000217(n+1)+a(n-3)` -/
def P6545400347451009947.Spec : Prop :=
  ∀ n, P6545400347451009947.a n = A014125 n

end A014125

/-! ## A014125.P14009557701325731800

`∑[∑[∑[∑[ogf(1/(1+x+x^2))]]]]`
-/

namespace A014125.P14009557701325731800
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014125.P14009557701325731800

namespace A014125

/-- `∑[∑[∑[∑[ogf(1/(1+x+x^2))]]]]` -/
def P14009557701325731800.Spec : Prop :=
  ∀ n, P14009557701325731800.a n = A014125 n

end A014125

/-! ## A014125.P15886271248275940406

`∑[n+1]+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A014125.P15886271248275940406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A014125.P15886271248275940406

namespace A014125

/-- `∑[n+1]+a(n-3)` -/
def P15886271248275940406.Spec : Prop :=
  ∀ n, (P15886271248275940406.a n : ℤ) = A014125 n

end A014125

/-! ## A014125.P9923640393853911435

`∑[∑[∑[floor(a(n-3))]]]/2` with `a(0)=2, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A014125.P9923640393853911435
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 0] fun n f3 =>
  f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A014125.P9923640393853911435

namespace A014125

/-- `∑[∑[∑[floor(a(n-3))]]]/2` -/
def P9923640393853911435.Spec : Prop :=
  ∀ n, P9923640393853911435.a n = (A014125 n : ℚ)

end A014125

/-! ## A014125.P12052980708206034608

`∑[∑[∑[1-n²%3]]-1]+n+1`
-/

namespace A014125.P12052980708206034608
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A014125.P12052980708206034608

namespace A014125

/-- `∑[∑[∑[1-n²%3]]-1]+n+1` -/
def P12052980708206034608.Spec : Prop :=
  ∀ n, P12052980708206034608.a n = A014125 n

end A014125

/-! ## A014125.P6807166438701800728

`∑[∑[A008620(n)]]`
-/

namespace A014125.P6807166438701800728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014125.P6807166438701800728

namespace A014125

/-- `∑[∑[A008620(n)]]` -/
def P6807166438701800728.Spec : Prop :=
  ∀ n, P6807166438701800728.a n = A014125 n

end A014125

/-! ## A014125.P9745104425511570316

`∑[A211004(n+1)]`
-/

namespace A014125.P9745104425511570316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014125.P9745104425511570316

namespace A014125

/-- `∑[A211004(n+1)]` -/
def P9745104425511570316.Spec : Prop :=
  ∀ n, P9745104425511570316.a n = A014125 n

end A014125

/-! ## A014125.P3814010135333661278

`∑[A032765(n)+2+n]/2`
-/

namespace A014125.P3814010135333661278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n + 2 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A014125.P3814010135333661278

namespace A014125

/-- `∑[A032765(n)+2+n]/2` -/
def P3814010135333661278.Spec : Prop :=
  ∀ n, P3814010135333661278.a n = (A014125 n : ℚ)

end A014125

/-! ## A014125.P7930010397210725711

`∑[∑[A002264(n)]+n]+1+n`
-/

namespace A014125.P7930010397210725711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A014125.P7930010397210725711

namespace A014125

/-- `∑[∑[A002264(n)]+n]+1+n` -/
def P7930010397210725711.Spec : Prop :=
  ∀ n, P7930010397210725711.a n = A014125 n

end A014125

/-! ## A014125.P12318090425947646741

`2*A000601(n)-A001399(n)`
-/

namespace A014125.P12318090425947646741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000601 n - A001399 n

end

end A014125.P12318090425947646741

namespace A014125

/-- `2*A000601(n)-A001399(n)` -/
def P12318090425947646741.Spec : Prop :=
  ∀ n, P12318090425947646741.a n = A014125 n

end A014125

/-! ## A014125.P16555042328094777667

`A008763(n)+A003453(n+5)`
-/

namespace A014125.P16555042328094777667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A003453 (n + 5)

end

end A014125.P16555042328094777667

namespace A014125

/-- `A008763(n)+A003453(n+5)` -/
def P16555042328094777667.Spec : Prop :=
  ∀ n, P16555042328094777667.a n = A014125 n

end A014125

/-! ## A014125.P7452776963901974611

`∑[A008750(n)+1+n]-A004277(n)`
-/

namespace A014125.P7452776963901974611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008750 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004277 n

end

end A014125.P7452776963901974611

namespace A014125

/-- `∑[A008750(n)+1+n]-A004277(n)` -/
def P7452776963901974611.Spec : Prop :=
  ∀ n, P7452776963901974611.a n = A014125 n

end A014125

/-! ## A014125.P12773061696513152301

`∑[A001840(n+1)]`
-/

namespace A014125.P12773061696513152301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014125.P12773061696513152301

namespace A014125

/-- `∑[A001840(n+1)]` -/
def P12773061696513152301.Spec : Prop :=
  ∀ n, P12773061696513152301.a n = A014125 n

end A014125

/-! ## A014125.P13161984220438559606

`A069905(n+2)+A014126(n)`
-/

namespace A014125.P13161984220438559606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 2) + A014126 n

end

end A014125.P13161984220438559606

namespace A014125

/-- `A069905(n+2)+A014126(n)` -/
def P13161984220438559606.Spec : Prop :=
  ∀ n, P13161984220438559606.a n = A014125 n

end A014125

/-! ## A014125.P6394637122091957355

`A002623(n+1)-A000601(n+1)`
-/

namespace A014125.P6394637122091957355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) - A000601 (n + 1)

end

end A014125.P6394637122091957355

namespace A014125

/-- `A002623(n+1)-A000601(n+1)` -/
def P6394637122091957355.Spec : Prop :=
  ∀ n, P6394637122091957355.a n = A014125 n

end A014125

/-! ## A014125.P5571500194614797487

`A014126(n+1)-A001399(n+1)`
-/

namespace A014125.P5571500194614797487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (n + 1) - A001399 (n + 1)

end

end A014125.P5571500194614797487

namespace A014125

/-- `A014126(n+1)-A001399(n+1)` -/
def P5571500194614797487.Spec : Prop :=
  ∀ n, P5571500194614797487.a n = A014125 n

end A014125

/-!
# A014126: Number of partitions of 2*n into at most 4 parts.

The programs for A014126, the canonical program `A014126.P4441119161302153518` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014126 has offset 0).

The definition of A014126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014126.P4441119161302153518

`1/72*(4*n^3+30*n²+72*n+55+8*A049347(n)+9*(-1)^n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014126

/-- `1/72*(4*n^3+30*n²+72*n+55+8*A049347(n)+9*(-1)^n)` -/
def P4441119161302153518.Spec : Prop :=
  ∀ n, P4441119161302153518.a n = (A014126 n : ℚ)

end A014126

/-! ## A014126.P2229220299099746113

`∑[floor(((n+2)²+2)/6)]`
-/

namespace A014126.P2229220299099746113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2) ^ 2 + 2 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014126.P2229220299099746113

namespace A014126

/-- `∑[floor(((n+2)²+2)/6)]` -/
def P2229220299099746113.Spec : Prop :=
  ∀ n, P2229220299099746113.a n = A014126 n

end A014126

/-! ## A014126.P14344278084664069113

`∑[∑[round(2*(n+1)/3)]]-a(n-1)` with `a(0)=1`
-/

namespace A014126.P14344278084664069113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A014126.P14344278084664069113

namespace A014126

/-- `∑[∑[round(2*(n+1)/3)]]-a(n-1)` -/
def P14344278084664069113.Spec : Prop :=
  ∀ n, P14344278084664069113.a n = A014126 n

end A014126

/-! ## A014126.P3991556560567996190

`2*∑[A156040(n)/2]`
-/

namespace A014126.P3991556560567996190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156040 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014126.P3991556560567996190

namespace A014126

/-- `2*∑[A156040(n)/2]` -/
def P3991556560567996190.Spec : Prop :=
  ∀ n, P3991556560567996190.a n = (A014126 n : ℚ)

end A014126

/-! ## A014126.P15260898103835294467

`A001399(n)+∑[∑[ceil(n/3)]]`
-/

namespace A014126.P15260898103835294467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014126.P15260898103835294467

namespace A014126

/-- `A001399(n)+∑[∑[ceil(n/3)]]` -/
def P15260898103835294467.Spec : Prop :=
  ∀ n, P15260898103835294467.a n = A014126 n

end A014126

/-! ## A014126.P8247067113744968967

`A006918(n)+∑[round((n+3)²/12)-a(n-1)]` with `a(0)=1`
-/

namespace A014126.P8247067113744968967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014126.P8247067113744968967

namespace A014126

/-- `A006918(n)+∑[round((n+3)²/12)-a(n-1)]` -/
def P8247067113744968967.Spec : Prop :=
  ∀ n, P8247067113744968967.a n = A014126 n

end A014126

/-! ## A014126.P10603083091500398599

`A266769(n)+A006918(n)`
-/

namespace A014126.P10603083091500398599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A006918 n

end

end A014126.P10603083091500398599

namespace A014126

/-- `A266769(n)+A006918(n)` -/
def P10603083091500398599.Spec : Prop :=
  ∀ n, P10603083091500398599.a n = A014126 n

end A014126

/-! ## A014126.P17773288726589943210

`A281333(n)+A175812(n)`
-/

namespace A014126.P17773288726589943210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n + A175812 n

end

end A014126.P17773288726589943210

namespace A014126

/-- `A281333(n)+A175812(n)` -/
def P17773288726589943210.Spec : Prop :=
  ∀ n, P17773288726589943210.a n = A014126 n

end A014126

/-! ## A014126.P2285681741426780706

`A092498(n)-A173196(n+1)-A173196(n+1)`
-/

namespace A014126.P2285681741426780706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n - A173196 (n + 1) - A173196 (n + 1)

end

end A014126.P2285681741426780706

namespace A014126

/-- `A092498(n)-A173196(n+1)-A173196(n+1)` -/
def P2285681741426780706.Spec : Prop :=
  ∀ n, P2285681741426780706.a n = A014126 n

end A014126

/-! ## A014126.P7667995397354930609

`A181120(n+1)+A000601(n)`
-/

namespace A014126.P7667995397354930609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 1) + A000601 n

end

end A014126.P7667995397354930609

namespace A014126

/-- `A181120(n+1)+A000601(n)` -/
def P7667995397354930609.Spec : Prop :=
  ∀ n, P7667995397354930609.a n = A014126 n

end A014126

/-! ## A014126.P8604407174025614695

`A014125(n)-A069905(n+2)`
-/

namespace A014126.P8604407174025614695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - A069905 (n + 2)

end

end A014126.P8604407174025614695

namespace A014126

/-- `A014125(n)-A069905(n+2)` -/
def P8604407174025614695.Spec : Prop :=
  ∀ n, P8604407174025614695.a n = A014126 n

end A014126

/-! ## A014126.P4471911328103821111

`A254874(n+1)-A002623(n+1)`
-/

namespace A014126.P4471911328103821111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 (n + 1) - A002623 (n + 1)

end

end A014126.P4471911328103821111

namespace A014126

/-- `A254874(n+1)-A002623(n+1)` -/
def P4471911328103821111.Spec : Prop :=
  ∀ n, P4471911328103821111.a n = A014126 n

end A014126

/-! ## A014126.P13108109572639323070

`A171965(n+2)+A123919(n+2)`
-/

namespace A014126.P13108109572639323070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171965 (n + 2) + A123919 (n + 2)

end

end A014126.P13108109572639323070

namespace A014126

/-- `A171965(n+2)+A123919(n+2)` -/
def P13108109572639323070.Spec : Prop :=
  ∀ n, P13108109572639323070.a n = A014126 n

end A014126

/-! ## A014126.P14322226183230759053

`A241526(n+2)-2*A002623(n+1)`
-/

namespace A014126.P14322226183230759053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241526 (n + 2) - 2 * A002623 (n + 1)

end

end A014126.P14322226183230759053

namespace A014126

/-- `A241526(n+2)-2*A002623(n+1)` -/
def P14322226183230759053.Spec : Prop :=
  ∀ n, P14322226183230759053.a n = A014126 n

end A014126

/-! ## A014126.P15162623583737362536

`2*A254874(n+1)-A241526(n+2)`
-/

namespace A014126.P15162623583737362536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254874 (n + 1) - A241526 (n + 2)

end

end A014126.P15162623583737362536

namespace A014126

/-- `2*A254874(n+1)-A241526(n+2)` -/
def P15162623583737362536.Spec : Prop :=
  ∀ n, P15162623583737362536.a n = A014126 n

end A014126

/-! ## A014126.P11252826460422659649

`A014125(n+1)+A002623(n)-A002623(n+1)`
-/

namespace A014126.P11252826460422659649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (n + 1) + (A002623 n - A002623 (n + 1))

end

end A014126.P11252826460422659649

namespace A014126

/-- `A014125(n+1)+A002623(n)-A002623(n+1)` -/
def P11252826460422659649.Spec : Prop :=
  ∀ n, P11252826460422659649.a n = A014126 n

end A014126

/-! ## A014126.P12236415403602640518

`A000601(n+1)+A000601(n)-A087811(n+2)`
-/

namespace A014126.P12236415403602640518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) + (A000601 n - A087811 (n + 2))

end

end A014126.P12236415403602640518

namespace A014126

/-- `A000601(n+1)+A000601(n)-A087811(n+2)` -/
def P12236415403602640518.Spec : Prop :=
  ∀ n, P12236415403602640518.a n = A014126 n

end A014126

/-! ## A014126.P11673920478473755290

`A026810(2*n)+A001399(2*n)`
-/

namespace A014126.P11673920478473755290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (2 * n) + A001399 (2 * n)

end

end A014126.P11673920478473755290

namespace A014126

/-- `A026810(2*n)+A001399(2*n)` -/
def P11673920478473755290.Spec : Prop :=
  ∀ n, P11673920478473755290.a n = A014126 n

end A014126

/-! ## A014126.P7119655152527789142

`A001400(2*n)`
-/

namespace A014126.P7119655152527789142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (2 * n)

end

end A014126.P7119655152527789142

namespace A014126

/-- `A001400(2*n)` -/
def P7119655152527789142.Spec : Prop :=
  ∀ n, P7119655152527789142.a n = A014126 n

end A014126

/-! ## A014126.P9704247500157958798

`record[A001400(n)/A010686(n)]`
-/

namespace A014126.P9704247500157958798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001400 n : ℚ) / (A010686 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014126.P9704247500157958798

namespace A014126

/-- `record[A001400(n)/A010686(n)]` -/
def P9704247500157958798.Spec : Prop :=
  ∀ n, P9704247500157958798.a n = (A014126 n : ℚ)

end A014126

/-!
# A014128: Inverse of 119th cyclotomic polynomial.

The programs for A014128, there is no canonical definition to state claims against.
-/

/-! ## A014128.P11255515260410028925

`A014247(n)*A033999(n)`
-/

namespace A014128.P11255515260410028925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014247 n * A033999 n

end

end A014128.P11255515260410028925

/-!
# A014129: Inverse of 120th cyclotomic polynomial.

The programs for A014129, there is no canonical definition to state claims against.
-/

/-! ## A014129.P16160309032737414238

`A014069(gcd(n, ∑[n]))`
-/

namespace A014129.P16160309032737414238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014069 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A014129.P16160309032737414238

/-!
# A014130: ((n+3)!/6)*product( 2*k+1, k=0..n).

The programs for A014130, there is no canonical definition to state claims against.
-/

/-! ## A014130.P8741683603528984672

`∏[(n+3)*Δ[n²]]/3`
-/

namespace A014130.P8741683603528984672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A014130.P8741683603528984672

/-! ## A014130.P12539304611185968960

`record[a(n-2)*∑[n+3]]` with `a(0)=1, a(1)=0`
-/

namespace A014130.P12539304611185968960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014130.P12539304611185968960

/-! ## A014130.P6032690386678297984

`(n+3)*a(n-1)*Δ[n²]` with `a(0)=1`
-/

namespace A014130.P6032690386678297984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3 : ℤ) * (a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A014130.P6032690386678297984

/-! ## A014130.P12207173924925521724

`(2*n+1)*(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A014130.P12207173924925521724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * ((n + 3) * a (n - 1))

end

end A014130.P12207173924925521724

/-! ## A014130.P14513528855745110167

`∏[(2*n+1)*(n+3)%(n+2)!]`
-/

namespace A014130.P14513528855745110167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((n + 3) % Nat.factorial (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A014130.P14513528855745110167

/-!
# A014131: a(n) = 2*a(n-1) if n odd else 2*a(n-1) + 6.

The programs for A014131, the canonical program `A014131.P1862675643098389536` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014131 has offset 0).

The definition of A014131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014131.P1862675643098389536

`2^(n+2)-3-(-1)^n`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014131

/-- `2^(n+2)-3-(-1)^n` -/
def P1862675643098389536.Spec : Prop :=
  ∀ n, P1862675643098389536.a n = A014131 n

theorem P1862675643098389536.correct : P1862675643098389536.Spec := by
  intro n
  simp only [A014131]

end A014131

/-! ## A014131.P4865765339961815797

`ogf(6x/(1-2x-x^2+2x^3))`
-/

namespace A014131.P4865765339961815797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -2, -1, 2] n

end

end A014131.P4865765339961815797

namespace A014131

/-- `ogf(6x/(1-2x-x^2+2x^3))` -/
def P4865765339961815797.Spec : Prop :=
  ∀ n, P4865765339961815797.a n = A014131 n

end A014131

/-! ## A014131.P12179951193025548028

`∑[lcm(2, 1-(-2)^n)]`
-/

namespace A014131.P12179951193025548028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (-2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P12179951193025548028

namespace A014131

/-- `∑[lcm(2, 1-(-2)^n)]` -/
def P12179951193025548028.Spec : Prop :=
  ∀ n, (P12179951193025548028.a n : ℤ) = A014131 n

end A014131

/-! ## A014131.P14779557275098279661

`or(2^(n+2)-4, 2*n)`
-/

namespace A014131.P14779557275098279661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ (n + 2) : ℤ) - 4) (2 * n : ℤ)

end

end A014131.P14779557275098279661

namespace A014131

/-- `or(2^(n+2)-4, 2*n)` -/
def P14779557275098279661.Spec : Prop :=
  ∀ n, P14779557275098279661.a n = A014131 n

end A014131

/-! ## A014131.P12102808915270892213

`2*or(2, or(n, a(n-1)))` with `a(0)=0`
-/

namespace A014131.P12102808915270892213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * Nat.lor 2 (Nat.lor n (a (n - 1)))

end

end A014131.P12102808915270892213

namespace A014131

/-- `2*or(2, or(n, a(n-1)))` -/
def P12102808915270892213.Spec : Prop :=
  ∀ n, (P12102808915270892213.a n : ℤ) = A014131 n

end A014131

/-! ## A014131.P1912590501039051953

`∑[3*2^n-a(n-1)]` with `a(0)=0`
-/

namespace A014131.P1912590501039051953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 * 2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P1912590501039051953

namespace A014131

/-- `∑[3*2^n-a(n-1)]` -/
def P1912590501039051953.Spec : Prop :=
  ∀ n, P1912590501039051953.a n = A014131 n

end A014131

/-! ## A014131.P3561847120845010745

`xor(2^(n+1)+2, a(n-1))` with `a(0)=0`
-/

namespace A014131.P3561847120845010745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (2 ^ (n + 1) + 2) (a (n - 1))

end

end A014131.P3561847120845010745

namespace A014131

/-- `xor(2^(n+1)+2, a(n-1))` -/
def P3561847120845010745.Spec : Prop :=
  ∀ n, (P3561847120845010745.a n : ℤ) = A014131 n

end A014131

/-! ## A014131.P17185139416849061322

`floor(2*(a(n-1)+3*n%2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A014131.P17185139416849061322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + 3 * (n % 2))

end

end A014131.P17185139416849061322

namespace A014131

/-- `floor(2*(a(n-1)+3*n%2))` -/
def P17185139416849061322.Spec : Prop :=
  ∀ n, (P17185139416849061322.a n : ℤ) = A014131 n

end A014131

/-! ## A014131.P6733212865570742238

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=6`
-/

namespace A014131.P6733212865570742238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P6733212865570742238

namespace A014131

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P6733212865570742238.Spec : Prop :=
  ∀ n, (P6733212865570742238.a n : ℤ) = A014131 n

end A014131

/-! ## A014131.P1942355951671540307

`6*A000975(n)`
-/

namespace A014131.P1942355951671540307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000975 n

end

end A014131.P1942355951671540307

namespace A014131

/-- `6*A000975(n)` -/
def P1942355951671540307.Spec : Prop :=
  ∀ n, P1942355951671540307.a n = A014131 n

end A014131

/-! ## A014131.P5144588483613109113

`∑[A092297(n+1)]`
-/

namespace A014131.P5144588483613109113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P5144588483613109113

namespace A014131

/-- `∑[A092297(n+1)]` -/
def P5144588483613109113.Spec : Prop :=
  ∀ n, P5144588483613109113.a n = A014131 n

end A014131

/-! ## A014131.P12309482219303046618

`∑[2*A062510(n)]`
-/

namespace A014131.P12309482219303046618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P12309482219303046618

namespace A014131

/-- `∑[2*A062510(n)]` -/
def P12309482219303046618.Spec : Prop :=
  ∀ n, P12309482219303046618.a n = A014131 n

end A014131

/-! ## A014131.P12359558668707834546

`∑[3*A014113(n)]`
-/

namespace A014131.P12359558668707834546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P12359558668707834546

namespace A014131

/-- `∑[3*A014113(n)]` -/
def P12359558668707834546.Spec : Prop :=
  ∀ n, P12359558668707834546.a n = A014131 n

end A014131

/-! ## A014131.P16118438375968393722

`∑[6*A001045(n)]`
-/

namespace A014131.P16118438375968393722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P16118438375968393722

namespace A014131

/-- `∑[6*A001045(n)]` -/
def P16118438375968393722.Spec : Prop :=
  ∀ n, P16118438375968393722.a n = A014131 n

end A014131

/-! ## A014131.P6174949720271788011

`2*A141023(n+1)`
-/

namespace A014131.P6174949720271788011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141023 (n + 1)

end

end A014131.P6174949720271788011

namespace A014131

/-- `2*A141023(n+1)` -/
def P6174949720271788011.Spec : Prop :=
  ∀ n, P6174949720271788011.a n = A014131 n

end A014131

/-! ## A014131.P12091560130280906369

`3*A167030(n+2)`
-/

namespace A014131.P12091560130280906369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A167030 (n + 2)

end

end A014131.P12091560130280906369

namespace A014131

/-- `3*A167030(n+2)` -/
def P12091560130280906369.Spec : Prop :=
  ∀ n, P12091560130280906369.a n = A014131 n

end A014131

/-! ## A014131.P12550527549180815206

`3*(A283642(n)-1)`
-/

namespace A014131.P12550527549180815206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A283642 n - 1)

end

end A014131.P12550527549180815206

namespace A014131

/-- `3*(A283642(n)-1)` -/
def P12550527549180815206.Spec : Prop :=
  ∀ n, P12550527549180815206.a n = A014131 n

end A014131

/-! ## A014131.P9295596527488039566

`xor(2, A283353(n+1))`
-/

namespace A014131.P9295596527488039566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A283353 (n + 1))

end

end A014131.P9295596527488039566

namespace A014131

/-- `xor(2, A283353(n+1))` -/
def P9295596527488039566.Spec : Prop :=
  ∀ n, P9295596527488039566.a n = A014131 n

end A014131

/-! ## A014131.P11505881380719558657

`xor(3, A166956(n+2))`
-/

namespace A014131.P11505881380719558657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A166956 (n + 2))

end

end A014131.P11505881380719558657

namespace A014131

/-- `xor(3, A166956(n+2))` -/
def P11505881380719558657.Spec : Prop :=
  ∀ n, P11505881380719558657.a n = A014131 n

end A014131

/-! ## A014131.P3978000616477360016

`∑[A269019(n+1)+1]`
-/

namespace A014131.P3978000616477360016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014131.P3978000616477360016

namespace A014131

/-- `∑[A269019(n+1)+1]` -/
def P3978000616477360016.Spec : Prop :=
  ∀ n, P3978000616477360016.a n = A014131 n

end A014131

/-!
# A014132: Complement of triangular numbers (A000217); also array T(n,k) = ((n+k)^2 + n-k)/2, n, k > 0, read by antidiagonals.

The programs for A014132, the canonical program `A014132.P14290115325126423420` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014132 has offset 1).

The definition of A014132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014132.P14290115325126423420

`n+1+round(sqrt(2*(n+1)))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014132

/-- `n+1+round(sqrt(2*(n+1)))` -/
def P14290115325126423420.Spec : Prop :=
  ∀ n, P14290115325126423420.a n = A014132 (n + 1)

theorem P14290115325126423420.correct : P14290115325126423420.Spec := by
  intro n
  simp only [A014132, Nat.add_sub_cancel]

end A014132

/-! ## A014132.P16912208707329955931

`A256188(A004202(n+1))`
-/

namespace A014132.P16912208707329955931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256188 (A004202 (n + 1)).toNat

end

end A014132.P16912208707329955931

namespace A014132

/-- `A256188(A004202(n+1))` -/
def P16912208707329955931.Spec : Prop :=
  ∀ n, P16912208707329955931.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P1129342216269678182

`∑[ceil(cosh(char[∑[n]]))]`
-/

namespace A014132.P1129342216269678182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P1129342216269678182

namespace A014132

/-- `∑[ceil(cosh(char[∑[n]]))]` -/
def P1129342216269678182.Spec : Prop :=
  ∀ n, P1129342216269678182.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P12149217061341090215

`∑[round(cosh(char[∑[n]]))]`
-/

namespace A014132.P12149217061341090215
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P12149217061341090215

namespace A014132

/-- `∑[round(cosh(char[∑[n]]))]` -/
def P12149217061341090215.Spec : Prop :=
  ∀ n, P12149217061341090215.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P8191780331013872696

`and(comp[C(n, 2)], -1)`
-/

namespace A014132.P8191780331013872696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)

end

end A014132.P8191780331013872696

namespace A014132

/-- `and(comp[C(n, 2)], -1)` -/
def P8191780331013872696.Spec : Prop :=
  ∀ n, P8191780331013872696.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P13086142800186829535

`∑[char[C(n, 2)]+1]`
-/

namespace A014132.P13086142800186829535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P13086142800186829535

namespace A014132

/-- `∑[char[C(n, 2)]+1]` -/
def P13086142800186829535.Spec : Prop :=
  ∀ n, (P13086142800186829535.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P800988501951091691

`∑[(char[∑[n]]+1)!]`
-/

namespace A014132.P800988501951091691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P800988501951091691

namespace A014132

/-- `∑[(char[∑[n]]+1)!]` -/
def P800988501951091691.Spec : Prop :=
  ∀ n, (P800988501951091691.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P12633289927777878052

`∑[dr(char[∑[n]]+1)]`
-/

namespace A014132.P12633289927777878052
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P12633289927777878052

namespace A014132

/-- `∑[dr(char[∑[n]]+1)]` -/
def P12633289927777878052.Spec : Prop :=
  ∀ n, (P12633289927777878052.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P15027997496870713993

`∑[gcd(2, char[∑[n]]+1)]`
-/

namespace A014132.P15027997496870713993
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P15027997496870713993

namespace A014132

/-- `∑[gcd(2, char[∑[n]]+1)]` -/
def P15027997496870713993.Spec : Prop :=
  ∀ n, (P15027997496870713993.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P3345358361371240123

`∑[(char[∑[n]]+1)%3]`
-/

namespace A014132.P3345358361371240123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P3345358361371240123

namespace A014132

/-- `∑[(char[∑[n]]+1)%3]` -/
def P3345358361371240123.Spec : Prop :=
  ∀ n, (P3345358361371240123.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P16635270379546295576

`∑[and(1, char[∑[n]])+1]`
-/

namespace A014132.P16635270379546295576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P16635270379546295576

namespace A014132

/-- `∑[and(1, char[∑[n]])+1]` -/
def P16635270379546295576.Spec : Prop :=
  ∀ n, (P16635270379546295576.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P13850210628753245851

`∑[C(2, 2-char[∑[n]])]`
-/

namespace A014132.P13850210628753245851
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P13850210628753245851

namespace A014132

/-- `∑[C(2, 2-char[∑[n]])]` -/
def P13850210628753245851.Spec : Prop :=
  ∀ n, (P13850210628753245851.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P6530216489408021030

`∑[or(2, char[∑[n]])-1]`
-/

namespace A014132.P6530216489408021030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P6530216489408021030

namespace A014132

/-- `∑[or(2, char[∑[n]])-1]` -/
def P6530216489408021030.Spec : Prop :=
  ∀ n, P6530216489408021030.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P3618158005845500673

`∑[2-xor(1, char[∑[n]])]`
-/

namespace A014132.P3618158005845500673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P3618158005845500673

namespace A014132

/-- `∑[2-xor(1, char[∑[n]])]` -/
def P3618158005845500673.Spec : Prop :=
  ∀ n, P3618158005845500673.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P6037367208823716899

`∑[and(3, char[∑[n]]-3)]`
-/

namespace A014132.P6037367208823716899
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P6037367208823716899

namespace A014132

/-- `∑[and(3, char[∑[n]]-3)]` -/
def P6037367208823716899.Spec : Prop :=
  ∀ n, P6037367208823716899.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P7903717256854724468

`∑[xor(1, 3*char[∑[n]])]`
-/

namespace A014132.P7903717256854724468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P7903717256854724468

namespace A014132

/-- `∑[xor(1, 3*char[∑[n]])]` -/
def P7903717256854724468.Spec : Prop :=
  ∀ n, (P7903717256854724468.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P14677799744543605991

`∑[2^and(1, char[∑[n]])]`
-/

namespace A014132.P14677799744543605991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P14677799744543605991

namespace A014132

/-- `∑[2^and(1, char[∑[n]])]` -/
def P14677799744543605991.Spec : Prop :=
  ∀ n, (P14677799744543605991.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P12893832506632189079

`∑[A035214(n)]`
-/

namespace A014132.P12893832506632189079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014132.P12893832506632189079

namespace A014132

/-- `∑[A035214(n)]` -/
def P12893832506632189079.Spec : Prop :=
  ∀ n, P12893832506632189079.a n = A014132 (n + 1)

end A014132

/-! ## A014132.P12017035707180989856

`eq[0, A073423(n)]`
-/

namespace A014132.P12017035707180989856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014132.P12017035707180989856

namespace A014132

/-- `eq[0, A073423(n)]` -/
def P12017035707180989856.Spec : Prop :=
  ∀ n, (P12017035707180989856.a n : ℤ) = A014132 (n + 1)

end A014132

/-! ## A014132.P13700177616219513817

`∪[A020757(n+1), A185978(n+1)]`
-/

namespace A014132.P13700177616219513817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014132.P13700177616219513817

namespace A014132

/-- `∪[A020757(n+1), A185978(n+1)]` -/
def P13700177616219513817.Spec : Prop :=
  ∀ n, (P13700177616219513817.a n : ℤ) = A014132 (n + 1)

end A014132

/-!
# A014133: Sum of a square and a triangular number.

The programs for A014133, the canonical program `A014133.P11038504298295896080` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014133 has offset 1).

The definition of A014133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014133.P11038504298295896080

`comp[A014134(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A014133

/-- `comp[A014134(n+1)]` -/
def P11038504298295896080.Spec : Prop :=
  ∀ n, (P11038504298295896080.a n : ℤ) = A014133 (n + 1)

theorem P11038504298295896080.correct : P11038504298295896080.Spec := by
  intro n
  simp only [A014133, Nat.add_sub_cancel]

end A014133

/-! ## A014133.P17836575770035919955

`lt[0, A112603(n)]`
-/

namespace A014133.P17836575770035919955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014133.P17836575770035919955

namespace A014133

/-- `lt[0, A112603(n)]` -/
def P17836575770035919955.Spec : Prop :=
  ∀ n, (P17836575770035919955.a n : ℤ) = A014133 (n + 1)

end A014133

/-! ## A014133.P3297202033244966240

`lt[0, A128712(n)²]`
-/

namespace A014133.P3297202033244966240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128712 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014133.P3297202033244966240

namespace A014133

/-- `lt[0, A128712(n)²]` -/
def P3297202033244966240.Spec : Prop :=
  ∀ n, (P3297202033244966240.a n : ℤ) = A014133 (n + 1)

end A014133

/-! ## A014133.P5512697824699778247

`eq[2, A000122(A112603(n)²)]`
-/

namespace A014133.P5512697824699778247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A112603 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014133.P5512697824699778247

namespace A014133

/-- `eq[2, A000122(A112603(n)²)]` -/
def P5512697824699778247.Spec : Prop :=
  ∀ n, (P5512697824699778247.a n : ℤ) = A014133 (n + 1)

end A014133

/-! ## A014133.P15671755419978056820

`∪[A133254(n+1), A329269(n+1)]`
-/

namespace A014133.P15671755419978056820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A014133.P15671755419978056820

namespace A014133

/-- `∪[A133254(n+1), A329269(n+1)]` -/
def P15671755419978056820.Spec : Prop :=
  ∀ n, (P15671755419978056820.a n : ℤ) = A014133 (n + 1)

end A014133

/-! ## A014133.P154613545783021843

`lt[A115247(n), 4]`
-/

namespace A014133.P154613545783021843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115247 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014133.P154613545783021843

namespace A014133

/-- `lt[A115247(n), 4]` -/
def P154613545783021843.Spec : Prop :=
  ∀ n, (P154613545783021843.a n : ℤ) = A014133 (n + 1)

end A014133

/-! ## A014133.P5351072035638477752

`lt[0, A231353(n)+1]`
-/

namespace A014133.P5351072035638477752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231353 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014133.P5351072035638477752

namespace A014133

/-- `lt[0, A231353(n)+1]` -/
def P5351072035638477752.Spec : Prop :=
  ∀ n, (P5351072035638477752.a n : ℤ) = A014133 (n + 1)

end A014133

/-! ## A014133.P11181096621366125932

`lt[0, A231354(n)+1]`
-/

namespace A014133.P11181096621366125932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231354 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A014133.P11181096621366125932

namespace A014133

/-- `lt[0, A231354(n)+1]` -/
def P11181096621366125932.Spec : Prop :=
  ∀ n, (P11181096621366125932.a n : ℤ) = A014133 (n + 1)

end A014133

/-!
# A014134: Numbers that are not the sum of a square (A000290) and a triangular number (A000217).

The programs for A014134, the canonical program `A014134.P4458789761988716110` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014134 has offset 1).

The definition of A014134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014134.P4458789761988716110

`filter[A076769(n+1), A049240(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A014134

/-- `filter[A076769(n+1), A049240(#)]` -/
def P4458789761988716110.Spec : Prop :=
  ∀ n, P4458789761988716110.a n = A014134 (n + 1)

theorem P4458789761988716110.correct : P4458789761988716110.Spec := by
  intro n
  simp only [A014134, Nat.add_sub_cancel]

end A014134

/-! ## A014134.P704000328763707441

`comp[A014133(n+1)]`
-/

namespace A014134.P704000328763707441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014134.P704000328763707441

namespace A014134

/-- `comp[A014133(n+1)]` -/
def P704000328763707441.Spec : Prop :=
  ∀ n, (P704000328763707441.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P5927429800720190002

`∩[A076769(n+1), A242401(n+1)]`
-/

namespace A014134.P5927429800720190002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014134.P5927429800720190002

namespace A014134

/-- `∩[A076769(n+1), A242401(n+1)]` -/
def P5927429800720190002.Spec : Prop :=
  ∀ n, (P5927429800720190002.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P294235370580617324

`∩[A000037(n+1), A076769(n+1)]`
-/

namespace A014134.P294235370580617324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014134.P294235370580617324

namespace A014134

/-- `∩[A000037(n+1), A076769(n+1)]` -/
def P294235370580617324.Spec : Prop :=
  ∀ n, (P294235370580617324.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P17702365154628269010

`∩[A076769(n+1), A164514(n+1)]`
-/

namespace A014134.P17702365154628269010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014134.P17702365154628269010

namespace A014134

/-- `∩[A076769(n+1), A164514(n+1)]` -/
def P17702365154628269010.Spec : Prop :=
  ∀ n, (P17702365154628269010.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P2519409144612726970

`eq[0, A101428(n)]`
-/

namespace A014134.P2519409144612726970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P2519409144612726970

namespace A014134

/-- `eq[0, A101428(n)]` -/
def P2519409144612726970.Spec : Prop :=
  ∀ n, (P2519409144612726970.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P5396867382331356878

`eq[0, A112603(n)]`
-/

namespace A014134.P5396867382331356878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P5396867382331356878

namespace A014134

/-- `eq[0, A112603(n)]` -/
def P5396867382331356878.Spec : Prop :=
  ∀ n, (P5396867382331356878.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P15938139684820590944

`eq[0, A128712(n)]`
-/

namespace A014134.P15938139684820590944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128712 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P15938139684820590944

namespace A014134

/-- `eq[0, A128712(n)]` -/
def P15938139684820590944.Spec : Prop :=
  ∀ n, (P15938139684820590944.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P157011106077739732

`lt[A112603(n+1), 1]+1`
-/

namespace A014134.P157011106077739732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A014134.P157011106077739732

namespace A014134

/-- `lt[A112603(n+1), 1]+1` -/
def P157011106077739732.Spec : Prop :=
  ∀ n, (P157011106077739732.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P2733707973875738145

`lt[A112603(n), A033999(n)²]`
-/

namespace A014134.P2733707973875738145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014134.P2733707973875738145

namespace A014134

/-- `lt[A112603(n), A033999(n)²]` -/
def P2733707973875738145.Spec : Prop :=
  ∀ n, (P2733707973875738145.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P7971538424183971287

`lt[A000040(A112603(n)+2), 4]`
-/

namespace A014134.P7971538424183971287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112603 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014134.P7971538424183971287

namespace A014134

/-- `lt[A000040(A112603(n)+2), 4]` -/
def P7971538424183971287.Spec : Prop :=
  ∀ n, (P7971538424183971287.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P10974718405883724349

`filter[A076769(n+1), A267594(#)]`
-/

namespace A014134.P10974718405883724349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A014134.P10974718405883724349

namespace A014134

/-- `filter[A076769(n+1), A267594(#)]` -/
def P10974718405883724349.Spec : Prop :=
  ∀ n, P10974718405883724349.a n = A014134 (n + 1)

end A014134

/-! ## A014134.P1102601202752605467

`filter[A076769(n+1), A267635(#)]`
-/

namespace A014134.P1102601202752605467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A014134.P1102601202752605467

namespace A014134

/-- `filter[A076769(n+1), A267635(#)]` -/
def P1102601202752605467.Spec : Prop :=
  ∀ n, P1102601202752605467.a n = A014134 (n + 1)

end A014134

/-! ## A014134.P15384604831566555576

`lt[A128712(n)², A193073(n+1)]`
-/

namespace A014134.P15384604831566555576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128712 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014134.P15384604831566555576

namespace A014134

/-- `lt[A128712(n)², A193073(n+1)]` -/
def P15384604831566555576.Spec : Prop :=
  ∀ n, (P15384604831566555576.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P1821057819854882070

`lt[A216282(A022144(n)+1), 1]`
-/

namespace A014134.P1821057819854882070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014134.P1821057819854882070

namespace A014134

/-- `lt[A216282(A022144(n)+1), 1]` -/
def P1821057819854882070.Spec : Prop :=
  ∀ n, (P1821057819854882070.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P7770135125445748650

`eq[0, A033761(3*n)]`
-/

namespace A014134.P7770135125445748650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P7770135125445748650

namespace A014134

/-- `eq[0, A033761(3*n)]` -/
def P7770135125445748650.Spec : Prop :=
  ∀ n, (P7770135125445748650.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P11376271407537190899

`eq[0, A128713(3*n)]`
-/

namespace A014134.P11376271407537190899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128713 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P11376271407537190899

namespace A014134

/-- `eq[0, A128713(3*n)]` -/
def P11376271407537190899.Spec : Prop :=
  ∀ n, (P11376271407537190899.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P4420742143281729043

`eq[A002636(3*n), A224326(3*n)]`
-/

namespace A014134.P4420742143281729043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014134.P4420742143281729043

namespace A014134

/-- `eq[A002636(3*n), A224326(3*n)]` -/
def P4420742143281729043.Spec : Prop :=
  ∀ n, (P4420742143281729043.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P9264298687155063539

`eq[0, A113411(4*n)]`
-/

namespace A014134.P9264298687155063539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P9264298687155063539

namespace A014134

/-- `eq[0, A113411(4*n)]` -/
def P9264298687155063539.Spec : Prop :=
  ∀ n, (P9264298687155063539.a n : ℤ) = A014134 (n + 1)

end A014134

/-! ## A014134.P14424949198052204234

`eq[0, A128711(4*n)]`
-/

namespace A014134.P14424949198052204234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128711 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014134.P14424949198052204234

namespace A014134

/-- `eq[0, A128711(4*n)]` -/
def P14424949198052204234.Spec : Prop :=
  ∀ n, (P14424949198052204234.a n : ℤ) = A014134 (n + 1)

end A014134

/-!
# A014135: Inverse of 126th cyclotomic polynomial.

The programs for A014135, there is no canonical definition to state claims against.
-/

/-! ## A014135.P5619539965918205346

`A014093(A004396(n))`
-/

namespace A014135.P5619539965918205346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014093 (A004396 n).toNat

end

end A014135.P5619539965918205346

/-!
# A014137: Partial sums of Catalan numbers (A000108).

The programs for A014137, the canonical program `A014137.P1978746088953100721` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014137 has offset 0).

The definition of A014137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014137.P1978746088953100721

`((5*n-1)*a(n-1)-(4*n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014137

/-- `((5*n-1)*a(n-1)-(4*n-2)*a(n-2))/(n+1)` -/
def P1978746088953100721.Spec : Prop :=
  ∀ n, P1978746088953100721.a n = (A014137 n : ℚ)

end A014137

/-! ## A014137.P809958060830913083

`∑[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A014137.P809958060830913083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P809958060830913083

namespace A014137

/-- `∑[(4-6/(n+1))*a(n-1)]` -/
def P809958060830913083.Spec : Prop :=
  ∀ n, P809958060830913083.a n = (A014137 n : ℚ)

end A014137

/-! ## A014137.P6807665868142948678

`∑[A000108(n)]`
-/

namespace A014137.P6807665868142948678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P6807665868142948678

namespace A014137

/-- `∑[A000108(n)]` -/
def P6807665868142948678.Spec : Prop :=
  ∀ n, P6807665868142948678.a n = A014137 n

end A014137

/-! ## A014137.P7626071200587354279

`record[A097607(n)]`
-/

namespace A014137.P7626071200587354279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014137.P7626071200587354279

namespace A014137

/-- `record[A097607(n)]` -/
def P7626071200587354279.Spec : Prop :=
  ∀ n, P7626071200587354279.a n = A014137 n

end A014137

/-! ## A014137.P6943164182253461556

`A014138(n)+1`
-/

namespace A014137.P6943164182253461556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + 1

end

end A014137.P6943164182253461556

namespace A014137

/-- `A014138(n)+1` -/
def P6943164182253461556.Spec : Prop :=
  ∀ n, P6943164182253461556.a n = A014137 n

end A014137

/-! ## A014137.P16298117184270951811

`2-A106271(n)`
-/

namespace A014137.P16298117184270951811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106271 n

end

end A014137.P16298117184270951811

namespace A014137

/-- `2-A106271(n)` -/
def P16298117184270951811.Spec : Prop :=
  ∀ n, P16298117184270951811.a n = A014137 n

end A014137

/-! ## A014137.P3820272460940451940

`A110199(2*n)`
-/

namespace A014137.P3820272460940451940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (2 * n)

end

end A014137.P3820272460940451940

namespace A014137

/-- `A110199(2*n)` -/
def P3820272460940451940.Spec : Prop :=
  ∀ n, P3820272460940451940.a n = A014137 n

end A014137

/-! ## A014137.P6124182220963186783

`∑[abs(A168491(n))]`
-/

namespace A014137.P6124182220963186783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P6124182220963186783

namespace A014137

/-- `∑[abs(A168491(n))]` -/
def P6124182220963186783.Spec : Prop :=
  ∀ n, P6124182220963186783.a n = A014137 n

end A014137

/-! ## A014137.P2776179821722498225

`∑[A120588(n+1)]`
-/

namespace A014137.P2776179821722498225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P2776179821722498225

namespace A014137

/-- `∑[A120588(n+1)]` -/
def P2776179821722498225.Spec : Prop :=
  ∀ n, P2776179821722498225.a n = A014137 n

end A014137

/-! ## A014137.P7747101461610643998

`∑[A120304(n)+2]`
-/

namespace A014137.P7747101461610643998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P7747101461610643998

namespace A014137

/-- `∑[A120304(n)+2]` -/
def P7747101461610643998.Spec : Prop :=
  ∀ n, P7747101461610643998.a n = A014137 n

end A014137

/-! ## A014137.P10080770580007297976

`∑[A028303(2*n)]`
-/

namespace A014137.P10080770580007297976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P10080770580007297976

namespace A014137

/-- `∑[A028303(2*n)]` -/
def P10080770580007297976.Spec : Prop :=
  ∀ n, P10080770580007297976.a n = A014137 n

end A014137

/-! ## A014137.P14677200323449508690

`∑[A028304(2*n)]`
-/

namespace A014137.P14677200323449508690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P14677200323449508690

namespace A014137

/-- `∑[A028304(2*n)]` -/
def P14677200323449508690.Spec : Prop :=
  ∀ n, P14677200323449508690.a n = A014137 n

end A014137

/-! ## A014137.P10186659291452340283

`∑[A126120(2*n)]`
-/

namespace A014137.P10186659291452340283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P10186659291452340283

namespace A014137

/-- `∑[A126120(2*n)]` -/
def P10186659291452340283.Spec : Prop :=
  ∀ n, P10186659291452340283.a n = A014137 n

end A014137

/-! ## A014137.P9455774746209952249

`∑[A126324(2*n)]`
-/

namespace A014137.P9455774746209952249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P9455774746209952249

namespace A014137

/-- `∑[A126324(2*n)]` -/
def P9455774746209952249.Spec : Prop :=
  ∀ n, P9455774746209952249.a n = A014137 n

end A014137

/-! ## A014137.P15095979850662777929

`∑[A208355(2*n)]`
-/

namespace A014137.P15095979850662777929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P15095979850662777929

namespace A014137

/-- `∑[A208355(2*n)]` -/
def P15095979850662777929.Spec : Prop :=
  ∀ n, P15095979850662777929.a n = A014137 n

end A014137

/-! ## A014137.P6511624845422847180

`∑[A329687(3*n)]`
-/

namespace A014137.P6511624845422847180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P6511624845422847180

namespace A014137

/-- `∑[A329687(3*n)]` -/
def P6511624845422847180.Spec : Prop :=
  ∀ n, P6511624845422847180.a n = A014137 n

end A014137

/-! ## A014137.P854384098486910534

`∑[A141364(n)]+n`
-/

namespace A014137.P854384098486910534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A014137.P854384098486910534

namespace A014137

/-- `∑[A141364(n)]+n` -/
def P854384098486910534.Spec : Prop :=
  ∀ n, P854384098486910534.a n = A014137 n

end A014137

/-! ## A014137.P1151877978205205598

`∑[A246604(n)+n]`
-/

namespace A014137.P1151877978205205598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014137.P1151877978205205598

namespace A014137

/-- `∑[A246604(n)+n]` -/
def P1151877978205205598.Spec : Prop :=
  ∀ n, P1151877978205205598.a n = A014137 n

end A014137

/-! ## A014137.P9883438089640928827

`∑[A141351(n)]-n`
-/

namespace A014137.P9883438089640928827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A014137.P9883438089640928827

namespace A014137

/-- `∑[A141351(n)]-n` -/
def P9883438089640928827.Spec : Prop :=
  ∀ n, P9883438089640928827.a n = A014137 n

end A014137

/-!
# A014138: Partial sums of (Catalan numbers starting 1, 2, 5, ...).

The programs for A014138, the canonical program `A014138.P8012092781455815566` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014138 has offset 0).

The definition of A014138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014138.P8012092781455815566

`A014137(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014138

/-- `A014137(n)-1` -/
def P8012092781455815566.Spec : Prop :=
  ∀ n, P8012092781455815566.a n = A014138 n

theorem P8012092781455815566.correct : P8012092781455815566.Spec := by
  intro n
  simp only [A014138]

end A014138

/-! ## A014138.P7984184417270128691

`∑[(4-6/(n+1))*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A014138.P7984184417270128691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P7984184417270128691

namespace A014138

/-- `∑[(4-6/(n+1))*a(n-1)]` -/
def P7984184417270128691.Spec : Prop :=
  ∀ n, P7984184417270128691.a n = (A014138 n : ℚ)

end A014138

/-! ## A014138.P76524361190693514

`1-A106271(n)`
-/

namespace A014138.P76524361190693514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106271 n

end

end A014138.P76524361190693514

namespace A014138

/-- `1-A106271(n)` -/
def P76524361190693514.Spec : Prop :=
  ∀ n, P76524361190693514.a n = A014138 n

theorem P76524361190693514.correct : P76524361190693514.Spec := by
  intro n
  simp only [A014138, Nat.add_sub_cancel, A014138.P76524361190693514.a, A014138.P8012092781455815566.a, A014137, A014137.P1978746088953100721.a, A106271, A106271.P8734074727395476678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014138

/-! ## A014138.P18025463114041248146

`abs(A099324(n+1))`
-/

namespace A014138.P18025463114041248146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099324 (n + 1)|

end

end A014138.P18025463114041248146

namespace A014138

/-- `abs(A099324(n+1))` -/
def P18025463114041248146.Spec : Prop :=
  ∀ n, P18025463114041248146.a n = A014138 n

end A014138

/-! ## A014138.P8555227606393146299

`∑[A000108(n)]-1`
-/

namespace A014138.P8555227606393146299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P8555227606393146299

namespace A014138

/-- `∑[A000108(n)]-1` -/
def P8555227606393146299.Spec : Prop :=
  ∀ n, P8555227606393146299.a n = A014138 n

end A014138

/-! ## A014138.P4901420669854381254

`∑[A141351(n)-1]`
-/

namespace A014138.P4901420669854381254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P4901420669854381254

namespace A014138

/-- `∑[A141351(n)-1]` -/
def P4901420669854381254.Spec : Prop :=
  ∀ n, P4901420669854381254.a n = A014138 n

end A014138

/-! ## A014138.P8683583149634093857

`∑[∑{d}[n, A002996(#)]]`
-/

namespace A014138.P8683583149634093857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A002996 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P8683583149634093857

namespace A014138

/-- `∑[∑{d}[n, A002996(#)]]` -/
def P8683583149634093857.Spec : Prop :=
  ∀ n, P8683583149634093857.a n = A014138 n

end A014138

/-! ## A014138.P16060665026685774002

`A155587(n+1)-2`
-/

namespace A014138.P16060665026685774002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) - 2

end

end A014138.P16060665026685774002

namespace A014138

/-- `A155587(n+1)-2` -/
def P16060665026685774002.Spec : Prop :=
  ∀ n, P16060665026685774002.a n = A014138 n

end A014138

/-! ## A014138.P6592073225009501590

`A110199(2*n)-1`
-/

namespace A014138.P6592073225009501590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (2 * n) - 1

end

end A014138.P6592073225009501590

namespace A014138

/-- `A110199(2*n)-1` -/
def P6592073225009501590.Spec : Prop :=
  ∀ n, P6592073225009501590.a n = A014138 n

end A014138

/-! ## A014138.P18163257852615726243

`∑[abs(A168491(n))]-1`
-/

namespace A014138.P18163257852615726243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P18163257852615726243

namespace A014138

/-- `∑[abs(A168491(n))]-1` -/
def P18163257852615726243.Spec : Prop :=
  ∀ n, P18163257852615726243.a n = A014138 n

end A014138

/-! ## A014138.P1800824215719132903

`∑[abs(A106181(2*n))]`
-/

namespace A014138.P1800824215719132903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106181 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P1800824215719132903

namespace A014138

/-- `∑[abs(A106181(2*n))]` -/
def P1800824215719132903.Spec : Prop :=
  ∀ n, P1800824215719132903.a n = A014138 n

end A014138

/-! ## A014138.P15127527103263713917

`A166588(Δ[n²])-2`
-/

namespace A014138.P15127527103263713917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A014138.P15127527103263713917

namespace A014138

/-- `A166588(Δ[n²])-2` -/
def P15127527103263713917.Spec : Prop :=
  ∀ n, P15127527103263713917.a n = A014138 n

end A014138

/-! ## A014138.P7962447915086052140

`∑[record[A126120(n+1)]]`
-/

namespace A014138.P7962447915086052140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P7962447915086052140

namespace A014138

/-- `∑[record[A126120(n+1)]]` -/
def P7962447915086052140.Spec : Prop :=
  ∀ n, P7962447915086052140.a n = A014138 n

end A014138

/-! ## A014138.P4824648307036949449

`∑[record[A097331(n+2)]]`
-/

namespace A014138.P4824648307036949449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P4824648307036949449

namespace A014138

/-- `∑[record[A097331(n+2)]]` -/
def P4824648307036949449.Spec : Prop :=
  ∀ n, P4824648307036949449.a n = A014138 n

end A014138

/-! ## A014138.P5833869072745063852

`∑[record[A329687(n+2)]]`
-/

namespace A014138.P5833869072745063852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014138.P5833869072745063852

namespace A014138

/-- `∑[record[A329687(n+2)]]` -/
def P5833869072745063852.Spec : Prop :=
  ∀ n, P5833869072745063852.a n = A014138 n

end A014138

/-! ## A014138.P5133079506620874979

`∑[A120588(n+1)]-1`
-/

namespace A014138.P5133079506620874979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P5133079506620874979

namespace A014138

/-- `∑[A120588(n+1)]-1` -/
def P5133079506620874979.Spec : Prop :=
  ∀ n, P5133079506620874979.a n = A014138 n

end A014138

/-! ## A014138.P6510262001818404860

`∑[A120304(n)+2]-1`
-/

namespace A014138.P6510262001818404860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P6510262001818404860

namespace A014138

/-- `∑[A120304(n)+2]-1` -/
def P6510262001818404860.Spec : Prop :=
  ∀ n, P6510262001818404860.a n = A014138 n

end A014138

/-! ## A014138.P14480136523088292117

`∑[A028303(2*n)]-1`
-/

namespace A014138.P14480136523088292117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P14480136523088292117

namespace A014138

/-- `∑[A028303(2*n)]-1` -/
def P14480136523088292117.Spec : Prop :=
  ∀ n, P14480136523088292117.a n = A014138 n

end A014138

/-! ## A014138.P16521361039111539547

`∑[A028304(2*n)]-1`
-/

namespace A014138.P16521361039111539547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P16521361039111539547

namespace A014138

/-- `∑[A028304(2*n)]-1` -/
def P16521361039111539547.Spec : Prop :=
  ∀ n, P16521361039111539547.a n = A014138 n

end A014138

/-! ## A014138.P16640303020387011052

`∑[A126120(2*n)]-1`
-/

namespace A014138.P16640303020387011052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014138.P16640303020387011052

namespace A014138

/-- `∑[A126120(2*n)]-1` -/
def P16640303020387011052.Spec : Prop :=
  ∀ n, P16640303020387011052.a n = A014138 n

end A014138

/-!
# A014139: Inverse of 130th cyclotomic polynomial.

The programs for A014139, there is no canonical definition to state claims against.
-/

/-! ## A014139.P2363383763565101522

`A014074(n)*A033999(n)`
-/

namespace A014139.P2363383763565101522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014074 n * A033999 n

end

end A014139.P2363383763565101522

/-!
# A014140: Apply partial sum operator twice to Catalan numbers.

The programs for A014140, the canonical program `A014140.P3701611324340069420` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014140 has offset 0).

The definition of A014140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014140.P8468227655268259857

`∑[∑[(4-6/(n+1))*a(n-1)]]` with `a(0)=1`
-/

namespace A014140.P8468227655268259857
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P8468227655268259857

namespace A014140

/-- `∑[∑[(4-6/(n+1))*a(n-1)]]` -/
def P8468227655268259857.Spec : Prop :=
  ∀ n, P8468227655268259857.a n = (A014140 n : ℚ)

end A014140

/-! ## A014140.P3701611324340069420

`∑[A014137(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014140

/-- `∑[A014137(n)]` -/
def P3701611324340069420.Spec : Prop :=
  ∀ n, P3701611324340069420.a n = A014140 n

theorem P3701611324340069420.correct : P3701611324340069420.Spec := by
  intro n
  simp only [A014140]

end A014140

/-! ## A014140.P15134917151697373709

`A294790(n)+n`
-/

namespace A014140.P15134917151697373709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 n + (n : ℤ)

end

end A014140.P15134917151697373709

namespace A014140

/-- `A294790(n)+n` -/
def P15134917151697373709.Spec : Prop :=
  ∀ n, P15134917151697373709.a n = A014140 n

theorem P15134917151697373709.correct : P15134917151697373709.Spec := by
  intro n
  simp only [A014140, Nat.add_sub_cancel, A014140.P15134917151697373709.a, A014140.P3701611324340069420.f1, A014140.P3701611324340069420.a, A014137, A014137.P1978746088953100721.a, A294790, A294790.P1762533073326159722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014140

/-! ## A014140.P3045023502134163122

`∑[∑[A000108(n)]]`
-/

namespace A014140.P3045023502134163122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P3045023502134163122

namespace A014140

/-- `∑[∑[A000108(n)]]` -/
def P3045023502134163122.Spec : Prop :=
  ∀ n, P3045023502134163122.a n = A014140 n

end A014140

/-! ## A014140.P16204700435210761445

`∑[record[A097607(n)]]`
-/

namespace A014140.P16204700435210761445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P16204700435210761445

namespace A014140

/-- `∑[record[A097607(n)]]` -/
def P16204700435210761445.Spec : Prop :=
  ∀ n, P16204700435210761445.a n = A014140 n

end A014140

/-! ## A014140.P14839796101593730287

`∑[A014138(n)+1]`
-/

namespace A014140.P14839796101593730287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P14839796101593730287

namespace A014140

/-- `∑[A014138(n)+1]` -/
def P14839796101593730287.Spec : Prop :=
  ∀ n, P14839796101593730287.a n = A014140 n

theorem P14839796101593730287.correct : P14839796101593730287.Spec := by
  intro n
  simp only [A014140, Nat.add_sub_cancel, A014140.P14839796101593730287.f1, A014140.P14839796101593730287.a, A014140.P3701611324340069420.f1, A014140.P3701611324340069420.a, A014137, A014137.P1978746088953100721.a, A014138, A014138.P8012092781455815566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014140

/-! ## A014140.P1389555262304727533

`∑[2-A106271(n)]`
-/

namespace A014140.P1389555262304727533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P1389555262304727533

namespace A014140

/-- `∑[2-A106271(n)]` -/
def P1389555262304727533.Spec : Prop :=
  ∀ n, P1389555262304727533.a n = A014140 n

theorem P1389555262304727533.correct : P1389555262304727533.Spec := by
  intro n
  simp only [A014140, Nat.add_sub_cancel, A014140.P1389555262304727533.f1, A014140.P1389555262304727533.a, A014140.P3701611324340069420.f1, A014140.P3701611324340069420.a, A014137, A014137.P1978746088953100721.a, A106271, A106271.P8734074727395476678.a, A014138, A014138.P8012092781455815566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014140

/-! ## A014140.P1698112940135921849

`∑[A110199(2*n)]`
-/

namespace A014140.P1698112940135921849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P1698112940135921849

namespace A014140

/-- `∑[A110199(2*n)]` -/
def P1698112940135921849.Spec : Prop :=
  ∀ n, P1698112940135921849.a n = A014140 n

end A014140

/-! ## A014140.P10555910320502694064

`∑[∑[abs(A168491(n))]]`
-/

namespace A014140.P10555910320502694064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P10555910320502694064

namespace A014140

/-- `∑[∑[abs(A168491(n))]]` -/
def P10555910320502694064.Spec : Prop :=
  ∀ n, P10555910320502694064.a n = A014140 n

end A014140

/-! ## A014140.P14597497028251015156

`∑[∑[A120588(n+1)]]`
-/

namespace A014140.P14597497028251015156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P14597497028251015156

namespace A014140

/-- `∑[∑[A120588(n+1)]]` -/
def P14597497028251015156.Spec : Prop :=
  ∀ n, P14597497028251015156.a n = A014140 n

end A014140

/-! ## A014140.P1840433970386176684

`∑[∑[A120304(n)+2]]`
-/

namespace A014140.P1840433970386176684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P1840433970386176684

namespace A014140

/-- `∑[∑[A120304(n)+2]]` -/
def P1840433970386176684.Spec : Prop :=
  ∀ n, P1840433970386176684.a n = A014140 n

end A014140

/-! ## A014140.P5662491155888043302

`∑[∑[A028303(2*n)]]`
-/

namespace A014140.P5662491155888043302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P5662491155888043302

namespace A014140

/-- `∑[∑[A028303(2*n)]]` -/
def P5662491155888043302.Spec : Prop :=
  ∀ n, P5662491155888043302.a n = A014140 n

end A014140

/-! ## A014140.P5789905544833658363

`∑[∑[A028304(2*n)]]`
-/

namespace A014140.P5789905544833658363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P5789905544833658363

namespace A014140

/-- `∑[∑[A028304(2*n)]]` -/
def P5789905544833658363.Spec : Prop :=
  ∀ n, P5789905544833658363.a n = A014140 n

end A014140

/-! ## A014140.P9884883692051875069

`∑[∑[A126120(2*n)]]`
-/

namespace A014140.P9884883692051875069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P9884883692051875069

namespace A014140

/-- `∑[∑[A126120(2*n)]]` -/
def P9884883692051875069.Spec : Prop :=
  ∀ n, P9884883692051875069.a n = A014140 n

end A014140

/-! ## A014140.P6958746381974522807

`∑[∑[A126324(2*n)]]`
-/

namespace A014140.P6958746381974522807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P6958746381974522807

namespace A014140

/-- `∑[∑[A126324(2*n)]]` -/
def P6958746381974522807.Spec : Prop :=
  ∀ n, P6958746381974522807.a n = A014140 n

end A014140

/-! ## A014140.P16518780345396091580

`∑[∑[A208355(2*n)]]`
-/

namespace A014140.P16518780345396091580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P16518780345396091580

namespace A014140

/-- `∑[∑[A208355(2*n)]]` -/
def P16518780345396091580.Spec : Prop :=
  ∀ n, P16518780345396091580.a n = A014140 n

end A014140

/-! ## A014140.P17135516444198943554

`∑[∑[A141364(n)]+n]`
-/

namespace A014140.P17135516444198943554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P17135516444198943554

namespace A014140

/-- `∑[∑[A141364(n)]+n]` -/
def P17135516444198943554.Spec : Prop :=
  ∀ n, P17135516444198943554.a n = A014140 n

end A014140

/-! ## A014140.P10084537466730568730

`∑[∑[A246604(n)+n]]`
-/

namespace A014140.P10084537466730568730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P10084537466730568730

namespace A014140

/-- `∑[∑[A246604(n)+n]]` -/
def P10084537466730568730.Spec : Prop :=
  ∀ n, P10084537466730568730.a n = A014140 n

end A014140

/-! ## A014140.P10238907684112763112

`∑[∑[A141351(n)]-n]`
-/

namespace A014140.P10238907684112763112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P10238907684112763112

namespace A014140

/-- `∑[∑[A141351(n)]-n]` -/
def P10238907684112763112.Spec : Prop :=
  ∀ n, P10238907684112763112.a n = A014140 n

end A014140

/-!
# A014141: Inverse of 132nd cyclotomic polynomial.

The programs for A014141, there is no canonical definition to state claims against.
-/

/-! ## A014141.P11434451871658220931

`A014207(A006368(n))`
-/

namespace A014141.P11434451871658220931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014207 (A006368 n).toNat

end

end A014141.P11434451871658220931

/-!
# A014142: Inverse of 133rd cyclotomic polynomial.

The programs for A014142, there is no canonical definition to state claims against.
-/

/-! ## A014142.P8685699110957602599

`A014275(n)*A033999(n)`
-/

namespace A014142.P8685699110957602599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014275 n * A033999 n

end

end A014142.P8685699110957602599

/-!
# A014143: Partial sums of A014138.

The programs for A014143, the canonical program `A014143.P8732578122342877652` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014143 has offset 0).

The definition of A014143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014143.P18325400931498751172

`record[A097877(n)]`
-/

namespace A014143.P18325400931498751172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014143.P18325400931498751172

namespace A014143

/-- `record[A097877(n)]` -/
def P18325400931498751172.Spec : Prop :=
  ∀ n, P18325400931498751172.a n = A014143 n

end A014143

/-! ## A014143.P8732578122342877652

`∑[A014138(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014143

/-- `∑[A014138(n+1)]` -/
def P8732578122342877652.Spec : Prop :=
  ∀ n, P8732578122342877652.a n = A014143 n

theorem P8732578122342877652.correct : P8732578122342877652.Spec := by
  intro n
  simp only [A014143]

end A014143

/-! ## A014143.P282062333511089177

`∑[record[abs(A099324(n))]]`
-/

namespace A014143.P282062333511089177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099324 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P282062333511089177

namespace A014143

/-- `∑[record[abs(A099324(n))]]` -/
def P282062333511089177.Spec : Prop :=
  ∀ n, P282062333511089177.a n = A014143 n

end A014143

/-! ## A014143.P1110710151622034633

`∑[∑[∑[A071724(n)]]]`
-/

namespace A014143.P1110710151622034633
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P1110710151622034633

namespace A014143

/-- `∑[∑[∑[A071724(n)]]]` -/
def P1110710151622034633.Spec : Prop :=
  ∀ n, P1110710151622034633.a n = A014143 n

end A014143

/-! ## A014143.P13469158688928620437

`∑[∑[record[A097331(n)]]]`
-/

namespace A014143.P13469158688928620437
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P13469158688928620437

namespace A014143

/-- `∑[∑[record[A097331(n)]]]` -/
def P13469158688928620437.Spec : Prop :=
  ∀ n, P13469158688928620437.a n = A014143 n

end A014143

/-! ## A014143.P9620896612288997961

`∑[∑[record[A126120(n)]]]`
-/

namespace A014143.P9620896612288997961
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P9620896612288997961

namespace A014143

/-- `∑[∑[record[A126120(n)]]]` -/
def P9620896612288997961.Spec : Prop :=
  ∀ n, P9620896612288997961.a n = A014143 n

end A014143

/-! ## A014143.P1615713789403473107

`A294790(n+1)-1`
-/

namespace A014143.P1615713789403473107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 (n + 1) - 1

end

end A014143.P1615713789403473107

namespace A014143

/-- `A294790(n+1)-1` -/
def P1615713789403473107.Spec : Prop :=
  ∀ n, P1615713789403473107.a n = A014143 n

end A014143

/-! ## A014143.P11863823199123747853

`∑[abs(A099324(n+2))]`
-/

namespace A014143.P11863823199123747853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099324 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P11863823199123747853

namespace A014143

/-- `∑[abs(A099324(n+2))]` -/
def P11863823199123747853.Spec : Prop :=
  ∀ n, P11863823199123747853.a n = A014143 n

end A014143

/-! ## A014143.P17894322365748451023

`∑[∑[A000108(n+1)]]`
-/

namespace A014143.P17894322365748451023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P17894322365748451023

namespace A014143

/-- `∑[∑[A000108(n+1)]]` -/
def P17894322365748451023.Spec : Prop :=
  ∀ n, P17894322365748451023.a n = A014143 n

end A014143

/-! ## A014143.P13759250275489480306

`∑[∑[A120588(n+2)]]`
-/

namespace A014143.P13759250275489480306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P13759250275489480306

namespace A014143

/-- `∑[∑[A120588(n+2)]]` -/
def P13759250275489480306.Spec : Prop :=
  ∀ n, P13759250275489480306.a n = A014143 n

end A014143

/-! ## A014143.P2619944102993090109

`∑[Δ[A014140(n)]-1]`
-/

namespace A014143.P2619944102993090109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014140 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P2619944102993090109

namespace A014143

/-- `∑[Δ[A014140(n)]-1]` -/
def P2619944102993090109.Spec : Prop :=
  ∀ n, P2619944102993090109.a n = A014143 n

end A014143

/-! ## A014143.P8950518702088485441

`∑[∑[A026008(2*n)]]`
-/

namespace A014143.P8950518702088485441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P8950518702088485441

namespace A014143

/-- `∑[∑[A026008(2*n)]]` -/
def P8950518702088485441.Spec : Prop :=
  ∀ n, P8950518702088485441.a n = A014143 n

end A014143

/-! ## A014143.P9796745815237880949

`∑[A014137(n+1)-1]`
-/

namespace A014143.P9796745815237880949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P9796745815237880949

namespace A014143

/-- `∑[A014137(n+1)-1]` -/
def P9796745815237880949.Spec : Prop :=
  ∀ n, P9796745815237880949.a n = A014143 n

end A014143

/-! ## A014143.P10466570935660382951

`∑[1-A106271(n+1)]`
-/

namespace A014143.P10466570935660382951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P10466570935660382951

namespace A014143

/-- `∑[1-A106271(n+1)]` -/
def P10466570935660382951.Spec : Prop :=
  ∀ n, P10466570935660382951.a n = A014143 n

theorem P10466570935660382951.correct : P10466570935660382951.Spec := by
  intro n
  simp only [A014143, Nat.add_sub_cancel, A014143.P10466570935660382951.f1, A014143.P10466570935660382951.a, A014143.P8732578122342877652.f1, A014143.P8732578122342877652.a, A014138, A014138.P8012092781455815566.a, A106271, A106271.P8734074727395476678.a, A014137, A014137.P1978746088953100721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014143

/-! ## A014143.P11604433096279617653

`∑[A155587(n+2)-2]`
-/

namespace A014143.P11604433096279617653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P11604433096279617653

namespace A014143

/-- `∑[A155587(n+2)-2]` -/
def P11604433096279617653.Spec : Prop :=
  ∀ n, P11604433096279617653.a n = A014143 n

end A014143

/-! ## A014143.P6916083612335220255

`Δ[A014151(n)]-(n+2)`
-/

namespace A014143.P6916083612335220255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A014143.P6916083612335220255

namespace A014143

/-- `Δ[A014151(n)]-(n+2)` -/
def P6916083612335220255.Spec : Prop :=
  ∀ n, P6916083612335220255.a n = A014143 n

end A014143

/-! ## A014143.P13699375666190099862

`∑[∑[abs(A168491(n+1))]]`
-/

namespace A014143.P13699375666190099862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P13699375666190099862

namespace A014143

/-- `∑[∑[abs(A168491(n+1))]]` -/
def P13699375666190099862.Spec : Prop :=
  ∀ n, P13699375666190099862.a n = A014143 n

end A014143

/-! ## A014143.P4665050344474479051

`∑[∑[abs(A129996(2*n))]]`
-/

namespace A014143.P4665050344474479051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129996 (2 * n)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P4665050344474479051

namespace A014143

/-- `∑[∑[abs(A129996(2*n))]]` -/
def P4665050344474479051.Spec : Prop :=
  ∀ n, P4665050344474479051.a n = A014143 n

end A014143

/-! ## A014143.P13631419352485137188

`A014140(n+1)-(n+2)`
-/

namespace A014143.P13631419352485137188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014140 (n + 1) - (n + 2 : ℤ)

end

end A014143.P13631419352485137188

namespace A014143

/-- `A014140(n+1)-(n+2)` -/
def P13631419352485137188.Spec : Prop :=
  ∀ n, P13631419352485137188.a n = A014143 n

end A014143

/-! ## A014143.P117735130694895289

`∑[∑[A120304(n+1)+2]]`
-/

namespace A014143.P117735130694895289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014143.P117735130694895289

namespace A014143

/-- `∑[∑[A120304(n+1)+2]]` -/
def P117735130694895289.Spec : Prop :=
  ∀ n, P117735130694895289.a n = A014143 n

end A014143

/-!
# A014144: Apply partial sum operator twice to factorials.

The programs for A014144, there is no canonical definition to state claims against.
-/

/-! ## A014144.P14907442622868913440

`∑[∑[abs(1-n)!]-1]`
-/

namespace A014144.P14907442622868913440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P14907442622868913440

/-! ## A014144.P18074226853186838419

`∑[a(n-1)+(n-1)!]` with `a(0)=0`
-/

namespace A014144.P18074226853186838419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P18074226853186838419

/-! ## A014144.P10473317795242982559

`∑[∑[(n-1)*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A014144.P10473317795242982559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  ((n : ℤ) - 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P10473317795242982559

/-! ## A014144.P4287782642026928327

`-∑[a(n-1)-(n-1)!]` with `a(0)=0`
-/

namespace A014144.P4287782642026928327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014144.P4287782642026928327

/-! ## A014144.P7103115114556557634

`∑[∑[∑{d}[n, (n-1)!*C(#, n)]]]`
-/

namespace A014144.P7103115114556557634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.factorial ((n : ℤ) - 1).toNat * Nat.choose d n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P7103115114556557634

/-! ## A014144.P17010302516232736540

`∑[∑[(n-and(1, a(n-1))!)!]]` with `a(0)=0`
-/

namespace A014144.P17010302516232736540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.factorial ((n : ℤ) - (Nat.factorial (Nat.land 1 (f2 (n - 1))) : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P17010302516232736540

/-! ## A014144.P15636594116759428102

`n*(a(n-1)-a(n-2))+1` with `a(0)=0, a(1)=1`
-/

namespace A014144.P15636594116759428102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * (a (n - 1) - a (n - 2)) + 1

end

end A014144.P15636594116759428102

/-! ## A014144.P10722246014945868784

`1-n*(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A014144.P10722246014945868784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (n : ℤ) * (a (n - 2) - a (n - 1))

end

end A014144.P10722246014945868784

/-! ## A014144.P9266228543731275782

`∑[∑[lcm(a(n-2)+a(n-1), a(n-1))]]` with `a(0)=0, a(1)=1`
-/

namespace A014144.P9266228543731275782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  Nat.lcm (f2 (n - 2) + f2 (n - 1)) (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P9266228543731275782

/-! ## A014144.P14847318265368547946

`∑[A003422(n)]`
-/

namespace A014144.P14847318265368547946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014144.P14847318265368547946

/-!
# A014145: Partial sums of A007489.

The programs for A014145, the canonical program `A014145.P14975082609931435986` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014145 has offset 0).

The definition of A014145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014145.P14975082609931435986

`(n+2)*a(n-1)-(2*n+1)*a(n-2)+n*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014145

/-- `(n+2)*a(n-1)-(2*n+1)*a(n-2)+n*a(n-3)` -/
def P14975082609931435986.Spec : Prop :=
  ∀ n, P14975082609931435986.a n = A014145 n

theorem P14975082609931435986.correct : P14975082609931435986.Spec := by
  intro n
  simp only [A014145]

end A014145

/-! ## A014145.P1393971229896868707

`∑[∑[n!]-1]`
-/

namespace A014145.P1393971229896868707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P1393971229896868707

namespace A014145

/-- `∑[∑[n!]-1]` -/
def P1393971229896868707.Spec : Prop :=
  ∀ n, P1393971229896868707.a n = A014145 n

end A014145

/-! ## A014145.P4945471488830608235

`∑[∑[lcm(n!, dr(n))]]`
-/

namespace A014145.P4945471488830608235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P4945471488830608235

namespace A014145

/-- `∑[∑[lcm(n!, dr(n))]]` -/
def P4945471488830608235.Spec : Prop :=
  ∀ n, (P4945471488830608235.a n : ℤ) = A014145 n

end A014145

/-! ## A014145.P5922018487915295777

`∑[xor(4, ∑[n!]+3)]`
-/

namespace A014145.P5922018487915295777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P5922018487915295777

namespace A014145

/-- `∑[xor(4, ∑[n!]+3)]` -/
def P5922018487915295777.Spec : Prop :=
  ∀ n, (P5922018487915295777.a n : ℤ) = A014145 n

end A014145

/-! ## A014145.P10995913617813589995

`∑[xor(-1, ∑[-n!])]`
-/

namespace A014145.P10995913617813589995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P10995913617813589995

namespace A014145

/-- `∑[xor(-1, ∑[-n!])]` -/
def P10995913617813589995.Spec : Prop :=
  ∀ n, P10995913617813589995.a n = A014145 n

end A014145

/-! ## A014145.P2805435372218188083

`∑[∑[n!%∑[n!]]]`
-/

namespace A014145.P2805435372218188083
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P2805435372218188083

namespace A014145

/-- `∑[∑[n!%∑[n!]]]` -/
def P2805435372218188083.Spec : Prop :=
  ∀ n, (P2805435372218188083.a n : ℤ) = A014145 n

end A014145

/-! ## A014145.P9372381302644988204

`∑[∑[n!*ceil(sin(n)²)]]`
-/

namespace A014145.P9372381302644988204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈Real.sin (n : ℝ) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P9372381302644988204

namespace A014145

/-- `∑[∑[n!*ceil(sin(n)²)]]` -/
def P9372381302644988204.Spec : Prop :=
  ∀ n, P9372381302644988204.a n = A014145 n

end A014145

/-! ## A014145.P4711612739482201497

`∑[∑[n*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A014145.P4711612739482201497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P4711612739482201497

namespace A014145

/-- `∑[∑[n*a(n-1)]]` -/
def P4711612739482201497.Spec : Prop :=
  ∀ n, (P4711612739482201497.a n : ℤ) = A014145 n

end A014145

/-! ## A014145.P12739094466053909265

`∑[∑[a(n-1)/n^(-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A014145.P12739094466053909265
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014145.P12739094466053909265

namespace A014145

/-- `∑[∑[a(n-1)/n^(-1)]]` -/
def P12739094466053909265.Spec : Prop :=
  ∀ n, P12739094466053909265.a n = (A014145 n : ℚ)

end A014145

/-! ## A014145.P8558443053887930406

`(n+1)*(a(n-1)-a(n-2))+1` with `a(0)=0, a(1)=1`
-/

namespace A014145.P8558443053887930406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) - a (n - 2)) + 1

end

end A014145.P8558443053887930406

namespace A014145

/-- `(n+1)*(a(n-1)-a(n-2))+1` -/
def P8558443053887930406.Spec : Prop :=
  ∀ n, P8558443053887930406.a n = A014145 n

end A014145

/-!
# A014146: Partial sums of A003136.

The programs for A014146, the canonical program `A014146.P7859998547790192277` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014146 has offset 0).

The definition of A014146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014146.P7859998547790192277

`∑[A003136(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A014146

/-- `∑[A003136(n+1)]` -/
def P7859998547790192277.Spec : Prop :=
  ∀ n, P7859998547790192277.a n = A014146 n

theorem P7859998547790192277.correct : P7859998547790192277.Spec := by
  intro n
  simp only [A014146]

end A014146

/-! ## A014146.P11931148259265359422

`∑[lt[0, A033716(n)]]`
-/

namespace A014146.P11931148259265359422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P11931148259265359422

namespace A014146

/-- `∑[lt[0, A033716(n)]]` -/
def P11931148259265359422.Spec : Prop :=
  ∀ n, (P11931148259265359422.a n : ℤ) = A014146 n

end A014146

/-! ## A014146.P14790309160477774826

`∑[lt[0, A119395(n)]]`
-/

namespace A014146.P14790309160477774826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P14790309160477774826

namespace A014146

/-- `∑[lt[0, A119395(n)]]` -/
def P14790309160477774826.Spec : Prop :=
  ∀ n, (P14790309160477774826.a n : ℤ) = A014146 n

end A014146

/-! ## A014146.P4195439421576971965

`∑[eq[1, A353816(n)]]`
-/

namespace A014146.P4195439421576971965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P4195439421576971965

namespace A014146

/-- `∑[eq[1, A353816(n)]]` -/
def P4195439421576971965.Spec : Prop :=
  ∀ n, (P4195439421576971965.a n : ℤ) = A014146 n

theorem P4195439421576971965.correct : P4195439421576971965.Spec := by
  intro n
  simp only [A014146, Nat.add_sub_cancel, A014146.P4195439421576971965.f2, A014146.P4195439421576971965.f3, A014146.P4195439421576971965.f1, A014146.P4195439421576971965.a, A014146.P7859998547790192277.f1, A014146.P7859998547790192277.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A076110, A076110.P10148523856418061428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A014146

/-! ## A014146.P7446734049711317

`∑[A270050(n+1)/2]`
-/

namespace A014146.P7446734049711317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270050 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P7446734049711317

namespace A014146

/-- `∑[A270050(n+1)/2]` -/
def P7446734049711317.Spec : Prop :=
  ∀ n, P7446734049711317.a n = (A014146 n : ℚ)

end A014146

/-! ## A014146.P11299144206740677463

`∑[A270672(n+1)/3]`
-/

namespace A014146.P11299144206740677463
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270672 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P11299144206740677463

namespace A014146

/-- `∑[A270672(n+1)/3]` -/
def P11299144206740677463.Spec : Prop :=
  ∀ n, P11299144206740677463.a n = (A014146 n : ℚ)

end A014146

/-! ## A014146.P14593630092077887599

`∑[A270248(n+1)/4]`
-/

namespace A014146.P14593630092077887599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270248 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P14593630092077887599

namespace A014146

/-- `∑[A270248(n+1)/4]` -/
def P14593630092077887599.Spec : Prop :=
  ∀ n, P14593630092077887599.a n = (A014146 n : ℚ)

theorem P14593630092077887599.correct : P14593630092077887599.Spec := by
  intro n
  simp only [A014146, Nat.add_sub_cancel, A014146.P14593630092077887599.f1, A014146.P14593630092077887599.a, A014146.P7859998547790192277.f1, A014146.P7859998547790192277.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A270050, A270050.P15374850051776029815.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014146

/-! ## A014146.P13934792910661997479

`∑[A270248(n+1)-A270672(n+1)]`
-/

namespace A014146.P13934792910661997479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 1) - A270672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P13934792910661997479

namespace A014146

/-- `∑[A270248(n+1)-A270672(n+1)]` -/
def P13934792910661997479.Spec : Prop :=
  ∀ n, P13934792910661997479.a n = A014146 n

theorem P13934792910661997479.correct : P13934792910661997479.Spec := by
  intro n
  simp only [A014146, Nat.add_sub_cancel, A014146.P13934792910661997479.f1, A014146.P13934792910661997479.a, A014146.P7859998547790192277.f1, A014146.P7859998547790192277.a, A003136, A003136.P5015395237831385942.f1, A003136.P5015395237831385942.f2, A003136.P5015395237831385942.a, A270248, A270248.P13305958007717822557.a, A270672, A270672.P7077653201386938758.a, A270050, A270050.P15374850051776029815.a, A353816, A353816.P1702208988910723846.f1, A353816.P1702208988910723846.a, A132111, A132111.P3713491471241087217.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014146

/-! ## A014146.P17364072354645212841

`∑[lt[0, A004016(n)]]`
-/

namespace A014146.P17364072354645212841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P17364072354645212841

namespace A014146

/-- `∑[lt[0, A004016(n)]]` -/
def P17364072354645212841.Spec : Prop :=
  ∀ n, (P17364072354645212841.a n : ℤ) = A014146 n

end A014146

/-! ## A014146.P8810858413708104068

`∑[lt[0, A088534(n)]]`
-/

namespace A014146.P8810858413708104068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P8810858413708104068

namespace A014146

/-- `∑[lt[0, A088534(n)]]` -/
def P8810858413708104068.Spec : Prop :=
  ∀ n, (P8810858413708104068.a n : ℤ) = A014146 n

end A014146

/-! ## A014146.P16449549927082714685

`∑[lt[0, A005928(n)²]]`
-/

namespace A014146.P16449549927082714685
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P16449549927082714685

namespace A014146

/-- `∑[lt[0, A005928(n)²]]` -/
def P16449549927082714685.Spec : Prop :=
  ∀ n, (P16449549927082714685.a n : ℤ) = A014146 n

end A014146

/-! ## A014146.P10530162485431211757

`∑[lt[0, A227354(n)]]`
-/

namespace A014146.P10530162485431211757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227354 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P10530162485431211757

namespace A014146

/-- `∑[lt[0, A227354(n)]]` -/
def P10530162485431211757.Spec : Prop :=
  ∀ n, (P10530162485431211757.a n : ℤ) = A014146 n

end A014146

/-! ## A014146.P13519734853358852970

`∑[lt[A007706(2*(n+1)), A005928(3*n)]]`
-/

namespace A014146.P13519734853358852970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014146.P13519734853358852970

namespace A014146

/-- `∑[lt[A007706(2*(n+1)), A005928(3*n)]]` -/
def P13519734853358852970.Spec : Prop :=
  ∀ n, (P13519734853358852970.a n : ℤ) = A014146 n

end A014146

/-!
# A014147: Inverse of 138th cyclotomic polynomial.

The programs for A014147, there is no canonical definition to state claims against.
-/

/-! ## A014147.P15190886355979127758

`A014078(n)*A033999(n)`
-/

namespace A014147.P15190886355979127758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014078 n * A033999 n

end

end A014147.P15190886355979127758

/-!
# A014148: a(n) = Sum_{m=1..n} Sum_{k=1..m} prime(k).

The programs for A014148, the canonical program `A014148.P5588733548531681271` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014148 has offset 1).

The definition of A014148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014148.P13428386177537642122

`∑[A007504(n+1)]`
-/

namespace A014148.P13428386177537642122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P13428386177537642122

namespace A014148

/-- `∑[A007504(n+1)]` -/
def P13428386177537642122.Spec : Prop :=
  ∀ n, P13428386177537642122.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P5588733548531681271

`∑[∑[A000040(n+1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014148

/-- `∑[∑[A000040(n+1)]]` -/
def P5588733548531681271.Spec : Prop :=
  ∀ n, P5588733548531681271.a n = A014148 (n + 1)

theorem P5588733548531681271.correct : P5588733548531681271.Spec := by
  intro n
  simp only [A014148, Nat.add_sub_cancel]

end A014148

/-! ## A014148.P16506518823538494662

`∑[A237589(n+1)+1]`
-/

namespace A014148.P16506518823538494662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P16506518823538494662

namespace A014148

/-- `∑[A237589(n+1)+1]` -/
def P16506518823538494662.Spec : Prop :=
  ∀ n, P16506518823538494662.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P9095411160622082246

`∑[A362419(n+1)/2]`
-/

namespace A014148.P9095411160622082246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362419 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P9095411160622082246

namespace A014148

/-- `∑[A362419(n+1)/2]` -/
def P9095411160622082246.Spec : Prop :=
  ∀ n, P9095411160622082246.a n = (A014148 (n + 1) : ℚ)

end A014148

/-! ## A014148.P11927236312053511307

`∑[∑[abs(A273960(n+1))]]`
-/

namespace A014148.P11927236312053511307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P11927236312053511307

namespace A014148

/-- `∑[∑[abs(A273960(n+1))]]` -/
def P11927236312053511307.Spec : Prop :=
  ∀ n, P11927236312053511307.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P10882859104884790929

`∑[∑[sqrt(A001248(n+1))]]`
-/

namespace A014148.P10882859104884790929
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P10882859104884790929

namespace A014148

/-- `∑[∑[sqrt(A001248(n+1))]]` -/
def P10882859104884790929.Spec : Prop :=
  ∀ n, P10882859104884790929.a n = (A014148 (n + 1) : ℝ)

end A014148

/-! ## A014148.P4113090818819632303

`∑[∑[A006005(n+1)]+1]`
-/

namespace A014148.P4113090818819632303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P4113090818819632303

namespace A014148

/-- `∑[∑[A006005(n+1)]+1]` -/
def P4113090818819632303.Spec : Prop :=
  ∀ n, P4113090818819632303.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P3865376548171635777

`∑[∑[A006093(n+1)+1]]`
-/

namespace A014148.P3865376548171635777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P3865376548171635777

namespace A014148

/-- `∑[∑[A006093(n+1)+1]]` -/
def P3865376548171635777.Spec : Prop :=
  ∀ n, P3865376548171635777.a n = A014148 (n + 1)

theorem P3865376548171635777.correct : P3865376548171635777.Spec := by
  intro n
  simp only [A014148, Nat.add_sub_cancel, A014148.P3865376548171635777.f2, A014148.P3865376548171635777.f1, A014148.P3865376548171635777.a, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014148

/-! ## A014148.P10512432721613202685

`∑[∑[A008864(n+1)-1]]`
-/

namespace A014148.P10512432721613202685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P10512432721613202685

namespace A014148

/-- `∑[∑[A008864(n+1)-1]]` -/
def P10512432721613202685.Spec : Prop :=
  ∀ n, P10512432721613202685.a n = A014148 (n + 1)

theorem P10512432721613202685.correct : P10512432721613202685.Spec := by
  intro n
  simp only [A014148, Nat.add_sub_cancel, A014148.P10512432721613202685.f2, A014148.P10512432721613202685.f1, A014148.P10512432721613202685.a, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014148

/-! ## A014148.P8762854697372626480

`∑[∑[A040976(n+1)+2]]`
-/

namespace A014148.P8762854697372626480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P8762854697372626480

namespace A014148

/-- `∑[∑[A040976(n+1)+2]]` -/
def P8762854697372626480.Spec : Prop :=
  ∀ n, P8762854697372626480.a n = A014148 (n + 1)

theorem P8762854697372626480.correct : P8762854697372626480.Spec := by
  intro n
  simp only [A014148, Nat.add_sub_cancel, A014148.P8762854697372626480.f2, A014148.P8762854697372626480.f1, A014148.P8762854697372626480.a, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014148

/-! ## A014148.P5971584395834064422

`∑[∑[A052147(n+1)-2]]`
-/

namespace A014148.P5971584395834064422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P5971584395834064422

namespace A014148

/-- `∑[∑[A052147(n+1)-2]]` -/
def P5971584395834064422.Spec : Prop :=
  ∀ n, P5971584395834064422.a n = A014148 (n + 1)

theorem P5971584395834064422.correct : P5971584395834064422.Spec := by
  intro n
  simp only [A014148, Nat.add_sub_cancel, A014148.P5971584395834064422.f2, A014148.P5971584395834064422.f1, A014148.P5971584395834064422.a, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014148

/-! ## A014148.P4808589407406036055

`∑[∑[A014692(n+1)+n]]`
-/

namespace A014148.P4808589407406036055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P4808589407406036055

namespace A014148

/-- `∑[∑[A014692(n+1)+n]]` -/
def P4808589407406036055.Spec : Prop :=
  ∀ n, P4808589407406036055.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P5731593473316397768

`A061802(n)+a(n-2)` with `a(0)=2, a(1)=7`
-/

namespace A014148.P5731593473316397768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A061802 n + a (n - 2)

end

end A014148.P5731593473316397768

namespace A014148

/-- `A061802(n)+a(n-2)` -/
def P5731593473316397768.Spec : Prop :=
  ∀ n, P5731593473316397768.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P8117401098127265049

`∑[A101301(n+1)+n+1]`
-/

namespace A014148.P8117401098127265049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P8117401098127265049

namespace A014148

/-- `∑[A101301(n+1)+n+1]` -/
def P8117401098127265049.Spec : Prop :=
  ∀ n, P8117401098127265049.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P3067316771208940073

`∑[A060939(n+1)-(n+1)]`
-/

namespace A014148.P3067316771208940073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P3067316771208940073

namespace A014148

/-- `∑[A060939(n+1)-(n+1)]` -/
def P3067316771208940073.Spec : Prop :=
  ∀ n, P3067316771208940073.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P9824697084581327171

`∑[A167214(n+1)/(n+1)]`
-/

namespace A014148.P9824697084581327171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167214 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P9824697084581327171

namespace A014148

/-- `∑[A167214(n+1)/(n+1)]` -/
def P9824697084581327171.Spec : Prop :=
  ∀ n, P9824697084581327171.a n = (A014148 (n + 1) : ℚ)

end A014148

/-! ## A014148.P8506369205977404108

`A023662(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A014148.P8506369205977404108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A023662 (n + 1) - a (n - 1)

end

end A014148.P8506369205977404108

namespace A014148

/-- `A023662(n+1)-a(n-1)` -/
def P8506369205977404108.Spec : Prop :=
  ∀ n, P8506369205977404108.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P13725467521956798462

`∑[A108754(n+1)+(n+1)²]`
-/

namespace A014148.P13725467521956798462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014148.P13725467521956798462

namespace A014148

/-- `∑[A108754(n+1)+(n+1)²]` -/
def P13725467521956798462.Spec : Prop :=
  ∀ n, P13725467521956798462.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P5396549187633771914

`A307673(n+1)+∑[(n+1)²]`
-/

namespace A014148.P5396549187633771914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307673 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014148.P5396549187633771914

namespace A014148

/-- `A307673(n+1)+∑[(n+1)²]` -/
def P5396549187633771914.Spec : Prop :=
  ∀ n, P5396549187633771914.a n = A014148 (n + 1)

end A014148

/-! ## A014148.P3817869086134237754

`A101301(n+1)+A023538(n+1)`
-/

namespace A014148.P3817869086134237754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) + A023538 (n + 1)

end

end A014148.P3817869086134237754

namespace A014148

/-- `A101301(n+1)+A023538(n+1)` -/
def P3817869086134237754.Spec : Prop :=
  ∀ n, P3817869086134237754.a n = A014148 (n + 1)

end A014148

/-!
# A014149: Inverse of 140th cyclotomic polynomial.

The programs for A014149, there is no canonical definition to state claims against.
-/

/-! ## A014149.P15703325065067798291

`A014289(2*n)`
-/

namespace A014149.P15703325065067798291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014289 (2 * n)

end

end A014149.P15703325065067798291

/-!
# A014150: Apply partial sum operator thrice to primes.

The programs for A014150, the canonical program `A014150.P13025670573711070586` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014150 has offset 1).

The definition of A014150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014150.P13025670573711070586

`∑[A014148(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014150

/-- `∑[A014148(n+1)]` -/
def P13025670573711070586.Spec : Prop :=
  ∀ n, P13025670573711070586.a n = A014150 (n + 1)

theorem P13025670573711070586.correct : P13025670573711070586.Spec := by
  intro n
  simp only [A014150, Nat.add_sub_cancel]

end A014150

/-! ## A014150.P15492567146587912922

`∑[∑[A007504(n+1)]]`
-/

namespace A014150.P15492567146587912922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P15492567146587912922

namespace A014150

/-- `∑[∑[A007504(n+1)]]` -/
def P15492567146587912922.Spec : Prop :=
  ∀ n, P15492567146587912922.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P572148892740411561

`∑[∑[∑[A000040(n+1)]]]`
-/

namespace A014150.P572148892740411561
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P572148892740411561

namespace A014150

/-- `∑[∑[∑[A000040(n+1)]]]` -/
def P572148892740411561.Spec : Prop :=
  ∀ n, P572148892740411561.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P14193777416520793590

`∑[∑[A237589(n+1)+1]]`
-/

namespace A014150.P14193777416520793590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P14193777416520793590

namespace A014150

/-- `∑[∑[A237589(n+1)+1]]` -/
def P14193777416520793590.Spec : Prop :=
  ∀ n, P14193777416520793590.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P7669583062965995662

`∑[∑[A362419(n+1)/2]]`
-/

namespace A014150.P7669583062965995662
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362419 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P7669583062965995662

namespace A014150

/-- `∑[∑[A362419(n+1)/2]]` -/
def P7669583062965995662.Spec : Prop :=
  ∀ n, P7669583062965995662.a n = (A014150 (n + 1) : ℚ)

end A014150

/-! ## A014150.P5388242648921612065

`∑[∑[∑[A006093(n+1)+1]]]`
-/

namespace A014150.P5388242648921612065
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P5388242648921612065

namespace A014150

/-- `∑[∑[∑[A006093(n+1)+1]]]` -/
def P5388242648921612065.Spec : Prop :=
  ∀ n, P5388242648921612065.a n = A014150 (n + 1)

theorem P5388242648921612065.correct : P5388242648921612065.Spec := by
  intro n
  simp only [A014150, Nat.add_sub_cancel, A014150.P5388242648921612065.f3, A014150.P5388242648921612065.f2, A014150.P5388242648921612065.f1, A014150.P5388242648921612065.a, A014150.P13025670573711070586.f1, A014150.P13025670573711070586.a, A006093, A006093.P2906174024863549003.a, A014148, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014150

/-! ## A014150.P7228905367384071987

`∑[∑[∑[A008864(n+1)-1]]]`
-/

namespace A014150.P7228905367384071987
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P7228905367384071987

namespace A014150

/-- `∑[∑[∑[A008864(n+1)-1]]]` -/
def P7228905367384071987.Spec : Prop :=
  ∀ n, P7228905367384071987.a n = A014150 (n + 1)

theorem P7228905367384071987.correct : P7228905367384071987.Spec := by
  intro n
  simp only [A014150, Nat.add_sub_cancel, A014150.P7228905367384071987.f3, A014150.P7228905367384071987.f2, A014150.P7228905367384071987.f1, A014150.P7228905367384071987.a, A014150.P13025670573711070586.f1, A014150.P13025670573711070586.a, A008864, A008864.P9177617808325052279.a, A014148, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014150

/-! ## A014150.P16921753896260392741

`∑[∑[∑[A040976(n+1)+2]]]`
-/

namespace A014150.P16921753896260392741
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P16921753896260392741

namespace A014150

/-- `∑[∑[∑[A040976(n+1)+2]]]` -/
def P16921753896260392741.Spec : Prop :=
  ∀ n, P16921753896260392741.a n = A014150 (n + 1)

theorem P16921753896260392741.correct : P16921753896260392741.Spec := by
  intro n
  simp only [A014150, Nat.add_sub_cancel, A014150.P16921753896260392741.f3, A014150.P16921753896260392741.f2, A014150.P16921753896260392741.f1, A014150.P16921753896260392741.a, A014150.P13025670573711070586.f1, A014150.P13025670573711070586.a, A014148, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014150

/-! ## A014150.P13787196517344914004

`∑[∑[∑[A014689(n+1)+1+n]]]`
-/

namespace A014150.P13787196517344914004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P13787196517344914004

namespace A014150

/-- `∑[∑[∑[A014689(n+1)+1+n]]]` -/
def P13787196517344914004.Spec : Prop :=
  ∀ n, P13787196517344914004.a n = A014150 (n + 1)

theorem P13787196517344914004.correct : P13787196517344914004.Spec := by
  intro n
  simp only [A014150, Nat.add_sub_cancel, A014150.P13787196517344914004.f3, A014150.P13787196517344914004.f2, A014150.P13787196517344914004.f1, A014150.P13787196517344914004.a, A014150.P13025670573711070586.f1, A014150.P13025670573711070586.a, A014148, A014148.P5588733548531681271.f2, A014148.P5588733548531681271.f1, A014148.P5588733548531681271.a, A014689, A014689.P3456970834266250440.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014150

/-! ## A014150.P16843269581837472252

`∑[∑[A011974(n+1)+a(n-1)]]-a(n-1)` with `a(0)=2`
-/

namespace A014150.P16843269581837472252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A011974 (n + 1) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A014150.P16843269581837472252

namespace A014150

/-- `∑[∑[A011974(n+1)+a(n-1)]]-a(n-1)` -/
def P16843269581837472252.Spec : Prop :=
  ∀ n, P16843269581837472252.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P14387433827916666020

`∑[∑[∑[A008578(n+2)]]]`
-/

namespace A014150.P14387433827916666020
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P14387433827916666020

namespace A014150

/-- `∑[∑[∑[A008578(n+2)]]]` -/
def P14387433827916666020.Spec : Prop :=
  ∀ n, P14387433827916666020.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P5524197095777966755

`∑[∑[A014284(n+2)-1]]`
-/

namespace A014150.P5524197095777966755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P5524197095777966755

namespace A014150

/-- `∑[∑[A014284(n+2)-1]]` -/
def P5524197095777966755.Spec : Prop :=
  ∀ n, P5524197095777966755.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P4226161990323798294

`∑[∑[A036439(n+2)-2]]`
-/

namespace A014150.P4226161990323798294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P4226161990323798294

namespace A014150

/-- `∑[∑[A036439(n+2)-2]]` -/
def P4226161990323798294.Spec : Prop :=
  ∀ n, P4226161990323798294.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P13363435722557768569

`∑[A023538(n+2)-(n+2)]`
-/

namespace A014150.P13363435722557768569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023538 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P13363435722557768569

namespace A014150

/-- `∑[A023538(n+2)-(n+2)]` -/
def P13363435722557768569.Spec : Prop :=
  ∀ n, P13363435722557768569.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P5196007002174440874

`A178138(n+2)-(A178138(n+1)+A014148(n+2))`
-/

namespace A014150.P5196007002174440874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178138 (n + 2) - (A178138 (n + 1) + A014148 (n + 2))

end

end A014150.P5196007002174440874

namespace A014150

/-- `A178138(n+2)-(A178138(n+1)+A014148(n+2))` -/
def P5196007002174440874.Spec : Prop :=
  ∀ n, P5196007002174440874.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P17388597625697776874

`∑[∑[∑[A158611(n+3)]]]`
-/

namespace A014150.P17388597625697776874
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P17388597625697776874

namespace A014150

/-- `∑[∑[∑[A158611(n+3)]]]` -/
def P17388597625697776874.Spec : Prop :=
  ∀ n, P17388597625697776874.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P2379753701198369765

`∑[∑[∑[record[A006530(n+2)]]]]`
-/

namespace A014150.P2379753701198369765
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P2379753701198369765

namespace A014150

/-- `∑[∑[∑[record[A006530(n+2)]]]]` -/
def P2379753701198369765.Spec : Prop :=
  ∀ n, P2379753701198369765.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P17467261019769308517

`∑[∑[∑[record[A020639(n+2)]]]]`
-/

namespace A014150.P17467261019769308517
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P17467261019769308517

namespace A014150

/-- `∑[∑[∑[record[A020639(n+2)]]]]` -/
def P17467261019769308517.Spec : Prop :=
  ∀ n, P17467261019769308517.a n = A014150 (n + 1)

end A014150

/-! ## A014150.P2086872347257402800

`∑[∑[∑[record[A000010(n+1)+1]]]]`
-/

namespace A014150.P2086872347257402800
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014150.P2086872347257402800

namespace A014150

/-- `∑[∑[∑[record[A000010(n+1)+1]]]]` -/
def P2086872347257402800.Spec : Prop :=
  ∀ n, P2086872347257402800.a n = A014150 (n + 1)

end A014150

/-!
# A014151: Apply partial sum operator thrice to Catalan numbers.

The programs for A014151, the canonical program `A014151.P8235036066763530423` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014151 has offset 0).

The definition of A014151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014151.P6169363975018220963

`∑[∑[∑[(4-6/(n+1))*a(n-1)]]]` with `a(0)=1`
-/

namespace A014151.P6169363975018220963
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  (4 - 6 / (n + 1 : ℚ)) * f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P6169363975018220963

namespace A014151

/-- `∑[∑[∑[(4-6/(n+1))*a(n-1)]]]` -/
def P6169363975018220963.Spec : Prop :=
  ∀ n, P6169363975018220963.a n = (A014151 n : ℚ)

end A014151

/-! ## A014151.P8235036066763530423

`∑[A014140(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014151

/-- `∑[A014140(n)]` -/
def P8235036066763530423.Spec : Prop :=
  ∀ n, P8235036066763530423.a n = A014151 n

theorem P8235036066763530423.correct : P8235036066763530423.Spec := by
  intro n
  simp only [A014151]

end A014151

/-! ## A014151.P8859864008411528364

`∑[∑[A014137(n)]]`
-/

namespace A014151.P8859864008411528364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P8859864008411528364

namespace A014151

/-- `∑[∑[A014137(n)]]` -/
def P8859864008411528364.Spec : Prop :=
  ∀ n, P8859864008411528364.a n = A014151 n

end A014151

/-! ## A014151.P5941204699955676027

`∑[A294790(n)+n]`
-/

namespace A014151.P5941204699955676027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294790 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P5941204699955676027

namespace A014151

/-- `∑[A294790(n)+n]` -/
def P5941204699955676027.Spec : Prop :=
  ∀ n, P5941204699955676027.a n = A014151 n

theorem P5941204699955676027.correct : P5941204699955676027.Spec := by
  intro n
  simp only [A014151, Nat.add_sub_cancel, A014151.P5941204699955676027.f1, A014151.P5941204699955676027.a, A014151.P8235036066763530423.f1, A014151.P8235036066763530423.a, A014140, A014140.P3701611324340069420.f1, A014140.P3701611324340069420.a, A294790, A294790.P1762533073326159722.a, A014137, A014137.P1978746088953100721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014151

/-! ## A014151.P6934789132091077924

`∑[∑[∑[A000108(n)]]]`
-/

namespace A014151.P6934789132091077924
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P6934789132091077924

namespace A014151

/-- `∑[∑[∑[A000108(n)]]]` -/
def P6934789132091077924.Spec : Prop :=
  ∀ n, P6934789132091077924.a n = A014151 n

end A014151

/-! ## A014151.P7930390475271980807

`∑[∑[A014138(n)+1]]`
-/

namespace A014151.P7930390475271980807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P7930390475271980807

namespace A014151

/-- `∑[∑[A014138(n)+1]]` -/
def P7930390475271980807.Spec : Prop :=
  ∀ n, P7930390475271980807.a n = A014151 n

theorem P7930390475271980807.correct : P7930390475271980807.Spec := by
  intro n
  simp only [A014151, Nat.add_sub_cancel, A014151.P7930390475271980807.f2, A014151.P7930390475271980807.f1, A014151.P7930390475271980807.a, A014151.P8235036066763530423.f1, A014151.P8235036066763530423.a, A014138, A014138.P8012092781455815566.a, A014140, A014140.P3701611324340069420.f1, A014140.P3701611324340069420.a, A014137, A014137.P1978746088953100721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014151

/-! ## A014151.P109303202608044407

`∑[∑[2-A106271(n)]]`
-/

namespace A014151.P109303202608044407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A106271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P109303202608044407

namespace A014151

/-- `∑[∑[2-A106271(n)]]` -/
def P109303202608044407.Spec : Prop :=
  ∀ n, P109303202608044407.a n = A014151 n

theorem P109303202608044407.correct : P109303202608044407.Spec := by
  intro n
  simp only [A014151, Nat.add_sub_cancel, A014151.P109303202608044407.f2, A014151.P109303202608044407.f1, A014151.P109303202608044407.a, A014151.P8235036066763530423.f1, A014151.P8235036066763530423.a, A014140, A014140.P3701611324340069420.f1, A014140.P3701611324340069420.a, A106271, A106271.P8734074727395476678.a, A014137, A014137.P1978746088953100721.a, A014138, A014138.P8012092781455815566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014151

/-! ## A014151.P13281099952418386566

`∑[∑[A110199(2*n)]]`
-/

namespace A014151.P13281099952418386566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P13281099952418386566

namespace A014151

/-- `∑[∑[A110199(2*n)]]` -/
def P13281099952418386566.Spec : Prop :=
  ∀ n, P13281099952418386566.a n = A014151 n

end A014151

/-! ## A014151.P12817885348329189981

`∑[∑[∑[A120588(n+1)]]]`
-/

namespace A014151.P12817885348329189981
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P12817885348329189981

namespace A014151

/-- `∑[∑[∑[A120588(n+1)]]]` -/
def P12817885348329189981.Spec : Prop :=
  ∀ n, P12817885348329189981.a n = A014151 n

end A014151

/-! ## A014151.P17246183257009291146

`∑[∑[∑[A028303(2*n)]]]`
-/

namespace A014151.P17246183257009291146
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P17246183257009291146

namespace A014151

/-- `∑[∑[∑[A028303(2*n)]]]` -/
def P17246183257009291146.Spec : Prop :=
  ∀ n, P17246183257009291146.a n = A014151 n

end A014151

/-! ## A014151.P15015350583764932893

`∑[∑[∑[A028304(2*n)]]]`
-/

namespace A014151.P15015350583764932893
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P15015350583764932893

namespace A014151

/-- `∑[∑[∑[A028304(2*n)]]]` -/
def P15015350583764932893.Spec : Prop :=
  ∀ n, P15015350583764932893.a n = A014151 n

end A014151

/-! ## A014151.P14082542503060058935

`∑[∑[∑[A126120(2*n)]]]`
-/

namespace A014151.P14082542503060058935
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P14082542503060058935

namespace A014151

/-- `∑[∑[∑[A126120(2*n)]]]` -/
def P14082542503060058935.Spec : Prop :=
  ∀ n, P14082542503060058935.a n = A014151 n

end A014151

/-! ## A014151.P17735489711021084411

`∑[∑[∑[A126324(2*n)]]]`
-/

namespace A014151.P17735489711021084411
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P17735489711021084411

namespace A014151

/-- `∑[∑[∑[A126324(2*n)]]]` -/
def P17735489711021084411.Spec : Prop :=
  ∀ n, P17735489711021084411.a n = A014151 n

end A014151

/-! ## A014151.P16679122142315954305

`∑[∑[∑[A208355(2*n)]]]`
-/

namespace A014151.P16679122142315954305
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P16679122142315954305

namespace A014151

/-- `∑[∑[∑[A208355(2*n)]]]` -/
def P16679122142315954305.Spec : Prop :=
  ∀ n, P16679122142315954305.a n = A014151 n

end A014151

/-! ## A014151.P10876975254837053046

`∑[∑[A155587(n+1)-1]]`
-/

namespace A014151.P10876975254837053046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P10876975254837053046

namespace A014151

/-- `∑[∑[A155587(n+1)-1]]` -/
def P10876975254837053046.Spec : Prop :=
  ∀ n, P10876975254837053046.a n = A014151 n

end A014151

/-! ## A014151.P17463401114451694856

`∑[∑[∑[A089408(2*n+1)]]]`
-/

namespace A014151.P17463401114451694856
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P17463401114451694856

namespace A014151

/-- `∑[∑[∑[A089408(2*n+1)]]]` -/
def P17463401114451694856.Spec : Prop :=
  ∀ n, P17463401114451694856.a n = A014151 n

end A014151

/-! ## A014151.P18164376257460928932

`∑[∑[∑[A097331(2*n+1)]]]`
-/

namespace A014151.P18164376257460928932
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P18164376257460928932

namespace A014151

/-- `∑[∑[∑[A097331(2*n+1)]]]` -/
def P18164376257460928932.Spec : Prop :=
  ∀ n, P18164376257460928932.a n = A014151 n

end A014151

/-! ## A014151.P18009142036888232554

`A014316(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A014151.P18009142036888232554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014316 (n + 1) - a (n - 1)

end

end A014151.P18009142036888232554

namespace A014151

/-- `A014316(n+1)-a(n-1)` -/
def P18009142036888232554.Spec : Prop :=
  ∀ n, P18009142036888232554.a n = A014151 n

end A014151

/-! ## A014151.P2081924245576295599

`∑[∑[A166588(2*(n+1))-1]]`
-/

namespace A014151.P2081924245576295599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * (n + 1)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P2081924245576295599

namespace A014151

/-- `∑[∑[A166588(2*(n+1))-1]]` -/
def P2081924245576295599.Spec : Prop :=
  ∀ n, P2081924245576295599.a n = A014151 n

end A014151

/-! ## A014151.P10388509052526281866

`∑[∑[A155051(2*n+1)/2]]`
-/

namespace A014151.P10388509052526281866
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155051 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014151.P10388509052526281866

namespace A014151

/-- `∑[∑[A155051(2*n+1)/2]]` -/
def P10388509052526281866.Spec : Prop :=
  ∀ n, P10388509052526281866.a n = (A014151 n : ℚ)

end A014151

/-!
# A014152: Inverse of 143rd cyclotomic polynomial.

The programs for A014152, there is no canonical definition to state claims against.
-/

/-! ## A014152.P15327967943955405440

`A014295(n)*A033999(n)`
-/

namespace A014152.P15327967943955405440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014295 n * A033999 n

end

end A014152.P15327967943955405440

/-!
# A014153: Expansion of 1/((1-x)^2*Product_{k>=1} (1-x^k)).

The programs for A014153, there is no canonical definition to state claims against.
-/

/-! ## A014153.P18088983634957405611

`(n+1)*A000070(n+1)-A182738(n+1)`
-/

namespace A014153.P18088983634957405611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000070 (n + 1) - A182738 (n + 1)

end

end A014153.P18088983634957405611

/-! ## A014153.P7360445838285154893

`∑[A000070(n)]`
-/

namespace A014153.P7360445838285154893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P7360445838285154893

/-! ## A014153.P7617983544170762114

`∑[∑[A000041(n)]]`
-/

namespace A014153.P7617983544170762114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P7617983544170762114

/-! ## A014153.P18393933203086900894

`∑[∑[∑[A002865(n)]]]`
-/

namespace A014153.P18393933203086900894
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P18393933203086900894

/-! ## A014153.P2162285882984066443

`∑[∑[A000065(n)+1]]`
-/

namespace A014153.P2162285882984066443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P2162285882984066443

/-! ## A014153.P9968372760192516074

`∑[∑[A139582(n)/2]]`
-/

namespace A014153.P9968372760192516074
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P9968372760192516074

/-! ## A014153.P7185480808317830385

`∑[∑[A052810(n)]-n]`
-/

namespace A014153.P7185480808317830385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P7185480808317830385

/-! ## A014153.P16488719170375488929

`∑[∑[A133041(n)-n]]`
-/

namespace A014153.P16488719170375488929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P16488719170375488929

/-! ## A014153.P4911517419354196566

`∑[A216053(n+1)-1]`
-/

namespace A014153.P4911517419354196566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P4911517419354196566

/-! ## A014153.P12219367902666905220

`∑[A058682(n)+1+n]`
-/

namespace A014153.P12219367902666905220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P12219367902666905220

/-! ## A014153.P16014999583994038001

`a(n-1)+A026905(n)+1` with `a(0)=1`
-/

namespace A014153.P16014999583994038001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026905 n + 1)

end

end A014153.P16014999583994038001

/-! ## A014153.P12492249029690712300

`∑[A000291(n)-A000097(n)]`
-/

namespace A014153.P12492249029690712300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P12492249029690712300

/-! ## A014153.P5984513821979975906

`∑[∑[A018783(n)+A000837(n)]]`
-/

namespace A014153.P5984513821979975906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P5984513821979975906

/-! ## A014153.P14406110698322646915

`∑[∑[A039900(n)+A003106(n)]]`
-/

namespace A014153.P14406110698322646915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P14406110698322646915

/-! ## A014153.P15604461118601233573

`∑[∑[A046682(n)+A000701(n)]]`
-/

namespace A014153.P15604461118601233573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n + A000701 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P15604461118601233573

/-! ## A014153.P15717993937761330135

`∑[∑[A047967(n)+A000009(n)]]`
-/

namespace A014153.P15717993937761330135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P15717993937761330135

/-! ## A014153.P3215615546402506142

`∑[∑[A027193(n)+A027187(n)]]`
-/

namespace A014153.P3215615546402506142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n + A027187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P3215615546402506142

/-! ## A014153.P8616367856650191047

`∑[∑[A167934(n)+A032741(n)]]`
-/

namespace A014153.P8616367856650191047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167934 n + A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P8616367856650191047

/-! ## A014153.P1053524977350082797

`∑[∑[A295341(n)+A000726(n)]]`
-/

namespace A014153.P1053524977350082797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014153.P1053524977350082797

/-! ## A014153.P558492057549193353

`A135348(n+1)+A024786(n+1)`
-/

namespace A014153.P558492057549193353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) + A024786 (n + 1)

end

end A014153.P558492057549193353

/-!
# A014154: Inverse of 145th cyclotomic polynomial.

The programs for A014154, there is no canonical definition to state claims against.
-/

/-! ## A014154.P17278676285271871380

`A014299(n)*A033999(n)`
-/

namespace A014154.P17278676285271871380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014299 n * A033999 n

end

end A014154.P17278676285271871380

/-!
# A014155: Sum of a nonnegative cube and a triangular number.

The programs for A014155, there is no canonical definition to state claims against.
-/

/-! ## A014155.P17246230387950509423

`comp[A014156(n+1)]`
-/

namespace A014155.P17246230387950509423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014155.P17246230387950509423

/-! ## A014155.P347025640981861072

`lt[char[A014156(n+1)]*A000217(n), 1]`
-/

namespace A014155.P347025640981861072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000217 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P347025640981861072

/-! ## A014155.P17523172635309274822

`lt[char[A014156(n+1)]*A000567(n), 1]`
-/

namespace A014155.P17523172635309274822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000567 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P17523172635309274822

/-! ## A014155.P18310508381796704537

`lt[char[A014156(n+1)]*A000982(n), 1]`
-/

namespace A014155.P18310508381796704537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000982 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P18310508381796704537

/-! ## A014155.P6382302625365298323

`lt[char[A014156(n+1)]*A016777(n), 1]`
-/

namespace A014155.P6382302625365298323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A016777 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P6382302625365298323

/-! ## A014155.P8788968624702006400

`lt[char[A014156(n+1)]*A046092(n), 1]`
-/

namespace A014155.P8788968624702006400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A046092 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P8788968624702006400

/-! ## A014155.P13158642350544659558

`lt[char[A014156(n+1)]*A109046(n), 1]`
-/

namespace A014155.P13158642350544659558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A109046 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P13158642350544659558

/-! ## A014155.P18044914547471140152

`lt[char[A014156(n+1)]*A151800(n), 1]`
-/

namespace A014155.P18044914547471140152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A151800 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P18044914547471140152

/-! ## A014155.P15060533208761182907

`lt[char[A014156(n+1)]*A177704(n+1), 1]`
-/

namespace A014155.P15060533208761182907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A177704 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P15060533208761182907

/-! ## A014155.P11953413383168706082

`lt[char[A014156(n+1)]*A285699(n+1), 1]`
-/

namespace A014155.P11953413383168706082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A285699 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P11953413383168706082

/-! ## A014155.P18216048669221875288

`lt[A093074(n+1)²*char[A014156(n+1)], 1]`
-/

namespace A014155.P18216048669221875288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) ^ 2 * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P18216048669221875288

/-! ## A014155.P218597376217949012

`lt[char[A014156(n+1)]*A000225(n+2), 1]`
-/

namespace A014155.P218597376217949012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014156 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000225 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A014155.P218597376217949012

/-!
# A014156: Numbers that are not the sum of a nonnegative cube and a triangular number.

The programs for A014156, there is no canonical definition to state claims against.
-/

/-! ## A014156.P4825212608582147058

`comp[A014155(n+1)]`
-/

namespace A014156.P4825212608582147058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014156.P4825212608582147058

/-! ## A014156.P12034232373258143957

`comp[A014155(A034888(n))-A000038(n)]`
-/

namespace A014156.P12034232373258143957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014155 (A034888 n).toNat - A000038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014156.P12034232373258143957

/-! ## A014156.P916390049205295149

`eq[0, char[A014155(A034888(n))]]`
-/

namespace A014156.P916390049205295149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014155 (A034888 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014156.P916390049205295149

/-! ## A014156.P13207252760200764993

`eq[char[A014155(n+1)], A000038(n)]`
-/

namespace A014156.P13207252760200764993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014155 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014156.P13207252760200764993

/-! ## A014156.P9084242557290842035

`eq[A008683(9*(n+1)), char[A014155(n+1)]]`
-/

namespace A014156.P9084242557290842035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (9 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014155 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A014156.P9084242557290842035

/-!
# A014157: Numbers that are the sum of 2 nonnegative cubes and a triangular number.

The programs for A014157, there is no canonical definition to state claims against.
-/

/-! ## A014157.P16616463571483187973

`comp[A014158(n+1)]`
-/

namespace A014157.P16616463571483187973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014157.P16616463571483187973

/-! ## A014157.P14849774684099553822

`lt[char[A014158(floor(n/2)+1)], 1]`
-/

namespace A014157.P14849774684099553822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014158 (⌊(n : ℚ) / 2⌋ + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A014157.P14849774684099553822

/-! ## A014157.P8415872094368352512

`lt[char[A014158(n+1)], 1]%A000124(n+1)`
-/

namespace A014157.P8415872094368352512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014158 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ) (A000124 (n + 1))

end

end A014157.P8415872094368352512

/-! ## A014157.P6077452956264829411

`eq[char[A014158(n+1)], A014165(2*n+3)]`
-/

namespace A014157.P6077452956264829411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014158 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014165 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014157.P6077452956264829411

/-! ## A014157.P7513751049586040642

`eq[char[A014158(n+1)], A014099(3*n+2)]`
-/

namespace A014157.P7513751049586040642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014158 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014099 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A014157.P7513751049586040642

/-!
# A014158: Numbers that are not the sum of 2 nonnegative cubes and a triangular number.

The programs for A014158, there is no canonical definition to state claims against.
-/

/-! ## A014158.P11222330361064867861

`comp[A014157(n+1)]`
-/

namespace A014158.P11222330361064867861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A014158.P11222330361064867861

/-!
# A014159: Inverse of 150th cyclotomic polynomial.

The programs for A014159, there is no canonical definition to state claims against.
-/

/-! ## A014159.P17714053542323353770

`A014019(n)*A014084(n)`
-/

namespace A014159.P17714053542323353770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014084 n

end

end A014159.P17714053542323353770

/-!
# A014160: Apply partial sum operator thrice to partition numbers.

The programs for A014160, there is no canonical definition to state claims against.
-/

/-! ## A014160.P11715074412079883017

`∑[A014153(n)]`
-/

namespace A014160.P11715074412079883017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P11715074412079883017

/-! ## A014160.P16080719135483782101

`∑[∑[A000070(n)]]`
-/

namespace A014160.P16080719135483782101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P16080719135483782101

/-! ## A014160.P9470472723707242221

`∑[∑[∑[A000041(n)]]]`
-/

namespace A014160.P9470472723707242221
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P9470472723707242221

/-! ## A014160.P10955224001182964053

`∑[∑[∑[A000065(n)+1]]]`
-/

namespace A014160.P10955224001182964053
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P10955224001182964053

/-! ## A014160.P306685410344481424

`∑[∑[∑[A139582(n)/2]]]`
-/

namespace A014160.P306685410344481424
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P306685410344481424

/-! ## A014160.P18234825865449679418

`∑[∑[A216053(n+1)-1]]`
-/

namespace A014160.P18234825865449679418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P18234825865449679418

/-! ## A014160.P3264097020300414710

`2*A029859(n)-A000097(n)`
-/

namespace A014160.P3264097020300414710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029859 n - A000097 n

end

end A014160.P3264097020300414710

/-! ## A014160.P7897428272573411369

`∑[∑[A000291(n)-A000097(n)]]`
-/

namespace A014160.P7897428272573411369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n - A000097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P7897428272573411369

/-! ## A014160.P7424017028721284291

`∑[A000097(n)+∑[A024786(n+1)]]`
-/

namespace A014160.P7424017028721284291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P7424017028721284291

/-! ## A014160.P16338680526891058183

`∑[∑[A006128(n+1)-A096541(n+1)]]`
-/

namespace A014160.P16338680526891058183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A096541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P16338680526891058183

/-! ## A014160.P8726155240065323546

`A000217(n+1)+A086716(n+1)-A085360(n+1)`
-/

namespace A014160.P8726155240065323546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A086716 (n + 1) - A085360 (n + 1))

end

end A014160.P8726155240065323546

/-! ## A014160.P575183289540340927

`A360486(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A014160.P575183289540340927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360486 (n + 1) - a (n - 1)

end

end A014160.P575183289540340927

/-! ## A014160.P10896437599956074634

`A014161(n+1)-(A014161(n)+A014153(n+1))`
-/

namespace A014160.P10896437599956074634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014161 (n + 1) - (A014161 n + A014153 (n + 1))

end

end A014160.P10896437599956074634

/-! ## A014160.P14385482548850876053

`∑[∑[A025065(2*n)]]`
-/

namespace A014160.P14385482548850876053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P14385482548850876053

/-! ## A014160.P7303608074808595914

`∑[∑[∑[A035363(2*n)]]]`
-/

namespace A014160.P7303608074808595914
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P7303608074808595914

/-! ## A014160.P2135866974551574299

`∑[∑[∑[A119620(2*n)]]]`
-/

namespace A014160.P2135866974551574299
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P2135866974551574299

/-! ## A014160.P7708646566942009156

`∑[∑[∑[A035377(3*n)]]]`
-/

namespace A014160.P7708646566942009156
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P7708646566942009156

/-! ## A014160.P1487639352745898058

`A000097(n)+A096586(n)-A093695(n)`
-/

namespace A014160.P1487639352745898058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + (A096586 n - A093695 n)

end

end A014160.P1487639352745898058

/-! ## A014160.P1112009368464669758

`∑[∑[∑[A100824(2*n)]]]`
-/

namespace A014160.P1112009368464669758
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P1112009368464669758

/-! ## A014160.P2237586674374704051

`∑[∑[A100835(2*n+1)]]`
-/

namespace A014160.P2237586674374704051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014160.P2237586674374704051

/-!
# A014161: Apply partial sum operator 4 times to partition numbers.

The programs for A014161, there is no canonical definition to state claims against.
-/

/-! ## A014161.P5617237542046805978

`∑[A014160(n)]`
-/

namespace A014161.P5617237542046805978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P5617237542046805978

/-! ## A014161.P6171798632061097877

`∑[∑[A014153(n)]]`
-/

namespace A014161.P6171798632061097877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P6171798632061097877

/-! ## A014161.P2302795625089362956

`∑[∑[∑[A000070(n)]]]`
-/

namespace A014161.P2302795625089362956
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P2302795625089362956

/-! ## A014161.P2550620442927162106

`∑[∑[∑[∑[A000041(n)]]]]`
-/

namespace A014161.P2550620442927162106
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P2550620442927162106

/-! ## A014161.P12864016814343663183

`∑[∑[∑[A216053(n+1)-1]]]`
-/

namespace A014161.P12864016814343663183
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P12864016814343663183

/-! ## A014161.P14393436650918860685

`∑[∑[A000097(n)+A000097(n)-A024786(n+2)]]`
-/

namespace A014161.P14393436650918860685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n + (A000097 n - A024786 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P14393436650918860685

/-! ## A014161.P353212305207322125

`A120477(n+1)-(A120477(n)+A014160(n+1))`
-/

namespace A014161.P353212305207322125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120477 (n + 1) - (A120477 n + A014160 (n + 1))

end

end A014161.P353212305207322125

/-! ## A014161.P3700791017454489782

`∑[∑[∑[A025065(2*n)]]]`
-/

namespace A014161.P3700791017454489782
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P3700791017454489782

/-! ## A014161.P16067583731396586140

`∑[∑[∑[A100824(2*n+1)]]]`
-/

namespace A014161.P16067583731396586140
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P16067583731396586140

/-! ## A014161.P16602802080523650584

`∑[∑[∑[A100835(2*n+1)]]]`
-/

namespace A014161.P16602802080523650584
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100835 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014161.P16602802080523650584

/-!
# A014162: Apply partial sum operator thrice to Fibonacci numbers.

The programs for A014162, the canonical program `A014162.P17508837438932702874` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014162 has offset 0).

The definition of A014162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014162.P1911830345139336165

`∑[∑[ogf(x/(1-2x+x^3))]]`
-/

namespace A014162.P1911830345139336165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P1911830345139336165

namespace A014162

/-- `∑[∑[ogf(x/(1-2x+x^3))]]` -/
def P1911830345139336165.Spec : Prop :=
  ∀ n, P1911830345139336165.a n = A014162 n

end A014162

/-! ## A014162.P5342000048770708126

`∑[∑[floor(ϕ*a(n-1))+1]]` with `a(0)=0`
-/

namespace A014162.P5342000048770708126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) : ℝ)⌋ + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P5342000048770708126

namespace A014162

/-- `∑[∑[floor(ϕ*a(n-1))+1]]` -/
def P5342000048770708126.Spec : Prop :=
  ∀ n, P5342000048770708126.a n = A014162 n

end A014162

/-! ## A014162.P17508837438932702874

`∑[a(n-1)+a(n-2)+n]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014162

/-- `∑[a(n-1)+a(n-2)+n]` -/
def P17508837438932702874.Spec : Prop :=
  ∀ n, (P17508837438932702874.a n : ℤ) = A014162 n

theorem P17508837438932702874.correct : P17508837438932702874.Spec := by
  intro n
  simp only [A014162]

end A014162

/-! ## A014162.P10688201479650717314

`∑[∑[2*a(n-1)-a(n-3)]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A014162.P10688201479650717314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P10688201479650717314

namespace A014162

/-- `∑[∑[2*a(n-1)-a(n-3)]]` -/
def P10688201479650717314.Spec : Prop :=
  ∀ n, P10688201479650717314.a n = A014162 n

end A014162

/-! ## A014162.P4064431117787102134

`C(n+1, 2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A014162.P4064431117787102134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (n + 1) 2 + (a (n - 1) + a (n - 2))

end

end A014162.P4064431117787102134

namespace A014162

/-- `C(n+1, 2)+a(n-1)+a(n-2)` -/
def P4064431117787102134.Spec : Prop :=
  ∀ n, (P4064431117787102134.a n : ℤ) = A014162 n

end A014162

/-! ## A014162.P4162057296857778779

`a(n-1)+a(n-1)-a(n-3)+n` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A014162.P4162057296857778779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3) + (n : ℤ))

end

end A014162.P4162057296857778779

namespace A014162

/-- `a(n-1)+a(n-1)-a(n-3)+n` -/
def P4162057296857778779.Spec : Prop :=
  ∀ n, P4162057296857778779.a n = A014162 n

end A014162

/-! ## A014162.P8362037506985247519

`a(n-1)-(a(n-3)-n-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A014162.P8362037506985247519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) - (a (n - 3) - (n : ℤ) - a (n - 1))

end

end A014162.P8362037506985247519

namespace A014162

/-- `a(n-1)-(a(n-3)-n-a(n-1))` -/
def P8362037506985247519.Spec : Prop :=
  ∀ n, P8362037506985247519.a n = A014162 n

end A014162

/-! ## A014162.P11119541344261675874

`∑[A001924(n)]`
-/

namespace A014162.P11119541344261675874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P11119541344261675874

namespace A014162

/-- `∑[A001924(n)]` -/
def P11119541344261675874.Spec : Prop :=
  ∀ n, P11119541344261675874.a n = A014162 n

theorem P11119541344261675874.correct : P11119541344261675874.Spec := by
  intro n
  simp only [A014162, Nat.add_sub_cancel, A014162.P11119541344261675874.f1, A014162.P11119541344261675874.a, A014162.P17508837438932702874.f1, A014162.P17508837438932702874.a, A001924, A001924.P6748893244149044388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014162

/-! ## A014162.P4414362731147628058

`A163250(n)+∑[n]`
-/

namespace A014162.P4414362731147628058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014162.P4414362731147628058

namespace A014162

/-- `A163250(n)+∑[n]` -/
def P4414362731147628058.Spec : Prop :=
  ∀ n, P4414362731147628058.a n = A014162 n

end A014162

/-! ## A014162.P17012408038877463545

`∑[∑[∑[A000045(n)]]]`
-/

namespace A014162.P17012408038877463545
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P17012408038877463545

namespace A014162

/-- `∑[∑[∑[A000045(n)]]]` -/
def P17012408038877463545.Spec : Prop :=
  ∀ n, P17012408038877463545.a n = A014162 n

end A014162

/-! ## A014162.P1151838104188329946

`A116717(n+1)-1`
-/

namespace A014162.P1151838104188329946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1) - 1

end

end A014162.P1151838104188329946

namespace A014162

/-- `A116717(n+1)-1` -/
def P1151838104188329946.Spec : Prop :=
  ∀ n, P1151838104188329946.a n = A014162 n

end A014162

/-! ## A014162.P18409684419459481615

`∑[∑[A000071(n+2)]]`
-/

namespace A014162.P18409684419459481615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P18409684419459481615

namespace A014162

/-- `∑[∑[A000071(n+2)]]` -/
def P18409684419459481615.Spec : Prop :=
  ∀ n, P18409684419459481615.a n = A014162 n

end A014162

/-! ## A014162.P12258112802787854991

`∑[∑[A339572(2*n)]]`
-/

namespace A014162.P12258112802787854991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P12258112802787854991

namespace A014162

/-- `∑[∑[A339572(2*n)]]` -/
def P12258112802787854991.Spec : Prop :=
  ∀ n, P12258112802787854991.a n = A014162 n

end A014162

/-! ## A014162.P14981106663140755913

`∑[A000126(n+1)-1]`
-/

namespace A014162.P14981106663140755913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P14981106663140755913

namespace A014162

/-- `∑[A000126(n+1)-1]` -/
def P14981106663140755913.Spec : Prop :=
  ∀ n, P14981106663140755913.a n = A014162 n

end A014162

/-! ## A014162.P3730412998215992306

`∑[(A192960(n)-1)/2]`
-/

namespace A014162.P3730412998215992306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192960 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P3730412998215992306

namespace A014162

/-- `∑[(A192960(n)-1)/2]` -/
def P3730412998215992306.Spec : Prop :=
  ∀ n, P3730412998215992306.a n = (A014162 n : ℚ)

end A014162

/-! ## A014162.P5121670500111248675

`∑[A020701(n)-(n+3)]`
-/

namespace A014162.P5121670500111248675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P5121670500111248675

namespace A014162

/-- `∑[A020701(n)-(n+3)]` -/
def P5121670500111248675.Spec : Prop :=
  ∀ n, P5121670500111248675.a n = A014162 n

end A014162

/-! ## A014162.P6302842516961190559

`∑[A006327(n+4)-n]`
-/

namespace A014162.P6302842516961190559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P6302842516961190559

namespace A014162

/-- `∑[A006327(n+4)-n]` -/
def P6302842516961190559.Spec : Prop :=
  ∀ n, P6302842516961190559.a n = A014162 n

end A014162

/-! ## A014162.P3771795696806323802

`∑[∑[∑[A212804(n+1)]]]`
-/

namespace A014162.P3771795696806323802
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P3771795696806323802

namespace A014162

/-- `∑[∑[∑[A212804(n+1)]]]` -/
def P3771795696806323802.Spec : Prop :=
  ∀ n, P3771795696806323802.a n = A014162 n

end A014162

/-! ## A014162.P12294656323060634733

`∑[∑[∑[A001611(n)-1]]]`
-/

namespace A014162.P12294656323060634733
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P12294656323060634733

namespace A014162

/-- `∑[∑[∑[A001611(n)-1]]]` -/
def P12294656323060634733.Spec : Prop :=
  ∀ n, P12294656323060634733.a n = A014162 n

end A014162

/-! ## A014162.P16476879138797940112

`∑[∑[∑[A053602(2*n)]]]`
-/

namespace A014162.P16476879138797940112
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014162.P16476879138797940112

namespace A014162

/-- `∑[∑[∑[A053602(2*n)]]]` -/
def P16476879138797940112.Spec : Prop :=
  ∀ n, P16476879138797940112.a n = A014162 n

end A014162

/-!
# A014163: Inverse of 154th cyclotomic polynomial.

The programs for A014163, there is no canonical definition to state claims against.
-/

/-! ## A014163.P16234591616381062191

`A014086(n)*A033999(n)`
-/

namespace A014163.P16234591616381062191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014086 n * A033999 n

end

end A014163.P16234591616381062191

/-!
# A014164: Inverse of 155th cyclotomic polynomial.

The programs for A014164, there is no canonical definition to state claims against.
-/

/-! ## A014164.P18327825636393876798

`A014319(n)*A033999(n)`
-/

namespace A014164.P18327825636393876798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014319 n * A033999 n

end

end A014164.P18327825636393876798

/-!
# A014165: Inverse of 156th cyclotomic polynomial.

The programs for A014165, there is no canonical definition to state claims against.
-/

/-! ## A014165.P8104398665082887143

`A014867(A243520(n))`
-/

namespace A014165.P8104398665082887143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014867 (A243520 n).toNat

end

end A014165.P8104398665082887143

/-!
# A014166: Apply partial sum operator 4 times to Fibonacci numbers.

The programs for A014166, the canonical program `A014166.P14496283268275884480` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014166 has offset 0).

The definition of A014166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014166.P15237741469002410373

`∑[∑[∑[ogf(x/(1-2x+x^3))]]]`
-/

namespace A014166.P15237741469002410373
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P15237741469002410373

namespace A014166

/-- `∑[∑[∑[ogf(x/(1-2x+x^3))]]]` -/
def P15237741469002410373.Spec : Prop :=
  ∀ n, P15237741469002410373.a n = A014166 n

end A014166

/-! ## A014166.P14496283268275884480

`∑[∑[a(n-1)+a(n-2)+n]]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014166

/-- `∑[∑[a(n-1)+a(n-2)+n]]` -/
def P14496283268275884480.Spec : Prop :=
  ∀ n, (P14496283268275884480.a n : ℤ) = A014166 n

theorem P14496283268275884480.correct : P14496283268275884480.Spec := by
  intro n
  simp only [A014166]

end A014166

/-! ## A014166.P18151040159090827139

`a(n-1)+a(n-2)+C(n+2, n-1)` with `a(0)=0, a(1)=1`
-/

namespace A014166.P18151040159090827139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + Nat.choose (n + 2) ((n : ℤ) - 1).toNat)

end

end A014166.P18151040159090827139

namespace A014166

/-- `a(n-1)+a(n-2)+C(n+2, n-1)` -/
def P18151040159090827139.Spec : Prop :=
  ∀ n, (P18151040159090827139.a n : ℤ) = A014166 n

end A014166

/-! ## A014166.P16025502147504219101

`∑[A014162(n)]`
-/

namespace A014166.P16025502147504219101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P16025502147504219101

namespace A014166

/-- `∑[A014162(n)]` -/
def P16025502147504219101.Spec : Prop :=
  ∀ n, P16025502147504219101.a n = A014166 n

theorem P16025502147504219101.correct : P16025502147504219101.Spec := by
  intro n
  simp only [A014166, Nat.add_sub_cancel, A014166.P16025502147504219101.f1, A014166.P16025502147504219101.a, A014166.P14496283268275884480.f2, A014166.P14496283268275884480.f1, A014166.P14496283268275884480.a, A014162, A014162.P17508837438932702874.f1, A014162.P17508837438932702874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014166

/-! ## A014166.P13714694129623103309

`∑[∑[A001924(n)]]`
-/

namespace A014166.P13714694129623103309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P13714694129623103309

namespace A014166

/-- `∑[∑[A001924(n)]]` -/
def P13714694129623103309.Spec : Prop :=
  ∀ n, P13714694129623103309.a n = A014166 n

theorem P13714694129623103309.correct : P13714694129623103309.Spec := by
  intro n
  simp only [A014166, Nat.add_sub_cancel, A014166.P13714694129623103309.f2, A014166.P13714694129623103309.f1, A014166.P13714694129623103309.a, A014166.P14496283268275884480.f2, A014166.P14496283268275884480.f1, A014166.P14496283268275884480.a, A001924, A001924.P6748893244149044388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014166

/-! ## A014166.P2500977165396680913

`∑[A163250(n)+∑[n]]`
-/

namespace A014166.P2500977165396680913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P2500977165396680913

namespace A014166

/-- `∑[A163250(n)+∑[n]]` -/
def P2500977165396680913.Spec : Prop :=
  ∀ n, P2500977165396680913.a n = A014166 n

end A014166

/-! ## A014166.P5341317327894794895

`∑[∑[∑[∑[A000045(n)]]]]`
-/

namespace A014166.P5341317327894794895
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P5341317327894794895

namespace A014166

/-- `∑[∑[∑[∑[A000045(n)]]]]` -/
def P5341317327894794895.Spec : Prop :=
  ∀ n, P5341317327894794895.a n = A014166 n

end A014166

/-! ## A014166.P12679884637992928898

`∑[A116717(n+1)-1]`
-/

namespace A014166.P12679884637992928898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P12679884637992928898

namespace A014166

/-- `∑[A116717(n+1)-1]` -/
def P12679884637992928898.Spec : Prop :=
  ∀ n, P12679884637992928898.a n = A014166 n

end A014166

/-! ## A014166.P16924379432951374072

`∑[∑[∑[A000071(n+2)]]]`
-/

namespace A014166.P16924379432951374072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P16924379432951374072

namespace A014166

/-- `∑[∑[∑[A000071(n+2)]]]` -/
def P16924379432951374072.Spec : Prop :=
  ∀ n, P16924379432951374072.a n = A014166 n

end A014166

/-! ## A014166.P1911663455872770742

`∑[∑[∑[A339572(2*n)]]]`
-/

namespace A014166.P1911663455872770742
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P1911663455872770742

namespace A014166

/-- `∑[∑[∑[A339572(2*n)]]]` -/
def P1911663455872770742.Spec : Prop :=
  ∀ n, P1911663455872770742.a n = A014166 n

end A014166

/-! ## A014166.P6055724229233743534

`∑[∑[A000126(n+1)-1]]`
-/

namespace A014166.P6055724229233743534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P6055724229233743534

namespace A014166

/-- `∑[∑[A000126(n+1)-1]]` -/
def P6055724229233743534.Spec : Prop :=
  ∀ n, P6055724229233743534.a n = A014166 n

end A014166

/-! ## A014166.P8887775482014777777

`A220888(n+1)+∑[n²]`
-/

namespace A014166.P8887775482014777777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220888 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A014166.P8887775482014777777

namespace A014166

/-- `A220888(n+1)+∑[n²]` -/
def P8887775482014777777.Spec : Prop :=
  ∀ n, P8887775482014777777.a n = A014166 n

end A014166

/-! ## A014166.P7231634167076288330

`∑[∑[A006327(n+4)-n]]`
-/

namespace A014166.P7231634167076288330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P7231634167076288330

namespace A014166

/-- `∑[∑[A006327(n+4)-n]]` -/
def P7231634167076288330.Spec : Prop :=
  ∀ n, P7231634167076288330.a n = A014166 n

end A014166

/-! ## A014166.P5876589246811980063

`∑[A000128(n+2)-(n+2)]`
-/

namespace A014166.P5876589246811980063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000128 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P5876589246811980063

namespace A014166

/-- `∑[A000128(n+2)-(n+2)]` -/
def P5876589246811980063.Spec : Prop :=
  ∀ n, P5876589246811980063.a n = A014166 n

end A014166

/-! ## A014166.P5640670821573417699

`∑[∑[∑[A131524(2*(n+1))]]]`
-/

namespace A014166.P5640670821573417699
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P5640670821573417699

namespace A014166

/-- `∑[∑[∑[A131524(2*(n+1))]]]` -/
def P5640670821573417699.Spec : Prop :=
  ∀ n, P5640670821573417699.a n = A014166 n

end A014166

/-! ## A014166.P14088961452831851232

`∑[∑[A192962(n+2)-A192969(n+1)]]`
-/

namespace A014166.P14088961452831851232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192962 (n + 2) - A192969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P14088961452831851232

namespace A014166

/-- `∑[∑[A192962(n+2)-A192969(n+1)]]` -/
def P14088961452831851232.Spec : Prop :=
  ∀ n, P14088961452831851232.a n = A014166 n

end A014166

/-! ## A014166.P339980185702432076

`A193045(n+3)-A192968(n+3)`
-/

namespace A014166.P339980185702432076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193045 (n + 3) - A192968 (n + 3)

end

end A014166.P339980185702432076

namespace A014166

/-- `A193045(n+3)-A192968(n+3)` -/
def P339980185702432076.Spec : Prop :=
  ∀ n, P339980185702432076.a n = A014166 n

end A014166

/-! ## A014166.P7382680851434260335

`A027964(n+4)-A053809(n)`
-/

namespace A014166.P7382680851434260335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (n + 4) - A053809 n

end

end A014166.P7382680851434260335

namespace A014166

/-- `A027964(n+4)-A053809(n)` -/
def P7382680851434260335.Spec : Prop :=
  ∀ n, P7382680851434260335.a n = A014166 n

end A014166

/-! ## A014166.P12231604337802001660

`∑[∑[A136431(∑[n+3])]]`
-/

namespace A014166.P12231604337802001660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014166.P12231604337802001660

namespace A014166

/-- `∑[∑[A136431(∑[n+3])]]` -/
def P12231604337802001660.Spec : Prop :=
  ∀ n, P12231604337802001660.a n = A014166 n

end A014166

/-!
# A014167: Partial sums of binary rooted tree numbers.

The programs for A014167, there is no canonical definition to state claims against.
-/

/-! ## A014167.P294219727544434774

`∑[A002572(n+2)]`
-/

namespace A014167.P294219727544434774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014167.P294219727544434774

/-! ## A014167.P4127676032918103600

`A173404(n+2)-1`
-/

namespace A014167.P4127676032918103600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 2) - 1

end

end A014167.P4127676032918103600

/-! ## A014167.P12442100168749965442

`∑[abs(Δ[A173404(n+1)])]`
-/

namespace A014167.P12442100168749965442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014167.P12442100168749965442

/-! ## A014167.P9363964884891311720

`∑[A049286(∑[n]+1)]`
-/

namespace A014167.P9363964884891311720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014167.P9363964884891311720

/-! ## A014167.P2608665438723631904

`∑[A047913(∑[n+1])]`
-/

namespace A014167.P2608665438723631904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014167.P2608665438723631904

/-! ## A014167.P3827741763127324637

`∑[A294775(∑[n+3]+1)]`
-/

namespace A014167.P3827741763127324637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014167.P3827741763127324637

/-!
# A014168: Apply partial sum operator twice to binary rooted tree numbers.

The programs for A014168, there is no canonical definition to state claims against.
-/

/-! ## A014168.P9431577714472330118

`∑[A014167(n+1)]`
-/

namespace A014168.P9431577714472330118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014168.P9431577714472330118

/-! ## A014168.P3382233836390512467

`∑[∑[A002572(n+2)]]`
-/

namespace A014168.P3382233836390512467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014168.P3382233836390512467

/-! ## A014168.P15398423808228129753

`∑[A173404(n+2)-1]`
-/

namespace A014168.P15398423808228129753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014168.P15398423808228129753

/-! ## A014168.P11137916366532325170

`∑[2*∑[Δ[A173404(n+1)]/2]]`
-/

namespace A014168.P11137916366532325170
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014168.P11137916366532325170

/-! ## A014168.P11698757024634914237

`A014169(n+2)-(A014169(n+1)+A014167(n+2))`
-/

namespace A014168.P11698757024634914237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014169 (n + 2) - (A014169 (n + 1) + A014167 (n + 2))

end

end A014168.P11698757024634914237

/-! ## A014168.P5342196084173936881

`∑[∑[A047913(∑[n+1])]]`
-/

namespace A014168.P5342196084173936881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047913 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014168.P5342196084173936881

/-! ## A014168.P13069546100373345881

`∑[∑[A294775(∑[n+3]+1)]]`
-/

namespace A014168.P13069546100373345881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014168.P13069546100373345881

/-!
# A014169: Apply partial sum operator thrice to binary rooted tree numbers.

The programs for A014169, there is no canonical definition to state claims against.
-/

/-! ## A014169.P3395130585366160368

`∑[A014168(n+1)]`
-/

namespace A014169.P3395130585366160368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014169.P3395130585366160368

/-! ## A014169.P9648950795685134607

`∑[∑[A014167(n+1)]]`
-/

namespace A014169.P9648950795685134607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014167 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014169.P9648950795685134607

/-! ## A014169.P10222189082416895490

`∑[∑[∑[A002572(n+2)]]]`
-/

namespace A014169.P10222189082416895490
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014169.P10222189082416895490

/-! ## A014169.P181056116228244946

`∑[∑[A173404(n+2)-1]]`
-/

namespace A014169.P181056116228244946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014169.P181056116228244946

/-! ## A014169.P2108347550445606150

`∑[record[A014168(A193739(n))]]`
-/

namespace A014169.P2108347550445606150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014168 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014169.P2108347550445606150

/-!
# A014170: Inverse of 161st cyclotomic polynomial.

The programs for A014170, there is no canonical definition to state claims against.
-/

/-! ## A014170.P17415343789492791153

`A014331(n)*A033999(n)`
-/

namespace A014170.P17415343789492791153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014331 n * A033999 n

end

end A014170.P17415343789492791153

/-!
# A014171: Apply partial sum operator 4 times to binary rooted tree numbers.

The programs for A014171, there is no canonical definition to state claims against.
-/

/-! ## A014171.P5489791697215536618

`∑[A014169(n+1)]`
-/

namespace A014171.P5489791697215536618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014171.P5489791697215536618

/-! ## A014171.P5583612104133972342

`∑[∑[A014168(n+1)]]`
-/

namespace A014171.P5583612104133972342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014168 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014171.P5583612104133972342

/-! ## A014171.P11769378600841547480

`∑[∑[∑[A014167(n+1)]]]`
-/

namespace A014171.P11769378600841547480
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014171.P11769378600841547480

/-! ## A014171.P6262907914549245670

`∑[∑[∑[∑[A002572(n+2)]]]]`
-/

namespace A014171.P6262907914549245670
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002572 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014171.P6262907914549245670

/-! ## A014171.P14319410423429349520

`∑[∑[∑[A173404(n+2)-1]]]`
-/

namespace A014171.P14319410423429349520
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014171.P14319410423429349520

/-!
# A014172: Apply partial sum operator twice to Stern's sequence.

The programs for A014172, the canonical program `A014172.P11335760464982680328` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014172 has offset 0).

The definition of A014172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014172.P11335760464982680328

`∑[A005318(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014172

/-- `∑[A005318(n+1)]` -/
def P11335760464982680328.Spec : Prop :=
  ∀ n, P11335760464982680328.a n = A014172 n

theorem P11335760464982680328.correct : P11335760464982680328.Spec := by
  intro n
  simp only [A014172]

end A014172

/-! ## A014172.P10809836600877553731

`∑[∑[A005230(n+1)]]`
-/

namespace A014172.P10809836600877553731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P10809836600877553731

namespace A014172

/-- `∑[∑[A005230(n+1)]]` -/
def P10809836600877553731.Spec : Prop :=
  ∀ n, P10809836600877553731.a n = A014172 n

end A014172

/-! ## A014172.P6385169116790233113

`∑[∑[A066777(n-1)+a(n-1)]]` with `a(0)=1`
-/

namespace A014172.P6385169116790233113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A066777 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P6385169116790233113

namespace A014172

/-- `∑[∑[A066777(n-1)+a(n-1)]]` -/
def P6385169116790233113.Spec : Prop :=
  ∀ n, P6385169116790233113.a n = A014172 n

end A014172

/-! ## A014172.P12936532471880865006

`∑[record[A005318(A007599(n))]]`
-/

namespace A014172.P12936532471880865006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A007599 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P12936532471880865006

namespace A014172

/-- `∑[record[A005318(A007599(n))]]` -/
def P12936532471880865006.Spec : Prop :=
  ∀ n, P12936532471880865006.a n = A014172 n

end A014172

/-! ## A014172.P17749423866700852410

`∑[record[A005318(A152271(n))]]`
-/

namespace A014172.P17749423866700852410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P17749423866700852410

namespace A014172

/-- `∑[record[A005318(A152271(n))]]` -/
def P17749423866700852410.Spec : Prop :=
  ∀ n, P17749423866700852410.a n = A014172 n

end A014172

/-! ## A014172.P9602323244985207212

`∑[A096858(∑[n+1])]`
-/

namespace A014172.P9602323244985207212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P9602323244985207212

namespace A014172

/-- `∑[A096858(∑[n+1])]` -/
def P9602323244985207212.Spec : Prop :=
  ∀ n, P9602323244985207212.a n = A014172 n

end A014172

/-! ## A014172.P18428808943378712265

`∑[∑[A096858(A000124(n))]]`
-/

namespace A014172.P18428808943378712265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014172.P18428808943378712265

namespace A014172

/-- `∑[∑[A096858(A000124(n))]]` -/
def P18428808943378712265.Spec : Prop :=
  ∀ n, P18428808943378712265.a n = A014172 n

end A014172

/-!
# A014173: Apply partial sum operator thrice to Stern's sequence.

The programs for A014173, the canonical program `A014173.P200820526183461542` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014173 has offset 0).

The definition of A014173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014173.P200820526183461542

`∑[A014172(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014173

/-- `∑[A014172(n)]` -/
def P200820526183461542.Spec : Prop :=
  ∀ n, P200820526183461542.a n = A014173 n

theorem P200820526183461542.correct : P200820526183461542.Spec := by
  intro n
  simp only [A014173]

end A014173

/-! ## A014173.P16457591934619834562

`∑[∑[A005318(n+1)]]`
-/

namespace A014173.P16457591934619834562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014173.P16457591934619834562

namespace A014173

/-- `∑[∑[A005318(n+1)]]` -/
def P16457591934619834562.Spec : Prop :=
  ∀ n, P16457591934619834562.a n = A014173 n

end A014173

/-! ## A014173.P3974412714233119984

`∑[∑[∑[A005230(n+1)]]]`
-/

namespace A014173.P3974412714233119984
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014173.P3974412714233119984

namespace A014173

/-- `∑[∑[∑[A005230(n+1)]]]` -/
def P3974412714233119984.Spec : Prop :=
  ∀ n, P3974412714233119984.a n = A014173 n

end A014173

/-! ## A014173.P15021493003301904173

`Δ[A014175(n)]-A014172(n+1)`
-/

namespace A014173.P15021493003301904173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014172 (n + 1)

end

end A014173.P15021493003301904173

namespace A014173

/-- `Δ[A014175(n)]-A014172(n+1)` -/
def P15021493003301904173.Spec : Prop :=
  ∀ n, P15021493003301904173.a n = A014173 n

end A014173

/-! ## A014173.P18182256503853297421

`Δ[A014175(n)-A014172(n)]-A014172(n)`
-/

namespace A014173.P18182256503853297421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014175 n - A014172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014172 n

end

end A014173.P18182256503853297421

namespace A014173

/-- `Δ[A014175(n)-A014172(n)]-A014172(n)` -/
def P18182256503853297421.Spec : Prop :=
  ∀ n, P18182256503853297421.a n = A014173 n

end A014173

/-! ## A014173.P5228773763643156751

`A014175(n+1)-(A014175(n)+A014172(n+1))`
-/

namespace A014173.P5228773763643156751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014175 (n + 1) - (A014175 n + A014172 (n + 1))

end

end A014173.P5228773763643156751

namespace A014173

/-- `A014175(n+1)-(A014175(n)+A014172(n+1))` -/
def P5228773763643156751.Spec : Prop :=
  ∀ n, P5228773763643156751.a n = A014173 n

end A014173

/-! ## A014173.P16845768764116236359

`∑[∑[A096858(∑[n+1])]]`
-/

namespace A014173.P16845768764116236359
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014173.P16845768764116236359

namespace A014173

/-- `∑[∑[A096858(∑[n+1])]]` -/
def P16845768764116236359.Spec : Prop :=
  ∀ n, P16845768764116236359.a n = A014173 n

end A014173

/-!
# A014174: Inverse of 165th cyclotomic polynomial.

The programs for A014174, there is no canonical definition to state claims against.
-/

/-! ## A014174.P5013447516810496126

`A014339(n)*A033999(n)`
-/

namespace A014174.P5013447516810496126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014339 n * A033999 n

end

end A014174.P5013447516810496126

/-!
# A014175: Apply partial sum operator 4 times to Stern's sequence.

The programs for A014175, the canonical program `A014175.P16273743748470831240` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014175 has offset 0).

The definition of A014175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014175.P16273743748470831240

`∑[A014173(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A014175

/-- `∑[A014173(n)]` -/
def P16273743748470831240.Spec : Prop :=
  ∀ n, P16273743748470831240.a n = A014175 n

theorem P16273743748470831240.correct : P16273743748470831240.Spec := by
  intro n
  simp only [A014175]

end A014175

/-! ## A014175.P7091525721472216027

`∑[∑[A014172(n)]]`
-/

namespace A014175.P7091525721472216027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014175.P7091525721472216027

namespace A014175

/-- `∑[∑[A014172(n)]]` -/
def P7091525721472216027.Spec : Prop :=
  ∀ n, P7091525721472216027.a n = A014175 n

end A014175

/-! ## A014175.P4616665305455598866

`∑[∑[∑[A005318(n+1)]]]`
-/

namespace A014175.P4616665305455598866
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014175.P4616665305455598866

namespace A014175

/-- `∑[∑[∑[A005318(n+1)]]]` -/
def P4616665305455598866.Spec : Prop :=
  ∀ n, P4616665305455598866.a n = A014175 n

end A014175

/-! ## A014175.P3199613776317674568

`∑[∑[∑[∑[A005230(n+1)]]]]`
-/

namespace A014175.P3199613776317674568
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014175.P3199613776317674568

namespace A014175

/-- `∑[∑[∑[∑[A005230(n+1)]]]]` -/
def P3199613776317674568.Spec : Prop :=
  ∀ n, P3199613776317674568.a n = A014175 n

end A014175

/-! ## A014175.P1725718049157641013

`∑{d}[2^n, A014173(log2(#))]`
-/

namespace A014175.P1725718049157641013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014173 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A014175.P1725718049157641013

namespace A014175

/-- `∑{d}[2^n, A014173(log2(#))]` -/
def P1725718049157641013.Spec : Prop :=
  ∀ n, P1725718049157641013.a n = A014175 n

end A014175

/-!
# A014176: Decimal expansion of the silver mean, 1+sqrt(2).

The programs for A014176, there is no canonical definition to state claims against.
-/

/-! ## A014176.P12003383329478962350

`A002193(abs(2-n)+2)`
-/

namespace A014176.P12003383329478962350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((|2 - (n : ℤ)| + 2).toNat + 1)

end

end A014176.P12003383329478962350

/-! ## A014176.P15363498344411952599

`A002193(n)+A000007(n)`
-/

namespace A014176.P15363498344411952599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) + A000007 n

end

end A014176.P15363498344411952599

/-! ## A014176.P16129905510286646353

`A002193(n)*A054977(n)`
-/

namespace A014176.P16129905510286646353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) * A054977 n

end

end A014176.P16129905510286646353

/-! ## A014176.P12403049685505524782

`A002193(n)+A000038(n)/2`
-/

namespace A014176.P12403049685505524782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002193 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A014176.P12403049685505524782

/-! ## A014176.P3484229532300042633

`A002193(n)+C(A025457(n), n)`
-/

namespace A014176.P3484229532300042633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) + (Nat.choose (A025457 n).toNat n : ℤ)

end

end A014176.P3484229532300042633

/-! ## A014176.P6155111050250439928

`A010051(2*(n+1))+A002193(n)`
-/

namespace A014176.P6155111050250439928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A002193 (n + 1)

end

end A014176.P6155111050250439928

/-! ## A014176.P16499740179190687440

`A209229(2*n+1)+A002193(n)`
-/

namespace A014176.P16499740179190687440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1) + A002193 (n + 1)

end

end A014176.P16499740179190687440

/-! ## A014176.P17111994315451914684

`A002193(n)+A010052(n+1)*A010052(n)`
-/

namespace A014176.P17111994315451914684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) + A010052 (n + 1) * A010052 n

end

end A014176.P17111994315451914684

/-! ## A014176.P904437731710610194

`A019590(n+2)+A002193(n)`
-/

namespace A014176.P904437731710610194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + A002193 (n + 1)

end

end A014176.P904437731710610194

/-! ## A014176.P10303234401694362461

`2*A002193(n)/A130130(n+1)`
-/

namespace A014176.P10303234401694362461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A002193 (n + 1) : ℚ) / (A130130 (n + 1) : ℚ)

end

end A014176.P10303234401694362461

/-! ## A014176.P13014369280250176335

`A000034(n+1)+A002193(n)-A040001(n)`
-/

namespace A014176.P13014369280250176335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (A002193 (n + 1) - A040001 n)

end

end A014176.P13014369280250176335

/-! ## A014176.P16870223655465781825

`A104807(n+1)+A120731(n+1)-A334754(n+1)`
-/

namespace A014176.P16870223655465781825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104807 (n + 1) + (A120731 (n + 1 + 1) - A334754 (n + 1))

end

end A014176.P16870223655465781825

/-! ## A014176.P9353203032619030982

`A130713(n+2)+A002193(n)`
-/

namespace A014176.P9353203032619030982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (n + 2) + A002193 (n + 1)

end

end A014176.P9353203032619030982

/-! ## A014176.P965202697762255673

`A000034(A040001(n)+n)*A002193(n)`
-/

namespace A014176.P965202697762255673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A040001 n + (n : ℤ)).toNat * A002193 (n + 1)

end

end A014176.P965202697762255673

/-! ## A014176.P3767629823386123532

`A152623(2*n)+A002193(n)`
-/

namespace A014176.P3767629823386123532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152623 (2 * n + 1) + A002193 (n + 1)

end

end A014176.P3767629823386123532

/-! ## A014176.P11669749790078996090

`A083035(A090892(n+1))+A002193(n)`
-/

namespace A014176.P11669749790078996090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A090892 (n + 1)).toNat + A002193 (n + 1)

end

end A014176.P11669749790078996090

/-!
# A014177: Inverse of 168th cyclotomic polynomial.

The programs for A014177, there is no canonical definition to state claims against.
-/

/-! ## A014177.P7265616664965911314

`A014093(gcd(n, ∑[n]))`
-/

namespace A014177.P7265616664965911314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014093 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A014177.P7265616664965911314

/-!
# A014178: a(n) = Sum_{k = 0..n} binomial(n,k)^3*binomial(n+k,k).

The programs for A014178, there is no canonical definition to state claims against.
-/

/-! ## A014178.P16626000100486609769

`A004396(or(n, A149904(2*n)))`
-/

namespace A014178.P16626000100486609769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lor (n : ℤ) (A149904 (2 * n))).toNat

end

end A014178.P16626000100486609769

/-!
# A014179: Inverse of 170th cyclotomic polynomial.

The programs for A014179, there is no canonical definition to state claims against.
-/

/-! ## A014179.P3966367385681468268

`A014094(n)*A033999(n)`
-/

namespace A014179.P3966367385681468268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014094 n * A033999 n

end

end A014179.P3966367385681468268

/-!
# A014181: Numbers > 9 with all digits the same.

The programs for A014181, the canonical program `A014181.P6862459041778069308` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014181 has offset 1).

The definition of A014181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014181.P6862459041778069308

`A010785(n+10)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A014181

/-- `A010785(n+10)` -/
def P6862459041778069308.Spec : Prop :=
  ∀ n, P6862459041778069308.a n = A014181 (n + 1)

theorem P6862459041778069308.correct : P6862459041778069308.Spec := by
  intro n
  simp only [A014181, Nat.add_sub_cancel]

end A014181

/-! ## A014181.P12593489670314436281

`record[A010785(A020723(A008612(n)))]`
-/

namespace A014181.P12593489670314436281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A020723 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014181.P12593489670314436281

namespace A014181

/-- `record[A010785(A020723(A008612(n)))]` -/
def P12593489670314436281.Spec : Prop :=
  ∀ n, P12593489670314436281.a n = A014181 (n + 1)

end A014181

/-! ## A014181.P4275651339542517882

`record[A010785(A020723(A028242(n)))]`
-/

namespace A014181.P4275651339542517882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A020723 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014181.P4275651339542517882

namespace A014181

/-- `record[A010785(A020723(A028242(n)))]` -/
def P4275651339542517882.Spec : Prop :=
  ∀ n, P4275651339542517882.a n = A014181 (n + 1)

end A014181

/-! ## A014181.P4101732220167270799

`A152966(n+10)/2`
-/

namespace A014181.P4101732220167270799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152966 (n + 10) : ℚ) / 2

end

end A014181.P4101732220167270799

namespace A014181

/-- `A152966(n+10)/2` -/
def P4101732220167270799.Spec : Prop :=
  ∀ n, P4101732220167270799.a n = (A014181 (n + 1) : ℚ)

theorem P4101732220167270799.correct : P4101732220167270799.Spec := by
  intro n
  simp only [A014181, Nat.add_sub_cancel, A014181.P4101732220167270799.a, A014181.P6862459041778069308.a, A010785, A010785.P6052333875447302729.a, A152966, A152966.P10266938102124728314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014181

/-! ## A014181.P6725650251034238822

`Δ[A277209(n+9)]`
-/

namespace A014181.P6725650251034238822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277209 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014181.P6725650251034238822

namespace A014181

/-- `Δ[A277209(n+9)]` -/
def P6725650251034238822.Spec : Prop :=
  ∀ n, P6725650251034238822.a n = A014181 (n + 1)

end A014181

/-! ## A014181.P8761266564501584083

`∩[A050785(n+1), A064222(n)]`
-/

namespace A014181.P8761266564501584083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014181.P8761266564501584083

namespace A014181

/-- `∩[A050785(n+1), A064222(n)]` -/
def P8761266564501584083.Spec : Prop :=
  ∀ n, (P8761266564501584083.a n : ℤ) = A014181 (n + 1)

end A014181

/-! ## A014181.P16086942449588764145

`∩[A033619(n+1), A050785(n+1)]`
-/

namespace A014181.P16086942449588764145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014181.P16086942449588764145

namespace A014181

/-- `∩[A033619(n+1), A050785(n+1)]` -/
def P16086942449588764145.Spec : Prop :=
  ∀ n, (P16086942449588764145.a n : ℤ) = A014181 (n + 1)

end A014181

/-! ## A014181.P7521803919755141085

`∩[A048321(n+1), A050785(n+1)]`
-/

namespace A014181.P7521803919755141085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014181.P7521803919755141085

namespace A014181

/-- `∩[A048321(n+1), A050785(n+1)]` -/
def P7521803919755141085.Spec : Prop :=
  ∀ n, (P7521803919755141085.a n : ℤ) = A014181 (n + 1)

end A014181

/-! ## A014181.P5889982450387183520

`∩[A050785(n+1), A096105(n+1)]`
-/

namespace A014181.P5889982450387183520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014181.P5889982450387183520

namespace A014181

/-- `∩[A050785(n+1), A096105(n+1)]` -/
def P5889982450387183520.Spec : Prop :=
  ∀ n, (P5889982450387183520.a n : ℤ) = A014181 (n + 1)

end A014181

/-! ## A014181.P4963896609357549469

`∩[A050785(n+1), A160818(n+1)]`
-/

namespace A014181.P4963896609357549469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A014181.P4963896609357549469

namespace A014181

/-- `∩[A050785(n+1), A160818(n+1)]` -/
def P4963896609357549469.Spec : Prop :=
  ∀ n, (P4963896609357549469.a n : ℤ) = A014181 (n + 1)

end A014181

/-!
# A014182: Expansion of e.g.f. exp(1-x-exp(-x)).

The programs for A014182, there is no canonical definition to state claims against.
-/

/-! ## A014182.P3945878228511884801

`1-∑[A101851(n)]`
-/

namespace A014182.P3945878228511884801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014182.P3945878228511884801

/-! ## A014182.P7354443923535637109

`(-1)^n*A293037(n)`
-/

namespace A014182.P7354443923535637109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293037 n

end

end A014182.P7354443923535637109

/-! ## A014182.P384970796915752216

`A074051(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A014182.P384970796915752216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074051 (n - 1) - a (n - 1)

end

end A014182.P384970796915752216

/-! ## A014182.P9384657530920563675

`(-1)^(n+1)*A000587(n+1)`
-/

namespace A014182.P9384657530920563675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A000587 (n + 1)

end

end A014182.P9384657530920563675

/-! ## A014182.P1182252849073627133

`A000587(n+1)*A033999(n+1)`
-/

namespace A014182.P1182252849073627133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (n + 1) * A033999 (n + 1)

end

end A014182.P1182252849073627133

/-! ## A014182.P16226119850465540931

`A000587(n+1)*A165326(n+2)`
-/

namespace A014182.P16226119850465540931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 (n + 1) * A165326 (n + 2)

end

end A014182.P16226119850465540931

/-! ## A014182.P10236347336974721147

`A000587(n+1)/A033999(n+3)`
-/

namespace A014182.P10236347336974721147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000587 (n + 1) : ℚ) / (A033999 (n + 3) : ℚ)

end

end A014182.P10236347336974721147

/-! ## A014182.P2040372315671074676

`A309386(A034856(n+2))`
-/

namespace A014182.P2040372315671074676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309386 (A034856 (n + 2)).toNat

end

end A014182.P2040372315671074676

/-! ## A014182.P1295367374096665003

`Δ[A109747(n+1)]`
-/

namespace A014182.P1295367374096665003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A014182.P1295367374096665003

/-! ## A014182.P10124182081150144935

`A109747(n+2)-A109747(n+1)`
-/

namespace A014182.P10124182081150144935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109747 (n + 2) - A109747 (n + 1)

end

end A014182.P10124182081150144935

/-!
# A014183: Inverse of 174th cyclotomic polynomial.

The programs for A014183, there is no canonical definition to state claims against.
-/

/-! ## A014183.P8725765364499632998

`A014096(n)*A033999(n)`
-/

namespace A014183.P8725765364499632998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014096 n * A033999 n

end

end A014183.P8725765364499632998

/-!
# A014184: Inverse of 175th cyclotomic polynomial.

The programs for A014184, there is no canonical definition to state claims against.
-/

/-! ## A014184.P15106068400212893463

`A014019(n)*A014359(n)`
-/

namespace A014184.P15106068400212893463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 n * A014359 n

end

end A014184.P15106068400212893463

/-!
# A014185: Volume of (the dilation by 2) of the Relaxed Boolean Quadric polytope of order n.

The programs for A014185, the canonical program `A014185.P12833721159905277405` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014185 has offset 0).

The definition of A014185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A014185.P12833721159905277405

`n!*C(n+1, 2)!*4^n/(2*n)!`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A014185

/-- `n!*C(n+1, 2)!*4^n/(2*n)!` -/
def P12833721159905277405.Spec : Prop :=
  ∀ n, P12833721159905277405.a n = (A014185 n : ℚ)

end A014185

/-!
# A014186: Squares of palindromes.

The programs for A014186, there is no canonical definition to state claims against.
-/

/-! ## A014186.P3026865412952961391

`A002113(n+1)²`
-/

namespace A014186.P3026865412952961391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2

end

end A014186.P3026865412952961391

/-! ## A014186.P7618548005649761482

`sqrt(A014188(n))`
-/

namespace A014186.P7618548005649761482
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014188 n : ℝ)

end

end A014186.P7618548005649761482

/-! ## A014186.P8598795612960733135

`A014187(n)^(2/3)`
-/

namespace A014186.P8598795612960733135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014187 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A014186.P8598795612960733135

/-! ## A014186.P313855423526238232

`(∑[A086862(abs(1-n)+1)]-1)²`
-/

namespace A014186.P313855423526238232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A014186.P313855423526238232

/-! ## A014186.P13494514705577031863

`record[A002113(A328399(n))²]`
-/

namespace A014186.P13494514705577031863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014186.P13494514705577031863

/-! ## A014186.P10377687780810106052

`A002113(A000027(n+1))^2`
-/

namespace A014186.P10377687780810106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A000027 (n + 1)).toNat ^ 2

end

end A014186.P10377687780810106052

/-! ## A014186.P5001726114468874725

`2*A089717(n+1)-A002113(n+1)`
-/

namespace A014186.P5001726114468874725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089717 (n + 1) - A002113 (n + 1)

end

end A014186.P5001726114468874725

/-! ## A014186.P14238862749303606633

`(A002113(n+1)%A002385(n+1))^2`
-/

namespace A014186.P14238862749303606633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (n + 1)) (A002385 (n + 1)) ^ 2

end

end A014186.P14238862749303606633

/-! ## A014186.P16029835600816220637

`(A086862(n+1)-∑[A086862(n+1)])²`
-/

namespace A014186.P16029835600816220637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086862 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A014186.P16029835600816220637

/-! ## A014186.P3773922084810121838

`A002113(n+1)^A014963(A001316(n))`
-/

namespace A014186.P3773922084810121838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A014186.P3773922084810121838

/-! ## A014186.P6284918727854610017

`A002113(n+1)^A020639(A002081(n))`
-/

namespace A014186.P6284918727854610017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) : ℚ) ^ (A020639 (A002081 n).toNat : ℤ)

end

end A014186.P6284918727854610017

/-! ## A014186.P2605364047754585973

`(A002113(n+1)+A000007(n))*A002113(n+1)`
-/

namespace A014186.P2605364047754585973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) + A000007 n) * A002113 (n + 1)

end

end A014186.P2605364047754585973

/-! ## A014186.P11070057172644527622

`record[A002113(A152271(n))²]`
-/

namespace A014186.P11070057172644527622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014186.P11070057172644527622

/-! ## A014186.P10046591756665444719

`A002113(n+1)^A001227(p?[A180925(n+1)])`
-/

namespace A014186.P10046591756665444719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180925 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) : ℚ) ^ (A001227 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A014186.P10046591756665444719

/-! ## A014186.P2714779255733215839

`eq[n, A004086(n)]²`
-/

namespace A014186.P2714779255733215839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A014186.P2714779255733215839

/-! ## A014186.P1831850750578857352

`eq[0, A261424(n)]²`
-/

namespace A014186.P1831850750578857352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A014186.P1831850750578857352

/-! ## A014186.P13802528403472909798

`eq[2*n, A056964(n)]²`
-/

namespace A014186.P13802528403472909798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A014186.P13802528403472909798

/-! ## A014186.P4714917397249221868

`∩[A061917(n+1), A131058(n+1)]²`
-/

namespace A014186.P4714917397249221868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A014186.P4714917397249221868

/-! ## A014186.P16166654804483681126

`A002113(n+1)^A020639(A002082(n))`
-/

namespace A014186.P16166654804483681126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) : ℚ) ^ (A020639 (A002082 n).toNat : ℤ)

end

end A014186.P16166654804483681126

/-!
# A014187: Cubes of palindromes.

The programs for A014187, there is no canonical definition to state claims against.
-/

/-! ## A014187.P15271343159044839430

`A002113(n+1)^3`
-/

namespace A014187.P15271343159044839430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 3

end

end A014187.P15271343159044839430

/-! ## A014187.P10553825195186635580

`sqrt(A014186(n+1)^3)`
-/

namespace A014187.P10553825195186635580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 (n + 1) ^ 3 : ℝ)

end

end A014187.P10553825195186635580

/-! ## A014187.P10717589357633941188

`sqrt(sqrt(A014188(n))*A014188(n))`
-/

namespace A014187.P10717589357633941188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A014188 n : ℝ) * (A014188 n : ℝ))

end

end A014187.P10717589357633941188

/-! ## A014187.P17799221133247487815

`A002113(n+1)*A014186(n+1)`
-/

namespace A014187.P17799221133247487815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) * A014186 (n + 1)

end

end A014187.P17799221133247487815

/-! ## A014187.P8844437058793901710

`(∑[A086862(A000007(n)+n)]-1)^3`
-/

namespace A014187.P8844437058793901710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 3

end

end A014187.P8844437058793901710

/-! ## A014187.P9989938893022498412

`A002113(n+1)²*record[A002113(A328399(n))]`
-/

namespace A014187.P9989938893022498412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014187.P9989938893022498412

/-! ## A014187.P4128617196972553237

`A002113(A000027(n+1))²*A002113(n+1)`
-/

namespace A014187.P4128617196972553237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A000027 (n + 1)).toNat ^ 2 * A002113 (n + 1)

end

end A014187.P4128617196972553237

/-! ## A014187.P17588383979744660241

`(A002113(n+1)+A000007(n))*A002113(n+1)²`
-/

namespace A014187.P17588383979744660241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) + A000007 n) * A002113 (n + 1) ^ 2

end

end A014187.P17588383979744660241

/-! ## A014187.P9050496469739806162

`(A002113(n+1)*A057077(n))²*A002113(n+1)`
-/

namespace A014187.P9050496469739806162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) * A057077 n) ^ 2 * A002113 (n + 1)

end

end A014187.P9050496469739806162

/-! ## A014187.P12063401164791550560

`(A002113(n+1)*A057428(n))²*A002113(n+1)`
-/

namespace A014187.P12063401164791550560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) * A057428 n) ^ 2 * A002113 (n + 1)

end

end A014187.P12063401164791550560

/-! ## A014187.P15753802090203457534

`A002113(n+1)²*record[A002113(A152271(n))]`
-/

namespace A014187.P15753802090203457534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014187.P15753802090203457534

/-! ## A014187.P446701433137275171

`eq[n, A004086(n)]^3`
-/

namespace A014187.P446701433137275171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A014187.P446701433137275171

/-! ## A014187.P2539454676208638966

`A002113(n+1)²*and(A000225(n), A002113(n+1))`
-/

namespace A014187.P2539454676208638966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2 * Int.land (A000225 n) (A002113 (n + 1))

end

end A014187.P2539454676208638966

/-! ## A014187.P1508402569299147499

`eq[0, A261424(n)]^3`
-/

namespace A014187.P1508402569299147499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A014187.P1508402569299147499

/-! ## A014187.P3256965710459837442

`lt[A040976(A261424(n)+2), 2]^3`
-/

namespace A014187.P3256965710459837442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A261424 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A014187.P3256965710459837442

/-! ## A014187.P3600488072179900297

`∩[A002113(n+1)², A305231(n+1)]*A002113(n+1)`
-/

namespace A014187.P3600488072179900297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A002113 (n + 1)

end

end A014187.P3600488072179900297

/-! ## A014187.P7562838706310652767

`record[A047813(n)^3]`
-/

namespace A014187.P7562838706310652767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014187.P7562838706310652767

/-! ## A014187.P16411431698658305740

`eq[0, A319387(n)]^3`
-/

namespace A014187.P16411431698658305740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A014187.P16411431698658305740

/-! ## A014187.P7329130582999687672

`lt[A241173(n), 1]^3`
-/

namespace A014187.P7329130582999687672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A014187.P7329130582999687672

/-! ## A014187.P12844662015064894968

`lt[A262257(n), 1]^3`
-/

namespace A014187.P12844662015064894968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A014187.P12844662015064894968

/-!
# A014188: Fourth powers of palindromes.

The programs for A014188, there is no canonical definition to state claims against.
-/

/-! ## A014188.P3076800627813674561

`A014186(n+1)²`
-/

namespace A014188.P3076800627813674561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014186 (n + 1) ^ 2

end

end A014188.P3076800627813674561

/-! ## A014188.P62465151077386539

`A002113(n+1)^4`
-/

namespace A014188.P62465151077386539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 4

end

end A014188.P62465151077386539

/-! ## A014188.P10874135649214230534

`A002113(n-log2(1/2))²²`
-/

namespace A014188.P10874135649214230534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2) ^ 2

end

end A014188.P10874135649214230534

/-! ## A014188.P14517982152491097758

`record[A002113(A328399(n))²²]`
-/

namespace A014188.P14517982152491097758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (A328399 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014188.P14517982152491097758

/-! ## A014188.P17884621094088521914

`A002113(n+1)*A014187(n)`
-/

namespace A014188.P17884621094088521914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) * A014187 n

end

end A014188.P17884621094088521914

/-! ## A014188.P9367264728300420386

`(A086862(n+1)-∑[A086862(n+1)])²²`
-/

namespace A014188.P9367264728300420386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A086862 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A014188.P9367264728300420386

/-! ## A014188.P3950864328111874599

`record[A002113(A152271(n))²²]`
-/

namespace A014188.P3950864328111874599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002113 (A152271 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014188.P3950864328111874599

/-! ## A014188.P7699262017051061477

`eq[n, A004086(n)]^4`
-/

namespace A014188.P7699262017051061477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 4

end

end A014188.P7699262017051061477

/-! ## A014188.P14971026029757979686

`eq[0, A261424(n)]^4`
-/

namespace A014188.P14971026029757979686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 4

end

end A014188.P14971026029757979686

/-! ## A014188.P4958536048484204423

`A261914(A002113(n+2))²²`
-/

namespace A014188.P4958536048484204423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A261914 (A002113 (n + 2)).toNat ^ 2) ^ 2

end

end A014188.P4958536048484204423

/-! ## A014188.P10946943747707821701

`∩[A002113(n+1)², A305231(n+1)]²`
-/

namespace A014188.P10946943747707821701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A014188.P10946943747707821701

/-! ## A014188.P18163651607355407602

`∩[A061917(n+1), A131058(n+1)]²²`
-/

namespace A014188.P18163651607355407602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2) ^ 2

end

end A014188.P18163651607355407602

/-! ## A014188.P10191332617882107134

`∩[A061917(n+1), A342851(n+1)]²²`
-/

namespace A014188.P10191332617882107134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2) ^ 2

end

end A014188.P10191332617882107134

/-! ## A014188.P15242229467833000300

`record[A047813(n)²²]`
-/

namespace A014188.P15242229467833000300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047813 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014188.P15242229467833000300

/-! ## A014188.P13122665409230246036

`A000583(A002113(n+1))`
-/

namespace A014188.P13122665409230246036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A002113 (n + 1)).toNat

end

end A014188.P13122665409230246036

/-!
# A014189: Inverse of 180th cyclotomic polynomial.

The programs for A014189, there is no canonical definition to state claims against.
-/

/-! ## A014189.P2893885531025134616

`A014069(gcd(n, round(2*n/3)))`
-/

namespace A014189.P2893885531025134616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014069 (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))))

end

end A014189.P2893885531025134616

/-!
# A014190: Palindromes in base 3 (written in base 10).

The programs for A014190, there is no canonical definition to state claims against.
-/

/-! ## A014190.P8657910520985540353

`∑[A330312(n+1)]-A330312(n+1)`
-/

namespace A014190.P8657910520985540353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330312 (n + 1)

end

end A014190.P8657910520985540353

/-! ## A014190.P1920434795673467802

`∑[A330312(A123108(2*n))]-1`
-/

namespace A014190.P1920434795673467802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330312 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014190.P1920434795673467802

/-! ## A014190.P380162117333967206

`∑[A330312(A233583(n+1))]-1`
-/

namespace A014190.P380162117333967206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330312 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014190.P380162117333967206

/-! ## A014190.P3144937193748951509

`∑[A330312(A233583(n+1))%A098181(n)]`
-/

namespace A014190.P3144937193748951509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330312 (A233583 (n + 1)).toNat) (A098181 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014190.P3144937193748951509

/-! ## A014190.P16227791122513408251

`eq[0, A055947(n)]`
-/

namespace A014190.P16227791122513408251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P16227791122513408251

/-! ## A014190.P8858333174660031679

`eq[A117966(n), A327252(n)]`
-/

namespace A014190.P8858333174660031679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014190.P8858333174660031679

/-! ## A014190.P17575222949781142914

`record[A265511(n)]`
-/

namespace A014190.P17575222949781142914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014190.P17575222949781142914

/-! ## A014190.P11346264844529886734

`eq[n, A030102(n)]`
-/

namespace A014190.P11346264844529886734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P11346264844529886734

/-! ## A014190.P16396554874549264765

`eq[2*n, A055946(n)]`
-/

namespace A014190.P16396554874549264765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P16396554874549264765

/-! ## A014190.P3082761905412993346

`eq[A007089(n), A305877(n)]`
-/

namespace A014190.P3082761905412993346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014190.P3082761905412993346

/-! ## A014190.P1651192681016079783

`eq[n, A263273(A051176(n))]`
-/

namespace A014190.P1651192681016079783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A051176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P1651192681016079783

/-! ## A014190.P4856646753395953099

`eq[A051176(n), A265511(n)]`
-/

namespace A014190.P4856646753395953099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014190.P4856646753395953099

/-! ## A014190.P5422953251211135148

`eq[n, A263273(A091684(n))]`
-/

namespace A014190.P5422953251211135148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A091684 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P5422953251211135148

/-! ## A014190.P11959647422257145286

`eq[n, A263273(A106610(n))]`
-/

namespace A014190.P11959647422257145286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A106610 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P11959647422257145286

/-! ## A014190.P9874896017784242216

`eq[A106610(n), A265511(n)]`
-/

namespace A014190.P9874896017784242216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014190.P9874896017784242216

/-! ## A014190.P5608745300956241254

`A265511(lt[n, A265511(n)+1])`
-/

namespace A014190.P5608745300956241254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A014190.P5608745300956241254

/-! ## A014190.P876983521297949160

`A265511(lt[n-1, A265511(n)])`
-/

namespace A014190.P876983521297949160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A014190.P876983521297949160

/-! ## A014190.P15487964906941931258

`lt[(n-A030102(n))², A054390(n)]`
-/

namespace A014190.P15487964906941931258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A030102 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A014190.P15487964906941931258

/-! ## A014190.P17150124304108841875

`eq[0, A077402(n)]`
-/

namespace A014190.P17150124304108841875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P17150124304108841875

/-! ## A014190.P1694753384426635798

`eq[0, A338828(n)]`
-/

namespace A014190.P1694753384426635798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014190.P1694753384426635798

/-!
# A014191: Inverse of 182nd cyclotomic polynomial.

The programs for A014191, there is no canonical definition to state claims against.
-/

/-! ## A014191.P474725692709367750

`A014100(n)*A033999(n)`
-/

namespace A014191.P474725692709367750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014100 n * A033999 n

end

end A014191.P474725692709367750

/-!
# A014192: Palindromes in base 4 (written in base 10).

The programs for A014192, there is no canonical definition to state claims against.
-/

/-! ## A014192.P17743748835164427874

`eq[0, A055949(n)]`
-/

namespace A014192.P17743748835164427874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P17743748835164427874

/-! ## A014192.P8330765528582041321

`eq[n, A030103(n)]`
-/

namespace A014192.P8330765528582041321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P8330765528582041321

/-! ## A014192.P2800456404172792213

`eq[n, A265546(n)]`
-/

namespace A014192.P2800456404172792213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P2800456404172792213

/-! ## A014192.P6570271010239104056

`record[and(n, A048703(n))]`
-/

namespace A014192.P6570271010239104056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048703 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A014192.P6570271010239104056

/-! ## A014192.P11297520004113665817

`eq[2*n, A055948(n)]`
-/

namespace A014192.P11297520004113665817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P11297520004113665817

/-! ## A014192.P10670888443331403919

`eq[n, A264994(A190621(n))]`
-/

namespace A014192.P10670888443331403919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 (A190621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P10670888443331403919

/-! ## A014192.P16972284370396582751

`eq[n, A264994(A214392(n))]`
-/

namespace A014192.P16972284370396582751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 (A214392 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P16972284370396582751

/-! ## A014192.P4001503428749951136

`eq[n, A264994(A255347(n))]`
-/

namespace A014192.P4001503428749951136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264994 (A255347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A014192.P4001503428749951136

/-! ## A014192.P1787129221381212353

`eq[A339597(A055948(n)-n), A339597(n)]`
-/

namespace A014192.P1787129221381212353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 (A055948 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A014192.P1787129221381212353

/-! ## A014192.P12137881203011548626

`lt[A284799(A284799(n)+n), 1]`
-/

namespace A014192.P12137881203011548626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284799 (A284799 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014192.P12137881203011548626

/-! ## A014192.P6489639008241083697

`lt[A284799(xor(n, A284799(n))), 1]`
-/

namespace A014192.P6489639008241083697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284799 (Int.xor (n : ℤ) (A284799 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A014192.P6489639008241083697

/-!
# A014193: n-th prime + mu(n).

The programs for A014193, the canonical program `A014193.P553466698010306128` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014193 has offset 1).

The definition of A014193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014193.P6723363438808864845

`A008683(n+1)+Δ[A007504(n)]`
-/

namespace A014193.P6723363438808864845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (f1 (n + 1) - f1 n)

end

end A014193.P6723363438808864845

namespace A014193

/-- `A008683(n+1)+Δ[A007504(n)]` -/
def P6723363438808864845.Spec : Prop :=
  ∀ n, P6723363438808864845.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P11348577251613876982

`A008683(n+1)+A000040(n+1)`
-/

namespace A014193.P11348577251613876982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A000040 (n + 1)

end

end A014193.P11348577251613876982

namespace A014193

/-- `A008683(n+1)+A000040(n+1)` -/
def P11348577251613876982.Spec : Prop :=
  ∀ n, P11348577251613876982.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P553466698010306128

`A007423(n+1)+A006093(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A014193

/-- `A007423(n+1)+A006093(n+1)` -/
def P553466698010306128.Spec : Prop :=
  ∀ n, P553466698010306128.a n = A014193 (n + 1)

theorem P553466698010306128.correct : P553466698010306128.Spec := by
  intro n
  simp only [A014193, Nat.add_sub_cancel]

end A014193

/-! ## A014193.P3051517749278537817

`A076369(n+1)+A014689(n+1)`
-/

namespace A014193.P3051517749278537817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) + A014689 (n + 1)

end

end A014193.P3051517749278537817

namespace A014193

/-- `A076369(n+1)+A014689(n+1)` -/
def P3051517749278537817.Spec : Prop :=
  ∀ n, P3051517749278537817.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P12421216313612929333

`A080847(n+1)+A040976(n+1)`
-/

namespace A014193.P12421216313612929333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) + A040976 (n + 1)

end

end A014193.P12421216313612929333

namespace A014193

/-- `A080847(n+1)+A040976(n+1)` -/
def P12421216313612929333.Spec : Prop :=
  ∀ n, P12421216313612929333.a n = A014193 (n + 1)

theorem P12421216313612929333.correct : P12421216313612929333.Spec := by
  intro n
  simp only [A014193, Nat.add_sub_cancel, A014193.P12421216313612929333.a, A014193.P553466698010306128.a, A006093, A006093.P2906174024863549003.a, A007423, A007423.P11782207234129447454.a, A040976, A040976.P11599754272797435513.a, A080847, A080847.P15039464906544920582.f1, A080847.P15039464906544920582.f2, A080847.P15039464906544920582.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014193

/-! ## A014193.P8908869936769145197

`A231821(n+1)+A086801(n+1)`
-/

namespace A014193.P8908869936769145197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) + A086801 (n + 1)

end

end A014193.P8908869936769145197

namespace A014193

/-- `A231821(n+1)+A086801(n+1)` -/
def P8908869936769145197.Spec : Prop :=
  ∀ n, P8908869936769145197.a n = A014193 (n + 1)

theorem P8908869936769145197.correct : P8908869936769145197.Spec := by
  intro n
  simp only [A014193, Nat.add_sub_cancel, A014193.P8908869936769145197.a, A014193.P553466698010306128.a, A006093, A006093.P2906174024863549003.a, A007423, A007423.P11782207234129447454.a, A086801, A086801.P7118698000878110641.f1, A086801.P7118698000878110641.a, A231821, A231821.P7119461953702847255.f1, A231821.P7119461953702847255.f2, A231821.P7119461953702847255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A080847, A080847.P15039464906544920582.f1, A080847.P15039464906544920582.f2, A080847.P15039464906544920582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014193

/-! ## A014193.P14440746080835386243

`A052147(n+1)-A129979(n+1)`
-/

namespace A014193.P14440746080835386243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A129979 (n + 1)

end

end A014193.P14440746080835386243

namespace A014193

/-- `A052147(n+1)-A129979(n+1)` -/
def P14440746080835386243.Spec : Prop :=
  ∀ n, P14440746080835386243.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P10529753085138524633

`A008683(n+1)+abs(Δ[A022837(n)])`
-/

namespace A014193.P10529753085138524633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + |f1 (n + 1) - f1 n|

end

end A014193.P10529753085138524633

namespace A014193

/-- `A008683(n+1)+abs(Δ[A022837(n)])` -/
def P10529753085138524633.Spec : Prop :=
  ∀ n, P10529753085138524633.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P12781263412500625077

`A008683(n+1)+abs(Δ[A064365(n)])`
-/

namespace A014193.P12781263412500625077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + |f1 (n + 1) - f1 n|

end

end A014193.P12781263412500625077

namespace A014193

/-- `A008683(n+1)+abs(Δ[A064365(n)])` -/
def P12781263412500625077.Spec : Prop :=
  ∀ n, P12781263412500625077.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P6306025290912735895

`A008683(n+1)+sqrt(A001248(n+1))`
-/

namespace A014193.P6306025290912735895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A014193.P6306025290912735895

namespace A014193

/-- `A008683(n+1)+sqrt(A001248(n+1))` -/
def P6306025290912735895.Spec : Prop :=
  ∀ n, P6306025290912735895.a n = (A014193 (n + 1) : ℝ)

end A014193

/-! ## A014193.P6926590051220467002

`A008683(n+1)+∑[A054541(n+1)]`
-/

namespace A014193.P6926590051220467002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014193.P6926590051220467002

namespace A014193

/-- `A008683(n+1)+∑[A054541(n+1)]` -/
def P6926590051220467002.Spec : Prop :=
  ∀ n, P6926590051220467002.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P11325024566307958090

`A006093(n+1)+A008683(n+1)+1`
-/

namespace A014193.P11325024566307958090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A008683 (n + 1) + 1)

end

end A014193.P11325024566307958090

namespace A014193

/-- `A006093(n+1)+A008683(n+1)+1` -/
def P11325024566307958090.Spec : Prop :=
  ∀ n, P11325024566307958090.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P1244461408495513292

`A000040(n+1)+A007423(n+1)-1`
-/

namespace A014193.P1244461408495513292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A007423 (n + 1) - 1)

end

end A014193.P1244461408495513292

namespace A014193

/-- `A000040(n+1)+A007423(n+1)-1` -/
def P1244461408495513292.Spec : Prop :=
  ∀ n, P1244461408495513292.a n = A014193 (n + 1)

theorem P1244461408495513292.correct : P1244461408495513292.Spec := by
  intro n
  simp only [A014193, Nat.add_sub_cancel, A014193.P1244461408495513292.a, A014193.P553466698010306128.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A007423, A007423.P11782207234129447454.a, A080847, A080847.P15039464906544920582.f1, A080847.P15039464906544920582.f2, A080847.P15039464906544920582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A014193

/-! ## A014193.P11519793802442157183

`A008683(n+1)+A008864(n+1)-1`
-/

namespace A014193.P11519793802442157183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A008864 (n + 1) - 1)

end

end A014193.P11519793802442157183

namespace A014193

/-- `A008683(n+1)+A008864(n+1)-1` -/
def P11519793802442157183.Spec : Prop :=
  ∀ n, P11519793802442157183.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P5796070842831231736

`A008683(n+1)+A040976(n+1)+2`
-/

namespace A014193.P5796070842831231736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A040976 (n + 1) + 2)

end

end A014193.P5796070842831231736

namespace A014193

/-- `A008683(n+1)+A040976(n+1)+2` -/
def P5796070842831231736.Spec : Prop :=
  ∀ n, P5796070842831231736.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P12555972921883289914

`A008683(n+1)+sqrt(A110833(n+1))-1`
-/

namespace A014193.P12555972921883289914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) : ℝ) + (Real.sqrt (A110833 (n + 1) : ℝ) - 1)

end

end A014193.P12555972921883289914

namespace A014193

/-- `A008683(n+1)+sqrt(A110833(n+1))-1` -/
def P12555972921883289914.Spec : Prop :=
  ∀ n, P12555972921883289914.a n = (A014193 (n + 1) : ℝ)

end A014193

/-! ## A014193.P3558069411696206674

`A007504(n+1)+A008683(n+1)-A007504(n)`
-/

namespace A014193.P3558069411696206674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A008683 (n + 1) - A007504 n)

end

end A014193.P3558069411696206674

namespace A014193

/-- `A007504(n+1)+A008683(n+1)-A007504(n)` -/
def P3558069411696206674.Spec : Prop :=
  ∀ n, P3558069411696206674.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P1943796860845908276

`A000040(n+1)+A353457(n+1)*A353458(n+1)`
-/

namespace A014193.P1943796860845908276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A353457 (n + 1) * A353458 (n + 1)

end

end A014193.P1943796860845908276

namespace A014193

/-- `A000040(n+1)+A353457(n+1)*A353458(n+1)` -/
def P1943796860845908276.Spec : Prop :=
  ∀ n, P1943796860845908276.a n = A014193 (n + 1)

end A014193

/-! ## A014193.P2874725693245034541

`A000040(n+1)+A062007(n+1)/A000040(n+1)`
-/

namespace A014193.P2874725693245034541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A062007 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A014193.P2874725693245034541

namespace A014193

/-- `A000040(n+1)+A062007(n+1)/A000040(n+1)` -/
def P2874725693245034541.Spec : Prop :=
  ∀ n, P2874725693245034541.a n = (A014193 (n + 1) : ℚ)

end A014193

/-!
# A014194: Inverse of 185th cyclotomic polynomial.

The programs for A014194, there is no canonical definition to state claims against.
-/

/-! ## A014194.P10158042606990214701

`A014379(n)*A033999(n)`
-/

namespace A014194.P10158042606990214701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014379 n * A033999 n

end

end A014194.P10158042606990214701

/-!
# A014195: Inverse of 186th cyclotomic polynomial.

The programs for A014195, there is no canonical definition to state claims against.
-/

/-! ## A014195.P12004564167061381904

`A014102(n)*A033999(n)`
-/

namespace A014195.P12004564167061381904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014102 n * A033999 n

end

end A014195.P12004564167061381904

/-!
# A014196: Inverse of 187th cyclotomic polynomial.

The programs for A014196, there is no canonical definition to state claims against.
-/

/-! ## A014196.P14785077432975882349

`A014383(n)*A033999(n)`
-/

namespace A014196.P14785077432975882349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014383 n * A033999 n

end

end A014196.P14785077432975882349

/-!
# A014197: Number of numbers m with Euler phi(m) = n.

The programs for A014197, there is no canonical definition to state claims against.
-/

/-! ## A014197.P18108266900832072600

`A056239(A322310(n+1))`
-/

namespace A014197.P18108266900832072600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A322310 (n + 1)).toNat

end

end A014197.P18108266900832072600

/-! ## A014197.P16078081279617775806

`A000005(n+1)-A322019(n+1)`
-/

namespace A014197.P16078081279617775806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A322019 (n + 1)

end

end A014197.P16078081279617775806

/-! ## A014197.P4595073474362775132

`A032446(n+1)-A280712(2*(n+1))`
-/

namespace A014197.P4595073474362775132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1) - A280712 (2 * (n + 1))

end

end A014197.P4595073474362775132

/-! ## A014197.P5276291746417249436

`∑{d}[n+1, A008683(#)*A070633((n+1)/#)]`
-/

namespace A014197.P5276291746417249436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070633 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A014197.P5276291746417249436

/-! ## A014197.P1140897294609165708

`∑{d}[n+1, A209229(#)*A280712((n+1)/#)]`
-/

namespace A014197.P1140897294609165708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 d * A280712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A014197.P1140897294609165708

/-! ## A014197.P10668703841551736604

`∑{d}[n+1, A036987(#-1)*A280712((n+1)/#)]`
-/

namespace A014197.P10668703841551736604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A280712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A014197.P10668703841551736604

/-! ## A014197.P6588546495555210003

`A058277(∑[A264739(n+1)])*A264739(n+1)`
-/

namespace A014197.P6588546495555210003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A264739 (n + 1)

end

end A014197.P6588546495555210003

/-! ## A014197.P17171490973227783516

`A320000(∑[n+1])`
-/

namespace A014197.P17171490973227783516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320000 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014197.P17171490973227783516

/-!
# A014198: Number of integer solutions to x^2 + y^2 <= n excluding (0,0).

The programs for A014198, the canonical program `A014198.P2354480518814049901` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A014198 has offset 0).

The definition of A014198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A014198.P3937997270501152787

`A057655(n)-1`
-/

namespace A014198.P3937997270501152787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 n - 1

end

end A014198.P3937997270501152787

namespace A014198

/-- `A057655(n)-1` -/
def P3937997270501152787.Spec : Prop :=
  ∀ n, P3937997270501152787.a n = A014198 n

theorem P3937997270501152787.correct : P3937997270501152787.Spec := by
  intro n
  simp only [A014198, Nat.add_sub_cancel, A014198.P3937997270501152787.a, A014198.P2354480518814049901.a, A057655, A057655.P8142405424443184292.a, A105673, A105673.P14538287794614071707.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014198

/-! ## A014198.P5478550625908817439

`4*A014200(n)`
-/

namespace A014198.P5478550625908817439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A014200 n

end

end A014198.P5478550625908817439

namespace A014198

/-- `4*A014200(n)` -/
def P5478550625908817439.Spec : Prop :=
  ∀ n, P5478550625908817439.a n = A014198 n

end A014198

/-! ## A014198.P5564056912396637817

`∑[A004018(n)]-1`
-/

namespace A014198.P5564056912396637817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014198.P5564056912396637817

namespace A014198

/-- `∑[A004018(n)]-1` -/
def P5564056912396637817.Spec : Prop :=
  ∀ n, P5564056912396637817.a n = A014198 n

end A014198

/-! ## A014198.P9374112466934785322

`∑[abs(A104794(n))]-1`
-/

namespace A014198.P9374112466934785322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014198.P9374112466934785322

namespace A014198

/-- `∑[abs(A104794(n))]-1` -/
def P9374112466934785322.Spec : Prop :=
  ∀ n, P9374112466934785322.a n = A014198 n

end A014198

/-! ## A014198.P2354480518814049901

`a(n-1)+2*A105673(n)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A014198

/-- `a(n-1)+2*A105673(n)` -/
def P2354480518814049901.Spec : Prop :=
  ∀ n, P2354480518814049901.a n = A014198 n

theorem P2354480518814049901.correct : P2354480518814049901.Spec := by
  intro n
  simp only [A014198]

end A014198

/-! ## A014198.P15801835804038638880

`A008586(A014200(n))`
-/

namespace A014198.P15801835804038638880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A014200 n).toNat

end

end A014198.P15801835804038638880

namespace A014198

/-- `A008586(A014200(n))` -/
def P15801835804038638880.Spec : Prop :=
  ∀ n, P15801835804038638880.a n = A014198 n

end A014198

/-! ## A014198.P13992565447437503792

`∑[A004018(n)*A057427(n)]`
-/

namespace A014198.P13992565447437503792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014198.P13992565447437503792

namespace A014198

/-- `∑[A004018(n)*A057427(n)]` -/
def P13992565447437503792.Spec : Prop :=
  ∀ n, P13992565447437503792.a n = A014198 n

end A014198

/-! ## A014198.P14594509155361616986

`∑[lcm(A002828(n), A004018(n))]`
-/

namespace A014198.P14594509155361616986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002828 n) (A004018 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014198.P14594509155361616986

namespace A014198

/-- `∑[lcm(A002828(n), A004018(n))]` -/
def P14594509155361616986.Spec : Prop :=
  ∀ n, (P14594509155361616986.a n : ℤ) = A014198 n

end A014198

/-! ## A014198.P12693923861008513365

`∑[A004018(n)*A019426(2*n)]`
-/

namespace A014198.P12693923861008513365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A019426 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014198.P12693923861008513365

namespace A014198

/-- `∑[A004018(n)*A019426(2*n)]` -/
def P12693923861008513365.Spec : Prop :=
  ∀ n, P12693923861008513365.a n = A014198 n

end A014198

/-! ## A014198.P10356484063016537805

`A118830(2*n+1)+A057655(n)`
-/

namespace A014198.P10356484063016537805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A057655 n

end

end A014198.P10356484063016537805

namespace A014198

/-- `A118830(2*n+1)+A057655(n)` -/
def P10356484063016537805.Spec : Prop :=
  ∀ n, P10356484063016537805.a n = A014198 n

end A014198

/-! ## A014198.P16655346956881582833

`A057961(∑[char[A001481(n+1)]])-1`
-/

namespace A014198.P16655346956881582833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A014198.P16655346956881582833

namespace A014198

/-- `A057961(∑[char[A001481(n+1)]])-1` -/
def P16655346956881582833.Spec : Prop :=
  ∀ n, P16655346956881582833.a n = A014198 n

end A014198

/-! ## A014198.P17130484917243653765

`A256465(n+1)-(A105673(n+1)+1)`
-/

namespace A014198.P17130484917243653765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256465 (n + 1) - (A105673 (n + 1) + 1)

end

end A014198.P17130484917243653765

namespace A014198

/-- `A256465(n+1)-(A105673(n+1)+1)` -/
def P17130484917243653765.Spec : Prop :=
  ∀ n, P17130484917243653765.a n = A014198 n

theorem P17130484917243653765.correct : P17130484917243653765.Spec := by
  intro n
  simp only [A014198, Nat.add_sub_cancel, A014198.P17130484917243653765.a, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, A256465, A256465.P12543537309397973393.a, A002654, A002654.P11574922253888480122.a, A057655, A057655.P8142405424443184292.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A014198

/-! ## A014198.P8894998500397592171

`a(n-1)+lcm(A000002(n), A104794(n))` with `a(0)=0`
-/

namespace A014198.P8894998500397592171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.lcm (A000002 n) (A104794 n)

end

end A014198.P8894998500397592171

namespace A014198

/-- `a(n-1)+lcm(A000002(n), A104794(n))` -/
def P8894998500397592171.Spec : Prop :=
  ∀ n, (P8894998500397592171.a n : ℤ) = A014198 n

end A014198

/-! ## A014198.P16958538857680561329

`A008574(A014200(n)+n)-A008574(n)`
-/

namespace A014198.P16958538857680561329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A014200 n + (n : ℤ)).toNat - A008574 n

end

end A014198.P16958538857680561329

namespace A014198

/-- `A008574(A014200(n)+n)-A008574(n)` -/
def P16958538857680561329.Spec : Prop :=
  ∀ n, P16958538857680561329.a n = A014198 n

end A014198

/-! ## A014198.P12045410629679780775

`∑[A104794(2*n)]-1`
-/

namespace A014198.P12045410629679780775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014198.P12045410629679780775

namespace A014198

/-- `∑[A104794(2*n)]-1` -/
def P12045410629679780775.Spec : Prop :=
  ∀ n, P12045410629679780775.a n = A014198 n

end A014198

/-! ## A014198.P13586761661897788363

`xor(1, ∑[A004018(2*n)])`
-/

namespace A014198.P13586761661897788363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A014198.P13586761661897788363

namespace A014198

/-- `xor(1, ∑[A004018(2*n)])` -/
def P13586761661897788363.Spec : Prop :=
  ∀ n, P13586761661897788363.a n = A014198 n

end A014198

/-! ## A014198.P1969299113450535353

`A004442(A057655(n))`
-/

namespace A014198.P1969299113450535353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A057655 n).toNat

end

end A014198.P1969299113450535353

namespace A014198

/-- `A004442(A057655(n))` -/
def P1969299113450535353.Spec : Prop :=
  ∀ n, P1969299113450535353.a n = A014198 n

end A014198

/-! ## A014198.P3170334521116823802

`∑[A004531(4*n)]-1`
-/

namespace A014198.P3170334521116823802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A014198.P3170334521116823802

namespace A014198

/-- `∑[A004531(4*n)]-1` -/
def P3170334521116823802.Spec : Prop :=
  ∀ n, P3170334521116823802.a n = A014198 n

end A014198

/-! ## A014198.P479544866476628005

`A104794(4*n)+a(n-1)` with `a(0)=0`
-/

namespace A014198.P479544866476628005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A104794 (4 * n) + a (n - 1)

end

end A014198.P479544866476628005

namespace A014198

/-- `A104794(4*n)+a(n-1)` -/
def P479544866476628005.Spec : Prop :=
  ∀ n, P479544866476628005.a n = A014198 n

end A014198

/-! ## A014198.P8687687116098930416

`A134014(4*n)+a(n-1)` with `a(0)=0`
-/

namespace A014198.P8687687116098930416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A134014 (4 * n) + a (n - 1)

end

end A014198.P8687687116098930416

namespace A014198

/-- `A134014(4*n)+a(n-1)` -/
def P8687687116098930416.Spec : Prop :=
  ∀ n, P8687687116098930416.a n = A014198 n

end A014198

/-!
# A014199: Inverse of 190th cyclotomic polynomial.

The programs for A014199, there is no canonical definition to state claims against.
-/

/-! ## A014199.P4049407255972187595

`A014104(n)^(2*(C(comp[∑[n]]-n, 2)-n)-1)*(-1)^n`
-/

namespace A014199.P4049407255972187595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014104 n : ℚ) ^ (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 : ℤ) * ((-1) ^ n : ℚ)

end

end A014199.P4049407255972187595

