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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A063003: Difference between 3^n and the next larger or equal power of 2.

The programs for A063003, the canonical program `A063003.P12736392218044754336` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063003 has offset 0).

The definition of A063003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063003.P12736392218044754336

`2^ceil(log2(3^n))-3^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063003

/-- `2^ceil(log2(3^n))-3^n` -/
def P12736392218044754336.Spec : Prop :=
  ∀ n, P12736392218044754336.a n = (A063003 n : ℚ)

end A063003

/-! ## A063003.P10300418954068151829

`A063005(A204399(n))`
-/

namespace A063003.P10300418954068151829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063005 (A204399 n).toNat

end

end A063003.P10300418954068151829

namespace A063003

/-- `A063005(A204399(n))` -/
def P10300418954068151829.Spec : Prop :=
  ∀ n, P10300418954068151829.a n = A063003 n

end A063003

/-! ## A063003.P8988351620655662272

`xor(a(n-1)+3^(n-1), 3*a(n-1))` with `a(0)=0`
-/

namespace A063003.P8988351620655662272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (3 * a (n - 1))

end

end A063003.P8988351620655662272

namespace A063003

/-- `xor(a(n-1)+3^(n-1), 3*a(n-1))` -/
def P8988351620655662272.Spec : Prop :=
  ∀ n, P8988351620655662272.a n = A063003 n

end A063003

/-! ## A063003.P12587915727349559291

`A063005(ceil(log2(A000244(n))))`
-/

namespace A063003.P12587915727349559291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063005 ⌈Real.logb 2 (A000244 n : ℝ)⌉.toNat

end

end A063003.P12587915727349559291

namespace A063003

/-- `A063005(ceil(log2(A000244(n))))` -/
def P12587915727349559291.Spec : Prop :=
  ∀ n, P12587915727349559291.a n = A063003 n

end A063003

/-! ## A063003.P17558041840702306717

`A000079(A020914(n))%A000244(n)`
-/

namespace A063003.P17558041840702306717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A020914 n).toNat) (A000244 n)

end

end A063003.P17558041840702306717

namespace A063003

/-- `A000079(A020914(n))%A000244(n)` -/
def P17558041840702306717.Spec : Prop :=
  ∀ n, P17558041840702306717.a n = A063003 n

end A063003

/-! ## A063003.P1681020318324855131

`A063005(A020914(n)%A000244(n))`
-/

namespace A063003.P1681020318324855131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063005 (Int.tmod (A020914 n) (A000244 n)).toNat

end

end A063003.P1681020318324855131

namespace A063003

/-- `A063005(A020914(n)%A000244(n))` -/
def P1681020318324855131.Spec : Prop :=
  ∀ n, P1681020318324855131.a n = A063003 n

end A063003

/-! ## A063003.P9443395976526231968

`A005061(n)%A098232(n)`
-/

namespace A063003.P9443395976526231968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005061 n) (A098232 n)

end

end A063003.P9443395976526231968

namespace A063003

/-- `A005061(n)%A098232(n)` -/
def P9443395976526231968.Spec : Prop :=
  ∀ n, P9443395976526231968.a n = A063003 n

end A063003

/-! ## A063003.P14322336247572329415

`A085350(n)%A098232(n)`
-/

namespace A063003.P14322336247572329415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085350 n) (A098232 n)

end

end A063003.P14322336247572329415

namespace A063003

/-- `A085350(n)%A098232(n)` -/
def P14322336247572329415.Spec : Prop :=
  ∀ n, P14322336247572329415.a n = A063003 n

end A063003

/-!
# A063004: Difference between 2^n and the next larger or equal power of 3.

The programs for A063004, the canonical program `A063004.P6189448999932225502` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063004 has offset 0).

The definition of A063004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063004.P6189448999932225502

`3^ceil(log(2^n)/log(3))-2^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063004

/-- `3^ceil(log(2^n)/log(3))-2^n` -/
def P6189448999932225502.Spec : Prop :=
  ∀ n, P6189448999932225502.a n = (A063004 n : ℚ)

end A063004

/-! ## A063004.P5614983351372595138

`abs(2^n-A000244(A156301(n)))`
-/

namespace A063004.P5614983351372595138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A000244 (A156301 n).toNat|

end

end A063004.P5614983351372595138

namespace A063004

/-- `abs(2^n-A000244(A156301(n)))` -/
def P5614983351372595138.Spec : Prop :=
  ∀ n, P5614983351372595138.a n = A063004 n

end A063004

/-! ## A063004.P16606617678184857474

`A001047(n)%(2^n+2*a(n-1))` with `a(0)=0`
-/

namespace A063004.P16606617678184857474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A001047 n) ((2 ^ n : ℤ) + 2 * a (n - 1))

end

end A063004.P16606617678184857474

namespace A063004

/-- `A001047(n)%(2^n+2*a(n-1))` -/
def P16606617678184857474.Spec : Prop :=
  ∀ n, P16606617678184857474.a n = A063004 n

end A063004

/-! ## A063004.P4873002708439364034

`(3^n-2^n)%A000244(floor(n/log2(3))+1)`
-/

namespace A063004.P4873002708439364034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (A000244 (⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋ + 1).toNat)

end

end A063004.P4873002708439364034

namespace A063004

/-- `(3^n-2^n)%A000244(floor(n/log2(3))+1)` -/
def P4873002708439364034.Spec : Prop :=
  ∀ n, P4873002708439364034.a n = A063004 n

end A063004

/-! ## A063004.P1435966575607731561

`xor(1, A171960(2^n))`
-/

namespace A063004.P1435966575607731561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A171960 (2 ^ n))

end

end A063004.P1435966575607731561

namespace A063004

/-- `xor(1, A171960(2^n))` -/
def P1435966575607731561.Spec : Prop :=
  ∀ n, P1435966575607731561.a n = A063004 n

end A063004

/-!
# A063005: Difference between 2^n and the next smaller or equal power of 3.

The programs for A063005, the canonical program `A063005.P5081767072072148156` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063005 has offset 0).

The definition of A063005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136409, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063005.P5081767072072148156

`A000079(n)-3^A136409(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063005

/-- `A000079(n)-3^A136409(n)` -/
def P5081767072072148156.Spec : Prop :=
  ∀ n, P5081767072072148156.a n = (A063005 n : ℚ)

end A063005

/-! ## A063005.P5266322921051951954

`∑[A328334(abs(1-n))]`
-/

namespace A063005.P5266322921051951954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328334 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063005.P5266322921051951954

namespace A063005

/-- `∑[A328334(abs(1-n))]` -/
def P5266322921051951954.Spec : Prop :=
  ∀ n, P5266322921051951954.a n = A063005 n

end A063005

/-! ## A063005.P11397025361726994839

`2^n-3^floor(log(2^n)/log(3))`
-/

namespace A063005.P11397025361726994839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (3 : ℚ) ^ (⌊Real.log (2 ^ n : ℝ) / Real.log (3 : ℝ)⌋ : ℤ)

end

end A063005.P11397025361726994839

namespace A063005

/-- `2^n-3^floor(log(2^n)/log(3))` -/
def P11397025361726994839.Spec : Prop :=
  ∀ n, P11397025361726994839.a n = (A063005 n : ℚ)

end A063005

/-! ## A063005.P1245158475672674116

`A365459(2^n)`
-/

namespace A063005.P1245158475672674116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365459 (2 ^ n)

end

end A063005.P1245158475672674116

namespace A063005

/-- `A365459(2^n)` -/
def P1245158475672674116.Spec : Prop :=
  ∀ n, P1245158475672674116.a n = A063005 n

end A063005

/-! ## A063005.P9486210381172007529

`A365459(A000079(n))%A000079(n)`
-/

namespace A063005.P9486210381172007529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365459 (A000079 n).toNat) (A000079 n)

end

end A063005.P9486210381172007529

namespace A063005

/-- `A365459(A000079(n))%A000079(n)` -/
def P9486210381172007529.Spec : Prop :=
  ∀ n, P9486210381172007529.a n = A063005 n

end A063005

/-!
# A063006: Coefficients in a 10-adic square root of 1.

The programs for A063006, there is no canonical definition to state claims against.
-/

/-! ## A063006.P11984175967451916945

`A018247(n)+A091663(n)-A091661(n)`
-/

namespace A063006.P11984175967451916945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A091661 n)

end

end A063006.P11984175967451916945

/-! ## A063006.P6104408347249252289

`A018248(n)+A091664(n)-A091661(n)`
-/

namespace A063006.P6104408347249252289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A091661 n)

end

end A063006.P6104408347249252289

/-! ## A063006.P15804484307238448080

`A120817(n)+A120818(n)-A091661(n)`
-/

namespace A063006.P15804484307238448080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A091661 n)

end

end A063006.P15804484307238448080

/-! ## A063006.P12350928056249802942

`A225405(n)+A225408(n)-A091661(n)`
-/

namespace A063006.P12350928056249802942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A091661 n)

end

end A063006.P12350928056249802942

/-! ## A063006.P14087302649573848807

`A290372(n)+A290375(n)-A091661(n)`
-/

namespace A063006.P14087302649573848807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A091661 n)

end

end A063006.P14087302649573848807

/-! ## A063006.P5787673745994020623

`A290373(n)+A290374(n)-A091661(n)`
-/

namespace A063006.P5787673745994020623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A091661 n)

end

end A063006.P5787673745994020623

/-! ## A063006.P356688870764492264

`A216102(n+1)+A216103(n+1)-A091661(n)`
-/

namespace A063006.P356688870764492264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216102 (n + 1) + (A216103 (n + 1) - A091661 n)

end

end A063006.P356688870764492264

/-!
# A063007: T(n,k) = binomial(n,k)*binomial(n+k,k), 0 <= k <= n, triangle read by rows.

The programs for A063007, the canonical program `A063007.P1972805215499155810` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063007 has offset 0).

The definition of A063007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*C(row(n)+col(n), col(n))` (program `A063007.P1972805215499155810`, by `A063007.P1972805215499155810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063007.P1972805215499155810

`C(row(n), col(n))*C(row(n)+col(n), col(n))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063007

/-- `C(row(n), col(n))*C(row(n)+col(n), col(n))` -/
def P1972805215499155810.Spec : Prop :=
  ∀ n, (P1972805215499155810.a n : ℤ) = A063007 n

theorem P1972805215499155810.correct : P1972805215499155810.Spec := by
  intro n
  simp only [A063007]

end A063007

/-! ## A063007.P17586967267358486540

`(row(n)+col(n))!/(col(n)!²*(row(n)-col(n))!)`
-/

namespace A063007.P17586967267358486540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) ^ 2 * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A063007.P17586967267358486540

namespace A063007

/-- `(row(n)+col(n))!/(col(n)!²*(row(n)-col(n))!)` -/
def P17586967267358486540.Spec : Prop :=
  ∀ n, P17586967267358486540.a n = (A063007 n : ℚ)

end A063007

/-! ## A063007.P7369777189540775064

`A007318(n)*A046899(n)`
-/

namespace A063007.P7369777189540775064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A046899 n

end

end A063007.P7369777189540775064

namespace A063007

/-- `A007318(n)*A046899(n)` -/
def P7369777189540775064.Spec : Prop :=
  ∀ n, P7369777189540775064.a n = A063007 n

end A063007

/-! ## A063007.P15574663083053183477

`A009766(n)*A074909(n)`
-/

namespace A063007.P15574663083053183477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A074909 n

end

end A063007.P15574663083053183477

namespace A063007

/-- `A009766(n)*A074909(n)` -/
def P15574663083053183477.Spec : Prop :=
  ∀ n, P15574663083053183477.a n = A063007 n

end A063007

/-! ## A063007.P18002282971334105373

`A002260(n+1)*A088617(n)`
-/

namespace A063007.P18002282971334105373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A088617 n

end

end A063007.P18002282971334105373

namespace A063007

/-- `A002260(n+1)*A088617(n)` -/
def P18002282971334105373.Spec : Prop :=
  ∀ n, P18002282971334105373.a n = A063007 n

end A063007

/-! ## A063007.P18293504077715177552

`A027555(n)*A293600(n+1)`
-/

namespace A063007.P18293504077715177552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027555 n * A293600 (n + 1)

end

end A063007.P18293504077715177552

namespace A063007

/-- `A027555(n)*A293600(n+1)` -/
def P18293504077715177552.Spec : Prop :=
  ∀ n, P18293504077715177552.a n = A063007 n

end A063007

/-! ## A063007.P8743647746927004030

`ceil(A134059(n)/3)*A046899(n)`
-/

namespace A063007.P8743647746927004030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A046899 n

end

end A063007.P8743647746927004030

namespace A063007

/-- `ceil(A134059(n)/3)*A046899(n)` -/
def P8743647746927004030.Spec : Prop :=
  ∀ n, P8743647746927004030.a n = A063007 n

end A063007

/-! ## A063007.P6965735885956797087

`A007318(n)*A092392(A061579(n))`
-/

namespace A063007.P6965735885956797087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A092392 (A061579 n).toNat

end

end A063007.P6965735885956797087

namespace A063007

/-- `A007318(n)*A092392(A061579(n))` -/
def P6965735885956797087.Spec : Prop :=
  ∀ n, P6965735885956797087.a n = A063007 n

end A063007

/-! ## A063007.P10162546435917587668

`A007318(n)*A059481(A007401(n+1))`
-/

namespace A063007.P10162546435917587668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059481 (A007401 (n + 1)).toNat

end

end A063007.P10162546435917587668

namespace A063007

/-- `A007318(n)*A059481(A007401(n+1))` -/
def P10162546435917587668.Spec : Prop :=
  ∀ n, P10162546435917587668.a n = A063007 n

end A063007

/-! ## A063007.P6440228480596318052

`A056040(2*A002262(n))*A085478(n)`
-/

namespace A063007.P6440228480596318052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * A002262 n).toNat * A085478 n

end

end A063007.P6440228480596318052

namespace A063007

/-- `A056040(2*A002262(n))*A085478(n)` -/
def P6440228480596318052.Spec : Prop :=
  ∀ n, P6440228480596318052.a n = A063007 n

end A063007

/-! ## A063007.P16915758059785900848

`(A171824(n)-A092392(n))*A007318(n)`
-/

namespace A063007.P16915758059785900848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171824 n - A092392 n) * A007318 n

end

end A063007.P16915758059785900848

namespace A063007

/-- `(A171824(n)-A092392(n))*A007318(n)` -/
def P16915758059785900848.Spec : Prop :=
  ∀ n, P16915758059785900848.a n = A063007 n

end A063007

/-! ## A063007.P14725551286839747678

`A046899(n)/A092392(n)*A104684(n)`
-/

namespace A063007.P14725551286839747678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046899 n : ℚ) / (A092392 n : ℚ) * (A104684 n : ℚ)

end

end A063007.P14725551286839747678

namespace A063007

/-- `A046899(n)/A092392(n)*A104684(n)` -/
def P14725551286839747678.Spec : Prop :=
  ∀ n, P14725551286839747678.a n = (A063007 n : ℚ)

end A063007

/-! ## A063007.P6254493668119332164

`A104684(A061579(n))`
-/

namespace A063007.P6254493668119332164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (A061579 n).toNat

end

end A063007.P6254493668119332164

namespace A063007

/-- `A104684(A061579(n))` -/
def P6254493668119332164.Spec : Prop :=
  ∀ n, P6254493668119332164.a n = A063007 n

end A063007

/-! ## A063007.P9005167428087466504

`A104684(A038722(n+1)-1)`
-/

namespace A063007.P9005167428087466504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 (A038722 (n + 1) - 1).toNat

end

end A063007.P9005167428087466504

namespace A063007

/-- `A104684(A038722(n+1)-1)` -/
def P9005167428087466504.Spec : Prop :=
  ∀ n, P9005167428087466504.a n = A063007 n

end A063007

/-! ## A063007.P13414469197667121394

`A007318(n)/A118384(n)*A376467(n)`
-/

namespace A063007.P13414469197667121394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A118384 n : ℚ) * (A376467 n : ℚ)

end

end A063007.P13414469197667121394

namespace A063007

/-- `A007318(n)/A118384(n)*A376467(n)` -/
def P13414469197667121394.Spec : Prop :=
  ∀ n, P13414469197667121394.a n = (A063007 n : ℚ)

end A063007

/-! ## A063007.P10726825726822156726

`A109983(A061885(n))`
-/

namespace A063007.P10726825726822156726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109983 (A061885 n).toNat

end

end A063007.P10726825726822156726

namespace A063007

/-- `A109983(A061885(n))` -/
def P10726825726822156726.Spec : Prop :=
  ∀ n, P10726825726822156726.a n = A063007 n

end A063007

/-! ## A063007.P11642617859070530851

`A109983(eq[1, A118175(n)])`
-/

namespace A063007.P11642617859070530851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063007.P11642617859070530851

namespace A063007

/-- `A109983(eq[1, A118175(n)])` -/
def P11642617859070530851.Spec : Prop :=
  ∀ n, P11642617859070530851.a n = A063007 n

end A063007

/-! ## A063007.P10070363125154152766

`A069466(n)/A094527(n)`
-/

namespace A063007.P10070363125154152766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A094527 n : ℚ)

end

end A063007.P10070363125154152766

namespace A063007

/-- `A069466(n)/A094527(n)` -/
def P10070363125154152766.Spec : Prop :=
  ∀ n, P10070363125154152766.a n = (A063007 n : ℚ)

end A063007

/-! ## A063007.P13727369183933358162

`A007318(n)*A007318(A245300(n))`
-/

namespace A063007.P13727369183933358162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 (A245300 n).toNat

end

end A063007.P13727369183933358162

namespace A063007

/-- `A007318(n)*A007318(A245300(n))` -/
def P13727369183933358162.Spec : Prop :=
  ∀ n, P13727369183933358162.a n = A063007 n

end A063007

/-! ## A063007.P18175598993738950739

`A089627(A245300(n))`
-/

namespace A063007.P18175598993738950739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 (A245300 n).toNat

end

end A063007.P18175598993738950739

namespace A063007

/-- `A089627(A245300(n))` -/
def P18175598993738950739.Spec : Prop :=
  ∀ n, P18175598993738950739.a n = A063007 n

end A063007

/-!
# A063008: Canonical partition sequence (see A080577) encoded by prime factorization. The partition [p1,p2,p3,...] with p1 >= p2 >= p3 >= ... is encoded as 2^p1 * 3^p2 * 5^p3 * ... .

The programs for A063008, there is no canonical definition to state claims against.
-/

/-! ## A063008.P15363764905784618509

`A057335(A114994(n))`
-/

namespace A063008.P15363764905784618509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A114994 n).toNat

end

end A063008.P15363764905784618509

/-! ## A063008.P14539933885897870635

`A057335(eq[0, A124760(n)])`
-/

namespace A063008.P14539933885897870635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063008.P14539933885897870635

/-! ## A063008.P1267031065971087418

`A057335(eq[1, A124765(n)!])`
-/

namespace A063008.P1267031065971087418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A124765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063008.P1267031065971087418

/-! ## A063008.P6119779021148142622

`A057335(eq[n, n*A124765(n)])`
-/

namespace A063008.P6119779021148142622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063008.P6119779021148142622

/-! ## A063008.P6363930128702834331

`A057335(eq[A057427(n), A124765(n)])`
-/

namespace A063008.P6363930128702834331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063008.P6363930128702834331

/-! ## A063008.P4058011378218049157

`A057335(eq[A006257(n), A331856(n)])`
-/

namespace A063008.P4058011378218049157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063008.P4058011378218049157

/-! ## A063008.P11356457612256432850

`A057335(eq[A124765(n)², A124765(n)])`
-/

namespace A063008.P11356457612256432850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A063008.P11356457612256432850

/-! ## A063008.P9644941578804407322

`A181821(A129129(n))`
-/

namespace A063008.P9644941578804407322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A129129 n).toNat

end

end A063008.P9644941578804407322

/-!
# A063009: Write n in binary then square as if written in base 10.

The programs for A063009, the canonical program `A063009.P15492951971823313216` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063009 has offset 0).

The definition of A063009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063009.P15492951971823313216

`A007088(n)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063009

/-- `A007088(n)²` -/
def P15492951971823313216.Spec : Prop :=
  ∀ n, P15492951971823313216.a n = A063009 n

theorem P15492951971823313216.correct : P15492951971823313216.Spec := by
  intro n
  simp only [A063009]

end A063009

/-! ## A063009.P1315442195340309194

`(A204093(n)/6)²`
-/

namespace A063009.P1315442195340309194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A204093 n : ℚ) / 6) ^ 2

end

end A063009.P1315442195340309194

namespace A063009

/-- `(A204093(n)/6)²` -/
def P1315442195340309194.Spec : Prop :=
  ∀ n, P1315442195340309194.a n = (A063009 n : ℚ)

theorem P1315442195340309194.correct : P1315442195340309194.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P1315442195340309194.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P14393005334673111023

`(A204094(n)/7)²`
-/

namespace A063009.P14393005334673111023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A204094 n : ℚ) / 7) ^ 2

end

end A063009.P14393005334673111023

namespace A063009

/-- `(A204094(n)/7)²` -/
def P14393005334673111023.Spec : Prop :=
  ∀ n, P14393005334673111023.a n = (A063009 n : ℚ)

theorem P14393005334673111023.correct : P14393005334673111023.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P14393005334673111023.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P9691667058868911189

`(A204095(n)/8)²`
-/

namespace A063009.P9691667058868911189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A204095 n : ℚ) / 8) ^ 2

end

end A063009.P9691667058868911189

namespace A063009

/-- `(A204095(n)/8)²` -/
def P9691667058868911189.Spec : Prop :=
  ∀ n, P9691667058868911189.a n = (A063009 n : ℚ)

theorem P9691667058868911189.correct : P9691667058868911189.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P9691667058868911189.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P12491493958217325434

`(A097256(n)/9)²`
-/

namespace A063009.P12491493958217325434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A097256 n : ℚ) / 9) ^ 2

end

end A063009.P12491493958217325434

namespace A063009

/-- `(A097256(n)/9)²` -/
def P12491493958217325434.Spec : Prop :=
  ∀ n, P12491493958217325434.a n = (A063009 n : ℚ)

end A063009

/-! ## A063009.P11070238658365741488

`(A099820(n)/10)²`
-/

namespace A063009.P11070238658365741488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A099820 n : ℚ) / 10) ^ 2

end

end A063009.P11070238658365741488

namespace A063009

/-- `(A099820(n)/10)²` -/
def P11070238658365741488.Spec : Prop :=
  ∀ n, P11070238658365741488.a n = (A063009 n : ℚ)

end A063009

/-! ## A063009.P10323949314821987805

`(A228071(n)+n)²`
-/

namespace A063009.P10323949314821987805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A228071 n + (n : ℤ)) ^ 2

end

end A063009.P10323949314821987805

namespace A063009

/-- `(A228071(n)+n)²` -/
def P10323949314821987805.Spec : Prop :=
  ∀ n, P10323949314821987805.a n = A063009 n

theorem P10323949314821987805.correct : P10323949314821987805.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P10323949314821987805.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A228071, A228071.P9444289082571793754.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P788648519649576834

`(n-A269130(n))²`
-/

namespace A063009.P788648519649576834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A269130 n) ^ 2

end

end A063009.P788648519649576834

namespace A063009

/-- `(n-A269130(n))²` -/
def P788648519649576834.Spec : Prop :=
  ∀ n, P788648519649576834.a n = A063009 n

theorem P788648519649576834.correct : P788648519649576834.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P788648519649576834.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A269130, A269130.P11293985648693636355.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P11238946485100691797

`(A169965(n+1)/2)²`
-/

namespace A063009.P11238946485100691797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169965 (n + 1) : ℚ) / 2) ^ 2

end

end A063009.P11238946485100691797

namespace A063009

/-- `(A169965(n+1)/2)²` -/
def P11238946485100691797.Spec : Prop :=
  ∀ n, P11238946485100691797.a n = (A063009 n : ℚ)

theorem P11238946485100691797.correct : P11238946485100691797.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P11238946485100691797.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P10774563735893042480

`(A169966(n+1)/3)²`
-/

namespace A063009.P10774563735893042480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169966 (n + 1) : ℚ) / 3) ^ 2

end

end A063009.P10774563735893042480

namespace A063009

/-- `(A169966(n+1)/3)²` -/
def P10774563735893042480.Spec : Prop :=
  ∀ n, P10774563735893042480.a n = (A063009 n : ℚ)

theorem P10774563735893042480.correct : P10774563735893042480.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P10774563735893042480.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P16709214085676332811

`(A169967(n+1)/4)²`
-/

namespace A063009.P16709214085676332811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169967 (n + 1) : ℚ) / 4) ^ 2

end

end A063009.P16709214085676332811

namespace A063009

/-- `(A169967(n+1)/4)²` -/
def P16709214085676332811.Spec : Prop :=
  ∀ n, P16709214085676332811.a n = (A063009 n : ℚ)

theorem P16709214085676332811.correct : P16709214085676332811.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P16709214085676332811.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P4489565089120197482

`(A169964(n+1)/5)²`
-/

namespace A063009.P4489565089120197482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169964 (n + 1) : ℚ) / 5) ^ 2

end

end A063009.P4489565089120197482

namespace A063009

/-- `(A169964(n+1)/5)²` -/
def P4489565089120197482.Spec : Prop :=
  ∀ n, P4489565089120197482.a n = (A063009 n : ℚ)

theorem P4489565089120197482.correct : P4489565089120197482.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P4489565089120197482.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P9552861030334086380

`A303596(A372060(n))²`
-/

namespace A063009.P9552861030334086380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 n).toNat ^ 2

end

end A063009.P9552861030334086380

namespace A063009

/-- `A303596(A372060(n))²` -/
def P9552861030334086380.Spec : Prop :=
  ∀ n, P9552861030334086380.a n = A063009 n

end A063009

/-! ## A063009.P16603926743492445864

`(A097256(n)-A204095(n))²`
-/

namespace A063009.P16603926743492445864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097256 n - A204095 n) ^ 2

end

end A063009.P16603926743492445864

namespace A063009

/-- `(A097256(n)-A204095(n))²` -/
def P16603926743492445864.Spec : Prop :=
  ∀ n, P16603926743492445864.a n = A063009 n

end A063009

/-! ## A063009.P4377092295666757168

`(A204093(n)-A204094(n))²`
-/

namespace A063009.P4377092295666757168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204093 n - A204094 n) ^ 2

end

end A063009.P4377092295666757168

namespace A063009

/-- `(A204093(n)-A204094(n))²` -/
def P4377092295666757168.Spec : Prop :=
  ∀ n, P4377092295666757168.a n = A063009 n

theorem P4377092295666757168.correct : P4377092295666757168.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P4377092295666757168.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A204093, A204093.P12830992095828407750.a, A204094, A204094.P6203249824050151500.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P17229784785550186709

`(A204094(n)-A204095(n))²`
-/

namespace A063009.P17229784785550186709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204094 n - A204095 n) ^ 2

end

end A063009.P17229784785550186709

namespace A063009

/-- `(A204094(n)-A204095(n))²` -/
def P17229784785550186709.Spec : Prop :=
  ∀ n, P17229784785550186709.a n = A063009 n

theorem P17229784785550186709.correct : P17229784785550186709.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P17229784785550186709.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A204094, A204094.P6203249824050151500.a, A204095, A204095.P12496041222764549128.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P12778151087997877245

`(A169964(n+1)-A169967(n+1))²`
-/

namespace A063009.P12778151087997877245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169964 (n + 1) - A169967 (n + 1)) ^ 2

end

end A063009.P12778151087997877245

namespace A063009

/-- `(A169964(n+1)-A169967(n+1))²` -/
def P12778151087997877245.Spec : Prop :=
  ∀ n, P12778151087997877245.a n = A063009 n

theorem P12778151087997877245.correct : P12778151087997877245.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P12778151087997877245.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A169964, A169964.P5476345950802300353.a, A169967, A169967.P11381469564767287368.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P6942222392772002550

`(A169965(n+1)-A169966(n+1))²`
-/

namespace A063009.P6942222392772002550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169965 (n + 1) - A169966 (n + 1)) ^ 2

end

end A063009.P6942222392772002550

namespace A063009

/-- `(A169965(n+1)-A169966(n+1))²` -/
def P6942222392772002550.Spec : Prop :=
  ∀ n, P6942222392772002550.a n = A063009 n

theorem P6942222392772002550.correct : P6942222392772002550.Spec := by
  intro n
  simp only [A063009, Nat.add_sub_cancel, A063009.P6942222392772002550.a, A063009.P15492951971823313216.a, A007088, A007088.P12432121332583687413.a, A169965, A169965.P4332122273764269296.a, A169966, A169966.P17934816075476850432.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063009

/-! ## A063009.P7509550769418120656

`A007088(n)^A020639(A004767(n)+1)`
-/

namespace A063009.P7509550769418120656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) ^ (A020639 (A004767 n + 1).toNat : ℤ)

end

end A063009.P7509550769418120656

namespace A063009

/-- `A007088(n)^A020639(A004767(n)+1)` -/
def P7509550769418120656.Spec : Prop :=
  ∀ n, P7509550769418120656.a n = (A063009 n : ℚ)

end A063009

/-! ## A063009.P6869468654532079778

`A007088(n)^A000005(A093074(n+1))`
-/

namespace A063009.P6869468654532079778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) ^ (A000005 (A093074 (n + 1)).toNat : ℤ)

end

end A063009.P6869468654532079778

namespace A063009

/-- `A007088(n)^A000005(A093074(n+1))` -/
def P6869468654532079778.Spec : Prop :=
  ∀ n, P6869468654532079778.a n = (A063009 n : ℚ)

end A063009

/-!
# A063010: Carryless binary square of n; also Moser-de Bruijn sequence written in binary.

The programs for A063010, there is no canonical definition to state claims against.
-/

/-! ## A063010.P17546035821834669110

`A062033(n)/10`
-/

namespace A063010.P17546035821834669110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062033 n : ℚ) / 10

end

end A063010.P17546035821834669110

/-! ## A063010.P16385656847439807736

`A215022(A062877(n))`
-/

namespace A063010.P16385656847439807736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215022 (A062877 n).toNat

end

end A063010.P16385656847439807736

/-! ## A063010.P9383329861359011394

`A014417(A036795(n)-1)`
-/

namespace A063010.P9383329861359011394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A036795 n - 1).toNat

end

end A063010.P9383329861359011394

/-! ## A063010.P5030262846379470152

`A014417(A062879(n+1)-A062877(n))`
-/

namespace A063010.P5030262846379470152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A062879 (n + 1) - A062877 n).toNat

end

end A063010.P5030262846379470152

/-! ## A063010.P13816296646770457076

`A014417(A036796(2*n)-A036796(n))`
-/

namespace A063010.P13816296646770457076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A036796 (2 * n) - A036796 n).toNat

end

end A063010.P13816296646770457076

/-! ## A063010.P866435712314196833

`A014417(A062877(2*n)-A062877(n))`
-/

namespace A063010.P866435712314196833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A062877 (2 * n) - A062877 n).toNat

end

end A063010.P866435712314196833

/-! ## A063010.P665834472479698232

`A007088(A000695(n))`
-/

namespace A063010.P665834472479698232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000695 n).toNat

end

end A063010.P665834472479698232

/-! ## A063010.P2650025956221616912

`A007088(A062880(n)/2)`
-/

namespace A063010.P2650025956221616912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A062880 n : ℚ) / 2)).toNat

end

end A063010.P2650025956221616912

/-! ## A063010.P12823824634374186369

`A007088(A001196(n)/3)`
-/

namespace A063010.P12823824634374186369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A001196 n : ℚ) / 3)).toNat

end

end A063010.P12823824634374186369

/-! ## A063010.P12872280599234745799

`A007088(A054238(∑[n]))`
-/

namespace A063010.P12872280599234745799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A063010.P12872280599234745799

/-! ## A063010.P10378461398187050911

`A007088(record[A053985(n)])`
-/

namespace A063010.P10378461398187050911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063010.P10378461398187050911

/-! ## A063010.P11436143932873534444

`A007088(record[A063694(n)])`
-/

namespace A063010.P11436143932873534444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063010.P11436143932873534444

/-! ## A063010.P5525885691673065086

`A007088(eq[0, A059906(n)])`
-/

namespace A063010.P5525885691673065086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063010.P5525885691673065086

/-! ## A063010.P8427441414495327879

`A007088(lt[A059906(n), 1])`
-/

namespace A063010.P8427441414495327879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A063010.P8427441414495327879

/-! ## A063010.P16703404775647371484

`A007088(eq[n, A063694(n)])`
-/

namespace A063010.P16703404775647371484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063010.P16703404775647371484

/-! ## A063010.P4917040859647513279

`A007088(record[A004514(n)/2])`
-/

namespace A063010.P4917040859647513279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004514 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A063010.P4917040859647513279

/-! ## A063010.P16624363285597656863

`A007088(record[n-A004468(n)])`
-/

namespace A063010.P16624363285597656863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063010.P16624363285597656863

/-! ## A063010.P1107969237756133011

`A007088(record[A004514(n)-n])`
-/

namespace A063010.P1107969237756133011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063010.P1107969237756133011

/-! ## A063010.P427880930030014377

`A007088(record[gcd(n, A059906(n))])`
-/

namespace A063010.P427880930030014377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A059906 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A063010.P427880930030014377

/-! ## A063010.P6733144841913098993

`A007088(lt[A090569(n+1), 2])`
-/

namespace A063010.P6733144841913098993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090569 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A063010.P6733144841913098993

/-!
# A063011: Ordered products of the sides of primitive Pythagorean triangles.

The programs for A063011, there is no canonical definition to state claims against.
-/

/-! ## A063011.P7540789736945524060

`60*A081752(n+1)`
-/

namespace A063011.P7540789736945524060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A081752 (n + 1)

end

end A063011.P7540789736945524060

/-! ## A063011.P7899969804711171198

`A088509(n+1)*A088510(n+1)*A088511(n+1)`
-/

namespace A063011.P7899969804711171198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088509 (n + 1) * A088510 (n + 1) * A088511 (n + 1)

end

end A063011.P7899969804711171198

/-! ## A063011.P5440470371343377569

`A169823(A081752(n+1))`
-/

namespace A063011.P5440470371343377569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169823 (A081752 (n + 1)).toNat

end

end A063011.P5440470371343377569

/-!
# A063012: Sum of distinct powers of 20; i.e., numbers with digits in {0,1} base 20; i.e., write n in base 2 and read as if written in base 20.

The programs for A063012, the canonical program `A063012.P7233086639279911272` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063012 has offset 0).

The definition of A063012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063012.P7233086639279911272

`a(n-2^floor(log2(n)))+20^floor(log2(n))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063012

/-- `a(n-2^floor(log2(n)))+20^floor(log2(n))` -/
def P7233086639279911272.Spec : Prop :=
  ∀ n, (P7233086639279911272.a n : ℤ) = A063012 n

theorem P7233086639279911272.correct : P7233086639279911272.Spec := by
  intro n
  simp only [A063012]

end A063012

/-! ## A063012.P8509212204817215873

`xor(1, A302205(xor(1, n)))`
-/

namespace A063012.P8509212204817215873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A302205 (Nat.xor 1 n))

end

end A063012.P8509212204817215873

namespace A063012

/-- `xor(1, A302205(xor(1, n)))` -/
def P8509212204817215873.Spec : Prop :=
  ∀ n, P8509212204817215873.a n = A063012 n

end A063012

/-! ## A063012.P10635379474606619054

`A302205(or(1, n))-char[2*n]`
-/

namespace A063012.P10635379474606619054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302205 (Nat.lor 1 n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063012.P10635379474606619054

namespace A063012

/-- `A302205(or(1, n))-char[2*n]` -/
def P10635379474606619054.Spec : Prop :=
  ∀ n, P10635379474606619054.a n = A063012 n

end A063012

/-! ## A063012.P17631456955642083993

`xor(1, A302205(A004442(n)))`
-/

namespace A063012.P17631456955642083993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A302205 (A004442 n).toNat)

end

end A063012.P17631456955642083993

namespace A063012

/-- `xor(1, A302205(A004442(n)))` -/
def P17631456955642083993.Spec : Prop :=
  ∀ n, P17631456955642083993.a n = A063012 n

end A063012

/-! ## A063012.P12272594707980619517

`A302205(comp[A124309(n+1)])`
-/

namespace A063012.P12272594707980619517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124309 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302205 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A063012.P12272594707980619517

namespace A063012

/-- `A302205(comp[A124309(n+1)])` -/
def P12272594707980619517.Spec : Prop :=
  ∀ n, P12272594707980619517.a n = A063012 n

end A063012

/-!
# A063013: Numbers where k-th digit from right is either 0 or k.

The programs for A063013, there is no canonical definition to state claims against.
-/

/-! ## A063013.P14978003625751106617

`A007623(A276091(n))`
-/

namespace A063013.P14978003625751106617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A276091 n).toNat

end

end A063013.P14978003625751106617

/-! ## A063013.P3369750779932341236

`A007623(A059590(2*n)-A059590(n))`
-/

namespace A063013.P3369750779932341236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A059590 (2 * n) - A059590 n).toNat

end

end A063013.P3369750779932341236

/-! ## A063013.P1339951368513341675

`A007623(record[A225901(n)])`
-/

namespace A063013.P1339951368513341675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063013.P1339951368513341675

/-! ## A063013.P15000693441572785756

`A007623(record[A275957(n)])`
-/

namespace A063013.P15000693441572785756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063013.P15000693441572785756

/-! ## A063013.P1626636530890917973

`A007623(A225901(A059590(n)))`
-/

namespace A063013.P1626636530890917973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A225901 (A059590 n).toNat).toNat

end

end A063013.P1626636530890917973

/-!
# A063014: Number of solutions to n^2 = b^2 + c^2 (with c >= b >= 0).

The programs for A063014, the canonical program `A063014.P2435970929241132637` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063014 has offset 0).

The definition of A063014 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063014.P2435970929241132637

`A000161(n²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A063014

/-- `A000161(n²)` -/
def P2435970929241132637.Spec : Prop :=
  ∀ n, P2435970929241132637.a n = A063014 n

theorem P2435970929241132637.correct : P2435970929241132637.Spec := by
  intro n
  simp only [A063014]

end A063014

/-! ## A063014.P3862688853425695810

`ceil(A046109(n)/8)`
-/

namespace A063014.P3862688853425695810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046109 n : ℚ) / 8⌉

end

end A063014.P3862688853425695810

namespace A063014

/-- `ceil(A046109(n)/8)` -/
def P3862688853425695810.Spec : Prop :=
  ∀ n, P3862688853425695810.a n = A063014 n

end A063014

/-! ## A063014.P16616415542440856631

`∑{d}[n, A024362(#)]+1`
-/

namespace A063014.P16616415542440856631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024362 d + 1

end

end A063014.P16616415542440856631

namespace A063014

/-- `∑{d}[n, A024362(#)]+1` -/
def P16616415542440856631.Spec : Prop :=
  ∀ n, P16616415542440856631.a n = A063014 n

end A063014

/-! ## A063014.P3887339565222103626

`A046080(abs(1-n)+1)+1`
-/

namespace A063014.P3887339565222103626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A063014.P3887339565222103626

namespace A063014

/-- `A046080(abs(1-n)+1)+1` -/
def P3887339565222103626.Spec : Prop :=
  ∀ n, P3887339565222103626.a n = A063014 n

end A063014

/-! ## A063014.P4433670209597402118

`ceil(A256452(abs(1-n)+1)/2)`
-/

namespace A063014.P4433670209597402118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A256452 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

end

end A063014.P4433670209597402118

namespace A063014

/-- `ceil(A256452(abs(1-n)+1)/2)` -/
def P4433670209597402118.Spec : Prop :=
  ∀ n, P4433670209597402118.a n = A063014 n

end A063014

/-! ## A063014.P5822184284421812942

`A003602(A046109(n))`
-/

namespace A063014.P5822184284421812942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A046109 n).toNat

end

end A063014.P5822184284421812942

namespace A063014

/-- `A003602(A046109(n))` -/
def P5822184284421812942.Spec : Prop :=
  ∀ n, P5822184284421812942.a n = A063014 n

end A063014

/-! ## A063014.P4478881945486177799

`A016727(n)-A181786(n)`
-/

namespace A063014.P4478881945486177799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n - A181786 n

end

end A063014.P4478881945486177799

namespace A063014

/-- `A016727(n)-A181786(n)` -/
def P4478881945486177799.Spec : Prop :=
  ∀ n, P4478881945486177799.a n = A063014 n

end A063014

/-! ## A063014.P12774365152375687006

`A046080(A028310(n))%(n+1)+1`
-/

namespace A063014.P12774365152375687006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046080 (A028310 n).toNat) (n + 1 : ℤ) + 1

end

end A063014.P12774365152375687006

namespace A063014

/-- `A046080(A028310(n))%(n+1)+1` -/
def P12774365152375687006.Spec : Prop :=
  ∀ n, P12774365152375687006.a n = A063014 n

end A063014

/-! ## A063014.P11377489869324177042

`A000005(2^∑{d}[n, A024362(#)])`
-/

namespace A063014.P11377489869324177042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A024362 d : ℤ))).toNat

end

end A063014.P11377489869324177042

namespace A063014

/-- `A000005(2^∑{d}[n, A024362(#)])` -/
def P11377489869324177042.Spec : Prop :=
  ∀ n, P11377489869324177042.a n = A063014 n

end A063014

/-! ## A063014.P15614636100483578779

`A328712(abs(1-n)+1+n)+1`
-/

namespace A063014.P15614636100483578779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat + 1

end

end A063014.P15614636100483578779

namespace A063014

/-- `A328712(abs(1-n)+1+n)+1` -/
def P15614636100483578779.Spec : Prop :=
  ∀ n, P15614636100483578779.a n = A063014 n

end A063014

/-! ## A063014.P14815918419205164628

`A036702(n)-A394684(n)`
-/

namespace A063014.P14815918419205164628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036702 n - A394684 n

end

end A063014.P14815918419205164628

namespace A063014

/-- `A036702(n)-A394684(n)` -/
def P14815918419205164628.Spec : Prop :=
  ∀ n, P14815918419205164628.a n = A063014 n

end A063014

/-! ## A063014.P2033525128384631081

`A025426(n²)+1`
-/

namespace A063014.P2033525128384631081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (n ^ 2) + 1

end

end A063014.P2033525128384631081

namespace A063014

/-- `A025426(n²)+1` -/
def P2033525128384631081.Spec : Prop :=
  ∀ n, P2033525128384631081.a n = A063014 n

end A063014

/-! ## A063014.P8652746934959580760

`A255212(∑[n+3])`
-/

namespace A063014.P8652746934959580760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063014.P8652746934959580760

namespace A063014

/-- `A255212(∑[n+3])` -/
def P8652746934959580760.Spec : Prop :=
  ∀ n, P8652746934959580760.a n = A063014 n

end A063014

/-! ## A063014.P17012924275560055762

`A025441(n²)+1`
-/

namespace A063014.P17012924275560055762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n ^ 2) + 1

end

end A063014.P17012924275560055762

namespace A063014

/-- `A025441(n²)+1` -/
def P17012924275560055762.Spec : Prop :=
  ∀ n, P17012924275560055762.a n = A063014 n

end A063014

/-! ## A063014.P3401868648080831002

`ceil(A000925(n²)/2)`
-/

namespace A063014.P3401868648080831002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000925 (n ^ 2) : ℚ) / 2⌉

end

end A063014.P3401868648080831002

namespace A063014

/-- `ceil(A000925(n²)/2)` -/
def P3401868648080831002.Spec : Prop :=
  ∀ n, P3401868648080831002.a n = A063014 n

end A063014

/-! ## A063014.P14757818055171554249

`A063725(n²)/2+1`
-/

namespace A063014.P14757818055171554249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063725 (n ^ 2) : ℚ) / 2 + 1

end

end A063014.P14757818055171554249

namespace A063014

/-- `A063725(n²)/2+1` -/
def P14757818055171554249.Spec : Prop :=
  ∀ n, P14757818055171554249.a n = (A063014 n : ℚ)

end A063014

/-! ## A063014.P9603207564188013828

`A025435(A028310(n²))`
-/

namespace A063014.P9603207564188013828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A028310 (n ^ 2)).toNat

end

end A063014.P9603207564188013828

namespace A063014

/-- `A025435(A028310(n²))` -/
def P9603207564188013828.Spec : Prop :=
  ∀ n, P9603207564188013828.a n = A063014 n

end A063014

/-! ## A063014.P11441678396928384375

`A110656(A004018(n²))`
-/

namespace A063014.P11441678396928384375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A004018 (n ^ 2)).toNat

end

end A063014.P11441678396928384375

namespace A063014

/-- `A110656(A004018(n²))` -/
def P11441678396928384375.Spec : Prop :=
  ∀ n, P11441678396928384375.a n = A063014 n

end A063014

/-! ## A063014.P16139834628005112105

`A334742(A000925(n²))`
-/

namespace A063014.P16139834628005112105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334742 (A000925 (n ^ 2)).toNat

end

end A063014.P16139834628005112105

namespace A063014

/-- `A334742(A000925(n²))` -/
def P16139834628005112105.Spec : Prop :=
  ∀ n, P16139834628005112105.a n = A063014 n

end A063014

/-! ## A063014.P9042902310956315554

`A000925(A253909(n))/2`
-/

namespace A063014.P9042902310956315554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000925 (A253909 n).toNat : ℚ) / 2

end

end A063014.P9042902310956315554

namespace A063014

/-- `A000925(A253909(n))/2` -/
def P9042902310956315554.Spec : Prop :=
  ∀ n, P9042902310956315554.a n = (A063014 n : ℚ)

end A063014

/-!
# A063015: Numbers k such that k + mu(k) is prime.

The programs for A063015, the canonical program `A063015.P1688984176363202503` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063015 has offset 1).

The definition of A063015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3584 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063015.P1688984176363202503

`record[(n+1)*A010051(A008683(n+1)+n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063015

/-- `record[(n+1)*A010051(A008683(n+1)+n+1)]` -/
def P1688984176363202503.Spec : Prop :=
  ∀ n, P1688984176363202503.a n = A063015 (n + 1)

theorem P1688984176363202503.correct : P1688984176363202503.Spec := by
  intro n
  simp only [A063015, Nat.add_sub_cancel]

end A063015

/-! ## A063015.P11759624661352541815

`eq[1, A001222(A008683(n+1)+n+1)]+1`
-/

namespace A063015.P11759624661352541815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008683 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063015.P11759624661352541815

namespace A063015

/-- `eq[1, A001222(A008683(n+1)+n+1)]+1` -/
def P11759624661352541815.Spec : Prop :=
  ∀ n, (P11759624661352541815.a n : ℤ) = A063015 (n + 1)

end A063015

/-! ## A063015.P16769881870249226759

`eq[2, A000005(A008683(n+1)+n+1)]+1`
-/

namespace A063015.P16769881870249226759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008683 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063015.P16769881870249226759

namespace A063015

/-- `eq[2, A000005(A008683(n+1)+n+1)]+1` -/
def P16769881870249226759.Spec : Prop :=
  ∀ n, (P16769881870249226759.a n : ℤ) = A063015 (n + 1)

end A063015

/-! ## A063015.P9041667569890319449

`eq[3, A053475(A008683(n+1)+n+1)]+1`
-/

namespace A063015.P9041667569890319449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (A008683 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063015.P9041667569890319449

namespace A063015

/-- `eq[3, A053475(A008683(n+1)+n+1)]+1` -/
def P9041667569890319449.Spec : Prop :=
  ∀ n, (P9041667569890319449.a n : ℤ) = A063015 (n + 1)

end A063015

/-! ## A063015.P5879244263836491956

`record[(2*n+1-n)*A010051(A076369(n+1))]`
-/

namespace A063015.P5879244263836491956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - (n : ℤ)) * A010051 (A076369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063015.P5879244263836491956

namespace A063015

/-- `record[(2*n+1-n)*A010051(A076369(n+1))]` -/
def P5879244263836491956.Spec : Prop :=
  ∀ n, P5879244263836491956.a n = A063015 (n + 1)

end A063015

/-! ## A063015.P2952236479286155079

`record[A010051(A076369(n+1))*A057723(n+1)]`
-/

namespace A063015.P2952236479286155079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A076369 (n + 1)).toNat * A057723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063015.P2952236479286155079

namespace A063015

/-- `record[A010051(A076369(n+1))*A057723(n+1)]` -/
def P2952236479286155079.Spec : Prop :=
  ∀ n, P2952236479286155079.a n = A063015 (n + 1)

end A063015

/-! ## A063015.P15877168778132505174

`record[A010051(A076369(n+1))*A076685(n+1)]`
-/

namespace A063015.P15877168778132505174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A076369 (n + 1)).toNat * A076685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063015.P15877168778132505174

namespace A063015

/-- `record[A010051(A076369(n+1))*A076685(n+1)]` -/
def P15877168778132505174.Spec : Prop :=
  ∀ n, P15877168778132505174.a n = A063015 (n + 1)

end A063015

/-! ## A063015.P1411553195327374945

`record[A010051(A076369(n+1))*A336465(n+1)]`
-/

namespace A063015.P1411553195327374945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A076369 (n + 1)).toNat * A336465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063015.P1411553195327374945

namespace A063015

/-- `record[A010051(A076369(n+1))*A336465(n+1)]` -/
def P1411553195327374945.Spec : Prop :=
  ∀ n, P1411553195327374945.a n = A063015 (n + 1)

end A063015

/-!
# A063016: a(n) is the product of Catalan(n) and (2^(n+1) - 1).

The programs for A063016, the canonical program `A063016.P14975510898561426144` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063016 has offset 0).

The definition of A063016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063016.P14975510898561426144

`A000108(n)*(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063016

/-- `A000108(n)*(2^(n+1)-1)` -/
def P14975510898561426144.Spec : Prop :=
  ∀ n, P14975510898561426144.a n = A063016 n

theorem P14975510898561426144.correct : P14975510898561426144.Spec := by
  intro n
  simp only [A063016]

end A063016

/-! ## A063016.P4908442052090740823

`(2^(n+1)-1)*C(2*n, n)/(n+1)`
-/

namespace A063016.P4908442052090740823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ (n + 1) : ℤ) - 1) * (Nat.choose (2 * n) n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A063016.P4908442052090740823

namespace A063016

/-- `(2^(n+1)-1)*C(2*n, n)/(n+1)` -/
def P4908442052090740823.Spec : Prop :=
  ∀ n, P4908442052090740823.a n = (A063016 n : ℚ)

end A063016

/-! ## A063016.P5411928411791288736

`abs(A168491(n))*∑[2^n]`
-/

namespace A063016.P5411928411791288736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063016.P5411928411791288736

namespace A063016

/-- `abs(A168491(n))*∑[2^n]` -/
def P5411928411791288736.Spec : Prop :=
  ∀ n, P5411928411791288736.a n = A063016 n

end A063016

/-! ## A063016.P11243177648678398301

`∑[2^n]*A120588(n+1)`
-/

namespace A063016.P11243177648678398301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A120588 (n + 1)

end

end A063016.P11243177648678398301

namespace A063016

/-- `∑[2^n]*A120588(n+1)` -/
def P11243177648678398301.Spec : Prop :=
  ∀ n, P11243177648678398301.a n = A063016 n

end A063016

/-! ## A063016.P5328993975896128106

`(A120304(n)+2)*∑[2^n]`
-/

namespace A063016.P5328993975896128106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063016.P5328993975896128106

namespace A063016

/-- `(A120304(n)+2)*∑[2^n]` -/
def P5328993975896128106.Spec : Prop :=
  ∀ n, P5328993975896128106.a n = A063016 n

end A063016

/-! ## A063016.P12608758379246781414

`∑[2^n]*A028304(2*n)`
-/

namespace A063016.P12608758379246781414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A028304 (2 * n)

end

end A063016.P12608758379246781414

namespace A063016

/-- `∑[2^n]*A028304(2*n)` -/
def P12608758379246781414.Spec : Prop :=
  ∀ n, P12608758379246781414.a n = A063016 n

end A063016

/-! ## A063016.P11145749632991791034

`∑[2^n]*A208355(2*n)`
-/

namespace A063016.P11145749632991791034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A208355 (2 * n)

end

end A063016.P11145749632991791034

namespace A063016

/-- `∑[2^n]*A208355(2*n)` -/
def P11145749632991791034.Spec : Prop :=
  ∀ n, P11145749632991791034.a n = A063016 n

end A063016

/-! ## A063016.P11084478396363784808

`abs(A115140(n+1))*∑[2^n]`
-/

namespace A063016.P11084478396363784808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1)| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063016.P11084478396363784808

namespace A063016

/-- `abs(A115140(n+1))*∑[2^n]` -/
def P11084478396363784808.Spec : Prop :=
  ∀ n, P11084478396363784808.a n = A063016 n

end A063016

/-! ## A063016.P13396755002040274100

`∑[2^n]*Δ[A166588(2*n)]`
-/

namespace A063016.P13396755002040274100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A063016.P13396755002040274100

namespace A063016

/-- `∑[2^n]*Δ[A166588(2*n)]` -/
def P13396755002040274100.Spec : Prop :=
  ∀ n, P13396755002040274100.a n = A063016 n

end A063016

/-! ## A063016.P3254706287525436202

`record[A052551(n)*A097331(n)]`
-/

namespace A063016.P3254706287525436202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063016.P3254706287525436202

namespace A063016

/-- `record[A052551(n)*A097331(n)]` -/
def P3254706287525436202.Spec : Prop :=
  ∀ n, P3254706287525436202.a n = A063016 n

end A063016

/-! ## A063016.P17965384679657892635

`record[A052955(n)*A126120(n)]`
-/

namespace A063016.P17965384679657892635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n * A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063016.P17965384679657892635

namespace A063016

/-- `record[A052955(n)*A126120(n)]` -/
def P17965384679657892635.Spec : Prop :=
  ∀ n, P17965384679657892635.a n = A063016 n

end A063016

/-! ## A063016.P802670074142472899

`A025225(n+1)-A000108(n)`
-/

namespace A063016.P802670074142472899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025225 (n + 1) - A000108 n

end

end A063016.P802670074142472899

namespace A063016

/-- `A025225(n+1)-A000108(n)` -/
def P802670074142472899.Spec : Prop :=
  ∀ n, P802670074142472899.a n = A063016 n

end A063016

/-! ## A063016.P12976958018078102798

`A115125(n+1)-A000108(n)`
-/

namespace A063016.P12976958018078102798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115125 (n + 1) - A000108 n

end

end A063016.P12976958018078102798

namespace A063016

/-- `A115125(n+1)-A000108(n)` -/
def P12976958018078102798.Spec : Prop :=
  ∀ n, P12976958018078102798.a n = A063016 n

end A063016

/-! ## A063016.P5829956497438103964

`A120588(n+1)*A126646(n)`
-/

namespace A063016.P5829956497438103964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) * A126646 n

end

end A063016.P5829956497438103964

namespace A063016

/-- `A120588(n+1)*A126646(n)` -/
def P5829956497438103964.Spec : Prop :=
  ∀ n, P5829956497438103964.a n = A063016 n

end A063016

/-! ## A063016.P9018545936438407599

`2*A151374(n)-A000108(n)`
-/

namespace A063016.P9018545936438407599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151374 n - A000108 n

end

end A063016.P9018545936438407599

namespace A063016

/-- `2*A151374(n)-A000108(n)` -/
def P9018545936438407599.Spec : Prop :=
  ∀ n, P9018545936438407599.a n = A063016 n

theorem P9018545936438407599.correct : P9018545936438407599.Spec := by
  intro n
  simp only [A063016, Nat.add_sub_cancel, A063016.P9018545936438407599.a, A063016.P14975510898561426144.a, A000108, A000108.P17551949696095299361.a, A151374, A151374.P6151249607190276974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A063016

/-! ## A063016.P10081862722888472322

`A028303(2*n)*A126646(n)`
-/

namespace A063016.P10081862722888472322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) * A126646 n

end

end A063016.P10081862722888472322

namespace A063016

/-- `A028303(2*n)*A126646(n)` -/
def P10081862722888472322.Spec : Prop :=
  ∀ n, P10081862722888472322.a n = A063016 n

end A063016

/-! ## A063016.P2609641367023776938

`abs(∑[A000079(n)]*A168491(n))`
-/

namespace A063016.P2609641367023776938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A168491 n|

end

end A063016.P2609641367023776938

namespace A063016

/-- `abs(∑[A000079(n)]*A168491(n))` -/
def P2609641367023776938.Spec : Prop :=
  ∀ n, P2609641367023776938.a n = A063016 n

end A063016

/-! ## A063016.P2440843435076731230

`A000225(n+1)*A126120(2*n)`
-/

namespace A063016.P2440843435076731230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A126120 (2 * n)

end

end A063016.P2440843435076731230

namespace A063016

/-- `A000225(n+1)*A126120(2*n)` -/
def P2440843435076731230.Spec : Prop :=
  ∀ n, P2440843435076731230.a n = A063016 n

end A063016

/-!
# A063017: a(n) = Catalan(n)*(3^(n+1) - 2^(n+1) + 1)/2.

The programs for A063017, the canonical program `A063017.P16922203086566482910` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063017 has offset 0).

The definition of A063017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063017.P16922203086566482910

`C(2*n, n)/(n+1)*(3^(n+1)-2^(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063017

/-- `C(2*n, n)/(n+1)*(3^(n+1)-2^(n+1)+1)/2` -/
def P16922203086566482910.Spec : Prop :=
  ∀ n, P16922203086566482910.a n = (A063017 n : ℚ)

end A063017

/-! ## A063017.P10006700475524086484

`A000108(n)*(3^(n+1)-2^(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063017.P10006700475524086484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n * ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) + 1) : ℚ) / 2

end

end A063017.P10006700475524086484

namespace A063017

/-- `A000108(n)*(3^(n+1)-2^(n+1)+1)/2` -/
def P10006700475524086484.Spec : Prop :=
  ∀ n, P10006700475524086484.a n = (A063017 n : ℚ)

end A063017

/-! ## A063017.P2753531760692309361

`(∑[3^n]+1-2^n)*A000108(n)`
-/

namespace A063017.P2753531760692309361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ))) * A000108 n

end

end A063017.P2753531760692309361

namespace A063017

/-- `(∑[3^n]+1-2^n)*A000108(n)` -/
def P2753531760692309361.Spec : Prop :=
  ∀ n, P2753531760692309361.a n = A063017 n

end A063017

/-! ## A063017.P4362376949226182716

`A000108(n)*∑[A083313(n)]`
-/

namespace A063017.P4362376949226182716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063017.P4362376949226182716

namespace A063017

/-- `A000108(n)*∑[A083313(n)]` -/
def P4362376949226182716.Spec : Prop :=
  ∀ n, P4362376949226182716.a n = A063017 n

end A063017

/-! ## A063017.P9997850676649850595

`A000108(n)*A053156(n+1)`
-/

namespace A063017.P9997850676649850595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A053156 (n + 1)

end

end A063017.P9997850676649850595

namespace A063017

/-- `A000108(n)*A053156(n+1)` -/
def P9997850676649850595.Spec : Prop :=
  ∀ n, P9997850676649850595.a n = A063017 n

end A063017

/-! ## A063017.P1500651154104438520

`A028303(2*n)*A053156(n+1)`
-/

namespace A063017.P1500651154104438520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) * A053156 (n + 1)

end

end A063017.P1500651154104438520

namespace A063017

/-- `A028303(2*n)*A053156(n+1)` -/
def P1500651154104438520.Spec : Prop :=
  ∀ n, P1500651154104438520.a n = A063017 n

end A063017

/-! ## A063017.P12263982408574494789

`A028304(2*n)*A053156(n+1)`
-/

namespace A063017.P12263982408574494789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) * A053156 (n + 1)

end

end A063017.P12263982408574494789

namespace A063017

/-- `A028304(2*n)*A053156(n+1)` -/
def P12263982408574494789.Spec : Prop :=
  ∀ n, P12263982408574494789.a n = A063017 n

end A063017

/-! ## A063017.P13085856139585177934

`A053156(n+1)*A057977(2*n)`
-/

namespace A063017.P13085856139585177934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1) * A057977 (2 * n)

end

end A063017.P13085856139585177934

namespace A063017

/-- `A053156(n+1)*A057977(2*n)` -/
def P13085856139585177934.Spec : Prop :=
  ∀ n, P13085856139585177934.a n = A063017 n

end A063017

/-!
# A063018: Reversion of x - x^2 - x^3 - x^4.

The programs for A063018, there is no canonical definition to state claims against.
-/

/-! ## A063018.P7168543320719825086

`A004525(A063031(n)+A063024(n))`
-/

namespace A063018.P7168543320719825086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A063031 n + A063024 n).toNat

end

end A063018.P7168543320719825086

/-! ## A063018.P355588479435240399

`A004526(A063031(n)+A063024(n))`
-/

namespace A063018.P355588479435240399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063031 n + A063024 n).toNat

end

end A063018.P355588479435240399

/-! ## A063018.P11053234248523455072

`A025480(A063031(n)+A063024(n))`
-/

namespace A063018.P11053234248523455072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A063031 n + A063024 n).toNat

end

end A063018.P11053234248523455072

/-! ## A063018.P15442518813634529370

`A078898(A063031(n)+A063024(n))`
-/

namespace A063018.P15442518813634529370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A063031 n + A063024 n).toNat

end

end A063018.P15442518813634529370

/-! ## A063018.P16418316434378994322

`A110654(A063031(n)+A063024(n))`
-/

namespace A063018.P16418316434378994322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A063031 n + A063024 n).toNat

end

end A063018.P16418316434378994322

/-!
# A063019: Reversion of y - y^2 + y^3 - y^4.

The programs for A063019, there is no canonical definition to state claims against.
-/

/-! ## A063019.P9890303130345152816

`A292751(n)/n!`
-/

namespace A063019.P9890303130345152816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292751 n : ℚ) / (Nat.factorial n : ℚ)

end

end A063019.P9890303130345152816

/-! ## A063019.P13133661862168406360

`A292751(n)/A000142(n)`
-/

namespace A063019.P13133661862168406360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292751 n : ℚ) / (A000142 n : ℚ)

end

end A063019.P13133661862168406360

/-! ## A063019.P5205601484996701418

`A292751(n)/Δ[A003422(n)]`
-/

namespace A063019.P5205601484996701418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292751 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A063019.P5205601484996701418

/-! ## A063019.P9048402231051700939

`A292751(n)/∏[A028310(n)]`
-/

namespace A063019.P9048402231051700939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292751 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A063019.P9048402231051700939

/-! ## A063019.P3764730334940790194

`A292751(n)/A131758(∑[n]+n)`
-/

namespace A063019.P3764730334940790194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292751 n : ℚ) / (A131758 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ)

end

end A063019.P3764730334940790194

/-!
# A063020: Reversion of y - y^2 - y^3 + y^4.

The programs for A063020, there is no canonical definition to state claims against.
-/

/-! ## A063020.P9847789541379665844

`A004525(A063032(n)+A063027(n))`
-/

namespace A063020.P9847789541379665844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A063032 n + A063027 n).toNat

end

end A063020.P9847789541379665844

/-! ## A063020.P6856143057864943470

`A004526(A063032(n)+A063027(n))`
-/

namespace A063020.P6856143057864943470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063032 n + A063027 n).toNat

end

end A063020.P6856143057864943470

/-! ## A063020.P12913941349062715110

`A025480(A063032(n)+A063027(n))`
-/

namespace A063020.P12913941349062715110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A063032 n + A063027 n).toNat

end

end A063020.P12913941349062715110

/-! ## A063020.P2325003644828501310

`A026741(A063032(n)+A063027(n))`
-/

namespace A063020.P2325003644828501310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A063032 n + A063027 n).toNat

end

end A063020.P2325003644828501310

/-! ## A063020.P16034640412916731525

`A078898(A063032(n)+A063027(n))`
-/

namespace A063020.P16034640412916731525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A063032 n + A063027 n).toNat

end

end A063020.P16034640412916731525

/-!
# A063021: Reversion of y - y^2 - y^5.

The programs for A063021, there is no canonical definition to state claims against.
-/

/-! ## A063021.P3634162764571980615

`∑[A187187(A076866(n)+1)-A168049(n)]`
-/

namespace A063021.P3634162764571980615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A076866 n + 1).toNat - A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063021.P3634162764571980615

/-! ## A063021.P2488994286756617823

`∑[A187188(A261894(n+1))-A168049(n)]`
-/

namespace A063021.P2488994286756617823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A261894 (n + 1)).toNat - A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063021.P2488994286756617823

/-! ## A063021.P4212522017898355610

`A189175(A152947(n+1))%A092048(n+1)`
-/

namespace A063021.P4212522017898355610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189175 (A152947 (n + 1)).toNat) (A092048 (n + 1))

end

end A063021.P4212522017898355610

/-! ## A063021.P18370420401723181556

`A046155(A002467(n))`
-/

namespace A063021.P18370420401723181556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A002467 n).toNat

end

end A063021.P18370420401723181556

/-!
# A063022: Reversion of y - y^2 - y^3 - y^5.

The programs for A063022, there is no canonical definition to state claims against.
-/

/-! ## A063022.P6294771895393625650

`A371713(A028310(n))%A107649(n+1)`
-/

namespace A063022.P6294771895393625650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371713 (A028310 n).toNat) (A107649 (n + 1))

end

end A063022.P6294771895393625650

/-! ## A063022.P17840574557171055938

`A242748(A150652(n))`
-/

namespace A063022.P17840574557171055938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242748 (A150652 n).toNat

end

end A063022.P17840574557171055938

/-! ## A063022.P6280470246835681903

`A008676(A149060(n+1))`
-/

namespace A063022.P6280470246835681903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A149060 (n + 1)).toNat

end

end A063022.P6280470246835681903

/-!
# A063023: Reversion of y - y^2 - y^4 - y^5.

The programs for A063023, there is no canonical definition to state claims against.
-/

/-! ## A063023.P15694189267748985343

`A008617(A242622(n+1))`
-/

namespace A063023.P15694189267748985343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A242622 (n + 1)).toNat

end

end A063023.P15694189267748985343

/-! ## A063023.P10536558198999696151

`A008617(A279561(n+1))`
-/

namespace A063023.P10536558198999696151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A279561 (n + 1)).toNat

end

end A063023.P10536558198999696151

/-! ## A063023.P14537643307520947875

`A008617(A110137(n)+4)`
-/

namespace A063023.P14537643307520947875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A110137 n + 4).toNat

end

end A063023.P14537643307520947875

/-! ## A063023.P15018249891993735145

`∑[A008647(abs(A276666(n)))]`
-/

namespace A063023.P15018249891993735145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 |A276666 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063023.P15018249891993735145

/-!
# A063024: Reversion of y - y^2 - y^3 - y^4 - y^5.

The programs for A063024, there is no canonical definition to state claims against.
-/

/-! ## A063024.P16777835062485245197

`A005843(A063018(n))-A063031(n)`
-/

namespace A063024.P16777835062485245197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063018 n).toNat - A063031 n

end

end A063024.P16777835062485245197

/-! ## A063024.P1678564106571110806

`A008612(or(A005230(n+1), A134045(n)))`
-/

namespace A063024.P1678564106571110806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.lor (A005230 (n + 1)) (A134045 n)).toNat

end

end A063024.P1678564106571110806

/-! ## A063024.P14821200206776964828

`A318577(2^n)-floor(n/6)`
-/

namespace A063024.P14821200206776964828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (2 ^ n) - ⌊(n : ℚ) / 6⌋

end

end A063024.P14821200206776964828

/-!
# A063025: Reversion of y - y^2 + y^3 - y^4 - y^5.

The programs for A063025, there is no canonical definition to state claims against.
-/

/-! ## A063025.P8939397132264738189

`A145456(A145461(n+2))+A063019(n)`
-/

namespace A063025.P8939397132264738189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145456 (A145461 (n + 2)).toNat + A063019 n

end

end A063025.P8939397132264738189

/-! ## A063025.P15669336813092217880

`A145456(A145461(n+2))+A292751(n)/n!`
-/

namespace A063025.P15669336813092217880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145456 (A145461 (n + 2)).toNat : ℚ) + (A292751 n : ℚ) / (Nat.factorial n : ℚ)

end

end A063025.P15669336813092217880

/-! ## A063025.P11821275129976964790

`A033183(A270613(3*n+1))*A181196(n+1)`
-/

namespace A063025.P11821275129976964790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A270613 (3 * n + 1)).toNat * A181196 (n + 1)

end

end A063025.P11821275129976964790

/-!
# A063026: Reversion of y - y^2 + y^4 - y^5.

The programs for A063026, there is no canonical definition to state claims against.
-/

/-! ## A063026.P1775752806369457364

`A185714(2*(A097085(n)+2))`
-/

namespace A063026.P1775752806369457364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (2 * (A097085 n + 2)).toNat

end

end A063026.P1775752806369457364

/-! ## A063026.P16458822554164344140

`A257639(∑[A103941(n)])%(2^n)`
-/

namespace A063026.P16458822554164344140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (2 ^ n : ℤ)

end

end A063026.P16458822554164344140

/-! ## A063026.P13710283108481567755

`A003056(A003510(n)-A097899(n))`
-/

namespace A063026.P13710283108481567755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003510 n - A097899 n).toNat

end

end A063026.P13710283108481567755

/-! ## A063026.P18292840311041355074

`A055086(A064095(n))-A096751(n)`
-/

namespace A063026.P18292840311041355074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A064095 n).toNat - A096751 n

end

end A063026.P18292840311041355074

/-! ## A063026.P12209241600357668781

`A257639(∑[A103941(n)])-A000007(n)`
-/

namespace A063026.P12209241600357668781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000007 n

end

end A063026.P12209241600357668781

/-!
# A063027: Reversion of y - y^2 - y^3 + y^4 - y^5.

The programs for A063027, there is no canonical definition to state claims against.
-/

/-! ## A063027.P15459571356598520384

`A005041(round(ϕ*a(n-1))²)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A063027.P15459571356598520384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A005041 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) ^ 2).toNat

end

end A063027.P15459571356598520384

/-! ## A063027.P8358947031045819442

`A008651(A105872(n+1))`
-/

namespace A063027.P8358947031045819442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A105872 (n + 1)).toNat

end

end A063027.P8358947031045819442

/-! ## A063027.P17369887648120109019

`A373069(A354902(n+1))`
-/

namespace A063027.P17369887648120109019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373069 (A354902 (n + 1)).toNat

end

end A063027.P17369887648120109019

/-!
# A063028: Reversion of x - x^2 + x^5.

The programs for A063028, there is no canonical definition to state claims against.
-/

/-! ## A063028.P3954350817955537428

`A165190(A057960(n+1))`
-/

namespace A063028.P3954350817955537428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A057960 (n + 1)).toNat

end

end A063028.P3954350817955537428

/-! ## A063028.P7604969185833094287

`A165190(∑[A018036(n)+1])`
-/

namespace A063028.P7604969185833094287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A063028.P7604969185833094287

/-! ## A063028.P9901940817065911537

`A165190(∑[A028859(n)]+1)`
-/

namespace A063028.P9901940817065911537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A063028.P9901940817065911537

/-! ## A063028.P8404308850684389500

`A165190(A052536(n)+A018026(n))`
-/

namespace A063028.P8404308850684389500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A052536 n + A018026 n).toNat

end

end A063028.P8404308850684389500

/-! ## A063028.P12662397435297461177

`A307789(n)-A340998(A000678(n))`
-/

namespace A063028.P12662397435297461177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 n - A340998 ((A000678 n).toNat + 140)

end

end A063028.P12662397435297461177

/-!
# A063029: Reversion of y - y^2 - y^3 + y^5.

The programs for A063029, there is no canonical definition to state claims against.
-/

/-! ## A063029.P12839460346287059443

`A103221(A095980(n)+A066258(n))`
-/

namespace A063029.P12839460346287059443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A095980 n + A066258 n).toNat

end

end A063029.P12839460346287059443

/-! ## A063029.P8811291785358853752

`A008616(A249946(n)+A062510(n))`
-/

namespace A063029.P8811291785358853752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A249946 n + A062510 n).toNat

end

end A063029.P8811291785358853752

/-! ## A063029.P14906035213253793080

`A008615(or(A295760(n+1), A329665(n)))`
-/

namespace A063029.P14906035213253793080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor (A295760 (n + 1)) (A329665 n)).toNat

end

end A063029.P14906035213253793080

/-!
# A063030: Reversion of y - y^2 - y^4 + y^5.

The programs for A063030, there is no canonical definition to state claims against.
-/

/-! ## A063030.P8738738301759603094

`A372531(∏{digits}[n, gcd(#, #!²)])%A083766(n+1)`
-/

namespace A063030.P8738738301759603094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372531 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod) (A083766 (n + 1))

end

end A063030.P8738738301759603094

/-! ## A063030.P16455055254499090420

`A332249(A268172(n)²)`
-/

namespace A063030.P16455055254499090420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A268172 n ^ 2).toNat

end

end A063030.P16455055254499090420

/-! ## A063030.P6892495166658551600

`A008617(A137398(n+2))`
-/

namespace A063030.P6892495166658551600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A137398 (n + 2)).toNat

end

end A063030.P6892495166658551600

/-! ## A063030.P16134907358177054060

`A332249(A268172(n)^2)`
-/

namespace A063030.P16134907358177054060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A268172 n ^ 2).toNat

end

end A063030.P16134907358177054060

/-!
# A063031: Reversion of y - y^2 - y^3 - y^4 + y^5.

The programs for A063031, there is no canonical definition to state claims against.
-/

/-! ## A063031.P1345946756319232799

`A005843(A063018(n))-A063024(n)`
-/

namespace A063031.P1345946756319232799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063018 n).toNat - A063024 n

end

end A063031.P1345946756319232799

/-! ## A063031.P15255269373878799572

`A008676(xor(3, A151064(n)))`
-/

namespace A063031.P15255269373878799572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor 3 (A151064 n)).toNat

end

end A063031.P15255269373878799572

/-! ## A063031.P11651994083699944744

`A033182(xor(6, A072263(n)))`
-/

namespace A063031.P11651994083699944744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.xor 6 (A072263 n)).toNat

end

end A063031.P11651994083699944744

/-!
# A063032: Reversion of y - y^2 - y^3 + y^4 + y^5.

The programs for A063032, there is no canonical definition to state claims against.
-/

/-! ## A063032.P17677989164904005054

`A052709(n)-A241457(A000672(n))`
-/

namespace A063032.P17677989164904005054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n - A241457 (A000672 n).toNat

end

end A063032.P17677989164904005054

/-! ## A063032.P12450553747084139137

`A195174(A323229(n)-A122092(n))`
-/

namespace A063032.P12450553747084139137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A323229 n - A122092 n).toNat

end

end A063032.P12450553747084139137

/-! ## A063032.P11587656134509174649

`A052709(n)-A241771(A059893(n+1))`
-/

namespace A063032.P11587656134509174649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n - A241771 (A059893 (n + 1)).toNat

end

end A063032.P11587656134509174649

/-! ## A063032.P2090944478776493496

`A052709(n)-A052709(A301576(n+1))`
-/

namespace A063032.P2090944478776493496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 n - A052709 (A301576 (n + 1)).toNat

end

end A063032.P2090944478776493496

/-!
# A063035: Number of integers <= 10^n that contain a square factor (i.e., belong to A013929).

The programs for A063035, there is no canonical definition to state claims against.
-/

/-! ## A063035.P10112443927787995266

`10^(n+1)-A071172(n+1)`
-/

namespace A063035.P10112443927787995266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A071172 (n + 1)

end

end A063035.P10112443927787995266

/-! ## A063035.P14721515671264104206

`A381391(n+1)+A267574(n+1)`
-/

namespace A063035.P14721515671264104206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381391 (n + 1) + A267574 (n + 1)

end

end A063035.P14721515671264104206

/-! ## A063035.P722776699096938468

`A267712(n+1)+A381391(n+1)-A006880(n+1)`
-/

namespace A063035.P722776699096938468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267712 (n + 1) + (A381391 (n + 1) - A006880 (n + 1))

end

end A063035.P722776699096938468

/-!
# A063036: Difference between average of smallest prime greater than n^3 and largest prime less than (n+1)^3 and n-th pronic [=n(n+1)].

The programs for A063036, there is no canonical definition to state claims against.
-/

/-! ## A063036.P6823007653301684678

`A055086(A282224(2*(n+2)))+(2*(n+1))²`
-/

namespace A063036.P6823007653301684678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A282224 (2 * (n + 2))).toNat + ((2 * (n + 1)) ^ 2 : ℤ)

end

end A063036.P6823007653301684678

/-!
# A063037: Numbers without 3 consecutive equal binary digits.

The programs for A063037, the canonical program `A063037.P8126518578568400068` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063037 has offset 1).

The definition of A063037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063037.P8126518578568400068

`∪[A000975(n), A037969(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A063037

/-- `∪[A000975(n), A037969(n+1)]` -/
def P8126518578568400068.Spec : Prop :=
  ∀ n, (P8126518578568400068.a n : ℤ) = A063037 (n + 1)

theorem P8126518578568400068.correct : P8126518578568400068.Spec := by
  intro n
  simp only [A063037, Nat.add_sub_cancel]

end A063037

/-! ## A063037.P14639521254286406597

`∪[A037969(n+1), A086638(n)]`
-/

namespace A063037.P14639521254286406597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063037.P14639521254286406597

namespace A063037

/-- `∪[A037969(n+1), A086638(n)]` -/
def P14639521254286406597.Spec : Prop :=
  ∀ n, (P14639521254286406597.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P16323256688116827165

`∪[A037969(n+1), A138587(n)]`
-/

namespace A063037.P16323256688116827165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A063037.P16323256688116827165

namespace A063037

/-- `∪[A037969(n+1), A138587(n)]` -/
def P16323256688116827165.Spec : Prop :=
  ∀ n, (P16323256688116827165.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P3548895666550049677

`A003726(A356899(n+1)+1)`
-/

namespace A063037.P3548895666550049677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A356899 (n + 1) + 1).toNat

end

end A063037.P3548895666550049677

namespace A063037

/-- `A003726(A356899(n+1)+1)` -/
def P3548895666550049677.Spec : Prop :=
  ∀ n, P3548895666550049677.a n = A063037 (n + 1)

end A063037

/-! ## A063037.P7812994576209188207

`A003796(A356899(n+1)+1)`
-/

namespace A063037.P7812994576209188207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (A356899 (n + 1) + 1).toNat

end

end A063037.P7812994576209188207

namespace A063037

/-- `A003796(A356899(n+1)+1)` -/
def P7812994576209188207.Spec : Prop :=
  ∀ n, P7812994576209188207.a n = A063037 (n + 1)

end A063037

/-! ## A063037.P8833604970307808818

`A003796(eq[1, A117546(n)]+1)`
-/

namespace A063037.P8833604970307808818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A063037.P8833604970307808818

namespace A063037

/-- `A003796(eq[1, A117546(n)]+1)` -/
def P8833604970307808818.Spec : Prop :=
  ∀ n, P8833604970307808818.a n = A063037 (n + 1)

end A063037

/-! ## A063037.P4174667503213812309

`∩[A003726(n+1), A003796(n+1)]`
-/

namespace A063037.P4174667503213812309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063037.P4174667503213812309

namespace A063037

/-- `∩[A003726(n+1), A003796(n+1)]` -/
def P4174667503213812309.Spec : Prop :=
  ∀ n, (P4174667503213812309.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P15912607101318036246

`A003796(lt[A003726(n+1)-A003796(n+1), 1]+1)`
-/

namespace A063037.P15912607101318036246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1) - A003796 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063037.P15912607101318036246

namespace A063037

/-- `A003796(lt[A003726(n+1)-A003796(n+1), 1]+1)` -/
def P15912607101318036246.Spec : Prop :=
  ∀ n, P15912607101318036246.a n = A063037 (n + 1)

end A063037

/-! ## A063037.P13089021431174186416

`comp[A136037(n+1)]`
-/

namespace A063037.P13089021431174186416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063037.P13089021431174186416

namespace A063037

/-- `comp[A136037(n+1)]` -/
def P13089021431174186416.Spec : Prop :=
  ∀ n, (P13089021431174186416.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P16783915852126408431

`lt[A284559(n), 3]`
-/

namespace A063037.P16783915852126408431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A063037.P16783915852126408431

namespace A063037

/-- `lt[A284559(n), 3]` -/
def P16783915852126408431.Spec : Prop :=
  ∀ n, (P16783915852126408431.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P16649199238434548136

`eq[1, A004526(A284559(n)+1)]`
-/

namespace A063037.P16649199238434548136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284559 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P16649199238434548136

namespace A063037

/-- `eq[1, A004526(A284559(n)+1)]` -/
def P16649199238434548136.Spec : Prop :=
  ∀ n, (P16649199238434548136.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P3825105721048362452

`eq[2, A168587(A284559(n)+1)]`
-/

namespace A063037.P3825105721048362452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168587 (A284559 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P3825105721048362452

namespace A063037

/-- `eq[2, A168587(A284559(n)+1)]` -/
def P3825105721048362452.Spec : Prop :=
  ∀ n, (P3825105721048362452.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P1544715265525123994

`eq[2, A208864(A284559(n)+1)]`
-/

namespace A063037.P1544715265525123994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A284559 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P1544715265525123994

namespace A063037

/-- `eq[2, A208864(A284559(n)+1)]` -/
def P1544715265525123994.Spec : Prop :=
  ∀ n, (P1544715265525123994.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P9958540841893256348

`eq[1, A261031(A284559(n)-1)]`
-/

namespace A063037.P9958540841893256348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261031 (A284559 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P9958540841893256348

namespace A063037

/-- `eq[1, A261031(A284559(n)-1)]` -/
def P9958540841893256348.Spec : Prop :=
  ∀ n, (P9958540841893256348.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P6180990976447569296

`eq[2, A267649(A284559(n)-1)]`
-/

namespace A063037.P6180990976447569296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267649 (A284559 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P6180990976447569296

namespace A063037

/-- `eq[2, A267649(A284559(n)-1)]` -/
def P6180990976447569296.Spec : Prop :=
  ∀ n, (P6180990976447569296.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P18404393361755414025

`eq[2, A300404(A284559(n)-1)]`
-/

namespace A063037.P18404393361755414025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300404 (A284559 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P18404393361755414025

namespace A063037

/-- `eq[2, A300404(A284559(n)-1)]` -/
def P18404393361755414025.Spec : Prop :=
  ∀ n, (P18404393361755414025.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P8585975243165479295

`eq[1, A284559(5*A284559(n))]`
-/

namespace A063037.P8585975243165479295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (5 * A284559 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063037.P8585975243165479295

namespace A063037

/-- `eq[1, A284559(5*A284559(n))]` -/
def P8585975243165479295.Spec : Prop :=
  ∀ n, (P8585975243165479295.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P4276887400969042159

`eq[A284559(n), A323174(A284559(n)²)]`
-/

namespace A063037.P4276887400969042159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (A284559 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063037.P4276887400969042159

namespace A063037

/-- `eq[A284559(n), A323174(A284559(n)²)]` -/
def P4276887400969042159.Spec : Prop :=
  ∀ n, (P4276887400969042159.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P4288844903075611086

`eq[A000120(A284559(n)+1), A284559(n)]`
-/

namespace A063037.P4288844903075611086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A284559 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063037.P4288844903075611086

namespace A063037

/-- `eq[A000120(A284559(n)+1), A284559(n)]` -/
def P4288844903075611086.Spec : Prop :=
  ∀ n, (P4288844903075611086.a n : ℤ) = A063037 (n + 1)

end A063037

/-! ## A063037.P18233199528740977103

`eq[A002260(A284559(n)+1), A284559(n)]`
-/

namespace A063037.P18233199528740977103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A284559 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063037.P18233199528740977103

namespace A063037

/-- `eq[A002260(A284559(n)+1), A284559(n)]` -/
def P18233199528740977103.Spec : Prop :=
  ∀ n, (P18233199528740977103.a n : ℤ) = A063037 (n + 1)

end A063037

/-!
# A063038: a(n) = floor(n*sqrt(n)) - d(n), where d(n) is the number of divisors function.

The programs for A063038, the canonical program `A063038.P10011791712976178041` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063038 has offset 1).

The definition of A063038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063038.P10011791712976178041

`A000093(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A063038

/-- `A000093(n+1)-A000005(n+1)` -/
def P10011791712976178041.Spec : Prop :=
  ∀ n, P10011791712976178041.a n = A063038 (n + 1)

theorem P10011791712976178041.correct : P10011791712976178041.Spec := by
  intro n
  simp only [A063038, Nat.add_sub_cancel]

end A063038

/-! ## A063038.P881736223435151819

`A000196((n+1)^3)-A000005(n+1)`
-/

namespace A063038.P881736223435151819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1) ^ 3) - A000005 (n + 1)

end

end A063038.P881736223435151819

namespace A063038

/-- `A000196((n+1)^3)-A000005(n+1)` -/
def P881736223435151819.Spec : Prop :=
  ∀ n, P881736223435151819.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P2639740338511323366

`floor(sqrt((n+1)^3)-∏{e}[n+1, #+1])`
-/

namespace A063038.P2639740338511323366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1) ^ 3 : ℝ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ)⌋

end

end A063038.P2639740338511323366

namespace A063038

/-- `floor(sqrt((n+1)^3)-∏{e}[n+1, #+1])` -/
def P2639740338511323366.Spec : Prop :=
  ∀ n, P2639740338511323366.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P6916074706189040358

`floor((n+1)^(3/2))-∏{e}[n+1, #+1]`
-/

namespace A063038.P6916074706189040358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋ - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A063038.P6916074706189040358

namespace A063038

/-- `floor((n+1)^(3/2))-∏{e}[n+1, #+1]` -/
def P6916074706189040358.Spec : Prop :=
  ∀ n, P6916074706189040358.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P4538168240873705786

`floor(sqrt((n+1)^3))-2^∑{e}[n+1, log2(#+1)]`
-/

namespace A063038.P4538168240873705786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt ((n + 1) ^ 3) : ℝ) - (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ))

end

end A063038.P4538168240873705786

namespace A063038

/-- `floor(sqrt((n+1)^3))-2^∑{e}[n+1, log2(#+1)]` -/
def P4538168240873705786.Spec : Prop :=
  ∀ n, P4538168240873705786.a n = (A063038 (n + 1) : ℝ)

end A063038

/-! ## A063038.P75727559725629329

`floor(sqrt((n+1)^3))-Δ[A006218(n)]`
-/

namespace A063038.P75727559725629329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt ((n + 1) ^ 3) : ℤ) - (f1 (n + 1) - f1 n)

end

end A063038.P75727559725629329

namespace A063038

/-- `floor(sqrt((n+1)^3))-Δ[A006218(n)]` -/
def P75727559725629329.Spec : Prop :=
  ∀ n, P75727559725629329.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P15846345805099076259

`floor(sqrt((n+1)^3))-Δ[A054519(n)]`
-/

namespace A063038.P15846345805099076259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt ((n + 1) ^ 3) : ℤ) - (f1 (n + 1) - f1 n)

end

end A063038.P15846345805099076259

namespace A063038

/-- `floor(sqrt((n+1)^3))-Δ[A054519(n)]` -/
def P15846345805099076259.Spec : Prop :=
  ∀ n, P15846345805099076259.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P17089064709936005855

`floor(sqrt((n+1)^3))-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A063038.P17089064709936005855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt ((n + 1) ^ 3) : ℤ) - (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A063038.P17089064709936005855

namespace A063038

/-- `floor(sqrt((n+1)^3))-(∑{d}[n+1, 1-A000010(#)]+n+1)` -/
def P17089064709936005855.Spec : Prop :=
  ∀ n, P17089064709936005855.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P2585538402509145817

`∑[A035936(n)]-A000005(n+1)`
-/

namespace A063038.P2585538402509145817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000005 (n + 1)

end

end A063038.P2585538402509145817

namespace A063038

/-- `∑[A035936(n)]-A000005(n+1)` -/
def P2585538402509145817.Spec : Prop :=
  ∀ n, P2585538402509145817.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P3894819751486125394

`A065608(n+1)+A055682(n+1)`
-/

namespace A063038.P3894819751486125394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A055682 (n + 1)

end

end A063038.P3894819751486125394

namespace A063038

/-- `A065608(n+1)+A055682(n+1)` -/
def P3894819751486125394.Spec : Prop :=
  ∀ n, P3894819751486125394.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P9690354763106774815

`A186146(n+1)-A062249(n+1)`
-/

namespace A063038.P9690354763106774815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186146 (n + 1) - A062249 (n + 1)

end

end A063038.P9690354763106774815

namespace A063038

/-- `A186146(n+1)-A062249(n+1)` -/
def P9690354763106774815.Spec : Prop :=
  ∀ n, P9690354763106774815.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P16218424363031310268

`A000203(n+1)+A055682(n+1)-A000005(n+1)`
-/

namespace A063038.P16218424363031310268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A055682 (n + 1) - A000005 (n + 1))

end

end A063038.P16218424363031310268

namespace A063038

/-- `A000203(n+1)+A055682(n+1)-A000005(n+1)` -/
def P16218424363031310268.Spec : Prop :=
  ∀ n, P16218424363031310268.a n = A063038 (n + 1)

end A063038

/-! ## A063038.P14126932289421632916

`abs(A000005(n+1)-sqrt(A065733(n+1)))`
-/

namespace A063038.P14126932289421632916
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(A000005 (n + 1) : ℝ) - Real.sqrt (A065733 (n + 1) : ℝ)|

end

end A063038.P14126932289421632916

namespace A063038

/-- `abs(A000005(n+1)-sqrt(A065733(n+1)))` -/
def P14126932289421632916.Spec : Prop :=
  ∀ n, P14126932289421632916.a n = (A063038 (n + 1) : ℝ)

end A063038

/-!
# A063039: LCM of unsigned Stirling numbers of the first kind, s(n,k) for 1 <= k <= n; s(n,k) = number of permutations of {1,2,..,n} with k cycles.

The programs for A063039, there is no canonical definition to state claims against.
-/

/-! ## A063039.P8137702584408555887

`A071625(A042718(n))*A354479(n+1)`
-/

namespace A063039.P8137702584408555887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A042718 n).toNat * A354479 (n + 1)

end

end A063039.P8137702584408555887

/-! ## A063039.P5888055656664405596

`lcm(A045778(A027608(n)), A354479(n+1))`
-/

namespace A063039.P5888055656664405596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045778 (A027608 n).toNat) (A354479 (n + 1))

end

end A063039.P5888055656664405596

/-! ## A063039.P5325647407308859572

`A090822(A001160(n+1))*A112289(n+1)`
-/

namespace A063039.P5325647407308859572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A001160 (n + 1)).toNat * A112289 (n + 1)

end

end A063039.P5325647407308859572

/-!
# A063042: Collatz-2 (A063041) trajectory starting at 3.

The programs for A063042, there is no canonical definition to state claims against.
-/

/-! ## A063042.P9358732161349667527

`A063041(a(n-1))` with `a(0)=3`
-/

namespace A063042.P9358732161349667527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A063041 (a (n - 1)).toNat

end

end A063042.P9358732161349667527

/-!
# A063043: Collatz-2 (A063041) trajectory starting at 17.

The programs for A063043, there is no canonical definition to state claims against.
-/

/-! ## A063043.P6084666819291685725

`A063041(a(n-1))` with `a(0)=17`
-/

namespace A063043.P6084666819291685725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A063041 (a (n - 1)).toNat

end

end A063043.P6084666819291685725

/-!
# A063044: Collatz-2 (A063041) trajectory starting at 29.

The programs for A063044, there is no canonical definition to state claims against.
-/

/-! ## A063044.P441339726830329042

`A063041(a(n-1))` with `a(0)=29`
-/

namespace A063044.P441339726830329042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A063041 (a (n - 1)).toNat

end

end A063044.P441339726830329042

/-!
# A063045: Largest value in Collatz-2 (A063041) trajectory starting at n.

The programs for A063045, there is no canonical definition to state claims against.
-/

/-! ## A063045.P1120819620403121672

`A204106(A003639(n+1)^A086847(n+1))`
-/

namespace A063045.P1120819620403121672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204106 (SequenceMachineLib.roundAway ((A003639 (n + 1) : ℚ) ^ (A086847 (n + 1) : ℤ))).toNat

end

end A063045.P1120819620403121672

/-! ## A063045.P3189815270036908788

`A286529(A281996(n+2))²`
-/

namespace A063045.P3189815270036908788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (A281996 (n + 2)).toNat ^ 2

end

end A063045.P3189815270036908788

/-! ## A063045.P18221020414331821856

`A278238(or(49, A278238(n+1)))`
-/

namespace A063045.P18221020414331821856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278238 (Int.lor 49 (A278238 (n + 1))).toNat

end

end A063045.P18221020414331821856

/-! ## A063045.P3584565425059830141

`A081445(gcd(A054541(n+1), A349155(3*n+1)))`
-/

namespace A063045.P3584565425059830141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081445 (Int.gcd (A054541 (n + 1)) (A349155 (3 * n + 1)))

end

end A063045.P3584565425059830141

/-! ## A063045.P329793057874281758

`A117217(A063834(n)+A007387(2*n+3))²`
-/

namespace A063045.P329793057874281758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (A063834 n + A007387 (2 * n + 3)).toNat ^ 2

end

end A063045.P329793057874281758

/-!
# A063047: Minimum m where (c_n)^m is mutinous (i.e., part of sequence A027854), where c_n is the n-th positive integer not a prime power.

The programs for A063047, there is no canonical definition to state claims against.
-/

/-! ## A063047.P16237961087765130945

`A116178(2*n)+A106036(A089637(n))`
-/

namespace A063047.P16237961087765130945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 (2 * n) + A106036 (A089637 n).toNat

end

end A063047.P16237961087765130945

/-! ## A063047.P6940160589909232873

`gcd(A064415(3*n+5), A316470(A187473(2*n+3)))`
-/

namespace A063047.P6940160589909232873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064415 (3 * n + 5)) (A316470 (A187473 (2 * n + 3)).toNat)

end

end A063047.P6940160589909232873

/-!
# A063048: Numbers n such that the Reverse and Add! trajectory of n (presumably) does not reach a palindrome and does not join the trajectory of any term m < n.

The programs for A063048, there is no canonical definition to state claims against.
-/

/-! ## A063048.P10468849031542653480

`record[gcd(A023108(n+1), A306359(n+1))]`
-/

namespace A063048.P10468849031542653480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023108 (n + 1)) (A306359 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063048.P10468849031542653480

/-! ## A063048.P9646789297547455840

`record[A244568(A088753(n+1))]`
-/

namespace A063048.P9646789297547455840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244568 (A088753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063048.P9646789297547455840

/-! ## A063048.P18263804863156181306

`A306232(n+1)%A213301(n)`
-/

namespace A063048.P18263804863156181306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306232 (n + 1)) (A213301 n)

end

end A063048.P18263804863156181306

/-! ## A063048.P6045528626145229599

`A355443(A306210(3*n+1))+A306232(n+1)`
-/

namespace A063048.P6045528626145229599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (A306210 (3 * n + 1)).toNat + A306232 (n + 1)

end

end A063048.P6045528626145229599

/-! ## A063048.P5832664264046361407

`A306232(A328617(n+1))`
-/

namespace A063048.P5832664264046361407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306232 (A328617 (n + 1)).toNat

end

end A063048.P5832664264046361407

/-!
# A063049: Integers n > 196 such that the 'Reverse and Add!' trajectory of n joins the trajectory of 196.

The programs for A063049, there is no canonical definition to state claims against.
-/

/-! ## A063049.P13999542253375459613

`filter[A023108(n+2), A316343(#)]`
-/

namespace A063049.P13999542253375459613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316343 (f1 j).toNat = 1) n)

end

end A063049.P13999542253375459613

/-! ## A063049.P3692623761310136714

`A023108(lt[A178470(n), A007094(n)])`
-/

namespace A063049.P3692623761310136714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063049.P3692623761310136714

/-! ## A063049.P15696010109518543465

`A023108(lt[A051352(n), A102781(n+1)])`
-/

namespace A063049.P15696010109518543465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063049.P15696010109518543465

/-! ## A063049.P13659263139235188350

`A023108(lt[A146607(n+1), A007953(n)])`
-/

namespace A063049.P13659263139235188350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063049.P13659263139235188350

/-! ## A063049.P5538945048176179955

`A023108(lt[A051352(n), A141468(n+1)])`
-/

namespace A063049.P5538945048176179955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063049.P5538945048176179955

/-!
# A063050: a(n) = number of 'Reverse and Add!' operations that have to be applied to the n-th term of A063049 in order to obtain a term in the trajectory of 196.

The programs for A063050, there is no canonical definition to state claims against.
-/

/-! ## A063050.P17973082153129296806

`A331843(A163901(n)%A237593(n+1))`
-/

namespace A063050.P17973082153129296806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 (Int.tmod (A163901 n) (A237593 (n + 1))).toNat

end

end A063050.P17973082153129296806

/-! ## A063050.P9068430148049038438

`A333805(A348653(n)+A210941(2*n+3))`
-/

namespace A063050.P9068430148049038438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A348653 n + A210941 (2 * n + 3)).toNat

end

end A063050.P9068430148049038438

/-! ## A063050.P11175479855324033394

`A298307(A366152(n)%A166478(2*n+5))`
-/

namespace A063050.P11175479855324033394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298307 (Int.tmod (A366152 n) (A166478 (2 * n + 5))).toNat

end

end A063050.P11175479855324033394

/-! ## A063050.P8971085073610566920

`A128915(C(A007318(n), A324848(3*n+2)))`
-/

namespace A063050.P8971085073610566920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128915 (Nat.choose (A007318 n).toNat (A324848 (3 * n + 2)).toNat)

end

end A063050.P8971085073610566920

/-! ## A063050.P3701589036844073926

`A367905(gcd(A199205(n+1), A246753(2*n+3)))`
-/

namespace A063050.P3701589036844073926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (Int.gcd (A199205 (n + 1)) (A246753 (2 * n + 3)))

end

end A063050.P3701589036844073926

/-!
# A063051: 'Reverse and Add!' trajectory of 879.

The programs for A063051, there is no canonical definition to state claims against.
-/

/-! ## A063051.P1135790420072077839

`A056964(a(n-1))` with `a(0)=879`
-/

namespace A063051.P1135790420072077839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [879] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A063051.P1135790420072077839

/-!
# A063053: a(n) = number of 'Reverse and Add!' operations that have to be applied to the n-th term of A063052 in order to obtain a term in the trajectory of 879.

The programs for A063053, there is no canonical definition to state claims against.
-/

/-! ## A063053.P3976268204139285345

`and(A107813(n+1), A337206(A049455(n+1)))`
-/

namespace A063053.P3976268204139285345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107813 (n + 1)) (A337206 (A049455 (n + 1)).toNat)

end

end A063053.P3976268204139285345

/-! ## A063053.P13627414709385221468

`A365661(gcd(A003415(n+3), A334265(n+4)))`
-/

namespace A063053.P13627414709385221468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (Int.gcd (A003415 (n + 3)) (A334265 (n + 4)))

end

end A063053.P13627414709385221468

/-! ## A063053.P13924356441200806762

`A340102(A261034(n+3)-A005843(n+2))`
-/

namespace A063053.P13924356441200806762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A261034 (n + 3) - A005843 (n + 2)).toNat

end

end A063053.P13924356441200806762

/-! ## A063053.P15149037297244852041

`A123221(Δ[A328867(n+5)])`
-/

namespace A063053.P15149037297244852041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123221 (f1 (n + 1) - f1 n).toNat

end

end A063053.P15149037297244852041

/-! ## A063053.P8301248276227763182

`A339742(gcd(A058034(n), A360557(n+1)))`
-/

namespace A063053.P8301248276227763182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (Int.gcd (A058034 n) (A360557 (n + 1)))

end

end A063053.P8301248276227763182

/-! ## A063053.P10893322688688822795

`A106351(gcd(A038712(n+1), A358683(n+1)))`
-/

namespace A063053.P10893322688688822795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (Int.gcd (A038712 (n + 1)) (A358683 (n + 1)))

end

end A063053.P10893322688688822795

/-! ## A063053.P7110976408981703648

`A056926(∑{e}[A324698(n+1)+1, A166486(#)])`
-/

namespace A063053.P7110976408981703648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A166486 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A063053.P7110976408981703648

/-! ## A063053.P9765997049982490167

`A000164(floor(A051771(n)/A062401(3*n+2)))`
-/

namespace A063053.P9765997049982490167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 ⌊(A051771 n : ℚ) / (A062401 (3 * n + 2) : ℚ)⌋.toNat

end

end A063053.P9765997049982490167

/-!
# A063059: a(n) = number of 'Reverse and Add!' operations that have to be applied to the n-th term of A063058 in order to obtain a term in the trajectory of 7059.

The programs for A063059, there is no canonical definition to state claims against.
-/

/-! ## A063059.P8298122627932662290

`A022927(11*A124388(n))`
-/

namespace A063059.P8298122627932662290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 (11 * A124388 n).toNat

end

end A063059.P8298122627932662290

/-! ## A063059.P16579364288966511176

`A022927(lcm(11, A124388(n)))`
-/

namespace A063059.P16579364288966511176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 (Int.lcm 11 (A124388 n))

end

end A063059.P16579364288966511176

/-! ## A063059.P11097163504770725198

`gcd(2, A064834(A063058(n)))`
-/

namespace A063059.P11097163504770725198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A064834 (A063058 n).toNat)

end

end A063059.P11097163504770725198

/-! ## A063059.P6301610026007796161

`gcd(A057331(A090750(n+1)), A108598(n+1))`
-/

namespace A063059.P6301610026007796161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057331 (A090750 (n + 1)).toNat) (A108598 (n + 1))

end

end A063059.P6301610026007796161

/-!
# A063062: a(n) = number of 'Reverse and Add!' operations that have to be applied to the n-th term of A063061 in order to obtain a term in the trajectory of 10553.

The programs for A063062, there is no canonical definition to state claims against.
-/

/-! ## A063062.P18391563481205229556

`gcd(A001779(n), A010684(A339809(n)+1))`
-/

namespace A063062.P18391563481205229556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001779 n) (A010684 (A339809 n + 1).toNat)

end

end A063062.P18391563481205229556

/-! ## A063062.P10002928848870630187

`gcd(A010684(A075019(n+1)), A032248(n))`
-/

namespace A063062.P10002928848870630187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010684 (A075019 (n + 1)).toNat) (A032248 (n + 10))

end

end A063062.P10002928848870630187

/-! ## A063062.P7089944251698303366

`or(1, A196563(A359651(n+1)))`
-/

namespace A063062.P7089944251698303366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196563 (A359651 (n + 1)).toNat)

end

end A063062.P7089944251698303366

/-! ## A063062.P7937862751746348007

`A010684(A007095(n)*A008347(n))`
-/

namespace A063062.P7937862751746348007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A007095 n * A008347 n).toNat

end

end A063062.P7937862751746348007

/-! ## A063062.P101731892873684774

`A037227(or(A052382(n+1), A271740(n)))`
-/

namespace A063062.P101731892873684774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (Int.lor (A052382 (n + 1)) (A271740 n)).toNat

end

end A063062.P101731892873684774

/-! ## A063062.P1733964396636687450

`A038712(or(A052382(n+1), A271740(n)))`
-/

namespace A063062.P1733964396636687450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (Int.lor (A052382 (n + 1)) (A271740 n)).toNat

end

end A063062.P1733964396636687450

/-! ## A063062.P11527107412631023550

`A038712(or(A020639(3*n+4), A359651(n+1)))`
-/

namespace A063062.P11527107412631023550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (Int.lor (A020639 (3 * n + 4)) (A359651 (n + 1))).toNat

end

end A063062.P11527107412631023550

/-! ## A063062.P5620952255549531267

`A010684(and(A001196(n+1), A171679(n)))`
-/

namespace A063062.P5620952255549531267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (Int.land (A001196 (n + 1)) (A171679 n)).toNat

end

end A063062.P5620952255549531267

/-! ## A063062.P18367987899244600452

`A010684(and(A020639(n+1), A171679(n)))`
-/

namespace A063062.P18367987899244600452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (Int.land (A020639 (n + 1)) (A171679 n)).toNat

end

end A063062.P18367987899244600452

/-!
# A063065: a(n) = number of 'Reverse and Add!' operations that have to be applied to the n-th term of A063064 in order to obtain a term in the trajectory of 10563.

The programs for A063065, there is no canonical definition to state claims against.
-/

/-! ## A063065.P1989564793708770518

`A363329(A028795(n+1))`
-/

namespace A063065.P1989564793708770518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (A028795 (n + 1)).toNat

end

end A063065.P1989564793708770518

/-! ## A063065.P12019513151891285066

`A136655(∏{e}[A028795(n+1), #])`
-/

namespace A063065.P12019513151891285066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136655 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A063065.P12019513151891285066

/-! ## A063065.P16684067914724790968

`gcd(A046170(n+1), A336850(n+1))`
-/

namespace A063065.P16684067914724790968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046170 (n + 1)) (A336850 (n + 1))

end

end A063065.P16684067914724790968

/-! ## A063065.P4603884313601178706

`gcd(A157754(A028795(n+1)), A324405(n+1))`
-/

namespace A063065.P4603884313601178706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157754 (A028795 (n + 1)).toNat) (A324405 (n + 1))

end

end A063065.P4603884313601178706

/-! ## A063065.P10921873367960068955

`gcd(A227455(n+1), A227500(A196158(n+1)))`
-/

namespace A063065.P10921873367960068955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A227455 (n + 1)) (A227500 (A196158 (n + 1)).toNat)

end

end A063065.P10921873367960068955

/-!
# A063066: Numbers expressible as (a^2-1)(b^2-1).

The programs for A063066, there is no canonical definition to state claims against.
-/

/-! ## A063066.P14620279749004968122

`A050435(n+1)*A267263(A155610(n))`
-/

namespace A063066.P14620279749004968122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (n + 1) * A267263 (A155610 n).toNat

end

end A063066.P14620279749004968122

/-! ## A063066.P2620847001579426171

`A050435(n+1)*A267263(A182176(n))`
-/

namespace A063066.P2620847001579426171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050435 (n + 1) * A267263 (A182176 n).toNat

end

end A063066.P2620847001579426171

/-!
# A063069: Positive integers n such that phi(n) - d(n) = phi(n+1) - d(n+1) where d(n) is the number of divisors of n.

The programs for A063069, there is no canonical definition to state claims against.
-/

/-! ## A063069.P10647985707788672841

`A066219(A160360(n+1)+3)`
-/

namespace A063069.P10647985707788672841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066219 (A160360 (n + 1) + 3).toNat

end

end A063069.P10647985707788672841

/-!
# A063070: a(n) = phi(n) - d(n), where d(n) is the number of divisors function (A000005).

The programs for A063070, the canonical program `A063070.P5416196495209204381` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063070 has offset 1).

The definition of A063070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063070.P5416196495209204381

`A000010(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063070

/-- `A000010(n+1)-A000005(n+1)` -/
def P5416196495209204381.Spec : Prop :=
  ∀ n, P5416196495209204381.a n = A063070 (n + 1)

theorem P5416196495209204381.correct : P5416196495209204381.Spec := by
  intro n
  simp only [A063070, Nat.add_sub_cancel]

end A063070

/-! ## A063070.P17519626205412655414

`1-A351561(n+1)+n`
-/

namespace A063070.P17519626205412655414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A351561 (n + 1) + (n : ℤ)

end

end A063070.P17519626205412655414

namespace A063070

/-- `1-A351561(n+1)+n` -/
def P17519626205412655414.Spec : Prop :=
  ∀ n, P17519626205412655414.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P2765082699436854030

`Δ[A005728(n)-A006218(n)]`
-/

namespace A063070.P2765082699436854030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063070.P2765082699436854030

namespace A063070

/-- `Δ[A005728(n)-A006218(n)]` -/
def P2765082699436854030.Spec : Prop :=
  ∀ n, P2765082699436854030.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P4608878107128330553

`Δ[A005728(n)-A054519(n)]`
-/

namespace A063070.P4608878107128330553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063070.P4608878107128330553

namespace A063070

/-- `Δ[A005728(n)-A054519(n)]` -/
def P4608878107128330553.Spec : Prop :=
  ∀ n, P4608878107128330553.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P12688146219738112855

`Δ[A002088(n)]-A000005(n+1)`
-/

namespace A063070.P12688146219738112855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (n + 1)

end

end A063070.P12688146219738112855

namespace A063070

/-- `Δ[A002088(n)]-A000005(n+1)` -/
def P12688146219738112855.Spec : Prop :=
  ∀ n, P12688146219738112855.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P17029027566832829529

`Δ[A005728(n)]-A000005(n+1)`
-/

namespace A063070.P17029027566832829529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (n + 1)

end

end A063070.P17029027566832829529

namespace A063070

/-- `Δ[A005728(n)]-A000005(n+1)` -/
def P17029027566832829529.Spec : Prop :=
  ∀ n, P17029027566832829529.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P1629120964847546075

`A000010(n+1)-Δ[A006218(n)]`
-/

namespace A063070.P1629120964847546075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (f1 (n + 1) - f1 n)

end

end A063070.P1629120964847546075

namespace A063070

/-- `A000010(n+1)-Δ[A006218(n)]` -/
def P1629120964847546075.Spec : Prop :=
  ∀ n, P1629120964847546075.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P13005912245609749961

`A000010(n+1)-Δ[A054519(n)]`
-/

namespace A063070.P13005912245609749961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (f1 (n + 1) - f1 n)

end

end A063070.P13005912245609749961

namespace A063070

/-- `A000010(n+1)-Δ[A054519(n)]` -/
def P13005912245609749961.Spec : Prop :=
  ∀ n, P13005912245609749961.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P1656926179126932511

`A082513(n+1)+A037228(n+1)`
-/

namespace A063070.P1656926179126932511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1) + A037228 (n + 1)

end

end A063070.P1656926179126932511

namespace A063070

/-- `A082513(n+1)+A037228(n+1)` -/
def P1656926179126932511.Spec : Prop :=
  ∀ n, P1656926179126932511.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P11638406047672308790

`A065387(n+1)-A007503(n+1)`
-/

namespace A063070.P11638406047672308790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A007503 (n + 1)

end

end A063070.P11638406047672308790

namespace A063070

/-- `A065387(n+1)-A007503(n+1)` -/
def P11638406047672308790.Spec : Prop :=
  ∀ n, P11638406047672308790.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P11052910569141590562

`A049820(n+1)-A051953(n+1)`
-/

namespace A063070.P11052910569141590562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A051953 (n + 1)

end

end A063070.P11052910569141590562

namespace A063070

/-- `A049820(n+1)-A051953(n+1)` -/
def P11052910569141590562.Spec : Prop :=
  ∀ n, P11052910569141590562.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P17715595652712275996

`A065608(n+1)-A051612(n+1)`
-/

namespace A063070.P17715595652712275996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A051612 (n + 1)

end

end A063070.P17715595652712275996

namespace A063070

/-- `A065608(n+1)-A051612(n+1)` -/
def P17715595652712275996.Spec : Prop :=
  ∀ n, P17715595652712275996.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P7346595998892999059

`A061468(n+1)-A062011(n+1)`
-/

namespace A063070.P7346595998892999059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A062011 (n + 1)

end

end A063070.P7346595998892999059

namespace A063070

/-- `A061468(n+1)-A062011(n+1)` -/
def P7346595998892999059.Spec : Prop :=
  ∀ n, P7346595998892999059.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P17043059185726688582

`A082515(n+1)-A082514(n+1)`
-/

namespace A063070.P17043059185726688582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A082514 (n + 1)

end

end A063070.P17043059185726688582

namespace A063070

/-- `A082515(n+1)-A082514(n+1)` -/
def P17043059185726688582.Spec : Prop :=
  ∀ n, P17043059185726688582.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P30112947660493734

`A121048(n+1)-A062249(n+1)`
-/

namespace A063070.P30112947660493734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A062249 (n + 1)

end

end A063070.P30112947660493734

namespace A063070

/-- `A121048(n+1)-A062249(n+1)` -/
def P30112947660493734.Spec : Prop :=
  ∀ n, P30112947660493734.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P9700420612031254005

`A073757(n+1)-A114003(n+1)`
-/

namespace A063070.P9700420612031254005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A114003 (n + 1)

end

end A063070.P9700420612031254005

namespace A063070

/-- `A073757(n+1)-A114003(n+1)` -/
def P9700420612031254005.Spec : Prop :=
  ∀ n, P9700420612031254005.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P17602184010427104550

`A179179(n+1)-A033273(n+1)`
-/

namespace A063070.P17602184010427104550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) - A033273 (n + 1)

end

end A063070.P17602184010427104550

namespace A063070

/-- `A179179(n+1)-A033273(n+1)` -/
def P17602184010427104550.Spec : Prop :=
  ∀ n, P17602184010427104550.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P10954820081576508161

`A057859(n+1)-A163523(n+1)`
-/

namespace A063070.P10954820081576508161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - A163523 (n + 1)

end

end A063070.P10954820081576508161

namespace A063070

/-- `A057859(n+1)-A163523(n+1)` -/
def P10954820081576508161.Spec : Prop :=
  ∀ n, P10954820081576508161.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P8908111937723649676

`A255385(n+1)-A000203(n+1)`
-/

namespace A063070.P8908111937723649676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) - A000203 (n + 1)

end

end A063070.P8908111937723649676

namespace A063070

/-- `A255385(n+1)-A000203(n+1)` -/
def P8908111937723649676.Spec : Prop :=
  ∀ n, P8908111937723649676.a n = A063070 (n + 1)

end A063070

/-! ## A063070.P1083555859211805001

`A286002(n+1)-A053158(n+1)`
-/

namespace A063070.P1083555859211805001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) - A053158 (n + 1)

end

end A063070.P1083555859211805001

namespace A063070

/-- `A286002(n+1)-A053158(n+1)` -/
def P1083555859211805001.Spec : Prop :=
  ∀ n, P1083555859211805001.a n = A063070 (n + 1)

end A063070

/-!
# A063071: Numbers k such that sigma(k)*omega(k) = sigma(k+1)*omega(k+1), where omega(k) is the number of distinct prime divisors of n (A001221).

The programs for A063071, there is no canonical definition to state claims against.
-/

/-! ## A063071.P13811659970918718505

`A002961(lt[A033483(n), A071321(n+1)])`
-/

namespace A063071.P13811659970918718505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063071.P13811659970918718505

/-! ## A063071.P4853194750197688553

`A002961(lt[A258152(3*n+1), A002064(n)])`
-/

namespace A063071.P4853194750197688553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258152 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063071.P4853194750197688553

/-! ## A063071.P10099544949419231781

`A002961(lt[A104502(n), A349790(3*(n+1))])`
-/

namespace A063071.P10099544949419231781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349790 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A063071.P10099544949419231781

/-! ## A063071.P3852874857239784673

`A002961(A002158(n+1)%A146207(2*n+1))`
-/

namespace A063071.P3852874857239784673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (Int.tmod (A002158 (n + 1)) (A146207 (2 * n + 1))).toNat

end

end A063071.P3852874857239784673

/-!
# A063072: Sum of divisors of Ramanujan's highly composite numbers, or sigma(A002182(n)).

The programs for A063072, there is no canonical definition to state claims against.
-/

/-! ## A063072.P5386800269960607929

`A000203(A002182(n+1))`
-/

namespace A063072.P5386800269960607929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002182 (n + 1)).toNat

end

end A063072.P5386800269960607929

/-! ## A063072.P10204842837357751371

`A072824(n+1)+A002182(n+1)`
-/

namespace A063072.P10204842837357751371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + A002182 (n + 1)

end

end A063072.P10204842837357751371

/-! ## A063072.P16783587271749186905

`A072824(n+1)+A135372(n+1)-1`
-/

namespace A063072.P16783587271749186905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + (A135372 (n + 1) - 1)

end

end A063072.P16783587271749186905

/-! ## A063072.P11581092455443886275

`A072824(n+1)+A301413(n+1)*A319865(n+1)`
-/

namespace A063072.P11581092455443886275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + A301413 (n + 1) * A319865 (n + 1)

end

end A063072.P11581092455443886275

/-! ## A063072.P11439908325170386101

`A072824(n+1)+∑[A262501(A028310(n))]`
-/

namespace A063072.P11439908325170386101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063072.P11439908325170386101

/-! ## A063072.P9003902913541165040

`A072824(n+1)+sqrt(A046952(n+1))`
-/

namespace A063072.P9003902913541165040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072824 (n + 1) : ℝ) + Real.sqrt (A046952 (n + 1) : ℝ)

end

end A063072.P9003902913541165040

/-! ## A063072.P4872669285387101277

`A072824(n+1)+A152047(n+1)*A152048(n+1)`
-/

namespace A063072.P4872669285387101277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + A152047 (n + 1) * A152048 (n + 1)

end

end A063072.P4872669285387101277

/-! ## A063072.P8828943834376106674

`A356425(A306802(n+1))`
-/

namespace A063072.P8828943834376106674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356425 (A306802 (n + 1)).toNat

end

end A063072.P8828943834376106674

/-! ## A063072.P4942440937128175009

`A072824(n+1)+A025487(A306802(n+1))`
-/

namespace A063072.P4942440937128175009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + A025487 (A306802 (n + 1)).toNat

end

end A063072.P4942440937128175009

/-! ## A063072.P12529519118376728851

`A072824(n+1)+A061799(A002183(n+1))`
-/

namespace A063072.P12529519118376728851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072824 (n + 1) + A061799 (A002183 (n + 1)).toNat

end

end A063072.P12529519118376728851

/-!
# A063073: Square of determinant of character table of the dihedral group with 2n elements.

The programs for A063073, there is no canonical definition to state claims against.
-/

/-! ## A063073.P1229144238571633514

`A008574((n+1)^A062828(n+2))`
-/

namespace A063073.P1229144238571633514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A062828 (n + 2) : ℤ))).toNat

end

end A063073.P1229144238571633514

/-!
# A063074: Number of partitions of 2n^2 whose Ferrers-plot fits within a 2n X 2n box; number of ways to cut a 2n X 2n chessboard into two equal-area pieces along a non-descending line from lower left to upper right.

The programs for A063074, there is no canonical definition to state claims against.
-/

/-! ## A063074.P11013863548937576008

`A029895(2*n)`
-/

namespace A063074.P11013863548937576008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (2 * n)

end

end A063074.P11013863548937576008

/-! ## A063074.P5675589047146329482

`record[A029895(and(n, n+1))]`
-/

namespace A063074.P5675589047146329482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P5675589047146329482

/-! ## A063074.P15694289215850300832

`record[A029895(A029906(n))]`
-/

namespace A063074.P15694289215850300832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A029906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P15694289215850300832

/-! ## A063074.P14794938067922821588

`record[A029895(A026741(n)+1)]`
-/

namespace A063074.P14794938067922821588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P14794938067922821588

/-! ## A063074.P13740594508878951336

`record[A029895(A106617(n)+1)]`
-/

namespace A063074.P13740594508878951336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A106617 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P13740594508878951336

/-! ## A063074.P7433198853844118907

`record[A029895(A093178(n)-1)]`
-/

namespace A063074.P7433198853844118907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P7433198853844118907

/-! ## A063074.P15089568137254297553

`record[A029895(n/A093178(n))]`
-/

namespace A063074.P15089568137254297553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P15089568137254297553

/-! ## A063074.P12602719398193904550

`record[A029895(gcd(n, A270010(n)))]`
-/

namespace A063074.P12602719398193904550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (Int.gcd (n : ℤ) (A270010 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P12602719398193904550

/-! ## A063074.P3278049797265770987

`record[A029895(lcm(n, A056594(n)))]`
-/

namespace A063074.P3278049797265770987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P3278049797265770987

/-! ## A063074.P14789333149490606798

`record[A029895(n)/A000034(n)²]`
-/

namespace A063074.P14789333149490606798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029895 n : ℚ) / (A000034 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063074.P14789333149490606798

/-!
# A063075: Number of partitions of 2n^2 whose Ferrers-plot fits within a 2n X 2n box and cover an n X n box; number of ways to cut a 2n X 2n chessboard into two equal-area pieces along a non-descending line from lower left to upper right and passing through the center.

The programs for A063075, there is no canonical definition to state claims against.
-/

/-! ## A063075.P5058838928951022883

`A277346(2*n)`
-/

namespace A063075.P5058838928951022883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277346 (2 * n)

end

end A063075.P5058838928951022883

/-! ## A063075.P7308387837884634818

`A125806(∑[4*n])`
-/

namespace A063075.P7308387837884634818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063075.P7308387837884634818

/-! ## A063075.P10945406797503067541

`record[A125806(gcd(n, A114327(n)))]`
-/

namespace A063075.P10945406797503067541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063075.P10945406797503067541

/-! ## A063075.P9382401714696693596

`record[A125806(∑[A014682(n)+1])]`
-/

namespace A063075.P9382401714696693596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063075.P9382401714696693596

/-! ## A063075.P13985091849316619007

`record[A125806(∑[A266981(n+1)])]`
-/

namespace A063075.P13985091849316619007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125806 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063075.P13985091849316619007

/-!
# A063076: Differences of A011757 ("Primes with square indices").

The programs for A063076, the canonical program `A063076.P5267493948838015482` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063076 has offset 1).

The definition of A063076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063076.P5267493948838015482

`A000040((n+2)²)-A000040((n+1)²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063076

/-- `A000040((n+2)²)-A000040((n+1)²)` -/
def P5267493948838015482.Spec : Prop :=
  ∀ n, P5267493948838015482.a n = A063076 (n + 1)

theorem P5267493948838015482.correct : P5267493948838015482.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel]

end A063076

/-! ## A063076.P14738829235926534851

`Δ[A011757(n+1)]`
-/

namespace A063076.P14738829235926534851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P14738829235926534851

namespace A063076

/-- `Δ[A011757(n+1)]` -/
def P14738829235926534851.Spec : Prop :=
  ∀ n, P14738829235926534851.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P12009561865951629417

`A011757(n+2)-A011757(n+1)`
-/

namespace A063076.P12009561865951629417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 2) - A011757 (n + 1)

end

end A063076.P12009561865951629417

namespace A063076

/-- `A011757(n+2)-A011757(n+1)` -/
def P12009561865951629417.Spec : Prop :=
  ∀ n, P12009561865951629417.a n = A063076 (n + 1)

theorem P12009561865951629417.correct : P12009561865951629417.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P12009561865951629417.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P1137477535008006618

`Δ[A213926(n+1)+A000040(n+1)]`
-/

namespace A063076.P1137477535008006618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213926 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P1137477535008006618

namespace A063076

/-- `Δ[A213926(n+1)+A000040(n+1)]` -/
def P1137477535008006618.Spec : Prop :=
  ∀ n, P1137477535008006618.a n = A063076 (n + 1)

theorem P1137477535008006618.correct : P1137477535008006618.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P1137477535008006618.f1, A063076.P1137477535008006618.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A213926, A213926.P7531459219814302167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P11574734569646188899

`Δ[A092504(n+1)-A000040(n+1)]`
-/

namespace A063076.P11574734569646188899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P11574734569646188899

namespace A063076

/-- `Δ[A092504(n+1)-A000040(n+1)]` -/
def P11574734569646188899.Spec : Prop :=
  ∀ n, P11574734569646188899.a n = A063076 (n + 1)

theorem P11574734569646188899.correct : P11574734569646188899.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P11574734569646188899.f1, A063076.P11574734569646188899.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092504, A092504.P5803117585915799915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P16546182911133639458

`Δ[A001248(n+1)-A123914(n+1)]`
-/

namespace A063076.P16546182911133639458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A123914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P16546182911133639458

namespace A063076

/-- `Δ[A001248(n+1)-A123914(n+1)]` -/
def P16546182911133639458.Spec : Prop :=
  ∀ n, P16546182911133639458.a n = A063076 (n + 1)

theorem P16546182911133639458.correct : P16546182911133639458.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P16546182911133639458.f1, A063076.P16546182911133639458.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A123914, A123914.P8916338796586414767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P2627673579404820589

`A092504(n+2)-(A092504(n+1)+A001223(n+1))`
-/

namespace A063076.P2627673579404820589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 2) - (A092504 (n + 1) + A001223 (n + 1))

end

end A063076.P2627673579404820589

namespace A063076

/-- `A092504(n+2)-(A092504(n+1)+A001223(n+1))` -/
def P2627673579404820589.Spec : Prop :=
  ∀ n, P2627673579404820589.a n = A063076 (n + 1)

theorem P2627673579404820589.correct : P2627673579404820589.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P2627673579404820589.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A092504, A092504.P5803117585915799915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P1089873511314438421

`A001223(n+1)+A213926(n+2)-A213926(n+1)`
-/

namespace A063076.P1089873511314438421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A213926 (n + 2) - A213926 (n + 1))

end

end A063076.P1089873511314438421

namespace A063076

/-- `A001223(n+1)+A213926(n+2)-A213926(n+1)` -/
def P1089873511314438421.Spec : Prop :=
  ∀ n, P1089873511314438421.a n = A063076 (n + 1)

theorem P1089873511314438421.correct : P1089873511314438421.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P1089873511314438421.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A213926, A213926.P7531459219814302167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P16411271842072370459

`Δ[A323526(n+2)]`
-/

namespace A063076.P16411271842072370459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P16411271842072370459

namespace A063076

/-- `Δ[A323526(n+2)]` -/
def P16411271842072370459.Spec : Prop :=
  ∀ n, P16411271842072370459.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P11769935683384302399

`A323526(n+3)-A323526(n+2)`
-/

namespace A063076.P11769935683384302399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 3) - A323526 (n + 2)

end

end A063076.P11769935683384302399

namespace A063076

/-- `A323526(n+3)-A323526(n+2)` -/
def P11769935683384302399.Spec : Prop :=
  ∀ n, P11769935683384302399.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P2668638342755256118

`Δ[A296857(A000040(n+1))]`
-/

namespace A063076.P2668638342755256118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P2668638342755256118

namespace A063076

/-- `Δ[A296857(A000040(n+1))]` -/
def P2668638342755256118.Spec : Prop :=
  ∀ n, P2668638342755256118.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P1127037228117417145

`Δ[p?[A064517(n+1)]]`
-/

namespace A063076.P1127037228117417145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P1127037228117417145

namespace A063076

/-- `Δ[p?[A064517(n+1)]]` -/
def P1127037228117417145.Spec : Prop :=
  ∀ n, P1127037228117417145.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P7782393619640416718

`p?[A064517(2*n+1)]-p?[A064517(n+1)]`
-/

namespace A063076.P7782393619640416718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A063076.P7782393619640416718

namespace A063076

/-- `p?[A064517(2*n+1)]-p?[A064517(n+1)]` -/
def P7782393619640416718.Spec : Prop :=
  ∀ n, P7782393619640416718.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P18037455427500682937

`Δ[p?[A323528(n+1)]]`
-/

namespace A063076.P18037455427500682937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P18037455427500682937

namespace A063076

/-- `Δ[p?[A323528(n+1)]]` -/
def P18037455427500682937.Spec : Prop :=
  ∀ n, P18037455427500682937.a n = A063076 (n + 1)

end A063076

/-! ## A063076.P7238004330552708151

`Δ[A001748((n+1)²)/3]`
-/

namespace A063076.P7238004330552708151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 ((n + 1) ^ 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P7238004330552708151

namespace A063076

/-- `Δ[A001748((n+1)²)/3]` -/
def P7238004330552708151.Spec : Prop :=
  ∀ n, P7238004330552708151.a n = (A063076 (n + 1) : ℚ)

theorem P7238004330552708151.correct : P7238004330552708151.Spec := by
  intro n
  simp only [A063076, Nat.add_sub_cancel, A063076.P7238004330552708151.f1, A063076.P7238004330552708151.a, A063076.P5267493948838015482.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A063076

/-! ## A063076.P17447840240808686218

`Δ[A156037((n+1)²)]`
-/

namespace A063076.P17447840240808686218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063076.P17447840240808686218

namespace A063076

/-- `Δ[A156037((n+1)²)]` -/
def P17447840240808686218.Spec : Prop :=
  ∀ n, P17447840240808686218.a n = A063076 (n + 1)

end A063076

/-!
# A063077: a(n) = phi(n^2 + 1) - 2n.

The programs for A063077, the canonical program `A063077.P15723209612401757287` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063077 has offset 1).

The definition of A063077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063077.P11986447229254903331

`A333169(n+1)-2*(n+1)`
-/

namespace A063077.P11986447229254903331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333169 (n + 1) - (2 * (n + 1) : ℤ)

end

end A063077.P11986447229254903331

namespace A063077

/-- `A333169(n+1)-2*(n+1)` -/
def P11986447229254903331.Spec : Prop :=
  ∀ n, P11986447229254903331.a n = A063077 (n + 1)

end A063077

/-! ## A063077.P15723209612401757287

`A000010((n+1)²+1)-2*(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063077

/-- `A000010((n+1)²+1)-2*(n+1)` -/
def P15723209612401757287.Spec : Prop :=
  ∀ n, P15723209612401757287.a n = A063077 (n + 1)

theorem P15723209612401757287.correct : P15723209612401757287.Spec := by
  intro n
  simp only [A063077, Nat.add_sub_cancel]

end A063077

/-! ## A063077.P7225986720127766107

`Δ[A333170(n)]-2*(n+1)`
-/

namespace A063077.P7225986720127766107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)

end

end A063077.P7225986720127766107

namespace A063077

/-- `Δ[A333170(n)]-2*(n+1)` -/
def P7225986720127766107.Spec : Prop :=
  ∀ n, P7225986720127766107.a n = A063077 (n + 1)

end A063077

/-! ## A063077.P15228645301807618996

`Δ[A333170(n)-A002061(n)]-2`
-/

namespace A063077.P15228645301807618996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333170 n - A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A063077.P15228645301807618996

namespace A063077

/-- `Δ[A333170(n)-A002061(n)]-2` -/
def P15228645301807618996.Spec : Prop :=
  ∀ n, P15228645301807618996.a n = A063077 (n + 1)

end A063077

/-! ## A063077.P1507607887452381068

`A079530((n+1)²+1)-n`
-/

namespace A063077.P1507607887452381068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079530 ((n + 1) ^ 2 + 1) - (n : ℤ)

end

end A063077.P1507607887452381068

namespace A063077

/-- `A079530((n+1)²+1)-n` -/
def P1507607887452381068.Spec : Prop :=
  ∀ n, P1507607887452381068.a n = A063077 (n + 1)

end A063077

/-! ## A063077.P9881330775221339438

`n²-A219428((n+1)²+1)-1`
-/

namespace A063077.P9881330775221339438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A219428 ((n + 1) ^ 2 + 1) - 1

end

end A063077.P9881330775221339438

namespace A063077

/-- `n²-A219428((n+1)²+1)-1` -/
def P9881330775221339438.Spec : Prop :=
  ∀ n, P9881330775221339438.a n = A063077 (n + 1)

end A063077

/-! ## A063077.P9050768236717616516

`A002522(n)-A062830(A002522(n+1))`
-/

namespace A063077.P9050768236717616516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A062830 (A002522 (n + 1)).toNat

end

end A063077.P9050768236717616516

namespace A063077

/-- `A002522(n)-A062830(A002522(n+1))` -/
def P9050768236717616516.Spec : Prop :=
  ∀ n, P9050768236717616516.a n = A063077 (n + 1)

end A063077

/-!
# A063079: Bisection of A001790.

The programs for A063079, there is no canonical definition to state claims against.
-/

/-! ## A063079.P9814080460522903520

`record[-((2*n-1)*a(n-1)/gcd(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A063079.P9814080460522903520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -(((2 * n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063079.P9814080460522903520

/-! ## A063079.P13399565174617134634

`A001790(Δ[n²])`
-/

namespace A063079.P13399565174617134634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063079.P13399565174617134634

/-! ## A063079.P3016402957542577011

`A322756(Δ[n²])/2`
-/

namespace A063079.P3016402957542577011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322756 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A063079.P3016402957542577011

/-! ## A063079.P3730701693491692555

`record[A001790(gcd(n, ∑[n]))]`
-/

namespace A063079.P3730701693491692555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063079.P3730701693491692555

/-! ## A063079.P9318316105310045414

`record[A001790(n*n%2)]`
-/

namespace A063079.P9318316105310045414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063079.P9318316105310045414

/-! ## A063079.P15382316195527235604

`or(1, A001790(2*n+1))`
-/

namespace A063079.P15382316195527235604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001790 (2 * n + 1))

end

end A063079.P15382316195527235604

/-! ## A063079.P14981140643138050139

`(4*n+1)*A001795(n)`
-/

namespace A063079.P14981140643138050139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A001795 n

end

end A063079.P14981140643138050139

/-! ## A063079.P7490386326816015148

`record[A001790(A006369(n))]`
-/

namespace A063079.P7490386326816015148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063079.P7490386326816015148

/-! ## A063079.P17249160151241411460

`record[A001790(A026741(n))]`
-/

namespace A063079.P17249160151241411460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063079.P17249160151241411460

/-! ## A063079.P3124490271416711853

`record[A001790(A014681(n)+1)]`
-/

namespace A063079.P3124490271416711853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063079.P3124490271416711853

/-!
# A063080: Numbers k such that k/d(k) is prime, where d(k) is the number of divisors of k.

The programs for A063080, the canonical program `A063080.P8650061368992008328` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063080 has offset 1).

The definition of A063080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063080.P8650061368992008328

`filter[A082293(n+1), A336040(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A063080

/-- `filter[A082293(n+1), A336040(#)]` -/
def P8650061368992008328.Spec : Prop :=
  ∀ n, P8650061368992008328.a n = A063080 (n + 1)

theorem P8650061368992008328.correct : P8650061368992008328.Spec := by
  intro n
  simp only [A063080, Nat.add_sub_cancel]

end A063080

/-! ## A063080.P10313394544201715205

`∩[A033950(n+1), A082293(n+1)]`
-/

namespace A063080.P10313394544201715205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063080.P10313394544201715205

namespace A063080

/-- `∩[A033950(n+1), A082293(n+1)]` -/
def P10313394544201715205.Spec : Prop :=
  ∀ n, (P10313394544201715205.a n : ℤ) = A063080 (n + 1)

end A063080

/-! ## A063080.P320918896577354313

`∩[eq[1, A090387(n+1)]+1, A082293(n+1)]`
-/

namespace A063080.P320918896577354313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A063080.P320918896577354313

namespace A063080

/-- `∩[eq[1, A090387(n+1)]+1, A082293(n+1)]` -/
def P320918896577354313.Spec : Prop :=
  ∀ n, (P320918896577354313.a n : ℤ) = A063080 (n + 1)

end A063080

/-! ## A063080.P18072777458767193218

`∩[A082293(n+1), eq[1, A336040(n+1)]+1]`
-/

namespace A063080.P18072777458767193218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063080.P18072777458767193218

namespace A063080

/-- `∩[A082293(n+1), eq[1, A336040(n+1)]+1]` -/
def P18072777458767193218.Spec : Prop :=
  ∀ n, (P18072777458767193218.a n : ℤ) = A063080 (n + 1)

end A063080

/-! ## A063080.P13476833786217779712

`∩[A036762(n+1)*A039819(n+1), A082293(n+1)]`
-/

namespace A063080.P13476833786217779712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (n + 1) * A039819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063080.P13476833786217779712

namespace A063080

/-- `∩[A036762(n+1)*A039819(n+1), A082293(n+1)]` -/
def P13476833786217779712.Spec : Prop :=
  ∀ n, (P13476833786217779712.a n : ℤ) = A063080 (n + 1)

end A063080

/-! ## A063080.P13445334267944829050

`record[A122377(A082293(n+2))]`
-/

namespace A063080.P13445334267944829050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A082293 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063080.P13445334267944829050

namespace A063080

/-- `record[A122377(A082293(n+2))]` -/
def P13445334267944829050.Spec : Prop :=
  ∀ n, P13445334267944829050.a n = A063080 (n + 1)

end A063080

/-! ## A063080.P1758813987817620925

`∩[A082293(n+1), lt[A298734(n+1), 2]+1]`
-/

namespace A063080.P1758813987817620925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063080.P1758813987817620925

namespace A063080

/-- `∩[A082293(n+1), lt[A298734(n+1), 2]+1]` -/
def P1758813987817620925.Spec : Prop :=
  ∀ n, (P1758813987817620925.a n : ℤ) = A063080 (n + 1)

end A063080

/-! ## A063080.P1844366212729612557

`∩[A082293(n+1), eq[n+1, A009230(n+1)]+1]`
-/

namespace A063080.P1844366212729612557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009230 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063080.P1844366212729612557

namespace A063080

/-- `∩[A082293(n+1), eq[n+1, A009230(n+1)]+1]` -/
def P1844366212729612557.Spec : Prop :=
  ∀ n, (P1844366212729612557.a n : ℤ) = A063080 (n + 1)

end A063080

/-! ## A063080.P4998118022651318067

`∩[eq[1, A124332(n+1)]+1, A082293(n+1)]`
-/

namespace A063080.P4998118022651318067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A063080.P4998118022651318067

namespace A063080

/-- `∩[eq[1, A124332(n+1)]+1, A082293(n+1)]` -/
def P4998118022651318067.Spec : Prop :=
  ∀ n, (P4998118022651318067.a n : ℤ) = A063080 (n + 1)

end A063080

/-!
# A063081: Dimension of the space of weight 2n cusp forms for Gamma_0( 13 ).

The programs for A063081, the canonical program `A063081.P17591370148031591876` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063081 has offset 1).

The definition of A063081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063081.P17591370148031591876

`a(n-6)+14` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=13, a(6)=13`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063081

/-- `a(n-6)+14` -/
def P17591370148031591876.Spec : Prop :=
  ∀ n, (P17591370148031591876.a n : ℤ) = A063081 (n + 1)

theorem P17591370148031591876.correct : P17591370148031591876.Spec := by
  intro n
  simp only [A063081, Nat.add_sub_cancel]

end A063081

/-! ## A063081.P9407979401597294951

`2*n+(2*comp[comp[3*n]+n]+1)%comp[3*n]`
-/

namespace A063081.P9407979401597294951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A063081.P9407979401597294951

namespace A063081

/-- `2*n+(2*comp[comp[3*n]+n]+1)%comp[3*n]` -/
def P9407979401597294951.Spec : Prop :=
  ∀ n, (P9407979401597294951.a n : ℤ) = A063081 (n + 1)

end A063081

/-! ## A063081.P12412655080958194011

`A063195(n+1)+2*n`
-/

namespace A063081.P12412655080958194011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1) + (2 * n : ℤ)

end

end A063081.P12412655080958194011

namespace A063081

/-- `A063195(n+1)+2*n` -/
def P12412655080958194011.Spec : Prop :=
  ∀ n, P12412655080958194011.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P10195320882363753512

`A063105(n+1)-(4*n+2)`
-/

namespace A063081.P10195320882363753512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1) - (4 * n + 2 : ℤ)

end

end A063081.P10195320882363753512

namespace A063081

/-- `A063105(n+1)-(4*n+2)` -/
def P10195320882363753512.Spec : Prop :=
  ∀ n, P10195320882363753512.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P277894697324020966

`A063129(n+1)-(8*n+4)`
-/

namespace A063081.P277894697324020966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063129 (n + 1) - (8 * n + 4 : ℤ)

end

end A063081.P277894697324020966

namespace A063081

/-- `A063129(n+1)-(8*n+4)` -/
def P277894697324020966.Spec : Prop :=
  ∀ n, P277894697324020966.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P6866012995633276022

`A016813(n)-A063199(n+1)`
-/

namespace A063081.P6866012995633276022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A063199 (n + 1)

end

end A063081.P6866012995633276022

namespace A063081

/-- `A016813(n)-A063199(n+1)` -/
def P6866012995633276022.Spec : Prop :=
  ∀ n, P6866012995633276022.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P5975898335651046750

`A016933(n)-A063203(n+1)`
-/

namespace A063081.P5975898335651046750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n - A063203 (n + 1)

end

end A063081.P5975898335651046750

namespace A063081

/-- `A016933(n)-A063203(n+1)` -/
def P5975898335651046750.Spec : Prop :=
  ∀ n, P5975898335651046750.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P17060529001413493349

`A063141(n+1)-A017329(n)`
-/

namespace A063081.P17060529001413493349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063141 (n + 1) - A017329 n

end

end A063081.P17060529001413493349

namespace A063081

/-- `A063141(n+1)-A017329(n)` -/
def P17060529001413493349.Spec : Prop :=
  ∀ n, P17060529001413493349.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P3764176184772638650

`A017317(n)-A063215(n+1)`
-/

namespace A063081.P3764176184772638650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A063215 (n + 1)

end

end A063081.P3764176184772638650

namespace A063081

/-- `A017317(n)-A063215(n+1)` -/
def P3764176184772638650.Spec : Prop :=
  ∀ n, P3764176184772638650.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P1310387798507041913

`A017581(n)-A063223(n+1)`
-/

namespace A063081.P1310387798507041913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n - A063223 (n + 1)

end

end A063081.P1310387798507041913

namespace A063081

/-- `A017581(n)-A063223(n+1)` -/
def P1310387798507041913.Spec : Prop :=
  ∀ n, P1310387798507041913.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P2068901772014262189

`A063087(n+1)-A109613(n)`
-/

namespace A063081.P2068901772014262189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) - A109613 n

end

end A063081.P2068901772014262189

namespace A063081

/-- `A063087(n+1)-A109613(n)` -/
def P2068901772014262189.Spec : Prop :=
  ∀ n, P2068901772014262189.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P14292133535179361299

`A063165(n+1)-A147587(n)`
-/

namespace A063081.P14292133535179361299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063165 (n + 1) - A147587 n

end

end A063081.P14292133535179361299

namespace A063081

/-- `A063165(n+1)-A147587(n)` -/
def P14292133535179361299.Spec : Prop :=
  ∀ n, P14292133535179361299.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P6402954050278233880

`A063105(n+1)%A016825(n)`
-/

namespace A063081.P6402954050278233880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063105 (n + 1)) (A016825 n)

end

end A063081.P6402954050278233880

namespace A063081

/-- `A063105(n+1)%A016825(n)` -/
def P6402954050278233880.Spec : Prop :=
  ∀ n, P6402954050278233880.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P14448297517936419276

`A063129(n+1)%A016825(n)`
-/

namespace A063081.P14448297517936419276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063129 (n + 1)) (A016825 n)

end

end A063081.P14448297517936419276

namespace A063081

/-- `A063129(n+1)%A016825(n)` -/
def P14448297517936419276.Spec : Prop :=
  ∀ n, P14448297517936419276.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P9396879616943958090

`A063089(n+1)-A047241(n+1)`
-/

namespace A063081.P9396879616943958090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) - A047241 (n + 1)

end

end A063081.P9396879616943958090

namespace A063081

/-- `A063089(n+1)-A047241(n+1)` -/
def P9396879616943958090.Spec : Prop :=
  ∀ n, P9396879616943958090.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P5821949871539549293

`A063099(n+1)-A047235(n+1)`
-/

namespace A063081.P5821949871539549293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) - A047235 (n + 1)

end

end A063081.P5821949871539549293

namespace A063081

/-- `A063099(n+1)-A047235(n+1)` -/
def P5821949871539549293.Spec : Prop :=
  ∀ n, P5821949871539549293.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P5547876586167245959

`A063218(n+1)-A047270(n+1)`
-/

namespace A063081.P5547876586167245959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) - A047270 (n + 1)

end

end A063081.P5547876586167245959

namespace A063081

/-- `A063218(n+1)-A047270(n+1)` -/
def P5547876586167245959.Spec : Prop :=
  ∀ n, P5547876586167245959.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P7386880168747620552

`A063097(n+1)-A047410(n+1)`
-/

namespace A063081.P7386880168747620552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) - A047410 (n + 1)

end

end A063081.P7386880168747620552

namespace A063081

/-- `A063097(n+1)-A047410(n+1)` -/
def P7386880168747620552.Spec : Prop :=
  ∀ n, P7386880168747620552.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P18285766487544821311

`A063093(n+1)-A047464(n+1)`
-/

namespace A063081.P18285766487544821311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) - A047464 (n + 1)

end

end A063081.P18285766487544821311

namespace A063081

/-- `A063093(n+1)-A047464(n+1)` -/
def P18285766487544821311.Spec : Prop :=
  ∀ n, P18285766487544821311.a n = A063081 (n + 1)

end A063081

/-! ## A063081.P16931416416502953314

`A063225(n+1)-A047484(n+1)`
-/

namespace A063081.P16931416416502953314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1) - A047484 (n + 1)

end

end A063081.P16931416416502953314

namespace A063081

/-- `A063225(n+1)-A047484(n+1)` -/
def P16931416416502953314.Spec : Prop :=
  ∀ n, P16931416416502953314.a n = A063081 (n + 1)

end A063081

/-!
# A063082: Squares arising in A063076.

The programs for A063082, there is no canonical definition to state claims against.
-/

/-! ## A063082.P14376526391964125993

`A063076(A145290(n+1))`
-/

namespace A063082.P14376526391964125993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063076 (A145290 (n + 1)).toNat

end

end A063082.P14376526391964125993

/-!
# A063083: Number of permutations of n elements with an odd number of fixed points.

The programs for A063083, the canonical program `A063083.P13772755646552137030` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063083 has offset 0).

The definition of A063083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063083.P13772755646552137030

`n*a(n-1)+(-2)^(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063083

/-- `n*a(n-1)+(-2)^(n-1)` -/
def P13772755646552137030.Spec : Prop :=
  ∀ n, P13772755646552137030.a n = (A063083 n : ℚ)

end A063083

/-! ## A063083.P5246593210322919402

`n!-A062282(n)`
-/

namespace A063083.P5246593210322919402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A062282 n

end

end A063083.P5246593210322919402

namespace A063083

/-- `n!-A062282(n)` -/
def P5246593210322919402.Spec : Prop :=
  ∀ n, P5246593210322919402.a n = A063083 n

end A063083

/-! ## A063083.P1675068205681954606

`(-2)^(n-1)+n*a(n-1)` with `a(0)=0`
-/

namespace A063083.P1675068205681954606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ) * a (n - 1)

end

end A063083.P1675068205681954606

namespace A063083

/-- `(-2)^(n-1)+n*a(n-1)` -/
def P1675068205681954606.Spec : Prop :=
  ∀ n, P1675068205681954606.a n = (A063083 n : ℚ)

end A063083

/-! ## A063083.P16137105350773032190

`A062282(n)-A000023(n)`
-/

namespace A063083.P16137105350773032190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062282 n - A000023 n

end

end A063083.P16137105350773032190

namespace A063083

/-- `A062282(n)-A000023(n)` -/
def P16137105350773032190.Spec : Prop :=
  ∀ n, P16137105350773032190.a n = A063083 n

end A063083

/-! ## A063083.P1728239357088325038

`A088336(n)+A088506(n)-A062282(n)`
-/

namespace A063083.P1728239357088325038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088336 n + (A088506 n - A062282 n)

end

end A063083.P1728239357088325038

namespace A063083

/-- `A088336(n)+A088506(n)-A062282(n)` -/
def P1728239357088325038.Spec : Prop :=
  ∀ n, P1728239357088325038.a n = A063083 n

end A063083

/-! ## A063083.P5650175434899108148

`A000142(n)-A062282(n)`
-/

namespace A063083.P5650175434899108148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A062282 n

end

end A063083.P5650175434899108148

namespace A063083

/-- `A000142(n)-A062282(n)` -/
def P5650175434899108148.Spec : Prop :=
  ∀ n, P5650175434899108148.a n = A063083 n

end A063083

/-! ## A063083.P7216644889004462269

`A028421(∑[n])-A062282(n)`
-/

namespace A063083.P7216644889004462269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) - A062282 n

end

end A063083.P7216644889004462269

namespace A063083

/-- `A028421(∑[n])-A062282(n)` -/
def P7216644889004462269.Spec : Prop :=
  ∀ n, P7216644889004462269.a n = A063083 n

end A063083

/-! ## A063083.P3720560604745954445

`Δ[A003422(n)]-A062282(n)`
-/

namespace A063083.P3720560604745954445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062282 n

end

end A063083.P3720560604745954445

namespace A063083

/-- `Δ[A003422(n)]-A062282(n)` -/
def P3720560604745954445.Spec : Prop :=
  ∀ n, P3720560604745954445.a n = A063083 n

end A063083

/-!
# A063084: a(n) = pi(n-1)*n - pi(n)*(n-1), where pi() = A000720().

The programs for A063084, the canonical program `A063084.P11297547496359058065` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063084 has offset 1).

The definition of A063084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063084.P30079972186287814

`A230980(n)-A166260(n+1)`
-/

namespace A063084.P30079972186287814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A166260 (n + 1)

end

end A063084.P30079972186287814

namespace A063084

/-- `A230980(n)-A166260(n+1)` -/
def P30079972186287814.Spec : Prop :=
  ∀ n, P30079972186287814.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P7152863532520067809

`A000720(n+1)-A061397(n+1)`
-/

namespace A063084.P7152863532520067809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A061397 (n + 1)

end

end A063084.P7152863532520067809

namespace A063084

/-- `A000720(n+1)-A061397(n+1)` -/
def P7152863532520067809.Spec : Prop :=
  ∀ n, P7152863532520067809.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P11297547496359058065

`A005451(n+1)-A086936(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063084

/-- `A005451(n+1)-A086936(n+1)` -/
def P11297547496359058065.Spec : Prop :=
  ∀ n, P11297547496359058065.a n = A063084 (n + 1)

theorem P11297547496359058065.correct : P11297547496359058065.Spec := by
  intro n
  simp only [A063084, Nat.add_sub_cancel]

end A063084

/-! ## A063084.P1109132388856488715

`A191558(n+1)-A062298(n+1)`
-/

namespace A063084.P1109132388856488715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) - A062298 (n + 1)

end

end A063084.P1109132388856488715

namespace A063084

/-- `A191558(n+1)-A062298(n+1)` -/
def P1109132388856488715.Spec : Prop :=
  ∀ n, P1109132388856488715.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P11992130438593807678

`A230980(n)+1-A089026(n+1)`
-/

namespace A063084.P11992130438593807678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (1 - A089026 (n + 1))

end

end A063084.P11992130438593807678

namespace A063084

/-- `A230980(n)+1-A089026(n+1)` -/
def P11992130438593807678.Spec : Prop :=
  ∀ n, P11992130438593807678.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P7778296790279857600

`A100486(n+1)-A346180(n+1)`
-/

namespace A063084.P7778296790279857600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) - A346180 (n + 1)

end

end A063084.P7778296790279857600

namespace A063084

/-- `A100486(n+1)-A346180(n+1)` -/
def P7778296790279857600.Spec : Prop :=
  ∀ n, P7778296790279857600.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P15059684990534586492

`A230980(n)-n*A010051(n+1)`
-/

namespace A063084.P15059684990534586492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - (n : ℤ) * A010051 (n + 1)

end

end A063084.P15059684990534586492

namespace A063084

/-- `A230980(n)-n*A010051(n+1)` -/
def P15059684990534586492.Spec : Prop :=
  ∀ n, P15059684990534586492.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P2877755826621455917

`A230980(n)-n*A080339(n+1)`
-/

namespace A063084.P2877755826621455917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - (n : ℤ) * A080339 (n + 1)

end

end A063084.P2877755826621455917

namespace A063084

/-- `A230980(n)-n*A080339(n+1)` -/
def P2877755826621455917.Spec : Prop :=
  ∀ n, P2877755826621455917.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P11742929817611013125

`∑[A010051(n+1)]-A061397(n+1)`
-/

namespace A063084.P11742929817611013125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061397 (n + 1)

end

end A063084.P11742929817611013125

namespace A063084

/-- `∑[A010051(n+1)]-A061397(n+1)` -/
def P11742929817611013125.Spec : Prop :=
  ∀ n, P11742929817611013125.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P6860866194276421144

`A000720(n+1)-(n+1)*A010051(n+1)`
-/

namespace A063084.P6860866194276421144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (n + 1 : ℤ) * A010051 (n + 1)

end

end A063084.P6860866194276421144

namespace A063084

/-- `A000720(n+1)-(n+1)*A010051(n+1)` -/
def P6860866194276421144.Spec : Prop :=
  ∀ n, P6860866194276421144.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P11016704399192569769

`A000720(A151800(n))-A089026(n+1)`
-/

namespace A063084.P11016704399192569769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 n).toNat - A089026 (n + 1)

end

end A063084.P11016704399192569769

namespace A063084

/-- `A000720(A151800(n))-A089026(n+1)` -/
def P11016704399192569769.Spec : Prop :=
  ∀ n, P11016704399192569769.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P2497807181786325371

`A000217(A014684(n+1))-A256885(n+1)`
-/

namespace A063084.P2497807181786325371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014684 (n + 1)).toNat - A256885 (n + 1)

end

end A063084.P2497807181786325371

namespace A063084

/-- `A000217(A014684(n+1))-A256885(n+1)` -/
def P2497807181786325371.Spec : Prop :=
  ∀ n, P2497807181786325371.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P10032245375147129362

`A101203(n+1)-(A101203(n)+A062298(n+1))`
-/

namespace A063084.P10032245375147129362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 1) - (A101203 n + A062298 (n + 1))

end

end A063084.P10032245375147129362

namespace A063084

/-- `A101203(n+1)-(A101203(n)+A062298(n+1))` -/
def P10032245375147129362.Spec : Prop :=
  ∀ n, P10032245375147129362.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P3796333527834057637

`A101256(n+1)-(A101203(n)+A065855(n+1))`
-/

namespace A063084.P3796333527834057637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (n + 1) - (A101203 n + A065855 (n + 1))

end

end A063084.P3796333527834057637

namespace A063084

/-- `A101256(n+1)-(A101203(n)+A065855(n+1))` -/
def P3796333527834057637.Spec : Prop :=
  ∀ n, P3796333527834057637.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P1183795160926173130

`A000720(n+1)+A063918(n+1)-A020639(n+1)`
-/

namespace A063084.P1183795160926173130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A063918 (n + 1) - A020639 (n + 1))

end

end A063084.P1183795160926173130

namespace A063084

/-- `A000720(n+1)+A063918(n+1)-A020639(n+1)` -/
def P1183795160926173130.Spec : Prop :=
  ∀ n, P1183795160926173130.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P7314251522936866035

`∑[A010051(n+1)]-A006530(n+1)*A010051(n+1)`
-/

namespace A063084.P7314251522936866035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006530 (n + 1) * A010051 (n + 1)

end

end A063084.P7314251522936866035

namespace A063084

/-- `∑[A010051(n+1)]-A006530(n+1)*A010051(n+1)` -/
def P7314251522936866035.Spec : Prop :=
  ∀ n, P7314251522936866035.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P3345366143528733493

`∑[A010051(n+1)]-A020639(n+1)*A010051(n+1)`
-/

namespace A063084.P3345366143528733493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A020639 (n + 1) * A010051 (n + 1)

end

end A063084.P3345366143528733493

namespace A063084

/-- `∑[A010051(n+1)]-A020639(n+1)*A010051(n+1)` -/
def P3345366143528733493.Spec : Prop :=
  ∀ n, P3345366143528733493.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P13376540708461551022

`A095117(n)-n*Δ[A095117(n)]`
-/

namespace A063084.P13376540708461551022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n - (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A063084.P13376540708461551022

namespace A063084

/-- `A095117(n)-n*Δ[A095117(n)]` -/
def P13376540708461551022.Spec : Prop :=
  ∀ n, P13376540708461551022.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P18424980163499579520

`A230980(n+1)-A061397(n+1)`
-/

namespace A063084.P18424980163499579520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A061397 (n + 1)

end

end A063084.P18424980163499579520

namespace A063084

/-- `A230980(n+1)-A061397(n+1)` -/
def P18424980163499579520.Spec : Prop :=
  ∀ n, P18424980163499579520.a n = A063084 (n + 1)

end A063084

/-! ## A063084.P1817166394302185013

`A000217(A113638(n+1))-A256885(n+1)`
-/

namespace A063084.P1817166394302185013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A113638 (n + 1)).toNat - A256885 (n + 1)

end

end A063084.P1817166394302185013

namespace A063084

/-- `A000217(A113638(n+1))-A256885(n+1)` -/
def P1817166394302185013.Spec : Prop :=
  ∀ n, P1817166394302185013.a n = A063084 (n + 1)

end A063084

/-!
# A063085: a(n) = usigma(n) - (phi(n) + d(n)), where usigma(n) is the sum of the unitary divisors of n and d(n) is the number of divisors of n.

The programs for A063085, the canonical program `A063085.P4754823976141225556` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063085 has offset 1).

The definition of A063085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063085.P8593848182385669961

`A046520(n+1)-A048146(n+1)`
-/

namespace A063085.P8593848182385669961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) - A048146 (n + 1)

end

end A063085.P8593848182385669961

namespace A063085

/-- `A046520(n+1)-A048146(n+1)` -/
def P8593848182385669961.Spec : Prop :=
  ∀ n, P8593848182385669961.a n = A063085 (n + 1)

end A063085

/-! ## A063085.P4754823976141225556

`A034448(n+1)-A061468(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A063085

/-- `A034448(n+1)-A061468(n+1)` -/
def P4754823976141225556.Spec : Prop :=
  ∀ n, P4754823976141225556.a n = A063085 (n + 1)

theorem P4754823976141225556.correct : P4754823976141225556.Spec := by
  intro n
  simp only [A063085, Nat.add_sub_cancel]

end A063085

/-! ## A063085.P17498842330080462505

`A098189(n+1)-A000005(n+1)`
-/

namespace A063085.P17498842330080462505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) - A000005 (n + 1)

end

end A063085.P17498842330080462505

namespace A063085

/-- `A098189(n+1)-A000005(n+1)` -/
def P17498842330080462505.Spec : Prop :=
  ∀ n, P17498842330080462505.a n = A063085 (n + 1)

end A063085

/-! ## A063085.P14976842803095594228

`A064212(n+1)-A233541(n+1)`
-/

namespace A063085.P14976842803095594228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A233541 (n + 1)

end

end A063085.P14976842803095594228

namespace A063085

/-- `A064212(n+1)-A233541(n+1)` -/
def P14976842803095594228.Spec : Prop :=
  ∀ n, P14976842803095594228.a n = A063085 (n + 1)

end A063085

/-! ## A063085.P14168447644627352516

`A345451(n+1)-A073757(n+1)`
-/

namespace A063085.P14168447644627352516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) - A073757 (n + 1)

end

end A063085.P14168447644627352516

namespace A063085

/-- `A345451(n+1)-A073757(n+1)` -/
def P14168447644627352516.Spec : Prop :=
  ∀ n, P14168447644627352516.a n = A063085 (n + 1)

end A063085

/-! ## A063085.P16339082592237419201

`A345451(n+1)+1-A061468(n+1)`
-/

namespace A063085.P16339082592237419201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + (1 - A061468 (n + 1))

end

end A063085.P16339082592237419201

namespace A063085

/-- `A345451(n+1)+1-A061468(n+1)` -/
def P16339082592237419201.Spec : Prop :=
  ∀ n, P16339082592237419201.a n = A063085 (n + 1)

end A063085

/-! ## A063085.P1406853360110484521

`A034448(n+1)-(A000010(n+1)+A000005(n+1))`
-/

namespace A063085.P1406853360110484521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - (A000010 (n + 1) + A000005 (n + 1))

end

end A063085.P1406853360110484521

namespace A063085

/-- `A034448(n+1)-(A000010(n+1)+A000005(n+1))` -/
def P1406853360110484521.Spec : Prop :=
  ∀ n, P1406853360110484521.a n = A063085 (n + 1)

end A063085

/-!
# A063086: a(n) = gcd(1 + prime(n+1), 1 + prime(n)).

The programs for A063086, the canonical program `A063086.P5598111624573631494` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063086 has offset 1).

The definition of A063086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(1+A000040(n+2), 1+A000040(n+1))` (program `A063086.P5598111624573631494`, by `A063086.P5598111624573631494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063086.P5598111624573631494

`gcd(1+A000040(n+2), 1+A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A063086

/-- `gcd(1+A000040(n+2), 1+A000040(n+1))` -/
def P5598111624573631494.Spec : Prop :=
  ∀ n, (P5598111624573631494.a n : ℤ) = A063086 (n + 1)

theorem P5598111624573631494.correct : P5598111624573631494.Spec := by
  intro n
  simp only [A063086, Nat.add_sub_cancel]

end A063086

/-! ## A063086.P9984572204187854457

`A180617(n+1)/A309772(n+1)`
-/

namespace A063086.P9984572204187854457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / (A309772 (n + 1) : ℚ)

end

end A063086.P9984572204187854457

namespace A063086

/-- `A180617(n+1)/A309772(n+1)` -/
def P9984572204187854457.Spec : Prop :=
  ∀ n, P9984572204187854457.a n = (A063086 (n + 1) : ℚ)

end A063086

/-! ## A063086.P11683879308177536840

`gcd(A001223(n+1), A008864(n+1))`
-/

namespace A063086.P11683879308177536840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 1)) (A008864 (n + 1))

end

end A063086.P11683879308177536840

namespace A063086

/-- `gcd(A001223(n+1), A008864(n+1))` -/
def P11683879308177536840.Spec : Prop :=
  ∀ n, (P11683879308177536840.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P4133426944501475471

`gcd(A055670(n+1), A078612(n+1))`
-/

namespace A063086.P4133426944501475471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055670 (n + 1)) (A078612 (n + 1))

end

end A063086.P4133426944501475471

namespace A063086

/-- `gcd(A055670(n+1), A078612(n+1))` -/
def P4133426944501475471.Spec : Prop :=
  ∀ n, (P4133426944501475471.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P6669638109677088930

`gcd(A135731(n+1), A175216(n+1))`
-/

namespace A063086.P6669638109677088930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135731 (n + 1)) (A175216 (n + 1))

end

end A063086.P6669638109677088930

namespace A063086

/-- `gcd(A135731(n+1), A175216(n+1))` -/
def P6669638109677088930.Spec : Prop :=
  ∀ n, (P6669638109677088930.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P15662751966883239566

`gcd(A036690(n+1), A352851(n+1))`
-/

namespace A063086.P15662751966883239566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036690 (n + 1)) (A352851 (n + 1))

end

end A063086.P15662751966883239566

namespace A063086

/-- `gcd(A036690(n+1), A352851(n+1))` -/
def P15662751966883239566.Spec : Prop :=
  ∀ n, (P15662751966883239566.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P5413138539709948276

`gcd(A123134(n+1), A345727(n+1))`
-/

namespace A063086.P5413138539709948276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123134 (n + 1)) (A345727 (n + 1))

end

end A063086.P5413138539709948276

namespace A063086

/-- `gcd(A123134(n+1), A345727(n+1))` -/
def P5413138539709948276.Spec : Prop :=
  ∀ n, (P5413138539709948276.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P3127184266733509162

`gcd(A028815(n+1), A055670(n+2))`
-/

namespace A063086.P3127184266733509162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028815 (n + 1)) (A055670 (n + 2))

end

end A063086.P3127184266733509162

namespace A063086

/-- `gcd(A028815(n+1), A055670(n+2))` -/
def P3127184266733509162.Spec : Prop :=
  ∀ n, (P3127184266733509162.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P5455932729100102926

`gcd(sqrt(A001248(n+1))+1, A291463(n+1))`
-/

namespace A063086.P5455932729100102926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) + 1)) (A291463 (n + 1))

end

end A063086.P5455932729100102926

namespace A063086

/-- `gcd(sqrt(A001248(n+1))+1, A291463(n+1))` -/
def P5455932729100102926.Spec : Prop :=
  ∀ n, (P5455932729100102926.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P5246233960429415180

`gcd(A000040(n+1)+1, Δ[A000040(n+1)])`
-/

namespace A063086.P5246233960429415180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1) + 1) (f1 (n + 1) - f1 n)

end

end A063086.P5246233960429415180

namespace A063086

/-- `gcd(A000040(n+1)+1, Δ[A000040(n+1)])` -/
def P5246233960429415180.Spec : Prop :=
  ∀ n, (P5246233960429415180.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P971086808884916410

`gcd(A008864(A028310(n+1)), A008864(n+2))`
-/

namespace A063086.P971086808884916410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (A028310 (n + 1)).toNat) (A008864 (n + 2))

end

end A063086.P971086808884916410

namespace A063086

/-- `gcd(A008864(A028310(n+1)), A008864(n+2))` -/
def P971086808884916410.Spec : Prop :=
  ∀ n, (P971086808884916410.a n : ℤ) = A063086 (n + 1)

end A063086

/-! ## A063086.P6311068396434099225

`A008864(n+1)/A309772(n+1)*A008864(n+2)`
-/

namespace A063086.P6311068396434099225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) : ℚ) / (A309772 (n + 1) : ℚ) * (A008864 (n + 2) : ℚ)

end

end A063086.P6311068396434099225

namespace A063086

/-- `A008864(n+1)/A309772(n+1)*A008864(n+2)` -/
def P6311068396434099225.Spec : Prop :=
  ∀ n, P6311068396434099225.a n = (A063086 (n + 1) : ℚ)

end A063086

/-! ## A063086.P6704581917101329438

`A342670(p?[2*n+1])`
-/

namespace A063086.P6704581917101329438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A063086.P6704581917101329438

namespace A063086

/-- `A342670(p?[2*n+1])` -/
def P6704581917101329438.Spec : Prop :=
  ∀ n, P6704581917101329438.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P13094932626977884843

`A342670(A045344(n+1))`
-/

namespace A063086.P13094932626977884843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A045344 (n + 1)).toNat

end

end A063086.P13094932626977884843

namespace A063086

/-- `A342670(A045344(n+1))` -/
def P13094932626977884843.Spec : Prop :=
  ∀ n, P13094932626977884843.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P3372709083928695859

`A342670(A065091(n+1))`
-/

namespace A063086.P3372709083928695859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A065091 (n + 1)).toNat

end

end A063086.P3372709083928695859

namespace A063086

/-- `A342670(A065091(n+1))` -/
def P3372709083928695859.Spec : Prop :=
  ∀ n, P3372709083928695859.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P10244003245678021407

`A342670(A140475(n+1))`
-/

namespace A063086.P10244003245678021407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A140475 (n + 1)).toNat

end

end A063086.P10244003245678021407

namespace A063086

/-- `A342670(A140475(n+1))` -/
def P10244003245678021407.Spec : Prop :=
  ∀ n, P10244003245678021407.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P407283349927186657

`A342670(A000040(n+2))`
-/

namespace A063086.P407283349927186657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A000040 (n + 2)).toNat

end

end A063086.P407283349927186657

namespace A063086

/-- `A342670(A000040(n+2))` -/
def P407283349927186657.Spec : Prop :=
  ∀ n, P407283349927186657.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P18404082912478264656

`A342670(A006005(n+2))`
-/

namespace A063086.P18404082912478264656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A006005 (n + 2)).toNat

end

end A063086.P18404082912478264656

namespace A063086

/-- `A342670(A006005(n+2))` -/
def P18404082912478264656.Spec : Prop :=
  ∀ n, P18404082912478264656.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P15436231338185903608

`A342670(record[A006530(n+3)])`
-/

namespace A063086.P15436231338185903608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063086.P15436231338185903608

namespace A063086

/-- `A342670(record[A006530(n+3)])` -/
def P15436231338185903608.Spec : Prop :=
  ∀ n, P15436231338185903608.a n = A063086 (n + 1)

end A063086

/-! ## A063086.P14488929831189754474

`A342670(record[A020639(n+3)])`
-/

namespace A063086.P14488929831189754474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063086.P14488929831189754474

namespace A063086

/-- `A342670(record[A020639(n+3)])` -/
def P14488929831189754474.Spec : Prop :=
  ∀ n, P14488929831189754474.a n = A063086 (n + 1)

end A063086

/-!
# A063087: Dimension of the space of weight 2n cusp forms for Gamma_0( 19 ).

The programs for A063087, the canonical program `A063087.P4244083545785260112` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063087 has offset 1).

The definition of A063087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063087.P4244083545785260112

`a(n-3)+10` with `a(0)=1, a(1)=4, a(2)=8, a(3)=10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063087

/-- `a(n-3)+10` -/
def P4244083545785260112.Spec : Prop :=
  ∀ n, (P4244083545785260112.a n : ℤ) = A063087 (n + 1)

theorem P4244083545785260112.correct : P4244083545785260112.Spec := by
  intro n
  simp only [A063087, Nat.add_sub_cancel]

end A063087

/-! ## A063087.P15875787271142551464

`∑[a(n²%3)+1]` with `a(0)=1, a(1)=3`
-/

namespace A063087.P15875787271142551464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n ^ 2 % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063087.P15875787271142551464

namespace A063087

/-- `∑[a(n²%3)+1]` -/
def P15875787271142551464.Spec : Prop :=
  ∀ n, (P15875787271142551464.a n : ℤ) = A063087 (n + 1)

end A063087

/-! ## A063087.P2300823837930253910

`floor(2/acot(ceil(5*n/3)))`
-/

namespace A063087.P2300823837930253910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (⌈5 * ((n : ℚ) / 3)⌉ : ℝ)⌋

end

end A063087.P2300823837930253910

namespace A063087

/-- `floor(2/acot(ceil(5*n/3)))` -/
def P2300823837930253910.Spec : Prop :=
  ∀ n, P2300823837930253910.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P15060603081703258743

`round(2/acot(ceil(5*n/3)))`
-/

namespace A063087.P15060603081703258743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (⌈5 * ((n : ℚ) / 3)⌉ : ℝ))

end

end A063087.P15060603081703258743

namespace A063087

/-- `round(2/acot(ceil(5*n/3)))` -/
def P15060603081703258743.Spec : Prop :=
  ∀ n, P15060603081703258743.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P3663862744595313272

`∑[floor(atan(n))+4-gcd(3, n)]`
-/

namespace A063087.P3663862744595313272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ + (4 - (Nat.gcd 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063087.P3663862744595313272

namespace A063087

/-- `∑[floor(atan(n))+4-gcd(3, n)]` -/
def P3663862744595313272.Spec : Prop :=
  ∀ n, P3663862744595313272.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P14507013182618816695

`∑[floor(atan(n))+C(3, n%3)]`
-/

namespace A063087.P14507013182618816695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ + (Nat.choose 3 (n % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063087.P14507013182618816695

namespace A063087

/-- `∑[floor(atan(n))+C(3, n%3)]` -/
def P14507013182618816695.Spec : Prop :=
  ∀ n, P14507013182618816695.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P14609929824784339699

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2, a(4)=4`
-/

namespace A063087.P14609929824784339699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063087.P14609929824784339699

namespace A063087

/-- `∑[abs(a(n-3))]` -/
def P14609929824784339699.Spec : Prop :=
  ∀ n, (P14609929824784339699.a n : ℤ) = A063087 (n + 1)

end A063087

/-! ## A063087.P4963110905068403684

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2, a(4)=4`
-/

namespace A063087.P4963110905068403684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063087.P4963110905068403684

namespace A063087

/-- `∑[dr(a(n-3))]` -/
def P4963110905068403684.Spec : Prop :=
  ∀ n, (P4963110905068403684.a n : ℤ) = A063087 (n + 1)

end A063087

/-! ## A063087.P6283181030890599755

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A063087.P6283181030890599755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063087.P6283181030890599755

namespace A063087

/-- `∑[floor(a(n-3))]` -/
def P6283181030890599755.Spec : Prop :=
  ∀ n, (P6283181030890599755.a n : ℤ) = A063087 (n + 1)

end A063087

/-! ## A063087.P7393250940429227231

`A063200(n+1)+2*n`
-/

namespace A063087.P7393250940429227231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + (2 * n : ℤ)

end

end A063087.P7393250940429227231

namespace A063087

/-- `A063200(n+1)+2*n` -/
def P7393250940429227231.Spec : Prop :=
  ∀ n, P7393250940429227231.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P3272841279840749654

`A063089(n+1)-2*n`
-/

namespace A063087.P3272841279840749654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) - (2 * n : ℤ)

end

end A063087.P3272841279840749654

namespace A063087

/-- `A063089(n+1)-2*n` -/
def P3272841279840749654.Spec : Prop :=
  ∀ n, P3272841279840749654.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P5358396489311219547

`A063099(n+1)-Δ[n²]`
-/

namespace A063087.P5358396489311219547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063087.P5358396489311219547

namespace A063087

/-- `A063099(n+1)-Δ[n²]` -/
def P5358396489311219547.Spec : Prop :=
  ∀ n, P5358396489311219547.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P12849300433658349618

`ceil(A063220(n+1)/2)-1`
-/

namespace A063087.P12849300433658349618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063220 (n + 1) : ℚ) / 2⌉ - 1

end

end A063087.P12849300433658349618

namespace A063087

/-- `ceil(A063220(n+1)/2)-1` -/
def P12849300433658349618.Spec : Prop :=
  ∀ n, P12849300433658349618.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P10982321588232718538

`A063218(n+1)-2*(n+1)`
-/

namespace A063087.P10982321588232718538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) - (2 * (n + 1) : ℤ)

end

end A063087.P10982321588232718538

namespace A063087

/-- `A063218(n+1)-2*(n+1)` -/
def P10982321588232718538.Spec : Prop :=
  ∀ n, P10982321588232718538.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P13726250929796425579

`A298786(n)+A011655(n)`
-/

namespace A063087.P13726250929796425579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A011655 n

end

end A063087.P13726250929796425579

namespace A063087

/-- `A298786(n)+A011655(n)` -/
def P13726250929796425579.Spec : Prop :=
  ∀ n, P13726250929796425579.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P15517897668823268288

`A008611(n+1)+A008486(n)`
-/

namespace A063087.P15517897668823268288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 1) + A008486 n

end

end A063087.P15517897668823268288

namespace A063087

/-- `A008611(n+1)+A008486(n)` -/
def P15517897668823268288.Spec : Prop :=
  ∀ n, P15517897668823268288.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P15795558756986073968

`A063224(n+1)+A004277(n)`
-/

namespace A063087.P15795558756986073968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1) + A004277 n

end

end A063087.P15795558756986073968

namespace A063087

/-- `A063224(n+1)+A004277(n)` -/
def P15795558756986073968.Spec : Prop :=
  ∀ n, P15795558756986073968.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P16664535957564882906

`A047281(n+1)+A028310(n)`
-/

namespace A063087.P16664535957564882906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047281 (n + 1) + A028310 n

end

end A063087.P16664535957564882906

namespace A063087

/-- `A047281(n+1)+A028310(n)` -/
def P16664535957564882906.Spec : Prop :=
  ∀ n, P16664535957564882906.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P4326712046242125816

`A063213(n+1)+A057428(n)`
-/

namespace A063087.P4326712046242125816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A057428 n

end

end A063087.P4326712046242125816

namespace A063087

/-- `A063213(n+1)+A057428(n)` -/
def P4326712046242125816.Spec : Prop :=
  ∀ n, P4326712046242125816.a n = A063087 (n + 1)

end A063087

/-! ## A063087.P10710707985892814741

`A109613(n)+A063081(n+1)`
-/

namespace A063087.P10710707985892814741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A063081 (n + 1)

end

end A063087.P10710707985892814741

namespace A063087

/-- `A109613(n)+A063081(n+1)` -/
def P10710707985892814741.Spec : Prop :=
  ∀ n, P10710707985892814741.a n = A063087 (n + 1)

end A063087

/-!
# A063088: a(n) = Sum_{k=1..n} phi(k) - Sum{k=1..n} d(k), where d() is the number of divisors function.

The programs for A063088, the canonical program `A063088.P233869695303598364` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063088 has offset 1).

The definition of A063088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A063088.P233869695303598364

`A002088(n+1)-A006218(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A063088

/-- `A002088(n+1)-A006218(n+1)` -/
def P233869695303598364.Spec : Prop :=
  ∀ n, P233869695303598364.a n = A063088 (n + 1)

theorem P233869695303598364.correct : P233869695303598364.Spec := by
  intro n
  simp only [A063088, Nat.add_sub_cancel]

end A063088

/-! ## A063088.P16054130753812622075

`∑[A063070(n+1)]`
-/

namespace A063088.P16054130753812622075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P16054130753812622075

namespace A063088

/-- `∑[A063070(n+1)]` -/
def P16054130753812622075.Spec : Prop :=
  ∀ n, P16054130753812622075.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P3850230469931751949

`∑[1-A351561(n+1)+n]`
-/

namespace A063088.P3850230469931751949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A351561 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P3850230469931751949

namespace A063088

/-- `∑[1-A351561(n+1)+n]` -/
def P3850230469931751949.Spec : Prop :=
  ∀ n, P3850230469931751949.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P11975844487775540016

`∑[A000010(n+1)-∏{e}[n+1, #+1]]`
-/

namespace A063088.P11975844487775540016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P11975844487775540016

namespace A063088

/-- `∑[A000010(n+1)-∏{e}[n+1, #+1]]` -/
def P11975844487775540016.Spec : Prop :=
  ∀ n, P11975844487775540016.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P7447796311262143275

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A000005(n+1)]`
-/

namespace A063088.P7447796311262143275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P7447796311262143275

namespace A063088

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A000005(n+1)]` -/
def P7447796311262143275.Spec : Prop :=
  ∀ n, P7447796311262143275.a n = (A063088 (n + 1) : ℚ)

end A063088

/-! ## A063088.P8375663688094366668

`A015614(n+1)-A077597(n)`
-/

namespace A063088.P8375663688094366668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) - A077597 n

end

end A063088.P8375663688094366668

namespace A063088

/-- `A015614(n+1)-A077597(n)` -/
def P8375663688094366668.Spec : Prop :=
  ∀ n, P8375663688094366668.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P15088011363565998970

`A091369(n+1)-A397992(n)`
-/

namespace A063088.P15088011363565998970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - A397992 n

end

end A063088.P15088011363565998970

namespace A063088

/-- `A091369(n+1)-A397992(n)` -/
def P15088011363565998970.Spec : Prop :=
  ∀ n, P15088011363565998970.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P5332368967393968899

`A015613(n+1)-A002541(n+1)`
-/

namespace A063088.P5332368967393968899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) - A002541 (n + 1)

end

end A063088.P5332368967393968899

namespace A063088

/-- `A015613(n+1)-A002541(n+1)` -/
def P5332368967393968899.Spec : Prop :=
  ∀ n, P5332368967393968899.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P7067147442049475169

`A005728(n+1)-A054519(n+1)`
-/

namespace A063088.P7067147442049475169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - A054519 (n + 1)

end

end A063088.P7067147442049475169

namespace A063088

/-- `A005728(n+1)-A054519(n+1)` -/
def P7067147442049475169.Spec : Prop :=
  ∀ n, P7067147442049475169.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P11958497261474570791

`A092249(n+1)-A006218(n+1)`
-/

namespace A063088.P11958497261474570791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) - A006218 (n + 1)

end

end A063088.P11958497261474570791

namespace A063088

/-- `A092249(n+1)-A006218(n+1)` -/
def P11958497261474570791.Spec : Prop :=
  ∀ n, P11958497261474570791.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P1545902460150865436

`A161664(n+1)-A063985(n+1)`
-/

namespace A063088.P1545902460150865436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161664 (n + 1) - A063985 (n + 1)

end

end A063088.P1545902460150865436

namespace A063088

/-- `A161664(n+1)-A063985(n+1)` -/
def P1545902460150865436.Spec : Prop :=
  ∀ n, P1545902460150865436.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P4549058084817480573

`A187263(n+1)-A161886(n+1)`
-/

namespace A063088.P4549058084817480573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187263 (n + 1) - A161886 (n + 1)

end

end A063088.P4549058084817480573

namespace A063088

/-- `A187263(n+1)-A161886(n+1)` -/
def P4549058084817480573.Spec : Prop :=
  ∀ n, P4549058084817480573.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P501618343212474514

`A236632(n+1)-A292769(n+1)`
-/

namespace A063088.P501618343212474514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236632 (n + 1) - A292769 (n + 1)

end

end A063088.P501618343212474514

namespace A063088

/-- `A236632(n+1)-A292769(n+1)` -/
def P501618343212474514.Spec : Prop :=
  ∀ n, P501618343212474514.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P9875407616862416751

`A292768(n+1)-A366983(n+1)`
-/

namespace A063088.P9875407616862416751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292768 (n + 1) - A366983 (n + 1)

end

end A063088.P9875407616862416751

namespace A063088

/-- `A292768(n+1)-A366983(n+1)` -/
def P9875407616862416751.Spec : Prop :=
  ∀ n, P9875407616862416751.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P3371419196313016937

`∑[A000010(n+1)-Δ[A006218(n)]]`
-/

namespace A063088.P3371419196313016937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P3371419196313016937

namespace A063088

/-- `∑[A000010(n+1)-Δ[A006218(n)]]` -/
def P3371419196313016937.Spec : Prop :=
  ∀ n, P3371419196313016937.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P16392360032367186579

`∑[A000010(n+1)-A000005(n+1)]`
-/

namespace A063088.P16392360032367186579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P16392360032367186579

namespace A063088

/-- `∑[A000010(n+1)-A000005(n+1)]` -/
def P16392360032367186579.Spec : Prop :=
  ∀ n, P16392360032367186579.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P1221378779620393658

`∑[A000010(n+1)]-A006218(n+1)`
-/

namespace A063088.P1221378779620393658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006218 (n + 1)

end

end A063088.P1221378779620393658

namespace A063088

/-- `∑[A000010(n+1)]-A006218(n+1)` -/
def P1221378779620393658.Spec : Prop :=
  ∀ n, P1221378779620393658.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P8687561881433500696

`∑[A000010(n+1)-∑[A341062(n+1)]]`
-/

namespace A063088.P8687561881433500696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P8687561881433500696

namespace A063088

/-- `∑[A000010(n+1)-∑[A341062(n+1)]]` -/
def P8687561881433500696.Spec : Prop :=
  ∀ n, P8687561881433500696.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P13017078226614043960

`∑[A039649(n+1)-(Δ[A006218(n)]+1)]`
-/

namespace A063088.P13017078226614043960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (f2 (n + 1) - f2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P13017078226614043960

namespace A063088

/-- `∑[A039649(n+1)-(Δ[A006218(n)]+1)]` -/
def P13017078226614043960.Spec : Prop :=
  ∀ n, P13017078226614043960.a n = A063088 (n + 1)

end A063088

/-! ## A063088.P9335182897396808686

`∑[A039649(n+1)-(A000005(n+1)+1)]`
-/

namespace A063088.P9335182897396808686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A000005 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063088.P9335182897396808686

namespace A063088

/-- `∑[A039649(n+1)-(A000005(n+1)+1)]` -/
def P9335182897396808686.Spec : Prop :=
  ∀ n, P9335182897396808686.a n = A063088 (n + 1)

end A063088

/-!
# A063089: Dimension of the space of weight 2n cusp forms for Gamma_0( 21 ).

The programs for A063089, the canonical program `A063089.P15524174935424758879` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063089 has offset 1).

The definition of A063089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063089.P15524174935424758879

`a(n-3)+16` with `a(0)=1, a(1)=6, a(2)=12, a(3)=16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063089

/-- `a(n-3)+16` -/
def P15524174935424758879.Spec : Prop :=
  ∀ n, (P15524174935424758879.a n : ℤ) = A063089 (n + 1)

theorem P15524174935424758879.correct : P15524174935424758879.Spec := by
  intro n
  simp only [A063089, Nat.add_sub_cancel]

end A063089

/-! ## A063089.P7663188243514702442

`floor(2/acot(ceil(8*n/3)))`
-/

namespace A063089.P7663188243514702442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (⌈8 * ((n : ℚ) / 3)⌉ : ℝ)⌋

end

end A063089.P7663188243514702442

namespace A063089

/-- `floor(2/acot(ceil(8*n/3)))` -/
def P7663188243514702442.Spec : Prop :=
  ∀ n, P7663188243514702442.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P12072066699813465522

`round(2/acot(ceil(8*n/3)))`
-/

namespace A063089.P12072066699813465522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (⌈8 * ((n : ℚ) / 3)⌉ : ℝ))

end

end A063089.P12072066699813465522

namespace A063089

/-- `round(2/acot(ceil(8*n/3)))` -/
def P12072066699813465522.Spec : Prop :=
  ∀ n, P12072066699813465522.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P1798927324327697177

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=6, a(3)=4, a(4)=6`
-/

namespace A063089.P1798927324327697177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063089.P1798927324327697177

namespace A063089

/-- `∑[abs(a(n-3))]` -/
def P1798927324327697177.Spec : Prop :=
  ∀ n, (P1798927324327697177.a n : ℤ) = A063089 (n + 1)

end A063089

/-! ## A063089.P15517964054076151876

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=6, a(3)=4, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A063089.P15517964054076151876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063089.P15517964054076151876

namespace A063089

/-- `∑[floor(a(n-3))]` -/
def P15517964054076151876.Spec : Prop :=
  ∀ n, (P15517964054076151876.a n : ℤ) = A063089 (n + 1)

end A063089

/-! ## A063089.P9475434931588016223

`∑[a(n-3)%7]` with `a(0)=1, a(1)=5, a(2)=6, a(3)=4, a(4)=6`
-/

namespace A063089.P9475434931588016223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063089.P9475434931588016223

namespace A063089

/-- `∑[a(n-3)%7]` -/
def P9475434931588016223.Spec : Prop :=
  ∀ n, (P9475434931588016223.a n : ℤ) = A063089 (n + 1)

end A063089

/-! ## A063089.P10207818984100379376

`6-(and(2, a(n-2))-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A063089.P10207818984100379376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  6 - (Int.land 2 (a (n - 2)) - a (n - 1))

end

end A063089.P10207818984100379376

namespace A063089

/-- `6-(and(2, a(n-2))-a(n-1))` -/
def P10207818984100379376.Spec : Prop :=
  ∀ n, P10207818984100379376.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P17199506187448096942

`comp[2*(n+1)]+∑[5-gcd(3, n)]-1`
-/

namespace A063089.P17199506187448096942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A063089.P17199506187448096942

namespace A063089

/-- `comp[2*(n+1)]+∑[5-gcd(3, n)]-1` -/
def P17199506187448096942.Spec : Prop :=
  ∀ n, P17199506187448096942.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P5885042217352611705

`A063099(n+1)-1`
-/

namespace A063089.P5885042217352611705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063099 (n + 1) - 1

end

end A063089.P5885042217352611705

namespace A063089

/-- `A063099(n+1)-1` -/
def P5885042217352611705.Spec : Prop :=
  ∀ n, P5885042217352611705.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P10800545204213041918

`A063218(n+1)-2`
-/

namespace A063089.P10800545204213041918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) - 2

end

end A063089.P10800545204213041918

namespace A063089

/-- `A063218(n+1)-2` -/
def P10800545204213041918.Spec : Prop :=
  ∀ n, P10800545204213041918.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P13928967062559241948

`A063087(n+1)+2*n`
-/

namespace A063089.P13928967062559241948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + (2 * n : ℤ)

end

end A063089.P13928967062559241948

namespace A063089

/-- `A063087(n+1)+2*n` -/
def P13928967062559241948.Spec : Prop :=
  ∀ n, P13928967062559241948.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P17832634935756413371

`A063117(n+1)-4*n`
-/

namespace A063089.P17832634935756413371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063117 (n + 1) - (4 * n : ℤ)

end

end A063089.P17832634935756413371

namespace A063089

/-- `A063117(n+1)-4*n` -/
def P17832634935756413371.Spec : Prop :=
  ∀ n, P17832634935756413371.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P18407355315323525633

`round(A219529(n)+sin(n%6)²)`
-/

namespace A063089.P18407355315323525633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A219529 n : ℝ) + Real.sin ((n % 6 : ℕ) : ℝ) ^ 2)

end

end A063089.P18407355315323525633

namespace A063089

/-- `round(A219529(n)+sin(n%6)²)` -/
def P18407355315323525633.Spec : Prop :=
  ∀ n, P18407355315323525633.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P6384997038971460528

`A063111(n+1)-2*(n+1)`
-/

namespace A063089.P6384997038971460528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - (2 * (n + 1) : ℤ)

end

end A063089.P6384997038971460528

namespace A063089

/-- `A063111(n+1)-2*(n+1)` -/
def P6384997038971460528.Spec : Prop :=
  ∀ n, P6384997038971460528.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P14841158562145547111

`A063238(n+1)-4*(n+1)`
-/

namespace A063089.P14841158562145547111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - (4 * (n + 1) : ℤ)

end

end A063089.P14841158562145547111

namespace A063089

/-- `A063238(n+1)-4*(n+1)` -/
def P14841158562145547111.Spec : Prop :=
  ∀ n, P14841158562145547111.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P13872551501865487245

`∑[A000203(a(n²%3))]-2` with `a(0)=3, a(1)=5`
-/

namespace A063089.P13872551501865487245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A063089.P13872551501865487245

namespace A063089

/-- `∑[A000203(a(n²%3))]-2` -/
def P13872551501865487245.Spec : Prop :=
  ∀ n, P13872551501865487245.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P11370272660303859549

`floor(2/acot(3*n))-A005843(floor(n/3))`
-/

namespace A063089.P11370272660303859549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A005843 ⌊(n : ℚ) / 3⌋.toNat

end

end A063089.P11370272660303859549

namespace A063089

/-- `floor(2/acot(3*n))-A005843(floor(n/3))` -/
def P11370272660303859549.Spec : Prop :=
  ∀ n, P11370272660303859549.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P3838768983214139279

`A219529(n)+A011655(n)`
-/

namespace A063089.P3838768983214139279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A011655 n

end

end A063089.P3838768983214139279

namespace A063089

/-- `A219529(n)+A011655(n)` -/
def P3838768983214139279.Spec : Prop :=
  ∀ n, P3838768983214139279.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P64510749934577501

`A302402(n)+A298024(n)`
-/

namespace A063089.P64510749934577501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 n + A298024 n

end

end A063089.P64510749934577501

namespace A063089

/-- `A302402(n)+A298024(n)` -/
def P64510749934577501.Spec : Prop :=
  ∀ n, P64510749934577501.a n = A063089 (n + 1)

end A063089

/-! ## A063089.P16837505052313447991

`A047281(n+1)+A008486(n)`
-/

namespace A063089.P16837505052313447991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047281 (n + 1) + A008486 n

end

end A063089.P16837505052313447991

namespace A063089

/-- `A047281(n+1)+A008486(n)` -/
def P16837505052313447991.Spec : Prop :=
  ∀ n, P16837505052313447991.a n = A063089 (n + 1)

end A063089

/-!
# A063090: a(n)/(n*n!) is the average number of comparisons needed to find a node in a binary search tree containing n nodes inserted in a random order.

The programs for A063090, the canonical program `A063090.P15246123476556136101` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063090 has offset 1).

The definition of A063090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063090.P15246123476556136101

`(2*(n+1)-1)*n!+(n+2)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063090

/-- `(2*(n+1)-1)*n!+(n+2)*a(n-1)` -/
def P15246123476556136101.Spec : Prop :=
  ∀ n, P15246123476556136101.a n = A063090 (n + 1)

theorem P15246123476556136101.correct : P15246123476556136101.Spec := by
  intro n
  simp only [A063090, Nat.add_sub_cancel]

end A063090

/-! ## A063090.P16588003914349877936

`A288964(n+1)+(n+1)!*(n+1)`
-/

namespace A063090.P16588003914349877936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288964 (n + 1) + (Nat.factorial (n + 1) * (n + 1) : ℤ)

end

end A063090.P16588003914349877936

namespace A063090

/-- `A288964(n+1)+(n+1)!*(n+1)` -/
def P16588003914349877936.Spec : Prop :=
  ∀ n, P16588003914349877936.a n = A063090 (n + 1)

end A063090

/-! ## A063090.P14827939948192090694

`Δ[n!]+(n+1)!+(n+2)*a(n-1)` with `a(0)=1`
-/

namespace A063090.P14827939948192090694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((Nat.factorial (n + 1) : ℤ) + (n + 2 : ℤ) * a (n - 1))

end

end A063090.P14827939948192090694

namespace A063090

/-- `Δ[n!]+(n+1)!+(n+2)*a(n-1)` -/
def P14827939948192090694.Spec : Prop :=
  ∀ n, P14827939948192090694.a n = A063090 (n + 1)

theorem P14827939948192090694.correct : P14827939948192090694.Spec := by
  intro n
  simp only [A063090, Nat.add_sub_cancel, A063090.P14827939948192090694.f1, A063090.P14827939948192090694.a, A063090.P15246123476556136101.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A063090

/-! ## A063090.P5349168514642653206

`Δ[∑[A288964(n)]+(n+1)!]`
-/

namespace A063090.P5349168514642653206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288964 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063090.P5349168514642653206

namespace A063090

/-- `Δ[∑[A288964(n)]+(n+1)!]` -/
def P5349168514642653206.Spec : Prop :=
  ∀ n, P5349168514642653206.a n = A063090 (n + 1)

end A063090

/-! ## A063090.P7567499657174941717

`A288964(n+1)+Δ[(n+1)!]`
-/

namespace A063090.P7567499657174941717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288964 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063090.P7567499657174941717

namespace A063090

/-- `A288964(n+1)+Δ[(n+1)!]` -/
def P7567499657174941717.Spec : Prop :=
  ∀ n, P7567499657174941717.a n = A063090 (n + 1)

end A063090

/-! ## A063090.P14687859718528753932

`A288964(n+1)+A001563(n+1)`
-/

namespace A063090.P14687859718528753932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288964 (n + 1) + A001563 (n + 1)

end

end A063090.P14687859718528753932

namespace A063090

/-- `A288964(n+1)+A001563(n+1)` -/
def P14687859718528753932.Spec : Prop :=
  ∀ n, P14687859718528753932.a n = A063090 (n + 1)

end A063090

/-! ## A063090.P7342715153252742964

`2*A001705(n+1)-A001563(n+1)`
-/

namespace A063090.P7342715153252742964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001705 (n + 1) - A001563 (n + 1)

end

end A063090.P7342715153252742964

namespace A063090

/-- `2*A001705(n+1)-A001563(n+1)` -/
def P7342715153252742964.Spec : Prop :=
  ∀ n, P7342715153252742964.a n = A063090 (n + 1)

end A063090

/-!
# A063091: Prime(n) such that gcd(1+prime(n+1), 1+prime(n)) = gcd(-1+prime(n+1), -1+prime(n)).

The programs for A063091, there is no canonical definition to state claims against.
-/

/-! ## A063091.P8812058408372418824

`p?[A348253(n+1)-2]`
-/

namespace A063091.P8812058408372418824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348253 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063091.P8812058408372418824

/-! ## A063091.P17535642659855273309

`p?[lcm(n, A104725(n+2))]`
-/

namespace A063091.P17535642659855273309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A104725 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A063091.P17535642659855273309

/-! ## A063091.P8005513701531921117

`record[A124588(A299755(n+1))]`
-/

namespace A063091.P8005513701531921117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (A299755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063091.P8005513701531921117

/-! ## A063091.P5408980884441351393

`A064989(32*A067829(n+1))`
-/

namespace A063091.P5408980884441351393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (32 * A067829 (n + 1)).toNat

end

end A063091.P5408980884441351393

/-! ## A063091.P5378895753275744482

`A124588(n+1)%A133979(n+1)`
-/

namespace A063091.P5378895753275744482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124588 (n + 1)) (A133979 (n + 1))

end

end A063091.P5378895753275744482

/-!
# A063092: a(0)=1, a(1)=2 and, for n>1, a(n) = a(n-1) + 11*a(n-2).

The programs for A063092, the canonical program `A063092.P9419264726208611187` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063092 has offset 0).

The definition of A063092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+11*a(n-2)` (program `A063092.P9419264726208611187`, by `A063092.P9419264726208611187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A063092.P9419264726208611187

`a(n-1)+11*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063092

/-- `a(n-1)+11*a(n-2)` -/
def P9419264726208611187.Spec : Prop :=
  ∀ n, (P9419264726208611187.a n : ℤ) = A063092 n

theorem P9419264726208611187.correct : P9419264726208611187.Spec := by
  intro n
  simp only [A063092]

end A063092

/-! ## A063092.P16434396722031248436

`ogf((1+x)/(1-x-11x^2))`
-/

namespace A063092.P16434396722031248436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -11] n

end

end A063092.P16434396722031248436

namespace A063092

/-- `ogf((1+x)/(1-x-11x^2))` -/
def P16434396722031248436.Spec : Prop :=
  ∀ n, P16434396722031248436.a n = A063092 n

end A063092

/-! ## A063092.P16486381609094529187

`a(n-1)+lcm(11, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A063092.P16486381609094529187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 11 (a (n - 2))

end

end A063092.P16486381609094529187

namespace A063092

/-- `a(n-1)+lcm(11, a(n-2))` -/
def P16486381609094529187.Spec : Prop :=
  ∀ n, (P16486381609094529187.a n : ℤ) = A063092 n

end A063092

/-! ## A063092.P10702259202376026997

`12*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A063092.P10702259202376026997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  12 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A063092.P10702259202376026997

namespace A063092

/-- `12*a(n-2)-(a(n-2)-a(n-1))` -/
def P10702259202376026997.Spec : Prop :=
  ∀ n, P10702259202376026997.a n = A063092 n

end A063092

/-! ## A063092.P2492987311187733845

`a(n-1)+A008592(a(n-2))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A063092.P2492987311187733845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A008592 (a (n - 2)).toNat + a (n - 2))

end

end A063092.P2492987311187733845

namespace A063092

/-- `a(n-1)+A008592(a(n-2))+a(n-2)` -/
def P2492987311187733845.Spec : Prop :=
  ∀ n, P2492987311187733845.a n = A063092 n

end A063092

/-!
# A063093: Dimension of the space of weight 2n cusp forms for Gamma_0( 25 ).

The programs for A063093, the canonical program `A063093.P2165217873853411307` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063093 has offset 1).

The definition of A063093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063093.P2165217873853411307

`10*(n+1)-a(n-1)-16` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063093

/-- `10*(n+1)-a(n-1)-16` -/
def P2165217873853411307.Spec : Prop :=
  ∀ n, P2165217873853411307.a n = A063093 (n + 1)

theorem P2165217873853411307.correct : P2165217873853411307.Spec := by
  intro n
  simp only [A063093, Nat.add_sub_cancel]

end A063093

/-! ## A063093.P8168203828973215383

`record[ceil(n-tan(n%10))]`
-/

namespace A063093.P8168203828973215383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - Real.tan ((n % 10 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063093.P8168203828973215383

namespace A063093

/-- `record[ceil(n-tan(n%10))]` -/
def P8168203828973215383.Spec : Prop :=
  ∀ n, P8168203828973215383.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P17362137163203637724

`a(n-2)+10` with `a(0)=0, a(1)=5, a(2)=9`
-/

namespace A063093.P17362137163203637724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 9] fun n a =>
  a (n - 2) + 10

end

end A063093.P17362137163203637724

namespace A063093

/-- `a(n-2)+10` -/
def P17362137163203637724.Spec : Prop :=
  ∀ n, (P17362137163203637724.a n : ℤ) = A063093 (n + 1)

end A063093

/-! ## A063093.P12195371980844090249

`∑[abs(a(n-2))]` with `a(0)=0, a(1)=5, a(2)=4, a(3)=6`
-/

namespace A063093.P12195371980844090249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063093.P12195371980844090249

namespace A063093

/-- `∑[abs(a(n-2))]` -/
def P12195371980844090249.Spec : Prop :=
  ∀ n, (P12195371980844090249.a n : ℤ) = A063093 (n + 1)

end A063093

/-! ## A063093.P8542263356303952656

`∑[10-a(n-1)]` with `a(0)=0, a(1)=5, a(2)=4`
-/

namespace A063093.P8542263356303952656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 4] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063093.P8542263356303952656

namespace A063093

/-- `∑[10-a(n-1)]` -/
def P8542263356303952656.Spec : Prop :=
  ∀ n, P8542263356303952656.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P7534328065545602415

`∑[∑[ogf((5x+4x^2+x^3)/(1+x))]]`
-/

namespace A063093.P7534328065545602415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 4, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063093.P7534328065545602415

namespace A063093

/-- `∑[∑[ogf((5x+4x^2+x^3)/(1+x))]]` -/
def P7534328065545602415.Spec : Prop :=
  ∀ n, P7534328065545602415.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P17508846966913365703

`ogf((5x+4x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063093.P17508846966913365703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 4, 1] [1, -1, -1, 1] n

end

end A063093.P17508846966913365703

namespace A063093

/-- `ogf((5x+4x^2+x^3)/(1-x-x^2+x^3))` -/
def P17508846966913365703.Spec : Prop :=
  ∀ n, P17508846966913365703.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P14172774621522922127

`5*n-a(n-1)%gcd(2, n)` with `a(0)=0`
-/

namespace A063093.P14172774621522922127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - Int.tmod (a (n - 1)) (Nat.gcd 2 n : ℤ)

end

end A063093.P14172774621522922127

namespace A063093

/-- `5*n-a(n-1)%gcd(2, n)` -/
def P14172774621522922127.Spec : Prop :=
  ∀ n, P14172774621522922127.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P10822369961444494046

`A063097(n+1)-2`
-/

namespace A063093.P10822369961444494046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1) - 2

end

end A063093.P10822369961444494046

namespace A063093

/-- `A063097(n+1)-2` -/
def P10822369961444494046.Spec : Prop :=
  ∀ n, P10822369961444494046.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P7815157130285647027

`A063225(n+1)-3`
-/

namespace A063093.P7815157130285647027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063225 (n + 1) - 3

end

end A063093.P7815157130285647027

namespace A063093

/-- `A063225(n+1)-3` -/
def P7815157130285647027.Spec : Prop :=
  ∀ n, P7815157130285647027.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P15886308383140980755

`A008458(n)-or(1, n)`
-/

namespace A063093.P15886308383140980755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (Nat.lor 1 n : ℤ)

end

end A063093.P15886308383140980755

namespace A063093

/-- `A008458(n)-or(1, n)` -/
def P15886308383140980755.Spec : Prop :=
  ∀ n, P15886308383140980755.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P1104267890348162826

`A008706(n)-char[2*n]`
-/

namespace A063093.P1104267890348162826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A063093.P1104267890348162826

namespace A063093

/-- `A008706(n)-char[2*n]` -/
def P1104267890348162826.Spec : Prop :=
  ∀ n, P1104267890348162826.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P15354862769091695682

`∑[A000005(or(16, a(n-1)))]` with `a(0)=0`
-/

namespace A063093.P15354862769091695682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (Int.lor 16 (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063093.P15354862769091695682

namespace A063093

/-- `∑[A000005(or(16, a(n-1)))]` -/
def P15354862769091695682.Spec : Prop :=
  ∀ n, P15354862769091695682.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P12663983544918997305

`A063094(n+1)-2*(n+1)`
-/

namespace A063093.P12663983544918997305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (n + 1) - (2 * (n + 1) : ℤ)

end

end A063093.P12663983544918997305

namespace A063093

/-- `A063094(n+1)-2*(n+1)` -/
def P12663983544918997305.Spec : Prop :=
  ∀ n, P12663983544918997305.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P18158027579259790486

`A063237(n+1)-2*(n+2)`
-/

namespace A063093.P18158027579259790486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063237 (n + 1) - (2 * (n + 2) : ℤ)

end

end A063093.P18158027579259790486

namespace A063093

/-- `A063237(n+1)-2*(n+2)` -/
def P18158027579259790486.Spec : Prop :=
  ∀ n, P18158027579259790486.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P7599792731959955748

`A063109(n+1)-(2*n+3)`
-/

namespace A063093.P7599792731959955748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063109 (n + 1) - (2 * n + 3 : ℤ)

end

end A063093.P7599792731959955748

namespace A063093

/-- `A063109(n+1)-(2*n+3)` -/
def P7599792731959955748.Spec : Prop :=
  ∀ n, P7599792731959955748.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P10452718774090555735

`A063121(n+1)-4*(n+1)`
-/

namespace A063093.P10452718774090555735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063121 (n + 1) - (4 * (n + 1) : ℤ)

end

end A063093.P10452718774090555735

namespace A063093

/-- `A063121(n+1)-4*(n+1)` -/
def P10452718774090555735.Spec : Prop :=
  ∀ n, P10452718774090555735.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P7044661719662501205

`A146951(n)+A057428(n)`
-/

namespace A063093.P7044661719662501205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n + A057428 n

end

end A063093.P7044661719662501205

namespace A063093

/-- `A146951(n)+A057428(n)` -/
def P7044661719662501205.Spec : Prop :=
  ∀ n, P7044661719662501205.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P1374155183866467322

`A146763(n)+A062157(n)`
-/

namespace A063093.P1374155183866467322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n + A062157 n

end

end A063093.P1374155183866467322

namespace A063093

/-- `A146763(n)+A062157(n)` -/
def P1374155183866467322.Spec : Prop :=
  ∀ n, P1374155183866467322.a n = A063093 (n + 1)

end A063093

/-! ## A063093.P6898932662333474919

`A016861(n)-A040001(n)`
-/

namespace A063093.P6898932662333474919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A040001 n

end

end A063093.P6898932662333474919

namespace A063093

/-- `A016861(n)-A040001(n)` -/
def P6898932662333474919.Spec : Prop :=
  ∀ n, P6898932662333474919.a n = A063093 (n + 1)

end A063093

/-!
# A063094: Dimension of the space of weight 2n cusp forms for Gamma_0( 26 ).

The programs for A063094, the canonical program `A063094.P12013425033750332175` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063094 has offset 1).

The definition of A063094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063094.P12013425033750332175

`a(n-2)+14` with `a(0)=2, a(1)=9, a(2)=15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063094

/-- `a(n-2)+14` -/
def P12013425033750332175.Spec : Prop :=
  ∀ n, (P12013425033750332175.a n : ℤ) = A063094 (n + 1)

theorem P12013425033750332175.correct : P12013425033750332175.Spec := by
  intro n
  simp only [A063094, Nat.add_sub_cancel]

end A063094

/-! ## A063094.P2213645726046708266

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=7, a(2)=6, a(3)=8`
-/

namespace A063094.P2213645726046708266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 6, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063094.P2213645726046708266

namespace A063094

/-- `∑[abs(a(n-2))]` -/
def P2213645726046708266.Spec : Prop :=
  ∀ n, (P2213645726046708266.a n : ℤ) = A063094 (n + 1)

end A063094

/-! ## A063094.P16841117170293826746

`∑[14-a(n-1)]` with `a(0)=2, a(1)=7, a(2)=6`
-/

namespace A063094.P16841117170293826746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 6] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063094.P16841117170293826746

namespace A063094

/-- `∑[14-a(n-1)]` -/
def P16841117170293826746.Spec : Prop :=
  ∀ n, P16841117170293826746.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P15558986639804484072

`(n%2)^n+7*n+1`
-/

namespace A063094.P15558986639804484072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + (7 * n + 1)

end

end A063094.P15558986639804484072

namespace A063094

/-- `(n%2)^n+7*n+1` -/
def P15558986639804484072.Spec : Prop :=
  ∀ n, (P15558986639804484072.a n : ℤ) = A063094 (n + 1)

end A063094

/-! ## A063094.P5488864003246191021

`∏{p}[n, #%2]+7*n+1`
-/

namespace A063094.P5488864003246191021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p % 2 + (7 * n + 1)

end

end A063094.P5488864003246191021

namespace A063094

/-- `∏{p}[n, #%2]+7*n+1` -/
def P5488864003246191021.Spec : Prop :=
  ∀ n, (P5488864003246191021.a n : ℤ) = A063094 (n + 1)

end A063094

/-! ## A063094.P6622076000204098857

`7*n+2-char[2*(n+1)]`
-/

namespace A063094.P6622076000204098857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A063094.P6622076000204098857

namespace A063094

/-- `7*n+2-char[2*(n+1)]` -/
def P6622076000204098857.Spec : Prop :=
  ∀ n, P6622076000204098857.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P2077183735540533013

`abs(2-A063237(n+1))`
-/

namespace A063094.P2077183735540533013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A063237 (n + 1)|

end

end A063094.P2077183735540533013

namespace A063094

/-- `abs(2-A063237(n+1))` -/
def P2077183735540533013.Spec : Prop :=
  ∀ n, P2077183735540533013.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P16084843534713591057

`xor(A054977(n), A238290(n))`
-/

namespace A063094.P16084843534713591057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A238290 n)

end

end A063094.P16084843534713591057

namespace A063094

/-- `xor(A054977(n), A238290(n))` -/
def P16084843534713591057.Spec : Prop :=
  ∀ n, P16084843534713591057.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P14572759685287084316

`A063126(n+1)%A017113(n)`
-/

namespace A063094.P14572759685287084316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063126 (n + 1)) (A017113 n)

end

end A063094.P14572759685287084316

namespace A063094

/-- `A063126(n+1)%A017113(n)` -/
def P14572759685287084316.Spec : Prop :=
  ∀ n, P14572759685287084316.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P11918942307428567937

`A063142(n+1)%A017593(n)`
-/

namespace A063094.P11918942307428567937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063142 (n + 1)) (A017593 n)

end

end A063094.P11918942307428567937

namespace A063094

/-- `A063142(n+1)%A017593(n)` -/
def P11918942307428567937.Spec : Prop :=
  ∀ n, P11918942307428567937.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P3899152186365497628

`A063150(n+1)%A147587(n)`
-/

namespace A063094.P3899152186365497628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063150 (n + 1)) (A147587 n)

end

end A063094.P3899152186365497628

namespace A063094

/-- `A063150(n+1)%A147587(n)` -/
def P3899152186365497628.Spec : Prop :=
  ∀ n, P3899152186365497628.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P6536712620998574068

`A177060(n)%A063237(n+1)`
-/

namespace A063094.P6536712620998574068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177060 n) (A063237 (n + 1))

end

end A063094.P6536712620998574068

namespace A063094

/-- `A177060(n)%A063237(n+1)` -/
def P6536712620998574068.Spec : Prop :=
  ∀ n, P6536712620998574068.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P14735721861197036065

`A063157(n+1)%A004770(n+1)`
-/

namespace A063094.P14735721861197036065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063157 (n + 1)) (A004770 (n + 1))

end

end A063094.P14735721861197036065

namespace A063094

/-- `A063157(n+1)%A004770(n+1)` -/
def P14735721861197036065.Spec : Prop :=
  ∀ n, P14735721861197036065.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P15314357280106748897

`A063133(n+1)%A113803(n+1)`
-/

namespace A063094.P15314357280106748897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063133 (n + 1)) (A113803 (n + 1))

end

end A063094.P15314357280106748897

namespace A063094

/-- `A063133(n+1)%A113803(n+1)` -/
def P15314357280106748897.Spec : Prop :=
  ∀ n, P15314357280106748897.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P4383710055760260674

`A063130(n+1)%A143988(n+1)`
-/

namespace A063094.P4383710055760260674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063130 (n + 1)) (A143988 (n + 1))

end

end A063094.P4383710055760260674

namespace A063094

/-- `A063130(n+1)%A143988(n+1)` -/
def P4383710055760260674.Spec : Prop :=
  ∀ n, P4383710055760260674.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P6847758954052845712

`Δ[A008253(n)+(1-n)²]`
-/

namespace A063094.P6847758954052845712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063094.P6847758954052845712

namespace A063094

/-- `Δ[A008253(n)+(1-n)²]` -/
def P6847758954052845712.Spec : Prop :=
  ∀ n, P6847758954052845712.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P15710762481706717631

`Δ[A009946(n)-(n+1)²]`
-/

namespace A063094.P15710762481706717631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063094.P15710762481706717631

namespace A063094

/-- `Δ[A009946(n)-(n+1)²]` -/
def P15710762481706717631.Spec : Prop :=
  ∀ n, P15710762481706717631.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P3964180721254399496

`record[A138995(n+1)+or(1, n)]`
-/

namespace A063094.P3964180721254399496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138995 (n + 1) + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063094.P3964180721254399496

namespace A063094

/-- `record[A138995(n+1)+or(1, n)]` -/
def P3964180721254399496.Spec : Prop :=
  ∀ n, P3964180721254399496.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P7033082433213915410

`A004274(A047276(n+1))`
-/

namespace A063094.P7033082433213915410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A047276 (n + 1)).toNat

end

end A063094.P7033082433213915410

namespace A063094

/-- `A004274(A047276(n+1))` -/
def P7033082433213915410.Spec : Prop :=
  ∀ n, P7033082433213915410.a n = A063094 (n + 1)

end A063094

/-! ## A063094.P11147490435845210327

`∩[A047353(n+1), A130773(n)]`
-/

namespace A063094.P11147490435845210327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A063094.P11147490435845210327

namespace A063094

/-- `∩[A047353(n+1), A130773(n)]` -/
def P11147490435845210327.Spec : Prop :=
  ∀ n, (P11147490435845210327.a n : ℤ) = A063094 (n + 1)

end A063094

/-!
# A063095: Record prime gap among first n+1 primes.

The programs for A063095, there is no canonical definition to state claims against.
-/

/-! ## A063095.P32234185044501033

`A005250(∑[char[A005669(n+1)-1]])`
-/

namespace A063095.P32234185044501033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063095.P32234185044501033

/-! ## A063095.P268941466196761553

`A327441(A000040(n+2)-A327441(n+2))`
-/

namespace A063095.P268941466196761553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A000040 (n + 2) - A327441 (n + 2)).toNat

end

end A063095.P268941466196761553

/-! ## A063095.P15777387607669268827

`A327441(A000040(n+1))`
-/

namespace A063095.P15777387607669268827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A000040 (n + 1)).toNat

end

end A063095.P15777387607669268827

/-! ## A063095.P13499562572660784237

`A327441(A072388(n+1))`
-/

namespace A063095.P13499562572660784237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A072388 (n + 1)).toNat

end

end A063095.P13499562572660784237

/-! ## A063095.P1460442921610476112

`A327441(A008578(n+2))`
-/

namespace A063095.P1460442921610476112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A008578 (n + 2)).toNat

end

end A063095.P1460442921610476112

/-! ## A063095.P11705672021205503452

`A327441(record[A006530(n+2)])`
-/

namespace A063095.P11705672021205503452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P11705672021205503452

/-! ## A063095.P18038071551234950627

`A327441(record[A020639(n+2)])`
-/

namespace A063095.P18038071551234950627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P18038071551234950627

/-! ## A063095.P6860442586172181287

`A327441(A006093(n+1)+1)`
-/

namespace A063095.P6860442586172181287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A006093 (n + 1) + 1).toNat

end

end A063095.P6860442586172181287

/-! ## A063095.P8104614303988700010

`A327441(record[A000010(n+1)+1])`
-/

namespace A063095.P8104614303988700010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P8104614303988700010

/-! ## A063095.P10673405356805897097

`A327441(p?[2*n+1]-1)`
-/

namespace A063095.P10673405356805897097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A063095.P10673405356805897097

/-! ## A063095.P14829299699266539868

`A327441(A078444(n+1))`
-/

namespace A063095.P14829299699266539868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A078444 (n + 1)).toNat

end

end A063095.P14829299699266539868

/-! ## A063095.P13663486870435467957

`A327441(A006093(n+2))`
-/

namespace A063095.P13663486870435467957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A006093 (n + 2)).toNat

end

end A063095.P13663486870435467957

/-! ## A063095.P16670984721616117842

`A327441(A039915(n+2))`
-/

namespace A063095.P16670984721616117842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A039915 (n + 2)).toNat

end

end A063095.P16670984721616117842

/-! ## A063095.P13425992246863957828

`A327441(A071894(n+2))`
-/

namespace A063095.P13425992246863957828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A071894 (n + 2)).toNat

end

end A063095.P13425992246863957828

/-! ## A063095.P9243149866720775178

`A327441(record[A000010(n+3)])`
-/

namespace A063095.P9243149866720775178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P9243149866720775178

/-! ## A063095.P1749132568365243269

`A327441(record[p?[n-A327441(n+2)]])`
-/

namespace A063095.P1749132568365243269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A327441 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P1749132568365243269

/-! ## A063095.P3745099815580347595

`A327441(record[A014963(n+2)])`
-/

namespace A063095.P3745099815580347595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P3745099815580347595

/-! ## A063095.P57479985044239042

`A327441(record[p?[A004151(n+1)]])`
-/

namespace A063095.P57479985044239042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A063095.P57479985044239042

/-! ## A063095.P5789783723802630005

`A327441(A004789(n+1))`
-/

namespace A063095.P5789783723802630005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327441 (A004789 (n + 1)).toNat

end

end A063095.P5789783723802630005

/-!
# A063096: Non-record differences among consecutive primes.

The programs for A063096, there is no canonical definition to state claims against.
-/

/-! ## A063096.P8113702485982207192

`2*eq[1, Δ[A077019(n)]]`
-/

namespace A063096.P8113702485982207192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063096.P8113702485982207192

/-! ## A063096.P15654833855684523794

`2*comp[floor(A005250(n+1)/2)]`
-/

namespace A063096.P15654833855684523794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005250 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063096.P15654833855684523794

/-! ## A063096.P10295416621289684475

`2*comp[floor(A085237(n+1)/2)]`
-/

namespace A063096.P10295416621289684475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085237 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063096.P10295416621289684475

/-! ## A063096.P5268866256328615064

`A005843(eq[1, Δ[A077019(n)]])`
-/

namespace A063096.P5268866256328615064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A063096.P5268866256328615064

/-! ## A063096.P17167876308530484135

`A004280(eq[1, Δ[A077019(n)]])+3`
-/

namespace A063096.P17167876308530484135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A063096.P17167876308530484135

/-! ## A063096.P4785833519884456051

`A008586(eq[1, Δ[A077019(n)]])/2`
-/

namespace A063096.P4785833519884456051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A063096.P4785833519884456051

/-! ## A063096.P16180687134785650226

`A008592(eq[1, Δ[A077019(n)]])/5`
-/

namespace A063096.P16180687134785650226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 5

end

end A063096.P16180687134785650226

/-!
# A063097: Dimension of the space of weight 2n cusp forms for Gamma_0( 29 ).

The programs for A063097, the canonical program `A063097.P5701228531185743437` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063097 has offset 1).

The definition of A063097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A063097.P5701228531185743437

`10*(n+1)-a(n-1)-12` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063097

/-- `10*(n+1)-a(n-1)-12` -/
def P5701228531185743437.Spec : Prop :=
  ∀ n, P5701228531185743437.a n = A063097 (n + 1)

theorem P5701228531185743437.correct : P5701228531185743437.Spec := by
  intro n
  simp only [A063097, Nat.add_sub_cancel]

end A063097

/-! ## A063097.P4011580118030411422

`a(n-2)+10` with `a(0)=2, a(1)=7, a(2)=11`
-/

namespace A063097.P4011580118030411422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 11] fun n a =>
  a (n - 2) + 10

end

end A063097.P4011580118030411422

namespace A063097

/-- `a(n-2)+10` -/
def P4011580118030411422.Spec : Prop :=
  ∀ n, (P4011580118030411422.a n : ℤ) = A063097 (n + 1)

end A063097

/-! ## A063097.P8772963598439382938

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=5, a(2)=4, a(3)=6`
-/

namespace A063097.P8772963598439382938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063097.P8772963598439382938

namespace A063097

/-- `∑[abs(a(n-2))]` -/
def P8772963598439382938.Spec : Prop :=
  ∀ n, (P8772963598439382938.a n : ℤ) = A063097 (n + 1)

end A063097

/-! ## A063097.P35318572068693475

`∑[10-a(n-1)]` with `a(0)=2, a(1)=5, a(2)=4`
-/

namespace A063097.P35318572068693475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 4] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063097.P35318572068693475

namespace A063097

/-- `∑[10-a(n-1)]` -/
def P35318572068693475.Spec : Prop :=
  ∀ n, P35318572068693475.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P12578523274145048783

`∑[∑[ogf((2+5x+2x^2+x^3)/(1+x))]]`
-/

namespace A063097.P12578523274145048783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063097.P12578523274145048783

namespace A063097

/-- `∑[∑[ogf((2+5x+2x^2+x^3)/(1+x))]]` -/
def P12578523274145048783.Spec : Prop :=
  ∀ n, P12578523274145048783.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P14174276532051785805

`ogf((2+5x+2x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A063097.P14174276532051785805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2, 1] [1, -1, -1, 1] n

end

end A063097.P14174276532051785805

namespace A063097

/-- `ogf((2+5x+2x^2+x^3)/(1-x-x^2+x^3))` -/
def P14174276532051785805.Spec : Prop :=
  ∀ n, P14174276532051785805.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P2548119930636724990

`(n%2)^n+5*n+1`
-/

namespace A063097.P2548119930636724990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + (5 * n + 1)

end

end A063097.P2548119930636724990

namespace A063097

/-- `(n%2)^n+5*n+1` -/
def P2548119930636724990.Spec : Prop :=
  ∀ n, (P2548119930636724990.a n : ℤ) = A063097 (n + 1)

end A063097

/-! ## A063097.P18023184604645048723

`10*n-2-a(n-1)` with `a(0)=2, a(1)=7`
-/

namespace A063097.P18023184604645048723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  (10 * n : ℤ) - 2 - a (n - 1)

end

end A063097.P18023184604645048723

namespace A063097

/-- `10*n-2-a(n-1)` -/
def P18023184604645048723.Spec : Prop :=
  ∀ n, P18023184604645048723.a n = A063097 (n + 1)

theorem P18023184604645048723.correct : P18023184604645048723.Spec := by
  intro n
  simp only [A063097, Nat.add_sub_cancel, A063097.P18023184604645048723.a, A063097.P5701228531185743437.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A063097

/-! ## A063097.P9985972020593006666

`5*n+2-char[2*(n+1)]`
-/

namespace A063097.P9985972020593006666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A063097.P9985972020593006666

namespace A063097

/-- `5*n+2-char[2*(n+1)]` -/
def P9985972020593006666.Spec : Prop :=
  ∀ n, P9985972020593006666.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P65534980634650962

`∑[A260720(a(n-1))]` with `a(0)=2`
-/

namespace A063097.P65534980634650962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A260720 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063097.P65534980634650962

namespace A063097

/-- `∑[A260720(a(n-1))]` -/
def P65534980634650962.Spec : Prop :=
  ∀ n, P65534980634650962.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P5105227152222938038

`∑[A000010(a(and(1, n+1))+5)]` with `a(0)=2, a(1)=5`
-/

namespace A063097.P5105227152222938038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  A000010 (f1 (Nat.land 1 (n + 1)) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063097.P5105227152222938038

namespace A063097

/-- `∑[A000010(a(and(1, n+1))+5)]` -/
def P5105227152222938038.Spec : Prop :=
  ∀ n, P5105227152222938038.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P8519789619655371949

`xor(A054977(n), A146951(n))`
-/

namespace A063097.P8519789619655371949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 n) (A146951 n)

end

end A063097.P8519789619655371949

namespace A063097

/-- `xor(A054977(n), A146951(n))` -/
def P8519789619655371949.Spec : Prop :=
  ∀ n, P8519789619655371949.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P12800476320823765701

`A063142(n+1)%A017017(n)`
-/

namespace A063097.P12800476320823765701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063142 (n + 1)) (A017017 n)

end

end A063097.P12800476320823765701

namespace A063097

/-- `A063142(n+1)%A017017(n)` -/
def P12800476320823765701.Spec : Prop :=
  ∀ n, P12800476320823765701.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P3345304042289462356

`A063126(n+1)%A017317(n)`
-/

namespace A063097.P3345304042289462356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063126 (n + 1)) (A017317 n)

end

end A063097.P3345304042289462356

namespace A063097

/-- `A063126(n+1)%A017317(n)` -/
def P3345304042289462356.Spec : Prop :=
  ∀ n, P3345304042289462356.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P4924860867649680554

`A063157(n+1)%A017329(n)`
-/

namespace A063097.P4924860867649680554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063157 (n + 1)) (A017329 n)

end

end A063097.P4924860867649680554

namespace A063097

/-- `A063157(n+1)%A017329(n)` -/
def P4924860867649680554.Spec : Prop :=
  ∀ n, P4924860867649680554.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P15331331297301082222

`A017581(n)%A063211(n+1)`
-/

namespace A063097.P15331331297301082222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A063211 (n + 1))

end

end A063097.P15331331297301082222

namespace A063097

/-- `A017581(n)%A063211(n+1)` -/
def P15331331297301082222.Spec : Prop :=
  ∀ n, P15331331297301082222.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P7739001933205113506

`lcm(A054977(n), A131229(n+1))`
-/

namespace A063097.P7739001933205113506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A131229 (n + 1))

end

end A063097.P7739001933205113506

namespace A063097

/-- `lcm(A054977(n), A131229(n+1))` -/
def P7739001933205113506.Spec : Prop :=
  ∀ n, (P7739001933205113506.a n : ℤ) = A063097 (n + 1)

end A063097

/-! ## A063097.P4726091953902444874

`A063147(n+1)%A063246(n+1)`
-/

namespace A063097.P4726091953902444874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063147 (n + 1)) (A063246 (n + 1))

end

end A063097.P4726091953902444874

namespace A063097

/-- `A063147(n+1)%A063246(n+1)` -/
def P4726091953902444874.Spec : Prop :=
  ∀ n, P4726091953902444874.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P12191529126044664153

`A063151(n+1)%A143988(n+1)`
-/

namespace A063097.P12191529126044664153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063151 (n + 1)) (A143988 (n + 1))

end

end A063097.P12191529126044664153

namespace A063097

/-- `A063151(n+1)%A143988(n+1)` -/
def P12191529126044664153.Spec : Prop :=
  ∀ n, P12191529126044664153.a n = A063097 (n + 1)

end A063097

/-! ## A063097.P9122290764009252599

`A063232(n+1)%A268044(n+1)`
-/

namespace A063097.P9122290764009252599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063232 (n + 1)) (A268044 (n + 1))

end

end A063097.P9122290764009252599

namespace A063097

/-- `A063232(n+1)%A268044(n+1)` -/
def P9122290764009252599.Spec : Prop :=
  ∀ n, P9122290764009252599.a n = A063097 (n + 1)

end A063097

/-!
# A063098: Dimension of the space of weight 2n cusp forms for Gamma_0( 30 ).

The programs for A063098, the canonical program `A063098.P8706081463228139583` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063098 has offset 1).

The definition of A063098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063098.P8706081463228139583

`a(n-1)+12` with `a(0)=3, a(1)=14`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063098

/-- `a(n-1)+12` -/
def P8706081463228139583.Spec : Prop :=
  ∀ n, (P8706081463228139583.a n : ℤ) = A063098 (n + 1)

theorem P8706081463228139583.correct : P8706081463228139583.Spec := by
  intro n
  simp only [A063098, Nat.add_sub_cancel]

end A063098

/-!
# A063099: Dimension of the space of weight 2n cusp forms for Gamma_0( 31 ).

The programs for A063099, the canonical program `A063099.P13926399446587245033` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A063099 has offset 1).

The definition of A063099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A063099.P13926399446587245033

`a(n-3)+16` with `a(0)=2, a(1)=7, a(2)=13, a(3)=17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A063099

/-- `a(n-3)+16` -/
def P13926399446587245033.Spec : Prop :=
  ∀ n, (P13926399446587245033.a n : ℤ) = A063099 (n + 1)

theorem P13926399446587245033.correct : P13926399446587245033.Spec := by
  intro n
  simp only [A063099, Nat.add_sub_cancel]

end A063099

/-! ## A063099.P11706732814297040732

`ceil(2/acot(ceil(8*n/3)))`
-/

namespace A063099.P11706732814297040732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (⌈8 * ((n : ℚ) / 3)⌉ : ℝ)⌉

end

end A063099.P11706732814297040732

namespace A063099

/-- `ceil(2/acot(ceil(8*n/3)))` -/
def P11706732814297040732.Spec : Prop :=
  ∀ n, P11706732814297040732.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P15915173639138504072

`∑[abs(a(n-3))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=4, a(4)=6`
-/

namespace A063099.P15915173639138504072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063099.P15915173639138504072

namespace A063099

/-- `∑[abs(a(n-3))]` -/
def P15915173639138504072.Spec : Prop :=
  ∀ n, (P15915173639138504072.a n : ℤ) = A063099 (n + 1)

end A063099

/-! ## A063099.P6790634538632133418

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=4, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A063099.P6790634538632133418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063099.P6790634538632133418

namespace A063099

/-- `∑[floor(a(n-3))]` -/
def P6790634538632133418.Spec : Prop :=
  ∀ n, (P6790634538632133418.a n : ℤ) = A063099 (n + 1)

end A063099

/-! ## A063099.P18327784696339385905

`∑[a(n-3)%7]` with `a(0)=2, a(1)=5, a(2)=6, a(3)=4, a(4)=6`
-/

namespace A063099.P18327784696339385905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6, 4, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063099.P18327784696339385905

namespace A063099

/-- `∑[a(n-3)%7]` -/
def P18327784696339385905.Spec : Prop :=
  ∀ n, (P18327784696339385905.a n : ℤ) = A063099 (n + 1)

end A063099

/-! ## A063099.P857211558660812981

`∑[7-gcd(3, n)-C(2, n+1)]`
-/

namespace A063099.P857211558660812981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (Nat.gcd 3 n : ℤ) - (Nat.choose 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063099.P857211558660812981

namespace A063099

/-- `∑[7-gcd(3, n)-C(2, n+1)]` -/
def P857211558660812981.Spec : Prop :=
  ∀ n, P857211558660812981.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P15351181815768330160

`Δ[ogf((1+x+5x^2+5x^3+3x^4+x^5)/(1-2x+x^2-x^3+2x^4-x^5))]`
-/

namespace A063099.P15351181815768330160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 5, 3, 1] [1, -2, 1, -1, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063099.P15351181815768330160

namespace A063099

/-- `Δ[ogf((1+x+5x^2+5x^3+3x^4+x^5)/(1-2x+x^2-x^3+2x^4-x^5))]` -/
def P15351181815768330160.Spec : Prop :=
  ∀ n, P15351181815768330160.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P944370744249357743

`A063089(n+1)+1`
-/

namespace A063099.P944370744249357743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) + 1

end

end A063099.P944370744249357743

namespace A063099

/-- `A063089(n+1)+1` -/
def P944370744249357743.Spec : Prop :=
  ∀ n, P944370744249357743.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P13477082772109742653

`A063218(n+1)-1`
-/

namespace A063099.P13477082772109742653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063218 (n + 1) - 1

end

end A063099.P13477082772109742653

namespace A063099

/-- `A063218(n+1)-1` -/
def P13477082772109742653.Spec : Prop :=
  ∀ n, P13477082772109742653.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P12264550591394291739

`A063087(n+1)+Δ[n²]`
-/

namespace A063099.P12264550591394291739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063087 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063099.P12264550591394291739

namespace A063099

/-- `A063087(n+1)+Δ[n²]` -/
def P12264550591394291739.Spec : Prop :=
  ∀ n, P12264550591394291739.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P6736500551997276169

`A063111(n+1)-Δ[n²]`
-/

namespace A063099.P6736500551997276169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063111 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063099.P6736500551997276169

namespace A063099

/-- `A063111(n+1)-Δ[n²]` -/
def P6736500551997276169.Spec : Prop :=
  ∀ n, P6736500551997276169.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P1530432681110098068

`∑[A000203(a(n²%3))]-1` with `a(0)=3, a(1)=5`
-/

namespace A063099.P1530432681110098068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A000203 (f1 (n ^ 2 % 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A063099.P1530432681110098068

namespace A063099

/-- `∑[A000203(a(n²%3))]-1` -/
def P1530432681110098068.Spec : Prop :=
  ∀ n, P1530432681110098068.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P10711261945842798091

`A219529(n)+A130196(n)`
-/

namespace A063099.P10711261945842798091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A130196 n

end

end A063099.P10711261945842798091

namespace A063099

/-- `A219529(n)+A130196(n)` -/
def P10711261945842798091.Spec : Prop :=
  ∀ n, P10711261945842798091.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P2538267349734112098

`A063213(n+1)+A004277(n)`
-/

namespace A063099.P2538267349734112098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A004277 n

end

end A063099.P2538267349734112098

namespace A063099

/-- `A063213(n+1)+A004277(n)` -/
def P2538267349734112098.Spec : Prop :=
  ∀ n, P2538267349734112098.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P4570560953051868697

`A063200(n+1)+A016813(n)`
-/

namespace A063099.P4570560953051868697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (n + 1) + A016813 n

end

end A063099.P4570560953051868697

namespace A063099

/-- `A063200(n+1)+A016813(n)` -/
def P4570560953051868697.Spec : Prop :=
  ∀ n, P4570560953051868697.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P3493346589516669955

`A194960(n+1)+A008706(n)`
-/

namespace A063099.P3493346589516669955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (n + 1) + A008706 n

end

end A063099.P3493346589516669955

namespace A063099

/-- `A194960(n+1)+A008706(n)` -/
def P3493346589516669955.Spec : Prop :=
  ∀ n, P3493346589516669955.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P8362905736974594469

`A011655(n)+A219529(n)+1`
-/

namespace A063099.P8362905736974594469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + (A219529 n + 1)

end

end A063099.P8362905736974594469

namespace A063099

/-- `A011655(n)+A219529(n)+1` -/
def P8362905736974594469.Spec : Prop :=
  ∀ n, P8362905736974594469.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P2480305885837472155

`A298024(n)+A302402(n)+1`
-/

namespace A063099.P2480305885837472155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + (A302402 n + 1)

end

end A063099.P2480305885837472155

namespace A063099

/-- `A298024(n)+A302402(n)+1` -/
def P2480305885837472155.Spec : Prop :=
  ∀ n, P2480305885837472155.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P6024690177021056567

`A063238(n+1)-A004767(n)`
-/

namespace A063099.P6024690177021056567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063238 (n + 1) - A004767 n

end

end A063099.P6024690177021056567

namespace A063099

/-- `A063238(n+1)-A004767(n)` -/
def P6024690177021056567.Spec : Prop :=
  ∀ n, P6024690177021056567.a n = A063099 (n + 1)

end A063099

/-! ## A063099.P16886230930395775893

`A063107(n+1)-A016813(n)`
-/

namespace A063099.P16886230930395775893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063107 (n + 1) - A016813 n

end

end A063099.P16886230930395775893

namespace A063099

/-- `A063107(n+1)-A016813(n)` -/
def P16886230930395775893.Spec : Prop :=
  ∀ n, P16886230930395775893.a n = A063099 (n + 1)

end A063099

