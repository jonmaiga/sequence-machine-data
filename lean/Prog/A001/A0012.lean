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
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
# A001200: Number of linear geometries on n (unlabeled) points.

The programs for A001200, there is no canonical definition to state claims against.
-/

/-! ## A001200.P14339702744655341589

`A058731(n)+1`
-/

namespace A001200.P14339702744655341589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058731 n + 1

end

end A001200.P14339702744655341589

/-! ## A001200.P2912351339755302856

`1-A058731(n)*A260196(n)`
-/

namespace A001200.P2912351339755302856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A058731 n * A260196 n

end

end A001200.P2912351339755302856

/-! ## A001200.P6700058636706032552

`2-(A005408(n)-n-n-A058731(n))`
-/

namespace A001200.P6700058636706032552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A005408 n - (n : ℤ) - (n : ℤ) - A058731 n)

end

end A001200.P6700058636706032552

/-! ## A001200.P11018055564464529452

`1-(A323162(A285653(n))-A058731(n))`
-/

namespace A001200.P11018055564464529452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A323162 (A285653 n).toNat - A058731 n)

end

end A001200.P11018055564464529452

/-! ## A001200.P6038786391743061984

`A008619(n)-(A004526(n)-A058731(n))`
-/

namespace A001200.P6038786391743061984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A058731 n)

end

end A001200.P6038786391743061984

/-!
# A001201: Number of Steiner triple systems (STS's) on 6n+1 or 6n+3 elements.

The programs for A001201, there is no canonical definition to state claims against.
-/

/-! ## A001201.P13564671047900999330

`abs(record[Δ[A030128(n+1)]])`
-/

namespace A001201.P13564671047900999330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030128 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A001201.P13564671047900999330

/-! ## A001201.P7140363828419601623

`A030128(A047241(n+1))`
-/

namespace A001201.P7140363828419601623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030128 (A047241 (n + 1)).toNat

end

end A001201.P7140363828419601623

/-!
# A001202: a(1)=0, a(2n) = a(n)+1, a(2n+1) = 10*a(n+1).

The programs for A001202, the canonical program `A001202.P13335328729431155302` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001202 has offset 1).

The definition of A001202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001202.P13335328729431155302

`5*(2*a(floor(n/2))-(-1)^n+1)/10^(n%2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001202

/-- `5*(2*a(floor(n/2))-(-1)^n+1)/10^(n%2)` -/
def P13335328729431155302.Spec : Prop :=
  ∀ n, P13335328729431155302.a n = (A001202 (n + 1) : ℚ)

end A001202

/-! ## A001202.P16499862772128054933

`5*(2*a(floor(n/2))-(-1)^n+1)/A010691(n)` with `a(0)=0`
-/

namespace A001202.P16499862772128054933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - ((-1) ^ n : ℚ) + 1) / (A010691 n : ℚ)

end

end A001202.P16499862772128054933

namespace A001202

/-- `5*(2*a(floor(n/2))-(-1)^n+1)/A010691(n)` -/
def P16499862772128054933.Spec : Prop :=
  ∀ n, P16499862772128054933.a n = (A001202 (n + 1) : ℚ)

end A001202

/-! ## A001202.P13937393520774165636

`(n%2+gcd(2, n)*a(floor(n/2)))*A010686(n+1)` with `a(0)=0`
-/

namespace A001202.P13937393520774165636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((n % 2 : ℕ) : ℤ) + (Nat.gcd 2 n : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat) * A010686 (n + 1)

end

end A001202.P13937393520774165636

namespace A001202

/-- `(n%2+gcd(2, n)*a(floor(n/2)))*A010686(n+1)` -/
def P13937393520774165636.Spec : Prop :=
  ∀ n, P13937393520774165636.a n = A001202 (n + 1)

end A001202

/-! ## A001202.P6140391220488728339

`5*(2*a(floor(n/2))-(-1)^n+1)/A288697(n+3)` with `a(0)=0`
-/

namespace A001202.P6140391220488728339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - ((-1) ^ n : ℚ) + 1) / (A288697 (n + 3) : ℚ)

end

end A001202.P6140391220488728339

namespace A001202

/-- `5*(2*a(floor(n/2))-(-1)^n+1)/A288697(n+3)` -/
def P6140391220488728339.Spec : Prop :=
  ∀ n, P6140391220488728339.a n = (A001202 (n + 1) : ℚ)

end A001202

/-! ## A001202.P17022278905117355229

`∑{d}[A005940(n+1), A054841(A014963(#))]`
-/

namespace A001202.P17022278905117355229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054841 (A014963 d).toNat

end

end A001202.P17022278905117355229

namespace A001202

/-- `∑{d}[A005940(n+1), A054841(A014963(#))]` -/
def P17022278905117355229.Spec : Prop :=
  ∀ n, P17022278905117355229.a n = A001202 (n + 1)

end A001202

/-! ## A001202.P11257537418770409630

`A054841(A005940(n+1))`
-/

namespace A001202.P11257537418770409630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A005940 (n + 1)).toNat

end

end A001202.P11257537418770409630

namespace A001202

/-- `A054841(A005940(n+1))` -/
def P11257537418770409630.Spec : Prop :=
  ∀ n, P11257537418770409630.a n = A001202 (n + 1)

end A001202

/-! ## A001202.P1325332848027735793

`A054841(A324394(n)*A324395(n))`
-/

namespace A001202.P1325332848027735793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A324394 n * A324395 n).toNat

end

end A001202.P1325332848027735793

namespace A001202

/-- `A054841(A324394(n)*A324395(n))` -/
def P1325332848027735793.Spec : Prop :=
  ∀ n, P1325332848027735793.a n = A001202 (n + 1)

end A001202

/-! ## A001202.P5392593106367444151

`A054841(A337375(n)*A337376(n))`
-/

namespace A001202.P5392593106367444151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A337375 n * A337376 n).toNat

end

end A001202.P5392593106367444151

namespace A001202

/-- `A054841(A337375(n)*A337376(n))` -/
def P5392593106367444151.Spec : Prop :=
  ∀ n, P5392593106367444151.a n = A001202 (n + 1)

end A001202

/-! ## A001202.P13900341750458288861

`∑{e}[A086141(n+1), A135655(#)]`
-/

namespace A001202.P13900341750458288861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A135655 (Nat.factorization (f1 n).natAbs p)

end

end A001202.P13900341750458288861

namespace A001202

/-- `∑{e}[A086141(n+1), A135655(#)]` -/
def P13900341750458288861.Spec : Prop :=
  ∀ n, P13900341750458288861.a n = A001202 (n + 1)

end A001202

/-!
# A001203: Simple continued fraction expansion of Pi.

The programs for A001203, there is no canonical definition to state claims against.
-/

/-! ## A001203.P12935420975296445526

`A292106(n)/A003417(n)`
-/

namespace A001203.P12935420975296445526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292106 n : ℚ) / (A003417 n : ℚ)

end

end A001203.P12935420975296445526

/-! ## A001203.P12205710239843084006

`A292106(n)/∑[A120691(n)]`
-/

namespace A001203.P12205710239843084006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292106 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A001203.P12205710239843084006

/-! ## A001203.P14332420603353537949

`A292106(n)/gcd(A026191(n+1), A110090(n))`
-/

namespace A001203.P14332420603353537949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292106 n : ℚ) / (Int.gcd (A026191 (n + 1)) (A110090 n) : ℚ)

end

end A001203.P14332420603353537949

/-! ## A001203.P12953546131963769781

`A292106(n)/gcd(A166711(n), A184538(n+1))`
-/

namespace A001203.P12953546131963769781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292106 n : ℚ) / (Int.gcd (A166711 n) (A184538 (n + 1)) : ℚ)

end

end A001203.P12953546131963769781

/-! ## A001203.P13186163091358817754

`floor(ratio[A046947(n)])`
-/

namespace A001203.P13186163091358817754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A001203.P13186163091358817754

/-! ## A001203.P17173247276465874278

`floor(ratio[A002485(n+1)])`
-/

namespace A001203.P17173247276465874278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A001203.P17173247276465874278

/-! ## A001203.P1141410184732441394

`floor(A046947(n+1)/A046947(n))`
-/

namespace A001203.P1141410184732441394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046947 (n + 1) : ℚ) / (A046947 n : ℚ)⌋

end

end A001203.P1141410184732441394

/-! ## A001203.P16046646460218040297

`floor(A002485(n+2)/A002485(n+1))`
-/

namespace A001203.P16046646460218040297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002485 (n + 2) : ℚ) / (A002485 (n + 1) : ℚ)⌋

end

end A001203.P16046646460218040297

/-! ## A001203.P5709631099383286329

`(A046947(n+1)-A002485(n))/A046947(n)`
-/

namespace A001203.P5709631099383286329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046947 (n + 1) - A002485 n : ℚ) / (A046947 n : ℚ)

end

end A001203.P5709631099383286329

/-! ## A001203.P17023869055230485512

`A137299(∑[n+1])`
-/

namespace A001203.P17023869055230485512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137299 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001203.P17023869055230485512

/-!
# A001205: Number of clouds with n points; number of undirected 2-regular labeled graphs; or number of n X n symmetric matrices with (0,1) entries, trace 0 and all row sums 2.

The programs for A001205, there is no canonical definition to state claims against.
-/

/-! ## A001205.P15032042762578165495

`A144161(∑[n]+n)`
-/

namespace A001205.P15032042762578165495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001205.P15032042762578165495

/-! ## A001205.P14215220967894677426

`and(1, n)!*A144161(A000096(n))`
-/

namespace A001205.P14215220967894677426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A144161 (A000096 n).toNat

end

end A001205.P14215220967894677426

/-! ## A001205.P11752583981758977710

`A144161(A000096(n))^A178334(n)`
-/

namespace A001205.P11752583981758977710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144161 (A000096 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A001205.P11752583981758977710

/-! ## A001205.P17181961209407991365

`gcd(A000038(n), A144161(A000096(n)))`
-/

namespace A001205.P17181961209407991365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144161 (A000096 n).toNat)

end

end A001205.P17181961209407991365

/-! ## A001205.P10342251004957513523

`or(A000007(n), A144161(A000096(n)))`
-/

namespace A001205.P10342251004957513523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144161 (A000096 n).toNat)

end

end A001205.P10342251004957513523

/-! ## A001205.P805604873073189740

`A000040(n+2)%2*A144161(A000096(n))`
-/

namespace A001205.P805604873073189740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A144161 (A000096 n).toNat

end

end A001205.P805604873073189740

/-! ## A001205.P2802404887673276056

`A144161(A000096(n))+n*A182492(2*n)`
-/

namespace A001205.P2802404887673276056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 (A000096 n).toNat + (n : ℤ) * A182492 (2 * n)

end

end A001205.P2802404887673276056

/-! ## A001205.P4965307476691030080

`(A000005(n+1)%2)!*A144161(A000096(n))`
-/

namespace A001205.P4965307476691030080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ) * A144161 (A000096 n).toNat

end

end A001205.P4965307476691030080

/-! ## A001205.P7908712399204239100

`A050326(A000040(n+1))*A144161(A000096(n))`
-/

namespace A001205.P7908712399204239100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A000040 (n + 1)).toNat * A144161 (A000096 n).toNat

end

end A001205.P7908712399204239100

/-! ## A001205.P7200072878585191778

`A050326(A170824(n+1))*A144161(A000096(n))`
-/

namespace A001205.P7200072878585191778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A170824 (n + 1)).toNat * A144161 (A000096 n).toNat

end

end A001205.P7200072878585191778

/-!
# A001206: Number of self-dual monotone Boolean functions of n variables.

The programs for A001206, there is no canonical definition to state claims against.
-/

/-! ## A001206.P8402167609890620839

`A001087(ceil(2^(n-1)))-floor(acot(n))`
-/

namespace A001206.P8402167609890620839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001087 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A001206.P8402167609890620839

/-! ## A001206.P9440383838368220042

`A001087(A011782(n))%(n+1)!`
-/

namespace A001206.P9440383838368220042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001087 (A011782 n).toNat) (Nat.factorial (n + 1) : ℤ)

end

end A001206.P9440383838368220042

/-! ## A001206.P13909421826868695852

`A001087(ceil(2^(n-1)))*A004218(n+1)`
-/

namespace A001206.P13909421826868695852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001087 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A004218 (n + 1)

end

end A001206.P13909421826868695852

/-!
# A001207: Number of fixed hexagonal polyominoes with n cells.

The programs for A001207, there is no canonical definition to state claims against.
-/

/-! ## A001207.P11348656076985036573

`A094165(n+1)/(n+1)`
-/

namespace A001207.P11348656076985036573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094165 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001207.P11348656076985036573

/-! ## A001207.P3620069883199585438

`record[A094165(A008619(n))/A029579(n)]`
-/

namespace A001207.P3620069883199585438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094165 (A008619 n).toNat : ℚ) / (A029579 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001207.P3620069883199585438

/-! ## A001207.P10033287485646816024

`record[A094165(A008619(n))/A052938(n)]`
-/

namespace A001207.P10033287485646816024
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094165 (A008619 n).toNat : ℚ) / (A052938 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001207.P10033287485646816024

/-! ## A001207.P3660695519196243094

`A389191(n+1)+A121220(n+1)`
-/

namespace A001207.P3660695519196243094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389191 (n + 1) + A121220 (n + 1)

end

end A001207.P3660695519196243094

/-! ## A001207.P12585360526958959490

`2*A212086(n+1)-A197958(n+1)`
-/

namespace A001207.P12585360526958959490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212086 (n + 1) - A197958 (n + 1)

end

end A001207.P12585360526958959490

/-!
# A001208: a(n) = solution to the postage stamp problem with 3 denominations and n stamps.

The programs for A001208, there is no canonical definition to state claims against.
-/

/-! ## A001208.P14059765102598699257

`∑[abs(Δ[A195618(n)])]`
-/

namespace A001208.P14059765102598699257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195618 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001208.P14059765102598699257

/-! ## A001208.P12664836421069998869

`A195618(n+1)-1`
-/

namespace A001208.P12664836421069998869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195618 (n + 1) - 1

end

end A001208.P12664836421069998869

/-! ## A001208.P8802621347713591317

`∑[Δ[A195618(n)]%A000040(n+1)²]`
-/

namespace A001208.P8802621347713591317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195618 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001208.P8802621347713591317

/-! ## A001208.P12493714758189953943

`∑[A000027(Δ[A195618(n)])]`
-/

namespace A001208.P12493714758189953943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195618 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001208.P12493714758189953943

/-! ## A001208.P16063742626905169781

`A023443(A195618(n+1))`
-/

namespace A001208.P16063742626905169781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A195618 (n + 1)).toNat

end

end A001208.P16063742626905169781

/-!
# A001209: a(n) is the solution to the postage stamp problem with 4 denominations and n stamps.

The programs for A001209, there is no canonical definition to state claims against.
-/

/-! ## A001209.P12168857647201422050

`∑[abs(Δ[A196069(n)])]`
-/

namespace A001209.P12168857647201422050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P12168857647201422050

/-! ## A001209.P8367420208760817749

`A196069(n+1)-1`
-/

namespace A001209.P8367420208760817749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 (n + 1) - 1

end

end A001209.P8367420208760817749

/-! ## A001209.P622578182228643573

`∑[A000027(Δ[A196069(n)])]`
-/

namespace A001209.P622578182228643573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P622578182228643573

/-! ## A001209.P11872226583429099870

`∑[A028310(Δ[A196069(n)])]`
-/

namespace A001209.P11872226583429099870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P11872226583429099870

/-! ## A001209.P12994080715232074578

`∑[A087156(Δ[A196069(n)])]`
-/

namespace A001209.P12994080715232074578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P12994080715232074578

/-! ## A001209.P4814162385533314997

`record[A196069(A007599(n))-1]`
-/

namespace A001209.P4814162385533314997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 (A007599 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001209.P4814162385533314997

/-! ## A001209.P12709042182215154506

`record[A196069(A028242(n))-1]`
-/

namespace A001209.P12709042182215154506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 (A028242 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001209.P12709042182215154506

/-! ## A001209.P16090301611082554020

`∑[A000007(n+1)+Δ[A196069(n)]]`
-/

namespace A001209.P16090301611082554020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P16090301611082554020

/-! ## A001209.P14131122775737544976

`∑[A000035(2*n)+Δ[A196069(n)]]`
-/

namespace A001209.P14131122775737544976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P14131122775737544976

/-! ## A001209.P15025716526798363682

`∑[((-1)^A007318(n))²*Δ[A196069(n)]]`
-/

namespace A001209.P15025716526798363682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196069 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001209.P15025716526798363682

/-!
# A001210: a(n) is the solution to the postage stamp problem with 5 denominations and n stamps.

The programs for A001210, there is no canonical definition to state claims against.
-/

/-! ## A001210.P7023676503048649330

`A084193(∑[n+4]+10)`
-/

namespace A001210.P7023676503048649330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A001210.P7023676503048649330

/-! ## A001210.P9285524700900149959

`A084192(∑[n+5]+5)`
-/

namespace A001210.P9285524700900149959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001210.P9285524700900149959

/-! ## A001210.P14278214545556069648

`A055642(n)*A084192(A052905(n+2))`
-/

namespace A001210.P14278214545556069648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A084192 (A052905 (n + 2)).toNat

end

end A001210.P14278214545556069648

/-!
# A001211: a(n) is the solution to the postage stamp problem with 6 denominations and n stamps.

The programs for A001211, there is no canonical definition to state claims against.
-/

/-! ## A001211.P3456053785956506390

`A084192(C(n+7, 2)-6)`
-/

namespace A001211.P3456053785956506390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (Nat.choose (n + 7) 2 - 6)

end

end A001211.P3456053785956506390

/-! ## A001211.P6070635908259354876

`A084192(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A001211.P6070635908259354876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001211.P6070635908259354876

/-!
# A001212: a(n) = solution to the postage stamp problem with n denominations and 2 stamps.

The programs for A001212, there is no canonical definition to state claims against.
-/

/-! ## A001212.P13592197300880201864

`A123509(n+2)-1`
-/

namespace A001212.P13592197300880201864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123509 (n + 2) - 1

end

end A001212.P13592197300880201864

/-! ## A001212.P5200976278128683502

`A234941(n+2)-2`
-/

namespace A001212.P5200976278128683502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234941 (n + 2) - 2

end

end A001212.P5200976278128683502

/-! ## A001212.P11995005998100979781

`∑[abs(Δ[A123509(n+1)])]`
-/

namespace A001212.P11995005998100979781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123509 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001212.P11995005998100979781

/-! ## A001212.P11845188316429008836

`∑[abs(Δ[A234941(n+1)])]`
-/

namespace A001212.P11845188316429008836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234941 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001212.P11845188316429008836

/-! ## A001212.P6848638039416617566

`A004442(A123509(n+2))`
-/

namespace A001212.P6848638039416617566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A123509 (n + 2)).toNat

end

end A001212.P6848638039416617566

/-!
# A001213: a(n) is the solution to the postage stamp problem with n denominations and 3 stamps.

The programs for A001213, there is no canonical definition to state claims against.
-/

/-! ## A001213.P4296221153654962225

`A084192(∑[n+2]+3)`
-/

namespace A001213.P4296221153654962225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001213.P4296221153654962225

/-! ## A001213.P17072659919097521862

`record[A084192(n+3)/A126954(n)]`
-/

namespace A001213.P17072659919097521862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (n + 3) : ℚ) / (A126954 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001213.P17072659919097521862

/-! ## A001213.P9132951895418436430

`record[A084192(n+3)/A093430(n+1)]`
-/

namespace A001213.P9132951895418436430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (n + 3) : ℚ) / (A093430 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001213.P9132951895418436430

/-! ## A001213.P6927480743538530976

`record[A084192(n+3)/A019538(n+2)]`
-/

namespace A001213.P6927480743538530976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (n + 3) : ℚ) / (A019538 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001213.P6927480743538530976

/-! ## A001213.P2349801958311872494

`A084193(∑[n+3])`
-/

namespace A001213.P2349801958311872494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001213.P2349801958311872494

/-!
# A001214: a(n) is the solution to the postage stamp problem with n denominations and 4 stamps.

The programs for A001214, there is no canonical definition to state claims against.
-/

/-! ## A001214.P10617379102511760965

`A084192(∑[n+3]+6)`
-/

namespace A001214.P10617379102511760965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A001214.P10617379102511760965

/-! ## A001214.P1734601503051789724

`lcm(2, A084192(A167614(n+2)))`
-/

namespace A001214.P1734601503051789724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A084192 (A167614 (n + 2)).toNat)

end

end A001214.P1734601503051789724

/-! ## A001214.P15985926448140785018

`record[A084192(n+4)/A001497(n)]`
-/

namespace A001214.P15985926448140785018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (n + 4) : ℚ) / (A001497 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001214.P15985926448140785018

/-! ## A001214.P5557301343451538826

`record[A084192(n+4)/A096334(n)]`
-/

namespace A001214.P5557301343451538826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (n + 4) : ℚ) / (A096334 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001214.P5557301343451538826

/-! ## A001214.P17394099561845538403

`record[A084192(n+4)/A126791(n)]`
-/

namespace A001214.P17394099561845538403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084192 (n + 4) : ℚ) / (A126791 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001214.P17394099561845538403

/-!
# A001215: a(n) is the solution to the postage stamp problem with n denominations and 5 stamps.

The programs for A001215, there is no canonical definition to state claims against.
-/

/-! ## A001215.P15909413577189423462

`A084192(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A001215.P15909413577189423462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001215.P15909413577189423462

/-! ## A001215.P4868728367776643025

`A084192(A155212(n)+12)`
-/

namespace A001215.P4868728367776643025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A155212 n + 12).toNat

end

end A001215.P4868728367776643025

/-! ## A001215.P16807063933044562936

`A084192(A056000(n)+14)`
-/

namespace A001215.P16807063933044562936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A056000 n + 14).toNat

end

end A001215.P16807063933044562936

/-! ## A001215.P728336255195903603

`A084192(eq[3, A141169(n)])`
-/

namespace A001215.P728336255195903603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001215.P728336255195903603

/-!
# A001216: a(n) = solution to the postage stamp problem with n denominations and 6 stamps.

The programs for A001216, there is no canonical definition to state claims against.
-/

/-! ## A001216.P16981913268263821570

`A084193(C(n+6, 2)+n)`
-/

namespace A001216.P16981913268263821570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (Nat.choose (n + 6) 2 + n)

end

end A001216.P16981913268263821570

/-! ## A001216.P4479211120396114002

`A084192(C(n+7, 2)-(n+1))`
-/

namespace A001216.P4479211120396114002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (Nat.choose (n + 7) 2 - (n + 1))

end

end A001216.P4479211120396114002

/-!
# A001217: Sorted list of orders of Weyl groups of types A_n, B_n, D_n, E_n, F_4, G_2.

The programs for A001217, there is no canonical definition to state claims against.
-/

/-! ## A001217.P17191567160802331921

`∑[∏[A091090(A148637(n))]]`
-/

namespace A001217.P17191567160802331921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A148637 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001217.P17191567160802331921

/-! ## A001217.P1243600743842405419

`∑[∏[A005136(A205724(n+1))]]`
-/

namespace A001217.P1243600743842405419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A205724 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001217.P1243600743842405419

/-! ## A001217.P14190122810875570463

`record[gcd(A009223(n+1), A322732(n))]`
-/

namespace A001217.P14190122810875570463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009223 (n + 1)) (A322732 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001217.P14190122810875570463

/-! ## A001217.P7554329413602731473

`A131883(or(A053635(n), A088817(n+1)))`
-/

namespace A001217.P7554329413602731473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (Int.lor (A053635 n) (A088817 (n + 1))).toNat

end

end A001217.P7554329413602731473

/-! ## A001217.P4198259165815864

`A307187(A087027(n+1))`
-/

namespace A001217.P4198259165815864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307187 (A087027 (n + 1)).toNat

end

end A001217.P4198259165815864

/-!
# A001218: a(n) = 3^n mod 100.

The programs for A001218, the canonical program `A001218.P17069562722655174519` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001218 has offset 0).

The definition of A001218 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%100` (program `A001218.P17069562722655174519`, by `A001218.P17069562722655174519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001218.P17069562722655174519

`(3^n)%100`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001218

/-- `(3^n)%100` -/
def P17069562722655174519.Spec : Prop :=
  ∀ n, (P17069562722655174519.a n : ℤ) = A001218 n

theorem P17069562722655174519.correct : P17069562722655174519.Spec := by
  intro n
  simp only [A001218]

end A001218

/-!
# A001219: Triangular numbers of form a*(a+1)*(a+2).

The programs for A001219, there is no canonical definition to state claims against.
-/

/-! ## A001219.P5606809426559651045

`A000217(A097571(n+1))`
-/

namespace A001219.P5606809426559651045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A097571 (n + 1)).toNat

end

end A001219.P5606809426559651045

/-! ## A001219.P10523882877557704473

`∩[C(n+1, 2), (n+2)*(n²+n)]`
-/

namespace A001219.P10523882877557704473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n ^ 2 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A001219.P10523882877557704473

/-! ## A001219.P5868079814209884876

`C(A124389(n)+A097571(n+1), 2)`
-/

namespace A001219.P5868079814209884876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124389 n + A097571 (n + 1)).toNat 2

end

end A001219.P5868079814209884876

/-!
# A001221: Number of distinct primes dividing n (also called omega(n)).

The programs for A001221, the canonical program `A001221.P14816172234621668833` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001221 has offset 1).

The definition of A001221 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001221.anchor (n : ℕ) (hn : 1 ≤ n) : A001221 n = (ArithmeticFunction.cardDistinctFactors n : ℤ)` in `Proof.A001.A001221`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001221.P5579765199675470459

`A000005(n+1)-A033273(n+1)`
-/

namespace A001221.P5579765199675470459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A033273 (n + 1)

end

end A001221.P5579765199675470459

namespace A001221

/-- `A000005(n+1)-A033273(n+1)` -/
def P5579765199675470459.Spec : Prop :=
  ∀ n, P5579765199675470459.a n = A001221 (n + 1)

theorem P5579765199675470459.correct : P5579765199675470459.Spec := by
  intro n
  simp only [A001221, Nat.add_sub_cancel, A001221.P5579765199675470459.a, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A000005, A000005.P16091521709108585461.a, A033273, A033273.P18420659424697249895.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001221

/-! ## A001221.P10258181745752134128

`A005089(n+1)+A005091(n+1)+A059841(n+1)`
-/

namespace A001221.P10258181745752134128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1) + A005091 (n + 1) + A059841 (n + 1)

end

end A001221.P10258181745752134128

namespace A001221

/-- `A005089(n+1)+A005091(n+1)+A059841(n+1)` -/
def P10258181745752134128.Spec : Prop :=
  ∀ n, P10258181745752134128.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P921745862292700962

`A005088(n+1)+A005090(n+1)+A079978(n+1)`
-/

namespace A001221.P921745862292700962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1) + A005090 (n + 1) + A079978 (n + 1)

end

end A001221.P921745862292700962

namespace A001221

/-- `A005088(n+1)+A005090(n+1)+A079978(n+1)` -/
def P921745862292700962.Spec : Prop :=
  ∀ n, P921745862292700962.a n = A001221 (n + 1)

theorem P921745862292700962.correct : P921745862292700962.Spec := by
  intro n
  simp only [A001221, Nat.add_sub_cancel, A001221.P921745862292700962.a, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A005088, A005088.P8022633651316501348.f1, A005088.P8022633651316501348.a, A005090, A005090.P16469068268029111629.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001221

/-! ## A001221.P16207067987791434595

`A091221(A091202(n+1))`
-/

namespace A001221.P16207067987791434595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A091202 (n + 1)).toNat

end

end A001221.P16207067987791434595

namespace A001221

/-- `A091221(A091202(n+1))` -/
def P16207067987791434595.Spec : Prop :=
  ∀ n, P16207067987791434595.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P3833166033746134862

`A069010(A156552(n+1))`
-/

namespace A001221.P3833166033746134862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A156552 (n + 1)).toNat

end

end A001221.P3833166033746134862

namespace A001221

/-- `A069010(A156552(n+1))` -/
def P3833166033746134862.Spec : Prop :=
  ∀ n, P3833166033746134862.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P12662674036463541987

`∑{p}[n+1, gcd(n, #)]`
-/

namespace A001221.P12662674036463541987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p

end

end A001221.P12662674036463541987

namespace A001221

/-- `∑{p}[n+1, gcd(n, #)]` -/
def P12662674036463541987.Spec : Prop :=
  ∀ n, (P12662674036463541987.a n : ℤ) = A001221 (n + 1)

end A001221

/-! ## A001221.P15086592865288530347

`∑{e}[∏{p}[n+1, #], #]`
-/

namespace A001221.P15086592865288530347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A001221.P15086592865288530347

namespace A001221

/-- `∑{e}[∏{p}[n+1, #], #]` -/
def P15086592865288530347.Spec : Prop :=
  ∀ n, (P15086592865288530347.a n : ℤ) = A001221 (n + 1)

end A001221

/-! ## A001221.P12075156755076105530

`∑{p}[n+1, floor(atan(#))]`
-/

namespace A001221.P12075156755076105530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (p : ℝ)⌋

end

end A001221.P12075156755076105530

namespace A001221

/-- `∑{p}[n+1, floor(atan(#))]` -/
def P12075156755076105530.Spec : Prop :=
  ∀ n, P12075156755076105530.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P3393773939112687532

`∑{e}[n+1, round(atan(#))]`
-/

namespace A001221.P3393773939112687532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f1 n) p : ℝ))

end

end A001221.P3393773939112687532

namespace A001221

/-- `∑{e}[n+1, round(atan(#))]` -/
def P3393773939112687532.Spec : Prop :=
  ∀ n, P3393773939112687532.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P14020641328318836454

`∑{e}[n+1, ceil(tanh(#))]`
-/

namespace A001221.P14020641328318836454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉

end

end A001221.P14020641328318836454

namespace A001221

/-- `∑{e}[n+1, ceil(tanh(#))]` -/
def P14020641328318836454.Spec : Prop :=
  ∀ n, P14020641328318836454.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P13558328363191266770

`∑{p}[n+1, ceil(acot(#))]`
-/

namespace A001221.P13558328363191266770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉

end

end A001221.P13558328363191266770

namespace A001221

/-- `∑{p}[n+1, ceil(acot(#))]` -/
def P13558328363191266770.Spec : Prop :=
  ∀ n, P13558328363191266770.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P7117405292773868964

`∑{e}[n+1, round(tanh(#))]`
-/

namespace A001221.P7117405292773868964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f1 n) p : ℝ))

end

end A001221.P7117405292773868964

namespace A001221

/-- `∑{e}[n+1, round(tanh(#))]` -/
def P7117405292773868964.Spec : Prop :=
  ∀ n, P7117405292773868964.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P17449372013093800326

`∑{e}[n+1, ceil(acot(#))]`
-/

namespace A001221.P17449372013093800326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉

end

end A001221.P17449372013093800326

namespace A001221

/-- `∑{e}[n+1, ceil(acot(#))]` -/
def P17449372013093800326.Spec : Prop :=
  ∀ n, P17449372013093800326.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P14816172234621668833

`∑{p}[n+1, ceil(1/#)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001221

/-- `∑{p}[n+1, ceil(1/#)]` -/
def P14816172234621668833.Spec : Prop :=
  ∀ n, P14816172234621668833.a n = A001221 (n + 1)

theorem P14816172234621668833.correct : P14816172234621668833.Spec := by
  intro n
  simp only [A001221, Nat.add_sub_cancel]

end A001221

/-! ## A001221.P12630130017159557577

`∑{e}[n+1, ceil(1/#)]`
-/

namespace A001221.P12630130017159557577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A001221.P12630130017159557577

namespace A001221

/-- `∑{e}[n+1, ceil(1/#)]` -/
def P12630130017159557577.Spec : Prop :=
  ∀ n, P12630130017159557577.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P6683440019988269532

`floor(∑{p}[n+1, root(2, #)])`
-/

namespace A001221.P6683440019988269532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ (1 / (p : ℝ))⌋

end

end A001221.P6683440019988269532

namespace A001221

/-- `floor(∑{p}[n+1, root(2, #)])` -/
def P6683440019988269532.Spec : Prop :=
  ∀ n, P6683440019988269532.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P2579348987685916775

`dr(∑{e}[n+1, 10^#])`
-/

namespace A001221.P2579348987685916775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n), 10 ^ Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A001221.P2579348987685916775

namespace A001221

/-- `dr(∑{e}[n+1, 10^#])` -/
def P2579348987685916775.Spec : Prop :=
  ∀ n, (P2579348987685916775.a n : ℤ) = A001221 (n + 1)

end A001221

/-! ## A001221.P5043581409134112527

`ceil(∑{p}[n+1, root(γ, #)])`
-/

namespace A001221.P5043581409134112527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌉

end

end A001221.P5043581409134112527

namespace A001221

/-- `ceil(∑{p}[n+1, root(γ, #)])` -/
def P5043581409134112527.Spec : Prop :=
  ∀ n, P5043581409134112527.a n = A001221 (n + 1)

end A001221

/-! ## A001221.P15951517830761968350

`log2(∏{p}[n+1, ceil(atan(#))])`
-/

namespace A001221.P15951517830761968350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉ : ℤ) : ℝ)

end

end A001221.P15951517830761968350

namespace A001221

/-- `log2(∏{p}[n+1, ceil(atan(#))])` -/
def P15951517830761968350.Spec : Prop :=
  ∀ n, P15951517830761968350.a n = (A001221 (n + 1) : ℝ)

end A001221

/-! ## A001221.P16641568897227680498

`∑{p}[n+1, 2%#²]/2`
-/

namespace A001221.P16641568897227680498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℚ) / 2

end

end A001221.P16641568897227680498

namespace A001221

/-- `∑{p}[n+1, 2%#²]/2` -/
def P16641568897227680498.Spec : Prop :=
  ∀ n, P16641568897227680498.a n = (A001221 (n + 1) : ℚ)

end A001221

/-!
# A001222: Number of prime divisors of n counted with multiplicity (also called big omega of n, bigomega(n) or Omega(n)).

The programs for A001222, the canonical program `A001222.P667907507343207792` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001222 has offset 1).

The definition of A001222 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001222.anchor (n : ℕ) (hn : 1 ≤ n) : A001222 n = (ArithmeticFunction.cardFactors n : ℤ)` in `Proof.A001.A001222`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001222.P1885175595792988288

`a((n+1)/A020639(n+1)-1)+1` with `a(0)=0`
-/

namespace A001222.P1885175595792988288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ) - 1)).toNat + 1

end

end A001222.P1885175595792988288

namespace A001222

/-- `a((n+1)/A020639(n+1)-1)+1` -/
def P1885175595792988288.Spec : Prop :=
  ∀ n, (P1885175595792988288.a n : ℤ) = A001222 (n + 1)

end A001222

/-! ## A001222.P15603731676019799586

`A056239(A181819(n+1))`
-/

namespace A001222.P15603731676019799586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A181819 (n + 1)).toNat

end

end A001222.P15603731676019799586

namespace A001222

/-- `A056239(A181819(n+1))` -/
def P15603731676019799586.Spec : Prop :=
  ∀ n, P15603731676019799586.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P15201062353449897056

`A048675(A293442(n+1))`
-/

namespace A001222.P15201062353449897056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A293442 (n + 1)).toNat

end

end A001222.P15201062353449897056

namespace A001222

/-- `A048675(A293442(n+1))` -/
def P15201062353449897056.Spec : Prop :=
  ∀ n, P15201062353449897056.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P1159154052325455951

`A022559(n+1)-A022559(n)`
-/

namespace A001222.P1159154052325455951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - A022559 n

end

end A001222.P1159154052325455951

namespace A001222

/-- `A022559(n+1)-A022559(n)` -/
def P1159154052325455951.Spec : Prop :=
  ∀ n, P1159154052325455951.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P15479157076834909899

`A091222(A091202(n+1))`
-/

namespace A001222.P15479157076834909899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A091202 (n + 1)).toNat

end

end A001222.P15479157076834909899

namespace A001222

/-- `A091222(A091202(n+1))` -/
def P15479157076834909899.Spec : Prop :=
  ∀ n, P15479157076834909899.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P11318177267732088261

`A061395(A122111(n+1))`
-/

namespace A001222.P11318177267732088261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A122111 (n + 1)).toNat

end

end A001222.P11318177267732088261

namespace A001222

/-- `A061395(A122111(n+1))` -/
def P11318177267732088261.Spec : Prop :=
  ∀ n, P11318177267732088261.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P667907507343207792

`∑{e}[n+1, #]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001222

/-- `∑{e}[n+1, #]` -/
def P667907507343207792.Spec : Prop :=
  ∀ n, (P667907507343207792.a n : ℤ) = A001222 (n + 1)

theorem P667907507343207792.correct : P667907507343207792.Spec := by
  intro n
  simp only [A001222, Nat.add_sub_cancel]

end A001222

/-! ## A001222.P8157283477607558915

`log(∏{e}[n+1, exp(#)])`
-/

namespace A001222.P8157283477607558915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))

end

end A001222.P8157283477607558915

namespace A001222

/-- `log(∏{e}[n+1, exp(#)])` -/
def P8157283477607558915.Spec : Prop :=
  ∀ n, P8157283477607558915.a n = (A001222 (n + 1) : ℝ)

end A001222

/-! ## A001222.P15381576182958620872

`log2(∏{e}[n+1, 2^#])`
-/

namespace A001222.P15381576182958620872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A001222.P15381576182958620872

namespace A001222

/-- `log2(∏{e}[n+1, 2^#])` -/
def P15381576182958620872.Spec : Prop :=
  ∀ n, P15381576182958620872.a n = (A001222 (n + 1) : ℝ)

end A001222

/-! ## A001222.P14056268022217306227

`val(∏{e}[n+1, 2^#], 2)`
-/

namespace A001222.P14056268022217306227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2

end

end A001222.P14056268022217306227

namespace A001222

/-- `val(∏{e}[n+1, 2^#], 2)` -/
def P14056268022217306227.Spec : Prop :=
  ∀ n, (P14056268022217306227.a n : ℤ) = A001222 (n + 1)

end A001222

/-! ## A001222.P16068108371749318072

`∑{p}[n+1, val(n+1, #)]`
-/

namespace A001222.P16068108371749318072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p

end

end A001222.P16068108371749318072

namespace A001222

/-- `∑{p}[n+1, val(n+1, #)]` -/
def P16068108371749318072.Spec : Prop :=
  ∀ n, (P16068108371749318072.a n : ℤ) = A001222 (n + 1)

end A001222

/-! ## A001222.P7064388814480068295

`∑{e}[xor(2*n, -2), #]-1`
-/

namespace A001222.P7064388814480068295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A001222.P7064388814480068295

namespace A001222

/-- `∑{e}[xor(2*n, -2), #]-1` -/
def P7064388814480068295.Spec : Prop :=
  ∀ n, P7064388814480068295.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P17066976197692360782

`Δ[A022559(n)]`
-/

namespace A001222.P17066976197692360782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001222.P17066976197692360782

namespace A001222

/-- `Δ[A022559(n)]` -/
def P17066976197692360782.Spec : Prop :=
  ∀ n, P17066976197692360782.a n = A001222 (n + 1)

end A001222

/-! ## A001222.P238524173154170631

`log2(A061142(n+1))`
-/

namespace A001222.P238524173154170631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A001222.P238524173154170631

namespace A001222

/-- `log2(A061142(n+1))` -/
def P238524173154170631.Spec : Prop :=
  ∀ n, P238524173154170631.a n = (A001222 (n + 1) : ℝ)

end A001222

/-! ## A001222.P4420884211700283814

`A073093(n+1)-1`
-/

namespace A001222.P4420884211700283814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - 1

end

end A001222.P4420884211700283814

namespace A001222

/-- `A073093(n+1)-1` -/
def P4420884211700283814.Spec : Prop :=
  ∀ n, P4420884211700283814.a n = A001222 (n + 1)

theorem P4420884211700283814.correct : P4420884211700283814.Spec := by
  intro n
  simp only [A001222, Nat.add_sub_cancel, A001222.P4420884211700283814.a, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A073093, A073093.P258081957281391684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001222

/-! ## A001222.P2748697447687612830

`A255201(n+1)/2`
-/

namespace A001222.P2748697447687612830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2

end

end A001222.P2748697447687612830

namespace A001222

/-- `A255201(n+1)/2` -/
def P2748697447687612830.Spec : Prop :=
  ∀ n, P2748697447687612830.a n = (A001222 (n + 1) : ℚ)

theorem P2748697447687612830.correct : P2748697447687612830.Spec := by
  intro n
  simp only [A001222, Nat.add_sub_cancel, A001222.P2748697447687612830.a, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A255201, A255201.P10260826747868353202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001222

/-! ## A001222.P7425104601560244679

`val(A124508(n+1), 2)`
-/

namespace A001222.P7425104601560244679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2

end

end A001222.P7425104601560244679

namespace A001222

/-- `val(A124508(n+1), 2)` -/
def P7425104601560244679.Spec : Prop :=
  ∀ n, (P7425104601560244679.a n : ℤ) = A001222 (n + 1)

end A001222

/-! ## A001222.P5023158245784460253

`val(A165827(n+1), 2)`
-/

namespace A001222.P5023158245784460253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2

end

end A001222.P5023158245784460253

namespace A001222

/-- `val(A165827(n+1), 2)` -/
def P5023158245784460253.Spec : Prop :=
  ∀ n, (P5023158245784460253.a n : ℤ) = A001222 (n + 1)

end A001222

/-!
# A001223: Prime gaps: differences between consecutive primes.

The programs for A001223, the canonical program `A001223.P5034056745985311719` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001223 has offset 1).

The definition of A001223 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001223.anchor (n : ℕ) (hn : 1 ≤ n) : A001223 n = (Nat.nth Nat.Prime n : ℤ) - Nat.nth Nat.Prime (n - 1)` in `Proof.A001.A001223`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001223.P5034056745985311719

`A000040(n+2)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001223

/-- `A000040(n+2)-A000040(n+1)` -/
def P5034056745985311719.Spec : Prop :=
  ∀ n, P5034056745985311719.a n = A001223 (n + 1)

theorem P5034056745985311719.correct : P5034056745985311719.Spec := by
  intro n
  simp only [A001223, Nat.add_sub_cancel]

end A001223

/-! ## A001223.P9890421397741963623

`val(A140299(n), 4)`
-/

namespace A001223.P9890421397741963623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140299 n).toNat 4

end

end A001223.P9890421397741963623

namespace A001223

/-- `val(A140299(n), 4)` -/
def P9890421397741963623.Spec : Prop :=
  ∀ n, (P9890421397741963623.a n : ℤ) = A001223 (n + 1)

end A001223

/-! ## A001223.P13051146533918436688

`sqrt(A076821(n+1))`
-/

namespace A001223.P13051146533918436688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ)

end

end A001223.P13051146533918436688

namespace A001223

/-- `sqrt(A076821(n+1))` -/
def P13051146533918436688.Spec : Prop :=
  ∀ n, P13051146533918436688.a n = (A001223 (n + 1) : ℝ)

end A001223

/-! ## A001223.P17153305561341562797

`log2(A218075(n+1))`
-/

namespace A001223.P17153305561341562797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

end

end A001223.P17153305561341562797

namespace A001223

/-- `log2(A218075(n+1))` -/
def P17153305561341562797.Spec : Prop :=
  ∀ n, P17153305561341562797.a n = (A001223 (n + 1) : ℝ)

end A001223

/-! ## A001223.P5083310856331133973

`1+A046933(n+1)`
-/

namespace A001223.P5083310856331133973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046933 (n + 1)

end

end A001223.P5083310856331133973

namespace A001223

/-- `1+A046933(n+1)` -/
def P5083310856331133973.Spec : Prop :=
  ∀ n, P5083310856331133973.a n = A001223 (n + 1)

theorem P5083310856331133973.correct : P5083310856331133973.Spec := by
  intro n
  simp only [A001223, Nat.add_sub_cancel, A001223.P5083310856331133973.a, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001223

/-! ## A001223.P9318015957774943944

`abs(Δ[A330547(n+1)])`
-/

namespace A001223.P9318015957774943944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001223.P9318015957774943944

namespace A001223

/-- `abs(Δ[A330547(n+1)])` -/
def P9318015957774943944.Spec : Prop :=
  ∀ n, P9318015957774943944.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P15948991288689087542

`ceil(A100803(n+1)/2)`
-/

namespace A001223.P15948991288689087542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100803 (n + 1) : ℚ) / 2⌉

end

end A001223.P15948991288689087542

namespace A001223

/-- `ceil(A100803(n+1)/2)` -/
def P15948991288689087542.Spec : Prop :=
  ∀ n, P15948991288689087542.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P7670702132938744663

`Δ[A001748(n+1)/3]`
-/

namespace A001223.P7670702132938744663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001223.P7670702132938744663

namespace A001223

/-- `Δ[A001748(n+1)/3]` -/
def P7670702132938744663.Spec : Prop :=
  ∀ n, P7670702132938744663.a n = (A001223 (n + 1) : ℚ)

theorem P7670702132938744663.correct : P7670702132938744663.Spec := by
  intro n
  simp only [A001223, Nat.add_sub_cancel, A001223.P7670702132938744663.f1, A001223.P7670702132938744663.a, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001223

/-! ## A001223.P9815268506772036150

`Δ[A001749(n+1)/4]`
-/

namespace A001223.P9815268506772036150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001223.P9815268506772036150

namespace A001223

/-- `Δ[A001749(n+1)/4]` -/
def P9815268506772036150.Spec : Prop :=
  ∀ n, P9815268506772036150.a n = (A001223 (n + 1) : ℚ)

theorem P9815268506772036150.correct : P9815268506772036150.Spec := by
  intro n
  simp only [A001223, Nat.add_sub_cancel, A001223.P9815268506772036150.f1, A001223.P9815268506772036150.a, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001223

/-! ## A001223.P11891059423589156542

`A123128(n+1)-(n+1)`
-/

namespace A001223.P11891059423589156542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) - (n + 1 : ℤ)

end

end A001223.P11891059423589156542

namespace A001223

/-- `A123128(n+1)-(n+1)` -/
def P11891059423589156542.Spec : Prop :=
  ∀ n, P11891059423589156542.a n = A001223 (n + 1)

theorem P11891059423589156542.correct : P11891059423589156542.Spec := by
  intro n
  simp only [A001223, Nat.add_sub_cancel, A001223.P11891059423589156542.a, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A123128, A123128.P14620295915267660605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001223

/-! ## A001223.P18190032748110455525

`A141042(n+1)/(n+1)`
-/

namespace A001223.P18190032748110455525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A001223.P18190032748110455525

namespace A001223

/-- `A141042(n+1)/(n+1)` -/
def P18190032748110455525.Spec : Prop :=
  ∀ n, P18190032748110455525.a n = (A001223 (n + 1) : ℚ)

end A001223

/-! ## A001223.P13221080669064420288

`A036263(n)+a(n-1)` with `a(0)=1`
-/

namespace A001223.P13221080669064420288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036263 n + a (n - 1)

end

end A001223.P13221080669064420288

namespace A001223

/-- `A036263(n)+a(n-1)` -/
def P13221080669064420288.Spec : Prop :=
  ∀ n, P13221080669064420288.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P8324123854673835825

`A031131(n)-a(n-1)` with `a(0)=1`
-/

namespace A001223.P8324123854673835825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031131 n - a (n - 1)

end

end A001223.P8324123854673835825

namespace A001223

/-- `A031131(n)-a(n-1)` -/
def P8324123854673835825.Spec : Prop :=
  ∀ n, P8324123854673835825.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P3053424033086133313

`A000720(A082910(n+1))`
-/

namespace A001223.P3053424033086133313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082910 (n + 1)).toNat

end

end A001223.P3053424033086133313

namespace A001223

/-- `A000720(A082910(n+1))` -/
def P3053424033086133313.Spec : Prop :=
  ∀ n, P3053424033086133313.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P15975457061300943958

`A000463(A100803(n+1))`
-/

namespace A001223.P15975457061300943958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A100803 (n + 1)).toNat

end

end A001223.P15975457061300943958

namespace A001223

/-- `A000463(A100803(n+1))` -/
def P15975457061300943958.Spec : Prop :=
  ∀ n, P15975457061300943958.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P6082763521573540317

`A034867(A074927(n+1))`
-/

namespace A001223.P6082763521573540317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (A074927 (n + 1)).toNat

end

end A001223.P6082763521573540317

namespace A001223

/-- `A034867(A074927(n+1))` -/
def P6082763521573540317.Spec : Prop :=
  ∀ n, P6082763521573540317.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P15899140562750550060

`A075527(n)-A075526(n)`
-/

namespace A001223.P15899140562750550060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - A075526 n

end

end A001223.P15899140562750550060

namespace A001223

/-- `A075527(n)-A075526(n)` -/
def P15899140562750550060.Spec : Prop :=
  ∀ n, P15899140562750550060.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P8190171417344079884

`A147966(n+1)+A001489(n)`
-/

namespace A001223.P8190171417344079884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147966 (n + 1) + A001489 n

end

end A001223.P8190171417344079884

namespace A001223

/-- `A147966(n+1)+A001489(n)` -/
def P8190171417344079884.Spec : Prop :=
  ∀ n, P8190171417344079884.a n = A001223 (n + 1)

theorem P8190171417344079884.correct : P8190171417344079884.Spec := by
  intro n
  simp only [A001223, Nat.add_sub_cancel, A001223.P8190171417344079884.a, A001223.P5034056745985311719.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001489, A001489.P15233530513763566776.a, A147966, A147966.P17845740115898667296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001223

/-! ## A001223.P5454311261553779839

`A037201(1-A037203(n)+n)`
-/

namespace A001223.P5454311261553779839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037201 (1 - A037203 n + (n : ℤ)).toNat

end

end A001223.P5454311261553779839

namespace A001223

/-- `A037201(1-A037203(n)+n)` -/
def P5454311261553779839.Spec : Prop :=
  ∀ n, P5454311261553779839.a n = A001223 (n + 1)

end A001223

/-! ## A001223.P17614042808571212477

`A007504(n)-A166448(n+1)`
-/

namespace A001223.P17614042808571212477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A166448 (n + 1)

end

end A001223.P17614042808571212477

namespace A001223

/-- `A007504(n)-A166448(n+1)` -/
def P17614042808571212477.Spec : Prop :=
  ∀ n, P17614042808571212477.a n = A001223 (n + 1)

end A001223

/-!
# A001224: If F(n) is the n-th Fibonacci number, then a(2n) = (F(2n+1) + F(n+2))/2 and a(2n+1) = (F(2n+2) + F(n+1))/2.

The programs for A001224, the canonical program `A001224.P15167024131846782578` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001224 has offset 1).

The definition of A001224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001224.P15167024131846782578

`a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=5, a(5)=9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001224

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` -/
def P15167024131846782578.Spec : Prop :=
  ∀ n, P15167024131846782578.a n = A001224 (n + 1)

theorem P15167024131846782578.correct : P15167024131846782578.Spec := by
  intro n
  simp only [A001224, Nat.add_sub_cancel]

end A001224

/-! ## A001224.P7265414075572774875

`(A000045(n+2)+A000045(floor((n+4+(-1)^(n+1))/2)))/2`
-/

namespace A001224.P7265414075572774875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) + A000045 ⌊((n + 4 : ℤ) + (-1) ^ (n + 1) : ℚ) / 2⌋.toNat : ℚ) / 2

end

end A001224.P7265414075572774875

namespace A001224

/-- `(A000045(n+2)+A000045(floor((n+4+(-1)^(n+1))/2)))/2` -/
def P7265414075572774875.Spec : Prop :=
  ∀ n, P7265414075572774875.a n = (A001224 (n + 1) : ℚ)

end A001224

/-! ## A001224.P9459991079204949945

`A060312(n+1)+char[1]`
-/

namespace A001224.P9459991079204949945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001224.P9459991079204949945

namespace A001224

/-- `A060312(n+1)+char[1]` -/
def P9459991079204949945.Spec : Prop :=
  ∀ n, P9459991079204949945.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P7335430395186899438

`A060312(C(n, n²)+n+1)`
-/

namespace A001224.P7335430395186899438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (Nat.choose n (n ^ 2) + n + 1)

end

end A001224.P7335430395186899438

namespace A001224

/-- `A060312(C(n, n²)+n+1)` -/
def P7335430395186899438.Spec : Prop :=
  ∀ n, P7335430395186899438.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P11604024885160557792

`A060312(A348776(n+1))`
-/

namespace A001224.P11604024885160557792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A348776 (n + 1)).toNat

end

end A001224.P11604024885160557792

namespace A001224

/-- `A060312(A348776(n+1))` -/
def P11604024885160557792.Spec : Prop :=
  ∀ n, P11604024885160557792.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P9037754793913890085

`A060312(A141044(n)+n)`
-/

namespace A001224.P9037754793913890085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A141044 n + (n : ℤ)).toNat

end

end A001224.P9037754793913890085

namespace A001224

/-- `A060312(A141044(n)+n)` -/
def P9037754793913890085.Spec : Prop :=
  ∀ n, P9037754793913890085.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P13963325914854806151

`A060312(A373565(n)+n)`
-/

namespace A001224.P13963325914854806151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A373565 n + (n : ℤ)).toNat

end

end A001224.P13963325914854806151

namespace A001224

/-- `A060312(A373565(n)+n)` -/
def P13963325914854806151.Spec : Prop :=
  ∀ n, P13963325914854806151.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P13204992431902585000

`A060312(A063524(n)+1+n)`
-/

namespace A001224.P13204992431902585000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A063524 n + 1 + (n : ℤ)).toNat

end

end A001224.P13204992431902585000

namespace A001224

/-- `A060312(A063524(n)+1+n)` -/
def P13204992431902585000.Spec : Prop :=
  ∀ n, P13204992431902585000.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P12406842060468258547

`A068928(n+1)-A000007(n)`
-/

namespace A001224.P12406842060468258547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 1) - A000007 n

end

end A001224.P12406842060468258547

namespace A001224

/-- `A068928(n+1)-A000007(n)` -/
def P12406842060468258547.Spec : Prop :=
  ∀ n, P12406842060468258547.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P15939866426669359708

`A060312(1-A159075(n)+n)`
-/

namespace A001224.P15939866426669359708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (1 - A159075 n + (n : ℤ)).toNat

end

end A001224.P15939866426669359708

namespace A001224

/-- `A060312(1-A159075(n)+n)` -/
def P15939866426669359708.Spec : Prop :=
  ∀ n, P15939866426669359708.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P544053218381583344

`A060312(1-(A159075(n)-n))`
-/

namespace A001224.P544053218381583344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (1 - (A159075 n - (n : ℤ))).toNat

end

end A001224.P544053218381583344

namespace A001224

/-- `A060312(1-(A159075(n)-n))` -/
def P544053218381583344.Spec : Prop :=
  ∀ n, P544053218381583344.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P16522682085804777898

`A068928(n+1)/A054977(n)`
-/

namespace A001224.P16522682085804777898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068928 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A001224.P16522682085804777898

namespace A001224

/-- `A068928(n+1)/A054977(n)` -/
def P16522682085804777898.Spec : Prop :=
  ∀ n, P16522682085804777898.a n = (A001224 (n + 1) : ℚ)

end A001224

/-! ## A001224.P16316906658275873964

`A060312(A019590(n+1)+1+n)`
-/

namespace A001224.P16316906658275873964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A019590 (n + 1) + 1 + (n : ℤ)).toNat

end

end A001224.P16316906658275873964

namespace A001224

/-- `A060312(A019590(n+1)+1+n)` -/
def P16316906658275873964.Spec : Prop :=
  ∀ n, P16316906658275873964.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P80077086481900647

`A068928(n+1)-A019590(n+2)`
-/

namespace A001224.P80077086481900647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 1) - A019590 (n + 2)

end

end A001224.P80077086481900647

namespace A001224

/-- `A068928(n+1)-A019590(n+2)` -/
def P80077086481900647.Spec : Prop :=
  ∀ n, P80077086481900647.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P11495756672874800126

`A068928(n+1)/A141044(n+1)`
-/

namespace A001224.P11495756672874800126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068928 (n + 1) : ℚ) / (A141044 (n + 1) : ℚ)

end

end A001224.P11495756672874800126

namespace A001224

/-- `A068928(n+1)/A141044(n+1)` -/
def P11495756672874800126.Spec : Prop :=
  ∀ n, P11495756672874800126.a n = (A001224 (n + 1) : ℚ)

end A001224

/-! ## A001224.P6291930361061692783

`A060312(A171624(2*n+1)+n)`
-/

namespace A001224.P6291930361061692783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060312 (A171624 (2 * n + 1) + (n : ℤ)).toNat

end

end A001224.P6291930361061692783

namespace A001224

/-- `A060312(A171624(2*n+1)+n)` -/
def P6291930361061692783.Spec : Prop :=
  ∀ n, P6291930361061692783.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P18308335192235336409

`A068928(n+1)-A169585(2*n)`
-/

namespace A001224.P18308335192235336409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 1) - A169585 (2 * n)

end

end A001224.P18308335192235336409

namespace A001224

/-- `A068928(n+1)-A169585(2*n)` -/
def P18308335192235336409.Spec : Prop :=
  ∀ n, P18308335192235336409.a n = A001224 (n + 1)

end A001224

/-! ## A001224.P7337401320005936558

`gcd(A068928(n+1), A169585(n+1))`
-/

namespace A001224.P7337401320005936558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068928 (n + 1)) (A169585 (n + 1))

end

end A001224.P7337401320005936558

namespace A001224

/-- `gcd(A068928(n+1), A169585(n+1))` -/
def P7337401320005936558.Spec : Prop :=
  ∀ n, (P7337401320005936558.a n : ℤ) = A001224 (n + 1)

end A001224

/-! ## A001224.P8838249391506161464

`lcm(A060312(n+1), A171624(n+1))`
-/

namespace A001224.P8838249391506161464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060312 (n + 1)) (A171624 (n + 1))

end

end A001224.P8838249391506161464

namespace A001224

/-- `lcm(A060312(n+1), A171624(n+1))` -/
def P8838249391506161464.Spec : Prop :=
  ∀ n, (P8838249391506161464.a n : ℤ) = A001224 (n + 1)

end A001224

/-!
# A001225: Number of consistent arcs in a tournament with n nodes.

The programs for A001225, there is no canonical definition to state claims against.
-/

/-! ## A001225.P4171135678169100444

`C(n+2, 2)-A003141(n+2)`
-/

namespace A001225.P4171135678169100444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - A003141 (n + 2)

end

end A001225.P4171135678169100444

/-! ## A001225.P1266578092833787873

`round(root(A143270(n+1), ϕ))`
-/

namespace A001225.P1266578092833787873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143270 (n + 1) : ℝ) ^ (1 / Real.goldenRatio))

end

end A001225.P1266578092833787873

/-! ## A001225.P180662451118031961

`A100471(n)+∑[ceil(sqrt(n))]`
-/

namespace A001225.P180662451118031961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100471 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001225.P180662451118031961

/-! ## A001225.P14551544195895613194

`∑[n+1]-A003141(n+2)`
-/

namespace A001225.P14551544195895613194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003141 (n + 2)

end

end A001225.P14551544195895613194

/-! ## A001225.P1436955358025164550

`∑[A183063(n+2)+ceil(n/2)]`
-/

namespace A001225.P1436955358025164550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 2) + ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001225.P1436955358025164550

/-!
# A001226: Lerch's function q_2(n) = (2^{phi(t)} - 1)/t where t = 2*n - 1.

The programs for A001226, the canonical program `A001226.P11889909066572321013` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001226 has offset 1).

The definition of A001226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001226.P11889909066572321013

`(2^A000010(2*(n+1)-1)-1)/(2*(n+1)-1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001226

/-- `(2^A000010(2*(n+1)-1)-1)/(2*(n+1)-1)` -/
def P11889909066572321013.Spec : Prop :=
  ∀ n, P11889909066572321013.a n = (A001226 (n + 1) : ℚ)

end A001226

/-! ## A001226.P12370299547493920539

`A100371(2*n+1)/Δ[n²]`
-/

namespace A001226.P12370299547493920539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100371 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A001226.P12370299547493920539

namespace A001226

/-- `A100371(2*n+1)/Δ[n²]` -/
def P12370299547493920539.Spec : Prop :=
  ∀ n, P12370299547493920539.a n = (A001226 (n + 1) : ℚ)

end A001226

/-! ## A001226.P380973067018094607

`ceil(A243306(2*n+1)/(2*n+1))`
-/

namespace A001226.P380973067018094607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A243306 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A001226.P380973067018094607

namespace A001226

/-- `ceil(A243306(2*n+1)/(2*n+1))` -/
def P380973067018094607.Spec : Prop :=
  ∀ n, P380973067018094607.a n = A001226 (n + 1)

end A001226

/-! ## A001226.P13400076991523596967

`A000225(A037225(n))/(2*n+1)`
-/

namespace A001226.P13400076991523596967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A037225 n).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A001226.P13400076991523596967

namespace A001226

/-- `A000225(A037225(n))/(2*n+1)` -/
def P13400076991523596967.Spec : Prop :=
  ∀ n, P13400076991523596967.a n = (A001226 (n + 1) : ℚ)

end A001226

/-! ## A001226.P11241583912097777352

`A000225(A000010(2*n+1))/(2*n+1)`
-/

namespace A001226.P11241583912097777352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A000010 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A001226.P11241583912097777352

namespace A001226

/-- `A000225(A000010(2*n+1))/(2*n+1)` -/
def P11241583912097777352.Spec : Prop :=
  ∀ n, P11241583912097777352.a n = (A001226 (n + 1) : ℚ)

end A001226

/-! ## A001226.P5979913832286093459

`A000225(A162728(2*n+1))/(2*n+1)`
-/

namespace A001226.P5979913832286093459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A162728 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A001226.P5979913832286093459

namespace A001226

/-- `A000225(A162728(2*n+1))/(2*n+1)` -/
def P5979913832286093459.Spec : Prop :=
  ∀ n, P5979913832286093459.a n = (A001226 (n + 1) : ℚ)

end A001226

/-!
# A001227: Number of odd divisors of n.

The programs for A001227, the canonical program `A001227.P17291574635237243988` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001227 has offset 1).

The definition of A001227 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A001227.anchor (n : ℕ) (hn : 1 ≤ n) : A001227 n = (((Nat.divisors n).filter Odd).card : ℤ)` in `Proof.A001.A001227`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001227.P17291574635237243988

`∑{d}[n+1, #%2]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001227

/-- `∑{d}[n+1, #%2]` -/
def P17291574635237243988.Spec : Prop :=
  ∀ n, (P17291574635237243988.a n : ℤ) = A001227 (n + 1)

theorem P17291574635237243988.correct : P17291574635237243988.Spec := by
  intro n
  simp only [A001227, Nat.add_sub_cancel]

end A001227

/-! ## A001227.P6375084197133882516

`1+A069283(n+1)`
-/

namespace A001227.P6375084197133882516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A069283 (n + 1)

end

end A001227.P6375084197133882516

namespace A001227

/-- `1+A069283(n+1)` -/
def P6375084197133882516.Spec : Prop :=
  ∀ n, P6375084197133882516.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P11680636631917143768

`A000005(n+1)/val(2*(n+1), 2)`
-/

namespace A001227.P11680636631917143768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (SequenceMachineLib.valuation (2 * (n + 1)) 2 : ℚ)

end

end A001227.P11680636631917143768

namespace A001227

/-- `A000005(n+1)/val(2*(n+1), 2)` -/
def P11680636631917143768.Spec : Prop :=
  ∀ n, P11680636631917143768.a n = (A001227 (n + 1) : ℚ)

end A001227

/-! ## A001227.P7400228400831993613

`A000005(A000265(n+1))`
-/

namespace A001227.P7400228400831993613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat

end

end A001227.P7400228400831993613

namespace A001227

/-- `A000005(A000265(n+1))` -/
def P7400228400831993613.Spec : Prop :=
  ∀ n, P7400228400831993613.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P4738757132829271036

`A001826(n+1)+A001842(n+1)`
-/

namespace A001227.P4738757132829271036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) + A001842 (n + 1)

end

end A001227.P4738757132829271036

namespace A001227

/-- `A001826(n+1)+A001842(n+1)` -/
def P4738757132829271036.Spec : Prop :=
  ∀ n, P4738757132829271036.a n = A001227 (n + 1)

theorem P4738757132829271036.correct : P4738757132829271036.Spec := by
  intro n
  simp only [A001227, Nat.add_sub_cancel, A001227.P4738757132829271036.a, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001227

/-! ## A001227.P15314215467539815540

`A099777(n+1)-A000005(n+1)`
-/

namespace A001227.P15314215467539815540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A000005 (n + 1)

end

end A001227.P15314215467539815540

namespace A001227

/-- `A099777(n+1)-A000005(n+1)` -/
def P15314215467539815540.Spec : Prop :=
  ∀ n, P15314215467539815540.a n = A001227 (n + 1)

theorem P15314215467539815540.correct : P15314215467539815540.Spec := by
  intro n
  simp only [A001227, Nat.add_sub_cancel, A001227.P15314215467539815540.a, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A000005, A000005.P16091521709108585461.a, A099777, A099777.P11792433152824821401.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001227

/-! ## A001227.P2277303906654185524

`A000005(n+1)-A183063(n+1)`
-/

namespace A001227.P2277303906654185524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A183063 (n + 1)

end

end A001227.P2277303906654185524

namespace A001227

/-- `A000005(n+1)-A183063(n+1)` -/
def P2277303906654185524.Spec : Prop :=
  ∀ n, P2277303906654185524.a n = A001227 (n + 1)

theorem P2277303906654185524.correct : P2277303906654185524.Spec := by
  intro n
  simp only [A001227, Nat.add_sub_cancel, A001227.P2277303906654185524.a, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A000005, A000005.P16091521709108585461.a, A183063, A183063.P14549643650991336837.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A062011, A062011.P17525320077853469406.a, A099777, A099777.P11792433152824821401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001227

/-! ## A001227.P1758692093366748453

`A003056(n+1)-A238005(n+1)`
-/

namespace A001227.P1758692093366748453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - A238005 (n + 1)

end

end A001227.P1758692093366748453

namespace A001227

/-- `A003056(n+1)-A238005(n+1)` -/
def P1758692093366748453.Spec : Prop :=
  ∀ n, P1758692093366748453.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P581032279525510907

`A000005(n+1)/A001511(n+1)`
-/

namespace A001227.P581032279525510907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A001227.P581032279525510907

namespace A001227

/-- `A000005(n+1)/A001511(n+1)` -/
def P581032279525510907.Spec : Prop :=
  ∀ n, P581032279525510907.a n = (A001227 (n + 1) : ℚ)

end A001227

/-! ## A001227.P9150119340778228474

`A000005(n+1)/(A007814(n+1)+1)`
-/

namespace A001227.P9150119340778228474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A007814 (n + 1) + 1 : ℚ)

end

end A001227.P9150119340778228474

namespace A001227

/-- `A000005(n+1)/(A007814(n+1)+1)` -/
def P9150119340778228474.Spec : Prop :=
  ∀ n, P9150119340778228474.a n = (A001227 (n + 1) : ℚ)

end A001227

/-! ## A001227.P12036815038502124740

`A000005(2*(n+1))-A000005(n+1)`
-/

namespace A001227.P12036815038502124740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A000005 (n + 1)

end

end A001227.P12036815038502124740

namespace A001227

/-- `A000005(2*(n+1))-A000005(n+1)` -/
def P12036815038502124740.Spec : Prop :=
  ∀ n, P12036815038502124740.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P2472391099591120620

`A113414(2*(n+1))`
-/

namespace A001227.P2472391099591120620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (2 * (n + 1))

end

end A001227.P2472391099591120620

namespace A001227

/-- `A113414(2*(n+1))` -/
def P2472391099591120620.Spec : Prop :=
  ∀ n, P2472391099591120620.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P8463433885703338932

`∑{d}[n+1, and(1, #)]`
-/

namespace A001227.P8463433885703338932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d

end

end A001227.P8463433885703338932

namespace A001227

/-- `∑{d}[n+1, and(1, #)]` -/
def P8463433885703338932.Spec : Prop :=
  ∀ n, (P8463433885703338932.a n : ℤ) = A001227 (n + 1)

theorem P8463433885703338932.correct : P8463433885703338932.Spec := by
  intro n
  simp only [A001227, Nat.add_sub_cancel, A001227.P8463433885703338932.f1, A001227.P8463433885703338932.a, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try simp

end A001227

/-! ## A001227.P5812259183157892278

`∑{d}[n+1, 2-gcd(2, #)]`
-/

namespace A001227.P5812259183157892278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.gcd 2 d : ℤ))

end

end A001227.P5812259183157892278

namespace A001227

/-- `∑{d}[n+1, 2-gcd(2, #)]` -/
def P5812259183157892278.Spec : Prop :=
  ∀ n, P5812259183157892278.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P17654668695797156193

`∑{d}[n+1, val(#²+1, 2)]`
-/

namespace A001227.P17654668695797156193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2 + 1) 2

end

end A001227.P17654668695797156193

namespace A001227

/-- `∑{d}[n+1, val(#²+1, 2)]` -/
def P17654668695797156193.Spec : Prop :=
  ∀ n, (P17654668695797156193.a n : ℤ) = A001227 (n + 1)

end A001227

/-! ## A001227.P14233550687384307862

`∑{d}[n+1, or(#, -2)+2]`
-/

namespace A001227.P14233550687384307862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.lor (d : ℤ) (-2) + 2)

end

end A001227.P14233550687384307862

namespace A001227

/-- `∑{d}[n+1, or(#, -2)+2]` -/
def P14233550687384307862.Spec : Prop :=
  ∀ n, P14233550687384307862.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P3302369008635259004

`∑{d}[2*n-(n-1), and(1, #)²]`
-/

namespace A001227.P3302369008635259004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d ^ 2

end

end A001227.P3302369008635259004

namespace A001227

/-- `∑{d}[2*n-(n-1), and(1, #)²]` -/
def P3302369008635259004.Spec : Prop :=
  ∀ n, (P3302369008635259004.a n : ℤ) = A001227 (n + 1)

end A001227

/-! ## A001227.P17820274099143869845

`Δ[A248517(n)]+1`
-/

namespace A001227.P17820274099143869845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A001227.P17820274099143869845

namespace A001227

/-- `Δ[A248517(n)]+1` -/
def P17820274099143869845.Spec : Prop :=
  ∀ n, P17820274099143869845.a n = A001227 (n + 1)

end A001227

/-! ## A001227.P16791899027066580646

`A054844(n+1)/2`
-/

namespace A001227.P16791899027066580646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2

end

end A001227.P16791899027066580646

namespace A001227

/-- `A054844(n+1)/2` -/
def P16791899027066580646.Spec : Prop :=
  ∀ n, P16791899027066580646.a n = (A001227 (n + 1) : ℚ)

theorem P16791899027066580646.correct : P16791899027066580646.Spec := by
  intro n
  simp only [A001227, Nat.add_sub_cancel, A001227.P16791899027066580646.a, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A054844, A054844.P10228147231781804913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001227

/-! ## A001227.P2414955369356012815

`A320003(6*(n+1))`
-/

namespace A001227.P2414955369356012815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (6 * (n + 1))

end

end A001227.P2414955369356012815

namespace A001227

/-- `A320003(6*(n+1))` -/
def P2414955369356012815.Spec : Prop :=
  ∀ n, P2414955369356012815.a n = A001227 (n + 1)

end A001227

/-!
# A001229: Numbers k such that phi(sigma(k)) = k.

The programs for A001229, there is no canonical definition to state claims against.
-/

/-! ## A001229.P3757123598990876888

`floor(A266165(n+1)/2)`
-/

namespace A001229.P3757123598990876888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266165 (n + 1) : ℚ) / 2⌋

end

end A001229.P3757123598990876888

/-! ## A001229.P11201777940402941670

`round(A266165(n+1)/2-A007318(C(2, n)))`
-/

namespace A001229.P11201777940402941670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266165 (n + 1) : ℚ) / 2 - (A007318 (Nat.choose 2 n) : ℚ))

end

end A001229.P11201777940402941670

/-! ## A001229.P10621081210662308035

`round(A266165(n+1)/2-ceil(1/A000041(n)))`
-/

namespace A001229.P10621081210662308035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266165 (n + 1) : ℚ) / 2 - (⌈1 / (A000041 n : ℚ)⌉ : ℚ))

end

end A001229.P10621081210662308035

/-! ## A001229.P16211218579978269206

`(A266165(n+1)/2-1/2)^(A000040(n+1)%2)`
-/

namespace A001229.P16211218579978269206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A266165 (n + 1) : ℚ) / 2 - (1 : ℚ) / 2) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A001229.P16211218579978269206

/-! ## A001229.P8909997944821262839

`ceil(A266165(n+1)/2-A007318(A185284(n)))`
-/

namespace A001229.P8909997944821262839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A266165 (n + 1) : ℚ) / 2 - (A007318 (A185284 n).toNat : ℚ)⌉

end

end A001229.P8909997944821262839

/-!
# A001232: Numbers k such that 9*k = (k written backwards), k > 0.

The programs for A001232, there is no canonical definition to state claims against.
-/

/-! ## A001232.P1643159747777556643

`A008918(n+1)/2`
-/

namespace A001232.P1643159747777556643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008918 (n + 1) : ℚ) / 2

end

end A001232.P1643159747777556643

/-! ## A001232.P1367835454674320338

`99*A061851(n+1)`
-/

namespace A001232.P1367835454674320338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  99 * A061851 (n + 1)

end

end A001232.P1367835454674320338

/-! ## A001232.P15022072849166523070

`A285040(n+1)/4`
-/

namespace A001232.P15022072849166523070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285040 (n + 1) : ℚ) / 4

end

end A001232.P15022072849166523070

/-! ## A001232.P9823863085584763542

`A222815(n+1)/8`
-/

namespace A001232.P9823863085584763542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222815 (n + 1) : ℚ) / 8

end

end A001232.P9823863085584763542

/-! ## A001232.P5535824204770173736

`A222814(n+1)/9`
-/

namespace A001232.P5535824204770173736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222814 (n + 1) : ℚ) / 9

end

end A001232.P5535824204770173736

/-! ## A001232.P9109813099272697978

`A222814(n+1)-A222815(n+1)`
-/

namespace A001232.P9109813099272697978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1) - A222815 (n + 1)

end

end A001232.P9109813099272697978

/-! ## A001232.P13566085471574997657

`A222814(n+1)%A008918(n+1)`
-/

namespace A001232.P13566085471574997657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222814 (n + 1)) (A008918 (n + 1))

end

end A001232.P13566085471574997657

/-! ## A001232.P12911203542974201118

`gcd(A222814(n+1), A285040(n+1))`
-/

namespace A001232.P12911203542974201118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222814 (n + 1)) (A285040 (n + 1))

end

end A001232.P12911203542974201118

/-! ## A001232.P7715359518319124992

`A101706(n+2)/3`
-/

namespace A001232.P7715359518319124992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101706 (n + 2) : ℚ) / 3

end

end A001232.P7715359518319124992

/-! ## A001232.P17897273936552115986

`A101704(n+2)/6`
-/

namespace A001232.P17897273936552115986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101704 (n + 2) : ℚ) / 6

end

end A001232.P17897273936552115986

/-! ## A001232.P11421696652177927547

`A101706(n+2)-A008918(n+1)`
-/

namespace A001232.P11421696652177927547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 2) - A008918 (n + 1)

end

end A001232.P11421696652177927547

/-! ## A001232.P7759555527843316241

`A285040(n+1)-A101706(n+2)`
-/

namespace A001232.P7759555527843316241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285040 (n + 1) - A101706 (n + 2)

end

end A001232.P7759555527843316241

/-! ## A001232.P11332896087505159432

`record[lcm(2, A008919(n+1))/2]`
-/

namespace A001232.P11332896087505159432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A008919 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001232.P11332896087505159432

/-! ## A001232.P17198160019118334064

`record[gcd(A008919(n+1), A031877(n+1))]`
-/

namespace A001232.P17198160019118334064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008919 (n + 1)) (A031877 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001232.P17198160019118334064

/-!
# A001233: Unsigned Stirling numbers of first kind s(n,6).

The programs for A001233, there is no canonical definition to state claims against.
-/

/-! ## A001233.P9819609555604590938

`A094638(∑[n+6]+10)`
-/

namespace A001233.P9819609555604590938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A001233.P9819609555604590938

/-! ## A001233.P2913078955575593052

`A132393(A166136(n+5))`
-/

namespace A001233.P2913078955575593052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A166136 (n + 5)).toNat

end

end A001233.P2913078955575593052

/-! ## A001233.P6775798224491507781

`A132393(eq[6, A002262(n)])`
-/

namespace A001233.P6775798224491507781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001233.P6775798224491507781

/-! ## A001233.P17387600321703358802

`A132393(A167614(n+5)+3)`
-/

namespace A001233.P17387600321703358802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A167614 (n + 5) + 3).toNat

end

end A001233.P17387600321703358802

/-! ## A001233.P12835388373682271986

`A132393(A000124(n+6)+5)`
-/

namespace A001233.P12835388373682271986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000124 (n + 6) + 5).toNat

end

end A001233.P12835388373682271986

/-! ## A001233.P15827634882993712778

`A130534(eq[6, A002260(n+1)])`
-/

namespace A001233.P15827634882993712778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001233.P15827634882993712778

/-! ## A001233.P16397730084570106545

`A132393(eq[6, A144328(n+1)])`
-/

namespace A001233.P16397730084570106545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001233.P16397730084570106545

/-! ## A001233.P2479020581072334551

`A132393(eq[7, A002260(n+1)])`
-/

namespace A001233.P2479020581072334551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001233.P2479020581072334551

/-!
# A001234: Unsigned Stirling numbers of the first kind s(n,7).

The programs for A001234, there is no canonical definition to state claims against.
-/

/-! ## A001234.P7767096192312206007

`A094638(A055999(n+4))`
-/

namespace A001234.P7767096192312206007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A055999 (n + 4)).toNat

end

end A001234.P7767096192312206007

/-! ## A001234.P1333391477545988660

`A130534(eq[6, A002262(n)])`
-/

namespace A001234.P1333391477545988660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001234.P1333391477545988660

/-! ## A001234.P11873542738483565941

`A132393(eq[7, A002262(n)])`
-/

namespace A001234.P11873542738483565941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001234.P11873542738483565941

/-! ## A001234.P295744017134775761

`A130534(A000096(n+5)+7)`
-/

namespace A001234.P295744017134775761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000096 (n + 5) + 7).toNat

end

end A001234.P295744017134775761

/-! ## A001234.P10810734220325715503

`A130534(eq[7, A002260(n+1)])`
-/

namespace A001234.P10810734220325715503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001234.P10810734220325715503

/-! ## A001234.P16718946138250987354

`A132393(eq[7, A144328(n+1)])`
-/

namespace A001234.P16718946138250987354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001234.P16718946138250987354

/-! ## A001234.P4940517480749891275

`A132393(eq[8, A002260(n+1)])`
-/

namespace A001234.P4940517480749891275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001234.P4940517480749891275

/-!
# A001235: Taxi-cab numbers: sums of 2 cubes in more than 1 way.

The programs for A001235, there is no canonical definition to state claims against.
-/

/-! ## A001235.P189797049985602306

`∪[A379466(n+1), A379849(n+1)]`
-/

namespace A001235.P189797049985602306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001235.P189797049985602306

/-! ## A001235.P1508272303139446104

`A003325(A197719(n+1))`
-/

namespace A001235.P1508272303139446104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A197719 (n + 1)).toNat

end

end A001235.P1508272303139446104

/-!
# A001236: Differences of reciprocals of unity.

The programs for A001236, there is no canonical definition to state claims against.
-/

/-! ## A001236.P1054348584707465893

`A008969(A141214(n)+7)`
-/

namespace A001236.P1054348584707465893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A141214 n + 7).toNat

end

end A001236.P1054348584707465893

/-! ## A001236.P7292694301447481351

`A008969(A052905(n)+9)`
-/

namespace A001236.P7292694301447481351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A052905 n + 9).toNat

end

end A001236.P7292694301447481351

/-! ## A001236.P3086205008702143590

`A008969(A055999(n)+10)`
-/

namespace A001236.P3086205008702143590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A055999 n + 10).toNat

end

end A001236.P3086205008702143590

/-! ## A001236.P7211255022754039266

`A008969(A167614(n+2)+1)`
-/

namespace A001236.P7211255022754039266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A167614 (n + 2) + 1).toNat

end

end A001236.P7211255022754039266

/-! ## A001236.P3821221793556285761

`A008969(A000124(n+3)+3)`
-/

namespace A001236.P3821221793556285761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A000124 (n + 3) + 3).toNat

end

end A001236.P3821221793556285761

/-!
# A001237: Differences of reciprocals of unity.

The programs for A001237, there is no canonical definition to state claims against.
-/

/-! ## A001237.P4756276504518917070

`A008969(A167499(n+3))`
-/

namespace A001237.P4756276504518917070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A167499 (n + 3)).toNat

end

end A001237.P4756276504518917070

/-! ## A001237.P4889710280881673762

`A008969(A155212(n)+13)`
-/

namespace A001237.P4889710280881673762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A155212 n + 13).toNat

end

end A001237.P4889710280881673762

/-! ## A001237.P8088340011295442024

`A112492(A056119(n)+16)`
-/

namespace A001237.P8088340011295442024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A056119 n + 16).toNat

end

end A001237.P8088340011295442024

/-!
# A001238: Differences of reciprocals of unity.

The programs for A001238, there is no canonical definition to state claims against.
-/

/-! ## A001238.P1644987647899075374

`A008969(eq[7, A131818(n+1)])`
-/

namespace A001238.P1644987647899075374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001238.P1644987647899075374

/-! ## A001238.P3590732246602160630

`A008969(A000217(n+6)-n)`
-/

namespace A001238.P3590732246602160630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A001238.P3590732246602160630

/-!
# A001240: Expansion of 1/((1-2x)(1-3x)(1-6x)).

The programs for A001240, the canonical program `A001240.P11469628122582966680` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001240 has offset 1).

The definition of A001240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-11x+36x^2-36x^3))` (program `A001240.P11469628122582966680`, by `A001240.P11469628122582966680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001240.P11469628122582966680

`ogf(1/(1-11x+36x^2-36x^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001240

/-- `ogf(1/(1-11x+36x^2-36x^3))` -/
def P11469628122582966680.Spec : Prop :=
  ∀ n, P11469628122582966680.a n = A001240 (n + 1)

theorem P11469628122582966680.correct : P11469628122582966680.Spec := by
  intro n
  simp only [A001240, Nat.add_sub_cancel]

end A001240

/-! ## A001240.P16021849507455220354

`2^n+3^(n+1)*(2^n-1)`
-/

namespace A001240.P16021849507455220354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (3 ^ (n + 1) : ℤ) * ((2 ^ n : ℤ) - 1)

end

end A001240.P16021849507455220354

namespace A001240

/-- `2^n+3^(n+1)*(2^n-1)` -/
def P16021849507455220354.Spec : Prop :=
  ∀ n, P16021849507455220354.a n = A001240 (n + 1)

end A001240

/-! ## A001240.P9508380473322964408

`Δ[A016211(n)-A016200(n)]`
-/

namespace A001240.P9508380473322964408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016211 n - A016200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001240.P9508380473322964408

namespace A001240

/-- `Δ[A016211(n)-A016200(n)]` -/
def P9508380473322964408.Spec : Prop :=
  ∀ n, P9508380473322964408.a n = A001240 (n + 1)

end A001240

/-! ## A001240.P3844975764441055012

`A008969(∑[n+2])`
-/

namespace A001240.P3844975764441055012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001240.P3844975764441055012

namespace A001240

/-- `A008969(∑[n+2])` -/
def P3844975764441055012.Spec : Prop :=
  ∀ n, P3844975764441055012.a n = A001240 (n + 1)

end A001240

/-! ## A001240.P3440045088925344985

`∑[A346239(2^(n+1))]`
-/

namespace A001240.P3440045088925344985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346239 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001240.P3440045088925344985

namespace A001240

/-- `∑[A346239(2^(n+1))]` -/
def P3440045088925344985.Spec : Prop :=
  ∀ n, P3440045088925344985.a n = A001240 (n + 1)

end A001240

/-!
# A001241: Differences of reciprocals of unity.

The programs for A001241, there is no canonical definition to state claims against.
-/

/-! ## A001241.P16616643757803042730

`2^n*A028037(n)`
-/

namespace A001241.P16616643757803042730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028037 n

end

end A001241.P16616643757803042730

/-! ## A001241.P10340431080609066838

`A028037(n)+A000225(n)*A028037(n)`
-/

namespace A001241.P10340431080609066838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028037 n + A000225 n * A028037 n

end

end A001241.P10340431080609066838

/-! ## A001241.P8010151547083947196

`A112492(A167614(n+2))`
-/

namespace A001241.P8010151547083947196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A167614 (n + 2)).toNat

end

end A001241.P8010151547083947196

/-! ## A001241.P14799869737061131077

`A112492(A141214(n)+6)`
-/

namespace A001241.P14799869737061131077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A141214 n + 6).toNat

end

end A001241.P14799869737061131077

/-! ## A001241.P7518530218264116831

`A112492(A052905(n)+8)`
-/

namespace A001241.P7518530218264116831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (A052905 n + 8).toNat

end

end A001241.P7518530218264116831

/-!
# A001242: Differences of reciprocals of unity.

The programs for A001242, the canonical program `A001242.P12986608857992822297` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001242 has offset 1).

The definition of A001242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001242.P12986608857992822297

`(24^(n+1)-4*30^(n+1)+6*40^(n+1)-4*60^(n+1)+120^(n+1))/24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001242

/-- `(24^(n+1)-4*30^(n+1)+6*40^(n+1)-4*60^(n+1)+120^(n+1))/24` -/
def P12986608857992822297.Spec : Prop :=
  ∀ n, P12986608857992822297.a n = (A001242 (n + 1) : ℚ)

end A001242

/-! ## A001242.P2395069453580238072

`A000079(n)*A103878(n+1)`
-/

namespace A001242.P2395069453580238072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A103878 (n + 1)

end

end A001242.P2395069453580238072

namespace A001242

/-- `A000079(n)*A103878(n+1)` -/
def P2395069453580238072.Spec : Prop :=
  ∀ n, P2395069453580238072.a n = A001242 (n + 1)

end A001242

/-! ## A001242.P14015530904048607106

`∑[A011782(n)]*A103878(n+1)`
-/

namespace A001242.P14015530904048607106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A103878 (n + 1)

end

end A001242.P14015530904048607106

namespace A001242

/-- `∑[A011782(n)]*A103878(n+1)` -/
def P14015530904048607106.Spec : Prop :=
  ∀ n, P14015530904048607106.a n = A001242 (n + 1)

end A001242

/-! ## A001242.P546481399226285428

`Δ[A000051(n)]*A103878(n+1)`
-/

namespace A001242.P546481399226285428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103878 (n + 1)

end

end A001242.P546481399226285428

namespace A001242

/-- `Δ[A000051(n)]*A103878(n+1)` -/
def P546481399226285428.Spec : Prop :=
  ∀ n, P546481399226285428.a n = A001242 (n + 1)

end A001242

/-! ## A001242.P7770179007811648091

`Δ[A000225(n)]*A103878(n+1)`
-/

namespace A001242.P7770179007811648091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A103878 (n + 1)

end

end A001242.P7770179007811648091

namespace A001242

/-- `Δ[A000225(n)]*A103878(n+1)` -/
def P7770179007811648091.Spec : Prop :=
  ∀ n, P7770179007811648091.a n = A001242 (n + 1)

end A001242

/-!
# A001243: Eulerian numbers (Euler's triangle: column k=7 of A008292, column k=6 of A173018).

The programs for A001243, there is no canonical definition to state claims against.
-/

/-! ## A001243.P6457035307226778661

`A008292(A374008(n+1))`
-/

namespace A001243.P6457035307226778661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A374008 (n + 1)).toNat

end

end A001243.P6457035307226778661

/-! ## A001243.P6435745773279748078

`A123125(A167487(n+6))`
-/

namespace A001243.P6435745773279748078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A167487 (n + 6)).toNat

end

end A001243.P6435745773279748078

/-! ## A001243.P328152471755693478

`A008292(A056119(n)+28)`
-/

namespace A001243.P328152471755693478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A056119 n + 28).toNat

end

end A001243.P328152471755693478

/-! ## A001243.P17808452397396221308

`A008292(A167499(n+5)+2)`
-/

namespace A001243.P17808452397396221308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A167499 (n + 5) + 2).toNat

end

end A001243.P17808452397396221308

/-! ## A001243.P15774958160646297725

`A008292(A000124(n+6)+6)`
-/

namespace A001243.P15774958160646297725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000124 (n + 6) + 6).toNat

end

end A001243.P15774958160646297725

/-! ## A001243.P13938861352400279709

`A008292(A000217(n+6)+7)`
-/

namespace A001243.P13938861352400279709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000217 (n + 6) + 7).toNat

end

end A001243.P13938861352400279709

/-! ## A001243.P9394364532337231013

`A173018(A000217(n+7)+6)`
-/

namespace A001243.P9394364532337231013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A000217 (n + 7) + 6).toNat

end

end A001243.P9394364532337231013

/-! ## A001243.P1878244721525285473

`A008292(A055999(n+4))`
-/

namespace A001243.P1878244721525285473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A055999 (n + 4)).toNat

end

end A001243.P1878244721525285473

/-!
# A001244: Eulerian numbers (Euler's triangle: column k=8 of A008292, column k=7 of A173018).

The programs for A001244, there is no canonical definition to state claims against.
-/

/-! ## A001244.P1378071562727659672

`A008292(A374009(n+1))`
-/

namespace A001244.P1378071562727659672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A374009 (n + 1)).toNat

end

end A001244.P1378071562727659672

/-! ## A001244.P5785000427514712280

`A123125(eq[8, A002262(n)])`
-/

namespace A001244.P5785000427514712280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001244.P5785000427514712280

/-! ## A001244.P16409746612183858388

`A008292(A000217(n+7)+8)`
-/

namespace A001244.P16409746612183858388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000217 (n + 7) + 8).toNat

end

end A001244.P16409746612183858388

/-! ## A001244.P13627934547562318416

`A123125(eq[7, A327844(n+1)])`
-/

namespace A001244.P13627934547562318416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001244.P13627934547562318416

/-! ## A001244.P2462509904519697654

`A123125(eq[9, A002260(n+1)])`
-/

namespace A001244.P2462509904519697654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001244.P2462509904519697654

/-! ## A001244.P15680558682285318384

`A008292(A134869(n+8)-(n+1))`
-/

namespace A001244.P15680558682285318384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A134869 (n + 8) - (n + 1 : ℤ)).toNat

end

end A001244.P15680558682285318384

/-! ## A001244.P14291421410454092561

`A173018(eq[9, A004736(n+1)])`
-/

namespace A001244.P14291421410454092561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001244.P14291421410454092561

/-! ## A001244.P16446765838148603127

`A008292(Δ[n²]+A000124(n+6)+6)`
-/

namespace A001244.P16446765838148603127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A001244.P16446765838148603127

/-! ## A001244.P14920435736666714922

`A173018(A000096(n+10)-A004273(n+15))`
-/

namespace A001244.P14920435736666714922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A000096 (n + 10) - A004273 (n + 15)).toNat

end

end A001244.P14920435736666714922

/-! ## A001244.P4958581928797314150

`A173018(A000217(n+11)-A005843(n+15))`
-/

namespace A001244.P4958581928797314150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A000217 (n + 11) - A005843 (n + 15)).toNat

end

end A001244.P4958581928797314150

/-!
# A001245: Numbers that are the sum of 4 cubes in more than 1 way.

The programs for A001245, there is no canonical definition to state claims against.
-/

/-! ## A001245.P7073499938133715526

`lt[1, A025448(n)]`
-/

namespace A001245.P7073499938133715526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001245.P7073499938133715526

/-! ## A001245.P3088890088051998231

`eq[A025448(n), A070633(A164513(n+1))]`
-/

namespace A001245.P3088890088051998231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (A164513 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001245.P3088890088051998231

/-! ## A001245.P8857118565660562575

`eq[A010673(A038965(n+1)), A025448(n)]`
-/

namespace A001245.P8857118565660562575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A038965 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001245.P8857118565660562575

/-! ## A001245.P13067672639347208227

`eq[A025448(n), A279060(A031927(n))]`
-/

namespace A001245.P13067672639347208227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A031927 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001245.P13067672639347208227

/-! ## A001245.P8456415730724146085

`eq[A000034(A211422(n)), A025448(n)]`
-/

namespace A001245.P8456415730724146085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A211422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001245.P8456415730724146085

/-!
# A001246: Squares of Catalan numbers.

The programs for A001246, the canonical program `A001246.P6480413615949402633` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001246 has offset 0).

The definition of A001246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001246.P523249802296902166

`(C(2*n, n)/(1+n))²`
-/

namespace A001246.P523249802296902166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℚ) / (1 + n : ℚ)) ^ 2

end

end A001246.P523249802296902166

namespace A001246

/-- `(C(2*n, n)/(1+n))²` -/
def P523249802296902166.Spec : Prop :=
  ∀ n, P523249802296902166.a n = (A001246 n : ℚ)

end A001246

/-! ## A001246.P6480413615949402633

`A000108(n)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001246

/-- `A000108(n)²` -/
def P6480413615949402633.Spec : Prop :=
  ∀ n, P6480413615949402633.a n = A001246 n

theorem P6480413615949402633.correct : P6480413615949402633.Spec := by
  intro n
  simp only [A001246]

end A001246

/-! ## A001246.P8417996325010600885

`1/(2*n+1)*A000891(n)`
-/

namespace A001246.P8417996325010600885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 * n + 1 : ℚ) * (A000891 n : ℚ)

end

end A001246.P8417996325010600885

namespace A001246

/-- `1/(2*n+1)*A000891(n)` -/
def P8417996325010600885.Spec : Prop :=
  ∀ n, P8417996325010600885.a n = (A001246 n : ℚ)

end A001246

/-! ## A001246.P5711800318988487065

`((n+1)/C(2*n, n))^-2`
-/

namespace A001246.P5711800318988487065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (Nat.choose (2 * n) n : ℚ)) ^ (-2 : ℤ)

end

end A001246.P5711800318988487065

namespace A001246

/-- `((n+1)/C(2*n, n))^-2` -/
def P5711800318988487065.Spec : Prop :=
  ∀ n, P5711800318988487065.a n = (A001246 n : ℚ)

end A001246

/-! ## A001246.P7977086655836227285

`(4-6/(n+1))²*a(n-1)` with `a(0)=1`
-/

namespace A001246.P7977086655836227285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) ^ 2 * a (n - 1)

end

end A001246.P7977086655836227285

namespace A001246

/-- `(4-6/(n+1))²*a(n-1)` -/
def P7977086655836227285.Spec : Prop :=
  ∀ n, P7977086655836227285.a n = (A001246 n : ℚ)

end A001246

/-! ## A001246.P5777512508554107982

`(C(2*n, n+1)-C(2*n, n))²`
-/

namespace A001246.P5777512508554107982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) (n + 1) : ℤ) - (Nat.choose (2 * n) n : ℤ)) ^ 2

end

end A001246.P5777512508554107982

namespace A001246

/-- `(C(2*n, n+1)-C(2*n, n))²` -/
def P5777512508554107982.Spec : Prop :=
  ∀ n, P5777512508554107982.a n = A001246 n

end A001246

/-! ## A001246.P262352664813098039

`gcd(C(2*n+1, n), C(2*n, n))²`
-/

namespace A001246.P262352664813098039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (2 * n + 1) n) (Nat.choose (2 * n) n) ^ 2

end

end A001246.P262352664813098039

namespace A001246

/-- `gcd(C(2*n+1, n), C(2*n, n))²` -/
def P262352664813098039.Spec : Prop :=
  ∀ n, (P262352664813098039.a n : ℤ) = A001246 n

end A001246

/-! ## A001246.P16428977536643366293

`floor((C(2*n, n)/(2*n-(n-1)))²)`
-/

namespace A001246.P16428977536643366293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (2 * n) n : ℚ) / ((2 * n : ℤ) - ((n : ℤ) - 1) : ℚ)) ^ 2⌋

end

end A001246.P16428977536643366293

namespace A001246

/-- `floor((C(2*n, n)/(2*n-(n-1)))²)` -/
def P16428977536643366293.Spec : Prop :=
  ∀ n, P16428977536643366293.a n = A001246 n

end A001246

/-! ## A001246.P13487568107268787163

`(4*n-2)/(n+1)*a(n-1)*(4*n-2)/(n+1)` with `a(0)=1`
-/

namespace A001246.P13487568107268787163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 2 : ℚ) / (n + 1 : ℚ) * a (n - 1) * (((4 * n : ℤ) - 2 : ℚ) / (n + 1 : ℚ))

end

end A001246.P13487568107268787163

namespace A001246

/-- `(4*n-2)/(n+1)*a(n-1)*(4*n-2)/(n+1)` -/
def P13487568107268787163.Spec : Prop :=
  ∀ n, P13487568107268787163.a n = (A001246 n : ℚ)

end A001246

/-! ## A001246.P6692242048999680518

`A168491(n)²`
-/

namespace A001246.P6692242048999680518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n ^ 2

end

end A001246.P6692242048999680518

namespace A001246

/-- `A168491(n)²` -/
def P6692242048999680518.Spec : Prop :=
  ∀ n, P6692242048999680518.a n = A001246 n

end A001246

/-!
# A001247: Squares of Bell numbers.

The programs for A001247, there is no canonical definition to state claims against.
-/

/-! ## A001247.P15954132706291781168

`A000110(n)²`
-/

namespace A001247.P15954132706291781168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n ^ 2

end

end A001247.P15954132706291781168

/-! ## A001247.P16542232784693885467

`A292935(n)²`
-/

namespace A001247.P16542232784693885467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n ^ 2

end

end A001247.P16542232784693885467

/-! ## A001247.P5777286219343366836

`A124419(2*n)`
-/

namespace A001247.P5777286219343366836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124419 (2 * n)

end

end A001247.P5777286219343366836

/-! ## A001247.P10140820388578470152

`A011971(∑[n])²`
-/

namespace A001247.P10140820388578470152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P10140820388578470152

/-! ## A001247.P7096492542969049795

`A033306(∑[n])²`
-/

namespace A001247.P7096492542969049795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P7096492542969049795

/-! ## A001247.P12168934331426679166

`A049020(∑[n])²`
-/

namespace A001247.P12168934331426679166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P12168934331426679166

/-! ## A001247.P11272133103560170305

`A055883(∑[n])²`
-/

namespace A001247.P11272133103560170305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055883 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P11272133103560170305

/-! ## A001247.P9115637305602133157

`A059098(∑[n])²`
-/

namespace A001247.P9115637305602133157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059098 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P9115637305602133157

/-! ## A001247.P7166697881423012035

`A095149(∑[n])²`
-/

namespace A001247.P7166697881423012035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P7166697881423012035

/-! ## A001247.P15997628464124597714

`A108087(∑[n])²`
-/

namespace A001247.P15997628464124597714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001247.P15997628464124597714

/-!
# A001248: Squares of primes.

The programs for A001248, the canonical program `A001248.P16278241061688229202` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001248 has offset 1).

The definition of A001248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001248.P16278241061688229202

`A000040(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001248

/-- `A000040(n+1)²` -/
def P16278241061688229202.Spec : Prop :=
  ∀ n, P16278241061688229202.a n = A001248 (n + 1)

theorem P16278241061688229202.correct : P16278241061688229202.Spec := by
  intro n
  simp only [A001248, Nat.add_sub_cancel]

end A001248

/-! ## A001248.P2246924212534849784

`p?[round(8*n/7)]²`
-/

namespace A001248.P2246924212534849784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A001248.P2246924212534849784

namespace A001248

/-- `p?[round(8*n/7)]²` -/
def P2246924212534849784.Spec : Prop :=
  ∀ n, P2246924212534849784.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P12560910382348628775

`Δ[A007504(n)]²`
-/

namespace A001248.P12560910382348628775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001248.P12560910382348628775

namespace A001248

/-- `Δ[A007504(n)]²` -/
def P12560910382348628775.Spec : Prop :=
  ∀ n, P12560910382348628775.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P10888107881007212257

`Δ[A008348(n)]²`
-/

namespace A001248.P10888107881007212257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001248.P10888107881007212257

namespace A001248

/-- `Δ[A008348(n)]²` -/
def P10888107881007212257.Spec : Prop :=
  ∀ n, P10888107881007212257.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P17460769424355560600

`Δ[A022837(n)]²`
-/

namespace A001248.P17460769424355560600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001248.P17460769424355560600

namespace A001248

/-- `Δ[A022837(n)]²` -/
def P17460769424355560600.Spec : Prop :=
  ∀ n, P17460769424355560600.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P8727320978622698134

`Δ[A064365(n)]²`
-/

namespace A001248.P8727320978622698134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001248.P8727320978622698134

namespace A001248

/-- `Δ[A064365(n)]²` -/
def P8727320978622698134.Spec : Prop :=
  ∀ n, P8727320978622698134.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P12691373241939124208

`Δ[A309222(n)]²`
-/

namespace A001248.P12691373241939124208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001248.P12691373241939124208

namespace A001248

/-- `Δ[A309222(n)]²` -/
def P12691373241939124208.Spec : Prop :=
  ∀ n, P12691373241939124208.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P10440699447621799616

`A049001(n+1)+2`
-/

namespace A001248.P10440699447621799616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 2

end

end A001248.P10440699447621799616

namespace A001248

/-- `A049001(n+1)+2` -/
def P10440699447621799616.Spec : Prop :=
  ∀ n, P10440699447621799616.a n = A001248 (n + 1)

theorem P10440699447621799616.correct : P10440699447621799616.Spec := by
  intro n
  simp only [A001248, Nat.add_sub_cancel, A001248.P10440699447621799616.a, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049001, A049001.P8777299766092042792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001248

/-! ## A001248.P15343386701756537678

`sqrt(sqrt(A179645(n+1)))`
-/

namespace A001248.P15343386701756537678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A179645 (n + 1) : ℝ))

end

end A001248.P15343386701756537678

namespace A001248

/-- `sqrt(sqrt(A179645(n+1)))` -/
def P15343386701756537678.Spec : Prop :=
  ∀ n, P15343386701756537678.a n = (A001248 (n + 1) : ℝ)

end A001248

/-! ## A001248.P5776093813283581919

`A000040(2*n+1-n)^2`
-/

namespace A001248.P5776093813283581919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1 - n) ^ 2

end

end A001248.P5776093813283581919

namespace A001248

/-- `A000040(2*n+1-n)^2` -/
def P5776093813283581919.Spec : Prop :=
  ∀ n, P5776093813283581919.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P492160055719833210

`Δ[a(n-1)-A000040(n)]²` with `a(0)=0`
-/

namespace A001248.P492160055719833210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001248.P492160055719833210

namespace A001248

/-- `Δ[a(n-1)-A000040(n)]²` -/
def P492160055719833210.Spec : Prop :=
  ∀ n, P492160055719833210.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P17202415222372012231

`and(-3, A000040(2*n-(n-1))²)`
-/

namespace A001248.P17202415222372012231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2)

end

end A001248.P17202415222372012231

namespace A001248

/-- `and(-3, A000040(2*n-(n-1))²)` -/
def P17202415222372012231.Spec : Prop :=
  ∀ n, P17202415222372012231.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P14448941584751503813

`A153480(n)-A166010(n+1)`
-/

namespace A001248.P14448941584751503813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153480 n - A166010 (n + 1)

end

end A001248.P14448941584751503813

namespace A001248

/-- `A153480(n)-A166010(n+1)` -/
def P14448941584751503813.Spec : Prop :=
  ∀ n, P14448941584751503813.a n = A001248 (n + 1)

theorem P14448941584751503813.correct : P14448941584751503813.Spec := by
  intro n
  simp only [A001248, Nat.add_sub_cancel, A001248.P14448941584751503813.a, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153480, A153480.P7601742437354690742.a, A166010, A166010.P2375559703123786713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001248

/-! ## A001248.P17703416277433844511

`xor(A066872(n+1), A122553(n))`
-/

namespace A001248.P17703416277433844511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066872 (n + 1)) (A122553 n)

end

end A001248.P17703416277433844511

namespace A001248

/-- `xor(A066872(n+1), A122553(n))` -/
def P17703416277433844511.Spec : Prop :=
  ∀ n, P17703416277433844511.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P15255336117678355838

`A036689(n+1)+A000040(n+1)`
-/

namespace A001248.P15255336117678355838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A000040 (n + 1)

end

end A001248.P15255336117678355838

namespace A001248

/-- `A036689(n+1)+A000040(n+1)` -/
def P15255336117678355838.Spec : Prop :=
  ∀ n, P15255336117678355838.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P4550565479646099457

`A034953(n+1)+A008837(n+1)`
-/

namespace A001248.P4550565479646099457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + A008837 (n + 1)

end

end A001248.P4550565479646099457

namespace A001248

/-- `A034953(n+1)+A008837(n+1)` -/
def P4550565479646099457.Spec : Prop :=
  ∀ n, P4550565479646099457.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P14451380201372534184

`A053683(n+1)+A000879(n+1)`
-/

namespace A001248.P14451380201372534184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 1) + A000879 (n + 1)

end

end A001248.P14451380201372534184

namespace A001248

/-- `A053683(n+1)+A000879(n+1)` -/
def P14451380201372534184.Spec : Prop :=
  ∀ n, P14451380201372534184.a n = A001248 (n + 1)

theorem P14451380201372534184.correct : P14451380201372534184.Spec := by
  intro n
  simp only [A001248, Nat.add_sub_cancel, A001248.P14451380201372534184.a, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A053683, A053683.P15420794164900351699.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001248

/-! ## A001248.P523060603874663090

`A054271(n+1)+A054270(n+1)`
-/

namespace A001248.P523060603874663090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054271 (n + 1) + A054270 (n + 1)

end

end A001248.P523060603874663090

namespace A001248

/-- `A054271(n+1)+A054270(n+1)` -/
def P523060603874663090.Spec : Prop :=
  ∀ n, P523060603874663090.a n = A001248 (n + 1)

end A001248

/-! ## A001248.P14632419096541509107

`A119959(n+1)+A006093(n+1)`
-/

namespace A001248.P14632419096541509107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) + A006093 (n + 1)

end

end A001248.P14632419096541509107

namespace A001248

/-- `A119959(n+1)+A006093(n+1)` -/
def P14632419096541509107.Spec : Prop :=
  ∀ n, P14632419096541509107.a n = A001248 (n + 1)

end A001248

/-!
# A001249: Squares of tetrahedral numbers: a(n) = binomial(n+3,n)^2.

The programs for A001249, the canonical program `A001249.P11345498636801544140` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001249 has offset 0).

The definition of A001249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, n)²` (program `A001249.P11345498636801544140`, by `A001249.P11345498636801544140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001249.P7894999826474447990

`C(n+3, 3)²`
-/

namespace A001249.P7894999826474447990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 ^ 2

end

end A001249.P7894999826474447990

namespace A001249

/-- `C(n+3, 3)²` -/
def P7894999826474447990.Spec : Prop :=
  ∀ n, (P7894999826474447990.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P11345498636801544140

`C(n+3, n)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001249

/-- `C(n+3, n)²` -/
def P11345498636801544140.Spec : Prop :=
  ∀ n, (P11345498636801544140.a n : ℤ) = A001249 n

theorem P11345498636801544140.correct : P11345498636801544140.Spec := by
  intro n
  simp only [A001249]

end A001249

/-! ## A001249.P14131793504967725297

`(n+3)*C(n+2, 2)*C(n+3, 3)/3`
-/

namespace A001249.P14131793504967725297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.choose (n + 2) 2 * Nat.choose (n + 3) 3 : ℚ) / 3

end

end A001249.P14131793504967725297

namespace A001249

/-- `(n+3)*C(n+2, 2)*C(n+3, 3)/3` -/
def P14131793504967725297.Spec : Prop :=
  ∀ n, P14131793504967725297.a n = (A001249 n : ℚ)

end A001249

/-! ## A001249.P11162257440794431982

`A000292(n+1)²`
-/

namespace A001249.P11162257440794431982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) ^ 2

end

end A001249.P11162257440794431982

namespace A001249

/-- `A000292(n+1)²` -/
def P11162257440794431982.Spec : Prop :=
  ∀ n, P11162257440794431982.a n = A001249 n

end A001249

/-! ## A001249.P8129007794171607709

`a(n-1)+A000217(n+1)*A000330(n+1)` with `a(0)=1`
-/

namespace A001249.P8129007794171607709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000217 (n + 1) * A000330 (n + 1)

end

end A001249.P8129007794171607709

namespace A001249

/-- `a(n-1)+A000217(n+1)*A000330(n+1)` -/
def P8129007794171607709.Spec : Prop :=
  ∀ n, P8129007794171607709.a n = A001249 n

end A001249

/-! ## A001249.P67828678102401903

`A000290(n+1)*A000290(n+2)*A000290(n+3)/36`
-/

namespace A001249.P67828678102401903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) * A000290 (n + 2) * A000290 (n + 3) : ℚ) / 36

end

end A001249.P67828678102401903

namespace A001249

/-- `A000290(n+1)*A000290(n+2)*A000290(n+3)/36` -/
def P67828678102401903.Spec : Prop :=
  ∀ n, P67828678102401903.a n = (A001249 n : ℚ)

end A001249

/-! ## A001249.P9733520391091487230

`∑[∑[n+1]]²`
-/

namespace A001249.P9733520391091487230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001249.P9733520391091487230

namespace A001249

/-- `∑[∑[n+1]]²` -/
def P9733520391091487230.Spec : Prop :=
  ∀ n, (P9733520391091487230.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P5984183046155395763

`C(n+3, 3)^2`
-/

namespace A001249.P5984183046155395763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 ^ 2

end

end A001249.P5984183046155395763

namespace A001249

/-- `C(n+3, 3)^2` -/
def P5984183046155395763.Spec : Prop :=
  ∀ n, (P5984183046155395763.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P11454779757727888440

`record[C(abs(3-n), 3)²]`
-/

namespace A001249.P11454779757727888440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |3 - (n : ℤ)|.toNat 3 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001249.P11454779757727888440

namespace A001249

/-- `record[C(abs(3-n), 3)²]` -/
def P11454779757727888440.Spec : Prop :=
  ∀ n, (P11454779757727888440.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P12851582413279990048

`∑[∑[n+1]]^acos(cos(2))`
-/

namespace A001249.P12851582413279990048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A001249.P12851582413279990048

namespace A001249

/-- `∑[∑[n+1]]^acos(cos(2))` -/
def P12851582413279990048.Spec : Prop :=
  ∀ n, P12851582413279990048.a n = (A001249 n : ℝ)

end A001249

/-! ## A001249.P1899721258557178542

`C(n+3, 3)*C(n+3, 3)`
-/

namespace A001249.P1899721258557178542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * Nat.choose (n + 3) 3

end

end A001249.P1899721258557178542

namespace A001249

/-- `C(n+3, 3)*C(n+3, 3)` -/
def P1899721258557178542.Spec : Prop :=
  ∀ n, (P1899721258557178542.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P11483000534992361791

`∑[∑[a(n-1)+1]]^2` with `a(0)=1`
-/

namespace A001249.P11483000534992361791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001249.P11483000534992361791

namespace A001249

/-- `∑[∑[a(n-1)+1]]^2` -/
def P11483000534992361791.Spec : Prop :=
  ∀ n, (P11483000534992361791.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P13611330313881203602

`∑[∑[n+1]]^(2%(n+2))`
-/

namespace A001249.P13611330313881203602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 % (n + 2))

end

end A001249.P13611330313881203602

namespace A001249

/-- `∑[∑[n+1]]^(2%(n+2))` -/
def P13611330313881203602.Spec : Prop :=
  ∀ n, (P13611330313881203602.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P20191149738139445

`∑[∑[n+1]]^gcd(2, 2*n)`
-/

namespace A001249.P20191149738139445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (2 * n)

end

end A001249.P20191149738139445

namespace A001249

/-- `∑[∑[n+1]]^gcd(2, 2*n)` -/
def P20191149738139445.Spec : Prop :=
  ∀ n, (P20191149738139445.a n : ℤ) = A001249 n

end A001249

/-! ## A001249.P18225453571359350139

`∑[∑[n+1]]^ceil(atan(n+1))`
-/

namespace A001249.P18225453571359350139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A001249.P18225453571359350139

namespace A001249

/-- `∑[∑[n+1]]^ceil(atan(n+1))` -/
def P18225453571359350139.Spec : Prop :=
  ∀ n, P18225453571359350139.a n = (A001249 n : ℚ)

end A001249

/-! ## A001249.P5849679475722911413

`∑[∑[n+1]]^(3-ceil(acot(n)))`
-/

namespace A001249.P5849679475722911413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (3 - ⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A001249.P5849679475722911413

namespace A001249

/-- `∑[∑[n+1]]^(3-ceil(acot(n)))` -/
def P5849679475722911413.Spec : Prop :=
  ∀ n, P5849679475722911413.a n = (A001249 n : ℚ)

end A001249

/-! ## A001249.P17590823328072048451

`floor(∑[∑[a(n-1)-1]]²)` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A001249.P17590823328072048451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001249.P17590823328072048451

namespace A001249

/-- `floor(∑[∑[a(n-1)-1]]²)` -/
def P17590823328072048451.Spec : Prop :=
  ∀ n, P17590823328072048451.a n = A001249 n

end A001249

/-! ## A001249.P1462498340324602531

`(3/n+1)²*a(n-1)` with `a(0)=1`
-/

namespace A001249.P1462498340324602531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 / (n : ℚ) + 1) ^ 2 * a (n - 1)

end

end A001249.P1462498340324602531

namespace A001249

/-- `(3/n+1)²*a(n-1)` -/
def P1462498340324602531.Spec : Prop :=
  ∀ n, P1462498340324602531.a n = (A001249 n : ℚ)

end A001249

/-! ## A001249.P14659443241971731727

`a(n-1)/(n/(n+3))²` with `a(0)=1`
-/

namespace A001249.P14659443241971731727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 3 : ℚ)) ^ 2

end

end A001249.P14659443241971731727

namespace A001249

/-- `a(n-1)/(n/(n+3))²` -/
def P14659443241971731727.Spec : Prop :=
  ∀ n, P14659443241971731727.a n = (A001249 n : ℚ)

end A001249

/-! ## A001249.P10775854508799324633

`∑[record[(n-1)*(n-2)]]²/4`
-/

namespace A001249.P10775854508799324633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A001249.P10775854508799324633

namespace A001249

/-- `∑[record[(n-1)*(n-2)]]²/4` -/
def P10775854508799324633.Spec : Prop :=
  ∀ n, P10775854508799324633.a n = (A001249 n : ℚ)

end A001249

/-!
# A001250: Number of alternating permutations of order n.

The programs for A001250, there is no canonical definition to state claims against.
-/

/-! ## A001250.P10121845286626026366

`A008282(∑[n]+2)`
-/

namespace A001250.P10121845286626026366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001250.P10121845286626026366

/-! ## A001250.P7152907973694031006

`A226441(A028310(∑[n]))`
-/

namespace A001250.P7152907973694031006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A001250.P7152907973694031006

/-! ## A001250.P7312021423388469854

`A010094(A212342(n+1))`
-/

namespace A001250.P7312021423388469854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010094 (A212342 (n + 1)).toNat

end

end A001250.P7312021423388469854

/-! ## A001250.P1327102042553349343

`A226441(A179865(n+1))`
-/

namespace A001250.P1327102042553349343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A179865 (n + 1)).toNat

end

end A001250.P1327102042553349343

/-! ## A001250.P14028351564546051542

`A226441(A212342(n)+1)`
-/

namespace A001250.P14028351564546051542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A212342 n + 1).toNat

end

end A001250.P14028351564546051542

/-! ## A001250.P4680159448939282807

`A008281(A253145(n)+2)`
-/

namespace A001250.P4680159448939282807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (A253145 n + 2).toNat

end

end A001250.P4680159448939282807

/-! ## A001250.P509001736465546540

`A226441(A027379(n)-2*n)`
-/

namespace A001250.P509001736465546540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A027379 n - (2 * n : ℤ)).toNat

end

end A001250.P509001736465546540

/-! ## A001250.P16979356976707193659

`2*A000111(n)/A141044(n)`
-/

namespace A001250.P16979356976707193659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000111 n : ℚ) / (A141044 n : ℚ))

end

end A001250.P16979356976707193659

/-! ## A001250.P5931888371885728263

`gcd(2, A037223(n))*A000111(n)`
-/

namespace A001250.P5931888371885728263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A037223 n) : ℤ) * A000111 n

end

end A001250.P5931888371885728263

/-! ## A001250.P11161960094840137998

`A226441(A027379(n)-n-n)`
-/

namespace A001250.P11161960094840137998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A027379 n - (n : ℤ) - (n : ℤ)).toNat

end

end A001250.P11161960094840137998

/-!
# A001251: Number of permutations of order n with the length of longest run equal to 3.

The programs for A001251, there is no canonical definition to state claims against.
-/

/-! ## A001251.P1720391117709495848

`2*A213452(n+1)`
-/

namespace A001251.P1720391117709495848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213452 (n + 1)

end

end A001251.P1720391117709495848

/-! ## A001251.P17489987759173841825

`A211318(A133263(n)+1)`
-/

namespace A001251.P17489987759173841825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A133263 n + 1).toNat

end

end A001251.P17489987759173841825

/-! ## A001251.P14738152736688041709

`A211318(A238531(n+1)+1)`
-/

namespace A001251.P14738152736688041709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A238531 (n + 1) + 1).toNat

end

end A001251.P14738152736688041709

/-! ## A001251.P2676218568309234109

`A211318(A179865(n+1)+3)`
-/

namespace A001251.P2676218568309234109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A179865 (n + 1) + 3).toNat

end

end A001251.P2676218568309234109

/-! ## A001251.P3894934857717009463

`A211318(A000124(A028310(n))+2)`
-/

namespace A001251.P3894934857717009463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A000124 (A028310 n).toNat + 2).toNat

end

end A001251.P3894934857717009463

/-! ## A001251.P12727993868854450523

`A211318(A028310(A000217(n))+3)`
-/

namespace A001251.P12727993868854450523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A028310 (A000217 n).toNat + 3).toNat

end

end A001251.P12727993868854450523

/-! ## A001251.P16718837809773233562

`A211318(A130130(n+1)+A000124(n))`
-/

namespace A001251.P16718837809773233562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A130130 (n + 1) + A000124 n).toNat

end

end A001251.P16718837809773233562

/-! ## A001251.P18124742579338469359

`A213452(n+1)+A213452(A028310(n)+1)`
-/

namespace A001251.P18124742579338469359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213452 (n + 1) + A213452 (A028310 n + 1).toNat

end

end A001251.P18124742579338469359

/-! ## A001251.P5024103041699672976

`A211318(A152950(n+2)-A233583(n+2))`
-/

namespace A001251.P5024103041699672976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A152950 (n + 2) - A233583 (n + 2)).toNat

end

end A001251.P5024103041699672976

/-!
# A001252: Number of permutations of order n with the length of longest run equal to 4.

The programs for A001252, there is no canonical definition to state claims against.
-/

/-! ## A001252.P14803430276058263007

`A211318(A000124(n)+A130130(n)+1)`
-/

namespace A001252.P14803430276058263007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A000124 n + (A130130 n + 1)).toNat

end

end A001252.P14803430276058263007

/-! ## A001252.P4032591740885277805

`A211318(A152950(n+2)-A233583(n+1))`
-/

namespace A001252.P4032591740885277805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A152950 (n + 2) - A233583 (n + 1)).toNat

end

end A001252.P4032591740885277805

/-! ## A001252.P4730454177084375383

`2*A104407(A080599(n))`
-/

namespace A001252.P4730454177084375383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104407 (A080599 n).toNat

end

end A001252.P4730454177084375383

/-!
# A001253: Number of permutations of order n with the length of longest run equal to 5.

The programs for A001253, there is no canonical definition to state claims against.
-/

/-! ## A001253.P5426080250801420438

`2*A213454(n+1)`
-/

namespace A001253.P5426080250801420438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213454 (n + 1)

end

end A001253.P5426080250801420438

/-! ## A001253.P2779300468898994181

`A211318(A077169(n+1))`
-/

namespace A001253.P2779300468898994181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211318 (A077169 (n + 1)).toNat

end

end A001253.P2779300468898994181

/-! ## A001253.P9317383088339697630

`A213454(n+1)+A213454(abs(xor(n, -1)))`
-/

namespace A001253.P9317383088339697630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213454 (n + 1) + A213454 |Int.xor (n : ℤ) (-1)|.toNat

end

end A001253.P9317383088339697630

/-! ## A001253.P636285517314601224

`A213454(n+1)+A213454(-xor(n, -1))`
-/

namespace A001253.P636285517314601224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213454 (n + 1) + A213454 (-Int.xor (n : ℤ) (-1)).toNat

end

end A001253.P636285517314601224

/-! ## A001253.P15215779062894026685

`A213454(xor(1, xor(1, n+1)))+A213454(n+1)`
-/

namespace A001253.P15215779062894026685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213454 (Nat.xor 1 (Nat.xor 1 (n + 1))) + A213454 (n + 1)

end

end A001253.P15215779062894026685

/-! ## A001253.P1178012189544556719

`A213454(∑[n+1]-∑[n])+A213454(n+1)`
-/

namespace A001253.P1178012189544556719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213454 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A213454 (n + 1)

end

end A001253.P1178012189544556719

/-! ## A001253.P14998135567600721137

`A213454(n+1)+A213454(n+1)/A262681(n)`
-/

namespace A001253.P14998135567600721137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213454 (n + 1) : ℚ) + (A213454 (n + 1) : ℚ) / (A262681 n : ℚ)

end

end A001253.P14998135567600721137

/-! ## A001253.P13314278396360895843

`(A213454(n+1)+A213454(n+1))%A114633(n)`
-/

namespace A001253.P13314278396360895843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213454 (n + 1) + A213454 (n + 1)) (A114633 n)

end

end A001253.P13314278396360895843

/-!
# A001254: Squares of Lucas numbers.

The programs for A001254, the canonical program `A001254.P2744266004556785989` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001254 has offset 0).

The definition of A001254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001254.P2744266004556785989

`3*a(n-1)-a(n-2)+10*(-1)^n` with `a(0)=4, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001254

/-- `3*a(n-1)-a(n-2)+10*(-1)^n` -/
def P2744266004556785989.Spec : Prop :=
  ∀ n, P2744266004556785989.a n = A001254 n

theorem P2744266004556785989.correct : P2744266004556785989.Spec := by
  intro n
  simp only [A001254]

end A001254

/-! ## A001254.P14316527223560928093

`A000032(n)²`
-/

namespace A001254.P14316527223560928093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2

end

end A001254.P14316527223560928093

namespace A001254

/-- `A000032(n)²` -/
def P14316527223560928093.Spec : Prop :=
  ∀ n, P14316527223560928093.a n = A001254 n

end A001254

/-! ## A001254.P13150349538566865874

`5*A000045(n)²+4*(-1)^n`
-/

namespace A001254.P13150349538566865874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n ^ 2 + 4 * (-1) ^ n

end

end A001254.P13150349538566865874

namespace A001254

/-- `5*A000045(n)²+4*(-1)^n` -/
def P13150349538566865874.Spec : Prop :=
  ∀ n, P13150349538566865874.a n = A001254 n

end A001254

/-! ## A001254.P15420091344167405103

`(floor((-ϕ)^n)+1)²`
-/

namespace A001254.P15420091344167405103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2

end

end A001254.P15420091344167405103

namespace A001254

/-- `(floor((-ϕ)^n)+1)²` -/
def P15420091344167405103.Spec : Prop :=
  ∀ n, P15420091344167405103.a n = A001254 n

end A001254

/-! ## A001254.P16024380247090917358

`ogf((-4+7x+x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A001254.P16024380247090917358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, -1] [1, -2, -2, 1] n

end

end A001254.P16024380247090917358

namespace A001254

/-- `ogf((-4+7x+x^2)/(-1+2x+2x^2-x^3))` -/
def P16024380247090917358.Spec : Prop :=
  ∀ n, P16024380247090917358.a n = A001254 n

end A001254

/-! ## A001254.P14120434686883006519

`abs(A075150(n))`
-/

namespace A001254.P14120434686883006519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075150 n|

end

end A001254.P14120434686883006519

namespace A001254

/-- `abs(A075150(n))` -/
def P14120434686883006519.Spec : Prop :=
  ∀ n, P14120434686883006519.a n = A001254 n

end A001254

/-! ## A001254.P12984673251397402512

`A001638(2*n)`
-/

namespace A001254.P12984673251397402512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (2 * n)

end

end A001254.P12984673251397402512

namespace A001254

/-- `A001638(2*n)` -/
def P12984673251397402512.Spec : Prop :=
  ∀ n, P12984673251397402512.a n = A001254 n

end A001254

/-! ## A001254.P361579241091574797

`A000032(2*n)+2*(-1)^n`
-/

namespace A001254.P361579241091574797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) + 2 * (-1) ^ n

end

end A001254.P361579241091574797

namespace A001254

/-- `A000032(2*n)+2*(-1)^n` -/
def P361579241091574797.Spec : Prop :=
  ∀ n, P361579241091574797.a n = A001254 n

end A001254

/-! ## A001254.P3523239387404965069

`A047946(n)+A033999(n)`
-/

namespace A001254.P3523239387404965069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 n + A033999 n

end

end A001254.P3523239387404965069

namespace A001254

/-- `A047946(n)+A033999(n)` -/
def P3523239387404965069.Spec : Prop :=
  ∀ n, P3523239387404965069.a n = A001254 n

end A001254

/-! ## A001254.P9373748320184434816

`A174971(n)+A110391(n)`
-/

namespace A001254.P9373748320184434816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + A110391 n

end

end A001254.P9373748320184434816

namespace A001254

/-- `A174971(n)+A110391(n)` -/
def P9373748320184434816.Spec : Prop :=
  ∀ n, P9373748320184434816.a n = A001254 n

end A001254

/-! ## A001254.P7237522984047033634

`A236428(n)+A192878(n)`
-/

namespace A001254.P7237522984047033634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A192878 n

end

end A001254.P7237522984047033634

namespace A001254

/-- `A236428(n)+A192878(n)` -/
def P7237522984047033634.Spec : Prop :=
  ∀ n, P7237522984047033634.a n = A001254 n

end A001254

/-! ## A001254.P8682514864855634700

`A092387(n)-A010675(n)`
-/

namespace A001254.P8682514864855634700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092387 n - A010675 n

end

end A001254.P8682514864855634700

namespace A001254

/-- `A092387(n)-A010675(n)` -/
def P8682514864855634700.Spec : Prop :=
  ∀ n, P8682514864855634700.a n = A001254 n

end A001254

/-! ## A001254.P12614594578993410910

`A033999(n)*A075150(n)`
-/

namespace A001254.P12614594578993410910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A075150 n

end

end A001254.P12614594578993410910

namespace A001254

/-- `A033999(n)*A075150(n)` -/
def P12614594578993410910.Spec : Prop :=
  ∀ n, P12614594578993410910.a n = A001254 n

end A001254

/-! ## A001254.P8304039035332596444

`lcm(A000032(n), A075150(n))`
-/

namespace A001254.P8304039035332596444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000032 n) (A075150 n)

end

end A001254.P8304039035332596444

namespace A001254

/-- `lcm(A000032(n), A075150(n))` -/
def P8304039035332596444.Spec : Prop :=
  ∀ n, (P8304039035332596444.a n : ℤ) = A001254 n

end A001254

/-! ## A001254.P4900889957126599468

`A061084(n+1)*A061084(n+1)`
-/

namespace A001254.P4900889957126599468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) * A061084 (n + 1)

end

end A001254.P4900889957126599468

namespace A001254

/-- `A061084(n+1)*A061084(n+1)` -/
def P4900889957126599468.Spec : Prop :=
  ∀ n, P4900889957126599468.a n = A001254 n

end A001254

/-! ## A001254.P4376476400855568357

`A329723(n+2)*A329723(n+2)`
-/

namespace A001254.P4376476400855568357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 2) * A329723 (n + 2)

end

end A001254.P4376476400855568357

namespace A001254

/-- `A329723(n+2)*A329723(n+2)` -/
def P4376476400855568357.Spec : Prop :=
  ∀ n, P4376476400855568357.a n = A001254 n

end A001254

/-! ## A001254.P6697583588764230801

`A127218(2*n)*A127218(2*n)`
-/

namespace A001254.P6697583588764230801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) * A127218 (2 * n)

end

end A001254.P6697583588764230801

namespace A001254

/-- `A127218(2*n)*A127218(2*n)` -/
def P6697583588764230801.Spec : Prop :=
  ∀ n, P6697583588764230801.a n = A001254 n

end A001254

/-! ## A001254.P17348523568930654830

`A303427(2*n)*A303427(2*n)`
-/

namespace A001254.P17348523568930654830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) * A303427 (2 * n)

end

end A001254.P17348523568930654830

namespace A001254

/-- `A303427(2*n)*A303427(2*n)` -/
def P17348523568930654830.Spec : Prop :=
  ∀ n, P17348523568930654830.a n = A001254 n

end A001254

/-! ## A001254.P5367105723394060802

`Δ[A000045(n)+∑[A000045(n)]]^2`
-/

namespace A001254.P5367105723394060802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A001254.P5367105723394060802

namespace A001254

/-- `Δ[A000045(n)+∑[A000045(n)]]^2` -/
def P5367105723394060802.Spec : Prop :=
  ∀ n, P5367105723394060802.a n = A001254 n

end A001254

/-!
# A001255: Squares of partition numbers.

The programs for A001255, there is no canonical definition to state claims against.
-/

/-! ## A001255.P5707370674203656335

`A000041(n)²`
-/

namespace A001255.P5707370674203656335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2

end

end A001255.P5707370674203656335

/-! ## A001255.P12011278875175826037

`∑[A002865(n)]²`
-/

namespace A001255.P12011278875175826037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001255.P12011278875175826037

/-! ## A001255.P16569333952969707687

`(A000065(n)+1)²`
-/

namespace A001255.P16569333952969707687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) ^ 2

end

end A001255.P16569333952969707687

/-! ## A001255.P14883108755035594035

`A035363(2*n)²`
-/

namespace A001255.P14883108755035594035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) ^ 2

end

end A001255.P14883108755035594035

/-! ## A001255.P15892750482760078480

`A119620(2*n)²`
-/

namespace A001255.P15892750482760078480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) ^ 2

end

end A001255.P15892750482760078480

/-! ## A001255.P13130453462210408040

`A035377(3*n)²`
-/

namespace A001255.P13130453462210408040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) ^ 2

end

end A001255.P13130453462210408040

/-! ## A001255.P3143538494635126065

`(A139582(n)/2)²`
-/

namespace A001255.P3143538494635126065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139582 n : ℚ) / 2) ^ 2

end

end A001255.P3143538494635126065

/-! ## A001255.P13569424599402242716

`A035444(4*n)²`
-/

namespace A001255.P13569424599402242716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) ^ 2

end

end A001255.P13569424599402242716

/-! ## A001255.P33771117193907188

`(n-A133041(n))²`
-/

namespace A001255.P33771117193907188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A133041 n) ^ 2

end

end A001255.P33771117193907188

/-! ## A001255.P12413096886496513308

`record[Δ[A035363(n)]]²`
-/

namespace A001255.P12413096886496513308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A001255.P12413096886496513308

/-! ## A001255.P9698581365128337585

`∑[A085811(n+3)]²`
-/

namespace A001255.P9698581365128337585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001255.P9698581365128337585

/-! ## A001255.P5856645104119367391

`(n-∑[A232697(n)])²`
-/

namespace A001255.P5856645104119367391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001255.P5856645104119367391

/-! ## A001255.P10695411811393239879

`A355390(n)+A000041(n)`
-/

namespace A001255.P10695411811393239879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355390 n + A000041 n

end

end A001255.P10695411811393239879

/-! ## A001255.P1296809437501893730

`A355389(n)+A086737(n)`
-/

namespace A001255.P1296809437501893730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355389 n + A086737 n

end

end A001255.P1296809437501893730

/-! ## A001255.P9062519823113860311

`(A027193(n)+A027187(n))²`
-/

namespace A001255.P9062519823113860311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027193 n + A027187 n) ^ 2

end

end A001255.P9062519823113860311

/-! ## A001255.P6840814747157149082

`A000041(n)*∑[A002865(n)]`
-/

namespace A001255.P6840814747157149082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001255.P6840814747157149082

/-! ## A001255.P3453060566952772840

`A000041(n)*A035363(2*n)`
-/

namespace A001255.P3453060566952772840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A035363 (2 * n)

end

end A001255.P3453060566952772840

/-! ## A001255.P11824755368930804566

`A000041(n)*A119620(2*n)`
-/

namespace A001255.P11824755368930804566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A119620 (2 * n)

end

end A001255.P11824755368930804566

/-! ## A001255.P4270476461814405866

`A000041(n)^(2%A016969(n))`
-/

namespace A001255.P4270476461814405866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (Int.tmod 2 (A016969 n) : ℤ)

end

end A001255.P4270476461814405866

/-! ## A001255.P12268137726581866701

`A000041(n-char[1])*A000041(n)`
-/

namespace A001255.P12268137726581866701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n - (if ∃ j, f1 j = n then 1 else 0)) * A000041 n

end

end A001255.P12268137726581866701

/-!
# A001256: Squares of numbers of trees.

The programs for A001256, there is no canonical definition to state claims against.
-/

/-! ## A001256.P13341389369160896471

`A000055(n)²`
-/

namespace A001256.P13341389369160896471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n ^ 2

end

end A001256.P13341389369160896471

/-! ## A001256.P1236372404338089328

`(A144520(n)+1)²`
-/

namespace A001256.P1236372404338089328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144520 n + 1) ^ 2

end

end A001256.P1236372404338089328

/-! ## A001256.P8662938891943949066

`A095133(C(n, 2)+1)²`
-/

namespace A001256.P8662938891943949066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (Nat.choose n 2 + 1) ^ 2

end

end A001256.P8662938891943949066

/-! ## A001256.P9066118061384974131

`A095133(∑[abs(1-n)])²`
-/

namespace A001256.P9066118061384974131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A001256.P9066118061384974131

/-! ## A001256.P18277324750560947527

`A106237(∑[abs(1-n)])²`
-/

namespace A001256.P18277324750560947527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106237 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A001256.P18277324750560947527

/-! ## A001256.P16702996066887246761

`or(A095133(∑[n-1]+2)², char[1])`
-/

namespace A001256.P16702996066887246761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat ^ 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001256.P16702996066887246761

/-! ## A001256.P10508743177937608661

`or(A106237(∑[n-1]+2)², char[1])`
-/

namespace A001256.P10508743177937608661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106237 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat ^ 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001256.P10508743177937608661

/-! ## A001256.P17056369340225209424

`A136605(abs((n+2)*(1-n))/2+1)²`
-/

namespace A001256.P17056369340225209424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136605 (SequenceMachineLib.roundAway ((|(n + 2 : ℤ) * (1 - (n : ℤ))| : ℚ) / 2 + 1)).toNat ^ 2

end

end A001256.P17056369340225209424

/-! ## A001256.P2249937571027209139

`A105821(A133263(n))²`
-/

namespace A001256.P2249937571027209139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A133263 n).toNat ^ 2

end

end A001256.P2249937571027209139

/-! ## A001256.P1897978924042032861

`A105821(A238531(n+1))²`
-/

namespace A001256.P1897978924042032861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A238531 (n + 1)).toNat ^ 2

end

end A001256.P1897978924042032861

/-! ## A001256.P16082904463852804331

`(A000677(n)+A000676(n))²`
-/

namespace A001256.P16082904463852804331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000677 n + A000676 n) ^ 2

end

end A001256.P16082904463852804331

/-! ## A001256.P14031477886269466862

`(A274935(n)-A274937(n))²`
-/

namespace A001256.P14031477886269466862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274935 n - A274937 n) ^ 2

end

end A001256.P14031477886269466862

/-! ## A001256.P14570520045471123444

`A105821(A179865(n+1)+2)²`
-/

namespace A001256.P14570520045471123444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (A179865 (n + 1) + 2).toNat ^ 2

end

end A001256.P14570520045471123444

/-! ## A001256.P17903045926493212773

`A000055(A023443(n+1))*A000055(n)`
-/

namespace A001256.P17903045926493212773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A023443 (n + 1)).toNat * A000055 n

end

end A001256.P17903045926493212773

/-! ## A001256.P5383111547942259229

`A000055(A004526(2*n))*A000055(n)`
-/

namespace A001256.P5383111547942259229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A004526 (2 * n)).toNat * A000055 n

end

end A001256.P5383111547942259229

/-! ## A001256.P17515759740552112404

`A000055(A065033(2*n))*A000055(n)`
-/

namespace A001256.P17515759740552112404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A065033 (2 * n)).toNat * A000055 n

end

end A001256.P17515759740552112404

/-! ## A001256.P5574089852227076522

`A000055(A028242(2*n+1))*A000055(n)`
-/

namespace A001256.P5574089852227076522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A028242 (2 * n + 1)).toNat * A000055 n

end

end A001256.P5574089852227076522

/-! ## A001256.P6738089778351048385

`(A274935(2*n)-A274936(2*n))²`
-/

namespace A001256.P6738089778351048385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274935 (2 * n) - A274936 (2 * n)) ^ 2

end

end A001256.P6738089778351048385

/-!
# A001257: Squares of numbers of rooted trees.

The programs for A001257, there is no canonical definition to state claims against.
-/

/-! ## A001257.P17221142970628285443

`∑[A174145(n)]²`
-/

namespace A001257.P17221142970628285443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A001257.P17221142970628285443

/-! ## A001257.P15429118029804837455

`A000081(n+1)²`
-/

namespace A001257.P15429118029804837455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) ^ 2

end

end A001257.P15429118029804837455

/-! ## A001257.P5459343085190177553

`A038001(Δ[n²])²`
-/

namespace A001257.P5459343085190177553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A001257.P5459343085190177553

/-! ## A001257.P17281451303615605525

`A033185(∑[n]+1)²`
-/

namespace A001257.P17281451303615605525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A001257.P17281451303615605525

/-! ## A001257.P14401465043345263541

`A106236(∑[n]+1)²`
-/

namespace A001257.P14401465043345263541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106236 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A001257.P14401465043345263541

/-! ## A001257.P14186509173706392623

`A144018(∑[n]+1)²`
-/

namespace A001257.P14186509173706392623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A001257.P14186509173706392623

/-! ## A001257.P12392394327655594683

`A339067(∑[n]+1)²`
-/

namespace A001257.P12392394327655594683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A001257.P12392394327655594683

/-! ## A001257.P241765364014698679

`∑[abs(Δ[A000081(n)²])]`
-/

namespace A001257.P241765364014698679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001257.P241765364014698679

/-! ## A001257.P6060108778500201924

`A000081(C(n+1, n))^2`
-/

namespace A001257.P6060108778500201924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Nat.choose (n + 1) n) ^ 2

end

end A001257.P6060108778500201924

/-! ## A001257.P6390968703361598629

`A218666(∑[n+1]+1)²`
-/

namespace A001257.P6390968703361598629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218666 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A001257.P6390968703361598629

/-! ## A001257.P4962178679809424759

`A106234(∑[n+1]+2)²`
-/

namespace A001257.P4962178679809424759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A001257.P4962178679809424759

/-! ## A001257.P17788179851735360666

`(A055544(n+1)/(n+1))²`
-/

namespace A001257.P17788179851735360666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055544 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A001257.P17788179851735360666

/-! ## A001257.P14505815454729295294

`A123467(A028310(n))²`
-/

namespace A001257.P14505815454729295294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123467 (A028310 n).toNat ^ 2

end

end A001257.P14505815454729295294

/-! ## A001257.P8710415551806991472

`∑[A174145(n)]*A000081(n+1)`
-/

namespace A001257.P8710415551806991472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000081 (n + 1)

end

end A001257.P8710415551806991472

/-! ## A001257.P10756112217434365928

`(A002861(n+1)-A002862(n+1))²`
-/

namespace A001257.P10756112217434365928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002861 (n + 1) - A002862 (n + 1)) ^ 2

end

end A001257.P10756112217434365928

/-! ## A001257.P13348376653407122483

`A000081(n+1)^A000040(gcd(n, n+1))`
-/

namespace A001257.P13348376653407122483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A001257.P13348376653407122483

/-! ## A001257.P10693054590931736291

`A038001(2*n+1)*A038001(2*n+1)`
-/

namespace A001257.P10693054590931736291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 1) * A038001 (2 * n + 1)

end

end A001257.P10693054590931736291

/-! ## A001257.P4054941924284958598

`A000081(n+1)^A000005(A156274(n+1))`
-/

namespace A001257.P4054941924284958598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) : ℚ) ^ (A000005 (A156274 (n + 1)).toNat : ℤ)

end

end A001257.P4054941924284958598

/-! ## A001257.P4681409855981401103

`A000081(n+1)^A191261(A191264(n+1))`
-/

namespace A001257.P4681409855981401103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) : ℚ) ^ (A191261 (A191264 (n + 1)).toNat : ℤ)

end

end A001257.P4681409855981401103

/-! ## A001257.P11633217616488937082

`A000081(n+1)^A191265(A191268(n+1))`
-/

namespace A001257.P11633217616488937082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) : ℚ) ^ (A191265 (A191268 (n + 1)).toNat : ℤ)

end

end A001257.P11633217616488937082

/-!
# A001258: Number of labeled n-node trees with unlabeled end-points.

The programs for A001258, there is no canonical definition to state claims against.
-/

/-! ## A001258.P2067884537873966299

`A103221(A357160(n)+∏[n+1])`
-/

namespace A001258.P2067884537873966299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A357160 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A001258.P2067884537873966299

/-! ## A001258.P3821254892079717322

`A067434(A007662(n)+A001809(n))`
-/

namespace A001258.P3821254892079717322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A007662 n + A001809 n).toNat

end

end A001258.P3821254892079717322

/-! ## A001258.P590691333767621242

`xor(A059995(A337058(n)), A125224(n))`
-/

namespace A001258.P590691333767621242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059995 (A337058 n).toNat) (A125224 n)

end

end A001258.P590691333767621242

/-!
# A001259: A sequence of sorted odd primes 3 = p_1 < p_2 < ... < p_m such that p_i-2 divides the product p_1*p_2*...*p_(i-1) of the earlier primes and each prime factor of p_i-1 is a prime factor of twice the product.

The programs for A001259, there is no canonical definition to state claims against.
-/

/-! ## A001259.P7364133901844923826

`A342119(A343198(n+1)+1)`
-/

namespace A001259.P7364133901844923826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342119 (A343198 (n + 1) + 1).toNat

end

end A001259.P7364133901844923826

/-! ## A001259.P18434049101930870694

`p?[∑[A020639(A056429(n+1))]]`
-/

namespace A001259.P18434049101930870694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056429 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001259.P18434049101930870694

/-! ## A001259.P15334912711573229825

`p?[∑[A020639(A056434(n+1)+1)]]`
-/

namespace A001259.P15334912711573229825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056434 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001259.P15334912711573229825

/-!
# A001260: Number of permutations of length n with 4 consecutive ascending pairs.

The programs for A001260, there is no canonical definition to state claims against.
-/

/-! ## A001260.P18374142350612030314

`(n-2)/12*A000387(n)`
-/

namespace A001260.P18374142350612030314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / 12 * (A000387 n : ℚ)

end

end A001260.P18374142350612030314

/-! ## A001260.P4659215219848802230

`A000332(n)*A116854(A022856(n+1))`
-/

namespace A001260.P4659215219848802230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A116854 (A022856 (n + 1)).toNat

end

end A001260.P4659215219848802230

/-! ## A001260.P10971331575513155288

`A036408(A135663(n!))`
-/

namespace A001260.P10971331575513155288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036408 (A135663 (Nat.factorial n)).toNat

end

end A001260.P10971331575513155288

/-! ## A001260.P4325102630876677604

`A261226(∑[A187252(n)])`
-/

namespace A001260.P4325102630876677604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001260.P4325102630876677604

/-!
# A001261: Number of permutations of length n with 5 consecutive ascending pairs.

The programs for A001261, there is no canonical definition to state claims against.
-/

/-! ## A001261.P8670484026823821735

`n/5*A001260(A028310(n))`
-/

namespace A001261.P8670484026823821735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A001260 (A028310 n).toNat : ℚ)

end

end A001261.P8670484026823821735

/-! ## A001261.P4412850816773514551

`A100682(∑[∑[A001268(n)]])`
-/

namespace A001261.P4412850816773514551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001268 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001261.P4412850816773514551

/-! ## A001261.P5778077855281046181

`lcm(C(n, 5), A259361(A210713(2*n+1)))`
-/

namespace A001261.P5778077855281046181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose n 5 : ℤ) (A259361 (A210713 (2 * n + 1)).toNat)

end

end A001261.P5778077855281046181

/-! ## A001261.P16329610630613973695

`A000389(n)*A138121(A000244(n))`
-/

namespace A001261.P16329610630613973695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n * A138121 (A000244 n).toNat

end

end A001261.P16329610630613973695

/-! ## A001261.P17604727394224661470

`A000389(n)*A002487(A184954(n))`
-/

namespace A001261.P17604727394224661470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n * A002487 (A184954 n).toNat

end

end A001261.P17604727394224661470

/-!
# A001262: Strong pseudoprimes to base 2.

The programs for A001262, there is no canonical definition to state claims against.
-/

/-! ## A001262.P7727105331249723912

`∩[A001567(n+1), A020234(n+1)]`
-/

namespace A001262.P7727105331249723912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P7727105331249723912

/-! ## A001262.P457544990579125044

`∩[A020230(n+1), A020234(n+1)]`
-/

namespace A001262.P457544990579125044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P457544990579125044

/-! ## A001262.P17602215121043592178

`∩[A020234(n+1), A288153(n+1)]`
-/

namespace A001262.P17602215121043592178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P17602215121043592178

/-! ## A001262.P4614499885377537227

`∩[A020234(n+1), A047713(n+1)]`
-/

namespace A001262.P4614499885377537227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P4614499885377537227

/-! ## A001262.P6180745198723209145

`∩[A006970(n+1), A020234(n+1)]`
-/

namespace A001262.P6180745198723209145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P6180745198723209145

/-! ## A001262.P8778817426621988732

`∩[A020234(n+1), A066488(n+1)]`
-/

namespace A001262.P8778817426621988732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P8778817426621988732

/-! ## A001262.P7533153535847754323

`∩[A020136(n+1), A020234(n+1)]`
-/

namespace A001262.P7533153535847754323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P7533153535847754323

/-! ## A001262.P525917641982708765

`∩[A020144(n+1), A020234(n+1)]`
-/

namespace A001262.P525917641982708765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P525917641982708765

/-! ## A001262.P12409741704345741603

`∩[A020160(n+1), A020234(n+1)]`
-/

namespace A001262.P12409741704345741603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P12409741704345741603

/-! ## A001262.P8753681034087195767

`∩[A001567(n+1), A020258(n+1)]`
-/

namespace A001262.P8753681034087195767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P8753681034087195767

/-! ## A001262.P9050787906960432591

`∩[A006970(n+1), A020258(n+1)]`
-/

namespace A001262.P9050787906960432591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P9050787906960432591

/-! ## A001262.P10858344923785924599

`∩[A020136(n+1), A020258(n+1)]`
-/

namespace A001262.P10858344923785924599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P10858344923785924599

/-! ## A001262.P9849447950141319243

`∩[A020137(n+1), A020258(n+1)]`
-/

namespace A001262.P9849447950141319243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P9849447950141319243

/-! ## A001262.P17790233790794439228

`∩[A020144(n+1), A020258(n+1)]`
-/

namespace A001262.P17790233790794439228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P17790233790794439228

/-! ## A001262.P9533908739959340037

`∩[A020192(n+1), A020258(n+1)]`
-/

namespace A001262.P9533908739959340037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P9533908739959340037

/-! ## A001262.P9393210127826828753

`∩[A020230(n+1), A020258(n+1)]`
-/

namespace A001262.P9393210127826828753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P9393210127826828753

/-! ## A001262.P6293779841445349214

`∩[A020234(n+1), A020258(n+1)]`
-/

namespace A001262.P6293779841445349214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P6293779841445349214

/-! ## A001262.P14794088276695729703

`∩[A020258(n+1), A047713(n+1)]`
-/

namespace A001262.P14794088276695729703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P14794088276695729703

/-! ## A001262.P241811297008611712

`∩[A020258(n+1), A066488(n+1)]`
-/

namespace A001262.P241811297008611712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P241811297008611712

/-! ## A001262.P12103504808555649916

`∩[A020258(n+1), A262055(n+1)]`
-/

namespace A001262.P12103504808555649916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001262.P12103504808555649916

/-!
# A001263: Triangle of Narayana numbers T(n,k) = C(n-1,k-1)*C(n,k-1)/k with 1 <= k <= n, read by rows. Also called the Catalan triangle.

The programs for A001263, the canonical program `A001263.P115983165618393794` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001263 has offset 1).

The definition of A001263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*C(row(n)+1, col(n))/(col(n)+1)` (program `A001263.P1311687336144758299`, by `A001263.P1311687336144758299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001263.P1311687336144758299

`C(row(n), col(n))*C(row(n)+1, col(n))/(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001263.P1311687336144758299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A001263.P1311687336144758299

namespace A001263

/-- `C(row(n), col(n))*C(row(n)+1, col(n))/(col(n)+1)` -/
def P1311687336144758299.Spec : Prop :=
  ∀ n, P1311687336144758299.a n = (A001263 (n + 1) : ℚ)

theorem P1311687336144758299.correct : P1311687336144758299.Spec := by
  intro n
  simp only [A001263, Nat.add_sub_cancel, A001263.P1311687336144758299.a, A001263.P115983165618393794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001263

/-! ## A001263.P115983165618393794

`C(row(n)+1, col(n)+1)*C(row(n), col(n))-C(row(n)+1, col(n))*C(row(n), col(n)+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001263

/-- `C(row(n)+1, col(n)+1)*C(row(n), col(n))-C(row(n)+1, col(n))*C(row(n), col(n)+1)` -/
def P115983165618393794.Spec : Prop :=
  ∀ n, P115983165618393794.a n = A001263 (n + 1)

theorem P115983165618393794.correct : P115983165618393794.Spec := by
  intro n
  simp only [A001263, Nat.add_sub_cancel]

end A001263

/-! ## A001263.P14901807057690936345

`T(n-1,k)*(row(n)+1+col(n))/(row(n)+1-col(n))+T(n-1,k-1)` with `a(0)=1`
-/

namespace A001263.P14901807057690936345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n * (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n : ℚ) / ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) + SequenceMachineLib.triUpLeft a n

end

end A001263.P14901807057690936345

namespace A001263

/-- `T(n-1,k)*(row(n)+1+col(n))/(row(n)+1-col(n))+T(n-1,k-1)` -/
def P14901807057690936345.Spec : Prop :=
  ∀ n, P14901807057690936345.a n = (A001263 (n + 1) : ℚ)

end A001263

/-! ## A001263.P424675841279575268

`ceil(A174124(n)/2)`
-/

namespace A001263.P424675841279575268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174124 n : ℚ) / 2⌉

end

end A001263.P424675841279575268

namespace A001263

/-- `ceil(A174124(n)/2)` -/
def P424675841279575268.Spec : Prop :=
  ∀ n, P424675841279575268.a n = A001263 (n + 1)

end A001263

/-! ## A001263.P7071452185345263620

`ceil(A132787(n+1)/2)`
-/

namespace A001263.P7071452185345263620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉

end

end A001263.P7071452185345263620

namespace A001263

/-- `ceil(A132787(n+1)/2)` -/
def P7071452185345263620.Spec : Prop :=
  ∀ n, P7071452185345263620.a n = A001263 (n + 1)

end A001263

/-! ## A001263.P16544200613322164882

`A174124(n)/A154325(n)`
-/

namespace A001263.P16544200613322164882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174124 n : ℚ) / (A154325 n : ℚ)

end

end A001263.P16544200613322164882

namespace A001263

/-- `A174124(n)/A154325(n)` -/
def P16544200613322164882.Spec : Prop :=
  ∀ n, P16544200613322164882.a n = (A001263 (n + 1) : ℚ)

end A001263

/-! ## A001263.P18422071312540679635

`A132789(n+1)-A014473(n)`
-/

namespace A001263.P18422071312540679635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132789 (n + 1) - A014473 n

end

end A001263.P18422071312540679635

namespace A001263

/-- `A132789(n+1)-A014473(n)` -/
def P18422071312540679635.Spec : Prop :=
  ∀ n, P18422071312540679635.a n = A001263 (n + 1)

end A001263

/-! ## A001263.P4972562200399461323

`A050169(n+1)*A161642(n)`
-/

namespace A001263.P4972562200399461323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050169 (n + 1) * A161642 n

end

end A001263.P4972562200399461323

namespace A001263

/-- `A050169(n+1)*A161642(n)` -/
def P4972562200399461323.Spec : Prop :=
  ∀ n, P4972562200399461323.a n = A001263 (n + 1)

end A001263

/-! ## A001263.P4625869309319027762

`A103371(n)/A004736(n+1)`
-/

namespace A001263.P4625869309319027762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A001263.P4625869309319027762

namespace A001263

/-- `A103371(n)/A004736(n+1)` -/
def P4625869309319027762.Spec : Prop :=
  ∀ n, P4625869309319027762.a n = (A001263 (n + 1) : ℚ)

end A001263

/-! ## A001263.P16700519395818351166

`A132813(n)/A002260(n+1)`
-/

namespace A001263.P16700519395818351166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132813 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A001263.P16700519395818351166

namespace A001263

/-- `A132813(n)/A002260(n+1)` -/
def P16700519395818351166.Spec : Prop :=
  ∀ n, P16700519395818351166.a n = (A001263 (n + 1) : ℚ)

theorem P16700519395818351166.correct : P16700519395818351166.Spec := by
  intro n
  simp only [A001263, Nat.add_sub_cancel, A001263.P16700519395818351166.a, A001263.P115983165618393794.a, A002260, A002260.P9170571874073898642.a, A132813, A132813.P7242134249665991509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001263

/-! ## A001263.P8693674096661918039

`A132813(n)/(A002262(n)+1)`
-/

namespace A001263.P8693674096661918039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132813 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A001263.P8693674096661918039

namespace A001263

/-- `A132813(n)/(A002262(n)+1)` -/
def P8693674096661918039.Spec : Prop :=
  ∀ n, P8693674096661918039.a n = (A001263 (n + 1) : ℚ)

theorem P8693674096661918039.correct : P8693674096661918039.Spec := by
  intro n
  simp only [A001263, Nat.add_sub_cancel, A001263.P8693674096661918039.a, A001263.P115983165618393794.a, A002262, A002262.P17823619022233514403.a, A132813, A132813.P7242134249665991509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001263

/-! ## A001263.P7160642884565806359

`A128821(n+1)/A099375(n)`
-/

namespace A001263.P7160642884565806359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128821 (n + 1) : ℚ) / (A099375 n : ℚ)

end

end A001263.P7160642884565806359

namespace A001263

/-- `A128821(n+1)/A099375(n)` -/
def P7160642884565806359.Spec : Prop :=
  ∀ n, P7160642884565806359.a n = (A001263 (n + 1) : ℚ)

end A001263

/-! ## A001263.P3738193383288673823

`A133200(n+1)/A238303(n)`
-/

namespace A001263.P3738193383288673823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133200 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A001263.P3738193383288673823

namespace A001263

/-- `A133200(n+1)/A238303(n)` -/
def P3738193383288673823.Spec : Prop :=
  ∀ n, P3738193383288673823.a n = (A001263 (n + 1) : ℚ)

end A001263

/-! ## A001263.P4105342284524557382

`gcd(A073423(n), A132808(n+1))`
-/

namespace A001263.P4105342284524557382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A132808 (n + 1))

end

end A001263.P4105342284524557382

namespace A001263

/-- `gcd(A073423(n), A132808(n+1))` -/
def P4105342284524557382.Spec : Prop :=
  ∀ n, (P4105342284524557382.a n : ℤ) = A001263 (n + 1)

end A001263

/-! ## A001263.P15702420871898253769

`gcd(A103371(n), A128821(n+1))`
-/

namespace A001263.P15702420871898253769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103371 n) (A128821 (n + 1))

end

end A001263.P15702420871898253769

namespace A001263

/-- `gcd(A103371(n), A128821(n+1))` -/
def P15702420871898253769.Spec : Prop :=
  ∀ n, (P15702420871898253769.a n : ℤ) = A001263 (n + 1)

end A001263

/-! ## A001263.P13064699273182358574

`A132789(n+1)+1-A007318(n)`
-/

namespace A001263.P13064699273182358574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132789 (n + 1) + (1 - A007318 n)

end

end A001263.P13064699273182358574

namespace A001263

/-- `A132789(n+1)+1-A007318(n)` -/
def P13064699273182358574.Spec : Prop :=
  ∀ n, P13064699273182358574.a n = A001263 (n + 1)

end A001263

/-! ## A001263.P3406565126434500879

`A132812(n+1)/A002024(n+1)`
-/

namespace A001263.P3406565126434500879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132812 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A001263.P3406565126434500879

namespace A001263

/-- `A132812(n+1)/A002024(n+1)` -/
def P3406565126434500879.Spec : Prop :=
  ∀ n, P3406565126434500879.a n = (A001263 (n + 1) : ℚ)

end A001263

/-! ## A001263.P12564599981104952879

`gcd(A118963(n+1), A132812(n+1))`
-/

namespace A001263.P12564599981104952879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118963 (n + 1)) (A132812 (n + 1))

end

end A001263.P12564599981104952879

namespace A001263

/-- `gcd(A118963(n+1), A132812(n+1))` -/
def P12564599981104952879.Spec : Prop :=
  ∀ n, (P12564599981104952879.a n : ℤ) = A001263 (n + 1)

end A001263

/-! ## A001263.P3230375776928855061

`A007318(n)/A002260(n+1)*A074909(n)`
-/

namespace A001263.P3230375776928855061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A002260 (n + 1) : ℚ) * (A074909 n : ℚ)

end

end A001263.P3230375776928855061

namespace A001263

/-- `A007318(n)/A002260(n+1)*A074909(n)` -/
def P3230375776928855061.Spec : Prop :=
  ∀ n, P3230375776928855061.a n = (A001263 (n + 1) : ℚ)

theorem P3230375776928855061.correct : P3230375776928855061.Spec := by
  intro n
  simp only [A001263, Nat.add_sub_cancel, A001263.P3230375776928855061.a, A001263.P115983165618393794.a, A002260, A002260.P9170571874073898642.a, A007318, A007318.P11755526479805562006.a, A074909, A074909.P6402560185863182536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001263

/-! ## A001263.P9161576569797685729

`A074909(n+1)/A002024(n+1)*A074909(n)`
-/

namespace A001263.P9161576569797685729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A074909 n : ℚ)

end

end A001263.P9161576569797685729

namespace A001263

/-- `A074909(n+1)/A002024(n+1)*A074909(n)` -/
def P9161576569797685729.Spec : Prop :=
  ∀ n, P9161576569797685729.a n = (A001263 (n + 1) : ℚ)

end A001263

/-!
# A001264: Final 2 digits of 4^n.

The programs for A001264, the canonical program `A001264.P16112765924331007003` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001264 has offset 0).

The definition of A001264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001264.P16112765924331007003

`4*a(n-1)%25` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001264

/-- `4*a(n-1)%25` -/
def P16112765924331007003.Spec : Prop :=
  ∀ n, (P16112765924331007003.a n : ℤ) = A001264 n

theorem P16112765924331007003.correct : P16112765924331007003.Spec := by
  intro n
  simp only [A001264]

end A001264

/-!
# A001265: Table T(n,k) in which n-th row lists prime factors of 2^n - 1 (n >= 2), with repetition.

The programs for A001265, there is no canonical definition to state claims against.
-/

/-! ## A001265.P9452521624906373963

`A006530(A011782(n)*A361438(2*n+3))`
-/

namespace A001265.P9452521624906373963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011782 n * A361438 (2 * n + 3)).toNat

end

end A001265.P9452521624906373963

/-!
# A001266: One-half the number of permutations of length n without rising or falling successions.

The programs for A001266, there is no canonical definition to state claims against.
-/

/-! ## A001266.P16961991859213661671

`A002464(n+2)/2`
-/

namespace A001266.P16961991859213661671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002464 (n + 2) : ℚ) / 2

end

end A001266.P16961991859213661671

/-! ## A001266.P3097802473401452973

`A010028(C(n+3, 2))`
-/

namespace A001266.P3097802473401452973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010028 (Nat.choose (n + 3) 2)

end

end A001266.P3097802473401452973

/-! ## A001266.P16195832401960053532

`A086856(∑[n+1]+1)`
-/

namespace A001266.P16195832401960053532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001266.P16195832401960053532

/-! ## A001266.P1536271442612168571

`A010028(∑[n+2]+1)`
-/

namespace A001266.P1536271442612168571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001266.P1536271442612168571

/-! ## A001266.P362916812910915471

`A001100(∑[n+1]+1)/2`
-/

namespace A001266.P362916812910915471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A001266.P362916812910915471

/-! ## A001266.P2638467986211945195

`A086856(A134869(n+1))-A000007(n)`
-/

namespace A001266.P2638467986211945195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (A134869 (n + 1)).toNat - A000007 n

end

end A001266.P2638467986211945195

/-! ## A001266.P8189005448466547717

`A057427(n)*A086856(A134869(n+1))`
-/

namespace A001266.P8189005448466547717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A086856 (A134869 (n + 1)).toNat

end

end A001266.P8189005448466547717

/-! ## A001266.P13085362062736135764

`A010030(lt[A084950(n), n])`
-/

namespace A001266.P13085362062736135764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084950 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A001266.P13085362062736135764

/-! ## A001266.P14474635178514296858

`A010030(A184674(n+2)+1)`
-/

namespace A001266.P14474635178514296858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (A184674 (n + 2) + 1).toNat

end

end A001266.P14474635178514296858

/-! ## A001266.P17886372407651393619

`A010030(A036572(n+3)-n)`
-/

namespace A001266.P17886372407651393619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (A036572 (n + 3) - (n : ℤ)).toNat

end

end A001266.P17886372407651393619

/-!
# A001267: One-half the number of permutations of length n with exactly 3 rising or falling successions.

The programs for A001267, there is no canonical definition to state claims against.
-/

/-! ## A001267.P3668461963571273579

`A086854(n)/2`
-/

namespace A001267.P3668461963571273579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086854 n : ℚ) / 2

end

end A001267.P3668461963571273579

/-! ## A001267.P5873879050953092044

`A014682(A086854(n))`
-/

namespace A001267.P5873879050953092044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A086854 n).toNat

end

end A001267.P5873879050953092044

/-! ## A001267.P1170409090816435348

`A273943(lcm(2, A086854(n)))`
-/

namespace A001267.P1170409090816435348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A086854 n))

end

end A001267.P1170409090816435348

/-! ## A001267.P2068704845905018690

`∑{d}[A086854(n), A305804(#)]`
-/

namespace A001267.P2068704845905018690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A001267.P2068704845905018690

/-! ## A001267.P9506600174097454494

`A273943(A057427(n)*A086854(n))`
-/

namespace A001267.P9506600174097454494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A057427 n * A086854 n).toNat

end

end A001267.P9506600174097454494

/-!
# A001268: One-half the number of permutations of length n with exactly 4 rising or falling successions.

The programs for A001268, there is no canonical definition to state claims against.
-/

/-! ## A001268.P5095414100026873047

`A086855(n)/2`
-/

namespace A001268.P5095414100026873047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086855 n : ℚ) / 2

end

end A001268.P5095414100026873047

/-! ## A001268.P7942592540153244565

`2^A008683(A051698(n))*A086855(n)`
-/

namespace A001268.P7942592540153244565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A051698 n).toNat : ℤ) * (A086855 n : ℚ)

end

end A001268.P7942592540153244565

/-! ## A001268.P4360485828423500351

`2^A008683(A001359(n+1))*A086855(n)`
-/

namespace A001268.P4360485828423500351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A001359 (n + 1)).toNat : ℤ) * (A086855 n : ℚ)

end

end A001268.P4360485828423500351

/-! ## A001268.P2025777242723103970

`2^A008683(A002145(n+1))*A086855(n)`
-/

namespace A001268.P2025777242723103970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002145 (n + 1)).toNat : ℤ) * (A086855 n : ℚ)

end

end A001268.P2025777242723103970

/-! ## A001268.P12139080208886538889

`2^A008683(A051701(n+1))*A086855(n)`
-/

namespace A001268.P12139080208886538889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A051701 (n + 1)).toNat : ℤ) * (A086855 n : ℚ)

end

end A001268.P12139080208886538889

/-! ## A001268.P554692258362596314

`2^A008683(A071187(n+1))*A086855(n)`
-/

namespace A001268.P554692258362596314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A071187 (n + 1)).toNat : ℤ) * (A086855 n : ℚ)

end

end A001268.P554692258362596314

/-! ## A001268.P15136827620261960701

`2^A008683(A236119(n+1))*A086855(n)`
-/

namespace A001268.P15136827620261960701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A236119 (n + 1)).toNat : ℤ) * (A086855 n : ℚ)

end

end A001268.P15136827620261960701

/-!
# A001270: Table of prime factors of 10^n - 1 (with multiplicity).

The programs for A001270, there is no canonical definition to state claims against.
-/

/-! ## A001270.P17614487013147819682

`A056608((2*n+1)*49*a(n-1)+1)` with `a(0)=3`
-/

namespace A001270.P17614487013147819682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A056608 ((2 * n + 1 : ℤ) * (49 * a (n - 1)) + 1).toNat

end

end A001270.P17614487013147819682

/-! ## A001270.P1377153341538277984

`A073703(A148714(n+1))`
-/

namespace A001270.P1377153341538277984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073703 (A148714 (n + 1)).toNat

end

end A001270.P1377153341538277984

/-! ## A001270.P11084609922933248586

`A269326(A257493(n+4)²)`
-/

namespace A001270.P11084609922933248586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269326 (A257493 (n + 4) ^ 2).toNat

end

end A001270.P11084609922933248586

/-! ## A001270.P6469788675641230039

`A231574(A054252(n+1)+1)`
-/

namespace A001270.P6469788675641230039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231574 (A054252 (n + 1) + 1).toNat

end

end A001270.P6469788675641230039

/-! ## A001270.P15647784170017194241

`A231574(A279453(n+1)+1)`
-/

namespace A001270.P15647784170017194241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231574 (A279453 (n + 1) + 1).toNat

end

end A001270.P15647784170017194241

/-!
# A001272: Numbers k such that k! - (k-1)! + (k-2)! - (k-3)! + ... - (-1)^k*1! is prime.

The programs for A001272, there is no canonical definition to state claims against.
-/

/-! ## A001272.P163796232130019886

`A377431(A036440(n+1))+n`
-/

namespace A001272.P163796232130019886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377431 (A036440 (n + 1)).toNat + (n : ℤ)

end

end A001272.P163796232130019886

/-!
# A001273: Smallest number that takes n steps to reach 1 under iteration of sum-of-squares-of-digits map (= smallest "happy number" of height n).

The programs for A001273, there is no canonical definition to state claims against.
-/

/-! ## A001273.P11643318569008408632

`10^a(n-1)` with `a(0)=1, a(1)=10, a(2)=13, a(3)=23, a(4)=19, a(5)=7, a(6)=356`
-/

namespace A001273.P11643318569008408632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 13, 23, 19, 7, 356] fun n a =>
  10 ^ a (n - 1)

end

end A001273.P11643318569008408632

/-! ## A001273.P3712318579946693474

`A176762(C(n, ∏{e}[n+1, #]))`
-/

namespace A001273.P3712318579946693474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176762 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A001273.P3712318579946693474

/-!
# A001274: Numbers k such that phi(k) = phi(k+1).

The programs for A001274, there is no canonical definition to state claims against.
-/

/-! ## A001274.P10124821402147598536

`∩[A057919(n+1), A057920(n+1)]`
-/

namespace A001274.P10124821402147598536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001274.P10124821402147598536

/-! ## A001274.P488490111030759888

`eq[A000010(n+1), A000010(n+2)]+1`
-/

namespace A001274.P488490111030759888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A001274.P488490111030759888

/-! ## A001274.P4147538301167302816

`eq[1, A171934(n+1)]`
-/

namespace A001274.P4147538301167302816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001274.P4147538301167302816

/-! ## A001274.P6014239457900072489

`∩[A057919(n+1), A062958(n+1)]`
-/

namespace A001274.P6014239457900072489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001274.P6014239457900072489

/-! ## A001274.P4611826713129692487

`eq[0, A057000(n+1)]+1`
-/

namespace A001274.P4611826713129692487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001274.P4611826713129692487

/-!
# A001275: Smallest prime p such that the product of q/(q-1) over the primes from prime(n) to p is greater than 2.

The programs for A001275, there is no canonical definition to state claims against.
-/

/-! ## A001275.P17234794870265124012

`A000040(A001276(n+1)+n+1-1)`
-/

namespace A001275.P17234794870265124012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001276 (n + 1) + (n + 1 : ℤ) - 1).toNat

end

end A001275.P17234794870265124012

/-! ## A001275.P8643710766460149790

`A001748(A001276(n+1)+n)/3`
-/

namespace A001275.P8643710766460149790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A001276 (n + 1) + (n : ℤ)).toNat : ℚ) / 3

end

end A001275.P8643710766460149790

/-! ## A001275.P17534591018335665925

`A001749(A001276(n+1)+n)/4`
-/

namespace A001275.P17534591018335665925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A001276 (n + 1) + (n : ℤ)).toNat : ℚ) / 4

end

end A001275.P17534591018335665925

/-! ## A001275.P358704169082994676

`A000040(A001276(n+1)+n)`
-/

namespace A001275.P358704169082994676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001276 (n + 1) + (n : ℤ)).toNat

end

end A001275.P358704169082994676

/-! ## A001275.P4601247732742949558

`A006005(A001276(n+1)+n)`
-/

namespace A001275.P4601247732742949558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A001276 (n + 1) + (n : ℤ)).toNat

end

end A001275.P4601247732742949558

/-! ## A001275.P14595355315889189424

`A006093(A001276(n+1)+n)+1`
-/

namespace A001275.P14595355315889189424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A001276 (n + 1) + (n : ℤ)).toNat + 1

end

end A001275.P14595355315889189424

/-! ## A001275.P1094931201673624718

`A008578(n+1+A001276(n+1))`
-/

namespace A001275.P1094931201673624718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ((n + 1 : ℤ) + A001276 (n + 1)).toNat

end

end A001275.P1094931201673624718

/-! ## A001275.P11856460129035932778

`A065091(A001276(n+1)-1+n)`
-/

namespace A001275.P11856460129035932778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A001276 (n + 1) - 1 + (n : ℤ)).toNat

end

end A001275.P11856460129035932778

/-! ## A001275.P582690134707655640

`∑{d}[A001276(n+1)+n, A007444(#)]`
-/

namespace A001275.P582690134707655640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001276 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A001275.P582690134707655640

/-!
# A001276: Smallest k such that the product of q/(q-1) over the primes from prime(n) to prime(n+k-1) is greater than 2.

The programs for A001276, there is no canonical definition to state claims against.
-/

/-! ## A001276.P16968623952414613226

`A000720(A001275(n+1)+1)-n`
-/

namespace A001276.P16968623952414613226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001275 (n + 1) + 1).toNat - (n : ℤ)

end

end A001276.P16968623952414613226

/-! ## A001276.P17333122790800930269

`A000720(A001275(n+1))-n`
-/

namespace A001276.P17333122790800930269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001275 (n + 1)).toNat - (n : ℤ)

end

end A001276.P17333122790800930269

/-! ## A001276.P17027367827543902134

`A001489(n)+A000720(A001275(n+1))`
-/

namespace A001276.P17027367827543902134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000720 (A001275 (n + 1)).toNat

end

end A001276.P17027367827543902134

/-! ## A001276.P1374109303325647698

`A001057(2*n)+A000720(A001275(n+1))`
-/

namespace A001276.P1374109303325647698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + A000720 (A001275 (n + 1)).toNat

end

end A001276.P1374109303325647698

/-! ## A001276.P194643974709965444

`A001478(n+1)+A000720(A001275(n+1))+1`
-/

namespace A001276.P194643974709965444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A000720 (A001275 (n + 1)).toNat + 1)

end

end A001276.P194643974709965444

/-!
# A001277: Number of permutations of length n by rises.

The programs for A001277, the canonical program `A001277.P15553202100893757648` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001277 has offset 2).

The definition of A001277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001277.P15553202100893757648

`A173184(n+2)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001277

/-- `A173184(n+2)-1` -/
def P15553202100893757648.Spec : Prop :=
  ∀ n, P15553202100893757648.a n = A001277 (n + 2)

theorem P15553202100893757648.correct : P15553202100893757648.Spec := by
  intro n
  simp only [A001277, Nat.add_sub_cancel]

end A001277

/-! ## A001277.P7507249848184058342

`∑[record[xor(1, n*a(n-1))]]` with `a(0)=1`
-/

namespace A001277.P7507249848184058342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.xor 1 (n * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P7507249848184058342

namespace A001277

/-- `∑[record[xor(1, n*a(n-1))]]` -/
def P7507249848184058342.Spec : Prop :=
  ∀ n, (P7507249848184058342.a n : ℤ) = A001277 (n + 2)

end A001277

/-! ## A001277.P6977610993542417473

`∑[record[xor(1, a(n-1)/n^(-1))]]` with `a(0)=1`
-/

namespace A001277.P6977610993542417473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.xor 1 (SequenceMachineLib.roundAway ((f2 (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P6977610993542417473

namespace A001277

/-- `∑[record[xor(1, a(n-1)/n^(-1))]]` -/
def P6977610993542417473.Spec : Prop :=
  ∀ n, P6977610993542417473.a n = A001277 (n + 2)

end A001277

/-! ## A001277.P991307247855261956

`∑[record[(-1)^n+n*a(n-1)]]` with `a(0)=1`
-/

namespace A001277.P991307247855261956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (-1) ^ n + (n : ℤ) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P991307247855261956

namespace A001277

/-- `∑[record[(-1)^n+n*a(n-1)]]` -/
def P991307247855261956.Spec : Prop :=
  ∀ n, P991307247855261956.a n = A001277 (n + 2)

end A001277

/-! ## A001277.P1938655748629269326

`∑[record[n*a(n-1)-(-1)^(1-n)]]` with `a(0)=1`
-/

namespace A001277.P1938655748629269326
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) * f2 (n - 1) - (-1 : ℚ) ^ (1 - (n : ℤ) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P1938655748629269326

namespace A001277

/-- `∑[record[n*a(n-1)-(-1)^(1-n)]]` -/
def P1938655748629269326.Spec : Prop :=
  ∀ n, P1938655748629269326.a n = (A001277 (n + 2) : ℚ)

end A001277

/-! ## A001277.P13384156759045733022

`∑[record[(-1)^n+a(n-1)/n^(-1)]]` with `a(0)=1`
-/

namespace A001277.P13384156759045733022
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  ((-1) ^ n : ℚ) + f2 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P13384156759045733022

namespace A001277

/-- `∑[record[(-1)^n+a(n-1)/n^(-1)]]` -/
def P13384156759045733022.Spec : Prop :=
  ∀ n, P13384156759045733022.a n = (A001277 (n + 2) : ℚ)

end A001277

/-! ## A001277.P14729654764656433108

`∑[(n+1)*(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A001277.P14729654764656433108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1) * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P14729654764656433108

namespace A001277

/-- `∑[(n+1)*(a(n-1)+a(n-2))]` -/
def P14729654764656433108.Spec : Prop :=
  ∀ n, (P14729654764656433108.a n : ℤ) = A001277 (n + 2)

end A001277

/-! ## A001277.P14770925136595371234

`∑[(a(n-1)+a(n-2))/(n+1)^(-1)]` with `a(0)=1, a(1)=2`
-/

namespace A001277.P14770925136595371234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (f1 (n - 1) + f1 (n - 2)) / (n + 1 : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P14770925136595371234

namespace A001277

/-- `∑[(a(n-1)+a(n-2))/(n+1)^(-1)]` -/
def P14770925136595371234.Spec : Prop :=
  ∀ n, P14770925136595371234.a n = (A001277 (n + 2) : ℚ)

end A001277

/-! ## A001277.P3972504809746462282

`∑[record[A000166(n)]]`
-/

namespace A001277.P3972504809746462282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P3972504809746462282

namespace A001277

/-- `∑[record[A000166(n)]]` -/
def P3972504809746462282.Spec : Prop :=
  ∀ n, P3972504809746462282.a n = A001277 (n + 2)

end A001277

/-! ## A001277.P1006586189825654369

`∑[record[A337615(n)]]`
-/

namespace A001277.P1006586189825654369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001277.P1006586189825654369

namespace A001277

/-- `∑[record[A337615(n)]]` -/
def P1006586189825654369.Spec : Prop :=
  ∀ n, P1006586189825654369.a n = A001277 (n + 2)

end A001277

/-!
# A001278: Number of permutations of length n by rises.

The programs for A001278, there is no canonical definition to state claims against.
-/

/-! ## A001278.P18336986574901202041

`∑[∑[∑[n+1]*A000255(n+1)]]`
-/

namespace A001278.P18336986574901202041
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A000255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001278.P18336986574901202041

/-! ## A001278.P8049484449346223072

`∑[∑[(n+1)*A000166(n+3)]/2]`
-/

namespace A001278.P8049484449346223072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000166 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001278.P8049484449346223072

/-! ## A001278.P1044067589120906054

`A010029(A004116(n+3))`
-/

namespace A001278.P1044067589120906054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010029 (A004116 (n + 3)).toNat

end

end A001278.P1044067589120906054

/-! ## A001278.P9358860327486418605

`A010029(A036572(n+3)+3)`
-/

namespace A001278.P9358860327486418605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010029 (A036572 (n + 3) + 3).toNat

end

end A001278.P9358860327486418605

/-!
# A001279: Number of permutations of length n by rises.

The programs for A001279, there is no canonical definition to state claims against.
-/

/-! ## A001279.P14757870747775708193

`A136123(A004116(n+4)+6)`
-/

namespace A001279.P14757870747775708193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136123 (A004116 (n + 4) + 6).toNat

end

end A001279.P14757870747775708193

/-!
# A001281: Image of n under the map n->n/2 if n even, n->3n-1 if n odd.

The programs for A001281, the canonical program `A001281.P15107032606590422584` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001281 has offset 0).

The definition of A001281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001281.P15107032606590422584

`(7*n-2-(5*n-2)*cos(π*n))/4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001281

/-- `(7*n-2-(5*n-2)*cos(π*n))/4` -/
def P15107032606590422584.Spec : Prop :=
  ∀ n, P15107032606590422584.a n = (A001281 n : ℝ)

end A001281

/-! ## A001281.P3677304435881220057

`ogf((2x+x^2+4x^3)/(1-2x^2+x^4))`
-/

namespace A001281.P3677304435881220057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 4] [1, 0, -2, 0, 1] n

end

end A001281.P3677304435881220057

namespace A001281

/-- `ogf((2x+x^2+4x^3)/(1-2x^2+x^4))` -/
def P3677304435881220057.Spec : Prop :=
  ∀ n, P3677304435881220057.a n = A001281 n

end A001281

/-! ## A001281.P5124303234148890859

`a(n-2)+6^(n%2)` with `a(0)=0, a(1)=2`
-/

namespace A001281.P5124303234148890859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 6 ^ (n % 2)

end

end A001281.P5124303234148890859

namespace A001281

/-- `a(n-2)+6^(n%2)` -/
def P5124303234148890859.Spec : Prop :=
  ∀ n, (P5124303234148890859.a n : ℤ) = A001281 n

end A001281

/-! ## A001281.P11876353543528201898

`a(n-2)+gcd(6, (n+1)%2)` with `a(0)=0, a(1)=2`
-/

namespace A001281.P11876353543528201898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + Nat.gcd 6 ((n + 1) % 2)

end

end A001281.P11876353543528201898

namespace A001281

/-- `a(n-2)+gcd(6, (n+1)%2)` -/
def P11876353543528201898.Spec : Prop :=
  ∀ n, (P11876353543528201898.a n : ℤ) = A001281 n

end A001281

/-! ## A001281.P8555718974652130271

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=8`
-/

namespace A001281.P8555718974652130271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 8] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A001281.P8555718974652130271

namespace A001281

/-- `2*a(n-2)-a(n-4)` -/
def P8555718974652130271.Spec : Prop :=
  ∀ n, P8555718974652130271.a n = A001281 n

end A001281

/-! ## A001281.P2361520772612673964

`∑[7-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A001281.P2361520772612673964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A001281.P2361520772612673964

namespace A001281

/-- `∑[7-a(n-1)]-a(n-1)` -/
def P2361520772612673964.Spec : Prop :=
  ∀ n, P2361520772612673964.a n = A001281 n

end A001281

/-! ## A001281.P3616793368124035546

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=8`
-/

namespace A001281.P3616793368124035546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 8] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A001281.P3616793368124035546

namespace A001281

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P3616793368124035546.Spec : Prop :=
  ∀ n, P3616793368124035546.a n = A001281 n

end A001281

/-! ## A001281.P4624434421484006172

`∑[2*n]%(2*n+1)*gcd(2, n+1)-Δ[or(1, n)]`
-/

namespace A001281.P4624434421484006172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 1) * Nat.gcd 2 (n + 1) : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A001281.P4624434421484006172

namespace A001281

/-- `∑[2*n]%(2*n+1)*gcd(2, n+1)-Δ[or(1, n)]` -/
def P4624434421484006172.Spec : Prop :=
  ∀ n, P4624434421484006172.a n = A001281 n

end A001281

/-! ## A001281.P9843342835662202963

`floor((A019428(n)+n)/2)`
-/

namespace A001281.P9843342835662202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019428 n + (n : ℤ) : ℚ) / 2⌋

end

end A001281.P9843342835662202963

namespace A001281

/-- `floor((A019428(n)+n)/2)` -/
def P9843342835662202963.Spec : Prop :=
  ∀ n, P9843342835662202963.a n = A001281 n

end A001281

/-! ## A001281.P5356348958504600276

`A006370(n)-2*and(1, n)`
-/

namespace A001281.P5356348958504600276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - (2 * Nat.land 1 n : ℤ)

end

end A001281.P5356348958504600276

namespace A001281

/-- `A006370(n)-2*and(1, n)` -/
def P5356348958504600276.Spec : Prop :=
  ∀ n, P5356348958504600276.a n = A001281 n

end A001281

/-! ## A001281.P3592559791364474640

`A014682(A227906(n))`
-/

namespace A001281.P3592559791364474640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A227906 n).toNat

end

end A001281.P3592559791364474640

namespace A001281

/-- `A014682(A227906(n))` -/
def P3592559791364474640.Spec : Prop :=
  ∀ n, P3592559791364474640.a n = A001281 n

end A001281

/-! ## A001281.P17634267101026063062

`A227906(n)+A176447(n)`
-/

namespace A001281.P17634267101026063062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227906 n + A176447 n

end

end A001281.P17634267101026063062

namespace A001281

/-- `A227906(n)+A176447(n)` -/
def P17634267101026063062.Spec : Prop :=
  ∀ n, P17634267101026063062.a n = A001281 n

end A001281

/-! ## A001281.P14068928566503004333

`A006370(n)-A010673(n)`
-/

namespace A001281.P14068928566503004333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - A010673 n

end

end A001281.P14068928566503004333

namespace A001281

/-- `A006370(n)-A010673(n)` -/
def P14068928566503004333.Spec : Prop :=
  ∀ n, P14068928566503004333.a n = A001281 n

end A001281

/-! ## A001281.P10602867382007796687

`A181762(n)-A010677(n)`
-/

namespace A001281.P10602867382007796687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 n - A010677 n

end

end A001281.P10602867382007796687

namespace A001281

/-- `A181762(n)-A010677(n)` -/
def P10602867382007796687.Spec : Prop :=
  ∀ n, P10602867382007796687.a n = A001281 n

end A001281

/-! ## A001281.P11170661731419982966

`A294178(n)-A158416(n)`
-/

namespace A001281.P11170661731419982966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 n - A158416 n

end

end A001281.P11170661731419982966

namespace A001281

/-- `A294178(n)-A158416(n)` -/
def P11170661731419982966.Spec : Prop :=
  ∀ n, P11170661731419982966.a n = A001281 n

end A001281

/-! ## A001281.P1367034236611393651

`A195015(n)%A016861(n)`
-/

namespace A001281.P1367034236611393651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195015 n) (A016861 n)

end

end A001281.P1367034236611393651

namespace A001281

/-- `A195015(n)%A016861(n)` -/
def P1367034236611393651.Spec : Prop :=
  ∀ n, P1367034236611393651.a n = A001281 n

end A001281

/-! ## A001281.P1742691262456274889

`A006370(n)-Δ[A109613(n)]`
-/

namespace A001281.P1742691262456274889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n - (f1 (n + 1) - f1 n)

end

end A001281.P1742691262456274889

namespace A001281

/-- `A006370(n)-Δ[A109613(n)]` -/
def P1742691262456274889.Spec : Prop :=
  ∀ n, P1742691262456274889.a n = A001281 n

end A001281

/-! ## A001281.P12887386315129922270

`A006370(n)+A033999(n)-1`
-/

namespace A001281.P12887386315129922270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n + (A033999 n - 1)

end

end A001281.P12887386315129922270

namespace A001281

/-- `A006370(n)+A033999(n)-1` -/
def P12887386315129922270.Spec : Prop :=
  ∀ n, P12887386315129922270.a n = A001281 n

end A001281

/-! ## A001281.P3343183948972686513

`A014682(A093178(n)-1+n)`
-/

namespace A001281.P3343183948972686513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093178 n - 1 + (n : ℤ)).toNat

end

end A001281.P3343183948972686513

namespace A001281

/-- `A014682(A093178(n)-1+n)` -/
def P3343183948972686513.Spec : Prop :=
  ∀ n, P3343183948972686513.a n = A001281 n

end A001281

/-! ## A001281.P15684007756882652697

`A047470(n+1)-A195159(n)`
-/

namespace A001281.P15684007756882652697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1) - A195159 n

end

end A001281.P15684007756882652697

namespace A001281

/-- `A047470(n+1)-A195159(n)` -/
def P15684007756882652697.Spec : Prop :=
  ∀ n, P15684007756882652697.a n = A001281 n

end A001281

/-!
# A001282: One-half of the number of permutations p of [n] having exactly three runs of adjacent entries differing by 1.

The programs for A001282, there is no canonical definition to state claims against.
-/

/-! ## A001282.P11172149445470721143

`A010030(A036572(n+5)+2)`
-/

namespace A001282.P11172149445470721143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010030 (A036572 (n + 5) + 2).toNat

end

end A001282.P11172149445470721143

/-!
# A001283: Triangle read by rows, in which row n consists of n(n+m) for m = 1 .. n-1.

The programs for A001283, the canonical program `A001283.P9612674106324682864` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001283 has offset 2).

The definition of A001283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001283.P66705159523400762

`(row(n)-col(n)+1)²+3*(row(n)-col(n)+1)*(col(n)+1)+2*(col(n)+1)²`
-/

namespace A001283.P66705159523400762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ 2 + 3 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) + (2 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ)

end

end A001283.P66705159523400762

namespace A001283

/-- `(row(n)-col(n)+1)²+3*(row(n)-col(n)+1)*(col(n)+1)+2*(col(n)+1)²` -/
def P66705159523400762.Spec : Prop :=
  ∀ n, P66705159523400762.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P18256186215903641771

`A144650(n+1)+A095833(n+1)`
-/

namespace A001283.P18256186215903641771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + A095833 (n + 1)

end

end A001283.P18256186215903641771

namespace A001283

/-- `A144650(n+1)+A095833(n+1)` -/
def P18256186215903641771.Spec : Prop :=
  ∀ n, P18256186215903641771.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P2169532121014660313

`A189151(n+1)+A075362(n+1)`
-/

namespace A001283.P2169532121014660313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189151 (n + 1) + A075362 (n + 1)

end

end A001283.P2169532121014660313

namespace A001283

/-- `A189151(n+1)+A075362(n+1)` -/
def P2169532121014660313.Spec : Prop :=
  ∀ n, P2169532121014660313.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P6127243863687421158

`A055096(n+2)+A003991(n+1)`
-/

namespace A001283.P6127243863687421158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) + A003991 (n + 1)

end

end A001283.P6127243863687421158

namespace A001283

/-- `A055096(n+2)+A003991(n+1)` -/
def P6127243863687421158.Spec : Prop :=
  ∀ n, P6127243863687421158.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P12887673203754731835

`A056203(n+1)-A003991(n+1)`
-/

namespace A001283.P12887673203754731835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) - A003991 (n + 1)

end

end A001283.P12887673203754731835

namespace A001283

/-- `A056203(n+1)-A003991(n+1)` -/
def P12887673203754731835.Spec : Prop :=
  ∀ n, P12887673203754731835.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P5238410689188025714

`A120070(n+2)+A063930(n+1)`
-/

namespace A001283.P5238410689188025714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2) + A063930 (n + 1)

end

end A001283.P5238410689188025714

namespace A001283

/-- `A120070(n+2)+A063930(n+1)` -/
def P5238410689188025714.Spec : Prop :=
  ∀ n, P5238410689188025714.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P9241855163804440265

`A057103(n+2)/A098352(n+1)`
-/

namespace A001283.P9241855163804440265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057103 (n + 2) : ℚ) / (A098352 (n + 1) : ℚ)

end

end A001283.P9241855163804440265

namespace A001283

/-- `A057103(n+2)/A098352(n+1)` -/
def P9241855163804440265.Spec : Prop :=
  ∀ n, P9241855163804440265.a n = (A001283 (n + 2) : ℚ)

end A001283

/-! ## A001283.P9612674106324682864

`(A108872(n+1)+1)*A003057(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001283

/-- `(A108872(n+1)+1)*A003057(n+2)` -/
def P9612674106324682864.Spec : Prop :=
  ∀ n, P9612674106324682864.a n = A001283 (n + 2)

theorem P9612674106324682864.correct : P9612674106324682864.Spec := by
  intro n
  simp only [A001283, Nat.add_sub_cancel]

end A001283

/-! ## A001283.P14461930198231423551

`(A056203(n+1)+A055096(n+2))/2`
-/

namespace A001283.P14461930198231423551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056203 (n + 1) + A055096 (n + 2) : ℚ) / 2

end

end A001283.P14461930198231423551

namespace A001283

/-- `(A056203(n+1)+A055096(n+2))/2` -/
def P14461930198231423551.Spec : Prop :=
  ∀ n, P14461930198231423551.a n = (A001283 (n + 2) : ℚ)

end A001283

/-! ## A001283.P16291623593915192879

`A120070(n+2)+A120070(n+2)/ratio[A074909(n)]`
-/

namespace A001283.P16291623593915192879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120070 (n + 2) : ℚ) + (A120070 (n + 2) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A001283.P16291623593915192879

namespace A001283

/-- `A120070(n+2)+A120070(n+2)/ratio[A074909(n)]` -/
def P16291623593915192879.Spec : Prop :=
  ∀ n, P16291623593915192879.a n = (A001283 (n + 2) : ℚ)

end A001283

/-! ## A001283.P7911923114447917705

`A003991(n+1)+A063930(n+1)+A063929(n+1)`
-/

namespace A001283.P7911923114447917705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A063930 (n + 1) + A063929 (n + 1))

end

end A001283.P7911923114447917705

namespace A001283

/-- `A003991(n+1)+A063930(n+1)+A063929(n+1)` -/
def P7911923114447917705.Spec : Prop :=
  ∀ n, P7911923114447917705.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P14987681063137749804

`A218036(n+1)+A002024(n+1)*A003057(n+2)`
-/

namespace A001283.P14987681063137749804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) + A002024 (n + 1) * A003057 (n + 2)

end

end A001283.P14987681063137749804

namespace A001283

/-- `A218036(n+1)+A002024(n+1)*A003057(n+2)` -/
def P14987681063137749804.Spec : Prop :=
  ∀ n, P14987681063137749804.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P11103166482935038636

`(A003057(n+2)+A002260(n+1))*A003057(n+2)`
-/

namespace A001283.P11103166482935038636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) + A002260 (n + 1)) * A003057 (n + 2)

end

end A001283.P11103166482935038636

namespace A001283

/-- `(A003057(n+2)+A002260(n+1))*A003057(n+2)` -/
def P11103166482935038636.Spec : Prop :=
  ∀ n, P11103166482935038636.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P1610222217242099986

`(A003057(n+2)+A002262(n)+1)*A003057(n+2)`
-/

namespace A001283.P1610222217242099986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) + (A002262 n + 1)) * A003057 (n + 2)

end

end A001283.P1610222217242099986

namespace A001283

/-- `(A003057(n+2)+A002262(n)+1)*A003057(n+2)` -/
def P1610222217242099986.Spec : Prop :=
  ∀ n, P1610222217242099986.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P6553375977055671391

`A140978(n+1)+sqrt(A133819(n+1)*A140978(n+1))`
-/

namespace A001283.P6553375977055671391
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A140978 (n + 1) : ℝ) + Real.sqrt (A133819 (n + 1) * A140978 (n + 1) : ℝ)

end

end A001283.P6553375977055671391

namespace A001283

/-- `A140978(n+1)+sqrt(A133819(n+1)*A140978(n+1))` -/
def P6553375977055671391.Spec : Prop :=
  ∀ n, P6553375977055671391.a n = (A001283 (n + 2) : ℝ)

end A001283

/-! ## A001283.P1834488988736518965

`A001105(A003057(n+2))-A003057(n+2)*A004736(n+1)`
-/

namespace A001283.P1834488988736518965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A003057 (n + 2)).toNat - A003057 (n + 2) * A004736 (n + 1)

end

end A001283.P1834488988736518965

namespace A001283

/-- `A001105(A003057(n+2))-A003057(n+2)*A004736(n+1)` -/
def P1834488988736518965.Spec : Prop :=
  ∀ n, P1834488988736518965.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P11621903000334094513

`A055096(n+2)+A004525(A098352(n+1)/2)`
-/

namespace A001283.P11621903000334094513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) + A004525 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 2)).toNat

end

end A001283.P11621903000334094513

namespace A001283

/-- `A055096(n+2)+A004525(A098352(n+1)/2)` -/
def P11621903000334094513.Spec : Prop :=
  ∀ n, P11621903000334094513.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P11271611898206651565

`A100345(lt[2, A207610(n+1)-2])`
-/

namespace A001283.P11271611898206651565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207610 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A001283.P11271611898206651565

namespace A001283

/-- `A100345(lt[2, A207610(n+1)-2])` -/
def P11271611898206651565.Spec : Prop :=
  ∀ n, P11271611898206651565.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P2692325090880375326

`A100345(lt[2, A207610(n+1)/2])`
-/

namespace A001283.P2692325090880375326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207610 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A001283.P2692325090880375326

namespace A001283

/-- `A100345(lt[2, A207610(n+1)/2])` -/
def P2692325090880375326.Spec : Prop :=
  ∀ n, P2692325090880375326.a n = A001283 (n + 2)

end A001283

/-! ## A001283.P15126179972512042377

`A100345(lt[A161606(n+1)+3, A207610(n+1)])`
-/

namespace A001283.P15126179972512042377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161606 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001283.P15126179972512042377

namespace A001283

/-- `A100345(lt[A161606(n+1)+3, A207610(n+1)])` -/
def P15126179972512042377.Spec : Prop :=
  ∀ n, P15126179972512042377.a n = A001283 (n + 2)

end A001283

/-!
# A001284: Numbers of form m*k with m+1 <= k <= 2m-1.

The programs for A001284, there is no canonical definition to state claims against.
-/

/-! ## A001284.P10376409935217955152

`lt[2, A348406(n+1)]+1`
-/

namespace A001284.P10376409935217955152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A001284.P10376409935217955152

/-! ## A001284.P8806039541858261962

`record[gcd(A244367(n+4), A244367(n+5))]`
-/

namespace A001284.P8806039541858261962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244367 (n + 4)) (A244367 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001284.P8806039541858261962

/-! ## A001284.P3824713598225038278

`lt[1, A067742(n+1)]+1`
-/

namespace A001284.P3824713598225038278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A001284.P3824713598225038278

/-! ## A001284.P10632799412171915500

`lt[n+1, A071090(n+1)²]+1`
-/

namespace A001284.P10632799412171915500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071090 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A001284.P10632799412171915500

/-! ## A001284.P3557041120846607903

`lt[1, A067742(A028310(n))]`
-/

namespace A001284.P3557041120846607903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001284.P3557041120846607903

/-! ## A001284.P1062801744659153866

`A020725(lt[1, A067742(n+1)])`
-/

namespace A001284.P1062801744659153866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A001284.P1062801744659153866

/-! ## A001284.P2847223382229706782

`A065475(lt[1, A067742(n+1)])`
-/

namespace A001284.P2847223382229706782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A001284.P2847223382229706782

/-! ## A001284.P3187781264842827638

`lt[n+1, A033638(A071090(n+2))]+2`
-/

namespace A001284.P3187781264842827638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A071090 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A001284.P3187781264842827638

/-! ## A001284.P17423723405576764633

`A020725(lt[A067743(n+1)+1, A000005(n+1)])`
-/

namespace A001284.P17423723405576764633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A001284.P17423723405576764633

/-! ## A001284.P12387320267876537097

`eq[2, 2%A348406(A000007(n)+n)]`
-/

namespace A001284.P12387320267876537097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A348406 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001284.P12387320267876537097

/-!
# A001285: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 1 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 1's and 2's.

The programs for A001285, the canonical program `A001285.P11616636227895161122` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001285 has offset 0).

The definition of A001285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001285.P11616636227895161122

`1+A010060(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001285

/-- `1+A010060(n)` -/
def P11616636227895161122.Spec : Prop :=
  ∀ n, P11616636227895161122.a n = A001285 n

theorem P11616636227895161122.correct : P11616636227895161122.Spec := by
  intro n
  simp only [A001285]

end A001285

/-! ## A001285.P6253646101820335770

`2-A010059(n)`
-/

namespace A001285.P6253646101820335770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010059 n

end

end A001285.P6253646101820335770

namespace A001285

/-- `2-A010059(n)` -/
def P6253646101820335770.Spec : Prop :=
  ∀ n, P6253646101820335770.a n = A001285 n

theorem P6253646101820335770.correct : P6253646101820335770.Spec := by
  intro n
  simp only [A001285, Nat.add_sub_cancel, A001285.P6253646101820335770.a, A001285.P11616636227895161122.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001285

/-! ## A001285.P3782734023606767042

`A001316(n)%3`
-/

namespace A001285.P3782734023606767042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 n) 3

end

end A001285.P3782734023606767042

namespace A001285

/-- `A001316(n)%3` -/
def P3782734023606767042.Spec : Prop :=
  ∀ n, P3782734023606767042.a n = A001285 n

end A001285

/-! ## A001285.P10155042867092843033

`A000120(n)%2+1`
-/

namespace A001285.P10155042867092843033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 2 + 1

end

end A001285.P10155042867092843033

namespace A001285

/-- `A000120(n)%2+1` -/
def P10155042867092843033.Spec : Prop :=
  ∀ n, P10155042867092843033.a n = A001285 n

end A001285

/-! ## A001285.P4339896907883582874

`2-char[xor(n, 2*n)]`
-/

namespace A001285.P4339896907883582874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001285.P4339896907883582874

namespace A001285

/-- `2-char[xor(n, 2*n)]` -/
def P4339896907883582874.Spec : Prop :=
  ∀ n, P4339896907883582874.a n = A001285 n

end A001285

/-! ## A001285.P14425808713994095048

`gcd(2, comp[xor(n, 2*n)])`
-/

namespace A001285.P14425808713994095048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A001285.P14425808713994095048

namespace A001285

/-- `gcd(2, comp[xor(n, 2*n)])` -/
def P14425808713994095048.Spec : Prop :=
  ∀ n, (P14425808713994095048.a n : ℤ) = A001285 n

end A001285

/-! ## A001285.P6453308912858221692

`ceil(acot(char[xor(n, 2*n)]))`
-/

namespace A001285.P6453308912858221692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A001285.P6453308912858221692

namespace A001285

/-- `ceil(acot(char[xor(n, 2*n)]))` -/
def P6453308912858221692.Spec : Prop :=
  ∀ n, P6453308912858221692.a n = A001285 n

end A001285

/-! ## A001285.P9841395333797234875

`round(acot(char[xor(n, 2*n)]))`
-/

namespace A001285.P9841395333797234875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A001285.P9841395333797234875

namespace A001285

/-- `round(acot(char[xor(n, 2*n)]))` -/
def P9841395333797234875.Spec : Prop :=
  ∀ n, P9841395333797234875.a n = A001285 n

end A001285

/-! ## A001285.P18312299694039926907

`3-a(and(n, n-1))` with `a(0)=1`
-/

namespace A001285.P18312299694039926907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A001285.P18312299694039926907

namespace A001285

/-- `3-a(and(n, n-1))` -/
def P18312299694039926907.Spec : Prop :=
  ∀ n, P18312299694039926907.a n = A001285 n

end A001285

/-! ## A001285.P13503294676237569150

`char[xor(n, 2*n+1)]+1`
-/

namespace A001285.P13503294676237569150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A001285.P13503294676237569150

namespace A001285

/-- `char[xor(n, 2*n+1)]+1` -/
def P13503294676237569150.Spec : Prop :=
  ∀ n, (P13503294676237569150.a n : ℤ) = A001285 n

end A001285

/-! ## A001285.P1909149260201835460

`2-(a(floor(n/2))+n)%2` with `a(0)=1`
-/

namespace A001285.P1909149260201835460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

end

end A001285.P1909149260201835460

namespace A001285

/-- `2-(a(floor(n/2))+n)%2` -/
def P1909149260201835460.Spec : Prop :=
  ∀ n, P1909149260201835460.a n = A001285 n

end A001285

/-! ## A001285.P12250784929097521498

`2-(n-a(floor(n/2)))%2` with `a(0)=1`
-/

namespace A001285.P12250784929097521498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A001285.P12250784929097521498

namespace A001285

/-- `2-(n-a(floor(n/2)))%2` -/
def P12250784929097521498.Spec : Prop :=
  ∀ n, P12250784929097521498.a n = A001285 n

end A001285

/-! ## A001285.P12392604222464730740

`2*n+1-comp[xor(n-1, 2*n)]`
-/

namespace A001285.P12392604222464730740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A001285.P12392604222464730740

namespace A001285

/-- `2*n+1-comp[xor(n-1, 2*n)]` -/
def P12392604222464730740.Spec : Prop :=
  ∀ n, P12392604222464730740.a n = A001285 n

end A001285

/-! ## A001285.P12616341836447320438

`Δ[A026430(n)]`
-/

namespace A001285.P12616341836447320438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001285.P12616341836447320438

namespace A001285

/-- `Δ[A026430(n)]` -/
def P12616341836447320438.Spec : Prop :=
  ∀ n, P12616341836447320438.a n = A001285 n

end A001285

/-! ## A001285.P348281658289652388

`A170871(n)%3`
-/

namespace A001285.P348281658289652388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170871 n) 3

end

end A001285.P348281658289652388

namespace A001285

/-- `A170871(n)%3` -/
def P348281658289652388.Spec : Prop :=
  ∀ n, P348281658289652388.a n = A001285 n

end A001285

/-! ## A001285.P11693627907779837542

`A255445(n)%3`
-/

namespace A001285.P11693627907779837542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255445 n) 3

end

end A001285.P11693627907779837542

namespace A001285

/-- `A255445(n)%3` -/
def P11693627907779837542.Spec : Prop :=
  ∀ n, P11693627907779837542.a n = A001285 n

end A001285

/-!
# A001286: Lah numbers: a(n) = (n-1)*n!/2.

The programs for A001286, the canonical program `A001286.P18093615335450425260` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001286 has offset 2).

The definition of A001286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)!/2` (program `A001286.P12627849041619260296`, by `A001286.P12627849041619260296.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001286.P18093615335450425260

`A000217(n+1)*A000142(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001286

/-- `A000217(n+1)*A000142(n+1)` -/
def P18093615335450425260.Spec : Prop :=
  ∀ n, P18093615335450425260.a n = A001286 (n + 2)

theorem P18093615335450425260.correct : P18093615335450425260.Spec := by
  intro n
  simp only [A001286, Nat.add_sub_cancel]

end A001286

/-! ## A001286.P12627849041619260296

`(n+1)*(n+2)!/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001286.P12627849041619260296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (n + 2) : ℚ) / 2

end

end A001286.P12627849041619260296

namespace A001286

/-- `(n+1)*(n+2)!/2` -/
def P12627849041619260296.Spec : Prop :=
  ∀ n, P12627849041619260296.a n = (A001286 (n + 2) : ℚ)

theorem P12627849041619260296.correct : P12627849041619260296.Spec := by
  intro n
  simp only [A001286, Nat.add_sub_cancel, A001286.P12627849041619260296.a, A001286.P18093615335450425260.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001286

/-! ## A001286.P10916243966019356910

`(n+1)!*∑[n+1]`
-/

namespace A001286.P10916243966019356910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001286.P10916243966019356910

namespace A001286

/-- `(n+1)!*∑[n+1]` -/
def P10916243966019356910.Spec : Prop :=
  ∀ n, (P10916243966019356910.a n : ℤ) = A001286 (n + 2)

end A001286

/-! ## A001286.P15570140658953098498

`∏[n+3]-(n+2)!`
-/

namespace A001286.P15570140658953098498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (n + 2) : ℤ)

end

end A001286.P15570140658953098498

namespace A001286

/-- `∏[n+3]-(n+2)!` -/
def P15570140658953098498.Spec : Prop :=
  ∀ n, P15570140658953098498.a n = A001286 (n + 2)

end A001286

/-! ## A001286.P12260748154991409440

`∑[n+1]*∏[n+1]`
-/

namespace A001286.P12260748154991409440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A001286.P12260748154991409440

namespace A001286

/-- `∑[n+1]*∏[n+1]` -/
def P12260748154991409440.Spec : Prop :=
  ∀ n, (P12260748154991409440.a n : ℤ) = A001286 (n + 2)

end A001286

/-! ## A001286.P1360485415834948901

`(n+2)!/sqrt(4/(n+1)²)`
-/

namespace A001286.P1360485415834948901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℝ) / Real.sqrt (4 / ((n + 1) ^ 2 : ℚ) : ℝ)

end

end A001286.P1360485415834948901

namespace A001286

/-- `(n+2)!/sqrt(4/(n+1)²)` -/
def P1360485415834948901.Spec : Prop :=
  ∀ n, P1360485415834948901.a n = (A001286 (n + 2) : ℝ)

end A001286

/-! ## A001286.P13322763360999358374

`abs((n+1)!/Δ[2/(n+1)])`
-/

namespace A001286.P13322763360999358374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 1) : ℚ) / (f1 (n + 1) - f1 n)|

end

end A001286.P13322763360999358374

namespace A001286

/-- `abs((n+1)!/Δ[2/(n+1)])` -/
def P13322763360999358374.Spec : Prop :=
  ∀ n, P13322763360999358374.a n = (A001286 (n + 2) : ℚ)

end A001286

/-! ## A001286.P784567705752983130

`(n+1)!+(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001286.P784567705752983130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n + 1) + (n + 3) * a (n - 1)

end

end A001286.P784567705752983130

namespace A001286

/-- `(n+1)!+(n+3)*a(n-1)` -/
def P784567705752983130.Spec : Prop :=
  ∀ n, (P784567705752983130.a n : ℤ) = A001286 (n + 2)

end A001286

/-! ## A001286.P1410000780229258951

`lcm(n+1, (n+1)!*C(n+2, 2))`
-/

namespace A001286.P1410000780229258951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.factorial (n + 1) * Nat.choose (n + 2) 2)

end

end A001286.P1410000780229258951

namespace A001286

/-- `lcm(n+1, (n+1)!*C(n+2, 2))` -/
def P1410000780229258951.Spec : Prop :=
  ∀ n, (P1410000780229258951.a n : ℤ) = A001286 (n + 2)

end A001286

/-! ## A001286.P14609187807964277668

`floor((2/n+n+3)*a(n-1))` with `a(0)=1`
-/

namespace A001286.P14609187807964277668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 / (n : ℚ) + (n + 3 : ℚ)) * (a (n - 1) : ℚ)⌋

end

end A001286.P14609187807964277668

namespace A001286

/-- `floor((2/n+n+3)*a(n-1))` -/
def P14609187807964277668.Spec : Prop :=
  ∀ n, P14609187807964277668.a n = A001286 (n + 2)

end A001286

/-!
# A001287: a(n) = binomial coefficient C(n,10).

The programs for A001287, the canonical program `A001287.P7309496825709961420` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001287 has offset 10).

The definition of A001287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)` (program `A001287.P7309496825709961420`, by `A001287.P7309496825709961420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001287.P7309496825709961420

`C(n+10, 10)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001287

/-- `C(n+10, 10)` -/
def P7309496825709961420.Spec : Prop :=
  ∀ n, (P7309496825709961420.a n : ℤ) = A001287 (n + 10)

theorem P7309496825709961420.correct : P7309496825709961420.Spec := by
  intro n
  simp only [A001287, Nat.add_sub_cancel]

end A001287

/-! ## A001287.P16525341435413314016

`(10/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A001287.P16525341435413314016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (10 / (n : ℚ) + 1) * a (n - 1)

end

end A001287.P16525341435413314016

namespace A001287

/-- `(10/n+1)*a(n-1)` -/
def P16525341435413314016.Spec : Prop :=
  ∀ n, P16525341435413314016.a n = (A001287 (n + 10) : ℚ)

end A001287

/-! ## A001287.P8397271296961389407

`∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]`
-/

namespace A001287.P8397271296961389407
noncomputable section

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001287.P8397271296961389407

namespace A001287

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]` -/
def P8397271296961389407.Spec : Prop :=
  ∀ n, (P8397271296961389407.a n : ℤ) = A001287 (n + 10)

end A001287

/-! ## A001287.P10917163675533868189

`A054334(n)-a(n-1)` with `a(0)=1`
-/

namespace A001287.P10917163675533868189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054334 n - a (n - 1)

end

end A001287.P10917163675533868189

namespace A001287

/-- `A054334(n)-a(n-1)` -/
def P10917163675533868189.Spec : Prop :=
  ∀ n, P10917163675533868189.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P17687044098506747253

`A054333(n)+a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A001287.P17687044098506747253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A054333 n + a (n - 2)

end

end A001287.P17687044098506747253

namespace A001287

/-- `A054333(n)+a(n-2)` -/
def P17687044098506747253.Spec : Prop :=
  ∀ n, P17687044098506747253.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P916190641698978751

`A282078(n)+A018214(n)`
-/

namespace A001287.P916190641698978751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n + A018214 n

end

end A001287.P916190641698978751

namespace A001287

/-- `A282078(n)+A018214(n)` -/
def P916190641698978751.Spec : Prop :=
  ∀ n, P916190641698978751.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P2349953581738403967

`∪[A196789(n), A196790(n)]`
-/

namespace A001287.P2349953581738403967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196789 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196790 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001287.P2349953581738403967

namespace A001287

/-- `∪[A196789(n), A196790(n)]` -/
def P2349953581738403967.Spec : Prop :=
  ∀ n, (P2349953581738403967.a n : ℤ) = A001287 (n + 10)

end A001287

/-! ## A001287.P18081808665483196489

`A189980(n)+2*A282078(n)`
-/

namespace A001287.P18081808665483196489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (n + 10) + 2 * A282078 n

end

end A001287.P18081808665483196489

namespace A001287

/-- `A189980(n)+2*A282078(n)` -/
def P18081808665483196489.Spec : Prop :=
  ∀ n, P18081808665483196489.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P8841224880053880637

`2*A001786(n)-A001781(n)`
-/

namespace A001287.P8841224880053880637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001786 n - A001781 n

end

end A001287.P8841224880053880637

namespace A001287

/-- `2*A001786(n)-A001781(n)` -/
def P8841224880053880637.Spec : Prop :=
  ∀ n, P8841224880053880637.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P11903560370262133912

`2*A018214(n)-A189980(n)`
-/

namespace A001287.P11903560370262133912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018214 n - A189980 (n + 10)

end

end A001287.P11903560370262133912

namespace A001287

/-- `2*A018214(n)-A189980(n)` -/
def P11903560370262133912.Spec : Prop :=
  ∀ n, P11903560370262133912.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P13467761310675033853

`A107422(n)/A000580(n+7)`
-/

namespace A001287.P13467761310675033853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107422 n : ℚ) / (A000580 (n + 7) : ℚ)

end

end A001287.P13467761310675033853

namespace A001287

/-- `A107422(n)/A000580(n+7)` -/
def P13467761310675033853.Spec : Prop :=
  ∀ n, P13467761310675033853.a n = (A001287 (n + 10) : ℚ)

end A001287

/-! ## A001287.P17231296558204793446

`A225012(n+1)-A225011(n+1)`
-/

namespace A001287.P17231296558204793446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225012 (n + 1) - A225011 (n + 1)

end

end A001287.P17231296558204793446

namespace A001287

/-- `A225012(n+1)-A225011(n+1)` -/
def P17231296558204793446.Spec : Prop :=
  ∀ n, P17231296558204793446.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P9462970025956988124

`A056114(n+1)-A254142(n+1)`
-/

namespace A001287.P9462970025956988124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056114 (n + 1) - A254142 (n + 1)

end

end A001287.P9462970025956988124

namespace A001287

/-- `A056114(n+1)-A254142(n+1)` -/
def P9462970025956988124.Spec : Prop :=
  ∀ n, P9462970025956988124.a n = A001287 (n + 10)

end A001287

/-! ## A001287.P1770614383944148620

`A056114(n+1)+A056128(n)-A056128(n+1)`
-/

namespace A001287.P1770614383944148620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056114 (n + 1) + (A056128 n - A056128 (n + 1))

end

end A001287.P1770614383944148620

namespace A001287

/-- `A056114(n+1)+A056128(n)-A056128(n+1)` -/
def P1770614383944148620.Spec : Prop :=
  ∀ n, P1770614383944148620.a n = A001287 (n + 10)

theorem P1770614383944148620.correct : P1770614383944148620.Spec := by
  intro n
  simp only [A001287, Nat.add_sub_cancel, A001287.P1770614383944148620.a, A001287.P7309496825709961420.a, A056114, A056114.P5010012959701436438.a, A056128, A056128.P11310958498517767299.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001287

/-! ## A001287.P13530532084347991813

`A001288(n+1)-(A001288(n)+A000582(n+10))`
-/

namespace A001287.P13530532084347991813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 1 + 11) - (A001288 (n + 11) + A000582 (n + 10))

end

end A001287.P13530532084347991813

namespace A001287

/-- `A001288(n+1)-(A001288(n)+A000582(n+10))` -/
def P13530532084347991813.Spec : Prop :=
  ∀ n, P13530532084347991813.a n = A001287 (n + 10)

theorem P13530532084347991813.correct : P13530532084347991813.Spec := by
  intro n
  simp only [A001287, Nat.add_sub_cancel, A001287.P13530532084347991813.a, A001287.P7309496825709961420.a, A000582, A000582.P5339973766427948568.a, A001288, A001288.P6911698518301333126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001287

/-! ## A001287.P10012974047980213137

`A172242(n)/2^n`
-/

namespace A001287.P10012974047980213137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172242 (n + 10) : ℚ) / (2 ^ n : ℚ)

end

end A001287.P10012974047980213137

namespace A001287

/-- `A172242(n)/2^n` -/
def P10012974047980213137.Spec : Prop :=
  ∀ n, P10012974047980213137.a n = (A001287 (n + 10) : ℚ)

end A001287

/-! ## A001287.P18093003453710271956

`2*A172242(n)/A000079(n+1)`
-/

namespace A001287.P18093003453710271956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A172242 (n + 10) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A001287.P18093003453710271956

namespace A001287

/-- `2*A172242(n)/A000079(n+1)` -/
def P18093003453710271956.Spec : Prop :=
  ∀ n, P18093003453710271956.a n = (A001287 (n + 10) : ℚ)

end A001287

/-! ## A001287.P17116299855801247207

`(A172242(n+1)-A140354(n+1))/A000079(n+1)`
-/

namespace A001287.P17116299855801247207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172242 (n + 1 + 10) - A140354 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A001287.P17116299855801247207

namespace A001287

/-- `(A172242(n+1)-A140354(n+1))/A000079(n+1)` -/
def P17116299855801247207.Spec : Prop :=
  ∀ n, P17116299855801247207.a n = (A001287 (n + 10) : ℚ)

theorem P17116299855801247207.correct : P17116299855801247207.Spec := by
  intro n
  simp only [A001287, Nat.add_sub_cancel, A001287.P17116299855801247207.a, A001287.P7309496825709961420.a, A000079, A000079.P10855139691139572931.a, A140354, A140354.P15097387036834541861.a, A172242, A172242.P11438388179575485062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001287

/-! ## A001287.P14483787490388247158

`A172362(n)/A000244(n)`
-/

namespace A001287.P14483787490388247158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172362 n : ℚ) / (A000244 n : ℚ)

end

end A001287.P14483787490388247158

namespace A001287

/-- `A172362(n)/A000244(n)` -/
def P14483787490388247158.Spec : Prop :=
  ∀ n, P14483787490388247158.a n = (A001287 (n + 10) : ℚ)

end A001287

/-! ## A001287.P1910221133856366772

`A172362(n)/(A003462(n+1)-A003462(n))`
-/

namespace A001287.P1910221133856366772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172362 n : ℚ) / (A003462 (n + 1) - A003462 n : ℚ)

end

end A001287.P1910221133856366772

namespace A001287

/-- `A172362(n)/(A003462(n+1)-A003462(n))` -/
def P1910221133856366772.Spec : Prop :=
  ∀ n, P1910221133856366772.a n = (A001287 (n + 10) : ℚ)

end A001287

/-!
# A001288: a(n) = binomial(n,11).

The programs for A001288, the canonical program `A001288.P6911698518301333126` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001288 has offset 11).

The definition of A001288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+11, 11)` (program `A001288.P6911698518301333126`, by `A001288.P6911698518301333126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001288.P6911698518301333126

`C(n+11, 11)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001288

/-- `C(n+11, 11)` -/
def P6911698518301333126.Spec : Prop :=
  ∀ n, (P6911698518301333126.a n : ℤ) = A001288 (n + 11)

theorem P6911698518301333126.correct : P6911698518301333126.Spec := by
  intro n
  simp only [A001288, Nat.add_sub_cancel]

end A001288

/-! ## A001288.P4945484041946686452

`(11/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A001288.P4945484041946686452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (11 / (n : ℚ) + 1) * a (n - 1)

end

end A001288.P4945484041946686452

namespace A001288

/-- `(11/n+1)*a(n-1)` -/
def P4945484041946686452.Spec : Prop :=
  ∀ n, P4945484041946686452.a n = (A001288 (n + 11) : ℚ)

end A001288

/-! ## A001288.P11094175926742923156

`∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]`
-/

namespace A001288.P11094175926742923156
noncomputable section

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001288.P11094175926742923156

namespace A001288

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[∑[1+n]]]]]]]]]]` -/
def P11094175926742923156.Spec : Prop :=
  ∀ n, (P11094175926742923156.a n : ℤ) = A001288 (n + 11)

end A001288

/-! ## A001288.P11606316053956675163

`A001287(n)+a(n-1)` with `a(0)=1`
-/

namespace A001288.P11606316053956675163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001287 (n + 10) + a (n - 1)

end

end A001288.P11606316053956675163

namespace A001288

/-- `A001287(n)+a(n-1)` -/
def P11606316053956675163.Spec : Prop :=
  ∀ n, P11606316053956675163.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P5897807696055115877

`A057788(n)-a(n-1)` with `a(0)=1`
-/

namespace A001288.P5897807696055115877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057788 n - a (n - 1)

end

end A001288.P5897807696055115877

namespace A001288

/-- `A057788(n)-a(n-1)` -/
def P5897807696055115877.Spec : Prop :=
  ∀ n, P5897807696055115877.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P2911403536281085667

`A054334(n)+a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A001288.P2911403536281085667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A054334 n + a (n - 2)

end

end A001288.P2911403536281085667

namespace A001288

/-- `A054334(n)+a(n-2)` -/
def P2911403536281085667.Spec : Prop :=
  ∀ n, P2911403536281085667.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P18277285820173138534

`A105254(n)/A000580(n+7)`
-/

namespace A001288.P18277285820173138534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105254 n : ℚ) / (A000580 (n + 7) : ℚ)

end

end A001288.P18277285820173138534

namespace A001288

/-- `A105254(n)/A000580(n+7)` -/
def P18277285820173138534.Spec : Prop :=
  ∀ n, P18277285820173138534.a n = (A001288 (n + 11) : ℚ)

end A001288

/-! ## A001288.P2938105225820389148

`A299337(n)+∑[2*A282078(n)]`
-/

namespace A001288.P2938105225820389148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299337 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001288.P2938105225820389148

namespace A001288

/-- `A299337(n)+∑[2*A282078(n)]` -/
def P2938105225820389148.Spec : Prop :=
  ∀ n, P2938105225820389148.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P15665586159025428875

`∑[2*A001786(n)]-A001786(n)`
-/

namespace A001288.P15665586159025428875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001786 n

end

end A001288.P15665586159025428875

namespace A001288

/-- `∑[2*A001786(n)]-A001786(n)` -/
def P15665586159025428875.Spec : Prop :=
  ∀ n, P15665586159025428875.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P1677818278468243440

`Δ[A010965(n)]-A001287(n+1)`
-/

namespace A001288.P1677818278468243440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001287 (n + 1 + 10)

end

end A001288.P1677818278468243440

namespace A001288

/-- `Δ[A010965(n)]-A001287(n+1)` -/
def P1677818278468243440.Spec : Prop :=
  ∀ n, P1677818278468243440.a n = A001288 (n + 11)

theorem P1677818278468243440.correct : P1677818278468243440.Spec := by
  intro n
  simp only [A001288, Nat.add_sub_cancel, A001288.P1677818278468243440.f1, A001288.P1677818278468243440.a, A001288.P6911698518301333126.a, A001287, A001287.P7309496825709961420.a, A010965, A010965.P16782985268859376296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001288

/-! ## A001288.P7889408284523698434

`Δ[A010965(n)-A001287(n)]-A001287(n)`
-/

namespace A001288.P7889408284523698434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 12) - A001287 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001287 (n + 10)

end

end A001288.P7889408284523698434

namespace A001288

/-- `Δ[A010965(n)-A001287(n)]-A001287(n)` -/
def P7889408284523698434.Spec : Prop :=
  ∀ n, P7889408284523698434.a n = A001288 (n + 11)

theorem P7889408284523698434.correct : P7889408284523698434.Spec := by
  intro n
  simp only [A001288, Nat.add_sub_cancel, A001288.P7889408284523698434.f1, A001288.P7889408284523698434.a, A001288.P6911698518301333126.a, A001287, A001287.P7309496825709961420.a, A010965, A010965.P16782985268859376296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001288

/-! ## A001288.P13173933411633502404

`A010965(n+1)-(A010965(n)+A001287(n+1))`
-/

namespace A001288.P13173933411633502404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010965 (n + 1 + 12) - (A010965 (n + 12) + A001287 (n + 1 + 10))

end

end A001288.P13173933411633502404

namespace A001288

/-- `A010965(n+1)-(A010965(n)+A001287(n+1))` -/
def P13173933411633502404.Spec : Prop :=
  ∀ n, P13173933411633502404.a n = A001288 (n + 11)

theorem P13173933411633502404.correct : P13173933411633502404.Spec := by
  intro n
  simp only [A001288, Nat.add_sub_cancel, A001288.P13173933411633502404.a, A001288.P6911698518301333126.a, A001287, A001287.P7309496825709961420.a, A010965, A010965.P16782985268859376296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001288

/-! ## A001288.P9847636477760535141

`A062136(n+1)+A062136(n)-A018214(n+1)`
-/

namespace A001288.P9847636477760535141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062136 (n + 1) + (A062136 n - A018214 (n + 1))

end

end A001288.P9847636477760535141

namespace A001288

/-- `A062136(n+1)+A062136(n)-A018214(n+1)` -/
def P9847636477760535141.Spec : Prop :=
  ∀ n, P9847636477760535141.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P717521703075899872

`A127893(A167614(n+2))`
-/

namespace A001288.P717521703075899872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 (A167614 (n + 2)).toNat

end

end A001288.P717521703075899872

namespace A001288

/-- `A127893(A167614(n+2))` -/
def P717521703075899872.Spec : Prop :=
  ∀ n, P717521703075899872.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P6992013100818440928

`A007318(eq[11, A002262(n)])`
-/

namespace A001288.P6992013100818440928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001288.P6992013100818440928

namespace A001288

/-- `A007318(eq[11, A002262(n)])` -/
def P6992013100818440928.Spec : Prop :=
  ∀ n, P6992013100818440928.a n = A001288 (n + 11)

end A001288

/-! ## A001288.P9927130501999121605

`A007318(eq[11, A025581(n)])`
-/

namespace A001288.P9927130501999121605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001288.P9927130501999121605

namespace A001288

/-- `A007318(eq[11, A025581(n)])` -/
def P9927130501999121605.Spec : Prop :=
  ∀ n, P9927130501999121605.a n = A001288 (n + 11)

end A001288

/-!
# A001292: Concatenations of cyclic permutations of initial positive integers.

The programs for A001292, there is no canonical definition to state claims against.
-/

/-! ## A001292.P17045226686082601902

`A260275(∑[A212385(n)!])`
-/

namespace A001292.P17045226686082601902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A212385 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001292.P17045226686082601902

/-! ## A001292.P14691626590361683762

`A260275(∑[A264709(n+1)!])`
-/

namespace A001292.P14691626590361683762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A264709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001292.P14691626590361683762

/-! ## A001292.P10228374786696334085

`A260275(A184520(n+1)%A085827(n+1))`
-/

namespace A001292.P10228374786696334085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260275 (Int.tmod (A184520 (n + 1)) (A085827 (n + 1))).toNat

end

end A001292.P10228374786696334085

/-!
# A001296: 4-dimensional pyramidal numbers: a(n) = (3*n+1)*binomial(n+2, 3)/4. Also Stirling2(n+2, n).

The programs for A001296, the canonical program `A001296.P17888477620408583946` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001296 has offset 0).

The definition of A001296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001296.P1997879196704769783

`(3*n+1)*C(n+2, 3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001296.P1997879196704769783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) * Nat.choose (n + 2) 3 : ℚ) / 4

end

end A001296.P1997879196704769783

namespace A001296

/-- `(3*n+1)*C(n+2, 3)/4` -/
def P1997879196704769783.Spec : Prop :=
  ∀ n, P1997879196704769783.a n = (A001296 n : ℚ)

end A001296

/-! ## A001296.P17202335240842073430

`n*(1+n)*(2+n)*(1+3*n)/24`
-/

namespace A001296.P17202335240842073430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (1 + n) * (2 + n) * (1 + 3 * n) : ℚ) / 24

end

end A001296.P17202335240842073430

namespace A001296

/-- `n*(1+n)*(2+n)*(1+3*n)/24` -/
def P17202335240842073430.Spec : Prop :=
  ∀ n, P17202335240842073430.a n = (A001296 n : ℚ)

theorem P17202335240842073430.correct : P17202335240842073430.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A001296, Nat.add_sub_cancel, A001296.P17202335240842073430.a, A001296.P17888477620408583946.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A001296, Nat.add_sub_cancel, A001296.P17202335240842073430.a, A001296.P17888477620408583946.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A001296

/-! ## A001296.P17888477620408583946

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+3` with `a(0)=0, a(1)=1, a(2)=7, a(3)=25`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001296

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+3` -/
def P17888477620408583946.Spec : Prop :=
  ∀ n, P17888477620408583946.a n = A001296 n

theorem P17888477620408583946.correct : P17888477620408583946.Spec := by
  intro n
  simp only [A001296]

end A001296

/-! ## A001296.P10077861668928323803

`A000292(n)+A050534(n+1)`
-/

namespace A001296.P10077861668928323803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A050534 (n + 1)

end

end A001296.P10077861668928323803

namespace A001296

/-- `A000292(n)+A050534(n+1)` -/
def P10077861668928323803.Spec : Prop :=
  ∀ n, P10077861668928323803.a n = A001296 n

end A001296

/-! ## A001296.P2093347156751792236

`A000914(n+1)-2*A000330(n+1)`
-/

namespace A001296.P2093347156751792236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 (n + 1) - 2 * A000330 (n + 1)

end

end A001296.P2093347156751792236

namespace A001296

/-- `A000914(n+1)-2*A000330(n+1)` -/
def P2093347156751792236.Spec : Prop :=
  ∀ n, P2093347156751792236.a n = A001296 n

end A001296

/-! ## A001296.P12166262726643634485

`∑[∑[n]]+C(∑[n], 2)`
-/

namespace A001296.P12166262726643634485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

end

end A001296.P12166262726643634485

namespace A001296

/-- `∑[∑[n]]+C(∑[n], 2)` -/
def P12166262726643634485.Spec : Prop :=
  ∀ n, (P12166262726643634485.a n : ℤ) = A001296 n

end A001296

/-! ## A001296.P4173154894922622286

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=1`
-/

namespace A001296.P4173154894922622286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001296.P4173154894922622286

namespace A001296

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P4173154894922622286.Spec : Prop :=
  ∀ n, (P4173154894922622286.a n : ℤ) = A001296 n

end A001296

/-! ## A001296.P1771189876164528394

`∑[∑[2-∑[a(n-1)-3]]]` with `a(0)=2`
-/

namespace A001296.P1771189876164528394
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001296.P1771189876164528394

namespace A001296

/-- `∑[∑[2-∑[a(n-1)-3]]]` -/
def P1771189876164528394.Spec : Prop :=
  ∀ n, P1771189876164528394.a n = A001296 n

end A001296

/-! ## A001296.P6759776774078883560

`a(n-1)+n*C(n+1, 2)` with `a(0)=0`
-/

namespace A001296.P6759776774078883560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * Nat.choose (n + 1) 2

end

end A001296.P6759776774078883560

namespace A001296

/-- `a(n-1)+n*C(n+1, 2)` -/
def P6759776774078883560.Spec : Prop :=
  ∀ n, (P6759776774078883560.a n : ℤ) = A001296 n

end A001296

/-! ## A001296.P13079320022058431596

`a(n-1)+(n+1)/2*n²` with `a(0)=0`
-/

namespace A001296.P13079320022058431596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / 2 * (n ^ 2 : ℚ)

end

end A001296.P13079320022058431596

namespace A001296

/-- `a(n-1)+(n+1)/2*n²` -/
def P13079320022058431596.Spec : Prop :=
  ∀ n, P13079320022058431596.a n = (A001296 n : ℚ)

end A001296

/-! ## A001296.P10905437587357873800

`∑[A002411(n)]`
-/

namespace A001296.P10905437587357873800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001296.P10905437587357873800

namespace A001296

/-- `∑[A002411(n)]` -/
def P10905437587357873800.Spec : Prop :=
  ∀ n, P10905437587357873800.a n = A001296 n

end A001296

/-! ## A001296.P55993604937426389

`∑[∑[A000326(n)]]`
-/

namespace A001296.P55993604937426389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001296.P55993604937426389

namespace A001296

/-- `∑[∑[A000326(n)]]` -/
def P55993604937426389.Spec : Prop :=
  ∀ n, P55993604937426389.a n = A001296 n

end A001296

/-! ## A001296.P13550952479225767496

`∑[A100119(n)]-(n+1)`
-/

namespace A001296.P13550952479225767496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A001296.P13550952479225767496

namespace A001296

/-- `∑[A100119(n)]-(n+1)` -/
def P13550952479225767496.Spec : Prop :=
  ∀ n, P13550952479225767496.a n = A001296 n

end A001296

/-! ## A001296.P1765978885873716730

`A130218(n+1)-(n+1)`
-/

namespace A001296.P1765978885873716730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130218 (n + 1) - (n + 1 : ℤ)

end

end A001296.P1765978885873716730

namespace A001296

/-- `A130218(n+1)-(n+1)` -/
def P1765978885873716730.Spec : Prop :=
  ∀ n, P1765978885873716730.a n = A001296 n

end A001296

/-! ## A001296.P1488308422118157548

`A187673(n)-∑[n+1]²`
-/

namespace A001296.P1488308422118157548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A001296.P1488308422118157548

namespace A001296

/-- `A187673(n)-∑[n+1]²` -/
def P1488308422118157548.Spec : Prop :=
  ∀ n, P1488308422118157548.a n = A001296 n

end A001296

/-! ## A001296.P15666386967154074189

`∑[n+1]²-A290312(n)`
-/

namespace A001296.P15666386967154074189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A290312 n

end

end A001296.P15666386967154074189

namespace A001296

/-- `∑[n+1]²-A290312(n)` -/
def P15666386967154074189.Spec : Prop :=
  ∀ n, P15666386967154074189.a n = A001296 n

end A001296

/-! ## A001296.P14430741964414441208

`A002817(n+1)-∑[(n+1)²]`
-/

namespace A001296.P14430741964414441208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001296.P14430741964414441208

namespace A001296

/-- `A002817(n+1)-∑[(n+1)²]` -/
def P14430741964414441208.Spec : Prop :=
  ∀ n, P14430741964414441208.a n = A001296 n

end A001296

/-! ## A001296.P3990686675954916419

`∑[A006004(n+1)]-(n+1)²`
-/

namespace A001296.P3990686675954916419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A001296.P3990686675954916419

namespace A001296

/-- `∑[A006004(n+1)]-(n+1)²` -/
def P3990686675954916419.Spec : Prop :=
  ∀ n, P3990686675954916419.a n = A001296 n

end A001296

/-! ## A001296.P3066943053570380661

`A050534(n)+A002412(n)`
-/

namespace A001296.P3066943053570380661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + A002412 n

end

end A001296.P3066943053570380661

namespace A001296

/-- `A050534(n)+A002412(n)` -/
def P3066943053570380661.Spec : Prop :=
  ∀ n, P3066943053570380661.a n = A001296 n

end A001296

/-! ## A001296.P10862148698642644983

`A090809(n)+A006003(n)`
-/

namespace A001296.P10862148698642644983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n + A006003 n

end

end A001296.P10862148698642644983

namespace A001296

/-- `A090809(n)+A006003(n)` -/
def P10862148698642644983.Spec : Prop :=
  ∀ n, P10862148698642644983.a n = A001296 n

end A001296

/-!
# A001297: Stirling numbers of the second kind S(n+3, n).

The programs for A001297, the canonical program `A001297.P389210440740052540` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001297 has offset 0).

The definition of A001297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001297.P389210440740052540

`C(n+1, 2)*C(n+3, 4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001297

/-- `C(n+1, 2)*C(n+3, 4)` -/
def P389210440740052540.Spec : Prop :=
  ∀ n, (P389210440740052540.a n : ℤ) = A001297 n

theorem P389210440740052540.correct : P389210440740052540.Spec := by
  intro n
  simp only [A001297]

end A001297

/-! ## A001297.P13450875814038146008

`n²*(n+1)²*(n+2)*(n+3)/48`
-/

namespace A001297.P13450875814038146008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) ^ 2 * (n + 2) * (n + 3) : ℚ) / 48

end

end A001297.P13450875814038146008

namespace A001297

/-- `n²*(n+1)²*(n+2)*(n+3)/48` -/
def P13450875814038146008.Spec : Prop :=
  ∀ n, P13450875814038146008.a n = (A001297 n : ℚ)

theorem P13450875814038146008.correct : P13450875814038146008.Spec := by
  intro n
  simp only [A001297, Nat.add_sub_cancel, A001297.P13450875814038146008.a, A001297.P389210440740052540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001297

/-! ## A001297.P748506152729811382

`C(n+3, 4)*∑[n]`
-/

namespace A001297.P748506152729811382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001297.P748506152729811382

namespace A001297

/-- `C(n+3, 4)*∑[n]` -/
def P748506152729811382.Spec : Prop :=
  ∀ n, (P748506152729811382.a n : ℤ) = A001297 n

end A001297

/-! ## A001297.P14646404402875577015

`∑[n*A001296(n)]`
-/

namespace A001297.P14646404402875577015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001297.P14646404402875577015

namespace A001297

/-- `∑[n*A001296(n)]` -/
def P14646404402875577015.Spec : Prop :=
  ∀ n, P14646404402875577015.a n = A001297 n

end A001297

/-! ## A001297.P4663785631004836992

`∑[n*∑[A002411(n)]]`
-/

namespace A001297.P4663785631004836992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001297.P4663785631004836992

namespace A001297

/-- `∑[n*∑[A002411(n)]]` -/
def P4663785631004836992.Spec : Prop :=
  ∀ n, P4663785631004836992.a n = A001297 n

end A001297

/-! ## A001297.P13036595536324140570

`A215773(n)-∑[∑[∑[2*n]]]`
-/

namespace A001297.P13036595536324140570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215773 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001297.P13036595536324140570

namespace A001297

/-- `A215773(n)-∑[∑[∑[2*n]]]` -/
def P13036595536324140570.Spec : Prop :=
  ∀ n, P13036595536324140570.a n = A001297 n

end A001297

/-! ## A001297.P14556733960931078396

`∑[A108650(n)]-A108650(n)`
-/

namespace A001297.P14556733960931078396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108650 n

end

end A001297.P14556733960931078396

namespace A001297

/-- `∑[A108650(n)]-A108650(n)` -/
def P14556733960931078396.Spec : Prop :=
  ∀ n, P14556733960931078396.a n = A001297 n

end A001297

/-! ## A001297.P525935778662299450

`∑[∑[A302560(n+1)]-A302560(n+1)]`
-/

namespace A001297.P525935778662299450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A302560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001297.P525935778662299450

namespace A001297

/-- `∑[∑[A302560(n+1)]-A302560(n+1)]` -/
def P525935778662299450.Spec : Prop :=
  ∀ n, P525935778662299450.a n = A001297 n

end A001297

/-! ## A001297.P18081816700528296015

`A000217(n)*A145126(n)-A000217(n)`
-/

namespace A001297.P18081816700528296015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A145126 n - A000217 n

end

end A001297.P18081816700528296015

namespace A001297

/-- `A000217(n)*A145126(n)-A000217(n)` -/
def P18081816700528296015.Spec : Prop :=
  ∀ n, P18081816700528296015.a n = A001297 n

theorem P18081816700528296015.correct : P18081816700528296015.Spec := by
  intro n
  simp only [A001297, Nat.add_sub_cancel, A001297.P18081816700528296015.a, A001297.P389210440740052540.a, A000217, A000217.P10269402890581615239.a, A145126, A145126.P13807080772124324529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001297

/-! ## A001297.P11876164067107640634

`(A005583(n+1)-A051747(n+1))*A000217(n)`
-/

namespace A001297.P11876164067107640634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005583 (n + 1) - A051747 (n + 1)) * A000217 n

end

end A001297.P11876164067107640634

namespace A001297

/-- `(A005583(n+1)-A051747(n+1))*A000217(n)` -/
def P11876164067107640634.Spec : Prop :=
  ∀ n, P11876164067107640634.a n = A001297 n

end A001297

/-! ## A001297.P6851256358529046466

`A000217(n)+(A000332(n+3)-1)*A000217(n)`
-/

namespace A001297.P6851256358529046466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A000332 (n + 3) - 1) * A000217 n

end

end A001297.P6851256358529046466

namespace A001297

/-- `A000217(n)+(A000332(n+3)-1)*A000217(n)` -/
def P6851256358529046466.Spec : Prop :=
  ∀ n, P6851256358529046466.a n = A001297 n

theorem P6851256358529046466.correct : P6851256358529046466.Spec := by
  intro n
  simp only [A001297, Nat.add_sub_cancel, A001297.P6851256358529046466.a, A001297.P389210440740052540.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001297

/-! ## A001297.P9385694803009953567

`record[n*(A213550(n+1)-A213500(n+1))]`
-/

namespace A001297.P9385694803009953567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A213550 (n + 1) - A213500 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001297.P9385694803009953567

namespace A001297

/-- `record[n*(A213550(n+1)-A213500(n+1))]` -/
def P9385694803009953567.Spec : Prop :=
  ∀ n, P9385694803009953567.a n = A001297 n

end A001297

/-! ## A001297.P6444222507193912611

`A000217(n)*A087539(A000217(n+1))`
-/

namespace A001297.P6444222507193912611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A087539 (A000217 (n + 1)).toNat

end

end A001297.P6444222507193912611

namespace A001297

/-- `A000217(n)*A087539(A000217(n+1))` -/
def P6444222507193912611.Spec : Prop :=
  ∀ n, P6444222507193912611.a n = A001297 n

end A001297

/-!
# A001298: Stirling numbers of the second kind S(n+4, n).

The programs for A001298, the canonical program `A001298.P11597718615920132446` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001298 has offset 0).

The definition of A001298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001298.P11597718615920132446

`(15*n^3+30*n²+5*n-2)*C(n+4, 5)/48`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001298

/-- `(15*n^3+30*n²+5*n-2)*C(n+4, 5)/48` -/
def P11597718615920132446.Spec : Prop :=
  ∀ n, P11597718615920132446.a n = (A001298 n : ℚ)

end A001298

/-! ## A001298.P2291982965157898156

`∑[n*∑[n]*∑[∑[∑[n]]]]`
-/

namespace A001298.P2291982965157898156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001298.P2291982965157898156

namespace A001298

/-- `∑[n*∑[n]*∑[∑[∑[n]]]]` -/
def P2291982965157898156.Spec : Prop :=
  ∀ n, (P2291982965157898156.a n : ℤ) = A001298 n

end A001298

/-! ## A001298.P8519579355099339304

`a(n-1)+n*A001297(n)` with `a(0)=0`
-/

namespace A001298.P8519579355099339304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A001297 n

end

end A001298.P8519579355099339304

namespace A001298

/-- `a(n-1)+n*A001297(n)` -/
def P8519579355099339304.Spec : Prop :=
  ∀ n, P8519579355099339304.a n = A001298 n

end A001298

/-! ## A001298.P18194606413248389875

`∑[A001297(n)*A004277(n)]/2`
-/

namespace A001298.P18194606413248389875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001297 n * A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A001298.P18194606413248389875

namespace A001298

/-- `∑[A001297(n)*A004277(n)]/2` -/
def P18194606413248389875.Spec : Prop :=
  ∀ n, P18194606413248389875.a n = (A001298 n : ℚ)

end A001298

/-! ## A001298.P13518819812569288365

`∑[n*A001297(n)]%A105947(n)`
-/

namespace A001298.P13518819812569288365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A105947 n)

end

end A001298.P13518819812569288365

namespace A001298

/-- `∑[n*A001297(n)]%A105947(n)` -/
def P13518819812569288365.Spec : Prop :=
  ∀ n, P13518819812569288365.a n = A001298 n

end A001298

/-! ## A001298.P3124378635366338817

`∑[n*A001297(n)]*cosh(A000038(n))`
-/

namespace A001298.P3124378635366338817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001297 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * Real.cosh (A000038 n : ℝ)

end

end A001298.P3124378635366338817

namespace A001298

/-- `∑[n*A001297(n)]*cosh(A000038(n))` -/
def P3124378635366338817.Spec : Prop :=
  ∀ n, P3124378635366338817.a n = (A001298 n : ℝ)

end A001298

/-! ## A001298.P5181892146248649251

`∑[A259455(n+1)]-A259455(n+1)`
-/

namespace A001298.P5181892146248649251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259455 (n + 1)

end

end A001298.P5181892146248649251

namespace A001298

/-- `∑[A259455(n+1)]-A259455(n+1)` -/
def P5181892146248649251.Spec : Prop :=
  ∀ n, P5181892146248649251.a n = A001298 n

end A001298

/-! ## A001298.P4164992337111870799

`record[A048993(A052905(n))]`
-/

namespace A001298.P4164992337111870799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001298.P4164992337111870799

namespace A001298

/-- `record[A048993(A052905(n))]` -/
def P4164992337111870799.Spec : Prop :=
  ∀ n, P4164992337111870799.a n = A001298 n

end A001298

/-! ## A001298.P2100904621776146501

`A048993(A052905(n+2))`
-/

namespace A001298.P2100904621776146501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A052905 (n + 2)).toNat

end

end A001298.P2100904621776146501

namespace A001298

/-- `A048993(A052905(n+2))` -/
def P2100904621776146501.Spec : Prop :=
  ∀ n, P2100904621776146501.a n = A001298 n

end A001298

/-! ## A001298.P1979207411005230059

`A048993(eq[4, A025581(n)])`
-/

namespace A001298.P1979207411005230059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001298.P1979207411005230059

namespace A001298

/-- `A048993(eq[4, A025581(n)])` -/
def P1979207411005230059.Spec : Prop :=
  ∀ n, P1979207411005230059.a n = A001298 n

end A001298

/-!
# A001299: Number of ways of making change for n cents using coins of 1, 5, 10, 25 cents.

The programs for A001299, the canonical program `A001299.P13559188530673329141` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001299 has offset 0).

The definition of A001299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001299.P9176227946990742262

`A001304(floor(n/5))`
-/

namespace A001299.P9176227946990742262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 ⌊(n : ℚ) / 5⌋.toNat

end

end A001299.P9176227946990742262

namespace A001299

/-- `A001304(floor(n/5))` -/
def P9176227946990742262.Spec : Prop :=
  ∀ n, P9176227946990742262.a n = A001299 n

end A001299

/-! ## A001299.P2846770770034162624

`A001362(A057354(n))`
-/

namespace A001299.P2846770770034162624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001362 (A057354 n).toNat

end

end A001299.P2846770770034162624

namespace A001299

/-- `A001362(A057354(n))` -/
def P2846770770034162624.Spec : Prop :=
  ∀ n, P2846770770034162624.a n = A001299 n

end A001299

/-! ## A001299.P16676511941278168689

`A001362(A117451(n))`
-/

namespace A001299.P16676511941278168689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001362 (A117451 n).toNat

end

end A001299.P16676511941278168689

namespace A001299

/-- `A001362(A117451(n))` -/
def P16676511941278168689.Spec : Prop :=
  ∀ n, P16676511941278168689.a n = A001299 n

end A001299

/-! ## A001299.P161133856570128300

`A029013(A130497(n))`
-/

namespace A001299.P161133856570128300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (A130497 n).toNat

end

end A001299.P161133856570128300

namespace A001299

/-- `A029013(A130497(n))` -/
def P161133856570128300.Spec : Prop :=
  ∀ n, P161133856570128300.a n = A001299 n

end A001299

/-! ## A001299.P10228108575623646855

`A029013(or(1, A057354(n)))`
-/

namespace A001299.P10228108575623646855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (Int.lor 1 (A057354 n)).toNat

end

end A001299.P10228108575623646855

namespace A001299

/-- `A029013(or(1, A057354(n)))` -/
def P10228108575623646855.Spec : Prop :=
  ∀ n, P10228108575623646855.a n = A001299 n

end A001299

/-! ## A001299.P18070094996063745004

`A029013(or(1, A117451(n)))`
-/

namespace A001299.P18070094996063745004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (Int.lor 1 (A117451 n)).toNat

end

end A001299.P18070094996063745004

namespace A001299

/-- `A029013(or(1, A117451(n)))` -/
def P18070094996063745004.Spec : Prop :=
  ∀ n, P18070094996063745004.a n = A001299 n

end A001299

/-! ## A001299.P1330499007864143517

`A029013(or(1, A288156(n)))`
-/

namespace A001299.P1330499007864143517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (Int.lor 1 (A288156 n)).toNat

end

end A001299.P1330499007864143517

namespace A001299

/-- `A029013(or(1, A288156(n)))` -/
def P1330499007864143517.Spec : Prop :=
  ∀ n, P1330499007864143517.a n = A001299 n

end A001299

/-! ## A001299.P13559188530673329141

`A177239(∑[A079998(n)]+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001299

/-- `A177239(∑[A079998(n)]+3)` -/
def P13559188530673329141.Spec : Prop :=
  ∀ n, P13559188530673329141.a n = A001299 n

theorem P13559188530673329141.correct : P13559188530673329141.Spec := by
  intro n
  simp only [A001299]

end A001299

/-! ## A001299.P13404724268553011185

`A177239(A008616(2*n)+3)`
-/

namespace A001299.P13404724268553011185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (A008616 (2 * n) + 3).toNat

end

end A001299.P13404724268553011185

namespace A001299

/-- `A177239(A008616(2*n)+3)` -/
def P13404724268553011185.Spec : Prop :=
  ∀ n, P13404724268553011185.a n = A001299 n

end A001299

/-! ## A001299.P17074314310680359399

`A177239(A059995(2*n)+4)`
-/

namespace A001299.P17074314310680359399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (A059995 (2 * n) + 4).toNat

end

end A001299.P17074314310680359399

namespace A001299

/-- `A177239(A059995(2*n)+4)` -/
def P17074314310680359399.Spec : Prop :=
  ∀ n, P17074314310680359399.a n = A001299 n

end A001299

