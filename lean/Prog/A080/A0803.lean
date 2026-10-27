import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080300: Global ranking function for totally balanced binary sequences.

The programs for A080300, there is no canonical definition to state claims against.
-/

/-! ## A080300.P12712468987267592037

`A080116(n)*A215406(n)`
-/

namespace A080300.P12712468987267592037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n * A215406 n

end

end A080300.P12712468987267592037

/-! ## A080300.P11070294539023582866

`A215406(n*char[A014486(n)])`
-/

namespace A080300.P11070294539023582866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A080300.P11070294539023582866

/-! ## A080300.P7969929535728815680

`A215406(n%(A080116(n)+n))`
-/

namespace A080300.P7969929535728815680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (Int.tmod (n : ℤ) (A080116 n + (n : ℤ))).toNat

end

end A080300.P7969929535728815680

/-! ## A080300.P3165689635575036504

`∑[A080116(n+1)]*A080116(n)`
-/

namespace A080300.P3165689635575036504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A080116 n

end

end A080300.P3165689635575036504

/-! ## A080300.P7781242569578030037

`char[2*A057520(n)]*A215406(n)`
-/

namespace A080300.P7781242569578030037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A215406 n

end

end A080300.P7781242569578030037

/-!
# A080301: Local ranking function for totally balanced binary sequences: if n's binary expansion is totally balanced (A080116(n)=1), then a(n) is its zero-based position among A000108((A000523(n)+1)/2) lexicographically ordered totally balanced binary sequences of the same width, otherwise -1.

The programs for A080301, there is no canonical definition to state claims against.
-/

/-! ## A080301.P4438053711170931601

`A057428(A266603(n+1))+A000120(A080300(n))`
-/

namespace A080301.P4438053711170931601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A266603 (n + 1)).toNat + A000120 (A080300 n).toNat

end

end A080301.P4438053711170931601

/-! ## A080301.P3392033161512336907

`A000120(A080300(n))-A055396(A166642(n+1))`
-/

namespace A080301.P3392033161512336907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A080300 n).toNat - A055396 (A166642 (n + 1)).toNat

end

end A080301.P3392033161512336907

/-! ## A080301.P11712238062943093424

`A134824(and(A025170(n), A079734(n+1)))`
-/

namespace A080301.P11712238062943093424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (Int.land (A025170 n) (A079734 (n + 1))).toNat

end

end A080301.P11712238062943093424

/-! ## A080301.P16744480429572305412

`(A080116(n)*A124768(3*n+2)-1)%4`
-/

namespace A080301.P16744480429572305412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080116 n * A124768 (3 * n + 2) - 1) 4

end

end A080301.P16744480429572305412

/-!
# A080302: a(n) = A080292(n)/3.

The programs for A080302, there is no canonical definition to state claims against.
-/

/-! ## A080302.P16137753013598766131

`A080292(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080302.P16137753013598766131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080292 (n + 1) : ℚ) / 3

end

end A080302.P16137753013598766131

/-! ## A080302.P17825524857128200846

`lcm(2, A080272(n))/2`
-/

namespace A080302.P17825524857128200846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A080272 n) : ℚ) / 2

end

end A080302.P17825524857128200846

/-! ## A080302.P13314084039489506188

`Δ[∑[A080292(n)]/3]`
-/

namespace A080302.P13314084039489506188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080292 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080302.P13314084039489506188

/-! ## A080302.P4796444471220432213

`A000265(A080272(n))`
-/

namespace A080302.P4796444471220432213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A080272 n).toNat

end

end A080302.P4796444471220432213

/-! ## A080302.P443356781444187782

`A002264(A080292(n+1))`
-/

namespace A080302.P443356781444187782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A080292 (n + 1)).toNat

end

end A080302.P443356781444187782

/-!
# A080303: Rewrite 0->100 in the binary expansion of n.

The programs for A080303, the canonical program `A080303.P9276496599391433279` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080303 has offset 0).

The definition of A080303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080303.P9276496599391433279

`A084471(abs(1-A088697(n))+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080303

/-- `A084471(abs(1-A088697(n))+1)` -/
def P9276496599391433279.Spec : Prop :=
  ∀ n, P9276496599391433279.a n = A080303 n

theorem P9276496599391433279.correct : P9276496599391433279.Spec := by
  intro n
  simp only [A080303]

end A080303

/-! ## A080303.P9959554912371021187

`A175047(abs(1-A088697(n))+1)`
-/

namespace A080303.P9959554912371021187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (|1 - A088697 n| + 1).toNat

end

end A080303.P9959554912371021187

namespace A080303

/-- `A175047(abs(1-A088697(n))+1)` -/
def P9959554912371021187.Spec : Prop :=
  ∀ n, P9959554912371021187.a n = A080303 n

end A080303

/-! ## A080303.P8470531551274204286

`A084471(A088697(n)+A000038(n))`
-/

namespace A080303.P8470531551274204286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (A088697 n + A000038 n).toNat

end

end A080303.P8470531551274204286

namespace A080303

/-- `A084471(A088697(n)+A000038(n))` -/
def P8470531551274204286.Spec : Prop :=
  ∀ n, P8470531551274204286.a n = A080303 n

end A080303

/-! ## A080303.P17843915982678100358

`A175047(A088697(n)+A000038(n))`
-/

namespace A080303.P17843915982678100358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A088697 n + A000038 n).toNat

end

end A080303.P17843915982678100358

namespace A080303

/-- `A175047(A088697(n)+A000038(n))` -/
def P17843915982678100358.Spec : Prop :=
  ∀ n, P17843915982678100358.a n = A080303 n

end A080303

/-! ## A080303.P8337797334645640699

`A266150(A088697(n)+A000038(n))`
-/

namespace A080303.P8337797334645640699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266150 (A088697 n + A000038 n).toNat

end

end A080303.P8337797334645640699

namespace A080303

/-- `A266150(A088697(n)+A000038(n))` -/
def P8337797334645640699.Spec : Prop :=
  ∀ n, P8337797334645640699.a n = A080303 n

end A080303

/-! ## A080303.P5880039305311610489

`A084471(or(A000038(n), A088697(n)))`
-/

namespace A080303.P5880039305311610489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (Int.lor (A000038 n) (A088697 n)).toNat

end

end A080303.P5880039305311610489

namespace A080303

/-- `A084471(or(A000038(n), A088697(n)))` -/
def P5880039305311610489.Spec : Prop :=
  ∀ n, P5880039305311610489.a n = A080303 n

end A080303

/-! ## A080303.P5311362439658121407

`A175047(or(A000038(n), A088697(n)))`
-/

namespace A080303.P5311362439658121407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (Int.lor (A000038 n) (A088697 n)).toNat

end

end A080303.P5311362439658121407

namespace A080303

/-- `A175047(or(A000038(n), A088697(n)))` -/
def P5311362439658121407.Spec : Prop :=
  ∀ n, P5311362439658121407.a n = A080303 n

end A080303

/-! ## A080303.P7174039854459692975

`A084471(xor(A000038(n), A088697(n)))`
-/

namespace A080303.P7174039854459692975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084471 (Int.xor (A000038 n) (A088697 n)).toNat

end

end A080303.P7174039854459692975

namespace A080303

/-- `A084471(xor(A000038(n), A088697(n)))` -/
def P7174039854459692975.Spec : Prop :=
  ∀ n, P7174039854459692975.a n = A080303 n

end A080303

/-! ## A080303.P7707905254297291414

`A175047(xor(A000038(n), A088697(n)))`
-/

namespace A080303.P7707905254297291414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (Int.xor (A000038 n) (A088697 n)).toNat

end

end A080303.P7707905254297291414

namespace A080303

/-- `A175047(xor(A000038(n), A088697(n)))` -/
def P7707905254297291414.Spec : Prop :=
  ∀ n, P7707905254297291414.a n = A080303 n

end A080303

/-! ## A080303.P8132818297787974985

`A266150(xor(A000038(n), A088697(n)))`
-/

namespace A080303.P8132818297787974985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266150 (Int.xor (A000038 n) (A088697 n)).toNat

end

end A080303.P8132818297787974985

namespace A080303

/-- `A266150(xor(A000038(n), A088697(n)))` -/
def P8132818297787974985.Spec : Prop :=
  ∀ n, P8132818297787974985.a n = A080303 n

end A080303

/-!
# A080304: Numerator of n^mu(n), where mu is the Moebius function (A008683).

The programs for A080304, the canonical program `A080304.P9910366703239988167` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080304 has offset 1).

The definition of A080304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080304.P6668607290198020043

`n*A353629(n+1)+1`
-/

namespace A080304.P6668607290198020043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353629 (n + 1) + 1

end

end A080304.P6668607290198020043

namespace A080304

/-- `n*A353629(n+1)+1` -/
def P6668607290198020043.Spec : Prop :=
  ∀ n, P6668607290198020043.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P16474883302282563836

`ceil((n+1)^A008683(n+1))`
-/

namespace A080304.P16474883302282563836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A008683 (n + 1) : ℤ)⌉

end

end A080304.P16474883302282563836

namespace A080304

/-- `ceil((n+1)^A008683(n+1))` -/
def P16474883302282563836.Spec : Prop :=
  ∀ n, P16474883302282563836.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P18163581046309622526

`ceil((n+1)^A140664(n+1))`
-/

namespace A080304.P18163581046309622526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A140664 (n + 1) : ℤ)⌉

end

end A080304.P18163581046309622526

namespace A080304

/-- `ceil((n+1)^A140664(n+1))` -/
def P18163581046309622526.Spec : Prop :=
  ∀ n, P18163581046309622526.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P9910366703239988167

`n%(A055615(n+1)+1)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080304

/-- `n%(A055615(n+1)+1)+1` -/
def P9910366703239988167.Spec : Prop :=
  ∀ n, P9910366703239988167.a n = A080304 (n + 1)

theorem P9910366703239988167.correct : P9910366703239988167.Spec := by
  intro n
  simp only [A080304, Nat.add_sub_cancel]

end A080304

/-! ## A080304.P2288056408517563756

`n*C(A007423(n+1), 2)+1`
-/

namespace A080304.P2288056408517563756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A007423 (n + 1)).toNat 2 + 1

end

end A080304.P2288056408517563756

namespace A080304

/-- `n*C(A007423(n+1), 2)+1` -/
def P2288056408517563756.Spec : Prop :=
  ∀ n, (P2288056408517563756.a n : ℤ) = A080304 (n + 1)

end A080304

/-! ## A080304.P7947471374475841983

`(n+1)^ceil(A162512(n+1)%2/60)`
-/

namespace A080304.P7947471374475841983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌈(Int.tmod (A162512 (n + 1)) 2 : ℚ) / 60⌉ : ℤ)

end

end A080304.P7947471374475841983

namespace A080304

/-- `(n+1)^ceil(A162512(n+1)%2/60)` -/
def P7947471374475841983.Spec : Prop :=
  ∀ n, P7947471374475841983.a n = (A080304 (n + 1) : ℚ)

end A080304

/-! ## A080304.P7640161581571317780

`A385212(n+1)/A080305(n+1)`
-/

namespace A080304.P7640161581571317780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385212 (n + 1) : ℚ) / (A080305 (n + 1) : ℚ)

end

end A080304.P7640161581571317780

namespace A080304

/-- `A385212(n+1)/A080305(n+1)` -/
def P7640161581571317780.Spec : Prop :=
  ∀ n, P7640161581571317780.a n = (A080304 (n + 1) : ℚ)

end A080304

/-! ## A080304.P1418931855729353135

`A028310(C(A008683(n+1)+n, n))`
-/

namespace A080304.P1418931855729353135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A008683 (n + 1) + (n : ℤ)).toNat n)

end

end A080304.P1418931855729353135

namespace A080304

/-- `A028310(C(A008683(n+1)+n, n))` -/
def P1418931855729353135.Spec : Prop :=
  ∀ n, P1418931855729353135.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P13778831609663451071

`A080305(n+1)+n*A008683(n+1)`
-/

namespace A080304.P13778831609663451071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (n + 1) + (n : ℤ) * A008683 (n + 1)

end

end A080304.P13778831609663451071

namespace A080304

/-- `A080305(n+1)+n*A008683(n+1)` -/
def P13778831609663451071.Spec : Prop :=
  ∀ n, P13778831609663451071.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P2315380084175088170

`n*A008683(n+1)*A065043(n+1)+1`
-/

namespace A080304.P2315380084175088170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008683 (n + 1) * A065043 (n + 1)) + 1

end

end A080304.P2315380084175088170

namespace A080304

/-- `n*A008683(n+1)*A065043(n+1)+1` -/
def P2315380084175088170.Spec : Prop :=
  ∀ n, P2315380084175088170.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P13150549503176907086

`n*and(A008966(n+1), A010553(n+1))+1`
-/

namespace A080304.P13150549503176907086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (A008966 (n + 1)) (A010553 (n + 1)) + 1

end

end A080304.P13150549503176907086

namespace A080304

/-- `n*and(A008966(n+1), A010553(n+1))+1` -/
def P13150549503176907086.Spec : Prop :=
  ∀ n, P13150549503176907086.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P7347832118091904165

`A002265(and(4*n, -A008683(n+1))+4)`
-/

namespace A080304.P7347832118091904165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.land (4 * n : ℤ) (-A008683 (n + 1)) + 4).toNat

end

end A080304.P7347832118091904165

namespace A080304

/-- `A002265(and(4*n, -A008683(n+1))+4)` -/
def P7347832118091904165.Spec : Prop :=
  ∀ n, P7347832118091904165.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P6912175202133974424

`ceil((n+1)^A181435(n+1))`
-/

namespace A080304.P6912175202133974424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A181435 (n + 1) : ℤ)⌉

end

end A080304.P6912175202133974424

namespace A080304

/-- `ceil((n+1)^A181435(n+1))` -/
def P6912175202133974424.Spec : Prop :=
  ∀ n, P6912175202133974424.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P15152256000404002146

`ceil((n+1)^A181434(n+1))`
-/

namespace A080304.P15152256000404002146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A181434 (n + 1) : ℤ)⌉

end

end A080304.P15152256000404002146

namespace A080304

/-- `ceil((n+1)^A181434(n+1))` -/
def P15152256000404002146.Spec : Prop :=
  ∀ n, P15152256000404002146.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P1418207513546148158

`ceil((n+1)^A178536(n+1))`
-/

namespace A080304.P1418207513546148158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A178536 (n + 1) : ℤ)⌉

end

end A080304.P1418207513546148158

namespace A080304

/-- `ceil((n+1)^A178536(n+1))` -/
def P1418207513546148158.Spec : Prop :=
  ∀ n, P1418207513546148158.a n = A080304 (n + 1)

end A080304

/-! ## A080304.P6306886364935820055

`A385212(A304404(n+1))`
-/

namespace A080304.P6306886364935820055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (A304404 (n + 1)).toNat

end

end A080304.P6306886364935820055

namespace A080304

/-- `A385212(A304404(n+1))` -/
def P6306886364935820055.Spec : Prop :=
  ∀ n, P6306886364935820055.a n = A080304 (n + 1)

end A080304

/-!
# A080305: Denominator of n^mu(n), where mu is the Moebius function (A008683).

The programs for A080305, the canonical program `A080305.P4391190327060872613` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080305 has offset 1).

The definition of A080305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080305.P3976002651609987698

`n*A252233(n+1)+1`
-/

namespace A080305.P3976002651609987698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A252233 (n + 1) + 1

end

end A080305.P3976002651609987698

namespace A080305

/-- `n*A252233(n+1)+1` -/
def P3976002651609987698.Spec : Prop :=
  ∀ n, P3976002651609987698.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P1016987746710824446

`ceil((n+1)^A157657(n+1))`
-/

namespace A080305.P1016987746710824446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A157657 (n + 1) : ℤ)⌉

end

end A080305.P1016987746710824446

namespace A080305

/-- `ceil((n+1)^A157657(n+1))` -/
def P1016987746710824446.Spec : Prop :=
  ∀ n, P1016987746710824446.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P2359890821532288792

`ceil((n+1)^A157658(n+1))`
-/

namespace A080305.P2359890821532288792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (A157658 (n + 1) : ℤ)⌉

end

end A080305.P2359890821532288792

namespace A080305

/-- `ceil((n+1)^A157658(n+1))` -/
def P2359890821532288792.Spec : Prop :=
  ∀ n, P2359890821532288792.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P4391190327060872613

`n*C(2, A347093(n+1))+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A080305

/-- `n*C(2, A347093(n+1))+1` -/
def P4391190327060872613.Spec : Prop :=
  ∀ n, (P4391190327060872613.a n : ℤ) = A080305 (n + 1)

theorem P4391190327060872613.correct : P4391190327060872613.Spec := by
  intro n
  simp only [A080305, Nat.add_sub_cancel]

end A080305

/-! ## A080305.P3823767171719415001

`(n+1)^C(2, A347091(n+1))`
-/

namespace A080305.P3823767171719415001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.choose 2 (A347091 (n + 1)).toNat

end

end A080305.P3823767171719415001

namespace A080305

/-- `(n+1)^C(2, A347091(n+1))` -/
def P3823767171719415001.Spec : Prop :=
  ∀ n, (P3823767171719415001.a n : ℤ) = A080305 (n + 1)

end A080305

/-! ## A080305.P12155258042774203557

`ceil((n+1)^-A008683(n+1))`
-/

namespace A080305.P12155258042774203557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) ^ (-A008683 (n + 1) : ℤ)⌉

end

end A080305.P12155258042774203557

namespace A080305

/-- `ceil((n+1)^-A008683(n+1))` -/
def P12155258042774203557.Spec : Prop :=
  ∀ n, P12155258042774203557.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P8348610319256645542

`C(n+1, C(and(n, A178411(n+1)), n))`
-/

namespace A080305.P8348610319256645542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.choose (Int.land (n : ℤ) (A178411 (n + 1))).toNat n)

end

end A080305.P8348610319256645542

namespace A080305

/-- `C(n+1, C(and(n, A178411(n+1)), n))` -/
def P8348610319256645542.Spec : Prop :=
  ∀ n, (P8348610319256645542.a n : ℤ) = A080305 (n + 1)

end A080305

/-! ## A080305.P13119275292795497811

`A385212(n+1)/A080304(n+1)`
-/

namespace A080305.P13119275292795497811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385212 (n + 1) : ℚ) / (A080304 (n + 1) : ℚ)

end

end A080305.P13119275292795497811

namespace A080305

/-- `A385212(n+1)/A080304(n+1)` -/
def P13119275292795497811.Spec : Prop :=
  ∀ n, P13119275292795497811.a n = (A080305 (n + 1) : ℚ)

end A080305

/-! ## A080305.P5475581730396526226

`C(A007947(n+1), C(2, A347093(n+1)))`
-/

namespace A080305.P5475581730396526226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007947 (n + 1)).toNat (Nat.choose 2 (A347093 (n + 1)).toNat)

end

end A080305.P5475581730396526226

namespace A080305

/-- `C(A007947(n+1), C(2, A347093(n+1)))` -/
def P5475581730396526226.Spec : Prop :=
  ∀ n, (P5475581730396526226.a n : ℤ) = A080305 (n + 1)

end A080305

/-! ## A080305.P15031699433002050190

`n*C(A000120(n), A347091(n+1))+1`
-/

namespace A080305.P15031699433002050190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A000120 n).toNat (A347091 (n + 1)).toNat + 1

end

end A080305.P15031699433002050190

namespace A080305

/-- `n*C(A000120(n), A347091(n+1))+1` -/
def P15031699433002050190.Spec : Prop :=
  ∀ n, (P15031699433002050190.a n : ℤ) = A080305 (n + 1)

end A080305

/-! ## A080305.P2997906772689236678

`n*and(A001221(n+1), A008966(n+1))+1`
-/

namespace A080305.P2997906772689236678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (A001221 (n + 1)) (A008966 (n + 1)) + 1

end

end A080305.P2997906772689236678

namespace A080305

/-- `n*and(A001221(n+1), A008966(n+1))+1` -/
def P2997906772689236678.Spec : Prop :=
  ∀ n, P2997906772689236678.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P13056699499058475015

`n*(A008966(n+1)-A008683(n+1))/2+1`
-/

namespace A080305.P13056699499058475015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A008966 (n + 1) - A008683 (n + 1) : ℚ) / 2) + 1

end

end A080305.P13056699499058475015

namespace A080305

/-- `n*(A008966(n+1)-A008683(n+1))/2+1` -/
def P13056699499058475015.Spec : Prop :=
  ∀ n, P13056699499058475015.a n = (A080305 (n + 1) : ℚ)

end A080305

/-! ## A080305.P17669730892913732787

`A028310(C(A028310(n)-A008683(n+1), n))`
-/

namespace A080305.P17669730892913732787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A028310 n - A008683 (n + 1)).toNat n)

end

end A080305.P17669730892913732787

namespace A080305

/-- `A028310(C(A028310(n)-A008683(n+1), n))` -/
def P17669730892913732787.Spec : Prop :=
  ∀ n, P17669730892913732787.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P2599194620016459973

`A160413(and(2*n, A008683(n+1))+2)`
-/

namespace A080305.P2599194620016459973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (Int.land (2 * n : ℤ) (A008683 (n + 1)) + 2).toNat

end

end A080305.P2599194620016459973

namespace A080305

/-- `A160413(and(2*n, A008683(n+1))+2)` -/
def P2599194620016459973.Spec : Prop :=
  ∀ n, P2599194620016459973.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P1143608135100909821

`n*A000007(A061669(n+1))+1`
-/

namespace A080305.P1143608135100909821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 (A061669 (n + 1)).toNat + 1

end

end A080305.P1143608135100909821

namespace A080305

/-- `n*A000007(A061669(n+1))+1` -/
def P1143608135100909821.Spec : Prop :=
  ∀ n, P1143608135100909821.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P3689421906337459583

`n*A086823(A003961(n+1))+1`
-/

namespace A080305.P3689421906337459583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086823 (A003961 (n + 1)).toNat + 1

end

end A080305.P3689421906337459583

namespace A080305

/-- `n*A086823(A003961(n+1))+1` -/
def P3689421906337459583.Spec : Prop :=
  ∀ n, P3689421906337459583.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P3857886998701572131

`n*A086823(A045965(n+1))+1`
-/

namespace A080305.P3857886998701572131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A086823 (A045965 (n + 1)).toNat + 1

end

end A080305.P3857886998701572131

namespace A080305

/-- `n*A086823(A045965(n+1))+1` -/
def P3857886998701572131.Spec : Prop :=
  ∀ n, P3857886998701572131.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P13107452418838893695

`A056926(A080849(n+1))`
-/

namespace A080305.P13107452418838893695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A080849 (n + 1)).toNat

end

end A080305.P13107452418838893695

namespace A080305

/-- `A056926(A080849(n+1))` -/
def P13107452418838893695.Spec : Prop :=
  ∀ n, P13107452418838893695.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P9320192327324464518

`A002260(A000124(n)-n*A008683(n+1))`
-/

namespace A080305.P9320192327324464518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 n - (n : ℤ) * A008683 (n + 1)).toNat

end

end A080305.P9320192327324464518

namespace A080305

/-- `A002260(A000124(n)-n*A008683(n+1))` -/
def P9320192327324464518.Spec : Prop :=
  ∀ n, P9320192327324464518.a n = A080305 (n + 1)

end A080305

/-! ## A080305.P11645211684554974256

`A166139(∑[n]+1)`
-/

namespace A080305.P11645211684554974256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A080305.P11645211684554974256

namespace A080305

/-- `A166139(∑[n]+1)` -/
def P11645211684554974256.Spec : Prop :=
  ∀ n, P11645211684554974256.a n = A080305 (n + 1)

end A080305

/-!
# A080307: Multiples of the Fermat numbers 2^(2^n)+1.

The programs for A080307, the canonical program `A080307.P12348856722776114523` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080307 has offset 1).

The definition of A080307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080307.P9576037861737876531

`lt[1, A305435(2*(n+1))]+1`
-/

namespace A080307.P9576037861737876531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080307.P9576037861737876531

namespace A080307

/-- `lt[1, A305435(2*(n+1))]+1` -/
def P9576037861737876531.Spec : Prop :=
  ∀ n, (P9576037861737876531.a n : ℤ) = A080307 (n + 1)

end A080307

/-! ## A080307.P7722994541498028952

`lt[1, A305436(2*(n+1))]+1`
-/

namespace A080307.P7722994541498028952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080307.P7722994541498028952

namespace A080307

/-- `lt[1, A305436(2*(n+1))]+1` -/
def P7722994541498028952.Spec : Prop :=
  ∀ n, (P7722994541498028952.a n : ℤ) = A080307 (n + 1)

end A080307

/-! ## A080307.P12348856722776114523

`lt[0, A356241(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A080307

/-- `lt[0, A356241(n+1)]+1` -/
def P12348856722776114523.Spec : Prop :=
  ∀ n, (P12348856722776114523.a n : ℤ) = A080307 (n + 1)

theorem P12348856722776114523.correct : P12348856722776114523.Spec := by
  intro n
  simp only [A080307, Nat.add_sub_cancel]

end A080307

/-! ## A080307.P5745585434059981722

`lt[0, A356242(n+1)]+1`
-/

namespace A080307.P5745585434059981722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080307.P5745585434059981722

namespace A080307

/-- `lt[0, A356242(n+1)]+1` -/
def P5745585434059981722.Spec : Prop :=
  ∀ n, (P5745585434059981722.a n : ℤ) = A080307 (n + 1)

end A080307

/-! ## A080307.P14882176785765548788

`lt[0, A356241(A028310(n))]`
-/

namespace A080307.P14882176785765548788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080307.P14882176785765548788

namespace A080307

/-- `lt[0, A356241(A028310(n))]` -/
def P14882176785765548788.Spec : Prop :=
  ∀ n, (P14882176785765548788.a n : ℤ) = A080307 (n + 1)

end A080307

/-! ## A080307.P716824991396567589

`lt[0, A356241(A004277(n))]`
-/

namespace A080307.P716824991396567589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080307.P716824991396567589

namespace A080307

/-- `lt[0, A356241(A004277(n))]` -/
def P716824991396567589.Spec : Prop :=
  ∀ n, (P716824991396567589.a n : ℤ) = A080307 (n + 1)

end A080307

/-! ## A080307.P1392321703543043518

`lt[0, A356241(A008574(n))]`
-/

namespace A080307.P1392321703543043518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080307.P1392321703543043518

namespace A080307

/-- `lt[0, A356241(A008574(n))]` -/
def P1392321703543043518.Spec : Prop :=
  ∀ n, (P1392321703543043518.a n : ℤ) = A080307 (n + 1)

end A080307

/-!
# A080308: Non-multiples of Fermat numbers 2^(2^n)+1.

The programs for A080308, the canonical program `A080308.P11907683181179423394` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080308 has offset 1).

The definition of A080308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080308.P11907683181179423394

`comp[floor(n/(xor(n, n+1)+1))+and(n, n+1)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080308

/-- `comp[floor(n/(xor(n, n+1)+1))+and(n, n+1)]` -/
def P11907683181179423394.Spec : Prop :=
  ∀ n, (P11907683181179423394.a n : ℤ) = A080308 (n + 1)

theorem P11907683181179423394.correct : P11907683181179423394.Spec := by
  intro n
  simp only [A080308, Nat.add_sub_cancel]

end A080308

/-! ## A080308.P17549693363874960898

`comp[floor(n/(xor(n, n+1)+1))+1-2^val(n+1, 2)+n]`
-/

namespace A080308.P17549693363874960898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1 - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080308.P17549693363874960898

namespace A080308

/-- `comp[floor(n/(xor(n, n+1)+1))+1-2^val(n+1, 2)+n]` -/
def P17549693363874960898.Spec : Prop :=
  ∀ n, (P17549693363874960898.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P7013860259805266751

`comp[floor(n/(xor(n, n+1)+1))+n+1-or(n, n+1)+n]`
-/

namespace A080308.P7013860259805266751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + ((n + 1 : ℤ) - (Nat.lor n (n + 1) : ℤ) + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080308.P7013860259805266751

namespace A080308

/-- `comp[floor(n/(xor(n, n+1)+1))+n+1-or(n, n+1)+n]` -/
def P7013860259805266751.Spec : Prop :=
  ∀ n, (P7013860259805266751.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P11228319071732552119

`eq[1, A305436(2*(n+1))]+1`
-/

namespace A080308.P11228319071732552119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305436 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080308.P11228319071732552119

namespace A080308

/-- `eq[1, A305436(2*(n+1))]+1` -/
def P11228319071732552119.Spec : Prop :=
  ∀ n, (P11228319071732552119.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P747045562329553849

`lt[A305435(2*(n+1)), 2]+1`
-/

namespace A080308.P747045562329553849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305435 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080308.P747045562329553849

namespace A080308

/-- `lt[A305435(2*(n+1)), 2]+1` -/
def P747045562329553849.Spec : Prop :=
  ∀ n, (P747045562329553849.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P4708048314430483397

`lt[A356241(n+1), 1]+1`
-/

namespace A080308.P4708048314430483397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356241 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080308.P4708048314430483397

namespace A080308

/-- `lt[A356241(n+1), 1]+1` -/
def P4708048314430483397.Spec : Prop :=
  ∀ n, (P4708048314430483397.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P8288066766558085835

`lt[A356242(n+1), 1]+1`
-/

namespace A080308.P8288066766558085835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080308.P8288066766558085835

namespace A080308

/-- `lt[A356242(n+1), 1]+1` -/
def P8288066766558085835.Spec : Prop :=
  ∀ n, (P8288066766558085835.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P9269460449316478004

`filter[A140137(n+1), A011558(#)]`
-/

namespace A080308.P9269460449316478004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A080308.P9269460449316478004

namespace A080308

/-- `filter[A140137(n+1), A011558(#)]` -/
def P9269460449316478004.Spec : Prop :=
  ∀ n, P9269460449316478004.a n = A080308 (n + 1)

end A080308

/-! ## A080308.P8476095486605793213

`∩[A047201(n+1), A140137(n+1)]`
-/

namespace A080308.P8476095486605793213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080308.P8476095486605793213

namespace A080308

/-- `∩[A047201(n+1), A140137(n+1)]` -/
def P8476095486605793213.Spec : Prop :=
  ∀ n, (P8476095486605793213.a n : ℤ) = A080308 (n + 1)

end A080308

/-! ## A080308.P11109043528650921619

`∩[A140137(n+1), A229829(n+1)]`
-/

namespace A080308.P11109043528650921619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080308.P11109043528650921619

namespace A080308

/-- `∩[A140137(n+1), A229829(n+1)]` -/
def P11109043528650921619.Spec : Prop :=
  ∀ n, (P11109043528650921619.a n : ℤ) = A080308 (n + 1)

end A080308

/-!
# A080309: Numbers k such that the k-th positive even number equals the k-th multiple of a Fermat number.

The programs for A080309, the canonical program `A080309.P15158434456608786977` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080309 has offset 1).

The definition of A080309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080309.P15158434456608786977

`record[gcd(n, A080307(A028310(n)))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080309

/-- `record[gcd(n, A080307(A028310(n)))]` -/
def P15158434456608786977.Spec : Prop :=
  ∀ n, (P15158434456608786977.a n : ℤ) = A080309 (n + 1)

theorem P15158434456608786977.correct : P15158434456608786977.Spec := by
  intro n
  simp only [A080309, Nat.add_sub_cancel]

end A080309

/-! ## A080309.P11999620889601844894

`record[gcd(A080307(n+1), A131738(n))]`
-/

namespace A080309.P11999620889601844894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080307 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080309.P11999620889601844894

namespace A080309

/-- `record[gcd(A080307(n+1), A131738(n))]` -/
def P11999620889601844894.Spec : Prop :=
  ∀ n, (P11999620889601844894.a n : ℤ) = A080309 (n + 1)

end A080309

/-! ## A080309.P13340374216648339230

`eq[1, A005408(n)-A080307(A028310(n))]`
-/

namespace A080309.P13340374216648339230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A080307 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080309.P13340374216648339230

namespace A080309

/-- `eq[1, A005408(n)-A080307(A028310(n))]` -/
def P13340374216648339230.Spec : Prop :=
  ∀ n, (P13340374216648339230.a n : ℤ) = A080309 (n + 1)

end A080309

/-! ## A080309.P13974799936302350614

`eq[A276446(A080307(n+1)-(n+1)), A276446(n+1)]+1`
-/

namespace A080309.P13974799936302350614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (A080307 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080309.P13974799936302350614

namespace A080309

/-- `eq[A276446(A080307(n+1)-(n+1)), A276446(n+1)]+1` -/
def P13974799936302350614.Spec : Prop :=
  ∀ n, (P13974799936302350614.a n : ℤ) = A080309 (n + 1)

end A080309

/-! ## A080309.P10938808678411266153

`eq[A101158(A080307(n+1)-(n+1)), A101158(n+1)]+1`
-/

namespace A080309.P10938808678411266153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101158 (A080307 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080309.P10938808678411266153

namespace A080309

/-- `eq[A101158(A080307(n+1)-(n+1)), A101158(n+1)]+1` -/
def P10938808678411266153.Spec : Prop :=
  ∀ n, (P10938808678411266153.a n : ℤ) = A080309 (n + 1)

end A080309

/-!
# A080310: a(0) = 2 and, for n >= 1, rewrite 0->100 in the binary expansion of n and append 10 to the right.

The programs for A080310, the canonical program `A080310.P2147886227810751610` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080310 has offset 0).

The definition of A080310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080303, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080310.P2147886227810751610

`A080303(2*n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080310

/-- `A080303(2*n)/2` -/
def P2147886227810751610.Spec : Prop :=
  ∀ n, P2147886227810751610.a n = (A080310 n : ℚ)

end A080310

/-! ## A080310.P889373700681009473

`2*xor(1, gcd(2, n)²*a(floor(n/2)))` with `a(0)=2`
-/

namespace A080310.P889373700681009473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * Nat.xor 1 (Nat.gcd 2 n ^ 2 * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A080310.P889373700681009473

namespace A080310

/-- `2*xor(1, gcd(2, n)²*a(floor(n/2)))` -/
def P889373700681009473.Spec : Prop :=
  ∀ n, (P889373700681009473.a n : ℤ) = A080310 n

end A080310

/-! ## A080310.P12558217491761641957

`2*A080303(Δ[n²])`
-/

namespace A080310.P12558217491761641957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080303 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A080310.P12558217491761641957

namespace A080310

/-- `2*A080303(Δ[n²])` -/
def P12558217491761641957.Spec : Prop :=
  ∀ n, P12558217491761641957.a n = A080310 n

end A080310

/-! ## A080310.P2247195331989283372

`lcm(2, A080303(2*n+1))`
-/

namespace A080310.P2247195331989283372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080303 (2 * n + 1))

end

end A080310.P2247195331989283372

namespace A080310

/-- `lcm(2, A080303(2*n+1))` -/
def P2247195331989283372.Spec : Prop :=
  ∀ n, (P2247195331989283372.a n : ℤ) = A080310 n

end A080310

/-! ## A080310.P5322645351656610346

`xor(1, A080303(record[xor(3, n)]))`
-/

namespace A080310.P5322645351656610346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080303 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A080310.P5322645351656610346

namespace A080310

/-- `xor(1, A080303(record[xor(3, n)]))` -/
def P5322645351656610346.Spec : Prop :=
  ∀ n, P5322645351656610346.a n = A080310 n

end A080310

/-! ## A080310.P11116563165872885625

`2*A084471(A088697(2*n+1))`
-/

namespace A080310.P11116563165872885625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084471 (A088697 (2 * n + 1)).toNat

end

end A080310.P11116563165872885625

namespace A080310

/-- `2*A084471(A088697(2*n+1))` -/
def P11116563165872885625.Spec : Prop :=
  ∀ n, P11116563165872885625.a n = A080310 n

end A080310

/-!
# A080312: Positions of A080313 in A014486.

The programs for A080312, there is no canonical definition to state claims against.
-/

/-! ## A080312.P824283911835563715

`A057118(A080298(n))`
-/

namespace A080312.P824283911835563715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057118 (A080298 n).toNat

end

end A080312.P824283911835563715

/-! ## A080312.P17707647397897776629

`A057548(A083934(n)^A328966(n+2))`
-/

namespace A080312.P17707647397897776629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (SequenceMachineLib.roundAway ((A083934 n : ℚ) ^ (A328966 (n + 2) : ℤ))).toNat

end

end A080312.P17707647397897776629

/-!
# A080313: Breadth-first-wise A014486-like encoding of A080299-trees.

The programs for A080313, there is no canonical definition to state claims against.
-/

/-! ## A080313.P8300663153345069317

`2*A080315(n)`
-/

namespace A080313.P8300663153345069317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080315 n

end

end A080313.P8300663153345069317

/-! ## A080313.P15883257147553165161

`(A080315(n)+A000007(n+1))/cos(acot(1))²`
-/

namespace A080313.P15883257147553165161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080315 n + A000007 (n + 1) : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ)) ^ 2

end

end A080313.P15883257147553165161

/-! ## A080313.P5786133817276203787

`A080315(A055643(n))+A080315(n)`
-/

namespace A080313.P5786133817276203787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080315 (A055643 n).toNat + A080315 n

end

end A080313.P5786133817276203787

/-! ## A080313.P15460208201328496637

`A080315(n)+A080315(A118759(n))`
-/

namespace A080313.P15460208201328496637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080315 n + A080315 (A118759 n).toNat

end

end A080313.P15460208201328496637

/-! ## A080313.P6220145079934104179

`A080315(A002837(n+1))+A080315(n)`
-/

namespace A080313.P6220145079934104179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080315 (A002837 (n + 1)).toNat + A080315 n

end

end A080313.P6220145079934104179

/-!
# A080314: Breadth-first-wise A063171-like-encoding of A080299-trees.

The programs for A080314, there is no canonical definition to state claims against.
-/

/-! ## A080314.P7438143481917560674

`A007088(A080313(n))`
-/

namespace A080314.P7438143481917560674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A080313 n).toNat

end

end A080314.P7438143481917560674

/-! ## A080314.P9741851379767009473

`A063171(A080312(n))`
-/

namespace A080314.P9741851379767009473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A080312 n).toNat

end

end A080314.P9741851379767009473

/-! ## A080314.P640608664201655181

`A099820(A080315(n))`
-/

namespace A080314.P640608664201655181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (A080315 n).toNat

end

end A080314.P640608664201655181

/-! ## A080314.P3395770486445962663

`A007088(2*A080315(n))`
-/

namespace A080314.P3395770486445962663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A080315 n).toNat

end

end A080314.P3395770486445962663

/-! ## A080314.P1725773858136405360

`A099820(A080313(n)/2)`
-/

namespace A080314.P1725773858136405360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 (SequenceMachineLib.roundAway ((A080313 n : ℚ) / 2)).toNat

end

end A080314.P1725773858136405360

/-!
# A080315: a(n) = A080313(n)/2.

The programs for A080315, there is no canonical definition to state claims against.
-/

/-! ## A080315.P2040812430354518177

`A080313(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080315.P2040812430354518177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080313 n : ℚ) / 2

end

end A080315.P2040812430354518177

/-! ## A080315.P13050866021279001616

`2^A008683(A004139(n+1))*A080313(n)`
-/

namespace A080315.P13050866021279001616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A004139 (n + 1)).toNat : ℤ) * (A080313 n : ℚ)

end

end A080315.P13050866021279001616

/-! ## A080315.P5451405366832599840

`A057520(A080312(n))`
-/

namespace A080315.P5451405366832599840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 (A080312 n).toNat

end

end A080315.P5451405366832599840

/-! ## A080315.P14297931902677530606

`A014486(A080312(n))/A020639(A085192(n))`
-/

namespace A080315.P14297931902677530606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014486 (A080312 n).toNat : ℚ) / (A020639 (A085192 n).toNat : ℚ)

end

end A080315.P14297931902677530606

/-! ## A080315.P13482615219635050157

`A014682(A080313(n))`
-/

namespace A080315.P13482615219635050157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A080313 n).toNat

end

end A080315.P13482615219635050157

/-!
# A080316: a(n) = A080315(n) - 2^A000523(A080315(n)), i.e., the terms of A080315 without their most significant bit.

The programs for A080316, there is no canonical definition to state claims against.
-/

/-! ## A080316.P13783151266836770706

`A080315(n)-2^A000523(A080315(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080316.P13783151266836770706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080315 n : ℚ) - (2 : ℚ) ^ (A000523 (A080315 n).toNat : ℤ)

end

end A080316.P13783151266836770706

/-! ## A080316.P9013168214504981325

`A083932(A057118(n))`
-/

namespace A080316.P9013168214504981325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083932 (A057118 n).toNat

end

end A080316.P9013168214504981325

/-! ## A080316.P2396237362165523258

`A083932(A082355(n))`
-/

namespace A080316.P2396237362165523258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083932 (A082355 n).toNat

end

end A080316.P2396237362165523258

/-! ## A080316.P10771512473148130733

`A085183(A080312(n))`
-/

namespace A080316.P10771512473148130733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085183 (A080312 n).toNat

end

end A080316.P10771512473148130733

/-! ## A080316.P4355878215752063055

`A053645(A080315(n))`
-/

namespace A080316.P4355878215752063055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080315 n).toNat

end

end A080316.P4355878215752063055

/-!
# A080317: a(n) = A007088(A080316(n)).

The programs for A080317, there is no canonical definition to state claims against.
-/

/-! ## A080317.P15423272790185212859

`A007088(A080316(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080317.P15423272790185212859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A080316 n).toNat

end

end A080317.P15423272790185212859

/-! ## A080317.P8778730427670994574

`A083933(A057118(n))`
-/

namespace A080317.P8778730427670994574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083933 (A057118 n).toNat

end

end A080317.P8778730427670994574

/-! ## A080317.P17857230150390356455

`A083933(A082355(n))`
-/

namespace A080317.P17857230150390356455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083933 (A082355 n).toNat

end

end A080317.P17857230150390356455

/-! ## A080317.P14242825141201870560

`A185544(2*A080316(n))`
-/

namespace A080317.P14242825141201870560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A080316 n).toNat

end

end A080317.P14242825141201870560

/-!
# A080320: a(n) = A057118(A080295(n)) = A080300(A080318(n)). Positions of A080318 in A014486.

The programs for A080320, there is no canonical definition to state claims against.
-/

/-! ## A080320.P2150500937622125757

`A080295(n)+A080321(n)-A080296(n)`
-/

namespace A080320.P2150500937622125757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080295 n + (A080321 n - A080296 n)

end

end A080320.P2150500937622125757

/-!
# A080321: a(n) = A080301(A080318(n)).

The programs for A080321, there is no canonical definition to state claims against.
-/

/-! ## A080321.P996118975254202455

`A080296(n)+A080320(n)-A080295(n)`
-/

namespace A080321.P996118975254202455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080296 n + (A080320 n - A080295 n)

end

end A080321.P996118975254202455

/-!
# A080322: Determinant of the n X n tridiagonal matrix M with the elements on the diagonals equal to 1, except M(n,n-1)=M(n-1,n)=n.

The programs for A080322, the canonical program `A080322.P5409884554699055352` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080322 has offset 2).

The definition of A080322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080322.P5409884554699055352

`A010892(n+1)-(n+2)²*A010892(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080322

/-- `A010892(n+1)-(n+2)²*A010892(n)` -/
def P5409884554699055352.Spec : Prop :=
  ∀ n, P5409884554699055352.a n = A080322 (n + 2)

theorem P5409884554699055352.correct : P5409884554699055352.Spec := by
  intro n
  simp only [A080322, Nat.add_sub_cancel]

end A080322

/-! ## A080322.P13670746203811544916

`A128834(n+2)+(n+2)²*A128834(n+4)`
-/

namespace A080322.P13670746203811544916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 2) + ((n + 2) ^ 2 : ℤ) * A128834 (n + 4)

end

end A080322.P13670746203811544916

namespace A080322

/-- `A128834(n+2)+(n+2)²*A128834(n+4)` -/
def P13670746203811544916.Spec : Prop :=
  ∀ n, P13670746203811544916.a n = A080322 (n + 2)

end A080322

/-! ## A080322.P6609931840149111014

`A010892(n+1)-A010892(n)*A076921(2*(n+2))`
-/

namespace A080322.P6609931840149111014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - A010892 n * A076921 (2 * (n + 2))

end

end A080322.P6609931840149111014

namespace A080322

/-- `A010892(n+1)-A010892(n)*A076921(2*(n+2))` -/
def P6609931840149111014.Spec : Prop :=
  ∀ n, P6609931840149111014.a n = A080322 (n + 2)

end A080322

/-!
# A080323: a(n) = mu(n)^n, where mu is the Moebius function (A008683).

The programs for A080323, the canonical program `A080323.P17287281775273184391` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080323 has offset 1).

The definition of A080323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n+1)^(n+1)` (program `A080323.P17287281775273184391`, by `A080323.P17287281775273184391.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080323.P17287281775273184391

`A008683(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080323

/-- `A008683(n+1)^(n+1)` -/
def P17287281775273184391.Spec : Prop :=
  ∀ n, P17287281775273184391.a n = A080323 (n + 1)

theorem P17287281775273184391.correct : P17287281775273184391.Spec := by
  intro n
  simp only [A080323, Nat.add_sub_cancel]

end A080323

/-! ## A080323.P9093152902671650950

`A379966(n+1)-A099991(n+1)`
-/

namespace A080323.P9093152902671650950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (n + 1) - A099991 (n + 1)

end

end A080323.P9093152902671650950

namespace A080323

/-- `A379966(n+1)-A099991(n+1)` -/
def P9093152902671650950.Spec : Prop :=
  ∀ n, P9093152902671650950.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P13823461801809764654

`∏{e}[n+1, round((-#)^-(n+1))]`
-/

namespace A080323.P13823461801809764654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((-(Nat.factorization (f1 n) p : ℤ) : ℚ) ^ (-(n + 1 : ℤ) : ℤ))

end

end A080323.P13823461801809764654

namespace A080323

/-- `∏{e}[n+1, round((-#)^-(n+1))]` -/
def P13823461801809764654.Spec : Prop :=
  ∀ n, P13823461801809764654.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P10837160505609842817

`round(A162512(n+1)^(1-n))`
-/

namespace A080323.P10837160505609842817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A162512 (n + 1) : ℚ) ^ (1 - (n : ℤ) : ℤ))

end

end A080323.P10837160505609842817

namespace A080323

/-- `round(A162512(n+1)^(1-n))` -/
def P10837160505609842817.Spec : Prop :=
  ∀ n, P10837160505609842817.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P3064330221207471958

`and(-(-1)^n, A067856(n+1))`
-/

namespace A080323.P3064330221207471958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((-1) ^ n)) (A067856 (n + 1))

end

end A080323.P3064330221207471958

namespace A080323

/-- `and(-(-1)^n, A067856(n+1))` -/
def P3064330221207471958.Spec : Prop :=
  ∀ n, P3064330221207471958.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P13479940939838710740

`(A007423(n+1)-1)^(n+1)`
-/

namespace A080323.P13479940939838710740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) ^ (n + 1)

end

end A080323.P13479940939838710740

namespace A080323

/-- `(A007423(n+1)-1)^(n+1)` -/
def P13479940939838710740.Spec : Prop :=
  ∀ n, P13479940939838710740.a n = A080323 (n + 1)

theorem P13479940939838710740.correct : P13479940939838710740.Spec := by
  intro n
  simp only [A080323, Nat.add_sub_cancel, A080323.P13479940939838710740.a, A080323.P17287281775273184391.a, A007423, A007423.P17981127199039660822.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080323

/-! ## A080323.P12913122493065576656

`(A076369(n+1)-(n+1))^(n+1)`
-/

namespace A080323.P12913122493065576656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076369 (n + 1) - (n + 1 : ℤ)) ^ (n + 1)

end

end A080323.P12913122493065576656

namespace A080323

/-- `(A076369(n+1)-(n+1))^(n+1)` -/
def P12913122493065576656.Spec : Prop :=
  ∀ n, P12913122493065576656.a n = A080323 (n + 1)

theorem P12913122493065576656.correct : P12913122493065576656.Spec := by
  intro n
  simp only [A080323, Nat.add_sub_cancel, A080323.P12913122493065576656.a, A080323.P17287281775273184391.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A076369, A076369.P8196715672845264258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080323

/-! ## A080323.P18266853793038305046

`(A055615(n+1)/(n+1))^(n+1)`
-/

namespace A080323.P18266853793038305046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055615 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)

end

end A080323.P18266853793038305046

namespace A080323

/-- `(A055615(n+1)/(n+1))^(n+1)` -/
def P18266853793038305046.Spec : Prop :=
  ∀ n, P18266853793038305046.a n = (A080323 (n + 1) : ℚ)

end A080323

/-! ## A080323.P13760184587780886763

`floor(A008683(2*n-(n-1))^(n-1))`
-/

namespace A080323.P13760184587780886763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A080323.P13760184587780886763

namespace A080323

/-- `floor(A008683(2*n-(n-1))^(n-1))` -/
def P13760184587780886763.Spec : Prop :=
  ∀ n, P13760184587780886763.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P12465442591915754400

`round(∏{p}[n+1, -#]/Δ[n²])^A006519(n+1)`
-/

namespace A080323.P12465442591915754400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) : ℚ) ^ (A006519 (n + 1) : ℤ)

end

end A080323.P12465442591915754400

namespace A080323

/-- `round(∏{p}[n+1, -#]/Δ[n²])^A006519(n+1)` -/
def P12465442591915754400.Spec : Prop :=
  ∀ n, P12465442591915754400.a n = (A080323 (n + 1) : ℚ)

end A080323

/-! ## A080323.P12565723975387628197

`round(∏{p}[n+1, -#]/Δ[n²])^A132739(n+1)`
-/

namespace A080323.P12565723975387628197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) : ℚ) ^ (A132739 (n + 1) : ℤ)

end

end A080323.P12565723975387628197

namespace A080323

/-- `round(∏{p}[n+1, -#]/Δ[n²])^A132739(n+1)` -/
def P12565723975387628197.Spec : Prop :=
  ∀ n, P12565723975387628197.a n = (A080323 (n + 1) : ℚ)

end A080323

/-! ## A080323.P1378329908538030631

`round(∏{p}[n+1, -#]/Δ[n²])^(A000040(n+1)+n)`
-/

namespace A080323.P1378329908538030631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) : ℚ) ^ (A000040 (n + 1) + (n : ℤ) : ℤ)

end

end A080323.P1378329908538030631

namespace A080323

/-- `round(∏{p}[n+1, -#]/Δ[n²])^(A000040(n+1)+n)` -/
def P1378329908538030631.Spec : Prop :=
  ∀ n, P1378329908538030631.a n = (A080323 (n + 1) : ℚ)

end A080323

/-! ## A080323.P2866399534776979398

`and(A008683(n+1), A165326(n))`
-/

namespace A080323.P2866399534776979398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1)) (A165326 n)

end

end A080323.P2866399534776979398

namespace A080323

/-- `and(A008683(n+1), A165326(n))` -/
def P2866399534776979398.Spec : Prop :=
  ∀ n, P2866399534776979398.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P15282190493353091204

`and(A067856(n+1), A165326(n))`
-/

namespace A080323.P15282190493353091204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067856 (n + 1)) (A165326 n)

end

end A080323.P15282190493353091204

namespace A080323

/-- `and(A067856(n+1), A165326(n))` -/
def P15282190493353091204.Spec : Prop :=
  ∀ n, P15282190493353091204.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P17375481456517118794

`and(A085384(n+1), A165326(n))`
-/

namespace A080323.P17375481456517118794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085384 (n + 1)) (A165326 n)

end

end A080323.P17375481456517118794

namespace A080323

/-- `and(A085384(n+1), A165326(n))` -/
def P17375481456517118794.Spec : Prop :=
  ∀ n, P17375481456517118794.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P3914422498214157109

`and(A086831(n+1), A165326(n))`
-/

namespace A080323.P3914422498214157109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086831 (n + 1)) (A165326 n)

end

end A080323.P3914422498214157109

namespace A080323

/-- `and(A086831(n+1), A165326(n))` -/
def P3914422498214157109.Spec : Prop :=
  ∀ n, P3914422498214157109.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P17948292928746585435

`and(A165326(n), A343370(n+1))`
-/

namespace A080323.P17948292928746585435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165326 n) (A343370 (n + 1))

end

end A080323.P17948292928746585435

namespace A080323

/-- `and(A165326(n), A343370(n+1))` -/
def P17948292928746585435.Spec : Prop :=
  ∀ n, P17948292928746585435.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P12286195661548430944

`and(A165326(n), A361019(n+1))`
-/

namespace A080323.P12286195661548430944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165326 n) (A361019 (n + 1))

end

end A080323.P12286195661548430944

namespace A080323

/-- `and(A165326(n), A361019(n+1))` -/
def P12286195661548430944.Spec : Prop :=
  ∀ n, P12286195661548430944.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P6302444389927845839

`A379966(n+1)+A087003(n+1)`
-/

namespace A080323.P6302444389927845839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (n + 1) + A087003 (n + 1)

end

end A080323.P6302444389927845839

namespace A080323

/-- `A379966(n+1)+A087003(n+1)` -/
def P6302444389927845839.Spec : Prop :=
  ∀ n, P6302444389927845839.a n = A080323 (n + 1)

end A080323

/-! ## A080323.P7099551817547504791

`A359155(n+1)*A359792(n+1)`
-/

namespace A080323.P7099551817547504791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359155 (n + 1) * A359792 (n + 1)

end

end A080323.P7099551817547504791

namespace A080323

/-- `A359155(n+1)*A359792(n+1)` -/
def P7099551817547504791.Spec : Prop :=
  ∀ n, P7099551817547504791.a n = A080323 (n + 1)

end A080323

/-!
# A080324: Union of even squarefree numbers (A039956) and squarefree numbers for which the number of prime factors is even (A030229).

The programs for A080324, the canonical program `A080324.P5087934849441666262` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080324 has offset 1).

The definition of A080324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080324.P17419558747067063885

`lt[0, A008683(n+1)^(n+1)]+1`
-/

namespace A080324.P17419558747067063885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080324.P17419558747067063885

namespace A080324

/-- `lt[0, A008683(n+1)^(n+1)]+1` -/
def P17419558747067063885.Spec : Prop :=
  ∀ n, (P17419558747067063885.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P9761262964844097149

`eq[1, A008683(C(n+1, n))^(n+1)]+1`
-/

namespace A080324.P9761262964844097149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080324.P9761262964844097149

namespace A080324

/-- `eq[1, A008683(C(n+1, n))^(n+1)]+1` -/
def P9761262964844097149.Spec : Prop :=
  ∀ n, (P9761262964844097149.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P15488194303608595446

`eq[1, A008683(abs(xor(n, -1)))^(n+1)]+1`
-/

namespace A080324.P15488194303608595446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |Int.xor (n : ℤ) (-1)|.toNat ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080324.P15488194303608595446

namespace A080324

/-- `eq[1, A008683(abs(xor(n, -1)))^(n+1)]+1` -/
def P15488194303608595446.Spec : Prop :=
  ∀ n, (P15488194303608595446.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P16235704089847162135

`record[(n+1)*A008683(2*n-(n-1))^(n-1)]`
-/

namespace A080324.P16235704089847162135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080324.P16235704089847162135

namespace A080324

/-- `record[(n+1)*A008683(2*n-(n-1))^(n-1)]` -/
def P16235704089847162135.Spec : Prop :=
  ∀ n, P16235704089847162135.a n = (A080324 (n + 1) : ℚ)

end A080324

/-! ## A080324.P11594223249916239057

`filter[A005117(n+1), A359820(#)]`
-/

namespace A080324.P11594223249916239057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A080324.P11594223249916239057

namespace A080324

/-- `filter[A005117(n+1), A359820(#)]` -/
def P11594223249916239057.Spec : Prop :=
  ∀ n, P11594223249916239057.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P2160675691286586771

`filter[A005117(n+1), A359824(#)]`
-/

namespace A080324.P2160675691286586771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A080324.P2160675691286586771

namespace A080324

/-- `filter[A005117(n+1), A359824(#)]` -/
def P2160675691286586771.Spec : Prop :=
  ∀ n, P2160675691286586771.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P5087934849441666262

`∪[A030229(n+1), A039956(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080324

/-- `∪[A030229(n+1), A039956(n+1)]` -/
def P5087934849441666262.Spec : Prop :=
  ∀ n, (P5087934849441666262.a n : ℤ) = A080324 (n + 1)

theorem P5087934849441666262.correct : P5087934849441666262.Spec := by
  intro n
  simp only [A080324, Nat.add_sub_cancel]

end A080324

/-! ## A080324.P12997173818518864556

`∪[A039956(n+1), A056913(n+1)]`
-/

namespace A080324.P12997173818518864556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080324.P12997173818518864556

namespace A080324

/-- `∪[A039956(n+1), A056913(n+1)]` -/
def P12997173818518864556.Spec : Prop :=
  ∀ n, (P12997173818518864556.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P3792557310755634479

`filter[A359821(n+1), A008966(#)]`
-/

namespace A080324.P3792557310755634479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A080324.P3792557310755634479

namespace A080324

/-- `filter[A359821(n+1), A008966(#)]` -/
def P3792557310755634479.Spec : Prop :=
  ∀ n, P3792557310755634479.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P5486418051494789348

`filter[A359821(n+1), A323154(#)]`
-/

namespace A080324.P5486418051494789348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A080324.P5486418051494789348

namespace A080324

/-- `filter[A359821(n+1), A323154(#)]` -/
def P5486418051494789348.Spec : Prop :=
  ∀ n, P5486418051494789348.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P11263507501397640018

`filter[A359821(n+1), A353559(#)]`
-/

namespace A080324.P11263507501397640018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A080324.P11263507501397640018

namespace A080324

/-- `filter[A359821(n+1), A353559(#)]` -/
def P11263507501397640018.Spec : Prop :=
  ∀ n, P11263507501397640018.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P9179143605092666062

`filter[A359821(n+1), A353627(#)]`
-/

namespace A080324.P9179143605092666062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A080324.P9179143605092666062

namespace A080324

/-- `filter[A359821(n+1), A353627(#)]` -/
def P9179143605092666062.Spec : Prop :=
  ∀ n, P9179143605092666062.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P10146680242089567097

`filter[A359821(n+1), A359834(#)]`
-/

namespace A080324.P10146680242089567097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A080324.P10146680242089567097

namespace A080324

/-- `filter[A359821(n+1), A359834(#)]` -/
def P10146680242089567097.Spec : Prop :=
  ∀ n, P10146680242089567097.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P1741822060301707208

`∩[A005117(n+1), A359821(n+1)]`
-/

namespace A080324.P1741822060301707208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080324.P1741822060301707208

namespace A080324

/-- `∩[A005117(n+1), A359821(n+1)]` -/
def P1741822060301707208.Spec : Prop :=
  ∀ n, (P1741822060301707208.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P10674670218663713479

`∩[A348499(n+1), A359821(n+1)]`
-/

namespace A080324.P10674670218663713479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080324.P10674670218663713479

namespace A080324

/-- `∩[A348499(n+1), A359821(n+1)]` -/
def P10674670218663713479.Spec : Prop :=
  ∀ n, (P10674670218663713479.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P6050090787301534300

`∩[A348506(n+1), A359821(n+1)]`
-/

namespace A080324.P6050090787301534300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080324.P6050090787301534300

namespace A080324

/-- `∩[A348506(n+1), A359821(n+1)]` -/
def P6050090787301534300.Spec : Prop :=
  ∀ n, (P6050090787301534300.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P5051788892068146852

`record[(n+1)*(A055615(n+1)/(n+1))^(n+1)]`
-/

namespace A080324.P5051788892068146852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A055615 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080324.P5051788892068146852

namespace A080324

/-- `record[(n+1)*(A055615(n+1)/(n+1))^(n+1)]` -/
def P5051788892068146852.Spec : Prop :=
  ∀ n, P5051788892068146852.a n = (A080324 (n + 1) : ℚ)

end A080324

/-! ## A080324.P11235638474492805442

`filter[A064594(n+1), A359820(#)]`
-/

namespace A080324.P11235638474492805442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A080324.P11235638474492805442

namespace A080324

/-- `filter[A064594(n+1), A359820(#)]` -/
def P11235638474492805442.Spec : Prop :=
  ∀ n, P11235638474492805442.a n = A080324 (n + 1)

end A080324

/-! ## A080324.P8995118001284314738

`∩[A064594(n+1), A359821(n+1)]`
-/

namespace A080324.P8995118001284314738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080324.P8995118001284314738

namespace A080324

/-- `∩[A064594(n+1), A359821(n+1)]` -/
def P8995118001284314738.Spec : Prop :=
  ∀ n, (P8995118001284314738.a n : ℤ) = A080324 (n + 1)

end A080324

/-! ## A080324.P17690049907665338968

`eq[1, A080323(n+1)]+1`
-/

namespace A080324.P17690049907665338968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080324.P17690049907665338968

namespace A080324

/-- `eq[1, A080323(n+1)]+1` -/
def P17690049907665338968.Spec : Prop :=
  ∀ n, (P17690049907665338968.a n : ℤ) = A080324 (n + 1)

end A080324

/-!
# A080325: a(n) = ((n+1)!*(2*n+1)!/4) * [x^(2*n-2)] 1/sin(x)^2.

The programs for A080325, there is no canonical definition to state claims against.
-/

/-! ## A080325.P11701358319322784760

`A000010(∑[comp[2*(n+1)]!])*comp[2*(n+1)]`
-/

namespace A080325.P11701358319322784760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j) * (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

end

end A080325.P11701358319322784760

/-!
# A080327: Numbers k for which Lucas(k) and Fibonacci(k) are both prime.

The programs for A080327, there is no canonical definition to state claims against.
-/

/-! ## A080327.P18188398706911297679

`∩[A001605(n+1), A001606(n+1)]`
-/

namespace A080327.P18188398706911297679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080327.P18188398706911297679

/-! ## A080327.P14614709934216795978

`∩[A001606(n+1), A069744(n+1)+1]`
-/

namespace A080327.P14614709934216795978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080327.P14614709934216795978

/-! ## A080327.P4581781343206752005

`A001605(A001608(A278248(n+2))+n)`
-/

namespace A080327.P4581781343206752005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (A001608 (A278248 (n + 2)).toNat + (n : ℤ)).toNat

end

end A080327.P4581781343206752005

/-!
# A080328: Smaller of the two Ulam numbers that sum to the n-th Ulam number.

The programs for A080328, there is no canonical definition to state claims against.
-/

/-! ## A080328.P17514709073606981158

`(A002858(n+1)-A080329(n+1))%A000124(n)`
-/

namespace A080328.P17514709073606981158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1) - A080329 (n + 1)) (A000124 n)

end

end A080328.P17514709073606981158

/-! ## A080328.P316011178281631497

`A048951(n+1)%(A080329(n+1)+A002858(n+1))`
-/

namespace A080328.P316011178281631497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048951 (n + 1)) (A080329 (n + 1) + A002858 (n + 1))

end

end A080328.P316011178281631497

/-! ## A080328.P9623591715087019780

`A002858(n+1)%A005282(n+1)-A080329(n+1)`
-/

namespace A080328.P9623591715087019780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1)) (A005282 (n + 1)) - A080329 (n + 1)

end

end A080328.P9623591715087019780

/-! ## A080328.P17234881685420828765

`A002858(n+1)%A028310(A080329(n+1))`
-/

namespace A080328.P17234881685420828765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1)) (A028310 (A080329 (n + 1)).toNat)

end

end A080328.P17234881685420828765

/-! ## A080328.P12479651762990073451

`(A048951(n+1)/2)%A028310(A080329(n+1))`
-/

namespace A080328.P12479651762990073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A048951 (n + 1) : ℚ) / 2)) (A028310 (A080329 (n + 1)).toNat)

end

end A080328.P12479651762990073451

/-! ## A080328.P16827388385425844482

`A001281(A048951(n+1))%A028310(A080329(n+1))`
-/

namespace A080328.P16827388385425844482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001281 (A048951 (n + 1)).toNat) (A028310 (A080329 (n + 1)).toNat)

end

end A080328.P16827388385425844482

/-!
# A080329: Larger of the two Ulam numbers that sum to the n-th Ulam number.

The programs for A080329, there is no canonical definition to state claims against.
-/

/-! ## A080329.P2066770780204186436

`(A002858(n+1)-A080328(n+1))%A000124(n)`
-/

namespace A080329.P2066770780204186436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1) - A080328 (n + 1)) (A000124 n)

end

end A080329.P2066770780204186436

/-! ## A080329.P6076454327411398527

`A048951(n+1)%(A080328(n+1)+A002858(n+1))`
-/

namespace A080329.P6076454327411398527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048951 (n + 1)) (A080328 (n + 1) + A002858 (n + 1))

end

end A080329.P6076454327411398527

/-! ## A080329.P3791839448741276365

`A002858(n+1)%A005282(n+1)-A080328(n+1)`
-/

namespace A080329.P3791839448741276365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1)) (A005282 (n + 1)) - A080328 (n + 1)

end

end A080329.P3791839448741276365

/-! ## A080329.P13565060238281340829

`A002858(n+1)%A000079(n)-A080328(n+1)`
-/

namespace A080329.P13565060238281340829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (n + 1)) (A000079 n) - A080328 (n + 1)

end

end A080329.P13565060238281340829

/-! ## A080329.P13685428033097820177

`(A002858(-xor(n, -1))-A080328(n+1))%A329800(n+1)`
-/

namespace A080329.P13685428033097820177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002858 (-Int.xor (n : ℤ) (-1)).toNat - A080328 (n + 1)) (A329800 (n + 1))

end

end A080329.P13685428033097820177

/-!
# A080330: Index in A002858 of the smaller of the two Ulam numbers that sum to the n-th Ulam number.

The programs for A080330, there is no canonical definition to state claims against.
-/

/-! ## A080330.P6468643503613374637

`A007895(A080328(n+1)^4)`
-/

namespace A080330.P6468643503613374637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A080328 (n + 1) ^ 4).toNat

end

end A080330.P6468643503613374637

/-! ## A080330.P14771532293424825848

`A007895(A080328(n+1)²²)`
-/

namespace A080330.P14771532293424825848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((A080328 (n + 1) ^ 2) ^ 2).toNat

end

end A080330.P14771532293424825848

/-! ## A080330.P11550195114744182689

`A007895(((A002858(n+1)-A080329(n+1))%A000124(n))^4)`
-/

namespace A080330.P11550195114744182689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.tmod (A002858 (n + 1) - A080329 (n + 1)) (A000124 n) ^ 4).toNat

end

end A080330.P11550195114744182689

/-! ## A080330.P13622026290009067460

`A056924(A092569(n)+A026585(n))`
-/

namespace A080330.P13622026290009067460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A092569 n + A026585 n).toNat

end

end A080330.P13622026290009067460

/-!
# A080332: G.f.: Product_{n>0} (1 - x^n)^3 * (1 - x^(2*n - 1))^2 = Sum_{n in Z} (6*n + 1) * x^(n*(3*n + 1)/2).

The programs for A080332, the canonical program `A080332.P12047644629895740680` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080332 has offset 0).

The definition of A080332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080332.P8938292258650433826

`(-1)^n*A178902(n)`
-/

namespace A080332.P8938292258650433826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A178902 n

end

end A080332.P8938292258650433826

namespace A080332

/-- `(-1)^n*A178902(n)` -/
def P8938292258650433826.Spec : Prop :=
  ∀ n, P8938292258650433826.a n = A080332 n

end A080332

/-! ## A080332.P12047644629895740680

`A010815(n)*A116916(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080332

/-- `A010815(n)*A116916(n)` -/
def P12047644629895740680.Spec : Prop :=
  ∀ n, P12047644629895740680.a n = A080332 n

theorem P12047644629895740680.correct : P12047644629895740680.Spec := by
  intro n
  simp only [A080332]

end A080332

/-! ## A080332.P6072562107430225700

`A121373(n)*A133079(n)`
-/

namespace A080332.P6072562107430225700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A133079 n

end

end A080332.P6072562107430225700

namespace A080332

/-- `A121373(n)*A133079(n)` -/
def P6072562107430225700.Spec : Prop :=
  ∀ n, P6072562107430225700.a n = A080332 n

end A080332

/-! ## A080332.P8590706576116861973

`A178902(n)/A033999(n)`
-/

namespace A080332.P8590706576116861973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178902 n : ℚ) / (A033999 n : ℚ)

end

end A080332.P8590706576116861973

namespace A080332

/-- `A178902(n)/A033999(n)` -/
def P8590706576116861973.Spec : Prop :=
  ∀ n, P8590706576116861973.a n = (A080332 n : ℚ)

end A080332

/-! ## A080332.P5225250757412838302

`A133985(n)*A178902(n)*A133985(n)²`
-/

namespace A080332.P5225250757412838302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n * A178902 n * A133985 n ^ 2

end

end A080332.P5225250757412838302

namespace A080332

/-- `A133985(n)*A178902(n)*A133985(n)²` -/
def P5225250757412838302.Spec : Prop :=
  ∀ n, P5225250757412838302.a n = A080332 n

end A080332

/-! ## A080332.P17857470445623546029

`A010815(n)*A010816(3*n)`
-/

namespace A080332.P17857470445623546029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A010816 (3 * n)

end

end A080332.P17857470445623546029

namespace A080332

/-- `A010815(n)*A010816(3*n)` -/
def P17857470445623546029.Spec : Prop :=
  ∀ n, P17857470445623546029.a n = A080332 n

end A080332

/-! ## A080332.P9248114189286481347

`A057077(A235963(n))*A134756(n)`
-/

namespace A080332.P9248114189286481347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A235963 n).toNat * A134756 n

end

end A080332.P9248114189286481347

namespace A080332

/-- `A057077(A235963(n))*A134756(n)` -/
def P9248114189286481347.Spec : Prop :=
  ∀ n, P9248114189286481347.a n = A080332 n

end A080332

/-! ## A080332.P11308438518599509192

`A134756(n)/A057077(∑[A073424(3*n)])`
-/

namespace A080332.P11308438518599509192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134756 n : ℚ) / (A057077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A080332.P11308438518599509192

namespace A080332

/-- `A134756(n)/A057077(∑[A073424(3*n)])` -/
def P11308438518599509192.Spec : Prop :=
  ∀ n, P11308438518599509192.a n = (A080332 n : ℚ)

end A080332

/-! ## A080332.P15690743962246131421

`A134756(n)/A057077(∑[A010815(n)²]-1)`
-/

namespace A080332.P15690743962246131421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134756 n : ℚ) / (A057077 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat : ℚ)

end

end A080332.P15690743962246131421

namespace A080332

/-- `A134756(n)/A057077(∑[A010815(n)²]-1)` -/
def P15690743962246131421.Spec : Prop :=
  ∀ n, P15690743962246131421.a n = (A080332 n : ℚ)

end A080332

/-! ## A080332.P597014978164837320

`A057077(A010815(n)*A134756(n))*A134756(n)`
-/

namespace A080332.P597014978164837320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A010815 n * A134756 n).toNat * A134756 n

end

end A080332.P597014978164837320

namespace A080332

/-- `A057077(A010815(n)*A134756(n))*A134756(n)` -/
def P597014978164837320.Spec : Prop :=
  ∀ n, P597014978164837320.a n = A080332 n

end A080332

/-! ## A080332.P10802946552603446395

`A113277(8*n)`
-/

namespace A080332.P10802946552603446395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113277 (8 * n)

end

end A080332.P10802946552603446395

namespace A080332

/-- `A113277(8*n)` -/
def P10802946552603446395.Spec : Prop :=
  ∀ n, P10802946552603446395.a n = A080332 n

end A080332

/-! ## A080332.P5926882878532664990

`A114855(8*n)`
-/

namespace A080332.P5926882878532664990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114855 (8 * n)

end

end A080332.P5926882878532664990

namespace A080332

/-- `A114855(8*n)` -/
def P5926882878532664990.Spec : Prop :=
  ∀ n, P5926882878532664990.a n = A080332 n

end A080332

/-! ## A080332.P16545187825998802065

`A134756(n)/A057077(∑[A306901(n)%2])`
-/

namespace A080332.P16545187825998802065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306901 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134756 n : ℚ) / (A057077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A080332.P16545187825998802065

namespace A080332

/-- `A134756(n)/A057077(∑[A306901(n)%2])` -/
def P16545187825998802065.Spec : Prop :=
  ∀ n, P16545187825998802065.a n = (A080332 n : ℚ)

end A080332

/-!
# A080333: Partial sums of A080278.

The programs for A080333, the canonical program `A080333.P10328181931064731962` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080333 has offset 1).

The definition of A080333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080333.P10328181931064731962

`n+1+3*a(floor((n+1)/3)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080333

/-- `n+1+3*a(floor((n+1)/3)-1)` -/
def P10328181931064731962.Spec : Prop :=
  ∀ n, (P10328181931064731962.a n : ℤ) = A080333 (n + 1)

theorem P10328181931064731962.correct : P10328181931064731962.Spec := by
  intro n
  simp only [A080333, Nat.add_sub_cancel]

end A080333

/-! ## A080333.P160002303718653553

`∑[∑{d}[3^val(n+1, 3), #]]`
-/

namespace A080333.P160002303718653553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P160002303718653553

namespace A080333

/-- `∑[∑{d}[3^val(n+1, 3), #]]` -/
def P160002303718653553.Spec : Prop :=
  ∀ n, (P160002303718653553.a n : ℤ) = A080333 (n + 1)

end A080333

/-! ## A080333.P18269499219175971435

`∑[floor(3^(val(n+1, 3)+1)/2)]`
-/

namespace A080333.P18269499219175971435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P18269499219175971435

namespace A080333

/-- `∑[floor(3^(val(n+1, 3)+1)/2)]` -/
def P18269499219175971435.Spec : Prop :=
  ∀ n, P18269499219175971435.a n = A080333 (n + 1)

end A080333

/-! ## A080333.P6214468858375886873

`∑[(3^val(3*(n+1), 3)-1)/2]`
-/

namespace A080333.P6214468858375886873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ SequenceMachineLib.valuation (3 * (n + 1)) 3 : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P6214468858375886873

namespace A080333

/-- `∑[(3^val(3*(n+1), 3)-1)/2]` -/
def P6214468858375886873.Spec : Prop :=
  ∀ n, P6214468858375886873.a n = (A080333 (n + 1) : ℚ)

end A080333

/-! ## A080333.P11464119685832554897

`∑{d}[3^val(n+1, 3), #]+a(n-1)` with `a(0)=1`
-/

namespace A080333.P11464119685832554897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A080333.P11464119685832554897

namespace A080333

/-- `∑{d}[3^val(n+1, 3), #]+a(n-1)` -/
def P11464119685832554897.Spec : Prop :=
  ∀ n, (P11464119685832554897.a n : ℤ) = A080333 (n + 1)

end A080333

/-! ## A080333.P7017979779045103351

`∑[∑{d}[n+1, #]/∑{d}[n+1, #%lcm(3, #)]]`
-/

namespace A080333.P7017979779045103351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f3 n), d % Nat.lcm 3 d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P7017979779045103351

namespace A080333

/-- `∑[∑{d}[n+1, #]/∑{d}[n+1, #%lcm(3, #)]]` -/
def P7017979779045103351.Spec : Prop :=
  ∀ n, P7017979779045103351.a n = (A080333 (n + 1) : ℚ)

end A080333

/-! ## A080333.P13412408627929777654

`∑[A080278(n+1)]`
-/

namespace A080333.P13412408627929777654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P13412408627929777654

namespace A080333

/-- `∑[A080278(n+1)]` -/
def P13412408627929777654.Spec : Prop :=
  ∀ n, P13412408627929777654.a n = A080333 (n + 1)

end A080333

/-! ## A080333.P15342137097084154772

`∑[A000203(3^val(n+1, 3))]`
-/

namespace A080333.P15342137097084154772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P15342137097084154772

namespace A080333

/-- `∑[A000203(3^val(n+1, 3))]` -/
def P15342137097084154772.Spec : Prop :=
  ∀ n, P15342137097084154772.a n = A080333 (n + 1)

end A080333

/-! ## A080333.P9070699578498167988

`∑[A032766(A038500(n+1))]`
-/

namespace A080333.P9070699578498167988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P9070699578498167988

namespace A080333

/-- `∑[A032766(A038500(n+1))]` -/
def P9070699578498167988.Spec : Prop :=
  ∀ n, P9070699578498167988.a n = A080333 (n + 1)

end A080333

/-! ## A080333.P3899602037982193687

`∑[A003973(A318666(n+1))]`
-/

namespace A080333.P3899602037982193687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A318666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P3899602037982193687

namespace A080333

/-- `∑[A003973(A318666(n+1))]` -/
def P3899602037982193687.Spec : Prop :=
  ∀ n, P3899602037982193687.a n = A080333 (n + 1)

end A080333

/-! ## A080333.P5580939825725350017

`A080278(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A080333.P5580939825725350017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080278 (n + 1) + a (A023443 n).toNat

end

end A080333.P5580939825725350017

namespace A080333

/-- `A080278(n+1)+a(A023443(n))` -/
def P5580939825725350017.Spec : Prop :=
  ∀ n, P5580939825725350017.a n = A080333 (n + 1)

end A080333

/-! ## A080333.P9511819042476672595

`∑[∑{d}[gcd(n+1, 3^n), #]]`
-/

namespace A080333.P9511819042476672595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (3 ^ n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P9511819042476672595

namespace A080333

/-- `∑[∑{d}[gcd(n+1, 3^n), #]]` -/
def P9511819042476672595.Spec : Prop :=
  ∀ n, (P9511819042476672595.a n : ℤ) = A080333 (n + 1)

end A080333

/-! ## A080333.P16053917636749278784

`∑[A000203(gcd(n+1, 3^n))]`
-/

namespace A080333.P16053917636749278784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd (n + 1) (3 ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080333.P16053917636749278784

namespace A080333

/-- `∑[A000203(gcd(n+1, 3^n))]` -/
def P16053917636749278784.Spec : Prop :=
  ∀ n, P16053917636749278784.a n = A080333 (n + 1)

end A080333

/-!
# A080334: n^2 read backwards, for n = 51, 50, 49, ..., 1.

The programs for A080334, there is no canonical definition to state claims against.
-/

/-! ## A080334.P8564698130268279551

`A004086((51-n)²)`
-/

namespace A080334.P8564698130268279551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((51 - (n : ℤ)) ^ 2).toNat

end

end A080334.P8564698130268279551

/-!
# A080335: Diagonal in square spiral or maze arrangement of natural numbers.

The programs for A080335, the canonical program `A080335.P7609378743764880717` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080335 has offset 0).

The definition of A080335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080335.P7609378743764880717

`n%2+(n+1)²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080335

/-- `n%2+(n+1)²` -/
def P7609378743764880717.Spec : Prop :=
  ∀ n, (P7609378743764880717.a n : ℤ) = A080335 n

theorem P7609378743764880717.correct : P7609378743764880717.Spec := by
  intro n
  simp only [A080335]

end A080335

/-! ## A080335.P7594890981138778614

`(3+4*n+2*n²-(-1)^n)/2`
-/

namespace A080335.P7594890981138778614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + 4 * n + 2 * n ^ 2 : ℤ) - (-1) ^ n : ℚ) / 2

end

end A080335.P7594890981138778614

namespace A080335

/-- `(3+4*n+2*n²-(-1)^n)/2` -/
def P7594890981138778614.Spec : Prop :=
  ∀ n, P7594890981138778614.a n = (A080335 n : ℚ)

end A080335

/-! ## A080335.P13801594252412668674

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=17`
-/

namespace A080335.P13801594252412668674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9, 17] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A080335.P13801594252412668674

namespace A080335

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13801594252412668674.Spec : Prop :=
  ∀ n, P13801594252412668674.a n = A080335 n

end A080335

/-! ## A080335.P17339141550647287548

`A000035(n)+A000290(n+1)`
-/

namespace A080335.P17339141550647287548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000290 (n + 1)

end

end A080335.P17339141550647287548

namespace A080335

/-- `A000035(n)+A000290(n+1)` -/
def P17339141550647287548.Spec : Prop :=
  ∀ n, P17339141550647287548.a n = A080335 n

theorem P17339141550647287548.correct : P17339141550647287548.Spec := by
  intro n
  simp only [A080335, Nat.add_sub_cancel, A080335.P17339141550647287548.a, A080335.P7609378743764880717.a, A000035, A000035.P2023072528413494694.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080335

/-! ## A080335.P14208603109956940988

`A137932(n+2)+1`
-/

namespace A080335.P14208603109956940988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 (n + 2) + 1

end

end A080335.P14208603109956940988

namespace A080335

/-- `A137932(n+2)+1` -/
def P14208603109956940988.Spec : Prop :=
  ∀ n, P14208603109956940988.a n = A080335 n

end A080335

/-! ## A080335.P10909553507967641662

`A002378(n+2)-A047238(n+3)+1`
-/

namespace A080335.P10909553507967641662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 2) - A047238 (n + 3) + 1

end

end A080335.P10909553507967641662

namespace A080335

/-- `A002378(n+2)-A047238(n+3)+1` -/
def P10909553507967641662.Spec : Prop :=
  ∀ n, P10909553507967641662.a n = A080335 n

end A080335

/-! ## A080335.P3648995431622794911

`or(1, (n+1)²)`
-/

namespace A080335.P3648995431622794911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2)

end

end A080335.P3648995431622794911

namespace A080335

/-- `or(1, (n+1)²)` -/
def P3648995431622794911.Spec : Prop :=
  ∀ n, (P3648995431622794911.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P14604617592658934725

`and(1, n)+(n+1)²`
-/

namespace A080335.P14604617592658934725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (n + 1) ^ 2

end

end A080335.P14604617592658934725

namespace A080335

/-- `and(1, n)+(n+1)²` -/
def P14604617592658934725.Spec : Prop :=
  ∀ n, (P14604617592658934725.a n : ℤ) = A080335 n

theorem P14604617592658934725.correct : P14604617592658934725.Spec := by
  intro n
  simp only [A080335, Nat.add_sub_cancel, A080335.P14604617592658934725.a, A080335.P7609378743764880717.a, SequenceMachineLib.memo_apply]
  try simp

end A080335

/-! ## A080335.P12199393332979800694

`or(3, record[(n-1)²])-2`
-/

namespace A080335.P12199393332979800694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 2

end

end A080335.P12199393332979800694

namespace A080335

/-- `or(3, record[(n-1)²])-2` -/
def P12199393332979800694.Spec : Prop :=
  ∀ n, P12199393332979800694.a n = A080335 n

end A080335

/-! ## A080335.P1851607100480405990

`∑[a(n-2)+4]` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A080335.P1851607100480405990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080335.P1851607100480405990

namespace A080335

/-- `∑[a(n-2)+4]` -/
def P1851607100480405990.Spec : Prop :=
  ∀ n, (P1851607100480405990.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P6103154898265642270

`a(n-2)+4*n` with `a(0)=1, a(1)=5`
-/

namespace A080335.P6103154898265642270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 4 * n

end

end A080335.P6103154898265642270

namespace A080335

/-- `a(n-2)+4*n` -/
def P6103154898265642270.Spec : Prop :=
  ∀ n, (P6103154898265642270.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P6404657603709027636

`or(3, ∑[2*n+1])-2`
-/

namespace A080335.P6404657603709027636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2

end

end A080335.P6404657603709027636

namespace A080335

/-- `or(3, ∑[2*n+1])-2` -/
def P6404657603709027636.Spec : Prop :=
  ∀ n, P6404657603709027636.a n = A080335 n

end A080335

/-! ## A080335.P3807370381407337830

`xor(2, or(3, ∑[2*n+1]))`
-/

namespace A080335.P3807370381407337830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A080335.P3807370381407337830

namespace A080335

/-- `xor(2, or(3, ∑[2*n+1]))` -/
def P3807370381407337830.Spec : Prop :=
  ∀ n, (P3807370381407337830.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P15526273673244154115

`(n+1)²+2-gcd(2, n)`
-/

namespace A080335.P15526273673244154115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (2 - (Nat.gcd 2 n : ℤ))

end

end A080335.P15526273673244154115

namespace A080335

/-- `(n+1)²+2-gcd(2, n)` -/
def P15526273673244154115.Spec : Prop :=
  ∀ n, P15526273673244154115.a n = A080335 n

end A080335

/-! ## A080335.P5472793897188594955

`2-or(1, -(n*(n+2)))`
-/

namespace A080335.P5472793897188594955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (-(n * (n + 2) : ℤ))

end

end A080335.P5472793897188594955

namespace A080335

/-- `2-or(1, -(n*(n+2)))` -/
def P5472793897188594955.Spec : Prop :=
  ∀ n, P5472793897188594955.a n = A080335 n

end A080335

/-! ## A080335.P8219514036704214301

`∑[xor(1, n+1)+n]+1`
-/

namespace A080335.P8219514036704214301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080335.P8219514036704214301

namespace A080335

/-- `∑[xor(1, n+1)+n]+1` -/
def P8219514036704214301.Spec : Prop :=
  ∀ n, (P8219514036704214301.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P2446320120190493677

`∑[2*n+1]+and(1, n)`
-/

namespace A080335.P2446320120190493677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n

end

end A080335.P2446320120190493677

namespace A080335

/-- `∑[2*n+1]+and(1, n)` -/
def P2446320120190493677.Spec : Prop :=
  ∀ n, (P2446320120190493677.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P11430842178202069219

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A080335.P11430842178202069219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080335.P11430842178202069219

namespace A080335

/-- `∑[∑[4-a(n-1)]]` -/
def P11430842178202069219.Spec : Prop :=
  ∀ n, P11430842178202069219.a n = A080335 n

end A080335

/-! ## A080335.P9238329979958131057

`xor((n+1)², char[2*n+1])`
-/

namespace A080335.P9238329979958131057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((n + 1) ^ 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A080335.P9238329979958131057

namespace A080335

/-- `xor((n+1)², char[2*n+1])` -/
def P9238329979958131057.Spec : Prop :=
  ∀ n, (P9238329979958131057.a n : ℤ) = A080335 n

end A080335

/-! ## A080335.P7934278046505181512

`ogf((1+3x-x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A080335.P7934278046505181512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1, 1] [1, -2, 0, 2, -1] n

end

end A080335.P7934278046505181512

namespace A080335

/-- `ogf((1+3x-x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P7934278046505181512.Spec : Prop :=
  ∀ n, P7934278046505181512.a n = A080335 n

end A080335

/-!
# A080336: Partial sums of A007001.

The programs for A080336, there is no canonical definition to state claims against.
-/

/-! ## A080336.P15239739133841829929

`A085197(n+1)-(n+1)`
-/

namespace A080336.P15239739133841829929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085197 (n + 1) - (n + 1 : ℤ)

end

end A080336.P15239739133841829929

/-! ## A080336.P1548987118667873733

`∑[A007001(A028310(n))]-1`
-/

namespace A080336.P1548987118667873733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A080336.P1548987118667873733

/-! ## A080336.P16520610976322381003

`∑[A007001(n+1)]-A007001(n+1)`
-/

namespace A080336.P16520610976322381003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007001 (n + 1)

end

end A080336.P16520610976322381003

/-! ## A080336.P10992463382697850965

`∑[∑[A133912(n+1)]-A133912(n+1)]`
-/

namespace A080336.P10992463382697850965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133912 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A133912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080336.P10992463382697850965

/-! ## A080336.P15933246086377831511

`A110326(2*n+1)+A085197(n+1)`
-/

namespace A080336.P15933246086377831511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110326 (2 * n + 1) + A085197 (n + 1)

end

end A080336.P15933246086377831511

/-! ## A080336.P6890251563239775115

`record[A085196(n)]`
-/

namespace A080336.P6890251563239775115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P6890251563239775115

/-! ## A080336.P13200378335501194597

`A085196(A081291(n))`
-/

namespace A080336.P13200378335501194597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 (A081291 n).toNat

end

end A080336.P13200378335501194597

/-! ## A080336.P9728106804297937477

`record[A057509(n)-n]`
-/

namespace A080336.P9728106804297937477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P9728106804297937477

/-! ## A080336.P11604052083841381471

`record[A073284(n)-n]`
-/

namespace A080336.P11604052083841381471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073284 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P11604052083841381471

/-! ## A080336.P2118422614846396455

`A085196(A244216(n+1))`
-/

namespace A080336.P2118422614846396455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 (A244216 (n + 1)).toNat

end

end A080336.P2118422614846396455

/-! ## A080336.P64059931605075509

`eq[1, A085189(n)]-n`
-/

namespace A080336.P64059931605075509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A080336.P64059931605075509

/-! ## A080336.P14185738704589727443

`eq[1, A085194(n)]-n`
-/

namespace A080336.P14185738704589727443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A080336.P14185738704589727443

/-! ## A080336.P17840753211036245195

`record[n-A057510(n)]`
-/

namespace A080336.P17840753211036245195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P17840753211036245195

/-! ## A080336.P6143577321447719502

`record[A057503(A057161(n))-n]`
-/

namespace A080336.P6143577321447719502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A057161 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P6143577321447719502

/-! ## A080336.P11868214457749562028

`record[A057503(A057501(n))-n]`
-/

namespace A080336.P11868214457749562028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A057501 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P11868214457749562028

/-! ## A080336.P7804376811396166480

`record[A057501(A074680(n))-n]`
-/

namespace A080336.P7804376811396166480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A074680 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P7804376811396166480

/-! ## A080336.P14263509754772681097

`record[n-A130945(n)]`
-/

namespace A080336.P14263509754772681097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P14263509754772681097

/-! ## A080336.P6590988264646393270

`record[A130946(n)-n]`
-/

namespace A080336.P6590988264646393270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130946 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080336.P6590988264646393270

/-!
# A080337: Bisection of A080107.

The programs for A080337, there is no canonical definition to state claims against.
-/

/-! ## A080337.P10517705424955177491

`A080107(Δ[n²])`
-/

namespace A080337.P10517705424955177491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A080337.P10517705424955177491

/-! ## A080337.P1038844227444190771

`record[A080107(xor(1, n))]`
-/

namespace A080337.P1038844227444190771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P1038844227444190771

/-! ## A080337.P17368357774404136638

`or(char[1], A080107(2*n+1))`
-/

namespace A080337.P17368357774404136638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A080107 (2 * n + 1))

end

end A080337.P17368357774404136638

/-! ## A080337.P11360766722396696370

`record[A080107(n+1)/(n+1)^and(1, n)]`
-/

namespace A080337.P11360766722396696370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080107 (n + 1) : ℚ) / ((n + 1) ^ Nat.land 1 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P11360766722396696370

/-! ## A080337.P3594661019940712534

`record[A080107(A004442(n))]`
-/

namespace A080337.P3594661019940712534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P3594661019940712534

/-! ## A080337.P10220361484646256709

`record[A080107(A026741(n))]`
-/

namespace A080337.P10220361484646256709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P10220361484646256709

/-! ## A080337.P12567389908770425614

`record[A080107(abs(A010816(n)))]`
-/

namespace A080337.P12567389908770425614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 |A010816 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P12567389908770425614

/-! ## A080337.P6346706411128163883

`record[A080107(A014681(n)+1)]`
-/

namespace A080337.P6346706411128163883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P6346706411128163883

/-! ## A080337.P17288526578811851718

`record[A080107(A033999(n)+n)]`
-/

namespace A080337.P17288526578811851718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P17288526578811851718

/-! ## A080337.P11888245022462183404

`record[A080107(n)^A088705(n)]`
-/

namespace A080337.P11888245022462183404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080107 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080337.P11888245022462183404

/-!
# A080338: Product of consecutive previous terms (starting with 2,3).

The programs for A080338, there is no canonical definition to state claims against.
-/

/-! ## A080338.P4711690601106966628

`record[Δ[A001615(A018589(n+1))]]`
-/

namespace A080338.P4711690601106966628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A018589 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080338.P4711690601106966628

/-! ## A080338.P14406800928260148288

`record[A006047(A050106(n+1)+A048675(n+1))]`
-/

namespace A080338.P14406800928260148288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A050106 (n + 1) + A048675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080338.P14406800928260148288

/-! ## A080338.P16071923566456183368

`A007425(A356062(n+1))+A000007(n)`
-/

namespace A080338.P16071923566456183368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A356062 (n + 1)).toNat + A000007 n

end

end A080338.P16071923566456183368

/-!
# A080339: Characteristic function of {1} union {primes}: 1 if n is 1 or a prime, else 0.

The programs for A080339, the canonical program `A080339.P3185701196739832768` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080339 has offset 1).

The definition of A080339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080339.P3185701196739832768

`∑{e}[n+1, #]!%2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080339

/-- `∑{e}[n+1, #]!%2` -/
def P3185701196739832768.Spec : Prop :=
  ∀ n, (P3185701196739832768.a n : ℤ) = A080339 (n + 1)

theorem P3185701196739832768.correct : P3185701196739832768.Spec := by
  intro n
  simp only [A080339, Nat.add_sub_cancel]

end A080339

/-! ## A080339.P13277306205644233124

`and(1, ∑{e}[n+1, #]!)`
-/

namespace A080339.P13277306205644233124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A080339.P13277306205644233124

namespace A080339

/-- `and(1, ∑{e}[n+1, #]!)` -/
def P13277306205644233124.Spec : Prop :=
  ∀ n, (P13277306205644233124.a n : ℤ) = A080339 (n + 1)

theorem P13277306205644233124.correct : P13277306205644233124.Spec := by
  intro n
  simp only [A080339, Nat.add_sub_cancel, A080339.P13277306205644233124.f1, A080339.P13277306205644233124.a, A080339.P3185701196739832768.f1, A080339.P3185701196739832768.a, SequenceMachineLib.memo_apply]
  try simp

end A080339

/-! ## A080339.P1713182195954780647

`round(∏{e}[n+1, γ/#])`
-/

namespace A080339.P1713182195954780647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant / (Nat.factorization (f1 n) p : ℝ))

end

end A080339.P1713182195954780647

namespace A080339

/-- `round(∏{e}[n+1, γ/#])` -/
def P1713182195954780647.Spec : Prop :=
  ∀ n, P1713182195954780647.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P4875438604212616491

`round(γ^∑{e}[n+1, #])`
-/

namespace A080339.P4875438604212616491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A080339.P4875438604212616491

namespace A080339

/-- `round(γ^∑{e}[n+1, #])` -/
def P4875438604212616491.Spec : Prop :=
  ∀ n, P4875438604212616491.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P297054749215950124

`round(∏{e}[n+1, acot(#)]²)`
-/

namespace A080339.P297054749215950124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)) ^ 2)

end

end A080339.P297054749215950124

namespace A080339

/-- `round(∏{e}[n+1, acot(#)]²)` -/
def P297054749215950124.Spec : Prop :=
  ∀ n, P297054749215950124.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P8403362870680025041

`round(acot(∑{e}[n+1, #]!))`
-/

namespace A080339.P8403362870680025041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ))

end

end A080339.P8403362870680025041

namespace A080339

/-- `round(acot(∑{e}[n+1, #]!))` -/
def P8403362870680025041.Spec : Prop :=
  ∀ n, P8403362870680025041.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P9068670331525306249

`round(cos(atan(∑{e}[n+1, #])))`
-/

namespace A080339.P9068670331525306249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A080339.P9068670331525306249

namespace A080339

/-- `round(cos(atan(∑{e}[n+1, #])))` -/
def P9068670331525306249.Spec : Prop :=
  ∀ n, P9068670331525306249.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P11877633664717274775

`round(sin(acot(∑{e}[n+1, #])))`
-/

namespace A080339.P11877633664717274775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A080339.P11877633664717274775

namespace A080339

/-- `round(sin(acot(∑{e}[n+1, #])))` -/
def P11877633664717274775.Spec : Prop :=
  ∀ n, P11877633664717274775.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P3696531890956092923

`floor(tan(∏{e}[n+1, acot(#)]))`
-/

namespace A080339.P3696531890956092923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋

end

end A080339.P3696531890956092923

namespace A080339

/-- `floor(tan(∏{e}[n+1, acot(#)]))` -/
def P3696531890956092923.Spec : Prop :=
  ∀ n, P3696531890956092923.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P6209632379786624150

`round(∏{d}[n+1, acot(atan(#))])`
-/

namespace A080339.P6209632379786624150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n), SequenceMachineLib.acot (Real.arctan (d : ℝ)))

end

end A080339.P6209632379786624150

namespace A080339

/-- `round(∏{d}[n+1, acot(atan(#))])` -/
def P6209632379786624150.Spec : Prop :=
  ∀ n, P6209632379786624150.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P17650916912724536366

`round(atan(acot(∑{e}[n+1, #])))`
-/

namespace A080339.P17650916912724536366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A080339.P17650916912724536366

namespace A080339

/-- `round(atan(acot(∑{e}[n+1, #])))` -/
def P17650916912724536366.Spec : Prop :=
  ∀ n, P17650916912724536366.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P359172017310864265

`round(acot(cosh(∑{e}[n+1, #])))`
-/

namespace A080339.P359172017310864265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Real.cosh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A080339.P359172017310864265

namespace A080339

/-- `round(acot(cosh(∑{e}[n+1, #])))` -/
def P359172017310864265.Spec : Prop :=
  ∀ n, P359172017310864265.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P5199256002826492652

`round(acot(∏{e}[n+1, cosh(#)]))`
-/

namespace A080339.P5199256002826492652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (∏ p ∈ Nat.primeFactors (f1 n), Real.cosh (Nat.factorization (f1 n) p : ℝ)))

end

end A080339.P5199256002826492652

namespace A080339

/-- `round(acot(∏{e}[n+1, cosh(#)]))` -/
def P5199256002826492652.Spec : Prop :=
  ∀ n, P5199256002826492652.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P14048058102922958180

`round(tanh(acot(∑{e}[n+1, #])))`
-/

namespace A080339.P14048058102922958180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A080339.P14048058102922958180

namespace A080339

/-- `round(tanh(acot(∑{e}[n+1, #])))` -/
def P14048058102922958180.Spec : Prop :=
  ∀ n, P14048058102922958180.a n = A080339 (n + 1)

end A080339

/-! ## A080339.P41503485566877006

`C(2, 2*∑{e}[n+1, #])`
-/

namespace A080339.P41503485566877006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A080339.P41503485566877006

namespace A080339

/-- `C(2, 2*∑{e}[n+1, #])` -/
def P41503485566877006.Spec : Prop :=
  ∀ n, (P41503485566877006.a n : ℤ) = A080339 (n + 1)

end A080339

/-! ## A080339.P8587539898966634037

`∏{p}[n+1, val(#, n+1)]`
-/

namespace A080339.P8587539898966634037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1)

end

end A080339.P8587539898966634037

namespace A080339

/-- `∏{p}[n+1, val(#, n+1)]` -/
def P8587539898966634037.Spec : Prop :=
  ∀ n, (P8587539898966634037.a n : ℤ) = A080339 (n + 1)

end A080339

/-! ## A080339.P8901877971087205282

`C(n, ∑{d}[n+1, #-1])`
-/

namespace A080339.P8901877971087205282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1)).toNat

end

end A080339.P8901877971087205282

namespace A080339

/-- `C(n, ∑{d}[n+1, #-1])` -/
def P8901877971087205282.Spec : Prop :=
  ∀ n, (P8901877971087205282.a n : ℤ) = A080339 (n + 1)

end A080339

/-! ## A080339.P10739002076009693940

`C(∑{p}[n+1, #-1], n)`
-/

namespace A080339.P10739002076009693940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat n

end

end A080339.P10739002076009693940

namespace A080339

/-- `C(∑{p}[n+1, #-1], n)` -/
def P10739002076009693940.Spec : Prop :=
  ∀ n, (P10739002076009693940.a n : ℤ) = A080339 (n + 1)

end A080339

/-! ## A080339.P10111934163749882389

`∏{p}[n+1, C(#, n+1)]`
-/

namespace A080339.P10111934163749882389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1)

end

end A080339.P10111934163749882389

namespace A080339

/-- `∏{p}[n+1, C(#, n+1)]` -/
def P10111934163749882389.Spec : Prop :=
  ∀ n, (P10111934163749882389.a n : ℤ) = A080339 (n + 1)

end A080339

/-! ## A080339.P6215582304245216543

`round(1/(∑{e}[n+1, #]+1))`
-/

namespace A080339.P6215582304245216543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℚ))

end

end A080339.P6215582304245216543

namespace A080339

/-- `round(1/(∑{e}[n+1, #]+1))` -/
def P6215582304245216543.Spec : Prop :=
  ∀ n, P6215582304245216543.a n = A080339 (n + 1)

end A080339

/-!
# A080341: Sum of the first n terms that are congruent to 1, 4 or 5 mod 6 (A047259).

The programs for A080341, the canonical program `A080341.P672450788362402904` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080341 has offset 1).

The definition of A080341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080341.P672450788362402904

`round((7/6+n)²)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080341

/-- `round((7/6+n)²)` -/
def P672450788362402904.Spec : Prop :=
  ∀ n, P672450788362402904.a n = A080341 (n + 1)

theorem P672450788362402904.correct : P672450788362402904.Spec := by
  intro n
  simp only [A080341, Nat.add_sub_cancel]

end A080341

/-! ## A080341.P9060327330419823265

`record[round((5/6-n)²)]`
-/

namespace A080341.P9060327330419823265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 : ℚ) / 6 - (n : ℚ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080341.P9060327330419823265

namespace A080341

/-- `record[round((5/6-n)²)]` -/
def P9060327330419823265.Spec : Prop :=
  ∀ n, P9060327330419823265.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P13331745507275065927

`∑[eq[1, gcd(n, n%3)]]`
-/

namespace A080341.P13331745507275065927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P13331745507275065927

namespace A080341

/-- `∑[eq[1, gcd(n, n%3)]]` -/
def P13331745507275065927.Spec : Prop :=
  ∀ n, (P13331745507275065927.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P3695395926845590120

`∑[∑[(n+1)%3]+n]`
-/

namespace A080341.P3695395926845590120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P3695395926845590120

namespace A080341

/-- `∑[∑[(n+1)%3]+n]` -/
def P3695395926845590120.Spec : Prop :=
  ∀ n, (P3695395926845590120.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P10639474164346638374

`∑[a(n-3)+6]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A080341.P10639474164346638374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P10639474164346638374

namespace A080341

/-- `∑[a(n-3)+6]` -/
def P10639474164346638374.Spec : Prop :=
  ∀ n, (P10639474164346638374.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P12092827216751444350

`ceil(record[(n-1)²]+n/3)`
-/

namespace A080341.P12092827216751444350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (n : ℚ) / 3⌉

end

end A080341.P12092827216751444350

namespace A080341

/-- `ceil(record[(n-1)²]+n/3)` -/
def P12092827216751444350.Spec : Prop :=
  ∀ n, P12092827216751444350.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P7509591054670035572

`∑[∑[abs(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A080341.P7509591054670035572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P7509591054670035572

namespace A080341

/-- `∑[∑[abs(a(n-3))]]` -/
def P7509591054670035572.Spec : Prop :=
  ∀ n, (P7509591054670035572.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P15685574471441534107

`∑[∑[dr(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`
-/

namespace A080341.P15685574471441534107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P15685574471441534107

namespace A080341

/-- `∑[∑[dr(a(n-3))]]` -/
def P15685574471441534107.Spec : Prop :=
  ∀ n, (P15685574471441534107.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P4693986307678713314

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A080341.P4693986307678713314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P4693986307678713314

namespace A080341

/-- `∑[∑[floor(a(n-3))]]` -/
def P4693986307678713314.Spec : Prop :=
  ∀ n, (P4693986307678713314.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P12921234854929301464

`∑[∑[ceil(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A080341.P12921234854929301464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P12921234854929301464

namespace A080341

/-- `∑[∑[ceil(a(n-3))]]` -/
def P12921234854929301464.Spec : Prop :=
  ∀ n, (P12921234854929301464.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P12500402340013895271

`∑[∑[round(a(n-3))]]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A080341.P12500402340013895271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P12500402340013895271

namespace A080341

/-- `∑[∑[round(a(n-3))]]` -/
def P12500402340013895271.Spec : Prop :=
  ∀ n, (P12500402340013895271.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P7276726379270226707

`floor(lcm(n+1, n+2)-(2*n+1)/3)`
-/

namespace A080341.P7276726379270226707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n + 2) : ℚ) - (2 * n + 1 : ℚ) / 3⌋

end

end A080341.P7276726379270226707

namespace A080341

/-- `floor(lcm(n+1, n+2)-(2*n+1)/3)` -/
def P7276726379270226707.Spec : Prop :=
  ∀ n, P7276726379270226707.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P5172242941845698240

`∪[2*n+1, 4*(n+1)]+∑[2*n]`
-/

namespace A080341.P5172242941845698240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A080341.P5172242941845698240

namespace A080341

/-- `∪[2*n+1, 4*(n+1)]+∑[2*n]` -/
def P5172242941845698240.Spec : Prop :=
  ∀ n, (P5172242941845698240.a n : ℤ) = A080341 (n + 1)

end A080341

/-! ## A080341.P1089248104550058210

`∑[floor(gcd(n+2, n-1)/2+2*n+1)]`
-/

namespace A080341.P1089248104550058210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ) / 2 + (2 * n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P1089248104550058210

namespace A080341

/-- `∑[floor(gcd(n+2, n-1)/2+2*n+1)]` -/
def P1089248104550058210.Spec : Prop :=
  ∀ n, P1089248104550058210.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P6076031673004215217

`∑[A047259(n+1)]`
-/

namespace A080341.P6076031673004215217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P6076031673004215217

namespace A080341

/-- `∑[A047259(n+1)]` -/
def P6076031673004215217.Spec : Prop :=
  ∀ n, P6076031673004215217.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P1641810731509052041

`∑[A092200(n)+n]`
-/

namespace A080341.P1641810731509052041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P1641810731509052041

namespace A080341

/-- `∑[A092200(n)+n]` -/
def P1641810731509052041.Spec : Prop :=
  ∀ n, P1641810731509052041.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P13477546879914172764

`∑[∑[2-A163804(n)]]`
-/

namespace A080341.P13477546879914172764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A163804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P13477546879914172764

namespace A080341

/-- `∑[∑[2-A163804(n)]]` -/
def P13477546879914172764.Spec : Prop :=
  ∀ n, P13477546879914172764.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P10140182060252758645

`A389317(n)+Δ[n²]`
-/

namespace A080341.P10140182060252758645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A080341.P10140182060252758645

namespace A080341

/-- `A389317(n)+Δ[n²]` -/
def P10140182060252758645.Spec : Prop :=
  ∀ n, P10140182060252758645.a n = A080341 (n + 1)

end A080341

/-! ## A080341.P9323248595954317858

`∑[A047231(n+1)+1]`
-/

namespace A080341.P9323248595954317858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080341.P9323248595954317858

namespace A080341

/-- `∑[A047231(n+1)+1]` -/
def P9323248595954317858.Spec : Prop :=
  ∀ n, P9323248595954317858.a n = A080341 (n + 1)

end A080341

/-!
# A080342: Number of weighings required to identify a single bad coin out of n coins, using a two-pan balance.

The programs for A080342, the canonical program `A080342.P4061780387989710055` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080342 has offset 1).

The definition of A080342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080342.P4061780387989710055

`ceil(log(n+1)/log(3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080342

/-- `ceil(log(n+1)/log(3))` -/
def P4061780387989710055.Spec : Prop :=
  ∀ n, P4061780387989710055.a n = A080342 (n + 1)

theorem P4061780387989710055.correct : P4061780387989710055.Spec := by
  intro n
  simp only [A080342, Nat.add_sub_cancel]

end A080342

/-! ## A080342.P2328940353071246937

`1+a(floor(n/3))` with `a(0)=0`
-/

namespace A080342.P2328940353071246937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ⌊(n : ℚ) / 3⌋.toNat

end

end A080342.P2328940353071246937

namespace A080342

/-- `1+a(floor(n/3))` -/
def P2328940353071246937.Spec : Prop :=
  ∀ n, (P2328940353071246937.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P10824345918989511251

`∑[∏{p}[n, val(#, 3)]]-1`
-/

namespace A080342.P10824345918989511251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A080342.P10824345918989511251

namespace A080342

/-- `∑[∏{p}[n, val(#, 3)]]-1` -/
def P10824345918989511251.Spec : Prop :=
  ∀ n, P10824345918989511251.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P3525168385286339051

`dr(comp[3^n+n]-n)`
-/

namespace A080342.P3525168385286339051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A080342.P3525168385286339051

namespace A080342

/-- `dr(comp[3^n+n]-n)` -/
def P3525168385286339051.Spec : Prop :=
  ∀ n, (P3525168385286339051.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P10665327926431973788

`a(comp[or(3, n)]-n)+1` with `a(0)=0`
-/

namespace A080342.P10665327926431973788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) + 1

end

end A080342.P10665327926431973788

namespace A080342

/-- `a(comp[or(3, n)]-n)+1` -/
def P10665327926431973788.Spec : Prop :=
  ∀ n, (P10665327926431973788.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P17638231962209538552

`a(round((n-1)/3))+1` with `a(0)=0, a(1)=1`
-/

namespace A080342.P17638231962209538552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)).toNat + 1

end

end A080342.P17638231962209538552

namespace A080342

/-- `a(round((n-1)/3))+1` -/
def P17638231962209538552.Spec : Prop :=
  ∀ n, (P17638231962209538552.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P14044344893611277874

`∑[char[3*a(n-1)]]%12` with `a(0)=1, a(1)=1`
-/

namespace A080342.P14044344893611277874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  3 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 12

end

end A080342.P14044344893611277874

namespace A080342

/-- `∑[char[3*a(n-1)]]%12` -/
def P14044344893611277874.Spec : Prop :=
  ∀ n, (P14044344893611277874.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P6722845060856111117

`∑[char[A000244(n)]]`
-/

namespace A080342.P6722845060856111117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080342.P6722845060856111117

namespace A080342

/-- `∑[char[A000244(n)]]` -/
def P6722845060856111117.Spec : Prop :=
  ∀ n, (P6722845060856111117.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P13609559730960816413

`∑[char[A048883(n)]]`
-/

namespace A080342.P13609559730960816413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080342.P13609559730960816413

namespace A080342

/-- `∑[char[A048883(n)]]` -/
def P13609559730960816413.Spec : Prop :=
  ∀ n, (P13609559730960816413.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P17124990862918707745

`∑[char[A050733(n)]]`
-/

namespace A080342.P17124990862918707745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080342.P17124990862918707745

namespace A080342

/-- `∑[char[A050733(n)]]` -/
def P17124990862918707745.Spec : Prop :=
  ∀ n, (P17124990862918707745.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P5233659888633623357

`comp[A104743(n)]-n`
-/

namespace A080342.P5233659888633623357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A080342.P5233659888633623357

namespace A080342

/-- `comp[A104743(n)]-n` -/
def P5233659888633623357.Spec : Prop :=
  ∀ n, P5233659888633623357.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P5113168460559350062

`val(A064235(n+1), 3)`
-/

namespace A080342.P5113168460559350062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064235 (n + 1)).toNat 3

end

end A080342.P5113168460559350062

namespace A080342

/-- `val(A064235(n+1), 3)` -/
def P5113168460559350062.Spec : Prop :=
  ∀ n, (P5113168460559350062.a n : ℤ) = A080342 (n + 1)

end A080342

/-! ## A080342.P7474611774438346456

`∑[char[A140429(n)]]-1`
-/

namespace A080342.P7474611774438346456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A080342.P7474611774438346456

namespace A080342

/-- `∑[char[A140429(n)]]-1` -/
def P7474611774438346456.Spec : Prop :=
  ∀ n, P7474611774438346456.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P3516229396092339891

`∑[char[A254006(n)]]-1`
-/

namespace A080342.P3516229396092339891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A080342.P3516229396092339891

namespace A080342

/-- `∑[char[A254006(n)]]-1` -/
def P3516229396092339891.Spec : Prop :=
  ∀ n, P3516229396092339891.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P17078684460935378881

`A276621(A261231(n))`
-/

namespace A080342.P17078684460935378881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276621 (A261231 n).toNat

end

end A080342.P17078684460935378881

namespace A080342

/-- `A276621(A261231(n))` -/
def P17078684460935378881.Spec : Prop :=
  ∀ n, P17078684460935378881.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P7038347396831421820

`A081604(n)-A000007(n)`
-/

namespace A080342.P7038347396831421820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n - A000007 n

end

end A080342.P7038347396831421820

namespace A080342

/-- `A081604(n)-A000007(n)` -/
def P7038347396831421820.Spec : Prop :=
  ∀ n, P7038347396831421820.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P12454019533251363214

`A057427(n)*A081604(n)`
-/

namespace A080342.P12454019533251363214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A081604 n

end

end A080342.P12454019533251363214

namespace A080342

/-- `A057427(n)*A081604(n)` -/
def P12454019533251363214.Spec : Prop :=
  ∀ n, P12454019533251363214.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P17231005471484515462

`A081604(n)%A001311(n)`
-/

namespace A080342.P17231005471484515462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081604 n) (A001311 n)

end

end A080342.P17231005471484515462

namespace A080342

/-- `A081604(n)%A001311(n)` -/
def P17231005471484515462.Spec : Prop :=
  ∀ n, P17231005471484515462.a n = A080342 (n + 1)

end A080342

/-! ## A080342.P2728148171051950194

`and(A003817(n), A081604(n))`
-/

namespace A080342.P2728148171051950194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A081604 n)

end

end A080342.P2728148171051950194

namespace A080342

/-- `and(A003817(n), A081604(n))` -/
def P2728148171051950194.Spec : Prop :=
  ∀ n, P2728148171051950194.a n = A080342 (n + 1)

end A080342

/-!
# A080343: a(n) = round(sqrt(2*n)) - floor(sqrt(2*n)).

The programs for A080343, the canonical program `A080343.P17491293385629431961` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080343 has offset 0).

The definition of A080343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt(2*n))-floor(sqrt(2*n))` (program `A080343.P18029586935509098161`, by `A080343.P18029586935509098161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080343.P18029586935509098161

`round(sqrt(2*n))-floor(sqrt(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080343.P18029586935509098161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) - (Nat.sqrt (2 * n) : ℤ)

end

end A080343.P18029586935509098161

namespace A080343

/-- `round(sqrt(2*n))-floor(sqrt(2*n))` -/
def P18029586935509098161.Spec : Prop :=
  ∀ n, P18029586935509098161.a n = A080343 n

theorem P18029586935509098161.correct : P18029586935509098161.Spec := by
  intro n
  simp only [A080343, Nat.add_sub_cancel, A080343.P18029586935509098161.a, A080343.P17491293385629431961.a, A023969, A023969.P11312383252970643517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A080343

/-! ## A080343.P17491293385629431961

`A023969(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080343

/-- `A023969(2*n)` -/
def P17491293385629431961.Spec : Prop :=
  ∀ n, P17491293385629431961.a n = A080343 n

theorem P17491293385629431961.correct : P17491293385629431961.Spec := by
  intro n
  simp only [A080343]

end A080343

/-! ## A080343.P1333572835837092938

`floor(sqrt(8*n))%2`
-/

namespace A080343.P1333572835837092938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n) % 2

end

end A080343.P1333572835837092938

namespace A080343

/-- `floor(sqrt(8*n))%2` -/
def P1333572835837092938.Spec : Prop :=
  ∀ n, (P1333572835837092938.a n : ℤ) = A080343 n

end A080343

/-! ## A080343.P14049604115523363295

`and(1, floor(sqrt(8*n)))`
-/

namespace A080343.P14049604115523363295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (8 * n))

end

end A080343.P14049604115523363295

namespace A080343

/-- `and(1, floor(sqrt(8*n)))` -/
def P14049604115523363295.Spec : Prop :=
  ∀ n, (P14049604115523363295.a n : ℤ) = A080343 n

end A080343

/-! ## A080343.P1415972961239550043

`floor(acot(A166073(n)))`
-/

namespace A080343.P1415972961239550043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A166073 n : ℝ)⌋

end

end A080343.P1415972961239550043

namespace A080343

/-- `floor(acot(A166073(n)))` -/
def P1415972961239550043.Spec : Prop :=
  ∀ n, P1415972961239550043.a n = A080343 n

end A080343

/-! ## A080343.P3901274803350337836

`abs(A072786(abs(1-n)))`
-/

namespace A080343.P3901274803350337836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A072786 |1 - (n : ℤ)|.toNat)|

end

end A080343.P3901274803350337836

namespace A080343

/-- `abs(A072786(abs(1-n)))` -/
def P3901274803350337836.Spec : Prop :=
  ∀ n, P3901274803350337836.a n = A080343 n

end A080343

/-! ## A080343.P14276758757034752800

`Δ[A080352(abs(1-n))]`
-/

namespace A080343.P14276758757034752800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080343.P14276758757034752800

namespace A080343

/-- `Δ[A080352(abs(1-n))]` -/
def P14276758757034752800.Spec : Prop :=
  ∀ n, P14276758757034752800.a n = A080343 n

end A080343

/-! ## A080343.P11166956177345423348

`round(acot(acot(A169803(n)))/2)`
-/

namespace A080343.P11166956177345423348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (SequenceMachineLib.acot (A169803 n : ℝ)) / 2)

end

end A080343.P11166956177345423348

namespace A080343

/-- `round(acot(acot(A169803(n)))/2)` -/
def P11166956177345423348.Spec : Prop :=
  ∀ n, P11166956177345423348.a n = A080343 n

end A080343

/-! ## A080343.P15317345178660758110

`ceil(Δ[atan(A007318(abs(1-n)))])`
-/

namespace A080343.P15317345178660758110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A007318 |1 - (n : ℤ)|.toNat : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A080343.P15317345178660758110

namespace A080343

/-- `ceil(Δ[atan(A007318(abs(1-n)))])` -/
def P15317345178660758110.Spec : Prop :=
  ∀ n, P15317345178660758110.a n = A080343 n

end A080343

/-! ## A080343.P6562489782858452269

`A077605(a(n-1)+n)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A080343.P6562489782858452269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A077605 (a (n - 1) + (n : ℤ)).toNat

end

end A080343.P6562489782858452269

namespace A080343

/-- `A077605(a(n-1)+n)` -/
def P6562489782858452269.Spec : Prop :=
  ∀ n, P6562489782858452269.a n = A080343 n

end A080343

/-! ## A080343.P5163418351129959794

`A340507(A056943(n))`
-/

namespace A080343.P5163418351129959794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 (A056943 n).toNat

end

end A080343.P5163418351129959794

namespace A080343

/-- `A340507(A056943(n))` -/
def P5163418351129959794.Spec : Prop :=
  ∀ n, P5163418351129959794.a n = A080343 n

end A080343

/-! ## A080343.P3063818361511813712

`A340507(A278818(n))`
-/

namespace A080343.P3063818361511813712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 (A278818 n).toNat

end

end A080343.P3063818361511813712

namespace A080343

/-- `A340507(A278818(n))` -/
def P3063818361511813712.Spec : Prop :=
  ∀ n, P3063818361511813712.a n = A080343 n

end A080343

/-! ## A080343.P14242345147556085083

`A067586(n*A077605(n+1))`
-/

namespace A080343.P14242345147556085083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067586 ((n : ℤ) * A077605 (n + 1)).toNat

end

end A080343.P14242345147556085083

namespace A080343

/-- `A067586(n*A077605(n+1))` -/
def P14242345147556085083.Spec : Prop :=
  ∀ n, P14242345147556085083.a n = A080343 n

end A080343

/-! ## A080343.P7192134473992252792

`A340507(n-2*A002262(n))`
-/

namespace A080343.P7192134473992252792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 ((n : ℤ) - 2 * A002262 n).toNat

end

end A080343.P7192134473992252792

namespace A080343

/-- `A340507(n-2*A002262(n))` -/
def P7192134473992252792.Spec : Prop :=
  ∀ n, P7192134473992252792.a n = A080343 n

end A080343

/-! ## A080343.P1369449939890499806

`xor(A010054(n), A077605(n+1))`
-/

namespace A080343.P1369449939890499806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 n) (A077605 (n + 1))

end

end A080343.P1369449939890499806

namespace A080343

/-- `xor(A010054(n), A077605(n+1))` -/
def P1369449939890499806.Spec : Prop :=
  ∀ n, P1369449939890499806.a n = A080343 n

end A080343

/-! ## A080343.P8738948252934458496

`A143538(n+2-A237448(n+1))`
-/

namespace A080343.P8738948252934458496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 ((n + 2 : ℤ) - A237448 (n + 1)).toNat

end

end A080343.P8738948252934458496

namespace A080343

/-- `A143538(n+2-A237448(n+1))` -/
def P8738948252934458496.Spec : Prop :=
  ∀ n, P8738948252934458496.a n = A080343 n

end A080343

/-! ## A080343.P17761590978025624582

`A340507(n-A002262(n)-A002262(n))`
-/

namespace A080343.P17761590978025624582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A080343.P17761590978025624582

namespace A080343

/-- `A340507(n-A002262(n)-A002262(n))` -/
def P17761590978025624582.Spec : Prop :=
  ∀ n, P17761590978025624582.a n = A080343 n

end A080343

/-! ## A080343.P14680332771398209262

`char[lt[1, A114327(n)]+1]`
-/

namespace A080343.P14680332771398209262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A080343.P14680332771398209262

namespace A080343

/-- `char[lt[1, A114327(n)]+1]` -/
def P14680332771398209262.Spec : Prop :=
  ∀ n, (P14680332771398209262.a n : ℤ) = A080343 n

end A080343

/-! ## A080343.P10087856795153986753

`round(n/A020703(2*n+1))`
-/

namespace A080343.P10087856795153986753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A020703 (2 * n + 1) : ℚ))

end

end A080343.P10087856795153986753

namespace A080343

/-- `round(n/A020703(2*n+1))` -/
def P10087856795153986753.Spec : Prop :=
  ∀ n, P10087856795153986753.a n = A080343 n

end A080343

/-! ## A080343.P13978981088009323143

`∑{d}[A091453(2*n), A008683(#)]`
-/

namespace A080343.P13978981088009323143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A080343.P13978981088009323143

namespace A080343

/-- `∑{d}[A091453(2*n), A008683(#)]` -/
def P13978981088009323143.Spec : Prop :=
  ∀ n, P13978981088009323143.a n = A080343 n

end A080343

/-!
# A080344: Partial sums of A023969.

The programs for A080344, the canonical program `A080344.P14008918198358363005` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080344 has offset 0).

The definition of A080344 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080344.P14008918198358363005

`(A056847(n+1)-A053188(n+1))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080344

/-- `(A056847(n+1)-A053188(n+1))/2` -/
def P14008918198358363005.Spec : Prop :=
  ∀ n, P14008918198358363005.a n = (A080344 n : ℚ)

end A080344

/-! ## A080344.P5890023944915075783

`∑[floor(2*sqrt(n))%2]`
-/

namespace A080344.P5890023944915075783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080344.P5890023944915075783

namespace A080344

/-- `∑[floor(2*sqrt(n))%2]` -/
def P5890023944915075783.Spec : Prop :=
  ∀ n, P5890023944915075783.a n = A080344 n

end A080344

/-! ## A080344.P9438790668785729238

`∑[and(1, floor(2*sqrt(n)))]`
-/

namespace A080344.P9438790668785729238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * Real.sqrt (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080344.P9438790668785729238

namespace A080344

/-- `∑[and(1, floor(2*sqrt(n)))]` -/
def P9438790668785729238.Spec : Prop :=
  ∀ n, P9438790668785729238.a n = A080344 n

end A080344

/-! ## A080344.P6482415520459266320

`∑[round(sqrt(n)-floor(sqrt(n)))]`
-/

namespace A080344.P6482415520459266320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) - (Nat.sqrt n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080344.P6482415520459266320

namespace A080344

/-- `∑[round(sqrt(n)-floor(sqrt(n)))]` -/
def P6482415520459266320.Spec : Prop :=
  ∀ n, P6482415520459266320.a n = A080344 n

end A080344

/-! ## A080344.P17679186384077554871

`a(n-1)+and(1, floor(2*sqrt(n)))` with `a(0)=0`
-/

namespace A080344.P17679186384077554871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land 1 ⌊2 * Real.sqrt (n : ℝ)⌋

end

end A080344.P17679186384077554871

namespace A080344

/-- `a(n-1)+and(1, floor(2*sqrt(n)))` -/
def P17679186384077554871.Spec : Prop :=
  ∀ n, P17679186384077554871.a n = A080344 n

end A080344

/-! ## A080344.P9746309833278255310

`2*∑[A023969(n)/2]`
-/

namespace A080344.P9746309833278255310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023969 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080344.P9746309833278255310

namespace A080344

/-- `2*∑[A023969(n)/2]` -/
def P9746309833278255310.Spec : Prop :=
  ∀ n, P9746309833278255310.a n = (A080344 n : ℚ)

end A080344

/-! ## A080344.P10670537748971413244

`(n-A213088(n+1))/2`
-/

namespace A080344.P10670537748971413244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A213088 (n + 1) : ℚ) / 2

end

end A080344.P10670537748971413244

namespace A080344

/-- `(n-A213088(n+1))/2` -/
def P10670537748971413244.Spec : Prop :=
  ∀ n, P10670537748971413244.a n = (A080344 n : ℚ)

end A080344

/-! ## A080344.P4086675776412904983

`comp[A063657(n+1)+n]-n`
-/

namespace A080344.P4086675776412904983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A080344.P4086675776412904983

namespace A080344

/-- `comp[A063657(n+1)+n]-n` -/
def P4086675776412904983.Spec : Prop :=
  ∀ n, P4086675776412904983.a n = A080344 n

end A080344

/-! ## A080344.P6185428776099724463

`(n+1-A209302(n+1))/2`
-/

namespace A080344.P6185428776099724463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A209302 (n + 1) : ℚ) / 2

end

end A080344.P6185428776099724463

namespace A080344

/-- `(n+1-A209302(n+1))/2` -/
def P6185428776099724463.Spec : Prop :=
  ∀ n, P6185428776099724463.a n = (A080344 n : ℚ)

end A080344

/-! ## A080344.P14049990930031551146

`a(n-1)+1-A267708(n)` with `a(0)=0`
-/

namespace A080344.P14049990930031551146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A267708 n)

end

end A080344.P14049990930031551146

namespace A080344

/-- `a(n-1)+1-A267708(n)` -/
def P14049990930031551146.Spec : Prop :=
  ∀ n, P14049990930031551146.a n = A080344 n

end A080344

/-! ## A080344.P10600244038642471669

`A165453(n)-A022554(n)`
-/

namespace A080344.P10600244038642471669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165453 n - A022554 n

end

end A080344.P10600244038642471669

namespace A080344

/-- `A165453(n)-A022554(n)` -/
def P10600244038642471669.Spec : Prop :=
  ∀ n, P10600244038642471669.a n = A080344 n

end A080344

/-! ## A080344.P14575639656123553879

`A167381(n+1)-A342711(n)`
-/

namespace A080344.P14575639656123553879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167381 (n + 1) - A342711 n

end

end A080344.P14575639656123553879

namespace A080344

/-- `A167381(n+1)-A342711(n)` -/
def P14575639656123553879.Spec : Prop :=
  ∀ n, P14575639656123553879.a n = A080344 n

end A080344

/-! ## A080344.P3758200504018083820

`∑[A023969(n+1)]-A023969(n+1)`
-/

namespace A080344.P3758200504018083820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023969 (n + 1)

end

end A080344.P3758200504018083820

namespace A080344

/-- `∑[A023969(n+1)]-A023969(n+1)` -/
def P3758200504018083820.Spec : Prop :=
  ∀ n, P3758200504018083820.a n = A080344 n

end A080344

/-! ## A080344.P17266538924581609432

`A028391(A053615(n)+A028391(n))/2`
-/

namespace A080344.P17266538924581609432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028391 (A053615 n + A028391 n).toNat : ℚ) / 2

end

end A080344.P17266538924581609432

namespace A080344

/-- `A028391(A053615(n)+A028391(n))/2` -/
def P17266538924581609432.Spec : Prop :=
  ∀ n, P17266538924581609432.a n = (A080344 n : ℚ)

end A080344

/-! ## A080344.P4993865407615637177

`A037458(n+1)-(A000196(A028391(n))+1)`
-/

namespace A080344.P4993865407615637177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (n + 1) - (A000196 (A028391 n).toNat + 1)

end

end A080344.P4993865407615637177

namespace A080344

/-- `A037458(n+1)-(A000196(A028391(n))+1)` -/
def P4993865407615637177.Spec : Prop :=
  ∀ n, P4993865407615637177.a n = A080344 n

end A080344

/-! ## A080344.P14285972510185728100

`A037458(n+1)-A000194(n+1)`
-/

namespace A080344.P14285972510185728100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (n + 1) - A000194 (n + 1)

end

end A080344.P14285972510185728100

namespace A080344

/-- `A037458(n+1)-A000194(n+1)` -/
def P14285972510185728100.Spec : Prop :=
  ∀ n, P14285972510185728100.a n = A080344 n

end A080344

/-! ## A080344.P11360678591838215919

`A053615(n+1)+A056847(n+1)-A037458(n+1)`
-/

namespace A080344.P11360678591838215919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (n + 1) + (A056847 (n + 1) - A037458 (n + 1))

end

end A080344.P11360678591838215919

namespace A080344

/-- `A053615(n+1)+A056847(n+1)-A037458(n+1)` -/
def P11360678591838215919.Spec : Prop :=
  ∀ n, P11360678591838215919.a n = A080344 n

end A080344

/-! ## A080344.P3193733570088531305

`A056847(2*A037458(n+1))-A037458(n+1)`
-/

namespace A080344.P3193733570088531305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (2 * A037458 (n + 1)).toNat - A037458 (n + 1)

end

end A080344.P3193733570088531305

namespace A080344

/-- `A056847(2*A037458(n+1))-A037458(n+1)` -/
def P3193733570088531305.Spec : Prop :=
  ∀ n, P3193733570088531305.a n = A080344 n

end A080344

/-! ## A080344.P10371456252386399306

`n+1-A037458(A028392(n+1))`
-/

namespace A080344.P10371456252386399306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A037458 (A028392 (n + 1)).toNat

end

end A080344.P10371456252386399306

namespace A080344

/-- `n+1-A037458(A028392(n+1))` -/
def P10371456252386399306.Spec : Prop :=
  ∀ n, P10371456252386399306.a n = A080344 n

end A080344

/-! ## A080344.P8278049070461428953

`1-A037458(A000037(n+1))+n`
-/

namespace A080344.P8278049070461428953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037458 (A000037 (n + 1)).toNat + (n : ℤ)

end

end A080344.P8278049070461428953

namespace A080344

/-- `1-A037458(A000037(n+1))+n` -/
def P8278049070461428953.Spec : Prop :=
  ∀ n, P8278049070461428953.a n = A080344 n

end A080344

/-!
# A080345: a(n) is the number of prime factors in Fibonacci(prime(n)); that is, in the Fibonacci number whose index is the n-th prime.

The programs for A080345, the canonical program `A080345.P6999835387772028756` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080345 has offset 1).

The definition of A080345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080345.P11067178954493018327

`A022307(p?[xor(1, n)+1])`
-/

namespace A080345.P11067178954493018327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080345.P11067178954493018327

namespace A080345

/-- `A022307(p?[xor(1, n)+1])` -/
def P11067178954493018327.Spec : Prop :=
  ∀ n, P11067178954493018327.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P10344993429094190763

`A038575(p?[xor(1, n)+1])`
-/

namespace A080345.P10344993429094190763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080345.P10344993429094190763

namespace A080345

/-- `A038575(p?[xor(1, n)+1])` -/
def P10344993429094190763.Spec : Prop :=
  ∀ n, P10344993429094190763.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P6999835387772028756

`∑{e}[A063375(p?[xor(1, n)+1]), #]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080345

/-- `∑{e}[A063375(p?[xor(1, n)+1]), #]` -/
def P6999835387772028756.Spec : Prop :=
  ∀ n, (P6999835387772028756.a n : ℤ) = A080345 (n + 1)

theorem P6999835387772028756.correct : P6999835387772028756.Spec := by
  intro n
  simp only [A080345, Nat.add_sub_cancel]

end A080345

/-! ## A080345.P15052911297203126391

`A038575(abs(p?[round(8*n/7)]-n)+n)`
-/

namespace A080345.P15052911297203126391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (|f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)).toNat

end

end A080345.P15052911297203126391

namespace A080345

/-- `A038575(abs(p?[round(8*n/7)]-n)+n)` -/
def P15052911297203126391.Spec : Prop :=
  ∀ n, P15052911297203126391.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P516223716802368787

`A022307(Δ[A007504(n)])`
-/

namespace A080345.P516223716802368787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (n + 1) - f1 n).toNat

end

end A080345.P516223716802368787

namespace A080345

/-- `A022307(Δ[A007504(n)])` -/
def P516223716802368787.Spec : Prop :=
  ∀ n, P516223716802368787.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P7615665254297621754

`A038575(Δ[A007504(n)])`
-/

namespace A080345.P7615665254297621754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (n + 1) - f1 n).toNat

end

end A080345.P7615665254297621754

namespace A080345

/-- `A038575(Δ[A007504(n)])` -/
def P7615665254297621754.Spec : Prop :=
  ∀ n, P7615665254297621754.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P10966025799421868734

`A022307(record[A162753(n)])`
-/

namespace A080345.P10966025799421868734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080345.P10966025799421868734

namespace A080345

/-- `A022307(record[A162753(n)])` -/
def P10966025799421868734.Spec : Prop :=
  ∀ n, P10966025799421868734.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P14829712595649283539

`A038575(record[A162753(n)])`
-/

namespace A080345.P14829712595649283539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080345.P14829712595649283539

namespace A080345

/-- `A038575(record[A162753(n)])` -/
def P14829712595649283539.Spec : Prop :=
  ∀ n, P14829712595649283539.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P4874375584625642156

`A038575(p?[A004483(n)])`
-/

namespace A080345.P4874375584625642156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A080345.P4874375584625642156

namespace A080345

/-- `A038575(p?[A004483(n)])` -/
def P4874375584625642156.Spec : Prop :=
  ∀ n, P4874375584625642156.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P2242288789612317492

`A022307(A000040(n+1))`
-/

namespace A080345.P2242288789612317492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A000040 (n + 1)).toNat

end

end A080345.P2242288789612317492

namespace A080345

/-- `A022307(A000040(n+1))` -/
def P2242288789612317492.Spec : Prop :=
  ∀ n, P2242288789612317492.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P734787092480467269

`A022307(A006005(n+1))`
-/

namespace A080345.P734787092480467269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A006005 (n + 1)).toNat

end

end A080345.P734787092480467269

namespace A080345

/-- `A022307(A006005(n+1))` -/
def P734787092480467269.Spec : Prop :=
  ∀ n, P734787092480467269.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P6579772878239910658

`A022307(A008578(n+2))`
-/

namespace A080345.P6579772878239910658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A008578 (n + 2)).toNat

end

end A080345.P6579772878239910658

namespace A080345

/-- `A022307(A008578(n+2))` -/
def P6579772878239910658.Spec : Prop :=
  ∀ n, P6579772878239910658.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P5794515673763240547

`A022307(A075643(n+2))`
-/

namespace A080345.P5794515673763240547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A075643 (n + 2)).toNat

end

end A080345.P5794515673763240547

namespace A080345

/-- `A022307(A075643(n+2))` -/
def P5794515673763240547.Spec : Prop :=
  ∀ n, P5794515673763240547.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P182831169515903900

`A022307(A182986(n+2))`
-/

namespace A080345.P182831169515903900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A182986 (n + 2)).toNat

end

end A080345.P182831169515903900

namespace A080345

/-- `A022307(A182986(n+2))` -/
def P182831169515903900.Spec : Prop :=
  ∀ n, P182831169515903900.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P16196208272046837689

`A022307(eq[2, A225244(n)])`
-/

namespace A080345.P16196208272046837689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080345.P16196208272046837689

namespace A080345

/-- `A022307(eq[2, A225244(n)])` -/
def P16196208272046837689.Spec : Prop :=
  ∀ n, P16196208272046837689.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P11785942026222831932

`A038575(eq[2, A225244(n)])`
-/

namespace A080345.P11785942026222831932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080345.P11785942026222831932

namespace A080345

/-- `A038575(eq[2, A225244(n)])` -/
def P11785942026222831932.Spec : Prop :=
  ∀ n, P11785942026222831932.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P18105044608421703320

`A022307(record[A006530(n+2)])`
-/

namespace A080345.P18105044608421703320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080345.P18105044608421703320

namespace A080345

/-- `A022307(record[A006530(n+2)])` -/
def P18105044608421703320.Spec : Prop :=
  ∀ n, P18105044608421703320.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P652723525812518823

`A022307(record[A014963(n+2)])`
-/

namespace A080345.P652723525812518823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080345.P652723525812518823

namespace A080345

/-- `A022307(record[A014963(n+2)])` -/
def P652723525812518823.Spec : Prop :=
  ∀ n, P652723525812518823.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P11717276398076029185

`A022307(record[A020639(n+2)])`
-/

namespace A080345.P11717276398076029185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080345.P11717276398076029185

namespace A080345

/-- `A022307(record[A020639(n+2)])` -/
def P11717276398076029185.Spec : Prop :=
  ∀ n, P11717276398076029185.a n = A080345 (n + 1)

end A080345

/-! ## A080345.P16904400874424846604

`A038575(record[A006530(n+2)])`
-/

namespace A080345.P16904400874424846604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080345.P16904400874424846604

namespace A080345

/-- `A038575(record[A006530(n+2)])` -/
def P16904400874424846604.Spec : Prop :=
  ∀ n, P16904400874424846604.a n = A080345 (n + 1)

end A080345

/-!
# A080346: First card number to reach the top of the deck n times in Guy's shuffle (see A035485).

The programs for A080346, there is no canonical definition to state claims against.
-/

/-! ## A080346.P1403170140481847819

`A035485(A080347(n+1))`
-/

namespace A080346.P1403170140481847819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035485 (A080347 (n + 1)).toNat

end

end A080346.P1403170140481847819

/-!
# A080347: Number of shuffles in Guy's shuffle (A035485) corresponding to the terms in A080346.

The programs for A080347, there is no canonical definition to state claims against.
-/

/-! ## A080347.P5085235127624988338

`A336154(A004315(n+9))+A002262(n)`
-/

namespace A080347.P5085235127624988338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336154 (A004315 (n + 9)).toNat + A002262 n

end

end A080347.P5085235127624988338

/-!
# A080352: Partial sums of A080343.

The programs for A080352, the canonical program `A080352.P5214831271133032900` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080352 has offset 0).

The definition of A080352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080352.P5214831271133032900

`∑[floor(sqrt(8*n))%2]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080352

/-- `∑[floor(sqrt(8*n))%2]` -/
def P5214831271133032900.Spec : Prop :=
  ∀ n, (P5214831271133032900.a n : ℤ) = A080352 n

theorem P5214831271133032900.correct : P5214831271133032900.Spec := by
  intro n
  simp only [A080352]

end A080352

/-! ## A080352.P4953284127406855417

`∑[and(1, floor(sqrt(8*n)))]`
-/

namespace A080352.P4953284127406855417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (8 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080352.P4953284127406855417

namespace A080352

/-- `∑[and(1, floor(sqrt(8*n)))]` -/
def P4953284127406855417.Spec : Prop :=
  ∀ n, (P4953284127406855417.a n : ℤ) = A080352 n

theorem P4953284127406855417.correct : P4953284127406855417.Spec := by
  intro n
  simp only [A080352, Nat.add_sub_cancel, A080352.P4953284127406855417.f1, A080352.P4953284127406855417.a, A080352.P5214831271133032900.f1, A080352.P5214831271133032900.a, SequenceMachineLib.memo_apply]
  try simp

end A080352

/-! ## A080352.P16374350614021754782

`∑[round(sqrt(2*n))-floor(sqrt(2*n))]`
-/

namespace A080352.P16374350614021754782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) - (Nat.sqrt (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080352.P16374350614021754782

namespace A080352

/-- `∑[round(sqrt(2*n))-floor(sqrt(2*n))]` -/
def P16374350614021754782.Spec : Prop :=
  ∀ n, P16374350614021754782.a n = A080352 n

end A080352

/-! ## A080352.P11678589048460708379

`a(n-1)+and(1, floor(sqrt(8*n)))` with `a(0)=0`
-/

namespace A080352.P11678589048460708379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.land 1 (Nat.sqrt (8 * n))

end

end A080352.P11678589048460708379

namespace A080352

/-- `a(n-1)+and(1, floor(sqrt(8*n)))` -/
def P11678589048460708379.Spec : Prop :=
  ∀ n, (P11678589048460708379.a n : ℤ) = A080352 n

end A080352

/-! ## A080352.P484493559223978325

`a(n-1)+round(sqrt(2*n))-floor(sqrt(2*n))` with `a(0)=0`
-/

namespace A080352.P484493559223978325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) - (Nat.sqrt (2 * n) : ℤ))

end

end A080352.P484493559223978325

namespace A080352

/-- `a(n-1)+round(sqrt(2*n))-floor(sqrt(2*n))` -/
def P484493559223978325.Spec : Prop :=
  ∀ n, P484493559223978325.a n = A080352 n

end A080352

/-! ## A080352.P7994503780953192537

`2*∑[A080343(n)/2]`
-/

namespace A080352.P7994503780953192537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080343 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080352.P7994503780953192537

namespace A080352

/-- `2*∑[A080343(n)/2]` -/
def P7994503780953192537.Spec : Prop :=
  ∀ n, P7994503780953192537.a n = (A080352 n : ℚ)

end A080352

/-! ## A080352.P8023732143348648534

`∑[A072786(n)²]-A072786(n)²`
-/

namespace A080352.P8023732143348648534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A072786 n ^ 2

end

end A080352.P8023732143348648534

namespace A080352

/-- `∑[A072786(n)²]-A072786(n)²` -/
def P8023732143348648534.Spec : Prop :=
  ∀ n, P8023732143348648534.a n = A080352 n

end A080352

/-! ## A080352.P9449657017834474536

`A145362(n+1)-∑[A145362(n+1)]+n`
-/

namespace A080352.P9449657017834474536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A080352.P9449657017834474536

namespace A080352

/-- `A145362(n+1)-∑[A145362(n+1)]+n` -/
def P9449657017834474536.Spec : Prop :=
  ∀ n, P9449657017834474536.a n = A080352 n

end A080352

/-! ## A080352.P14431072215573768479

`A023969(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A080352.P14431072215573768479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023969 (2 * n) + a (n - 1)

end

end A080352.P14431072215573768479

namespace A080352

/-- `A023969(2*n)+a(n-1)` -/
def P14431072215573768479.Spec : Prop :=
  ∀ n, P14431072215573768479.a n = A080352 n

end A080352

/-!
# A080353: a(1)=5; for n>1, a(n)=a(n-1)+1 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

The programs for A080353, the canonical program `A080353.P1526260720636558552` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080353 has offset 1).

The definition of A080353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080353.P1526260720636558552

`comp[∑[floor(n/3)]]+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080353

/-- `comp[∑[floor(n/3)]]+1` -/
def P1526260720636558552.Spec : Prop :=
  ∀ n, (P1526260720636558552.a n : ℤ) = A080353 (n + 1)

theorem P1526260720636558552.correct : P1526260720636558552.Spec := by
  intro n
  simp only [A080353, Nat.add_sub_cancel]

end A080353

/-! ## A080353.P6174684112110183527

`comp[∑[floor(1/acot(n/3))]]`
-/

namespace A080353.P6174684112110183527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / SequenceMachineLib.acot ((n : ℚ) / 3 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080353.P6174684112110183527

namespace A080353

/-- `comp[∑[floor(1/acot(n/3))]]` -/
def P6174684112110183527.Spec : Prop :=
  ∀ n, (P6174684112110183527.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P9378974559690190754

`comp[∑[ceil((n-atan(n))/3)]]`
-/

namespace A080353.P9378974559690190754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.arctan (n : ℝ)) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080353.P9378974559690190754

namespace A080353

/-- `comp[∑[ceil((n-atan(n))/3)]]` -/
def P9378974559690190754.Spec : Prop :=
  ∀ n, (P9378974559690190754.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P6776068368758003763

`-xor(-1, comp[∑[floor(n/3)]])`
-/

namespace A080353.P6776068368758003763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A080353.P6776068368758003763

namespace A080353

/-- `-xor(-1, comp[∑[floor(n/3)]])` -/
def P6776068368758003763.Spec : Prop :=
  ∀ n, P6776068368758003763.a n = A080353 (n + 1)

end A080353

/-! ## A080353.P7055883296839536053

`comp[∑[∑[and(1, (2*(3-n))%3)]]]`
-/

namespace A080353.P7055883296839536053
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod (2 * (3 - (n : ℤ))) 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080353.P7055883296839536053

namespace A080353

/-- `comp[∑[∑[and(1, (2*(3-n))%3)]]]` -/
def P7055883296839536053.Spec : Prop :=
  ∀ n, (P7055883296839536053.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P13100749457753756866

`comp[∑[round(4*n/3)%(n+1)]]`
-/

namespace A080353.P13100749457753756866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080353.P13100749457753756866

namespace A080353

/-- `comp[∑[round(4*n/3)%(n+1)]]` -/
def P13100749457753756866.Spec : Prop :=
  ∀ n, (P13100749457753756866.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P2062240096642015653

`comp[∑[a(n-3)+1]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A080353.P2062240096642015653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 0] fun n f2 =>
  f2 (n - 3) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A080353.P2062240096642015653

namespace A080353

/-- `comp[∑[a(n-3)+1]]` -/
def P2062240096642015653.Spec : Prop :=
  ∀ n, (P2062240096642015653.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P3302429893185901971

`comp[∑[floor(n/3)]-(C(2, n²)-1)]`
-/

namespace A080353.P3302429893185901971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((Nat.choose 2 (n ^ 2) : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080353.P3302429893185901971

namespace A080353

/-- `comp[∑[floor(n/3)]-(C(2, n²)-1)]` -/
def P3302429893185901971.Spec : Prop :=
  ∀ n, (P3302429893185901971.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P9625813394277394213

`comp[A008750(n)-1]`
-/

namespace A080353.P9625813394277394213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008750 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080353.P9625813394277394213

namespace A080353

/-- `comp[A008750(n)-1]` -/
def P9625813394277394213.Spec : Prop :=
  ∀ n, (P9625813394277394213.a n : ℤ) = A080353 (n + 1)

end A080353

/-! ## A080353.P17813996255257653204

`A009005(A186354(n+1))`
-/

namespace A080353.P17813996255257653204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A186354 (n + 1)).toNat

end

end A080353.P17813996255257653204

namespace A080353

/-- `A009005(A186354(n+1))` -/
def P17813996255257653204.Spec : Prop :=
  ∀ n, P17813996255257653204.a n = A080353 (n + 1)

end A080353

/-! ## A080353.P15974272822660463779

`A020725(A186354(n+1)+2)`
-/

namespace A080353.P15974272822660463779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A186354 (n + 1) + 2).toNat

end

end A080353.P15974272822660463779

namespace A080353

/-- `A020725(A186354(n+1)+2)` -/
def P15974272822660463779.Spec : Prop :=
  ∀ n, P15974272822660463779.a n = A080353 (n + 1)

end A080353

/-!
# A080354: First differences of A080353.

The programs for A080354, the canonical program `A080354.P16771564380218386066` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080354 has offset 0).

The definition of A080354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080354.P16771564380218386066

`ceil(ratio[round(sqrt(6*(n+1)))])`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080354

/-- `ceil(ratio[round(sqrt(6*(n+1)))])` -/
def P16771564380218386066.Spec : Prop :=
  ∀ n, P16771564380218386066.a n = A080354 n

theorem P16771564380218386066.correct : P16771564380218386066.Spec := by
  intro n
  simp only [A080354]

end A080354

/-! ## A080354.P16509495122999901407

`char[floor(C(n, 2)/3)-1]+1`
-/

namespace A080354.P16509495122999901407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 3⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A080354.P16509495122999901407

namespace A080354

/-- `char[floor(C(n, 2)/3)-1]+1` -/
def P16509495122999901407.Spec : Prop :=
  ∀ n, (P16509495122999901407.a n : ℤ) = A080354 n

end A080354

/-! ## A080354.P16594002381097979458

`(char[∑[floor((n-1)/3)]]+1)!`
-/

namespace A080354.P16594002381097979458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A080354.P16594002381097979458

namespace A080354

/-- `(char[∑[floor((n-1)/3)]]+1)!` -/
def P16594002381097979458.Spec : Prop :=
  ∀ n, (P16594002381097979458.a n : ℤ) = A080354 n

end A080354

/-! ## A080354.P6579660198110827513

`char[∑[∑[∑[n]%3]]-1]+1`
-/

namespace A080354.P6579660198110827513
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A080354.P6579660198110827513

namespace A080354

/-- `char[∑[∑[∑[n]%3]]-1]+1` -/
def P6579660198110827513.Spec : Prop :=
  ∀ n, (P6579660198110827513.a n : ℤ) = A080354 n

end A080354

/-! ## A080354.P15546364171947134020

`Δ[round(sqrt(6*n+3))]%4+1`
-/

namespace A080354.P15546364171947134020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * n + 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4 + 1

end

end A080354.P15546364171947134020

namespace A080354

/-- `Δ[round(sqrt(6*n+3))]%4+1` -/
def P15546364171947134020.Spec : Prop :=
  ∀ n, P15546364171947134020.a n = A080354 n

end A080354

/-! ## A080354.P12378554534493231715

`gcd(2, char[floor(∑[n/3])-1]+1)`
-/

namespace A080354.P12378554534493231715
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A080354.P12378554534493231715

namespace A080354

/-- `gcd(2, char[floor(∑[n/3])-1]+1)` -/
def P12378554534493231715.Spec : Prop :=
  ∀ n, (P12378554534493231715.a n : ℤ) = A080354 n

end A080354

/-! ## A080354.P14169219973592043095

`A000005(Δ[round(sqrt(6*(n+1)))]+1)`
-/

namespace A080354.P14169219973592043095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 1).toNat

end

end A080354.P14169219973592043095

namespace A080354

/-- `A000005(Δ[round(sqrt(6*(n+1)))]+1)` -/
def P14169219973592043095.Spec : Prop :=
  ∀ n, P14169219973592043095.a n = A080354 n

end A080354

/-! ## A080354.P6699493516506231093

`A005117(Δ[round(sqrt(6*(n+1)))]+1)`
-/

namespace A080354.P6699493516506231093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f1 (n + 1) - f1 n + 1).toNat

end

end A080354.P6699493516506231093

namespace A080354

/-- `A005117(Δ[round(sqrt(6*(n+1)))]+1)` -/
def P6699493516506231093.Spec : Prop :=
  ∀ n, P6699493516506231093.a n = A080354 n

end A080354

/-! ## A080354.P14987309707082933166

`A020639(Δ[round(sqrt(6*(n+1)))]+1)`
-/

namespace A080354.P14987309707082933166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n + 1).toNat

end

end A080354.P14987309707082933166

namespace A080354

/-- `A020639(Δ[round(sqrt(6*(n+1)))]+1)` -/
def P14987309707082933166.Spec : Prop :=
  ∀ n, P14987309707082933166.a n = A080354 n

end A080354

/-! ## A080354.P16111936886938946329

`A000010(Δ[round(sqrt(6*(n+1)))]+2)`
-/

namespace A080354.P16111936886938946329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n + 2).toNat

end

end A080354.P16111936886938946329

namespace A080354

/-- `A000010(Δ[round(sqrt(6*(n+1)))]+2)` -/
def P16111936886938946329.Spec : Prop :=
  ∀ n, P16111936886938946329.a n = A080354 n

end A080354

/-! ## A080354.P6676561563955604245

`Δ[A073188(n)]+1`
-/

namespace A080354.P6676561563955604245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A080354.P6676561563955604245

namespace A080354

/-- `Δ[A073188(n)]+1` -/
def P6676561563955604245.Spec : Prop :=
  ∀ n, P6676561563955604245.a n = A080354 n

end A080354

/-! ## A080354.P13022876403777328311

`Δ[A080353(n+1)]`
-/

namespace A080354.P13022876403777328311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080354.P13022876403777328311

namespace A080354

/-- `Δ[A080353(n+1)]` -/
def P13022876403777328311.Spec : Prop :=
  ∀ n, P13022876403777328311.a n = A080354 n

end A080354

/-! ## A080354.P8897841099936423630

`Δ[A186354(n+1)]`
-/

namespace A080354.P8897841099936423630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080354.P8897841099936423630

namespace A080354

/-- `Δ[A186354(n+1)]` -/
def P8897841099936423630.Spec : Prop :=
  ∀ n, P8897841099936423630.a n = A080354 n

end A080354

/-! ## A080354.P17984076057893725991

`A149914(Δ[A073188(n)])`
-/

namespace A080354.P17984076057893725991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149914 (f1 (n + 1) - f1 n).toNat

end

end A080354.P17984076057893725991

namespace A080354

/-- `A149914(Δ[A073188(n)])` -/
def P17984076057893725991.Spec : Prop :=
  ∀ n, P17984076057893725991.a n = A080354 n

end A080354

/-! ## A080354.P17871022181470513117

`A073192(Δ[2*A073188(n)])`
-/

namespace A080354.P17871022181470513117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073192 (f1 (n + 1) - f1 n).toNat

end

end A080354.P17871022181470513117

namespace A080354

/-- `A073192(Δ[2*A073188(n)])` -/
def P17871022181470513117.Spec : Prop :=
  ∀ n, P17871022181470513117.a n = A080354 n

end A080354

/-! ## A080354.P2670199738237687613

`A303836(Δ[2*A073188(n)])`
-/

namespace A080354.P2670199738237687613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303836 (f1 (n + 1) - f1 n).toNat

end

end A080354.P2670199738237687613

namespace A080354

/-- `A303836(Δ[2*A073188(n)])` -/
def P2670199738237687613.Spec : Prop :=
  ∀ n, P2670199738237687613.a n = A080354 n

end A080354

/-! ## A080354.P17581498410581073831

`A151878(A073189(n+1))+1`
-/

namespace A080354.P17581498410581073831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A073189 (n + 1)).toNat + 1

end

end A080354.P17581498410581073831

namespace A080354

/-- `A151878(A073189(n+1))+1` -/
def P17581498410581073831.Spec : Prop :=
  ∀ n, P17581498410581073831.a n = A080354 n

end A080354

/-! ## A080354.P10133411054284621841

`A080353(n+2)-A080353(n+1)`
-/

namespace A080354.P10133411054284621841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080353 (n + 2) - A080353 (n + 1)

end

end A080354.P10133411054284621841

namespace A080354

/-- `A080353(n+2)-A080353(n+1)` -/
def P10133411054284621841.Spec : Prop :=
  ∀ n, P10133411054284621841.a n = A080354 n

end A080354

/-! ## A080354.P4726651568406922159

`A186354(n+2)-A186354(n+1)`
-/

namespace A080354.P4726651568406922159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186354 (n + 2) - A186354 (n + 1)

end

end A080354.P4726651568406922159

namespace A080354

/-- `A186354(n+2)-A186354(n+1)` -/
def P4726651568406922159.Spec : Prop :=
  ∀ n, P4726651568406922159.a n = A080354 n

end A080354

/-! ## A080354.P4910865744307289592

`A085140(A073188(n+1)-A073188(n))`
-/

namespace A080354.P4910865744307289592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085140 (A073188 (n + 1) - A073188 n).toNat

end

end A080354.P4910865744307289592

namespace A080354

/-- `A085140(A073188(n+1)-A073188(n))` -/
def P4910865744307289592.Spec : Prop :=
  ∀ n, P4910865744307289592.a n = A080354 n

end A080354

/-!
# A080355: a(1)=1; thereafter, a(n+1) = a(n) + 2^(prime(n)-1).

The programs for A080355, the canonical program `A080355.P14023989668331808730` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080355 has offset 1).

The definition of A080355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080355.P14023989668331808730

`A076793(n)/2+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080355

/-- `A076793(n)/2+1` -/
def P14023989668331808730.Spec : Prop :=
  ∀ n, P14023989668331808730.a n = (A080355 (n + 1) : ℚ)

end A080355

/-! ## A080355.P13100034015523591840

`2^(A000040(n)-1)+a(n-1)` with `a(0)=1`
-/

namespace A080355.P13100034015523591840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A000040 n - 1 : ℤ) + a (n - 1)

end

end A080355.P13100034015523591840

namespace A080355

/-- `2^(A000040(n)-1)+a(n-1)` -/
def P13100034015523591840.Spec : Prop :=
  ∀ n, P13100034015523591840.a n = (A080355 (n + 1) : ℚ)

end A080355

/-! ## A080355.P1332858677989754322

`∑[2^lt[∑{e}[n+1, #], 2]]`
-/

namespace A080355.P1332858677989754322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080355.P1332858677989754322

namespace A080355

/-- `∑[2^lt[∑{e}[n+1, #], 2]]` -/
def P1332858677989754322.Spec : Prop :=
  ∀ n, (P1332858677989754322.a n : ℤ) = A080355 (n + 1)

end A080355

/-! ## A080355.P2142173078865946225

`∑[2^eq[n+1, ∏{d}[n+1, #]]]`
-/

namespace A080355.P2142173078865946225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080355.P2142173078865946225

namespace A080355

/-- `∑[2^eq[n+1, ∏{d}[n+1, #]]]` -/
def P2142173078865946225.Spec : Prop :=
  ∀ n, (P2142173078865946225.a n : ℤ) = A080355 (n + 1)

end A080355

/-! ## A080355.P18089016450652245257

`2*A135482(n)+1`
-/

namespace A080355.P18089016450652245257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135482 n + 1

end

end A080355.P18089016450652245257

namespace A080355

/-- `2*A135482(n)+1` -/
def P18089016450652245257.Spec : Prop :=
  ∀ n, P18089016450652245257.a n = A080355 (n + 1)

end A080355

/-! ## A080355.P849719554271997555

`(A320877(n)+1)/2`
-/

namespace A080355.P849719554271997555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320877 n + 1 : ℚ) / 2

end

end A080355.P849719554271997555

namespace A080355

/-- `(A320877(n)+1)/2` -/
def P849719554271997555.Spec : Prop :=
  ∀ n, P849719554271997555.a n = (A080355 (n + 1) : ℚ)

end A080355

/-! ## A080355.P10214982125532668684

`∑[record[A358820(n+1)]]`
-/

namespace A080355.P10214982125532668684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080355.P10214982125532668684

namespace A080355

/-- `∑[record[A358820(n+1)]]` -/
def P10214982125532668684.Spec : Prop :=
  ∀ n, P10214982125532668684.a n = A080355 (n + 1)

end A080355

/-! ## A080355.P13254093884658252446

`∑[2^lt[A001222(n+1), 2]]`
-/

namespace A080355.P13254093884658252446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080355.P13254093884658252446

namespace A080355

/-- `∑[2^lt[A001222(n+1), 2]]` -/
def P13254093884658252446.Spec : Prop :=
  ∀ n, (P13254093884658252446.a n : ℤ) = A080355 (n + 1)

end A080355

/-! ## A080355.P9027463324203371319

`∑[2^lt[A000005(n+1), 3]]`
-/

namespace A080355.P9027463324203371319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080355.P9027463324203371319

namespace A080355

/-- `∑[2^lt[A000005(n+1), 3]]` -/
def P9027463324203371319.Spec : Prop :=
  ∀ n, (P9027463324203371319.a n : ℤ) = A080355 (n + 1)

end A080355

/-! ## A080355.P10803111412464374264

`∑[2^lt[n, A006530(n+1)]]`
-/

namespace A080355.P10803111412464374264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080355.P10803111412464374264

namespace A080355

/-- `∑[2^lt[n, A006530(n+1)]]` -/
def P10803111412464374264.Spec : Prop :=
  ∀ n, (P10803111412464374264.a n : ℤ) = A080355 (n + 1)

end A080355

/-!
# A080356: Number of twin primes between n and 2n: a(n) = number of j in range n <= j <= 2*n such that j and j+2 are primes.

The programs for A080356, the canonical program `A080356.P844167049786570391` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080356 has offset 1).

The definition of A080356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080356.P844167049786570391

`∑[A353463(2*n+1)-A353464(n+2)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080356

/-- `∑[A353463(2*n+1)-A353464(n+2)]` -/
def P844167049786570391.Spec : Prop :=
  ∀ n, P844167049786570391.a n = A080356 (n + 1)

theorem P844167049786570391.correct : P844167049786570391.Spec := by
  intro n
  simp only [A080356, Nat.add_sub_cancel]

end A080356

/-! ## A080356.P9339124800674030385

`A071538(2*(n+1))-A071538(round(sqrt(n²+1)))`
-/

namespace A080356.P9339124800674030385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (2 * (n + 1)) - A071538 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A080356.P9339124800674030385

namespace A080356

/-- `A071538(2*(n+1))-A071538(round(sqrt(n²+1)))` -/
def P9339124800674030385.Spec : Prop :=
  ∀ n, P9339124800674030385.a n = A080356 (n + 1)

end A080356

/-! ## A080356.P5882141050479981647

`A088018(n+1)+A010051(A060308(n+1)+2)`
-/

namespace A080356.P5882141050479981647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088018 (n + 1) + A010051 (A060308 (n + 1) + 2).toNat

end

end A080356.P5882141050479981647

namespace A080356

/-- `A088018(n+1)+A010051(A060308(n+1)+2)` -/
def P5882141050479981647.Spec : Prop :=
  ∀ n, P5882141050479981647.a n = A080356 (n + 1)

end A080356

/-! ## A080356.P27446281974094908

`A088018(n+1)+Δ[A071538(A004280(n+1))]`
-/

namespace A080356.P27446281974094908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088018 (n + 1) + (f1 (n + 1) - f1 n)

end

end A080356.P27446281974094908

namespace A080356

/-- `A088018(n+1)+Δ[A071538(A004280(n+1))]` -/
def P27446281974094908.Spec : Prop :=
  ∀ n, P27446281974094908.a n = A080356 (n + 1)

end A080356

/-! ## A080356.P14223766540471925992

`A088018(n+1)+A055672(Δ[A060308(n+1)])`
-/

namespace A080356.P14223766540471925992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088018 (n + 1) + A055672 (f1 (n + 1) - f1 n).toNat

end

end A080356.P14223766540471925992

namespace A080356

/-- `A088018(n+1)+A055672(Δ[A060308(n+1)])` -/
def P14223766540471925992.Spec : Prop :=
  ∀ n, P14223766540471925992.a n = A080356 (n + 1)

end A080356

/-!
# A080358: Value of Vandermonde determinant for the first n prime numbers: V[prime(1), ..., prime(n)].

The programs for A080358, there is no canonical definition to state claims against.
-/

/-! ## A080358.P10961500922171631782

`A298883(n)/A002110(n)`
-/

namespace A080358.P10961500922171631782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298883 n : ℚ) / (A002110 n : ℚ)

end

end A080358.P10961500922171631782

/-! ## A080358.P1661134406568336552

`A298883(n)/∏[A324050(n+1)]`
-/

namespace A080358.P1661134406568336552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298883 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A080358.P1661134406568336552

/-! ## A080358.P2930217931835067448

`∏{p}[A002110(n), A080497(#)]`
-/

namespace A080358.P2930217931835067448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080497 p

end

end A080358.P2930217931835067448

/-! ## A080358.P8530829743265508869

`∏{p}[record[A121281(n)], A080497(#)]`
-/

namespace A080358.P8530829743265508869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080497 p

end

end A080358.P8530829743265508869

/-!
# A080359: The smallest integer x > 0 such that the number of primes in (x/2, x] equals n.

The programs for A080359, there is no canonical definition to state claims against.
-/

/-! ## A080359.P17730615686342252031

`A080360(n+1)-A080361(n+1)`
-/

namespace A080359.P17730615686342252031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080360 (n + 1) - A080361 (n + 1)

end

end A080359.P17730615686342252031

/-! ## A080359.P10760624221951243956

`A104272(n+1)-A194217(n+1)`
-/

namespace A080359.P10760624221951243956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - A194217 (n + 1)

end

end A080359.P10760624221951243956

/-! ## A080359.P2625005945771718962

`2*A059316(n+1)-A057427(n)`
-/

namespace A080359.P2625005945771718962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059316 (n + 1) - A057427 n

end

end A080359.P2625005945771718962

/-! ## A080359.P17307263334756880259

`A151800(2*(A059316(n+1)-1))`
-/

namespace A080359.P17307263334756880259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * (A059316 (n + 1) - 1)).toNat

end

end A080359.P17307263334756880259

/-! ## A080359.P18292979841702984113

`A151800(A059316(n+1)+A059316(n+1)-2)`
-/

namespace A080359.P18292979841702984113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A059316 (n + 1) + (A059316 (n + 1) - 2)).toNat

end

end A080359.P18292979841702984113

/-! ## A080359.P17559928334198193882

`A038700(A059316(n+1))`
-/

namespace A080359.P17559928334198193882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A059316 (n + 1)).toNat

end

end A080359.P17559928334198193882

/-! ## A080359.P16571236480491860939

`A004273(A059316(n+1)-1)+2`
-/

namespace A080359.P16571236480491860939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A059316 (n + 1) - 1).toNat + 2

end

end A080359.P16571236480491860939

/-! ## A080359.P887601679469152579

`A059316(n+1)+A028310(A059316(n+1)-1)`
-/

namespace A080359.P887601679469152579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059316 (n + 1) + A028310 (A059316 (n + 1) - 1).toNat

end

end A080359.P887601679469152579

/-! ## A080359.P5219556055071525490

`A104272(n+1)-(A194186(n+1)+A194184(n+1))`
-/

namespace A080359.P5219556055071525490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) - (A194186 (n + 1) + A194184 (n + 1))

end

end A080359.P5219556055071525490

/-! ## A080359.P15759877083570467390

`A007918(2*A059316(n+1)-1)`
-/

namespace A080359.P15759877083570467390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * A059316 (n + 1) - 1).toNat

end

end A080359.P15759877083570467390

/-! ## A080359.P14298011601545950565

`A007918(A059316(n+1)+A059316(n+1)-1)`
-/

namespace A080359.P14298011601545950565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059316 (n + 1) + (A059316 (n + 1) - 1)).toNat

end

end A080359.P14298011601545950565

/-!
# A080360: a(n) is the largest positive integer x such that the number of unitary-prime-divisors of x! equals n. Same as the largest positive integer x such that the number of primes in (x/2,x] equals n.

The programs for A080360, there is no canonical definition to state claims against.
-/

/-! ## A080360.P6929887237415115921

`A104272(n+2)-1`
-/

namespace A080360.P6929887237415115921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - 1

end

end A080360.P6929887237415115921

/-! ## A080360.P6894214283349930

`∑[A182873(n+1)]+1`
-/

namespace A080360.P6894214283349930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080360.P6894214283349930

/-! ## A080360.P17633276310116357109

`A080361(n+1)+A080359(n+1)`
-/

namespace A080360.P17633276310116357109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080361 (n + 1) + A080359 (n + 1)

end

end A080360.P17633276310116357109

/-! ## A080360.P14312092924643191938

`2*A084139(n+1)`
-/

namespace A080360.P14312092924643191938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084139 (n + 1)

end

end A080360.P14312092924643191938

/-! ## A080360.P7913615912999489449

`∑[abs(Δ[A104272(n+1)])]+1`
-/

namespace A080360.P7913615912999489449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080360.P7913615912999489449

/-! ## A080360.P18336388692826236088

`xor(1, A104272(A020725(n+1)))`
-/

namespace A080360.P18336388692826236088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A104272 (A020725 (n + 1)).toNat)

end

end A080360.P18336388692826236088

/-! ## A080360.P15986620771579318021

`A000027(xor(1, A104272(n+2)))`
-/

namespace A080360.P15986620771579318021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (A104272 (n + 2))).toNat

end

end A080360.P15986620771579318021

/-! ## A080360.P2244351666971387546

`A031215(n+2)+A233739(n+2)-1`
-/

namespace A080360.P2244351666971387546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 2) + (A233739 (n + 2) - 1)

end

end A080360.P2244351666971387546

/-! ## A080360.P6795316342653693086

`A080359(n+2)+A194217(n+2)-1`
-/

namespace A080360.P6795316342653693086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 2) + (A194217 (n + 2) - 1)

end

end A080360.P6795316342653693086

/-! ## A080360.P4848819034090990396

`A001489(n+1)+A104272(n+2)+n`
-/

namespace A080360.P4848819034090990396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A104272 (n + 2) + (n : ℤ))

end

end A080360.P4848819034090990396

/-! ## A080360.P6898995419625034540

`A084139(A028310(n+1))+A084139(n+1)`
-/

namespace A080360.P6898995419625034540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 (A028310 (n + 1)).toNat + A084139 (n + 1)

end

end A080360.P6898995419625034540

/-! ## A080360.P14311279906690909732

`xor(A104272(n+2), A163963(2*n+1))`
-/

namespace A080360.P14311279906690909732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104272 (n + 2)) (A163963 (2 * n + 1))

end

end A080360.P14311279906690909732

/-! ## A080360.P7718897611945038281

`A000040(A179196(n+1))+A182873(n+1)-1`
-/

namespace A080360.P7718897611945038281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1)).toNat + (A182873 (n + 1) - 1)

end

end A080360.P7718897611945038281

/-! ## A080360.P6748911486883528462

`A006093(A179196(n+2))`
-/

namespace A080360.P6748911486883528462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A179196 (n + 2)).toNat

end

end A080360.P6748911486883528462

/-! ## A080360.P5431009994385930383

`xor(A001222(A104272(n+1)), A104272(n+2))`
-/

namespace A080360.P5431009994385930383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A104272 (n + 1)).toNat) (A104272 (n + 2))

end

end A080360.P5431009994385930383

/-! ## A080360.P8209323012886119114

`A000010(A104272(n+2))`
-/

namespace A080360.P8209323012886119114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104272 (n + 2)).toNat

end

end A080360.P8209323012886119114

/-! ## A080360.P16009808150248258037

`A004277(A084139(n+1))`
-/

namespace A080360.P16009808150248258037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A084139 (n + 1)).toNat

end

end A080360.P16009808150248258037

/-! ## A080360.P17492012014436692935

`A004275(A084140(n+2))`
-/

namespace A080360.P17492012014436692935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A084140 (n + 2)).toNat

end

end A080360.P17492012014436692935

/-! ## A080360.P13962331532067146648

`A162996(n+2)-(A163160(n+2)+1)`
-/

namespace A080360.P13962331532067146648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 2) - (A163160 (n + 2) + 1)

end

end A080360.P13962331532067146648

/-! ## A080360.P10240947258456480578

`A194658(n+2)+A194659(n+2)-1`
-/

namespace A080360.P10240947258456480578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194658 (n + 2) + (A194659 (n + 2) - 1)

end

end A080360.P10240947258456480578

/-!
# A080361: a(n) is the difference between the largest and the smallest positive integers x such that the number of unitary-prime-divisors of x! equals n. Same as the difference between the largest and the smallest positive integers x such that the number of primes in (x/2,x] equals n.

The programs for A080361, there is no canonical definition to state claims against.
-/

/-! ## A080361.P2828285280245408648

`A080360(n+1)-A080359(n+1)`
-/

namespace A080361.P2828285280245408648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080360 (n + 1) - A080359 (n + 1)

end

end A080361.P2828285280245408648

/-! ## A080361.P11251768002245868885

`A182873(n+1)+A194217(n+1)-1`
-/

namespace A080361.P11251768002245868885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1) + (A194217 (n + 1) - 1)

end

end A080361.P11251768002245868885

/-! ## A080361.P11859836213694375612

`∑[A182873(n+1)]+1-A080359(n+1)`
-/

namespace A080361.P11859836213694375612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A080359 (n + 1))

end

end A080361.P11859836213694375612

/-! ## A080361.P14830146403482092239

`A182873(n+1)+A023443(A194217(n+1))`
-/

namespace A080361.P14830146403482092239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182873 (n + 1) + A023443 (A194217 (n + 1)).toNat

end

end A080361.P14830146403482092239

/-! ## A080361.P5081174366751923081

`A104272(n+2)-(A080359(n+1)+1)`
-/

namespace A080361.P5081174366751923081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - (A080359 (n + 1) + 1)

end

end A080361.P5081174366751923081

/-! ## A080361.P5972740884989663419

`2*A084139(n+1)-A080359(n+1)`
-/

namespace A080361.P5972740884989663419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084139 (n + 1) - A080359 (n + 1)

end

end A080361.P5972740884989663419

/-! ## A080361.P3096873090866515913

`Δ[A104272(n+1)]+A194217(n+1)-1`
-/

namespace A080361.P3096873090866515913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A194217 (n + 1) - 1)

end

end A080361.P3096873090866515913

/-! ## A080361.P7454254940041512271

`A104272(n+2)-A000203(A080359(n+1))`
-/

namespace A080361.P7454254940041512271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A000203 (A080359 (n + 1)).toNat

end

end A080361.P7454254940041512271

/-! ## A080361.P18179818923774481111

`A080360(n+1)-A038700(A059316(n+1))`
-/

namespace A080361.P18179818923774481111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080360 (n + 1) - A038700 (A059316 (n + 1)).toNat

end

end A080361.P18179818923774481111

/-! ## A080361.P10947979826050247062

`A005843(A084139(n+1))-A080359(n+1)`
-/

namespace A080361.P10947979826050247062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A084139 (n + 1)).toNat - A080359 (n + 1)

end

end A080361.P10947979826050247062

/-!
# A080363: Nonprime numbers k such that the largest prime divisor of k is unitary.

The programs for A080363, the canonical program `A080363.P932351354866622557` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080363 has offset 1).

The definition of A080363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080363.P13014438239573044728

`filter[A102750(n+3), A005171(#)]`
-/

namespace A080363.P13014438239573044728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A080363.P13014438239573044728

namespace A080363

/-- `filter[A102750(n+3), A005171(#)]` -/
def P13014438239573044728.Spec : Prop :=
  ∀ n, P13014438239573044728.a n = A080363 (n + 1)

end A080363

/-! ## A080363.P5222291822918613311

`filter[A102750(n+3), A066247(#)]`
-/

namespace A080363.P5222291822918613311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A080363.P5222291822918613311

namespace A080363

/-- `filter[A102750(n+3), A066247(#)]` -/
def P5222291822918613311.Spec : Prop :=
  ∀ n, P5222291822918613311.a n = A080363 (n + 1)

end A080363

/-! ## A080363.P6141128811507592692

`filter[A102750(n+3), A174898(#)]`
-/

namespace A080363.P6141128811507592692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A080363.P6141128811507592692

namespace A080363

/-- `filter[A102750(n+3), A174898(#)]` -/
def P6141128811507592692.Spec : Prop :=
  ∀ n, P6141128811507592692.a n = A080363 (n + 1)

end A080363

/-! ## A080363.P785716516535800674

`filter[A102750(n+3), A202238(#)]`
-/

namespace A080363.P785716516535800674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A080363.P785716516535800674

namespace A080363

/-- `filter[A102750(n+3), A202238(#)]` -/
def P785716516535800674.Spec : Prop :=
  ∀ n, P785716516535800674.a n = A080363 (n + 1)

end A080363

/-! ## A080363.P932351354866622557

`∩[A002808(n+1), A102750(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080363

/-- `∩[A002808(n+1), A102750(n+1)]` -/
def P932351354866622557.Spec : Prop :=
  ∀ n, (P932351354866622557.a n : ℤ) = A080363 (n + 1)

theorem P932351354866622557.correct : P932351354866622557.Spec := by
  intro n
  simp only [A080363, Nat.add_sub_cancel]

end A080363

/-! ## A080363.P12127111046926314096

`∩[A018252(n+1), A102750(n+1)]`
-/

namespace A080363.P12127111046926314096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P12127111046926314096

namespace A080363

/-- `∩[A018252(n+1), A102750(n+1)]` -/
def P12127111046926314096.Spec : Prop :=
  ∀ n, (P12127111046926314096.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P2107032034828017314

`∩[A102750(n+1), A141468(n+1)]`
-/

namespace A080363.P2107032034828017314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P2107032034828017314

namespace A080363

/-- `∩[A102750(n+1), A141468(n+1)]` -/
def P2107032034828017314.Spec : Prop :=
  ∀ n, (P2107032034828017314.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P5200829753716565404

`∪[A063763(n+1), A068567(n+1)]`
-/

namespace A080363.P5200829753716565404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P5200829753716565404

namespace A080363

/-- `∪[A063763(n+1), A068567(n+1)]` -/
def P5200829753716565404.Spec : Prop :=
  ∀ n, (P5200829753716565404.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P5726267900097249958

`∩[A102750(n+1), A389065(n+1)]`
-/

namespace A080363.P5726267900097249958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P5726267900097249958

namespace A080363

/-- `∩[A102750(n+1), A389065(n+1)]` -/
def P5726267900097249958.Spec : Prop :=
  ∀ n, (P5726267900097249958.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P2079489594840129482

`∩[A102750(n+1), A106543(n+1)]`
-/

namespace A080363.P2079489594840129482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P2079489594840129482

namespace A080363

/-- `∩[A102750(n+1), A106543(n+1)]` -/
def P2079489594840129482.Spec : Prop :=
  ∀ n, (P2079489594840129482.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P8102493601297991376

`∩[A089229(n+1), A102750(n+1)]`
-/

namespace A080363.P8102493601297991376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P8102493601297991376

namespace A080363

/-- `∩[A089229(n+1), A102750(n+1)]` -/
def P8102493601297991376.Spec : Prop :=
  ∀ n, (P8102493601297991376.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P13567992649144583147

`∩[A024619(n+1), A102750(n+1)]`
-/

namespace A080363.P13567992649144583147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P13567992649144583147

namespace A080363

/-- `∩[A024619(n+1), A102750(n+1)]` -/
def P13567992649144583147.Spec : Prop :=
  ∀ n, (P13567992649144583147.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P7851739781168970279

`∩[A102750(n+1), A361102(n+1)]`
-/

namespace A080363.P7851739781168970279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P7851739781168970279

namespace A080363

/-- `∩[A102750(n+1), A361102(n+1)]` -/
def P7851739781168970279.Spec : Prop :=
  ∀ n, (P7851739781168970279.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P18246976574472644078

`∩[A102750(n+1), A139118(n+1)]`
-/

namespace A080363.P18246976574472644078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P18246976574472644078

namespace A080363

/-- `∩[A102750(n+1), A139118(n+1)]` -/
def P18246976574472644078.Spec : Prop :=
  ∀ n, (P18246976574472644078.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P17491175116551369223

`∩[A102750(n+1), A268388(n+1)]`
-/

namespace A080363.P17491175116551369223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P17491175116551369223

namespace A080363

/-- `∩[A102750(n+1), A268388(n+1)]` -/
def P17491175116551369223.Spec : Prop :=
  ∀ n, (P17491175116551369223.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P14029598393046586033

`∩[A080257(n+1), A102750(n+1)]`
-/

namespace A080363.P14029598393046586033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P14029598393046586033

namespace A080363

/-- `∩[A080257(n+1), A102750(n+1)]` -/
def P14029598393046586033.Spec : Prop :=
  ∀ n, (P14029598393046586033.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P12373644254569950671

`∩[A102750(n+1), A343311(n+1)]`
-/

namespace A080363.P12373644254569950671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P12373644254569950671

namespace A080363

/-- `∩[A102750(n+1), A343311(n+1)]` -/
def P12373644254569950671.Spec : Prop :=
  ∀ n, (P12373644254569950671.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P191808511691325050

`∩[A056653(n+1), A102750(n+1)]`
-/

namespace A080363.P191808511691325050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080363.P191808511691325050

namespace A080363

/-- `∩[A056653(n+1), A102750(n+1)]` -/
def P191808511691325050.Spec : Prop :=
  ∀ n, (P191808511691325050.a n : ℤ) = A080363 (n + 1)

end A080363

/-! ## A080363.P15113330823045042731

`record[A243074(A002808(n+2))]`
-/

namespace A080363.P15113330823045042731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A002808 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080363.P15113330823045042731

namespace A080363

/-- `record[A243074(A002808(n+2))]` -/
def P15113330823045042731.Spec : Prop :=
  ∀ n, P15113330823045042731.a n = A080363 (n + 1)

end A080363

/-! ## A080363.P10542035311333633208

`record[A243074(A018252(n+3))]`
-/

namespace A080363.P10542035311333633208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A018252 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080363.P10542035311333633208

namespace A080363

/-- `record[A243074(A018252(n+3))]` -/
def P10542035311333633208.Spec : Prop :=
  ∀ n, P10542035311333633208.a n = A080363 (n + 1)

end A080363

/-!
# A080364: Composite numbers whose least prime factor appears with multiplicity 1.

The programs for A080364, the canonical program `A080364.P7536739539574044768` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080364 has offset 1).

The definition of A080364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080364.P7536739539574044768

`filter[A247180(n+1), A005171(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080364

/-- `filter[A247180(n+1), A005171(#)]` -/
def P7536739539574044768.Spec : Prop :=
  ∀ n, P7536739539574044768.a n = A080364 (n + 1)

theorem P7536739539574044768.correct : P7536739539574044768.Spec := by
  intro n
  simp only [A080364, Nat.add_sub_cancel]

end A080364

/-! ## A080364.P7472622372834380485

`filter[A247180(n+1), A066247(#)]`
-/

namespace A080364.P7472622372834380485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A080364.P7472622372834380485

namespace A080364

/-- `filter[A247180(n+1), A066247(#)]` -/
def P7472622372834380485.Spec : Prop :=
  ∀ n, P7472622372834380485.a n = A080364 (n + 1)

end A080364

/-! ## A080364.P9702300259722950867

`filter[A247180(n+1), A174898(#)]`
-/

namespace A080364.P9702300259722950867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A080364.P9702300259722950867

namespace A080364

/-- `filter[A247180(n+1), A174898(#)]` -/
def P9702300259722950867.Spec : Prop :=
  ∀ n, P9702300259722950867.a n = A080364 (n + 1)

end A080364

/-! ## A080364.P3815951532129765959

`filter[A247180(n+1), A202238(#)]`
-/

namespace A080364.P3815951532129765959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A080364.P3815951532129765959

namespace A080364

/-- `filter[A247180(n+1), A202238(#)]` -/
def P3815951532129765959.Spec : Prop :=
  ∀ n, P3815951532129765959.a n = A080364 (n + 1)

end A080364

/-! ## A080364.P6053660419429454419

`∩[A002808(n+1), A247180(n+1)]`
-/

namespace A080364.P6053660419429454419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P6053660419429454419

namespace A080364

/-- `∩[A002808(n+1), A247180(n+1)]` -/
def P6053660419429454419.Spec : Prop :=
  ∀ n, (P6053660419429454419.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P1454917701916655747

`∩[A018252(n+1), A247180(n+1)]`
-/

namespace A080364.P1454917701916655747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P1454917701916655747

namespace A080364

/-- `∩[A018252(n+1), A247180(n+1)]` -/
def P1454917701916655747.Spec : Prop :=
  ∀ n, (P1454917701916655747.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P15095959026435317142

`∩[A119313(n+1), A247180(n+1)]`
-/

namespace A080364.P15095959026435317142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P15095959026435317142

namespace A080364

/-- `∩[A119313(n+1), A247180(n+1)]` -/
def P15095959026435317142.Spec : Prop :=
  ∀ n, (P15095959026435317142.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P5242334079778387740

`∩[A141468(n+1), A247180(n+1)]`
-/

namespace A080364.P5242334079778387740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P5242334079778387740

namespace A080364

/-- `∩[A141468(n+1), A247180(n+1)]` -/
def P5242334079778387740.Spec : Prop :=
  ∀ n, (P5242334079778387740.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P2130618141192408808

`∩[A085232(n+1), A247180(n+1)]`
-/

namespace A080364.P2130618141192408808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P2130618141192408808

namespace A080364

/-- `∩[A085232(n+1), A247180(n+1)]` -/
def P2130618141192408808.Spec : Prop :=
  ∀ n, (P2130618141192408808.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P5276862636398622722

`∩[A085234(n+1), A247180(n+1)]`
-/

namespace A080364.P5276862636398622722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P5276862636398622722

namespace A080364

/-- `∩[A085234(n+1), A247180(n+1)]` -/
def P5276862636398622722.Spec : Prop :=
  ∀ n, (P5276862636398622722.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P12990599746735402751

`∩[A106543(n+1), A247180(n+1)]`
-/

namespace A080364.P12990599746735402751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P12990599746735402751

namespace A080364

/-- `∩[A106543(n+1), A247180(n+1)]` -/
def P12990599746735402751.Spec : Prop :=
  ∀ n, (P12990599746735402751.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P14591097129120849363

`∩[A089229(n+1), A247180(n+1)]`
-/

namespace A080364.P14591097129120849363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P14591097129120849363

namespace A080364

/-- `∩[A089229(n+1), A247180(n+1)]` -/
def P14591097129120849363.Spec : Prop :=
  ∀ n, (P14591097129120849363.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P13843813669505680499

`∩[A024619(n+1), A247180(n+1)]`
-/

namespace A080364.P13843813669505680499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P13843813669505680499

namespace A080364

/-- `∩[A024619(n+1), A247180(n+1)]` -/
def P13843813669505680499.Spec : Prop :=
  ∀ n, (P13843813669505680499.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P5220854956104302248

`∩[A247180(n+1), A361102(n+1)]`
-/

namespace A080364.P5220854956104302248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P5220854956104302248

namespace A080364

/-- `∩[A247180(n+1), A361102(n+1)]` -/
def P5220854956104302248.Spec : Prop :=
  ∀ n, (P5220854956104302248.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P15088635090324768906

`∩[A139118(n+1), A247180(n+1)]`
-/

namespace A080364.P15088635090324768906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P15088635090324768906

namespace A080364

/-- `∩[A139118(n+1), A247180(n+1)]` -/
def P15088635090324768906.Spec : Prop :=
  ∀ n, (P15088635090324768906.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P4969337439002521547

`∩[A247180(n+1), A268388(n+1)]`
-/

namespace A080364.P4969337439002521547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P4969337439002521547

namespace A080364

/-- `∩[A247180(n+1), A268388(n+1)]` -/
def P4969337439002521547.Spec : Prop :=
  ∀ n, (P4969337439002521547.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P3194837615896421598

`∩[A080257(n+1), A247180(n+1)]`
-/

namespace A080364.P3194837615896421598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P3194837615896421598

namespace A080364

/-- `∩[A080257(n+1), A247180(n+1)]` -/
def P3194837615896421598.Spec : Prop :=
  ∀ n, (P3194837615896421598.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P11097383552645174672

`∩[A138592(n+1), A247180(n+1)]`
-/

namespace A080364.P11097383552645174672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P11097383552645174672

namespace A080364

/-- `∩[A138592(n+1), A247180(n+1)]` -/
def P11097383552645174672.Spec : Prop :=
  ∀ n, (P11097383552645174672.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P1550802140977221075

`∩[A247180(n+1), A343311(n+1)]`
-/

namespace A080364.P1550802140977221075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P1550802140977221075

namespace A080364

/-- `∩[A247180(n+1), A343311(n+1)]` -/
def P1550802140977221075.Spec : Prop :=
  ∀ n, (P1550802140977221075.a n : ℤ) = A080364 (n + 1)

end A080364

/-! ## A080364.P1428142839767354053

`∩[A056653(n+1), A247180(n+1)]`
-/

namespace A080364.P1428142839767354053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080364.P1428142839767354053

namespace A080364

/-- `∩[A056653(n+1), A247180(n+1)]` -/
def P1428142839767354053.Spec : Prop :=
  ∀ n, (P1428142839767354053.a n : ℤ) = A080364 (n + 1)

end A080364

/-!
# A080365: Composite numbers k whose smallest and largest prime factors are unitary prime factors.

The programs for A080365, the canonical program `A080365.P3506859288463638182` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080365 has offset 1).

The definition of A080365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080365.P5427687386980767741

`∩[A080364(n+1), A102750(n+1)]`
-/

namespace A080365.P5427687386980767741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080365.P5427687386980767741

namespace A080365

/-- `∩[A080364(n+1), A102750(n+1)]` -/
def P5427687386980767741.Spec : Prop :=
  ∀ n, (P5427687386980767741.a n : ℤ) = A080365 (n + 1)

end A080365

/-! ## A080365.P3506859288463638182

`∩[A080363(n+1), A080364(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080365

/-- `∩[A080363(n+1), A080364(n+1)]` -/
def P3506859288463638182.Spec : Prop :=
  ∀ n, (P3506859288463638182.a n : ℤ) = A080365 (n + 1)

theorem P3506859288463638182.correct : P3506859288463638182.Spec := by
  intro n
  simp only [A080365, Nat.add_sub_cancel]

end A080365

/-! ## A080365.P6944879059417212205

`record[A243074(A080364(n+1))]`
-/

namespace A080365.P6944879059417212205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A080364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080365.P6944879059417212205

namespace A080365

/-- `record[A243074(A080364(n+1))]` -/
def P6944879059417212205.Spec : Prop :=
  ∀ n, P6944879059417212205.a n = A080365 (n + 1)

end A080365

/-! ## A080365.P11479912808946593838

`record[A243074(eq[A067029(n+1)², A014963(n+1)]+1)]`
-/

namespace A080365.P11479912808946593838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080365.P11479912808946593838

namespace A080365

/-- `record[A243074(eq[A067029(n+1)², A014963(n+1)]+1)]` -/
def P11479912808946593838.Spec : Prop :=
  ∀ n, P11479912808946593838.a n = A080365 (n + 1)

end A080365

/-! ## A080365.P10157007264167709212

`record[A243074(eq[A087179(n+1)², A014963(n+1)]+1)]`
-/

namespace A080365.P10157007264167709212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080365.P10157007264167709212

namespace A080365

/-- `record[A243074(eq[A087179(n+1)², A014963(n+1)]+1)]` -/
def P10157007264167709212.Spec : Prop :=
  ∀ n, P10157007264167709212.a n = A080365 (n + 1)

end A080365

/-! ## A080365.P18148553047350761563

`record[A065883(A351295(n+1))]`
-/

namespace A080365.P18148553047350761563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A351295 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080365.P18148553047350761563

namespace A080365

/-- `record[A065883(A351295(n+1))]` -/
def P18148553047350761563.Spec : Prop :=
  ∀ n, P18148553047350761563.a n = A080365 (n + 1)

end A080365

/-! ## A080365.P1554259362430801296

`lt[A099375(A035444(n)), A286852(n)]`
-/

namespace A080365.P1554259362430801296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A035444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080365.P1554259362430801296

namespace A080365

/-- `lt[A099375(A035444(n)), A286852(n)]` -/
def P1554259362430801296.Spec : Prop :=
  ∀ n, (P1554259362430801296.a n : ℤ) = A080365 (n + 1)

end A080365

/-!
# A080366: Numbers k whose least and greatest prime divisors are non-unitary.

The programs for A080366, the canonical program `A080366.P3117607371416217370` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080366 has offset 1).

The definition of A080366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080366.P3117607371416217370

`filter[A070003(n+1), A319710(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080366

/-- `filter[A070003(n+1), A319710(#)]` -/
def P3117607371416217370.Spec : Prop :=
  ∀ n, P3117607371416217370.a n = A080366 (n + 1)

theorem P3117607371416217370.correct : P3117607371416217370.Spec := by
  intro n
  simp only [A080366, Nat.add_sub_cancel]

end A080366

/-! ## A080366.P9859883644515665035

`filter[A283050(n+1), A319988(#)]`
-/

namespace A080366.P9859883644515665035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A080366.P9859883644515665035

namespace A080366

/-- `filter[A283050(n+1), A319988(#)]` -/
def P9859883644515665035.Spec : Prop :=
  ∀ n, P9859883644515665035.a n = A080366 (n + 1)

end A080366

/-! ## A080366.P12880727175234133099

`∩[A070003(n+1), A283050(n+1)]`
-/

namespace A080366.P12880727175234133099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080366.P12880727175234133099

namespace A080366

/-- `∩[A070003(n+1), A283050(n+1)]` -/
def P12880727175234133099.Spec : Prop :=
  ∀ n, (P12880727175234133099.a n : ℤ) = A080366 (n + 1)

end A080366

/-! ## A080366.P14391071524733210116

`record[A322820(A283050(n+1))]`
-/

namespace A080366.P14391071524733210116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322820 (A283050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080366.P14391071524733210116

namespace A080366

/-- `record[A322820(A283050(n+1))]` -/
def P14391071524733210116.Spec : Prop :=
  ∀ n, P14391071524733210116.a n = A080366 (n + 1)

end A080366

/-! ## A080366.P2750944186679741358

`record[A001694(A295908(n+3))]`
-/

namespace A080366.P2750944186679741358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A295908 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080366.P2750944186679741358

namespace A080366

/-- `record[A001694(A295908(n+3))]` -/
def P2750944186679741358.Spec : Prop :=
  ∀ n, P2750944186679741358.a n = A080366 (n + 1)

end A080366

/-!
# A080367: Largest unitary prime divisor of n or a(n) = 0 if no such prime divisor exists.

The programs for A080367, the canonical program `A080367.P9237446414144074029` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080367 has offset 1).

The definition of A080367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080367.P1066651392501517019

`A064760(A055231(n+1))`
-/

namespace A080367.P1066651392501517019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (A055231 (n + 1)).toNat

end

end A080367.P1066651392501517019

namespace A080367

/-- `A064760(A055231(n+1))` -/
def P1066651392501517019.Spec : Prop :=
  ∀ n, P1066651392501517019.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P5631704287007110258

`∑{p}[A053585(A055231(n+1)), A053585(#)]`
-/

namespace A080367.P5631704287007110258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A055231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053585 p

end

end A080367.P5631704287007110258

namespace A080367

/-- `∑{p}[A053585(A055231(n+1)), A053585(#)]` -/
def P5631704287007110258.Spec : Prop :=
  ∀ n, P5631704287007110258.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P9237446414144074029

`A006530(A055231(n+1))%A091306(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080367

/-- `A006530(A055231(n+1))%A091306(n+1)` -/
def P9237446414144074029.Spec : Prop :=
  ∀ n, P9237446414144074029.a n = A080367 (n + 1)

theorem P9237446414144074029.correct : P9237446414144074029.Spec := by
  intro n
  simp only [A080367, Nat.add_sub_cancel]

end A080367

/-! ## A080367.P8281967364266953216

`A080368(A006530(A055231(n+1)²))`
-/

namespace A080367.P8281967364266953216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (A006530 (A055231 (n + 1) ^ 2).toNat).toNat

end

end A080367.P8281967364266953216

namespace A080367

/-- `A080368(A006530(A055231(n+1)²))` -/
def P8281967364266953216.Spec : Prop :=
  ∀ n, P8281967364266953216.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P8163701000949197290

`A048146(A006530(A055231(n+1))²)`
-/

namespace A080367.P8163701000949197290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A006530 (A055231 (n + 1)).toNat ^ 2).toNat

end

end A080367.P8163701000949197290

namespace A080367

/-- `A048146(A006530(A055231(n+1))²)` -/
def P8163701000949197290.Spec : Prop :=
  ∀ n, P8163701000949197290.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P5997499381692842127

`A318320(A006530(A055231(n+1))²)`
-/

namespace A080367.P5997499381692842127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (A006530 (A055231 (n + 1)).toNat ^ 2).toNat

end

end A080367.P5997499381692842127

namespace A080367

/-- `A318320(A006530(A055231(n+1))²)` -/
def P5997499381692842127.Spec : Prop :=
  ∀ n, P5997499381692842127.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P13954133401462761972

`A063956(A353694(n+1))`
-/

namespace A080367.P13954133401462761972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (A353694 (n + 1)).toNat

end

end A080367.P13954133401462761972

namespace A080367

/-- `A063956(A353694(n+1))` -/
def P13954133401462761972.Spec : Prop :=
  ∀ n, P13954133401462761972.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P9786711945941169514

`A069359(A006530(A055231(n+1))²)`
-/

namespace A080367.P9786711945941169514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A006530 (A055231 (n + 1)).toNat ^ 2).toNat

end

end A080367.P9786711945941169514

namespace A080367

/-- `A069359(A006530(A055231(n+1))²)` -/
def P9786711945941169514.Spec : Prop :=
  ∀ n, P9786711945941169514.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P15873310579860196980

`A392109(A360541(n+1))`
-/

namespace A080367.P15873310579860196980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (A360541 (n + 1)).toNat

end

end A080367.P15873310579860196980

namespace A080367

/-- `A392109(A360541(n+1))` -/
def P15873310579860196980.Spec : Prop :=
  ∀ n, P15873310579860196980.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P315790064137136164

`A392109(A365298(n+1))`
-/

namespace A080367.P315790064137136164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (A365298 (n + 1)).toNat

end

end A080367.P315790064137136164

namespace A080367

/-- `A392109(A365298(n+1))` -/
def P315790064137136164.Spec : Prop :=
  ∀ n, P315790064137136164.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P4423699234513424346

`A392109(A367932(n+1))`
-/

namespace A080367.P4423699234513424346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (A367932 (n + 1)).toNat

end

end A080367.P4423699234513424346

namespace A080367

/-- `A392109(A367932(n+1))` -/
def P4423699234513424346.Spec : Prop :=
  ∀ n, P4423699234513424346.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P1181301034522646888

`A392109(A055231(n+1)²)`
-/

namespace A080367.P1181301034522646888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (A055231 (n + 1) ^ 2).toNat

end

end A080367.P1181301034522646888

namespace A080367

/-- `A392109(A055231(n+1)²)` -/
def P1181301034522646888.Spec : Prop :=
  ∀ n, P1181301034522646888.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P3989156223561963930

`A081810(A055231(n+1)²)/2`
-/

namespace A080367.P3989156223561963930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081810 (A055231 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A080367.P3989156223561963930

namespace A080367

/-- `A081810(A055231(n+1)²)/2` -/
def P3989156223561963930.Spec : Prop :=
  ∀ n, P3989156223561963930.a n = (A080367 (n + 1) : ℚ)

end A080367

/-! ## A080367.P10813020560008062851

`A120007(A006530(A055231(n+1))²)`
-/

namespace A080367.P10813020560008062851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (A006530 (A055231 (n + 1)).toNat ^ 2).toNat

end

end A080367.P10813020560008062851

namespace A080367

/-- `A120007(A006530(A055231(n+1))²)` -/
def P10813020560008062851.Spec : Prop :=
  ∀ n, P10813020560008062851.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P15562310092530088091

`A276976(A300518(A007948(n+1))²)`
-/

namespace A080367.P15562310092530088091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (A300518 (A007948 (n + 1)).toNat ^ 2).toNat

end

end A080367.P15562310092530088091

namespace A080367

/-- `A276976(A300518(A007948(n+1))²)` -/
def P15562310092530088091.Spec : Prop :=
  ∀ n, P15562310092530088091.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P6526745779932691273

`A392109(A055231(n+1)*A055231(n+1))`
-/

namespace A080367.P6526745779932691273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392109 (A055231 (n + 1) * A055231 (n + 1)).toNat

end

end A080367.P6526745779932691273

namespace A080367

/-- `A392109(A055231(n+1)*A055231(n+1))` -/
def P6526745779932691273.Spec : Prop :=
  ∀ n, P6526745779932691273.a n = A080367 (n + 1)

end A080367

/-! ## A080367.P4020010799237309603

`A002034(A055231(n+1)²)-A002034(A055231(n+1))`
-/

namespace A080367.P4020010799237309603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A055231 (n + 1) ^ 2).toNat - A002034 (A055231 (n + 1)).toNat

end

end A080367.P4020010799237309603

namespace A080367

/-- `A002034(A055231(n+1)²)-A002034(A055231(n+1))` -/
def P4020010799237309603.Spec : Prop :=
  ∀ n, P4020010799237309603.a n = A080367 (n + 1)

end A080367

/-!
# A080368: a(n) is the least unitary prime divisor of n, or 0 if no such prime divisor exists.

The programs for A080368, there is no canonical definition to state claims against.
-/

/-! ## A080368.P16878260084525747612

`∑{p}[A277698(n+1), #]`
-/

namespace A080368.P16878260084525747612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080368.P16878260084525747612

/-! ## A080368.P10190226111921283342

`A081811(A055231(n+1))`
-/

namespace A080368.P10190226111921283342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081811 (A055231 (n + 1)).toNat

end

end A080368.P10190226111921283342

/-! ## A080368.P14233379146037137871

`A001414(A277698(n+1))`
-/

namespace A080368.P14233379146037137871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A277698 (n + 1)).toNat

end

end A080368.P14233379146037137871

/-! ## A080368.P9414537257478518892

`A199969(A277698(n+1)+1)`
-/

namespace A080368.P9414537257478518892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A277698 (n + 1) + 1).toNat

end

end A080368.P9414537257478518892

/-! ## A080368.P14157466849631215311

`A277698(n+1)-A112526(n+1)`
-/

namespace A080368.P14157466849631215311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (n + 1) - A112526 (n + 1)

end

end A080368.P14157466849631215311

/-! ## A080368.P2065937728173604841

`A067695(n+1)%A091306(n+1)`
-/

namespace A080368.P2065937728173604841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067695 (n + 1)) (A091306 (n + 1))

end

end A080368.P2065937728173604841

/-! ## A080368.P9446969829172601838

`A277698(n+1)%A091306(n+1)`
-/

namespace A080368.P9446969829172601838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277698 (n + 1)) (A091306 (n + 1))

end

end A080368.P9446969829172601838

/-! ## A080368.P10917705056408115112

`A344137(A020639((n+1)/A057521(n+1)))`
-/

namespace A080368.P10917705056408115112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344137 (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat).toNat

end

end A080368.P10917705056408115112

/-! ## A080368.P9738854169671397163

`A080367(2*A277698(n+1)-A277698(n+1))`
-/

namespace A080368.P9738854169671397163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (2 * A277698 (n + 1) - A277698 (n + 1)).toNat

end

end A080368.P9738854169671397163

/-! ## A080368.P15854421071800125473

`A277697(A064988(n+1))`
-/

namespace A080368.P15854421071800125473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A064988 (n + 1)).toNat

end

end A080368.P15854421071800125473

/-! ## A080368.P18400914246833799805

`A001221(A277698(n+1)²)*A277698(n+1)`
-/

namespace A080368.P18400914246833799805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277698 (n + 1) ^ 2).toNat * A277698 (n + 1)

end

end A080368.P18400914246833799805

/-! ## A080368.P232562855663570433

`A392108(A360541(n+1))`
-/

namespace A080368.P232562855663570433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (A360541 (n + 1)).toNat

end

end A080368.P232562855663570433

/-! ## A080368.P13449058022696282755

`A392108(A365298(n+1))`
-/

namespace A080368.P13449058022696282755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (A365298 (n + 1)).toNat

end

end A080368.P13449058022696282755

/-! ## A080368.P17905982276257764427

`A392108(A367932(n+1))`
-/

namespace A080368.P17905982276257764427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (A367932 (n + 1)).toNat

end

end A080368.P17905982276257764427

/-! ## A080368.P7246519225164124991

`A392108(A055231(n+1)²)`
-/

namespace A080368.P7246519225164124991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (A055231 (n + 1) ^ 2).toNat

end

end A080368.P7246519225164124991

/-! ## A080368.P7233151259474187378

`A392108(A055231(n+1)*A055231(n+1))`
-/

namespace A080368.P7233151259474187378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392108 (A055231 (n + 1) * A055231 (n + 1)).toNat

end

end A080368.P7233151259474187378

/-! ## A080368.P2697791696559393000

`A277698(n+1)-A069158(A277698(n+1)²)`
-/

namespace A080368.P2697791696559393000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (n + 1) - A069158 (A277698 (n + 1) ^ 2).toNat

end

end A080368.P2697791696559393000

/-! ## A080368.P8221950398440379511

`A277698(n+1)-A157657(A277698(n+1)²)`
-/

namespace A080368.P8221950398440379511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (n + 1) - A157657 (A277698 (n + 1) ^ 2).toNat

end

end A080368.P8221950398440379511

/-! ## A080368.P3583778075831276605

`A080367(A277698(n+1)²)+A080367(A277698(n+1))`
-/

namespace A080368.P3583778075831276605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080367 (A277698 (n + 1) ^ 2).toNat + A080367 (A277698 (n + 1)).toNat

end

end A080368.P3583778075831276605

/-!
# A080369: a(n) is the value of Vandermonde determinant for lexicographically earliest n-mark Golomb-ruler.

The programs for A080369, there is no canonical definition to state claims against.
-/

/-! ## A080369.P5441431014520342545

`∏[∏[A332820(n!)]]`
-/

namespace A080369.P5441431014520342545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332820 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080369.P5441431014520342545

/-!
# A080370: Number of distinct values among the differences prime(j)-prime(i), 1 <= i < j <= n.

The programs for A080370, there is no canonical definition to state claims against.
-/

/-! ## A080370.P17423638744958245733

`record[n*A308040(n+1)%2]`
-/

namespace A080370.P17423638744958245733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A308040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080370.P17423638744958245733

/-! ## A080370.P1559248878987272913

`eq[2, A308050(A308040(n+1))]`
-/

namespace A080370.P1559248878987272913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (A308040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080370.P1559248878987272913

/-! ## A080370.P8485962050638875797

`lt[A061358(A308040(n+1)²), 3]`
-/

namespace A080370.P8485962050638875797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A308040 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080370.P8485962050638875797

/-! ## A080370.P11156890767150210155

`lt[n, A020639(A308040(n+1)-2)]`
-/

namespace A080370.P11156890767150210155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A308040 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080370.P11156890767150210155

/-! ## A080370.P16337423729099274991

`∑[A000005(A075526(n))%A109139(n)]`
-/

namespace A080370.P16337423729099274991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A075526 n).toNat) (A109139 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080370.P16337423729099274991

/-!
# A080371: a(n) is the smallest x such that the quotient d(x+1)/d(x) equals n, where d = A000005.

The programs for A080371, there is no canonical definition to state claims against.
-/

/-! ## A080371.P8618553384477541075

`A086551(n+1)-1`
-/

namespace A080371.P8618553384477541075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086551 (n + 1) - 1

end

end A080371.P8618553384477541075

/-! ## A080371.P3818066876678659597

`A134824(n+2)+A086551(n+1)`
-/

namespace A080371.P3818066876678659597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A086551 (n + 1)

end

end A080371.P3818066876678659597

/-! ## A080371.P17827138959043628220

`xor(-A086551(n+1), -A262079(n+1))`
-/

namespace A080371.P17827138959043628220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A086551 (n + 1)) (-A262079 (n + 1))

end

end A080371.P17827138959043628220

/-! ## A080371.P11789892656572610803

`abs(A086551(n+1)+A057428(2*n+1))`
-/

namespace A080371.P11789892656572610803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086551 (n + 1) + A057428 (2 * n + 1)|

end

end A080371.P11789892656572610803

/-! ## A080371.P12554063120821354603

`A114592(A000040(n+1))+A086551(n+1)`
-/

namespace A080371.P12554063120821354603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A000040 (n + 1)).toNat + A086551 (n + 1)

end

end A080371.P12554063120821354603

/-!
# A080372: a(n) is the smallest x such that the quotient d(x)/d(x+1) equals n, where d = A000005.

The programs for A080372, there is no canonical definition to state claims against.
-/

/-! ## A080372.P9273913872826012055

`A000010(A340870(n+1))`
-/

namespace A080372.P9273913872826012055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A340870 (n + 1)).toNat

end

end A080372.P9273913872826012055

/-!
# A080373: a(n) is the smallest number k such that GCD of n values of prime(j)-1 for successive j values starting with k is greater than 2.

The programs for A080373, there is no canonical definition to state claims against.
-/

/-! ## A080373.P7781479958117484008

`A232465(A026620(n+3))`
-/

namespace A080373.P7781479958117484008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232465 (A026620 (n + 3)).toNat

end

end A080373.P7781479958117484008

/-!
# A080374: a(n)=lcm of first n consecutive prime differences.

The programs for A080374, the canonical program `A080374.P16756862821907867169` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080374 has offset 1).

The definition of A080374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080374.P16756862821907867169

`lcm(a(n-1), A001223(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080374

/-- `lcm(a(n-1), A001223(n+1))` -/
def P16756862821907867169.Spec : Prop :=
  ∀ n, (P16756862821907867169.a n : ℤ) = A080374 (n + 1)

theorem P16756862821907867169.correct : P16756862821907867169.Spec := by
  intro n
  simp only [A080374, Nat.add_sub_cancel]

end A080374

/-! ## A080374.P14199395660177188663

`A001223(n+1)*A083273(n+1)`
-/

namespace A080374.P14199395660177188663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A083273 (n + 1)

end

end A080374.P14199395660177188663

namespace A080374

/-- `A001223(n+1)*A083273(n+1)` -/
def P14199395660177188663.Spec : Prop :=
  ∀ n, P14199395660177188663.a n = A080374 (n + 1)

end A080374

/-! ## A080374.P5920685060505137021

`lcm(ceil(a(n-1)), Δ[A039915(n+1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A080374.P5920685060505137021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A080374.P5920685060505137021

namespace A080374

/-- `lcm(ceil(a(n-1)), Δ[A039915(n+1)])` -/
def P5920685060505137021.Spec : Prop :=
  ∀ n, (P5920685060505137021.a n : ℤ) = A080374 (n + 1)

end A080374

/-! ## A080374.P5505975798266382938

`lcm(a(n-1)*A087960(n), A075526(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A080374.P5505975798266382938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm ((a (n - 1) : ℤ) * A087960 n) (A075526 (n + 1))

end

end A080374.P5505975798266382938

namespace A080374

/-- `lcm(a(n-1)*A087960(n), A075526(n+1))` -/
def P5505975798266382938.Spec : Prop :=
  ∀ n, (P5505975798266382938.a n : ℤ) = A080374 (n + 1)

end A080374

/-! ## A080374.P10931216936106556659

`lcm(-a(n-1), Δ[A008578(n+2)])` with `a(0)=1`
-/

namespace A080374.P10931216936106556659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (n + 1) - f1 n)

end

end A080374.P10931216936106556659

namespace A080374

/-- `lcm(-a(n-1), Δ[A008578(n+2)])` -/
def P10931216936106556659.Spec : Prop :=
  ∀ n, (P10931216936106556659.a n : ℤ) = A080374 (n + 1)

end A080374

/-! ## A080374.P7201437506989671652

`lcm(round(a(n-1)), A262138(2*n+1))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A080374.P7201437506989671652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A262138 (2 * n + 1))

end

end A080374.P7201437506989671652

namespace A080374

/-- `lcm(round(a(n-1)), A262138(2*n+1))` -/
def P7201437506989671652.Spec : Prop :=
  ∀ n, (P7201437506989671652.a n : ℤ) = A080374 (n + 1)

end A080374

/-! ## A080374.P11555145871093611853

`lcm(a(n-1), A219606(A005408(n)))` with `a(0)=1`
-/

namespace A080374.P11555145871093611853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A219606 (A005408 n).toNat)

end

end A080374.P11555145871093611853

namespace A080374

/-- `lcm(a(n-1), A219606(A005408(n)))` -/
def P11555145871093611853.Spec : Prop :=
  ∀ n, (P11555145871093611853.a n : ℤ) = A080374 (n + 1)

end A080374

/-! ## A080374.P9922893798869450075

`lcm(-a(n-1), A134735(A103517(n)))` with `a(0)=1, a(1)=2`
-/

namespace A080374.P9922893798869450075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A134735 (A103517 n).toNat)

end

end A080374.P9922893798869450075

namespace A080374

/-- `lcm(-a(n-1), A134735(A103517(n)))` -/
def P9922893798869450075.Spec : Prop :=
  ∀ n, (P9922893798869450075.a n : ℤ) = A080374 (n + 1)

end A080374

/-! ## A080374.P8907461959127777986

`lcm(A008683(a(n-1))+a(n-1), A054541(n+2))` with `a(0)=1`
-/

namespace A080374.P8907461959127777986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A008683 (a (n - 1)) + (a (n - 1) : ℤ)) (A054541 (n + 2))

end

end A080374.P8907461959127777986

namespace A080374

/-- `lcm(A008683(a(n-1))+a(n-1), A054541(n+2))` -/
def P8907461959127777986.Spec : Prop :=
  ∀ n, (P8907461959127777986.a n : ℤ) = A080374 (n + 1)

end A080374

/-!
# A080375: Distinct values of A080374, where A080374(n) is the lcm of the first n consecutive prime differences.

The programs for A080375, there is no canonical definition to state claims against.
-/

/-! ## A080375.P4756667634707750420

`record[lcm(a(n-1), A001223(n+1))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=0, a(4)=1`
-/

namespace A080375.P4756667634707750420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 0, 1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A001223 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080375.P4756667634707750420

/-! ## A080375.P6612444988023053041

`record[A080374(A105020(n))]`
-/

namespace A080375.P6612444988023053041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080374 (A105020 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080375.P6612444988023053041

/-! ## A080375.P12944865335275823561

`record[A080374(A000010(n+1))]`
-/

namespace A080375.P12944865335275823561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080374 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080375.P12944865335275823561

/-! ## A080375.P4298065456905537789

`record[A080374(A006530(n+1))]`
-/

namespace A080375.P4298065456905537789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080374 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080375.P4298065456905537789

/-! ## A080375.P9676441915770358952

`record[A080374(A020639(n+1))]`
-/

namespace A080375.P9676441915770358952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080374 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080375.P9676441915770358952

/-!
# A080376: Numbers where A080374 increases.

The programs for A080376, there is no canonical definition to state claims against.
-/

/-! ## A080376.P15129726623071012670

`A038664(A080377(n+1)/2)`
-/

namespace A080376.P15129726623071012670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038664 (SequenceMachineLib.roundAway ((A080377 (n + 1) : ℚ) / 2)).toNat

end

end A080376.P15129726623071012670

/-! ## A080376.P6378000092727074057

`A066493(A080377(n+1))`
-/

namespace A080376.P6378000092727074057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (A080377 (n + 1)).toNat

end

end A080376.P6378000092727074057

/-!
# A080377: Prime gaps where A080374 increases.

The programs for A080377, there is no canonical definition to state claims against.
-/

/-! ## A080377.P16259893389175316552

`A000040(1+A080376(n+1))-A000040(A080376(n+1))`
-/

namespace A080377.P16259893389175316552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A080376 (n + 1)).toNat - A000040 (A080376 (n + 1)).toNat

end

end A080377.P16259893389175316552

/-! ## A080377.P13308562227077429007

`filter[A014320(n+2), A354924(#)]`
-/

namespace A080377.P13308562227077429007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A080377.P13308562227077429007

/-! ## A080377.P13713079370724791471

`filter[A058320(n), A354924(#)]`
-/

namespace A080377.P13713079370724791471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A080377.P13713079370724791471

/-! ## A080377.P9283222530599657966

`A001223(A080376(n+1))`
-/

namespace A080377.P9283222530599657966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A080376 (n + 1)).toNat

end

end A080377.P9283222530599657966

/-! ## A080377.P11210294171940342366

`A054541(A080376(n+1)+1)`
-/

namespace A080377.P11210294171940342366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A080376 (n + 1) + 1).toNat

end

end A080377.P11210294171940342366

/-!
# A080378: Residues mod 4 of the n-th difference between consecutive primes.

The programs for A080378, the canonical program `A080378.P10982395918754436157` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080378 has offset 1).

The definition of A080378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080378.P10982395918754436157

`A001223(n+1)%4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080378

/-- `A001223(n+1)%4` -/
def P10982395918754436157.Spec : Prop :=
  ∀ n, P10982395918754436157.a n = A080378 (n + 1)

theorem P10982395918754436157.correct : P10982395918754436157.Spec := by
  intro n
  simp only [A080378, Nat.add_sub_cancel]

end A080378

/-! ## A080378.P988469366446707187

`2-A103271(n+1)`
-/

namespace A080378.P988469366446707187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103271 (n + 1)

end

end A080378.P988469366446707187

namespace A080378

/-- `2-A103271(n+1)` -/
def P988469366446707187.Spec : Prop :=
  ∀ n, P988469366446707187.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P16214459241643667332

`A100374(n+1)%4`
-/

namespace A080378.P16214459241643667332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100374 (n + 1)) 4

end

end A080378.P16214459241643667332

namespace A080378

/-- `A100374(n+1)%4` -/
def P16214459241643667332.Spec : Prop :=
  ∀ n, P16214459241643667332.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P16299371214723572928

`A191472(n+1)%4`
-/

namespace A080378.P16299371214723572928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191472 (n + 1)) 4

end

end A080378.P16299371214723572928

namespace A080378

/-- `A191472(n+1)%4` -/
def P16299371214723572928.Spec : Prop :=
  ∀ n, P16299371214723572928.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P2494150868123191363

`C(2, A023520(n+2)²)`
-/

namespace A080378.P2494150868123191363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A023520 (n + 2) ^ 2).toNat

end

end A080378.P2494150868123191363

namespace A080378

/-- `C(2, A023520(n+2)²)` -/
def P2494150868123191363.Spec : Prop :=
  ∀ n, (P2494150868123191363.a n : ℤ) = A080378 (n + 1)

end A080378

/-! ## A080378.P15476922226090456384

`(A046933(n+1)+1)%4`
-/

namespace A080378.P15476922226090456384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046933 (n + 1) + 1) 4

end

end A080378.P15476922226090456384

namespace A080378

/-- `(A046933(n+1)+1)%4` -/
def P15476922226090456384.Spec : Prop :=
  ∀ n, P15476922226090456384.a n = A080378 (n + 1)

theorem P15476922226090456384.correct : P15476922226090456384.Spec := by
  intro n
  simp only [A080378, Nat.add_sub_cancel, A080378.P15476922226090456384.a, A080378.P10982395918754436157.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080378

/-! ## A080378.P10287581676722484293

`Δ[A001748(n+1)/3]%4`
-/

namespace A080378.P10287581676722484293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 4

end

end A080378.P10287581676722484293

namespace A080378

/-- `Δ[A001748(n+1)/3]%4` -/
def P10287581676722484293.Spec : Prop :=
  ∀ n, P10287581676722484293.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P1705451383812721943

`and(3, Δ[A001749(n+1)/4])`
-/

namespace A080378.P1705451383812721943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A080378.P1705451383812721943

namespace A080378

/-- `and(3, Δ[A001749(n+1)/4])` -/
def P1705451383812721943.Spec : Prop :=
  ∀ n, P1705451383812721943.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P17059605004122952389

`A007877(A001223(n+1))`
-/

namespace A080378.P17059605004122952389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A001223 (n + 1)).toNat

end

end A080378.P17059605004122952389

namespace A080378

/-- `A007877(A001223(n+1))` -/
def P17059605004122952389.Spec : Prop :=
  ∀ n, P17059605004122952389.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P10778206270046208674

`A000095(A100374(n+1))`
-/

namespace A080378.P10778206270046208674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A100374 (n + 1)).toNat

end

end A080378.P10778206270046208674

namespace A080378

/-- `A000095(A100374(n+1))` -/
def P10778206270046208674.Spec : Prop :=
  ∀ n, P10778206270046208674.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P17401300953644166237

`A050606(A074927(n+1))`
-/

namespace A080378.P17401300953644166237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 (A074927 (n + 1)).toNat

end

end A080378.P17401300953644166237

namespace A080378

/-- `A050606(A074927(n+1))` -/
def P17401300953644166237.Spec : Prop :=
  ∀ n, P17401300953644166237.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P5283617162780555211

`A105198(A076821(n+1))`
-/

namespace A080378.P5283617162780555211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105198 (A076821 (n + 1)).toNat

end

end A080378.P5283617162780555211

namespace A080378

/-- `A105198(A076821(n+1))` -/
def P5283617162780555211.Spec : Prop :=
  ∀ n, P5283617162780555211.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P16154043336918260084

`A007877(A191472(n+1))`
-/

namespace A080378.P16154043336918260084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A191472 (n + 1)).toNat

end

end A080378.P16154043336918260084

namespace A080378

/-- `A007877(A191472(n+1))` -/
def P16154043336918260084.Spec : Prop :=
  ∀ n, P16154043336918260084.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P3045830707181337806

`A098178(A191472(n+1)+2)`
-/

namespace A080378.P3045830707181337806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 (A191472 (n + 1) + 2).toNat

end

end A080378.P3045830707181337806

namespace A080378

/-- `A098178(A191472(n+1)+2)` -/
def P3045830707181337806.Spec : Prop :=
  ∀ n, P3045830707181337806.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P10218370113761719300

`2-A091085(A046933(n+1))`
-/

namespace A080378.P10218370113761719300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A091085 (A046933 (n + 1)).toNat

end

end A080378.P10218370113761719300

namespace A080378

/-- `2-A091085(A046933(n+1))` -/
def P10218370113761719300.Spec : Prop :=
  ∀ n, P10218370113761719300.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P8076051686670095677

`2-A130706(A237881(n+1))`
-/

namespace A080378.P8076051686670095677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130706 (A237881 (n + 1)).toNat

end

end A080378.P8076051686670095677

namespace A080378

/-- `2-A130706(A237881(n+1))` -/
def P8076051686670095677.Spec : Prop :=
  ∀ n, P8076051686670095677.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P17571766503058254647

`A129701(n+1)%A040002(n)`
-/

namespace A080378.P17571766503058254647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129701 (n + 1)) (A040002 n)

end

end A080378.P17571766503058254647

namespace A080378

/-- `A129701(n+1)%A040002(n)` -/
def P17571766503058254647.Spec : Prop :=
  ∀ n, P17571766503058254647.a n = A080378 (n + 1)

end A080378

/-! ## A080378.P16175981852986184989

`A393202(n+1)%A040002(n)`
-/

namespace A080378.P16175981852986184989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393202 (n + 1)) (A040002 n)

end

end A080378.P16175981852986184989

namespace A080378

/-- `A393202(n+1)%A040002(n)` -/
def P16175981852986184989.Spec : Prop :=
  ∀ n, P16175981852986184989.a n = A080378 (n + 1)

end A080378

/-!
# A080379: Least n such that n consecutive values in A080378 equals 2; i.e., exactly n differences between consecutive primes give residues 2 when divided by 4.

The programs for A080379, there is no canonical definition to state claims against.
-/

/-! ## A080379.P10349145198864690581

`A000720(A247384(n+2))`
-/

namespace A080379.P10349145198864690581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A247384 (n + 2)).toNat

end

end A080379.P10349145198864690581

/-! ## A080379.P6855028533557528492

`A061395(or(1, A247384(n+2)))`
-/

namespace A080379.P6855028533557528492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A247384 (n + 2))).toNat

end

end A080379.P6855028533557528492

/-! ## A080379.P7613975225576179688

`∑{d}[A247384(n+2), A061395(#)]`
-/

namespace A080379.P7613975225576179688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A080379.P7613975225576179688

/-!
# A080380: Least n such that n consecutive values in A080378 equal 0; i.e., exactly n differences between consecutive primes are divisible by 4.

The programs for A080380, there is no canonical definition to state claims against.
-/

/-! ## A080380.P13941434118225228896

`A000720(A259360(n+1))`
-/

namespace A080380.P13941434118225228896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A259360 (n + 1)).toNat

end

end A080380.P13941434118225228896

/-! ## A080380.P9373588699523675252

`A061395(2*A259360(n+1))`
-/

namespace A080380.P9373588699523675252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A259360 (n + 1)).toNat

end

end A080380.P9373588699523675252

/-!
# A080381: Triangle read by rows: gcd(binomial(n,floor(n/2)), binomial(n,i)), i=0..n; greatest common divisor of binomial coefficients and corresponding central binomial coefficient.

The programs for A080381, the canonical program `A080381.P4646924568806409533` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080381 has offset 0).

The definition of A080381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080381.P1704823475179936103

`gcd(A001405(∑[char[∑[n+1]]]), A130595(n))`
-/

namespace A080381.P1704823475179936103
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (∑ j ∈ Finset.range (n + 1), f1 j)) (A130595 n)

end

end A080381.P1704823475179936103

namespace A080381

/-- `gcd(A001405(∑[char[∑[n+1]]]), A130595(n))` -/
def P1704823475179936103.Spec : Prop :=
  ∀ n, (P1704823475179936103.a n : ℤ) = A080381 n

end A080381

/-! ## A080381.P4646924568806409533

`gcd(A001405(A003056(n)), A007318(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080381

/-- `gcd(A001405(A003056(n)), A007318(n))` -/
def P4646924568806409533.Spec : Prop :=
  ∀ n, (P4646924568806409533.a n : ℤ) = A080381 n

theorem P4646924568806409533.correct : P4646924568806409533.Spec := by
  intro n
  simp only [A080381]

end A080381

/-! ## A080381.P8663036460613047671

`gcd(A126930(A003056(n)), A130595(n))`
-/

namespace A080381.P8663036460613047671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126930 (A003056 n).toNat) (A130595 n)

end

end A080381.P8663036460613047671

namespace A080381

/-- `gcd(A126930(A003056(n)), A130595(n))` -/
def P8663036460613047671.Spec : Prop :=
  ∀ n, (P8663036460613047671.a n : ℤ) = A080381 n

end A080381

/-! ## A080381.P16354395511655087190

`gcd(A001405(A318274(n)), A206735(n))`
-/

namespace A080381.P16354395511655087190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (A318274 n).toNat) (A206735 n)

end

end A080381.P16354395511655087190

namespace A080381

/-- `gcd(A001405(A318274(n)), A206735(n))` -/
def P16354395511655087190.Spec : Prop :=
  ∀ n, (P16354395511655087190.a n : ℤ) = A080381 n

end A080381

/-! ## A080381.P5455539707184124296

`A001405(A003056(n))/A080382(n+1)`
-/

namespace A080381.P5455539707184124296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (A003056 n).toNat : ℚ) / (A080382 (n + 1) : ℚ)

end

end A080381.P5455539707184124296

namespace A080381

/-- `A001405(A003056(n))/A080382(n+1)` -/
def P5455539707184124296.Spec : Prop :=
  ∀ n, P5455539707184124296.a n = (A080381 n : ℚ)

end A080381

/-! ## A080381.P12151998134106670297

`A080382(A057944(n)+1)/A080382(n+1)`
-/

namespace A080381.P12151998134106670297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080382 (A057944 n + 1).toNat : ℚ) / (A080382 (n + 1) : ℚ)

end

end A080381.P12151998134106670297

namespace A080381

/-- `A080382(A057944(n)+1)/A080382(n+1)` -/
def P12151998134106670297.Spec : Prop :=
  ∀ n, P12151998134106670297.a n = (A080381 n : ℚ)

end A080381

/-! ## A080381.P2545007338935237148

`gcd(A054336(A057944(n)), A117440(n))`
-/

namespace A080381.P2545007338935237148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054336 (A057944 n).toNat) (A117440 n)

end

end A080381.P2545007338935237148

namespace A080381

/-- `gcd(A054336(A057944(n)), A117440(n))` -/
def P2545007338935237148.Spec : Prop :=
  ∀ n, (P2545007338935237148.a n : ℤ) = A080381 n

end A080381

/-! ## A080381.P14098857978138133936

`A054336(A057944(n))/A080382(n+1)`
-/

namespace A080381.P14098857978138133936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 (A057944 n).toNat : ℚ) / (A080382 (n + 1) : ℚ)

end

end A080381.P14098857978138133936

namespace A080381

/-- `A054336(A057944(n))/A080382(n+1)` -/
def P14098857978138133936.Spec : Prop :=
  ∀ n, P14098857978138133936.a n = (A080381 n : ℚ)

end A080381

/-!
# A080382: Triangle read by rows: T(n,k) = C(n,floor(n/2))/gcd(C(n,floor(n/2)),C(n,k)), k=0..n; central binomial coefficient is divided by greatest common divisor of binomial coefficients and corresponding central binomial coefficient.

The programs for A080382, the canonical program `A080382.P2390048831733105664` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080382 has offset 1).

The definition of A080382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080382.P2390048831733105664

`C(row(n), floor(row(n)/2))/gcd(C(row(n), floor(row(n)/2)), C(row(n), col(n)))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080382

/-- `C(row(n), floor(row(n)/2))/gcd(C(row(n), floor(row(n)/2)), C(row(n), col(n)))` -/
def P2390048831733105664.Spec : Prop :=
  ∀ n, P2390048831733105664.a n = (A080382 (n + 1) : ℚ)

end A080382

/-! ## A080382.P15278126479239463729

`A210736(∑[char[∑[n]]])/A080381(n)`
-/

namespace A080382.P15278126479239463729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A080381 n : ℚ)

end

end A080382.P15278126479239463729

namespace A080382

/-- `A210736(∑[char[∑[n]]])/A080381(n)` -/
def P15278126479239463729.Spec : Prop :=
  ∀ n, P15278126479239463729.a n = (A080382 (n + 1) : ℚ)

end A080382

/-! ## A080382.P17302973736665155103

`A001405(A003056(n))/A080381(n)`
-/

namespace A080382.P17302973736665155103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (A003056 n).toNat : ℚ) / (A080381 n : ℚ)

end

end A080382.P17302973736665155103

namespace A080382

/-- `A001405(A003056(n))/A080381(n)` -/
def P17302973736665155103.Spec : Prop :=
  ∀ n, P17302973736665155103.a n = (A080382 (n + 1) : ℚ)

end A080382

/-! ## A080382.P13702770848087483465

`A054336(A057944(n))/A080381(n)`
-/

namespace A080382.P13702770848087483465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 (A057944 n).toNat : ℚ) / (A080381 n : ℚ)

end

end A080382.P13702770848087483465

namespace A080382

/-- `A054336(A057944(n))/A080381(n)` -/
def P13702770848087483465.Spec : Prop :=
  ∀ n, P13702770848087483465.a n = (A080382 (n + 1) : ℚ)

end A080382

/-! ## A080382.P17460557654892896914

`A054336(A057944(n))/∏{p}[A129455(n), #]`
-/

namespace A080382.P17460557654892896914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129455 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054336 (A057944 n).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A080382.P17460557654892896914

namespace A080382

/-- `A054336(A057944(n))/∏{p}[A129455(n), #]` -/
def P17460557654892896914.Spec : Prop :=
  ∀ n, P17460557654892896914.a n = (A080382 (n + 1) : ℚ)

end A080382

/-!
# A080383: Number of j (0 <= j <= n) such that the central binomial coefficient C(n,floor(n/2)) = A001405(n) is divisible by C(n,j).

The programs for A080383, there is no canonical definition to state claims against.
-/

/-! ## A080383.P9698154168286576322

`A005811(A282120(n+1)+2)`
-/

namespace A080383.P9698154168286576322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A282120 (n + 1) + 2).toNat

end

end A080383.P9698154168286576322

/-! ## A080383.P2985607003190694186

`A357137(2*n)+A043276(A281520(n))`
-/

namespace A080383.P2985607003190694186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (2 * n) + A043276 (A281520 n).toNat

end

end A080383.P2985607003190694186

/-!
# A080384: Numbers k such that there are exactly 6 numbers j for which binomial(k, floor(k/2)) / binomial(k,j) is an integer, i.e., A080383(k) = 6.

The programs for A080384, there is no canonical definition to state claims against.
-/

/-! ## A080384.P7950980561034638262

`eq[6, A080383(n)]`
-/

namespace A080384.P7950980561034638262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080384.P7950980561034638262

/-! ## A080384.P8137095551610927758

`lt[1, A119537(A080383(n)+1)]`
-/

namespace A080384.P8137095551610927758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119537 (A080383 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080384.P8137095551610927758

/-! ## A080384.P8874051065148566280

`lt[A000002(n+1), A074298(A080383(n))]`
-/

namespace A080384.P8874051065148566280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080384.P8874051065148566280

/-! ## A080384.P12462865987098495951

`lt[A053214(A080383(n)), A000035(n)]`
-/

namespace A080384.P12462865987098495951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A080383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080384.P12462865987098495951

/-! ## A080384.P13197445075509171349

`lt[A000034(n), A074298(A080383(n))]`
-/

namespace A080384.P13197445075509171349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080384.P13197445075509171349

/-! ## A080384.P4883323488569486566

`lt[A054348(n), A074298(A080383(n))]`
-/

namespace A080384.P4883323488569486566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080384.P4883323488569486566

/-! ## A080384.P17359205988976001438

`lt[A049705(n+1), A074298(A080383(n))]`
-/

namespace A080384.P17359205988976001438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080384.P17359205988976001438

/-! ## A080384.P9117739827083885162

`lt[A074272(A080383(n)+2), A057428(n)]`
-/

namespace A080384.P9117739827083885162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074272 (A080383 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080384.P9117739827083885162

/-! ## A080384.P17411579924351821456

`2*record[A103634(n+2)]+3`
-/

namespace A080384.P17411579924351821456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A080384.P17411579924351821456

/-! ## A080384.P3942203205469855711

`A020735(record[A103634(n+2)])`
-/

namespace A080384.P3942203205469855711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080384.P3942203205469855711

/-!
# A080385: Numbers k such that there are exactly 7 numbers j for which binomial(k, floor(k/2)) / binomial(k,j) is an integer, i.e., A080383(k) = 7.

The programs for A080385, there is no canonical definition to state claims against.
-/

/-! ## A080385.P12674759195959371903

`eq[7, A080383(n)]`
-/

namespace A080385.P12674759195959371903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080385.P12674759195959371903

/-! ## A080385.P5072690973004557726

`lt[A106802(n), A119537(A080383(n))]`
-/

namespace A080385.P5072690973004557726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119537 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080385.P5072690973004557726

/-! ## A080385.P2770329781924676273

`lt[A006338(n+1), A119537(A080383(n))]`
-/

namespace A080385.P2770329781924676273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119537 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080385.P2770329781924676273

/-! ## A080385.P2881308809188171948

`lt[A038712(n+1), A119537(A080383(n))]`
-/

namespace A080385.P2881308809188171948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119537 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080385.P2881308809188171948

/-! ## A080385.P2329603587572410331

`∩[A067348(n+1), A259241(n+1)]`
-/

namespace A080385.P2329603587572410331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080385.P2329603587572410331

/-!
# A080386: Numbers k such that there are exactly 8 numbers j for which binomial(k, floor(k/2)) / binomial(k,j) is an integer, i.e., A080383(k) = 8.

The programs for A080386, there is no canonical definition to state claims against.
-/

/-! ## A080386.P17733247712339584174

`eq[8, A080383(n)]`
-/

namespace A080386.P17733247712339584174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080386.P17733247712339584174

/-! ## A080386.P1700067289274782019

`lt[4, A249093(A080383(n)+2)]`
-/

namespace A080386.P1700067289274782019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A080383 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080386.P1700067289274782019

/-! ## A080386.P16593428478192162050

`lt[A000034(n), A042970(A080383(n))]`
-/

namespace A080386.P16593428478192162050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080386.P16593428478192162050

/-! ## A080386.P231645161088576696

`lt[A010684(n), A042970(A080383(n))]`
-/

namespace A080386.P231645161088576696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080386.P231645161088576696

/-! ## A080386.P18032221587547355477

`lt[A074272(A080383(n)), A057428(n)]`
-/

namespace A080386.P18032221587547355477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074272 (A080383 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080386.P18032221587547355477

/-!
# A080387: Numbers k such that there are exactly 10 numbers j for which binomial(k, floor(k/2)) / binomial(k,j) is an integer, i.e., A080383(k) = 10.

The programs for A080387, there is no canonical definition to state claims against.
-/

/-! ## A080387.P18258341665046790107

`eq[10, A080383(n)]`
-/

namespace A080387.P18258341665046790107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080387.P18258341665046790107

/-! ## A080387.P13618664144425553660

`A048618(n+3)+A010684(2*A000045(n))`
-/

namespace A080387.P13618664144425553660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 3) + A010684 (2 * A000045 n).toNat

end

end A080387.P13618664144425553660

/-! ## A080387.P15644931415535711700

`A048618(n+3)+A003415(A286415(3*n+5))`
-/

namespace A080387.P15644931415535711700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 3) + A003415 (A286415 (3 * n + 5)).toNat

end

end A080387.P15644931415535711700

/-! ## A080387.P1011994221226948032

`lt[A294155(n+1), A059593(A080383(n))]`
-/

namespace A080387.P1011994221226948032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059593 (A080383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080387.P1011994221226948032

/-! ## A080387.P17421614481185139171

`A152271(A182027(n))+A048618(n+3)`
-/

namespace A080387.P17421614481185139171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A182027 n).toNat + A048618 (n + 3)

end

end A080387.P17421614481185139171

/-!
# A080389: Numbers n such that gcd( n+1, binomial(n, floor(n/2)) ) = 1.

The programs for A080389, the canonical program `A080389.P12053927034418777045` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080389 has offset 1).

The definition of A080389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080389.P18421150849128464561

`eq[1, A060764(gcd(n+2, A090192(n)))]+1`
-/

namespace A080389.P18421150849128464561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (Int.gcd (n + 2 : ℤ) (A090192 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080389.P18421150849128464561

namespace A080389

/-- `eq[1, A060764(gcd(n+2, A090192(n)))]+1` -/
def P18421150849128464561.Spec : Prop :=
  ∀ n, (P18421150849128464561.a n : ℤ) = A080389 (n + 1)

end A080389

/-! ## A080389.P12053927034418777045

`eq[1, gcd(A037952(n), A131738(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080389

/-- `eq[1, gcd(A037952(n), A131738(n))]` -/
def P12053927034418777045.Spec : Prop :=
  ∀ n, (P12053927034418777045.a n : ℤ) = A080389 (n + 1)

theorem P12053927034418777045.correct : P12053927034418777045.Spec := by
  intro n
  simp only [A080389, Nat.add_sub_cancel]

end A080389

/-! ## A080389.P389609387891652553

`eq[gcd(n+1, A001405(n)), A057427(n)]`
-/

namespace A080389.P389609387891652553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001405 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080389.P389609387891652553

namespace A080389

/-- `eq[gcd(n+1, A001405(n)), A057427(n)]` -/
def P389609387891652553.Spec : Prop :=
  ∀ n, (P389609387891652553.a n : ℤ) = A080389 (n + 1)

end A080389

/-! ## A080389.P5310880680066866653

`eq[1, A210840(A028235(n+1))]`
-/

namespace A080389.P5310880680066866653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210840 (A028235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080389.P5310880680066866653

namespace A080389

/-- `eq[1, A210840(A028235(n+1))]` -/
def P5310880680066866653.Spec : Prop :=
  ∀ n, (P5310880680066866653.a n : ℤ) = A080389 (n + 1)

end A080389

/-!
# A080391: Number of integers among the following n+1 quotients: A001405(n)/A001405(k), k=0,..,n. Number of values k for which the n-th central binomial coefficient is divisible by the k-th central binomial coefficient for 0<=k=n.

The programs for A080391, there is no canonical definition to state claims against.
-/

/-! ## A080391.P9053267215905801613

`A000120(xor(A113225(n), A115876(n)))`
-/

namespace A080391.P9053267215905801613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A113225 n) (A115876 n)).toNat

end

end A080391.P9053267215905801613

/-! ## A080391.P16734313285134773205

`A254044(A090719(n+1)+A000129(n))`
-/

namespace A080391.P16734313285134773205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (A090719 (n + 1) + A000129 n).toNat

end

end A080391.P16734313285134773205

/-! ## A080391.P8363362247542598394

`A062153(A101624(n)*A206906(n+1))`
-/

namespace A080391.P8363362247542598394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A101624 n * A206906 (n + 1)).toNat

end

end A080391.P8363362247542598394

/-! ## A080391.P4806314252671398858

`A276166(xor(A000129(n), A188132(n+1)))`
-/

namespace A080391.P4806314252671398858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276166 (Int.xor (A000129 n) (A188132 (n + 1))).toNat

end

end A080391.P4806314252671398858

/-! ## A080391.P10291568150252129442

`A178065(A053686(n+1)-A272084(n+1))`
-/

namespace A080391.P10291568150252129442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178065 (A053686 (n + 1) - A272084 (n + 1)).toNat

end

end A080391.P10291568150252129442

/-!
# A080394: Numbers k such that binomial(k, floor(k/2)) is divisible by k^2.

The programs for A080394, the canonical program `A080394.P11661718225289511357` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080394 has offset 1).

The definition of A080394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080394.P11661718225289511357

`eq[n², A181861(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080394

/-- `eq[n², A181861(n)]` -/
def P11661718225289511357.Spec : Prop :=
  ∀ n, (P11661718225289511357.a n : ℤ) = A080394 (n + 1)

theorem P11661718225289511357.correct : P11661718225289511357.Spec := by
  intro n
  simp only [A080394, Nat.add_sub_cancel]

end A080394

/-!
# A080395: Even numbers k such that the central binomial coefficient A000984(k, k/2) is divisible by k^2.

The programs for A080395, there is no canonical definition to state claims against.
-/

/-! ## A080395.P18101753355251415024

`Δ[A004273(∑[A121943(n+1)])]`
-/

namespace A080395.P18101753355251415024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121943 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080395.P18101753355251415024

/-!
# A080396: Largest squarefree numbers dividing the binomial coefficients C(n,k) read by row, 0<=k<=n. Squarefree kernel of Pascal triangle.

The programs for A080396, the canonical program `A080396.P13684053214751030838` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080396 has offset 0).

The definition of A080396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080396.P13684053214751030838

`A007947(A007318(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080396

/-- `A007947(A007318(n))` -/
def P13684053214751030838.Spec : Prop :=
  ∀ n, P13684053214751030838.a n = A080396 n

theorem P13684053214751030838.correct : P13684053214751030838.Spec := by
  intro n
  simp only [A080396]

end A080396

/-! ## A080396.P16143343280667679558

`gcd(A008459(n), A048692(n+1))`
-/

namespace A080396.P16143343280667679558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008459 n) (A048692 (n + 1))

end

end A080396.P16143343280667679558

namespace A080396

/-- `gcd(A008459(n), A048692(n+1))` -/
def P16143343280667679558.Spec : Prop :=
  ∀ n, (P16143343280667679558.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P1099452078369847935

`gcd(A048692(n+2), A108086(n))`
-/

namespace A080396.P1099452078369847935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048692 (n + 2)) (A108086 n)

end

end A080396.P1099452078369847935

namespace A080396

/-- `gcd(A048692(n+2), A108086(n))` -/
def P1099452078369847935.Spec : Prop :=
  ∀ n, (P1099452078369847935.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P16605283385644881136

`gcd(A007318(n), A300951(n))`
-/

namespace A080396.P16605283385644881136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 n) (A300951 n)

end

end A080396.P16605283385644881136

namespace A080396

/-- `gcd(A007318(n), A300951(n))` -/
def P16605283385644881136.Spec : Prop :=
  ∀ n, (P16605283385644881136.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P1412310355225580733

`gcd(A219207(n), A288813(n+1))`
-/

namespace A080396.P1412310355225580733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219207 n) (A288813 (n + 1))

end

end A080396.P1412310355225580733

namespace A080396

/-- `gcd(A219207(n), A288813(n+1))` -/
def P1412310355225580733.Spec : Prop :=
  ∀ n, (P1412310355225580733.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P9075898723932011527

`∏{p}[A108086(n), #]`
-/

namespace A080396.P9075898723932011527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P9075898723932011527

namespace A080396

/-- `∏{p}[A108086(n), #]` -/
def P9075898723932011527.Spec : Prop :=
  ∀ n, (P9075898723932011527.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P15776670610640735179

`∏{p}[A117440(n), #]`
-/

namespace A080396.P15776670610640735179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P15776670610640735179

namespace A080396

/-- `∏{p}[A117440(n), #]` -/
def P15776670610640735179.Spec : Prop :=
  ∀ n, (P15776670610640735179.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P11141356597174809925

`∏{p}[A130595(n), #]`
-/

namespace A080396.P11141356597174809925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P11141356597174809925

namespace A080396

/-- `∏{p}[A130595(n), #]` -/
def P11141356597174809925.Spec : Prop :=
  ∀ n, (P11141356597174809925.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P12106685406000197719

`∏{p}[A206735(n), #]`
-/

namespace A080396.P12106685406000197719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P12106685406000197719

namespace A080396

/-- `∏{p}[A206735(n), #]` -/
def P12106685406000197719.Spec : Prop :=
  ∀ n, (P12106685406000197719.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P17004642328982812746

`∏{p}[sqrt(A008459(n)), #]`
-/

namespace A080396.P17004642328982812746
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080396.P17004642328982812746

namespace A080396

/-- `∏{p}[sqrt(A008459(n)), #]` -/
def P17004642328982812746.Spec : Prop :=
  ∀ n, (P17004642328982812746.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P7182675006863452485

`∏{p}[A014473(n)+1, #]`
-/

namespace A080396.P7182675006863452485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P7182675006863452485

namespace A080396

/-- `∏{p}[A014473(n)+1, #]` -/
def P7182675006863452485.Spec : Prop :=
  ∀ n, (P7182675006863452485.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P1868327451033280098

`∏{p}[A154926(n+1), #]`
-/

namespace A080396.P1868327451033280098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P1868327451033280098

namespace A080396

/-- `∏{p}[A154926(n+1), #]` -/
def P1868327451033280098.Spec : Prop :=
  ∀ n, (P1868327451033280098.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P16360295345586533575

`∏{p}[A198321(n+1), #]`
-/

namespace A080396.P16360295345586533575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P16360295345586533575

namespace A080396

/-- `∏{p}[A198321(n+1), #]` -/
def P16360295345586533575.Spec : Prop :=
  ∀ n, (P16360295345586533575.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P15154467603023252426

`∏{p}[2-A173740(n), #]`
-/

namespace A080396.P15154467603023252426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A173740 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P15154467603023252426

namespace A080396

/-- `∏{p}[2-A173740(n), #]` -/
def P15154467603023252426.Spec : Prop :=
  ∀ n, (P15154467603023252426.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P17741907525959179831

`∏{p}[A152905(2*n), #]`
-/

namespace A080396.P17741907525959179831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P17741907525959179831

namespace A080396

/-- `∏{p}[A152905(2*n), #]` -/
def P17741907525959179831.Spec : Prop :=
  ∀ n, (P17741907525959179831.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P16972530940878600891

`∏{p}[A028326(n)/2, #]`
-/

namespace A080396.P16972530940878600891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080396.P16972530940878600891

namespace A080396

/-- `∏{p}[A028326(n)/2, #]` -/
def P16972530940878600891.Spec : Prop :=
  ∀ n, (P16972530940878600891.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P15909139171616514906

`∏{p}[A135225(comp[∑[n]]), #]`
-/

namespace A080396.P15909139171616514906
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P15909139171616514906

namespace A080396

/-- `∏{p}[A135225(comp[∑[n]]), #]` -/
def P15909139171616514906.Spec : Prop :=
  ∀ n, (P15909139171616514906.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P9164851935450541384

`∏{p}[A193554(comp[∑[n]]), #]`
-/

namespace A080396.P9164851935450541384
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P9164851935450541384

namespace A080396

/-- `∏{p}[A193554(comp[∑[n]]), #]` -/
def P9164851935450541384.Spec : Prop :=
  ∀ n, (P9164851935450541384.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P5887534506457069879

`∏{p}[floor(A134059(n)/3), #]`
-/

namespace A080396.P5887534506457069879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134059 n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P5887534506457069879

namespace A080396

/-- `∏{p}[floor(A134059(n)/3), #]` -/
def P5887534506457069879.Spec : Prop :=
  ∀ n, (P5887534506457069879.a n : ℤ) = A080396 n

end A080396

/-! ## A080396.P718305601876436409

`∏{p}[ceil(A134060(n)/3), #]`
-/

namespace A080396.P718305601876436409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080396.P718305601876436409

namespace A080396

/-- `∏{p}[ceil(A134060(n)/3), #]` -/
def P718305601876436409.Spec : Prop :=
  ∀ n, (P718305601876436409.a n : ℤ) = A080396 n

end A080396

/-!
# A080397: Largest squarefree number dividing central binomial coefficient A000984(n).

The programs for A080397, the canonical program `A080397.P6836437732879293385` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080397 has offset 0).

The definition of A080397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080397.P6836437732879293385

`A007947(A000984(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080397

/-- `A007947(A000984(n))` -/
def P6836437732879293385.Spec : Prop :=
  ∀ n, P6836437732879293385.a n = A080397 n

theorem P6836437732879293385.correct : P6836437732879293385.Spec := by
  intro n
  simp only [A080397]

end A080397

/-! ## A080397.P916051209227743937

`A163641(2*n)`
-/

namespace A080397.P916051209227743937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163641 (2 * n)

end

end A080397.P916051209227743937

namespace A080397

/-- `A163641(2*n)` -/
def P916051209227743937.Spec : Prop :=
  ∀ n, P916051209227743937.a n = A080397 n

end A080397

/-! ## A080397.P3114600567798275889

`A048633(floor(acot(n))+2*n)`
-/

namespace A080397.P3114600567798275889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048633 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A080397.P3114600567798275889

namespace A080397

/-- `A048633(floor(acot(n))+2*n)` -/
def P3114600567798275889.Spec : Prop :=
  ∀ n, P3114600567798275889.a n = A080397 n

end A080397

/-! ## A080397.P5184899057692312917

`A048633(round(1/acot(n))+n)`
-/

namespace A080397.P5184899057692312917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048633 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A080397.P5184899057692312917

namespace A080397

/-- `A048633(round(1/acot(n))+n)` -/
def P5184899057692312917.Spec : Prop :=
  ∀ n, P5184899057692312917.a n = A080397 n

end A080397

/-! ## A080397.P14204559060209841807

`A048633(floor(acot(n)+n)+n)`
-/

namespace A080397.P14204559060209841807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048633 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A080397.P14204559060209841807

namespace A080397

/-- `A048633(floor(acot(n)+n)+n)` -/
def P14204559060209841807.Spec : Prop :=
  ∀ n, P14204559060209841807.a n = A080397 n

end A080397

/-! ## A080397.P4202359580465049770

`A048633(A004277(n))`
-/

namespace A080397.P4202359580465049770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048633 (A004277 n).toNat

end

end A080397.P4202359580465049770

namespace A080397

/-- `A048633(A004277(n))` -/
def P4202359580465049770.Spec : Prop :=
  ∀ n, P4202359580465049770.a n = A080397 n

end A080397

/-! ## A080397.P6089219824756238088

`A048633(A004275(n+1))`
-/

namespace A080397.P6089219824756238088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048633 (A004275 (n + 1)).toNat

end

end A080397.P6089219824756238088

namespace A080397

/-- `A048633(A004275(n+1))` -/
def P6089219824756238088.Spec : Prop :=
  ∀ n, P6089219824756238088.a n = A080397 n

end A080397

/-! ## A080397.P7281186563953017181

`lcm(A007947(n+1), A281594(n))`
-/

namespace A080397.P7281186563953017181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A281594 n)

end

end A080397.P7281186563953017181

namespace A080397

/-- `lcm(A007947(n+1), A281594(n))` -/
def P7281186563953017181.Spec : Prop :=
  ∀ n, (P7281186563953017181.a n : ℤ) = A080397 n

end A080397

/-! ## A080397.P1687220522135078265

`gcd(A000984(n), A163640(n))`
-/

namespace A080397.P1687220522135078265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A163640 n)

end

end A080397.P1687220522135078265

namespace A080397

/-- `gcd(A000984(n), A163640(n))` -/
def P1687220522135078265.Spec : Prop :=
  ∀ n, (P1687220522135078265.a n : ℤ) = A080397 n

end A080397

/-! ## A080397.P15181095488648586431

`A034386(2*n)/A163644(2*n)`
-/

namespace A080397.P15181095488648586431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n) : ℚ) / (A163644 (2 * n) : ℚ)

end

end A080397.P15181095488648586431

namespace A080397

/-- `A034386(2*n)/A163644(2*n)` -/
def P15181095488648586431.Spec : Prop :=
  ∀ n, P15181095488648586431.a n = (A080397 n : ℚ)

end A080397

/-! ## A080397.P4557660337894151759

`A066838(A151800(2*n))/A163644(2*n)`
-/

namespace A080397.P4557660337894151759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A151800 (2 * n)).toNat : ℚ) / (A163644 (2 * n) : ℚ)

end

end A080397.P4557660337894151759

namespace A080397

/-- `A066838(A151800(2*n))/A163644(2*n)` -/
def P4557660337894151759.Spec : Prop :=
  ∀ n, P4557660337894151759.a n = (A080397 n : ℚ)

end A080397

/-! ## A080397.P13699656585097519494

`A002110(A230980(2*n))/A163644(2*n)`
-/

namespace A080397.P13699656585097519494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A230980 (2 * n)).toNat : ℚ) / (A163644 (2 * n) : ℚ)

end

end A080397.P13699656585097519494

namespace A080397

/-- `A002110(A230980(2*n))/A163644(2*n)` -/
def P13699656585097519494.Spec : Prop :=
  ∀ n, P13699656585097519494.a n = (A080397 n : ℚ)

end A080397

/-! ## A080397.P3544104049596980333

`A066838(A159477(2*n+1))/A163644(2*n)`
-/

namespace A080397.P3544104049596980333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A159477 (2 * n + 1)).toNat : ℚ) / (A163644 (2 * n) : ℚ)

end

end A080397.P3544104049596980333

namespace A080397

/-- `A066838(A159477(2*n+1))/A163644(2*n)` -/
def P3544104049596980333.Spec : Prop :=
  ∀ n, P3544104049596980333.a n = (A080397 n : ℚ)

end A080397

/-!
# A080398: Largest squarefree number dividing sum of divisors of n.

The programs for A080398, the canonical program `A080398.P9404556871884518458` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080398 has offset 1).

The definition of A080398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080398.P9404556871884518458

`A007947(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080398

/-- `A007947(A000203(n+1))` -/
def P9404556871884518458.Spec : Prop :=
  ∀ n, P9404556871884518458.a n = A080398 (n + 1)

theorem P9404556871884518458.correct : P9404556871884518458.Spec := by
  intro n
  simp only [A080398, Nat.add_sub_cancel]

end A080398

/-! ## A080398.P12352518615417363123

`A019565(A351560(n+1))`
-/

namespace A080398.P12352518615417363123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A351560 (n + 1)).toNat

end

end A080398.P12352518615417363123

namespace A080398

/-- `A019565(A351560(n+1))` -/
def P12352518615417363123.Spec : Prop :=
  ∀ n, P12352518615417363123.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P14731055843506958768

`∏{p}[∑{d}[n+1, #], #]`
-/

namespace A080398.P14731055843506958768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A080398.P14731055843506958768

namespace A080398

/-- `∏{p}[∑{d}[n+1, #], #]` -/
def P14731055843506958768.Spec : Prop :=
  ∀ n, (P14731055843506958768.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P10274213994428960783

`∏{p}[Δ[A160664(n)], #]`
-/

namespace A080398.P10274213994428960783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080398.P10274213994428960783

namespace A080398

/-- `∏{p}[Δ[A160664(n)], #]` -/
def P10274213994428960783.Spec : Prop :=
  ∀ n, (P10274213994428960783.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P2933021050142860575

`A007947(∑{d}[n+1, #])`
-/

namespace A080398.P2933021050142860575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A080398.P2933021050142860575

namespace A080398

/-- `A007947(∑{d}[n+1, #])` -/
def P2933021050142860575.Spec : Prop :=
  ∀ n, P2933021050142860575.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P5976864364136248769

`∏{p}[A143348(n+1), #]`
-/

namespace A080398.P5976864364136248769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080398.P5976864364136248769

namespace A080398

/-- `∏{p}[A143348(n+1), #]` -/
def P5976864364136248769.Spec : Prop :=
  ∀ n, (P5976864364136248769.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P17602880074939158838

`∏{p}[A175433(n+1), #]`
-/

namespace A080398.P17602880074939158838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080398.P17602880074939158838

namespace A080398

/-- `∏{p}[A175433(n+1), #]` -/
def P17602880074939158838.Spec : Prop :=
  ∀ n, (P17602880074939158838.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P9318822387903092561

`∏{p}[A353783(n+1), #]`
-/

namespace A080398.P9318822387903092561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080398.P9318822387903092561

namespace A080398

/-- `∏{p}[A353783(n+1), #]` -/
def P9318822387903092561.Spec : Prop :=
  ∀ n, (P9318822387903092561.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P1230722610220158354

`∏{p}[1-A088580(n+1), #]`
-/

namespace A080398.P1230722610220158354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080398.P1230722610220158354

namespace A080398

/-- `∏{p}[1-A088580(n+1), #]` -/
def P1230722610220158354.Spec : Prop :=
  ∀ n, (P1230722610220158354.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P1443306021578108724

`∏{p}[A245092(2*n+1), #]`
-/

namespace A080398.P1443306021578108724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080398.P1443306021578108724

namespace A080398

/-- `∏{p}[A245092(2*n+1), #]` -/
def P1443306021578108724.Spec : Prop :=
  ∀ n, (P1443306021578108724.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P14526265639933115347

`∏{p}[A074400(n+1)/2, #]`
-/

namespace A080398.P14526265639933115347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080398.P14526265639933115347

namespace A080398

/-- `∏{p}[A074400(n+1)/2, #]` -/
def P14526265639933115347.Spec : Prop :=
  ∀ n, (P14526265639933115347.a n : ℤ) = A080398 (n + 1)

end A080398

/-! ## A080398.P10747487314691363011

`A007947(Δ[A160664(n)])`
-/

namespace A080398.P10747487314691363011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (n + 1) - f1 n).toNat

end

end A080398.P10747487314691363011

namespace A080398

/-- `A007947(Δ[A160664(n)])` -/
def P10747487314691363011.Spec : Prop :=
  ∀ n, P10747487314691363011.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P17361903806003535908

`A007947(A175433(n+1))`
-/

namespace A080398.P17361903806003535908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A175433 (n + 1)).toNat

end

end A080398.P17361903806003535908

namespace A080398

/-- `A007947(A175433(n+1))` -/
def P17361903806003535908.Spec : Prop :=
  ∀ n, P17361903806003535908.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P6521661127320548408

`A007947(A353783(n+1))`
-/

namespace A080398.P6521661127320548408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A353783 (n + 1)).toNat

end

end A080398.P6521661127320548408

namespace A080398

/-- `A007947(A353783(n+1))` -/
def P6521661127320548408.Spec : Prop :=
  ∀ n, P6521661127320548408.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P8335057840859326130

`A007947(A039653(n+1)+1)`
-/

namespace A080398.P8335057840859326130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A039653 (n + 1) + 1).toNat

end

end A080398.P8335057840859326130

namespace A080398

/-- `A007947(A039653(n+1)+1)` -/
def P8335057840859326130.Spec : Prop :=
  ∀ n, P8335057840859326130.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P12971214012873480315

`A007947(A001065(n+1)+n+1)`
-/

namespace A080398.P12971214012873480315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A080398.P12971214012873480315

namespace A080398

/-- `A007947(A001065(n+1)+n+1)` -/
def P12971214012873480315.Spec : Prop :=
  ∀ n, P12971214012873480315.a n = A080398 (n + 1)

theorem P12971214012873480315.correct : P12971214012873480315.Spec := by
  intro n
  simp only [A080398, Nat.add_sub_cancel, A080398.P12971214012873480315.a, A080398.P9404556871884518458.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080398

/-! ## A080398.P18382407323518712313

`A007947(A064987(n+1)/(n+1))`
-/

namespace A080398.P18382407323518712313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A080398.P18382407323518712313

namespace A080398

/-- `A007947(A064987(n+1)/(n+1))` -/
def P18382407323518712313.Spec : Prop :=
  ∀ n, P18382407323518712313.a n = A080398 (n + 1)

end A080398

/-! ## A080398.P4595593406784007662

`A000203(n+1)/A387156(n+1)`
-/

namespace A080398.P4595593406784007662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A387156 (n + 1) : ℚ)

end

end A080398.P4595593406784007662

namespace A080398

/-- `A000203(n+1)/A387156(n+1)` -/
def P4595593406784007662.Spec : Prop :=
  ∀ n, P4595593406784007662.a n = (A080398 (n + 1) : ℚ)

end A080398

/-! ## A080398.P12087548861477601821

`A353783(n+1)/A353785(n+1)`
-/

namespace A080398.P12087548861477601821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353783 (n + 1) : ℚ) / (A353785 (n + 1) : ℚ)

end

end A080398.P12087548861477601821

namespace A080398

/-- `A353783(n+1)/A353785(n+1)` -/
def P12087548861477601821.Spec : Prop :=
  ∀ n, P12087548861477601821.a n = (A080398 (n + 1) : ℚ)

end A080398

/-! ## A080398.P16592834699146192152

`A007947(A048146(n+1)+A034448(n+1))`
-/

namespace A080398.P16592834699146192152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A080398.P16592834699146192152

namespace A080398

/-- `A007947(A048146(n+1)+A034448(n+1))` -/
def P16592834699146192152.Spec : Prop :=
  ∀ n, P16592834699146192152.a n = A080398 (n + 1)

theorem P16592834699146192152.correct : P16592834699146192152.Spec := by
  intro n
  simp only [A080398, Nat.add_sub_cancel, A080398.P16592834699146192152.a, A080398.P9404556871884518458.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080398

/-!
# A080399: Largest squarefree number dividing sum of squares of divisors of n.

The programs for A080399, the canonical program `A080399.P11561655422514624049` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080399 has offset 1).

The definition of A080399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080399.P11561655422514624049

`A007947(A001157(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080399

/-- `A007947(A001157(n+1))` -/
def P11561655422514624049.Spec : Prop :=
  ∀ n, P11561655422514624049.a n = A080399 (n + 1)

theorem P11561655422514624049.correct : P11561655422514624049.Spec := by
  intro n
  simp only [A080399, Nat.add_sub_cancel]

end A080399

/-! ## A080399.P8664326658906164912

`∏{p}[∑{d}[n+1, #²], #]`
-/

namespace A080399.P8664326658906164912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A080399.P8664326658906164912

namespace A080399

/-- `∏{p}[∑{d}[n+1, #²], #]` -/
def P8664326658906164912.Spec : Prop :=
  ∀ n, (P8664326658906164912.a n : ℤ) = A080399 (n + 1)

end A080399

/-! ## A080399.P3241877491005059632

`A007947(∑{d}[n+1, #²])`
-/

namespace A080399.P3241877491005059632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A080399.P3241877491005059632

namespace A080399

/-- `A007947(∑{d}[n+1, #²])` -/
def P3241877491005059632.Spec : Prop :=
  ∀ n, P3241877491005059632.a n = A080399 (n + 1)

end A080399

/-! ## A080399.P2378713910127879093

`A007947(A053807(n+2)+1)`
-/

namespace A080399.P2378713910127879093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A053807 (n + 2) + 1).toNat

end

end A080399.P2378713910127879093

namespace A080399

/-- `A007947(A053807(n+2)+1)` -/
def P2378713910127879093.Spec : Prop :=
  ∀ n, P2378713910127879093.a n = A080399 (n + 1)

end A080399

/-! ## A080399.P12566396017209644180

`A007947(A189835(n+1)+A038040(n+1))`
-/

namespace A080399.P12566396017209644180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A189835 (n + 1) + A038040 (n + 1)).toNat

end

end A080399.P12566396017209644180

namespace A080399

/-- `A007947(A189835(n+1)+A038040(n+1))` -/
def P12566396017209644180.Spec : Prop :=
  ∀ n, P12566396017209644180.a n = A080399 (n + 1)

theorem P12566396017209644180.correct : P12566396017209644180.Spec := by
  intro n
  simp only [A080399, Nat.add_sub_cancel, A080399.P12566396017209644180.a, A080399.P11561655422514624049.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A038040, A038040.P16512896840577774730.a, A189835, A189835.P10100538785749668856.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080399

/-! ## A080399.P10184235799773211067

`A007947(A035316((n+1)²))`
-/

namespace A080399.P10184235799773211067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A035316 ((n + 1) ^ 2)).toNat

end

end A080399.P10184235799773211067

namespace A080399

/-- `A007947(A035316((n+1)²))` -/
def P10184235799773211067.Spec : Prop :=
  ∀ n, P10184235799773211067.a n = A080399 (n + 1)

end A080399

/-! ## A080399.P2130647903636316826

`A007947(A365172((n+1)²))`
-/

namespace A080399.P2130647903636316826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A365172 ((n + 1) ^ 2)).toNat

end

end A080399.P2130647903636316826

namespace A080399

/-- `A007947(A365172((n+1)²))` -/
def P2130647903636316826.Spec : Prop :=
  ∀ n, P2130647903636316826.a n = A080399 (n + 1)

end A080399

/-! ## A080399.P7596147128250228699

`A007947(A007947(A035316((n+1)*(n+1))))`
-/

namespace A080399.P7596147128250228699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (A035316 ((n + 1) * (n + 1))).toNat).toNat

end

end A080399.P7596147128250228699

namespace A080399

/-- `A007947(A007947(A035316((n+1)*(n+1))))` -/
def P7596147128250228699.Spec : Prop :=
  ∀ n, P7596147128250228699.a n = A080399 (n + 1)

end A080399

/-! ## A080399.P3188642710702729748

`A007947(A007947(A365172((n+1)*(n+1))))`
-/

namespace A080399.P3188642710702729748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (A365172 ((n + 1) * (n + 1))).toNat).toNat

end

end A080399.P3188642710702729748

namespace A080399

/-- `A007947(A007947(A365172((n+1)*(n+1))))` -/
def P3188642710702729748.Spec : Prop :=
  ∀ n, P3188642710702729748.a n = A080399 (n + 1)

end A080399

