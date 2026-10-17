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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A091500: Convergent of rows in triangle A091499, in which A091499(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-1).

The programs for A091500, there is no canonical definition to state claims against.
-/

/-! ## A091500.P18114129877663529878

`A091499(A037255(n+1))`
-/

namespace A091500.P18114129877663529878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091499 (A037255 (n + 1)).toNat

end

end A091500.P18114129877663529878

/-! ## A091500.P5456122321708216645

`A091499(A002817(n)+n)`
-/

namespace A091500.P5456122321708216645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091499 (A002817 n + (n : ℤ)).toNat

end

end A091500.P5456122321708216645

/-! ## A091500.P17422339974477777147

`A091499(A000217(∑[n])+n)`
-/

namespace A091500.P17422339974477777147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091499 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A091500.P17422339974477777147

/-! ## A091500.P11991868497508892644

`A091499(A086602(n+1))`
-/

namespace A091500.P11991868497508892644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091499 (A086602 (n + 1)).toNat

end

end A091500.P11991868497508892644

/-! ## A091500.P9234936714837339134

`A081753(A347310(n+1)-n)`
-/

namespace A091500.P9234936714837339134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A347310 (n + 1) - (n : ℤ)).toNat

end

end A091500.P9234936714837339134

/-!
# A091501: Row sums of triangle A091499, in which A091499(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-1).

The programs for A091501, there is no canonical definition to state claims against.
-/

/-! ## A091501.P12325171345714809016

`A324868(A007755(n+1))+A274184(n)`
-/

namespace A091501.P12325171345714809016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324868 (A007755 (n + 1)).toNat + A274184 n

end

end A091501.P12325171345714809016

/-! ## A091501.P392832899342565738

`A000006(A339152(n+4)+A327475(n))`
-/

namespace A091501.P392832899342565738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A339152 (n + 4) + A327475 n).toNat

end

end A091501.P392832899342565738

/-! ## A091501.P6843686904348798847

`A257639(3*A131244(n))`
-/

namespace A091501.P6843686904348798847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (3 * A131244 n).toNat

end

end A091501.P6843686904348798847

/-! ## A091501.P9539541892468123853

`A257639(4*A018111(n))`
-/

namespace A091501.P9539541892468123853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (4 * A018111 n).toNat

end

end A091501.P9539541892468123853

/-! ## A091501.P9633942675219929174

`A257639(4*A018112(n))`
-/

namespace A091501.P9633942675219929174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (4 * A018112 n).toNat

end

end A091501.P9633942675219929174

/-!
# A091507: Product of the anti-divisors of n.

The programs for A091507, there is no canonical definition to state claims against.
-/

/-! ## A091507.P3432106338745182367

`A093394(n+3)*A093396(n+3)`
-/

namespace A091507.P3432106338745182367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093394 (n + 3) * A093396 (n + 3)

end

end A091507.P3432106338745182367

/-! ## A091507.P4871180366872709888

`(n+3)/A093395(n+3)*A093396(n+3)`
-/

namespace A091507.P4871180366872709888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A093395 (n + 3) : ℚ) * (A093396 (n + 3) : ℚ)

end

end A091507.P4871180366872709888

/-! ## A091507.P2914957110042966150

`val(A000079(n+3), A000079(A093395(n+3)))*A093396(n+3)`
-/

namespace A091507.P2914957110042966150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000079 (n + 3)).toNat (A000079 (A093395 (n + 3)).toNat).toNat : ℤ) * A093396 (n + 3)

end

end A091507.P2914957110042966150

/-! ## A091507.P15428340194190006808

`A001222(root(2^(n+3), A093395(n+3)))*A093396(n+3)`
-/

namespace A091507.P15428340194190006808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 ^ (n + 3) : ℝ) ^ (1 / (A093395 (n + 3) : ℝ)))).toNat * A093396 (n + 3)

end

end A091507.P15428340194190006808

/-! ## A091507.P12263268178578678596

`A096357(n+3)*A352517(A027516(n+2))`
-/

namespace A091507.P12263268178578678596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096357 (n + 3) * A352517 (A027516 (n + 2)).toNat

end

end A091507.P12263268178578678596

/-!
# A091512: a(n) is the largest integer m such that 2^m divides (2*n)^n, i.e., the exponent of 2 in (2*n)^n.

The programs for A091512, the canonical program `A091512.P12959083986982032109` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091512 has offset 1).

The definition of A091512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091512.P12959083986982032109

`A069895(n+1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091512

/-- `A069895(n+1)/2` -/
def P12959083986982032109.Spec : Prop :=
  ∀ n, P12959083986982032109.a n = (A091512 (n + 1) : ℚ)

end A091512

/-! ## A091512.P13815792546238138302

`(val(n+1, 2)+1)*(n+1)`
-/

namespace A091512.P13815792546238138302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) * (n + 1)

end

end A091512.P13815792546238138302

namespace A091512

/-- `(val(n+1, 2)+1)*(n+1)` -/
def P13815792546238138302.Spec : Prop :=
  ∀ n, (P13815792546238138302.a n : ℤ) = A091512 (n + 1)

end A091512

/-! ## A091512.P634839039584815751

`(n+1)*log2(xor(n, n+1)+1)`
-/

namespace A091512.P634839039584815751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A091512.P634839039584815751

namespace A091512

/-- `(n+1)*log2(xor(n, n+1)+1)` -/
def P634839039584815751.Spec : Prop :=
  ∀ n, P634839039584815751.a n = (A091512 (n + 1) : ℝ)

end A091512

/-! ## A091512.P12854670095461733830

`(n+1)*∑{e}[xor(n, -(n+2)), #]`
-/

namespace A091512.P12854670095461733830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A091512.P12854670095461733830

namespace A091512

/-- `(n+1)*∑{e}[xor(n, -(n+2)), #]` -/
def P12854670095461733830.Spec : Prop :=
  ∀ n, (P12854670095461733830.a n : ℤ) = A091512 (n + 1)

end A091512

/-! ## A091512.P17087368855820431339

`(n+1)*Δ[a(floor(n/2))+n]` with `a(0)=1`
-/

namespace A091512.P17087368855820431339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091512.P17087368855820431339

namespace A091512

/-- `(n+1)*Δ[a(floor(n/2))+n]` -/
def P17087368855820431339.Spec : Prop :=
  ∀ n, P17087368855820431339.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P9852317941816610603

`(n+1)*(log2(abs(or(n+1, -(n+1))))+1)`
-/

namespace A091512.P9852317941816610603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (Real.logb 2 (|Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| : ℝ) + 1)

end

end A091512.P9852317941816610603

namespace A091512

/-- `(n+1)*(log2(abs(or(n+1, -(n+1))))+1)` -/
def P9852317941816610603.Spec : Prop :=
  ∀ n, P9852317941816610603.a n = (A091512 (n + 1) : ℝ)

end A091512

/-! ## A091512.P3445853756772619344

`Δ[A249153(n)/2]`
-/

namespace A091512.P3445853756772619344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249153 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091512.P3445853756772619344

namespace A091512

/-- `Δ[A249153(n)/2]` -/
def P3445853756772619344.Spec : Prop :=
  ∀ n, P3445853756772619344.a n = (A091512 (n + 1) : ℚ)

end A091512

/-! ## A091512.P7858259613744216187

`∑{d}[n+1, A162728(#)]`
-/

namespace A091512.P7858259613744216187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d

end

end A091512.P7858259613744216187

namespace A091512

/-- `∑{d}[n+1, A162728(#)]` -/
def P7858259613744216187.Spec : Prop :=
  ∀ n, P7858259613744216187.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P12671955710669027968

`Δ[A249152(n)]+n+1`
-/

namespace A091512.P12671955710669027968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A091512.P12671955710669027968

namespace A091512

/-- `Δ[A249152(n)]+n+1` -/
def P12671955710669027968.Spec : Prop :=
  ∀ n, P12671955710669027968.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P16828623607834537544

`(n+1)*Δ[A005187(n)]`
-/

namespace A091512.P16828623607834537544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A091512.P16828623607834537544

namespace A091512

/-- `(n+1)*Δ[A005187(n)]` -/
def P16828623607834537544.Spec : Prop :=
  ∀ n, P16828623607834537544.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P11216534853470154723

`(n+1)*A001511(n+1)`
-/

namespace A091512.P11216534853470154723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (n + 1)

end

end A091512.P11216534853470154723

namespace A091512

/-- `(n+1)*A001511(n+1)` -/
def P11216534853470154723.Spec : Prop :=
  ∀ n, P11216534853470154723.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P17190370156136637043

`(n+1)*(A085058(n)-1)`
-/

namespace A091512.P17190370156136637043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A085058 n - 1)

end

end A091512.P17190370156136637043

namespace A091512

/-- `(n+1)*(A085058(n)-1)` -/
def P17190370156136637043.Spec : Prop :=
  ∀ n, P17190370156136637043.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P7646076361540089478

`abs((n+1)*A164677(n+1))`
-/

namespace A091512.P7646076361540089478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A164677 (n + 1)|

end

end A091512.P7646076361540089478

namespace A091512

/-- `abs((n+1)*A164677(n+1))` -/
def P7646076361540089478.Spec : Prop :=
  ∀ n, P7646076361540089478.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P18244402013947066437

`(n+1)*sqrt(A123726(n+1))`
-/

namespace A091512.P18244402013947066437
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A123726 (n + 1) : ℝ)

end

end A091512.P18244402013947066437

namespace A091512

/-- `(n+1)*sqrt(A123726(n+1))` -/
def P18244402013947066437.Spec : Prop :=
  ∀ n, P18244402013947066437.a n = (A091512 (n + 1) : ℝ)

end A091512

/-! ## A091512.P7144887225554913934

`(n+1)*log2(A171977(n+1))`
-/

namespace A091512.P7144887225554913934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A171977 (n + 1) : ℝ)

end

end A091512.P7144887225554913934

namespace A091512

/-- `(n+1)*log2(A171977(n+1))` -/
def P7144887225554913934.Spec : Prop :=
  ∀ n, P7144887225554913934.a n = (A091512 (n + 1) : ℝ)

end A091512

/-! ## A091512.P2192405166475857246

`(n+1)*(A007814(n+1)+1)`
-/

namespace A091512.P2192405166475857246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007814 (n + 1) + 1)

end

end A091512.P2192405166475857246

namespace A091512

/-- `(n+1)*(A007814(n+1)+1)` -/
def P2192405166475857246.Spec : Prop :=
  ∀ n, P2192405166475857246.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P14150013133239826665

`(n+1)*(2-A088705(n+1))`
-/

namespace A091512.P14150013133239826665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A088705 (n + 1))

end

end A091512.P14150013133239826665

namespace A091512

/-- `(n+1)*(2-A088705(n+1))` -/
def P14150013133239826665.Spec : Prop :=
  ∀ n, P14150013133239826665.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P3880595176294216777

`(n+1)*(A090739(n+1)-2)`
-/

namespace A091512.P3880595176294216777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A090739 (n + 1) - 2)

end

end A091512.P3880595176294216777

namespace A091512

/-- `(n+1)*(A090739(n+1)-2)` -/
def P3880595176294216777.Spec : Prop :=
  ∀ n, P3880595176294216777.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P16821192531937384848

`2*A267092(n+1)-(n+1)`
-/

namespace A091512.P16821192531937384848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267092 (n + 1) - (n + 1 : ℤ)

end

end A091512.P16821192531937384848

namespace A091512

/-- `2*A267092(n+1)-(n+1)` -/
def P16821192531937384848.Spec : Prop :=
  ∀ n, P16821192531937384848.a n = A091512 (n + 1)

end A091512

/-! ## A091512.P2181956215185272027

`(n+1)*A302045(2*(n+1))`
-/

namespace A091512.P2181956215185272027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302045 (2 * (n + 1))

end

end A091512.P2181956215185272027

namespace A091512

/-- `(n+1)*A302045(2*(n+1))` -/
def P2181956215185272027.Spec : Prop :=
  ∀ n, P2181956215185272027.a n = A091512 (n + 1)

end A091512

/-!
# A091514: Primes of the form (2^n + 1)^2 - 2 = 4^n + 2^(n+1) - 1.

The programs for A091514, there is no canonical definition to state claims against.
-/

/-! ## A091514.P805439172664131969

`(2^A091513(n+1)+1)²-2`
-/

namespace A091514.P805439172664131969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A091513 (n + 1) : ℤ) + 1) ^ 2 - 2

end

end A091514.P805439172664131969

/-! ## A091514.P12103562527878117911

`A130567(A091513(n+1)+1)`
-/

namespace A091514.P12103562527878117911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130567 (A091513 (n + 1) + 1).toNat

end

end A091514.P12103562527878117911

/-! ## A091514.P13911715148577107398

`p?[(2^n+1)²-2]`
-/

namespace A091514.P13911715148577107398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n + 1) ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091514.P13911715148577107398

/-!
# A091515: Numbers k such that (2^k - 1)^2 - 2 = 4^k - 2^(k+1) - 1 is prime.

The programs for A091515, there is no canonical definition to state claims against.
-/

/-! ## A091515.P13352056474527264746

`eq[1, A260757(n+1)]+1`
-/

namespace A091515.P13352056474527264746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091515.P13352056474527264746

/-! ## A091515.P3649275761485116700

`eq[1, A260757(A028310(n))]`
-/

namespace A091515.P3649275761485116700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091515.P3649275761485116700

/-! ## A091515.P16217216779206751199

`eq[A010194(n), A260757(n)]`
-/

namespace A091515.P16217216779206751199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091515.P16217216779206751199

/-! ## A091515.P11585454077754298121

`eq[A054977(n), A260757(n)]`
-/

namespace A091515.P11585454077754298121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091515.P11585454077754298121

/-! ## A091515.P4418385554560989522

`eq[A057427(n), A260757(n)]`
-/

namespace A091515.P4418385554560989522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091515.P4418385554560989522

/-!
# A091516: Primes of the form 4^k - 2^(k+1) - 1.

The programs for A091516, there is no canonical definition to state claims against.
-/

/-! ## A091516.P13862104829476630860

`A093112(A091515(n+1))`
-/

namespace A091516.P13862104829476630860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (A091515 (n + 1)).toNat

end

end A091516.P13862104829476630860

/-! ## A091516.P16911892366349991233

`A093112(eq[A168181(n), A260757(n)])`
-/

namespace A091516.P16911892366349991233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091516.P16911892366349991233

/-! ## A091516.P15815298877481158776

`A093112(eq[A132126(n+1), A260757(n)])`
-/

namespace A091516.P15815298877481158776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091516.P15815298877481158776

/-! ## A091516.P15436314226792250811

`A093112(eq[A160322(n+1), A260757(n)])`
-/

namespace A091516.P15436314226792250811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091516.P15436314226792250811

/-! ## A091516.P17010571946279765074

`A093112(eq[A260757(n), A267084(n+1)])`
-/

namespace A091516.P17010571946279765074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260757 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093112 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091516.P17010571946279765074

/-!
# A091519: G.f.: Sum_{k>=0} (2^k*t*(1+t)/(1-t)^3, t=x^2^k).

The programs for A091519, the canonical program `A091519.P12707722634983799524` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091519 has offset 1).

The definition of A091519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091519.P11299633804273349420

`∑{d}[or(n, n+1)-n, (n+1)²/#]`
-/

namespace A091519.P11299633804273349420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1) ^ 2 : ℚ) / (d : ℚ)

end

end A091519.P11299633804273349420

namespace A091519

/-- `∑{d}[or(n, n+1)-n, (n+1)²/#]` -/
def P11299633804273349420.Spec : Prop :=
  ∀ n, P11299633804273349420.a n = (A091519 (n + 1) : ℚ)

end A091519

/-! ## A091519.P6818300119658574786

`∑{d}[and(n+1, -(n+1)), (n+1)²/#]`
-/

namespace A091519.P6818300119658574786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1) ^ 2 : ℚ) / (d : ℚ)

end

end A091519.P6818300119658574786

namespace A091519

/-- `∑{d}[and(n+1, -(n+1)), (n+1)²/#]` -/
def P6818300119658574786.Spec : Prop :=
  ∀ n, P6818300119658574786.a n = (A091519 (n + 1) : ℚ)

end A091519

/-! ## A091519.P3618077310831223774

`∑{d}[or(n+1, -(n+1)), (n+1)²/#]`
-/

namespace A091519.P3618077310831223774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1) ^ 2 : ℚ) / (d : ℚ)

end

end A091519.P3618077310831223774

namespace A091519

/-- `∑{d}[or(n+1, -(n+1)), (n+1)²/#]` -/
def P3618077310831223774.Spec : Prop :=
  ∀ n, P3618077310831223774.a n = (A091519 (n + 1) : ℚ)

end A091519

/-! ## A091519.P12707722634983799524

`(2*n+1)*(n+1)-lcm(n+1, and(n, n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A091519

/-- `(2*n+1)*(n+1)-lcm(n+1, and(n, n+1))` -/
def P12707722634983799524.Spec : Prop :=
  ∀ n, P12707722634983799524.a n = A091519 (n + 1)

theorem P12707722634983799524.correct : P12707722634983799524.Spec := by
  intro n
  simp only [A091519, Nat.add_sub_cancel]

end A091519

/-! ## A091519.P3308771872393391104

`(n+1)*A129527(n+1)`
-/

namespace A091519.P3308771872393391104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A129527 (n + 1)

end

end A091519.P3308771872393391104

namespace A091519

/-- `(n+1)*A129527(n+1)` -/
def P3308771872393391104.Spec : Prop :=
  ∀ n, P3308771872393391104.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P9998661776118518778

`(2*n+1-A153733(n))*(n+1)`
-/

namespace A091519.P9998661776118518778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A153733 n) * (n + 1 : ℤ)

end

end A091519.P9998661776118518778

namespace A091519

/-- `(2*n+1-A153733(n))*(n+1)` -/
def P9998661776118518778.Spec : Prop :=
  ∀ n, P9998661776118518778.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P14999109581431778044

`∑{d}[n+1, (n+1)*A000010(2*#)]`
-/

namespace A091519.P14999109581431778044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A000010 (2 * d)

end

end A091519.P14999109581431778044

namespace A091519

/-- `∑{d}[n+1, (n+1)*A000010(2*#)]` -/
def P14999109581431778044.Spec : Prop :=
  ∀ n, P14999109581431778044.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P17382679666859737699

`(2*(n+1)-A000265(n+1))*(n+1)`
-/

namespace A091519.P17382679666859737699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A000265 (n + 1)) * (n + 1 : ℤ)

end

end A091519.P17382679666859737699

namespace A091519

/-- `(2*(n+1)-A000265(n+1))*(n+1)` -/
def P17382679666859737699.Spec : Prop :=
  ∀ n, P17382679666859737699.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P17129265024885197196

`∑{d}[n+1, A007434(#)*A038712((n+1)/#)]`
-/

namespace A091519.P17129265024885197196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P17129265024885197196

namespace A091519

/-- `∑{d}[n+1, A007434(#)*A038712((n+1)/#)]` -/
def P17129265024885197196.Spec : Prop :=
  ∀ n, P17129265024885197196.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P9425028479322020790

`∑{d}[n+1, A001157(#)*A067856((n+1)/#)]`
-/

namespace A091519.P9425028479322020790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P9425028479322020790

namespace A091519

/-- `∑{d}[n+1, A001157(#)*A067856((n+1)/#)]` -/
def P9425028479322020790.Spec : Prop :=
  ∀ n, P9425028479322020790.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P12099783535591159216

`∑{d}[n+1, A002618(#)*A091512((n+1)/#)]`
-/

namespace A091519.P12099783535591159216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A091512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P12099783535591159216

namespace A091519

/-- `∑{d}[n+1, A002618(#)*A091512((n+1)/#)]` -/
def P12099783535591159216.Spec : Prop :=
  ∀ n, P12099783535591159216.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P1329458579044062223

`∑{d}[n+1, A057660(#)*A162728((n+1)/#)]`
-/

namespace A091519.P1329458579044062223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P1329458579044062223

namespace A091519

/-- `∑{d}[n+1, A057660(#)*A162728((n+1)/#)]` -/
def P1329458579044062223.Spec : Prop :=
  ∀ n, P1329458579044062223.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P6805760812997447095

`∑{d}[n+1, A001001(#)*A327278((n+1)/#)]`
-/

namespace A091519.P6805760812997447095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P6805760812997447095

namespace A091519

/-- `∑{d}[n+1, A001001(#)*A327278((n+1)/#)]` -/
def P6805760812997447095.Spec : Prop :=
  ∀ n, P6805760812997447095.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P16238563096082892996

`∑{d}[n+1, A007433(#)*A327274((n+1)/#)]`
-/

namespace A091519.P16238563096082892996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P16238563096082892996

namespace A091519

/-- `∑{d}[n+1, A007433(#)*A327274((n+1)/#)]` -/
def P16238563096082892996.Spec : Prop :=
  ∀ n, P16238563096082892996.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P4072818008573157930

`∑{d}[n+1, A064987(#)*A349343((n+1)/#)]`
-/

namespace A091519.P4072818008573157930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091519.P4072818008573157930

namespace A091519

/-- `∑{d}[n+1, A064987(#)*A349343((n+1)/#)]` -/
def P4072818008573157930.Spec : Prop :=
  ∀ n, P4072818008573157930.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P14240356011046245677

`A282097(n+1)/A002131(n+1)`
-/

namespace A091519.P14240356011046245677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282097 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ)

end

end A091519.P14240356011046245677

namespace A091519

/-- `A282097(n+1)/A002131(n+1)` -/
def P14240356011046245677.Spec : Prop :=
  ∀ n, P14240356011046245677.a n = (A091519 (n + 1) : ℚ)

end A091519

/-! ## A091519.P5924028776461696516

`(n+2-A030101(A030101(n+1))+n)*(n+1)`
-/

namespace A091519.P5924028776461696516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A030101 (A030101 (n + 1)).toNat + (n : ℤ)) * (n + 1 : ℤ)

end

end A091519.P5924028776461696516

namespace A091519

/-- `(n+2-A030101(A030101(n+1))+n)*(n+1)` -/
def P5924028776461696516.Spec : Prop :=
  ∀ n, P5924028776461696516.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P10748702740080800488

`(n+1)*A331739(2*(n+1))`
-/

namespace A091519.P10748702740080800488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331739 (2 * (n + 1))

end

end A091519.P10748702740080800488

namespace A091519

/-- `(n+1)*A331739(2*(n+1))` -/
def P10748702740080800488.Spec : Prop :=
  ∀ n, P10748702740080800488.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P2908058670793967324

`(n+1)*A384055(2*(n+1))`
-/

namespace A091519.P2908058670793967324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A384055 (2 * (n + 1))

end

end A091519.P2908058670793967324

namespace A091519

/-- `(n+1)*A384055(2*(n+1))` -/
def P2908058670793967324.Spec : Prop :=
  ∀ n, P2908058670793967324.a n = A091519 (n + 1)

end A091519

/-! ## A091519.P14847864309499140981

`(2*n+1-A163575(2*n+1))*(n+1)`
-/

namespace A091519.P14847864309499140981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A163575 (2 * n + 1)) * (n + 1 : ℤ)

end

end A091519.P14847864309499140981

namespace A091519

/-- `(2*n+1-A163575(2*n+1))*(n+1)` -/
def P14847864309499140981.Spec : Prop :=
  ∀ n, P14847864309499140981.a n = A091519 (n + 1)

end A091519

/-!
# A091520: Expansion of 1 / ((1 - 4*x) * sqrt(1 + 4*x)) in powers of x.

The programs for A091520, the canonical program `A091520.P11447213063072365444` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091520 has offset 0).

The definition of A091520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091520.P11447213063072365444

`A003148(n)*2^n/n!`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091520

/-- `A003148(n)*2^n/n!` -/
def P11447213063072365444.Spec : Prop :=
  ∀ n, P11447213063072365444.a n = (A091520 n : ℚ)

end A091520

/-! ## A091520.P5913741732180199294

`A001316(n)*A123746(n)`
-/

namespace A091520.P5913741732180199294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A123746 n

end

end A091520.P5913741732180199294

namespace A091520

/-- `A001316(n)*A123746(n)` -/
def P5913741732180199294.Spec : Prop :=
  ∀ n, P5913741732180199294.a n = A091520 n

end A091520

/-! ## A091520.P18360825864794224006

`A048896(2*n)*A123746(n)`
-/

namespace A091520.P18360825864794224006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) * A123746 n

end

end A091520.P18360825864794224006

namespace A091520

/-- `A048896(2*n)*A123746(n)` -/
def P18360825864794224006.Spec : Prop :=
  ∀ n, P18360825864794224006.a n = A091520 n

end A091520

/-! ## A091520.P13902659676772060660

`lcm(A001316(A005843(n)), A123746(n))`
-/

namespace A091520.P13902659676772060660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A005843 n).toNat) (A123746 n)

end

end A091520.P13902659676772060660

namespace A091520

/-- `lcm(A001316(A005843(n)), A123746(n))` -/
def P13902659676772060660.Spec : Prop :=
  ∀ n, (P13902659676772060660.a n : ℤ) = A091520 n

end A091520

/-! ## A091520.P14181697632674894380

`A004171(n)-A104970(n)`
-/

namespace A091520.P14181697632674894380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A104970 n

end

end A091520.P14181697632674894380

namespace A091520

/-- `A004171(n)-A104970(n)` -/
def P14181697632674894380.Spec : Prop :=
  ∀ n, P14181697632674894380.a n = A091520 n

end A091520

/-! ## A091520.P13489495457453743389

`2*A000079(n)²-A104970(n)`
-/

namespace A091520.P13489495457453743389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A104970 n

end

end A091520.P13489495457453743389

namespace A091520

/-- `2*A000079(n)²-A104970(n)` -/
def P13489495457453743389.Spec : Prop :=
  ∀ n, P13489495457453743389.a n = A091520 n

end A091520

/-! ## A091520.P10077657931514562581

`A000079(2*n+1)-A104970(n)`
-/

namespace A091520.P10077657931514562581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A104970 n

end

end A091520.P10077657931514562581

namespace A091520

/-- `A000079(2*n+1)-A104970(n)` -/
def P10077657931514562581.Spec : Prop :=
  ∀ n, P10077657931514562581.a n = A091520 n

end A091520

/-! ## A091520.P1486287338241902771

`A000005(A019565(n))*A123746(n)`
-/

namespace A091520.P1486287338241902771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A123746 n

end

end A091520.P1486287338241902771

namespace A091520

/-- `A000005(A019565(n))*A123746(n)` -/
def P1486287338241902771.Spec : Prop :=
  ∀ n, P1486287338241902771.a n = A091520 n

end A091520

/-! ## A091520.P7619690627098936096

`A001316(n)/A049606(n)*A003148(n)`
-/

namespace A091520.P7619690627098936096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A049606 n : ℚ) * (A003148 n : ℚ)

end

end A091520.P7619690627098936096

namespace A091520

/-- `A001316(n)/A049606(n)*A003148(n)` -/
def P7619690627098936096.Spec : Prop :=
  ∀ n, P7619690627098936096.a n = (A091520 n : ℚ)

end A091520

/-!
# A091521: Number of configurations of a variant of the 3-dimensional 3 X 3 X 3 sliding cube puzzle that require a minimum of n moves to be reached, starting with the empty space at the center of one of the 6 faces of the combination cube.

The programs for A091521, there is no canonical definition to state claims against.
-/

/-! ## A091521.P7368831565585778766

`A139251(∑[n^xor(1, n)+1])`
-/

namespace A091521.P7368831565585778766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091521.P7368831565585778766

/-! ## A091521.P18107429033416933015

`A151896(A056601(n))`
-/

namespace A091521.P18107429033416933015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151896 (A056601 n).toNat

end

end A091521.P18107429033416933015

/-!
# A091522: Graham-Pollak sequence with initial term 5.

The programs for A091522, the canonical program `A091522.P11767486297331256816` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091522 has offset 1).

The definition of A091522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 660 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091522.P11767486297331256816

`floor((3/sqrt(2)+3)*2^(n/2))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A091522

/-- `floor((3/sqrt(2)+3)*2^(n/2))` -/
def P11767486297331256816.Spec : Prop :=
  ∀ n, P11767486297331256816.a n = A091522 (n + 1)

theorem P11767486297331256816.correct : P11767486297331256816.Spec := by
  intro n
  simp only [A091522, Nat.add_sub_cancel]

end A091522

/-! ## A091522.P8210261082646101976

`abs(floor((2*a(n-1)+1)/sqrt(2)))` with `a(0)=5`
-/

namespace A091522.P8210261082646101976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |⌊(2 * a (n - 1) + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋|

end

end A091522.P8210261082646101976

namespace A091522

/-- `abs(floor((2*a(n-1)+1)/sqrt(2)))` -/
def P8210261082646101976.Spec : Prop :=
  ∀ n, P8210261082646101976.a n = A091522 (n + 1)

end A091522

/-! ## A091522.P9761946853721949987

`floor((2*a(n-1)+1)/sqrt(2))%(2*a(n-1))` with `a(0)=5`
-/

namespace A091522.P9761946853721949987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.tmod ⌊(2 * a (n - 1) + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ (2 * a (n - 1))

end

end A091522.P9761946853721949987

namespace A091522

/-- `floor((2*a(n-1)+1)/sqrt(2))%(2*a(n-1))` -/
def P9761946853721949987.Spec : Prop :=
  ∀ n, P9761946853721949987.a n = A091522 (n + 1)

end A091522

/-! ## A091522.P7963250562653146796

`floor((2*a(n-1)+1)/sqrt(2))*A060576(n+1)` with `a(0)=5`
-/

namespace A091522.P7963250562653146796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(2 * a (n - 1) + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ * A060576 (n + 1)

end

end A091522.P7963250562653146796

namespace A091522

/-- `floor((2*a(n-1)+1)/sqrt(2))*A060576(n+1)` -/
def P7963250562653146796.Spec : Prop :=
  ∀ n, P7963250562653146796.a n = A091522 (n + 1)

end A091522

/-! ## A091522.P335541873676940401

`floor((2*a(n-1)+1)/sqrt(2))%A091523(n+1)` with `a(0)=5`
-/

namespace A091522.P335541873676940401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.tmod ⌊(2 * a (n - 1) + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ (A091523 (n + 1))

end

end A091522.P335541873676940401

namespace A091522

/-- `floor((2*a(n-1)+1)/sqrt(2))%A091523(n+1)` -/
def P335541873676940401.Spec : Prop :=
  ∀ n, P335541873676940401.a n = A091522 (n + 1)

end A091522

/-! ## A091522.P1261806151064581852

`A191432(∑[n+1]+2)`
-/

namespace A091522.P1261806151064581852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191432 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091522.P1261806151064581852

namespace A091522

/-- `A191432(∑[n+1]+2)` -/
def P1261806151064581852.Spec : Prop :=
  ∀ n, P1261806151064581852.a n = A091522 (n + 1)

end A091522

/-!
# A091523: Graham-Pollak sequence with initial term 8.

The programs for A091523, the canonical program `A091523.P17496831691433797616` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091523 has offset 1).

The definition of A091523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 658 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091523.P17496831691433797616

`floor((2*a(n-1)+1)/sqrt(2))` with `a(0)=8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A091523

/-- `floor((2*a(n-1)+1)/sqrt(2))` -/
def P17496831691433797616.Spec : Prop :=
  ∀ n, P17496831691433797616.a n = A091523 (n + 1)

theorem P17496831691433797616.correct : P17496831691433797616.Spec := by
  intro n
  simp only [A091523, Nat.add_sub_cancel]

end A091523

/-! ## A091523.P4181687061770687501

`floor((a(n-1)+a(n-1)+1)/sqrt(2))` with `a(0)=8`
-/

namespace A091523.P4181687061770687501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊(a (n - 1) + (a (n - 1) + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A091523.P4181687061770687501

namespace A091523

/-- `floor((a(n-1)+a(n-1)+1)/sqrt(2))` -/
def P4181687061770687501.Spec : Prop :=
  ∀ n, P4181687061770687501.a n = A091523 (n + 1)

end A091523

/-! ## A091523.P6712057434417855040

`floor(2*sqrt(C(a(n-1)+1, 2)))` with `a(0)=8`
-/

namespace A091523.P6712057434417855040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊2 * Real.sqrt (Nat.choose (a (n - 1) + 1).toNat 2 : ℝ)⌋

end

end A091523.P6712057434417855040

namespace A091523

/-- `floor(2*sqrt(C(a(n-1)+1, 2)))` -/
def P6712057434417855040.Spec : Prop :=
  ∀ n, P6712057434417855040.a n = A091523 (n + 1)

end A091523

/-! ## A091523.P16909078882155323433

`floor(2*sqrt(C(ϕ²-(ϕ-a(n-1)), 2)))` with `a(0)=8`
-/

namespace A091523.P16909078882155323433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊2 * Real.sqrt (Nat.choose (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (a (n - 1) : ℝ)))).toNat 2 : ℝ)⌋

end

end A091523.P16909078882155323433

namespace A091523

/-- `floor(2*sqrt(C(ϕ²-(ϕ-a(n-1)), 2)))` -/
def P16909078882155323433.Spec : Prop :=
  ∀ n, P16909078882155323433.a n = A091523 (n + 1)

end A091523

/-! ## A091523.P15461511713203608577

`A191432(A167614(n+1))`
-/

namespace A091523.P15461511713203608577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191432 (A167614 (n + 1)).toNat

end

end A091523.P15461511713203608577

namespace A091523

/-- `A191432(A167614(n+1))` -/
def P15461511713203608577.Spec : Prop :=
  ∀ n, P15461511713203608577.a n = A091523 (n + 1)

end A091523

/-!
# A091524: a(m) is the multiplier of sqrt(2) in the constant alpha(m) = a(m)*sqrt(2) - b(m), where alpha(m) is the value of the constant determined by the binary bits in the recurrence associated with the Graham-Pollak sequence.

The programs for A091524, there is no canonical definition to state claims against.
-/

/-! ## A091524.P18114302878969647898

`A000188(∪[2*(n+1)², (n+1)²])`
-/

namespace A091524.P18114302878969647898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A091524.P18114302878969647898

/-! ## A091524.P4233348370044363294

`A329888(∪[2*(n+1)², (n+1)²])`
-/

namespace A091524.P4233348370044363294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A091524.P4233348370044363294

/-! ## A091524.P2557546469995143821

`sqrt(A008833(∪[2*(n+1)², (n+1)²]))`
-/

namespace A091524.P2557546469995143821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) : ℝ)

end

end A091524.P2557546469995143821

/-! ## A091524.P6282894715445032951

`A057918(∪[2*(n+1)², (n+1)²])+1`
-/

namespace A091524.P6282894715445032951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) + 1

end

end A091524.P6282894715445032951

/-! ## A091524.P2214233981184768159

`n+1-a(n-(2-Δ[A097509(n)]²))` with `a(0)=1`
-/

namespace A091524.P2214233981184768159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - a ((n : ℤ) - (2 - (f1 (n + 1) - f1 n) ^ 2)).toNat

end

end A091524.P2214233981184768159

/-! ## A091524.P14856327005362520876

`sqrt(∪[2*(n+1)², (n+1)²]/A006337(n+1))`
-/

namespace A091524.P14856327005362520876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / (A006337 (n + 1) : ℚ) : ℝ)

end

end A091524.P14856327005362520876

/-! ## A091524.P17123798548245458023

`∪[2*(n+1)², (n+1)²]/A019554(∪[2*(n+1)², (n+1)²])`
-/

namespace A091524.P17123798548245458023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / (A019554 (SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n) : ℚ)

end

end A091524.P17123798548245458023

/-! ## A091524.P3061499392214666102

`A000188(A028982(n+1))`
-/

namespace A091524.P3061499392214666102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A028982 (n + 1)).toNat

end

end A091524.P3061499392214666102

/-! ## A091524.P7970737219145823909

`A117811(A088827(n+1))`
-/

namespace A091524.P7970737219145823909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (A088827 (n + 1)).toNat

end

end A091524.P7970737219145823909

/-! ## A091524.P3920111762325193340

`Δ[A144216(A054074(n+1))]`
-/

namespace A091524.P3920111762325193340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (A054074 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091524.P3920111762325193340

/-!
# A091526: Coefficient of x^n in 1/((1+x)*(1-x)^(n-1)).

The programs for A091526, there is no canonical definition to state claims against.
-/

/-! ## A091526.P1455594196749212174

`A226952(∑[n])+A072547(n+1)`
-/

namespace A091526.P1455594196749212174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226952 (∑ j ∈ Finset.range (n + 1), f1 j) + A072547 (n + 1)

end

end A091526.P1455594196749212174

/-! ## A091526.P15229518247181781194

`A108561(2*n²)`
-/

namespace A091526.P15229518247181781194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (2 * n ^ 2)

end

end A091526.P15229518247181781194

/-! ## A091526.P13058798286871128258

`A112465(A004273(n²))`
-/

namespace A091526.P13058798286871128258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A004273 (n ^ 2)).toNat

end

end A091526.P13058798286871128258

/-! ## A091526.P2341151035304636700

`A112465(A014681(2*n²))`
-/

namespace A091526.P2341151035304636700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A014681 (2 * n ^ 2)).toNat

end

end A091526.P2341151035304636700

/-! ## A091526.P6635500023599618835

`A112465(A061579(2*n²))`
-/

namespace A091526.P6635500023599618835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A061579 (2 * n ^ 2)).toNat

end

end A091526.P6635500023599618835

/-!
# A091527: a(n) = ((3*n)!/n!^2)*(Gamma(1+n/2)/Gamma(1+3n/2)).

The programs for A091527, there is no canonical definition to state claims against.
-/

/-! ## A091527.P2119255197467826335

`(n+1)*A078531(n)`
-/

namespace A091527.P2119255197467826335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078531 n

end

end A091527.P2119255197467826335

/-! ## A091527.P2372963206273833302

`2*A244039(n)-A244038(n)`
-/

namespace A091527.P2372963206273833302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244039 n - A244038 n

end

end A091527.P2372963206273833302

/-! ## A091527.P11505396292640232307

`A054335(∑[4*n])`
-/

namespace A091527.P11505396292640232307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091527.P11505396292640232307

/-! ## A091527.P10453829610633999579

`lcm(gcd(n, n%2)+1, A054335(A046092(n)))`
-/

namespace A091527.P10453829610633999579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd n (n % 2) + 1 : ℤ) (A054335 (A046092 n).toNat)

end

end A091527.P10453829610633999579

/-! ## A091527.P3108271994396542464

`gcd(A000038(n), A054335(A046092(n)))`
-/

namespace A091527.P3108271994396542464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A054335 (A046092 n).toNat)

end

end A091527.P3108271994396542464

/-! ## A091527.P12317296347142079029

`A244038(n)-2*A206306(A001844(n))`
-/

namespace A091527.P12317296347142079029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244038 n - 2 * A206306 (A001844 n).toNat

end

end A091527.P12317296347142079029

/-! ## A091527.P6374795048361490997

`A205813(2*(n+1)²)`
-/

namespace A091527.P6374795048361490997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (2 * (n + 1) ^ 2)

end

end A091527.P6374795048361490997

/-! ## A091527.P2113283115284706910

`A330843(∑[n+3])`
-/

namespace A091527.P2113283115284706910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330843 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091527.P2113283115284706910

/-!
# A091528: a(n) = (Sum_{k=1..n} H(k)*k!*(n-k)!) mod (n+1), where H(k) is the k-th harmonic number.

The programs for A091528, there is no canonical definition to state claims against.
-/

/-! ## A091528.P4415594457884847996

`A358791(n)%(n+2)`
-/

namespace A091528.P4415594457884847996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358791 n) (n + 2 : ℤ)

end

end A091528.P4415594457884847996

/-! ## A091528.P8517252974716291262

`A092692(A109613(n))%(n+2)`
-/

namespace A091528.P8517252974716291262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092692 (A109613 n).toNat) (n + 2 : ℤ)

end

end A091528.P8517252974716291262

/-! ## A091528.P7705612846040110023

`A091530(n+1)%(n+2)`
-/

namespace A091528.P7705612846040110023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091530 (n + 1)) (n + 2 : ℤ)

end

end A091528.P7705612846040110023

/-! ## A091528.P2470240349977964858

`A092692(n+1)%(n+2)`
-/

namespace A091528.P2470240349977964858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092692 (n + 1)) (n + 2 : ℤ)

end

end A091528.P2470240349977964858

/-! ## A091528.P4287237014545048109

`A126674(n+1)%(n+2)`
-/

namespace A091528.P4287237014545048109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126674 (n + 1)) (n + 2 : ℤ)

end

end A091528.P4287237014545048109

/-! ## A091528.P503393725569345053

`A087751(n+1)%(n+2)`
-/

namespace A091528.P503393725569345053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087751 (n + 1)) (n + 2 : ℤ)

end

end A091528.P503393725569345053

/-!
# A091529: When sum {k=1 to n} H(k) k! (n-k)! (mod {n+1}) (A091528) is not zero.

The programs for A091529, there is no canonical definition to state claims against.
-/

/-! ## A091529.P5002628996491442611

`eq[6, or(6, A300226(n+1))]`
-/

namespace A091529.P5002628996491442611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A300226 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091529.P5002628996491442611

/-! ## A091529.P15549444476000478031

`eq[6, or(6, A300246(n+1))]`
-/

namespace A091529.P15549444476000478031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A300246 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091529.P15549444476000478031

/-! ## A091529.P5888840210936538648

`eq[6, or(6, A329620(n+1))]`
-/

namespace A091529.P5888840210936538648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A329620 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091529.P5888840210936538648

/-! ## A091529.P15177367313574084587

`lt[n-1-a(n-2), A006530(n+2)]+1` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A091529.P15177367313574084587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091529.P15177367313574084587

/-! ## A091529.P15239486903108272811

`eq[2, A217865(A217895(n+1))]`
-/

namespace A091529.P15239486903108272811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217865 (A217895 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091529.P15239486903108272811

/-! ## A091529.P4220636070749162917

`eq[A130130(n), A323761(n+1)]`
-/

namespace A091529.P4220636070749162917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091529.P4220636070749162917

/-! ## A091529.P6393657153718710603

`eq[A001222(n+1), A011776(n+1)]`
-/

namespace A091529.P6393657153718710603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091529.P6393657153718710603

/-! ## A091529.P17083432308714120223

`eq[A007421(n+1), A011776(n+1)]`
-/

namespace A091529.P17083432308714120223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091529.P17083432308714120223

/-! ## A091529.P14935451488644293390

`eq[A008481(n+1), A011776(n+1)]`
-/

namespace A091529.P14935451488644293390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091529.P14935451488644293390

/-! ## A091529.P6194274901287937778

`eq[A011776(n+1), A059829(n+1)]`
-/

namespace A091529.P6194274901287937778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091529.P6194274901287937778

/-!
# A091530: a(n) = Sum_{k=1..n} H(k) k! (n-k)!, where H(k) is the k-th harmonic number.

The programs for A091530, there is no canonical definition to state claims against.
-/

/-! ## A091530.P15384365287003279256

`A001651(A030886(n+1)-A054394(n))`
-/

namespace A091530.P15384365287003279256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A030886 (n + 1) - A054394 n).toNat

end

end A091530.P15384365287003279256

/-!
# A091531: Primes p such that k = 2p is the smallest positive solution to the equation phi(p+k) = phi(p) + phi(k), where phi is Euler's totient function.

The programs for A091531, there is no canonical definition to state claims against.
-/

/-! ## A091531.P13860415014935292148

`eq[A214413(n+1)+n, A066426(n+1)]+1`
-/

namespace A091531.P13860415014935292148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214413 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091531.P13860415014935292148

/-! ## A091531.P11036654910699229681

`eq[A325973(n+1)+n, A066426(n+1)]+1`
-/

namespace A091531.P11036654910699229681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066426 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091531.P11036654910699229681

/-!
# A091532: Where the number of terms in simple continued fraction for H(j) exceeds all H(i), j>i and H(k) is the k-th harmonic number.

The programs for A091532, there is no canonical definition to state claims against.
-/

/-! ## A091532.P4002080539008341164

`∑[A001221(A053602(A128824(n+1)))]`
-/

namespace A091532.P4002080539008341164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053602 (A128824 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091532.P4002080539008341164

/-! ## A091532.P15534825012940720914

`lt[A000104(A124738(3*n+2)), A210000(n)]`
-/

namespace A091532.P15534825012940720914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (A124738 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091532.P15534825012940720914

/-!
# A091533: Triangle read by rows, related to Pascal's triangle, starting with rows 1; 1,1.

The programs for A091533, there is no canonical definition to state claims against.
-/

/-! ## A091533.P7074572437933526189

`A228815(n)+A091562(n)`
-/

namespace A091533.P7074572437933526189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228815 n + A091562 n

end

end A091533.P7074572437933526189

/-! ## A091533.P2976214565621107922

`A209167(n+1)-A228815(n)`
-/

namespace A091533.P2976214565621107922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) - A228815 n

end

end A091533.P2976214565621107922

/-! ## A091533.P7134414519883864161

`(A209167(n+1)+A091562(n))/2`
-/

namespace A091533.P7134414519883864161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209167 (n + 1) + A091562 n : ℚ) / 2

end

end A091533.P7134414519883864161

/-! ## A091533.P8600090077744038683

`(A209138(n+1)+A205575(n))/2`
-/

namespace A091533.P8600090077744038683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209138 (n + 1) + A205575 n : ℚ) / 2

end

end A091533.P8600090077744038683

/-! ## A091533.P1333540816678155849

`A209137(n+1)+A091562(n)-A205575(n)`
-/

namespace A091533.P1333540816678155849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209137 (n + 1) + (A091562 n - A205575 n)

end

end A091533.P1333540816678155849

/-! ## A091533.P9869392661142643983

`A209167(n+1)+A205575(n)-A209137(n+1)`
-/

namespace A091533.P9869392661142643983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) + (A205575 n - A209137 (n + 1))

end

end A091533.P9869392661142643983

/-! ## A091533.P8646849479184306635

`A091562(n)+A014682(A209167(n+1)-A091562(n))`
-/

namespace A091533.P8646849479184306635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091562 n + A014682 (A209167 (n + 1) - A091562 n).toNat

end

end A091533.P8646849479184306635

/-! ## A091533.P5863071898185167236

`A273943(A209167(n+1)-A091562(n))+A091562(n)`
-/

namespace A091533.P5863071898185167236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A209167 (n + 1) - A091562 n).toNat + A091562 n

end

end A091533.P5863071898185167236

/-! ## A091533.P10459711027688210282

`A014682(A209167(n+1)+A091562(n))`
-/

namespace A091533.P10459711027688210282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209167 (n + 1) + A091562 n).toNat

end

end A091533.P10459711027688210282

/-! ## A091533.P11928068053987813802

`A273943(A209167(n+1)+A091562(n))`
-/

namespace A091533.P11928068053987813802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A209167 (n + 1) + A091562 n).toNat

end

end A091533.P11928068053987813802

/-!
# A091534: Generalized Stirling2 array (5,2).

The programs for A091534, there is no canonical definition to state claims against.
-/

/-! ## A091534.P5419438591761100971

`A004175(a(n-1)*Δ[(2*n)²-∑[n]])` with `a(0)=1, a(1)=20, a(2)=10, a(3)=1`
-/

namespace A091534.P5419438591761100971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20, 10, 1] fun n a =>
  A004175 (a (n - 1) * (f1 (n + 1) - f1 n)).toNat

end

end A091534.P5419438591761100971

/-!
# A091535: First column (k=2) of array A091534 ((5,2)-Stirling2).

The programs for A091535, there is no canonical definition to state claims against.
-/

/-! ## A091535.P7389290926562606357

`∏[∑[18*n]+2]/2`
-/

namespace A091535.P7389290926562606357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A091535.P7389290926562606357

/-! ## A091535.P6866458177680642089

`∏[∑[18*n]+2-floor(acot(n))]`
-/

namespace A091535.P6866458177680642089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091535.P6866458177680642089

/-! ## A091535.P17312165964722971462

`(9*(n²+n)+2)*a(n-1)` with `a(0)=1`
-/

namespace A091535.P17312165964722971462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (9 * (n ^ 2 + n) + 2) * a (n - 1)

end

end A091535.P17312165964722971462

/-! ## A091535.P16691537974670271760

`(3*n+1)*(3*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A091535.P16691537974670271760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 1) * ((3 * n + 2) * a (n - 1))

end

end A091535.P16691537974670271760

/-! ## A091535.P16010894195701098304

`A091534(n²+1)`
-/

namespace A091535.P16010894195701098304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091534 (n ^ 2 + 1)

end

end A091535.P16010894195701098304

/-!
# A091538: Triangle built from m-primes as columns.

The programs for A091538, there is no canonical definition to state claims against.
-/

/-! ## A091538.P14659706259174057235

`A078840(A271439(n))-char[∑[n+1]]`
-/

namespace A091538.P14659706259174057235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A271439 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091538.P14659706259174057235

/-! ## A091538.P10542961053209887834

`A078840(A271439(n))*A123110(n)`
-/

namespace A091538.P10542961053209887834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A271439 n).toNat * A123110 n

end

end A091538.P10542961053209887834

/-! ## A091538.P9254376074154756804

`A078840(A271439(n))*A114607(n+1)`
-/

namespace A091538.P9254376074154756804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A271439 n).toNat * A114607 (n + 1)

end

end A091538.P9254376074154756804

/-! ## A091538.P13982522553734752261

`A000035(A099627(n))*A078840(A271439(n))`
-/

namespace A091538.P13982522553734752261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A099627 n).toNat * A078840 (A271439 n).toNat

end

end A091538.P13982522553734752261

/-! ## A091538.P7744944890072296624

`A391010(n)+A025427(A279991(n))`
-/

namespace A091538.P7744944890072296624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 n + A025427 (A279991 n).toNat

end

end A091538.P7744944890072296624

/-!
# A091539: Second column (k=3) of array A091534 ((5,2)-Stirling2) divided by 10.

The programs for A091539, there is no canonical definition to state claims against.
-/

/-! ## A091539.P6488692233464251841

`A051605(n)*A091540(n+2)`
-/

namespace A091539.P6488692233464251841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051605 n * A091540 (n + 2)

end

end A091539.P6488692233464251841

/-!
# A091540: Rescaled second column A091539 of array A091534 ((5,2)-Stirling2).

The programs for A091540, there is no canonical definition to state claims against.
-/

/-! ## A091540.P2238009535001182062

`∏[a(n-1)+3]+a(n-1)*A008585(n+2)` with `a(0)=1`
-/

namespace A091540.P2238009535001182062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) * A008585 (n + 2)

end

end A091540.P2238009535001182062

/-! ## A091540.P2952214267045259585

`∏[a(n-1)+3]+(A016789(n)+4)*a(n-1)` with `a(0)=1`
-/

namespace A091540.P2952214267045259585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A016789 n + 4) * a (n - 1)

end

end A091540.P2952214267045259585

/-! ## A091540.P16812321101574375106

`∏[3*(n+1)]/3+a(n-1)*A016777(n+1)` with `a(0)=1`
-/

namespace A091540.P16812321101574375106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 + a (n - 1) * (A016777 (n + 1) : ℚ)

end

end A091540.P16812321101574375106

/-! ## A091540.P15213213868136581717

`∏[3*(n+1)]/3+a(n-1)*A112414(n-1)` with `a(0)=1`
-/

namespace A091540.P15213213868136581717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 + a (n - 1) * (A112414 (n - 1) : ℚ)

end

end A091540.P15213213868136581717

/-! ## A091540.P7724429070914646885

`a(n-1)*A112414(n-1)+(n+1)*A032031(n)` with `a(0)=1`
-/

namespace A091540.P7724429070914646885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A112414 (n - 1) + (n + 1 : ℤ) * A032031 n

end

end A091540.P7724429070914646885

/-!
# A091541: Four times triple factorials (3*n-2)!!! with leading 1 added.

The programs for A091541, there is no canonical definition to state claims against.
-/

/-! ## A091541.P13780837738568786652

`∏[a(n-1)+3]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A091541.P13780837738568786652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091541.P13780837738568786652

/-! ## A091541.P7840568689605918732

`(3*n-5)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A091541.P7840568689605918732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((3 * n : ℤ) - 5) * a (n - 1)

end

end A091541.P7840568689605918732

/-! ## A091541.P7097287671423309094

`∏[3*abs(1-abs(1-n))+1]`
-/

namespace A091541.P7097287671423309094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * |(1 - |1 - (n : ℤ)|)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091541.P7097287671423309094

/-! ## A091541.P13204280033917610845

`a(n-1)*A026488(n)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A091541.P13204280033917610845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) * A026488 n

end

end A091541.P13204280033917610845

/-! ## A091541.P3085391551064683832

`a(n-1)*A033627(n)` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A091541.P3085391551064683832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) * A033627 n

end

end A091541.P3085391551064683832

/-! ## A091541.P13094426518450437096

`a(n-1)*A016777(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A091541.P13094426518450437096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * A016777 (n - 2)

end

end A091541.P13094426518450437096

/-!
# A091542: a(n) = floor( |n * sin(n)| ), where n is in radians.

The programs for A091542, the canonical program `A091542.P13889737088320293917` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091542 has offset 0).

The definition of A091542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091542.P10992929067627534169

`floor(abs(n*sin(n)))`
-/

namespace A091542.P10992929067627534169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(n : ℝ) * Real.sin (n : ℝ)|⌋

end

end A091542.P10992929067627534169

namespace A091542

/-- `floor(abs(n*sin(n)))` -/
def P10992929067627534169.Spec : Prop :=
  ∀ n, P10992929067627534169.a n = A091542 n

end A091542

/-! ## A091542.P16347468613648428884

`floor(n*cos(acot(tan(n))))`
-/

namespace A091542.P16347468613648428884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cos (SequenceMachineLib.acot (Real.tan (n : ℝ)))⌋

end

end A091542.P16347468613648428884

namespace A091542

/-- `floor(n*cos(acot(tan(n))))` -/
def P16347468613648428884.Spec : Prop :=
  ∀ n, P16347468613648428884.a n = A091542 n

end A091542

/-! ## A091542.P14320010604530072062

`floor(sqrt(n²*sin(n)²))`
-/

namespace A091542.P14320010604530072062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n ^ 2 : ℝ) * Real.sin (n : ℝ) ^ 2)⌋

end

end A091542.P14320010604530072062

namespace A091542

/-- `floor(sqrt(n²*sin(n)²))` -/
def P14320010604530072062.Spec : Prop :=
  ∀ n, P14320010604530072062.a n = A091542 n

end A091542

/-! ## A091542.P328893677990638791

`floor(abs(n*cos(acos(0)-n)))`
-/

namespace A091542.P328893677990638791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(n : ℝ) * Real.cos (Real.arccos (0 : ℝ) - (n : ℝ))|⌋

end

end A091542.P328893677990638791

namespace A091542

/-- `floor(abs(n*cos(acos(0)-n)))` -/
def P328893677990638791.Spec : Prop :=
  ∀ n, P328893677990638791.a n = A091542 n

end A091542

/-! ## A091542.P6285512665018242300

`floor(abs(n*cos(asin(1)-n)))`
-/

namespace A091542.P6285512665018242300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(n : ℝ) * Real.cos (Real.arcsin (1 : ℝ) - (n : ℝ))|⌋

end

end A091542.P6285512665018242300

namespace A091542

/-- `floor(abs(n*cos(asin(1)-n)))` -/
def P6285512665018242300.Spec : Prop :=
  ∀ n, P6285512665018242300.a n = A091542 n

end A091542

/-! ## A091542.P2010778330989720213

`floor(abs(n*cos(n)*tan(n)))`
-/

namespace A091542.P2010778330989720213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(n : ℝ) * (Real.cos (n : ℝ) * Real.tan (n : ℝ))|⌋

end

end A091542.P2010778330989720213

namespace A091542

/-- `floor(abs(n*cos(n)*tan(n)))` -/
def P2010778330989720213.Spec : Prop :=
  ∀ n, P2010778330989720213.a n = A091542 n

end A091542

/-! ## A091542.P6643503666795988530

`-ceil(-n*cos(acot(tan(n))))`
-/

namespace A091542.P6643503666795988530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈-((n : ℝ) * Real.cos (SequenceMachineLib.acot (Real.tan (n : ℝ))))⌉

end

end A091542.P6643503666795988530

namespace A091542

/-- `-ceil(-n*cos(acot(tan(n))))` -/
def P6643503666795988530.Spec : Prop :=
  ∀ n, P6643503666795988530.a n = A091542 n

end A091542

/-! ## A091542.P13889737088320293917

`A105662(n)+A000493(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091542

/-- `A105662(n)+A000493(n)` -/
def P13889737088320293917.Spec : Prop :=
  ∀ n, P13889737088320293917.a n = A091542 n

theorem P13889737088320293917.correct : P13889737088320293917.Spec := by
  intro n
  simp only [A091542]

end A091542

/-! ## A091542.P9346268496547921169

`A000196(floor((n*sin(n))²))`
-/

namespace A091542.P9346268496547921169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊((n : ℝ) * Real.sin (n : ℝ)) ^ 2⌋.toNat

end

end A091542.P9346268496547921169

namespace A091542

/-- `A000196(floor((n*sin(n))²))` -/
def P9346268496547921169.Spec : Prop :=
  ∀ n, P9346268496547921169.a n = A091542 n

end A091542

/-!
# A091544: First column sequence of array A091746 ((6,2)-Stirling2).

The programs for A091544, there is no canonical definition to state claims against.
-/

/-! ## A091544.P17921652371774946359

`∏[record[xor(1, n)*xor(2, n)]]/2`
-/

namespace A091544.P17921652371774946359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A091544.P17921652371774946359

/-! ## A091544.P16899107360598139009

`a(n-1)*record[xor(1, n)*xor(2, n)]` with `a(0)=1`
-/

namespace A091544.P16899107360598139009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091544.P16899107360598139009

/-! ## A091544.P16843409105777397953

`(2*n+1)*(8*n+2)*a(n-1)` with `a(0)=1`
-/

namespace A091544.P16843409105777397953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * ((8 * n + 2) * a (n - 1))

end

end A091544.P16843409105777397953

/-! ## A091544.P8665719281768155488

`A091746(n²+1)`
-/

namespace A091544.P8665719281768155488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091746 (n ^ 2 + 1)

end

end A091544.P8665719281768155488

/-! ## A091544.P8495844720401243952

`∏[A157870(n)]/2`
-/

namespace A091544.P8495844720401243952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A091544.P8495844720401243952

/-!
# A091545: First column sequence of the array (7,2)-Stirling2 A091747.

The programs for A091545, there is no canonical definition to state claims against.
-/

/-! ## A091545.P2244472574310092758

`∏[5*n+2]/2*∏[a(n-1)+5]` with `a(0)=1`
-/

namespace A091545.P2244472574310092758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A091545.P2244472574310092758

/-! ## A091545.P8089906148168475086

`A091747(n²+1)`
-/

namespace A091545.P8089906148168475086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091747 (n ^ 2 + 1)

end

end A091545.P8089906148168475086

/-! ## A091545.P4650596155315737754

`(7*n-abs(1-2*n))*a(n-1)*A016873(n)` with `a(0)=1`
-/

namespace A091545.P4650596155315737754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((7 * n : ℤ) - |1 - (2 * n : ℤ)|) * a (n - 1) * A016873 n

end

end A091545.P4650596155315737754

/-! ## A091545.P8805277358492431688

`∏[A016861(n)]*A034323(n+1)`
-/

namespace A091545.P8805277358492431688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A034323 (n + 1)

end

end A091545.P8805277358492431688

/-! ## A091545.P17571151070064253275

`A008548(n+1)*A034323(n+1)`
-/

namespace A091545.P17571151070064253275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008548 (n + 1) * A034323 (n + 1)

end

end A091545.P17571151070064253275

/-!
# A091546: First column of the array A092077 ((8,2)-Stirling2).

The programs for A091546, there is no canonical definition to state claims against.
-/

/-! ## A091546.P7499463580502451889

`A092077(n²+1)`
-/

namespace A091546.P7499463580502451889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092077 (n ^ 2 + 1)

end

end A091546.P7499463580502451889

/-! ## A091546.P2561452724642482962

`A372991(3*n+1)`
-/

namespace A091546.P2561452724642482962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372991 (3 * n + 1)

end

end A091546.P2561452724642482962

/-! ## A091546.P13580172151015369503

`∏[2*A272399(n+1)]/2`
-/

namespace A091546.P13580172151015369503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272399 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A091546.P13580172151015369503

/-! ## A091546.P14934802200051506718

`∏[A272399(n+1)]*A000079(n)`
-/

namespace A091546.P14934802200051506718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A091546.P14934802200051506718

/-! ## A091546.P14023190404148933186

`A008542(n+1)*A034689(n+1)`
-/

namespace A091546.P14023190404148933186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008542 (n + 1) * A034689 (n + 1)

end

end A091546.P14023190404148933186

/-!
# A091547: Row sums of triangle A091543.

The programs for A091547, there is no canonical definition to state claims against.
-/

/-! ## A091547.P6066024143462186983

`A047253(∑[∑[A000364(n)]])`
-/

namespace A091547.P6066024143462186983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091547.P6066024143462186983

/-!
# A091548: Alternating row sums of triangle A091543.

The programs for A091548, there is no canonical definition to state claims against.
-/

/-! ## A091548.P4910608263448782755

`2-A064472(A229258(n))`
-/

namespace A091548.P4910608263448782755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A064472 (A229258 n).toNat

end

end A091548.P4910608263448782755

/-!
# A091549: Second column (k=3) sequence of array A078740 ((3,2)-Stirling2) divided by 6.

The programs for A091549, there is no canonical definition to state claims against.
-/

/-! ## A091549.P1735528476114819298

`A001715(n+3)*A226167(A167614(n+1))`
-/

namespace A091549.P1735528476114819298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 3) * A226167 (A167614 (n + 1)).toNat

end

end A091549.P1735528476114819298

/-!
# A091554: Primes p such that k = 2p is the smallest positive solution to the equation sigma(p+k) = sigma(p) + sigma(k).

The programs for A091554, there is no canonical definition to state claims against.
-/

/-! ## A091554.P7565645238129330265

`eq[A066435(n+1), A245579(n+1)]+1`
-/

namespace A091554.P7565645238129330265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091554.P7565645238129330265

/-! ## A091554.P17278584814507436007

`p?[record[A316851(A008864(n+1))]]`
-/

namespace A091554.P17278584814507436007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316851 (A008864 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091554.P17278584814507436007

/-! ## A091554.P1278452567544559760

`record[A176173(A008284(n+1))]`
-/

namespace A091554.P1278452567544559760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176173 (A008284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091554.P1278452567544559760

/-! ## A091554.P18163069042502406692

`or(A064531(n), A064534(n+3))`
-/

namespace A091554.P18163069042502406692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064531 n) (A064534 (n + 3))

end

end A091554.P18163069042502406692

/-! ## A091554.P4237281480910159079

`record[A006530(A233765(n)+A040203(n))]`
-/

namespace A091554.P4237281480910159079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A233765 n + A040203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091554.P4237281480910159079

/-!
# A091555: Partial sums of Mertens's function (A002321).

The programs for A091555, the canonical program `A091555.P1151281054652392036` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091555 has offset 1).

The definition of A091555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091555.P1151281054652392036

`∑[A002321(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091555

/-- `∑[A002321(n+1)]` -/
def P1151281054652392036.Spec : Prop :=
  ∀ n, P1151281054652392036.a n = A091555 (n + 1)

theorem P1151281054652392036.correct : P1151281054652392036.Spec := by
  intro n
  simp only [A091555, Nat.add_sub_cancel]

end A091555

/-! ## A091555.P10064384658640738235

`∑[∑[A008683(n+1)]]`
-/

namespace A091555.P10064384658640738235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P10064384658640738235

namespace A091555

/-- `∑[∑[A008683(n+1)]]` -/
def P10064384658640738235.Spec : Prop :=
  ∀ n, P10064384658640738235.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P10263943428850345491

`∑[∑[A007423(n+1)-1]]`
-/

namespace A091555.P10263943428850345491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P10263943428850345491

namespace A091555

/-- `∑[∑[A007423(n+1)-1]]` -/
def P10263943428850345491.Spec : Prop :=
  ∀ n, P10263943428850345491.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P15207890610707215886

`∑[1-∑[A157658(n+1)]]`
-/

namespace A091555.P15207890610707215886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P15207890610707215886

namespace A091555

/-- `∑[1-∑[A157658(n+1)]]` -/
def P15207890610707215886.Spec : Prop :=
  ∀ n, P15207890610707215886.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P10564182328027028216

`∑[∑[A080847(n+1)-2]]`
-/

namespace A091555.P10564182328027028216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P10564182328027028216

namespace A091555

/-- `∑[∑[A080847(n+1)-2]]` -/
def P10564182328027028216.Spec : Prop :=
  ∀ n, P10564182328027028216.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P5538014935759533914

`∑[∑[2-A129979(n+1)]]`
-/

namespace A091555.P5538014935759533914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A129979 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P5538014935759533914

namespace A091555

/-- `∑[∑[2-A129979(n+1)]]` -/
def P5538014935759533914.Spec : Prop :=
  ∀ n, P5538014935759533914.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P18198651479737016143

`∑[2-∑[A157657(n+1)]]`
-/

namespace A091555.P18198651479737016143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P18198651479737016143

namespace A091555

/-- `∑[2-∑[A157657(n+1)]]` -/
def P18198651479737016143.Spec : Prop :=
  ∀ n, P18198651479737016143.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P6103292539667385055

`∑[∑[A231821(n+1)-3]]`
-/

namespace A091555.P6103292539667385055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P6103292539667385055

namespace A091555

/-- `∑[∑[A231821(n+1)-3]]` -/
def P6103292539667385055.Spec : Prop :=
  ∀ n, P6103292539667385055.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P14956386956003143348

`∑[∑[A162512(n+1)%2]]`
-/

namespace A091555.P14956386956003143348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P14956386956003143348

namespace A091555

/-- `∑[∑[A162512(n+1)%2]]` -/
def P14956386956003143348.Spec : Prop :=
  ∀ n, P14956386956003143348.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P15763474330244022243

`∑[∑[A326814(n+1)%2]]`
-/

namespace A091555.P15763474330244022243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326814 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P15763474330244022243

namespace A091555

/-- `∑[∑[A326814(n+1)%2]]` -/
def P15763474330244022243.Spec : Prop :=
  ∀ n, P15763474330244022243.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P14043950733371563697

`∑[∑[A346254(n+1)%2]]`
-/

namespace A091555.P14043950733371563697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346254 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P14043950733371563697

namespace A091555

/-- `∑[∑[A346254(n+1)%2]]` -/
def P14043950733371563697.Spec : Prop :=
  ∀ n, P14043950733371563697.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P5881320443072456545

`∑[A143443(n+1)/(n+1)]`
-/

namespace A091555.P5881320443072456545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P5881320443072456545

namespace A091555

/-- `∑[A143443(n+1)/(n+1)]` -/
def P5881320443072456545.Spec : Prop :=
  ∀ n, P5881320443072456545.a n = (A091555 (n + 1) : ℚ)

end A091555

/-! ## A091555.P7035039823157789587

`∑[∑[A008683(comp[2*n]-n)%2]]`
-/

namespace A091555.P7035039823157789587
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n - n)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P7035039823157789587

namespace A091555

/-- `∑[∑[A008683(comp[2*n]-n)%2]]` -/
def P7035039823157789587.Spec : Prop :=
  ∀ n, P7035039823157789587.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P12219558369903197194

`∑[∑[A004718(A074823(n+1))]]`
-/

namespace A091555.P12219558369903197194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A074823 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P12219558369903197194

namespace A091555

/-- `∑[∑[A004718(A074823(n+1))]]` -/
def P12219558369903197194.Spec : Prop :=
  ∀ n, P12219558369903197194.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P2978858875322634096

`∑[∑[A154271(A145501(n+1))]]`
-/

namespace A091555.P2978858875322634096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A145501 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P2978858875322634096

namespace A091555

/-- `∑[∑[A154271(A145501(n+1))]]` -/
def P2978858875322634096.Spec : Prop :=
  ∀ n, P2978858875322634096.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P14170243408753481498

`∑[∑[A174725(n+1)-A174726(n+1)]]`
-/

namespace A091555.P14170243408753481498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1) - A174726 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P14170243408753481498

namespace A091555

/-- `∑[∑[A174725(n+1)-A174726(n+1)]]` -/
def P14170243408753481498.Spec : Prop :=
  ∀ n, P14170243408753481498.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P7102066287155877566

`∑[∑[A055615(n+1)/A000026(n+1)]]`
-/

namespace A091555.P7102066287155877566
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A000026 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P7102066287155877566

namespace A091555

/-- `∑[∑[A055615(n+1)/A000026(n+1)]]` -/
def P7102066287155877566.Spec : Prop :=
  ∀ n, P7102066287155877566.a n = (A091555 (n + 1) : ℚ)

end A091555

/-! ## A091555.P9634260649058298753

`∑[∑[2*A008683(A083817(3*n))]]/2`
-/

namespace A091555.P9634260649058298753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (A083817 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A091555.P9634260649058298753

namespace A091555

/-- `∑[∑[2*A008683(A083817(3*n))]]/2` -/
def P9634260649058298753.Spec : Prop :=
  ∀ n, P9634260649058298753.a n = (A091555 (n + 1) : ℚ)

end A091555

/-! ## A091555.P2530452847160176697

`∑[∑[A181434(n+1)%2]]`
-/

namespace A091555.P2530452847160176697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181434 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P2530452847160176697

namespace A091555

/-- `∑[∑[A181434(n+1)%2]]` -/
def P2530452847160176697.Spec : Prop :=
  ∀ n, P2530452847160176697.a n = A091555 (n + 1)

end A091555

/-! ## A091555.P12578062338851121189

`∑[∑[A225817(A006218(n+1))]]`
-/

namespace A091555.P12578062338851121189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225817 (A006218 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P12578062338851121189

namespace A091555

/-- `∑[∑[A225817(A006218(n+1))]]` -/
def P12578062338851121189.Spec : Prop :=
  ∀ n, P12578062338851121189.a n = A091555 (n + 1)

end A091555

/-!
# A091556: Decimal expansion of 1/(1-Gamma).

The programs for A091556, there is no canonical definition to state claims against.
-/

/-! ## A091556.P2317363364373125247

`A346525(n)+C(2, n+2)`
-/

namespace A091556.P2317363364373125247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346525 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A091556.P2317363364373125247

/-! ## A091556.P12794723531043409813

`A346525(n)+A000007(n)`
-/

namespace A091556.P12794723531043409813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346525 (n + 1) + A000007 n

end

end A091556.P12794723531043409813

/-! ## A091556.P8146216855758234018

`A346525(n)+A008683(A008574(n))`
-/

namespace A091556.P8146216855758234018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346525 (n + 1) + A008683 (A008574 n).toNat

end

end A091556.P8146216855758234018

/-! ## A091556.P15222025159032631983

`A346525(n)-A008683(2*A008574(n))`
-/

namespace A091556.P15222025159032631983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346525 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A091556.P15222025159032631983

/-!
# A091560: Fractional part of e^a(n) is the largest yet.

The programs for A091560, there is no canonical definition to state claims against.
-/

/-! ## A091560.P4396395211262981698

`A110898(A214085(n+1))`
-/

namespace A091560.P4396395211262981698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110898 (A214085 (n + 1)).toNat

end

end A091560.P4396395211262981698

/-!
# A091561: Expansion of (1-2x-sqrt(1-4x+4x^2-4x^3))/(2x^2).

The programs for A091561, there is no canonical definition to state claims against.
-/

/-! ## A091561.P9520459283155296765

`A152225(n+1)`
-/

namespace A091561.P9520459283155296765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 (n + 1)

end

end A091561.P9520459283155296765

/-! ## A091561.P4905170388962200843

`A025247(n+3)`
-/

namespace A091561.P4905170388962200843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025247 (n + 3)

end

end A091561.P4905170388962200843

/-! ## A091561.P4441798714750610533

`A025265(n+3)`
-/

namespace A091561.P4441798714750610533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (n + 3)

end

end A091561.P4441798714750610533

/-! ## A091561.P3735566077767542578

`record[A025265(∑[A115361(n)])]`
-/

namespace A091561.P3735566077767542578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115361 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025265 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091561.P3735566077767542578

/-! ## A091561.P12264171127466239603

`A152171(n)+Δ[A152171(n+1)]`
-/

namespace A091561.P12264171127466239603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152171 n + (f1 (n + 1) - f1 n)

end

end A091561.P12264171127466239603

/-! ## A091561.P7970057722308484763

`A273896(A290743(n+1))`
-/

namespace A091561.P7970057722308484763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273896 (A290743 (n + 1)).toNat

end

end A091561.P7970057722308484763

/-!
# A091562: Triangle read by rows, related to Pascal's triangle, starting with 1, 0, 0.

The programs for A091562, there is no canonical definition to state claims against.
-/

/-! ## A091562.P15320996534111287430

`A091533(n)-A228815(n)`
-/

namespace A091562.P15320996534111287430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n - A228815 n

end

end A091562.P15320996534111287430

/-! ## A091562.P1144429183874879783

`2*A091533(n)-A209167(n+1)`
-/

namespace A091562.P1144429183874879783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091533 n - A209167 (n + 1)

end

end A091562.P1144429183874879783

/-! ## A091562.P6846590373995822855

`A209167(n+1)-2*A228815(n)`
-/

namespace A091562.P6846590373995822855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) - 2 * A228815 n

end

end A091562.P6846590373995822855

/-! ## A091562.P4989783171757289938

`A091533(n)+A205575(n)-A209137(n+1)`
-/

namespace A091562.P4989783171757289938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n + (A205575 n - A209137 (n + 1))

end

end A091562.P4989783171757289938

/-! ## A091562.P4992682093915351461

`A205575(n+1)+A205575(n)-A091533(n+1)`
-/

namespace A091562.P4992682093915351461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205575 (n + 1) + (A205575 n - A091533 (n + 1))

end

end A091562.P4992682093915351461

/-! ## A091562.P12298312417295419427

`A209167(n+1)-A005843(A228815(n))`
-/

namespace A091562.P12298312417295419427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209167 (n + 1) - A005843 (A228815 n).toNat

end

end A091562.P12298312417295419427

/-! ## A091562.P2212793017215412175

`A005843(A091533(n))-A209167(n+1)`
-/

namespace A091562.P2212793017215412175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A091533 n).toNat - A209167 (n + 1)

end

end A091562.P2212793017215412175

/-!
# A091564: Row sums of A090174.

The programs for A091564, there is no canonical definition to state claims against.
-/

/-! ## A091564.P16437681781999558256

`A091563(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A091564.P16437681781999558256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091563 (2 * n) - a (n - 1)

end

end A091564.P16437681781999558256

/-! ## A091564.P9441838298681215419

`∑[A091563(2*n)-A091563(2*n+1)]`
-/

namespace A091564.P9441838298681215419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091563 (2 * n) - A091563 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091564.P9441838298681215419

/-! ## A091564.P10026297103087905567

`A091563(2*n+3)/2`
-/

namespace A091564.P10026297103087905567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091563 (2 * n + 3) : ℚ) / 2

end

end A091564.P10026297103087905567

/-! ## A091564.P1099513204009426576

`A004526(A091563(2*n+3))`
-/

namespace A091564.P1099513204009426576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A091563 (2 * n + 3)).toNat

end

end A091564.P1099513204009426576

/-! ## A091564.P6646596455040481816

`A008619(A091563(2*n+3)-1)`
-/

namespace A091564.P6646596455040481816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A091563 (2 * n + 3) - 1).toNat

end

end A091564.P6646596455040481816

/-!
# A091565: Expansion of (1 - x - sqrt(1 - 2*x + x^2 - 8*x^3)) / (4*x^2) in powers of x.

The programs for A091565, there is no canonical definition to state claims against.
-/

/-! ## A091565.P3298803239899165940

`A025248(n+2)/2`
-/

namespace A091565.P3298803239899165940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025248 (n + 2) : ℚ) / 2

end

end A091565.P3298803239899165940

/-! ## A091565.P5973818576445800286

`A025249((n-1)*a(∏{e}[n+1, ceil(#/2)]))` with `a(0)=0, a(1)=1`
-/

namespace A091565.P5973818576445800286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A025249 (((n : ℤ) - 1) * a (∏ p ∈ Nat.primeFactors (f1 n), ⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉).toNat).toNat

end

end A091565.P5973818576445800286

/-! ## A091565.P11211263051761674577

`A014682(A025248(n+2))`
-/

namespace A091565.P11211263051761674577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A025248 (n + 2)).toNat

end

end A091565.P11211263051761674577

/-! ## A091565.P17240577153163853782

`A273943(lcm(2, A025248(n+2)))`
-/

namespace A091565.P17240577153163853782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A025248 (n + 2)))

end

end A091565.P17240577153163853782

/-! ## A091565.P11879337204178892880

`A273943(A025248(n+2)%A104191(n))`
-/

namespace A091565.P11879337204178892880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A025248 (n + 2)) (A104191 n)).toNat

end

end A091565.P11879337204178892880

/-!
# A091567: Primes p such that p^2-p-1 is prime.

The programs for A091567, there is no canonical definition to state claims against.
-/

/-! ## A091567.P370139820189860070

`p?[A002328(n+1)]`
-/

namespace A091567.P370139820189860070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091567.P370139820189860070

/-! ## A091567.P5320808643686365808

`p?[A125236(n+1)]`
-/

namespace A091567.P5320808643686365808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091567.P5320808643686365808

/-! ## A091567.P16845207889846690388

`A136241(n+1)+1`
-/

namespace A091567.P16845207889846690388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136241 (n + 1) + 1

end

end A091567.P16845207889846690388

/-! ## A091567.P9376529411284678521

`ceil(sqrt(A091568(n+1)))`
-/

namespace A091567.P9376529411284678521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A091568 (n + 1) : ℝ)⌉

end

end A091567.P9376529411284678521

/-! ## A091567.P506574890719618478

`p?[2*A155736(n+1)+1]`
-/

namespace A091567.P506574890719618478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155736 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091567.P506574890719618478

/-! ## A091567.P4018712831607176842

`filter[A125236(n+1), A010051(#)]`
-/

namespace A091567.P4018712831607176842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091567.P4018712831607176842

/-! ## A091567.P4340229931679172863

`∩[A000040(n+1), A125236(n+1)]`
-/

namespace A091567.P4340229931679172863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P4340229931679172863

/-! ## A091567.P9407758348806693927

`∩[A006005(n+1), A125236(n+1)]`
-/

namespace A091567.P9407758348806693927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P9407758348806693927

/-! ## A091567.P16965697007402417255

`∩[A008578(n+1), A125236(n+1)]`
-/

namespace A091567.P16965697007402417255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P16965697007402417255

/-! ## A091567.P17840708003230807955

`∩[A046022(n+1), A125236(n+1)]`
-/

namespace A091567.P17840708003230807955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P17840708003230807955

/-! ## A091567.P2467559282317495948

`∩[A065091(n+1), A125236(n+1)]`
-/

namespace A091567.P2467559282317495948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P2467559282317495948

/-! ## A091567.P17780366329095508592

`∩[A066542(n+1), A125236(n+1)]`
-/

namespace A091567.P17780366329095508592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P17780366329095508592

/-! ## A091567.P13122089461790874873

`∩[A125236(n+1), A158611(n+1)]`
-/

namespace A091567.P13122089461790874873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P13122089461790874873

/-! ## A091567.P14849597904473498645

`∩[A125236(n+1), A174090(n+1)]`
-/

namespace A091567.P14849597904473498645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P14849597904473498645

/-! ## A091567.P5651152101925861711

`∩[A125236(n+1), A175787(n+1)]`
-/

namespace A091567.P5651152101925861711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P5651152101925861711

/-! ## A091567.P4239882685656842678

`∩[A125236(n+1), A182986(n+1)]`
-/

namespace A091567.P4239882685656842678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P4239882685656842678

/-! ## A091567.P18209141082904085427

`∩[A125236(n+1), A227231(n+1)]`
-/

namespace A091567.P18209141082904085427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P18209141082904085427

/-! ## A091567.P17037157517966379186

`∩[A125236(n+1), A284696(n+1)]`
-/

namespace A091567.P17037157517966379186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P17037157517966379186

/-! ## A091567.P10713149173739644805

`∩[A348283(n+1), A125236(n+1)]`
-/

namespace A091567.P10713149173739644805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P10713149173739644805

/-! ## A091567.P14068902753920326395

`∩[A383300(n+1), A125236(n+1)]`
-/

namespace A091567.P14068902753920326395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091567.P14068902753920326395

/-!
# A091568: Primes of the form p^2 - p - 1, where p is prime.

The programs for A091568, there is no canonical definition to state claims against.
-/

/-! ## A091568.P10949028316926488254

`∩[A122395(n+1), A155737(n+1)]`
-/

namespace A091568.P10949028316926488254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P10949028316926488254

/-! ## A091568.P14387894909264373599

`∩[A155737(n+1), A290817(n+1)]`
-/

namespace A091568.P14387894909264373599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P14387894909264373599

/-! ## A091568.P8638229234234472609

`∩[A122395(n+1), A306190(n+1)]`
-/

namespace A091568.P8638229234234472609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P8638229234234472609

/-! ## A091568.P16406329247031402434

`∩[A155737(n+1), A306190(n+1)]`
-/

namespace A091568.P16406329247031402434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P16406329247031402434

/-! ## A091568.P17819720073355888758

`∩[A290817(n+1), A306190(n+1)]`
-/

namespace A091568.P17819720073355888758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P17819720073355888758

/-! ## A091568.P12660458145786047035

`∩[A119959(n+1)-2, A290817(n+1)]`
-/

namespace A091568.P12660458145786047035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P12660458145786047035

/-! ## A091568.P8649617039047083971

`A091567(n+1)*A136241(n+1)-1`
-/

namespace A091568.P8649617039047083971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091567 (n + 1) * A136241 (n + 1) - 1

end

end A091568.P8649617039047083971

/-! ## A091568.P12927937050136897985

`∩[A002327(n+1), A122395(n+1)]`
-/

namespace A091568.P12927937050136897985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P12927937050136897985

/-! ## A091568.P75383548470767954

`∩[A002327(n+1), A306190(n+1)]`
-/

namespace A091568.P75383548470767954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P75383548470767954

/-! ## A091568.P4185244454218620221

`∩[A084720(n+1), A122395(n+1)]`
-/

namespace A091568.P4185244454218620221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P4185244454218620221

/-! ## A091568.P15559250634705048892

`∩[A084720(n+1), A306190(n+1)]`
-/

namespace A091568.P15559250634705048892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P15559250634705048892

/-! ## A091568.P16352325375324092979

`∩[A239709(n+1), A306190(n+1)]`
-/

namespace A091568.P16352325375324092979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P16352325375324092979

/-! ## A091568.P15001387820851985812

`∩[A179273(n+1), A306190(n+1)]`
-/

namespace A091568.P15001387820851985812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P15001387820851985812

/-! ## A091568.P247351229317867235

`∩[A122395(n+1), A125202(n+1)]`
-/

namespace A091568.P247351229317867235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P247351229317867235

/-! ## A091568.P1079429114495724393

`∩[A125202(n+1), A290817(n+1)]`
-/

namespace A091568.P1079429114495724393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091568.P1079429114495724393

/-! ## A091568.P18262082361982845185

`record[A356247(p?[2*n+1])]`
-/

namespace A091568.P18262082361982845185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091568.P18262082361982845185

/-! ## A091568.P15650332860472966376

`A046151(A091567(n+1))`
-/

namespace A091568.P15650332860472966376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (A091567 (n + 1)).toNat

end

end A091568.P15650332860472966376

/-! ## A091568.P8906306754214913409

`A161550(A136241(n+1))`
-/

namespace A091568.P8906306754214913409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (A136241 (n + 1)).toNat

end

end A091568.P8906306754214913409

/-! ## A091568.P4020580833206114345

`record[A209188(A039915(n+2))]`
-/

namespace A091568.P4020580833206114345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A039915 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091568.P4020580833206114345

/-! ## A091568.P6993316761486830679

`record[A356247(A000040(n+2))]`
-/

namespace A091568.P6993316761486830679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091568.P6993316761486830679

/-!
# A091570: Sum of odd proper divisors of n. Sum of the odd divisors of n that are less than n.

The programs for A091570, the canonical program `A091570.P5029982890749552841` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091570 has offset 1).

The definition of A091570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091570.P2754146757316108821

`∑{d}[n+1, #]/xor(n, n+1)-(n+1)*char[2*n]`
-/

namespace A091570.P2754146757316108821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) - (((n + 1) * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ)

end

end A091570.P2754146757316108821

namespace A091570

/-- `∑{d}[n+1, #]/xor(n, n+1)-(n+1)*char[2*n]` -/
def P2754146757316108821.Spec : Prop :=
  ∀ n, P2754146757316108821.a n = (A091570 (n + 1) : ℚ)

end A091570

/-! ## A091570.P11050138638809475051

`A000593(n+1)-C(xor(1, n), n)`
-/

namespace A091570.P11050138638809475051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - (Nat.choose (Nat.xor 1 n) n : ℤ)

end

end A091570.P11050138638809475051

namespace A091570

/-- `A000593(n+1)-C(xor(1, n), n)` -/
def P11050138638809475051.Spec : Prop :=
  ∀ n, P11050138638809475051.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P5029982890749552841

`∑{d}[n+1, (A109043(#)-#)%(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091570

/-- `∑{d}[n+1, (A109043(#)-#)%(n+1)]` -/
def P5029982890749552841.Spec : Prop :=
  ∀ n, P5029982890749552841.a n = A091570 (n + 1)

theorem P5029982890749552841.correct : P5029982890749552841.Spec := by
  intro n
  simp only [A091570, Nat.add_sub_cancel]

end A091570

/-! ## A091570.P10623470225798246378

`A352047(n+1)-A245092(n)`
-/

namespace A091570.P10623470225798246378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352047 (n + 1) - A245092 n

end

end A091570.P10623470225798246378

namespace A091570

/-- `A352047(n+1)-A245092(n)` -/
def P10623470225798246378.Spec : Prop :=
  ∀ n, P10623470225798246378.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P11908456931251486462

`A293903(n+1)+A293901(n+1)`
-/

namespace A091570.P11908456931251486462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293903 (n + 1) + A293901 (n + 1)

end

end A091570.P11908456931251486462

namespace A091570

/-- `A293903(n+1)+A293901(n+1)` -/
def P11908456931251486462.Spec : Prop :=
  ∀ n, P11908456931251486462.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P2215087145028642995

`A000593(n+1)-A193356(n+1)`
-/

namespace A091570.P2215087145028642995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A193356 (n + 1)

end

end A091570.P2215087145028642995

namespace A091570

/-- `A000593(n+1)-A193356(n+1)` -/
def P2215087145028642995.Spec : Prop :=
  ∀ n, P2215087145028642995.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P8311496685276297766

`∑{d}[A000265(n+1), #]-A193356(n+1)`
-/

namespace A091570.P8311496685276297766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A193356 (n + 1)

end

end A091570.P8311496685276297766

namespace A091570

/-- `∑{d}[A000265(n+1), #]-A193356(n+1)` -/
def P8311496685276297766.Spec : Prop :=
  ∀ n, P8311496685276297766.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P1298165910497088404

`∑{d}[A000265(n+1), A000265(#)%(n+1)]`
-/

namespace A091570.P1298165910497088404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000265 d) (n + 1 : ℤ)

end

end A091570.P1298165910497088404

namespace A091570

/-- `∑{d}[A000265(n+1), A000265(#)%(n+1)]` -/
def P1298165910497088404.Spec : Prop :=
  ∀ n, P1298165910497088404.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P17930727951082865993

`∑{d}[n+1, A048272(#)*A062790((n+1)/#)]`
-/

namespace A091570.P17930727951082865993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P17930727951082865993

namespace A091570

/-- `∑{d}[n+1, A048272(#)*A062790((n+1)/#)]` -/
def P17930727951082865993.Spec : Prop :=
  ∀ n, P17930727951082865993.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P16046544804538471167

`∑{d}[n+1, A000593(#)*A157658((n+1)/#)]`
-/

namespace A091570.P16046544804538471167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P16046544804538471167

namespace A091570

/-- `∑{d}[n+1, A000593(#)*A157658((n+1)/#)]` -/
def P16046544804538471167.Spec : Prop :=
  ∀ n, P16046544804538471167.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P15056491669752663904

`∑{d}[n+1, A000265(#)*A296066((n+1)/#)]`
-/

namespace A091570.P15056491669752663904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P15056491669752663904

namespace A091570

/-- `∑{d}[n+1, A000265(#)*A296066((n+1)/#)]` -/
def P15056491669752663904.Spec : Prop :=
  ∀ n, P15056491669752663904.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P6041037155218399369

`∑{d}[n+1, A000010(#)*A325937((n+1)/#)]`
-/

namespace A091570.P6041037155218399369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A325937 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P6041037155218399369

namespace A091570

/-- `∑{d}[n+1, A000010(#)*A325937((n+1)/#)]` -/
def P6041037155218399369.Spec : Prop :=
  ∀ n, P6041037155218399369.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P7786404362966514589

`∑{d}[n+1, A032741(#)*A319997((n+1)/#)]`
-/

namespace A091570.P7786404362966514589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P7786404362966514589

namespace A091570

/-- `∑{d}[n+1, A032741(#)*A319997((n+1)/#)]` -/
def P7786404362966514589.Spec : Prop :=
  ∀ n, P7786404362966514589.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P13728224061597122706

`∑{d}[n+1, A211779(#)*A361019((n+1)/#)]`
-/

namespace A091570.P13728224061597122706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A211779 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P13728224061597122706

namespace A091570

/-- `∑{d}[n+1, A211779(#)*A361019((n+1)/#)]` -/
def P13728224061597122706.Spec : Prop :=
  ∀ n, P13728224061597122706.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P14928684800304265915

`∑{d}[n+1, A033999(#-1)*A051953((n+1)/#)]`
-/

namespace A091570.P14928684800304265915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P14928684800304265915

namespace A091570

/-- `∑{d}[n+1, A033999(#-1)*A051953((n+1)/#)]` -/
def P14928684800304265915.Spec : Prop :=
  ∀ n, P14928684800304265915.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P14296380044022379152

`∑{d}[n+1, A057427(#-1)*A193356((n+1)/#)]`
-/

namespace A091570.P14296380044022379152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091570.P14296380044022379152

namespace A091570

/-- `∑{d}[n+1, A057427(#-1)*A193356((n+1)/#)]` -/
def P14296380044022379152.Spec : Prop :=
  ∀ n, P14296380044022379152.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P17618213642923510393

`∑{d}[A119972(n+1), A193356(#)]-A193356(n+1)`
-/

namespace A091570.P17618213642923510393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d - A193356 (n + 1)

end

end A091570.P17618213642923510393

namespace A091570

/-- `∑{d}[A119972(n+1), A193356(#)]-A193356(n+1)` -/
def P17618213642923510393.Spec : Prop :=
  ∀ n, P17618213642923510393.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P15022748937143827266

`A000593(n+1)-A000035(n+1)*A000265(n+1)`
-/

namespace A091570.P15022748937143827266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A000035 (n + 1) * A000265 (n + 1)

end

end A091570.P15022748937143827266

namespace A091570

/-- `A000593(n+1)-A000035(n+1)*A000265(n+1)` -/
def P15022748937143827266.Spec : Prop :=
  ∀ n, P15022748937143827266.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P10160148573487263153

`A000593(n+1)-A000035(n+1)*A026741(n+1)`
-/

namespace A091570.P10160148573487263153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A000035 (n + 1) * A026741 (n + 1)

end

end A091570.P10160148573487263153

namespace A091570

/-- `A000593(n+1)-A000035(n+1)*A026741(n+1)` -/
def P10160148573487263153.Spec : Prop :=
  ∀ n, P10160148573487263153.a n = A091570 (n + 1)

end A091570

/-! ## A091570.P17372246949350105569

`A000593(n+1)-A000035(n+1)*A316631(n+1)`
-/

namespace A091570.P17372246949350105569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) - A000035 (n + 1) * A316631 (n + 1)

end

end A091570.P17372246949350105569

namespace A091570

/-- `A000593(n+1)-A000035(n+1)*A316631(n+1)` -/
def P17372246949350105569.Spec : Prop :=
  ∀ n, P17372246949350105569.a n = A091570 (n + 1)

end A091570

/-!
# A091571: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type E_8.

The programs for A091571, the canonical program `A091571.P3835739435343640567` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091571 has offset 0).

The definition of A091571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087866, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091571.P3835739435343640567

`7*(n+1)+2*A087866(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091571

/-- `7*(n+1)+2*A087866(n)` -/
def P3835739435343640567.Spec : Prop :=
  ∀ n, P3835739435343640567.a n = A091571 n

theorem P3835739435343640567.correct : P3835739435343640567.Spec := by
  intro n
  simp only [A091571]

end A091571

/-! ## A091571.P11768084776491923214

`A017053(n)+A005408(A087866(n))`
-/

namespace A091571.P11768084776491923214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + A005408 (A087866 n).toNat

end

end A091571.P11768084776491923214

namespace A091571

/-- `A017053(n)+A005408(A087866(n))` -/
def P11768084776491923214.Spec : Prop :=
  ∀ n, P11768084776491923214.a n = A091571 n

end A091571

/-! ## A091571.P15474982595627026915

`A017053(n)+A005408(∑[(-1)^n*A008651(n)])`
-/

namespace A091571.P15474982595627026915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091571.P15474982595627026915

namespace A091571

/-- `A017053(n)+A005408(∑[(-1)^n*A008651(n)])` -/
def P15474982595627026915.Spec : Prop :=
  ∀ n, P15474982595627026915.a n = A091571 n

end A091571

/-! ## A091571.P3458547959543999583

`∑[A010729(A104258(n+1))]`
-/

namespace A091571.P3458547959543999583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (A104258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091571.P3458547959543999583

namespace A091571

/-- `∑[A010729(A104258(n+1))]` -/
def P3458547959543999583.Spec : Prop :=
  ∀ n, P3458547959543999583.a n = A091571 n

end A091571

/-! ## A091571.P1139581806878144115

`∑[A010729(∑[A288348(n)])]`
-/

namespace A091571.P1139581806878144115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091571.P1139581806878144115

namespace A091571

/-- `∑[A010729(∑[A288348(n)])]` -/
def P1139581806878144115.Spec : Prop :=
  ∀ n, P1139581806878144115.a n = A091571 n

end A091571

/-!
# A091572: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type E_7.

The programs for A091572, the canonical program `A091572.P3670585149843474926` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091572 has offset 0).

The definition of A091572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091572.P3670585149843474926

`6*(n+1)+2*A087504(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091572

/-- `6*(n+1)+2*A087504(n)` -/
def P3670585149843474926.Spec : Prop :=
  ∀ n, P3670585149843474926.a n = A091572 n

theorem P3670585149843474926.correct : P3670585149843474926.Spec := by
  intro n
  simp only [A091572]

end A091572

/-! ## A091572.P17198016623609132921

`2*(A087504(n)+A008486(n+1))`
-/

namespace A091572.P17198016623609132921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087504 n + A008486 (n + 1))

end

end A091572.P17198016623609132921

namespace A091572

/-- `2*(A087504(n)+A008486(n+1))` -/
def P17198016623609132921.Spec : Prop :=
  ∀ n, P17198016623609132921.a n = A091572 n

end A091572

/-! ## A091572.P11865814749046249209

`A016969(n)+A005408(A087504(n))`
-/

namespace A091572.P11865814749046249209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + A005408 (A087504 n).toNat

end

end A091572.P11865814749046249209

namespace A091572

/-- `A016969(n)+A005408(A087504(n))` -/
def P11865814749046249209.Spec : Prop :=
  ∀ n, P11865814749046249209.a n = A091572 n

end A091572

/-! ## A091572.P16710045459543037374

`A005843(A087504(n))+Δ[A028896(n)]`
-/

namespace A091572.P16710045459543037374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087504 n).toNat + (f1 (n + 1) - f1 n)

end

end A091572.P16710045459543037374

namespace A091572

/-- `A005843(A087504(n))+Δ[A028896(n)]` -/
def P16710045459543037374.Spec : Prop :=
  ∀ n, P16710045459543037374.a n = A091572 n

end A091572

/-! ## A091572.P9712307610231004149

`A008458(n+1)+A005843(A087504(n))`
-/

namespace A091572.P9712307610231004149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) + A005843 (A087504 n).toNat

end

end A091572.P9712307610231004149

namespace A091572

/-- `A008458(n+1)+A005843(A087504(n))` -/
def P9712307610231004149.Spec : Prop :=
  ∀ n, P9712307610231004149.a n = A091572 n

end A091572

/-! ## A091572.P14095409948926537063

`A016789(A005408(n))+A005408(A087504(n))`
-/

namespace A091572.P14095409948926537063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A005408 n).toNat + A005408 (A087504 n).toNat

end

end A091572.P14095409948926537063

namespace A091572

/-- `A016789(A005408(n))+A005408(A087504(n))` -/
def P14095409948926537063.Spec : Prop :=
  ∀ n, P14095409948926537063.a n = A091572 n

end A091572

/-! ## A091572.P8272027430914143928

`A103517(A016777(n))+A103517(A087504(n))`
-/

namespace A091572.P8272027430914143928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A016777 n).toNat + A103517 (A087504 n).toNat

end

end A091572.P8272027430914143928

namespace A091572

/-- `A103517(A016777(n))+A103517(A087504(n))` -/
def P8272027430914143928.Spec : Prop :=
  ∀ n, P8272027430914143928.a n = A091572 n

end A091572

/-! ## A091572.P16183492185692165715

`A103517(A087504(n)+A016789(n))`
-/

namespace A091572.P16183492185692165715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A087504 n + A016789 n).toNat

end

end A091572.P16183492185692165715

namespace A091572

/-- `A103517(A087504(n)+A016789(n))` -/
def P16183492185692165715.Spec : Prop :=
  ∀ n, P16183492185692165715.a n = A091572 n

end A091572

/-! ## A091572.P16719484722154710654

`A005843(A087504(n)+A008486(n+1))`
-/

namespace A091572.P16719484722154710654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A087504 n + A008486 (n + 1)).toNat

end

end A091572.P16719484722154710654

namespace A091572

/-- `A005843(A087504(n)+A008486(n+1))` -/
def P16719484722154710654.Spec : Prop :=
  ∀ n, P16719484722154710654.a n = A091572 n

end A091572

/-! ## A091572.P11010812052653978495

`A005408(A087504(n)+A008486(n+1))-1`
-/

namespace A091572.P11010812052653978495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A087504 n + A008486 (n + 1)).toNat - 1

end

end A091572.P11010812052653978495

namespace A091572

/-- `A005408(A087504(n)+A008486(n+1))-1` -/
def P11010812052653978495.Spec : Prop :=
  ∀ n, P11010812052653978495.a n = A091572 n

end A091572

/-! ## A091572.P363241757172979061

`2*(A087504(n)+A004525(A091573(n)))`
-/

namespace A091572.P363241757172979061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087504 n + A004525 (A091573 n).toNat)

end

end A091572.P363241757172979061

namespace A091572

/-- `2*(A087504(n)+A004525(A091573(n)))` -/
def P363241757172979061.Spec : Prop :=
  ∀ n, P363241757172979061.a n = A091572 n

end A091572

/-!
# A091573: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type E_6.

The programs for A091573, the canonical program `A091573.P9622999454958180880` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091573 has offset 0).

The definition of A091573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091573.P9622999454958180880

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=7, a(1)=12, a(2)=17, a(3)=24`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A091573

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P9622999454958180880.Spec : Prop :=
  ∀ n, P9622999454958180880.a n = A091573 n

theorem P9622999454958180880.correct : P9622999454958180880.Spec := by
  intro n
  simp only [A091573]

end A091573

/-! ## A091573.P14498180968390934964

`∑[7-and(2, -n)]`
-/

namespace A091573.P14498180968390934964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - Int.land 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091573.P14498180968390934964

namespace A091573

/-- `∑[7-and(2, -n)]` -/
def P14498180968390934964.Spec : Prop :=
  ∀ n, P14498180968390934964.a n = A091573 n

end A091573

/-! ## A091573.P17453331882493274866

`∑[or(5, gcd(2, ∑[n]))]`
-/

namespace A091573.P17453331882493274866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091573.P17453331882493274866

namespace A091573

/-- `∑[or(5, gcd(2, ∑[n]))]` -/
def P17453331882493274866.Spec : Prop :=
  ∀ n, (P17453331882493274866.a n : ℤ) = A091573 n

end A091573

/-! ## A091573.P2723231563160208767

`∑[(-1)^∑[n]+6]`
-/

namespace A091573.P2723231563160208767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091573.P2723231563160208767

namespace A091573

/-- `∑[(-1)^∑[n]+6]` -/
def P2723231563160208767.Spec : Prop :=
  ∀ n, P2723231563160208767.a n = A091573 n

end A091573

/-! ## A091573.P12193642331299379433

`a(n-4)+24` with `a(0)=7, a(1)=12, a(2)=17, a(3)=24`
-/

namespace A091573.P12193642331299379433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 12, 17, 24] fun n a =>
  a (n - 4) + 24

end

end A091573.P12193642331299379433

namespace A091573

/-- `a(n-4)+24` -/
def P12193642331299379433.Spec : Prop :=
  ∀ n, (P12193642331299379433.a n : ℤ) = A091573 n

end A091573

/-! ## A091573.P14607278319686331219

`12*n-a(n-2)` with `a(0)=7, a(1)=12`
-/

namespace A091573.P14607278319686331219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 12] fun n a =>
  (12 * n : ℤ) - a (n - 2)

end

end A091573.P14607278319686331219

namespace A091573

/-- `12*n-a(n-2)` -/
def P14607278319686331219.Spec : Prop :=
  ∀ n, P14607278319686331219.a n = A091573 n

end A091573

/-! ## A091573.P9945160700667033901

`∑[and(2, n-1)+4]+n+1`
-/

namespace A091573.P9945160700667033901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A091573.P9945160700667033901

namespace A091573

/-- `∑[and(2, n-1)+4]+n+1` -/
def P9945160700667033901.Spec : Prop :=
  ∀ n, P9945160700667033901.a n = A091573 n

end A091573

/-! ## A091573.P7015669878491214331

`A056594(n)+6*(n+1)`
-/

namespace A091573.P7015669878491214331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (6 * (n + 1) : ℤ)

end

end A091573.P7015669878491214331

namespace A091573

/-- `A056594(n)+6*(n+1)` -/
def P7015669878491214331.Spec : Prop :=
  ∀ n, P7015669878491214331.a n = A091573 n

end A091573

/-! ## A091573.P14603598120497531852

`abs(6*n+8-A040451(n)%3)-1`
-/

namespace A091573.P14603598120497531852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n + 8 : ℤ) - Int.tmod (A040451 n) 3| - 1

end

end A091573.P14603598120497531852

namespace A091573

/-- `abs(6*n+8-A040451(n)%3)-1` -/
def P14603598120497531852.Spec : Prop :=
  ∀ n, P14603598120497531852.a n = A091573 n

end A091573

/-! ## A091573.P18333489855892724660

`A017053(n)-A290562(n)`
-/

namespace A091573.P18333489855892724660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A290562 n

end

end A091573.P18333489855892724660

namespace A091573

/-- `A017053(n)-A290562(n)` -/
def P18333489855892724660.Spec : Prop :=
  ∀ n, P18333489855892724660.a n = A091573 n

end A091573

/-! ## A091573.P6380449561899752905

`A016969(n)+A056594(n)+1`
-/

namespace A091573.P6380449561899752905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + (A056594 n + 1)

end

end A091573.P6380449561899752905

namespace A091573

/-- `A016969(n)+A056594(n)+1` -/
def P6380449561899752905.Spec : Prop :=
  ∀ n, P6380449561899752905.a n = A091573 n

end A091573

/-! ## A091573.P6355330776970897395

`A004771(n)-A047557(n+1)`
-/

namespace A091573.P6355330776970897395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A047557 (n + 1)

end

end A091573.P6355330776970897395

namespace A091573

/-- `A004771(n)-A047557(n+1)` -/
def P6355330776970897395.Spec : Prop :=
  ∀ n, P6355330776970897395.a n = A091573 n

end A091573

/-! ## A091573.P12738369337557130468

`A016957(n)+A056594(n)+2`
-/

namespace A091573.P12738369337557130468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + (A056594 n + 2)

end

end A091573.P12738369337557130468

namespace A091573

/-- `A016957(n)+A056594(n)+2` -/
def P12738369337557130468.Spec : Prop :=
  ∀ n, P12738369337557130468.a n = A091573 n

end A091573

/-! ## A091573.P8153463446289918909

`A047546(n+1)+A004766(n+1)`
-/

namespace A091573.P8153463446289918909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047546 (n + 1) + A004766 (n + 1)

end

end A091573.P8153463446289918909

namespace A091573

/-- `A047546(n+1)+A004766(n+1)` -/
def P8153463446289918909.Spec : Prop :=
  ∀ n, P8153463446289918909.a n = A091573 n

end A091573

/-! ## A091573.P10137241130232626672

`A047404(n+1)+A016825(n+1)`
-/

namespace A091573.P10137241130232626672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1) + A016825 (n + 1)

end

end A091573.P10137241130232626672

namespace A091573

/-- `A047404(n+1)+A016825(n+1)` -/
def P10137241130232626672.Spec : Prop :=
  ∀ n, P10137241130232626672.a n = A091573 n

end A091573

/-! ## A091573.P4555952272420030173

`A073760(n+1)+A047404(n+1)`
-/

namespace A091573.P4555952272420030173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1) + A047404 (n + 1)

end

end A091573.P4555952272420030173

namespace A091573

/-- `A073760(n+1)+A047404(n+1)` -/
def P4555952272420030173.Spec : Prop :=
  ∀ n, P4555952272420030173.a n = A091573 n

end A091573

/-! ## A091573.P16049876904907636010

`A008706(n+1)+2*A004525(n+1)`
-/

namespace A091573.P16049876904907636010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 1) + 2 * A004525 (n + 1)

end

end A091573.P16049876904907636010

namespace A091573

/-- `A008706(n+1)+2*A004525(n+1)` -/
def P16049876904907636010.Spec : Prop :=
  ∀ n, P16049876904907636010.a n = A091573 n

end A091573

/-! ## A091573.P18097247034522581330

`A047255(n+1)+A047255(n+1)+A016789(n+1)`
-/

namespace A091573.P18097247034522581330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) + (A047255 (n + 1) + A016789 (n + 1))

end

end A091573.P18097247034522581330

namespace A091573

/-- `A047255(n+1)+A047255(n+1)+A016789(n+1)` -/
def P18097247034522581330.Spec : Prop :=
  ∀ n, P18097247034522581330.a n = A091573 n

end A091573

/-! ## A091573.P17770322960834769306

`A047431(n+2)+A004767(n)`
-/

namespace A091573.P17770322960834769306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047431 (n + 2) + A004767 n

end

end A091573.P17770322960834769306

namespace A091573

/-- `A047431(n+2)+A004767(n)` -/
def P17770322960834769306.Spec : Prop :=
  ∀ n, P17770322960834769306.a n = A091573 n

end A091573

/-! ## A091573.P483842594778048036

`A047578(n+2)+A016825(n)`
-/

namespace A091573.P483842594778048036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047578 (n + 2) + A016825 n

end

end A091573.P483842594778048036

namespace A091573

/-- `A047578(n+2)+A016825(n)` -/
def P483842594778048036.Spec : Prop :=
  ∀ n, P483842594778048036.a n = A091573 n

end A091573

/-!
# A091574: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type D_4.

The programs for A091574, the canonical program `A091574.P13885884001668081956` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091574 has offset 0).

The definition of A091574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091574.P13885884001668081956

`∑[Δ[lcm(2, n)]+3]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A091574

/-- `∑[Δ[lcm(2, n)]+3]` -/
def P13885884001668081956.Spec : Prop :=
  ∀ n, P13885884001668081956.a n = A091574 n

theorem P13885884001668081956.correct : P13885884001668081956.Spec := by
  intro n
  simp only [A091574]

end A091574

/-! ## A091574.P11320484740640972704

`(gcd(2, n)+3)*(n+1)`
-/

namespace A091574.P11320484740640972704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 3) * (n + 1)

end

end A091574.P11320484740640972704

namespace A091574

/-- `(gcd(2, n)+3)*(n+1)` -/
def P11320484740640972704.Spec : Prop :=
  ∀ n, (P11320484740640972704.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P16784024369521085646

`(n+1)*(5-n%2)`
-/

namespace A091574.P16784024369521085646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (5 - ((n % 2 : ℕ) : ℤ))

end

end A091574.P16784024369521085646

namespace A091574

/-- `(n+1)*(5-n%2)` -/
def P16784024369521085646.Spec : Prop :=
  ∀ n, P16784024369521085646.a n = A091574 n

end A091574

/-! ## A091574.P5200334385349237505

`(n+1)*(5-and(1, n))`
-/

namespace A091574.P5200334385349237505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (5 - (Nat.land 1 n : ℤ))

end

end A091574.P5200334385349237505

namespace A091574

/-- `(n+1)*(5-and(1, n))` -/
def P5200334385349237505.Spec : Prop :=
  ∀ n, P5200334385349237505.a n = A091574 n

end A091574

/-! ## A091574.P18222284544468526909

`(n+1)*xor(5, and(1, n))`
-/

namespace A091574.P18222284544468526909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 5 (Nat.land 1 n)

end

end A091574.P18222284544468526909

namespace A091574

/-- `(n+1)*xor(5, and(1, n))` -/
def P18222284544468526909.Spec : Prop :=
  ∀ n, (P18222284544468526909.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P11754083911901916454

`xor(1, a(n-2)+9)` with `a(0)=5, a(1)=8`
-/

namespace A091574.P11754083911901916454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n a =>
  Nat.xor 1 (a (n - 2) + 9)

end

end A091574.P11754083911901916454

namespace A091574

/-- `xor(1, a(n-2)+9)` -/
def P11754083911901916454.Spec : Prop :=
  ∀ n, (P11754083911901916454.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P10102428880815048605

`(n+1)*(3-or(n, -2))`
-/

namespace A091574.P10102428880815048605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - Int.lor (n : ℤ) (-2))

end

end A091574.P10102428880815048605

namespace A091574

/-- `(n+1)*(3-or(n, -2))` -/
def P10102428880815048605.Spec : Prop :=
  ∀ n, P10102428880815048605.a n = A091574 n

end A091574

/-! ## A091574.P11238534665260353337

`(char[2*n]+4)*(n+1)`
-/

namespace A091574.P11238534665260353337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 4) * (n + 1)

end

end A091574.P11238534665260353337

namespace A091574

/-- `(char[2*n]+4)*(n+1)` -/
def P11238534665260353337.Spec : Prop :=
  ∀ n, (P11238534665260353337.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P15898410338263602075

`∑[5*8*n]/a(n-1)` with `a(0)=5`
-/

namespace A091574.P15898410338263602075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (8 * n)

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A091574.P15898410338263602075

namespace A091574

/-- `∑[5*8*n]/a(n-1)` -/
def P15898410338263602075.Spec : Prop :=
  ∀ n, P15898410338263602075.a n = (A091574 n : ℚ)

end A091574

/-! ## A091574.P5818280258774584433

`∑{d}[n+2, (n+1)*C(2, #)²]`
-/

namespace A091574.P5818280258774584433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * Nat.choose 2 d ^ 2

end

end A091574.P5818280258774584433

namespace A091574

/-- `∑{d}[n+2, (n+1)*C(2, #)²]` -/
def P5818280258774584433.Spec : Prop :=
  ∀ n, (P5818280258774584433.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P1130630813347260233

`∑{digits}[1-a(n-1), #*(n+1)]` with `a(0)=5`
-/

namespace A091574.P1130630813347260233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * (n + 1)).sum

end

end A091574.P1130630813347260233

namespace A091574

/-- `∑{digits}[1-a(n-1), #*(n+1)]` -/
def P1130630813347260233.Spec : Prop :=
  ∀ n, (P1130630813347260233.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P17407076109646261546

`∏{digits}[1-a(n-1), #*(n+1)]` with `a(0)=5`
-/

namespace A091574.P17407076109646261546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * (n + 1)).prod

end

end A091574.P17407076109646261546

namespace A091574

/-- `∏{digits}[1-a(n-1), #*(n+1)]` -/
def P17407076109646261546.Spec : Prop :=
  ∀ n, (P17407076109646261546.a n : ℤ) = A091574 n

end A091574

/-! ## A091574.P9666036614448913772

`a(n-2)/(1-2/(n+1))` with `a(0)=5, a(1)=8`
-/

namespace A091574.P9666036614448913772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 8] fun n a =>
  a (n - 2) / (1 - 2 / (n + 1 : ℚ))

end

end A091574.P9666036614448913772

namespace A091574

/-- `a(n-2)/(1-2/(n+1))` -/
def P9666036614448913772.Spec : Prop :=
  ∀ n, P9666036614448913772.a n = (A091574 n : ℚ)

end A091574

/-! ## A091574.P5215660127932191593

`∑[a(n-2)+a(n-3)-a(n-1)]` with `a(0)=5, a(1)=3, a(2)=7`
-/

namespace A091574.P5215660127932191593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 7] fun n f1 =>
  f1 (n - 2) + (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091574.P5215660127932191593

namespace A091574

/-- `∑[a(n-2)+a(n-3)-a(n-1)]` -/
def P5215660127932191593.Spec : Prop :=
  ∀ n, P5215660127932191593.a n = A091574 n

end A091574

/-! ## A091574.P17110462297490053641

`∑[A296063(n+1)+4]`
-/

namespace A091574.P17110462297490053641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091574.P17110462297490053641

namespace A091574

/-- `∑[A296063(n+1)+4]` -/
def P17110462297490053641.Spec : Prop :=
  ∀ n, P17110462297490053641.a n = A091574 n

end A091574

/-! ## A091574.P8355106454979894862

`A106833(n+1)+2*(n+1)`
-/

namespace A091574.P8355106454979894862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (n + 1) + (2 * (n + 1) : ℤ)

end

end A091574.P8355106454979894862

namespace A091574

/-- `A106833(n+1)+2*(n+1)` -/
def P8355106454979894862.Spec : Prop :=
  ∀ n, P8355106454979894862.a n = A091574 n

end A091574

/-! ## A091574.P10674641878060089581

`A109043(n+1)+3*(n+1)`
-/

namespace A091574.P10674641878060089581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (n + 1) + (3 * (n + 1) : ℤ)

end

end A091574.P10674641878060089581

namespace A091574

/-- `A109043(n+1)+3*(n+1)` -/
def P10674641878060089581.Spec : Prop :=
  ∀ n, P10674641878060089581.a n = A091574 n

end A091574

/-! ## A091574.P6330164140587036696

`A193356(n+1)+4*(n+1)`
-/

namespace A091574.P6330164140587036696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) + (4 * (n + 1) : ℤ)

end

end A091574.P6330164140587036696

namespace A091574

/-- `A193356(n+1)+4*(n+1)` -/
def P6330164140587036696.Spec : Prop :=
  ∀ n, P6330164140587036696.a n = A091574 n

end A091574

/-! ## A091574.P8234525593864465271

`6*(n+1)-A022998(n+1)`
-/

namespace A091574.P8234525593864465271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A022998 (n + 1)

end

end A091574.P8234525593864465271

namespace A091574

/-- `6*(n+1)-A022998(n+1)` -/
def P8234525593864465271.Spec : Prop :=
  ∀ n, P8234525593864465271.a n = A091574 n

end A091574

/-! ## A091574.P1473158139747582430

`A143988(n+1)-a(n-1)` with `a(0)=5`
-/

namespace A091574.P1473158139747582430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A143988 (n + 1) - a (n - 1)

end

end A091574.P1473158139747582430

namespace A091574

/-- `A143988(n+1)-a(n-1)` -/
def P1473158139747582430.Spec : Prop :=
  ∀ n, P1473158139747582430.a n = A091574 n

end A091574

/-!
# A091575: Poincaré series [or Poincare series] of the preprojective algebra of a Dynkin diagram of type E_8.

The programs for A091575, there is no canonical definition to state claims against.
-/

/-! ## A091575.P17702054579855485105

`A312684(A062399(n)+2)`
-/

namespace A091575.P17702054579855485105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 (A062399 n + 2).toNat

end

end A091575.P17702054579855485105

/-! ## A091575.P12830887827934987879

`A312684(A351870(n)+2)`
-/

namespace A091575.P12830887827934987879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 (A351870 n + 2).toNat

end

end A091575.P12830887827934987879

/-! ## A091575.P14916888255937774523

`∩[A028776(n+1), A312684(n)]`
-/

namespace A091575.P14916888255937774523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091575.P14916888255937774523

/-! ## A091575.P9362779534671312947

`∩[A028777(n+1), A312684(n)]`
-/

namespace A091575.P9362779534671312947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091575.P9362779534671312947

/-! ## A091575.P10351776148983772976

`∑[A053670(val(A268448(3*(n+1)), 2)+3)+1]`
-/

namespace A091575.P10351776148983772976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (SequenceMachineLib.valuation (A268448 (3 * (n + 1))).toNat 2 + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091575.P10351776148983772976

/-!
# A091576: Poincaré series [or Poincare series] of the preprojective algebra of a Dynkin diagram of type E_7.

The programs for A091576, there is no canonical definition to state claims against.
-/

/-! ## A091576.P10156302792178153094

`A091575(A062399(n))-A008825(n)`
-/

namespace A091576.P10156302792178153094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091575 (A062399 n).toNat - A008825 n

end

end A091576.P10156302792178153094

/-!
# A091578: Permutation of primes generated by 2-rowed array shown below.

The programs for A091578, there is no canonical definition to state claims against.
-/

/-! ## A091578.P2431782761765998402

`p?[A025444(n)+A000040(A090964(n))]`
-/

namespace A091578.P2431782761765998402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + A000040 (A090964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091578.P2431782761765998402

/-! ## A091578.P11737809873964410977

`A000040(A090964(n)%A342732(n+1))`
-/

namespace A091578.P11737809873964410977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A090964 n) (A342732 (n + 1))).toNat

end

end A091578.P11737809873964410977

/-! ## A091578.P16607425050695562245

`∑{p}[A000040(A090964(n))^A214956(n+1), #]`
-/

namespace A091578.P16607425050695562245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (A090964 n).toNat : ℚ) ^ (A214956 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A091578.P16607425050695562245

/-! ## A091578.P13588569102084425313

`A000040((A115659(n+1)+1)%A251964(n+1))`
-/

namespace A091578.P13588569102084425313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A115659 (n + 1) + 1) (A251964 (n + 1))).toNat

end

end A091578.P13588569102084425313

/-! ## A091578.P8972602823435543072

`A266342(A136074(n+1))+A000040(A090964(n))`
-/

namespace A091578.P8972602823435543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266342 (A136074 (n + 1)).toNat + A000040 (A090964 n).toNat

end

end A091578.P8972602823435543072

/-! ## A091578.P18031382871211929623

`A000040(A090964(n))%A102357(A056126(n+1))`
-/

namespace A091578.P18031382871211929623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A090964 n).toNat) (A102357 (A056126 (n + 1)).toNat)

end

end A091578.P18031382871211929623

/-! ## A091578.P11353002984218487341

`A054973(A128629(n+1)²+1)+A000040(A090964(n))`
-/

namespace A091578.P11353002984218487341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A128629 (n + 1) ^ 2 + 1).toNat + A000040 (A090964 n).toNat

end

end A091578.P11353002984218487341

/-! ## A091578.P7996122759363898538

`A036987(A000040(n+1)²)+A000040(A090964(n))`
-/

namespace A091578.P7996122759363898538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A000040 (n + 1) ^ 2).toNat + A000040 (A090964 n).toNat

end

end A091578.P7996122759363898538

/-!
# A091579: Lengths of suffix blocks associated with A090822.

The programs for A091579, there is no canonical definition to state claims against.
-/

/-! ## A091579.P1403925034025886791

`Δ[A092432(A028310(n))]+floor(acot(n))`
-/

namespace A091579.P1403925034025886791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A091579.P1403925034025886791

/-! ## A091579.P17995452554190047459

`A000007(n)+Δ[A092432(A028310(n))]`
-/

namespace A091579.P17995452554190047459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A091579.P17995452554190047459

/-! ## A091579.P17610371637498739280

`Δ[A092432(A028310(n))+A057427(n)]`
-/

namespace A091579.P17610371637498739280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091579.P17610371637498739280

/-! ## A091579.P5833498502159998724

`Δ[A178334(n)+A092432(A028310(n))]`
-/

namespace A091579.P5833498502159998724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A092432 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091579.P5833498502159998724

/-! ## A091579.P12981361776631458168

`Δ[A092432(A028310(n))-A054977(n)]`
-/

namespace A091579.P12981361776631458168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091579.P12981361776631458168

/-! ## A091579.P14271575259300961360

`Δ[A092432(A028310(n))+A000122(n²)]`
-/

namespace A091579.P14271575259300961360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A028310 n).toNat + A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091579.P14271575259300961360

/-! ## A091579.P2048089716843599024

`Δ[A092432(A028310(n))+A019426(2*n)]`
-/

namespace A091579.P2048089716843599024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A028310 n).toNat + A019426 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091579.P2048089716843599024

/-! ## A091579.P8136389510666214260

`Δ[A092432(A233583(n+1))%A000051(n)]`
-/

namespace A091579.P8136389510666214260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092432 (A233583 (n + 1)).toNat) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091579.P8136389510666214260

/-!
# A091580: 

The programs for A091580, there is no canonical definition to state claims against.
-/

/-! ## A091580.P427735032232380382

`A088669(A000196(n²))`
-/

namespace A091580.P427735032232380382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088669 (A000196 (n ^ 2)).toNat

end

end A091580.P427735032232380382

/-! ## A091580.P1231075908613204841

`A164660(n)²*A088669(n)`
-/

namespace A091580.P1231075908613204841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n ^ 2 * A088669 n

end

end A091580.P1231075908613204841

/-! ## A091580.P1376453928037072500

`A088669(n)+A000122((1-n)²+2)`
-/

namespace A091580.P1376453928037072500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088669 n + A000122 ((1 - (n : ℤ)) ^ 2 + 2).toNat

end

end A091580.P1376453928037072500

/-! ## A091580.P3476647521663301429

`A088669(n)%A333980((1-n)²+1)`
-/

namespace A091580.P3476647521663301429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088669 n) (A333980 ((1 - (n : ℤ)) ^ 2 + 1).toNat)

end

end A091580.P3476647521663301429

/-! ## A091580.P17851576483985043182

`A088669(n)+A080224(A002061(n))`
-/

namespace A091580.P17851576483985043182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088669 n + A080224 (A002061 n).toNat

end

end A091580.P17851576483985043182

/-! ## A091580.P11416416577975867842

`A088669(n)+A000007(A325685(n))`
-/

namespace A091580.P11416416577975867842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088669 n + A000007 (A325685 n).toNat

end

end A091580.P11416416577975867842

/-! ## A091580.P8895685737073122330

`A088669(n)*A152157(A000384(n))`
-/

namespace A091580.P8895685737073122330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088669 n * A152157 (A000384 n).toNat

end

end A091580.P8895685737073122330

/-! ## A091580.P6753569172448774846

`A110270(A144834(2*n+5))+A088669(n)`
-/

namespace A091580.P6753569172448774846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110270 (A144834 (2 * n + 5)).toNat + A088669 n

end

end A091580.P6753569172448774846

/-! ## A091580.P18049982204396974919

`A088669(n)+A000035(∑[2*n])`
-/

namespace A091580.P18049982204396974919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088669 n + A000035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091580.P18049982204396974919

/-! ## A091580.P17491797011783867598

`A088669(n)%A088144(A049092(n+1))`
-/

namespace A091580.P17491797011783867598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088669 n) (A088144 (A049092 (n + 1)).toNat)

end

end A091580.P17491797011783867598

/-!
# A091582: Number of partitions of the n-th decimal palindrome.

The programs for A091582, there is no canonical definition to state claims against.
-/

/-! ## A091582.P14904229037202267987

`A000041(A002113(n+1))`
-/

namespace A091582.P14904229037202267987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002113 (n + 1)).toNat

end

end A091582.P14904229037202267987

/-! ## A091582.P5519028777533066100

`A000041(record[A047813(n)])`
-/

namespace A091582.P5519028777533066100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091582.P5519028777533066100

/-! ## A091582.P2255151268020363002

`A000041(record[A262087(n)])`
-/

namespace A091582.P2255151268020363002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091582.P2255151268020363002

/-! ## A091582.P9857094287672101188

`A000041(record[A262188(n)])`
-/

namespace A091582.P9857094287672101188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091582.P9857094287672101188

/-! ## A091582.P7702928150562816772

`A000041(record[A265525(n)])`
-/

namespace A091582.P7702928150562816772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091582.P7702928150562816772

/-! ## A091582.P7066572023893196324

`A000041(record[A331472(n)])`
-/

namespace A091582.P7066572023893196324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091582.P7066572023893196324

/-! ## A091582.P16005054333906578747

`A000041(eq[0, A056965(n)])`
-/

namespace A091582.P16005054333906578747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P16005054333906578747

/-! ## A091582.P7281469815094829324

`A000041(eq[0, A064834(n)])`
-/

namespace A091582.P7281469815094829324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P7281469815094829324

/-! ## A091582.P6037827794121027494

`A000041(eq[0, A261424(n)])`
-/

namespace A091582.P6037827794121027494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P6037827794121027494

/-! ## A091582.P9719360607701775190

`A000041(eq[0, A319387(n)])`
-/

namespace A091582.P9719360607701775190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P9719360607701775190

/-! ## A091582.P16798276767065202072

`A000041(lt[A261424(n), 1])`
-/

namespace A091582.P16798276767065202072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A091582.P16798276767065202072

/-! ## A091582.P5483074765106803889

`A000041(lt[A319387(n), 1])`
-/

namespace A091582.P5483074765106803889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A091582.P5483074765106803889

/-! ## A091582.P7635860944689818509

`A000041(lt[A338827(n), 1])`
-/

namespace A091582.P7635860944689818509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A091582.P7635860944689818509

/-! ## A091582.P4785093689063705656

`A000041(eq[n, A004086(n)])`
-/

namespace A091582.P4785093689063705656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P4785093689063705656

/-! ## A091582.P5767189042771031144

`A000041(eq[n, A020485(n)])`
-/

namespace A091582.P5767189042771031144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P5767189042771031144

/-! ## A091582.P4440469324004970331

`A000041(eq[n, A331472(n)])`
-/

namespace A091582.P4440469324004970331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091582.P4440469324004970331

/-! ## A091582.P11232162154283027491

`A035363(2*A002113(n+1))`
-/

namespace A091582.P11232162154283027491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A002113 (n + 1)).toNat

end

end A091582.P11232162154283027491

/-! ## A091582.P5048393377606428106

`A035363(A002113(n+1)+A002113(n+1))`
-/

namespace A091582.P5048393377606428106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A002113 (n + 1) + A002113 (n + 1)).toNat

end

end A091582.P5048393377606428106

/-!
# A091583: Number of partitions of the n-th decimal palindrome into distinct integers.

The programs for A091583, there is no canonical definition to state claims against.
-/

/-! ## A091583.P16192190662706037524

`A000009(A002113(n+1))`
-/

namespace A091583.P16192190662706037524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002113 (n + 1)).toNat

end

end A091583.P16192190662706037524

/-! ## A091583.P9543788971655923047

`A000009(record[A047813(n)])`
-/

namespace A091583.P9543788971655923047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091583.P9543788971655923047

/-! ## A091583.P8770354638865951254

`A000009(record[A331472(n)])`
-/

namespace A091583.P8770354638865951254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091583.P8770354638865951254

/-! ## A091583.P18051517647829916793

`A000009(eq[0, A056965(n)])`
-/

namespace A091583.P18051517647829916793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091583.P18051517647829916793

/-! ## A091583.P10376950751488633879

`A000009(eq[0, A064834(n)])`
-/

namespace A091583.P10376950751488633879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091583.P10376950751488633879

/-! ## A091583.P13189741950660073485

`A000009(eq[n, A004086(n)])`
-/

namespace A091583.P13189741950660073485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091583.P13189741950660073485

/-! ## A091583.P9751810635141722577

`A035457(2*A002113(n+1))`
-/

namespace A091583.P9751810635141722577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * A002113 (n + 1)).toNat

end

end A091583.P9751810635141722577

/-!
# A091585: Number of partitions of the n-th decimal palindrome into distinct decimal palindromes.

The programs for A091585, there is no canonical definition to state claims against.
-/

/-! ## A091585.P16218971075183725887

`A091581(A110751(n+1))`
-/

namespace A091585.P16218971075183725887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A110751 (n + 1)).toNat

end

end A091585.P16218971075183725887

/-! ## A091585.P5413501333779506604

`A091581(A002113(n+2))`
-/

namespace A091585.P5413501333779506604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091581 (A002113 (n + 2)).toNat

end

end A091585.P5413501333779506604

/-!
# A091586: First differences of A090822.

The programs for A091586, there is no canonical definition to state claims against.
-/

/-! ## A091586.P996345848624587594

`Δ[A090822(n+1)]`
-/

namespace A091586.P996345848624587594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091586.P996345848624587594

/-! ## A091586.P14516256361934914309

`Δ[dr(A090822(n-log2(1/2)))]`
-/

namespace A091586.P14516256361934914309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090822 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091586.P14516256361934914309

/-! ## A091586.P5745732186585090119

`A090822(n+2)-A090822(n+1)`
-/

namespace A091586.P5745732186585090119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 2) - A090822 (n + 1)

end

end A091586.P5745732186585090119

/-! ## A091586.P9739571069217709688

`Δ[A090822(n-log2(1/2))]*A057427(n)`
-/

namespace A091586.P9739571069217709688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 n

end

end A091586.P9739571069217709688

/-! ## A091586.P1132753733365340391

`Δ[A093955(n+1)]`
-/

namespace A091586.P1132753733365340391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091586.P1132753733365340391

/-! ## A091586.P6813057871549742704

`A093955(n+2)-A093955(n+1)`
-/

namespace A091586.P6813057871549742704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (n + 2) - A093955 (n + 1)

end

end A091586.P6813057871549742704

/-! ## A091586.P16631734958958454625

`Δ[Δ[A091413(n)]]`
-/

namespace A091586.P16631734958958454625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091586.P16631734958958454625

/-! ## A091586.P7539962820512545233

`Δ[A156988(A064664(n+1))]`
-/

namespace A091586.P7539962820512545233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156988 (A064664 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091586.P7539962820512545233

/-!
# A091587: Records in A091579.

The programs for A091587, there is no canonical definition to state claims against.
-/

/-! ## A091587.P14583047973156696565

`A091588(n)+7%A092335(n+1)`
-/

namespace A091587.P14583047973156696565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 n + Int.tmod 7 (A092335 (n + 1))

end

end A091587.P14583047973156696565

/-! ## A091587.P13567394850656444244

`record[A091579(n+1)]`
-/

namespace A091587.P13567394850656444244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091587.P13567394850656444244

/-! ## A091587.P12699146800062586791

`record[A091579(A008619(n))]%A005051(n)`
-/

namespace A091587.P12699146800062586791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091579 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005051 n)

end

end A091587.P12699146800062586791

/-! ## A091587.P10050169406497082810

`record[A091579(A028310(n))]%A005051(n)`
-/

namespace A091587.P10050169406497082810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091579 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A005051 n)

end

end A091587.P10050169406497082810

/-! ## A091587.P4841241690778179036

`record[A091579(A008619(n))%A270285(n)]`
-/

namespace A091587.P4841241690778179036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091579 (A008619 n).toNat) (A270285 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091587.P4841241690778179036

/-!
# A091588: A smoothed version of A091587.

The programs for A091588, there is no canonical definition to state claims against.
-/

/-! ## A091588.P18389969368338240294

`A047926(n)+2*A094176(n)`
-/

namespace A091588.P18389969368338240294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n + 2 * A094176 n

end

end A091588.P18389969368338240294

/-! ## A091588.P7299163521508352523

`A091587(n)-7%A092335(n+1)`
-/

namespace A091588.P7299163521508352523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091587 n - Int.tmod 7 (A092335 (n + 1))

end

end A091588.P7299163521508352523

/-! ## A091588.P12107135150209498811

`A047926(n)+A005843(A094176(n))`
-/

namespace A091588.P12107135150209498811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n + A005843 (A094176 n).toNat

end

end A091588.P12107135150209498811

/-! ## A091588.P12367968233200788344

`record[A091579(n+1)-A083912(A235791(3*n+5)+1)]`
-/

namespace A091588.P12367968233200788344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091579 (n + 1) - A083912 (A235791 (3 * n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091588.P12367968233200788344

/-! ## A091588.P9036181323757313249

`A028310(A091587(n)-A091970(n+1))`
-/

namespace A091588.P9036181323757313249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A091587 n - A091970 (n + 1)).toNat

end

end A091588.P9036181323757313249

/-!
# A091590: Number of terms in the simple continued fraction for the 10^n-th harmonic number, H_n = sum_{k=1 to n} (1/k).

The programs for A091590, there is no canonical definition to state claims against.
-/

/-! ## A091590.P4947366818832152584

`A055573(10^n)`
-/

namespace A091590.P4947366818832152584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055573 (10 ^ n)

end

end A091590.P4947366818832152584

/-!
# A091591: Number of pairs of twin primes between n^2 and (n+1)^2.

The programs for A091591, the canonical program `A091591.P851275186947517392` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091591 has offset 3).

The definition of A091591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091591.P851275186947517392

`A263204(n+2)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091591

/-- `A263204(n+2)-a(n-1)` -/
def P851275186947517392.Spec : Prop :=
  ∀ n, P851275186947517392.a n = A091591 (n + 3)

theorem P851275186947517392.correct : P851275186947517392.Spec := by
  intro n
  simp only [A091591, Nat.add_sub_cancel]

end A091591

/-! ## A091591.P9371655363259570556

`Δ[A071538((n+3)²)]`
-/

namespace A091591.P9371655363259570556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 ((n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091591.P9371655363259570556

namespace A091591

/-- `Δ[A071538((n+3)²)]` -/
def P9371655363259570556.Spec : Prop :=
  ∀ n, P9371655363259570556.a n = A091591 (n + 3)

end A091591

/-! ## A091591.P17381700335964249387

`abs(Δ[A071538(A000290(n+3))])`
-/

namespace A091591.P17381700335964249387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000290 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A091591.P17381700335964249387

namespace A091591

/-- `abs(Δ[A071538(A000290(n+3))])` -/
def P17381700335964249387.Spec : Prop :=
  ∀ n, P17381700335964249387.a n = A091591 (n + 3)

end A091591

/-! ## A091591.P7803321283318664082

`Δ[A071538(A000290(n+3))]%A007528(n+1)`
-/

namespace A091591.P7803321283318664082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000290 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A007528 (n + 1))

end

end A091591.P7803321283318664082

namespace A091591

/-- `Δ[A071538(A000290(n+3))]%A007528(n+1)` -/
def P7803321283318664082.Spec : Prop :=
  ∀ n, P7803321283318664082.a n = A091591 (n + 3)

end A091591

/-! ## A091591.P4300193933568621025

`-Δ[A071538(A000290(n+3))]*A057428(n+1)`
-/

namespace A091591.P4300193933568621025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A000290 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n) * A057428 (n + 1))

end

end A091591.P4300193933568621025

namespace A091591

/-- `-Δ[A071538(A000290(n+3))]*A057428(n+1)` -/
def P4300193933568621025.Spec : Prop :=
  ∀ n, P4300193933568621025.a n = A091591 (n + 3)

end A091591

/-!
# A091592: Numbers n such that there are no twin primes between n^2 and (n+1)^2.

The programs for A091592, there is no canonical definition to state claims against.
-/

/-! ## A091592.P11366508307847817049

`eq[0, A138205(n+1)]+1`
-/

namespace A091592.P11366508307847817049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091592.P11366508307847817049

/-! ## A091592.P6537369049036878583

`lt[A143509(n+1), 3]+1`
-/

namespace A091592.P6537369049036878583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143509 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091592.P6537369049036878583

/-! ## A091592.P13004967769273584117

`record[gcd(n+3, A091591(n+3))]`
-/

namespace A091592.P13004967769273584117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A091591 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091592.P13004967769273584117

/-! ## A091592.P14158042904283660296

`eq[A000038(n), A143509(n+1)]+1`
-/

namespace A091592.P14158042904283660296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091592.P14158042904283660296

/-! ## A091592.P18176499295509001765

`A138191(2*n+3)+lt[A138205(n+1), 1]`
-/

namespace A091592.P18176499295509001765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138205 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (2 * n + 3) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A091592.P18176499295509001765

/-!
# A091593: Reversion of Jacobsthal numbers A001045.

The programs for A091593, there is no canonical definition to state claims against.
-/

/-! ## A091593.P11314750629962600658

`-A152681(n+1)/2`
-/

namespace A091593.P11314750629962600658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A152681 (n + 1) : ℚ) / 2)

end

end A091593.P11314750629962600658

/-! ## A091593.P2591434499773319576

`A000038(n+1)-A152681(n+1)/2`
-/

namespace A091593.P2591434499773319576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A152681 (n + 1) : ℚ) / 2

end

end A091593.P2591434499773319576

/-! ## A091593.P8977113609812258458

`A152681(n+1)/(A153881(n+2)-1)`
-/

namespace A091593.P8977113609812258458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152681 (n + 1) : ℚ) / (A153881 (n + 2) - 1 : ℚ)

end

end A091593.P8977113609812258458

/-! ## A091593.P147956858498788542

`A152681(n+1)/A280560(2*n+1)`
-/

namespace A091593.P147956858498788542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152681 (n + 1) : ℚ) / (A280560 (2 * n + 1) : ℚ)

end

end A091593.P147956858498788542

/-! ## A091593.P10774329649153374707

`A193356(2*(n+1))-A152681(n+1)/2`
-/

namespace A091593.P10774329649153374707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193356 (2 * (n + 1)) : ℚ) - (A152681 (n + 1) : ℚ) / 2

end

end A091593.P10774329649153374707

/-! ## A091593.P15351955344160559854

`A153881(2*(n+1))/2*A152681(n+1)`
-/

namespace A091593.P15351955344160559854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153881 (2 * (n + 1)) : ℚ) / 2 * (A152681 (n + 1) : ℚ)

end

end A091593.P15351955344160559854

/-! ## A091593.P17868266594098124588

`A152681(n+1)/(A057300(2*n)-A057300(2*n+1))`
-/

namespace A091593.P17868266594098124588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152681 (n + 1) : ℚ) / (A057300 (2 * n) - A057300 (2 * n + 1) : ℚ)

end

end A091593.P17868266594098124588

/-! ## A091593.P16925671415357255320

`∏[-ratio[A154825(n)]]`
-/

namespace A091593.P16925671415357255320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154825 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091593.P16925671415357255320

/-! ## A091593.P5525322654599058820

`A125695(n+1)/2`
-/

namespace A091593.P5525322654599058820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125695 (n + 1) : ℚ) / 2

end

end A091593.P5525322654599058820

/-! ## A091593.P13928420433574142387

`2*A154825(n+1)/A280560(n+1)`
-/

namespace A091593.P13928420433574142387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A154825 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ))

end

end A091593.P13928420433574142387

/-!
# A091594: Triangle read by rows: T(n,m) := Sum_{k=0..floor((n-m)/2)} binomial(n-2k,m) * binomial(n-m-k,k).

The programs for A091594, there is no canonical definition to state claims against.
-/

/-! ## A091594.P7390595013618894593

`A210789(A038722(n+1))-A326291(A036561(n))`
-/

namespace A091594.P7390595013618894593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210789 (A038722 (n + 1)).toNat - A326291 (A036561 n).toNat

end

end A091594.P7390595013618894593

/-! ## A091594.P15181617551111361345

`A260999(2*A172381(n))`
-/

namespace A091594.P15181617551111361345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (2 * A172381 n).toNat

end

end A091594.P15181617551111361345

/-! ## A091594.P8096291650389238257

`A113764(A155083(n))`
-/

namespace A091594.P8096291650389238257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113764 (A155083 n).toNat

end

end A091594.P8096291650389238257

/-! ## A091594.P3099463601374015920

`A117707(A210636(n))`
-/

namespace A091594.P3099463601374015920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A210636 n).toNat

end

end A091594.P3099463601374015920

/-! ## A091594.P12838532348241447032

`A113137(A391610(n))`
-/

namespace A091594.P12838532348241447032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113137 (A391610 n).toNat

end

end A091594.P12838532348241447032

/-!
# A091595: Triangle read by rows: T(n,m) := Sum_{k=0..floor((n-m)/2)} binomial(n-2k,m) * binomial(n-m-k,k) * 2^k.

The programs for A091595, there is no canonical definition to state claims against.
-/

/-! ## A091595.P5004542535007778154

`A102683(A022345(n))+A091597(n)`
-/

namespace A091595.P5004542535007778154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A022345 n).toNat + A091597 n

end

end A091595.P5004542535007778154

/-! ## A091595.P16851718662430964102

`A335453(A335448(n+1))+A091597(n)`
-/

namespace A091595.P16851718662430964102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A335448 (n + 1)).toNat + A091597 n

end

end A091595.P16851718662430964102

/-! ## A091595.P16581971300691215013

`A163563(A039598(n))`
-/

namespace A091595.P16581971300691215013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A039598 n).toNat

end

end A091595.P16581971300691215013

/-! ## A091595.P16997127291109115186

`A143824(∑{d}[A129652(n), #])`
-/

namespace A091595.P16997127291109115186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A091595.P16997127291109115186

/-! ## A091595.P15487967981287743783

`A285189(A193673(n)+A118654(n+1))`
-/

namespace A091595.P15487967981287743783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A193673 n + A118654 (n + 1)).toNat

end

end A091595.P15487967981287743783

/-!
# A091596: Expansion of x*(1-2*x^2)/(1-x-2*x^2)^2.

The programs for A091596, the canonical program `A091596.P1777650357263285715` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091596 has offset 0).

The definition of A091596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091596.P1777650357263285715

`((3*n+8)*2^n+(3*n-8)*(-1)^n)/27`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A091596

/-- `((3*n+8)*2^n+(3*n-8)*(-1)^n)/27` -/
def P1777650357263285715.Spec : Prop :=
  ∀ n, P1777650357263285715.a n = (A091596 n : ℚ)

end A091596

/-! ## A091596.P13505810491932555458

`A000035(n)+∑[A280399(n+1)]`
-/

namespace A091596.P13505810491932555458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091596.P13505810491932555458

namespace A091596

/-- `A000035(n)+∑[A280399(n+1)]` -/
def P13505810491932555458.Spec : Prop :=
  ∀ n, P13505810491932555458.a n = A091596 n

end A091596

/-! ## A091596.P12602125659742199529

`∑[A280399(n+1)+A062157(n)]`
-/

namespace A091596.P12602125659742199529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (n + 1) + A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091596.P12602125659742199529

namespace A091596

/-- `∑[A280399(n+1)+A062157(n)]` -/
def P12602125659742199529.Spec : Prop :=
  ∀ n, P12602125659742199529.a n = A091596 n

end A091596

/-! ## A091596.P13722663958558014692

`Δ[A004526(n)]+∑[A280399(n+1)]`
-/

namespace A091596.P13722663958558014692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A091596.P13722663958558014692

namespace A091596

/-- `Δ[A004526(n)]+∑[A280399(n+1)]` -/
def P13722663958558014692.Spec : Prop :=
  ∀ n, P13722663958558014692.a n = A091596 n

end A091596

/-! ## A091596.P6818221448661900644

`round(A178748(n)/3)`
-/

namespace A091596.P6818221448661900644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178748 n : ℚ) / 3)

end

end A091596.P6818221448661900644

namespace A091596

/-- `round(A178748(n)/3)` -/
def P6818221448661900644.Spec : Prop :=
  ∀ n, P6818221448661900644.a n = A091596 n

end A091596

/-! ## A091596.P944651068828460072

`A178748(n)-A127976(n+1)`
-/

namespace A091596.P944651068828460072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178748 n - A127976 (n + 1)

end

end A091596.P944651068828460072

namespace A091596

/-- `A178748(n)-A127976(n+1)` -/
def P944651068828460072.Spec : Prop :=
  ∀ n, P944651068828460072.a n = A091596 n

end A091596

/-! ## A091596.P14789791947245686944

`A001045(n)+A073371(n)-A059570(n+1)`
-/

namespace A091596.P14789791947245686944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A073371 n - A059570 (n + 1))

end

end A091596.P14789791947245686944

namespace A091596

/-- `A001045(n)+A073371(n)-A059570(n+1)` -/
def P14789791947245686944.Spec : Prop :=
  ∀ n, P14789791947245686944.a n = A091596 n

end A091596

/-! ## A091596.P17926776753760872288

`A102713(n+1)+A001045(n)-A073371(n)`
-/

namespace A091596.P17926776753760872288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102713 (n + 1) + (A001045 n - A073371 n)

end

end A091596.P17926776753760872288

namespace A091596

/-- `A102713(n+1)+A001045(n)-A073371(n)` -/
def P17926776753760872288.Spec : Prop :=
  ∀ n, P17926776753760872288.a n = A091596 n

end A091596

/-! ## A091596.P16183473799496595481

`A078008(n+1)+A127979(n+1)-A127976(n+2)`
-/

namespace A091596.P16183473799496595481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + (A127979 (n + 1) - A127976 (n + 2))

end

end A091596.P16183473799496595481

namespace A091596

/-- `A078008(n+1)+A127979(n+1)-A127976(n+2)` -/
def P16183473799496595481.Spec : Prop :=
  ∀ n, P16183473799496595481.a n = A091596 n

end A091596

/-!
# A091597: Triangle read by rows: T(n,0) = A001045(n+1), T(n,n)=1, T(n,m) = T(n-1,m-1) + T(n-1,m).

The programs for A091597, there is no canonical definition to state claims against.
-/

/-! ## A091597.P11124531095531252939

`2*A091598(n)-A112465(n)`
-/

namespace A091597.P11124531095531252939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091598 n - A112465 n

end

end A091597.P11124531095531252939

/-! ## A091597.P12599647750121012494

`A091598(comp[∑[n]])`
-/

namespace A091597.P12599647750121012494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091597.P12599647750121012494

/-! ## A091597.P7790543948154166685

`or(char[1], A091598(A014132(n+1)))`
-/

namespace A091597.P7790543948154166685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091598 (A014132 (n + 1)).toNat)

end

end A091597.P7790543948154166685

/-! ## A091597.P16619550287634730877

`A091598(A014132(n+1))+A000007(n+1)`
-/

namespace A091597.P16619550287634730877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A091597.P16619550287634730877

/-! ## A091597.P13683433123095004179

`A003557(∏{p}[n+1, #])*A091598(A014132(n+1))`
-/

namespace A091597.P13683433123095004179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n), p) * A091598 (A014132 (n + 1)).toNat

end

end A091597.P13683433123095004179

/-! ## A091597.P3026933372365987952

`A008683(A006881(n+1))*A091598(A014132(n+1))`
-/

namespace A091597.P3026933372365987952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006881 (n + 1)).toNat * A091598 (A014132 (n + 1)).toNat

end

end A091597.P3026933372365987952

/-! ## A091597.P4264399030550910575

`2*A091598(A014132(n+1))/A000034(A109613(n))`
-/

namespace A091597.P4264399030550910575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A000034 (A109613 n).toNat : ℚ)

end

end A091597.P4264399030550910575

/-! ## A091597.P9096193280614869610

`2*A091598(A014132(n+1))/A000034(A000265(n+1))`
-/

namespace A091597.P9096193280614869610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A000034 (A000265 (n + 1)).toNat : ℚ)

end

end A091597.P9096193280614869610

/-! ## A091597.P10003113075043119733

`2*A091598(A014132(n+1))/A020639(A022144(n+1))`
-/

namespace A091597.P10003113075043119733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A020639 (A022144 (n + 1)).toNat : ℚ)

end

end A091597.P10003113075043119733

/-! ## A091597.P8015365449208922457

`A091598(A014132(n+1))%A000041(n+2)`
-/

namespace A091597.P8015365449208922457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091598 (A014132 (n + 1)).toNat) (A000041 (n + 2))

end

end A091597.P8015365449208922457

/-! ## A091597.P9991163037703589896

`2*A091598(A014132(n+1))/A000005(A240710(n+1))`
-/

namespace A091597.P9991163037703589896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A240710 (n + 1)).toNat : ℚ)

end

end A091597.P9991163037703589896

/-! ## A091597.P17940449899424882208

`2*A091598(A014132(n+1))/A000005(A059309(n+1))`
-/

namespace A091597.P17940449899424882208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A059309 (n + 1)).toNat : ℚ)

end

end A091597.P17940449899424882208

/-! ## A091597.P641796201395323500

`A091598(A014132(n+1))+A000035(2*n)`
-/

namespace A091597.P641796201395323500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 (A014132 (n + 1)).toNat + A000035 (2 * n)

end

end A091597.P641796201395323500

/-! ## A091597.P6855674506120205978

`A000034(2*n)*A091598(A014132(n+1))`
-/

namespace A091597.P6855674506120205978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A091598 (A014132 (n + 1)).toNat

end

end A091597.P6855674506120205978

/-! ## A091597.P12913128744139963100

`2*A091598(A014132(n+1))/A000005(A059308(n+1))`
-/

namespace A091597.P12913128744139963100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A000005 (A059308 (n + 1)).toNat : ℚ)

end

end A091597.P12913128744139963100

/-! ## A091597.P4742300978254302310

`A014963(A017137(n))*A091598(A014132(n+1))`
-/

namespace A091597.P4742300978254302310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A091598 (A014132 (n + 1)).toNat

end

end A091597.P4742300978254302310

/-! ## A091597.P1120308791414070404

`and(A000225(n+1), A091598(A014132(n+1)))`
-/

namespace A091597.P1120308791414070404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A091598 (A014132 (n + 1)).toNat)

end

end A091597.P1120308791414070404

/-! ## A091597.P10809854568613841451

`2*A091598(A014132(n+1))/A020639(2*(n+1)²)`
-/

namespace A091597.P10809854568613841451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A091598 (A014132 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 1) ^ 2) : ℚ)

end

end A091597.P10809854568613841451

/-!
# A091598: Triangle read by rows: T(n,0) = A078008(n), T(n,m) = T(n-1,m-1) + T(n-1,m).

The programs for A091598, there is no canonical definition to state claims against.
-/

/-! ## A091598.P8490025186975276749

`2*A091597(n)-A055248(n)`
-/

namespace A091598.P8490025186975276749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091597 n - A055248 n

end

end A091598.P8490025186975276749

/-! ## A091598.P14895728910025532152

`(A112465(n)+A091597(n))/2`
-/

namespace A091598.P14895728910025532152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112465 n + A091597 n : ℚ) / 2

end

end A091598.P14895728910025532152

/-! ## A091598.P10267414016106291785

`A319702(A112465(n)+A091597(n)+7)-5`
-/

namespace A091598.P10267414016106291785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A112465 n + A091597 n + 7).toNat - 5

end

end A091598.P10267414016106291785

/-! ## A091598.P12514420880091848908

`A175126(A112465(n)+A091597(n))`
-/

namespace A091598.P12514420880091848908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A112465 n + A091597 n).toNat

end

end A091598.P12514420880091848908

/-! ## A091598.P8859226374594962235

`A055248(n)-A005843(A055248(n)-A091597(n))`
-/

namespace A091598.P8859226374594962235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n - A005843 (A055248 n - A091597 n).toNat

end

end A091598.P8859226374594962235

/-! ## A091598.P8078225441940425352

`A001281(A112465(n)+A091597(n))`
-/

namespace A091598.P8078225441940425352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A112465 n + A091597 n).toNat

end

end A091598.P8078225441940425352

/-! ## A091598.P7504216827620877548

`A004525(A112465(n)+A091597(n))`
-/

namespace A091598.P7504216827620877548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A112465 n + A091597 n).toNat

end

end A091598.P7504216827620877548

/-! ## A091598.P4020719765800837628

`A004526(A112465(n)+A091597(n))`
-/

namespace A091598.P4020719765800837628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112465 n + A091597 n).toNat

end

end A091598.P4020719765800837628

/-! ## A091598.P15680399959831134279

`A110654(A112465(n)+A091597(n))`
-/

namespace A091598.P15680399959831134279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A112465 n + A091597 n).toNat

end

end A091598.P15680399959831134279

/-! ## A091598.P9716360445932943068

`A005843(A091597(n))-A055248(n)`
-/

namespace A091598.P9716360445932943068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A091597 n).toNat - A055248 n

end

end A091598.P9716360445932943068

/-! ## A091598.P2000622529976687390

`A004524(A091597(n)+A112465(n)+1)`
-/

namespace A091598.P2000622529976687390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A091597 n + (A112465 n + 1)).toNat

end

end A091598.P2000622529976687390

/-! ## A091598.P15946297320289389209

`A008619(A112465(n)+A091597(n))-1`
-/

namespace A091598.P15946297320289389209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A112465 n + A091597 n).toNat - 1

end

end A091598.P15946297320289389209

/-! ## A091598.P15634996384005563265

`A091597(n)-A004526(A091597(n)-A112465(n))`
-/

namespace A091598.P15634996384005563265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091597 n - A004526 (A091597 n - A112465 n).toNat

end

end A091598.P15634996384005563265

/-!
# A091599: Triangle read by rows: T(n,k) is the number of nonseparable planar maps with r*n edges and a fixed outer face of r*k edges which are invariant under a rotation of 1/r for any r >= 2 (independent of actual value of r).

The programs for A091599, there is no canonical definition to state claims against.
-/

/-! ## A091599.P14786675835202479783

`A046651(A061579(n))`
-/

namespace A091599.P14786675835202479783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A061579 n).toNat

end

end A091599.P14786675835202479783

/-! ## A091599.P11583049520433648248

`A046651(A114327(n)+n)`
-/

namespace A091599.P11583049520433648248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A114327 n + (n : ℤ)).toNat

end

end A091599.P11583049520433648248

/-! ## A091599.P7541152223988290439

`A046651(∑[A198954(n)-1])`
-/

namespace A091599.P7541152223988290439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091599.P7541152223988290439

/-! ## A091599.P7117230366834144317

`A046651(A038722(n+1)-1)`
-/

namespace A091599.P7117230366834144317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A038722 (n + 1) - 1).toNat

end

end A091599.P7117230366834144317

/-! ## A091599.P5089426300842608277

`A046651(A093995(n+1)-(n+1))`
-/

namespace A091599.P5089426300842608277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A091599.P5089426300842608277

/-! ## A091599.P8462160144905363960

`A046651(A002024(n+1)²-(n+1))`
-/

namespace A091599.P8462160144905363960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A091599.P8462160144905363960

/-! ## A091599.P18161849566847293850

`A046651(∑[A023443(A198954(n))])`
-/

namespace A091599.P18161849566847293850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091599.P18161849566847293850

/-! ## A091599.P3237541668056984587

`A046651(A023443(A038722(n+1)))`
-/

namespace A091599.P3237541668056984587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A091599.P3237541668056984587

/-! ## A091599.P119001195093178044

`A046651(A057428(n)+A038722(n+1))`
-/

namespace A091599.P119001195093178044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A057428 n + A038722 (n + 1)).toNat

end

end A091599.P119001195093178044

/-! ## A091599.P5659840345694936991

`A046651(A038722(n+2))`
-/

namespace A091599.P5659840345694936991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A038722 (n + 2)).toNat

end

end A091599.P5659840345694936991

/-! ## A091599.P14960546208142662441

`A046651(A163337(A163334(n)))`
-/

namespace A091599.P14960546208142662441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 (A163337 (A163334 n).toNat).toNat

end

end A091599.P14960546208142662441

