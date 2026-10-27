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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A272900: Fibonacci-products fractal sequence.

The programs for A272900, the canonical program `A272900.P12902754051628015523` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272900 has offset 1).

The definition of A272900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272900.P12902754051628015523

`A008967(4*n+5)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A272900

/-- `A008967(4*n+5)` -/
def P12902754051628015523.Spec : Prop :=
  ∀ n, P12902754051628015523.a n = A272900 (n + 1)

theorem P12902754051628015523.correct : P12902754051628015523.Spec := by
  intro n
  simp only [A272900, Nat.add_sub_cancel]

end A272900

/-! ## A272900.P15675526267618240618

`round(A220073(2*n+1)/2)`
-/

namespace A272900.P15675526267618240618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A220073 (2 * n + 1) : ℚ) / 2)

end

end A272900.P15675526267618240618

namespace A272900

/-- `round(A220073(2*n+1)/2)` -/
def P15675526267618240618.Spec : Prop :=
  ∀ n, P15675526267618240618.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P9764618265526053384

`A065033(A220073(2*n+1))`
-/

namespace A272900.P9764618265526053384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A220073 (2 * n + 1)).toNat

end

end A272900.P9764618265526053384

namespace A272900

/-- `A065033(A220073(2*n+1))` -/
def P9764618265526053384.Spec : Prop :=
  ∀ n, P9764618265526053384.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P6942330034039142411

`A319571(A195437(2*n))+1`
-/

namespace A272900.P6942330034039142411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (A195437 (2 * n)).toNat + 1

end

end A272900.P6942330034039142411

namespace A272900

/-- `A319571(A195437(2*n))+1` -/
def P6942330034039142411.Spec : Prop :=
  ∀ n, P6942330034039142411.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P347441400956368912

`A004739(A196199(n)+1+n)`
-/

namespace A272900.P347441400956368912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A196199 n + 1 + (n : ℤ)).toNat

end

end A272900.P347441400956368912

namespace A272900

/-- `A004739(A196199(n)+1+n)` -/
def P347441400956368912.Spec : Prop :=
  ∀ n, P347441400956368912.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P938999164592320728

`A004526(A220073(2*n+1)+1)`
-/

namespace A272900.P938999164592320728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A220073 (2 * n + 1) + 1).toNat

end

end A272900.P938999164592320728

namespace A272900

/-- `A004526(A220073(2*n+1)+1)` -/
def P938999164592320728.Spec : Prop :=
  ∀ n, P938999164592320728.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P12050874798209621006

`A110654(A004737(2*(2*n+1)))`
-/

namespace A272900.P12050874798209621006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004737 (2 * (2 * n + 1))).toNat

end

end A272900.P12050874798209621006

namespace A272900

/-- `A110654(A004737(2*(2*n+1)))` -/
def P12050874798209621006.Spec : Prop :=
  ∀ n, P12050874798209621006.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P4854444124007790816

`A000194(n+1)-A004197(2*n)`
-/

namespace A272900.P4854444124007790816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) - A004197 (2 * n)

end

end A272900.P4854444124007790816

namespace A272900

/-- `A000194(n+1)-A004197(2*n)` -/
def P4854444124007790816.Spec : Prop :=
  ∀ n, P4854444124007790816.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P17511900671487275060

`A204016(A204164(2*n+1)+2*n+1)`
-/

namespace A272900.P17511900671487275060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A204164 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A272900.P17511900671487275060

namespace A272900

/-- `A204016(A204164(2*n+1)+2*n+1)` -/
def P17511900671487275060.Spec : Prop :=
  ∀ n, P17511900671487275060.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P13944247344243621344

`A194959(A008619(A203553(n)))`
-/

namespace A272900.P13944247344243621344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A008619 (A203553 n).toNat).toNat

end

end A272900.P13944247344243621344

namespace A272900

/-- `A194959(A008619(A203553(n)))` -/
def P13944247344243621344.Spec : Prop :=
  ∀ n, P13944247344243621344.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P15141671053673777884

`A004739(A203554(n)+A118175(n))`
-/

namespace A272900.P15141671053673777884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A203554 n + A118175 n).toNat

end

end A272900.P15141671053673777884

namespace A272900

/-- `A004739(A203554(n)+A118175(n))` -/
def P15141671053673777884.Spec : Prop :=
  ∀ n, P15141671053673777884.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P16056766305168882500

`A208234(A057027(A185180(2*n+1)))`
-/

namespace A272900.P16056766305168882500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208234 (A057027 (A185180 (2 * n + 1)).toNat).toNat

end

end A272900.P16056766305168882500

namespace A272900

/-- `A208234(A057027(A185180(2*n+1)))` -/
def P16056766305168882500.Spec : Prop :=
  ∀ n, P16056766305168882500.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P4400472510878620608

`A053188(n+1+A196199(n)+A000194(n+1))`
-/

namespace A272900.P4400472510878620608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ((n + 1 : ℤ) + (A196199 n + A000194 (n + 1))).toNat

end

end A272900.P4400472510878620608

namespace A272900

/-- `A053188(n+1+A196199(n)+A000194(n+1))` -/
def P4400472510878620608.Spec : Prop :=
  ∀ n, P4400472510878620608.a n = A272900 (n + 1)

end A272900

/-! ## A272900.P5802961761828575225

`A214929(A220073(2*n+1)²)/A220073(2*n+1)`
-/

namespace A272900.P5802961761828575225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214929 (A220073 (2 * n + 1) ^ 2).toNat : ℚ) / (A220073 (2 * n + 1) : ℚ)

end

end A272900.P5802961761828575225

namespace A272900

/-- `A214929(A220073(2*n+1)²)/A220073(2*n+1)` -/
def P5802961761828575225.Spec : Prop :=
  ∀ n, P5802961761828575225.a n = (A272900 (n + 1) : ℚ)

end A272900

/-!
# A272901: Smallest k>=1 such that A067128(n+k) - A067128(n) is in A067128 or a(n)=0 if there is no such k.

The programs for A272901, there is no canonical definition to state claims against.
-/

/-! ## A272901.P2421633432473831489

`A214257(A035363(n)%A147300(n+6))`
-/

namespace A272901.P2421633432473831489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214257 (Int.tmod (A035363 n) (A147300 (n + 6))).toNat

end

end A272901.P2421633432473831489

/-! ## A272901.P17738246702191135598

`A014137(C(n*gcd(2, n)+1, A200260(n+5)))`
-/

namespace A272901.P17738246702191135598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (Nat.choose (n * Nat.gcd 2 n + 1) (A200260 (n + 5)).toNat)

end

end A272901.P17738246702191135598

/-! ## A272901.P15011177416878863256

`A318672(2*A255747(2*n+1))`
-/

namespace A272901.P15011177416878863256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318672 (2 * A255747 (2 * n + 1)).toNat

end

end A272901.P15011177416878863256

/-! ## A272901.P6955226829848509979

`A036804(and(A036806(n), A206442(2*n+1)))`
-/

namespace A272901.P6955226829848509979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036804 (Int.land (A036806 n) (A206442 (2 * n + 1))).toNat

end

end A272901.P6955226829848509979

/-! ## A272901.P11545392148935100265

`A036806(and(A036806(n), A206442(2*n+1)))`
-/

namespace A272901.P11545392148935100265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036806 (Int.land (A036806 n) (A206442 (2 * n + 1))).toNat

end

end A272901.P11545392148935100265

/-! ## A272901.P5686481673892793418

`gcd(A240106(3*n+4), A304327(A240128(n+2)))`
-/

namespace A272901.P5686481673892793418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240106 (3 * n + 4)) (A304327 (A240128 (n + 2)).toNat)

end

end A272901.P5686481673892793418

/-! ## A272901.P13030492177488546242

`A025469(A167499(2*n))!`
-/

namespace A272901.P13030492177488546242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025469 (A167499 (2 * n)).toNat).toNat

end

end A272901.P13030492177488546242

/-! ## A272901.P13327310588273695069

`A102097(gcd(n+2, A271790(n+3)))`
-/

namespace A272901.P13327310588273695069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (Int.gcd (n + 2 : ℤ) (A271790 (n + 3)))

end

end A272901.P13327310588273695069

/-! ## A272901.P3272906948254422623

`A025469(A000124(2*n+1)+4)!`
-/

namespace A272901.P3272906948254422623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025469 (A000124 (2 * n + 1) + 4).toNat).toNat

end

end A272901.P3272906948254422623

/-! ## A272901.P2011668445324803687

`gcd(A045761(n), A375873(n))`
-/

namespace A272901.P2011668445324803687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045761 n) (A375873 n)

end

end A272901.P2011668445324803687

/-!
# A272902: Numbers k such that 6*k - 5 is not prime.

The programs for A272902, the canonical program `A272902.P2391986581813364604` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272902 has offset 1).

The definition of A272902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272902.P4797091897060797173

`A046954(n+1)+1`
-/

namespace A272902.P4797091897060797173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 1) + 1

end

end A272902.P4797091897060797173

namespace A272902

/-- `A046954(n+1)+1` -/
def P4797091897060797173.Spec : Prop :=
  ∀ n, P4797091897060797173.a n = A272902 (n + 1)

theorem P4797091897060797173.correct : P4797091897060797173.Spec := by
  intro n
  simp only [A272902, Nat.add_sub_cancel, A272902.P4797091897060797173.a, A272902.P2391986581813364604.f1, A272902.P2391986581813364604.f2, A272902.P2391986581813364604.a, A046954, A046954.P3746753794890301022.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272902

/-! ## A272902.P16129079503973455880

`ceil(A091300(n+1)/6)`
-/

namespace A272902.P16129079503973455880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091300 (n + 1) : ℚ) / 6⌉

end

end A272902.P16129079503973455880

namespace A272902

/-- `ceil(A091300(n+1)/6)` -/
def P16129079503973455880.Spec : Prop :=
  ∀ n, P16129079503973455880.a n = A272902 (n + 1)

end A272902

/-! ## A272902.P16729551682084385811

`comp[A024899(n+1)]+1`
-/

namespace A272902.P16729551682084385811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A272902.P16729551682084385811

namespace A272902

/-- `comp[A024899(n+1)]+1` -/
def P16729551682084385811.Spec : Prop :=
  ∀ n, (P16729551682084385811.a n : ℤ) = A272902 (n + 1)

end A272902

/-! ## A272902.P2391986581813364604

`eq[0, A101264(3*n)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A272902

/-- `eq[0, A101264(3*n)]+1` -/
def P2391986581813364604.Spec : Prop :=
  ∀ n, (P2391986581813364604.a n : ℤ) = A272902 (n + 1)

theorem P2391986581813364604.correct : P2391986581813364604.Spec := by
  intro n
  simp only [A272902, Nat.add_sub_cancel]

end A272902

/-! ## A272902.P9398622196046323453

`A026806(A091300(n+1))`
-/

namespace A272902.P9398622196046323453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A091300 (n + 1)).toNat

end

end A272902.P9398622196046323453

namespace A272902

/-- `A026806(A091300(n+1))` -/
def P9398622196046323453.Spec : Prop :=
  ∀ n, P9398622196046323453.a n = A272902 (n + 1)

end A272902

/-! ## A272902.P8742028654295242573

`∪[A199859(n), A199860(n+1)]`
-/

namespace A272902.P8742028654295242573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272902.P8742028654295242573

namespace A272902

/-- `∪[A199859(n), A199860(n+1)]` -/
def P8742028654295242573.Spec : Prop :=
  ∀ n, (P8742028654295242573.a n : ℤ) = A272902 (n + 1)

end A272902

/-!
# A272904: Rectangular array, by antidiagonals: row n gives the positions of n in the Fibonacci-products fractal sequence, A272900.

The programs for A272904, there is no canonical definition to state claims against.
-/

/-! ## A272904.P6412306589754883633

`or(A065562(n+1), A220136(A006720(n)))`
-/

namespace A272904.P6412306589754883633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065562 (n + 1)) (A220136 (A006720 n).toNat)

end

end A272904.P6412306589754883633

/-! ## A272904.P1925611113616768501

`or(A065562(n+1), A305629(A070246(n+1)))`
-/

namespace A272904.P1925611113616768501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065562 (n + 1)) (A305629 (A070246 (n + 1)).toNat)

end

end A272904.P1925611113616768501

/-! ## A272904.P737093468785284817

`or(A065562(n+1), A092575(A107059(n+5)))`
-/

namespace A272904.P737093468785284817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065562 (n + 1)) (A092575 (A107059 (n + 5)).toNat)

end

end A272904.P737093468785284817

/-!
# A272905: Number of connected 4-regular (or quartic) labeled graphs with n nodes.

The programs for A272905, there is no canonical definition to state claims against.
-/

/-! ## A272905.P3622104363144277731

`A324163(A077169(n+1))`
-/

namespace A272905.P3622104363144277731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (A077169 (n + 1)).toNat

end

end A272905.P3622104363144277731

/-! ## A272905.P12013326372100812528

`A005815(A082743(n))`
-/

namespace A272905.P12013326372100812528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005815 (A082743 n).toNat

end

end A272905.P12013326372100812528

/-! ## A272905.P17038460854423643562

`A005815(A024653(n)+1)`
-/

namespace A272905.P17038460854423643562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005815 (A024653 n + 1).toNat

end

end A272905.P17038460854423643562

/-! ## A272905.P2661040008969508754

`A005815(A032555(n+1))`
-/

namespace A272905.P2661040008969508754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005815 (A032555 (n + 1)).toNat

end

end A272905.P2661040008969508754

/-! ## A272905.P8843742676356928202

`A005815(A061219(n+1))`
-/

namespace A272905.P8843742676356928202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005815 (A061219 (n + 1)).toNat

end

end A272905.P8843742676356928202

/-!
# A272906: Number of topologically-distinct pizza slicings from n chords in general position.

The programs for A272906, there is no canonical definition to state claims against.
-/

/-! ## A272906.P9099939962911869594

`A273280(n)+A185254(2*n)`
-/

namespace A272906.P9099939962911869594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273280 n + A185254 (2 * n)

end

end A272906.P9099939962911869594

/-! ## A272906.P408033630930188674

`A273650(2*n+1)+A273280(n)`
-/

namespace A272906.P408033630930188674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (2 * n + 1) + A273280 n

end

end A272906.P408033630930188674

/-! ## A272906.P12366274822731438965

`A273280(n)+A185292(A047967(n))`
-/

namespace A272906.P12366274822731438965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273280 n + A185292 (A047967 n).toNat

end

end A272906.P12366274822731438965

/-!
# A272907: Lucas-products fractal sequence.

The programs for A272907, there is no canonical definition to state claims against.
-/

/-! ## A272907.P12524586300308090583

`gcd(A110164(n), A186099(A107364(n+2)))`
-/

namespace A272907.P12524586300308090583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110164 n) (A186099 (A107364 (n + 2)).toNat)

end

end A272907.P12524586300308090583

/-! ## A272907.P14148782113170235755

`ratio[A032742(∏[A023128(n+1)])]`
-/

namespace A272907.P14148782113170235755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A272907.P14148782113170235755

/-! ## A272907.P8064347607834005313

`ratio[A065033(∏[A023128(n+1)])]`
-/

namespace A272907.P8064347607834005313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A272907.P8064347607834005313

/-! ## A272907.P8459513053202500701

`ratio[A110654(∏[A023128(n+1)])]`
-/

namespace A272907.P8459513053202500701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A272907.P8459513053202500701

/-! ## A272907.P3229239341403814893

`A245562(A230899(n+1)+A005914(n))`
-/

namespace A272907.P3229239341403814893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245562 (A230899 (n + 1) + A005914 n).toNat

end

end A272907.P3229239341403814893

/-!
# A272909: Numbers that are the product of two Lucas numbers L(i), for i >= 1, using the Lucas numbers as defined in A000204.

The programs for A272909, there is no canonical definition to state claims against.
-/

/-! ## A272909.P13537935571197246580

`A272911(n)+a(n-1)` with `a(0)=1`
-/

namespace A272909.P13537935571197246580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272911 n + a (n - 1)

end

end A272909.P13537935571197246580

/-! ## A272909.P16103639582364504667

`∑[A272911(abs(1-n)+1)]`
-/

namespace A272909.P16103639582364504667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272911 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272909.P16103639582364504667

/-! ## A272909.P15291439282568673630

`∑[A272911(round(sqrt(n²+1)))]-1`
-/

namespace A272909.P15291439282568673630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272911 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A272909.P15291439282568673630

/-! ## A272909.P16483820417654292309

`a(n-1)-(A014027(A059268(n))-A272911(n))` with `a(0)=1`
-/

namespace A272909.P16483820417654292309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A014027 (A059268 n).toNat - A272911 n)

end

end A272909.P16483820417654292309

/-! ## A272909.P11643041952678065197

`eq[1, char[A284115(n+1)]]`
-/

namespace A272909.P11643041952678065197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272909.P11643041952678065197

/-! ## A272909.P13746096986490073609

`A020725(∑[A272911(n+1)])-A272911(n+1)`
-/

namespace A272909.P13746096986490073609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A272911 (n + 1)

end

end A272909.P13746096986490073609

/-!
# A272911: Difference sequence of the sequence the increasing sequence of products of two Lucas numbers A000032.

The programs for A272911, there is no canonical definition to state claims against.
-/

/-! ## A272911.P9902644620855728387

`Δ[A272909(n+1)]`
-/

namespace A272911.P9902644620855728387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272911.P9902644620855728387

/-! ## A272911.P14841284422750413203

`Δ[record[A272909(A022446(n))]]`
-/

namespace A272911.P14841284422750413203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272911.P14841284422750413203

/-! ## A272911.P12510516485060421926

`Δ[record[A272909(A152271(n))]]`
-/

namespace A272911.P12510516485060421926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272911.P12510516485060421926

/-! ## A272911.P6057223263437537883

`A272909(n+2)-A272909(n+1)`
-/

namespace A272911.P6057223263437537883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (n + 2) - A272909 (n + 1)

end

end A272911.P6057223263437537883

/-! ## A272911.P4305567055034672840

`Δ[record[A272909(A134478(n))]]`
-/

namespace A272911.P4305567055034672840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272909 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272911.P4305567055034672840

/-! ## A272911.P9974304499735009235

`Δ[eq[1, char[A284115(n+1)]]]`
-/

namespace A272911.P9974304499735009235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284115 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A272911.P9974304499735009235

/-!
# A272912: Difference sequence of the sequence A116470 of all distinct Fibonacci numbers and Lucas numbers (A000032).

The programs for A272912, the canonical program `A272912.P10942650761914702579` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272912 has offset 1).

The definition of A272912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272912.P10942650761914702579

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272912

/-- `a(n-2)+a(n-4)` -/
def P10942650761914702579.Spec : Prop :=
  ∀ n, (P10942650761914702579.a n : ℤ) = A272912 (n + 1)

theorem P10942650761914702579.correct : P10942650761914702579.Spec := by
  intro n
  simp only [A272912, Nat.add_sub_cancel]

end A272912

/-! ## A272912.P10304005481071163521

`A000045(Δ[ceil(char[2]+(n/2)²)])`
-/

namespace A272912.P10304005481071163521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A272912.P10304005481071163521

namespace A272912

/-- `A000045(Δ[ceil(char[2]+(n/2)²)])` -/
def P10304005481071163521.Spec : Prop :=
  ∀ n, P10304005481071163521.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P2219080841183875750

`A324969(A028242(n)+1)`
-/

namespace A272912.P2219080841183875750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A028242 n + 1).toNat

end

end A272912.P2219080841183875750

namespace A272912

/-- `A324969(A028242(n)+1)` -/
def P2219080841183875750.Spec : Prop :=
  ∀ n, P2219080841183875750.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P17477507925352500321

`A324969(A030451(n+1))`
-/

namespace A272912.P17477507925352500321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A030451 (n + 1)).toNat

end

end A272912.P17477507925352500321

namespace A272912

/-- `A324969(A030451(n+1))` -/
def P17477507925352500321.Spec : Prop :=
  ∀ n, P17477507925352500321.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P14792679047676753631

`A327035(A097482(n+1))`
-/

namespace A272912.P14792679047676753631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A097482 (n + 1)).toNat

end

end A272912.P14792679047676753631

namespace A272912

/-- `A327035(A097482(n+1))` -/
def P14792679047676753631.Spec : Prop :=
  ∀ n, P14792679047676753631.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P18401763228723338071

`A076899(A204502(n+2))`
-/

namespace A272912.P18401763228723338071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076899 (A204502 (n + 2)).toNat

end

end A272912.P18401763228723338071

namespace A272912

/-- `A076899(A204502(n+2))` -/
def P18401763228723338071.Spec : Prop :=
  ∀ n, P18401763228723338071.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P2594448965879493026

`A053602(A233583(n+1)-1)`
-/

namespace A272912.P2594448965879493026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A233583 (n + 1) - 1).toNat

end

end A272912.P2594448965879493026

namespace A272912

/-- `A053602(A233583(n+1)-1)` -/
def P2594448965879493026.Spec : Prop :=
  ∀ n, P2594448965879493026.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P8386801367034099110

`A324969(2-(A030451(n)-n))`
-/

namespace A272912.P8386801367034099110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 - (A030451 n - (n : ℤ))).toNat

end

end A272912.P8386801367034099110

namespace A272912

/-- `A324969(2-(A030451(n)-n))` -/
def P8386801367034099110.Spec : Prop :=
  ∀ n, P8386801367034099110.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P8308839133401537324

`round(A053602(n+1)/ϕ)`
-/

namespace A272912.P8308839133401537324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053602 (n + 1) : ℝ) / Real.goldenRatio)

end

end A272912.P8308839133401537324

namespace A272912

/-- `round(A053602(n+1)/ϕ)` -/
def P8308839133401537324.Spec : Prop :=
  ∀ n, P8308839133401537324.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P6649563157325610690

`A115339(n)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A272912.P6649563157325610690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A115339 n - a (n - 1)

end

end A272912.P6649563157325610690

namespace A272912

/-- `A115339(n)-a(n-1)` -/
def P6649563157325610690.Spec : Prop :=
  ∀ n, P6649563157325610690.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P3716183024083355220

`Δ[A116470(n+1)]`
-/

namespace A272912.P3716183024083355220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272912.P3716183024083355220

namespace A272912

/-- `Δ[A116470(n+1)]` -/
def P3716183024083355220.Spec : Prop :=
  ∀ n, P3716183024083355220.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P17755281997115704882

`A116470(n+2)-A116470(n+1)`
-/

namespace A272912.P17755281997115704882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (n + 2) - A116470 (n + 1)

end

end A272912.P17755281997115704882

namespace A272912

/-- `A116470(n+2)-A116470(n+1)` -/
def P17755281997115704882.Spec : Prop :=
  ∀ n, P17755281997115704882.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P2444957802574353108

`Δ[∪[A000032(n+1), A000045(n+2)]]`
-/

namespace A272912.P2444957802574353108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A272912.P2444957802574353108

namespace A272912

/-- `Δ[∪[A000032(n+1), A000045(n+2)]]` -/
def P2444957802574353108.Spec : Prop :=
  ∀ n, P2444957802574353108.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P11592657417306104827

`A058071(A114220(n+1))`
-/

namespace A272912.P11592657417306104827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A114220 (n + 1)).toNat

end

end A272912.P11592657417306104827

namespace A272912

/-- `A058071(A114220(n+1))` -/
def P11592657417306104827.Spec : Prop :=
  ∀ n, P11592657417306104827.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P1211455331659673277

`A058071(A055802(n+2))`
-/

namespace A272912.P1211455331659673277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A055802 (n + 2)).toNat

end

end A272912.P1211455331659673277

namespace A272912

/-- `A058071(A055802(n+2))` -/
def P1211455331659673277.Spec : Prop :=
  ∀ n, P1211455331659673277.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P10743158012020286211

`A129713(A008795(n))`
-/

namespace A272912.P10743158012020286211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (A008795 n).toNat

end

end A272912.P10743158012020286211

namespace A272912

/-- `A129713(A008795(n))` -/
def P10743158012020286211.Spec : Prop :=
  ∀ n, P10743158012020286211.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P15370826076125789216

`A129713(A134519(n+1))`
-/

namespace A272912.P15370826076125789216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (A134519 (n + 1)).toNat

end

end A272912.P15370826076125789216

namespace A272912

/-- `A129713(A134519(n+1))` -/
def P15370826076125789216.Spec : Prop :=
  ∀ n, P15370826076125789216.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P15148820204092578998

`A104763(∑[A026741(n)+n-n*gcd(2, n)+1])`
-/

namespace A272912.P15148820204092578998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (n : ℤ) - (n * Nat.gcd 2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272912.P15148820204092578998

namespace A272912

/-- `A104763(∑[A026741(n)+n-n*gcd(2, n)+1])` -/
def P15148820204092578998.Spec : Prop :=
  ∀ n, P15148820204092578998.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P16905244226231113540

`A027926(A264754(n+1)-2)`
-/

namespace A272912.P16905244226231113540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A264754 (n + 1) - 2).toNat

end

end A272912.P16905244226231113540

namespace A272912

/-- `A027926(A264754(n+1)-2)` -/
def P16905244226231113540.Spec : Prop :=
  ∀ n, P16905244226231113540.a n = A272912 (n + 1)

end A272912

/-! ## A272912.P10220390832235376811

`A115338(A185061(n+1))`
-/

namespace A272912.P10220390832235376811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A185061 (n + 1)).toNat

end

end A272912.P10220390832235376811

namespace A272912

/-- `A115338(A185061(n+1))` -/
def P10220390832235376811.Spec : Prop :=
  ∀ n, P10220390832235376811.a n = A272912 (n + 1)

end A272912

/-!
# A272913: a(n) = 3*2^(2*n-1)*(n-1)*n^3*binomial(2*n,n)^2, a closed form for a triple binomial sum involving absolute values.

The programs for A272913, the canonical program `A272913.P171651785507283709` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272913 has offset 0).

The definition of A272913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272913.P171651785507283709

`3*2^(2*n-1)*(n-1)*n^3*C(2*n, n)²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272913

/-- `3*2^(2*n-1)*(n-1)*n^3*C(2*n, n)²` -/
def P171651785507283709.Spec : Prop :=
  ∀ n, P171651785507283709.a n = (A272913 n : ℚ)

end A272913

/-!
# A272914: Sixth powers ending in digit 6.

The programs for A272914, the canonical program `A272914.P13778073806256277323` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272914 has offset 1).

The definition of A272914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272914.P13778073806256277323

`(10*(n+1)-3*(-1)^(n+1)-5)^6/64`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272914

/-- `(10*(n+1)-3*(-1)^(n+1)-5)^6/64` -/
def P13778073806256277323.Spec : Prop :=
  ∀ n, P13778073806256277323.a n = (A272914 (n + 1) : ℚ)

end A272914

/-! ## A272914.P11481320060877075667

`64*A047221(n+1)^6`
-/

namespace A272914.P11481320060877075667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A047221 (n + 1) ^ 6

end

end A272914.P11481320060877075667

namespace A272914

/-- `64*A047221(n+1)^6` -/
def P11481320060877075667.Spec : Prop :=
  ∀ n, P11481320060877075667.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P15636968965248908855

`∑[10-a(n-1)]^6` with `a(0)=4, a(1)=2`
-/

namespace A272914.P15636968965248908855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 6

end

end A272914.P15636968965248908855

namespace A272914

/-- `∑[10-a(n-1)]^6` -/
def P15636968965248908855.Spec : Prop :=
  ∀ n, P15636968965248908855.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P1786278269314450964

`∑[∑[ogf((4+2x+4x^2)/(1+x))]]^6`
-/

namespace A272914.P1786278269314450964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 6

end

end A272914.P1786278269314450964

namespace A272914

/-- `∑[∑[ogf((4+2x+4x^2)/(1+x))]]^6` -/
def P1786278269314450964.Spec : Prop :=
  ∀ n, P1786278269314450964.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P11080896622159759144

`∑[A040015(n)]^6`
-/

namespace A272914.P11080896622159759144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 6

end

end A272914.P11080896622159759144

namespace A272914

/-- `∑[A040015(n)]^6` -/
def P11080896622159759144.Spec : Prop :=
  ∀ n, P11080896622159759144.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P16317399404240030201

`A273373(n+1)^3`
-/

namespace A272914.P16317399404240030201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273373 (n + 1) ^ 3

end

end A272914.P16317399404240030201

namespace A272914

/-- `A273373(n+1)^3` -/
def P16317399404240030201.Spec : Prop :=
  ∀ n, P16317399404240030201.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P6610064880274722216

`A090773(n+1)^6`
-/

namespace A272914.P6610064880274722216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) ^ 6

end

end A272914.P6610064880274722216

namespace A272914

/-- `A090773(n+1)^6` -/
def P6610064880274722216.Spec : Prop :=
  ∀ n, P6610064880274722216.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P10205222198915711173

`(2*comp[3*n]+2*A109613(n))²^3`
-/

namespace A272914.P10205222198915711173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 2 * A109613 n) ^ 2) ^ 3

end

end A272914.P10205222198915711173

namespace A272914

/-- `(2*comp[3*n]+2*A109613(n))²^3` -/
def P10205222198915711173.Spec : Prop :=
  ∀ n, P10205222198915711173.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P14781876984976326646

`∪[A017322(n), A017346(n)]`
-/

namespace A272914.P14781876984976326646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017322 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272914.P14781876984976326646

namespace A272914

/-- `∪[A017322(n), A017346(n)]` -/
def P14781876984976326646.Spec : Prop :=
  ∀ n, (P14781876984976326646.a n : ℤ) = A272914 (n + 1)

end A272914

/-! ## A272914.P8405166723312429372

`A016746(A047221(n+1))`
-/

namespace A272914.P8405166723312429372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016746 (A047221 (n + 1)).toNat

end

end A272914.P8405166723312429372

namespace A272914

/-- `A016746(A047221(n+1))` -/
def P8405166723312429372.Spec : Prop :=
  ∀ n, P8405166723312429372.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P4225005363141149247

`A055808(A047204(n+1))²*A055808(A047204(n+1))`
-/

namespace A272914.P4225005363141149247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 (A047204 (n + 1)).toNat ^ 2 * A055808 (A047204 (n + 1)).toNat

end

end A272914.P4225005363141149247

namespace A272914

/-- `A055808(A047204(n+1))²*A055808(A047204(n+1))` -/
def P4225005363141149247.Spec : Prop :=
  ∀ n, P4225005363141149247.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P11444473011356554241

`A001014(A090773(n+1))`
-/

namespace A272914.P11444473011356554241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A090773 (n + 1)).toNat

end

end A272914.P11444473011356554241

namespace A272914

/-- `A001014(A090773(n+1))` -/
def P11444473011356554241.Spec : Prop :=
  ∀ n, P11444473011356554241.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P17309998867197093004

`A001014(2*A047221(n+1))`
-/

namespace A272914.P17309998867197093004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (2 * A047221 (n + 1)).toNat

end

end A272914.P17309998867197093004

namespace A272914

/-- `A001014(2*A047221(n+1))` -/
def P17309998867197093004.Spec : Prop :=
  ∀ n, P17309998867197093004.a n = A272914 (n + 1)

end A272914

/-! ## A272914.P12184813885284720046

`A001014(A047221(n+1)+A047221(n+1))`
-/

namespace A272914.P12184813885284720046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A047221 (n + 1) + A047221 (n + 1)).toNat

end

end A272914.P12184813885284720046

namespace A272914

/-- `A001014(A047221(n+1)+A047221(n+1))` -/
def P12184813885284720046.Spec : Prop :=
  ∀ n, P12184813885284720046.a n = A272914 (n + 1)

end A272914

/-!
# A272915: a(n) = n + floor(5*n/6).

The programs for A272915, the canonical program `A272915.P4491752307193130919` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272915 has offset 0).

The definition of A272915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+floor(5*n/6)` (program `A272915.P4491752307193130919`, by `A272915.P4491752307193130919.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272915.P4491752307193130919

`n+floor(5*n/6)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272915

/-- `n+floor(5*n/6)` -/
def P4491752307193130919.Spec : Prop :=
  ∀ n, P4491752307193130919.a n = A272915 n

theorem P4491752307193130919.correct : P4491752307193130919.Spec := by
  intro n
  simp only [A272915]

end A272915

/-! ## A272915.P5133041691403118963

`comp[A047248(n+2)+n]`
-/

namespace A272915.P5133041691403118963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272915.P5133041691403118963

namespace A272915

/-- `comp[A047248(n+2)+n]` -/
def P5133041691403118963.Spec : Prop :=
  ∀ n, (P5133041691403118963.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P15301593769993499233

`comp[comp[A016921(n)]+n-1]`
-/

namespace A272915.P15301593769993499233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272915.P15301593769993499233

namespace A272915

/-- `comp[comp[A016921(n)]+n-1]` -/
def P15301593769993499233.Spec : Prop :=
  ∀ n, (P15301593769993499233.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P6321238348579967662

`comp[A047253(n+1)+1+n]`
-/

namespace A272915.P6321238348579967662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272915.P6321238348579967662

namespace A272915

/-- `comp[A047253(n+1)+1+n]` -/
def P6321238348579967662.Spec : Prop :=
  ∀ n, (P6321238348579967662.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P15718249003258772074

`comp[comp[A016777(2*n)]+n-1]`
-/

namespace A272915.P15718249003258772074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272915.P15718249003258772074

namespace A272915

/-- `comp[comp[A016777(2*n)]+n-1]` -/
def P15718249003258772074.Spec : Prop :=
  ∀ n, (P15718249003258772074.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P18092770478326334782

`∪[A017401(n), A364668(n)]`
-/

namespace A272915.P18092770478326334782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272915.P18092770478326334782

namespace A272915

/-- `∪[A017401(n), A364668(n)]` -/
def P18092770478326334782.Spec : Prop :=
  ∀ n, (P18092770478326334782.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P834984531842015751

`∪[A112651(n+1), A364668(n)]`
-/

namespace A272915.P834984531842015751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272915.P834984531842015751

namespace A272915

/-- `∪[A112651(n+1), A364668(n)]` -/
def P834984531842015751.Spec : Prop :=
  ∀ n, (P834984531842015751.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P10555861504663019611

`∪[A131912(n+1), A364668(n)]`
-/

namespace A272915.P10555861504663019611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272915.P10555861504663019611

namespace A272915

/-- `∪[A131912(n+1), A364668(n)]` -/
def P10555861504663019611.Spec : Prop :=
  ∀ n, (P10555861504663019611.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P15280550745215783695

`comp[comp[A162397(2*n+1)]+n]`
-/

namespace A272915.P15280550745215783695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162397 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272915.P15280550745215783695

namespace A272915

/-- `comp[comp[A162397(2*n+1)]+n]` -/
def P15280550745215783695.Spec : Prop :=
  ∀ n, (P15280550745215783695.a n : ℤ) = A272915 n

end A272915

/-! ## A272915.P6686873769454632713

`A004526(A343028(n))`
-/

namespace A272915.P6686873769454632713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A343028 n).toNat

end

end A272915.P6686873769454632713

namespace A272915

/-- `A004526(A343028(n))` -/
def P6686873769454632713.Spec : Prop :=
  ∀ n, P6686873769454632713.a n = A272915 n

end A272915

/-! ## A272915.P17202062556067821807

`A004526(A004773(2*n)+n)`
-/

namespace A272915.P17202062556067821807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004773 (2 * n) + (n : ℤ)).toNat

end

end A272915.P17202062556067821807

namespace A272915

/-- `A004526(A004773(2*n)+n)` -/
def P17202062556067821807.Spec : Prop :=
  ∀ n, P17202062556067821807.a n = A272915 n

end A272915

/-! ## A272915.P6403047350941796998

`A057367(A310470(n))`
-/

namespace A272915.P6403047350941796998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A310470 n).toNat

end

end A272915.P6403047350941796998

namespace A272915

/-- `A057367(A310470(n))` -/
def P6403047350941796998.Spec : Prop :=
  ∀ n, P6403047350941796998.a n = A272915 n

end A272915

/-! ## A272915.P12071132141699765193

`A057367(A313769(n))`
-/

namespace A272915.P12071132141699765193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A313769 n).toNat

end

end A272915.P12071132141699765193

namespace A272915

/-- `A057367(A313769(n))` -/
def P12071132141699765193.Spec : Prop :=
  ∀ n, P12071132141699765193.a n = A272915 n

end A272915

/-! ## A272915.P9242574181798507823

`A057367(A313778(n))`
-/

namespace A272915.P9242574181798507823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A313778 n).toNat

end

end A272915.P9242574181798507823

namespace A272915

/-- `A057367(A313778(n))` -/
def P9242574181798507823.Spec : Prop :=
  ∀ n, P9242574181798507823.a n = A272915 n

end A272915

/-! ## A272915.P8410381182053507414

`A057367(5*n)`
-/

namespace A272915.P8410381182053507414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (5 * n)

end

end A272915.P8410381182053507414

namespace A272915

/-- `A057367(5*n)` -/
def P8410381182053507414.Spec : Prop :=
  ∀ n, P8410381182053507414.a n = A272915 n

end A272915

/-! ## A272915.P12095460828557633171

`A002264(A313924(n))`
-/

namespace A272915.P12095460828557633171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A313924 n).toNat

end

end A272915.P12095460828557633171

namespace A272915

/-- `A002264(A313924(n))` -/
def P12095460828557633171.Spec : Prop :=
  ∀ n, P12095460828557633171.a n = A272915 n

end A272915

/-! ## A272915.P10213178681771350760

`A002264(A314159(n))`
-/

namespace A272915.P10213178681771350760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A314159 n).toNat

end

end A272915.P10213178681771350760

namespace A272915

/-- `A002264(A314159(n))` -/
def P10213178681771350760.Spec : Prop :=
  ∀ n, P10213178681771350760.a n = A272915 n

end A272915

/-! ## A272915.P12413345310163312142

`A002264(A314216(n))`
-/

namespace A272915.P12413345310163312142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A314216 n).toNat

end

end A272915.P12413345310163312142

namespace A272915

/-- `A002264(A314216(n))` -/
def P12413345310163312142.Spec : Prop :=
  ∀ n, P12413345310163312142.a n = A272915 n

end A272915

/-! ## A272915.P2759181189673887091

`A002264(A314236(n))`
-/

namespace A272915.P2759181189673887091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A314236 n).toNat

end

end A272915.P2759181189673887091

namespace A272915

/-- `A002264(A314236(n))` -/
def P2759181189673887091.Spec : Prop :=
  ∀ n, P2759181189673887091.a n = A272915 n

end A272915

/-! ## A272915.P15485776800422187605

`A002265(A047458(2*n+1)+2*n)`
-/

namespace A272915.P15485776800422187605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A047458 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A272915.P15485776800422187605

namespace A272915

/-- `A002265(A047458(2*n+1)+2*n)` -/
def P15485776800422187605.Spec : Prop :=
  ∀ n, P15485776800422187605.a n = A272915 n

end A272915

/-!
# A272916: Numbers that are a product of two Fibonacci (A000045) numbers or a product of two Lucas (A000032) numbers.

The programs for A272916, there is no canonical definition to state claims against.
-/

/-! ## A272916.P10332691233896995264

`A272917(n)+a(n-1)` with `a(0)=1`
-/

namespace A272916.P10332691233896995264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272917 n + a (n - 1)

end

end A272916.P10332691233896995264

/-! ## A272916.P2369650659859750763

`∑[A272917(A233583(n+1))]`
-/

namespace A272916.P2369650659859750763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272916.P2369650659859750763

/-! ## A272916.P7443584790840125468

`∑[A272917(A065033(2*n))]`
-/

namespace A272916.P7443584790840125468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272916.P7443584790840125468

/-! ## A272916.P13830278599382294597

`∑[A272917(or(n, A036987(n)))]`
-/

namespace A272916.P13830278599382294597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (Int.lor (n : ℤ) (A036987 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272916.P13830278599382294597

/-! ## A272916.P4647183583983737971

`∑[A272917(A036987(2*n)+n)]`
-/

namespace A272916.P4647183583983737971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (A036987 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272916.P4647183583983737971

/-! ## A272916.P5583932575946952797

`∑[A272917(n+1)]+1-A272917(n+1)`
-/

namespace A272916.P5583932575946952797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272917 (n + 1))

end

end A272916.P5583932575946952797

/-! ## A272916.P2273730740694999275

`∑[A272917(A007318(∑[n]+1))]`
-/

namespace A272916.P2273730740694999275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272917 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272916.P2273730740694999275

/-!
# A272917: Difference sequence of A272916.

The programs for A272917, there is no canonical definition to state claims against.
-/

/-! ## A272917.P14660703938989319466

`Δ[A272916(n+1)]`
-/

namespace A272917.P14660703938989319466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272917.P14660703938989319466

/-! ## A272917.P8008245339035976090

`A272916(n+2)-A272916(n+1)`
-/

namespace A272917.P8008245339035976090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272916 (n + 2) - A272916 (n + 1)

end

end A272917.P8008245339035976090

/-! ## A272917.P835003251619709792

`A001222(ratio[2^A272916(n+1)])`
-/

namespace A272917.P835003251619709792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A272916 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat

end

end A272917.P835003251619709792

/-! ## A272917.P5526548552332046717

`A032741(ratio[2^A272916(n+1)])`
-/

namespace A272917.P5526548552332046717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A272916 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat

end

end A272917.P5526548552332046717

/-!
# A272918: Fibonacci numbers with the base 10 digits sorted into increasing order.

The programs for A272918, there is no canonical definition to state claims against.
-/

/-! ## A272918.P11787093760155459970

`A004185(A000045(n))`
-/

namespace A272918.P11787093760155459970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000045 n).toNat

end

end A272918.P11787093760155459970

/-! ## A272918.P1915276483412208151

`A273003(n)-A151949(A000045(n))`
-/

namespace A272918.P1915276483412208151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 n - A151949 (A000045 n).toNat

end

end A272918.P1915276483412208151

/-! ## A272918.P17102210152683929994

`A273003(n)-A151949(abs(A236191(n)))`
-/

namespace A272918.P17102210152683929994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 n - A151949 |A236191 n|.toNat

end

end A272918.P17102210152683929994

/-! ## A272918.P7736298795210513826

`A273003(n)-A151949(A212804(n+1))`
-/

namespace A272918.P7736298795210513826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273003 n - A151949 (A212804 (n + 1)).toNat

end

end A272918.P7736298795210513826

/-!
# A272919: Numbers of the form 2^(n-1)*(2^(n*m)-1)/(2^n-1), n >= 1, m >= 1.

The programs for A272919, there is no canonical definition to state claims against.
-/

/-! ## A272919.P8650852751208980512

`floor(A064896(n+2)/2)`
-/

namespace A272919.P8650852751208980512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064896 (n + 2) : ℚ) / 2⌋

end

end A272919.P8650852751208980512

/-! ## A272919.P15018472047644197451

`∑[Δ[A064896(n+1)]/2]`
-/

namespace A272919.P15018472047644197451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272919.P15018472047644197451

/-! ## A272919.P11774071284273759196

`(A064896(n+2)-1)/A036453(n+2)`
-/

namespace A272919.P11774071284273759196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064896 (n + 2) - 1 : ℚ) / (A036453 (n + 2) : ℚ)

end

end A272919.P11774071284273759196

/-! ## A272919.P11997708500664130744

`(A064896(n+2)-1)/A020639(lcm(2, n+1))`
-/

namespace A272919.P11997708500664130744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064896 (n + 2) - 1 : ℚ) / (A020639 (Nat.lcm 2 (n + 1)) : ℚ)

end

end A272919.P11997708500664130744

/-! ## A272919.P13703921711906476292

`(A064896(n+2)-A007318(C(n, 2)))/2`
-/

namespace A272919.P13703921711906476292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064896 (n + 2) - A007318 (Nat.choose n 2) : ℚ) / 2

end

end A272919.P13703921711906476292

/-! ## A272919.P15816657906036020574

`(A064896(n+2)-1)/A014963(4*A059268(n))`
-/

namespace A272919.P15816657906036020574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064896 (n + 2) - 1 : ℚ) / (A014963 (4 * A059268 n).toNat : ℚ)

end

end A272919.P15816657906036020574

/-! ## A272919.P519207031137563502

`∩[A225620(n+1), A114994(n)]`
-/

namespace A272919.P519207031137563502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272919.P519207031137563502

/-! ## A272919.P9943318549422782621

`∩[A137706(n+1), A225620(n+1)]`
-/

namespace A272919.P9943318549422782621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272919.P9943318549422782621

/-! ## A272919.P1250226888221162981

`∩[A225620(n+1), A357006(n+1)]`
-/

namespace A272919.P1250226888221162981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272919.P1250226888221162981

/-!
# A272920: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 555", based on the 5-celled von Neumann neighborhood.

The programs for A272920, there is no canonical definition to state claims against.
-/

/-! ## A272920.P3479828704660684978

`A272923(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272920.P3479828704660684978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272923 (n - 1) + a (n - 1)

end

end A272920.P3479828704660684978

/-! ## A272920.P331459405299226163

`Δ[A272922(n)]-A272923(n)`
-/

namespace A272920.P331459405299226163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272923 n

end

end A272920.P331459405299226163

/-! ## A272920.P5894414576536952046

`A272922(n+1)-(A272923(n)+A272922(n))`
-/

namespace A272920.P5894414576536952046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272922 (n + 1) - (A272923 n + A272922 n)

end

end A272920.P5894414576536952046

/-! ## A272920.P726632364720572684

`A020985(n)²+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P726632364720572684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P726632364720572684

/-! ## A272920.P5652782441710836015

`A065357(n)²+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P5652782441710836015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P5652782441710836015

/-! ## A272920.P13245477665651688757

`A000034(2*n)+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P13245477665651688757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P13245477665651688757

/-! ## A272920.P11964483127536312562

`A005408(n)%2+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P11964483127536312562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P11964483127536312562

/-! ## A272920.P1382670484242721260

`A034947(n+1)²+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P1382670484242721260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P1382670484242721260

/-! ## A272920.P5246424193970496568

`A056594(2*n)²+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P5246424193970496568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P5246424193970496568

/-! ## A272920.P8314554332237690802

`(A000566(n)%2)!+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P8314554332237690802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000566 n) 2).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P8314554332237690802

/-! ## A272920.P4811461225770208796

`(∑[A272923(n)]-A272923(n)+1)%A227161(n+1)`
-/

namespace A272920.P4811461225770208796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n + 1) (A227161 (n + 1))

end

end A272920.P4811461225770208796

/-! ## A272920.P13121334518484284386

`A164097(n+3)%2+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P13121334518484284386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164097 (n + 3)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P13121334518484284386

/-! ## A272920.P13075326119260314242

`A008619(2*n)-n+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P13075326119260314242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P13075326119260314242

/-! ## A272920.P5486870776191835758

`A064455(2*n+1)-n+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P5486870776191835758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (2 * n + 1) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P5486870776191835758

/-! ## A272920.P4771248974265852355

`((-1)^A346250(n+1))²+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P4771248974265852355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A346250 (n + 1) : ℤ)) ^ 2 + ((∑ j ∈ Finset.range (n + 1), f1 j - A272923 n : ℤ) : ℚ)

end

end A272920.P4771248974265852355

/-! ## A272920.P14115084187942999321

`A008620(6*n)-2*n+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P14115084187942999321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (6 * n) - (2 * n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P14115084187942999321

/-! ## A272920.P13703478348529107266

`A014963(6*(n+1))+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P13703478348529107266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P13703478348529107266

/-! ## A272920.P15858312708108213496

`A017377(11*n)%2+∑[A272923(n)]-A272923(n)`
-/

namespace A272920.P15858312708108213496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017377 (11 * n)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n)

end

end A272920.P15858312708108213496

/-! ## A272920.P2265362348698381328

`A000027(∑[A272923(n)]-A272923(n)+1)`
-/

namespace A272920.P2265362348698381328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n + 1).toNat

end

end A272920.P2265362348698381328

/-! ## A272920.P8710004056964504907

`A000265(∑[A272923(n)]-A272923(n)+1)`
-/

namespace A272920.P8710004056964504907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A272923 n + 1).toNat

end

end A272920.P8710004056964504907

/-!
# A272921: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 555", based on the 5-celled von Neumann neighborhood.

The programs for A272921, there is no canonical definition to state claims against.
-/

/-! ## A272921.P15041140096943942808

`A272920(2^n-1)`
-/

namespace A272921.P15041140096943942808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 (2 ^ n - 1)

end

end A272921.P15041140096943942808

/-! ## A272921.P14304737711862552508

`record[A272920(A303763(n))]`
-/

namespace A272921.P14304737711862552508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272921.P14304737711862552508

/-! ## A272921.P7430098082832518168

`or(1, A272920(A000225(n)))`
-/

namespace A272921.P7430098082832518168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272920 (A000225 n).toNat)

end

end A272921.P7430098082832518168

/-! ## A272921.P511139720982980588

`record[A272920(A253564(n+1))]`
-/

namespace A272921.P511139720982980588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272921.P511139720982980588

/-! ## A272921.P7997798603228030848

`record[A272920(A286556(n+1))]`
-/

namespace A272921.P7997798603228030848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 (A286556 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272921.P7997798603228030848

/-!
# A272922: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 555", based on the 5-celled von Neumann neighborhood.

The programs for A272922, there is no canonical definition to state claims against.
-/

/-! ## A272922.P3265015545365609166

`∑[A272920(n)]`
-/

namespace A272922.P3265015545365609166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272922.P3265015545365609166

/-! ## A272922.P13532430352408378607

`A272920(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272922.P13532430352408378607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272920 n + a (A023443 n).toNat

end

end A272922.P13532430352408378607

/-! ## A272922.P13597586191579236088

`A272920(n)+a(A065033(2*n)-1)` with `a(0)=1`
-/

namespace A272922.P13597586191579236088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272920 n + a (A065033 (2 * n) - 1).toNat

end

end A272922.P13597586191579236088

/-! ## A272922.P4446905551426118838

`a(n-1)+A272920(n)+A000007(n)` with `a(0)=1, a(1)=6`
-/

namespace A272922.P4446905551426118838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (A272920 n + A000007 n)

end

end A272922.P4446905551426118838

/-! ## A272922.P9171208518503142276

`∑[∑[A272923(n)]-A272923(n)+1]`
-/

namespace A272922.P9171208518503142276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A272923 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272922.P9171208518503142276

/-! ## A272922.P5832568393044207033

`∑[A109613(∑[A272923(n)]-A272923(n))]`
-/

namespace A272922.P5832568393044207033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f2 j - A272923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272922.P5832568393044207033

/-!
# A272923: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 555", based on the 5-celled von Neumann neighborhood.

The programs for A272923, there is no canonical definition to state claims against.
-/

/-! ## A272923.P7312318397641131681

`Δ[A272920(n)]`
-/

namespace A272923.P7312318397641131681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272923.P7312318397641131681

/-! ## A272923.P9705943207237859324

`A272920(n+1)-A272920(n)`
-/

namespace A272923.P9705943207237859324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272920 (n + 1) - A272920 n

end

end A272923.P9705943207237859324

/-!
# A272924: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A272924, there is no canonical definition to state claims against.
-/

/-! ## A272924.P12356955235824879728

`A272927(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272924.P12356955235824879728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272927 (n - 1) + a (n - 1)

end

end A272924.P12356955235824879728

/-! ## A272924.P16372605218900296103

`1+∑[A272927(n)]-A272927(n)`
-/

namespace A272924.P16372605218900296103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A272927 n)

end

end A272924.P16372605218900296103

/-! ## A272924.P6302837153310766900

`Δ[A272926(n)]-A272927(n)`
-/

namespace A272924.P6302837153310766900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272927 n

end

end A272924.P6302837153310766900

/-! ## A272924.P3472956110729871799

`A272926(n+1)-(A272927(n)+A272926(n))`
-/

namespace A272924.P3472956110729871799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272926 (n + 1) - (A272927 n + A272926 n)

end

end A272924.P3472956110729871799

/-! ## A272924.P14900480988946423719

`A020725(∑[A272927(n)])-A272927(n)`
-/

namespace A272924.P14900480988946423719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A272927 n

end

end A272924.P14900480988946423719

/-!
# A272925: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A272925, there is no canonical definition to state claims against.
-/

/-! ## A272925.P12706988483324387100

`A272924(2^n-1)`
-/

namespace A272925.P12706988483324387100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (2 ^ n - 1)

end

end A272925.P12706988483324387100

/-! ## A272925.P6458838125978046684

`record[A272924(A303763(n))]`
-/

namespace A272925.P6458838125978046684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272925.P6458838125978046684

/-! ## A272925.P9062732435669857629

`record[A272924(Δ[A228693(n)])]`
-/

namespace A272925.P9062732435669857629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272925.P9062732435669857629

/-! ## A272925.P10034226102256739424

`record[A272924(A175946(n+1))]`
-/

namespace A272925.P10034226102256739424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (A175946 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272925.P10034226102256739424

/-! ## A272925.P16480350897795447731

`record[A272924(A243071(n+1))]`
-/

namespace A272925.P16480350897795447731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272925.P16480350897795447731

/-!
# A272926: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A272926, there is no canonical definition to state claims against.
-/

/-! ## A272926.P17676889868684080159

`∑[A272924(n)]`
-/

namespace A272926.P17676889868684080159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272926.P17676889868684080159

/-! ## A272926.P13685190835094690706

`∑[A272927(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272926.P13685190835094690706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272927 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272926.P13685190835094690706

/-! ## A272926.P5899035894051885792

`∑[∑[A272927(n)]+1-A272927(n)]`
-/

namespace A272926.P5899035894051885792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272927 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272926.P5899035894051885792

/-! ## A272926.P3544494339206053644

`A272924(n%A272924(n))+a(n-1)` with `a(0)=1`
-/

namespace A272926.P3544494339206053644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272924 (Int.tmod (n : ℤ) (A272924 n)).toNat + a (n - 1)

end

end A272926.P3544494339206053644

/-! ## A272926.P15104081494779763913

`a(n-1)+A000045(ceil(n/(n+1)))*A272924(n)` with `a(0)=1`
-/

namespace A272926.P15104081494779763913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A272924 n

end

end A272926.P15104081494779763913

/-!
# A272927: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 557", based on the 5-celled von Neumann neighborhood.

The programs for A272927, there is no canonical definition to state claims against.
-/

/-! ## A272927.P15434109691227723534

`Δ[A272924(n)]`
-/

namespace A272927.P15434109691227723534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272927.P15434109691227723534

/-! ## A272927.P5628892023434496569

`A272924(n+1)-A272924(n)`
-/

namespace A272927.P5628892023434496569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (n + 1) - A272924 n

end

end A272927.P5628892023434496569

/-! ## A272927.P14205857946947879170

`A272924(n+1)+A008683(A057673(n))*A272924(n)`
-/

namespace A272927.P14205857946947879170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272924 (n + 1) + A008683 (A057673 n).toNat * A272924 n

end

end A272927.P14205857946947879170

/-!
# A272928: Partial sums of A147562.

The programs for A272928, the canonical program `A272928.P5031657854594105114` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272928 has offset 0).

The definition of A272928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272928.P270838052860838692

`∑[A147562(n)]`
-/

namespace A272928.P270838052860838692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P270838052860838692

namespace A272928

/-- `∑[A147562(n)]` -/
def P270838052860838692.Spec : Prop :=
  ∀ n, P270838052860838692.a n = A272928 n

end A272928

/-! ## A272928.P5031657854594105114

`∑[floor(A160410(n)/3)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A272928

/-- `∑[floor(A160410(n)/3)]` -/
def P5031657854594105114.Spec : Prop :=
  ∀ n, P5031657854594105114.a n = A272928 n

theorem P5031657854594105114.correct : P5031657854594105114.Spec := by
  intro n
  simp only [A272928]

end A272928

/-! ## A272928.P1101249118858263401

`∑[A323650(2*n)/3]`
-/

namespace A272928.P1101249118858263401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323650 (2 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P1101249118858263401

namespace A272928

/-- `∑[A323650(2*n)/3]` -/
def P1101249118858263401.Spec : Prop :=
  ∀ n, P1101249118858263401.a n = (A272928 n : ℚ)

end A272928

/-! ## A272928.P5043406019491919169

`∑[2*A151917(n)]-n`
-/

namespace A272928.P5043406019491919169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A272928.P5043406019491919169

namespace A272928

/-- `∑[2*A151917(n)]-n` -/
def P5043406019491919169.Spec : Prop :=
  ∀ n, P5043406019491919169.a n = A272928 n

end A272928

/-! ## A272928.P4035643765786364061

`(A160799(n+1)-n)/3`
-/

namespace A272928.P4035643765786364061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160799 (n + 1) - (n : ℤ) : ℚ) / 3

end

end A272928.P4035643765786364061

namespace A272928

/-- `(A160799(n+1)-n)/3` -/
def P4035643765786364061.Spec : Prop :=
  ∀ n, P4035643765786364061.a n = (A272928 n : ℚ)

end A272928

/-! ## A272928.P18442001625890025975

`∑[floor(A151917(2*n)/2)]`
-/

namespace A272928.P18442001625890025975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151917 (2 * n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P18442001625890025975

namespace A272928

/-- `∑[floor(A151917(2*n)/2)]` -/
def P18442001625890025975.Spec : Prop :=
  ∀ n, P18442001625890025975.a n = A272928 n

end A272928

/-! ## A272928.P4629097385103388639

`∑[A151920(2*n)]-A151920(2*n)`
-/

namespace A272928.P4629097385103388639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151920 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151920 (2 * n)

end

end A272928.P4629097385103388639

namespace A272928

/-- `∑[A151920(2*n)]-A151920(2*n)` -/
def P4629097385103388639.Spec : Prop :=
  ∀ n, P4629097385103388639.a n = A272928 n

end A272928

/-! ## A272928.P8731391698821146395

`∑[∑[A147582(n+1)]-A147582(n+1)]`
-/

namespace A272928.P8731391698821146395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A147582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P8731391698821146395

namespace A272928

/-- `∑[∑[A147582(n+1)]-A147582(n+1)]` -/
def P8731391698821146395.Spec : Prop :=
  ∀ n, P8731391698821146395.a n = A272928 n

end A272928

/-! ## A272928.P8915635304545162782

`∑[A079317(2*n)]-A079317(2*n)`
-/

namespace A272928.P8915635304545162782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079317 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079317 (2 * n)

end

end A272928.P8915635304545162782

namespace A272928

/-- `∑[A079317(2*n)]-A079317(2*n)` -/
def P8915635304545162782.Spec : Prop :=
  ∀ n, P8915635304545162782.a n = A272928 n

end A272928

/-! ## A272928.P4818626873551949236

`∑[A272416(2*n)]-A272416(2*n)`
-/

namespace A272928.P4818626873551949236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272416 (2 * n)

end

end A272928.P4818626873551949236

namespace A272928

/-- `∑[A272416(2*n)]-A272416(2*n)` -/
def P4818626873551949236.Spec : Prop :=
  ∀ n, P4818626873551949236.a n = A272928 n

end A272928

/-! ## A272928.P17053419377147041732

`∑[A270217(2*n)]-A270217(2*n)`
-/

namespace A272928.P17053419377147041732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A270217 (2 * n)

end

end A272928.P17053419377147041732

namespace A272928

/-- `∑[A270217(2*n)]-A270217(2*n)` -/
def P17053419377147041732.Spec : Prop :=
  ∀ n, P17053419377147041732.a n = A272928 n

end A272928

/-! ## A272928.P945010474632672067

`∑[A271285(2*n)]-A271285(2*n)`
-/

namespace A272928.P945010474632672067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A271285 (2 * n)

end

end A272928.P945010474632672067

namespace A272928

/-- `∑[A271285(2*n)]-A271285(2*n)` -/
def P945010474632672067.Spec : Prop :=
  ∀ n, P945010474632672067.a n = A272928 n

end A272928

/-! ## A272928.P2525158796646836193

`∑[A183060(2*n)/2-n]`
-/

namespace A272928.P2525158796646836193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183060 (2 * n) : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P2525158796646836193

namespace A272928

/-- `∑[A183060(2*n)/2-n]` -/
def P2525158796646836193.Spec : Prop :=
  ∀ n, P2525158796646836193.a n = (A272928 n : ℚ)

end A272928

/-! ## A272928.P5633680292142611282

`∑[∑[A160415(2*n+1)]-A160415(2*n+1)]`
-/

namespace A272928.P5633680292142611282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160415 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160415 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P5633680292142611282

namespace A272928

/-- `∑[∑[A160415(2*n+1)]-A160415(2*n+1)]` -/
def P5633680292142611282.Spec : Prop :=
  ∀ n, P5633680292142611282.a n = A272928 n

end A272928

/-! ## A272928.P18426926530159229954

`∑[A004273(A151917(n))]`
-/

namespace A272928.P18426926530159229954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151917 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272928.P18426926530159229954

namespace A272928

/-- `∑[A004273(A151917(n))]` -/
def P18426926530159229954.Spec : Prop :=
  ∀ n, P18426926530159229954.a n = A272928 n

end A272928

/-!
# A272931: a(n) = 2^(n+1)*cos(n*arctan(sqrt(15))).

The programs for A272931, the canonical program `A272931.P938682668979742639` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272931 has offset 0).

The definition of A272931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272931.P938682668979742639

`a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272931

/-- `a(n-1)-4*a(n-2)` -/
def P938682668979742639.Spec : Prop :=
  ∀ n, P938682668979742639.a n = A272931 n

theorem P938682668979742639.correct : P938682668979742639.Spec := by
  intro n
  simp only [A272931]

end A272931

/-! ## A272931.P9955961514980234741

`ogf((2-x)/(1-x+4x^2))`
-/

namespace A272931.P9955961514980234741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -1, 4] n

end

end A272931.P9955961514980234741

namespace A272931

/-- `ogf((2-x)/(1-x+4x^2))` -/
def P9955961514980234741.Spec : Prop :=
  ∀ n, P9955961514980234741.a n = A272931 n

end A272931

/-! ## A272931.P8819611819972934581

`a(n-1)-a(n-2)/(1/2)²` with `a(0)=2, a(1)=1`
-/

namespace A272931.P8819611819972934581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A272931.P8819611819972934581

namespace A272931

/-- `a(n-1)-a(n-2)/(1/2)²` -/
def P8819611819972934581.Spec : Prop :=
  ∀ n, P8819611819972934581.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P15399161936552164203

`a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A272931.P15399161936552164203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 2) - a (n - 2)

end

end A272931.P15399161936552164203

namespace A272931

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` -/
def P15399161936552164203.Spec : Prop :=
  ∀ n, P15399161936552164203.a n = A272931 n

theorem P15399161936552164203.correct : P15399161936552164203.Spec := by
  intro n
  simp only [A272931, Nat.add_sub_cancel, A272931.P15399161936552164203.a, A272931.P938682668979742639.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A272931

/-! ## A272931.P15575491699446839217

`Δ[A106853(2*n+1)/Δ[A106853(n+1)]]`
-/

namespace A272931.P15575491699446839217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (2 * n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272931.P15575491699446839217

namespace A272931

/-- `Δ[A106853(2*n+1)/Δ[A106853(n+1)]]` -/
def P15575491699446839217.Spec : Prop :=
  ∀ n, P15575491699446839217.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P4806394242200286117

`(A106853(2*n+1)+A000079(n)²)/A106853(n+1)`
-/

namespace A272931.P4806394242200286117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (2 * n + 1) + A000079 n ^ 2 : ℚ) / (A106853 (n + 1) : ℚ)

end

end A272931.P4806394242200286117

namespace A272931

/-- `(A106853(2*n+1)+A000079(n)²)/A106853(n+1)` -/
def P4806394242200286117.Spec : Prop :=
  ∀ n, P4806394242200286117.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P11865729082555219950

`(A122803(n)²+A106853(2*n+1))/A106853(n+1)`
-/

namespace A272931.P11865729082555219950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122803 n ^ 2 + A106853 (2 * n + 1) : ℚ) / (A106853 (n + 1) : ℚ)

end

end A272931.P11865729082555219950

namespace A272931

/-- `(A122803(n)²+A106853(2*n+1))/A106853(n+1)` -/
def P11865729082555219950.Spec : Prop :=
  ∀ n, P11865729082555219950.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P402571325044904718

`(A106853(2*n+1)+A000079(2*n))/A106853(n+1)`
-/

namespace A272931.P402571325044904718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106853 (2 * n + 1) + A000079 (2 * n) : ℚ) / (A106853 (n + 1) : ℚ)

end

end A272931.P402571325044904718

namespace A272931

/-- `(A106853(2*n+1)+A000079(2*n))/A106853(n+1)` -/
def P402571325044904718.Spec : Prop :=
  ∀ n, P402571325044904718.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P397611376977952903

`(A122803(2*n)+A106853(2*n+1))/A106853(n+1)`
-/

namespace A272931.P397611376977952903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122803 (2 * n) + A106853 (2 * n + 1) : ℚ) / (A106853 (n + 1) : ℚ)

end

end A272931.P397611376977952903

namespace A272931

/-- `(A122803(2*n)+A106853(2*n+1))/A106853(n+1)` -/
def P397611376977952903.Spec : Prop :=
  ∀ n, P397611376977952903.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P5778192873791004374

`(A123344(n+1)²+A106853(2*n+1))/A106853(n+1)`
-/

namespace A272931.P5778192873791004374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123344 (n + 1) ^ 2 + A106853 (2 * n + 1) : ℚ) / (A106853 (n + 1) : ℚ)

end

end A272931.P5778192873791004374

namespace A272931

/-- `(A123344(n+1)²+A106853(2*n+1))/A106853(n+1)` -/
def P5778192873791004374.Spec : Prop :=
  ∀ n, P5778192873791004374.a n = (A272931 n : ℚ)

end A272931

/-! ## A272931.P2729626888523978844

`(A123344(2*n+1)+A106853(2*n+1))/A106853(n+1)`
-/

namespace A272931.P2729626888523978844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123344 (2 * n + 1) + A106853 (2 * n + 1) : ℚ) / (A106853 (n + 1) : ℚ)

end

end A272931.P2729626888523978844

namespace A272931

/-- `(A123344(2*n+1)+A106853(2*n+1))/A106853(n+1)` -/
def P2729626888523978844.Spec : Prop :=
  ∀ n, P2729626888523978844.a n = (A272931 n : ℚ)

end A272931

/-!
# A272933: Numbers of the form x^2 + 12*y^2.

The programs for A272933, the canonical program `A272933.P1769940145584880595` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272933 has offset 1).

The definition of A272933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6625 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272933.P1769940145584880595

`lt[and(2, n), A353816(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A272933

/-- `lt[and(2, n), A353816(n)]` -/
def P1769940145584880595.Spec : Prop :=
  ∀ n, (P1769940145584880595.a n : ℤ) = A272933 (n + 1)

theorem P1769940145584880595.correct : P1769940145584880595.Spec := by
  intro n
  simp only [A272933, Nat.add_sub_cancel]

end A272933

/-! ## A272933.P16764846022277135904

`lt[val(n+1, 2), atan(A033716(n))]`
-/

namespace A272933.P16764846022277135904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A033716 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A272933.P16764846022277135904

namespace A272933

/-- `lt[val(n+1, 2), atan(A033716(n))]` -/
def P16764846022277135904.Spec : Prop :=
  ∀ n, (P16764846022277135904.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P11872193890107106576

`eq[A112049(n+1), A353816(n)]`
-/

namespace A272933.P11872193890107106576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272933.P11872193890107106576

namespace A272933

/-- `eq[A112049(n+1), A353816(n)]` -/
def P11872193890107106576.Spec : Prop :=
  ∀ n, (P11872193890107106576.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P17008532747462755967

`filter[A112652(n), A353816(#)]`
-/

namespace A272933.P17008532747462755967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P17008532747462755967

namespace A272933

/-- `filter[A112652(n), A353816(#)]` -/
def P17008532747462755967.Spec : Prop :=
  ∀ n, P17008532747462755967.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P16015626807028003613

`∩[A003136(n+1), A112652(n)]`
-/

namespace A272933.P16015626807028003613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272933.P16015626807028003613

namespace A272933

/-- `∩[A003136(n+1), A112652(n)]` -/
def P16015626807028003613.Spec : Prop :=
  ∀ n, (P16015626807028003613.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P11285765494611179437

`filter[A230239(n+1), A353816(#)]`
-/

namespace A272933.P11285765494611179437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P11285765494611179437

namespace A272933

/-- `filter[A230239(n+1), A353816(#)]` -/
def P11285765494611179437.Spec : Prop :=
  ∀ n, P11285765494611179437.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P3769694186792111471

`∩[A003136(n+1), A230239(n+1)]`
-/

namespace A272933.P3769694186792111471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272933.P3769694186792111471

namespace A272933

/-- `∩[A003136(n+1), A230239(n+1)]` -/
def P3769694186792111471.Spec : Prop :=
  ∀ n, (P3769694186792111471.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P15545569905438096445

`filter[A042948(n), A353816(#)]`
-/

namespace A272933.P15545569905438096445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P15545569905438096445

namespace A272933

/-- `filter[A042948(n), A353816(#)]` -/
def P15545569905438096445.Spec : Prop :=
  ∀ n, P15545569905438096445.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P2622094915296982330

`∩[A003136(n+1), A042948(n)]`
-/

namespace A272933.P2622094915296982330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272933.P2622094915296982330

namespace A272933

/-- `∩[A003136(n+1), A042948(n)]` -/
def P2622094915296982330.Spec : Prop :=
  ∀ n, (P2622094915296982330.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P9500294806998190189

`eq[A115362(n), A353816(n)]`
-/

namespace A272933.P9500294806998190189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272933.P9500294806998190189

namespace A272933

/-- `eq[A115362(n), A353816(n)]` -/
def P9500294806998190189.Spec : Prop :=
  ∀ n, (P9500294806998190189.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P15972944815594160829

`eq[A088840(n+1), A353816(n)]`
-/

namespace A272933.P15972944815594160829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272933.P15972944815594160829

namespace A272933

/-- `eq[A088840(n+1), A353816(n)]` -/
def P15972944815594160829.Spec : Prop :=
  ∀ n, (P15972944815594160829.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P7976228360232149109

`eq[A140670(n+1), A353816(n)]`
-/

namespace A272933.P7976228360232149109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272933.P7976228360232149109

namespace A272933

/-- `eq[A140670(n+1), A353816(n)]` -/
def P7976228360232149109.Spec : Prop :=
  ∀ n, (P7976228360232149109.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P7143434381083519987

`filter[A047432(n+1), A353816(#)]`
-/

namespace A272933.P7143434381083519987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P7143434381083519987

namespace A272933

/-- `filter[A047432(n+1), A353816(#)]` -/
def P7143434381083519987.Spec : Prop :=
  ∀ n, P7143434381083519987.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P8348274754212536864

`filter[A047614(n+1), A353816(#)]`
-/

namespace A272933.P8348274754212536864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P8348274754212536864

namespace A272933

/-- `filter[A047614(n+1), A353816(#)]` -/
def P8348274754212536864.Spec : Prop :=
  ∀ n, P8348274754212536864.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P1048437315416484902

`∩[A003136(n+1), A047432(n+1)]`
-/

namespace A272933.P1048437315416484902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272933.P1048437315416484902

namespace A272933

/-- `∩[A003136(n+1), A047432(n+1)]` -/
def P1048437315416484902.Spec : Prop :=
  ∀ n, (P1048437315416484902.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P6775439441730706262

`∩[A003136(n+1), A047614(n+1)]`
-/

namespace A272933.P6775439441730706262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272933.P6775439441730706262

namespace A272933

/-- `∩[A003136(n+1), A047614(n+1)]` -/
def P6775439441730706262.Spec : Prop :=
  ∀ n, (P6775439441730706262.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P13190963991591265574

`filter[A004773(n), A353816(#)]`
-/

namespace A272933.P13190963991591265574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P13190963991591265574

namespace A272933

/-- `filter[A004773(n), A353816(#)]` -/
def P13190963991591265574.Spec : Prop :=
  ∀ n, P13190963991591265574.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P6752864214167412760

`∩[A003136(n+1), A004773(n)]`
-/

namespace A272933.P6752864214167412760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272933.P6752864214167412760

namespace A272933

/-- `∩[A003136(n+1), A004773(n)]` -/
def P6752864214167412760.Spec : Prop :=
  ∀ n, (P6752864214167412760.a n : ℤ) = A272933 (n + 1)

end A272933

/-! ## A272933.P9837543379396738399

`filter[A131452(n), A353816(#)]`
-/

namespace A272933.P9837543379396738399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A272933.P9837543379396738399

namespace A272933

/-- `filter[A131452(n), A353816(#)]` -/
def P9837543379396738399.Spec : Prop :=
  ∀ n, P9837543379396738399.a n = A272933 (n + 1)

end A272933

/-! ## A272933.P17868715220403610911

`lt[n%4, atan(A004016(n))]`
-/

namespace A272933.P17868715220403610911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004016 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A272933.P17868715220403610911

namespace A272933

/-- `lt[n%4, atan(A004016(n))]` -/
def P17868715220403610911.Spec : Prop :=
  ∀ n, (P17868715220403610911.a n : ℤ) = A272933 (n + 1)

end A272933

/-!
# A272934: Depth of Pascal's triangle such that the number of elements in the triangle is a factor of the sum of the elements.

The programs for A272934, there is no canonical definition to state claims against.
-/

/-! ## A272934.P1107754066537399031

`A069051(n+1)-1`
-/

namespace A272934.P1107754066537399031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069051 (n + 1) - 1

end

end A272934.P1107754066537399031

/-! ## A272934.P15957137767174583924

`abs(A069051(n+1)+A057428(n+1))`
-/

namespace A272934.P15957137767174583924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069051 (n + 1) + A057428 (n + 1)|

end

end A272934.P15957137767174583924

/-! ## A272934.P166230208304245390

`xor(A069009(C(2, n+2)), A069051(n+1))`
-/

namespace A272934.P166230208304245390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069009 (Nat.choose 2 (n + 2))) (A069051 (n + 1))

end

end A272934.P166230208304245390

/-! ## A272934.P119380863120904210

`xor(A069051(n+1), A118113(C(2, n+2)))`
-/

namespace A272934.P119380863120904210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069051 (n + 1)) (A118113 (Nat.choose 2 (n + 2)))

end

end A272934.P119380863120904210

/-! ## A272934.P8642163124221387178

`xor(A069051(n+1), A282914(C(2, n+2)))`
-/

namespace A272934.P8642163124221387178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069051 (n + 1)) (A282914 (Nat.choose 2 (n + 2)))

end

end A272934.P8642163124221387178

/-! ## A272934.P8669522306865483601

`∩[A014741(n+1), A350402(n+1)-1]`
-/

namespace A272934.P8669522306865483601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350402 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272934.P8669522306865483601

/-! ## A272934.P629420223244801030

`A246636(n+1)+1`
-/

namespace A272934.P629420223244801030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246636 (n + 1) + 1

end

end A272934.P629420223244801030

/-! ## A272934.P4889214742141650547

`and(A069051(n+1), A141725(n))+1`
-/

namespace A272934.P4889214742141650547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069051 (n + 1)) (A141725 n) + 1

end

end A272934.P4889214742141650547

/-! ## A272934.P6493101885516118532

`and(A069051(n+1), A267921(n))+1`
-/

namespace A272934.P6493101885516118532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069051 (n + 1)) (A267921 n) + 1

end

end A272934.P6493101885516118532

/-! ## A272934.P3874998047724135070

`and(A069051(n+1), A269911(n))+1`
-/

namespace A272934.P3874998047724135070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069051 (n + 1)) (A269911 n) + 1

end

end A272934.P3874998047724135070

/-! ## A272934.P5351592470922905945

`xor(A014963(A265026(n+1)), A069051(n+1))`
-/

namespace A272934.P5351592470922905945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A265026 (n + 1)).toNat) (A069051 (n + 1))

end

end A272934.P5351592470922905945

/-! ## A272934.P15796117890167252804

`A081729(A097803(n))+A069051(n+1)`
-/

namespace A272934.P15796117890167252804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A097803 n).toNat + A069051 (n + 1)

end

end A272934.P15796117890167252804

/-!
# A272935: Taxi-cab numbers (A001235) that are the product of exactly three (not necessarily distinct) primes.

The programs for A272935, there is no canonical definition to state claims against.
-/

/-! ## A272935.P8213269208866182326

`A272885(lt[A000219(n), A133332(3*(n+2))])`
-/

namespace A272935.P8213269208866182326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133332 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272885 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272935.P8213269208866182326

/-!
# A272936: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A272936, there is no canonical definition to state claims against.
-/

/-! ## A272936.P6364705085796751400

`A272769(2^n-1)`
-/

namespace A272936.P6364705085796751400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 (2 ^ n - 1)

end

end A272936.P6364705085796751400

/-! ## A272936.P15710438354789485648

`record[A272769(A091264(n))]`
-/

namespace A272936.P15710438354789485648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272936.P15710438354789485648

/-! ## A272936.P4288042578360942584

`record[A272769(A218616(n))]`
-/

namespace A272936.P4288042578360942584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272936.P4288042578360942584

/-! ## A272936.P17848825026186838677

`record[A272769(A255565(n))]`
-/

namespace A272936.P17848825026186838677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272936.P17848825026186838677

/-! ## A272936.P16177041233938554596

`record[A272769(A243071(n+1))]`
-/

namespace A272936.P16177041233938554596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272936.P16177041233938554596

/-!
# A272937: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A272937, there is no canonical definition to state claims against.
-/

/-! ## A272937.P4231301064745687098

`∑[A272769(n)]`
-/

namespace A272937.P4231301064745687098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272937.P4231301064745687098

/-! ## A272937.P3355894273724701087

`A272769(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A272937.P3355894273724701087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272769 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A272937.P3355894273724701087

/-! ## A272937.P13546731356876995095

`∑[A272938(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272937.P13546731356876995095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272938 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272937.P13546731356876995095

/-! ## A272937.P17216576760584709021

`∑[A181385(A016825(n))-A246330(n)]`
-/

namespace A272937.P17216576760584709021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A246330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272937.P17216576760584709021

/-! ## A272937.P7247879546036281483

`∑[A181385(A016825(n))]-A272311(n)`
-/

namespace A272937.P7247879546036281483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272311 n

end

end A272937.P7247879546036281483

/-!
# A272938: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 561", based on the 5-celled von Neumann neighborhood.

The programs for A272938, there is no canonical definition to state claims against.
-/

/-! ## A272938.P17109284221046656028

`Δ[A272769(n)]`
-/

namespace A272938.P17109284221046656028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272938.P17109284221046656028

/-! ## A272938.P16688557297467994090

`A272769(n+1)-A272769(n)`
-/

namespace A272938.P16688557297467994090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272769 (n + 1) - A272769 n

end

end A272938.P16688557297467994090

/-! ## A272938.P10591217008691632024

`Δ[A181385(A016825(n))-A246330(n)]`
-/

namespace A272938.P10591217008691632024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A246330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272938.P10591217008691632024

/-! ## A272938.P13355174234186096443

`Δ[A181385(A016825(n))]-A272312(n)`
-/

namespace A272938.P13355174234186096443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272312 n

end

end A272938.P13355174234186096443

/-! ## A272938.P8128373508709968998

`Δ[A008740(A008458(n))-A246330(n)]`
-/

namespace A272938.P8128373508709968998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A246330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272938.P8128373508709968998

/-! ## A272938.P16836720523589036646

`Δ[A008740(A008458(n))]-A272312(n)`
-/

namespace A272938.P16836720523589036646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272312 n

end

end A272938.P16836720523589036646

/-!
# A272939: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A272939, there is no canonical definition to state claims against.
-/

/-! ## A272939.P10273038881483818390

`A272942(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272939.P10273038881483818390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272942 (n - 1) + a (n - 1)

end

end A272939.P10273038881483818390

/-! ## A272939.P15302932827818414561

`A272942(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A272939.P15302932827818414561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272942 (n - 1) - (A000007 n - a (n - 1))

end

end A272939.P15302932827818414561

/-! ## A272939.P3506520265659756908

`Δ[A272941(n)]-A272942(n)`
-/

namespace A272939.P3506520265659756908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272942 n

end

end A272939.P3506520265659756908

/-! ## A272939.P1076780385818678656

`A272941(n+1)-(A272942(n)+A272941(n))`
-/

namespace A272939.P1076780385818678656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272941 (n + 1) - (A272942 n + A272941 n)

end

end A272939.P1076780385818678656

/-! ## A272939.P17271365687394519766

`A272941(C(n+1, n))%(A272942(n)+A272941(n))`
-/

namespace A272939.P17271365687394519766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272941 (Nat.choose (n + 1) n)) (A272942 n + A272941 n)

end

end A272939.P17271365687394519766

/-! ## A272939.P7026666815193612312

`a(n-1)-(A276689(n²)-A272942(n-1))` with `a(0)=1`
-/

namespace A272939.P7026666815193612312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A276689 (n ^ 2) - A272942 (n - 1))

end

end A272939.P7026666815193612312

/-!
# A272940: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A272940, there is no canonical definition to state claims against.
-/

/-! ## A272940.P10247430679549495460

`A272939(2^n-1)`
-/

namespace A272940.P10247430679549495460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 (2 ^ n - 1)

end

end A272940.P10247430679549495460

/-! ## A272940.P3279641808481826927

`record[A272939(A173787(n))]`
-/

namespace A272940.P3279641808481826927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272940.P3279641808481826927

/-! ## A272940.P17604565490358852617

`record[A272939(A227351(n))]`
-/

namespace A272940.P17604565490358852617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272940.P17604565490358852617

/-! ## A272940.P12486055024713053550

`record[A272939(A255067(n))]`
-/

namespace A272940.P12486055024713053550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272940.P12486055024713053550

/-! ## A272940.P8351481416922273360

`or(1, A272939(A000225(n)))`
-/

namespace A272940.P8351481416922273360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272939 (A000225 n).toNat)

end

end A272940.P8351481416922273360

/-!
# A272941: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A272941, there is no canonical definition to state claims against.
-/

/-! ## A272941.P3136514002199287072

`∑[A272939(n)]`
-/

namespace A272941.P3136514002199287072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272941.P3136514002199287072

/-! ## A272941.P498901581236396950

`A272939(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A272941.P498901581236396950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272939 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A272941.P498901581236396950

/-! ## A272941.P13029144729906739072

`∑[A272942(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272941.P13029144729906739072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272942 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272941.P13029144729906739072

/-! ## A272941.P4178540391541916961

`∑[∑[A272942(n)]+1-A272942(n)]`
-/

namespace A272941.P4178540391541916961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272942 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272942 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272941.P4178540391541916961

/-! ## A272941.P7203900252302492198

`a(n-1)+A272939(n)+A000038(n)` with `a(0)=1`
-/

namespace A272941.P7203900252302492198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272939 n + A000038 n)

end

end A272941.P7203900252302492198

/-! ## A272941.P10910414614771009011

`a(n-1)+or(A093709(n), A272939(n))` with `a(0)=1`
-/

namespace A272941.P10910414614771009011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A093709 n) (A272939 n)

end

end A272941.P10910414614771009011

/-! ## A272941.P16647720964309289424

`a(n-1)+or(1-A073424(n), A272939(n))` with `a(0)=1`
-/

namespace A272941.P16647720964309289424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (1 - A073424 n) (A272939 n)

end

end A272941.P16647720964309289424

/-!
# A272942: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 563", based on the 5-celled von Neumann neighborhood.

The programs for A272942, there is no canonical definition to state claims against.
-/

/-! ## A272942.P1519782655376002313

`Δ[A272939(n)]`
-/

namespace A272942.P1519782655376002313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272942.P1519782655376002313

/-! ## A272942.P3481596067218696712

`A272939(n+1)-A272939(n)`
-/

namespace A272942.P3481596067218696712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272939 (n + 1) - A272939 n

end

end A272942.P3481596067218696712

/-!
# A272943: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A272943, there is no canonical definition to state claims against.
-/

/-! ## A272943.P3045815198420072219

`A272946(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272943.P3045815198420072219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272946 (n - 1) + a (n - 1)

end

end A272943.P3045815198420072219

/-! ## A272943.P10702610341034929595

`Δ[A272945(n)]-A272946(n)`
-/

namespace A272943.P10702610341034929595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272946 n

end

end A272943.P10702610341034929595

/-! ## A272943.P17012003466441882630

`∑[A272946(2*n-n)]+1-A272946(n)`
-/

namespace A272943.P17012003466441882630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272946 (2 * n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272946 n)

end

end A272943.P17012003466441882630

/-! ## A272943.P3822935772827957078

`A272945(n+1)-(A272946(n)+A272945(n))`
-/

namespace A272943.P3822935772827957078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272945 (n + 1) - (A272946 n + A272945 n)

end

end A272943.P3822935772827957078

/-! ## A272943.P12298796164011508907

`A000027(∑[A272946(n)]+1-A272946(n))`
-/

namespace A272943.P12298796164011508907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272946 n)).toNat

end

end A272943.P12298796164011508907

/-! ## A272943.P9845613399123479883

`A020725(∑[A272946(n)])-A272946(n)`
-/

namespace A272943.P9845613399123479883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A272946 n

end

end A272943.P9845613399123479883

/-!
# A272944: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A272944, there is no canonical definition to state claims against.
-/

/-! ## A272944.P8461882188673530294

`A272943(2^n-1)`
-/

namespace A272944.P8461882188673530294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (2 ^ n - 1)

end

end A272944.P8461882188673530294

/-! ## A272944.P16849555825197973885

`record[A272943(A218616(n))]`
-/

namespace A272944.P16849555825197973885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272944.P16849555825197973885

/-! ## A272944.P8063912604714959270

`record[A272943(A303763(n))]`
-/

namespace A272944.P8063912604714959270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272944.P8063912604714959270

/-! ## A272944.P14176571674220254649

`record[A272943(Δ[A228693(n)])]`
-/

namespace A272944.P14176571674220254649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272944.P14176571674220254649

/-! ## A272944.P10027547454180758494

`record[A272943(A243354(n+1))]`
-/

namespace A272944.P10027547454180758494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272944.P10027547454180758494

/-!
# A272945: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A272945, there is no canonical definition to state claims against.
-/

/-! ## A272945.P12515651711612563273

`∑[A272943(n)]`
-/

namespace A272945.P12515651711612563273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272945.P12515651711612563273

/-! ## A272945.P1768567856061180809

`A272943(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272945.P1768567856061180809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272943 n + a (A023443 n).toNat

end

end A272945.P1768567856061180809

/-! ## A272945.P12749819532577202616

`a(n-1)+A272943(n)+A000007(n)` with `a(0)=1`
-/

namespace A272945.P12749819532577202616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272943 n + A000007 n)

end

end A272945.P12749819532577202616

/-! ## A272945.P16015686652214814267

`a(n-1)+A272943(n)%A185469(n+1)` with `a(0)=1`
-/

namespace A272945.P16015686652214814267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272943 n) (A185469 (n + 1))

end

end A272945.P16015686652214814267

/-! ## A272945.P11611769472603263964

`∑[∑[A272946(n)]+1-A272946(n)]`
-/

namespace A272945.P11611769472603263964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272946 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272945.P11611769472603263964

/-! ## A272945.P5855909796834647436

`A272943(n)+a(val(A003945(n), 2))` with `a(0)=1`
-/

namespace A272945.P5855909796834647436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272943 n + a (SequenceMachineLib.valuation (A003945 n).toNat 2)

end

end A272945.P5855909796834647436

/-!
# A272946: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 565", based on the 5-celled von Neumann neighborhood.

The programs for A272946, there is no canonical definition to state claims against.
-/

/-! ## A272946.P8924617032138783991

`Δ[A272943(n)]`
-/

namespace A272946.P8924617032138783991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272946.P8924617032138783991

/-! ## A272946.P8360942195522324917

`A272943(n+1)-A272943(n)`
-/

namespace A272946.P8360942195522324917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272943 (n + 1) - A272943 n

end

end A272946.P8360942195522324917

/-!
# A272947: Number of factors Fibonacci(i) > 1 of A160009(n+1).

The programs for A272947, there is no canonical definition to state claims against.
-/

/-! ## A272947.P6794932575636259748

`A177740(n-and(1, A054750(n+1))+3)`
-/

namespace A272947.P6794932575636259748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177740 ((n : ℤ) - Int.land 1 (A054750 (n + 1)) + 3).toNat

end

end A272947.P6794932575636259748

/-! ## A272947.P1734784311318268647

`A177740(A097479(n)+2+n)`
-/

namespace A272947.P1734784311318268647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177740 (A097479 n + 2 + (n : ℤ)).toNat

end

end A272947.P1734784311318268647

/-! ## A272947.P4428310351333949214

`gcd(A001221(A001013(n+1)²), A182922(n))`
-/

namespace A272947.P4428310351333949214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A001013 (n + 1) ^ 2).toNat) (A182922 n)

end

end A272947.P4428310351333949214

/-! ## A272947.P10749972558963839212

`∏{e}[ceil(2^(n-1)), A118458(#)]`
-/

namespace A272947.P10749972558963839212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A118458 (Nat.factorization (f1 n).natAbs p)

end

end A272947.P10749972558963839212

/-! ## A272947.P16136209830206981675

`A392370(A144795(n+1))`
-/

namespace A272947.P16136209830206981675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392370 (A144795 (n + 1)).toNat

end

end A272947.P16136209830206981675

/-!
# A272948: Positions of Fibonacci numbers in ordered sequence A160009 of all products of Fibonacci numbers.

The programs for A272948, there is no canonical definition to state claims against.
-/

/-! ## A272948.P8204225288097098413

`A003056(record[A046777(n)])+1`
-/

namespace A272948.P8204225288097098413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A272948.P8204225288097098413

/-! ## A272948.P4226493161778586520

`A002024(A046765(3*(n+1))+1)`
-/

namespace A272948.P4226493161778586520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A046765 (3 * (n + 1)) + 1).toNat

end

end A272948.P4226493161778586520

/-! ## A272948.P1238020454126245868

`A003056(A046765(3*n+3))+1`
-/

namespace A272948.P1238020454126245868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A046765 (3 * n + 3)).toNat + 1

end

end A272948.P1238020454126245868

/-! ## A272948.P15619708760843683883

`A003056(A323580(n)+A241916(n+1))`
-/

namespace A272948.P15619708760843683883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A323580 n + A241916 (n + 1)).toNat

end

end A272948.P15619708760843683883

/-! ## A272948.P5273614736000472159

`A003056(A000720(n+1)+∑[A061257(n)])`
-/

namespace A272948.P5273614736000472159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272948.P5273614736000472159

/-!
# A272949: Products of three distinct Fibonacci numbers > 1.

The programs for A272949, there is no canonical definition to state claims against.
-/

/-! ## A272949.P5607941150805029959

`A160009(eq[3, A272947(n+1)]+1)`
-/

namespace A272949.P5607941150805029959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A272949.P5607941150805029959

/-!
# A272951: Number of n X n 0..1 arrays with exactly n+n-2 having value 1 and no three 1's forming an isosceles right triangle.

The programs for A272951, there is no canonical definition to state claims against.
-/

/-! ## A272951.P18053800047159382538

`A272958(∑[4*n]+1)`
-/

namespace A272951.P18053800047159382538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A272951.P18053800047159382538

/-! ## A272951.P6859098368840468518

`∏{digits}[n, A272958(A001844(#))]`
-/

namespace A272951.P6859098368840468518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A272958 (A001844 x).toNat).prod

end

end A272951.P6859098368840468518

/-! ## A272951.P13943759158328851114

`record[A272958(A330613(n+1))]`
-/

namespace A272951.P13943759158328851114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272951.P13943759158328851114

/-! ## A272951.P6610949078198587759

`A272958(A001844(n))+and(8, n)`
-/

namespace A272951.P6610949078198587759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A001844 n).toNat + (Nat.land 8 n : ℤ)

end

end A272951.P6610949078198587759

/-!
# A272952: Number of n X 2 0..1 arrays with exactly n+2-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272952, the canonical program `A272952.P13267642069156642339` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272952 has offset 1).

The definition of A272952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272952.P12179502480326766248

`a(n-1)+a(n-2)+(n+2)*(3-(-1)^(n+2))/4` with `a(0)=2, a(1)=6`
-/

namespace A272952.P12179502480326766248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) + a (n - 2) + (n + 2 : ℚ) * ((3 - (-1) ^ (n + 2) : ℚ) / 4)

end

end A272952.P12179502480326766248

namespace A272952

/-- `a(n-1)+a(n-2)+(n+2)*(3-(-1)^(n+2))/4` -/
def P12179502480326766248.Spec : Prop :=
  ∀ n, P12179502480326766248.a n = (A272952 (n + 1) : ℚ)

end A272952

/-! ## A272952.P13267642069156642339

`A154691(n+1)-gcd(n+1, ∑[n])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A272952

/-- `A154691(n+1)-gcd(n+1, ∑[n])` -/
def P13267642069156642339.Spec : Prop :=
  ∀ n, P13267642069156642339.a n = A272952 (n + 1)

theorem P13267642069156642339.correct : P13267642069156642339.Spec := by
  intro n
  simp only [A272952, Nat.add_sub_cancel]

end A272952

/-! ## A272952.P6625046279775808124

`A192960(n)+A080512(n+1)`
-/

namespace A272952.P6625046279775808124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n + A080512 (n + 1)

end

end A272952.P6625046279775808124

namespace A272952

/-- `A192960(n)+A080512(n+1)` -/
def P6625046279775808124.Spec : Prop :=
  ∀ n, P6625046279775808124.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P2242680190066381877

`A079921(n+1)-A054451(n)`
-/

namespace A272952.P2242680190066381877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079921 (n + 1) - A054451 n

end

end A272952.P2242680190066381877

namespace A272952

/-- `A079921(n+1)-A054451(n)` -/
def P2242680190066381877.Spec : Prop :=
  ∀ n, P2242680190066381877.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P10624429423648578553

`A054451(n+1)+∑[A052952(n)]`
-/

namespace A272952.P10624429423648578553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272952.P10624429423648578553

namespace A272952

/-- `A054451(n+1)+∑[A052952(n)]` -/
def P10624429423648578553.Spec : Prop :=
  ∀ n, P10624429423648578553.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P15709324829622555181

`A192960(n)+∑[A001057(n)+1]`
-/

namespace A272952.P15709324829622555181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272952.P15709324829622555181

namespace A272952

/-- `A192960(n)+∑[A001057(n)+1]` -/
def P15709324829622555181.Spec : Prop :=
  ∀ n, P15709324829622555181.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P6934647259539242607

`A129696(n+1)+A054451(n+1)`
-/

namespace A272952.P6934647259539242607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 1) + A054451 (n + 1)

end

end A272952.P6934647259539242607

namespace A272952

/-- `A129696(n+1)+A054451(n+1)` -/
def P6934647259539242607.Spec : Prop :=
  ∀ n, P6934647259539242607.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P14905857516791975383

`∑[A068922(n+1)]-A026741(n+1)`
-/

namespace A272952.P14905857516791975383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026741 (n + 1)

end

end A272952.P14905857516791975383

namespace A272952

/-- `∑[A068922(n+1)]-A026741(n+1)` -/
def P14905857516791975383.Spec : Prop :=
  ∀ n, P14905857516791975383.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P18409679747699285432

`A154691(n+1)-∑[A130472(n)+1]`
-/

namespace A272952.P18409679747699285432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272952.P18409679747699285432

namespace A272952

/-- `A154691(n+1)-∑[A130472(n)+1]` -/
def P18409679747699285432.Spec : Prop :=
  ∀ n, P18409679747699285432.a n = A272952 (n + 1)

end A272952

/-! ## A272952.P17473485750121041413

`∑[A001595(n+1)]+A080512(n+1)-n`
-/

namespace A272952.P17473485750121041413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A080512 (n + 1) - (n : ℤ))

end

end A272952.P17473485750121041413

namespace A272952

/-- `∑[A001595(n+1)]+A080512(n+1)-n` -/
def P17473485750121041413.Spec : Prop :=
  ∀ n, P17473485750121041413.a n = A272952 (n + 1)

end A272952

/-!
# A272953: Number of nX3 0..1 arrays with exactly n+3-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272953, there is no canonical definition to state claims against.
-/

/-! ## A272953.P7443006844859148567

`A272958(∑[n+2]+4)`
-/

namespace A272953.P7443006844859148567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A272953.P7443006844859148567

/-! ## A272953.P16132481913988588077

`A272958(A167614(n+1))+A025437(n)`
-/

namespace A272953.P16132481913988588077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A167614 (n + 1)).toNat + A025437 n

end

end A272953.P16132481913988588077

/-! ## A272953.P15849545634101659495

`A272958(A167614(n+1))+A025442(n)`
-/

namespace A272953.P15849545634101659495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A167614 (n + 1)).toNat + A025442 n

end

end A272953.P15849545634101659495

/-! ## A272953.P6380432048417232827

`A272958(A167614(n+1))+A025444(n)`
-/

namespace A272953.P6380432048417232827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A167614 (n + 1)).toNat + A025444 n

end

end A272953.P6380432048417232827

/-! ## A272953.P6811478470251204167

`A272958(A167614(n+1))+A184955(n)`
-/

namespace A272953.P6811478470251204167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A167614 (n + 1)).toNat + A184955 n

end

end A272953.P6811478470251204167

/-!
# A272954: Number of nX4 0..1 arrays with exactly n+4-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272954, there is no canonical definition to state claims against.
-/

/-! ## A272954.P2166372462296506428

`A272958(A141214(n)+7)`
-/

namespace A272954.P2166372462296506428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A141214 n + 7).toNat

end

end A272954.P2166372462296506428

/-! ## A272954.P16564560286864224918

`A272958(A052905(n)+9)`
-/

namespace A272954.P16564560286864224918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A052905 n + 9).toNat

end

end A272954.P16564560286864224918

/-! ## A272954.P14364231781482349239

`A272958(A055999(n)+10)`
-/

namespace A272954.P14364231781482349239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A055999 n + 10).toNat

end

end A272954.P14364231781482349239

/-! ## A272954.P16568253075824922441

`A272958(eq[5, A066657(n)])`
-/

namespace A272954.P16568253075824922441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272954.P16568253075824922441

/-! ## A272954.P9849993094430195605

`A272958(A167614(n+2)+1)`
-/

namespace A272954.P9849993094430195605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A167614 (n + 2) + 1).toNat

end

end A272954.P9849993094430195605

/-!
# A272955: Number of nX5 0..1 arrays with exactly n+5-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272955, there is no canonical definition to state claims against.
-/

/-! ## A272955.P3372528814570806357

`A272958(∑[n+4]+11)`
-/

namespace A272955.P3372528814570806357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A272955.P3372528814570806357

/-! ## A272955.P4495778676354097412

`A272958(A166136(n+3)-1)+A036987(2*(n+1))`
-/

namespace A272955.P4495778676354097412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A166136 (n + 3) - 1).toNat + A036987 (2 * (n + 1))

end

end A272955.P4495778676354097412

/-! ## A272955.P8935103345309869541

`A272958(A374005(n+1))+A025437(n)`
-/

namespace A272955.P8935103345309869541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A374005 (n + 1)).toNat + A025437 n

end

end A272955.P8935103345309869541

/-! ## A272955.P8380540685347937061

`A015046(n)*A272958(A374005(n+1))`
-/

namespace A272955.P8380540685347937061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015046 n * A272958 (A374005 (n + 1)).toNat

end

end A272955.P8380540685347937061

/-! ## A272955.P1726299299829815984

`A272958(A374005(n+1))*A278657(n)`
-/

namespace A272955.P1726299299829815984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A374005 (n + 1)).toNat * A278657 n

end

end A272955.P1726299299829815984

/-!
# A272956: Number of nX6 0..1 arrays with exactly n+6-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272956, there is no canonical definition to state claims against.
-/

/-! ## A272956.P9120410835900804269

`A272958(A166136(n+4))`
-/

namespace A272956.P9120410835900804269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A166136 (n + 4)).toNat

end

end A272956.P9120410835900804269

/-! ## A272956.P9618479995291953926

`A272958(A056115(n)+21)`
-/

namespace A272956.P9618479995291953926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A056115 n + 21).toNat

end

end A272956.P9618479995291953926

/-! ## A272956.P18312190819231097988

`A272958(A167614(n+4)+3)`
-/

namespace A272956.P18312190819231097988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A167614 (n + 4) + 3).toNat

end

end A272956.P18312190819231097988

/-! ## A272956.P10094875835240317330

`A272958(A000096(n+4)+7)`
-/

namespace A272956.P10094875835240317330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A000096 (n + 4) + 7).toNat

end

end A272956.P10094875835240317330

/-! ## A272956.P3949195408030168327

`A272958(A000217(n+5)+6)`
-/

namespace A272956.P3949195408030168327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A000217 (n + 5) + 6).toNat

end

end A272956.P3949195408030168327

/-!
# A272957: Number of nX7 0..1 arrays with exactly n+7-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272957, there is no canonical definition to state claims against.
-/

/-! ## A272957.P13356295309333484095

`A272958(A374008(n+1))`
-/

namespace A272957.P13356295309333484095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A374008 (n + 1)).toNat

end

end A272957.P13356295309333484095

/-! ## A272957.P4336348926691578041

`A272958(A055999(n+4))`
-/

namespace A272957.P4336348926691578041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (A055999 (n + 4)).toNat

end

end A272957.P4336348926691578041

/-! ## A272957.P9508716394252993604

`A272958(eq[4, A219347(n)])`
-/

namespace A272957.P9508716394252993604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272957.P9508716394252993604

/-! ## A272957.P8236151862439840109

`A272958(eq[6, A193592(n)])`
-/

namespace A272957.P8236151862439840109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272957.P8236151862439840109

/-! ## A272957.P5919407130146931731

`A272958(eq[11, A066657(n)])`
-/

namespace A272957.P5919407130146931731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272957.P5919407130146931731

/-!
# A272958: T(n,k)=Number of nXk 0..1 arrays with exactly n+k-2 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272958, there is no canonical definition to state claims against.
-/

/-! ## A272958.P9122982031001596077

`A155050(A185945(n))*A272973(n+1)`
-/

namespace A272958.P9122982031001596077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155050 (A185945 n).toNat * A272973 (n + 1)

end

end A272958.P9122982031001596077

/-! ## A272958.P9820287724400829478

`A272901(A167499(n))*A272973(n+1)`
-/

namespace A272958.P9820287724400829478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A167499 n).toNat * A272973 (n + 1)

end

end A272958.P9820287724400829478

/-! ## A272958.P12622050654638328902

`A272901(A272837(n))*A272973(n+1)`
-/

namespace A272958.P12622050654638328902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (A272837 n).toNat * A272973 (n + 1)

end

end A272958.P12622050654638328902

/-! ## A272958.P10808747636411395417

`A115583(A014780(n+1))*A272973(n+1)`
-/

namespace A272958.P10808747636411395417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A014780 (n + 1)).toNat * A272973 (n + 1)

end

end A272958.P10808747636411395417

/-! ## A272958.P11818821584073031281

`A272973(n+1)+A004016(A323904(n+5)+A188900(n))`
-/

namespace A272958.P11818821584073031281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (n + 1) + A004016 (A323904 (n + 5) + A188900 n).toNat

end

end A272958.P11818821584073031281

/-!
# A272959: Number of n X n 0..1 arrays with exactly n+n-1 having value 1 and no three 1's forming an isosceles right triangle.

The programs for A272959, there is no canonical definition to state claims against.
-/

/-! ## A272959.P412663064989048435

`A272965(∑[4*n]+1)`
-/

namespace A272959.P412663064989048435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A272959.P412663064989048435

/-! ## A272959.P3142469280596612102

`A272965(A001844(n))^ceil(acot(n))`
-/

namespace A272959.P3142469280596612102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272965 (A001844 n).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A272959.P3142469280596612102

/-! ## A272959.P3427670332382492356

`A272965(A001844(n))+A006927(n)`
-/

namespace A272959.P3427670332382492356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A001844 n).toNat + A006927 n

end

end A272959.P3427670332382492356

/-! ## A272959.P3912685753825199414

`A272965(A001844(n))+A011742(n)`
-/

namespace A272959.P3912685753825199414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A001844 n).toNat + A011742 n

end

end A272959.P3912685753825199414

/-!
# A272960: Number of nX3 0..1 arrays with exactly n+3-1 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272960, there is no canonical definition to state claims against.
-/

/-! ## A272960.P10183957940746188273

`A272965(∑[n+2]+4)`
-/

namespace A272960.P10183957940746188273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A272960.P10183957940746188273

/-! ## A272960.P1491930104215072068

`and(4^n-(2^n+1), A272965(A167614(n+1)))`
-/

namespace A272960.P1491930104215072068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - (2 ^ n + 1 : ℤ)) (A272965 (A167614 (n + 1)).toNat)

end

end A272960.P1491930104215072068

/-! ## A272960.P5229786322740701204

`A272965(A167614(n+1))+A011742(n)`
-/

namespace A272960.P5229786322740701204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167614 (n + 1)).toNat + A011742 n

end

end A272960.P5229786322740701204

/-! ## A272960.P10873727255397992709

`A272965(A167614(n+1))+A178798(n)`
-/

namespace A272960.P10873727255397992709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167614 (n + 1)).toNat + A178798 n

end

end A272960.P10873727255397992709

/-! ## A272960.P14738797098810533471

`A272965(A167614(n+1))+A256974(n)`
-/

namespace A272960.P14738797098810533471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167614 (n + 1)).toNat + A256974 n

end

end A272960.P14738797098810533471

/-!
# A272961: Number of nX4 0..1 arrays with exactly n+4-1 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272961, there is no canonical definition to state claims against.
-/

/-! ## A272961.P13510862349499800011

`A272965(A141214(n)+7)`
-/

namespace A272961.P13510862349499800011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A141214 n + 7).toNat

end

end A272961.P13510862349499800011

/-! ## A272961.P5305757272560780890

`A272965(A052905(n)+9)`
-/

namespace A272961.P5305757272560780890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A052905 n + 9).toNat

end

end A272961.P5305757272560780890

/-! ## A272961.P12241359554151075044

`A272965(A055999(n)+10)`
-/

namespace A272961.P12241359554151075044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A055999 n + 10).toNat

end

end A272961.P12241359554151075044

/-! ## A272961.P14742275696235180102

`A272965(eq[5, A066657(n)])`
-/

namespace A272961.P14742275696235180102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272961.P14742275696235180102

/-! ## A272961.P7485860905891088914

`A272965(A167614(n+2)+1)`
-/

namespace A272961.P7485860905891088914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167614 (n + 2) + 1).toNat

end

end A272961.P7485860905891088914

/-!
# A272962: Number of nX5 0..1 arrays with exactly n+5-1 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272962, there is no canonical definition to state claims against.
-/

/-! ## A272962.P6062292943755732557

`A272965(A167499(n+3))`
-/

namespace A272962.P6062292943755732557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167499 (n + 3)).toNat

end

end A272962.P6062292943755732557

/-! ## A272962.P11706555320163558019

`A272965(A155212(n)+13)`
-/

namespace A272962.P11706555320163558019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A155212 n + 13).toNat

end

end A272962.P11706555320163558019

/-! ## A272962.P7684689039351163515

`A272965(A056000(n)+15)`
-/

namespace A272962.P7684689039351163515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A056000 n + 15).toNat

end

end A272962.P7684689039351163515

/-! ## A272962.P2327444870540260979

`A272965(eq[7, A066657(n)])`
-/

namespace A272962.P2327444870540260979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272962.P2327444870540260979

/-! ## A272962.P18057037639892485241

`A272965(A167614(n+3)+2)`
-/

namespace A272962.P18057037639892485241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167614 (n + 3) + 2).toNat

end

end A272962.P18057037639892485241

/-!
# A272963: Number of n X 6 0..1 arrays with exactly n+6-1 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272963, there is no canonical definition to state claims against.
-/

/-! ## A272963.P12780334935978315832

`A272965(A056115(n)+21)`
-/

namespace A272963.P12780334935978315832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A056115 n + 21).toNat

end

end A272963.P12780334935978315832

/-! ## A272963.P6117176517004130034

`A272965(A167499(n+4)+1)`
-/

namespace A272963.P6117176517004130034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A167499 (n + 4) + 1).toNat

end

end A272963.P6117176517004130034

/-! ## A272963.P4463305036818499074

`A272965(A145018(n+6)+2)`
-/

namespace A272963.P4463305036818499074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A145018 (n + 6) + 2).toNat

end

end A272963.P4463305036818499074

/-! ## A272963.P14112518584399176387

`A272965(A000124(n+5)+5)`
-/

namespace A272963.P14112518584399176387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A000124 (n + 5) + 5).toNat

end

end A272963.P14112518584399176387

/-! ## A272963.P11456390773358798223

`A272965(A000096(n+4)+7)`
-/

namespace A272963.P11456390773358798223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A000096 (n + 4) + 7).toNat

end

end A272963.P11456390773358798223

/-!
# A272964: Number of nX7 0..1 arrays with exactly n+7-1 having value 1 and no three 1s forming an isosceles right triangle.

The programs for A272964, there is no canonical definition to state claims against.
-/

/-! ## A272964.P6839852722168807364

`A272965(A374008(n+1))`
-/

namespace A272964.P6839852722168807364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A374008 (n + 1)).toNat

end

end A272964.P6839852722168807364

/-! ## A272964.P5356249246604414882

`A272965(A055999(n+4))`
-/

namespace A272964.P5356249246604414882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A055999 (n + 4)).toNat

end

end A272964.P5356249246604414882

/-! ## A272964.P1605711536322786086

`A272965(A056119(n)+28)`
-/

namespace A272964.P1605711536322786086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (A056119 n + 28).toNat

end

end A272964.P1605711536322786086

/-! ## A272964.P11262206016143493471

`A272965(eq[4, A219347(n)])`
-/

namespace A272964.P11262206016143493471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272964.P11262206016143493471

/-! ## A272964.P6732045713400246174

`A272965(eq[6, A193592(n)])`
-/

namespace A272964.P6732045713400246174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272964.P6732045713400246174

/-!
# A272965: T(n,k) = Number of n X k 0..1 arrays with exactly n+k-1 having value 1 and no three 1's forming an isosceles right triangle.

The programs for A272965, there is no canonical definition to state claims against.
-/

/-! ## A272965.P7864557616479603212

`A135481(A212801(n+1))²`
-/

namespace A272965.P7864557616479603212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A212801 (n + 1)).toNat ^ 2

end

end A272965.P7864557616479603212

/-! ## A272965.P15053894864342428064

`A229946(A333580(n+1)²)²`
-/

namespace A272965.P15053894864342428064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 (A333580 (n + 1) ^ 2).toNat ^ 2

end

end A272965.P15053894864342428064

/-! ## A272965.P8240058222874906343

`and(A053171(n+1), A140822(n))`
-/

namespace A272965.P8240058222874906343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053171 (n + 1)) (A140822 n)

end

end A272965.P8240058222874906343

/-! ## A272965.P13505290569915549246

`and(A116074(n+1), A219987(n))`
-/

namespace A272965.P13505290569915549246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116074 (n + 1)) (A219987 n)

end

end A272965.P13505290569915549246

/-! ## A272965.P5497444189048364904

`and(A219987(n), A385586(n+1))`
-/

namespace A272965.P5497444189048364904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219987 n) (A385586 (n + 1))

end

end A272965.P5497444189048364904

/-!
# A272967: Number of nX2 0..1 arrays with exactly n+2-2 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272967, there is no canonical definition to state claims against.
-/

/-! ## A272967.P1678613756464853763

`A272973(∑[n+1]+2)`
-/

namespace A272967.P1678613756464853763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A272967.P1678613756464853763

/-! ## A272967.P9612227038261548088

`A000027(A272973(∑[n+2]))`
-/

namespace A272967.P9612227038261548088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272973 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272967.P9612227038261548088

/-! ## A272967.P888092738938711841

`A272973(A000096(n+1))%58`
-/

namespace A272967.P888092738938711841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272973 (A000096 (n + 1)).toNat) 58

end

end A272967.P888092738938711841

/-! ## A272967.P2372255315776539557

`A152849(n)*A272973(A000096(n+1))`
-/

namespace A272967.P2372255315776539557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152849 n * A272973 (A000096 (n + 1)).toNat

end

end A272967.P2372255315776539557

/-! ## A272967.P5401224532532576100

`A272901(n+1)*A272973(A000096(n+1))`
-/

namespace A272967.P5401224532532576100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272901 (n + 1) * A272973 (A000096 (n + 1)).toNat

end

end A272967.P5401224532532576100

/-!
# A272968: Number of nX3 0..1 arrays with exactly n+3-2 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272968, there is no canonical definition to state claims against.
-/

/-! ## A272968.P3563761342821285945

`A272973(∑[n+2]+4)`
-/

namespace A272968.P3563761342821285945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A272968.P3563761342821285945

/-! ## A272968.P12553302132613075202

`A272973(A167614(n+1))%58`
-/

namespace A272968.P12553302132613075202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272973 (A167614 (n + 1)).toNat) 58

end

end A272968.P12553302132613075202

/-! ## A272968.P4588978013326371998

`A272973(A000217(n+2)+3)%61`
-/

namespace A272968.P4588978013326371998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272973 (A000217 (n + 2) + 3).toNat) 61

end

end A272968.P4588978013326371998

/-! ## A272968.P4491114420560281317

`A272973(A167614(n+1))+A025444(n)`
-/

namespace A272968.P4491114420560281317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A167614 (n + 1)).toNat + A025444 n

end

end A272968.P4491114420560281317

/-! ## A272968.P2586870469818338989

`A036225(n)*A272973(A167614(n+1))`
-/

namespace A272968.P2586870469818338989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A272973 (A167614 (n + 1)).toNat

end

end A272968.P2586870469818338989

/-!
# A272969: Number of nX4 0..1 arrays with exactly n+4-2 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272969, there is no canonical definition to state claims against.
-/

/-! ## A272969.P8683418496481034442

`A272973(A374004(n+1))`
-/

namespace A272969.P8683418496481034442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A374004 (n + 1)).toNat

end

end A272969.P8683418496481034442

/-! ## A272969.P18362037896892253247

`A272973(A141214(n)+7)`
-/

namespace A272969.P18362037896892253247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A141214 n + 7).toNat

end

end A272969.P18362037896892253247

/-! ## A272969.P994980927328863117

`A272973(A052905(n)+9)`
-/

namespace A272969.P994980927328863117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A052905 n + 9).toNat

end

end A272969.P994980927328863117

/-! ## A272969.P17109512646353412585

`A272973(A055999(n)+10)`
-/

namespace A272969.P17109512646353412585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A055999 n + 10).toNat

end

end A272969.P17109512646353412585

/-! ## A272969.P14240042639333623174

`A272973(eq[5, A066657(n)])`
-/

namespace A272969.P14240042639333623174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272969.P14240042639333623174

/-!
# A272970: Number of nX5 0..1 arrays with exactly n+5-2 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272970, there is no canonical definition to state claims against.
-/

/-! ## A272970.P16118980324418302938

`A272973(A374005(n+1))`
-/

namespace A272970.P16118980324418302938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A374005 (n + 1)).toNat

end

end A272970.P16118980324418302938

/-! ## A272970.P7059097490180820929

`A272973(A167499(n+3))`
-/

namespace A272970.P7059097490180820929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A167499 (n + 3)).toNat

end

end A272970.P7059097490180820929

/-! ## A272970.P14109860313242231157

`A272973(A155212(n)+13)`
-/

namespace A272970.P14109860313242231157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A155212 n + 13).toNat

end

end A272970.P14109860313242231157

/-! ## A272970.P10507832869145918166

`A272973(A056000(n)+15)`
-/

namespace A272970.P10507832869145918166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A056000 n + 15).toNat

end

end A272970.P10507832869145918166

/-! ## A272970.P6683141071740489781

`A272973(eq[7, A066657(n)])`
-/

namespace A272970.P6683141071740489781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272970.P6683141071740489781

/-!
# A272971: Number of nX6 0..1 arrays with exactly n+6-2 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272971, there is no canonical definition to state claims against.
-/

/-! ## A272971.P9961412974700131697

`A272973(A374007(n+1))`
-/

namespace A272971.P9961412974700131697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A374007 (n + 1)).toNat

end

end A272971.P9961412974700131697

/-! ## A272971.P12136646077617213831

`A272973(A166136(n+4))`
-/

namespace A272971.P12136646077617213831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A166136 (n + 4)).toNat

end

end A272971.P12136646077617213831

/-! ## A272971.P8026862295630528282

`A272973(A056115(n)+21)`
-/

namespace A272971.P8026862295630528282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A056115 n + 21).toNat

end

end A272971.P8026862295630528282

/-! ## A272971.P15343923746826999004

`A272973(A133263(n+5)+4)`
-/

namespace A272971.P15343923746826999004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A133263 (n + 5) + 4).toNat

end

end A272971.P15343923746826999004

/-! ## A272971.P508186629321690925

`A272973(A000096(n+4)+7)`
-/

namespace A272971.P508186629321690925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272973 (A000096 (n + 4) + 7).toNat

end

end A272971.P508186629321690925

/-!
# A272973: T(n,k)=Number of nXk 0..1 arrays with exactly n+k-2 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272973, there is no canonical definition to state claims against.
-/

/-! ## A272973.P12514972757945991276

`A272958(n+1)/A155050(A185945(n))`
-/

namespace A272973.P12514972757945991276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272958 (n + 1) : ℚ) / (A155050 (A185945 n).toNat : ℚ)

end

end A272973.P12514972757945991276

/-! ## A272973.P1931681671437782014

`A272958(n+1)/A272901(A167499(n))`
-/

namespace A272973.P1931681671437782014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272958 (n + 1) : ℚ) / (A272901 (A167499 n).toNat : ℚ)

end

end A272973.P1931681671437782014

/-! ## A272973.P8374465780119311739

`A272958(n+1)/A272901(A272837(n))`
-/

namespace A272973.P8374465780119311739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272958 (n + 1) : ℚ) / (A272901 (A272837 n).toNat : ℚ)

end

end A272973.P8374465780119311739

/-! ## A272973.P4963242223916482079

`A272958(n+1)/A115583(A014780(n+1))`
-/

namespace A272973.P4963242223916482079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272958 (n + 1) : ℚ) / (A115583 (A014780 (n + 1)).toNat : ℚ)

end

end A272973.P4963242223916482079

/-! ## A272973.P14542838889472933113

`A272958(n+1)-A184944(A184944(n))`
-/

namespace A272973.P14542838889472933113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272958 (n + 1) - A184944 (A184944 n).toNat

end

end A272973.P14542838889472933113

/-!
# A272974: T(n,k)=Number of nXk 0..1 arrays with exactly n+k-1 having value 1 and no three 1s forming an isosceles triangle.

The programs for A272974, there is no canonical definition to state claims against.
-/

/-! ## A272974.P17601766410709163692

`∏{e}[A333157(n), floor(log2(#))]`
-/

namespace A272974.P17601766410709163692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.log 2 (Nat.factorization (f1 n).natAbs p)

end

end A272974.P17601766410709163692

/-! ## A272974.P10514020997483394305

`A353353(A181143(n))`
-/

namespace A272974.P10514020997483394305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (A181143 n).toNat

end

end A272974.P10514020997483394305

/-! ## A272974.P5869279292118515479

`A046810(2*A174117(n))`
-/

namespace A272974.P5869279292118515479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (2 * A174117 n).toNat

end

end A272974.P5869279292118515479

/-! ## A272974.P15003532646160991858

`∏{p}[A304942(n), A051127(#)]`
-/

namespace A272974.P15003532646160991858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051127 p

end

end A272974.P15003532646160991858

/-! ## A272974.P3541318414936244703

`∏{p}[A304942(n), A085856(#)]`
-/

namespace A272974.P3541318414936244703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A085856 p

end

end A272974.P3541318414936244703

/-!
# A272975: Numbers that are congruent to {0,7} mod 12.

The programs for A272975, the canonical program `A272975.P16352445828115714520` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272975 has offset 1).

The definition of A272975 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A272975.anchor (n : ℕ) (hn : 1 ≤ n) : A272975 n = (Nat.nth (fun k => k % 12 ∈ ({0, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A272.A272975`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272975.P14299598126321156560

`(12*(n+1)-11+(-1)^(n+1))/2`
-/

namespace A272975.P14299598126321156560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 * (n + 1) : ℤ) - 11 + (-1) ^ (n + 1) : ℚ) / 2

end

end A272975.P14299598126321156560

namespace A272975

/-- `(12*(n+1)-11+(-1)^(n+1))/2` -/
def P14299598126321156560.Spec : Prop :=
  ∀ n, P14299598126321156560.a n = (A272975 (n + 1) : ℚ)

theorem P14299598126321156560.correct : P14299598126321156560.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A272975, Nat.add_sub_cancel, A272975.P14299598126321156560.a, A272975.P16352445828115714520.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A272975, Nat.add_sub_cancel, A272975.P14299598126321156560.a, A272975.P16352445828115714520.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A272975

/-! ## A272975.P16352445828115714520

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=7, a(2)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272975

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16352445828115714520.Spec : Prop :=
  ∀ n, P16352445828115714520.a n = A272975 (n + 1)

theorem P16352445828115714520.correct : P16352445828115714520.Spec := by
  intro n
  simp only [A272975, Nat.add_sub_cancel]

end A272975

/-! ## A272975.P12196846147497128018

`6*n+n%2`
-/

namespace A272975.P12196846147497128018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + n % 2

end

end A272975.P12196846147497128018

namespace A272975

/-- `6*n+n%2` -/
def P12196846147497128018.Spec : Prop :=
  ∀ n, (P12196846147497128018.a n : ℤ) = A272975 (n + 1)

end A272975

/-! ## A272975.P12530005682732079298

`and(1, n)+6*n`
-/

namespace A272975.P12530005682732079298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 6 * n

end

end A272975.P12530005682732079298

namespace A272975

/-- `and(1, n)+6*n` -/
def P12530005682732079298.Spec : Prop :=
  ∀ n, (P12530005682732079298.a n : ℤ) = A272975 (n + 1)

end A272975

/-! ## A272975.P15152790740487926833

`or(6*n, and(1, n))`
-/

namespace A272975.P15152790740487926833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (6 * n) (Nat.land 1 n)

end

end A272975.P15152790740487926833

namespace A272975

/-- `or(6*n, and(1, n))` -/
def P15152790740487926833.Spec : Prop :=
  ∀ n, (P15152790740487926833.a n : ℤ) = A272975 (n + 1)

end A272975

/-! ## A272975.P11790155560177681052

`xor(6*n, and(1, n))`
-/

namespace A272975.P11790155560177681052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (6 * n) (Nat.land 1 n)

end

end A272975.P11790155560177681052

namespace A272975

/-- `xor(6*n, and(1, n))` -/
def P11790155560177681052.Spec : Prop :=
  ∀ n, (P11790155560177681052.a n : ℤ) = A272975 (n + 1)

end A272975

/-! ## A272975.P5707243982464867736

`a(n-2)+12` with `a(0)=0, a(1)=7`
-/

namespace A272975.P5707243982464867736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 2) + 12

end

end A272975.P5707243982464867736

namespace A272975

/-- `a(n-2)+12` -/
def P5707243982464867736.Spec : Prop :=
  ∀ n, (P5707243982464867736.a n : ℤ) = A272975 (n + 1)

end A272975

/-! ## A272975.P6540402620386855616

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=7, a(2)=5`
-/

namespace A272975.P6540402620386855616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 5] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272975.P6540402620386855616

namespace A272975

/-- `∑[abs(a(n-2))]` -/
def P6540402620386855616.Spec : Prop :=
  ∀ n, (P6540402620386855616.a n : ℤ) = A272975 (n + 1)

end A272975

/-! ## A272975.P6168849714807134681

`∑[12-a(n-1)]` with `a(0)=0, a(1)=7`
-/

namespace A272975.P6168849714807134681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272975.P6168849714807134681

namespace A272975

/-- `∑[12-a(n-1)]` -/
def P6168849714807134681.Spec : Prop :=
  ∀ n, P6168849714807134681.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P677183717884751582

`∑[∑[ogf((7x+5x^2)/(1+x))]]`
-/

namespace A272975.P677183717884751582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272975.P677183717884751582

namespace A272975

/-- `∑[∑[ogf((7x+5x^2)/(1+x))]]` -/
def P677183717884751582.Spec : Prop :=
  ∀ n, P677183717884751582.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P6536930754014286759

`ogf((7x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A272975.P6536930754014286759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 5] [1, -1, -1, 1] n

end

end A272975.P6536930754014286759

namespace A272975

/-- `ogf((7x+5x^2)/(1-x-x^2+x^3))` -/
def P6536930754014286759.Spec : Prop :=
  ∀ n, P6536930754014286759.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P10994728854651583317

`5-xor(-2, a(n-1))` with `a(0)=0`
-/

namespace A272975.P10994728854651583317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - Int.xor (-2) (a (n - 1))

end

end A272975.P10994728854651583317

namespace A272975

/-- `5-xor(-2, a(n-1))` -/
def P10994728854651583317.Spec : Prop :=
  ∀ n, P10994728854651583317.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P3771177210885167450

`n+1-or(1, -(5*n))`
-/

namespace A272975.P3771177210885167450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.lor 1 (-(5 * n : ℤ))

end

end A272975.P3771177210885167450

namespace A272975

/-- `n+1-or(1, -(5*n))` -/
def P3771177210885167450.Spec : Prop :=
  ∀ n, P3771177210885167450.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P4142362748498829526

`2*(3*n+1)-gcd(2, n)`
-/

namespace A272975.P4142362748498829526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (3 * n + 1) : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A272975.P4142362748498829526

namespace A272975

/-- `2*(3*n+1)-gcd(2, n)` -/
def P4142362748498829526.Spec : Prop :=
  ∀ n, P4142362748498829526.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P977446487363710626

`12*n-5-a(n-1)` with `a(0)=0`
-/

namespace A272975.P977446487363710626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (12 * n : ℤ) - 5 - a (n - 1)

end

end A272975.P977446487363710626

namespace A272975

/-- `12*n-5-a(n-1)` -/
def P977446487363710626.Spec : Prop :=
  ∀ n, P977446487363710626.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P6713980634928256651

`A146951(n)+n`
-/

namespace A272975.P6713980634928256651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n + (n : ℤ)

end

end A272975.P6713980634928256651

namespace A272975

/-- `A146951(n)+n` -/
def P6713980634928256651.Spec : Prop :=
  ∀ n, P6713980634928256651.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P8625684343272466313

`A238290(n)-n`
-/

namespace A272975.P8625684343272466313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238290 n - (n : ℤ)

end

end A272975.P8625684343272466313

namespace A272975

/-- `A238290(n)-n` -/
def P8625684343272466313.Spec : Prop :=
  ∀ n, P8625684343272466313.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P11396724759114893131

`∑[A010718(n)]-5`
-/

namespace A272975.P11396724759114893131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A272975.P11396724759114893131

namespace A272975

/-- `∑[A010718(n)]-5` -/
def P11396724759114893131.Spec : Prop :=
  ∀ n, P11396724759114893131.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P15638680427652080052

`6*n+A000035(n)`
-/

namespace A272975.P15638680427652080052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + A000035 n

end

end A272975.P15638680427652080052

namespace A272975

/-- `6*n+A000035(n)` -/
def P15638680427652080052.Spec : Prop :=
  ∀ n, P15638680427652080052.a n = A272975 (n + 1)

end A272975

/-! ## A272975.P15066785475821464075

`A317539(2*(n+1))-3`
-/

namespace A272975.P15066785475821464075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317539 (2 * (n + 1)) - 3

end

end A272975.P15066785475821464075

namespace A272975

/-- `A317539(2*(n+1))-3` -/
def P15066785475821464075.Spec : Prop :=
  ∀ n, P15066785475821464075.a n = A272975 (n + 1)

end A272975

/-!
# A272978: Numbers not in the range of the sum of perfect divisors function.

The programs for A272978, there is no canonical definition to state claims against.
-/

/-! ## A272978.P9501343328516527280

`comp[xor(n, n^and(2, -n)!)]`
-/

namespace A272978.P9501343328516527280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ Nat.factorial (Int.land 2 (-(n : ℤ))).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272978.P9501343328516527280

/-! ## A272978.P11460604734814106565

`comp[∑[n*∏{p}[5*n+1, #]]]`
-/

namespace A272978.P11460604734814106565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272978.P11460604734814106565

/-! ## A272978.P14666582113403933691

`comp[xor(2*n², n*(6*n-2))]`
-/

namespace A272978.P14666582113403933691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n ^ 2 : ℤ) ((n : ℤ) * ((6 * n : ℤ) - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272978.P14666582113403933691

/-! ## A272978.P8257421970453873525

`comp[or(n, 2*n)²-(n+1)²]+1`
-/

namespace A272978.P8257421970453873525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A272978.P8257421970453873525

/-! ## A272978.P3105414099508156639

`comp[lcm(∑[n²]+n, ∑[2-(1-n)²])]`
-/

namespace A272978.P3105414099508156639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272978.P3105414099508156639

/-! ## A272978.P9874452642060399864

`comp[A185351(n+1)-1]+1`
-/

namespace A272978.P9874452642060399864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A272978.P9874452642060399864

/-! ## A272978.P10789777636606003258

`A132999(A386807(n+1))`
-/

namespace A272978.P10789777636606003258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (A386807 (n + 1)).toNat

end

end A272978.P10789777636606003258

/-! ## A272978.P5412671571496223848

`∪[A065347(n+1), A153381(n+1)]`
-/

namespace A272978.P5412671571496223848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272978.P5412671571496223848

/-! ## A272978.P3531523128392971230

`∪[A047369(n+1), A194381(n+1)]`
-/

namespace A272978.P3531523128392971230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272978.P3531523128392971230

/-!
# A272979: Number of ways to write n as x^2 + 2*y^2 + 3*z^3 + 4*w^4 with x,y,z,w nonnegative integers.

The programs for A272979, there is no canonical definition to state claims against.
-/

/-! ## A272979.P16264348103428471924

`A346643(n)+A031346(A136625(n))`
-/

namespace A272979.P16264348103428471924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346643 n + A031346 (A136625 n).toNat

end

end A272979.P16264348103428471924

/-! ## A272979.P2671425218072401338

`A346643(n)+A185284(A053263(n))`
-/

namespace A272979.P2671425218072401338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346643 n + A185284 (A053263 n).toNat

end

end A272979.P2671425218072401338

/-! ## A272979.P1737824462849650942

`or(A346619(A013613(n)), A346643(n))`
-/

namespace A272979.P1737824462849650942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A346619 (A013613 n).toNat) (A346643 n)

end

end A272979.P1737824462849650942

/-! ## A272979.P12606037361342318821

`A346643(lt[A065665(n+1), A034190(n+2)])`
-/

namespace A272979.P12606037361342318821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034190 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346643 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272979.P12606037361342318821

/-!
# A272981: Least prime k>1 such that the sum of divisors of powers k^e, 1 <= e <= n, are divisible by the number their divisors, d(k^e).

The programs for A272981, there is no canonical definition to state claims against.
-/

/-! ## A272981.P14681237628349430482

`A073917(A000720(n+2))`
-/

namespace A272981.P14681237628349430482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073917 (A000720 (n + 2)).toNat

end

end A272981.P14681237628349430482

/-! ## A272981.P15270686786002033465

`A073917(A036234(n+2)-1)`
-/

namespace A272981.P15270686786002033465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073917 (A036234 (n + 2) - 1).toNat

end

end A272981.P15270686786002033465

/-! ## A272981.P13719710640455454683

`A073917(∑[char[A040976(n+1)]])`
-/

namespace A272981.P13719710640455454683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073917 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272981.P13719710640455454683

/-! ## A272981.P15035868476311057065

`A073917(∑[Δ[A036234(n+1)]²])`
-/

namespace A272981.P15035868476311057065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073917 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272981.P15035868476311057065

/-! ## A272981.P181811987678097258

`p?[or(1, ∏[gcd(n+1, n!+1)])]`
-/

namespace A272981.P181811987678097258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A272981.P181811987678097258

/-!
# A272982: a(n) is the number of ways of putting n labeled balls into 3 indistinguishable boxes such that each box contains at least 3 balls.

The programs for A272982, the canonical program `A272982.P16897290905802190920` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272982 has offset 9).

The definition of A272982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272982.P16897290905802190920

`3*a(n-1)+C(n+8, 2)*(2^(n+5)+2-(n+9)-C(n+6, 2))` with `a(0)=280`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A272982

/-- `3*a(n-1)+C(n+8, 2)*(2^(n+5)+2-(n+9)-C(n+6, 2))` -/
def P16897290905802190920.Spec : Prop :=
  ∀ n, P16897290905802190920.a n = A272982 (n + 9)

theorem P16897290905802190920.correct : P16897290905802190920.Spec := by
  intro n
  simp only [A272982, Nat.add_sub_cancel]

end A272982

/-! ## A272982.P16449812067288237695

`A352474(n+9)+A350116(n+1)`
-/

namespace A272982.P16449812067288237695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352474 (n + 9) + A350116 (n + 1)

end

end A272982.P16449812067288237695

namespace A272982

/-- `A352474(n+9)+A350116(n+1)` -/
def P16449812067288237695.Spec : Prop :=
  ∀ n, P16449812067288237695.a n = A272982 (n + 9)

theorem P16449812067288237695.correct : P16449812067288237695.Spec := by
  intro n
  simp only [A272982, Nat.add_sub_cancel, A272982.P16449812067288237695.a, A272982.P16897290905802190920.a, A350116, A350116.P11939903778134046824.a, A352474, A352474.P3840502231361590685.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A272982

/-!
# A272985: Numbers n such that the elements of the Collatz trajectory of n are exactly the same as the divisors of n.

The programs for A272985, there is no canonical definition to state claims against.
-/

/-! ## A272985.P1980298926717644630

`record[gcd(A013609(n), A269011(n+1))]`
-/

namespace A272985.P1980298926717644630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A269011 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272985.P1980298926717644630

/-! ## A272985.P13789445665628433432

`A115216(eq[A074909(n), A131061(n)])`
-/

namespace A272985.P13789445665628433432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272985.P13789445665628433432

/-! ## A272985.P10431136308654034857

`record[gcd(A136960(n+1), A305523(n+1))]`
-/

namespace A272985.P10431136308654034857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136960 (n + 1)) (A305523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272985.P10431136308654034857

/-! ## A272985.P4348139528393425413

`∩[A303234(n+1), A364814(n+1)]`
-/

namespace A272985.P4348139528393425413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272985.P4348139528393425413

/-! ## A272985.P6855747272919084299

`∩[A207674(n+1), A323097(n+1)]`
-/

namespace A272985.P6855747272919084299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272985.P6855747272919084299

/-!
# A272986: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A272986, there is no canonical definition to state claims against.
-/

/-! ## A272986.P9728031019771999518

`A272990(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272986.P9728031019771999518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272990 (n - 1) + a (n - 1)

end

end A272986.P9728031019771999518

/-! ## A272986.P3123352613761384957

`Δ[A272989(n)]-A272990(n)`
-/

namespace A272986.P3123352613761384957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272990 n

end

end A272986.P3123352613761384957

/-! ## A272986.P8068604246761553107

`A272989(n+1)-(A272990(n)+A272989(n))`
-/

namespace A272986.P8068604246761553107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272989 (n + 1) - (A272990 n + A272989 n)

end

end A272986.P8068604246761553107

/-! ## A272986.P4489485008215889849

`A000034(2*n)+∑[A272990(n)]-A272990(n)`
-/

namespace A272986.P4489485008215889849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n)

end

end A272986.P4489485008215889849

/-! ## A272986.P12825329992748250809

`A081581(n)%7+∑[A272990(n)]-A272990(n)`
-/

namespace A272986.P12825329992748250809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081581 n) 7 + (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n)

end

end A272986.P12825329992748250809

/-! ## A272986.P2190636130257777531

`A056594(2*n)²+∑[A272990(n)]-A272990(n)`
-/

namespace A272986.P2190636130257777531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n)

end

end A272986.P2190636130257777531

/-! ## A272986.P9943281534579780845

`(∑[A272990(n)]-A272990(n)+1)%A006527(n+8)`
-/

namespace A272986.P9943281534579780845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n + 1) (A006527 (n + 8))

end

end A272986.P9943281534579780845

/-! ## A272986.P3519991640614553022

`A080513(2*n)-n+∑[A272990(n)]-A272990(n)`
-/

namespace A272986.P3519991640614553022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n)

end

end A272986.P3519991640614553022

/-! ## A272986.P413225523452017537

`2*n+1-A005843(n)+∑[A272990(n)]-A272990(n)`
-/

namespace A272986.P413225523452017537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A005843 n + (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n)

end

end A272986.P413225523452017537

/-! ## A272986.P8141540393933413215

`A008611(3*n)-n+∑[A272990(n)]-A272990(n)`
-/

namespace A272986.P8141540393933413215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n)

end

end A272986.P8141540393933413215

/-! ## A272986.P14369219926808061332

`A000027(∑[A272990(n)]-A272990(n)+1)`
-/

namespace A272986.P14369219926808061332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n + 1).toNat

end

end A272986.P14369219926808061332

/-! ## A272986.P9537800694279454558

`A000265(∑[A272990(n)]-A272990(n)+1)`
-/

namespace A272986.P9537800694279454558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n + 1).toNat

end

end A272986.P9537800694279454558

/-! ## A272986.P15628725030238865467

`A245092(∑[A272990(n)]-A272990(n))+1`
-/

namespace A272986.P15628725030238865467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (∑ j ∈ Finset.range (n + 1), f1 j - A272990 n).toNat + 1

end

end A272986.P15628725030238865467

/-! ## A272986.P13079014825132501243

`A005408((∑[A272990(n)]-A272990(n))/2)`
-/

namespace A272986.P13079014825132501243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A272990 n : ℤ) : ℚ) / 2)).toNat

end

end A272986.P13079014825132501243

/-!
# A272987: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A272987, there is no canonical definition to state claims against.
-/

/-! ## A272987.P13848671902894210261

`A272986(2^n-1)`
-/

namespace A272987.P13848671902894210261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 (2 ^ n - 1)

end

end A272987.P13848671902894210261

/-! ## A272987.P10444754084113454059

`record[A272986(A006068(n))]`
-/

namespace A272987.P10444754084113454059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272987.P10444754084113454059

/-! ## A272987.P12424621612898049057

`record[A272986(A173787(n))]`
-/

namespace A272987.P12424621612898049057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272987.P12424621612898049057

/-! ## A272987.P16809123121940991237

`or(1, A272986(A000225(n)))`
-/

namespace A272987.P16809123121940991237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272986 (A000225 n).toNat)

end

end A272987.P16809123121940991237

/-! ## A272987.P11348238796209558836

`record[A272986(A324573(n+1))]`
-/

namespace A272987.P11348238796209558836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 (A324573 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272987.P11348238796209558836

/-!
# A272988: Convolution of the sequence of derangement numbers A000166 with itself.

The programs for A272988, there is no canonical definition to state claims against.
-/

/-! ## A272988.P13825029862499872760

`A130964(xor(A257990(n+1), A366760(n)))`
-/

namespace A272988.P13825029862499872760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130964 (Int.xor (A257990 (n + 1)) (A366760 n)).toNat

end

end A272988.P13825029862499872760

/-!
# A272989: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A272989, there is no canonical definition to state claims against.
-/

/-! ## A272989.P5023202792317458933

`∑[A272990(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272989.P5023202792317458933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272990 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272989.P5023202792317458933

/-! ## A272989.P12050994808076458927

`∑[∑[A272990(n)]-A272990(n)+1]`
-/

namespace A272989.P12050994808076458927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A272990 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272989.P12050994808076458927

/-! ## A272989.P893728385822981403

`∑[A272986(n)]`
-/

namespace A272989.P893728385822981403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272989.P893728385822981403

/-! ## A272989.P12134768589373171818

`A272986(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272989.P12134768589373171818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272986 n + a (A023443 n).toNat

end

end A272989.P12134768589373171818

/-! ## A272989.P12447645671343589384

`a(n-1)+1-(A057427(n)-A272986(n))` with `a(0)=1`
-/

namespace A272989.P12447645671343589384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 - (A057427 n - A272986 n)

end

end A272989.P12447645671343589384

/-! ## A272989.P15266951025074950936

`a(n-1)+A322586(2*n+1)+A272986(n)` with `a(0)=1`
-/

namespace A272989.P15266951025074950936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A322586 (2 * n + 1) + A272986 n)

end

end A272989.P15266951025074950936

/-!
# A272990: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 566", based on the 5-celled von Neumann neighborhood.

The programs for A272990, there is no canonical definition to state claims against.
-/

/-! ## A272990.P15501470713716387925

`Δ[A272986(n)]`
-/

namespace A272990.P15501470713716387925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272990.P15501470713716387925

/-! ## A272990.P4563058067317065151

`A272986(n+1)-A272986(n)`
-/

namespace A272990.P4563058067317065151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272986 (n + 1) - A272986 n

end

end A272990.P4563058067317065151

/-!
# A272991: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A272991, there is no canonical definition to state claims against.
-/

/-! ## A272991.P6624279905031304295

`A000007(n)+A016754(n)-A271693(n)`
-/

namespace A272991.P6624279905031304295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A271693 n)

end

end A272991.P6624279905031304295

/-! ## A272991.P1765700109211201993

`A272994(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272991.P1765700109211201993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272994 (n - 1) + a (n - 1)

end

end A272991.P1765700109211201993

/-! ## A272991.P15622191870078896922

`∑[A272994(n)]+1-A272994(n)`
-/

namespace A272991.P15622191870078896922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272994 n)

end

end A272991.P15622191870078896922

/-! ## A272991.P17953883740806737465

`Δ[A272993(n)]-A272994(n)`
-/

namespace A272991.P17953883740806737465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272994 n

end

end A272991.P17953883740806737465

/-! ## A272991.P7344618964944109802

`A272993(n+1)-(A272994(n)+A272993(n))`
-/

namespace A272991.P7344618964944109802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272993 (n + 1) - (A272994 n + A272993 n)

end

end A272991.P7344618964944109802

/-! ## A272991.P14835061723345375614

`A181385(4*n+2)-A271693(n)`
-/

namespace A272991.P14835061723345375614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A271693 n

end

end A272991.P14835061723345375614

/-! ## A272991.P9396063653937718877

`A181385(A016825(n))-A271693(n)-A000007(n+1)`
-/

namespace A272991.P9396063653937718877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271693 n - A000007 (n + 1)

end

end A272991.P9396063653937718877

/-! ## A272991.P500809606036711344

`(A181385(A016825(n))-A271693(n))%A000574(n+3)`
-/

namespace A272991.P500809606036711344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181385 (A016825 n).toNat - A271693 n) (A000574 (n + 3))

end

end A272991.P500809606036711344

/-! ## A272991.P11608841848455516144

`A008740(A008458(n))-A271693(n)`
-/

namespace A272991.P11608841848455516144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A271693 n

end

end A272991.P11608841848455516144

/-! ## A272991.P4304584932094710632

`A028310(A016754(n)-A271693(n))`
-/

namespace A272991.P4304584932094710632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016754 n - A271693 n).toNat

end

end A272991.P4304584932094710632

/-!
# A272992: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A272992, there is no canonical definition to state claims against.
-/

/-! ## A272992.P3875988120612790613

`A272991(2^n-1)`
-/

namespace A272992.P3875988120612790613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 (2 ^ n - 1)

end

end A272992.P3875988120612790613

/-! ## A272992.P2440919075627883398

`record[A272991(A303763(n))]`
-/

namespace A272992.P2440919075627883398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272992.P2440919075627883398

/-! ## A272992.P8154216591263135492

`record[A272991(A303765(n))]`
-/

namespace A272992.P8154216591263135492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272992.P8154216591263135492

/-! ## A272992.P878107819432923176

`record[A272991(A253564(n+1))]`
-/

namespace A272992.P878107819432923176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272992.P878107819432923176

/-! ## A272992.P790794317498655184

`record[A272991(A302029(n+1))]`
-/

namespace A272992.P790794317498655184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272992.P790794317498655184

/-!
# A272993: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A272993, there is no canonical definition to state claims against.
-/

/-! ## A272993.P9646507910398549340

`∑[A272991(n)]`
-/

namespace A272993.P9646507910398549340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272993.P9646507910398549340

/-! ## A272993.P7117782341220762259

`∑[A272994(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272993.P7117782341220762259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272994 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272993.P7117782341220762259

/-! ## A272993.P7046509351496246211

`A272991(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272993.P7046509351496246211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272991 n + a (A023443 n).toNat

end

end A272993.P7046509351496246211

/-! ## A272993.P15357502742642899416

`∑[A016754(n)-A271693(n)]+1`
-/

namespace A272993.P15357502742642899416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A271693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272993.P15357502742642899416

/-! ## A272993.P15216494516101371953

`∑[A069894(n)-A271693(n)]-n`
-/

namespace A272993.P15216494516101371953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 n - A271693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A272993.P15216494516101371953

/-! ## A272993.P4991470355227123819

`∑[∑[A272994(n)]+1-A272994(n)]`
-/

namespace A272993.P4991470355227123819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272994 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272993.P4991470355227123819

/-! ## A272993.P12888235477567051699

`a(n-1)+A272991(n)+A000007(n)` with `a(0)=1`
-/

namespace A272993.P12888235477567051699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272991 n + A000007 n)

end

end A272993.P12888235477567051699

/-! ## A272993.P2536182371455674463

`a(n-1)+A272991(n)+A000038(n)` with `a(0)=1`
-/

namespace A272993.P2536182371455674463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272991 n + A000038 n)

end

end A272993.P2536182371455674463

/-! ## A272993.P11429354900581234642

`a(n-1)-A008683(A151800(n))*A272991(n)` with `a(0)=1`
-/

namespace A272993.P11429354900581234642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A008683 (A151800 n).toNat * A272991 n

end

end A272993.P11429354900581234642

/-! ## A272993.P6658896607243204804

`∑[A181385(A016825(n))-A271693(n)]`
-/

namespace A272993.P6658896607243204804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272993.P6658896607243204804

/-!
# A272994: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 569", based on the 5-celled von Neumann neighborhood.

The programs for A272994, there is no canonical definition to state claims against.
-/

/-! ## A272994.P6487261552419580268

`Δ[A272991(n)]`
-/

namespace A272994.P6487261552419580268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272994.P6487261552419580268

/-! ## A272994.P4913069519793502079

`A272991(n+1)-A272991(n)`
-/

namespace A272994.P4913069519793502079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272991 (n + 1) - A272991 n

end

end A272994.P4913069519793502079

/-! ## A272994.P11858501614250400698

`Δ[A016754(n)-A271693(n)+C(2, n+2)+2]`
-/

namespace A272994.P11858501614250400698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A271693 n + (Nat.choose 2 (n + 2) + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272994.P11858501614250400698

/-! ## A272994.P8493023220255275214

`Δ[A000007(n)+A016754(n)-A271693(n)]`
-/

namespace A272994.P8493023220255275214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A271693 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272994.P8493023220255275214

/-! ## A272994.P15924388671061268637

`Δ[A181385(A016825(n))-A271693(n)]`
-/

namespace A272994.P15924388671061268637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272994.P15924388671061268637

/-! ## A272994.P10738113241618066541

`Δ[A016754(n)-A271693(n)-A000122(n²)]`
-/

namespace A272994.P10738113241618066541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A271693 n - A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272994.P10738113241618066541

/-! ## A272994.P13781813453794443727

`Δ[A028310(A016754(n)-A271693(n))]`
-/

namespace A272994.P13781813453794443727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016754 n - A271693 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272994.P13781813453794443727

/-!
# A272995: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A272995, there is no canonical definition to state claims against.
-/

/-! ## A272995.P11376297320842532865

`A272998(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272995.P11376297320842532865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272998 (n - 1) + a (n - 1)

end

end A272995.P11376297320842532865

/-! ## A272995.P11065957634947645655

`(∑[A272998(n)]+1-A272998(n))%A124809(n+1)`
-/

namespace A272995.P11065957634947645655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272998 n)) (A124809 (n + 1))

end

end A272995.P11065957634947645655

/-! ## A272995.P6384634004828529717

`Δ[A272997(n)]-A272998(n)`
-/

namespace A272995.P6384634004828529717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272998 n

end

end A272995.P6384634004828529717

/-! ## A272995.P18377493498201509901

`A272997(n+1)-(A272998(n)+A272997(n))`
-/

namespace A272995.P18377493498201509901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272997 (n + 1) - (A272998 n + A272997 n)

end

end A272995.P18377493498201509901

/-! ## A272995.P10287506455135124454

`A000027(∑[A272998(n)]+1-A272998(n))`
-/

namespace A272995.P10287506455135124454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272998 n)).toNat

end

end A272995.P10287506455135124454

/-!
# A272996: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A272996, there is no canonical definition to state claims against.
-/

/-! ## A272996.P7377047728954141254

`A272995(2^n-1)`
-/

namespace A272996.P7377047728954141254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 (2 ^ n - 1)

end

end A272996.P7377047728954141254

/-! ## A272996.P8598255043654644818

`record[A272995(A038573(n))]`
-/

namespace A272996.P8598255043654644818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272996.P8598255043654644818

/-! ## A272996.P4980826152717471474

`record[A272995(A091264(n))]`
-/

namespace A272996.P4980826152717471474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272996.P4980826152717471474

/-! ## A272996.P5851341484266852761

`record[A272995(A218616(n))]`
-/

namespace A272996.P5851341484266852761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272996.P5851341484266852761

/-! ## A272996.P4255990247259023057

`record[A272995(Δ[A228693(n)])]`
-/

namespace A272996.P4255990247259023057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272996.P4255990247259023057

/-!
# A272997: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A272997, there is no canonical definition to state claims against.
-/

/-! ## A272997.P8356821609520494420

`∑[A272995(n)]`
-/

namespace A272997.P8356821609520494420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272997.P8356821609520494420

/-! ## A272997.P298918003958684543

`A272995(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272997.P298918003958684543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272995 n + a (A023443 n).toNat

end

end A272997.P298918003958684543

/-! ## A272997.P6914258586491064519

`A272995(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A272997.P6914258586491064519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272995 n + a (A028310 n - 1).toNat

end

end A272997.P6914258586491064519

/-! ## A272997.P5214096273001766062

`∑[∑[A272998(n)]+1-A272998(n)]`
-/

namespace A272997.P5214096273001766062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272998 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272997.P5214096273001766062

/-! ## A272997.P9261942943132362965

`a(n-1)-A057428(n)*A272995(n)` with `a(0)=1`
-/

namespace A272997.P9261942943132362965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A272995 n

end

end A272997.P9261942943132362965

/-!
# A272998: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 573", based on the 5-celled von Neumann neighborhood.

The programs for A272998, there is no canonical definition to state claims against.
-/

/-! ## A272998.P2593896193934122966

`Δ[A272995(n)]`
-/

namespace A272998.P2593896193934122966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272998.P2593896193934122966

/-! ## A272998.P8690905485052517012

`A272995(n+1)-A272995(n)`
-/

namespace A272998.P8690905485052517012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272995 (n + 1) - A272995 n

end

end A272998.P8690905485052517012

